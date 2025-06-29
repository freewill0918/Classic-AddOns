--[[
Rule: on every talent purchase, figure out in how many talents the player can get back on track
by comparing his prospective build to subbuilds of order 1..n

Don't warn if the distance is less than their REMAINING talents after the purchase-to-be
--]]

SAFEMODE=false

local name,ZGV=...

local ZTA={}
ZGV.TalentAdvisor = ZTA
ZGV.ZTA = ZTA

ZTA.buildStorage = {}

ZTA.registeredBuilds = {}

ZTA.L = ZygorGuidesViewer_L("zta")
local L = ZTA.L

local framename = "ZygorTalentAdvisorFrame"

--local LibTutorial = LibStub("LibTutorial-1.0")

BINDING_HEADER_ZYGORTALENTADVISOR = L["name_plain"]
BINDING_NAME_ZYGORTALENTADVISOR_OPENPOPUP = L["binding_popout"]

ZTA.currentBuild = {}
ZTA.currentBuildTitle = {}
ZTA.status = {player={code="?"},pet={code="?"}}
ZTA.status_preview = {player={code="?"},pet={code="?"}}
ZTA.suggestion = {player={},pet={}}
ZTA.suggestion_preview = {player={},pet={}}

function ZTA:Initialize()
--	hooksecurefunc("TalentFrame_Load",MrRipley_LinkToTalentsFrame)
	hooksecurefunc("ToggleTalentFrame",function()
		self:Debug("ToggleTalentFrame hook")
		ZTA:PlayTalented()
	end)
	TalentMicroButton:HookScript("OnClick",function()
		self:Debug("TalentMicroButton hook")
		ZTA:PlayTalented()
	end)

	hooksecurefunc("ResetGroupPreviewTalentPoints",function()
		if PlayerTalentFrame then
			self:UpdateSuggestions(PlayerTalentFrame.pet)
		end
	end)

	self:SetupConfig()

	--[[
	if GetTalentInfo(1,1) then
		self:DelayedRegisteredBuilds()
	end
	--]]

	ZGV:AddEventHandler("CHARACTER_POINTS_CHANGED",{self,"CHARACTER_POINTS_CHANGED"})
	ZGV:AddEventHandler("PREVIEW_TALENT_PRIMARY_TREE_CHANGED",{self,"PREVIEW_TALENT_PRIMARY_TREE_CHANGED"})
	ZGV:AddEventHandler("PET_TALENT_UPDATE",{self,"PET_TALENT_UPDATE"})
	ZGV:AddEventHandler("UNIT_PET",{self,"UNIT_PET"})
	ZGV:AddEventHandler("UNIT_MODEL_CHANGED",{self,"UNIT_MODEL_CHANGED"})
	ZGV:AddEventHandler("CHAT_MSG_SYSTEM",{self,"CHAT_MSG_SYSTEM"})
	ZGV:AddEventHandler("USE_GLYPH",{self,"USE_GLYPH"})
	ZGV:AddEventHandler("PLAYER_ALIVE",{self,"PLAYER_ALIVE"})

	StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'] = {
		text = "",
		button1 = YES,
		button2 = NO,
		OnAccept = function (self) if SAFEMODE then self:Debug("learning "..data.tab..","..data.talent) return nil end  Old_LearnTalent(self.data.tab,self.data.talent,self.data.pet) end,
		OnCancel = function (self) end,
		OnHide = function (self) self.data = nil; self.selectedIcon = nil; end,
		hideOnEscape = 1,
		timeout = 0,
		whileDead = 1,
	}

	StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'] = {
		text = "",
		button1 = YES,
		button2 = NO,
		OnAccept = function (self) if SAFEMODE then self:Debug("learning previewed") return nil end  LearnPreviewTalents(self.data.pet) end,
		OnCancel = function (self) end,
		OnHide = function (self) self.data = nil; self.selectedIcon = nil; end,
		hideOnEscape = 1,
		timeout = 0,
		whileDead = 1,
	}
	--[[
	StaticPopupDialogs['ZYGORTALENTADVISOR_CONFIRM_LEARN_PREVIEW_TALENTS'] = {
		text = CONFIRM_LEARN_PREVIEW_TALENTS,
		button1 = YES,
		button2 = NO,
		OnAccept = function (self)
			LearnPreviewTalents(ZygorTalentAdvisor.Window.pet)
		end,
		OnCancel = function (self) end,
		hideOnEscape = 1,
		timeout = 0,
		exclusive = 1,
	}
	StaticPopupDialogs['ZYGORTALENTADVISOR_CONFIRMBULKLEARNING'] = {
		text = "...",
		button1 = YES,
		button2 = NO,
		OnAccept = function (self)
			ZTA:LearnSuggestedTalents(self.data.pet)
		end,
		OnCancel = function (self) end,
		hideOnEscape = 1,
		timeout = 0,
		exclusive = 1,
	}
	--]]

	if LibTutorial then
		LibTutorial:AddTutorial("ZTA1",L['tutorial_ZTA1_title'],L['tutorial_ZTA1_text'],ZGV.db.global.tutorialflags)
		LibTutorial:AddTutorial("ZTA2",L['tutorial_ZTA2_title'],L['tutorial_ZTA2_text'],ZGV.db.global.tutorialflags)
		LibTutorial:AddTutorial("ZTA3",L['tutorial_ZTA3_title'],L['tutorial_ZTA3_text'],ZGV.db.global.tutorialflags)

		if UnitLevel("player")>10 then LibTutorial:ShowTutorial("ZTA1") end
	end

	if UnitClass("player") and GetTalentInfo(1,1) then self:PruneRegisteredBuilds() self:LoadBuilds() end
	if select(2,UnitClass("player"))=="HUNTER" then self.petsupport=true end

	self.Log.entries = ZGV.db.char.debuglog
	self.Log:Add("Viewer started. ---------------------------")

	self.popout = ZygorTalentAdvisorPopout
end

function ZTA:LoadBuilds(pet)
	if (pet==true or pet==nil) and ZGV.db.char.currentBuildKey~="_" and not self.currentBuild.player then self:SetCurrentBuild(ZGV.db.char.currentBuildKey,false) end
	if (pet==false or pet==nil) and ZGV.db.char.currentPetBuildKey~="_" and not self.currentBuild.pet then self:SetCurrentBuild(ZGV.db.char.currentPetBuildKey,true) end
end

function ZTA:Debug(s)
	self.Log:Add(s,ZGV.db.profile.debug)
end

---- events

function ZTA:CHAT_MSG_SYSTEM(event,text)
	--[[
	if string.match(text,L['pattern_talentgained_pet']) then
		self:OnNewTalents(true)
	end
	--]]

	--[[
	if string.match(text,L['pattern_talentgained']) then
		self:OnNewTalents(false)
	end
	--]]
end

function ZTA:PLAYER_ALIVE()
	-- fires when talents are available
	self:Debug("PLAYER_ALIVE")
	self:PruneRegisteredBuilds()
end

function ZTA:PLAYER_TALENT_UPDATE(_,a)
	--self:Debug("PLAYER_TALENT_UPDATE "..tostring(a))
	--self:OnNewTalents()
end

function ZTA:PET_TALENT_UPDATE(_)
	local talentsready = GetTalentInfo(1,1,false,true)
	self:DebugPush(("PET_TALENT_UPDATE (points: %d, talents %s)"):format(GetUnspentTalentPoints(false,true), talentsready and "ready" or "not ready"))
	--local build = self.currentBuild.pet
	--if not build then self:DebugPop("No pet build") return nil end
	if talentsready then
		self:LoadBuilds(true)
		if self.currentBuild.pet and GetUnspentTalentPoints(false,true)>0 then
			self:OnNewTalents(true)
		end
		self:UpdateSuggestions(true)
		ZygorTalentAdvisorPopout_Update(false)
	end
	self:DebugPop()
end

function ZTA:UNIT_PET(_,owner)
	if (owner~="player") then return end -- foreign pets ignored
	local id,_,_,_,_,pettype_en = GetTalentTabInfo(1,false,true)
	if pettype_en then local pettype_en2=pettype_en:upper():match("HUNTERPET(.+)") pettype_en=pettype_en2 or pettype_en end
	local talentsready = GetTalentInfo(1,1,false,true)
	self:DebugPush(("UNIT_PET %s (type %s, talents %s, points %d)"):format(tostring(owner), tostring(pettype_en), talentsready and "ready" or "not ready", GetUnspentTalentPoints(false,true)))
	if pettype_en~=self.oldpettype and not (pettype_en and not talentsready) then
		self.oldpettype=pettype_en
		self:LoadBuilds(true)
		--[[ -- we don't want to auto-fit new pets, now do we..?
		if self.currentBuild['pet'] and GetUnspentTalentPoints(false,true)>0 then
			self:OnNewTalents(true)
		end
		--]]
	end
	self:DebugPop()
end

function ZTA:UNIT_MODEL_CHANGED(_,unit)
	if (unit~="pet") then return end -- only pets interesting
end

function ZTA:CHARACTER_POINTS_CHANGED(_,delta)
	self:Debug("CHARACTER_POINTS_CHANGED "..tostring(delta))
	if (delta>0) then self:OnNewTalents() end
	if delta<0 and self.bulklearning and self.suggestion['player'] then
		self:UpdateSuggestions(false)
		if #self.suggestion['player']>0 then
			local name=GetTalentInfo(self.suggestion['player'][1].tab,self.suggestion['player'][1].talent,false,false)
			ZGV:Print(L['msg_learned']:format(name))
			Old_LearnTalent(self.suggestion['player'][1].tab,self.suggestion['player'][1].talent,false,false)
		else
			self.bulklearning=nil
			ZGV:Print("Learned all.")
		end
	end
	self:UpdateSuggestions(false)
	ZygorTalentAdvisorPopout_Update()
end

function ZTA:PREVIEW_TALENT_PRIMARY_TREE_CHANGED()
	self:UpdateSuggestions(false)
	ZygorTalentAdvisorPopout_Update()
end

function ZTA:USE_GLYPH()
	self:UpdateSuggestions(false)
	ZygorTalentAdvisorPopout_Update()
end


local function who(pet)
	return pet and 'pet' or 'player'
end



function ZTA:SetupConfig()
	ZGV.db = ZGV.db

	local Getter_Simple = function(info)
		return ZGV.db.profile[info[#info]]
	end
	local Setter_Simple = function(info,value)
		ZGV.db.profile[info[#info]] = value
	end

	self.options = {
		name = L['name'],
		desc = L['desc'],
		type = "group",
		order = 1,
		--hidden = true,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			zta_desc = {
				order = 1,
				type = "description",
				name = L['desc'],
			},
			zta_desc01 = {
				type = "header",
				name = L['opt_build_header'],
				order = 1.01,
				hidden = function() local _,class = UnitClass("player") return class~="HUNTER" end,
			},
			zta_build = { ------------------- BUILD --------------------
				name = L['opt_build'],
				desc = L['opt_build_desc'],
				type = "select",
				values = function()
					   local t={["_"]=L['opt_build_none']}
					   if not next(self.registeredBuilds) then return t end
					   local k,v
					   local _,playerclass=UnitClass("player")
					   for k,v in pairs(self.registeredBuilds) do if v.class and v.class==playerclass then t[k]=v.title end end
					   return t
					 end,
				width = "double",
				get = function() return ZGV.db.char.currentBuildKey or "_" end,
				set = function(_,k) self:SetCurrentBuild(k,false) end,
				order = 1.1,
			},
			zta_forcebuild = {
				name = L['opt_force'],
				desc = L['opt_force_desc'],
				type = "toggle",
				width = "single",
				--get simple
				set = function(i,v) Setter_Simple(i,v)  self:LoadBuilds(false) end,
				hidden = function() return self.status['player'].code~="RED" end,
				order = 1.2,
			},
			zta_desc1 = { order = 1.21,	type = "description",	name = "", },
			zta_buildstatus = {
				type = "description",
				name = function() return self:GetStatusMessage(false) end,
				width = "full",
				order = 1.3,
			},
			desc12 = { order = 1.31,	type = "description",	name = "|n", },
			descp = { ---------------- PET BUILD ------------------
				type = "header",
				name = L['opt_petbuild_header'],
				order = 2.01,
				hidden = function() local _,class = UnitClass("player") return class~="HUNTER" end,
			},
			zta_petbuild = {
				name = L['opt_petbuild'],
				desc = L['opt_petbuild_desc'],
				type = "select",
				values = function()
					   local t={["_"]=L['opt_build_none']}
					   if not next(self.registeredBuilds) then return t end
					   local k,v
					   for k,v in pairs(self.registeredBuilds) do
						if v.pettype then
							local id,mypettype,_,_,_,mypettype_en = GetTalentTabInfo(1,false,true) or ""
							local color = (mypettype_en==v.pettype and "" or "|cffbbbbbb")
							t[k]=color..v.title.."  - "..L['opt_petbuild_'..string.lower(v.pettype)]
						end
						
					   end
					   return t
					 end,
				width = "double",
				get = function() return ZGV.db.char.currentPetBuildKey or "_" end,
				set = function(_,k) self:SetCurrentBuild(k,true) end,
				hidden = function() local _,class = UnitClass("player") return class~="HUNTER" end,
				--disabled = function() return not GetTalentTabInfo(1,false,true) or not GetTalentInfo(1,1,false,true) end,
				order = 2.1,
			},
			zta_forcepetbuild = {
				name = L['opt_force'],
				desc = L['opt_force_desc'],
				type = "toggle",
				width = "single",
				--get simple
				set = function(i,v) Setter_Simple(i,v)  self:LoadBuilds(true) end,
				hidden = function() return self.status['pet'].code~="RED" end,
				order = 2.2,
			},
			zta_desc21 = { order = 2.21,	type = "description",	name = "", },
			zta_petbuildstatus = {
				type = "description",
				name = function() return self:GetStatusMessage(true) end,
				width = "full",
				order = 2.3,
			},
			zta_desc22 = { order = 2.31,	type = "description",	name = "|n", },
			zta_talentframe = {
				name = L['opt_talentframe'],
				type = "header",
				--inline = true,
				order = 7,
				--args = {
			},
			zta_hints = {
				name = L['opt_hints'],
				desc = L['opt_hints_desc'],
				type = "toggle",
				width = "full",
				--get inherited simple
				set = function(i,v) Setter_Simple(i,v)  if PlayerTalentFrame then PlayerTalentFrame_Refresh() end end,
				_default = true,
				order = 7.1,
			},
			zta_preview = {
				name = L['opt_preview'],
				desc = L['opt_preview_desc'],
				type = "toggle",
				width = "full",
				--get inherited simple
				set = function(i,v) Setter_Simple(i,v)  if PlayerTalentFrame then PlayerTalentFrame_Refresh() end end,
				_default = true,
				order = 7.2,
			},
			zta_popup = {
				name = L['opt_popup'],
				desc = L['opt_popup_desc'],
				type = "select",
				style = "radio",
				width = "double",
				--get inherited simple
				--set inherited simple
				values = {[0]=L['opt_popup_0'],L['opt_popup_1'],L['opt_popup_2'],L['opt_popup_3']},
				order = 8,
				_default = 0,
			},
			zta_windowdocked = {
				name = L['opt_popup_dock'],
				desc = L['opt_popup_dock_desc'],
				type = "toggle",
				width = "double",
				--get inherited simple
				set = function(i,v)
					Setter_Simple(i,v)
					ZygorTalentAdvisorPopout_Reparent()
					if (v==false) then ZygorTalentAdvisorPopout:ClearAllPoints()  ZygorTalentAdvisorPopout:SetPoint("CENTER",0,200) end
					ZygorTalentAdvisorPopout_UpdateDocking()
				      end,
				order = 9,
				_default = true,
			},
			zta_sep1 = {
				type="description", name=" |n |n |n", order=98
			},
			zta_debug = {
				hidden = true,
				name = L["opt_debug"],
				desc = L["opt_debug_desc"],
				type = 'toggle',
				order=-10,
			},
			zta_report = {
				name = L["opt_report"],
				desc = L["opt_report_desc"],
				type = 'execute',
				func = "DumpTalents",
				order = 99,
			},
		}
	}
	
	return self.options
end

function ZTA:OnNewTalents(pet)
	--local lasttalents = pet and self.lastUnspentPetTalents or self.lastUnspentTalents
	-- no selected build? bail.
	self:Debug("On New Talents "..tostring(pet))

	if not self.currentBuild[who(pet)] and GetUnspentTalentPoints(false,pet)>0 then
		if LibTutorial then LibTutorial:ShowTutorial("ZTA2") end
		return nil
	end

	--if self.alreadyProcessingNewTalents[toboolean(pet)] then return end

	--self.alreadyProcessingNewTalents[toboolean(pet)]=true

	-- no talents? bail.
	--if GetUnspentTalentPoints(false,pet)==0 then return end
	-- or not! handle clearing, too.

	self:LoadBuilds(pet)

	--if not self:GetSuggestion(pet) then return nil end
	-- oh, do pop up, just with a warning

	local switchToPet = function()
		-- try to activate the pet talent frame
		for i=1,5 do
			local tab = _G["PlayerSpecTab"..i]
			if tab and string.find(tab.specIndex,"^petspec") then
				tab:Click()
				break
			end
		end
	end

	local popup = ZGV.db.profile.zta_popup or 0
	if popup==1 then
		TalentFrame_LoadUI()
		PlayerTalentFrame_Open(pet, pet and 1 or GetActiveTalentGroup())

		if pet then switchToPet() end
	end
	
	if popup==2 then
		ZygorTalentAdvisorPopout_Popout()
		if pet then switchToPet() end
		ZygorTalentAdvisorPopout_Update()
	end

	if popup==3 then
		self:LearnSuggestedTalents(pet,true)
	end

	self:PlayTalented()
end

local panels={"Panel1","Panel2","Panel3","PetPanel"}
function ZTA:CleanupTalentFrame()
	local hint,bor
	for p,panel in ipairs(panels) do
		for talent=1,100 do
			bor = _G["PlayerTalentFrame"..panel.."Talent"..talent.."RankBorder"]
			if bor then
				bor:SetWidth(32)
				bor:SetHeight(32)
			end

			hint = _G["PlayerTalentFrame"..panel.."Talent"..talent.."Hint"]
			if hint then hint:Hide() end
		end
	end

	self.cleaning=true
	--pcall(function() PlayerTalentFrame_Update(PlayerTalentFrame) end) -- something breaks here... screw it?
	PlayerTalentFrame_Update()
	self.cleaning=false
end

function ZTA:CacheGlyphAvailability()
	self.glyphsAvailable={}
	if not GlyphFrame then return end

	for i=1,50 do
		local name,gtype,avail,icon,glyphID = GetGlyphInfo(i)
		if name and name~="header" then
			local ident = ZTA.GlyphToSpell[glyphID] or glyphID
			self.glyphsAvailable[ident] = {name=name,gtype=gtype,avail=avail,icon=icon,spell=spell}
			self.glyphsAvailable[name] = self.glyphsAvailable[ident]
		end
	end

	

	for socket=1,NUM_GLYPH_SLOTS do
		local enabled, glyphType, glyphTooltip, glyphSpell, icon = GetGlyphSocketInfo(socket)
		if glyphSpell then
			self.glyphsAvailable[glyphSpell] = self.glyphsAvailable[glyphSpell] or {} 
			self.glyphsAvailable[glyphSpell].inscribed = true 
		end
	end
end

local socketinfo_to_glyphinfo = {2,3,1}
function ZTA:GetGlyphSuggestions()
	local glyphs = self.currentBuildGlyphs

	if not glyphs or #glyphs==0 then return nil,"BLACK" end

	local numOK=0
	local numEmpty=0
	local numLocked=0
	local sug=L['glyphsug_title']

	self:CacheGlyphAvailability()

	local gtsuf = {[1]="(Prime)",[2]="(Major)",[3]="(Minor)"}

	--local level = UnitLevel("player")
	--local numunlocks = (level>=75 and 2 or level>=50 and 2 or 1)

	for i=1,glyphs and #glyphs or 0 do
		local name=glyphs[i]:match(".- Glyph of (.+)")
		if not name then name=glyphs[i]:match("Glyph of (.+)") end
		if not name then name=glyphs[i] end

		local spell = self.GlyphNameToSpell[name]

		local glyph = spell and self.glyphsAvailable[spell]

		if glyph then
			glyph.suggested = true
		else
			sug=sug.."\n|cffff0088ERROR: Unknown glyph '"..glyphs[i].."'|r"
		end
	end

	-- calculate free/freeable sockets

	local sockets = {3,3,3}
	for socket=1,NUM_GLYPH_SLOTS do
		local enabled, glyphType, glyphTooltip, glyphSpell, icon = GetGlyphSocketInfo(socket)
		glyphType=socketinfo_to_glyphinfo[glyphType]
		if not enabled or (glyphSpell and self.glyphsAvailable[glyphSpell].suggested) then sockets[glyphType]=sockets[glyphType]-1 end
	end
	ZTA:Debug("sockets available: "..sockets[1]..","..sockets[2]..","..sockets[3])


	-- multiple passes, to have everything in proper order

	local futuresug=""

	for spell,glyph in pairs(self.glyphsAvailable) do if tonumber(spell) then
			if not glyph.avail and glyph.suggested then
				local s="\n|cffff8800Learn and inscribe: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
				if sockets[glyph.gtype]>0 then
					sug=sug..s
					sockets[glyph.gtype]=sockets[glyph.gtype]-1
				else
					futuresug=futuresug..s
				end
			end
	end end
	for spell,glyph in pairs(self.glyphsAvailable) do if tonumber(spell) then
			if glyph.inscribed and not glyph.suggested then
				sug=sug.."\n|cffff0000Clear: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
			end
	end end
	for spell,glyph in pairs(self.glyphsAvailable) do if tonumber(spell) then
			if glyph.suggested and glyph.avail and not glyph.inscribed then
				local s="\n|cffffff00Inscribe: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
				if sockets[glyph.gtype]>0 then
					sug=sug..s
					sockets[glyph.gtype]=sockets[glyph.gtype]-1
				else
					futuresug=futuresug..s
				end
			end
	end end
	for spell,glyph in pairs(self.glyphsAvailable) do if tonumber(spell) then
			if glyph.suggested and glyph.inscribed then
				sug=sug.."\n|cff00ff00Good: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
			end
	end end

	if #futuresug>0 then
		sug = sug.."\n\nWhen you unlock more sockets:"..futuresug
	end

	-- count empties/locks
	for socket=1,NUM_GLYPH_SLOTS do
		local enabled, glyphType, glyphTooltip, glyphSpell, icon = GetGlyphSocketInfo(socket)
		if not glyphSpell then
			if enabled then numEmpty=numEmpty+1 else numLocked=numLocked+1 end
		end
	end

	local missing=#glyphs-numOK
	local code
	
	self:Debug(("missing %s, numEmpty %s, numLocked %s"):format(missing,numEmpty,numLocked))

	if numOK==#glyphs then code="GOLD"  -- all OK
	 elseif missing<=numEmpty then code="GREEN"  -- just inscribe
	 elseif missing<=numEmpty+numLocked then code="YELLOW"  -- cool, just need to level more
	 else code="ORANGE"  -- needs wiping
	end

	return sug,code
end

local function ZTA_SelectTree_Flash(self,elapsed)
	self.time=self.time+elapsed
	if self.time>0.5 then
		PlayerTalentFramePanel1SelectTreeButton:UnlockHighlight()
		PlayerTalentFramePanel2SelectTreeButton:UnlockHighlight()
		PlayerTalentFramePanel3SelectTreeButton:UnlockHighlight()
		if ZTA.currentBuild.player and ZTA.currentBuild.player.spec and PlayerTalentFrame.talentGroup==GetActiveTalentGroup() then
			local specbutton = _G['PlayerTalentFramePanel'..ZTA.currentBuild.player.spec..'SelectTreeButton']
			if specbutton.flash then specbutton:LockHighlight() else specbutton:UnlockHighlight() end
			specbutton.flash = not specbutton.flash
		end
		self.time=0
	end
end

function ZTA:PlayTalented()
	if self.cleaning then return nil end
	if not PlayerTalentFrame or not PlayerTalentFrame:IsVisible() then return end

	-- hook in deeper.
	if not self.hooked then
		self:Debug("zta hooking 1st time")
		PlayerTalentFrameLearnButton:SetScript("OnClick",ZygorTalentAdvisor_PlayerTalentFrameLearnButton_OnClick)

		ZygorTalentAdvisorPopout_Hook(ZygorTalentAdvisorPopout)

		hooksecurefunc("PlayerTalentFrame_OnHide",function()
			if self.popout.moving and self.popout:GetParent()==PlayerTalentFrame then
				ZGV.db.profile.zta_windowdocked = false
				ZygorTalentAdvisorPopout_Reparent()
				ZygorTalentAdvisorPopout_UpdateDocking()
				self.popout.moving=false
				self.popout:StopMovingOrSizing()
				self.popout:Show()
			end

			--[[
			if self.popout:IsShown() then
				PlayerTalentFrame.advisorbutton:SetButtonState("PUSHED",1)
			else
				PlayerTalentFrame.advisorbutton:SetButtonState("NORMAL")
			end
			--]]

			--[[
			for i=1,MAX_NUM_TALENTS do
				_G['PlayerTalentFrameTalent'..i]:SetScript("OnClick",ZygorTalentAdvisor_PlayerTalentFrameTalent_OnClick)
			end
			--]]

			--[[
			if not self.hookedreset then
				self.hookedreset=true
				--self:Debug("hooked")
			end
			if PlayerTalentFrame and PlayerTalentFrame:IsVisible() then
				self:UpdateSuggestions(PlayerTalentFrame.pet)
			end
			--]]
		end)
		
		hooksecurefunc("PlayerTalentFrame_Refresh",function() self:PlayTalented() end)
		hooksecurefunc("PlayerTalentFrame_UpdateControls",function() self:PlayTalented() end)
		
		self.hooked=true
	end

	
	if not PlayerTalentFrame.advisorbutton then

		PlayerTalentFrame.advisorbutton = ZGV.ChainCall(CreateFrame("BUTTON",nil,PlayerTalentFrame,"ZygorSpecialButton_Template"))
			:ApplySkin()
			:SetSize(28,28)
			:SetPoint("TOPRIGHT", PlayerTalentFrame, "TOPRIGHT", -5, -30)
			:SetFrameStrata("HIGH")
			:SetFrameLevel(611)
			:SetScript("OnClick", function() 
				if ZygorTalentAdvisorPopout and ZygorTalentAdvisorPopout:IsShown() then ZygorTalentAdvisorPopout:Hide() else ZygorTalentAdvisorPopout:Show() end	
			end)
			:SetScript("OnEnter",function(self) GameTooltip_SetDefaultAnchor(GameTooltip,self)  GameTooltip:SetText(L['name']) GameTooltip:AddLine(L['popout_button_tip']) GameTooltip:Show() end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
			:Show()
		.__END

		--PlayerTalentFrame.advisorbutton = ZygorTalentAdvisorPopoutButton
	end
	if GlyphFrame and not GlyphFrame.suggestion then
		local glyphsug=GlyphFrame:CreateFontString()
		glyphsug:SetPoint("CENTER",GlyphFrame,"Center",-15,25)
		glyphsug:SetWidth(200)
		glyphsug:SetJustifyV("MIDDLE")
		glyphsug:SetJustifyH("CENTER")
		glyphsug:SetFontObject(SystemFont_Tiny)
		glyphsug:SetShadowOffset(1,-1)
		GlyphFrame.suggestion = glyphsug
	end
	PlayerTalentFrame.advisorbutton:Show()

	self:Debug("Displaying talent suggestions.")

	local pet = PlayerTalentFrame.pet
	local who=who(pet)

	local build = self.currentBuild[who]
	local force
	if pet then force=ZGV.db.profile.zta_forcepetbuild else force=ZGV.db.profile.zta_forcebuild end

	-- no build or build disabled? clean up, bail out.
	if not build or self.status[who].code=="BLACK" or (self.status[who].code=="RED" and not force) then
		self:CleanupTalentFrame()
		ZygorTalentAdvisorPopout_Update()
		--ZygorTalentAdvisorPopout_UpdateDocking()
		return
	end

	self:UpdateSuggestions(pet)
	local suggestion = self.suggestion[who]
	local preview = GetCVarBool("previewTalentsOption")

	ZygorTalentAdvisorPopout_Update()
	--ZygorTalentAdvisorPopout_UpdateDocking()

	--self:Debug("playtalented "..who)

	--[[
	local advisory = L['talentframeadvisory_head']:format(self.currentBuildTitle[who])
	local status = preview and self.status_preview[who] or self.status[who]
	if status.code=="ORANGE" then
		advisory = advisory .. "\n" .. L['talentframeadvisory_orange']:format(status.missed-status.pointsleft)
	end
	if status.code=="RED" then
		advisory = advisory .. "\n" .. L['talentframeadvisory_red']
	end
	PlayerTalentFrame.advisory:SetText(advisory)
	--]]


	-- first the spec buttons
	if not PlayerTalentFrame.scriptedtoflash then
		PlayerTalentFrame:HookScript("OnUpdate",ZTA_SelectTree_Flash)
		PlayerTalentFrame.time=0
		PlayerTalentFrame.scriptedtoflash = true
		ZTA_SelectTree_Flash(PlayerTalentFrame,99)  --force
	end
	if PlayerTalentFramePanel1SelectTreeButton:IsShown() then
		PlayerTalentFrameHeaderHelpBoxArrow1:Hide()
		PlayerTalentFrameHeaderHelpBoxArrow2:Hide()
		PlayerTalentFrameHeaderHelpBoxArrow3:Hide()
		_G['PlayerTalentFrameHeaderHelpBoxArrow'..build.spec]:Show()
	end


	--PlayerTalentFrameHeaderFrame.HeaderText:SetText(self.currentBuildTitle[who])
	--PlayerTalentFrameHeaderFrame.SubHeaderText:SetText("One-liner description could go here.")


	local counts,maxcounts = self:CountBuildTalents(self:GetTalentsSpent(pet),build,pet)

	local button
	local txt,bor,hint

	local panels = pet and {"PetPanel"} or {"Panel1","Panel2","Panel3"}
	for tab,panel in ipairs(panels) do
		local talents = GetNumTalents(tab,false,pet)
		for talent=1,talents do
			--[[
			txt = _G["PlayerTalentFrameTalent"..talent.."_MrRipleyTxt"]
			bor = _G["PlayerTalentFrameTalent"..talent.."_MrRipleyBor"]
			if not txt then
				button = _G["PlayerTalentFrameTalent"..talent]
				txt = button:CreateFontString("PlayerTalentFrameTalent"..talent.."_MrRipleyTxt")
				txt:SetPoint("TOPRIGHT",button,"TOPRIGHT",3,3)
				txt:SetWidth(8)
				txt:SetJustifyV("TOP")
				txt:SetJustifyH("CENTER")
				txt:SetFontObject(GameFontNormalSmall)
				bor = button:CreateTexture("PlayerTalentFrameTalent"..talent.."_MrRipleyBor")
				bor:SetPoint("CENTER",txt)
				bor:SetTexture("Interface\\TalentFrame\\TalentFrame-RankBorder")
				bor:SetWidth(32)
				bor:SetHeight(32)
			end
			--]]

			local prefix = "PlayerTalentFrame"..panel.."Talent"..talent
			button = _G[prefix]
			txt = _G[prefix.."Rank"]
			bor = _G[prefix.."RankBorder"]
			borg = _G[prefix.."RankBorderGreen"]
			hint = _G[prefix.."Hint"]

			-- prepare the hint balloon
			if not hint then
				hint = button:CreateTexture(prefix.."Hint")
				--hint:SetTexture("Interface\\Buttons\\CheckButtonHilight")
				hint:SetPoint("LEFT",_G[prefix.."IconTexture"],"RIGHT",-14,5)
				hint:SetSize(32,32)
				hint:SetTexture("Interface\\Addons\\ZygorTalentAdvisor\\Skin\\MrRipley_Hints")
				hint:SetDrawLayer("OVERLAY")
			end

			local name,_,_,_,realrank,maxrank,available,rank = GetTalentInfo(tab,talent,false,pet)
			local desired = maxcounts[tab] and maxcounts[tab][talent] or 0

			local color_up_notfull = "|cff00ff00"
			local color_up_full = "|cffffff00"

			-- textual build preview
			if ZGV.db.profile.zta_preview and self.status[who].code~="BLACK" and (self.status[who].code~="RED" or force) and rank then
				if desired>0 and rank<desired then
					if not txt:IsVisible() then
						txt:SetText("|cffaaaaaa"..rank.."/|r|cff00aaff"..desired.."|r")
						txt:Show()
						bor:Show()
					else
						txt:SetText(rank.."|cffaaaaaa/|r|cff00aaff"..desired.."|r")
					end

					bor:SetSize(36,18)
					borg:SetSize(36,18)

				elseif desired>0 and rank==desired then

					txt:SetText(rank.."/"..desired)
					bor:SetSize(36,18)
					borg:SetSize(36,18)

				elseif rank>desired then
					
					txt:SetText(rank.."|cffaaaaaa/|r|cffff0000"..desired.."|r")
					bor:SetSize(36,18)
					borg:SetSize(36,18)

				else
					bor:SetSize(18,18)
					borg:SetSize(18,18)
					--if GetUnspentTalentPoints(false,pet) preview 
				end
			else
				bor:SetSize(18,18)
				borg:SetSize(18,18)
				txt:SetText(rank)
				--if rank<maxrank then txt:SetTextColor(0,1,0) else txt:SetTextColor
			end

			-- hint balloons

			if suggestion and #suggestion>0 and ZGV.db.profile.zta_hints and rank then

				local suggested

				-- consider all suggestions in preview/ooo mode; only the first suggestion in strict/inorder mode
				--self:IsOutOfOrder(pet) or 

				-- actually, no. Let's try to get out of OOO mode somehow.
				--[[
				if preview or (suggestion[1][1]==tab and suggestion[1][2]==talent) then
					suggested = suggestion and suggestion[tab.."."..talent]
				end
				--]]
				suggested = suggestion[tab.."."..talent]

				local mindesired = counts[tab] and counts[tab][talent] or 0

				-- hint balloon display
				if suggested then -- suggested this turn
					local hintpoints = suggested - (rank-realrank)  -- suggested minus previewed
					if hintpoints>0 then
						hint:SetTexCoord(0.125*hintpoints,0.125*(hintpoints+1),0,1)
					elseif hintpoints==0 then
						hint:SetTexCoord(0.125*6,0.125*7,0,1)
					else
						hint:SetTexCoord(0.875,1.000,0,1)  -- X
						--self:Debug("X1"..name.." : hints="..hintpoints.." for rank "..rank)
					end
					hint:SetDesaturated(_G[prefix.."IconTexture"]:IsDesaturated())
					hint:Show()
				elseif rank>mindesired and preview and rank>realrank and realrank<=mindesired then -- overinvested! oh shit. But warn only if it matters anymore.
					hint:SetTexCoord(0.875,1.000,0,1)
					hint:SetDesaturated(_G[prefix.."IconTexture"]:IsDesaturated())
					hint:Show()
					--self:Debug("X2 "..name)
				else
					hint:Hide()
				end
			else
				hint:Hide()
			end
		end
	end
end

function ZTA:GetSuggestionTooltip()
	self:Debug("GetSuggestionTooltip")
	return L['suggest_button_tooltip']:format(self.currentBuildTitle[who(PlayerTalentFrame.pet)])
end

function ZTA:GetSuggestionFormatted(pet)
	TalentFrame_LoadUI()
	local sugformatted={}
	local who=who(pet)
	for i=1,#self.suggestion[who] do
		local tab,talent = self.suggestion[who][i].tab,self.suggestion[who][i].talent
		local id,tabname = GetTalentTabInfo(tab,false,pet)
		local name,tex,_,_,realrank,maxrank=GetTalentInfo(tab,talent,false,pet,GetActiveTalentGroup())
		if not sugformatted[tabname] then sugformatted[tabname]={} end
		local inserted=false
		for i=1,#sugformatted[tabname] do
			if sugformatted[tabname][i].name==name then
				if maxrank>1 then
					table.insert(sugformatted[tabname][i],realrank+#sugformatted[tabname][i]+1)
				else
					table.insert(sugformatted[tabname][i],0)
				end
				inserted=true
				break
			end
		end
		if not inserted then -- new talent
			table.insert(sugformatted[tabname],{tex=tex,tab=tab,name=name,talent=talent,[1]=realrank+1})
		end
	end
	return sugformatted
end

function ZTA:LearnSuggestedTalents(pet,loud)
	TalentFrame_LoadUI()
	local who=who(pet)
	if not self.currentBuild[who] then
		ZGV:Print(L['error_bulklearn_nobuild'])
		return
	end
	if not self.suggestion[who] or #self.suggestion[who]==0 then
		ZGV:Print(L['error_bulklearn_nosuggestion'])
		return
	end

	local suggestion = self.suggestion[who]

	if loud then
		local sugformatted = self:GetSuggestionFormatted(pet)
		local s=""

		ZGV:Print(L['msg_learned_verbose'])

		for tab,talents in pairs(sugformatted) do
			ZGV:Print("|cffffffff"..tab.."|r:")
			local s
			for n,levels in ipairs(talents) do
				talent = "|T"..levels.tex..":0:0:0:0|t |cffffdd00"..GetTalentLink(levels.tab,levels.talent,false,pet,GetActiveTalentGroup())
				if levels[1]==0 then
					s=talent
				else
					s=talent.." |cff997700("
					if #levels<3 then s=s..table.concat(levels,",") else s=s..levels[1].."-"..levels[#levels] end
					s=s..")|r"
				end
				ZGV:Print(L['msg_learned_verbose_talent']:format(s))
			end
		end
	else
		ZGV:Print(L['msg_learned'])
	end

	if #suggestion>1 then
		local preview = GetCVar("previewTalentsOption")
		SetCVar("previewTalentsOption",1)
		self:PreviewSuggestions(pet,true)
		ZGV:ScheduleTimer(function()
			LearnPreviewTalents(pet)
			SetCVar("previewTalentsOption",preview)
		end, 0.1)
	else
		Old_LearnTalent(suggestion[1].tab,suggestion[1].talent,pet)
	end

	if not ZGV.db.profile.zta_windowdocked then
		ZygorTalentAdvisorPopout:Hide()
	else
		ZygorTalentAdvisorPopout_Update()
	end

	--[[
	else
		self.bulklearning=true -- starts processing the queue, driven by CHARACTER_POINTS_CHANGED -1
		local name=GetTalentInfo(self.suggestion[who][1].tab,self.suggestion[who][1].talent,false,pet)
		ZGV:Print(L['msg_learned']:format(name))
		Old_LearnTalent(self.suggestion[who][1].tab,self.suggestion[who][1].talent,pet)
	end
	--]]
end

function ZTA:PreviewSuggestions(pet,quiet)
	SetCVar("previewTalentsOption",1)
	--local preview = GetCVarBool(
	--if not preview then return end

	self.cleaning = true

	if pet==nil then pet = PlayerTalentFrame.pet end

	local suggestion = self.suggestion[who(pet)]
	if not suggestion then return end

	ResetGroupPreviewTalentPoints(pet)

	if not pet then SetPreviewPrimaryTalentTree(self.currentBuild[who(pet)].spec, _G['PlayerTalentFramePanel'..self.currentBuild[who(pet)].spec].talentGroup) end
	
	-- this may look out of order, but is fine for applying ALL suggestions

	-- not any longer?

	local pts
	--[[
	local sug
	for tab,talent in talentpairs(false,pet) do
		sug = suggestion[tab.."."..talent]
		if sug then 
			pts = GetGroupPreviewTalentPointsSpent(pet)
			AddPreviewTalentPoints(tab,talent,sug,pet)
			if pts==GetGroupPreviewTalentPointsSpent(pet) then
				local name=GetTalentInfo(tab,talent,false,pet)
				ZGV:Print("|cffff0000Error!|r Talent "..name.." suggested but unavailable!")
			end
		end
	end
	--]]
	for i,sug in ipairs(suggestion) do
		pts = GetGroupPreviewTalentPointsSpent(pet)
		AddPreviewTalentPoints(sug.tab,sug.talent,1,pet)
		if pts==GetGroupPreviewTalentPointsSpent(pet) then
			local name=GetTalentInfo(sug.tab,sug.talent,false,pet)
			ZGV:Print("|cffff0000Error!|r Talent "..name.." suggested but unavailable!")
		end
	end

	self.cleaning = false
	self:PlayTalented()


	if not quiet and not PlayerTalentFrame:IsVisible() then
		TalentFrame_LoadUI()
		ToggleTalentFrame()
	end
end

function talentpairs(inspect,pet)
	local tab,tal=1,0
	return function()
		tal=tal+1
		if tal>GetNumTalents(tab,inspect,pet) then
			tal=1
			tab=tab+1
		end
		if tab<=GetNumTalentTabs(inspect,pet) then
			return tab,tal
		end
	end
end



Old_LearnTalent = LearnTalent
function LearnTalent(tab,talent,pet,group)
	-- need to double-check if the user hasn't clicked an inaccessible talent, otherwise we're barking up the wrong tree
	if GetUnspentTalentPoints(false,pet)==0 then return nil end

	local id, name, desc, iconTexture, tabPointsSpent = GetTalentTabInfo(tab,false,pet,group)
	local name, iconTexture, tier, column, rank, maxRank, meetsPrereq, previewRank, meetsPreviewPrereq = GetTalentInfo(tab, talent, false, pet, group);

	if ( ((tier - 1) * (pet and PET_TALENTS_PER_TIER or PLAYER_TALENTS_PER_TIER) > tabPointsSpent) ) then
		-- tier locked! bail.
		return nil
	end
	local reqtab,reqtal,learnable = GetTalentPrereqs(tab,talent,false,pet)
	if reqtab and not learnable then
		return nil
	end

	local who=who(pet)

	local ZTA = ZygorTalentAdvisor
	local suggestion = ZTA.suggestion[who]
	if ZTA and ZTA.currentBuild[who] and suggestion and #suggestion>0 then
		local status = ZTA.status[who]
		
		local found,s
		for i=1,#suggestion do if suggestion[i].tab==tab and suggestion[i].talent==talent then found = i end end
		if not found then
			-- RED!
			local counts,maxcounts = ZTA:CountBuildTalents(ZTA:GetTalentsSpent(pet),ZTA.currentBuild[who])
			local buildTitle=ZTA.currentBuildTitle[who]
			if not maxcounts[tab] or maxcounts[tab][talent]==0 then
				-- never taken at all
				StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text = L['warning_learn1_red0']:format(buildTitle)
			elseif rank+1>maxcounts[tab][talent] then
				-- taken, but not this far
				StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text = L['warning_learn1_red']:format(buildTitle,maxcounts[tab][talent],GetTalentInfo(tab,talent,false,pet))
			else
				-- Warning, ORANGE zone: not in suggestion, so too far
				local stab = suggestion[1].tab
				local stalent = suggestion[1].talent
				StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text = L['warning_learn1_orange']:format(buildTitle,select(2,GetTalentTabInfo(stab,false,pet)),GetTalentInfo(stab,stalent,false,pet),GetTalentInfo(tab,talent,false,pet))
			end
			local dialog = StaticPopup_Show("ZYGORTALENTADVISOR_WARNING")
			if dialog then
				dialog.data = {tab=tab,talent=talent,pet=pet}
			else
				ZTA:Print("ERROR: Cannot show dialog.\n"..StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text)
			end
			return
		else
			-- YELLOW.
		end
	end

	if SAFEMODE then
		self:Debug("Learning\n"..name)
	else
		Old_LearnTalent(tab,talent,pet)
	end
end

-- OVERRIDE
function ZygorTalentAdvisor_PlayerTalentFrameLearnButton_OnClick(self)
	local TalentFrame = PlayerTalentFrame
	local pet = TalentFrame.pet
	local who=who(pet)

	ZTA:UpdateSuggestions(pet)
	local status = ZTA.status_preview[who]
	local build = ZTA.currentBuild[who]

	if status and build then
		if status.code=="GREEN" or status.code=="YELLOW" then
			StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text=L["warning_preview_green"]:format(ZTA.currentBuildTitle[who])
		elseif status.code=="ORANGE" then
			StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text=L["warning_preview_orange"]:format(ZTA.currentBuildTitle[who],status.missed-status.pointsleft) --GetUnspentTalentPoints(false,pet)+GetGroupPreviewTalentPointsSpent(pet) ??
		elseif status.code=="RED" then
			StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text=L["warning_preview_red"]:format(ZTA.currentBuildTitle[who])
		elseif status.code=="BLACK" then
			StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text=L["warning_preview_black"]:format(status.msg)
		end
		local dialog = StaticPopup_Show("ZYGORTALENTADVISOR_PREVIEWWARNING")
		if dialog then
			dialog.data = {pet=TalentFrame.pet}
		else
			ZTA:Print("ERROR: Cannot show dialog.\n"..StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text)
		end
		return nil
	else
		PlayerTalentFrameLearnButton_OnClick(self)
		--StaticPopup_Show("CONFIRM_LEARN_PREVIEW_TALENTS")
	end
end


--[[
function ZygorTalentAdvisor_PlayerTalentFrameTalent_OnClick(self, button)
	--debug("click in zta? "..tostring(self.isZTA))
	if ( IsModifiedClick("CHATLINK") ) then
		local link = GetTalentLink(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(),
			PlayerTalentFrame.inspect, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup, GetCVarBool("previewTalents"));
		if ( link ) then
			ChatEdit_InsertLink(link);
		end
	elseif not PlayerTalentFrame.inspect and (PlayerTalentFrame.pet or GetActiveTalentGroup(false,PlayerTalentFrame.pet)==PlayerTalentFrame.talentGroup) then
		-- only allow functionality if an active spec is selected
		if ( button == "LeftButton" ) then
			if ( GetCVarBool("previewTalents") ) then
				AddPreviewTalentPoints(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), 1, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup);
			else
				LearnTalent(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup);
			end
		elseif ( button == "RightButton" ) then
			if ( GetCVarBool("previewTalents") ) then
				if IsTalentRemovable(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup) then
					AddPreviewTalentPoints(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), -1, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup);
				end
			end
		end
	end

	if self.isZTA then
		self:GetScript("OnLeave")(self)
		self:GetScript("OnEnter")(self)
	end
end

function ZygorTalentAdvisor_PlayerTalentFrameTalent_OnEvent(self, event, ...)
	if self:GetID() then
		-- whoa, original button! handle carefully.
		PlayerTalentFrameTalent_OnEvent(self, button)
		return
	end
	if ( GameTooltip:IsOwned(self) ) then
		GameTooltip:SetTalent(self.tab, self.talent, false, false, 1, GetCVarBool("previewTalents"))
	end
end

function ZygorTalentAdvisor_PlayerTalentFrameTalent_OnEnter(self)
	if self:GetID() and self:GetID()>0 then
		-- whoa, original button! handle carefully.
		PlayerTalentFrameTalent_OnEnter(self, button)
		return
	end
	GameTooltip:SetOwner(self, "ANCHOR_LEFT")
	GameTooltip:SetTalent(self.tab, self.talent, false, false, 1, GetCVarBool("previewTalents"))
end
--]]


---
-- @return nil
--
function ZTA:MarkBuildTaken(build,pet)
	if not build then return end
	for n=1,#build do build[n].taken=nil build[n].preview=nil end

	build.realfail=nil
	build.previewfail=nil
	for tab,talent in talentpairs(false,pet) do
		local name,_,_,_,realrank,maxrank,available,prevrank = GetTalentInfo(tab,talent,false,pet)
		if name then
			for i=1,prevrank do
				local found
				for n=1,#build do
					if build[n][1]==tab and build[n][2]==talent and not build[n].taken and not build[n].preview then
						--self:Debug(tab..","..talent.." ".."build#"..n.." "..((i>realrank)and"preview"or"taken"))
						if i>realrank then -- marking as prev-taken
							build[n].preview=true
						else
							build[n].taken=true
						end
						found=true
						break
					end
				end
				if not found then
					-- okay, we have a fuckup, but a real or a preview fuckup?
					if i<=realrank then
						build.realfail=true
					else
						build.previewfail=true
					end
					break
				end
			end
		end
		-- if build.realfail then break end    -- does this break red builds?
	end
	if build.realfail then build.previewfail=true end
end

function ZTA:GetBuildStatus(build,pet,preview)
	-- first, a diagnosis: can this be done at all?
	-- GREEN: we can proceed safely; player's current build is a direct start-based subset of the target build.
	-- YELLOW: we can proceed carefully; player's current build is a subset of the target build, but not start-based, but can be fixed in the remaining points.
	-- ORANGE: minor fuckup; player's current build is a non-start-based subset of the target build and can not be fixed in the remaining points.
	-- RED: major fuckup; player's current build is NOT a subset of the target build.

	local status={code="?",pointsleft=0,missed=0}

	-- To glean that, we need to remove player's current talents from the start of the target build plan, and see what that gives us.
	-- Or at least mark them as taken.

	if not pet then
		-- player, dualspec possible; bail out if the specs don't match
		local currentspec = GetPrimaryTalentTree() or GetPreviewPrimaryTalentTree()
		if currentspec and currentspec~=build.spec then
			local status = {code="BLACK",msg=L["status_black_differentspec"]:format(select(2,GetTalentTabInfo(build.spec)),select(2,GetTalentTabInfo(currentspec)))}
			return status
		end
	else
		-- pet! just check for pet type.
		local _,_,_,_,_,pettype = GetTalentTabInfo(1,false,pet)
		if pettype then pettype=pettype:upper():match("HUNTERPET(.+)") end
		if not pettype then
			local status = {code="BLACK",msg=L["status_black_nopet"]}
			return status
		end
		if pettype~=build.pettype then
			local status = {code="BLACK",msg=L["status_black_differentspec"]:format(build.pettype,pettype)}
			return status
		end
	end

	self:MarkBuildTaken(build,pet)

	local force
	if pet then force=ZGV.db.profile.zta_forcepetbuild else force=ZGV.db.profile.zta_forcebuild end

	if (preview and build.previewfail or build.realfail) and not force then
		--self:Debug("Code: RED. B0rked.")
		status.code="RED"
		return status -- if real status is RED, preview status doesn't matter
	end

	-- find the index of the last taken talent in the build plan
	-- this helps both the real and preview checks
	local last = 0
	for n=1,#build do
		if build[n]['taken'] then last=n end
		if preview and build[n]['preview'] then last=n end
	end

	-- Whew, it's not RED, so maybe it's GREEN?
	-- if that's equal to the number of the player's talents, we're GREEN. Unless we were RED already, screw it then.
	local spent = self:GetTalentsSpent(pet)+(preview and GetGroupPreviewTalentPointsSpent(pet) or 0)
	if spent==last then
		status.code="GREEN"
	else
		-- Okay, so it's either yellow or orange. Let's see in how many moves the player can reach the true path of enlightenment - that is, the proper build.
		-- Obviously they must've missed some talents and taken others - that's the number they must make up for.
		local pointsleft = GetUnspentTalentPoints(false,pet)-(preview and GetGroupPreviewTalentPointsSpent(pet) or 0)
		local missed=0
		for n=1,last do if not build[n].taken and not (preview and build[n].preview)  then missed=missed+1 end end
		--self:Debug("pointsleft",pointsleft)
		--self:Debug("missed",missed)
		if pointsleft>=missed then
			-- whew, safe.
			status.code="YELLOW" status.pointsleft=pointsleft status.missed=missed
		else
			-- oh, how sad
			status.code="ORANGE" status.pointsleft=pointsleft status.missed=missed
		end
	end

	if (preview and build.previewfail or build.realfail) and force then
		-- RED comes back
		status.code="RED"
	end

	return status
end

function QuickDumpStatusAndSuggestion(status,sug)
	local s=""
	s=s..(status and status.code or "?")
	if status and (status.code=="YELLOW" or status.code=="ORANGE") then s=s..(" (%d)"):format(status.pointsleft-status.missed) end
	if status and (status.code=="BLACK") then s=s..(" (%s)"):format(status.msg) end
	s=s..": "
	if sug then
		for i=1,#sug do s=s..sug[i].tab..","..sug[i].talent.."; " end
	else
		s=s.."none"
	end
	return s
end

function ZTA:UpdateSuggestions(pet)
	local preview = GetCVarBool("previewTalentsOption")
	local who=who(pet)

	local build = self.currentBuild[who]
	if not build then return nil end

	self:DebugPush("UpdateSuggestions("..who..")")

	self.suggestion[who],self.status[who]=self:MakeSuggestion(pet,false)
	self:Debug(who.."suggestion: "..QuickDumpStatusAndSuggestion(self.status[who],self.suggestion[who]))
	if preview then
		self.suggestion_preview[who],self.status_preview[who] = self:MakeSuggestion(pet,true)
		self:Debug(who.."suggestion_preview: "..QuickDumpStatusAndSuggestion(self.status_preview[who],self.suggestion_preview[who]))
	end

	if self.suggestion[who] and #self.suggestion[who]>0 then
		if LibTutorial then LibTutorial:ShowTutorial("ZTA3") end
	end
	self:DebugPop()
end

---
-- @return suggestion,status
function ZTA:MakeSuggestion(pet,preview)
	if not pet then pet=false end

	self:Debug("MakeSuggestion("..tostring(pet)..","..tostring(preview)..")")

	-- clear any old suggestions, for starters
	local suggestion={}
	
	if self:IsDisabled(pet) then
		local status = {code="BLACK",msg="disabled"}
		return {},status
	end

	local build = self.currentBuild[who(pet)]
	if not build then
--		local status = {code="BLACK",msg=L["status_black_broken"]:format(self.brokenmsg)}
		return {},self.status[who(pet)]
	end
	if #build<self:GetTalentsSpent(pet) then
		local status = {code="BLACK",msg=L["status_black_smallbuild"]:format(#build,self:GetTalentsSpent(pet))}
		return {},status
	end


	AddSuggestion = function (tab,talent,pet)
		suggestion[tab.."."..talent] = (suggestion[tab.."."..talent] or 0) + 1
		table.insert(suggestion,{tab=tab,talent=talent})
		--self:Debug(tab,talent)
	end

	local status = self:GetBuildStatus(build,pet,preview)

	if status.code=="BLACK" then return suggestion,status end

	if #build<self:GetTalentsSpent(pet) then
		-- somehow exceeded
		local status = {code="BLACK",msg=L["status_black_exceeded"]:format(#build,self:GetTalentsSpent(pet))}
		return {},status
	elseif #build==self.GetTalentsSpent(pet) then
		-- complete or altogether different
		local alltaken=true
		for i=1,#build do
			if not build[i].taken then alltaken=false break end
		end
		if alltaken then
			local status = {code="BLACK",msg=L["status_black_complete"]:format(#build,self:GetTalentsSpent(pet))}
			return {},status
		else
			local status = {code="BLACK",msg=L["status_black_different"]:format(#build,self:GetTalentsSpent(pet))}
			return {},status
		end
	end

	local force
	if pet then force=ZGV.db.profile.zta_forcepetbuild else force=ZGV.db.profile.zta_forcebuild end
	if status.code~="RED" or force then
		-- suggest away!
		local points = GetUnspentTalentPoints(false,pet)
		if preview then points=points-GetGroupPreviewTalentPointsSpent(pet) end
		for i=1,#build do
			if points==0 then break end
			local tab,talent = unpack(build[i])
			if not build[i].taken and not (preview and build[i].preview) then
				points=points-1
				AddSuggestion(tab,talent,pet)
			end
		end
	end

	return suggestion,status
end

function ZTA:IsOutOfOrder(pet)
	return pet and self.petOutOfOrder or self.outOfOrder
end

function ZTA:IsDisabled(pet)
	return (pet and self.petdisabled) or (not pet and self.disabled)
end

function ZTA:Hint(tab,talent,pet)
	local id,tabname = GetTalentTabInfo(tab,false,pet)
	local name,_,_,_,rank = GetTalentInfo(tab,talent,false,pet)
	
	ZGV:Print("Suggestion: Upgrade your "..(pet and "pet's " or "")..tabname.." talent '"..name.."'.")
end

function ZTA:GetTalentsSpent(pet)
	local tabs = GetNumTalentTabs(false,pet)
	local talentsSpent = 0
	for i=1, tabs do
		local id, name, desc, iconTexture, pointsSpent = GetTalentTabInfo(i,false,pet)
		talentsSpent = talentsSpent + pointsSpent
	end
	return talentsSpent
end


--- select a build. Determine if it's a pet build from the build itself.
function ZTA:SetCurrentBuild(key,pet)
	local builds = self.registeredBuilds

	self:DebugPush("SetCurrentBuild "..tostring(key)..","..tostring(pet))

	--[[
	if type(key)=="string" then
		for i,build in ipairs(builds) do
			if build.title==num then
				num=i
				break
			end
		end
		if type(num)=="string" then
			ZGV:Print("no such build name: "..num)
			num=0
		end
	end
	--]]

	local build = builds[key]

	if build then

		-- we have the build, let's check it.
		-- we could trust pruning for classes, but pet types change often.

		pet = build.pettype and true
		local _,myclass = UnitClass("player")
		local who = who(pet)

		self:Debug("build is "..tostring(build.title)..", pet="..tostring(build.pettype))

		self.status[who] = {code="?"}

		if (build.class and build.class~=myclass) then 
			self.status[who] = {code="BLACK",msg="wrong class, wtf?"}
			self:DebugPop()
			return nil
		end -- why wasn't it pruned with PruneRegisteredBuilds, anyway?


		-- check for pet build
		if pet then
			local id,pettype,_,_,_,pettype_en = GetTalentTabInfo(1,false,true) -- first (only) tab of the pet talents
			if pettype_en then local pettype_en2=pettype_en:upper():match("HUNTERPET(.+)") pettype_en=pettype_en2 or pettype_en end
			if not pettype then
				self:Debug("No pet")
				self.status[who] = {code="BLACK",msg=L['status_black_nopet']}
				build=nil
			elseif build.pettype~=pettype_en then
				local petname = UnitName("pet") or "Pet"
				self:Debug("Current pet is "..tostring(petname).." ("..tostring(pettype_en).."), wrong build pettype: "..tostring(build.pettype))
				self.status[who] = {code="BLACK",msg=L['status_black_badpet']:format(petname,L['opt_petbuild_'..(pettype_en or "?"):lower()])}
				build=nil
			end
		end

		--[[
		local localclass,class = UnitClass("player")
		if #builds==0 then
			ZGV:Print("No registered builds for "..localclass)
			return
		end
		if not builds[num] then
			ZGV:Print("No registered build number "..num.." for "..localclass)
			return
		end
		--]]

		
		-- okay, build seems to match us or the pet; let's parse it

		local data

		if build then

			data = build.build

			if self.status[who].code~="BLACK" then  -- nil-safe

				if type(data)=="string" then
					if (data:find("^%d+$")) then
						-- numbers; Blizzard format
						data = self:ParseBlizzardTalents(data,pet)
						if data then
							-- parsed? save.
							build.build=data
						else
							--builds[num].build=nil
							data=nil
							self.status[who] = {code="BLACK",msg=L['status_black_badblizzard']}
						end
					else
						-- text; text lines format
						data,msg = self:ParseTextTalents(data,pet)
						if data then
							-- parsed? save.
							self:Debug("Parsed")
							build.build=data
						else
							--builds[num].build=nil
							self:Debug("Boo!")
							data=nil
							self.status[who] = {code="BLACK",msg=L['status_black_brokenbuild']:format(msg)}
						end
					end
				elseif type(data)=="table" and type(data[1])=="string" then
					data,msg = self:ParseTableTalents(data,pet)
					if data then
						-- parsed? save.
						self:Debug("Parsed")
						build.build=data
					else
						--builds[num].build=nil
						self:Debug("Boo!")
						data=nil
						self.status[who] = {code="BLACK",msg=L['status_black_brokenbuild']:format(msg)}
					end
				end

			end

			if type(data)=="table" and type(data[1])=="table" then
				-- probably proper format, finally
				self:Debug("Data OK, cool")
				local _,maxcounts = self:CountBuildTalents(nil,data)
				for tab,talents in ipairs(maxcounts) do
					for talent,count in ipairs(talents) do
						local name,_,_,_,realrank,maxrank,available,rank = GetTalentInfo(tab,talent,false,pet)
						if name and maxrank<count then
							self.status[who] = {code="BLACK",msg=L['status_black_builderror']:format(count,name,maxrank)}
							break
						end
					end
				end
			end
		end

		self.currentBuild[who] = data
		self.currentBuildTitle[who] = data and build and build.title or nil

		if who=="player" then
			self.currentBuildGlyphs = build and build.glyphs and self:ParseLines(build.glyphs)
		end
	else
		local who = who(pet)
		self.status[who]={}
		self.status_preview[who]={}
		self.currentBuild[who] = nil
		self.currentBuildTitle[who] = nil
		if who=="player" then
			self.currentBuildGlyphs = nil
		end
	end

	if pet then  ZGV.db.char.currentPetBuildKey = key  else  ZGV.db.char.currentBuildKey = key  end

	self:UpdateSuggestions(pet)
	self:PlayTalented()

	self:DebugPop()
end

function ZTA:CountBuildTalents(num,build)
	local counts = {}
	local maxcounts = {}
	local zeroer = {__index = function(tab,key) return 0 end}

	if not build then error("Error: no build to CountBuildTalents") end
	if num and num>#build then num=#build end

	if num then
		for i=1,num do
			local tab,talent = build[i][1],build[i][2]
			if not counts[tab] then counts[tab]={} setmetatable(counts[tab],zeroer) end
			counts[tab][talent]=counts[tab][talent]+1
		end
	end
	for i=1,#build do
		local tab,talent = build[i][1],build[i][2]
		if not maxcounts[tab] then maxcounts[tab]={} setmetatable(maxcounts[tab],zeroer) end
		maxcounts[tab][talent]=maxcounts[tab][talent]+1
	end

	return counts,maxcounts
end

function ZTA:OpenOptions()
	ZGV:OpenOptions("zta")
end

function ZTA:SetOption(cmd)
	LibStub("AceConfigCmd-3.0").HandleCommand(self, "zta", "ZygorTalentAdvisor", cmd)
end


function ZTA:GetStatusMessage(pet,glyphs)
	if glyphs then
		local text,code = self:GetGlyphSuggestions()
		if code=="GREEN" then return L['statusglyph_green']
		elseif code=="YELLOW" then return L['statusglyph_yellow']
		elseif code=="ORANGE" then return L['statusglyph_orange']
		else return "wtf, report this"
		end
	end

	local who=who(pet)
	local status = self.status[who]
	if not status or not status.code then return "" end
	
	if status.code=="BLACK" then return status.msg
	elseif status.code=="RED" then
		--local _,maxcounts = self:CountBuildTalents(nil,build)
		--local maxcount = maxcounts[tab] and maxcounts[tab][talent] or 0
		local force
		if pet then force=ZGV.db.profile.zta_forcepetbuild else force=ZGV.db.profile.zta_forcebuild end
		if force then
			return L['status_red_forced']
		else
			return L['status_red']
		end
		-- ? L['status_red_forced']
	elseif status.code=="GREEN" then return L['status_green'..(pet and '_pet' or '')]
	elseif status.code=="YELLOW" then return L['status_yellow']:format(status.pointsleft-status.missed)
	elseif status.code=="ORANGE" then return L['status_orange']:format(status.missed-status.pointsleft)
	end
end



function ZTA:DumpTalents()
	if not self.dumpFrame then self:CreateDumpFrame() end

	HideUIPanel(InterfaceOptionsFrame)

	local tostr = function(val)
		if type(val)=="string" then
			return '"'..val..'"'
		elseif type(val)=="number" then
			return tostring(val)
		elseif not val then
			return "nil"
		elseif type(val)=="boolean" then
			return tostring(val).." ["..type(val).."]"
		end
	end
	local s = ""

	s = "Zygor Talent Advisor v"..self.version.."\n"

	local dumpTalents = function(pet)
		for tab=1,GetNumTalentTabs(false,pet) do
			s=s..("%d. %s:\n"):format(tab,tostring(select(2,GetTalentTabInfo(tab,false,pet))))
			for talent=1,GetNumTalents(tab,false,pet) do
				local name,_,_,_,realrank,maxrank,available,rank = GetTalentInfo(tab,talent,false,pet)
				if rank>0 then
					s=s..("  %d.%d: %s (%d/%d)"):format(tab,talent,name,realrank,maxrank)
					if rank~=realrank then s=s..(" +%d"):format(rank) end
					s=s.."\n"
				end
			end
		end
	end

	local dumpBuild = function(build,pet)
		if not build then return end
		for i=1,#build do
			local name = GetTalentInfo(build[i][1],build[i][2],false,pet)
			s=s..("%d: %d.%d [%s] %s %s|n"):format(i,build[i][1],build[i][2],name or "?",build[i].taken and " (taken)" or "",build[i].preview and " (previewed)" or "")
		end
	end

	local dumpSuggestion = function(sug,pet)
		if not sug then return end
		for i=1,#sug do
			local name = GetTalentInfo(sug[i].tab,sug[i].talent,false,pet)
			s=s..("%d: %d.%d [%s] (total:%d)|n"):format(i, sug[i].tab,sug[i].talent, name or "?", sug[sug[i].tab.."."..sug[i].talent])
		end
	end

	local DoDump = function (pet)
		local who=who(pet)
		s=s.."\nCurrent talents: \n"
		dumpTalents(pet)

		if self.currentBuildNum[who] then
			s=s.."\nCurrent build: "..(self.currentBuildTitle[who]).."|n"
			dumpBuild(self.currentBuild[who],pet)
			s=s.."\nStatus: \n"
			for k,v in pairs(self.status[who]) do
				s=s.."\n   "..k.." = "..tostring(v)
			end
			s=s.."\n"
			if GetCVarBool("previewTalentsOption") then
				s=s.."\nStatus_preview: \n"
				for k,v in pairs(self.status_preview[who]) do
					s=s.."\n   "..k.." = "..tostring(v)
				end
				s=s.."\n"
			end
		end

		s=s.."\nSuggestion: \n"
		dumpSuggestion(self.suggestion[who])

		s=s..("\nTalents left: %d\n"):format(GetUnspentTalentPoints(pet))
	end
	
	DoDump(false)
	
	if self.petsupport then
		s=s.."\n--- PET ---\n"
		DoDump(true)
	end

	s = s .. "\nLog:\n"
	s = s .. self.Log:Dump(100)

	self.dumpFrame.editBox:SetText(s)
	--local title = self.CurrentGuideName or L["report_notitle"]
	--local author = self.CurrentGuide.author or L["report_noauthor"]
	--self.dumpFrame.title:SetText(L["report_title"]:format(title,author))
	ShowUIPanel(self.dumpFrame)
	self.dumpFrame.editBox:HighlightText(0)
	self.dumpFrame.editBox:SetFocus(true)
end

function ZTA:DumpVal(val,lev,maxlev,nofun)
	if lev>maxlev then return ("...") end
	local s = ""
	if type(val)=="string" then
		s = ('"%s"'):format(val)
	elseif type(val)=="number" then
		s = ("%s"):format(tostring(val))
	elseif type(val)=="function" then
		s = ("")
	elseif type(val)=="table" then
		s = "\n"
		for k,v in pairs(val) do
			if k~="parentStep"
			then
				if type(v)~="function" then
					s = s .. ("   "):rep(lev) .. ("%s=%s"):format(k,self:DumpVal(v,lev+1,maxlev,nofun))
				elseif not nofun then
					s = s .. ("   "):rep(lev) .. ("%s(function)\n"):format(k)
				end
			end
		end
	end

	return s.."\n"
end

function ZTA:CreateDumpFrame()
	local name = "ZygorTalentAdvisor_DumpFrame"

	local frame = CreateFrame("Frame", name, UIParent)
	self.dumpFrame = frame
	frame:SetBackdrop({
	bgFile = [[Interface\DialogFrame\UI-DialogBox-Background]],
	edgeFile = [[Interface\DialogFrame\UI-DialogBox-Border]],
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 3, right = 3, top = 5, bottom = 3 }
	})
	frame:SetBackdropColor(0,0,0,1)
	frame:SetWidth(500)
	frame:SetHeight(400)
	frame:SetPoint("CENTER", UIParent, "CENTER")
	frame:Hide()
	frame:SetFrameStrata("DIALOG")
	tinsert(UISpecialFrames, name)
	
	local scrollArea = CreateFrame("ScrollFrame", name.."Scroll", frame, "UIPanelScrollFrameTemplate")
	scrollArea:SetPoint("TOPLEFT", frame, "TOPLEFT", 8, -50)
	scrollArea:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -30, 8)

	local editBox = CreateFrame("EditBox", nil, frame)
	editBox:SetMultiLine(true)
	editBox:SetMaxLetters(99999)
	editBox:EnableMouse(true)
	editBox:SetAutoFocus(false)
	editBox:SetFontObject(ChatFontSmall)
	editBox:SetWidth(400)
	editBox:SetHeight(270)
	editBox:SetScript("OnEscapePressed", function() frame:Hide() end)
	self.dumpFrame.editBox = editBox
	
	scrollArea:SetScrollChild(editBox)
	
	local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
	close:SetPoint("TOPRIGHT", frame, "TOPRIGHT")

	local title = frame:CreateFontString(nil,"OVERLAY","GameFontNormalSmall")
	self.dumpFrame.title = title
	title:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -10)
	title:SetPoint("BOTTOMRIGHT", frame, "TOPRIGHT", -30, -45)
	title:SetJustifyH("CENTER")
	title:SetJustifyV("TOP")

end

local GameTooltipSetTalent = GameTooltip.SetTalent
function ZygorTalentAdvisor_GameTooltipSetTalent(self,tab,talent,inspect,pet,group,preview)
	GameTooltipSetTalent(self,tab,talent,inspect,pet,group,preview)
	if not inspect then
		local who=who(pet)
		local build=ZTA.currentBuild[who]
		if build and ZTA.status[who] and ZTA.status[who].code and ZTA.status[who].code~="BLACK" then
			local count,maxcount = ZTA:CountBuildTalents(nil,build,pet)
			local rank = (maxcount and maxcount[tab]) and tonumber(maxcount[tab][talent]) or 0
			local color=""
			if maxcount[tab] and tonumber(maxcount[tab][talent])>0 then color="|cff00ff00" else color="|cffff0000" end
			GameTooltip:AddLine(L['talenttooltip']:format(ZTA.currentBuildTitle[who],color,(tonumber(maxcount[tab] and maxcount[tab][talent]) or 0)),1,1,1)
			GameTooltip:Show()
		end
	end
end
GameTooltip.SetTalent = ZygorTalentAdvisor_GameTooltipSetTalent


function ZTA:Debug (s)
	if self.debugstack then s=strrep("|  ",self.debugstack)..s end
	self.Log:Add(s)
	if self and ZGV.db and ZGV.db.profile and ZGV.db.profile.debug then
		self.DebugI = (self.DebugI or 0) + 1
		ZGV:Debug('|cffaaaaaa#' .. self.DebugI .. ': ' .. tostring(s))
	end
end

function ZTA:DebugPush (s)
	self:Debug("> "..(s or ""))
	if not self.debugstack then self.debugstack=1 else self.debugstack = self.debugstack+1 end
end

function ZTA:DebugPop (s)
	if not self.debugstack then self.debugstack=0 else self.debugstack = self.debugstack-1 end
	self:Debug("< "..(s or ""))
end

do
	local Log = {}

	ZTA.Log = Log

	Log.entries = {}
	Log.size = 100
	Log.loud = false

	function Log:SetSize(size)
		self.size = size
		self:Trim()
	end

	function Log:Trim()
		local len = #self.entries
		if len>self.size then
			for i=1,len-self.size,1 do
				table.remove(self.entries,1)
			end
		end
	end

	function Log:Add(s)
		table.insert(self.entries,date("%H:%M:%S").."> "..s)
		if #self.entries>self.size then
			table.remove(self.entries,1)
		end
		if self.loud then
			ChatFrame1:AddMessage("|cff8888ff"..date("%H:%M:%S")..">|r |cffccccff"..s.."|r")
		end
	end

	function Log:Print(n)
		local len = #self.entries
		if not n or n>len then n=len end
		for i=len-n+1,len,1 do
			ChatFrame1:AddMessage(self.entries[i])
		end
	end

	function Log:Dump(n)
		local s = ""
		local len = #self.entries
		if not n or n>len then n=len end
		for i=len-n+1,len,1 do
			s = s .. self.entries[i] .. "\n"
		end
		return s
	end
end

function ZTA:IsBuildSelected()
	if ZGV.db.char.currentBuildKey ~= nil and ZGV.db.char.currentBuildKey ~= 99 then
		return true
	end
end

tinsert(ZGV.startups,{"Talent Advisor",function(self)
	ZTA:Initialize()
end})
