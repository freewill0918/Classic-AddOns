﻿--[[
 Skillet: A tradeskill window replacement.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]--

-- Chinese Traditional localizations provided by Purple and whocare@TW

-- If you are doing localization and would like your name added here, please feel free
-- to do so, or let me know and I will be happy to add you to the credits

local L = LibStub("AceLocale-3.0"):NewLocale("Skillet", "zhTW")
if not L then return end

L[" days"] = "天"
L["About"] = "關於"
L["ABOUTDESC"] = "顯示專業助手資訊"
L["Add Recipe to Ignored List"] = "將配方加入忽略清單"
L["Add to Ignore Materials"] = "加入忽略材料"
L["alts"] = "分身"
L["Appearance"] = "外觀"
L["APPEARANCEDESC"] = "控制如何顯示專業助手的設定選項"
L["Auction"] = "拍賣"
L["Bank"] = "銀行"
L["bank"] = "銀行"
L["Blizzard"] = "暴雪預設"
L["Buy Reagents"] = "購買材料"
L["buyable"] = "可購買"
L["Buyout"] = "買斷"
L["By Difficulty"] = "依據難度"
L["By Item Level"] = "依據物品等級"
L["By Level"] = "依據等級"
L["By Name"] = "依據名稱"
L["By Quality"] = "依據品質"
L["By Skill Level"] = "依據技能等級"
L["can be created by crafting reagents"] = "個製作材料後可以製造"
L["can be created from reagents in your inventory"] = "個可用背包中的材料製作"
L["can be created from reagents on all characters"] = "個可用所有角色的材料製作"
L["can be created from reagents on other characters"] = "個可用其他角色的材料製作"
L["can be created with reagents bought at vendor"] = "個可用商人販賣的材料製作"
L["Changing profession to"] = "更改專業為"
L["CLAMPTOSCREENDESC"] = "讓視窗保持在畫面內，不要超出畫面。"
L["CLAMPTOSCREENNAME"] = "視窗不要超出畫面"
L["Clear"] = "清除"
L["Click"] = "點擊"
L["click here to add a note"] = "點一下加入備註"
L["Click to toggle favorite"] = "點一下切換最愛"
L["Collapse all groups"] = "收合所有群組"
L["Config"] = "設定"
L["CONFIGDESC"] = "顯示專業助手的設定選項視窗"
L["CONFIRMQUEUECLEARDESC"] = "使用 Alt+左鍵，而不是左鍵點擊清除排程。"
L["CONFIRMQUEUECLEARNAME"] = "使用 Alt+左鍵點擊來清除排程"
L["Conflict with the addon TradeSkillMaster"] = "和 TradeSkillMaster 插件衝突"
L["Copy"] = "複製"
L["Cost"] = "花費"
L["Could not find bag space for"] = "背包沒有空間放置"
L["craftable"] = "可製作"
L["CRAFTBUTTONSDESC"] = "在視窗中包含專業製作按鈕"
L["CRAFTBUTTONSNAME"] = "包含專業製作按鈕"
L["Crafted By"] = "製作者"
L["Create"] = "製作"
L["Create All"] = "全部製作"
L["Cut"] = "剪下"
L["DBMarket"] = "DBMarket"
L["Delete"] = "刪除"
L["DISPLAYITEMLEVELDESC"] = "如果要製作的物品具有物品等級，該等級將會與配方一起顯示等級。"
L["DISPLAYITEMLEVELNAME"] = "顯示物品等級"
L["DISPLAYREQUIREDLEVELDESC"] = "如果要製作的物品有最低等級需求，該等級會和配方一起顯示。"
L["DISPLAYREQUIREDLEVELNAME"] = "顯示等級需求"
L["DISPLAYSHOPPINGLIST"] = "顯示購物清單於:"
L["DISPLAYSHOPPINGLISTATAUCTIONDESC"] = "顯示製作排程的配方時需要，但背包中沒有的材料購物清單。"
L["DISPLAYSHOPPINGLISTATAUCTIONNAME"] = "在拍賣場顯示購物清單"
L["DISPLAYSHOPPINGLISTATBANKDESC"] = "顯示製作排程的配方時需要，但背包中沒有的材料購物清單。"
L["DISPLAYSHOPPINGLISTATBANKNAME"] = "在銀行顯示購物清單"
L["DISPLAYSHOPPINGLISTATGUILDBANKDESC"] = "顯示製作排程的配方時需要，但背包中沒有的材料購物清單。"
L["DISPLAYSHOPPINGLISTATGUILDBANKNAME"] = "在公會銀行顯示購物清單"
L["DISPLAYSHOPPINGLISTATMERCHANTDESC"] = "顯示製作排程的配方時需要，但背包中沒有的材料購物清單。"
L["DISPLAYSHOPPINGLISTATMERCHANTNAME"] = "在商人顯示購物清單"
L["Draenor Engineering"] = "德拉諾工程學"
L["Empty Group"] = "空的群組"
L["Enabled"] = "啟用"
L["Enchant"] = "附魔"
L["ENCHANTSCROLLSDESC"] = "使用附魔卷軸物品來顯示連結"
L["ENCHANTSCROLLSNAME"] = "使用附魔卷軸"
L["ENHANCHEDRECIPEDISPLAYDESC"] = "啟用時，配方名稱後面會顯示一個或多個 '+' 來表示其難度。"
L["ENHANCHEDRECIPEDISPLAYNAME"] = "以文字顯示配方難度"
L["Expand all groups"] = "展開所有群組"
L["Features"] = "功能"
L["FEATURESDESC"] = "可選擇是否啟用的額外功能"
L["Filter"] = "過濾方式"
L["Filter recipes by source"] = "依來源過濾配方"
L["FLASHONEMPTYQUEUEDESC"] = "排程空了要閃爍圖示"
L["FLASHONEMPTYQUEUENAME"] = "排程空掉時閃爍"
L["FLASHONREMOVEQUEUEDESC"] = "有項目從排程中移除時要閃爍圖示"
L["FLASHONREMOVEQUEUENAME"] = "移除排程項目時閃爍"
L["Flat"] = "不分群組"
L["Flush All Data"] = "立即輸出所有資料"
L["Flush Player Data"] = "立即輸出玩家資料"
L["Flush Recipe Data"] = "立即輸出配方資料"
L["FLUSHALLDATADESC"] = "輸出並清空緩衝區中所有專業助手的資料"
L["FLUSHPLAYERDATADESC"] = "輸出並清空緩衝區中這個角色的資料"
L["FLUSHRECIPEDATADESC"] = "輸出並清空緩衝區中專業助手的配方資料"
L["From Selection"] = "從選取配方"
L["Glyph "] = "銘文學"
L["Gold earned"] = "金額獲得"
L["Grouping"] = "群組"
L["Guild bank"] = "公會銀行"
L["has cooldown of"] = "冷卻時間剩餘"
L["have"] = "有"
L["Hide trivial"] = "隱藏灰色"
L["Hide uncraftable"] = "顯示可製作的"
L["HIDEBLIZZARDFRAMEDESC"] = "顯示專業助手視窗時，隱藏遊戲內建的專業視窗。"
L["HIDEBLIZZARDFRAMENAME"] = "隱藏暴雪視窗"
L["HIGHERVELLUMDESC"] = "沒有合適的附魔卷軸時使用等級較高的。"
L["HIGHERVELLUMNAME"] = "使用高等附魔卷軸"
L["Ignore"] = "忽略"
L["Ignore on hand"] = "忽略手邊有的"
L["IGNOREBANKEDREAGENTSDESC"] = "排程可製作的材料時忽略材料銀行"
L["IGNOREBANKEDREAGENTSNAME"] = "忽略材料銀行"
L["IGNORECHANGEDESC"] = "忽略第一專業變更"
L["IGNORECHANGENAME"] = "忽略第一專業變更"
L["IGNORECLEARDESC"] = "清空材料忽略清單內的所有項目。"
L["Ignored List"] = "忽略清單"
L["Ignored Materials Clear"] = "清空忽略材料"
L["Ignored Materials List"] = "材料忽略清單"
L["IGNORELISTDESC"] = "開啟材料忽略清單。"
L["IGNOREQUEUEDREAGENTSDESC"] = "忽略已排程的材料"
L["IGNOREQUEUEDREAGENTSNAME"] = "忽略已排程的材料"
L["Illusions"] = "幻象"
L["in your bank"] = "個在你的銀行"
L["in your inventory"] = "個在你的背包"
L["Include alts"] = "包括分身"
L["Include bank"] = "包含銀行"
L["Include guild"] = "包括公會銀行"
L["INCLUDEREAGENTSDESC"] = "將材料名稱加入到搜尋的項目文字中"
L["INCLUDEREAGENTSNAME"] = "搜尋時包含材料"
L["INTERRUPTCLEARDESC"] = "移動, 跳躍, 關閉介面, 或按下暫停鍵清除進行中的排程"
L["INTERRUPTCLEARNAME"] = "法術中斷清除排程"
L["inventory"] = "背包"
L["Inventory"] = "背包"
L["INVENTORYDESC"] = "背包資訊"
L["InvSlot"] = "背包格子"
L["is now disabled"] = "現在已停用"
L["is now enabled"] = "現在已啟用"
L["Learned"] = "已學會"
L["Left-Click to toggle"] = "左鍵: 切換顯示"
L["Library"] = "函式庫"
L["Link Recipe"] = "配方連結"
L["LINKCRAFTABLEREAGENTSDESC"] = "如果你能夠製作目前配方所需的材料，點一下材料會顯示其配方。"
L["LINKCRAFTABLEREAGENTSNAME"] = "開啟點擊追蹤材料"
L["List Reagents"] = "列出材料"
L["Load"] = "載入"
L["Lock/Unlock"] = "鎖定/取消鎖定"
L["Market"] = "市場"
L["Merchant"] = "商人"
L["Merge items"] = "合併物品"
L["Most Sold"] = "最暢銷"
L["Move Down"] = "下移"
L["Move to Bottom"] = "移到最下方"
L["Move to Top"] = "移到最上方"
L["Move Up"] = "上移"
L["need"] = "需要"
L["New"] = "新增"
L["New Group"] = "新群組"
L["No Data"] = "沒有資料"
L["No headers, try again"] = "沒有標題，請再試一次。"
L["No such queue saved"] = "無此項排程"
L["None"] = "無"
L["not yet cached"] = "尚未快取"
L["Notes"] = "備註"
L["Number of items to queue/create"] = "預計製作/排程的物品數量"
L["Options"] = "選項"
L["Order by item"] = "依物品排序"
L["Paste"] = "貼上"
L["Pause"] = "暫停"
L["Percent"] = "百分比"
L["Plugins"] = "外掛功能"
L["Press"] = "按下"
L["Press Okay to continue changing professions"] = "按下確定以繼續更改專業"
L["Press Process to continue"] = "請按下開始以繼續"
L["Process"] = "開始"
L["Profit"] = "利潤"
L["Purchased"] = "已購買"
L["Queue"] = "排程"
L["Queue All"] = "全部排程"
L["Queue is empty"] = "排程是空的"
L["Queue is not empty. Overwrite?"] = "排程不是空的，是否要取代?"
L["Queue with this name already exsists. Overwrite?"] = "已有名稱相同的排程，是否要取代?"
L["QUEUECRAFTABLEREAGENTSDESC"] = "如果你能製作目前配方所需的材料，但是材料不夠，這些材料也會被加入排程。"
L["QUEUECRAFTABLEREAGENTSNAME"] = "將可製作的材料加入排程"
L["QUEUECRAFTSDESC"] = "允許附魔加入排程，並將所需的材料加入購物清單。排程中無法進行的附魔將會被移除。"
L["QUEUECRAFTSNAME"] = "排程附魔材料"
L["QUEUEGLYPHREAGENTSDESC"] = "如果你能製作目前配方所需的材料，但是材料不夠，這些材料也會被加入排程。這個選項是銘文學專用的。"
L["QUEUEGLYPHREAGENTSNAME"] = "為銘文學排程材料"
L["QUEUEONLYVIEWDESC"] = "勾選時只會顯示獨立的排程視窗，不勾選時會同時顯示獨立的排程視窗和專業助手視窗。"
L["QUEUEONLYVIEWNAME"] = "只顯示獨立的排程視窗"
L["Queues"] = "排程"
L["QUEUETOOLSDESC"] = "將缺少的工具加入購物清單"
L["QUEUETOOLSNAME"] = "排程工具"
L["reagent id seems corrupt!"] = "材料 ID 似乎不正確!"
L["Reagents"] = "材料"
L["reagents in inventory"] = "背包材料"
L["Really delete this queue?"] = "是否確定要刪除這個排程?"
L["Remove Favorite"] = "移除最愛"
L["Remove Recipe from Ignored List"] = "從忽略清單中移除配方"
L["Rename"] = "重新命名"
L["Rename Group"] = "更名群組"
L["Request to queue %s items.\\n Are you sure?"] = "需要排程 %s 個物品。\\n確定嗎?"
L["Rescan"] = "重新掃描"
L["Reset"] = "重置"
L["Reset Recipe Filter"] = "重置配方過濾方式"
L["RESETDESC"] = "重置專業助手的位置"
L["RESETRECIPEFILTERDESC"] = "重置配方的過濾方式"
L["Retrieve"] = "取得"
L["Right-Click for filtering options"] = "右鍵: 過濾選項"
L["Sales for "] = "賣出 "
L["Sales Rate"] = "銷售率"
L["Same faction"] = "相同陣營"
L["Save"] = "儲存"
L["Scale"] = "縮放大小"
L["SCALEDESC"] = "專業技能視窗的縮放大小 (預設值 1.0)"
L["SCALETOOLTIPDESC"] = "設定專業技能和材料的滑鼠提示縮放大小，以符合配方的滑鼠提示大小 (整體介面縮放大小)。"
L["SCALETOOLTIPNAME"] = "縮放所有滑鼠提示"
L["Scan completed"] = "掃描完成"
L["Scanning tradeskill"] = "掃描專業技能"
L["Search"] = "搜尋"
L["Select All"] = "全選"
L["Select None"] = "清除選取"
L["Select skill difficulty threshold"] = "選擇技能難度等級"
L["Selected Addon"] = "已選擇插件"
L["Selection"] = "選取"
L["SELECTTOPRECIPEDESC"] = "預先選擇最上層的配方"
L["SELECTTOPRECIPENAME"] = "選擇最上層配方"
L["Sellout"] = "賣完"
L["Sells for "] = "售得"
L["Set Favorite"] = "設為最愛"
L["shift-click to link"] = "Shift+左鍵點擊來連結"
L["Shopping Clear"] = "清空購物"
L["Shopping List"] = "購物清單"
L["SHOPPINGCLEARDESC"] = "清空購物清單"
L["SHOPPINGLISTDESC"] = "顯示購物清單"
L["Show favorite recipes only. Click on a star on the left side of a recipe to set favorite."] = "只顯示最愛的配方。點一下配方左側的星形圖示來設為最愛。"
L["Show News"] = "顯示更新資訊"
L["Show news when a new version is released"] = "出新版本時顯示更新資訊"
L["SHOWBANKALTCOUNTSDESC"] = "計算和顯示可以製作的物品數量時，包含來自銀行和其他角色的物品。"
L["SHOWBANKALTCOUNTSNAME"] = "包括銀行及分身"
L["SHOWCRAFTCOUNTSDESC"] = "顯示可以製作配方的次數，而不是製作出來的物品總數。"
L["SHOWCRAFTCOUNTSNAME"] = "顯示可製作次數"
L["SHOWCRAFTERSTOOLTIPDESC"] = "在物品的滑鼠提示中顯示可以製作物品的分身角色"
L["SHOWCRAFTERSTOOLTIPNAME"] = "在滑鼠提示中顯示製作者"
L["SHOWDETAILEDRECIPETOOLTIPDESC"] = "滑鼠指向左側面板中的配方時顯示滑鼠提示"
L["SHOWDETAILEDRECIPETOOLTIPNAME"] = "顯示配方的滑鼠提示"
L["SHOWFULLTOOLTIPDESC"] = "顯示有關要製作的物品的所有資訊。關閉時只會看到縮減內容後的滑鼠提示 (按住 Ctrl 來顯示完整的滑鼠提示)。"
L["SHOWFULLTOOLTIPNAME"] = "使用標準的滑鼠提示"
L["SHOWITEMNOTESTOOLTIPDESC"] = "在該物品的滑鼠提示中加入自訂備註"
L["SHOWITEMNOTESTOOLTIPNAME"] = "在滑鼠提示中加入自訂備註"
L["SHOWITEMTOOLTIPDESC"] = "顯示可製作物品的滑鼠提示，而不是配方的滑鼠提示。"
L["SHOWITEMTOOLTIPNAME"] = "盡可能顯示物品的滑鼠提示"
L["SHOWMAXUPGRADEDESC"] = "勾選時，可升級的配方顯示為 \"(目前/最大)\"。不勾選時，顯示為 (目前)。"
L["SHOWMAXUPGRADENAME"] = "可升級的配方顯示 (目前/最大)"
L["SHOWRECIPESOURCEFORLEARNEDDESC"] = "顯示已學會配方的來源"
L["SHOWRECIPESOURCEFORLEARNEDNAME"] = "顯示已學會配方的來源"
L["Skillet Trade Skills"] = "專業助手"
L["Skipping"] = "略過"
L["Sold amount"] = "售出數量"
L["SORTASC"] = "配方清單從最高 (頂部) 到最低 (底部) 遞減排序"
L["SORTDESC"] = "配方清單從最低 (頂部) 到最高 (底部) 遞增排序"
L["Sorting"] = "排序"
L["SOUNDONEMPTYQUEUEDESC"] = "排程全部完成時播放音效"
L["SOUNDONEMPTYQUEUENAME"] = "排程完成音效"
L["SOUNDONREMOVEQUEUEDESC"] = "有項目從排程中移除時要播放音效"
L["SOUNDONREMOVEQUEUENAME"] = "移除排程項目時播放音效"
L["Source:"] = "來源:"
L["STANDBYDESC"] = "切換待命模式開啟/關閉"
L["STANDBYNAME"] = "待命"
L["Start"] = "開始"
L["Stop"] = "停止"
L["SubClass"] = "子分類"
L["Suffix"] = "字尾"
L["SUPPORTCRAFTINGDESC"] = "包含製作專業的支援 (需要重新載入介面)"
L["SUPPORTCRAFTINGNAME"] = "支援專業製作"
L["Supported Addons"] = "支援插件"
L["SUPPORTEDADDONSDESC"] = "支援用來追蹤背包物品的插件"
L["This merchant sells reagents you need!"] = "這個商人有賣你所需要的材料!"
L["TOOLTIPSCALEDESC"] = "縮放配方清單、詳細物品和材料的滑鼠提示。"
L["Total Cost:"] = "總計花費:"
L["Total spent"] = "總價"
L["TRADEBUTTONSDESC"] = "在視窗中包含專業技能按鈕"
L["TRADEBUTTONSNAME"] = "包含專業技能按鈕"
L["TradeSkillMaster must be in 'WOW UI' mode to use Skillet-Classic"] = "TradeSkillMaster 必須為 'WOW UI' 模式才能使用專業助手"
L["Trained"] = "訓練師"
L["TRANSPARAENCYDESC"] = "交易技能主視窗透明度"
L["Transparency"] = "透明度"
L["Unknown"] = "未知"
L["Unlearned"] = "尚未學會"
L["Use Action Bar button to change professions"] = "請改用法術書或快捷列按鈕來切換專業"
L["USEALTBANKSDESC"] = "計算製作數量時包含分身銀行的物品"
L["USEALTBANKSNAME"] = "使用分身銀行"
L["USEALTCURRVENDITEMSDESC"] = "使用其他貨幣購買的商人物品會被視為商人提供的"
L["USEALTCURRVENDITEMSNAME"] = "使用其他貨幣購買的商人物品"
L["USEBANKASALTDESC"] = "將銀行當作其他分身使用。"
L["USEBANKASALTNAME"] = "銀行視為分身"
L["USEBLIZZARDFORFOLLOWERSDESC"] = "要塞追隨者專業使用暴雪UI"
L["USEBLIZZARDFORFOLLOWERSNAME"] = "追隨者使用暴雪UI"
L["USEGUILDBANKASALTDESC"] = "將公會銀行當作其他分身使用。"
L["USEGUILDBANKASALTNAME"] = "公會銀行視為分身"
L["Using Bank for"] = "使用銀行在"
L["Using Reagent Bank for"] = "使用材料銀行在"
L["VENDORAUTOBUYDESC"] = "如果你有正在排程中的配方，並且與有出售該配方所需材料的商人對話時，將會自動購買材料。"
L["VENDORAUTOBUYNAME"] = "自動購買材料"
L["VENDORBUYBUTTONDESC"] = "與商人對話時，顯示購買按鈕以便採購排程所需材料。"
L["VENDORBUYBUTTONNAME"] = "在商人視窗顯示購買按鈕"
L["View Crafters"] = "查看製作者"
L["VProfit"] = "利潤"

