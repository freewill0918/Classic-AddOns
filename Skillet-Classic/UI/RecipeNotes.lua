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

local GetItemInfo = C_Item and C_Item.GetItemInfo or GetItemInfo

SKILLET_NOTES_ITEM_DISPLAYED = 7
SKILLET_NOTES_ITEM_HEIGHT	 = SKILLET_TRADE_SKILL_HEIGHT * 3

local L = LibStub("AceLocale-3.0"):GetLocale("Skillet")
local NO_NOTE = GRAY_FONT_COLOR_CODE .. L["click here to add a note"] .. FONT_COLOR_CODE_CLOSE

local editbox;
local ControlBackdrop  = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 3, right = 3, top = 3, bottom = 3 }
}

-- Called when the list of skills is scrolled
function Skillet:NotesList_OnScroll()
	Skillet:UpdateNotesWindow()
end

-- Shows the recipe notes editor for the current window
function Skillet:ShowRecipeNotes()
	local recipe = self:GetRecipeDataByTradeIndex(self.currentTrade, self.selectedSkill)
	if not recipe then
		return
	end
	local frame = SkilletRecipeNotesFrame
	if frame then
		self.recipeNotesFrame = SkilletRecipeNotesFrame
	else
		return
	end
	if frame:IsVisible() then
		-- make it a toggle? why not
		frame:Hide()
		return
	end
	self:UpdateNotesWindow()
	frame:Show()
end

local function get_edit_box()
	local editbox = CreateFrame("EditBox", nil, nil)
	if not editbox.SetBackdrop then
		Mixin(editbox, BackdropTemplateMixin)
	end
	editbox:SetTextInsets(5,5,3,3)
	editbox:SetMaxLetters(256)
	editbox:SetAutoFocus(true)
	editbox:SetMultiLine(false)
	editbox:SetFontObject(ChatFontNormal)
	if TSM_API then
		editbox:SetFrameStrata("HIGH")
	end
	editbox:SetBackdrop(ControlBackdrop)
	editbox:SetBackdropColor(0,0,0,1)
	editbox:SetScript("OnEnterPressed", function(self)
		self:Hide()
		local b = self:GetParent()
		local l = b:GetAttribute("notes_key")
		local n = _G[b:GetName() .. "Notes"]
		local skillet = self.obj
		skillet:SetItemNote(l, self:GetText())
		n:Show();
		skillet:UpdateNotesWindow()
	end);
	editbox:SetScript("OnEscapePressed", function(self)
		self:Hide()
		local b = self:GetParent()
		local n = _G[b:GetName() .. "Notes"]
		n:Show()
	end);
	return editbox
end

function Skillet:RecipeNote_OnClick(button)
	-- update the window so we know that we are starting from a known good location
	self:UpdateNotesWindow()
	local key = button:GetAttribute("notes_key")
	local notesObject = _G[button:GetName() .. "Notes"]
	local notes = notesObject:GetText();
	if not editbox then
		editbox = get_edit_box()
	end
	editbox:SetParent(button)
	editbox:SetAllPoints(notesObject);
	editbox:SetFrameStrata("HIGH")
	if notes ~= NO_NOTE then
		editbox:SetText(notes);
		editbox:HighlightText()
	else
		editbox:SetText("");
	end
	editbox.obj = self;
	notesObject:Hide();
	editbox:Show()
	editbox:SetFocus()
end

--
-- Updates the notes window with the current data.
-- This should display the notes for the recipe item itself and for
-- any reagents that are needed
--
function Skillet:UpdateNotesWindow()
	local recipe, recipeID, itemID = self:GetRecipeDataByTradeIndex(self.currentTrade, self.selectedSkill)
	if not recipe then
		return
	end
	--DA.DEBUG(0,"UpdateNotesWindow: recipeID= "..tostring(recipeID)..", itemID= "..tostring(itemID))
	--DA.DEBUG(0,"UpdateNotesWindow: recipe= "..DA.DUMP1(recipe))
	if editbox then
		editbox:Hide()
	end
	SkilletRecipeNotesFrameLabel:SetText(L["Notes"]);
	local numItems = 1 + #recipe.reagentData

--
-- Update the scroll frame
--
	FauxScrollFrame_Update(SkilletNotesList,				-- frame
						   numItems,						-- num items
						   SKILLET_NOTES_ITEM_DISPLAYED,	-- num to display
						   SKILLET_NOTES_ITEM_HEIGHT)		-- value step (item height)
--
-- Where in the list of skill to start counting.
--
	local offset = FauxScrollFrame_GetOffset(SkilletNotesList);
--
-- now do all that nasty work to fill in the contents of the frame
--
	for i=1, SKILLET_NOTES_ITEM_DISPLAYED, 1 do
		local index = i + offset
		local button = _G["SkilletNotesButton"..i]
		if index <= numItems then
			local text	 = _G[button:GetName() .. "Text"];
			local icon	 = _G[button:GetName() .. "Icon"];
			local notes	 = _G[button:GetName() .. "Notes"];
--
-- set the width based on whether or not the scroll bar is displayed
--
			if ( SkilletNotesList:IsShown() ) then
				button:SetWidth(170)
			else
				button:SetWidth(190)
			end
			local key
			if index == 1 then
--
-- notes for the recipe itself
--
				local name, _, texture = GetSpellInfo(recipeID)
				--DA.DEBUG(0,"UpdateNotesWindow: name= "..tostring(name)..", texture= "..tostring(texture))
				text:SetText(name)
				if itemID then
					texture = select(10,GetItemInfo(itemID))
					key = "item:"..itemID
				else
					key = "name:"..recipeID
				end
				--DA.DEBUG(0,"UpdateNotesWindow: key= "..tostring(key)..", texture= "..tostring(texture))
				if texture then
					icon:SetNormalTexture(texture)
				end
			else
--
-- notes for a reagent
--
				local name, link, _,_,_,_,_,_,_,texture = GetItemInfo(recipe.reagentData[index-1].id)
				text:SetText(name)
				icon:SetNormalTexture(texture)
				key = "reagent:"..recipe.reagentData[index-1].id
			end
			button:SetAttribute("notes_key", key)
			local notes_text = self:GetItemNote(key)
			if notes_text then
				notes:SetText(notes_text)
			else
				notes:SetText(NO_NOTE)
			end
			text:Show()
			icon:Show()
			notes:Show()
			button:Show()
		else
			button:Hide()
		end
	end
end

--
-- Hide the Skillet notes window, it it was open
--
function Skillet:HideNotesWindow()
	local closed
	if self.recipeNotesFrame and self.recipeNotesFrame:IsVisible() then
		HideUIPanel(self.recipeNotesFrame);
		closed = true
	end
	return closed
end
