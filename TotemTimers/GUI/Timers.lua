if select(2, UnitClass("player")) ~= "SHAMAN" then
    return
end

local _, TotemTimers = ...

local L = LibStub("AceLocale-3.0"):GetLocale("TotemTimers_GUI", true)

local ElementValues = {
    [EARTH_TOTEM_SLOT] = L["Earth"],
    [FIRE_TOTEM_SLOT] = L["Fire"],
    [WATER_TOTEM_SLOT] = L["Water"],
    [AIR_TOTEM_SLOT] = L["Air"],
}

local function SetOrder(nr, value)
    local fromnr = 0;
    for i = 1, 4 do
        if TotemTimers.ActiveProfile.Order[i] == value then
            fromnr = i
        end
    end
    TotemTimers.ActiveProfile.Order[fromnr] = TotemTimers.ActiveProfile.Order[nr]
    TotemTimers.ActiveProfile.Order[nr] = value
    TotemTimers.ProcessSetting("Order")
    TotemTimers.UpdateMacro()
end

local SpellIDs = TotemTimers.SpellIDs
local SpellNames = TotemTimers.SpellNames

TotemTimers.options.args.timers = {
    type = "group",
    name = L["Timers"],
    args = {
        show = {
            order = 0,
            type = "toggle",
            name = L["Enable"],
            desc = L["Enables the four totem timer buttons and menus"],
            set = function(info, val)
                TotemTimers.ActiveProfile.Show = val
                TotemTimers.ProcessSetting("Show")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.Show
            end,
        },
        clickthrough = {
            order = 1,
            type = "toggle",
            name = L["Clickthrough"],
            desc = L["Clickthrough Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.Timer_Clickthrough = val
                TotemTimers.ProcessSetting("Timer_Clickthrough")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.Timer_Clickthrough
            end,
        },
        h1 = {
            order = 10,
            type = "header",
            name = L['Positioning'],
        },
        timer1 = {
            order = 11,
            type = "select",
            name = L["Timer Button 1"],
            width = 0.75,
            values = ElementValues,
            set = function(info, val)
                SetOrder(1, val)
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.Order[1]
            end,
        },
        timer2 = {
            order = 12,
            type = "select",
            name = L["Timer Button 2"],
            width = 0.75,
            values = ElementValues,
            set = function(info, val)
                SetOrder(2, val)
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.Order[2]
            end,
        },
        timer3 = {
            order = 13,
            type = "select",
            name = L["Timer Button 3"],
            width = 0.75,
            values = ElementValues,
            set = function(info, val)
                SetOrder(3, val)
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.Order[3]
            end,
        },
        timer4 = {
            order = 14,
            type = "select",
            name = L["Timer Button 4"],
            width = 0.75,
            values = ElementValues,
            set = function(info, val)
                SetOrder(4, val)
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.Order[4]
            end,
        },
        arrange = {
            order = 15,
            type = "select",
            name = L["Arrangement"],
            desc = L["Basic layout of the four timer buttons, loose lets you move them individually"],
            values = { vertical = L["vertical"], horizontal = L["horizontal"],
                       box = L["box"], free = L["loose"], },
            set = function(info, val)
                TotemTimers.ActiveProfile.Arrange = val
                if not TotemTimers.ActiveProfile.MenusAlwaysVisible then
                    if val ~= "free" then
                        TotemTimers.ActiveProfile.CastBarDirection = "auto"
                    else
                        TotemTimers.ActiveProfile.CastBarDirection = "right"
                    end
                end
                TotemTimers.OrderTimers()
                for i = 1, 4 do
                    XiTimers.timers[i]:SetTimerBarPos(XiTimers.timers[i].timerBarPos, true)
                end
                TotemTimers.PositionCastButtons()
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.Arrange
            end,
        },
        --[[ time = {
            order = 8,
            type = "select",
            name = L["Time Style"],
            desc = L["Sets the format in which times are displayed"],
            values = {["mm:ss"] = "mm:ss", blizz = L["Blizz Style"], },
            set = function(info, val)
                        TotemTimers.ActiveProfile.TimeStyle = val  TotemTimers.ProcessSetting("TimeStyle")
                        TotemTimers.ActiveProfile.TimeStyle = val  TotemTimers.ProcessSetting("TimeStyle")
                  end,
            get = function(info) return TotemTimers.ActiveProfile.TimeStyle end,
        },]]
        timepos = {
            order = 17,
            type = "select",
            name = L["Timer Bar Position"],
            desc = L["Timer Bar Position Desc"],
            values = { ["LEFT"] = L["Left"], ["RIGHT"] = L["Right"], ["TOP"] = L["Top"], ["BOTTOM"] = L["Bottom"], },
            set = function(info, val)
                TotemTimers.ActiveProfile.TimerTimePos = val
                TotemTimers.ProcessSetting("TimerTimePos")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.TimerTimePos
            end,
        },
        menudirection = {
            order = 18,
            type = "select",
            name = L["Totem menu direction"],
            desc = L["Totem menu direction desc"],
            values = function()
                if TotemTimers.ActiveProfile.Arrange == "horizontal" then
                    return { auto = L["Automatic"], up = L["Up"], down = L["Down"], }
                elseif TotemTimers.ActiveProfile.Arrange == "vertical" or TotemTimers.ActiveProfile.Arrange == "box" then
                    return { auto = L["Automatic"], left = L["Left"], right = L["Right"], }
                else
                    return { auto = L["Automatic"], left = L["Left"], right = L["Right"], up = L["Up"], down = L["Down"], }
                end
            end,
            set = function(info, val)
                TotemTimers.ActiveProfile.CastBarDirection = val
                TotemTimers.PositionCastButtons()
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.CastBarDirection
            end,
        },
        sizes = {
            order = 20,
            type = "header",
            name = L["Scaling"],
        },
        timerSize = {
            order = 21,
            type = "range",
            name = L["Button Size"],
            desc = L["Scales the timer buttons"],
            min = 16,
            max = 96,
            step = 1,
            bigStep = 2,
            set = function(info, val)
                TotemTimers.ActiveProfile.TimerSize = val
                TotemTimers.ProcessSetting("TimerSize")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.TimerSize
            end,
        },
        timerTimeHeight = {
            order = 22,
            type = "range",
            name = L["Time Size"],
            desc = L["Sets the font size of time strings"],
            min = 6,
            max = 40,
            step = 1,
            set = function(info, val)
                TotemTimers.ActiveProfile.TimerTimeHeight = val
                TotemTimers.ProcessSetting("TimerTimeHeight")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.TimerTimeHeight
            end,
        },
        spacing = {
            order = 23,
            type = "range",
            name = L["Spacing"],
            desc = L["Sets the space between timer buttons"],
            min = -2,
            max = 20,
            step = 1,
            set = function(info, val)
                TotemTimers.ActiveProfile.TimerSpacing = val
                TotemTimers.ProcessSetting("TimerSpacing")
                TotemTimers.OrderTimers()
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.TimerSpacing
            end,
        },
        timeSpacing = {
            order = 24,
            type = "range",
            name = L["Time Spacing"],
            desc = L["Sets the space between timer buttons and timer bars"],
            min = 0,
            max = 20,
            step = 1,
            set = function(info, val)
                TotemTimers.ActiveProfile.TimerTimeSpacing = val
                TotemTimers.ProcessSetting("TimerTimeSpacing")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.TimerTimeSpacing
            end,
        },
        timerBarWidth = {
            order = 25,
            type = "range",
            name = L["Timer Bar Width"],
            desc = L["Timer Bar Width Desc"],
            min = 36,
            max = 300,
            step = 4,
            set = function(info, val)
                TotemTimers.ActiveProfile.TotemTimerBarWidth = val
                TotemTimers.ProcessSetting("TotemTimerBarWidth")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.TotemTimerBarWidth
            end,
        },
        TotemMenuSpacing = {
            order = 26,
            type = "range",
            name = L["Totem Menu Spacing"],
            desc = L["Totem Menu Spacing Desc"],
            min = 0,
            max = 40,
            step = 1,
            set = function(info, val)
                TotemTimers.ActiveProfile.TotemMenuSpacing = val
                for i = 1, 4 do
                    TTActionBars.bars[i]:SetDirection(TTActionBars.bars[i].direction, TTActionBars.bars[i].parentdirection)
                end
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.TotemMenuSpacing
            end,
        },
        advanced = {
            order = 30,
            type = "header",
            name = L["Advanced Options"],
        },
        openright = {
            order = 31,
            type = "toggle",
            name = L["Open On Rightclick"],
            desc = L["Rightclick Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.OpenOnRightclick = val
                TotemTimers.ProcessSetting("OpenOnRightclick")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.OpenOnRightclick
            end,
        },
        alwaysopen = {
            order = 32,
            type = "toggle",
            name = L["Totem Menus Always Visible"],
            desc = L["Always Visible Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.MenusAlwaysVisible = val
                TotemTimers.ProcessSetting("OpenOnRightclick")
                TotemTimers.ProcessSetting("MenusAlwaysVisible")
                TotemTimers.ProcessSetting("BarBindings")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.MenusAlwaysVisible
            end,
        },
        keybinds = {
            order = 33,
            type = "toggle",
            name = L["Totem Menu Key Bindings"],
            desc = L["Keybindings desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.BarBindings = val
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.BarBindings
            end,
        },
        reversekeybinds = {
            order = 34,
            type = "toggle",
            name = L["Reverse Key Bindings"],
            desc = L["Reverse Key Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.ReverseBarBindings = val
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.ReverseBarBindings
            end,
        },
        miniicons = {
            order = 35,
            type = "toggle",
            name = L["Show Mini Icons"],
            desc = L["Mini Icons Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.MiniIcons = val
                TotemTimers.ProcessSetting("MiniIcons")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.MiniIcons
            end,
        },
        procflash = {
            order = 36,
            type = "toggle",
            name = L["Enable Pulse Bar"],
            desc = L["Pulse desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.ProcFlash = val
                TotemTimers.ProcessSetting("ProcFlash")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.ProcFlash
            end,
        },
        ColorTimerBars = {
            order = 37,
            type = "toggle",
            name = L["Color Timer Bars"],
            desc = L["Color Timer Bars according to their elements."],
            set = function(info, val)
                TotemTimers.ActiveProfile.ColorTimerBars = val
                TotemTimers.ProcessSetting("ColorTimerBars")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.ColorTimerBars
            end,
        },
        ShowCooldowns = {
            order = 38,
            type = "toggle",
            name = L["Show Totem Cooldowns"],
            desc = L["Totem Cooldowns desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.ShowCooldowns = val
                TotemTimers.ProcessSetting("ShowCooldowns")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.ShowCooldowns
            end,
        },
        PlayerRange = {
            order = 39,
            type = "toggle",
            name = L["Player Range"],
            desc = L["Player Range Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.CheckPlayerRange = val
                TotemTimers.ProcessSetting("CheckPlayerRange")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.CheckPlayerRange
            end,
        },
        PartyRange = {
            order = 40,
            type = "toggle",
            name = L["Party Range"],
            desc = L["Party Range Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.CheckRaidRange = val
                TotemTimers.ProcessSetting("CheckRaidRange")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.CheckRaidRange
            end,
        },
        PartyRangePosition = {
            order = 41,
            type = "select",
            name = L["Party Range Position"],
            desc = L["Party Range Position Desc"],
            values = { ["LEFT"] = L["Left"], ["RIGHT"] = L["Right"], ["TOP"] = L["Top"], ["BOTTOM"] = L["Bottom"], },
            set = function(info, val)
                TotemTimers.ActiveProfile.PartyRangePosition = val
                TotemTimers.ProcessSetting("PartyRangePosition")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.PartyRangePosition
            end,
        },
        --[[ RaidRange = {
            order = 40,
            type = "toggle",
            name = L["Raid Member Range"],
            desc = L["Range Desc"],
            set = function(info, val) TotemTimers.ActiveProfile.CheckRaidRange = val  TotemTimers.ProcessSetting("CheckRaidRange") end,
            get = function(info) return TotemTimers.ActiveProfile.CheckRaidRange end,
        },
        RaidRangeTooltip = {
            order = 41,
            type = "toggle",
            name = L["Raid Range Tooltip"],
            desc = L["RR Tooltip Desc"],
            set = function(info, val) TotemTimers.ActiveProfile.ShowRaidRangeTooltip = val  TotemTimers.ProcessSetting("ShowRaidRangeTooltip") end,
            get = function(info) return TotemTimers.ActiveProfile.ShowRaidRangeTooltip end,
        }, ]]
        stoppulseheader = {
            order = 50,
            type = "header",
            name = L["Stop Pulse"],
        },
        stoppulse = {
            order = 51,
            type = "toggle",
            name = L["Stop Pulse Animation"],
            desc = L["Stop Pulse Desc"],
            set = function(info, val)
                TotemTimers.ActiveProfile.StopPulse = val
                TotemTimers.ProcessSetting("StopPulse")
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.StopPulse
            end,
        },
        stoppulsedemo = {
            order = 52,
            type = "execute",
            name = L["Demo"],
            func = function()
                XiTimers.timers[1].animation:SetTexture(XiTimers.timers[1].button.icons[1]:GetTexture())
                XiTimers.timers[1].animation:Play()
            end
        },
        macro = {
            order = 60,
            type = "header",
            name = L["Macro"],
        },
        macroreset = {
            order = 65,
            type = "range",
            name = L["Reset"],
            desc = L["Reset /castsequence after x seconds"],
            min = 10,
            max = 60,
            step = 5,
            set = function(info, val)
                TotemTimers.ActiveProfile.MacroReset = val
                TotemTimers.UpdateMacro()
            end,
            get = function(info)
                return TotemTimers.ActiveProfile.MacroReset
            end,
        },
    },
}

for i = 1, 4 do
    TotemTimers.options.args.timers.args['macro' .. i] = {
        order = 60 + i,
        type = "toggle",
        name = ElementValues[i],
        arg = i,
        width = 0.8,
        set = function(info, val)
            TotemTimers.ActiveProfile.IncludeInMacro[info.arg] = val
            TotemTimers.UpdateMacro()
        end,
        get = function(info)
            return TotemTimers.ActiveProfile.IncludeInMacro[info.arg]
        end,
    }
end

if LE_EXPANSION_LEVEL_CURRENT < LE_EXPANSION_WRATH_OF_THE_LICH_KING then
    TotemTimers.options.args.timers.args.TwistingTimer = {
        order = 42,
        type = "toggle",
        name = L["Twisting Timer"],
        desc = string.format(L["Shows twisting timer for %s"], SpellNames[SpellIDs.Windfury]),
        set = function(info, val)
            TotemTimers.ActiveProfile.TwistingTimer = val
            TotemTimers.ProcessSetting("TwistingTimer")
        end,
        get = function(info)
            return TotemTimers.ActiveProfile.TwistingTimer
        end,
    }
    TotemTimers.options.args.timers.args.WindfuryDownrank = {
        order = 43,
        type = "toggle",
        name = string.format(L["Downrank %s"], SpellNames[SpellIDs.Windfury]),
        desc = string.format(L["Always use rank 1 for %s"], SpellNames[SpellIDs.Windfury]),
        set = function(info, val)
            TotemTimers.ActiveProfile.WindfuryDownrank = val
            TotemTimers.UpdateSpellRanks()
        end,
        get = function(info)
            return TotemTimers.ActiveProfile.WindfuryDownrank
        end,
    }
end

if LE_EXPANSION_LEVEL_CURRENT > LE_EXPANSION_BURNING_CRUSADE and LE_EXPANSION_LEVEL_CURRENT < LE_EXPANSION_MISTS_OF_PANDARIA then
    TotemTimers.options.args.timers.args.h0 = {
        order = 5,
        type = "header",
        name = L["Multicast"],
    }

    TotemTimers.options.args.timers.args.multispell = {
        order = 6,
        type = "toggle",
        name = L["Multicast"],
        desc = L["Enables button and functionality for Call of Elements etc."],
        set = function(info, val)
            print(L["TotemTimers: You might need to relog for the default totem bar to show/hide correctly"])
            TotemTimers.ActiveProfile.MultiCast = val
            TotemTimers.ProcessSetting("MultiCast")
        end,
        get = function(info)
            return TotemTimers.ActiveProfile.MultiCast
        end,
    }

    TotemTimers.options.args.timers.args.hidemultispell = {
        order = 7,
        type = "toggle",
        name = L["Hide Multicast Button"],
        desc = L["Hides multicast button for switching sets. Totems are still assigned to Call of Elements if Multicast option is enabled"],
        set = function(info, val)
            TotemTimers.ActiveProfile.HideMultiCast = val
            TotemTimers.ProcessSetting("MultiCast")
        end,
        get = function(info)
            return TotemTimers.ActiveProfile.HideMultiCast
        end,
    }


end

local ACD = LibStub("AceConfigDialog-3.0")
local frame, categoryID = ACD:AddToBlizOptions("TotemTimers", L["Timers"], L["TotemTimers"], "timers")
TotemTimers.HookGUIFrame(frame, categoryID)

