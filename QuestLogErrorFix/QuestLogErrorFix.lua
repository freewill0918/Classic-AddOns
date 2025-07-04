-- QuestLogErrorFix.lua
-- 修復 Blizzard 本地化回調錯誤的插件

local addonName = "QuestLogErrorFix"
local addon = {}
_G[addonName] = addon

-- 創建框架來處理事件
local frame = CreateFrame("Frame", addonName .. "Frame")
local isEnabled = false

-- 臨時資料庫，用於插件載入前的設置
local tempDB = {
    enabled = true,
    debugMode = false,
    disableScriptErrors = true  -- 預設關閉 Lua 錯誤彈窗
}

-- 修復 QuestLogDailyQuestCount 變數 (根據網路上的解決方案)
local function FixQuestLogDailyQuestCount()
    -- 根據網路解決方案，QuestLogDailyQuestCount 需要是一個 Frame
    if not _G.QuestLogDailyQuestCount then
        _G.QuestLogDailyQuestCount = CreateFrame("Frame")
        local db = addon.db or tempDB
        if db and db.debugMode then
            print("|cff00ff00[" .. addonName .. "]:|r 已修復 QuestLogDailyQuestCount 變數（設置為 Frame）")
        end
    end
end

-- 關閉 Lua 錯誤彈窗的功能
local function DisableScriptErrors()
    SetCVar("scriptErrors", "0")
    local db = addon.db or tempDB
    if db and db.debugMode then
        print("|cff00ff00[" .. addonName .. "]:|r 已關閉 Lua 錯誤彈窗")
    end
end

-- 開啟 Lua 錯誤彈窗的功能
local function EnableScriptErrors()
    SetCVar("scriptErrors", "1")
    local db = addon.db or tempDB
    if db and db.debugMode then
        print("|cff00ff00[" .. addonName .. "]:|r 已開啟 Lua 錯誤彈窗")
    end
end

-- 啟用修復
local function EnableFix()
    if not isEnabled then
        -- 立即修復變數
        FixQuestLogDailyQuestCount()

        -- 根據設定決定是否關閉錯誤彈窗
        local db = addon.db or tempDB
        if db and db.disableScriptErrors then
            DisableScriptErrors()
        end

        isEnabled = true
        print("|cff00ff00[" .. addonName .. "]:|r 已啟用 - Blizzard 本地化錯誤修復（簡化版）")
    else
        -- 如果已經啟用，只修復變數
        FixQuestLogDailyQuestCount()
    end
end

-- 禁用修復
local function DisableFix()
    if isEnabled then
        -- 根據設定決定是否重新開啟錯誤彈窗
        local db = addon.db or tempDB
        if db and db.disableScriptErrors then
            EnableScriptErrors()
        end

        isEnabled = false
        print("|cff00ff00[" .. addonName .. "]:|r 已禁用")
    end
end

-- 事件處理
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")

frame:SetScript("OnEvent", function(self, event, loadedAddon)
    if event == "ADDON_LOADED" and loadedAddon == addonName then
        -- 初始化保存的變數
        if not QuestLogErrorFixDB then
            QuestLogErrorFixDB = {
                enabled = true,
                debugMode = false,
                disableScriptErrors = true  -- 預設關閉 Lua 錯誤彈窗
            }
        end
        addon.db = QuestLogErrorFixDB

        -- 如果用戶禁用了修復，則停用
        if not addon.db.enabled and isEnabled then
            DisableFix()
        -- 如果用戶啟用了修復但尚未啟動，則啟動
        elseif addon.db.enabled and not isEnabled then
            EnableFix()
        end

        print("|cff00ff00[" .. addonName .. "]:|r 載入完成，使用保存的設置")

    elseif event == "PLAYER_LOGOUT" then
        -- 登出時恢復設置
        if isEnabled then
            DisableFix()
        end
    end
end)

-- 移除定期檢查以優化性能
-- 只在插件加載和錯誤發生時進行修復

-- 斜線指令
SLASH_QUESTLOGFIX1 = "/questlogfix"
SLASH_QUESTLOGFIX2 = "/qlfix"
SlashCmdList["QUESTLOGFIX"] = function(msg)
    msg = msg:lower():trim()

        if msg == "on" or msg == "enable" then
        addon.db.enabled = true
        EnableFix()
    elseif msg == "off" or msg == "disable" then
        addon.db.enabled = false
        DisableFix()
    elseif msg == "debug" then
        addon.db.debugMode = not addon.db.debugMode
        print("|cff00ff00[" .. addonName .. "]:|r 調試模式: " .. (addon.db.debugMode and "開啟" or "關閉"))
    elseif msg == "scripterrors" then
        addon.db.disableScriptErrors = not addon.db.disableScriptErrors
        if addon.db.disableScriptErrors then
            DisableScriptErrors()
            print("|cff00ff00[" .. addonName .. "]:|r 已關閉 Lua 錯誤彈窗")
        else
            EnableScriptErrors()
            print("|cff00ff00[" .. addonName .. "]:|r 已開啟 Lua 錯誤彈窗")
        end
    elseif msg == "status" then
        print("|cff00ff00[" .. addonName .. "]:|r 狀態: " .. (isEnabled and "啟用" or "禁用"))
        print("|cff00ff00[" .. addonName .. "]:|r Lua 錯誤彈窗: " .. (GetCVar("scriptErrors") == "1" and "開啟" or "關閉"))

        local questLogType = type(_G.QuestLogDailyQuestCount)
        if _G.QuestLogDailyQuestCount and questLogType == "table" and _G.QuestLogDailyQuestCount.GetObjectType then
            print("|cff00ff00[" .. addonName .. "]:|r QuestLogDailyQuestCount: Frame (已修復)")
        elseif _G.QuestLogDailyQuestCount then
            print("|cff00ff00[" .. addonName .. "]:|r QuestLogDailyQuestCount: " .. questLogType .. " (已存在)")
        else
            print("|cff00ff00[" .. addonName .. "]:|r QuestLogDailyQuestCount: nil (未修復)")
        end
    else
        print("|cff00ff00[" .. addonName .. "] 使用方法:|r")
        print("/questlogfix on|off - 啟用/禁用修復")
        print("/questlogfix debug - 切換調試模式")
        print("/questlogfix scripterrors - 切換 Lua 錯誤彈窗開關")
        print("/questlogfix status - 顯示狀態")
    end
end

-- 公開 API
addon.EnableFix = EnableFix
addon.DisableFix = DisableFix
addon.FixQuestLogDailyQuestCount = FixQuestLogDailyQuestCount
addon.DisableScriptErrors = DisableScriptErrors
addon.EnableScriptErrors = EnableScriptErrors

-- 立即修復變數（在插件載入的最早階段）
-- 使用臨時設置，避免依賴尚未載入的保存變數
if tempDB.enabled then
    -- 立即修復變數
    FixQuestLogDailyQuestCount()

    -- 根據設定決定是否關閉錯誤彈窗
    if tempDB.disableScriptErrors then
        DisableScriptErrors()
    end

    print("|cff00ff00[" .. addonName .. "]:|r 已提前修復 QuestLogDailyQuestCount 變數")
end