  --get the addon namespace
  local addon, ns = ...
  --get the config values
  local cfg = ns.cfg
  local dragFrameList = ns.dragFrameList

  --MoP Classic 5.5.x: IsAddOnLoaded moved to C_AddOns
  local IsAddOnLoaded = C_AddOns and C_AddOns.IsAddOnLoaded or IsAddOnLoaded

  -- v:SetVertexColor(.35, .35, .35) GREY
  -- v:SetVertexColor(.05, .05, .05) DARKEST

  ---------------------------------------
  -- ACTIONS
  ---------------------------------------

  -- REMOVING UGLY PARTS OF UI

	local event_frame = CreateFrame('Frame')
	local errormessage_blocks = {
	  'Способность пока недоступна',
	  'Выполняется другое действие',
	  'Невозможно делать это на ходу',
	  'Предмет пока недоступен',
	  'Недостаточно',
	  'Некого атаковать',
	  'Заклинание пока недоступно',
	  'У вас нет цели',
	  'Вы пока не можете этого сделать',

	  'Ability is not ready yet',
 	  'Another action is in progress',
	  'Can\'t attack while mounted',
	  'Can\'t do that while moving',
	  'Item is not ready yet',
	  'Not enough',
	  'Nothing to attack',
	  'Spell is not ready yet',
	  'You have no target',
	  'You can\'t do that yet',
	}
	local enable
	local onevent
	local uierrorsframe_addmessage
	local old_uierrosframe_addmessage
	function enable ()
  		old_uierrosframe_addmessage = UIErrorsFrame.AddMessage
  		UIErrorsFrame.AddMessage = uierrorsframe_addmessage
	end

	function uierrorsframe_addmessage (frame, text, red, green, blue, id)
  		for i,v in ipairs(errormessage_blocks) do
    			if text and text:match(v) then
      				return
    			end
  		end
  		old_uierrosframe_addmessage(frame, text, red, green, blue, id)
	end

	function onevent (frame, event, ...)
  		if event == 'PLAYER_LOGIN' then
    			enable()
  		end
	end
	event_frame:SetScript('OnEvent', onevent)
	event_frame:RegisterEvent('PLAYER_LOGIN')


  -- COLORING FRAMES
	local CF=CreateFrame("Frame")
	CF:RegisterEvent("PLAYER_ENTERING_WORLD")
	CF:RegisterEvent("GROUP_ROSTER_UPDATE")

	-- TargetFrame_CheckClassification (global) was removed in MoP Classic 5.5.x.
	-- The frame fields (borderTexture/nameBackground/manabar) still exist, so keep the skin body
	-- and re-trigger it via the TargetFrameMixin hook, falling back to target/focus change events.
	local function lortiCheckClassification(self, forceNormalTexture)
		if not self or not self.unit then return end
		 local classification = UnitClassification(self.unit);
		if ( classification == "minus" ) then
			self.borderTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame-Minus");
			self.borderTexture:SetVertexColor(.05, .05, .05)
			self.nameBackground:Hide();
			self.manabar.pauseUpdates = true;
			self.manabar:Hide();
			self.manabar.TextString:Hide();
			self.manabar.LeftText:Hide();
			self.manabar.RightText:Hide();
			forceNormalTexture = true;
		elseif ( classification == "worldboss" or classification == "elite" ) then
			self.borderTexture:SetTexture("Interface\\AddOns\\Lorti-UI-Classic\\textures\\target\\elite")
			self.borderTexture:SetVertexColor(1, 1, 1)
		elseif ( classification == "rareelite" ) then
			self.borderTexture:SetTexture("Interface\\AddOns\\Lorti-UI-Classic\\textures\\target\\rare-elite")
			self.borderTexture:SetVertexColor(1, 1, 1)
		elseif ( classification == "rare" ) then
			self.borderTexture:SetTexture("Interface\\AddOns\\Lorti-UI-Classic\\textures\\target\\rare")
			self.borderTexture:SetVertexColor(1, 1, 1)
		else
			self.borderTexture:SetTexture("Interface\\TargetingFrame\\UI-TargetingFrame")
			self.borderTexture:SetVertexColor(.05, .05, .05)
		end
	end

	if TargetFrameMixin and TargetFrameMixin.CheckClassification then
		hooksecurefunc(TargetFrameMixin, "CheckClassification", lortiCheckClassification)
	elseif type(TargetFrame_CheckClassification) == "function" then
		hooksecurefunc("TargetFrame_CheckClassification", lortiCheckClassification)
	else
		local ccf = CreateFrame("Frame")
		ccf:RegisterEvent("PLAYER_TARGET_CHANGED")
		ccf:RegisterEvent("PLAYER_FOCUS_CHANGED")
		ccf:SetScript("OnEvent", function()
			lortiCheckClassification(TargetFrame)
			if FocusFrame then lortiCheckClassification(FocusFrame) end
		end)
	end

	function ColorRaid()
		for g = 1, NUM_RAID_GROUPS do
			local group = _G["CompactRaidGroup"..g.."BorderFrame"]
			if group then
				for _, region in pairs({group:GetRegions()}) do
					if region:IsObjectType("Texture") then
						region:SetVertexColor(.05, .05, .05)
					end
				end
			end
			for m = 1, 5 do
				local frame = _G["CompactRaidGroup"..g.."Member"..m]
				if frame then
					groupcolored = true
					for _, region in pairs({frame:GetRegions()}) do
						local rname = region.GetName and region:GetName()
						if rname and rname:find("Border") then
							region:SetVertexColor(.05, .05, .05)
						end
					end
				end
				local frame = _G["CompactRaidFrame"..m]
				if frame then
					singlecolored = true
					for _, region in pairs({frame:GetRegions()}) do
						local rname = region.GetName and region:GetName()
						if rname and rname:find("Border") then
							region:SetVertexColor(.05, .05, .05)
						end
					end
				end
			end
		end
		if CompactRaidFrameContainerBorderFrame then
			for _, region in pairs({CompactRaidFrameContainerBorderFrame:GetRegions()}) do
				if region:IsObjectType("Texture") then
					region:SetVertexColor(.05, .05, .05)
				end
			end
		end
	end

	CF:SetScript("OnEvent", function(self, event)
		-- CastingBarFrame was renamed to PlayerCastingBarFrame in MoP Classic 5.5.x
		local castingBar = PlayerCastingBarFrame or CastingBarFrame
		ColorRaid()
		CF:SetScript("OnUpdate", function()
			if CompactRaidGroup1 and not groupcolored == true then
				ColorRaid()
			end
			if CompactRaidFrame1 and not singlecolored == true then
				ColorRaid()
			end
		end)
		if event == "GROUP_ROSTER_UPDATE" then return end
		if not (IsAddOnLoaded("Shadowed Unit Frames") or IsAddOnLoaded("PitBull Unit Frames 4.0") or IsAddOnLoaded("X-Perl UnitFrames")) then
                	for i,v in pairs({
				PlayerFrameTexture,
				PlayerFrameAlternateManaBarBorder,
				PlayerFrameAlternateManaBarLeftBorder,
				PlayerFrameAlternateManaBarRightBorder,
				PlayerFrameAlternatePowerBarBorder,
				PlayerFrameAlternatePowerBarLeftBorder,
				PlayerFrameAlternatePowerBarRightBorder,
  				PetFrameTexture,
				PartyMemberFrame1Texture,
				PartyMemberFrame2Texture,
				PartyMemberFrame3Texture,
				PartyMemberFrame4Texture,
				PartyMemberFrame1PetFrameTexture,
				PartyMemberFrame2PetFrameTexture,
				PartyMemberFrame3PetFrameTexture,
				PartyMemberFrame4PetFrameTexture,
   				TargetFrameToTTextureFrameTexture,
				castingBar and castingBar.Border,
				TargetFrameSpellBar.Border,
        MirrorTimer1Border,
        MirrorTimer2Border,
        MirrorTimer3Border,

			}) do
                 		v:SetVertexColor(.05, .05, .05)
			end


			for _, region in pairs({CompactRaidFrameManager:GetRegions()}) do
				if region:IsObjectType("Texture") then
					region:SetVertexColor(.05, .05, .05)
				end
			end
			for _, region in pairs({CompactRaidFrameManagerContainerResizeFrame:GetRegions()}) do
				if region:GetName():find("Border") then
					region:SetVertexColor(.05, .05, .05)
				end
			end
			CompactRaidFrameManagerToggleButton:SetNormalTexture("Interface\\AddOns\\Lorti-UI-Classic\\textures\\raid\\RaidPanel-Toggle")

			hooksecurefunc("GameTooltip_ShowCompareItem", function(self, anchorFrame)
				if self then
					local shoppingTooltip1, shoppingTooltip2 = unpack(self.shoppingTooltips)
					shoppingTooltip1:SetBackdropBorderColor(.05, .05, .05)
					shoppingTooltip2:SetBackdropBorderColor(.05, .05, .05)
				end
			end)


			GameTooltip:SetBackdropBorderColor(.05, .05, .05)
			GameTooltip.SetBackdropBorderColor = function() end

			for i,v in pairs({
				PlayerPVPIcon,
				TargetFrameTextureFramePVPIcon,
			}) do
				v:SetAlpha(0.35)
			end
			for i=1,4 do
				local pvp = _G["PartyMemberFrame"..i.."PVPIcon"]
				if pvp then pvp:SetAlpha(0) end
				local notpresent = _G["PartyMemberFrame"..i.."NotPresentIcon"]
				if notpresent then notpresent:Hide(); notpresent.Show = function() end end
			end
			if PlayerFrameGroupIndicator then PlayerFrameGroupIndicator:SetAlpha(0) end
			if PlayerHitIndicator then PlayerHitIndicator:SetText(nil); PlayerHitIndicator.SetText = function() end end
			if PetHitIndicator then PetHitIndicator:SetText(nil); PetHitIndicator.SetText = function() end end

		else
			if castingBar and castingBar.Border then castingBar.Border:SetVertexColor(.05,.05,.05) end
		end
	end)

 -- COLORING THE MAIN BAR
-- ReputationWatchBar was replaced by StatusTrackingBarManager in MoP Classic 5.5.x; guard so nil-index won't error
local repBar = ReputationWatchBar and ReputationWatchBar.StatusBar
for i,v in pairs({
      SlidingActionBarTexture0,
      SlidingActionBarTexture1,
      MainMenuBarTexture0,
      MainMenuBarTexture1,
      MainMenuBarTexture2,
      MainMenuBarTexture3,
      MainMenuMaxLevelBar0,
      MainMenuMaxLevelBar1,
      MainMenuMaxLevelBar2,
      MainMenuMaxLevelBar3,
	  MainMenuXPBarTexture0,
      MainMenuXPBarTexture1,
	  MainMenuXPBarTexture2,
	  MainMenuXPBarTexture3,
	  MainMenuXPBarTexture4,
	  repBar and repBar.WatchBarTexture0,
      repBar and repBar.WatchBarTexture1,
      repBar and repBar.WatchBarTexture2,
      repBar and repBar.WatchBarTexture3,
	  repBar and repBar.XPBarTexture0,
	  repBar and repBar.XPBarTexture1,
	  repBar and repBar.XPBarTexture2,
	  repBar and repBar.XPBarTexture3,


}) do

   v:SetVertexColor(.2, .2, .2)

end

if IsAddOnLoaded("BattleForAzerothUI") then
    for i,v in pairs({
        ActionBarArtSmallTexture,
        MicroMenuArtTexture,
    }) do
        v:SetVertexColor(.2, .2, .2)
    end
end

--RECOLOR CLOCK AND STOPWATCH
local function OnEvent(self, event, addon)
    if addon == "Blizzard_TimeManager" then
        TimeManagerClockButton:GetRegions():SetVertexColor(.05, .05, .05)
		StopwatchFrame:GetRegions():SetVertexColor(.35, .35, .35)
		StopwatchTabFrame:GetRegions():SetVertexColor(.35, .35, .35)

        self:UnregisterEvent(event)
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", OnEvent)

 -- RECOLOR GRYPHONS
for i,v in pairs({
      MainMenuBarLeftEndCap,
      MainMenuBarRightEndCap,
      StanceBarLeft,
      StanceBarMiddle,
      StanceBarRight,

}) do
   v:SetVertexColor(.35, .35, .35)
end
 -- RECOLOR MINIMAP
for i,v in pairs({
	MinimapBorder,
	MinimapBorderTop,
	MiniMapMailBorder,
	MiniMapTrackingBorder
}) do
   v:SetVertexColor(.05, .05, .05)
   end

 for i,v in pairs({
--LOOT FRAME
      LootFrameBg,
	  LootFrameRightBorder,
      LootFrameLeftBorder,
      LootFrameTopBorder,
      LootFrameBottomBorder,
	  LootFrameTopRightCorner,
      LootFrameTopLeftCorner,
      LootFrameBotRightCorner,
      LootFrameBotLeftCorner,
	  LootFrameInsetInsetTopRightCorner,
	  LootFrameInsetInsetTopLeftCorner,
	  LootFrameInsetInsetBotRightCorner,
	  LootFrameInsetInsetBotLeftCorner,
      LootFrameInsetInsetRightBorder,
      LootFrameInsetInsetLeftBorder,
      LootFrameInsetInsetTopBorder,
      LootFrameInsetInsetBottomBorder,
	  LootFramePortraitFrame,
--EACH BAG
	  ContainerFrame1BackgroundTop,
	  ContainerFrame1BackgroundMiddle1,
	  ContainerFrame1BackgroundBottom,

	  ContainerFrame2BackgroundTop,
	  ContainerFrame2BackgroundMiddle1,
	  ContainerFrame2BackgroundBottom,

	  ContainerFrame3BackgroundTop,
	  ContainerFrame3BackgroundMiddle1,
	  ContainerFrame3BackgroundBottom,

	  ContainerFrame4BackgroundTop,
	  ContainerFrame4BackgroundMiddle1,
	  ContainerFrame4BackgroundBottom,

	  ContainerFrame5BackgroundTop,
	  ContainerFrame5BackgroundMiddle1,
	  ContainerFrame5BackgroundBottom,
	
	  ContainerFrame6BackgroundTop,
	  ContainerFrame6BackgroundMiddle1,
	  ContainerFrame6BackgroundBottom,
	  
	  ContainerFrame7BackgroundTop,
	  ContainerFrame7BackgroundMiddle1,
	  ContainerFrame7BackgroundBottom,
	  
	  ContainerFrame8BackgroundTop,
	  ContainerFrame8BackgroundMiddle1,
	  ContainerFrame8BackgroundBottom,
	  
	  ContainerFrame9BackgroundTop,
	  ContainerFrame9BackgroundMiddle1,
	  ContainerFrame9BackgroundBottom,
	  
	  ContainerFrame10BackgroundTop,
	  ContainerFrame10BackgroundMiddle1,
	  ContainerFrame10BackgroundBottom,
	  
	  ContainerFrame11BackgroundTop,
	  ContainerFrame11BackgroundMiddle1,
	  ContainerFrame11BackgroundBottom,

--Frames that's not colored for some reason
	  MerchantFrameTopBorder,
	  MerchantFrameBtnCornerRight,
	  MerchantFrameBtnCornerLeft,
	  MerchantFrameBottomRightBorder,
	  MerchantFrameBottomLeftBorder,
	  MerchantFrameButtonBottomBorder,
	  MerchantFrameBg,


}) do
   v:SetVertexColor(.35, .35, .35)
end

-- Many of these windows were renamed/removed in MoP Classic 5.5.x; regions() safely returns nothing if the frame is gone
local function regions(frame) if frame then return frame:GetRegions() end end

--BANK
local a, b, c, d, _, e = regions(BankFrame)
for _, v in pairs({a, b, c, d, e

})do
   v:SetVertexColor(.35, .35, .35)

end

--Darker color stuff
for i,v in pairs({
      LootFrameInsetBg,
      LootFrameTitleBg,
	  MerchantFrameTitleBg,

}) do
   v:SetVertexColor(.05, .05, .05)
end

--PAPERDOLL/Characterframe
local a, b, c, d, _, e = regions(PaperDollFrame)
for _, v in pairs({a, b, c, d, e

})do
   v:SetVertexColor(.35, .35, .35)

end

--Spellbook
local _, a, b, c, d = regions(SpellBookFrame)
for _, v in pairs({a, b, c, d

}) do
    v:SetVertexColor(.35, .35, .35)
end

-- Skilltab
local a, b, c, d = regions(SkillFrame)
for _, v in pairs({a, b, c ,d

}) do
     v:SetVertexColor(.35, .35, .35)
end
for _, v in pairs({ReputationDetailCorner, ReputationDetailDivider

}) do
     v:SetVertexColor(.35, .35, .35)
end
--Reputation Frame
local a, b, c, d = regions(ReputationFrame)
for _, v in pairs({a, b, c, d

}) do
     v:SetVertexColor(.35, .35, .35)
end

-- HONOR
local a, b, c, d, e = regions(PVPFrame)
for _, v in pairs({a, b, c, d, e

}) do
   v:SetVertexColor(.35, .35, .35)
end

-- MERCHANT
local _, a, b, c, d, _, _, _, e, f, g, h, j, k = regions(MerchantFrame)
for _, v in pairs({a, b, c ,d, e, f, g, h, j, k

}) do
   v:SetVertexColor(.35, .35, .35)
end
--MerchantPortrait
for i,v in pairs({
      MerchantFramePortrait

}) do
   v:SetVertexColor(1, 1, 1)
end

--PETPAPERDOLL/PET Frame
local a, b, c, d, _, e = regions(PetPaperDollFrame)
for _, v in pairs({a, b, c, d, e

})do
   v:SetVertexColor(.35, .35, .35)

end

-- SPELLBOOK
local _, a, b, c, d = regions(SpellBookFrame)
for _, v in pairs({a, b, c, d}) do
     v:SetVertexColor(.35, .35, .35)
end

if SpellBookFrame then
 SpellBookFrame.Material = SpellBookFrame:CreateTexture(nil, 'OVERLAY', nil, 7)
 SpellBookFrame.Material:SetTexture[[Interface\AddOns\Lorti-UI-Classic\textures\quest\QuestBG.tga]]
 SpellBookFrame.Material:SetWidth(547)
 SpellBookFrame.Material:SetHeight(541)
 SpellBookFrame.Material:SetPoint('TOPLEFT', SpellBookFrame, 22, -74)
 SpellBookFrame.Material:SetVertexColor(.5, .5, .5)
end

 --THINGS THAT SHOULD REMAIN THE REGULAR COLOR
for i,v in pairs({
	BankPortraitTexture,
	BankFrameTitleText,
	MerchantFramePortrait,

}) do
   v:SetVertexColor(1, 1, 1)
end
