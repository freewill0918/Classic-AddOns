
---------------------------------
-- 經典版物品裝等 Author: M
---------------------------------

local MAJOR, MINOR = "LibItemInfo.1000", 1
local lib = LibStub:NewLibrary(MAJOR, MINOR)

if not lib then return end

local locale = GetLocale()

--Toolip
local tooltip = CreateFrame("GameTooltip", "ClassicLibItemLevelTooltip1", UIParent, "GameTooltipTemplate")
local unittip = CreateFrame("GameTooltip", "ClassicLibItemLevelTooltip2", UIParent, "GameTooltipTemplate")
local itemlevel_tooltip = CreateFrame("GameTooltip", "MerInspectItemLevelTooltip", UIParent, "GameTooltipTemplate")

--從tooltip掃描獲取物品等級（類似Oilvl的方法）
function lib:GetItemLevelFromTooltip(unit, slot)
    itemlevel_tooltip:SetOwner(UIParent, "ANCHOR_NONE")
    itemlevel_tooltip:ClearLines()
    itemlevel_tooltip:SetInventoryItem(unit, slot)

    -- 掃描tooltip文本以找到物品等級
    for i = 1, 4 do
        local line = _G["MerInspectItemLevelTooltipTextLeft"..i]
        if line and line:GetText() then
            local itemLevel = line:GetText():match(ITEM_LEVEL:gsub("%%d", "(%%d+)"))
            if itemLevel then
                return tonumber(itemLevel)
            end
        else
            break
        end
    end

    return nil
end

--物品是否已經本地化
function lib:HasLocalCached(item)
    if (not item or item == "" or item == "0") then return true end
    if (tonumber(item)) then
        return select(10, GetItemInfo(tonumber(item)))
    else
        local id, gem1, gem2, gem3 = string.match(item, "item:(%d+):[^:]*:(%d-):(%d-):(%d-):")
        return self:HasLocalCached(id) and self:HasLocalCached(gem1) and self:HasLocalCached(gem2) and self:HasLocalCached(gem3)
    end
end

--獲取物品绿字屬性 (中文用LibItemStats库)
function lib:GetItemStats(link, stats)
    if (type(stats) == "table") then
        local s = GetItemStats(link)
        for k, v in pairs(s) do
            if (stats[k]) then
                if (tonumber(v) and v > 0) then
                    stats[k] = stats[k] + v
                end
            else
                stats[k] = v
            end
        end
    end
    return stats
end

--獲取物品等級
function lib:GetItemLevel(link, stats)
    if (not link or link == "") then
        return -1
    end
    if (not string.match(link, "item:%d+:")) then
        return -1
    end
    self:GetItemStats(link, stats)

    -- 優先使用SimpleItemLevel的API獲取正確的升級後等級
    if _G.SimpleItemLevel and _G.SimpleItemLevel.API and _G.SimpleItemLevel.API.ItemLevel then
        local simpleLevel = _G.SimpleItemLevel.API.ItemLevel(link)
        if simpleLevel and simpleLevel > 0 then
            return simpleLevel
        end
    end

    -- 使用Item:GetCurrentItemLevel()獲取升級後的實際物品等級（如SimpleItemLevel addon）
    if Item and Item.CreateFromItemLink then
        local item = Item:CreateFromItemLink(link)
        if item and not item:IsItemEmpty() then
            -- 先確保物品資料已載入，然後獲取當前物品等級
            local success, currentLevel = pcall(function()
                if item:IsItemDataCached() then
                    return item:GetCurrentItemLevel()
                end
            end)
            if success and currentLevel and currentLevel > 0 then
                return currentLevel
            end
        end
    end

    -- 如果新方法不可用或失敗，回退到舊版API
    local level = select(4, GetItemInfo(link))
    return tonumber(level) or 0
end

--獲取容器物品裝等
function lib:GetContainerItemLevel(pid, id)
    local link = GetContainerItemLink(pid, id)
    return self:GetItemLevel(link), GetItemInfo(link)
end

--獲取UNIT對應部位的物品LINK
function lib:GetUnitItemIndexLink(unit, index)
    if (not UnitExists(unit)) then return end
    unittip:SetOwner(UIParent, "ANCHOR_NONE")
    unittip:SetInventoryItem(unit, index)
    return GetInventoryItemLink(unit, index) or (select(2, unittip:GetItem()))
end

--獲取UNIT對應部位的物品等級
function lib:GetUnitItemIndexLevel(unit, index, stats)
    if (not UnitExists(unit)) then return -1 end

    -- 優先使用tooltip掃描方法獲取實際（升級後）的物品等級
    local tooltipLevel = self:GetItemLevelFromTooltip(unit, index)
    if tooltipLevel and tooltipLevel > 0 then
        -- 獲取物品連結和其他信息
        unittip:SetOwner(UIParent, "ANCHOR_NONE")
        unittip:SetInventoryItem(unit, index)
        local link = GetInventoryItemLink(unit, index) or select(2, unittip:GetItem())

        if link then
            self:GetItemStats(link, stats)
            local name, link2, quality, ilevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(link)
            return tooltipLevel, name, link, quality, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice
        end
    end

    -- 如果tooltip掃描失敗，對玩家使用Item:CreateFromEquipmentSlot獲取正確的升級後等級
    if unit == "player" and Item and Item.CreateFromEquipmentSlot then
        local item = Item:CreateFromEquipmentSlot(index)
        if item and not item:IsItemEmpty() then
            local success, currentLevel = pcall(function()
                if item:IsItemDataCached() then
                    return item:GetCurrentItemLevel()
                end
            end)
            if success and currentLevel and currentLevel > 0 then
                local link = GetInventoryItemLink(unit, index)
                if link then
                    self:GetItemStats(link, stats)
                    local name, link2, quality, ilevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(link)
                    return currentLevel, name, link, quality, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice
                end
            end
        end
    end

    -- 最後的後備方法：使用基本的API
    unittip:SetOwner(UIParent, "ANCHOR_NONE")
    unittip:SetInventoryItem(unit, index)
    local link = GetInventoryItemLink(unit, index) or select(2, unittip:GetItem())

    if (link) then
        local level = self:GetItemLevel(link, stats)
        local name, link2, quality, ilevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(link)
        return level, name, link, quality, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice
    else
        return -1
    end
end

--獲取UNIT的裝備等級
--@return 平均装等, 最大武器等级, 最大裝等
function lib:GetUnitItemLevel(unit, stats)
    local total, maxlevel = 0, 0
    local level, mainhand, offhand, ranged
    for i = 1, 15 do
        if (i ~= 4) then
            level = self:GetUnitItemIndexLevel(unit, i, stats)
            if (level > 0) then
                total = total + level
                maxlevel = max(maxlevel, level)
            end
        end
    end
    mainhand = self:GetUnitItemIndexLevel(unit, 16, stats)
    offhand = self:GetUnitItemIndexLevel(unit, 17, stats)
    ranged = self:GetUnitItemIndexLevel(unit, 18, stats)
    if (mainhand <= 0 and ranged <= 0 and ranged <= 0) then
    elseif (mainhand > 0 and offhand > 0) then
        total = total + mainhand + offhand
    --elseif (mainhand > 0 and ranged > 0) then
    --    total = total + mainhand + ranged
    elseif (offhand > 0 and ranged > 0) then
        total = total + offhand + ranged
    else
        total = total + max(mainhand,offhand,ranged) * 2
    end
    return total/16, max(mainhand,offhand), maxlevel
end
