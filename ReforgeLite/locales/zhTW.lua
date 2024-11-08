local _, addonTable = ...
if addonTable.Locale ~= "zhTW" then return end

local L = addonTable.L

L["%s does not match your currently equipped %s. ReforgeLite only supports equipped items."] = "%s 与您当前装备的 %s 不匹配。ReforgeLite 仅支持装备物品。"
L["^+(%d+) %s$"] = "^+(%d+)%s$"
L["Active window color"] = "當前視窗的顏色"
L["Add cap"] = "增加上限"
L["At least"] = "至少（可超過）"
L["At most"] = "最多（不超過）"
--[[Translation missing --]]
--[[ L["Bearweave"] = ""--]] 
L["Best result"] = "最佳結果"
L["Cap value"] = "上限值"
L["Click an item to lock it"] = "點擊物品鎖定"
L["Compute"] = "計算"
L["Crit block"] = "致命格檔"
L["Debug"] = "偵錯"
L["Enter pawn string"] = "輸入pawn字串"
L["Enter the preset name"] = "輸入預設名稱"
L["Enter WoWSims JSON"] = "输入 WoWSims JSON"
L["Exactly"] = "確切地"
L["Expertise hard cap"] = "熟練硬上限"
L["Expertise soft cap"] = "熟練軟上限"
L["Export"] = "出口"
L["Import Pawn"] = "匯入Pawn"
L["Import WoWSims"] = "匯入WoWSims"
L["Inactive window color"] = "非當前視窗的顏色"
--[[Translation missing --]]
--[[ L["Masterfrost"] = ""--]] 
L["Melee DW hit cap"] = "進戰雙持命中上限"
L["Melee hit cap"] = "進戰命中上限"
--[[Translation missing --]]
--[[ L["Monocat"] = ""--]] 
L["No reforge"] = "無重鑄"
L["Open window when reforging"] = "當重鑄時開啟視窗"
L["Other/No flask"] = "其他/無精鍊"
L["Other/No food"] = "其他/無食物"
L["Presets"] = "預設"
L["Reforging window must be open"] = "重鑄視窗必須開啟"
L["Remove cap"] = "移除上限"
L["Result"] = "結果"
L["Score"] = "分數"
L["Show reforged stats in item tooltips"] = "在浮動提示資訊顯示物品重鑄狀態"
L["Slide to the left if the calculation slows your game too much."] = "如果計算使遊戲速度減慢太多，請向左滑動。"
L["Spell hit cap"] = "法術命中上限"
L["Spirit to hit"] = "精神轉命中"
L["Stat weights"] = "屬性比重"
L["Sum"] = "總計"
L["Tanking model"] = "坦克模式"
--[[Translation missing --]]
--[[ L["ticks"] = ""--]] 
L["Weight after cap"] = "超過上限後比重"

L["EquipPredicate"] = ITEM_SPELL_TRIGGER_ONEQUIP .. " "
