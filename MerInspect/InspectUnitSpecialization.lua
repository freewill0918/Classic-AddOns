
---------------------------------------
-- 顯示職業圖標和天赋
-- @Author: M
-- @DepandsOn: InspectUnit.lua
---------------------------------------
local addon, ns = ...

local LibEvent = LibStub:GetLibrary("LibEvent.7000")

local cache = {}

local function GetInspectTalentInfo(unit)
    if (not GetTalentTabInfo) then return end
    local isInspect = (unit ~= "player")
    local talentGroup = GetActiveTalentGroup(isInspect)

    local index
    local higher = 0
    for i = 1, 3 do
        cache[i] = {}

        local name, icon, point, _
        if ns.IsCata then
            _, name, _, icon, point = GetTalentTabInfo(i, isInspect, false, talentGroup)
        else
            name, icon, point = GetTalentTabInfo(i, isInspect, false, talentGroup)
        end

        if point > higher then
            higher = point
            index = i
        end

        cache[i].name = name
        cache[i].icon = icon
        cache[i].point = point
    end

    return index, cache
end

hooksecurefunc("ShowInspectItemListFrame", function(unit, parent, itemLevel, maxLevel)
    -- 禁用天賦觀察功能以避免錯誤（由於大改版天賦系統變化）
    -- 此功能已被禁用以防止數字與字串比較錯誤
end)
