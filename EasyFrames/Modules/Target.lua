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

local MODULE_NAME = "Target"
local Target = EasyFrames:NewModule(MODULE_NAME, "AceHook-3.0")

local db

local UpdateHealthValues = EasyFrames.Utils.UpdateHealthValues
local UpdateManaValues = EasyFrames.Utils.UpdateManaValues
local ClassPortraits = EasyFrames.Utils.ClassPortraits
local DefaultPortraits = EasyFrames.Utils.DefaultPortraits

local OnShowHookScript = function(frame)
    frame:Hide()
end

function Target:OnInitialize()
    self.db = EasyFrames.db
    db = self.db.profile
end

function Target:OnEnable()
    --self:CreateNumericFrame
    self:ShowTargetFrameToT()
    self:ShowName(db.target.showName)
    self:SetFrameNameFont()
    self:SetFrameNameColor()
    self:SetHealthBarsFont()
    self:SetManaBarsFont()

    self:ReverseDirectionLosingHP(db.target.reverseDirectionLosingHP)

    self:ShowAttackBackground(db.target.showAttackBackground)
    self:ShowPVPIcon(db.target.showPVPIcon)

    hooksecurefunc(TargetFrame, "CheckClassification", function()
        self:CheckClassification(TargetFrame);
    end);

    hooksecurefunc(TargetFrameHealthBar, "UpdateTextString", function()
        self:UpdateHealthBarTextString(TargetFrame)
    end)

    hooksecurefunc(TargetFrameManaBar, "UpdateTextString", function()
        self:UpdateManaBarTextString(TargetFrame)
    end)

    self:SecureHook("UnitFramePortrait_Update", "MakeClassPortraits")
end

function Target:OnProfileChanged(newDB)
    self.db = newDB
    db = self.db.profile

    self:MakeClassPortraits(TargetFrame)
    self:ShowTargetFrameToT()
    self:ShowName(db.target.showName)
    self:SetFrameNameFont()
    self:SetFrameNameColor()
    self:SetHealthBarsFont()
    self:SetManaBarsFont()

    self:ReverseDirectionLosingHP(db.target.reverseDirectionLosingHP)

    self:ShowAttackBackground(db.target.showAttackBackground)
    self:SetAttackBackgroundOpacity(db.target.attackBackgroundOpacity)
    self:ShowPVPIcon(db.target.showPVPIcon)

    self:UpdateHealthBarTextString(TargetFrame)
    self:UpdateManaBarTextString(TargetFrame)
end

function Target:CreateNumericFrame()
    local healthbarFrame = CreateFrame("Frame", nil, TargetFrame)
    healthbarFrame:SetWidth(1)
    healthbarFrame:SetHeight(27)
    healthbarFrame:SetPoint("CENTER", TargetFrame, "CENTER", -51, 0)

    TargetFrame.healthbar.TextString = healthbarFrame:CreateFontString(nil, "ARTWORK")
    TargetFrame.healthbar.TextString:SetPoint("CENTER", 0, 0)
    TargetFrame.healthbar.TextString:Show()

    local manabarFrame = CreateFrame("Frame", nil, TargetFrame)
    manabarFrame:SetWidth(1)
    manabarFrame:SetHeight(27)
    manabarFrame:SetPoint("CENTER", TargetFrame, "CENTER", -51, -8)

    TargetFrameManaBar.TextString = manabarFrame:CreateFontString(nil, "ARTWORK")
    TargetFrameManaBar.TextString:SetPoint("CENTER", 0, 0)
    TargetFrameManaBar.TextString:Show()
end

function Target:CheckClassification(frame)
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

    if db.target.targetNameColorByClass then
        self:SetFrameNameColor()
    end
end

function Target:MakeClassPortraits(frame)
    if (frame.portrait and (frame.unit == "target" or frame.unit == "targettarget")) then
        if (db.target.portrait == "2") then
            ClassPortraits(frame)
        else
            DefaultPortraits(frame)
        end
    end
end

function Target:UpdateHealthBarTextString(frame)
    if (frame.unit == "target") then
        UpdateHealthValues(
            TargetFrameHealthBar,
            db.target.healthFormat,
            db.target.customHealthFormat,
            db.target.customHealthFormatFormulas,
            db.target.useHealthFormatFullValues,
            db.target.useChineseNumeralsHealthFormat
        )
    end
end

function Target:UpdateManaBarTextString(frame)
    if (frame.unit == "target") then
        UpdateManaValues(
            TargetFrameManaBar,
            db.target.manaFormat,
            db.target.customManaFormat,
            db.target.customManaFormatFormulas,
            db.target.useManaFormatFullValues,
            db.target.useChineseNumeralsManaFormat
        )
    end
end

function Target:ShowTargetFrameToT()
    if (db.target.showToTFrame) then
        TargetFrameToT:SetAlpha(1)
    else
        TargetFrameToT:SetAlpha(0)
    end
end

function Target:ShowName(value)
    if (value) then
        TargetFrame.name:Show()
    else
        TargetFrame.name:Hide()
    end

    self:ShowNameInsideFrame(db.target.showNameInsideFrame)
end

function Target:ShowNameInsideFrame(value)
    local Core = EasyFrames:GetModule("Core")

    local HealthBarTexts = {
        TargetFrameHealthBar.RightText,
        TargetFrameHealthBar.LeftText,
        TargetFrameHealthBar.TextString,
        TargetFrameTextureFrameDeadText
    }

    for _, healthBar in pairs(HealthBarTexts) do
        local point, relativeTo, relativePoint, xOffset, yOffset = healthBar:GetPoint()

        if (value and db.target.showName) then
            Core:MoveTargetFrameName(nil, nil, nil, nil, 16)
            Core:MoveRegion(healthBar, point, relativeTo, relativePoint, xOffset, yOffset - 5)
        else
            Core:MoveTargetFrameName()
            Core:MoveTargetFramesBarsTextString()
        end
    end
end

function Target:SetHealthBarsFont()
    local fontSize = db.target.healthBarFontSize
    local fontFamily = Media:Fetch("font", db.target.healthBarFontFamily)
    local fontStyle = db.target.healthBarFontStyle

    TargetFrameHealthBar.TextString:SetFont(fontFamily, fontSize, fontStyle)
    TargetFrameHealthBar.RightText:SetFont(fontFamily, fontSize, fontStyle)
    TargetFrameHealthBar.LeftText:SetFont(fontFamily, fontSize, fontStyle)
end

function Target:SetManaBarsFont()
    local fontSize = db.target.manaBarFontSize
    local fontFamily = Media:Fetch("font", db.target.manaBarFontFamily)
    local fontStyle = db.target.manaBarFontStyle

    TargetFrameManaBar.TextString:SetFont(fontFamily, fontSize, fontStyle)
    TargetFrameManaBar.RightText:SetFont(fontFamily, fontSize, fontStyle)
    TargetFrameManaBar.LeftText:SetFont(fontFamily, fontSize, fontStyle)
end

function Target:SetFrameNameFont()
    local fontFamily = Media:Fetch("font", db.target.targetNameFontFamily)
    local fontSize = db.target.targetNameFontSize
    local fontStyle = db.target.targetNameFontStyle

    TargetFrame.name:SetFont(fontFamily, fontSize, fontStyle)
end

function Target:SetFrameNameColor()
    local color = db.target.targetNameColor
    local classColor = EasyFrames.Utils.GetColorByClass(TargetFrame)

    if db.target.targetNameColorByClass and classColor then
        EasyFrames.Utils.SetTextColor(TargetFrame.name, classColor)
    else
        EasyFrames.Utils.SetTextColor(TargetFrame.name, color)
    end
end

function Target:ResetFrameNameColor()
    EasyFrames.db.profile.target.targetNameColor = { unpack(EasyFrames.Const.DEFAULT_FRAMES_NAME_COLOR) }
end

function Target:ReverseDirectionLosingHP(value)
    TargetFrameHealthBar:SetReverseFill(value)
    TargetFrameManaBar:SetReverseFill(value)
end

function Target:ShowAttackBackground(value)
    local frame = TargetFrameFlash

    if frame then
        self:Unhook(frame, "Show")

        if (value) then
            if (UnitAffectingCombat("target")) then
                frame:Show()
            end
        else
            frame:Hide()

            self:SecureHook(frame, "Show", OnShowHookScript)
        end
    end
end

function Target:SetAttackBackgroundOpacity(value)
    TargetFrameFlash:SetAlpha(value)
end

function Target:ShowPVPIcon(value)
    for _, frame in pairs({
        TargetFrameTextureFramePVPIcon,
        TargetFrameTextureFramePrestigeBadge,
        TargetFrameTextureFramePrestigePortrait,
    }) do
        if frame then
            self:Unhook(frame, "Show")

            if (value) then
                if (UnitIsPVP("target")) then
                    frame:Show()
                end
            else
                frame:Hide()

                self:SecureHook(frame, "Show", OnShowHookScript)
            end
        end
    end
end
