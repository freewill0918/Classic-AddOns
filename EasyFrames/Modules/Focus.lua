--[[
    Appreciate what others people do. (c) Usoltsev

    Copyright (c) <2016-2020>, Usoltsev.

    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    Neither the name of the <EasyFrames> nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
    THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
    INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
    OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--]]

local EasyFrames = LibStub("AceAddon-3.0"):GetAddon("EasyFrames")
local L = LibStub("AceLocale-3.0"):GetLocale("EasyFrames")
local Media = LibStub("LibSharedMedia-3.0")

local MODULE_NAME = "Focus"
local Focus = EasyFrames:NewModule(MODULE_NAME, "AceHook-3.0")

local db

local UpdateHealthValues = EasyFrames.Utils.UpdateHealthValues
local UpdateManaValues = EasyFrames.Utils.UpdateManaValues
local ClassPortraits = EasyFrames.Utils.ClassPortraits
local DefaultPortraits = EasyFrames.Utils.DefaultPortraits

local OnShowHookScript = function(frame)
    frame:Hide()
end

function Focus:OnInitialize()
    self.db = EasyFrames.db
    db = self.db.profile
end

function Focus:OnEnable()
    self:ShowFocusFrameToT()
    self:ShowName(db.focus.showName)
    self:SetFrameNameFont()
    self:SetFrameNameColor()
    self:SetHealthBarsFont()
    self:SetManaBarsFont()

    self:ReverseDirectionLosingHP(db.focus.reverseDirectionLosingHP)

    self:ShowAttackBackground(db.focus.showAttackBackground)
    --self:SetAttackBackgroundOpacity(db.focus.attackBackgroundOpacity)
    self:ShowPVPIcon(db.focus.showPVPIcon)

    hooksecurefunc(FocusFrame, "CheckClassification", function()
        self:CheckClassification(FocusFrame);
    end);

    hooksecurefunc(FocusFrameHealthBar, "UpdateTextString", function()
        self:UpdateHealthBarTextString(FocusFrame)
    end)

    hooksecurefunc(FocusFrameManaBar, "UpdateTextString", function()
        self:UpdateManaBarTextString(FocusFrame)
    end)

    self:SecureHook("UnitFramePortrait_Update", "MakeClassPortraits")
end

function Focus:OnProfileChanged(newDB)
    self.db = newDB
    db = self.db.profile

    self:MakeClassPortraits(FocusFrame)
    self:ShowFocusFrameToT()
    self:ShowName(db.focus.showName)
    self:SetFrameNameFont()
    self:SetFrameNameColor()
    self:SetHealthBarsFont()
    self:SetManaBarsFont()

    self:ReverseDirectionLosingHP(db.focus.reverseDirectionLosingHP)

    self:ShowAttackBackground(db.focus.showAttackBackground)
    self:SetAttackBackgroundOpacity(db.focus.attackBackgroundOpacity)
    self:ShowPVPIcon(db.focus.showPVPIcon)

    self:UpdateHealthBarTextString(FocusFrame)
    self:UpdateManaBarTextString(FocusFrame)
end

function Focus:CheckClassification(frame)
    local classification = UnitClassification(frame.unit);

    frame.Background:SetHeight(41)
    frame.nameBackground:SetVertexColor(0, 0, 0, 0.0)

    if (classification == "minus") then
        frame.borderTexture:SetTexture(Media:Fetch("frames", "minus"));
        frame.nameBackground:Hide();
        frame.Background:SetHeight(31)
        frame.manabar:Hide();
        frame.manabar.TextString:Hide();
    elseif (classification == "worldboss" or classification == "elite") then
        frame.borderTexture:SetTexture(Media:Fetch("frames", "elite"));
    elseif (classification == "rareelite") then
        frame.borderTexture:SetTexture(Media:Fetch("frames", "rareelite"));
    elseif (classification == "rare") then
        frame.borderTexture:SetTexture(Media:Fetch("frames", "rare"));
    else
        frame.borderTexture:SetTexture(Media:Fetch("frames", "default"));
    end

    if db.focus.focusNameColorByClass then
        self:SetFrameNameColor()
    end
end

function Focus:MakeClassPortraits(frame)
    if (frame.portrait and (frame.unit == "focus" or frame.unit == "focustarget")) then
        if (db.focus.portrait == "2") then
            ClassPortraits(frame)
        else
            DefaultPortraits(frame)
        end
    end
end

function Focus:UpdateHealthBarTextString(frame)
    if (frame.unit == "focus") then
        UpdateHealthValues(
            FocusFrameHealthBar,
            db.focus.healthFormat,
            db.focus.customHealthFormat,
            db.focus.customHealthFormatFormulas,
            db.focus.useHealthFormatFullValues,
            db.focus.useChineseNumeralsHealthFormat
        )
    end
end

function Focus:UpdateManaBarTextString(frame)
    if (frame.unit == "focus") then
        UpdateManaValues(
            FocusFrameManaBar,
            db.focus.manaFormat,
            db.focus.customManaFormat,
            db.focus.customManaFormatFormulas,
            db.focus.useManaFormatFullValues,
            db.focus.useChineseNumeralsManaFormat
        )
    end
end

function Focus:ShowFocusFrameToT()
    if (db.focus.showToTFrame) then
        FocusFrameToT:SetAlpha(1)
    else
        FocusFrameToT:SetAlpha(0)
    end
end

function Focus:ShowName(value)
    if (value) then
        FocusFrame.name:Show()
    else
        FocusFrame.name:Hide()
    end

    self:ShowNameInsideFrame(db.focus.showNameInsideFrame)
end

function Focus:ShowNameInsideFrame(value)
    local Core = EasyFrames:GetModule("Core")

    local HealthBarTexts = {
        FocusFrameHealthBar.RightText,
        FocusFrameHealthBar.LeftText,
        FocusFrameHealthBar.TextString,
        FocusFrameTextureFrameDeadText
    }

    for _, healthBar in pairs(HealthBarTexts) do
        local point, relativeTo, relativePoint, xOffset, yOffset = healthBar:GetPoint()

        if (value and db.focus.showName) then
            Core:MoveFocusFrameName(nil, nil, nil, nil, 16)
            Core:MoveRegion(healthBar, point, relativeTo, relativePoint, xOffset, yOffset - 5)
        else
            Core:MoveFocusFrameName()
            Core:MoveFocusFramesBarsTextString()
        end
    end
end

function Focus:SetHealthBarsFont()
    local fontSize = db.focus.healthBarFontSize
    local fontFamily = Media:Fetch("font", db.focus.healthBarFontFamily)
    local fontStyle = db.focus.healthBarFontStyle

    FocusFrameHealthBar.TextString:SetFont(fontFamily, fontSize, fontStyle)
    FocusFrameHealthBar.RightText:SetFont(fontFamily, fontSize, fontStyle)
    FocusFrameHealthBar.LeftText:SetFont(fontFamily, fontSize, fontStyle)
end

function Focus:SetManaBarsFont()
    local fontSize = db.focus.manaBarFontSize
    local fontFamily = Media:Fetch("font", db.focus.manaBarFontFamily)
    local fontStyle = db.focus.manaBarFontStyle

    FocusFrameManaBar.TextString:SetFont(fontFamily, fontSize, fontStyle)
    FocusFrameManaBar.RightText:SetFont(fontFamily, fontSize, fontStyle)
    FocusFrameManaBar.LeftText:SetFont(fontFamily, fontSize, fontStyle)
end

function Focus:SetFrameNameFont()
    local fontFamily = Media:Fetch("font", db.focus.focusNameFontFamily)
    local fontSize = db.focus.focusNameFontSize
    local fontStyle = db.focus.focusNameFontStyle

    FocusFrame.name:SetFont(fontFamily, fontSize, fontStyle)
end

function Focus:SetFrameNameColor()
    local color = db.focus.focusNameColor
    local classColor = EasyFrames.Utils.GetColorByClass(FocusFrame)

    if db.focus.focusNameColorByClass and classColor then
        EasyFrames.Utils.SetTextColor(FocusFrame.name, classColor)
    else
        EasyFrames.Utils.SetTextColor(FocusFrame.name, color)
    end
end

function Focus:ResetFrameNameColor()
    EasyFrames.db.profile.focus.focusNameColor = { unpack(EasyFrames.Const.DEFAULT_FRAMES_NAME_COLOR) }
end

function Focus:ReverseDirectionLosingHP(value)
    FocusFrameHealthBar:SetReverseFill(value)
    FocusFrameManaBar:SetReverseFill(value)
end

function Focus:ShowAttackBackground(value)
    local frame = FocusFrameFlash

    if frame then
        self:Unhook(frame, "Show")

        if (value) then
            if (UnitAffectingCombat("focus")) then
                frame:Show()
            end
        else
            frame:Hide()

            self:SecureHook(frame, "Show", OnShowHookScript)
        end
    end
end

function Focus:SetAttackBackgroundOpacity(value)
    FocusFrameFlash:SetAlpha(value)
end

function Focus:ShowPVPIcon(value)
    for _, frame in pairs({
        FocusFrameTextureFramePVPIcon,
        FocusFrameTextureFramePrestigeBadge,
        FocusFrameTextureFramePrestigePortrait,
    }) do
        if frame then
            self:Unhook(frame, "Show")

            if (value) then
                if (UnitIsPVP("focus")) then
                    frame:Show()
                end
            else
                frame:Hide()

                self:SecureHook(frame, "Show", OnShowHookScript)
            end
        end
    end
end
