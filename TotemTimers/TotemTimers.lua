--[[ Credits for localization go to
        Sayclub (koKR), StingerSoft (ruRU), a9012456 (zhTW),
        Sabre (zhCN), vanilla_snow (zhCN), tnt2ray (zhCN),
        Vante (esES), DonSlonik (ruRU), Оригинал (ruRU),
        natural_leaf (zhTW), ckeurk (frFR), oXid_FoX (frFR),
        Hemathio (ruRU), wowuicn (zhCN), laincat (zhTW),
        provirus111 (ruRU), lsjyzjl (zhCN), Rubapowa (esES),
        BNSSNB (zhTW), cebolaassassina (ptBR)
]]

if select(2,UnitClass("player")) ~= "SHAMAN" then return end

local addon, TotemTimers = ...

_G["TotemTimers"] = TotemTimers

TotemTimers.timers = XiTimers

TotemTimers.Modules = {}
TotemTimers.SpellUpdaters = {}

TotemTimers.ElementColors = {
    [FIRE_TOTEM_SLOT] = CreateColorFromHexString("FFFF7500"),
    [EARTH_TOTEM_SLOT] = CreateColorFromHexString("FFCBA57B"),
    [WATER_TOTEM_SLOT] = CreateColor(0.4,0.4,1), --CreateColorFromHexString("FF76c7f3"),
    [AIR_TOTEM_SLOT] = CreateColor(1,1,1),
}


local updateAfterCombat = false
local macroNeedsUpdate = false
local lastSpellsChanged = 0

local runes = {}

local function TotemTimers_OnEvent(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        TotemTimersFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")
        TotemTimers.SetupGlobals()
    elseif event == "PLAYER_REGEN_ENABLED" then
        --TotemTimers_ProcessQueue()
        if updateAfterCombat then
            TotemTimers.ChangedTalents(true)
            updateAfterCombat = false
        end
        if macroNeedsUpdate then
            TotemTimers.UpdateMacro()
        end
        --elseif event == "PLAYER_ALIVE" then
        -- TotemTimers.ProcessSetting("EnhanceCDs")
        --TotemTimers.options.args.enhancecds.args["2"].name = select(2,GetSpecializationInfo(2)) or "Enhancement"
        --TotemTimers.options.args.enhancecds.args["1"].name = select(2,GetSpecializationInfo(1)) or "Elemental"
        --TotemTimers.options.args.enhancecds.args["3"].name = select(2,GetSpecializationInfo(3)) or "Restoration"
        --[[elseif event == "CHARACTER_POINTS_CHANGED" then
            local nr = select(1,...)
            if nr > 1 then
                TotemTimers.ChangedTalents()
            elseif nr == -1 then
                TotemTimers.GetTalents()
            end]]
        --[[ elseif event == "PLAYER_TALENT_UPDATE" or event == "PLAYER_SPECIALIZATION_CHANGED" or event == "SPELLS_CHANGED" then
            if InCombatLockdown() then
                updateAfterCombat = true
            else
                TotemTimers.ChangedTalents()
            end --]]
    elseif event == "SPELLS_CHANGED" or event == "CHARACTER_POINTS_CHANGED" or event == "PLAYER_TALENT_UPDATE"
            or event == "LEARNED_SPELL_IN_TAB" or event == "RUNE_UPDATED" then

        if event == "SPELLS_CHANGED" and WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
            local spellsChangedDiff = GetTime() - lastSpellsChanged
            lastSpellsChanged = GetTime()
            if spellsChangedDiff > 0.9 and spellsChangedDiff < 1.1 then
                return
            end
        end

        if event == "RUNE_UPDATED" then
            local runesChanged = false
            for slot = 1, 17 do
                local rune = C_Engraving.GetRuneForEquipmentSlot(slot)
                if rune then rune = rune.itemEnchantmentID end
                if rune ~= runes[slot] then
                    runesChanged = true
                end
                runes[slot] = rune
            end
            if not runesChanged then return end
        end

        if InCombatLockdown() then
            updateAfterCombat = true
        else
            TotemTimers.ChangedTalents(true)
        end

    elseif event == "UPDATE_BINDINGS" then
        ClearOverrideBindings(TotemTimersFrame)
        TotemTimers.InitializeBindings()
    elseif event == "PLAYER_LOGOUT" then
        TotemTimers.SaveFramePositions()
    end
end

TotemTimersFrame:SetScript("OnEvent", TotemTimers_OnEvent)

function TotemTimers.SetupGlobals()
	if TotemTimers_IsSetUp then
		return
	end
	if select(2,UnitClass("player")) == "SHAMAN" then
        TotemTimers.GetSpecialization()
		TotemTimers.GetSpells()
        TotemTimers.GetTalents()
		TotemTimers.UpdateProfiles()
        TotemTimers.SelectActiveProfile()

        for _,initFunction in pairs(TotemTimers.Modules) do
            initFunction()
        end
        
        
        local sink = LibStub("LibSink-2.0")
        if sink then
            sink.SetSinkStorage(TotemTimers,TotemTimers_GlobalSettings.Sink)
        end
		--TotemTimers.CreateTimers()
		--TotemTimers.CreateTrackers()
        --TotemTimers.SetWeaponTrackerSpells()

        if TotemTimers.Init then
            for k,v in pairs(Init) do v() end
        end

        --TotemTimers.CreateEnhanceCDs()
        -- TotemTimers.CreateCrowdControl()
		-- TotemTimers.CreateLongCooldowns()
        
        TotemTimers.ProcessAllSettings()
        if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
            for slot = 1, 17 do
                local rune = C_Engraving.GetRuneForEquipmentSlot(slot)
                if rune then runes[slot] = rune.itemEnchantmentID end
            end
        end
        
		TotemTimers.OrderTimers()
		--TotemTimers_OrderTrackers()
		TotemTimersFrame:Show()
        
        TotemTimers.InitSetButtons()
		
	
		--set the slashcommand
		SLASH_TOTEMTIMERS1 = "/totemtimers";
		SLASH_TOTEMTIMERS2 = "/tt";
		SlashCmdList["TOTEMTIMERS"] = TotemTimers_Slash

		--TotemTimers_LastGUIPane = TotemTimers_GUI_General

        TotemTimers.InitializeBindings()
        -- hooksecurefunc("SaveBindings", function() ClearOverrideBindings(TotemTimersFrame) TotemTimers.InitializeBindings() end)
            
		local events = {
            "PLAYER_REGEN_ENABLED",
            "PLAYER_LOGOUT",
            "UPDATE_BINDINGS",
            "LEARNED_SPELL_IN_TAB",
            "CHARACTER_POINTS_CHANGED",
            "PLAYER_TALENT_UPDATE",
            "RUNE_UPDATED",
            --"SPELLS_CHANGED",
            --"PLAYER_SPECIALIZATION_CHANGED",
        }
        --if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then
            table.insert(events, "SPELLS_CHANGED")
        --end
        for _, event in pairs(events) do
            if C_EventUtils.IsEventValid(event) then TotemTimersFrame:RegisterEvent(event) end
        end

		TotemTimers.InitMasque()
		-- TotemTimers.RangeFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
        -- TotemTimers.RangeFrame:Show()
        TotemTimers.SetCastButtonSpells()

        XiTimers.invokeOOCFader()
        TotemTimersFrame:SetScript("OnUpdate", XiTimers.UpdateTimers)
		TotemTimersFrame:EnableMouse(false)
        XiTimers.InitWarnings(TotemTimers.ActiveProfile.Warnings)

        -- TotemTimers.LayoutCrowdControl()
        --TotemTimers.ApplySkin()
        XiTimers.SaveFramePositions = TotemTimers.SaveFramePositions
	else
		TotemTimersFrame:Hide()
	end
	TotemTimers.UpdateMacro()
	TotemTimers_IsSetUp = true
    --TotemTimersFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")
end

function TotemTimers_Slash()
	if InCombatLockdown() then
		DEFAULT_CHAT_FRAME:AddMessage("Can't open TT options in combat.")
		return
	end

    if Settings then
        -- wow10
        L = LibStub("AceLocale-3.0"):GetLocale("TotemTimers_GUI", true)
		Settings.OpenToCategory(L["TotemTimers"])
    else
        -- wow classic
        InterfaceAddOnsList_Update()
        InterfaceOptionsFrame_OpenToCategory(TotemTimers.LastGUIPanel)
    end
end


local function pairsByKeys (t, f)
      local a = {}
      for n in pairs(t) do table.insert(a, n) end
      table.sort(a, f)
      local i = 0      -- iterator variable
      local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
      end
      return iter
    end


local text

local function addVar(var, indent)
    local text = ""
    if type(var) == "table" then
        text = text.." {|n"
        for k,v in pairs(var) do
            for i=1,indent+4 do text = text.." " end
            text = text..'["'..k..'"] = '
            text = text..addVar(v, indent+4)
        end
        for i=1,indent do text = text.." " end
        text = text.."}|n"
    else
        text = text..tostring(var).."|n"
    end
    return text
end

local DebugText = ""

function TotemTimers.ResetDebug()
    DebugText = ""
end

function TotemTimers.AddDebug(text)
    DebugText = DebugText..text.."|n"
end

local AceGUI = LibStub('AceGUI-3.0')
local L = LibStub("AceLocale-3.0"):GetLocale("TotemTimers", true)
local debugframe = AceGUI:Create("Frame")
debugframe:Hide()
debugframe:SetTitle("TotemTimers Debug")
debugframe:SetStatusText(L["Ctrl-C to copy text"])
debugframe:SetLayout("Fill")
debugframe.editbox = AceGUI:Create("MultiLineEditBox")
debugframe.editbox:SetLabel(nil)
debugframe.editbox:DisableButton(true)
debugframe:AddChild(debugframe.editbox)


function TotemTimers.ShowDebug()
	local text = ""
    text = text .. DebugText .."|n"
	text = text.."Settings:|n"
	for k,v in pairsByKeys(TotemTimers.ActiveProfile) do
		text = text..'    ["'..k..'"] = '
        text = text .. addVar(v, 4)
	end
	text=text.."|n|n"
    text=text.."Available spells:|n"
	for k,v in pairsByKeys(TotemTimers.AvailableSpells) do
		text = text..'    ["'..k..'"] = '
        text = text..addVar(v, 4)
	end
	--[[text = "EnhanceCDs option: "..tostring(TotemTimers_Settings["EnhanceCDs"]).."|n"
	local name,_,_,_,rank = GetTalentInfo(2,28)
	text = text..tostring(name)..": "..tostring(rank).."|n"
    name,_,_,_,rank = GetTalentInfo(2,21)
	text = text..tostring(name)..": "..tostring(rank).."|n"
    name,_,_,_,rank = GetTalentInfo(2,23)
	text = text..tostring(name)..": "..tostring(rank).."|n"
	text = text.."SS-Timer: "..tostring(XiTimers.timers[9].active).."|n"
	text = text.."ES-Timer: "..tostring(XiTimers.timers[10].active).."|n"
	text = text.."LL-Timer: "..tostring(XiTimers.timers[11].active).."|n"
	text = text.."EC Pos: "
	local a,b,c,d,e = TotemTimers_EnhanceCDsFrame:GetPoint(1)
	if a then
		text=text..a.." "
		if b then text = text..b:GetName() else text = text.."nil " end
		text = text..tostring(c).." "..tostring(d).." "..tostring(e)
	end
	text=text.."|n"]]
	debugframe.editbox:SetText(text)
	debugframe.editbox:HighlightText()
	debugframe:Show()
end


local skin = false
local mask = nil

local DoubleIcons = {}

function TotemTimers.SetDoubleTexCoord(button, flash)
    if DoubleIcons[button] then
        button.icons[1]:ClearAllPoints()
        button.icons[1]:SetPoint("RIGHT", button, "CENTER")
        button.icons[2]:Show()
        if not skin then
            button.icons[1]:SetWidth(18)
            button.icons[1]:SetHeight(36)
            button.icons[2]:SetWidth(18)
            button.icons[2]:SetHeight(36)
            button.icons[1]:SetTexCoord(0,0.5,0,1)
            button.icons[2]:SetTexCoord(0.5,1,0,1)
            --[[if flash and button.flash then
                button.flash[1]:SetTexCoord(0,0.5,0,1)
                button.flash[1]:SetWidth(18)
                button.flash[1]:SetHeight(36)
                button.flash[1]:ClearAllPoints()
                button.flash[1]:SetPoint("RIGHT", button, "CENTER")
                button.flash[2]:SetTexCoord(0.5,1,0,1)
            end]]
        else
            local icon = XiTimers.timers[1].button.icons[1]
            --local flash = XiTimers.timers[1].button.flash[1]
			local width = icon:GetWidth() / 2
			--local height = icon:GetHeight() / 2
            button.icons[1]:SetWidth(width)
            button.icons[2]:SetWidth(width)
            --button.icons[1]:SetHeight(height)
            --button.icons[2]:SetHeight(height)
            local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = icon:GetTexCoord()
            button.icons[1]:SetTexCoord(ULx, ULy, LLx, LLy, URx/2, URy, LRx/2, LRy)
            button.icons[2]:SetTexCoord((1-ULx)/2, ULy, (1-LLx)/2, LLy, URx, URy, LRx, LRy)
            button.icons[2]:Show()
            --[[if flash and button.flash then
                button.flash[2]:SetTexture(button.flash[1]:GetTexture())
                button.flash[1]:SetTexCoord(0,0.5,0,1)
                button.flash[2]:SetTexCoord(0.5,1,0,1)
            end]]
        end
    else
        button.icons[1]:ClearAllPoints()
        button.icons[1]:SetPoint("CENTER", button, "CENTER")
        button.icons[2]:Hide()        
        if not skin then
            button.icons[1]:SetWidth(36)
            button.icons[1]:SetHeight(36)
            button.icons[1]:SetTexCoord(0,1,0,1)
            --[[if flash and button.flash then
                button.flash[1]:SetTexCoord(0,1,0,1)
            end ]]
        else
            local icon = XiTimers.timers[1].button.icons[1]
            button.icons[1]:SetWidth(icon:GetWidth())
            button.icons[1]:SetHeight(icon:GetHeight())
            local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = icon:GetTexCoord()
            button.icons[1]:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
            --[[if flash and button.flash then
                button.flash[1]:SetTexCoord(XiTimers.timers[1].button.flash[1]:GetTexCoord())
            end]]
        end
    end
end

function TotemTimers.SetDoubleTexture(button, isdouble, flash)
    if isdouble then
        DoubleIcons[button] = true
    else
        DoubleIcons[button] = nil
    end
    TotemTimers.SetDoubleTexCoord(button, flash)
end

function TotemTimers.ApplySkin(newSkin)
    skin = newSkin

    for k,v in pairs(DoubleIcons) do
        TotemTimers.SetDoubleTexCoord(k, k == XiTimers.timers[8].button)
    end

    if not skin then
        for i = 1, #XiTimers.timers do
            local normal = XiTimers.timers[i].button:GetNormalTexture()
            normal:SetTexture()
            normal:Hide()
        end
        for i = 1, #TTActionBars.bars do
            for b = 1, #TTActionBars.bars[i].buttons do
                local normal = TTActionBars.bars[i].buttons[b]:GetNormalTexture()
                normal:SetTexture()
                normal:Hide()
            end
        end
    end
end


function TotemTimers.SaveFramePositions()
    for k,v in pairs(TotemTimers.ActiveProfile.FramePositions) do
        if (_G[k]) then
            local pos = {_G[k]:GetPoint()}
            if not pos[1] then pos = nil end
            if pos[2] then pos[2] = pos[2]:GetName() end
            TotemTimers.ActiveProfile.FramePositions[k] = pos
        end
    end 
    for i = 1, #XiTimers.timers do
        local timer = XiTimers.timers[i]
        if timer.savePos and timer.button:GetNumPoints()>0 then
            local pos = {timer.button:GetPoint(1)}
            if not pos[1] then pos = nil
            elseif pos[2] then
                pos[2] = pos[2]:GetName()
            end
            TotemTimers.ActiveProfile.TimerPositions[timer.nr] = pos
        end
    end
end


local Sink = LibStub:GetLibrary("LibSink-2.0")
local L = LibStub("AceLocale-3.0"):GetLocale("TotemTimers")

function TotemTimers.ThrowWarning(wtype, object, icon)
    local warning = TotemTimers.ActiveProfile.Warnings[wtype]
    if warning and Sink then
        Sink:Pour(TotemTimers, warning, format(L[wtype],object),warning.r,warning.g,warning.b,
            nil,nil,nil,nil,nil,icon)        
    end
end

function TotemTimers.UpdateMacro()
    --if TotemTimers.Settings.Style == "buff" then return end
    if not InCombatLockdown() then
        macroNeedsUpdate = false
        local _, free = GetNumMacros()
        local nr = GetMacroIndexByName("TT Cast")
        if free==18 and nr==0 then return end
        local sequence = "#showtooltips\n/castsequence reset=combat/"..TotemTimers.ActiveProfile.MacroReset.." ";
        local timers = XiTimers.timers
        for i=1,4 do
            local timer = timers[i]
            if timer.active and TotemTimers.ActiveProfile.IncludeInMacro[timer.nr] then
                local spell = timer.button:GetAttribute("*spell1")

                if (tonumber(spell)) then
                    local spellName = GetSpellInfo(spell)
                    local rank = GetSpellSubtext(spell)
                    if rank then spellName = spellName .. '('..rank..')' end
                    spell = spellName
                end

                if spell then
                    sequence = sequence .. spell..", "
                end
            end
        end
        sequence = strsub(sequence, 1, strlen(sequence)-2)
        local nr = GetMacroIndexByName("TT Cast")
        if nr == 0 then
            CreateMacro("TT Cast", "INV_MISC_QUESTIONMARK", sequence, true)
        else
            EditMacro(nr, "TT Cast", nil, sequence)
        end
    else
        macroNeedsUpdate = true
    end
end
