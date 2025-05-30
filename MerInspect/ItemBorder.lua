
-------------------------------------
-- 物品邊框 Author: M
-------------------------------------

local LibEvent = LibStub:GetLibrary("LibEvent.7000")

--直角邊框 @trigger SET_ITEM_ANGULARBORDER
local function SetItemAngularBorder(self, quality, itemIDOrLink)
    if (not self) then return end
    if (not self.angularFrame) then
        local anchor, w, h = self.IconBorder or self, self:GetSize()
        local ww, hh = anchor:GetSize()
        if (ww == 0 or hh == 0) then
            anchor = self.Icon or self.icon or self
            w, h = anchor:GetSize()
        else
            w, h = min(w, ww), min(h, hh)
        end
        self.angularFrame = CreateFrame("Frame", nil, self)
        self.angularFrame:SetFrameLevel(5)
        self.angularFrame:SetSize(w, h)
        self.angularFrame:SetPoint("CENTER", anchor, "CENTER", 0, 0)
        self.angularFrame:Hide()
        self.angularFrame.mask = CreateFrame("Frame", nil, self.angularFrame, "BackdropTemplate")
        self.angularFrame.mask:SetSize(w-2, h-2)
        self.angularFrame.mask:SetPoint("CENTER")
        self.angularFrame.mask:SetBackdrop({edgeFile = "Interface\\Tooltips\\UI-Tooltip-Background", edgeSize = 2})
        self.angularFrame.mask:SetBackdropBorderColor(0, 0, 0)
        self.angularFrame.border = CreateFrame("Frame", nil, self.angularFrame, "BackdropTemplate")
        self.angularFrame.border:SetSize(w, h)
        self.angularFrame.border:SetPoint("CENTER")
        self.angularFrame.border:SetBackdrop({edgeFile = "Interface\\Buttons\\WHITE8X8", edgeSize = 1})
    end
    if (MerInspectDB and MerInspectDB.ShowItemBorder) then
        LibEvent:trigger("SET_ITEM_ANGULARBORDER", self.angularFrame, quality, itemIDOrLink)
    else
        self.angularFrame:Hide()
    end
end

--功能附着
hooksecurefunc("SetItemButtonQuality", SetItemAngularBorder)
LibEvent:attachEvent("ADDON_LOADED", function(self, addonName)
    if (addonName == "Blizzard_InspectUI") then
        hooksecurefunc("InspectPaperDollItemSlotButton_Update", function(self)
            local textureName = GetInventoryItemTexture(InspectFrame.unit, self:GetID())
            if (not textureName) then SetItemAngularBorder(self, false) end
        end)
    end
end)

--設置物品直角邊框
LibEvent:attachTrigger("SET_ITEM_ANGULARBORDER", function(self, frame, quality, itemIDOrLink)
    if (type(quality) == "number") then
        local r, g, b = GetItemQualityColor(quality)
        if (quality <= 1) then
            r = r - 0.3
            g = g - 0.3
            b = b - 0.3
        end
        frame.border:SetBackdropBorderColor(r, g, b)
        frame:Show()
    else
        frame:Hide()
    end
end)
