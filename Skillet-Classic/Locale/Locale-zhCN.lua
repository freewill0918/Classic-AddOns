--[[
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

-- Localization provided by Shadowsongs

-- If you are doing localization and would like your name added here, please feel free
-- to do so, or let me know and I will be happy to add you to the credits

local L = LibStub("AceLocale-3.0"):NewLocale("Skillet", "zhCN")
if not L then return end

L[" days"] = "天"
L["About"] = "关于"
L["ABOUTDESC"] = "显示Skillet简介"
L["Add Recipe to Ignored List"] = "添加配方到忽略列表"
L["Add to Ignore Materials"] = "添加到忽略材料"
L["alts"] = "小计"
L["Appearance"] = "外观"
L["APPEARANCEDESC"] = "控制 Skillet 显示方式的选项"
--[[Translation missing --]]
L["Auction"] = "Auction"
--[[Translation missing --]]
L["Bank"] = "Bank"
L["bank"] = "银行"
L["Blizzard"] = "暴雪"
L["Buy Reagents"] = "购买材料"
L["buyable"] = "可购买"
L["Buyout"] = "收购"
L["By Difficulty"] = "根据难度"
L["By Item Level"] = "根据物品等级"
L["By Level"] = "根据等级"
L["By Name"] = "根据名称"
L["By Quality"] = "根据品质"
L["By Skill Level"] = "根据技能等级"
L["can be created by crafting reagents"] = "可通过制作材料制造"
L["can be created from reagents in your inventory"] = "个可用背包中的材料制作"
L["can be created from reagents on all characters"] = "可从所有人物的材料制造"
L["can be created from reagents on other characters"] = "可由其他人物的材料制造"
L["can be created with reagents bought at vendor"] = "可通过从商人处购买材料制造"
L["Changing profession to"] = "更换专业为"
--[[Translation missing --]]
L["CLAMPTOSCREENDESC"] = "Force frames to remain on screen"
--[[Translation missing --]]
L["CLAMPTOSCREENNAME"] = "Clamp frames to screen"
L["Clear"] = "清除"
L["Click"] = "点击"
L["click here to add a note"] = "点击这里来添加注释"
L["Click to toggle favorite"] = "单击切换收藏"
L["Collapse all groups"] = "收起所有分组"
L["Config"] = "设定"
L["CONFIGDESC"] = "显示Skillet的设定窗口"
L["CONFIRMQUEUECLEARDESC"] = "使用Alt+左键代替左键来清除队列"
L["CONFIRMQUEUECLEARNAME"] = "使用Alt键单击来清除队列"
L["Conflict with the addon TradeSkillMaster"] = "与TradeSkillMaster插件冲突"
L["Copy"] = "复制"
--[[Translation missing --]]
L["Cost"] = "Cost"
L["Could not find bag space for"] = "背包无可用空格"
L["craftable"] = "可制造"
L["CRAFTBUTTONSDESC"] = "框架中包含专业制作按钮"
L["CRAFTBUTTONSNAME"] = "包含专业制作按钮"
L["Crafted By"] = "可制造"
L["Create"] = "制造"
L["Create All"] = "全部制造"
L["Cut"] = "剪切"
L["DBMarket"] = "DBMarket"
L["Delete"] = "删除"
L["DISPLAYITEMLEVELDESC"] = "如果要制作的物品有物品级别，该级别将与配方一起显示。"
L["DISPLAYITEMLEVELNAME"] = "显示物品等级"
L["DISPLAYREQUIREDLEVELDESC"] = "如果要制作的物品需要更高的等级来使用, 该等级会显示在配方旁。"
L["DISPLAYREQUIREDLEVELNAME"] = "显示需要的等级"
--[[Translation missing --]]
L["DISPLAYSHOPPINGLIST"] = "Display shopping list at:"
L["DISPLAYSHOPPINGLISTATAUCTIONDESC"] = "为队列配方中所需,但不在你背包中的材料显示一个购物清单."
L["DISPLAYSHOPPINGLISTATAUCTIONNAME"] = "在拍卖行显示购物清单"
L["DISPLAYSHOPPINGLISTATBANKDESC"] = "为队列配方中所需,但不在你背包中的材料显示一个购物清单."
L["DISPLAYSHOPPINGLISTATBANKNAME"] = "在银行显示购物清单"
L["DISPLAYSHOPPINGLISTATGUILDBANKDESC"] = "为队列配方中所需,但不在你背包中的材料显示一个购物清单."
L["DISPLAYSHOPPINGLISTATGUILDBANKNAME"] = "在公会银行显示购物清单"
L["DISPLAYSHOPPINGLISTATMERCHANTDESC"] = "为队列配方中所需,但不在你背包中的材料显示一个购物清单."
L["DISPLAYSHOPPINGLISTATMERCHANTNAME"] = "在商人处显示购物清单"
L["Draenor Engineering"] = "德拉诺工程"
L["Empty Group"] = "空白组"
L["Enabled"] = "启用"
L["Enchant"] = "附魔"
--[[Translation missing --]]
L["ENCHANTSCROLLSDESC"] = "Use the enchant scroll item for links"
--[[Translation missing --]]
L["ENCHANTSCROLLSNAME"] = "Use enchant scrolls"
L["ENHANCHEDRECIPEDISPLAYDESC"] = "启用时,配方名称后将显示一个或数个'+'来表示其难度"
L["ENHANCHEDRECIPEDISPLAYNAME"] = "以文字显示配方难度"
L["Expand all groups"] = "展开所有分组"
L["Features"] = "功能"
L["FEATURESDESC"] = "可选择是否启用的额外功能"
L["Filter"] = "筛选"
--[[Translation missing --]]
L["Filter recipes by source"] = "Filter recipes by source"
--[[Translation missing --]]
L["FLASHONEMPTYQUEUEDESC"] = "Flash icon when the queue is empty"
--[[Translation missing --]]
L["FLASHONEMPTYQUEUENAME"] = "Flash on Empty Queue"
--[[Translation missing --]]
L["FLASHONREMOVEQUEUEDESC"] = "Flash icon when an entry is removed from the queue"
--[[Translation missing --]]
L["FLASHONREMOVEQUEUENAME"] = "Flash on Remove Queue Entry"
L["Flat"] = "不分組"
L["Flush All Data"] = "刷新所有数据"
L["Flush Player Data"] = "立即输出玩家资料"
L["Flush Recipe Data"] = "刷新配方数据"
L["FLUSHALLDATADESC"] = "刷新所有Skillet数据"
L["FLUSHPLAYERDATADESC"] = "输出并清空缓冲区中这个角色的资料"
L["FLUSHRECIPEDATADESC"] = "刷新Skillet配方数据"
L["From Selection"] = "从选择中"
L["Glyph "] = "铭文"
L["Gold earned"] = "金额获得"
L["Grouping"] = "群组"
--[[Translation missing --]]
L["Guild bank"] = "Guild bank"
L["has cooldown of"] = "冷却时间"
L["have"] = "拥有"
L["Hide trivial"] = "隐藏无价值的"
L["Hide uncraftable"] = "隐藏不能制作的"
L["HIDEBLIZZARDFRAMEDESC"] = "当显示Skillet框体时，隐藏暴雪专业技能框体。"
L["HIDEBLIZZARDFRAMENAME"] = "隐藏暴雪框体"
--[[Translation missing --]]
L["HIGHERVELLUMDESC"] = "Use a higher level of vellum when correct vellum is unavailable."
--[[Translation missing --]]
L["HIGHERVELLUMNAME"] = "Use higher vellum"
L["Ignore"] = "忽略"
--[[Translation missing --]]
L["Ignore on hand"] = "Ignore on hand"
--[[Translation missing --]]
L["IGNOREBANKEDREAGENTSDESC"] = "Ignore banked reagents when queuing craftable reagents"
--[[Translation missing --]]
L["IGNOREBANKEDREAGENTSNAME"] = "Ignore banked reagents"
--[[Translation missing --]]
L["IGNORECHANGEDESC"] = "Ignore first profession change"
--[[Translation missing --]]
L["IGNORECHANGENAME"] = "Ignore first profession change"
L["IGNORECLEARDESC"] = "从忽略的材料列表中清除所有条目。"
L["Ignored List"] = "忽略的列表"
L["Ignored Materials Clear"] = "忽略的材料清除"
L["Ignored Materials List"] = "忽略的材料列表"
L["IGNORELISTDESC"] = "打开忽略的材料列表框体"
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSDESC"] = "Ignore queued reagents"
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSNAME"] = "Ignore queued reagents"
L["Illusions"] = "幻象"
L["in your bank"] = "在银行"
L["in your inventory"] = "在你的库存中"
L["Include alts"] = "包含其他人物"
L["Include bank"] = "包含银行"
L["Include guild"] = "包含工会"
L["INCLUDEREAGENTSDESC"] = "将材料名称添加到要搜索的项目文本中。"
L["INCLUDEREAGENTSNAME"] = "包含搜索中的材料"
--[[Translation missing --]]
L["INTERRUPTCLEARDESC"] = "Moving, jumping, closing the frame, or clicking the Pause button clears the in progress queue entry"
--[[Translation missing --]]
L["INTERRUPTCLEARNAME"] = "Spell interrupt clears queue entry"
--[[Translation missing --]]
L["inventory"] = "inventory"
L["Inventory"] = "背包"
L["INVENTORYDESC"] = "背包信息"
L["InvSlot"] = "插槽"
L["is now disabled"] = "现已停用"
L["is now enabled"] = "现已启用"
L["Learned"] = "已学会"
--[[Translation missing --]]
L["Left-Click to toggle"] = "Left-Click to toggle"
L["Library"] = "函数库"
L["Link Recipe"] = "链接配方"
L["LINKCRAFTABLEREAGENTSDESC"] = "如果你可以制造配方所需材料, 点击那个材料会显示材料的配方."
L["LINKCRAFTABLEREAGENTSNAME"] = "使材料可点击"
--[[Translation missing --]]
L["List Reagents"] = "List Reagents"
L["Load"] = "载入"
L["Lock/Unlock"] = "锁定/解锁"
L["Market"] = "市场"
--[[Translation missing --]]
L["Merchant"] = "Merchant"
L["Merge items"] = "合并物品"
--[[Translation missing --]]
L["Most Sold"] = "Most Sold"
L["Move Down"] = "下移"
L["Move to Bottom"] = "下移至底部"
L["Move to Top"] = "上移至顶部"
L["Move Up"] = "上移"
L["need"] = "需要"
L["New"] = "新"
L["New Group"] = "新分组"
L["No Data"] = "无数据"
L["No headers, try again"] = "没有标题，请重试。"
L["No such queue saved"] = "没有保存这样的队列"
L["None"] = "无"
L["not yet cached"] = "未缓存"
L["Notes"] = "注释"
L["Number of items to queue/create"] = "队列/制造 的物品数量数量"
L["Options"] = "选项"
L["Order by item"] = "以物品排序"
L["Paste"] = "粘贴"
L["Pause"] = "暂停"
--[[Translation missing --]]
L["Percent"] = "Percent"
L["Plugins"] = "插件"
L["Press"] = "按 "
L["Press Okay to continue changing professions"] = "按确认来切换专业技能"
L["Press Process to continue"] = "按下处理继续"
L["Process"] = "处理"
--[[Translation missing --]]
L["Profit"] = "Profit"
L["Purchased"] = "已购买的"
L["Queue"] = "队列"
L["Queue All"] = "列出所有"
L["Queue is empty"] = "队列为空"
L["Queue is not empty. Overwrite?"] = "已有队列, 是否覆盖?"
L["Queue with this name already exsists. Overwrite?"] = "队列名称已存在, 是否覆盖?"
L["QUEUECRAFTABLEREAGENTSDESC"] = "如果你可以制造当前配方所需材料, 但是不够, 那么该材料会被加入队列"
L["QUEUECRAFTABLEREAGENTSNAME"] = "将可制作的材料加入队列"
L["QUEUECRAFTSDESC"] = "Allow enchants to be queued which adds needed reagents to the shopping list. Enchants cannot be processed from the queue and will be removed."
L["QUEUECRAFTSNAME"] = "Queue enchant reagents"
L["QUEUEGLYPHREAGENTSDESC"] = "如果你可以制造配方所需材料,且数量不足,此材料将被加入队列,此选项专指铭文"
L["QUEUEGLYPHREAGENTSNAME"] = "为铭文列出材料"
L["QUEUEONLYVIEWDESC"] = "只有在设置时才显示独立队列窗口，清除时显示独立队列窗口和Skillet窗口。"
L["QUEUEONLYVIEWNAME"] = "仅显示独立队列"
L["Queues"] = "队列管理"
--[[Translation missing --]]
L["QUEUETOOLSDESC"] = "Add missing tools to shopping list"
--[[Translation missing --]]
L["QUEUETOOLSNAME"] = "Queue tools"
L["reagent id seems corrupt!"] = "材料ID错误！"
L["Reagents"] = "材料"
L["reagents in inventory"] = "背包中的材料"
L["Really delete this queue?"] = "确定删除此队列?"
L["Remove Favorite"] = "移除收藏"
L["Remove Recipe from Ignored List"] = "从忽略列表移除配方"
L["Rename"] = "重命名"
L["Rename Group"] = "重命名组"
--[[Translation missing --]]
L["Request to queue %s items.\\n Are you sure?"] = "Request to queue %s items.\\n Are you sure?"
L["Rescan"] = "重新扫描"
L["Reset"] = "重置"
L["Reset Recipe Filter"] = "重置配方筛选"
L["RESETDESC"] = "重置 Skillet 位置"
L["RESETRECIPEFILTERDESC"] = "重置配方筛选项"
L["Retrieve"] = "收回"
--[[Translation missing --]]
L["Right-Click for filtering options"] = "Right-Click for filtering options"
--[[Translation missing --]]
L["Sales for "] = "Sales for "
--[[Translation missing --]]
L["Sales Rate"] = "Sales Rate"
L["Same faction"] = "同阵营"
L["Save"] = "储存"
L["Scale"] = "比例"
L["SCALEDESC"] = "专业技能窗口比例 (默认值 1.0)"
L["SCALETOOLTIPDESC"] = "设定专业技能和材料的鼠标提示缩放大小，以符合配方的鼠标提示大小 (整体接口缩放大小)。"
L["SCALETOOLTIPNAME"] = "缩放所有鼠标提示"
L["Scan completed"] = "扫描完成"
L["Scanning tradeskill"] = "扫描商业技能中..."
L["Search"] = "搜索"
L["Select All"] = "全选"
L["Select None"] = "取消选择"
L["Select skill difficulty threshold"] = "选择技能难度阈值"
L["Selected Addon"] = "已选择插件"
L["Selection"] = "选项"
--[[Translation missing --]]
L["SELECTTOPRECIPEDESC"] = "Pre-select the top recipe"
--[[Translation missing --]]
L["SELECTTOPRECIPENAME"] = "Select top recipe"
--[[Translation missing --]]
L["Sellout"] = "Sellout"
L["Sells for "] = "售得"
L["Set Favorite"] = "收藏"
L["shift-click to link"] = "shift-点击生成链接"
L["Shopping Clear"] = "购物清除"
L["Shopping List"] = "购物清单"
L["SHOPPINGCLEARDESC"] = "清除购物清单"
L["SHOPPINGLISTDESC"] = "显示购物清单"
L["Show favorite recipes only. Click on a star on the left side of a recipe to set favorite."] = "只显示收藏的食谱。单击食谱左侧的星号来设置收藏。"
--[[Translation missing --]]
L["Show News"] = "Show News"
--[[Translation missing --]]
L["Show news when a new version is released"] = "Show news when a new version is released"
L["SHOWBANKALTCOUNTSDESC"] = "计算可制作数量时包含银行及小号"
L["SHOWBANKALTCOUNTSNAME"] = "包含银行及小号"
L["SHOWCRAFTCOUNTSDESC"] = "显示配方可制作次数,而非可制作数量"
L["SHOWCRAFTCOUNTSNAME"] = "显示可制作次数"
L["SHOWCRAFTERSTOOLTIPDESC"] = "在物品提示显示可制作的角色"
L["SHOWCRAFTERSTOOLTIPNAME"] = "在物品提示显示制作者"
L["SHOWDETAILEDRECIPETOOLTIPDESC"] = "鼠标指向配方时，在左边显示详细提示信息"
L["SHOWDETAILEDRECIPETOOLTIPNAME"] = "显示详细的配方提示信息"
L["SHOWFULLTOOLTIPDESC"] = "显示配方完整讯息,如果关闭将只会显示精简提示(按住Ctrl以显示完整提示)"
L["SHOWFULLTOOLTIPNAME"] = "使用标准提示"
L["SHOWITEMNOTESTOOLTIPDESC"] = "在物品的提示信息中增加自定义注释"
L["SHOWITEMNOTESTOOLTIPNAME"] = "在提示信息中增加自定义注释"
L["SHOWITEMTOOLTIPDESC"] = "显示可制作物品信息,而非配方信息"
L["SHOWITEMTOOLTIPNAME"] = "显示物品提示"
L["SHOWMAXUPGRADEDESC"] = "设置好后，将可升级配方显示为“(当前/最大)”。未设置时，显示为“(当前)”"
L["SHOWMAXUPGRADENAME"] = "显示可升级配方(当前/最大)"
L["SHOWRECIPESOURCEFORLEARNEDDESC"] = "显示已学会配方的来源"
L["SHOWRECIPESOURCEFORLEARNEDNAME"] = "显示已学会配方的来源"
L["Skillet Trade Skills"] = "Skillet专业技能-怀旧服"
L["Skipping"] = "跳过"
L["Sold amount"] = "贩卖数量"
L["SORTASC"] = "递减排序"
L["SORTDESC"] = "递增排序"
L["Sorting"] = "排序"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUEDESC"] = "Play a sound when the queue is empty"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUENAME"] = "Sound on Empty Queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUEDESC"] = "Play a sound when an entry is removed from the queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUENAME"] = "Sound on Remove Queue Entry"
L["Source:"] = "来源:"
L["STANDBYDESC"] = "切换待命模式开启/关闭"
L["STANDBYNAME"] = "待命"
L["Start"] = "开始"
--[[Translation missing --]]
L["Stop"] = "Stop"
L["SubClass"] = "子类"
--[[Translation missing --]]
L["Suffix"] = "Suffix"
L["SUPPORTCRAFTINGDESC"] = "包含制作专业支持 (需要重新加载 /reload)"
L["SUPPORTCRAFTINGNAME"] = "制作支持"
L["Supported Addons"] = "支持的插件"
L["SUPPORTEDADDONSDESC"] = "能监视背包或正在监视背包的兼容插件"
L["This merchant sells reagents you need!"] = "这个商人出售你所需的材料!"
L["TOOLTIPSCALEDESC"] = "缩放配方清单、详细物品和材料的鼠标提示。"
L["Total Cost:"] = "总计花费:"
L["Total spent"] = "总计"
L["TRADEBUTTONSDESC"] = "框架中包含专业技能按钮"
L["TRADEBUTTONSNAME"] = "包含专业技能按钮"
L["TradeSkillMaster must be in 'WOW UI' mode to use Skillet-Classic"] = ""
L["Trained"] = "训练师"
L["TRANSPARAENCYDESC"] = "商业技能窗口透明度"
L["Transparency"] = "透明度"
L["Unknown"] = "未知"
L["Unlearned"] = "未学会"
--[[Translation missing --]]
L["Use Action Bar button to change professions"] = "Use Action Bar button to change professions"
--[[Translation missing --]]
L["USEALTBANKSDESC"] = "Include alt bank items when calculating number of crafts"
--[[Translation missing --]]
L["USEALTBANKSNAME"] = "Use alt banks"
L["USEALTCURRVENDITEMSDESC"] = "用其他货币购买的供应商物品被认为是供应商提供的。"
L["USEALTCURRVENDITEMSNAME"] = "使用其他货币购买的供应商物品"
--[[Translation missing --]]
L["USEBANKASALTDESC"] = "Use the contents of the bank as if it was another alternate."
--[[Translation missing --]]
L["USEBANKASALTNAME"] = "Use bank as another alt"
L["USEBLIZZARDFORFOLLOWERSDESC"] = "为要塞追随者商业技能使用暴雪用户界面"
L["USEBLIZZARDFORFOLLOWERSNAME"] = "为追随者使用暴雪用户界面"
L["USEGUILDBANKASALTDESC"] = "小号使用公会银行内容"
L["USEGUILDBANKASALTNAME"] = "小号使用公会银行"
L["Using Bank for"] = "使用银行给"
L["Using Reagent Bank for"] = "使用材料银行给"
L["VENDORAUTOBUYDESC"] = "拜访商人时自动购买队列中配方所需材料."
L["VENDORAUTOBUYNAME"] = "自动购买材料"
L["VENDORBUYBUTTONDESC"] = "开启商人对话窗口时，显示购买按钮，以便购买队列中需要的材料."
L["VENDORBUYBUTTONNAME"] = "在商人窗口显示购买按钮"
L["View Crafters"] = "查看制作者"
--[[Translation missing --]]
L["VProfit"] = "VProfit"

