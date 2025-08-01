local addonName,addonTable = ...
local DA = LibStub("AceAddon-3.0"):GetAddon("Skillet") -- for DebugAids.lua
--[[
Skillet: A tradeskill window replacement.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]--

local isRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE
local isClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
local isBCC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
local isWrath = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC
local isCata = WOW_PROJECT_ID == WOW_PROJECT_CATACLYSM_CLASSIC

local IsAddOnLoaded = C_AddOns and C_AddOns.IsAddOnLoaded or IsAddOnLoaded
local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata
local LoadAddOn = C_AddOns and C_AddOns.LoadAddOn or LoadAddOn
local GetItemInfo = C_Item and C_Item.GetItemInfo or GetItemInfo
local GetItemCount = C_Item and C_Item.GetItemCount or GetItemCount
local GetItemIcon = C_Item and C_Item.GetItemIconByID or GetItemIcon
local GetItemQualityColor = C_Item and C_Item.GetItemQualityColor or GetItemQualityColor

local L = LibStub("AceLocale-3.0"):GetLocale("Skillet")

SKILLET_TRADE_SKILL_HEIGHT = 16
SKILLET_NUM_REAGENT_BUTTONS = 8

local COLORORANGE = "|cffff8040"
local COLORYELLOW = "|cffffff00"
local COLORGREEN =  "|cff40c040"
local COLORGRAY =   "|cff808080"

--
-- Colors used in the "0/0/0" strings and tooltips
--
local CGREY = "|cffb0b0b0"		-- Grey = "[", "/", "]"
local COWNED = "|cff95fcff"		-- Blue = How many you have in your inventory
local CBANK = "|cff95fcff"		-- Blue = How many you have in your bank
local CBAG = "|cff80ff80"		-- Green = How many you can make from materials you have
local CCRAFT =  "|cffffff80"	-- Yellow = How many you can make by crafting the reagents
local CVENDOR = "|cffffa050"	-- Orange = How many you can make if you purchase materials from a vendor
local CALTS = "|cffff80ff"		-- Purple = How many you can make using materials on your alts

-- min height for Skillet window
local SKILLET_MIN_HEIGHT = 580
--
-- height of the header portion
--
-- this value reflects the offsets of 
-- SkilletSkillListParent and SkilletReagentParent
--   (Y offset is either 110 or 130)
--   (we really should compute this from those values)
--
local SKILLET_HEADER_HEIGHT = 145		-- 125 if Filter is removed under Search

-- min width for skill list window
local SKILLET_SKILLLIST_MIN_WIDTH = 440

-- min/max width for the reagent window
local SKILLET_REAGENT_MIN_WIDTH = 280
local SKILLET_REAGENT_MAX_WIDTH = 320
local SKILLET_REAGENT_MIN_HEIGHT = 300
local reagent_height

-- min width of count text
local SKILLET_COUNT_MIN_WIDTH = 100

--
-- Smelting and Mining are bipolar so
-- give them names to remember
--
local SMELTING = 2656
local MINING = 2575

local nonLinkingTrade = { [SMELTING] = true, [53428] = true , [193290] = true }				-- smelting, runeforging, herbalism

--
-- Stack of previsouly selected skills for use by the
-- "click on reagent, go to recipe" code and for clicking on Queue'd recipes
-- stack is stack of tables: { "player", "tradeID", "skillIndex"}
--
local skillStack = {}
local gearTexture

--
-- Stolen from the Waterfall Ace2 addon.
--
local ControlBackdrop  = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 3, right = 3, top = 3, bottom = 3 }
}
local FrameBackdrop = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 3, right = 3, top = 30, bottom = 3 }
}
local TSMBackdrop = {
	bgFile = "Interface\\Buttons\\WHITE8X8",
	tile = true, tileSize = 16,
	insets = { left = 3, right = 3, top = 3, bottom = 3 }
}

--
-- List of functions that are called before a button is shown
--
local pre_show_callbacks = {}

--
-- List of functions that are called before a button is hidden
--
local pre_hide_callbacks = {}

function Skillet:AddPreButtonShowCallback(method)
	assert(method and type(method) == "function",
		   "Usage: Skillet:AddPreButtonShowCallback(method). method must be a non-nil function")
	table.insert(pre_show_callbacks, method)
end

function Skillet:AddPreButtonHideCallback(method)
	assert(method and type(method) == "function",
		   "Usage: Skillet:AddPreButtonHideCallback(method). method must be a non-nil function")
	table.insert(pre_hide_callbacks, method)
end

--
-- Figures out how to display the craftable counts for a recipe.
-- Returns: num, num_with_vendor, num_with_alts
--
local function get_craftable_counts(skill, numMade)
	--DA.DEBUG(2,"get_craftable_counts: name= "..tostring(skill.name)..", numMade= "..tostring(numMade))
	--DA.DEBUG(3,"get_craftable_counts: skill= "..DA.DUMP1(skill,1))
	local factor = 1
	if Skillet.db.profile.show_craft_counts then
		factor = numMade or 1
	end
	local num          = math.floor((skill.numCraftable or 0) / factor)
	local numrecursive = math.floor((skill.numRecursive or 0) / factor)
	local numwvendor   = math.floor((skill.numCraftableVendor or 0) / factor)
	local numwalts     = math.floor((skill.numCraftableAlts or 0) / factor)
	--DA.DEBUG(2,"get_craftable_counts = "..tostring(num)..", "..tostring(numrecursive)..", "..tostring(numwvendor)..", "..tostring(numwalts))
	return num, numrecursive, numwvendor, numwalts
end

--
-- Steal the Enchant button from the CraftUI
--
function Skillet:StealEnchantButton()
	DA.DEBUG(0,"StealEnchantButton()")
	if Skillet.db.profile.support_crafting then
		SkilletEnchantButton:Disable()			-- Disable our button because DoCraft is restricted
		SkilletEnchantButton:Hide() 			-- Hide our Button
		if not Skillet.EnchantOldParent and SkilletFrame and CraftCreateButton then
			Skillet.EnchantOldParent = CraftCreateButton:GetParent()
			CraftCreateButton:SetParent(SkilletFrame)		-- Set new parent for the Blizzard button
		end
		if not Skillet.EnchantOldPoints and SkilletEnchantButton and CraftCreateButton then
			local point = {}
			point[1], point[2], point[3], point[4], point[5] = CraftCreateButton:GetPoint(1)
			--DA.DEBUG(1,"point= "..DA.DUMP1(point))
			Skillet.EnchantOldPoints = point
			CraftCreateButton:ClearAllPoints()		-- Clear all positions
--			CraftCreateButton:SetPoint("TOPLEFT", SkilletQueueParentBase, "TOPLEFT",0, 0)	-- doesn't overlap other buttons
			CraftCreateButton:SetPoint("TOPLEFT", SkilletEnchantButton, "TOPLEFT",0, 0)
		end
	end
end

--
-- Restore the CraftUI Enchant button
--
function Skillet:RestoreEnchantButton(show)
	DA.DEBUG(0,"RestoreEnchantButton("..tostring(show)..")")
	if Skillet.db.profile.support_crafting then
		if Skillet.EnchantOldParent and CraftCreateButton then
			--DA.DEBUG(1,"RestoreEnchantButton: have EnchantOldParent")
			CraftCreateButton:SetParent(Skillet.EnchantOldParent)		-- Restore original Parent
			Skillet.EnchantOldParent = nil
		end
		if Skillet.EnchantOldPoints and CraftCreateButton then
			--DA.DEBUG(1,"RestoreEnchantButton: have EnchantOldPoints")
			local point = Skillet.EnchantOldPoints
			CraftCreateButton:ClearAllPoints()		-- Clear all positions
			CraftCreateButton:SetPoint(point[1], point[2], point[3], point[4], point[5])	-- Restore original location
			Skillet.EnchantOldPoints = nil
		end
		if CraftCreateButton then
			CraftCreateButton:Show()
		end
		if show then
			SkilletEnchantButton:Disable()			-- Disable our button because DoCraft is restricted
			SkilletEnchantButton:Show()				-- Show our button
		else
			SkilletEnchantButton:Hide()				-- Hide our button
		end
	end
end

function Skillet:EnablePauseButton()
	DA.DEBUG(0,"EnablePauseButton()")
	if not self.isCraft then
		SkilletStartQueueButton:Hide()
		SkilletPauseQueueButton:Show()
		self.pauseQueue = false
	end
end

function Skillet:DisablePauseButton()
	DA.DEBUG(0,"DisablePauseButton()")
	if not self.isCraft then
		SkilletPauseQueueButton:Hide()
		SkilletStartQueueButton:Show()
	end
end

function Skillet:CreateTradeSkillWindow()
--
-- We are going to steal the Enchant button to avoid DoCraft errors so
-- load the Blizzard CraftUI so we can mess with it
--
	if Skillet.db.profile.support_crafting and not IsAddOnLoaded("Blizzard_CraftUI") then
		LoadAddOn("Blizzard_CraftUI")
	end
--
-- The SkilletFrame is defined in the file MainFrame.xml
--
	local frame = SkilletFrame
	if not frame then
		return frame
	end
	--DA.DEBUG(0,"oldWidth= "..tostring(frame:GetWidth())..", oldHeight= "..tostring(frame:GetHeight()))
	if frame:GetWidth() < 710 then
		frame:SetWidth(710)		-- Reset the window size to the new minimum
	end
	if frame:GetHeight() < 545 then
		frame:SetHeight(545)
	end
	if not frame.SetBackdrop then
		Mixin(frame, BackdropTemplateMixin)
	end
	if TSM_API then
		frame:SetFrameStrata("HIGH")
		frame:SetBackdrop(TSMBackdrop)
	else
		frame:SetBackdrop(FrameBackdrop)
	end
	frame:SetBackdropColor(0.1, 0.1, 0.1)

--
-- A title bar stolen from the Ace2 Waterfall window.
--
	local r,g,b = 0, 0.7, 0; -- dark green
	local titlebar = frame:CreateTexture(nil,"BACKGROUND")
	local titlebar2 = frame:CreateTexture(nil,"BACKGROUND")
	titlebar:SetPoint("TOPLEFT",frame,"TOPLEFT",3,-4)
	titlebar:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-3,-4)
	titlebar:SetColorTexture(r,g,b,1)
	titlebar:SetHeight(13)
	titlebar2:SetPoint("TOPLEFT",titlebar,"BOTTOMLEFT",0,0)
	titlebar2:SetPoint("TOPRIGHT",titlebar,"BOTTOMRIGHT",0,0)
	titlebar2:SetColorTexture(r,g,b,1)
	titlebar2:SetHeight(13)
	titlebar:SetGradient("VERTICAL", CreateColor(r*0.6,g*0.6,b*0.6,1), CreateColor(r,g,b,1))
	titlebar2:SetGradient("VERTICAL", CreateColor(r*0.9,g*0.9,b*0.9,1), CreateColor(r*0.6,g*0.6,b*0.6,1))
	local title = CreateFrame("Frame",nil,frame)
	title:SetPoint("TOPLEFT",titlebar,"TOPLEFT",0,0)
	title:SetPoint("BOTTOMRIGHT",titlebar2,"BOTTOMRIGHT",0,0)

	local titletext = title:CreateFontString("SkilletTitleText", "OVERLAY", "GameFontNormalLarge")
	titletext:SetPoint("TOPLEFT",title,"TOPLEFT",0,0)
	titletext:SetPoint("TOPRIGHT",title,"TOPRIGHT",0,0)
	titletext:SetHeight(26)
	titletext:SetShadowColor(0,0,0)
	titletext:SetShadowOffset(1,-1)
	titletext:SetTextColor(1,1,1)
	titletext:SetText(L["Skillet Trade Skills"].." "..Skillet.version.." ("..Skillet.wowVersion..")")
	local label = _G["SkilletSearchLabel"]
	label:SetText(L["Search"])
	local label = _G["SkilletFilterLabel"]
	label:SetText(L["Filter"])
	SkilletPluginButton:SetText(L["Plugins"])
	SkilletPluginButton:Hide()
	SkilletCreateAllButton:SetText(L["Create All"])
	SkilletQueueAllButton:SetText(L["Queue All"])
	SkilletCreateButton:SetText(L["Create"])
	SkilletQueueButton:SetText(L["Queue"])
	SkilletStartQueueButton:SetText(L["Process"])
	SkilletPauseQueueButton:SetText(L["Pause"])
	SkilletPauseQueueButton:SetAttribute("type", "macro")
	SkilletPauseQueueButton:SetAttribute("macrotext", "/stopcasting")
	SkilletEmptyQueueButton:SetText(L["Clear"])
	SkilletEnchantButton:SetText(L["Enchant"])
	SkilletRecipeNotesButton:SetText(L["Notes"])
	SkilletRecipeNotesFrameLabel:SetText(L["Notes"])
	SkilletShoppingListButton:SetText(L["Shopping List"])
	SkilletSortLabel:SetText(L["Sorting"])
	SkilletGroupLabel:SetText(L["Grouping"])
	SkilletIgnoreListButton:SetText(L["Ignored List"])
	SkilletQueueManagementButton:SetText(L["Queues"])
	SkilletQueueLoadButton:SetText(L["Load"])
	SkilletQueueDeleteButton:SetText(L["Delete"])
	SkilletQueueSaveButton:SetText(L["Save"])
	SkilletQueueOnlyButton:SetText(">")
--
-- Always want these visible.
--
	SkilletItemCountInputBox:SetText("1");
--
-- Progression status bar
--
	SkilletRankFrame:SetStatusBarColor(0.2, 0.2, 1.0, 1.0)
	SkilletRankFrameBackground:SetVertexColor(0.0, 0.0, 0.5, 0.2)
	if not SkilletRankFrame.subRanks then
		SkilletRankFrame.subRanks = {}
		SkilletRankFrame.subRanks.red = CreateFrame("StatusBar", "SkilletRankFrameRed", SkilletFrame, "SkilletRankFrameTemplate")
		SkilletRankFrame.subRanks.red:SetStatusBarColor(1.00, 0.00, 0.00, 1.00);
		SkilletRankFrame.subRanks.red:SetFrameLevel(SkilletFrame:GetFrameLevel()+8)
		SkilletRankFrame.subRanks.orange = CreateFrame("StatusBar", "SkilletRankFrameOrange", SkilletFrame, "SkilletRankFrameTemplate")
		SkilletRankFrame.subRanks.orange:SetStatusBarColor(1.00, 0.50, 0.25, 1.00);
		SkilletRankFrame.subRanks.orange:SetFrameLevel(SkilletFrame:GetFrameLevel()+7)
		SkilletRankFrame.subRanks.yellow = CreateFrame("StatusBar", "SkilletRankFrameYellow", SkilletFrame, "SkilletRankFrameTemplate")
		SkilletRankFrame.subRanks.yellow:SetStatusBarColor(1.00, 1.00, 0.00, 1.00);
		SkilletRankFrame.subRanks.yellow:SetFrameLevel(SkilletFrame:GetFrameLevel()+6)
		SkilletRankFrame.subRanks.green  = CreateFrame("StatusBar", "SkilletRankFrameGreen" , SkilletFrame, "SkilletRankFrameTemplate")
		SkilletRankFrame.subRanks.green:SetStatusBarColor(0.25, 0.75, 0.25, 1.00);
		SkilletRankFrame.subRanks.green:SetFrameLevel(SkilletFrame:GetFrameLevel()+5)
		SkilletRankFrame.subRanks.gray   = CreateFrame("StatusBar", "SkilletRankFrameGray"  , SkilletFrame, "SkilletRankFrameTemplate")
		SkilletRankFrame.subRanks.gray:SetStatusBarColor(0.50, 0.50, 0.50, 1.00);
		SkilletRankFrame.subRanks.gray:SetFrameLevel(SkilletFrame:GetFrameLevel()+4)
	end
	SkilletFrameEmptySpace = CreateFrame("Button", nil, SkilletSkillListParent, "SkilletEmptySpaceTemplate")
	SkilletFrameEmptySpace.skill = { ["mainGroup"] = true, }
	SkilletFrameEmptySpace:SetPoint("TOPLEFT",SkilletSkillListParent,"TOPLEFT")
	SkilletFrameEmptySpace:SetPoint("BOTTOMRIGHT",SkilletSkillListParent,"BOTTOMRIGHT")
	SkilletFrameEmptySpace:Show()
--
-- The frame enclosing the scroll list needs a border and a background .....
--
	local backdrop = SkilletSkillListParent
	if not backdrop.SetBackdrop then
		Mixin(backdrop, BackdropTemplateMixin)
	end
	backdrop:SetBackdrop(ControlBackdrop)
	backdrop:SetBackdropBorderColor(0.6, 0.6, 0.6)
	backdrop:SetBackdropColor(0.05, 0.05, 0.05)
	backdrop:SetResizable(true)
--
-- Frame enclosing the reagent list
--
	backdrop = SkilletReagentParent
	if not backdrop.SetBackdrop then
		Mixin(backdrop, BackdropTemplateMixin)
	end
	backdrop:SetBackdrop(ControlBackdrop)
	backdrop:SetBackdropBorderColor(0.6, 0.6, 0.6)
	backdrop:SetBackdropColor(0.05, 0.05, 0.05)
	backdrop:SetResizable(true)
--
-- Frame enclosing the queue
--
	backdrop = SkilletQueueParent
	if not backdrop.SetBackdrop then
		Mixin(backdrop, BackdropTemplateMixin)
	end
	backdrop:SetBackdrop(ControlBackdrop)
	backdrop:SetBackdropBorderColor(0.6, 0.6, 0.6)
	backdrop:SetBackdropColor(0.05, 0.05, 0.05)
	backdrop:SetResizable(true)
--
-- frame enclosing the pop out notes panel
--
	backdrop = SkilletRecipeNotesFrame
	if not backdrop.SetBackdrop then
		Mixin(backdrop, BackdropTemplateMixin)
	end
	backdrop:SetBackdrop(ControlBackdrop)
	backdrop:SetBackdropColor(0.1, 0.1, 0.1)
	backdrop:SetBackdropBorderColor(0.6, 0.6, 0.6)
	backdrop:SetResizable(true)
	backdrop:Hide() -- initially hidden
	backdrop = SkilletQueueManagementParent
	if not backdrop.SetBackdrop then
		Mixin(backdrop, BackdropTemplateMixin)
	end
	backdrop:SetBackdrop(ControlBackdrop)
	backdrop:SetBackdropBorderColor(0.6, 0.6, 0.6)
	backdrop:SetBackdropColor(0.05, 0.05, 0.05)
	backdrop:SetResizable(true)
	gearTexture = SkilletReagentParent:CreateTexture(nil, "OVERLAY")
	gearTexture:SetTexture("Interface\\Icons\\Trade_Engineering")
	gearTexture:SetHeight(16)
	gearTexture:SetWidth(16)
--
-- Ace Window manager library, allows the window position (and size)
-- to be automatically saved
--
	local tradeSkillLocation = {
		prefix = "tradeSkillLocation_"
	}
	local windowManager = LibStub("LibWindow-1.1")
	windowManager.RegisterConfig(frame, self.db.profile, tradeSkillLocation)
	windowManager.RestorePosition(frame)  -- restores scale also
	windowManager.MakeDraggable(frame)
--
-- lets play the resize me game!
--
	local minwidth = SKILLET_SKILLLIST_MIN_WIDTH
	minwidth = minwidth +                  -- minwidth of scroll button
			   20 +                        -- padding between sroll and detail
			   SKILLET_REAGENT_MIN_WIDTH + -- reagent window (fixed width)
			   10                          -- padding about window borders
	self:EnableResize(frame, minwidth, SKILLET_MIN_HEIGHT, Skillet.UpdateTradeSkillWindow)
--
-- Set up the sorting methods here
--
	self:InitializeSorting()
	self:ConfigureRecipeControls()
	self.skilletStandaloneQueue=Skillet:CreateStandaloneQueueFrame()
	self.fullView = true
	self.saved_full_button_count = 0
	self.saved_SA_button_count = 0
	if self.db.profile.clamp_to_screen then
		frame:SetClampedToScreen(self.db.profile.clamp_to_screen)
	end
	return frame
end

function Skillet:InitRecipeFilterButtons()
	local lastButton = SkilletExpandAllButton
	if self.recipeFilters then
		for name, filter in pairs(self.recipeFilters) do
			local newButton = filter.initMethod(filter.namespace)
			if newButton then
				newButton:SetParent(SkilletFrame)
				newButton:SetPoint("BOTTOMRIGHT", lastButton, "BOTTOMLEFT", -5, 0)
				lastButton = newButton
				newButton:Show()
			end
		end
	end
end

--
-- Resets all the sorting and filtering info for the window
-- This is called when the window has changed enough that
-- sorting or filtering may need to be updated.
--
function Skillet:ResetTradeSkillWindow()
	Skillet:SortDropdown_OnShow()
	local buttons = SkilletFrame.added_buttons
	if buttons then
		local last_button = SkilletPluginButton
		for i=1, #buttons, 1 do
			local button = buttons[i]
			if button then
				button:ClearAllPoints()
				button:SetParent(SkilletFrame)
				button:SetPoint("TOPLEFT", last_button, "BOTTOMLEFT", 0, -1)
				button:Hide()
				button:SetAlpha(0)
				button:SetFrameLevel(0)
				last_button = button
			end
		end
	 end
end

--
-- Called when the list of skills is scrolled
--
function Skillet:SkillList_OnScroll()
	Skillet:UpdateTradeSkillWindow()
end

--
-- Called when the list of queued items is scrolled
--
function Skillet:QueueList_OnScroll()
	Skillet:UpdateQueueWindow()
end

local num_recipe_buttons = 1
local function get_recipe_button(i)
	local button = _G["SkilletScrollButton"..i]
	if not button then
		button = CreateFrame("Button", "SkilletScrollButton"..i, SkilletSkillListParent, "SkilletSkillButtonTemplate")
		button:SetParent(SkilletSkillListParent)
		button:SetPoint("TOPLEFT", "SkilletScrollButton"..(i-1), "BOTTOMLEFT")
		button:SetFrameLevel(SkilletSkillListParent:GetFrameLevel() + 3)
		num_recipe_buttons = i
	end
	local buttonDrag = _G["SkilletScrollButtonDrag"..i]
	if not buttonDrag then
		buttonDrag = CreateFrame("Frame", "SkilletScrollButtonDrag"..i, SkilletSkillListParent, "SkilletSkillButtonDragTemplate")
		buttonDrag:SetParent(SkilletSkillListParent)
		buttonDrag:SetPoint("TOPLEFT", "SkilletScrollButton"..i, "TOPLEFT")
		buttonDrag:SetFrameLevel(SkilletSkillListParent:GetFrameLevel() + 2)
		buttonDrag:Hide()
	end
	if not button.highlight then
		button.index = i
		button.highlight = CreateFrame("Frame", "SkilletScrollHightlight"..i, button)
		button.highlight:SetParent(button)
		button.highlight:SetWidth(290)
		button.highlight:SetHeight(16)
--		button.highlight:SetFrameStrata("HIGH")
		button.highlight:SetPoint("LEFT", button:GetName(), "LEFT")
		button.highlight:SetPoint("RIGHT", button:GetName(), "RIGHT")
		button:SetFrameLevel(SkilletSkillListParent:GetFrameLevel())
		local t = button.highlight:CreateTexture(nil,"ARTWORK")
		t:SetTexture("Interface\\Buttons\\UI-Listbox-Highlight2.blp")
		t:SetAllPoints(button.highlight)
		button.highlight.texture = t
		button.highlight:SetAlpha(.25)
		button.highlight:Hide()
	end
	if Skillet.customSkillButtons then
		for n, b in pairs(Skillet.customSkillButtons) do
			b.initMethod(b.namespace, button, i)
		end
	end
	return button, buttonDrag
end

--
-- shows a recipe button (in the scrolling list) after doing the
-- required callbacks.
--
local function show_button(button, trade, skill, index)
	for i=1, #pre_show_callbacks, 1 do
		local new_button = pre_show_callbacks[i](button, trade, skill, index)
		if new_button and new_button ~= button then
			button:Hide() -- hide the old one just in case ....
			button = new_button
		end
	end
	button:Show()
end

--
-- hides a recipe button (in the scrolling list) after doing the
-- required callbacks.
--
local function hide_button(button, trade, skill, index)
	for i=1, #pre_hide_callbacks, 1 do
		local new_button = pre_hide_callbacks[i](button, trade, skill, index)
		if new_button and new_button ~= button then
			button:Hide() -- hide the old one just in case ....
			button = new_button
		end
	end
	button:Hide()
end

--
-- hide UI components that cannot be used for crafts and show that
-- that are only applicable to trade skills, as needed
--
function Skillet:ConfigureRecipeControls()
	--DA.DEBUG(0,"ConfigureRecipeControls()")
	--DA.DEBUG(1,"ConfigureRecipeControls: build= "..tostring(Skillet.build)..", currentTrade= "..tostring(Skillet.currentTrade))
	if self.queueCasting then
		return
	end
	if Skillet.isCraft then
		if Skillet.db.profile.queue_crafts then
			SkilletQueueButton:Show()
			SkilletEmptyQueueButton:Show()
			SkilletQueueParent:Show()
		else
			SkilletQueueButton:Hide()
			SkilletEmptyQueueButton:Hide()
			SkilletQueueParent:Hide()
		end
		SkilletQueueAllButton:Hide()
		SkilletCreateAllButton:Hide()
		SkilletCreateButton:Hide()
		SkilletStartQueueButton:Hide()
		SkilletPauseQueueButton:Hide()
		SkilletItemCountInputBox:Hide()
		SkilletSub10Button:Hide()
		SkilletSub1Button:Hide()
		SkilletAdd1Button:Hide()
		SkilletAdd10Button:Hide()
		SkilletClearNumButton:Hide()
		SkilletQueueOnlyButton:Hide()
		if Skillet.db.profile.support_crafting then
			SkilletEnchantButton:Hide()
		else
			SkilletEnchantButton:Disable()		-- because DoCraft is restricted
			SkilletEnchantButton:Show()
		end
	elseif Skillet.currentTrade == 7411 then
		if Skillet.db.profile.queue_crafts then
			SkilletQueueButton:Show()
			SkilletEmptyQueueButton:Show()
			SkilletQueueParent:Show()
		else
			SkilletQueueButton:Hide()
			SkilletEmptyQueueButton:Hide()
			SkilletQueueParent:Hide()
		end
		SkilletQueueAllButton:Hide()
		SkilletCreateAllButton:Hide()
		SkilletCreateButton:Hide()
		SkilletStartQueueButton:Hide()
		SkilletPauseQueueButton:Hide()
		SkilletItemCountInputBox:Hide()
		SkilletSub10Button:Hide()
		SkilletSub1Button:Hide()
		SkilletAdd1Button:Hide()
		SkilletAdd10Button:Hide()
		SkilletClearNumButton:Hide()
		SkilletQueueOnlyButton:Hide()
		SkilletEnchantButton:Show()
	else
		SkilletQueueAllButton:Show()
		SkilletQueueButton:Show()
		SkilletCreateAllButton:Show()
		SkilletCreateButton:Show()
		SkilletQueueParent:Show()
		SkilletPauseQueueButton:Hide()
		SkilletStartQueueButton:Show()
		SkilletEmptyQueueButton:Show()
		SkilletItemCountInputBox:Show()
		SkilletSub10Button:Show()
		SkilletSub1Button:Show()
		SkilletAdd1Button:Show()
		SkilletAdd10Button:Show()
		SkilletClearNumButton:Show()
		SkilletQueueOnlyButton:Show()
		SkilletEnchantButton:Hide()
	end
	self.lastCraft = self.isCraft		-- save the state of the buttons
	self:InitRecipeFilterButtons()
	if self.currentPlayer ~= (UnitName("player")) then
--
-- disable processing because this is not the current player
--
		SkilletStartQueueButton:Disable()
		SkilletCreateAllButton:Disable()
		SkilletCreateButton:Disable()
	else
		SkilletStartQueueButton:Enable()
		SkilletCreateAllButton:Enable()
		SkilletCreateButton:Enable()
	end
end

function Skillet:RecipeDifficultyButton_OnShow()
	local level = self:GetTradeSkillOption("filterLevel")
	local v = 1-level/4
	SkilletRecipeDifficultyButtonTexture:SetTexCoord(0,1,v,v+.25)
end

function Skillet:TradeButton_OnEnter(button)
	GameTooltip:SetOwner(button, "ANCHOR_TOPLEFT")
	GameTooltip:ClearLines()
	local bName = button:GetName()
	local _, player, tradeID = string.split("-", bName)
	local sInfo = GetSpellInfo(tradeID)
	DA.DEBUG(3,"TradeButton_OnEnter("..tostring(bName).."), player= "..tostring(player)..", tradeID= "..tostring(tradeID)..", sInfo= "..tostring(sInfo))
	GameTooltip:AddLine(sInfo)
	tradeID = tonumber(tradeID)
	local data
	data = self:GetSkillRanks(player, tradeID)
	if not data or data == {} then
		GameTooltip:AddLine(L["No Data"],1,0,0)
	else
		local rank, maxRank = data.rank, data.maxRank
		GameTooltip:AddLine("["..tostring(rank).."/"..tostring(maxRank).."]",0,1,0)
		if tradeID == self.currentTrade then
			local link
			if GetTradeSkillListLink then
				link = GetTradeSkillListLink()
			elseif C_TradeSkillUI.GetTradeSkillListLink then
				link = C_TradeSkillUI.GetTradeSkillListLink()
			end
			if link then
				GameTooltip:AddLine(L["shift-click to link"])
			end
		end
		local buttonIcon = _G[button:GetName().."Icon"]
		local r,g,b = buttonIcon:GetVertexColor()
		if g == 0 then
			GameTooltip:AddLine("scan incomplete...",1,0,0)
		end
		if nonLinkingTrade[tradeID] and player ~= UnitName("player") then
			GameTooltip:AddLine((GetSpellInfo(tradeID)).." not available for alts")
		end
	end
	GameTooltip:Show()
end

function Skillet:TradeButtonAdditional_OnEnter(button)
	--DA.DEBUG(0,"TradeButtonAdditional_OnEnter("..tostring(button)..")")
	--DA.DEBUG(1,"TradeButtonAdditional_OnEnter: button= "..DA.DUMP1(button))
	GameTooltip:SetOwner(button, "ANCHOR_TOPLEFT")
	GameTooltip:ClearLines()
	local spellID = button:GetID()
	GameTooltip:AddLine(GetSpellInfo(spellID))
	local itemID = Skillet:GetAutoTargetItem(self.currentTrade, spellID)
	if itemID and IsAltKeyDown() then
		GameTooltip:AddLine("/use "..GetItemInfo(itemID))
	end
	GameTooltip:Show()
end

function Skillet:TradeButton_OnClick(this,button)
	--DA.DEBUG(0,"TradeButton_OnClick("..DA.DUMP1(this)..", "..tostring(button)..")")
	local name = this:GetName()
	local _, player, tradeID = string.split("-", name)
	tradeID = tonumber(tradeID)
	DA.DEBUG(0,"TradeButton_OnClick: "..tostring(name).." "..tostring(player).." "..tostring(tradeID)..", button= "..tostring(button))
	if button == "LeftButton" then
		if player == self.currentPlayer and self.currentTrade then
			if self.currentTrade == tradeID and IsShiftKeyDown() then
				local link
				if GetTradeSkillListLink then
					link = GetTradeSkillListLink()
				elseif C_TradeSkillUI.GetTradeSkillListLink then
					link = C_TradeSkillUI.GetTradeSkillListLink()
				end
				if link then
					ChatEdit_InsertLink(link)
				end
			elseif self.currentTrade ~= tradeID then
				if self.skillIsCraft[self.currentTrade] ~= self.skillIsCraft[tradeID] then
					local buttonName = "SkilletFrameTradeButton-"..player.."-"..self.currentTrade
					local button = _G[buttonName]
					if button then
						button:SetChecked(false)
					end
					self:ChangeTrade(tradeID)
				else
					self:SetTradeSkill(self.currentPlayer, tradeID)
				end
			end
			this:SetChecked(true)
		end
	end
	GameTooltip:Hide()
end

function Skillet:TradeButtonAdditional_OnClick(this,button)
	DA.DEBUG(0,"TradeButtonAdditional_OnClick("..DA.DUMP1(this)..", "..tostring(button)..")")
	local name = this:GetName()
	DA.DEBUG(0,"TradeButtonAdditional_OnClick: name= "..tostring(name))
	GameTooltip:Hide()
end

function Skillet:CreateAdditionalButtonsList()
	--DA.DEBUG(0,"CreateAdditionalButtonsList()")
	Skillet.AdditionalButtonsList = {}
	local seenButtons = {}
	local tradeSkillList = self.tradeSkillList
	for i=1,#tradeSkillList,1 do
		local tradeID = tradeSkillList[i]
		local ranks = self:GetSkillRanks(self.currentPlayer, tradeID)
		if ranks then
			local additionalSpellTab = Skillet.AdditionalAbilities[tradeID]
			if additionalSpellTab then
				local spellID = additionalSpellTab[1]
				if not seenButtons[spellID] then
					DA.DEBUG(0,"CreateAdditionalButtonsList: tradeID= "..tostring(tradeID)..", additionalSpellTab= "..DA.DUMP1(additionalSpellTab))
					table.insert(Skillet.AdditionalButtonsList, additionalSpellTab)
					seenButtons[spellID] = true
				end
			end		-- additionalSpellTab
		else
			--DA.DEBUG(3,"tradeID= "..tostring(tradeID).." has no ranks")
		end		-- ranks
	end		-- for
	--DA.DEBUG(0,"CreateAdditionalButtonsList: AdditionalButtonsList= "..DA.DUMP(Skillet.AdditionalButtonsList))
end

function Skillet:UpdateTradeButtons(player)
	--DA.DEBUG(0,"UpdateTradeButtons("..tostring(player)..")")
--	if TSM_API then return end		-- Maybe later but for now, these buttons cause more trouble than they are worth.
	local position = 0 -- pixels
	local tradeSkillList = self.tradeSkillList
	local frameName = "SkilletFrameTradeButtons-"..player
	local frame = _G[frameName]
	if not frame then
		frame = CreateFrame("Frame", frameName, SkilletFrame)
	end
	frame:Show()
	for i=1,#tradeSkillList,1 do	-- iterate thru all skills in defined order for neatness (professions, secondary, class skills)
		local tradeID = tradeSkillList[i]
		local ranks = self:GetSkillRanks(player, tradeID)
		local tradeLink
		if self.db.realm.tradeSkills[player] then
			if nonLinkingTrade[tradeID] then
				tradeLink = nil
			else
				local tradePlayer = self.db.realm.tradeSkills[player][tradeID]
				if tradePlayer then
					tradeLink = tradePlayer.link
				end
			end
		end
		--DA.DEBUG(3,"tradeLink= "..tostring(tradeLink))
		if self:IsSupportedTradeskill(tradeID) and ranks and tradeID ~= MINING then
			local spellName, _, spellIcon = GetSpellInfo(tradeID)
			if tradeID == SMELTING then
				spellName = GetSpellInfo(MINING)
			end
			--DA.DEBUG(3,"tradeID= "..tostring(tradeID)..", spellName= "..tostring(spellName))
			local buttonName = "SkilletFrameTradeButton-"..player.."-"..tradeID
			local button = _G[buttonName]
			if not button then
				button = CreateFrame("CheckButton", buttonName, frame, "SkilletTradeButtonTemplate")
			end
			if player ~= self.currentPlayer and not tradeLink then						-- fade out buttons that don't have data collected
				DA.DEBUG(3,"Fading "..tostring(buttonName))
				button:SetAlpha(.4)
				button:SetHighlightTexture("")
				button:SetPushedTexture("")
				button:SetCheckedTexture("")
			end
			button:ClearAllPoints()
			button:SetPoint("BOTTOMLEFT", SkilletRankFrame, "TOPLEFT", position, 3)
			local buttonIcon = _G[buttonName.."Icon"]
			buttonIcon:SetTexture(spellIcon)
			position = position + button:GetWidth()
			if tradeID == SMELTING then tradeID = MINING end
			if tradeID == self.currentTrade then
				button:SetChecked(true)
				if self.data.skillList[player][tradeID] and self.data.skillList[player][tradeID].scanTradeReason then
					buttonIcon:SetVertexColor(1,0,0)
				else
					buttonIcon:SetVertexColor(1,1,1)
				end
			else
				button:SetChecked(false)
			end
			if (self.db.profile.include_craftbuttons and self.skillIsCraft[tradeID]) or
			  (self.db.profile.include_tradebuttons and not self.skillIsCraft[tradeID]) then
				button:Show()
			else
				button:Hide()
			end
		end
	end		-- for
--
-- Add some space and then go through the list created by CreateAdditionalButtonsList()
--
	position = position + 10
--
-- Create list of additional skills (if it doesn't exist)
--
	if not Skillet.AdditionalButtonsList then
		self:CreateAdditionalButtonsList()
	end
--
-- Iterate thru the list of additional skills and add buttons for each one
--
-- Each entry is {spellID, "Name", isToy, isPet, isKnown}
--   isToy is true if the spellID is a toyID instead
--   isPet is true if the name is a pet
--   isKnown is true if the spellID must be known by the player.
--
	for i=1,#Skillet.AdditionalButtonsList,1 do
		local additionalSpellTab = Skillet.AdditionalButtonsList[i]
		local additionalSpellId = additionalSpellTab[1]
		local additionalSpellName = additionalSpellTab[2]
		local spellName, _, spellIcon = GetSpellInfo(additionalSpellId)
		local buttonName = "SkilletDo"..additionalSpellName
		local button = _G[buttonName]
		if not button then
			button = CreateFrame("Button", buttonName, frame, "SkilletTradeButtonAdditionalTemplate")
			button:SetID(additionalSpellId)
--
-- no modifier - pure spell
--
			button:SetAttribute("type1", "spell");
			button:SetAttribute("type2", "macro");
			button:SetAttribute("alt-type*", "macro");
			button:SetAttribute("spell", additionalSpellId);
		end
		button:ClearAllPoints()
		button:SetPoint("BOTTOMLEFT", SkilletRankFrame, "TOPLEFT", position, 3)
		local buttonIcon = _G[buttonName.."Icon"]
		buttonIcon:SetTexture(spellIcon)
		position = position + button:GetWidth()
		button:Show()
	end
	--DA.DEBUG(3,"UpdateTradeButtons complete")
end

local function SkilletPluginDropdown_OnClick(this)
	--DA.DEBUG(0,"SkilletPluginDropdown_OnClick()")
	local oldScript = this.oldButton:GetScript("OnClick")
	oldScript(this)
	for i=1,#SkilletFrame.added_buttons do
		local buttonName = "SkilletPluginDropdown"..i
		local button = _G[buttonName]
		if button then
			button:Hide()
		end
	end
end

function Skillet:PluginButton_OnClick(button)
	--DA.DEBUG(0,"PluginButton_OnClick()")
	if SkilletFrame.added_buttons then
		for i=1,#SkilletFrame.added_buttons do
			local oldButton = SkilletFrame.added_buttons[i]
			local buttonName = "SkilletPluginDropdown"..i
			local button = _G[buttonName]
			if not button then
				button = CreateFrame("button", buttonName, SkilletPluginButton, "UIPanelButtonTemplate")
				button:Hide()
			end
			--DA.DEBUG(0,buttonName)
			button:SetText(oldButton:GetText())
			button:SetWidth(100)
			button:SetHeight(22)
			button:SetFrameLevel(SkilletFrame:GetFrameLevel()+10)
			button:SetScript("OnClick", SkilletPluginDropdown_OnClick)
			button:SetPoint("TOPLEFT", 0, -i*20)
			button.oldButton = oldButton
			oldButton:Hide()
			if button:IsVisible() then
				button:Hide()
			else
				button:Show()
			end
		end
	end
end

--
-- Updates the trade skill window whenever anything has changed,
-- number of skills, skill type, skill level, etc
--
function Skillet:UpdateTradeSkillWindow()
	DA.DEBUG(0,"UpdateTradeSkillWindow()")
	self:NameEditSave()
	if not self.currentPlayer or not self.currentTrade then 
		DA.DEBUG(3,"leaving early, no player or no trade")
		return
	end
	local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
	local numTradeSkills = 0
	if not self.dataScanned then
		self.dataScanned = self:RescanTrade()
		self:SortAndFilterRecipes()
	end
	if not self.data.sortedSkillList or not self.data.sortedSkillList[skillListKey] then
		numTradeSkills = self:SortAndFilterRecipes()
		if not numTradeSkills or numTradeSkills < 1 then
			numTradeSkills = 0
		end
	end
	self:ResetTradeSkillWindow()
	self:ConfigureRecipeControls()
	if self.data.sortedSkillList[skillListKey] then
		numTradeSkills = self.data.sortedSkillList[skillListKey].count
	else
		numTradeSkills = 0
	end
	Skillet:ScanQueuedReagents()
	Skillet:InventoryScan()
	self:CalculateCraftableCounts()
	self:UpdateDetailsWindow(self.selectedSkill)
	self:UpdateTradeButtons(self.currentPlayer)
	self:UpdateIgnoreListButton()
	SkilletIgnoreListButton:Show()
--
-- Plugin button only shows if any plugins have registered
--
	if SkilletPluginButton and SkilletFrame.added_buttons and #SkilletFrame.added_buttons > 0 then
		SkilletPluginButton:Show()
	else
		SkilletPluginButton:Hide()
	end
--
-- If any plugins have registered an Update function, call it now
--
	self:UpdatePlugins()
--
-- shopping list button always shown
--
	SkilletShoppingListButton:Show()
	SkilletFrame:SetAlpha(self.db.profile.transparency)
	SkilletFrame:SetScale(self.db.profile.scale)
	local uiScale = SkilletFrame:GetEffectiveScale()
	local width = SkilletFrame:GetWidth() - 20 -- for padding.
	local height = SkilletFrame:GetHeight()
	local reagent_width = width / 2
	reagent_height = SKILLET_REAGENT_MIN_HEIGHT + ((height - SKILLET_MIN_HEIGHT) * 2) / 3
	--DA.DEBUG(0,"fullView="..tostring(self.fullView)..", reagent_height="..tostring(reagent_height))
	if not self.fullView then
		reagent_height = SKILLET_REAGENT_MIN_HEIGHT + height - SKILLET_MIN_HEIGHT + 85
		--DA.DEBUG(0,"new_reagent_height="..tostring(reagent_height))
	end
	if reagent_width < SKILLET_REAGENT_MIN_WIDTH then
		reagent_width = SKILLET_REAGENT_MIN_WIDTH
	elseif reagent_width > SKILLET_REAGENT_MAX_WIDTH then
		reagent_width = SKILLET_REAGENT_MAX_WIDTH
	end
	SkilletReagentParent:SetWidth(reagent_width)
	SkilletReagentParent:SetHeight(reagent_height)
	SkilletQueueManagementParent:SetWidth(reagent_width)
	local width = SkilletFrame:GetWidth() - reagent_width - 20 -- padding
	SkilletSkillListParent:SetWidth(width)
--
-- Set the state of any craft specific options
--
	self:RecipeDifficultyButton_OnShow()
	SkilletHideUncraftableRecipes:SetChecked(self:GetTradeSkillOption("hideuncraftable"))
	self:UpdateQueueWindow()
	self:UpdateShoppingListWindow(false)
--
-- Window Title
--
	local tradeName = self:GetTradeName(self.currentTrade)
	if not tradeName then tradeName = "" end
	local title = _G["SkilletTitleText"];
	if title then
		title:SetText(L["Skillet Trade Skills"] .. " "..self.version.." ("..Skillet.wowVersion.."): " .. self.currentPlayer .. "/" .. tradeName)
	end
--
-- Progression status bar
--
	local rank,maxRank = 0,0
	local skillRanks = self:GetSkillRanks(self.currentPlayer, self.currentTrade)
	if skillRanks then
		rank,maxRank = skillRanks.rank, skillRanks.maxRank
	end
	SkilletRankFrame:SetMinMaxValues(0, maxRank)
	SkilletRankFrame:SetValue(rank)
	SkilletRankFrameSkillRank:SetText(tradeName.."    "..rank.."/"..maxRank)
	SkilletRankFrame.subRanks.gray:SetValue(maxRank)
	for c,s in pairs(SkilletRankFrame.subRanks) do
		s:SetMinMaxValues(0, maxRank)
	end
--
-- it seems the resize for the main skillet window happens before the resize for the skill list box
--
	local button_count = (SkilletFrame:GetHeight() - SKILLET_HEADER_HEIGHT) / SKILLET_TRADE_SKILL_HEIGHT
	button_count = math.floor(button_count)
	self.button_count = button_count
--
-- Update the scroll frame
--
	FauxScrollFrame_Update(SkilletSkillList,				-- frame
							numTradeSkills,					-- num items
							button_count,					-- num to display
							SKILLET_TRADE_SKILL_HEIGHT)		-- value step (item height)
--
-- Where in the list of skill to start counting.
--
	local skillOffset = FauxScrollFrame_GetOffset(SkilletSkillList);
--
-- Remove any selected highlight, it will be added back as needed
--
	SkilletHighlightFrame:Hide();
	local nilFound = false
	width = SkilletSkillListParent:GetWidth() - 10
	if SkilletSkillList:IsVisible() then
--
-- adjust for the width of the scroll bar, if it is visible.
--
		width = width - 20
	end
	local text, color, skillIndex
	local max_text_width = width
	local showOwned = self:GetTradeSkillOption("filterInventory-owned") -- count from Altoholic
	local showBag = self:GetTradeSkillOption("filterInventory-bag")
	local showCraft = self:GetTradeSkillOption("filterInventory-crafted")
	local showVendor = self:GetTradeSkillOption("filterInventory-vendor")
	local showAlts = self:GetTradeSkillOption("filterInventory-alts")
	local catstring = {}
	SkilletFrameEmptySpace.skill.subGroup = self:RecipeGroupFind(self.currentPlayer,self.currentTrade,self.currentGroupLabel,self.currentGroup)
	--DA.DEBUG(0,"GroupLabel= "..tostring(self.currentGroupLabel)..", Group= "..tostring(self.currentGroup))
	self.visibleSkillButtons = math.min(numTradeSkills - skillOffset, button_count)
--
-- Iterate through all the buttons that make up the scroll window
-- and fill them in with data or hide them, as necessary
--
	local sortedSkillList = self.data.sortedSkillList[skillListKey]
	--DA.DEBUG(0,"Start for loop, button_count= "..tostring(button_count))
	for i=1, button_count, 1 do
		local rawSkillIndex = i + skillOffset
		local button, buttonDrag = get_recipe_button(i)
		button.rawIndex = rawSkillIndex
		button:SetWidth(width)
		if rawSkillIndex <= numTradeSkills then
			local skill = sortedSkillList[rawSkillIndex]
			--DA.DEBUG(2,"rawSkillIndex= "..tostring(rawSkillIndex)..", name= "..tostring(skill.name))
			--DA.DEBUG(3,"skill= "..DA.DUMP1(skill,1))
			local skillIndex = skill.skillIndex
			local buttonText = _G[button:GetName() .. "Name"]
			local levelText = _G[button:GetName() .. "Level"]
			local countText = _G[button:GetName() .. "Counts"]
			local suffixText = _G[button:GetName() .. "Suffix"]
			local buttonExpand = _G[button:GetName() .. "Expand"]
			local skillRankBar = _G[button:GetName() .. "SubSkillRankBar"]
			buttonText:SetText("")
			levelText:SetText("")
			countText:SetText("")
			countText:Hide()
			countText:SetWidth(10)
			suffixText:SetText("")
			suffixText:Hide()
			skillRankBar:Hide()
			if self.db.profile.display_required_level or self.db.profile.display_item_level then
				levelText:SetWidth(math.max(skill.depth*8+20,28))
			else
				levelText:SetWidth(skill.depth*8)
			end
			local textAlpha = 1
			if self.dragEngaged then
				buttonDrag:SetWidth(width)
				button.highlight:Hide()
				if Skillet.mouseOver then
					if Skillet.mouseOver.skill.subGroup then
						if button == Skillet.mouseOver then
							button.highlight:Show()
						end
					elseif skill.subGroup == Skillet.mouseOver.skill.parent then
						button.highlight:Show()
					end
				end
				textAlpha = .75
				local dx = self.selectedTextOffsetXY[1] / uiScale
				local dy = self.selectedTextOffsetXY[2] / uiScale
				buttonDrag:SetPoint("TOPLEFT", button, "TOPLEFT", buttonDrag.skill.depth*8-8+dx, dy)
			else
				if skill.selected then
					button.highlight:Show()
				else
					button.highlight:Hide()
				end
			end
			--DA.DEBUG( if self.currentGroupLabel ~= "Blizzard" then DA.DEBUG(0,"skill.subGroup = "..tostring(skill.subGroup)) end
			if skill.subGroup then
				--DA.DEBUG(2,"skill.subGroup= "..DA.DUMP(skill.subGroup,1))
				if SkillButtonNameEdit.originalButton ~= buttonText then
					buttonText:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, textAlpha)
					countText:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, textAlpha)
					local expanded = skill.subGroup.expanded
					if expanded then
						buttonExpand:SetNormalTexture("Interface\\Addons\\Skillet-Classic\\Icons\\expand_arrow_open.tga")
						buttonExpand:SetHighlightTexture("Interface\\Addons\\Skillet-Classic\\Icons\\expand_arrow_open.tga")
					else
						buttonExpand:SetNormalTexture("Interface\\Addons\\Skillet-Classic\\Icons\\expand_arrow_closed.tga")
						buttonExpand:SetHighlightTexture("Interface\\Addons\\Skillet-Classic\\Icons\\expand_arrow_closed.tga")
					end
					local name
					if skill.subGroup.entries then
						name = skill.name.." ("..#skill.subGroup.entries..")"
					else
						name = skill.name.." (0)"
					end
					local groupIndex = skill.subGroup.groupIndex
					DA.DEBUG(2,"name= "..tostring(name)..", groupIndex= "..tostring(groupIndex))
					buttonText:SetText(name)      -- THIS IS A HEADER SO DON'T TRY TO USE THE RECIPE ID!
					button:SetID(skillIndex or 0)
					buttonExpand.group = skill.subGroup
					button.skill = skill
					button:UnlockHighlight() -- headers never get highlighted
					buttonExpand:Show()
					local rankBarWidth = 0
					if groupIndex then
						local _, _, _, _, _, _,_,showProgressBar, currentRank, maxRank, startingRank  = GetTradeSkillInfo(groupIndex)
						if ( showProgressBar ) then
							skillRankBar:Show();
							skillRankBar:SetMinMaxValues(startingRank,maxRank);
							skillRankBar:SetValue(currentRank);
							skillRankBar.currentRank = currentRank;
							skillRankBar.maxRank = maxRank;
							skillRankBar.Rank:SetText(currentRank.."/"..maxRank);
							rankBarWidth = 60;
						end
					end
					local button_width = button:GetTextWidth()
					show_button(button, self.currentTrade, skillIndex, i)
				end
			else
				local recipe = self:GetRecipe(skill.recipeID)
				buttonExpand.group = nil
				button.skill = skill
--				local skill_color = skill.color or skill.skillData.color or NORMAL_FONT_COLOR
				local _, difficulty 
				if self.isCraft then
					_, _, difficulty = GetCraftInfo(skillIndex)
				else
					_, difficulty = GetTradeSkillInfo(skillIndex)
				end
				local skill_color = Skillet.skill_style_type[difficulty] or skill.color or skill.skillData.color or NORMAL_FONT_COLOR
				buttonText:SetTextColor(skill_color.r, skill_color.g, skill_color.b, textAlpha)
				countText:SetTextColor(skill_color.r, skill_color.g, skill_color.b, textAlpha)
				buttonExpand:Hide()
--
-- if the item has a minimum level requirement, then print that here
--
				if self.db.profile.display_required_level and recipe.itemID then
					local level = self:GetLevelRequiredToUse(recipe.itemID)
					if level and level > 1 then
						local _, _, rarity = GetItemInfo(recipe.itemID)
						local r, g, b = GetItemQualityColor(rarity)
						if r and g and b then
							levelText:SetTextColor(r, g, b)
						end
						levelText:SetText(level)
					end
				elseif self.db.profile.display_item_level and recipe.itemID then
					local level = self:GetItemLevel(recipe.itemID)
					if level and level > 1 then
						levelText:SetText(level)
					end
				end
				text = (self:RecipeNamePrefix(skill, recipe) or "") .. (skill.name or "")
				if recipe.reagentData and #recipe.reagentData > 0 then
					local num, numrecursive, numwvendor, numwalts = get_craftable_counts(skill.skillData, recipe.numMade)
					if (num > 0 and showBag) or (numrecursive > 0 and showCraft) or (numwvendor > 0 and showVendor) or (numwalts > 0 and showAlts) then
						local c = 1
						if showBag then
							if num >= 1000 then
								num = "##"
							end
							catstring[c] = CBAG..num
							c = c + 1
						end
						if showCraft then
							if numrecursive >= 1000 then
								numrecursive = "##"
							end
							catstring[c] = CCRAFT..numrecursive
							c = c + 1
						end
						if showVendor then
							if numwvendor >= 1000 then
								numwvendor = "##"
							end
							catstring[c] = CVENDOR..numwvendor
							c = c + 1
						end
						if showAlts then
							if numwalts >= 1000 then
								numwalts = "##"
							end
							catstring[c] = CALTS..numwalts
							c = c + 1
						end
						local count = ""
						if c > 1 then
							count = CGREY.."["
							for b=1,c-1 do
								count = count..catstring[b]
								if b+1 < c then
									count = count..CGREY.."/"
								end
							end
							count = count..CGREY.."]|r"
						end
						countText:SetText(count)
						countText:Show()
					else
						countText:Hide()
					end
				else
					countText:Hide()
				end
--
-- show the count of the item currently owned that the recipe will produce
--
				if showOwned and self.currentPlayer == UnitName("player") then
					local numowned = (self.db.realm.auctionData[self.currentPlayer][recipe.itemID] or 0) + GetItemCount(recipe.itemID or 0,true)
					if numowned > 0 then
						if numowned >= 1000 then
							numowned = "##"
						end
						local count = COWNED.."("..numowned..") "..(countText:GetText() or "")
						countText:SetText(count)
						countText:Show()
					end
				end
				if skill_color.alttext == "+++" then
					local _, _, _, _, _, numSkillUps  = GetTradeSkillInfo(skillIndex)
					if numSkillUps and numSkillUps > 1 then
						local count = "<+"..numSkillUps.."> "..(countText:GetText() or "")
						countText:SetText(count)
						countText:Show()
					end
				end
				countText:SetWidth(math.max(countText:GetStringWidth(),SKILLET_COUNT_MIN_WIDTH)) -- make end of buttonText have a fixed location
				button:SetID(skillIndex or 0)
--
-- If enhanced recipe display is enabled, show the difficulty as text,
-- rather than as a colour. This should help used that have problems
-- distinguishing between the difficulty colours we use.
--
				if self.db.profile.enhanced_recipe_display and skill_color.alttext then
					text = text .. skill_color.alttext;
				end
				suffixText:SetText(self:RecipeNameSuffix(skill, recipe) or "")
				suffixText:Show()
				buttonText:SetText(text)
				buttonText:SetWordWrap(false)
				buttonText:SetWidth(max_text_width - countText:GetWidth())
				if not self.dragEngaged and self.selectedSkill and self.selectedSkill == skillIndex then
					SkilletHighlightFrame:SetPoint("TOPLEFT", "SkilletScrollButton"..i, "TOPLEFT", 0, 0)
					SkilletHighlightFrame:SetWidth(button:GetWidth())
					SkilletHighlightFrame:SetFrameLevel(button:GetFrameLevel())
					if color then
						SkilletHighlight:SetColorTexture(color.r, color.g, color.b, 0.4)
					else
						SkilletHighlight:SetColorTexture(0.7, 0.7, 0.7, 0.4)
					end
--
-- And update the details for this skill, just in case something
-- has changed (mats consumed, etc)
--
					self:UpdateDetailsWindow(self.selectedSkill)
					SkilletHighlightFrame:Show()
					button:LockHighlight()
				else
					-- not selected
--					button:SetBackdropColor(0.8, 0.2, 0.2)
					button:UnlockHighlight()
				end
				show_button(button, self.currentTrade, skillIndex, i)
			end
		else -- rawSkillIndex > numTradeSkills 
			hide_button(button, self.currentTrade, skillIndex, i)
			button:UnlockHighlight()
		end
	end -- for
--
-- Hide any of the buttons that we created but don't need right now
--
	for i = button_count+1, num_recipe_buttons, 1 do
		local button, buttonDrag = get_recipe_button(i)
		hide_button(button, self.currentTrade, 0, i)
	end
	if self.visibleSkillButtons > 0 then
		local button = get_recipe_button(self.visibleSkillButtons)
		SkilletFrameEmptySpace:SetPoint("TOPLEFT",button,"BOTTOMLEFT")
	else
		SkilletFrameEmptySpace:SetPoint("TOPLEFT",SkilletSkillListParent,"TOPLEFT")
	end
	SkilletFrameEmptySpace:SetPoint("BOTTOMRIGHT",SkilletSkillListParent,"BOTTOMRIGHT")
	DA.DEBUG(3,"UpdateTradeSkillWindow Complete")
end

--
-- Display an action packed tooltip when we are over
-- a recipe in the list of skills
--
function Skillet:SkillButton_OnEnter(button)
	--DA.DEBUG(0,"SkillButton_OnEnter("..tostring(button)..")")
	local id = button:GetID()
	if not id then
		return
	end
	if button.locked then return end	-- it's possible that multiple onEnters might stack ontop of each other if you scroll really quickly, this is to avoid that problem
	button.locked = true
	local b = button:GetName()
	if not b then
		button.locked = false
		return
	end
	local buttonName = _G[b.."Name"]
	if button.skill.subGroup then			-- header
		buttonName:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
		button.locked = false
		return
	end
	if self.dragEngaged then		-- dragging a skill, don't highlight other buttons
		button.locked = false
		return
	end
	local skill = button.skill
	--DA.DEBUG(1,"skill= "..DA.DUMP1(skill,1))
	if not skill then
		button.locked = false
		return
	end
	if self.fencePickEngaged then
		self:SkillButton_ClearSelections()
		self:SkillButton_SetSelections(self.skillMainSelection, button.rawIndex)
		self:UpdateTradeSkillWindow()
		button.locked = false
		return
	end
	buttonName:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
	local recipe = self:GetRecipe(skill.recipeID) or Skillet.unknownRecipe
	if not self.db.profile.show_detailed_recipe_tooltip then
--
-- user does not want the tooltip displayed, it can get a bit big after all
--
		button.locked = false
		return
	end
	local tip = SkilletTradeskillTooltip
	if not tip.SetBackdrop then
		Mixin(tip, BackdropTemplateMixin)
	end
	ShoppingTooltip1:Hide()
	ShoppingTooltip2:Hide()
	tip:SetOwner(button, "ANCHOR_BOTTOMRIGHT",-300);
	tip:SetBackdropColor(0,0,0,1);
	tip:ClearLines();
	tip:SetClampedToScreen(true)
--
-- Set the tooltip's scale to match that of the default UI
--
	local uiScale = 1.0;
	if ( GetCVar("useUiScale") == "1" ) then
		uiScale = tonumber(GetCVar("uiscale"))
	end
	if Skillet.db.profile.ttscale then
		uiScale = uiScale * Skillet.db.profile.ttscale
	end
	tip:SetScale(uiScale)
--
-- If not displaying full tooltips you have to press Ctrl to see them
--
	if Skillet.db.profile.display_full_tooltip or IsControlKeyDown() then
		local name, link, id, quality, quantity, altlink, skillIndex, _
		if skill.recipeID then
			skillIndex = self.data.skillIndexLookup[self.currentPlayer][skill.recipeID]
		end
		--DA.DEBUG(1,"recipeID= "..tostring(skill.recipeID)..", itemID= "..tostring(recipe.itemID)..", skillIndex= "..tostring(skillIndex))
		if recipe.itemID == 0 or not Skillet.db.profile.display_item_tooltip then
			link = GetSpellLink(skill.recipeID)
			name = GetSpellInfo(link)
			quality = nil
			quantity = nil
			if recipe.itemID ~= 0 then
				_, altlink = GetItemInfo(recipe.itemID)
			end
		elseif recipe.itemID and skill.recipeID then
			name, link, quality = GetItemInfo(recipe.itemID)
			altlink = GetSpellLink(skill.recipeID)
			quantity = recipe.numMade
		else
			DA.DEBUG(1,"recipe= "..DA.DUMP1(recipe,1))
			DA.DEBUG(1,"skill= "..DA.DUMP1(skill,1))
		end
		if Skillet.isCraft then
--
-- Craft tooltip is built with special API calls
--
			local difficulty = skill.skillData.difficulty
			--DA.DEBUG(1,"skill.skillData= "..DA.DUMP1(skill.skillData,1))
			local color = Skillet.skill_style_type[skill.skillData.difficulty]
			--DA.DEBUG(1,"difficulty= "..tostring(difficulty)..", color= "..DA.DUMP1(color))
			if (color) then
				tip:AddLine(skill.name, color.r, color.g, color.b, false);
			else
				tip:AddLine(skill.name, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, false);
			end
			if skillIndex then
				local requiredTotems = BuildColoredListString(GetCraftSpellFocus(skillIndex))
				if requiredTotems then
					tip:AddLine(REQUIRES_LABEL.." "..requiredTotems, 1,1,1, false)
				end
				tip:AddLine(" ")
				local desc = GetCraftDescription(skillIndex)
				if (desc) then
					tip:AddLine(desc, 1,1,1, true)
				end
			end
		elseif self.currentTrade == 7411 and recipe.itemID == 0 then
--
-- Wrath Enchanting tooltip is built with special API calls
--
			tip:AddLine(skill.name, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, false);
			if skillIndex then
				tip:AddLine(" ")
				local desc = GetTradeSkillDescription(skillIndex)
				if (desc) then
					tip:AddLine(desc, 1,1,1, true)
				end
			end
		else
--
-- TradeSkill tooltip
--
			if altlink and IsAltKeyDown() then
				--DA.DEBUG(1,"altlink= "..DA.PLINK(altlink))
--				tip:SetHyperlink(altlink)
			elseif link then
				--DA.DEBUG(1,"link= "..DA.PLINK(link))
				if skillIndex then
					tip:SetTradeSkillItem(skillIndex)
				else
					tip:SetHyperlink(link)
				end
			end
		end

		if IsShiftKeyDown() then
			if recipe.itemID == 0 then
				Skillet:Tooltip_ShowCompareItem(tip, GetInventoryItemLink("player", recipe.slot), "left")
			else
				Skillet:Tooltip_ShowCompareItem(tip, link, "left")
			end
		end
	else
--
-- Just the name of the recipe
--
		local color = Skillet.skill_style_type[skill.skillData.difficulty]
		if (color) then
			tip:AddLine(skill.name, color.r, color.g, color.b, false);
		else
			tip:AddLine(skill.name, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, false);
		end
	end		-- Skillet.db.profile.display_full_tooltip
--
--	Add Skillet specific information to the tooltip
--
	if not recipe.itemID then
		recipe.itemID = 0
	end	
	local num, numrecursive, numwvendor, numwalts, numbags, numbank = 0, 0, 0, 0, 0, 0
	if skill.skillData then
		num, numrecursive, numwvendor, numwalts = get_craftable_counts(skill.skillData, recipe.numMade)
	end
	numbags = GetItemCount(recipe.itemID,false)
	numbank = GetItemCount(recipe.itemID,true) - numbags
--
-- how many are there already
--
	if numbags > 0 then
		local text = "\n" .. COWNED..numbags .. "|r " .. L["in your inventory"];
		tip:AddLine(text, 1, 1, 1, false); -- (text, r, g, b, wrap)
	end
	if numbank > 0 then
		local text = "\n" .. CBANK..numbank .. "|r " .. L["in your bank"];
		tip:AddLine(text, 1, 1, 1, false); -- (text, r, g, b, wrap)
	end
--
-- how many can be created with the reagents in the inventory
--
	if num > 0 then
		local text = "\n" .. CBAG..num .. "|r " .. L["can be created from reagents in your inventory"];
		tip:AddLine(text, 1, 1, 1, false); -- (text, r, g, b, wrap)
	end
--
-- how many can be created by crafting the reagents
--
	if numrecursive > 0 then
		local text = "\n" .. CCRAFT..numrecursive .. "|r " .. L["can be created by crafting reagents"];
		tip:AddLine(text, 1, 1, 1, false); -- (text, r, g, b, wrap)
	end
--
-- how many can be created with reagents bought at vendor
--
	if numwvendor and numwvendor > 0 and numwvendor ~= num then
		if numwvendor >= 1000 then
			numwvendor = "##"
		end
		local text =  "\n" .. CVENDOR..numwvendor .. "|r " .. L["can be created with reagents bought at vendor"];
		tip:AddLine(text, 1, 1, 1, false);	-- (text, r, g, b, wrap)
	end
--
-- how many can be crafted with reagents on *all* alts, including this one.
--
	if numwalts and numwalts > 0 and numwalts ~= num then
		if numwalts >= 1000 then
			numwalts = "##"
		end
		local text = "\n" .. CALTS..numwalts .. "|r " .. L["can be created from reagents on all characters"];
		tip:AddLine(text, 1, 1, 1, false);	-- (text, r, g, b, wrap)
	end
--
-- now the list of regents for this recipe and some info about them
--
	tip:AddLine("\n" .. SPELL_REAGENTS);
	for i=1, #recipe.reagentData, 1 do
		local reagent = recipe.reagentData[i]
		if not reagent then
			break
		end
		local num, numCraftable = self:GetInventory(self.currentPlayer, reagent.id)
		local bank = GetItemCount(reagent.id,true) - num
		local itemName = GetItemInfo(reagent.id) or reagent.id
		local text
		if self:VendorSellsReagent(reagent.id) then
			text = string.format("  %d x %s  |cff808080(%s)|r", reagent.numNeeded, itemName, L["buyable"])
		else
			text = string.format("  %d x %s", reagent.numNeeded, itemName)
		end
		local counts = string.format("|cffa0a0a0[%d/%d/%d]|r", num, bank, numCraftable)
		tip:AddDoubleLine(text, counts, 1, 1, 1);
	end
	local text = string.format("[%s/%s/%s]", L["inventory"], L["bank"], L["craftable"])
	tip:AddDoubleLine("\n", text)
	local item = string.format("itemID= %d",recipe.itemID)
	local spell = string.format("spellID= %d",recipe.spellID)
	local scroll = string.format("scrollID= %d",recipe.scrollID)
	if Skillet.isCraft then
		item = string.format("spellID= %d",recipe.itemID)
	end
	if recipe.itemID ~= 0 then
		tip:AddDoubleLine(spell, item)
	elseif recipe.scrollID then
		tip:AddDoubleLine(spell, scroll)
	else
		tip:AddLine(spell)
	end
	tip:Show()
	button.locked = false
end

--
-- Sets the game tooltip item to the selected skill
--
function Skillet:SetTradeSkillToolTip(skillIndex, buttonID)
	--DA.DEBUG(0,"SetTradeSkillToolTip("..tostring(skillIndex)..", "..tostring(buttonID)..")")
	GameTooltip:ClearLines()
	if Skillet.db.profile.scale_tooltip then
		local uiScale = 1.0;
		if ( GetCVar("useUiScale") == "1" ) then
			uiScale = tonumber(GetCVar("uiscale"))
		end
		if Skillet.db.profile.ttscale then
			uiScale = uiScale * Skillet.db.profile.ttscale
		end
		GameTooltip:SetScale(uiScale)
	end
	local recipe, recipeID = self:GetRecipeDataByTradeIndex(self.currentTrade, skillIndex)
	if Skillet.isCraft then
		if skillIndex then
			GameTooltip:SetCraftSpell(skillIndex)
			if recipe and recipe.itemID ~= 0 then
				Skillet:AddItemNotesToTooltip(GameTooltip, recipe.itemID)
			end
		end
	elseif Skillet.currentTrade == 7411 and recipe.itemID == 0 then
		if Skillet.db.profile.enchant_scrolls and recipe.scrollID then
			GameTooltip:SetItemByID(recipe.scrollID)
		else
			GameTooltip:AddLine(GetTradeSkillDescription(skillIndex),NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, true)
		end
	elseif recipe.itemID == 0 then
		GameTooltip:AddLine(GetTradeSkillDescription(skillIndex),NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, true)
	else
		if recipe then
			if recipe.itemID ~= 0 then
				GameTooltip:SetTradeSkillItem(skillIndex)
				if IsShiftKeyDown() then
					GameTooltip_ShowCompareItem()
				end
			else
				if IsShiftKeyDown() then
					Skillet:Tooltip_ShowCompareItem(GameTooltip, GetInventoryItemLink("player", recipe.slot), "left")
				end
			end
		end
	end
	GameTooltip:Show()
	CursorUpdate(self)
end

--
-- Clears any changes and hides the game tooltip
--
function Skillet:ClearTradeSkillToolTip(skillIndex)
	if Skillet.db.profile.scale_tooltip then
		GameTooltip:SetScale(Skillet.gttScale)
	end
	GameTooltip:Hide()
	ResetCursor()
end

function Skillet:SetReagentToolTip(reagentID, numNeeded, numCraftable)
	--DA.DEBUG(0,"SetReagentToolTip("..tostring(reagentID)..", "..tostring(numNeeded)..", "..tostring(numCraftable)..")")
	GameTooltip:ClearLines()
	GameTooltip:SetHyperlink("item:"..reagentID)
	if self:VendorSellsReagent(reagentID) then
		GameTooltip:AppendText(GRAY_FONT_COLOR_CODE .. " (" .. L["buyable"] .. ")" .. FONT_COLOR_CODE_CLOSE)
	end
	if self.db.global.itemRecipeSource[reagentID] then
		GameTooltip:AppendText(GRAY_FONT_COLOR_CODE .. " (" .. L["craftable"] .. ")" .. FONT_COLOR_CODE_CLOSE)
		for recipeID in pairs(self.db.global.itemRecipeSource[reagentID]) do
			local recipe = self:GetRecipe(recipeID)
			GameTooltip:AddDoubleLine("Source: ",(self:GetTradeName(recipe.tradeID) or recipe.tradeID)..":"..self:GetRecipeName(recipeID),0,1,0,1,1,1)
			for player,lookupTable in pairs(self.data.skillIndexLookup) do
				if lookupTable[recipeID] then
					local rankData = self:GetSkillRanks(player, recipe.tradeID)
					if rankData then
						local rank, maxRank = rankData.rank, rankData.maxRank
						GameTooltip:AddDoubleLine("  "..player,"["..(rank or "?").."/"..(maxRank or "?").."]",1,1,1)
					else
						GameTooltip:AddDoubleLine("  "..player,"[???/???]",1,1,1)
					end
				end
			end
		end
	end
	local server = self.data.server or 0
	local customPrice = self.db.global.customPrice[server]
	if customPrice and customPrice[reagentID] then
		local price = customPrice[reagentID].value
		local text = self:FormatMoneyFull(price,true)
		GameTooltip:AddDoubleLine("Custom Price: ",text,0,1,0,1,1,1)
	end
	local inBoth = self:GetInventory(self.currentPlayer, reagentID)
	local surplus = inBoth - numNeeded * numCraftable
	if inBoth < 0 then
		GameTooltip:AddDoubleLine("in shopping list:",(-inBoth),1,1,0)
	end
	if surplus < 0 then
		GameTooltip:AddDoubleLine("to craft "..numCraftable.." you need:",(-surplus),1,0,0)
	end
	if self.db.realm.reagentsInQueue[self.currentPlayer] then
		local inQueue = self.db.realm.reagentsInQueue[self.currentPlayer][reagentID]
		if inQueue then
			if inQueue < 0 then
				GameTooltip:AddDoubleLine("used in queued skills:",-inQueue,1,1,1)
			else
				GameTooltip:AddDoubleLine("created from queued skills:",inQueue,1,1,1)
			end
		end
	end
end

local bopCache = {}
function Skillet:bopCheck(item)
	if bopCache[item] == 1 then
		return true
	end
	if bopCache[item] == 0 then
		return false
	end
	local _,link = GetItemInfo(item)
	local tooltip = _G["SkilletParsingTooltip"]
	if tooltip == nil then
		tooltip = CreateFrame("GameTooltip", "SkilletParsingTooltip", _G["ANCHOR_NONE"], "GameTooltipTemplate")
		tooltip:SetOwner(WorldFrame, "ANCHOR_NONE");
	end
	tooltip:SetHyperlink("item:"..item)
	local tiplines = tooltip:NumLines()
	--DA.DEBUG(0,(link or "nil"))
	for i=1, tiplines, 1 do
		local lineText = string.lower(_G["SkilletParsingTooltipTextLeft"..i]:GetText() or " ")
		--DA.DEBUG(0,lineText)
		if (string.find(lineText, "binds when picked up")) then
			bopCache[item] = 1
			--DA.DEBUG(0,"bop")
			return true
		end
	end
	bopCache[item] = 0
	--DA.DEBUG(0,"boe")
end

function Skillet:HideDetailWindow()
	SkilletSkillName:SetText("")
	SkilletSkillCooldown:SetText("")
	SkilletDescriptionText:SetText("")
	SkilletRequirementLabel:Hide()
	SkilletRequirementText:SetText("")
	SkilletSkillIcon:Hide()
	SkilletReagentLabel:Hide()
	SkilletRecipeNotesButton:Hide()
	SkilletPreviousItemButton:Hide()
	SkilletExtraDetailTextLeft:Hide()
	SkilletExtraDetailTextRight:Hide()
	SkilletAuctionatorButton:Hide()
	SkilletHighlightFrame:Hide()
	SkilletFrame.selectedSkill = -1;
--
-- Always want these set.
--
	SkilletItemCountInputBox:SetText("1");
	for i=1, SKILLET_NUM_REAGENT_BUTTONS, 1 do
		local button = _G["SkilletReagent"..i]
		button:Hide();
	end
	if SkilletRankFrame.subRanks then
		for c,s in pairs(SkilletRankFrame.subRanks) do
			s:Hide()
		end
	end
end

--
-- Updates the details window with information about the currently selected skill
--
local lastUpdateSpellID = nil
function Skillet:UpdateDetailsWindow(skillIndex)
	--DA.DEBUG(0,"UpdateDetailsWindow("..tostring(skillIndex)..")")
	if not skillIndex or skillIndex < 0 then
		Skillet:HideDetailWindow()
		return
	end
	local texture;
	SkilletFrame.selectedSkill = skillIndex
	self.numItemsToCraft = 1
	if self.recipeNotesFrame then
		self.recipeNotesFrame:Hide()
	end
	local skill = self:GetSkill(self.currentPlayer, self.currentTrade, skillIndex)
	if not skill then
		Skillet:HideDetailWindow()
		return
	end
	lastUpdateSpellID = skill.id
	local recipe = Skillet.unknownRecipe
	if skill then
		--DA.DEBUG(1,"UpdateDetailsWindow: skill= "..DA.DUMP1(skill))
		recipe = self:GetRecipe(skill.id) or Skillet.unknownRecipe
--
-- Name of the skill
--
		SkilletSkillName:SetText(recipe.name)
		SkilletRecipeNotesButton:Show()
--
-- Fill the skill level bar
--
		if recipe.itemID and recipe.spellID then
			--DA.DEBUG(1,"UpdateDetailsWindow: recipe= "..DA.DUMP1(recipe))
			--DA.DEBUG(1,"UpdateDetailsWindow: itemID= "..tostring(recipe.itemID)..", spellID= "..tostring(recipe.spellID))
			local orange,yellow,green,gray = self:GetTradeSkillLevels(recipe.itemID, recipe.spellID)
			if not gray or not green or not yellow or not orange then
				DA.DEBUG(1,"UpdateDetailsWindow: orange= "..tostring(orange)..", yellow= "..tostring(yellow)..", green= "..tostring(green)..", gray= "..tostring(gray))
				DA.DEBUG(1,"UpdateDetailsWindow: sourceTradeSkillLevel= "..tostring(self.sourceTradeSkillLevel))
			else
--
-- Save the actual values
--
				SkilletRankFrame.itemID = recipe.itemID
				SkilletRankFrame.spellID = recipe.spellID
				SkilletRankFrame.gray = gray
				SkilletRankFrame.green = green
				SkilletRankFrame.yellow = yellow
				SkilletRankFrame.orange = orange
--
-- Set the graphical values
--
				SkilletRankFrame.subRanks.green:SetValue(gray)
				SkilletRankFrame.subRanks.yellow:SetValue(green)
				SkilletRankFrame.subRanks.orange:SetValue(yellow)
				SkilletRankFrame.subRanks.red:SetValue(orange)
				for c,s in pairs(SkilletRankFrame.subRanks) do
					s:Show()
				end
			end
		end
--
-- Whether or not it is on cooldown.
--
		SkilletSkillCooldown:SetText("")
		local cooldown
		if Skillet.isCraft then
			cooldown = GetCraftCooldown(skillIndex)
		else
			cooldown = GetTradeSkillCooldown(skillIndex)
		end
		if cooldown and cooldown > 0 then
			SkilletSkillCooldown:SetText(COOLDOWN_REMAINING.." "..SecondsToTime(cooldown))
		end
	else
		recipe = Skillet.unknownRecipe
		SkilletSkillName:SetText("unknown")
	end
--
-- Are special tools needed for this skill?
--
	local tools
	if Skillet.isCraft then
		tools = BuildColoredListString(GetCraftSpellFocus(skillIndex))
	else
		tools = BuildColoredListString(GetTradeSkillTools(skillIndex))
	end
	if tools then
		SkilletRequirementText:SetText(tools)
		SkilletRequirementText:Show()
		SkilletRequirementLabel:Show()
	else
		SkilletRequirementText:Hide()
		SkilletRequirementLabel:Hide()
	end
--
-- Get the icon
--
	if Skillet.isCraft then
		DA.DEBUG(1,"UpdateDetailsWindow: texture from GetCraftIcon("..tostring(GetCraftIcon)..")")
		texture = GetCraftIcon(skillIndex)
	elseif recipe.itemID ~= 0 then
		DA.DEBUG(1,"UpdateDetailsWindow: texture from GetItemIcon("..tostring(recipe.itemID)..")")
		texture = GetItemIcon(recipe.itemID)
	elseif Skillet.db.profile.enchant_scrolls and recipe.scrollID ~= 0 and recipe.scrollID ~= nil then --for ring enchants recipe.scrollID is nil.
		DA.DEBUG(1,"UpdateDetailsWindow: texture from GetItemIcon("..tostring(recipe.scrollID)..")")
		texture = GetItemIcon(recipe.scrollID)
	else
		DA.DEBUG(1,"UpdateDetailsWindow: texture from GetTradeSkillIcon("..tostring(GetTradeSkillIcon)..")")
		texture = GetTradeSkillIcon(skillIndex)
	end
	if texture then
		SkilletSkillIcon:SetNormalTexture(texture)
		SkilletSkillIcon:Show()
	else
		SkilletSkillIcon:Hide()
	end
--
-- Check for Auction House
--
	if self.auctionOpen and Auctionator and self.ATRPlugin and self.db.profile.plugins.ATR.enabled then
		SkilletAuctionatorButton:Show()
	else
		SkilletAuctionatorButton:Hide()
	end
--
-- How many of these items are produced at one time ..
--
	if recipe.numMade and recipe.numMade > 1 then
		SkilletSkillIconCount:SetText(recipe.numMade)
		SkilletSkillIconCount:Show()
	else
		SkilletSkillIconCount:SetText("")
		SkilletSkillIconCount:Hide()
	end
--
-- How many can we queue/create?
--
	SkilletItemCountInputBox:SetText("" .. self.numItemsToCraft);
	SkilletItemCountInputBox:HighlightText()
--
-- Reagents required ...
--
	SkilletReagentLabel:SetText(SPELL_REAGENTS)
	SkilletReagentLabel:Show();
	local width = SkilletReagentParent:GetWidth()
	local lastReagentButton = _G["SkilletReagent1"]
	for i=1, SKILLET_NUM_REAGENT_BUTTONS, 1 do
		local button = _G["SkilletReagent"..i]
		local   text = _G[button:GetName() .. "Text"]
		local   icon = _G[button:GetName() .. "Icon"]
		local  count = _G[button:GetName() .. "Count"]
		local needed = _G[button:GetName() .. "Needed"]
		local reagent = recipe.reagentData[i]
		if reagent then
			local reagentName
			if reagent.id then
				reagentName	= GetItemInfo("item:"..reagent.id) or reagent.id
			else
				reagentName = "unknown"
			end
			local num, craftable = self:GetInventory(self.currentPlayer, reagent.id)
			local bank = GetItemCount(reagent.id,true) - num
			local count_text
			count_text = string.format("[%d/%d/%d]", num, bank, craftable)
			if num < reagent.numNeeded then
				-- grey it out if we don't have it
				count:SetText(GRAY_FONT_COLOR_CODE .. count_text .. FONT_COLOR_CODE_CLOSE)
				text:SetText(GRAY_FONT_COLOR_CODE .. reagentName .. FONT_COLOR_CODE_CLOSE)
				if self:VendorSellsReagent(reagent.id) then
					needed:SetTextColor(0,1,0)
				else
					needed:SetTextColor(1,0,0)
				end
			else
--
-- Ungrey it
--
				count:SetText(count_text)
				text:SetText(reagentName)
				needed:SetTextColor(1,1,1)
			end
			texture = GetItemIcon(reagent.id)
			icon:SetNormalTexture(texture)
			needed:SetText(reagent.numNeeded.."x")
			button:SetWidth(width - 20)
			button:Show()
			lastReagentButton = button
		else
--
-- Out of necessary reagents, don't need to show the button,
-- or any of the text.
--
			button:Hide()
		end
	end
	if #skillStack > 0 then
		SkilletPreviousItemButton:Show()
	else
		SkilletPreviousItemButton:Hide()
	end
--
--	Do any plugins want to add extra info to the details window?
--
	local label, extra_text = Skillet:GetExtraText(skill, recipe)
	if extra_text then
		SkilletExtraDetailTextLeft:SetPoint("TOPLEFT",lastReagentButton,"BOTTOMLEFT",0,-10)
		SkilletExtraDetailTextLeft:SetText(GRAY_FONT_COLOR_CODE..label)
		SkilletExtraDetailTextLeft:Show()
		SkilletExtraDetailTextRight:SetPoint("TOPLEFT",lastReagentButton,"BOTTOMLEFT",50,-10)
		SkilletExtraDetailTextRight:SetText(extra_text)
		SkilletExtraDetailTextRight:Show()
	else
		SkilletExtraDetailTextRight:Hide()
		SkilletExtraDetailTextLeft:Hide()
	end
end

local num_queue_buttons = 0
local function get_queue_button(i)
	local button = _G["SkilletQueueButton"..i]
	if not button then
		button = CreateFrame("Button", "SkilletQueueButton"..i, SkilletQueueParent, "SkilletQueueItemButtonTemplate")
		button:SetParent(SkilletQueueParent)
		button:SetPoint("TOPLEFT", "SkilletQueueButton"..(i-1), "BOTTOMLEFT")
		button:SetFrameLevel(SkilletQueueParent:GetFrameLevel() + 1)
	end
	return button
end

function Skillet:QueueItemButton_OnClick(this, button)
	local queue = self.db.realm.queueData[self.currentPlayer]
	local index = this:GetID()
	if button == "LeftButton" then
		Skillet:QueueManagementToggle(true)
		local recipeID = queue[index].recipeID
		local recipe = self:GetRecipe(recipeID)
		local tradeID = recipe.tradeID
		local newSkillIndex = self.data.skillIndexLookup[self.currentPlayer][recipeID]
		--DA.DEBUG(0,"selecting new skill "..tradeID..":"..(newSkillIndex or "nil"))
		self:SetTradeSkill(self.currentPlayer, tradeID, newSkillIndex)
		--DA.DEBUG(0,"done selecting new skill")
	elseif button == "RightButton" then
		Skillet:SkilletQueueMenu_Show(this)
	end
end

--
-- Updates the window/scroll list displaying queue of items
-- that are waiting to be crafted.
-- Enchanting (isCraft) shows the window but not the processing buttons.
--
function Skillet:UpdateQueueWindow()
	local queue = self.db.realm.queueData[self.currentPlayer]
	if not queue then
		SkilletEmptyQueueButton:Disable()
		if self.isCraft then
			SkilletStartQueueButton:Hide()
		else
			SkilletStartQueueButton:Disable()
		end
		return
	end
	local numItems = #queue
	if numItems > 0 then
		SkilletEmptyQueueButton:Enable()
		if self.isCraft then
			SkilletStartQueueButton:Hide()
		else
			SkilletStartQueueButton:Enable()
		end
	else
		SkilletEmptyQueueButton:Disable()
		if self.isCraft then
			SkilletStartQueueButton:Hide()
		else
			SkilletStartQueueButton:Disable()
		end
	end
	if self.queueCasting then
		self:EnablePauseButton()	-- handles isCraft internally
	else
		self:DisablePauseButton()	-- handles isCraft internally
	end
	local button_count = SkilletQueueList:GetHeight() / SKILLET_TRADE_SKILL_HEIGHT
	button_count = math.floor(button_count)
--
-- Update the scroll frame
--
	FauxScrollFrame_Update(SkilletQueueList,				-- frame
						   numItems,                        -- num items
						   button_count,                    -- num to display
						   SKILLET_TRADE_SKILL_HEIGHT)      -- value step (item height)
--
-- Where in the list of skill to start counting.
--
	local itemOffset = FauxScrollFrame_GetOffset(SkilletQueueList)
	local width = SkilletQueueList:GetWidth()
--
-- Iterate through all the buttons that make up the scroll window
-- and fill then in with data or hide them, as necessary
--
	for i=1, button_count, 1 do
		local itemIndex = i + itemOffset
		num_queue_buttons = math.max(num_queue_buttons, i)
		local button       = get_queue_button(i)
		local countFrame   = _G[button:GetName() .. "Count"]
		local queueCount   = _G[button:GetName() .. "CountText"]
		local nameButton   = _G[button:GetName() .. "Name"]
		local queueName    = _G[button:GetName() .. "NameText"]
		local deleteButton = _G[button:GetName() .. "DeleteButton"]
		button:SetWidth(width)
--
-- Stick this on top of the button we use for displaying queue contents.
--
		deleteButton:SetFrameLevel(button:GetFrameLevel() + 1)
		local fixed_width = countFrame:GetWidth() + deleteButton:GetWidth()
		fixed_width = width - fixed_width - 10 -- 10 for the padding between items
		queueName:SetWidth(fixed_width);
		nameButton:SetWidth(fixed_width);
		if itemIndex <= numItems then
			deleteButton:SetID(itemIndex)
			nameButton:SetID(itemIndex)
			local queueCommand = queue[itemIndex]
			if queueCommand then
				queueName:SetText(tostring(queueCommand.tradeName or queueCommand.tradeID)..":"..tostring(queueCommand.recipeID))	-- In Classic, recipeID is recipeName
				queueCount:SetText(queueCommand.count)
			end
			nameButton:Show()
			queueName:Show()
			countFrame:Show()
			queueCount:Show()
			button:Show()
		else
			button:Hide()
			queueName:Hide()
			queueCount:Hide()
		end
	end
--
-- Hide any of the buttons that we created, but don't need right now
--
	for i = button_count+1, num_queue_buttons, 1 do
	   local button = get_queue_button(i)
	   button:Hide()
	end
end

function Skillet:ChangeItemCount(this, button, count)
	local val = SkilletItemCountInputBox:GetNumber()
	if button == "RightButton" then
		count = count * 10
	end
	if val == 1 and count > 1 then
		val = 0
	end
	val = val + count
	if val < 1 then
		val = 1
	end
	SkilletItemCountInputBox:SetText(val)
end

function Skillet:SkillButton_SetSelections(id1, id2)
	local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
	local sortedSkillList = self.data.sortedSkillList[skillListKey]
	if id1 > id2 then id1,id2 = id2,id1 end
	for i=1,sortedSkillList.count do
		if i>=id1 and i<=id2 then
			sortedSkillList[i].selected = true
		else
			sortedSkillList[i].selected = false
		end
	end
end

function Skillet:SkillButton_SetAllSelections(toggle)
	local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
	local sortedSkillList = self.data.sortedSkillList[skillListKey]
	for i=1,sortedSkillList.count do
		sortedSkillList[i].selected = toggle
	end
end

function Skillet:SkillButton_ClearSelections()
	self:SkillButton_SetAllSelections(false)
end

function Skillet:NameEditSave()
	if SkillButtonNameEdit:IsVisible() and SkillButtonNameEdit.originalButton then
		SkillButtonNameEdit.originalButton:SetText(SkillButtonNameEdit:GetText())
		self:RecipeGroupRenameEntry(SkillButtonNameEdit.skill, SkillButtonNameEdit:GetText())
	end
	SkillButtonNameEdit:ClearFocus()
end

function Skillet:SkillButton_OnMouseDown(button)
	self.dragStartXY = { GetCursorPosition() }
	self.selectedTextOffsetXY = { 0, 0 }
end

function Skillet:SkillButton_OnMouseUp(button)
	--DA.DEBUG(0, "up")
end

function Skillet:SkillButton_DragUpdate()
	if self.dragEngaged then
		local x,y = GetCursorPosition()
		self.selectedTextOffsetXY[1] = x - self.dragStartXY[1]
		self.selectedTextOffsetXY[2] = y - self.dragStartXY[2]
		self:UpdateTradeSkillWindow()
	end
end

function Skillet:SkillButton_OnDragStop(button)
	Skillet:SkillButton_OnReceiveDrag(Skillet.mouseOver)
	for i=1,num_recipe_buttons do
		local button, buttonDrag = get_recipe_button(i)
		buttonDrag:Hide()
	end
	self.dragEngaged = false
	self.fencePickEngaged = false
	self:UpdateTradeSkillWindow()
end

function Skillet:SkillButton_OnDragStart(button)
	local skill = button.skill
	if skill.selected and skill then
		if not self:RecipeGroupIsLocked() then
			for i=1,self.visibleSkillButtons do
				local button, buttonDrag = get_recipe_button(i)
				local buttonText = _G[button:GetName().."Name"]
				local buttonDragText = _G[buttonDrag:GetName().."Name"]
				buttonDrag.skill = button.skill
				local r,g,b = buttonText:GetTextColor()
				buttonDragText:SetText(buttonText:GetText())
				buttonDragText:SetTextColor(r,g,b,.4)
				if button.skill and button.skill.selected then
					buttonDrag:Show()
				else
					buttonDrag:Hide()
				end
			end
			self.dragEngaged = true
			self.fencePickEngaged = false
		end
	else
		self.skillMainSelection = button.rawIndex
		self:SetSelectedSkill(button:GetID())
		self.dragEngaged = false
		self.fencePickEngaged = true
		if skill then skill.selected = true end
	end
	self:UpdateTradeSkillWindow()
end

function Skillet:SkillButton_OnReceiveDrag(button)
	if not self:RecipeGroupIsLocked() then
		local skill = nil
		local destinationGroup = nil
		if button then
			skill = button.skill
			if skill.subGroup then
				destinationGroup = button.skill.subGroup
			else
				if skill.parent ~= nil then
					destinationGroup = skill.parent
				else
					destinationGroup = skill
				end
			end
		else
			destinationGroup = self:RecipeGroupFind(self.currentPlayer, self.currentTrade, self.currentGroupLabel)
		end
		if self.dragEngaged and (skill == nil or not skill.selected) then
			local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
			local sortedSkillList = self.data.sortedSkillList[skillListKey]
			for i=1,sortedSkillList.count do
				if sortedSkillList[i].selected then
					self:RecipeGroupMoveEntry(sortedSkillList[i], destinationGroup)
				end
			end
			self.dragEngaged = false
			self:SortAndFilterRecipes()
			self:UpdateTradeSkillWindow()
		end
	end
end

function Skillet:SkillButton_ListReagents()
	DA.DEBUG(0,"SkillButton_ListReagents()")
	local skill = Skillet.menuButton.skill
	if skill and skill.skillIndex then
		Skillet:ReagentsLinkOnClick(menuButton, skill.skillIndex, false)
	else
		DA.DEBUG(0,"SkillButton_ListReagents: skill= "..DA.DUMP1(skill))
		return
	end
end

function Skillet:SkillButton_LinkRecipe()
	DA.DEBUG(0,"SkillButton_LinkRecipe()")
	local skill = Skillet.menuButton.skill
	local spellLink
	if skill and skill.skillIndex then
		if Skillet.isCraft and GetCraftItemLink then
			spellLink = GetCraftItemLink(skill.skillIndex)
		elseif (not Skillet.isCraft) and GetTradeSkillRecipeLink then 
			spellLink = GetTradeSkillRecipeLink(skill.skillIndex)
		end
	else
		DA.DEBUG(0,"SkillButton_LinkRecipe: skill= "..DA.DUMP1(skill))
		return
	end
	DA.DEBUG(0,"SkillButton_LinkRecipe: recipeID= "..tostring(skill.recipeID)..", skillIndex= "..tostring(skill.skillIndex))
	if spellLink then
		if not ChatEdit_InsertLink(spellLink) then
			DA.DEBUG(0,"SkillButton_LinkRecipe: spellLink= "..DA.PLINK(spellLink))
		end
	end
end

--
-- Inspired by Kaliel's Tracker
--
StaticPopupDialogs["SKILLET_WowheadURL"] = {
    text = "Skillet - Wowhead URL",
    button2 = CLOSE,
    hasEditBox = 1,
    editBoxWidth = 300,
    EditBoxOnTextChanged = function(self)
        self:SetText(self.text)
        self:HighlightText()
    end,
    EditBoxOnEnterPressed = function(self)
        self:GetParent():Hide()
    end,
    EditBoxOnEscapePressed = function(self)
        self:GetParent():Hide()
    end,
    OnShow = function(self)
        local url = "https://www.wowhead.com/"
		if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
			url = url.."classic/"
		elseif WOW_PROJECT_ID == WOW_PROJECT_CATACLYSM_CLASSIC then
			url = url.."cata/"
		end
        local param = "item="..self.text.text_arg1
        self.text:SetText(self.text:GetText().."\n\n"..self.text.text_arg2)
        self.editBox.text = url..param
        self.editBox:SetText(self.editBox.text)
        self.editBox:SetFocus()
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1
}

--
-- Pop up a dialog with a Wowhead URL
--
function Skillet:SkillButton_WowheadURL()
	DA.DEBUG(0,"SkillButton_WowheadURL()")
	local skill = Skillet.menuButton.skill
	--DA.DEBUG(1,"SkillButton_WowheadURL: skill= "..DA.DUMP1(skill,1))
	if skill and skill.recipeID then
		--DA.DEBUG(1,"SkillButton_WowheadURL: recipeID= "..tostring(skill.recipeID)..", name= "..tostring(skill.name))
		local recipe = self:GetRecipe(skill.recipeID)
		--DA.DEBUG(2,"SkillButton_WowheadURL: recipe= "..DA.DUMP1(recipe,1))
		if recipe and recipe.itemID then
			--DA.DEBUG(2,"SkillButton_WowheadURL: itemID= "..tostring(recipe.itemID)..", name= "..tostring(recipe.name))
			StaticPopup_Show("SKILLET_WowheadURL", recipe.itemID, recipe.name)
		end
	end
end

function Skillet:SkillButton_CopySelected()
	DA.DEBUG(0,"SkillButton_CopySelected()")
	local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
	local sortedSkillList = self.data.sortedSkillList[skillListKey]
	if not self.skillListCopyBuffer then
		self.skillListCopyBuffer = {}
	end
	self.skillListCopyBuffer[self.currentTrade] = {}
	local d = 1
	for i=1,sortedSkillList.count do
		if sortedSkillList[i].selected and not (sortedSkillList[i].parentIndex and sortedSkillList[sortedSkillList[i].parentIndex].selected) then
			self.skillListCopyBuffer[self.currentTrade][d] = sortedSkillList[i]
			--DA.DEBUG(1,"copying "..(sortedSkillList[i].name or "nil"))
			d = d + 1
		end
	end
end

function Skillet:SkillButton_PasteSelected(button)
	DA.DEBUG(0,"SkillButton_PasteSelected("..tostring(button)..")")
	if not self:RecipeGroupIsLocked() then
		local parentGroup
		if button then
			parentGroup = button.skill.subGroup or button.skill.parent
		else
			parentGroup = self:RecipeGroupFind(self.currentPlayer, self.currentTrade, self.currentGroupLabel, self.currentGroup)
		end
		if self.skillListCopyBuffer and self.skillListCopyBuffer[self.currentTrade] then
			for d=1,#self.skillListCopyBuffer[self.currentTrade] do
				--DA.DEBUG(1,"pasting "..(self.skillListCopyBuffer[self.currentTrade][d].name or "nil").." to "..parentGroup.name)
				self:RecipeGroupPasteEntry(self.skillListCopyBuffer[self.currentTrade][d], parentGroup)
			end
		end
		self:SortAndFilterRecipes()
		self:UpdateTradeSkillWindow()
	end
end

function Skillet:SkillButton_DeleteSelected()
	DA.DEBUG(0,"SkillButton_DeleteSelected()")
	if not self:RecipeGroupIsLocked() then
		local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
		local sortedSkillList = self.data.sortedSkillList[skillListKey]
		for i=1,sortedSkillList.count do
			if sortedSkillList[i].selected and not (sortedSkillList[i].parent and sortedSkillList[i].parent.selected) then
				self:RecipeGroupDeleteEntry(sortedSkillList[i])
			end
		end
		self.selectedSkill = nil
		self:SortAndFilterRecipes()
		self:UpdateTradeSkillWindow()
	end
end

function Skillet:SkillButton_CutSelected()
	DA.DEBUG(0,"SkillButton_CutSelected()")
	Skillet:SkillButton_CopySelected()
	Skillet:SkillButton_DeleteSelected()
end

function Skillet:SkillButton_QueueSelected()
	DA.DEBUG(0,"SkillButton_QueueSelected()")
	local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
	local sortedSkillList = self.data.sortedSkillList[skillListKey]
	for i=1,sortedSkillList.count do
		if sortedSkillList[i].selected and not (sortedSkillList[i].parentIndex and sortedSkillList[sortedSkillList[i].parentIndex].selected) then
			self.selectedSkill = sortedSkillList[i].skillIndex
			self:QueueItems(1)
			DA.DEBUG(1,"queuing "..(sortedSkillList[i].name or "nil"))
		end
	end
end

function Skillet:SkillButton_NewGroup()
	DA.DEBUG(0,"SkillButton_NewGroup()")
	if not self:RecipeGroupIsLocked() then
		local player = self.currentPlayer
		local tradeID = self.currentTrade
		local label = self.currentGroupLabel
		local name, index = self:RecipeGroupNewName(player..":"..tradeID..":"..label, "New Group")
		local newGroup = self:RecipeGroupNew(player, tradeID, label, name)
		local parentGroup = self:RecipeGroupFind(player, tradeID, label, self.currentGroup)
		self:RecipeGroupAddSubGroup(parentGroup, newGroup, index)
		self:SortAndFilterRecipes()
		self:UpdateTradeSkillWindow()
	end
end

function Skillet:SkillButton_MakeGroup()
	DA.DEBUG(0,"SkillButton_MakeGroup()")
	if not self:RecipeGroupIsLocked() then
		local player = self.currentPlayer
		local tradeID = self.currentTrade
		local label = self.currentGroupLabel
		local name, index = self:RecipeGroupNewName(player..":"..tradeID..":"..label, "New Group")
		local newGroup = self:RecipeGroupNew(player, tradeID, label, name)
		local parentGroup = self:RecipeGroupFind(player, tradeID, label, self.currentGroup)
		local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
		local sortedSkillList = self.data.sortedSkillList[skillListKey]
		for i=1,sortedSkillList.count do
			if sortedSkillList[i].selected and not (sortedSkillList[i].parent and sortedSkillList[i].parent.selected) then
				self:RecipeGroupMoveEntry(sortedSkillList[i], newGroup)
			end
		end
		self:RecipeGroupAddSubGroup(parentGroup, newGroup, index)
		self:SortAndFilterRecipes()
		self:UpdateTradeSkillWindow()
	end
end

function Skillet:SkillButton_OnKeyDown(button, key)
	DA.DEBUG(3,"SkillButton_OnKeyDown("..tostring(button)..", "..tostring(key)..")")
	if key == "D" then
		self:SkillButton_SetAllSelections(false)
	elseif key == "A" then
		self:SkillButton_SetAllSelections(true)
	elseif key == "C" then
		self:SkillButton_CopySelected()
	elseif key == "X" then
		self:SkillButton_CutSelected()
	elseif key == "V" then
		self:SkillButton_PasteSelected(self.mouseOver)
	elseif key == "DELETE" or key == "BACKSPACE" then
		self:SkillButton_DeleteSelected()
	elseif key == "N" then
		self:SkillButton_NewGroup()
	elseif key == "G" then
		self:SkillButton_MakeGroup()
	else
		return
	end
	self:UpdateTradeSkillWindow()
end

function Skillet:SkillButton_NameEditEnable(button)
	DA.DEBUG(3,"SkillButton_NameEditEnable("..tostring(button)..")")
	if not self:RecipeGroupIsLocked() then
		SkillButtonNameEdit:SetText(button.skill.name)
		SkillButtonNameEdit:SetParent(button:GetParent())
		local buttonText = _G[button:GetName().."Name"]
		local numPoints = button:GetNumPoints()
		for p=1,numPoints do
			SkillButtonNameEdit:SetPoint(buttonText:GetPoint(p))
		end
		SkillButtonNameEdit.originalButton = buttonText
		SkillButtonNameEdit.skill = button.skill
		SkillButtonNameEdit:Show()
		buttonText:Hide()
		button:UnregisterEvent("MODIFIER_STATE_CHANGED")
	end
end

--
-- When one of the skill buttons in the left scroll pane is clicked
--
function Skillet:SkillButton_OnClick(button)
	local mouse = GetMouseButtonClicked()
	--DA.DEBUG(3,"SkillButton_OnClick("..tostring(button).."), "..tostring(mouse))
	if (mouse == "LeftButton") then
		Skillet:QueueManagementToggle(true)
		if not button.skill.mainGroup then
			if IsShiftKeyDown() and self.skillMainSelection then
				self:SkillButton_ClearSelections()
				self:SkillButton_SetSelections(self.skillMainSelection, button.rawIndex)
			else
				if not IsControlKeyDown() then
					if not button.skill.subGroup then
						if not button.skill.selected then
							self:SkillButton_ClearSelections()
						end
						self:SetSelectedSkill(button:GetID())
						button.skill.selected = true
					else
						if button.skill.selected and not self:RecipeGroupIsLocked() then
							self:SkillButton_NameEditEnable(button)
							return			-- avoid window update
						else
							self:SkillButton_ClearSelections()
							self.selectedSkill = nil
							button.skill.selected = true
						end
					end
					self.skillMainSelection = button.rawIndex
				else
					button.skill.selected = not button.skill.selected
				end
			end
		end
		self:UpdateTradeSkillWindow()
	elseif (mouse == "RightButton") then
		self:SkilletSkillMenu_Show(button)
	end
end

--
-- When one of the skill buttons in the left scroll pane is clicked
--
function Skillet:SkillExpandButton_OnClick(button)
	local mouse = GetMouseButtonClicked()
	--DA.DEBUG(3,"SkillExpandButton_OnClick("..tostring(button).."), "..tostring(mouse))
	if (mouse=="LeftButton") then
		if button.group then
			button.group.expanded = not button.group.expanded
			self:SortAndFilterRecipes()
			self:UpdateTradeSkillWindow()
		end
	end
end

--
-- this function assures that a recipe that is indirectly selected (via reagent clicks, for example)
-- will be visible in the skill list (ie, not scrolled off the top/bottom)
--
function Skillet:ScrollToSkillIndex(skillIndex)
	--DA.DEBUG(0,"ScrollToSkillIndex("..tostring(skillIndex)..")")
	if skillIndex == nil then
		return
	end
--
-- scroll the skill list to make sure the new skill is revealed
--
	if SkilletSkillList:IsVisible() then
		local skillListKey = self.currentPlayer..":"..self.currentTrade..":"..self.currentGroupLabel
		local sortedSkillList = self.data.sortedSkillList[skillListKey]
		if sortedSkillList then
			local sortedIndex
			for i=1,#sortedSkillList,1 do
				if sortedSkillList[i].skillIndex == skillIndex then
					sortedIndex = i
					break
				end
			end
			sortedIndex = sortedIndex or 1
			local scrollbar = _G["SkilletSkillListScrollBar"]
			local button_count = SkilletSkillList:GetHeight() / SKILLET_TRADE_SKILL_HEIGHT
			button_count = math.floor(button_count)
			local skillOffset = FauxScrollFrame_GetOffset(SkilletSkillList)
			--DA.DEBUG(0, (skillOffset or "nil").." > "..(sortedIndex or "nil"))
			if skillOffset > sortedIndex then
				sortedIndex = sortedIndex - 1
				FauxScrollFrame_SetOffset(SkilletSkillList, sortedIndex)
				scrollbar:SetValue(sortedIndex * SKILLET_TRADE_SKILL_HEIGHT)
			elseif (skillOffset + button_count) < sortedIndex then
				sortedIndex = sortedIndex - button_count
				FauxScrollFrame_SetOffset(SkilletSkillList, sortedIndex)
				scrollbar:SetValue(sortedIndex * SKILLET_TRADE_SKILL_HEIGHT)
			end
		end
	end
	self:UpdateTradeSkillWindow()
end

--
-- Go to the previous recipe in the history list.
--
function Skillet:GoToPreviousSkill()
	local entry = table.remove(skillStack)
	if entry then
		self:SetTradeSkill(entry.player,entry.tradeID,entry.skillIndex)
	end
end

function Skillet:PushSkill(player, tradeID, skillIndex)
	local entry = { ["player"] = player, ["tradeID"] = tradeID, ["skillIndex"] = skillIndex }
	table.insert(skillStack, entry)
end

function Skillet:getLvlUpChance()
--
-- icy: 03.03.2012:
-- according to pope (http://www.wowhead.com/spell=83949#comments)
-- % to level up with this receipt is calculated by: (greySkill - yourSkill) / (greySkill - yellowSkill)
--
	local currentLevel, maxLevel = 0, 0
	local skillRanks = self:GetSkillRanks(self.currentPlayer, self.currentTrade)
	if skillRanks then
		currentLevel, maxLevel = skillRanks.rank, skillRanks.maxRank
	end
	local gray = SkilletRankFrame.gray
	local yellow = SkilletRankFrame.yellow
	if not gray then gray = SkilletRankFrame.subRanks.green:GetValue() end
	if not yellow then yellow = SkilletRankFrame.subRanks.orange:GetValue() end
	--DA.DEBUG(0,"currentLevel= "..tostring(currentLevel)..", gray= "..tostring(gray)..", yellow= "..tostring(yellow))
	if (currentLevel > gray) then
		return 0
	elseif (gray - yellow) == 0 then
		return 100
	else
		local percent = ((gray - currentLevel) / ( gray - yellow )) * 100
		if percent > 100 then
			percent = 100
		end
		return percent
	end
end

--
-- Called when then mouse enters the rank status bar
--
function Skillet:RankFrame_OnEnter(button)
	GameTooltip:SetOwner(button, "ANCHOR_BOTTOMLEFT")
	local r,g,b = SkilletSkillName:GetTextColor()
	GameTooltip:AddLine(SkilletSkillName:GetText(),r,g,b)
	local itemID = SkilletRankFrame.itemID
	local spellID = SkilletRankFrame.spellID
	local gray = SkilletRankFrame.gray
	local green = SkilletRankFrame.green
	local yellow = SkilletRankFrame.yellow
	local orange = SkilletRankFrame.orange
	--DA.DEBUG(0,"RankFrame_OnEnter: "..tostring(itemID).."= "..tostring(orange).."/"..tostring(yellow).."/"..tostring(green).."/"..tostring(gray)..", spellID= "..tostring(spellID))
	if not gray then gray = SkilletRankFrame.subRanks.green:GetValue() end
	if not green then green = SkilletRankFrame.subRanks.yellow:GetValue() end
	if not yellow then yellow = SkilletRankFrame.subRanks.orange:GetValue() end
	if not orange then orange = SkilletRankFrame.subRanks.red:GetValue() end
--
-- Lets add the chance to level up that skill with that receipt
--
	local chance = Skillet:getLvlUpChance()
	chance = math.floor(chance*10)/10		-- one decimal is enough
	GameTooltip:AddLine(COLORORANGE..orange.."|r/"..COLORYELLOW..yellow.."|r/"..COLORGREEN..green.."|r/"..COLORGRAY..gray.."|r/ Chance:"..chance.."|r%")
	GameTooltip:Show()
end

--
-- Called when then mouse leaves the rank status bar
--
function Skillet:RankFrame_OnLeave(button)
	GameTooltip:Hide()
end

--
-- Called when then mouse enters a reagent button
--
function Skillet:ReagentButtonOnEnter(button, skillIndex, reagentIndex)
	--DA.DEBUG(3,"ReagentButtonOnEnter("..tostring(button)..", "..tostring(skillIndex)..", "..tostring(reagentIndex)..")")
	GameTooltip:SetOwner(button, "ANCHOR_TOPLEFT")
	if Skillet.db.profile.scale_tooltip then
		local uiScale = 1.0;
		if ( GetCVar("useUiScale") == "1" ) then
			uiScale = tonumber(GetCVar("uiscale"))
		end
		if Skillet.db.profile.ttscale then
			uiScale = uiScale * Skillet.db.profile.ttscale
		end
		GameTooltip:SetScale(uiScale)
	end
	local skill = self:GetSkill(self.currentPlayer, self.currentTrade, skillIndex)
	if skill then
		local recipe = self:GetRecipe(skill.id)
		if recipe then
			local reagent = recipe.reagentData[reagentIndex]
			if reagent then
				Skillet:SetReagentToolTip(reagent.id, reagent.numNeeded, skill.numCraftable or 0)
				if self.db.profile.link_craftable_reagents then
					if self.db.global.itemRecipeSource[reagent.id] then
						local icon = _G[button:GetName() .. "Icon"]
						gearTexture:SetParent(icon)
						gearTexture:ClearAllPoints()
						gearTexture:SetPoint("TOPLEFT", icon)
						gearTexture:Show()
					end
				end
			else
				GameTooltip:AddLine("unknown", 1,0,0)
			end
		end
	end
	GameTooltip:Show()
	CursorUpdate(button)
end

--
-- called then the mouse leaves a reagent button
--
function Skillet:ReagentButtonOnLeave(button, skillIndex, reagentIndex)
	gearTexture:Hide()
	if Skillet.db.profile.scale_tooltip then
		GameTooltip:SetScale(Skillet.gttScale)
	end
	GameTooltip:Hide()
	ResetCursor()
end

function Skillet:ReagentButtonSkillSelect(player, id)
	DA.DEBUG(0,"ReagentButtonSkillSelect("..tostring(player)..", "..tostring(id)..")")
	if player == Skillet.currentPlayer then -- Blizzard's 5.4 update prevents us from changing away from the current player
		local skillIndexLookup = Skillet.data.skillIndexLookup[player]
		gearTexture:Hide()
		GameTooltip:Hide()
		local newRecipe = Skillet:GetRecipe(id)
		--DA.DEBUG(0,"newRecipe= "..DA.DUMP1(newRecipe))
		if newRecipe then
			Skillet:PushSkill(Skillet.currentPlayer, Skillet.currentTrade, Skillet.selectedSkill)
			Skillet:SetTradeSkill(player, newRecipe.tradeID, skillIndexLookup[id])
		end
	end
end

--
-- Called when the reagent button is shift-clicked
--
function Skillet:ReagentButtonShiftClick(button, skillIndex, reagentIndex)
	DA.DEBUG(0,"ReagentButtonShiftClick("..tostring(button)..", "..tostring(skillIndex)..", "..tostring(reagentIndex)..")")
	local link = Skillet:GetTradeSkillReagentItemLink(skillIndex, reagentIndex)
	if not ChatEdit_InsertLink(link) then
		local name = GetItemInfo(link)
		if SkilletSearchBox:HasFocus() then
			SkilletSearchBox:SetText(name)
		end
	end
end

--
-- Called when the reagent button is clicked
--
function Skillet:ReagentButtonOnClick(button, skillIndex, reagentIndex)
	--DA.DEBUG(0,"ReagentButtonOnClick("..tostring(button)..", "..tostring(skillIndex)..", "..tostring(reagentIndex)..")")
	if not self.db.profile.link_craftable_reagents then
		return
	end
	local recipe = self:GetRecipeDataByTradeIndex(self.currentTrade, skillIndex)
	local reagent = recipe.reagentData[reagentIndex]
	local newRecipeTable = self.db.global.itemRecipeSource[reagent.id]
	local skillIndexLookup = self.data.skillIndexLookup
	local player = self.currentPlayer
	local myRecipeID
	local newRecipeID
	local newPlayer
	if newRecipeTable then
		local newRecipe
		local recipeCount = 0
		self.data.recipeMenuTable = {}
		if not self.recipeMenu then
			self.recipeMenu = CreateFrame("Frame", "SkilletRecipeMenu", _G["UIParent"], "UIDropDownMenuTemplate")
		end
--
-- popup with selection if there is more than 1 potential recipe source for the reagent (small prismatic shards, for example)
--
		for p in pairs(skillIndexLookup) do
			for id in pairs(newRecipeTable) do
				if skillIndexLookup[p][id] then
					recipeCount = recipeCount + 1
					newRecipe = self:GetRecipe(id)
					local skillID = skillIndexLookup[p][id]
					local newSkill = self:GetSkill(p, newRecipe.tradeID, skillID)
					self.data.recipeMenuTable[recipeCount] = {}
					self.data.recipeMenuTable[recipeCount].text = p .." : " .. newRecipe.name or "Unknown"
					self.data.recipeMenuTable[recipeCount].arg1 = p
					self.data.recipeMenuTable[recipeCount].arg2 = id
					self.data.recipeMenuTable[recipeCount].func = function(arg1,arg2) Skillet.ReagentButtonSkillSelect(arg1,arg2) end
					if p == self.currentPlayer then
						myRecipeID = id
						self.data.recipeMenuTable[recipeCount].textr = 1.0
						self.data.recipeMenuTable[recipeCount].textg = 1.0
						self.data.recipeMenuTable[recipeCount].textb = 1.0
					else
						self.data.recipeMenuTable[recipeCount].textR = .7
						self.data.recipeMenuTable[recipeCount].textG = .7
						self.data.recipeMenuTable[recipeCount].textB = .7
					end
					newPlayer = p
					newRecipeID = id
				end
			end
		end
		--DA.DEBUG(0,"recipeMenuTable= "..DA.DUMP1(self.data.recipeMenuTable))
		if myRecipeID then
			newPlayer = player
			newRecipeID = myRecipeID
		end
		if recipeCount == 1 or myRecipeID then
			gearTexture:Hide()
			GameTooltip:Hide()
			button:Hide()					-- hide the button so that if a new button is shown in this slot, a new "OnEnter" event will fire
			newRecipe = self:GetRecipe(newRecipeID)
			self:PushSkill(self.currentPlayer, self.currentTrade, self.selectedSkill)
			self:SetTradeSkill(newPlayer, newRecipe.tradeID, skillIndexLookup[newPlayer][newRecipeID])
		else
			local x, y = GetCursorPosition()
			local uiScale = UIParent:GetEffectiveScale()
			EasySkillet(self.data.recipeMenuTable, self.recipeMenu, _G["UIParent"], x/uiScale,y/uiScale, "MENU", 5)
		end
	end
end

--
-- Recurse through the reagents expanding craftables into their non-craftable source.
--
local function recurseReagents(orecipe, oi, recipe, level)
	DA.DEBUG(0,"recurseReagents("..tostring(orecipe.name)..", "..tostring(oi)..", "..tostring(recipe.name)..", "..tostring(level)..")")
	--DA.DEBUG(1,"recurseReagents: orecipe= "..DA.DUMP1(orecipe))
	--DA.DEBUG(1,"recurseReagents: recipe= "..DA.DUMP1(recipe))
--
-- Check for wild, out of control recursion
--
	local reagentLinkList = {}
	if level > 10 then
		Skillet.wildRecursion = true
		return {}
	end
	for i = 1, #recipe.reagentData, 1 do
		if level == 1 then oi = i end
		local oreagent = orecipe.reagentData[oi]
		local reagent = recipe.reagentData[i]
		--DA.DEBUG(1,"recurseReagents: reagent= "..DA.DUMP1(reagent))
		if reagent and reagent.id then
			local reagentName, reagentLink, recipeSource, reagentRecipe, reagentIndex
			reagentName, reagentLink = GetItemInfo(reagent.id)
			recipeSource = Skillet.db.global.itemRecipeSource[reagent.id]
			--DA.DEBUG(1,"recurseReagents: recipeSource= "..DA.DUMP1(recipeSource))
			if recipeSource then
				local rsc = 1
				for rs in pairs(recipeSource) do
					reagentRecipe = Skillet:GetRecipe(rs)
					--DA.DEBUG(2,"recurseReagents: rsc= "..tostring(rsc)..", rs= "..tostring(rs)..", reagentRecipe= "..DA.DUMP1(reagentRecipe))
					reagentIndex = Skillet.data.skillIndexLookup[Skillet.currentPlayer][rs]
					--DA.DEBUG(2,"recurseReagents: rsc= "..tostring(rsc)..", rs= "..tostring(rs)..", reagentIndex= "..tostring(reagentIndex))
					rsc = rsc + 1
				end
				--DA.DEBUG(1,"recurseReagents: rsc= "..tostring(rsc))
				--DA.DEBUG(1,"recurseReagents: reagentLink= "..DA.PLINK(reagentLink))
				if reagentLink then
					if not reagentLinkList[reagent.id] then
						reagentLinkList[reagent.id] = {}
					end
					reagentLinkList[reagent.id].level = level
					reagentLinkList[reagent.id].reagentIndex = i
					reagentLinkList[reagent.id].reagentID = reagent.id
					reagentLinkList[reagent.id].reagentName = reagentName
					reagentLinkList[reagent.id].reagentLink = reagentLink
					reagentLinkList[reagent.id].numNeeded = reagent.numNeeded
					reagentLinkList[reagent.id].recipeID = recipe.itemID
					reagentLinkList[reagent.id].recipeName = recipe.name

					reagentLinkList[reagent.id].orecipeIndex = oi
					reagentLinkList[reagent.id].oreagentID = oreagent.id
					reagentLinkList[reagent.id].oreagentName = oreagent.name
					if reagentRecipe then
						reagentLinkList[reagent.id].tradeID = reagentRecipe.tradeID
						if reagentIndex then
							reagentLinkList[reagent.id].crafted = recurseReagents(orecipe, oi, reagentRecipe, level+1)
						end
					end
				end -- reagentLink
			else
				if not reagentLinkList[reagent.id] then
					reagentLinkList[reagent.id] = {}
				end
				reagentLinkList[reagent.id].level = level
				reagentLinkList[reagent.id].reagentIndex = i
				reagentLinkList[reagent.id].reagentID = reagent.id
				reagentLinkList[reagent.id].reagentName = reagentName
				reagentLinkList[reagent.id].reagentLink = reagentLink
				reagentLinkList[reagent.id].numNeeded = reagent.numNeeded
				reagentLinkList[reagent.id].recipeID = recipe.itemID
				reagentLinkList[reagent.id].recipeName = recipe.name
			end -- recipeSource
		end -- reagent and reagent.id
	end -- for
	return reagentLinkList
end

local function combineCrafted(level, reagentName, numNeeded, reagent)
	DA.DEBUG(0,"combineCrafted("..tostring(level)..", "..tostring(reagentName)..", "..tostring(numNeeded)..", reagent)")
--	DA.DEBUG(1,"combineCrafted: reagent= "..DA.DUMP(reagent)
	if reagent then 
		local combinedList = {}
		for r,m in pairs(reagent) do
			if m.crafted then
				local list = combineCrafted(level+1, m.reagentName, m.numNeeded, m.crafted)
				--DA.DEBUG(1,"combineCrafted: adding list= "..DA.DUMP1(list))
				for k,v in pairs(list) do 
					v.numNeeded = numNeeded * v.numNeeded
					combinedList[k] = v 
				end
			else
				if not combinedList[r] then
					combinedList[r] = {}
				end
				--DA.DEBUG(1,"combineCrafted: adding reagent= "..tostring(r))
				combinedList[r].reagentID = m.reagentID
				combinedList[r].reagentLink = m.reagentLink
				combinedList[r].numNeeded = numNeeded * m.numNeeded
			end
		end
		DA.DEBUG(1,"combineCrafted: combinedList= "..DA.DUMP1(combinedList))
		return combinedList
	else
		DA.DEBUG(0,"combineCrafted: nil reagent") 
		return {[0] = {reagentID = 0, reagentLink = nil, numNeeded = 1}}
	end
end

--
-- Called when the icon button is alt-clicked
--   recurse is set with ctrl-alt-click
--
function Skillet:ReagentsLinkOnClick(button, skillIndex, recurse)
	DA.DEBUG(0,"ReagentsLinkOnClick("..tostring(button)..", "..tostring(skillIndex)..", "..tostring(recurse)..")")
	if not self.db.profile.link_craftable_reagents then
		return
	end
	local skillIndexLookup = self.data.skillIndexLookup[Skillet.currentPlayer]
	local recipe = self:GetRecipeDataByTradeIndex(self.currentTrade, skillIndex)
	--DA.DEBUG(1,"recipe= "..DA.DUMP1(recipe))
--
-- Link the basic reagents by recursing through any craftable reagents
--
	if recurse then
--
-- Step 1: Build a multi-level table of reagents
--
		self.reagentLinkList = recurseReagents(recipe, 0, recipe, 1)
		if self.wildRecursion then 
			DA.WARN("recurseReagents() gone wild")
			return
		end
		DA.DEBUG(1,"reagentLinkList= "..DA.DUMP(self.reagentLinkList))
--
-- Step 2: Combine the levels
--
		self.reagentBasicList = {}
		for r,m in pairs(self.reagentLinkList) do
			if m.crafted then
				local combinedList = combineCrafted(1, m.reagentName, m.numNeeded, m.crafted)
				for s,n in pairs(combinedList) do
					DA.DEBUG(1,"Step 2: adding s= "..tostring(s))
					if not self.reagentBasicList[s] then
						self.reagentBasicList[s] = {}
					end
					self.reagentBasicList[s].reagentID = n.reagentID
					self.reagentBasicList[s].reagentName = n.reagentName
					self.reagentBasicList[s].reagentLink = n.reagentLink
					DA.DEBUG(1,"Step 2: s.numNeeded= "..tostring(self.reagentBasicList[s].numNeeded))
					DA.DEBUG(1,"Step 2: n.numNeeded= "..tostring(n.numNeeded))
					self.reagentBasicList[s].numNeeded = (self.reagentBasicList[s].numNeeded or 0) + n.numNeeded
				end
			else
				DA.DEBUG(1,"Step 2: adding r= "..tostring(r))
				if not self.reagentBasicList[r] then
					self.reagentBasicList[r] = {}
				end
				self.reagentBasicList[r].reagentID = m.reagentID
				self.reagentBasicList[r].reagentName = m.reagentName
				self.reagentBasicList[r].reagentLink = m.reagentLink
				self.reagentBasicList[r].numNeeded =  m.numNeeded
			end
		end
		DA.DEBUG(1,"reagentBasicList= "..DA.DUMP(self.reagentBasicList))
--
-- Step 3: Combine the duplicates
--
		self.reagentCombinedList = {}
		for r,m in pairs(self.reagentBasicList) do
			if m.reagentID then
				if not self.reagentCombinedList[m.reagentID] then
					self.reagentCombinedList[m.reagentID] = {}
				end
				self.reagentCombinedList[m.reagentID].reagentLink = m.reagentLink
				self.reagentCombinedList[m.reagentID].numNeeded = (self.reagentCombinedList[m.reagentID].numNeeded or 0) + m.numNeeded
			end
		end
		DA.DEBUG(1,"reagentCombinedList= "..DA.DUMP(self.reagentCombinedList))

--
-- Step 4: Output the results
--
		local sep = " "
		for r,m in pairs(self.reagentCombinedList) do
			ChatEdit_InsertLink(sep .. m.numNeeded .. "x" .. m.reagentLink)
			sep = ", "
		end
	else
--
-- Link the actual reagents adding "*" to craftable reagents
--
		local sep = " "
		for i = 1, #recipe.reagentData, 1 do
			local reagent = recipe.reagentData[i]
			--DA.DEBUG(1,"reagent= "..DA.DUMP1(reagent))
			if reagent and reagent.id then
				local reagentName, reagentLink, recipeSource, reagentIndex
				reagentName, reagentLink = GetItemInfo(reagent.id)
				recipeSource = Skillet.db.global.itemRecipeSource[reagent.id]
				--DA.DEBUG(1,"recipeSource= "..DA.DUMP1(recipeSource))
				if recipeSource then
					for recipeSourceID in pairs(recipeSource) do
						reagentRecipe = Skillet:GetRecipe(recipeSourceID)
						reagentIndex = skillIndexLookup[recipeSourceID]
						--DA.DEBUG(2,"recipeSourceID= "..tostring(recipeSourceID)..", reagentIndex= "..tostring(reagentIndex))
					end
				end
				--DA.DEBUG(1,"reagentLink= "..DA.DUMP1(reagentLink))
				if reagentLink and reagentIndex then
					ChatEdit_InsertLink(sep .. reagent.numNeeded .. "x" .. reagentLink.."*")
				elseif reagentLink then
					ChatEdit_InsertLink(sep .. reagent.numNeeded .. "x" .. reagentLink)
				end
				sep = ", "
			end
		end
	end
end

function Skillet:SkilletFrameForceClose()
	DA.DEBUG(0,"SkilletFrameForceClose()")
	if Skillet.isCraft then
		CloseCraft()
	else
		CloseTradeSkill()
	end
	Skillet.processingSpell = nil
	Skillet.changingTrade = nil
	return self:HideAllWindows()
end

--
-- Called when the trade skill window is shown
--
local old_CloseSpecialWindows
function Skillet:Tradeskill_OnShow()
	--DA.DEBUG(0,"Tradeskill_OnShow()")
--
-- Need to hook this so that hitting [ESC] will close the Skillet window(s).
--
	if not old_CloseSpecialWindows then
		old_CloseSpecialWindows = CloseSpecialWindows
		CloseSpecialWindows = function()
			local found = old_CloseSpecialWindows()
			return self:SkilletFrameForceClose() or found
		end
	end
end

--
-- Called when the trade skill window is hidden
--
function Skillet:Tradeskill_OnHide()
end

function Skillet:InventoryFilterButton_OnClick(button)
	local slot = button.slot or ""
	local option = "filterInventory-"..slot
	self:ToggleTradeSkillOption(option)
	self:InventoryFilterButton_OnEnter(button)
	self:InventoryFilterButton_OnShow(button)
	self:SortAndFilterRecipes()
	self:UpdateTradeSkillWindow()
end

function Skillet:InventoryFilterButton_OnEnter(button)
	local slot = button.slot or ""
	local option = "filterInventory-"..slot
	local value = self:GetTradeSkillOption(option)
	GameTooltip:SetOwner(button, "ANCHOR_TOPLEFT")
	if value then
		GameTooltip:SetText(slot.." on")
	else
		GameTooltip:SetText(slot.." off")
	end
	GameTooltip:Show()
end

function Skillet:InventoryFilterButton_OnLeave(button)
	GameTooltip:Hide()
end

function Skillet:InventoryFilterButton_OnShow(button)
	local slot = button.slot or ""
	local option = "filterInventory-"..slot
	local value = self:GetTradeSkillOption(option)
	if value then
		button:SetChecked(true)
	else
		button:SetChecked(false)
	end
end

function Skillet:InventoryFilterButtons_Show()
	SkilletInventoryFilterBag:Show()
	SkilletInventoryFilterCraft:Show()
	SkilletInventoryFilterVendor:Show()
	SkilletInventoryFilterAlts:Show()
	SkilletInventoryFilterOwned:Show()
end

function Skillet:InventoryFilterButtons_Hide()
	SkilletInventoryFilterBag:Hide()
	SkilletInventoryFilterCraft:Hide()
	SkilletInventoryFilterVendor:Hide()
	SkilletInventoryFilterAlts:Hide()
	SkilletInventoryFilterOwned:Hide()
end

local function SkillMenuList(SkilletSkillMenu, rootDescription)
	if Skillet.isTest then 
		local title = "skillMenuList"
		if Skillet.isLocked then
			title = title .. "(locked)"
		end
		rootDescription:CreateTitle(title);
	end
	if isClassic then
		rootDescription:CreateButton(L["List Reagents"], function() Skillet:SkillButton_ListReagents() end);
	else
		rootDescription:CreateButton(L["Link Recipe"], function() Skillet:SkillButton_LinkRecipe() end);
	end
	rootDescription:CreateButton(L["Wowhead URL"], function() Skillet:SkillButton_WowheadURL() end);
	if not Skillet.isLocked then
		local submenu1 = rootDescription:CreateButton(L["Ignore"]);
			submenu1:CreateButton(L["Add Recipe to Ignored List"], function()
				local index = Skillet.menuButton:GetID()
				local skillDB = Skillet.db.realm.skillDB[Skillet.currentPlayer][Skillet.currentTrade][index]
				local recipeID = string.sub(skillDB,2)
				Skillet.db.realm.userIgnoredMats[Skillet.currentPlayer][recipeID] = Skillet.currentTrade
				if Skillet.ignoreList and Skillet.ignoreList:IsVisible() then
					Skillet:UpdateIgnoreListWindow()
				end
			end);
			submenu1:CreateButton(L["Remove Recipe from Ignored List"], function()
				local index = Skillet.menuButton:GetID()
				local skillDB = Skillet.db.realm.skillDB[Skillet.currentPlayer][Skillet.currentTrade][index]
				local recipeID = string.sub(skillDB,2)
				Skillet.db.realm.userIgnoredMats[Skillet.currentPlayer][recipeID] = nil
				if Skillet.ignoreList and Skillet.ignoreList:IsVisible() then
					Skillet:UpdateIgnoreListWindow()
				end
			end);
		local submenu2 = rootDescription:CreateButton(L["New Group"]);
			submenu2:CreateButton(L["Empty Group"], function() Skillet:SkillButton_NewGroup() end);
			submenu2:CreateButton(L["From Selection"], function() Skillet:SkillButton_MakeGroup() end);
	end
	rootDescription:CreateDivider(); -- CreateSpacer, CreateDivider
	rootDescription:CreateButton(L["Copy"], function() Skillet:SkillButton_CopySelected() end);
	if not Skillet.isLocked then
		rootDescription:CreateButton(L["Cut"], function() Skillet:SkillButton_CutSelected() end);
		rootDescription:CreateButton(L["Paste"], function() Skillet:SkillButton_PasteSelected(Skillet.menuButton) end);
	end
end;

local function HeaderMenuList(SkilletSkillMenu, rootDescription)
	if Skillet.isTest then 
		local title = "headerMenuList"
		if Skillet.isLocked then
			title = title .. "(locked)"
		end
		rootDescription:CreateTitle(title);
	end
	if not Skillet.isLocked then
		rootDescription:CreateButton(L["Rename Group"], function() Skillet:SkillButton_NameEditEnable(Skillet.menuButton) end);
		local submenu1 = rootDescription:CreateButton(L["New Group"]);
			submenu1:CreateButton(L["Empty Group"], function() Skillet:SkillButton_NewGroup() end);
			submenu1:CreateButton(L["From Selection"], function() Skillet:SkillButton_MakeGroup() end);
		rootDescription:CreateDivider(); -- CreateSpacer, CreateDivider
	end
	local submenu2 = rootDescription:CreateButton(L["Selection"]);
		submenu2:CreateButton(L["Select All"], function() Skillet:SkillButton_SetAllSelections(true) Skillet:UpdateTradeSkillWindow() end);
		submenu2:CreateButton(L["Select None"], function() Skillet:SkillButton_SetAllSelections(false) Skillet:UpdateTradeSkillWindow() end);
	rootDescription:CreateDivider(); -- CreateSpacer, CreateDivider
	rootDescription:CreateButton(L["Copy"], function() Skillet:SkillButton_CopySelected() end);
	if not Skillet.isLocked then
		rootDescription:CreateButton(L["Cut"], function() Skillet:SkillButton_CutSelected() end);
		rootDescription:CreateButton(L["Paste"], function() Skillet:SkillButton_PasteSelected(Skillet.menuButton) end);
	end
end;

local function HeaderMenuListMainGroup(SkilletSkillMenu, rootDescription)
	if Skillet.isTest then 
		local title = "headerMenuListMainGroup"
		if Skillet.isLocked then
			title = title .. "(locked)"
		end
		rootDescription:CreateTitle(title);
	end
	if not Skillet.isLocked then
		local submenu1 = rootDescription:CreateButton(L["New Group"]);
			submenu1:CreateButton(L["Empty Group"], function() Skillet:SkillButton_NewGroup() end);
			submenu1:CreateButton(L["From Selection"], function() Skillet:SkillButton_MakeGroup() end);
		rootDescription:CreateDivider(); -- CreateSpacer, CreateDivider
		local submenu2 = rootDescription:CreateButton(L["Selection"]);
			submenu2:CreateButton(L["Select All"], function() Skillet:SkillButton_SetAllSelections(true) Skillet:UpdateTradeSkillWindow() end);
			submenu2:CreateButton(L["Select None"], function() Skillet:SkillButton_SetAllSelections(false) Skillet:UpdateTradeSkillWindow() end);
		rootDescription:CreateDivider(); -- CreateSpacer, CreateDivider
	end
	rootDescription:CreateButton(L["Copy"], function() Skillet:SkillButton_CopySelected() end);
	if not Skillet.isLocked then
		rootDescription:CreateButton(L["Cut"], function() Skillet:SkillButton_CutSelected() end);
		rootDescription:CreateButton(L["Paste"], function() Skillet:SkillButton_PasteSelected(Skillet.menuButton) end);
	end
end;

--
-- Called when the skill operators drop down is displayed
--
function Skillet:SkilletSkillMenu_Show(button)
	--DA.DEBUG(0,"SkilletSkillMenu_Show("..tostring(button)..")")
	local x, y = GetCursorPosition()
	local uiScale = UIParent:GetEffectiveScale()
	local locked = self:RecipeGroupIsLocked()
	self.isLocked = locked
	if not SkilletSkillMenu then
		SkilletSkillMenu = CreateFrame("Frame", "SkilletSkillMenu", _G["UIParent"], "UIDropDownMenuTemplate")
		SkilletSkillMenu:SetScale(uiScale)
	end
	self.menuButton = button
	if button.skill.subGroup then
		if button.skill.mainGroup then
			MenuUtil.CreateContextMenu(SkilletSkillMenu, HeaderMenuListMainGroup);
		else
			MenuUtil.CreateContextMenu(SkilletSkillMenu, HeaderMenuList);
		end
	else
		GameTooltip:Hide() --hide tooltip, because it may be over the menu, sometimes it still fails
		MenuUtil.CreateContextMenu(SkilletSkillMenu, SkillMenuList);
	end
end

function Skillet:ReAnchorButtons(newFrame)
	--DA.DEBUG(0,"ReAnchorButtons("..tostring(newFrame)..")")
	SkilletQueueAllButton:SetPoint("TOPLEFT",newFrame,"BOTTOMLEFT",0,-2)
	SkilletEnchantButton:SetPoint("TOPLEFT",newFrame,"BOTTOMLEFT",0,-2)
	SkilletQueueButton:SetPoint("TOPRIGHT",newFrame,"BOTTOMRIGHT",0,-2)
end

function Skillet:ShowReagentDetails()
	DA.DEBUG(0,"ShowReagentDetails()")
	SkilletQueueManagementParent:Hide();
	SkilletReagentParent:Show()
	SkilletReagentParent:SetHeight(reagent_height)
	Skillet:ReAnchorButtons(SkilletReagentParent)
end

--
-- The SkilletQueue and StandaloneQueue functions start here
--
--
-- Process button
--
function Skillet:StartQueue_OnClick(button, mouse)
	DA.DEBUG(0,"StartQueue_OnClick("..tostring(button).."), "..tostring(mouse))
	local mouse = GetMouseButtonClicked()
	DA.DEBUG(0,"StartQueue_OnClick("..tostring(button).."), "..tostring(mouse))
	if self.queueCasting then
		self.queueCasting = false
	else
		self:ProcessQueue(mouse == "RightButton" or IsAltKeyDown())
	end
	self:UpdateQueueWindow()
end

--
-- Pause button
--   before executing secure action "/stopcasting" macro
--
function Skillet:PauseQueue_PreClick(button)
	local mouse = GetMouseButtonClicked()
	DA.DEBUG(0,"PauseQueue_PreClick("..tostring(button).."), "..tostring(mouse))
	if self.queueCasting then
		self.queueCasting = false
		self.pauseQueue = true
	end
	self:UpdateQueueWindow()
end

--
-- Pause button
--   after executing secure action "/stopcasting" macro
--
function Skillet:PauseQueue_PostClick(button)
	local mouse = GetMouseButtonClicked()
	DA.DEBUG(0,"PauseQueue_PostClick("..tostring(button).."), "..tostring(mouse))
end

function Skillet:SkilletQueueMenu_Show(button)
	--DA.DEBUG(0,"SkilletQueueMenu_Show("..tostring(button)..")")
	local x, y = GetCursorPosition()
	local uiScale = UIParent:GetEffectiveScale()
	if not SkilletQueueMenu then
		SkilletQueueMenu = CreateFrame("Frame", "SkilletQueueMenu", _G["UIParent"], "UIDropDownMenuTemplate")
		--DA.DEBUG(0,"SkilletQueueMenu_Show: uiScale= "..tostring(uiScale))
		SkilletQueueMenu:SetScale(uiScale)
	end
	self.queueMenuButton = button
	MenuUtil.CreateButtonContextMenu(SkilletQueueMenu,
    {L["Move to Top"], function() Skillet:QueueMoveToTop(Skillet.queueMenuButton:GetID()) end},
    {L["Move Up"], function() Skillet:QueueMoveUp(Skillet.queueMenuButton:GetID()) end},
    {L["Move Down"], function() Skillet:QueueMoveDown(Skillet.queueMenuButton:GetID()) end},
    {L["Move to Bottom"], function() Skillet:QueueMoveToBottom(Skillet.queueMenuButton:GetID()) end}
	);
end

function Skillet:QueueManagementToggle(showDetails)
	--DA.DEBUG(0,"QueueManagementToggle("..tostring(showDetails)..")")
	if SkilletQueueManagementParent:IsVisible() or showDetails then
		Skillet:ShowReagentDetails()
	else
		SkilletQueueManagementParent:Show();
		SkilletQueueManagementParent:SetHeight(100)
		SkilletReagentParent:Hide()
		Skillet:ReAnchorButtons(SkilletQueueManagementParent)
	end
end

Skillet.fullView = true
function Skillet:ShowFullView()
	Skillet.fullView = true
	SkilletQueueParentBase:SetParent(SkilletFrame)
	SkilletQueueParentBase:ClearAllPoints()
	SkilletQueueParentBase:SetPoint("TOPLEFT",SkilletCreateAllButton,"BOTTOMLEFT",0,-3)
	SkilletQueueParentBase:SetPoint("BOTTOMRIGHT",SkilletFrame,"BOTTOMRIGHT",-10,32)
	SkilletStandaloneQueue:Hide()
	SkilletQueueOnlyButton:SetText(">")
	Skillet:UpdateQueueWindow()
end

function Skillet:ShowQueueView()
	Skillet.fullView = false
	SkilletQueueParentBase:SetParent(SkilletStandaloneQueue)
	SkilletQueueParentBase:ClearAllPoints()
	SkilletQueueParentBase:SetPoint("TOPLEFT",SkilletStandaloneQueue,"TOPLEFT",5,-32)
	SkilletQueueParentBase:SetPoint("BOTTOMRIGHT",SkilletStandaloneQueue,"BOTTOMRIGHT",-5,30)
	SkilletStandaloneQueue:Show()
	SkilletQueueOnlyButton:SetText("<")
	Skillet:UpdateQueueWindow()
end

function Skillet:QueueOnlyViewToggle()
	Skillet.fullView = not Skillet.fullView
	if Skillet.fullView then
		Skillet:ShowFullView()
		SkilletFrame:Show()
	else
		Skillet:ShowQueueView()
		SkilletFrame:Hide()
	end
end

function Skillet:StandaloneQueueClose()
	Skillet:ShowFullView()
	Skillet:SkilletFrameForceClose()
end

function Skillet:HideStandaloneQueue()
	if not self.skilletStandaloneQueue or not self.skilletStandaloneQueue:IsVisible() then
		return
	end
	SkilletStandaloneQueue:Hide()
end

--
-- Creates and sets up the Standalone Queue Frame
--
function Skillet:CreateStandaloneQueueFrame()
	local frame = SkilletStandaloneQueue
	if not frame then
		return nil
	end
	if not frame.SetBackdrop then
		Mixin(frame, BackdropTemplateMixin)
	end
	if TSM_API then
		frame:SetFrameStrata("HIGH")
	end
	frame:SetBackdrop(FrameBackdrop);
	frame:SetBackdropColor(0.1, 0.1, 0.1)
--
-- A title bar stolen from the Ace2 Waterfall window.
--
	local r,g,b = 0, 0.7, 0; -- dark green
	local titlebar = frame:CreateTexture(nil,"BACKGROUND")
	local titlebar2 = frame:CreateTexture(nil,"BACKGROUND")
	titlebar:SetPoint("TOPLEFT",frame,"TOPLEFT",3,-4)
	titlebar:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-3,-4)
	titlebar:SetColorTexture(r,g,b,1)
	titlebar:SetHeight(13)
	titlebar2:SetPoint("TOPLEFT",titlebar,"BOTTOMLEFT",0,0)
	titlebar2:SetPoint("TOPRIGHT",titlebar,"BOTTOMRIGHT",0,0)
	titlebar2:SetColorTexture(r,g,b,1)
	titlebar2:SetHeight(13)
	if SetGradientAlpha then
		titlebar:SetGradientAlpha("VERTICAL",r*0.6,g*0.6,b*0.6,1,r,g,b,1)
		titlebar2:SetGradientAlpha("VERTICAL",r*0.9,g*0.9,b*0.9,1,r*0.6,g*0.6,b*0.6,1)
	else
		titlebar:SetGradient("VERTICAL", CreateColor(r*0.6,g*0.6,b*0.6,1), CreateColor(r,g,b,1))
		titlebar2:SetGradient("VERTICAL", CreateColor(r*0.9,g*0.9,b*0.9,1), CreateColor(r*0.6,g*0.6,b*0.6,1))
	end
	local title = CreateFrame("Frame",nil,frame)
	title:SetPoint("TOPLEFT",titlebar,"TOPLEFT",0,0)
	title:SetPoint("BOTTOMRIGHT",titlebar2,"BOTTOMRIGHT",0,0)
	local titletext = title:CreateFontString("SkilletStandaloneQueueTitleText", "OVERLAY", "GameFontNormalLarge")
	titletext:SetPoint("TOPLEFT",title,"TOPLEFT",0,0)
	titletext:SetPoint("TOPRIGHT",title,"TOPRIGHT",0,0)
	titletext:SetHeight(26)
	titletext:SetShadowColor(0,0,0)
	titletext:SetShadowOffset(1,-1)
	titletext:SetTextColor(1,1,1)
	titletext:SetText("Skillet: " .. L["Queue"])

--
-- Ace Window manager library, allows the window position (and size)
-- to be automatically saved
--
	local standaloneQueueLocation = {
		prefix = "standaloneQueueLocation_"
	}
	local windowManager = LibStub("LibWindow-1.1")
	windowManager.RegisterConfig(frame, self.db.profile, standaloneQueueLocation)
	windowManager.RestorePosition(frame)  -- restores scale also
	windowManager.MakeDraggable(frame)
--
-- lets play the resize me game!
--
	Skillet:EnableResize(frame, 385, 170, Skillet.UpdateStandaloneQueueWindow)
--
-- so hitting [ESC] will close the window
--
	tinsert(UISpecialFrames, frame:GetName())
	if self.db.profile.clamp_to_screen then
		frame:SetClampedToScreen(self.db.profile.clamp_to_screen)
	end
	return frame
end

function Skillet:UpdateStandaloneQueueWindow()
	--DA.DEBUG(0,"UpdateStandaloneQueueWindow()")
	if not self.skilletStandaloneQueue or not self.skilletStandaloneQueue:IsVisible() then
		return
	end
	SkilletStandaloneQueue:SetAlpha(self.db.profile.transparency)
	SkilletStandaloneQueue:SetScale(self.db.profile.scale)
end

--
-- Adds a button to the tradeskill window. The button will be
-- reparented and placed appropriately in the window.
--
-- The frame representing the main tradeskill window will be
-- returned in case you need to pop up a frame attached to it.
--
function Skillet:AddButtonToTradeskillWindow(button)
	if not SkilletFrame.added_buttons then
		SkilletFrame.added_buttons = {}
	end
	button:Hide()
--
-- See if this button has already been added ...
--
	for i=1, #SkilletFrame.added_buttons, 1 do
		if SkilletFrame.added_buttons[i] == button then
			return	-- ... yup
		end
	end
	table.insert(SkilletFrame.added_buttons, button)	-- ... nope
	if SkilletPluginButton then
		SkilletPluginButton:Show()
	end
	return SkilletFrame
end

function Skillet:ScrollFrame_OnLoad(frame)
	UIPanelScrollFrame_OnLoad(frame)
end
