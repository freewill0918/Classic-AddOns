# QuestLogErrorFix - Blizzard 本地化錯誤修復

## 問題描述
修復 World of Warcraft 中常見的 Blizzard 本地化回調錯誤：
```
Error in localization callback ...ce/AddOns/Blizzard_FrameXMLBase/TBC/Localization.lua:130:
attempt to index global 'QuestLogDailyQuestCount' (a nil value)
```
```
Error in localization callback ...ce/AddOns/Blizzard_FrameXMLBase/TBC/Localization.lua:130:
attempt to call method 'SetPoint' (a nil value)
```

## 功能特色
- 🔧 **自動修復**：自動修復 QuestLogDailyQuestCount 變數（設置為 Frame）
- 🛡️ **錯誤抑制**：選擇性關閉 Lua 錯誤彈窗，錯誤仍記錄於 BugSack
- ⚡ **即時生效**：插件載入後立即開始工作
- 🚀 **性能優化**：只在必要時進行修復，無後台檢查
- 🎛️ **可控制**：提供指令來啟用/禁用功能

## 使用方法

### 自動使用
插件載入後會自動開始工作，無需任何設置。

### 指令控制
- `/questlogfix` 或 `/qlfix` - 顯示幫助資訊
- `/questlogfix on` - 啟用修復
- `/questlogfix off` - 禁用修復
- `/questlogfix scripterrors` - 切換 Lua 錯誤彈窗開關
- `/questlogfix status` - 查看狀態
- `/questlogfix debug` - 切換調試模式

## 安裝方法
1. 將整個 `QuestLogErrorFix` 資料夾複製到您的 `AddOns` 目錄
2. 重新啟動遊戲或重新載入 UI (`/reload`)
3. 插件會自動開始工作（預設會關閉 Lua 錯誤彈窗）

## 相容性
- ✅ World of Warcraft Classic
- ✅ The Burning Crusade Classic
- ✅ Wrath of the Lich King Classic
- ✅ 現代版 WoW

## 與其他插件的相容性
- 完全獨立運作，無依賴項
- 與 BugGrabber + BugSack 完全相容
- 不會影響其他錯誤處理插件的功能
- 只針對特定的 QuestLogDailyQuestCount 錯誤進行處理

## 注意事項
- 此插件專門處理 QuestLogDailyQuestCount 錯誤
- 可選關閉 Lua 錯誤彈窗，但錯誤仍會被 BugSack 記錄
- 建議同時使用 BugGrabber + BugSack 來處理和查看其他錯誤
- 這是臨時解決方案，等待官方修正後可移除

## 技術細節
插件的工作原理（基於網路上的解決方案）：
1. 檢測 `QuestLogDailyQuestCount` 全域變數是否存在
2. 如果不存在，自動建立並設置為 Frame 物件（而非 table）
3. 可選關閉 Lua 錯誤彈窗 (`/console scriptErrors 0`)
4. 錯誤仍會被 BugSack 記錄，只是不會彈出中斷遊戲
5. 只在插件加載時進行修復，無後台檢查

## 性能優化
- 移除了定期檢查，避免不必要的性能開銷
- 只在插件加載時進行一次性修復
- 當錯誤發生時才進行即時修復
- 對遊戲性能影響極小

## 依賴項
- **無必需依賴項** - 插件獨立運作
- **可選**: !BugGrabber + BugSack - 用於記錄和顯示其他錯誤

## 更新日誌
- **v1.0.6**: 重大重寫：基於網路解決方案，改用 Frame 修復 + 可選關閉錯誤彈窗
- **v1.0.5**: 重大更新：改用 BugGrabber 事件系統攔截錯誤，更可靠的錯誤處理
- **v1.0.4**: 修復時機問題，錯誤處理器現在在插件載入的最早階段就開始工作
- **v1.0.3**: 擴展錯誤處理範圍，支援更多 Blizzard 本地化錯誤（如 SetPoint 錯誤）
- **v1.0.2**: 移除定期檢查，優化性能
- **v1.0.1**: 修復變數類型問題，將 QuestLogDailyQuestCount 設置為 table 而非數字
- **v1.0.0**: 初始版本