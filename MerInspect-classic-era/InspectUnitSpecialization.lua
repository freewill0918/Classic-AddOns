---------------------------------------
-- 顯示職業圖標和天赋
-- @Author: M
-- @DepandsOn: InspectUnit.lua
---------------------------------------
local addon, ns = ...

local cache = {}

-- 專精快取
local playerSpecCache = nil

-- 創建事件框架來處理專精更新
local specUpdateFrame = CreateFrame("Frame")
specUpdateFrame:RegisterEvent("PLAYER_TALENT_UPDATE")
specUpdateFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
specUpdateFrame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
specUpdateFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

specUpdateFrame:SetScript("OnEvent", function(self, event, ...)
    -- 清除快取，強制重新獲取
    playerSpecCache = nil

    -- 如果角色面板打開，更新UI
    if CharacterFrame and CharacterFrame:IsVisible() and CharacterFrame.inspectFrame then
        C_Timer.After(0.1, function()
            ShowInspectItemListFrame("player", CharacterFrame, nil, nil)
        end)
    end
end)

-- 獲取單位專精信息
local function GetUnitSpecInfo(unit)
    local cache = {}
    local isInspect = unit ~= "player"

    if isInspect then
        -- 觀察別人
        local specID = GetInspectSpecialization(unit)
        if specID == 0 then return nil, cache end

        if GetSpecializationInfoByID then
            local _, name, _, icon = GetSpecializationInfoByID(specID)
            if name and icon then
                cache[1] = { name = name, icon = icon }
                return 1, cache
            end
        end
    else
        -- 處理自己的專精

        -- 檢查快取
        if playerSpecCache then
            cache[1] = playerSpecCache
            return 1, cache
        end

        -- 嘗試使用 C_SpecializationInfo 命名空間
        if C_SpecializationInfo and C_SpecializationInfo.GetSpecialization then
            local idx = C_SpecializationInfo.GetSpecialization()
            if idx and idx > 0 then
                local specID = nil
                if C_SpecializationInfo.GetSpecializationInfo then
                    specID = C_SpecializationInfo.GetSpecializationInfo(idx)
                end
                if specID and specID > 0 and GetSpecializationInfoByID then
                    local _, specName, specDesc, specIcon = GetSpecializationInfoByID(specID)
                    if specName and specIcon then
                        cache[1] = { name = specName, icon = specIcon }
                        playerSpecCache = cache[1]
                        return 1, cache
                    end
                end
            end
        end

        -- 嘗試使用全局 API (可能被其他AddOn設置)
        if GetSpecialization and GetSpecializationInfo then
            local idx = GetSpecialization()
            if idx and idx > 0 then
                local specID_new, specName, specDesc, specIcon, role = GetSpecializationInfo(idx)
                if specName and specIcon then
                    cache[1] = { name = specName, icon = specIcon }
                    playerSpecCache = cache[1]
                    return 1, cache
                end
            end
        end
    end

    return nil, cache
end

-- UI處理
hooksecurefunc("ShowInspectItemListFrame", function(unit, parent, itemLevel, maxLevel)
    local frame = parent.inspectFrame
    if not frame then
        return
    end

    if not frame.specicon then
        frame.specicon = frame:CreateTexture(nil, "BORDER")
        frame.specicon:SetSize(42, 42)
        frame.specicon:SetPoint("TOPRIGHT", -10, -11)
        frame.specicon:SetAlpha(0.5)
        frame.specicon:SetMask("Interface\\Minimap\\UI-Minimap-Background")

        frame.classicon = frame:CreateTexture(nil, "BORDER")
        frame.classicon:SetSize(42, 42)
        frame.classicon:SetPoint("TOPRIGHT", -10, -11)
        frame.classicon:SetAlpha(0.5)
        frame.classicon:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")

        frame.spectext = frame:CreateFontString(nil, "BORDER")
        frame.spectext:SetFont(SystemFont_Outline_Small:GetFont(), 11, "THINOUTLINE")
        frame.spectext:SetPoint("BOTTOM", frame.specicon, "BOTTOM", 0, -7)
        frame.spectext:SetJustifyH("CENTER")
    end

    local index, specCache = GetUnitSpecInfo(unit)

    -- 設置文字
    frame.spectext:SetText(index and specCache[index].name or "")

    -- 設置圖示顯示狀態
    frame.specicon:SetShown(index ~= nil)
    frame.classicon:SetShown(index == nil)

    if index then
        -- 有專精資訊，顯示專精圖示
        frame.specicon:SetTexture(specCache[index].icon)
    else
        -- 沒有專精資訊，顯示職業圖示
        local class = select(2, UnitClass(unit))
        if class then
            local x1, x2, y1, y2 = unpack(CLASS_ICON_TCOORDS[strupper(class)])
            frame.classicon:SetTexCoord(x1, x2, y1, y2)
        end
    end
end)