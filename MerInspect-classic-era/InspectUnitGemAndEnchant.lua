-------------------------------------
-- 顯示寶石和附魔信息
-- @Author: M
-- @DepandsOn: InspectUnit.lua
-------------------------------------

local addon, ns = ...
local L = ns.L

local LibItemGem = LibStub:GetLibrary("LibItemGem.7000")
local LibSchedule = LibStub:GetLibrary("LibSchedule.7000")
local LibItemEnchant = LibStub:GetLibrary("LibItemEnchant.7000")

-- 熊貓人版本沒有頭部附魔，但有肩膀附魔
local EnchantParts = {
    [3]  = {1, SHOULDERSLOT},
    [5]  = {1, CHESTSLOT},
    [8]  = {1, FEETSLOT},
    [9]  = {1, WRISTSLOT},
    [10] = {1, HANDSSLOT},
    [15] = {1, BACKSLOT},
    [16] = {1, MAINHANDSLOT},
    [17] = {0, SECONDARYHANDSLOT},
}

--創建圖標框架
local function CreateIconFrame(frame, index)
    local icon = CreateFrame("Button", nil, frame)
    icon.index = index
    icon:Hide()
    icon:SetSize(16, 16)
    icon:SetScript("OnEnter", function(self)
        if (self.itemLink) then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetHyperlink(self.itemLink)
            GameTooltip:Show()
        elseif (self.spellID) then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetSpellByID(self.spellID)
            GameTooltip:Show()
        elseif (self.title) then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText(self.title)
            GameTooltip:Show()
        end
    end)
    icon:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)
    icon:SetScript("OnDoubleClick", function(self)
        if (self.itemLink or self.title) then
            ChatEdit_ActivateChat(ChatEdit_ChooseBoxForSend())
            ChatEdit_InsertLink(self.itemLink or self.title)
        end
    end)
    icon.bg = icon:CreateTexture(nil, "BACKGROUND")
    icon.bg:SetSize(16, 16)
    icon.bg:SetPoint("CENTER")
    icon.bg:SetTexture("Interface\\AddOns\\"..addon.."\\texture\\GemBg")
    icon.texture = icon:CreateTexture(nil, "BORDER")
    icon.texture:SetSize(12, 12)
    icon.texture:SetPoint("CENTER")
    icon.texture:SetMask("Interface\\FriendsFrame\\Battlenet-Portrait")
    frame["xicon"..index] = icon
    return frame["xicon"..index]
end

--隱藏所有圖標框架
local function HideAllIconFrame(frame)
    local index = 1
    while (frame["xicon"..index]) do
        frame["xicon"..index].title = nil
        frame["xicon"..index].itemLink = nil
        frame["xicon"..index].spellID = nil
        frame["xicon"..index]:Hide()
        index = index + 1
    end
    LibSchedule:RemoveTask("InspectGemAndEnchant", true)
end

--獲取可用的圖標框架
local function GetIconFrame(frame)
    local index = 1
    while (frame["xicon"..index]) do
        if (not frame["xicon"..index]:IsShown()) then
            return frame["xicon"..index]
        end
        index = index + 1
    end
    return CreateIconFrame(frame, index)
end

--執行圖標更新
local function onExecute(self)
    if (self.dataType == "item") then
        local _, itemLink, quality, _, _, _, _, _, _, texture = GetItemInfo(self.data)
        if (texture) then
            local r, g, b = GetItemQualityColor(quality or 0)
            self.icon.bg:SetVertexColor(r, g, b)
            self.icon.texture:SetTexture(texture)
            if (not self.icon.itemLink) then
                self.icon.itemLink = itemLink
            end
            return true
        end
    elseif (self.dataType == "spell") then
        local _, _, texture = GetSpellInfo(self.data)
        if (texture) then
            self.icon.texture:SetTexture(texture)
            return true
        end
    end
end

--Schedule模式更新圖標
local function UpdateIconTexture(icon, texture, data, dataType)
    if (not texture) then
        LibSchedule:AddTask({
            identity  = "InspectGemAndEnchant" .. icon.index,
            timer     = 0.1,
            elasped   = 0.5,
            expired   = GetTime() + 3,
            onExecute = onExecute,
            icon      = icon,
            data      = data,
            dataType  = dataType,
        })
    end
end

--讀取並顯示圖標
local function ShowGemAndEnchant(frame, ItemLink, anchorFrame, itemframe, unit)
    if (not ItemLink) then return 0 end
    local totalIcons = 0
    local _, quality, texture, icon, r, g, b
    local lastIcon = anchorFrame
    
    -- 寶石信息
    local gemNum, gemInfo = LibItemGem:GetItemGemInfo(ItemLink, unit, itemframe.index)
    for i, v in ipairs(gemInfo) do
        icon = GetIconFrame(frame)
        if (v.link) then
            _, _, quality, _, _, _, _, _, _, texture = GetItemInfo(v.link)
            if (texture) then
                r, g, b = GetItemQualityColor(quality)
                icon.bg:SetVertexColor(r, g, b)
                icon.texture:SetTexture(texture)
            else
                icon.bg:SetVertexColor(0.5, 0.5, 0.5)
                icon.texture:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                UpdateIconTexture(icon, texture, v.link, "item")
            end
            icon.itemLink = v.link
        elseif (v.texture) then
            icon.bg:SetVertexColor(1, 1, 1)
            icon.texture:SetTexture(v.texture)
            icon.title = v.name
        else
            icon.title = v.name
            if (v.color == "Red") then
                r, g, b = 1, 0.2, 0.2
                icon.texture:SetTexture("Interface\\Icons\\INV_Jewelcrafting_DelicateCopperWire")
            elseif (v.color == "Yellow") then
                r, g, b = 1, 1, 0.2
                icon.texture:SetTexture("Interface\\Icons\\INV_Jewelcrafting_GoldSetting")
            elseif (v.color == "Blue") then
                r, g, b = 0.2, 0.2, 1
                icon.texture:SetTexture("Interface\\Icons\\INV_Jewelcrafting_TruesilverSetting")
            else
                r, g, b = 1, 1, 1
                icon.texture:SetTexture("Interface\\Icons\\INV_Jewelcrafting_MithrilFeligree")
            end
            icon.bg:SetVertexColor(r, g, b)
        end
        icon:ClearAllPoints()
        if (totalIcons == 0) then
            icon:SetPoint("LEFT", lastIcon, "RIGHT", 4, 0)
        else
            icon:SetPoint("LEFT", lastIcon, "RIGHT", 1, 0)
        end
        icon:Show()
        lastIcon = icon
        totalIcons = totalIcons + 1
    end
    
    -- 附魔信息
    if (itemframe.index ~= 4 and itemframe.index ~= 19) then
        local enchantInfo = EnchantParts[itemframe.index]
        if enchantInfo then
            local enchantItemID, enchantSpellID, enchantID = LibItemEnchant:GetEnchantInfo(ItemLink, itemframe.index)
            if (enchantItemID or enchantSpellID) then
                icon = GetIconFrame(frame)
                if (enchantSpellID) then
                    _, _, texture = GetSpellInfo(enchantSpellID)
                    icon.bg:SetVertexColor(1, 0.82, 0, 1)
                    icon.spellID = enchantSpellID
                    if (texture) then
                        icon.texture:SetTexture(texture)
                    else
                        icon.texture:SetTexture("Interface\\Icons\\INV_Jewelry_Talisman_08")
                        UpdateIconTexture(icon, texture, enchantSpellID, "spell")
                    end
                elseif (enchantItemID) then
                    _, _, quality, _, _, _, _, _, _, texture = GetItemInfo(enchantItemID)
                    if (texture) then
                        r, g, b = GetItemQualityColor(quality or 0)
                        icon.bg:SetVertexColor(r, g, b)
                        icon.texture:SetTexture(texture)
                    else
                        icon.bg:SetVertexColor(0.9, 0.8, 0.5)
                        icon.texture:SetTexture("Interface\\Icons\\INV_Jewelry_Talisman_08")
                        UpdateIconTexture(icon, texture, enchantItemID, "item")
                    end
                    icon.itemLink = "item:"..enchantItemID
                else
                    icon.bg:SetVertexColor(0.9, 0.8, 0.5)
                    icon.texture:SetTexture("Interface\\Icons\\INV_Jewelry_Talisman_08")
                    icon.title = ENCHANTS.." ID:"..enchantID
                end
                icon:ClearAllPoints()
                if (totalIcons == 0) then
                    icon:SetPoint("LEFT", lastIcon, "RIGHT", 4, 0)
                else
                    icon:SetPoint("LEFT", lastIcon, "RIGHT", 1, 0)
                end
                icon:Show()
                lastIcon = icon
                totalIcons = totalIcons + 1
            else
                -- 檢查是否應該有附魔
                local _, _, itemQuality = GetItemInfo(ItemLink)
                if itemQuality and itemQuality > 1 and enchantInfo[1] == 1 then
                    icon = GetIconFrame(frame)
                    icon.bg:SetVertexColor(1, 0.2, 0.2)
                    icon.title = ENCHANTS..": "..NONE
                    icon.texture:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                    icon:ClearAllPoints()
                    if (totalIcons == 0) then
                        icon:SetPoint("LEFT", lastIcon, "RIGHT", 4, 0)
                    else
                        icon:SetPoint("LEFT", lastIcon, "RIGHT", 1, 0)
                    end
                    icon:Show()
                    lastIcon = icon
                    totalIcons = totalIcons + 1
                end
            end
        end
    end
    
    return totalIcons == 0 and 0 or (totalIcons * 17)
end

-- Hook the Inspect function
hooksecurefunc("ShowInspectItemListFrame", function(unit, parent, itemLevel, maxLevel)
    local frame = parent.inspectFrame
    if (not frame) then return end
    HideAllIconFrame(frame)
    frame.unit = unit
    local i = 1
    local itemframe
    local iconOffset = 0
    while (frame["item"..i]) do
        itemframe = frame["item"..i]
        iconOffset = ShowGemAndEnchant(frame, itemframe.link, itemframe.itemString, itemframe, unit)
        -- 不需要重新定位，因為圖標會自動排列在物品名稱右側
        i = i + 1
    end
end)