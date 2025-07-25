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

-- If you are doing localization and would like your name added here, please feel free
-- to do so, or let me know and I will be happy to add you to the credits
-- Korean translation by Next96 :)

local L = LibStub("AceLocale-3.0"):NewLocale("Skillet", "koKR")
if not L then return end

L[" days"] = "일"
L["About"] = "정보"
L["ABOUTDESC"] = "Skillet에 관한 정보 표시"
L["Add Recipe to Ignored List"] = "무시 목록에 도안 추가"
L["Add to Ignore Materials"] = "무시 재료에 추가"
L["alts"] = "다른 캐릭터"
L["Appearance"] = "겉모양"
L["APPEARANCEDESC"] = "Skillet 표시 방법을 제어하는 옵션"
--[[Translation missing --]]
L["Auction"] = "Auction"
--[[Translation missing --]]
L["Bank"] = "Bank"
L["bank"] = "은행"
L["Blizzard"] = "블리자드"
L["Buy Reagents"] = "재료 구입"
L["buyable"] = "구입 가능"
L["Buyout"] = "즉시 구입"
L["By Difficulty"] = "난이도"
L["By Item Level"] = "아이템 레벨"
L["By Level"] = "레벨"
L["By Name"] = "이름"
L["By Quality"] = "품질"
L["By Skill Level"] = "숙련도"
L["can be created by crafting reagents"] = ": 재료를 만들어 제작 가능 "
L["can be created from reagents in your inventory"] = "소지품 안의 재료로 제작 가능 "
L["can be created from reagents on all characters"] = ": 모든 캐릭터에 있는 재료로 제작 가능 "
L["can be created from reagents on other characters"] = ": 다른 캐릭터의 재료로 제작 가능 "
L["can be created with reagents bought at vendor"] = ": 상점에서 구입한 재료로 제작 가능 "
L["Changing profession to"] = "전문기술 변경 :"
--[[Translation missing --]]
L["CLAMPTOSCREENDESC"] = "Force frames to remain on screen"
--[[Translation missing --]]
L["CLAMPTOSCREENNAME"] = "Clamp frames to screen"
L["Clear"] = "초기화"
L["Click"] = "클릭"
L["click here to add a note"] = "클릭하면 메모를 남길 수 있습니다."
L["Click to toggle favorite"] = "클릭으로 즐겨찾기 설정/해제"
L["Collapse all groups"] = "모든 그룹 접음"
L["Config"] = "설정"
L["CONFIGDESC"] = "Skillet 설정창을 엽니다."
L["CONFIRMQUEUECLEARDESC"] = "예약을 지우기 위해 좌클릭 대신 Alt-좌클릭을 사용합니다."
L["CONFIRMQUEUECLEARNAME"] = "예약을 지우기 위해 Alt-클릭 사용"
L["Conflict with the addon TradeSkillMaster"] = "TradeSkillMaster 애드온과 충돌이 있습니다."
L["Copy"] = "복사"
--[[Translation missing --]]
L["Cost"] = "Cost"
L["Could not find bag space for"] = "가방에 공간이 없습니다."
L["craftable"] = "제작 가능"
L["CRAFTBUTTONSDESC"] = "프레임에 전문 제작 버튼을 표시합니다."
L["CRAFTBUTTONSNAME"] = "전문 제작 버튼 표시"
L["Crafted By"] = "제작자"
L["Create"] = "제작"
L["Create All"] = "전부 제작"
L["Cut"] = "Cut"
L["DBMarket"] = "DBMarket"
L["Delete"] = "삭제"
L["DISPLAYITEMLEVELDESC"] = "제작 된 아이템에 아이템 레벨이 있는 ​​경우 레시피와 함께 해당 레벨이 표시됩니다."
L["DISPLAYITEMLEVELNAME"] = "아이템 레벨 표시"
L["DISPLAYREQUIREDLEVELDESC"] = "제작되는 아이템이 최소 사용 레벨이 필요한 경우, 제조법과 함께 표시합니다."
L["DISPLAYREQUIREDLEVELNAME"] = "최소 요구 레벨 표시"
--[[Translation missing --]]
L["DISPLAYSHOPPINGLIST"] = "Display shopping list at:"
L["DISPLAYSHOPPINGLISTATAUCTIONDESC"] = "예약된 제조법 제작에 필요하지만, 가방에 없는 아이템 쇼핑 목록을 표시합니다."
L["DISPLAYSHOPPINGLISTATAUCTIONNAME"] = "경매 이용 시 쇼핑 목록 표시"
L["DISPLAYSHOPPINGLISTATBANKDESC"] = "예약된 제조법 제작에 필요하지만, 가방에 없는 아이템 쇼핑 목록을 표시합니다."
L["DISPLAYSHOPPINGLISTATBANKNAME"] = "은행 이용 시 쇼핑 목록 표시"
L["DISPLAYSHOPPINGLISTATGUILDBANKDESC"] = "예약된 제조법 제작에 필요하지만, 가방에 없는 아이템 쇼핑 목록을 표시합니다."
L["DISPLAYSHOPPINGLISTATGUILDBANKNAME"] = "길드 은행 이용 시 쇼핑 목록 표시"
L["DISPLAYSHOPPINGLISTATMERCHANTDESC"] = "예약된 제조법 제작에 필요하지만, 가방에 없는 아이템 쇼핑 목록을 표시합니다."
L["DISPLAYSHOPPINGLISTATMERCHANTNAME"] = "상인 이용 시 쇼핑 목록 표시"
L["Draenor Engineering"] = "드레노어 기계공학"
L["Empty Group"] = "빈 그룹"
L["Enabled"] = "사용함"
L["Enchant"] = "마법부여"
--[[Translation missing --]]
L["ENCHANTSCROLLSDESC"] = "Use the enchant scroll item for links"
--[[Translation missing --]]
L["ENCHANTSCROLLSNAME"] = "Use enchant scrolls"
L["ENHANCHEDRECIPEDISPLAYDESC"] = "사용하면, 레시피 이름에 난이도를 나타내는 '+' 문자가 하나 이상 붙습니다."
L["ENHANCHEDRECIPEDISPLAYNAME"] = "레시피 난이도 문자로 표시"
L["Expand all groups"] = "모든 그룹 펼침"
L["Features"] = "기능"
L["FEATURESDESC"] = "Skillet 기능 설정"
L["Filter"] = "필터"
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
L["Flat"] = "단편화"
L["Flush All Data"] = "모든 데이터 삭제"
L["Flush Player Data"] = "플레이어 데이터 삭제"
L["Flush Recipe Data"] = "레시피 데이터 삭제"
L["FLUSHALLDATADESC"] = "모든 Skillet 데이터를 삭제합니다."
L["FLUSHPLAYERDATADESC"] = "이 캐릭터의 데이터를 삭제합니다."
L["FLUSHRECIPEDATADESC"] = "Skillet 레시피 데이터를 삭제합니다."
L["From Selection"] = "From Selection"
L["Glyph "] = "문양 "
L["Gold earned"] = "금전 획득"
L["Grouping"] = "분류"
L["Guild bank"] = "길드 은행"
L["has cooldown of"] = "has cooldown of"
L["have"] = "소지"
L["Hide trivial"] = "회색 제작템 숨기기"
L["Hide uncraftable"] = "제작할 수 없는 아이템 숨기기"
L["HIDEBLIZZARDFRAMEDESC"] = "Skillet 창으로 보는중이면 Blizzard 전문 기술 창을 숨깁니다."
L["HIDEBLIZZARDFRAMENAME"] = "Blizzard 창 숨김"
--[[Translation missing --]]
L["HIGHERVELLUMDESC"] = "Use a higher level of vellum when correct vellum is unavailable."
--[[Translation missing --]]
L["HIGHERVELLUMNAME"] = "Use higher vellum"
L["Ignore"] = "무시"
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
L["IGNORECLEARDESC"] = "무시할 재료 목록에서 모든 항목을 지웁니다."
L["Ignored List"] = "무시 목록"
L["Ignored Materials Clear"] = "무시 재료 지우기"
L["Ignored Materials List"] = "무시할 재료 목록"
L["IGNORELISTDESC"] = "무시할 재료 목록 창을 엽니다."
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSDESC"] = "Ignore queued reagents"
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSNAME"] = "Ignore queued reagents"
L["Illusions"] = "환영"
L["in your bank"] = ": 은행 안에 있음. "
L["in your inventory"] = ": 가방에 있음 "
L["Include alts"] = "다른 캐릭터 포함"
L["Include bank"] = "은행 포함"
L["Include guild"] = "길드 포함"
L["INCLUDEREAGENTSDESC"] = "검색된 아이템 문자에 재료 이름을 추가합니다."
L["INCLUDEREAGENTSNAME"] = "검색 시 재료를 포함"
--[[Translation missing --]]
L["INTERRUPTCLEARDESC"] = "Moving, jumping, closing the frame, or clicking the Pause button clears the in progress queue entry"
--[[Translation missing --]]
L["INTERRUPTCLEARNAME"] = "Spell interrupt clears queue entry"
--[[Translation missing --]]
L["inventory"] = "inventory"
L["Inventory"] = "인벤토리"
L["INVENTORYDESC"] = "인벤토리 정보"
L["InvSlot"] = "소지품 아이템"
L["is now disabled"] = "사용안함"
L["is now enabled"] = "사용함"
L["Learned"] = "배움"
--[[Translation missing --]]
L["Left-Click to toggle"] = "Left-Click to toggle"
L["Library"] = "라이브러리"
L["Link Recipe"] = "레시피 링크"
L["LINKCRAFTABLEREAGENTSDESC"] = "현재 제조법에 필요한 재료를 만들 수 있는 경우, 재료를 클릭하면 해당 제조법으로 이동합니다."
L["LINKCRAFTABLEREAGENTSNAME"] = "재료 클릭 가능케 함"
--[[Translation missing --]]
L["List Reagents"] = "List Reagents"
L["Load"] = "불러옴"
L["Lock/Unlock"] = "고정/고정해제"
L["Market"] = "시장가"
--[[Translation missing --]]
L["Merchant"] = "Merchant"
L["Merge items"] = "아이템 합침"
--[[Translation missing --]]
L["Most Sold"] = "Most Sold"
L["Move Down"] = "아래로 이동"
L["Move to Bottom"] = "맨 아래로 이동"
L["Move to Top"] = "맨 위로 이동"
L["Move Up"] = "위로 이동"
L["need"] = "필요"
L["New"] = "신규"
L["New Group"] = "새로운 그룹"
L["No Data"] = "데이터 없음"
L["No headers, try again"] = "헤더가 없습니다. 다시 시도하세요."
L["No such queue saved"] = "저장된 예약을 찾을 수 없습니다."
L["None"] = "없음"
L["not yet cached"] = "캐쉬가 없습니다."
L["Notes"] = "메모"
L["Number of items to queue/create"] = "예약/제작할 아이템 개수"
L["Options"] = "설정"
L["Order by item"] = "아이템별 정렬"
L["Paste"] = "붙여넣기"
L["Pause"] = "중지"
--[[Translation missing --]]
L["Percent"] = "Percent"
L["Plugins"] = "플러그인"
L["Press"] = "전문기술을 계속 변경하려면"
L["Press Okay to continue changing professions"] = "전문기술을 계속 변경하려면 확인을 누르세요."
L["Press Process to continue"] = "계속하려면 진행을 누르세요."
L["Process"] = "진행"
--[[Translation missing --]]
L["Profit"] = "Profit"
L["Purchased"] = "구매"
L["Queue"] = "예약"
L["Queue All"] = "전부 예약"
L["Queue is empty"] = "예약된 것이 없습니다."
L["Queue is not empty. Overwrite?"] = "예약되어 있습니다. 덮어쓸까요?"
L["Queue with this name already exsists. Overwrite?"] = "이 이름인 예약이 이미 있습니다. 덮어쓸까요?"
L["QUEUECRAFTABLEREAGENTSDESC"] = "현재 제조법에 필요한 재료를 만들 수 있고 충분치 않는 경우, 해당 재료가 예약에 추가됩니다."
L["QUEUECRAFTABLEREAGENTSNAME"] = "제작 가능한 재료 예약"
L["QUEUECRAFTSDESC"] = "Allow enchants to be queued which adds needed reagents to the shopping list. Enchants cannot be processed from the queue and will be removed."
L["QUEUECRAFTSNAME"] = "Queue enchant reagents"
L["QUEUEGLYPHREAGENTSDESC"] = "현재 제조법에 다른 재료가 필요하고, 재료가 충분하지 않으면, 재료를 만들 수 있도록 예약 설정을 합니다. 이 설정은 문양에 한합니다."
L["QUEUEGLYPHREAGENTSNAME"] = "문양 재료 예약"
L["QUEUEONLYVIEWDESC"] = "체크 시 예약 창만 표시하고, 해제 시 예약 창과 Skillet 창을 모두 보여줍니다."
L["QUEUEONLYVIEWNAME"] = "예약 창만 표시"
L["Queues"] = "예약"
--[[Translation missing --]]
L["QUEUETOOLSDESC"] = "Add missing tools to shopping list"
--[[Translation missing --]]
L["QUEUETOOLSNAME"] = "Queue tools"
L["reagent id seems corrupt!"] = "재료 ID가 손상된 것 같습니다!"
L["Reagents"] = "재료"
L["reagents in inventory"] = "가방에 있는 재료로 제작"
L["Really delete this queue?"] = "현재 예약을 삭제하시겠습니까?"
L["Remove Favorite"] = "즐겨찾기 삭제"
L["Remove Recipe from Ignored List"] = "무시 목록의 도안 제거"
L["Rename"] = "이름 변경"
L["Rename Group"] = "그룹명 변경"
--[[Translation missing --]]
L["Request to queue %s items.\\n Are you sure?"] = "Request to queue %s items.\\n Are you sure?"
L["Rescan"] = "재조사"
L["Reset"] = "초기화"
L["Reset Recipe Filter"] = "레시피 필터 초기화"
L["RESETDESC"] = "Skillet 위치 초기화"
L["RESETRECIPEFILTERDESC"] = "레시피 필터 초기화"
L["Retrieve"] = "회수"
--[[Translation missing --]]
L["Right-Click for filtering options"] = "Right-Click for filtering options"
--[[Translation missing --]]
L["Sales for "] = "Sales for "
--[[Translation missing --]]
L["Sales Rate"] = "Sales Rate"
L["Same faction"] = "같은 진영"
L["Save"] = "저장"
L["Scale"] = "크기"
L["SCALEDESC"] = "전문기술 창의 크기를 설정합니다.(기본값:1.0)"
L["SCALETOOLTIPDESC"] = "레시피 툴팁(전역 UI 크기)과 일치하도록 스킬 및 재료 툴팁의 크기를 설정하세요."
L["SCALETOOLTIPNAME"] = "모든 툴팁 크기"
L["Scan completed"] = "조사가 완료되었습니다."
L["Scanning tradeskill"] = "전문기술 조사"
L["Search"] = "검색"
L["Select All"] = "모두 선택"
L["Select None"] = "선택 안 함"
L["Select skill difficulty threshold"] = "숙련도 증가 선택"
L["Selected Addon"] = "선택한 애드온"
L["Selection"] = "선택"
--[[Translation missing --]]
L["SELECTTOPRECIPEDESC"] = "Pre-select the top recipe"
--[[Translation missing --]]
L["SELECTTOPRECIPENAME"] = "Select top recipe"
--[[Translation missing --]]
L["Sellout"] = "Sellout"
L["Sells for "] = "판매 기간 "
L["Set Favorite"] = "즐겨찾기 설정"
L["shift-click to link"] = "쉬프트-클릭으로 링크"
L["Shopping Clear"] = "쇼핑 목록 비움"
L["Shopping List"] = "쇼핑 목록"
L["SHOPPINGCLEARDESC"] = "쇼핑 목록을 비웁니다."
L["SHOPPINGLISTDESC"] = "쇼핑 목록을 표시합니다."
L["Show favorite recipes only. Click on a star on the left side of a recipe to set favorite."] = "즐겨찾는 레시피만 표시합니다. 즐겨찾기로 설정하려면 레시피 왼쪽 별을 클릭하세요."
--[[Translation missing --]]
L["Show News"] = "Show News"
--[[Translation missing --]]
L["Show news when a new version is released"] = "Show news when a new version is released"
L["SHOWBANKALTCOUNTSDESC"] = "제작 가능한 아이템 수를 계산하고 보여줄 때, 당신의 은행과 다른 캐릭터의 아이템도 포함합니다."
L["SHOWBANKALTCOUNTSNAME"] = "은행과 다른 캐릭터의 내용물도 포함"
L["SHOWCRAFTCOUNTSDESC"] = "제작 가능한 총 아이템 수가 아닌, 제작 가능 횟수를 표시합니다."
L["SHOWCRAFTCOUNTSNAME"] = "제작 가능 횟수 표시"
L["SHOWCRAFTERSTOOLTIPDESC"] = "아이템 툴팁에 아이템 제작이 가능한 부 캐릭터를 표시합니다."
L["SHOWCRAFTERSTOOLTIPNAME"] = "툴팁에 제작자 표시"
L["SHOWDETAILEDRECIPETOOLTIPDESC"] = "왼쪽 패널 레시피 위에 마우스를 올리면 툴팁을 표시합니다."
L["SHOWDETAILEDRECIPETOOLTIPNAME"] = "레시피에 툴팁 표시"
L["SHOWFULLTOOLTIPDESC"] = "제작에 필요한 모든 정보를 툴팁에 표시합니다. 설정을 끄면 제작에 필요한 정보만 표시합니다. (CTRL키를 누르면 모든 정보가 표시됩니다."
L["SHOWFULLTOOLTIPNAME"] = "일반 툴팁 사용"
L["SHOWITEMNOTESTOOLTIPDESC"] = "아이템 툴팁에 사용자가 제공하는 메모를 추가합니다."
L["SHOWITEMNOTESTOOLTIPNAME"] = "툴팁에 사용자 메모 추가"
L["SHOWITEMTOOLTIPDESC"] = "제조법 툴팁 대신 제작 가능한 아이템 툴팁을 표시합니다."
L["SHOWITEMTOOLTIPNAME"] = "가능한 경우 아이템 툴팁 표시"
L["SHOWMAXUPGRADEDESC"] = "설정하면, 업그레이드 가능한 레시피를 \"(현재/최대)\"로 표시합니다. 해제 시, \"(현재)\"로 표시"
L["SHOWMAXUPGRADENAME"] = "업그레이드 가능한 레시피를 (현재/최대)로 표시"
L["SHOWRECIPESOURCEFORLEARNEDDESC"] = "배운 레시피에 레시피 획득 방법을 표시합니다."
L["SHOWRECIPESOURCEFORLEARNEDNAME"] = "배운 레시피에 레시피 획득 방법 표시"
L["Skillet Trade Skills"] = "Skillet-클래식"
L["Skipping"] = "넘김"
L["Sold amount"] = "판매량"
L["SORTASC"] = "레시피 목록을 오름차순으로 정렬합니다."
L["SORTDESC"] = "레시피 목록을 내림차순으로 정렬합니다."
L["Sorting"] = "정렬"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUEDESC"] = "Play a sound when the queue is empty"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUENAME"] = "Sound on Empty Queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUEDESC"] = "Play a sound when an entry is removed from the queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUENAME"] = "Sound on Remove Queue Entry"
L["Source:"] = "획득 방법:"
L["STANDBYDESC"] = "standby 모드를 켜고 끕니다."
L["STANDBYNAME"] = "standby"
L["Start"] = "시작"
--[[Translation missing --]]
L["Stop"] = "Stop"
L["SubClass"] = "직업용 아이템"
--[[Translation missing --]]
L["Suffix"] = "Suffix"
L["SUPPORTCRAFTINGDESC"] = "전문기술 제작에 대한 지원을 포함합니다. (/reload가 필요합니다.)"
L["SUPPORTCRAFTINGNAME"] = "제작 지원"
L["Supported Addons"] = "지원가능 애드온"
L["SUPPORTEDADDONSDESC"] = "인벤토리 추적에 사용할 수 있거나 사용 중인 지원되는 애드온"
L["This merchant sells reagents you need!"] = "이 상인은 필요한 재료를 판매합니다!"
L["TOOLTIPSCALEDESC"] = "레시피 목록, 세부 아이템 및 재료 툴팁의 크기"
L["Total Cost:"] = "총 비용:"
L["Total spent"] = "총 소비"
L["TRADEBUTTONSDESC"] = "프레임에 전문 기술 버튼을 표시합니다."
L["TRADEBUTTONSNAME"] = "전문 기술 버튼 표시"
L["TradeSkillMaster must be in 'WOW UI' mode to use Skillet-Classic"] = ""
L["Trained"] = "배움"
L["TRANSPARAENCYDESC"] = "전문기술 창의 투명도를 조정합니다."
L["Transparency"] = "투명도"
L["Unknown"] = "알 수 없음"
L["Unlearned"] = "배우지 않음"
--[[Translation missing --]]
L["Use Action Bar button to change professions"] = "Use Action Bar button to change professions"
--[[Translation missing --]]
L["USEALTBANKSDESC"] = "Include alt bank items when calculating number of crafts"
--[[Translation missing --]]
L["USEALTBANKSNAME"] = "Use alt banks"
L["USEALTCURRVENDITEMSDESC"] = "다른 화폐로 구입한 상인 아이템은 상인 공급으로 간주됩니다."
L["USEALTCURRVENDITEMSNAME"] = "다른 화폐로 구입한 상인 아이템 사용"
--[[Translation missing --]]
L["USEBANKASALTDESC"] = "Use the contents of the bank as if it was another alternate."
--[[Translation missing --]]
L["USEBANKASALTNAME"] = "Use bank as another alt"
L["USEBLIZZARDFORFOLLOWERSDESC"] = "주둔지 추종자 전문 기술에 블리자드 UI를 사용합니다."
L["USEBLIZZARDFORFOLLOWERSNAME"] = "추종자에 블리자드 UI 사용"
L["USEGUILDBANKASALTDESC"] = "길드 금고의 내용물을 마치 또 다른 캐릭처럼 사용합니다."
L["USEGUILDBANKASALTNAME"] = "길드 금고를 다른 캐릭처럼 사용"
L["Using Bank for"] = "은행 사용"
L["Using Reagent Bank for"] = "재료 은행 사용"
L["VENDORAUTOBUYDESC"] = "레시피를 예약하고 그 레시피에 필요한 재료를 파는 상인과 대화하면, 자동으로 구매합니다."
L["VENDORAUTOBUYNAME"] = "자동으로 재료 구매"
L["VENDORBUYBUTTONDESC"] = "상인과 대화할 때 모든 대기 레시피에 필요한 재료를 구입할 수 있는 버튼을 표시합니다."
L["VENDORBUYBUTTONNAME"] = "상인 이용 시 재료 구매 버튼 표시"
L["View Crafters"] = "제작자 보기"
--[[Translation missing --]]
L["VProfit"] = "VProfit"

