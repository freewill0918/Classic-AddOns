local addonName, addonTable = ...

local ReforgeOne = addonTable.ReforgeOne
local GUI = addonTable.GUI
local GetThemeColor = addonTable.GetThemeColor
local ApplyTitlebarColor = addonTable.ApplyTitlebarColor
local TITLEBAR_COLOR = addonTable.TITLEBAR_COLOR

local FRAME_NAME = addonName .. "ExportImport"
local L = addonTable.L
local print = addonTable.print

local function AcquireAceGUI()
    local acquireLibrary = addonTable.AcquireLibrary
    if type(acquireLibrary) ~= "function" then
        if type(addonTable.ReportMissingLibrary) == "function" then
            addonTable.ReportMissingLibrary("AceGUI-3.0")
        end
        return nil
    end
    return acquireLibrary("AceGUI-3.0")
end

local function ThemeColor(name, fallbackR, fallbackG, fallbackB, fallbackA)
    if type(GetThemeColor) == "function" then
        return GetThemeColor(name, fallbackR, fallbackG, fallbackB, fallbackA)
    end

    return fallbackR or 1, fallbackG or 1, fallbackB or 1, fallbackA or 1
end

local function ApplyRegionColor(region, r, g, b, a)
    if not region then
        return
    end

    if region.SetColorTexture then
        region:SetColorTexture(r, g, b, a)
        return
    end

    if region.SetBackdropColor then
        region:SetBackdropColor(r, g, b, a)
        return
    end

    if region.GetObjectType and region:GetObjectType() == "Frame" then
        region._reforgeColorFill = region._reforgeColorFill or region:CreateTexture(nil, "BACKGROUND")
        region._reforgeColorFill:SetAllPoints()
        region._reforgeColorFill:SetColorTexture(r, g, b, a)
        return
    end

    if region.SetVertexColor then
        region:SetVertexColor(r, g, b, a)
    end
end

local function StyleAceGUIFrame(widget)
    if not widget then
        return
    end

    local frame = widget.frame
    if not frame then
        return
    end

    if BackdropTemplateMixin and not frame.SetBackdrop then
        Mixin(frame, BackdropTemplateMixin)
    end

    if frame.SetBackdrop then
        frame:SetBackdrop({
            bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true,
            tileSize = 16,
            edgeSize = 16,
            insets = { left = 4, right = 4, top = 22, bottom = 6 },
        })
        local bgR, bgG, bgB, bgA = ThemeColor("background", 0.06, 0.08, 0.12, 0.92)
        local borderR, borderG, borderB, borderA = ThemeColor("border", 0.22, 0.28, 0.38, 0.92)
        frame:SetBackdropColor(bgR, bgG, bgB, bgA)
        frame:SetBackdropBorderColor(borderR, borderG, borderB, borderA)
    end

    if frame.titlebg then
        frame.titlebg:ClearAllPoints()
        frame.titlebg:SetPoint("TOPLEFT", frame, "TOPLEFT", 3, -3)
        frame.titlebg:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -3, -3)
        frame.titlebg:SetHeight(20)
        if frame.titlebg.SetTexture then
            frame.titlebg:SetTexture("Interface\\Buttons\\WHITE8X8")
            frame.titlebg:SetTexCoord(0, 1, 0, 1)
        end
        if type(ApplyTitlebarColor) == "function" then
            ApplyTitlebarColor(frame.titlebg)
        else
            local fallbackR, fallbackG, fallbackB = 18 / 255, 17 / 255, 18 / 255
            if type(TITLEBAR_COLOR) == "table" then
                fallbackR = TITLEBAR_COLOR[1] or fallbackR
                fallbackG = TITLEBAR_COLOR[2] or fallbackG
                fallbackB = TITLEBAR_COLOR[3] or fallbackB
            end
            ApplyRegionColor(frame.titlebg, fallbackR, fallbackG, fallbackB, 1)
        end
    end

    if frame.accentLine then
        frame.accentLine:Hide()
        frame.accentLine:SetHeight(0.0001)
    end

    if widget.titletext then
        local titleR, titleG, titleB = ThemeColor("textPrimary", 0.94, 0.97, 1)
        widget.titletext:SetFontObject(GameFontNormal)
        widget.titletext:SetTextColor(titleR, titleG, titleB)
        widget.titletext:ClearAllPoints()
        widget.titletext:SetPoint("BOTTOMLEFT", frame.titlebg or frame, "BOTTOMLEFT", 12, 1)
        widget.titletext:SetJustifyH("LEFT")
    end

    if frame.statusbg then
        if frame.statusbg.SetTexture then
            frame.statusbg:SetTexture("Interface\\Buttons\\WHITE8X8")
            frame.statusbg:SetTexCoord(0, 1, 0, 1)
        end
        local statusR, statusG, statusB, statusA = ThemeColor("inactiveHeaderBackground", 0.05, 0.09, 0.13, 0.85)
        ApplyRegionColor(frame.statusbg, statusR, statusG, statusB, statusA)
    end

    if widget.statustext then
        local statusTextR, statusTextG, statusTextB = ThemeColor("textMuted", 0.75, 0.82, 0.92)
        widget.statustext:SetTextColor(statusTextR, statusTextG, statusTextB)
    end

    if not frame.contentBackground and frame.content then
        frame.contentBackground = frame:CreateTexture(nil, "BACKGROUND", nil, -1)
        frame.contentBackground:SetPoint("TOPLEFT", frame.content, "TOPLEFT", -6, 6)
        frame.contentBackground:SetPoint("BOTTOMRIGHT", frame.content, "BOTTOMRIGHT", 6, -6)
    end

    if frame.contentBackground then
        local panelR, panelG, panelB, panelA = ThemeColor("panelBackground", 0.06, 0.08, 0.12, 0.9)
        ApplyRegionColor(frame.contentBackground, panelR, panelG, panelB, panelA)
    end

    if widget.closebutton then
        widget.closebutton:SetSize(24, 24)
    end
end

local function StyleMultiLineEditBox(widget)
    if not widget then
        return
    end

    local controlR, controlG, controlB, controlA = ThemeColor("controlBackground", 0.17, 0.21, 0.29, 0.95)
    local borderR, borderG, borderB, borderA = ThemeColor("controlBorder", 0.3, 0.38, 0.5, 0.9)
    local accentR, accentG, accentB, accentA = ThemeColor("accent", 0.02, 0.72, 0.86, 1)
    local highlightR, highlightG, highlightB, highlightA = ThemeColor("highlight", 0.02, 0.58, 0.72, 0.35)
    local textPrimaryR, textPrimaryG, textPrimaryB = ThemeColor("textPrimary", 0.94, 0.97, 1)
    local textMutedR, textMutedG, textMutedB = ThemeColor("textMuted", 0.75, 0.82, 0.92)

    if widget.scrollBG then
        ApplyRegionColor(widget.scrollBG, controlR, controlG, controlB, controlA)
    end

    if widget.editBox then
        widget.editBox:SetFontObject(GameFontHighlightSmall)
        widget.editBox:SetTextColor(textPrimaryR, textPrimaryG, textPrimaryB)
        widget.editBox:SetSpacing(2)
    end

    if widget.label then
        widget.label:SetTextColor(textMutedR, textMutedG, textMutedB)
    end

    if widget.button and GUI and GUI.ApplyPanelButtonTheme then
        GUI.ApplyPanelButtonTheme(widget.button)
    end

    if widget.frame and widget.scrollBG and not widget._reforgeStyled then
        widget._reforgeStyled = true
        widget._reforgeBorder = widget.frame:CreateTexture(nil, "BORDER", nil, -5)
        widget._reforgeBorder:SetPoint("TOPLEFT", widget.scrollBG, "TOPLEFT", -2, 2)
        widget._reforgeBorder:SetPoint("BOTTOMRIGHT", widget.scrollBG, "BOTTOMRIGHT", 2, -2)

        widget._reforgeHover = widget.frame:CreateTexture(nil, "BORDER", nil, -4)
        widget._reforgeHover:SetPoint("TOPLEFT", widget.scrollBG, "TOPLEFT", -2, 2)
        widget._reforgeHover:SetPoint("BOTTOMRIGHT", widget.scrollBG, "BOTTOMRIGHT", 2, -2)
        widget._reforgeHover:Hide()

        widget._reforgeFocus = widget.frame:CreateTexture(nil, "BORDER", nil, -3)
        widget._reforgeFocus:SetPoint("TOPLEFT", widget.scrollBG, "TOPLEFT", -2, 2)
        widget._reforgeFocus:SetPoint("BOTTOMRIGHT", widget.scrollBG, "BOTTOMRIGHT", 2, -2)
        widget._reforgeFocus:Hide()

        if widget.editBox then
            widget.editBox:HookScript("OnEditFocusGained", function()
                if widget._reforgeHover then
                    widget._reforgeHover:Hide()
                end
                if widget._reforgeFocus then
                    widget._reforgeFocus:Show()
                end
            end)
            widget.editBox:HookScript("OnEditFocusLost", function()
                if widget._reforgeFocus then
                    widget._reforgeFocus:Hide()
                end
                if widget._reforgeHover then
                    if widget.editBox:IsMouseOver() or (widget.scrollFrame and widget.scrollFrame:IsMouseOver()) then
                        widget._reforgeHover:Show()
                    else
                        widget._reforgeHover:Hide()
                    end
                end
            end)
            widget.editBox:HookScript("OnEnter", function()
                if widget._reforgeHover and not widget.editBox:HasFocus() then
                    widget._reforgeHover:Show()
                end
            end)
            widget.editBox:HookScript("OnLeave", function()
                if widget._reforgeHover and not widget.editBox:HasFocus() then
                    widget._reforgeHover:Hide()
                end
            end)
        end

        if widget.scrollFrame then
            widget.scrollFrame:HookScript("OnEnter", function()
                if widget._reforgeHover and not (widget.editBox and widget.editBox:HasFocus()) then
                    widget._reforgeHover:Show()
                end
            end)
            widget.scrollFrame:HookScript("OnLeave", function()
                if widget._reforgeHover and not (widget.editBox and widget.editBox:HasFocus()) then
                    widget._reforgeHover:Hide()
                end
            end)
        end
    end

    if widget._reforgeBorder then
        ApplyRegionColor(widget._reforgeBorder, borderR, borderG, borderB, borderA)
    end

    if widget._reforgeHover then
        ApplyRegionColor(widget._reforgeHover, highlightR, highlightG, highlightB, highlightA)
    end

    if widget._reforgeFocus then
        ApplyRegionColor(widget._reforgeFocus, accentR, accentG, accentB, accentA * 0.4)
    end
end

local firstInitialize
local function GetDataFrame(anchor)
    if _G[FRAME_NAME] then
        _G[FRAME_NAME]:Hide()
    end
    local AceGUI = AcquireAceGUI()
    if not AceGUI then
        return nil, nil
    end
    local displayFrame = AceGUI:Create("Frame")
    StyleAceGUIFrame(displayFrame)
    displayFrame:SetLayout("Flow")
    displayFrame:SetStatusTable({ width = 525, height = 275 })
    if anchor then
        displayFrame:ClearAllPoints()
        displayFrame:SetPoint("CENTER", anchor, "CENTER")
    end
    displayFrame:SetCallback("OnClose", function(widget)
        AceGUI:Release(widget)
        _G[FRAME_NAME] = nil
    end)
    displayFrame:SetCallback("OnEnterStatusBar", function(widget)
        if widget.statustext:IsTruncated() then
            GameTooltip:SetOwner(widget.statustext, "ANCHOR_LEFT")
            GameTooltip:AddLine(widget.statustext:GetText(), nil, nil, nil, true)
            GameTooltip:Show()
        end
    end)
    displayFrame:SetCallback("OnLeaveStatusBar", GameTooltip_Hide)

    local editbox = AceGUI:Create("MultiLineEditBox")
    editbox:SetFullWidth(true)
    editbox:SetFullHeight(true)
    editbox.editBox:SetFontObject(GameFontHighlightSmall)
    displayFrame:AddChild(editbox)
    StyleMultiLineEditBox(editbox)

    if not firstInitialize then
        tinsert(UISpecialFrames, FRAME_NAME)
        firstInitialize = true
    end
    _G[FRAME_NAME] = displayFrame
    return displayFrame, editbox
end

function ReforgeOne:DisplayMessage(message, name, copyOnly)
    local frame, editBox = GetDataFrame(self)
    if not frame or not editBox then
        return
    end
    frame:SetTitle(L["Export"])
    frame:SetStatusText(name or "")
    editBox:DisableButton(true)
    editBox:SetLabel()
    editBox:SetText(message)
    if copyOnly then
        frame.status.message = message
        editBox.editBox:SetFocus()
        editBox.editBox:HighlightText()
        editBox:SetCallback("OnLeave", function(widget) widget.editBox:HighlightText() widget:SetFocus() end)
        editBox:SetCallback("OnEnter", function(widget) widget.editBox:HighlightText() widget:SetFocus() end)
        editBox:SetCallback("OnTextChanged", function(widget) widget.editBox:SetText(widget.parent.status.message) widget.editBox:HighlightText() end)
    end
end

function ReforgeOne:PrintLog()
    self:DisplayMessage(table.concat(addonTable.printLog, "\n"), "Print Log", true)
end

function ReforgeOne:ExportJSON(preset, name)
    self:DisplayMessage(C_EncodingUtil.SerializeJSON(preset), name, true)
end

function ReforgeOne:ImportData(anchor)
    self:Initialize()
    self:UpdateItems()
    local frame, editBox = GetDataFrame(not anchor and self)
    if not frame or not editBox then
        return
    end
    frame:SetTitle(L["Import"])
    if anchor then
        frame:ClearAllPoints()
        frame:SetPoint("TOP", anchor, "TOP")
    end
    editBox:DisableButton(false)
    editBox:SetLabel(L["Enter WoWSims JSON or Pawn string"])
    editBox.editBox:SetFocus()
    local function ParseUserInput(widget)
        local userInput = widget:GetText()
        if not userInput or userInput == "" then
            widget.parent:SetStatusText("")
            return
        end
        local validWoWSims, wowsims = self:ValidateWoWSimsString(userInput)
        if validWoWSims then
            self:ApplyWoWSimsImport(wowsims, anchor ~= nil)
            widget.parent:Hide()
            return
        elseif type(wowsims) == "table" and wowsims.slot then
            local function UpdateText(item)
                if _G[FRAME_NAME] then
                    _G[FRAME_NAME]:SetStatusText(L["%s does not match your currently equipped %s: %s. Reforge One only supports equipped items."]:format(
                        item or self.itemSlots[wowsims.slot],
                        _G[self.itemSlots[wowsims.slot]],
                        self.itemData[wowsims.slot].item or EMPTY
                    ))
                end
            end
            if wowsims.itemId then
                local mismatchItem = Item:CreateFromItemID(wowsims.itemId)
                mismatchItem:ContinueOnItemLoad(function() UpdateText(mismatchItem:GetItemLink()) end)
            else
                UpdateText()
            end
            return
        end
        local validPawn, pawnValues = self:ValidatePawnString(userInput)
        if pawnValues then
            self:ParsePawnString(pawnValues)
            widget.parent:Hide()
            print(L["Pawn successfully imported."])
            return
        end
        widget.parent:SetStatusText(wowsims or ERROR_CAPS)
    end
    editBox.button:SetScript("OnClick", function(btn) ParseUserInput(btn.obj) end)
    editBox:SetCallback("OnTextChanged", ParseUserInput)
    if self.pdb.methodOrigin == addonTable.WoWSimsOriginTag and anchor then
        self:RefreshMethodWindow()
    end
end
