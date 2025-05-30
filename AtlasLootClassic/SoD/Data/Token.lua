local ALName, ALPrivate = ...

local AtlasLoot = _G.AtlasLoot
local Token = {}
AtlasLoot.Data.Token = Token
local AL = AtlasLoot.Locales

local type, pairs = type, pairs
local format = format

local TOKE_NUMBER_RANGE = 900000

local TOKEN_FORMAT_STRING = "|cff00ff00"..AL["L-Click"]..":|r %s"
local TOKEN_TYPE_DEFAULT = 1
local TOKEN_TYPE_TEXT = {
	[0]  = nil,	-- empty
	[1]  = format(TOKEN_FORMAT_STRING, AL["Show additional items."]), -- default
	[2]  = format(TOKEN_FORMAT_STRING, AL["Show possible items."]),
	[3]  = format(TOKEN_FORMAT_STRING, AL["Show quest rewards."]),
	[4]  = format(TOKEN_FORMAT_STRING, AL["Quest objective."]),
	[5]  = format(TOKEN_FORMAT_STRING, AL["Reagent for..."]),
	[6]  = format(TOKEN_FORMAT_STRING, AL["Token for..."]),
	[7]  = format(TOKEN_FORMAT_STRING, AL["Bought with..."]),
	[8]  = format(TOKEN_FORMAT_STRING, AL["Token for..."]), -- same as '6' but with itemDesc added
	[9]  = format(TOKEN_FORMAT_STRING, AL["Show loot."]),
	[10] = format(TOKEN_FORMAT_STRING, AL["Show Achievements."]),
	[11] = format(TOKEN_FORMAT_STRING, AL["Contains."])

	-- classes get set with the init
	-- "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR", "DEATHKNIGHT"
}

local TOKEN_TYPE_ADD_ITEM_DESCRIPTION = {
	[7] = true,
	[8] = true,
	[9] = true,
}

local ICONS = ALPrivate.CLASS_ICON_PATH_ITEM_DB

local TOKEN, TOKEN_DATA = AtlasLoot:GetGameVersionDataTable()

TOKEN_DATA.CLASSIC = {
	-- [itemID] = { itemID or {itemID, count} }
	-- optional: type=0 		-	select the desc from the TOKEN_TYPE_TEXT table
	-- optional: itemID == 0 	-	creates a new line
	-- Dire Maul books
	[18401] = { 18348 },	-- Foror's Compendium of Dragon Slaying
	[18362] = { 18469, type = "PRIEST" },	-- Holy Bologna: What the Light Won't Tell You
	[18358] = { 18468, type = "MAGE" },		-- The Arcanist's Cookbook
	[18360] = { 18467, type = "WARLOCK" },	-- Harnessing Shadows
	[18356] = { 18465, type = "ROGUE" },	-- Garona: A Study on Stealth and Treachery
	[18364] = { 18470, type = "DRUID" },	-- The Emerald Dream
	[18361] = { 18473, type = "HUNTER" },	-- The Greatest Race of Hunters
	[18363] = { 18471, type = "SHAMAN" },	-- Frost Shock and You
	[18359] = { 18472, type = "PALADIN" },	-- The Light and How to Swing It
	[18357] = { 18466, type = "WARRIOR" },	-- Codex of Defense
	[18333] = { 18330, 0, 18333, 18335, {14344, 4}, {12753, 2}, type = 4 },	-- Libram of Focus
	[11733] = { 11642, 0, 11733, 11754, 8411, {11952, 4}, type = 4 },		-- Libram of Constitution
	[18334] = { 18331, 0, 18334, 18335, {14344, 2}, 12735, type = 4  },		-- Libram of Protection
	[18332] = { 18329, 0, 18332, 18335, {14344, 2}, {12938, 2}, type = 4 },	-- Libram of Rapidity
	[11736] = { 11644, 0, 11736, 11754, 11751, {11567, 4}, type = 4 },		-- Libram of Resilience
	[11732] = { 11622, 0, 11732, 11754, 11752, 8424, type = 4 },			-- Libram of Rumination
	[11734] = { 11643, 0, 11734, 11754, 11753, {11564, 4}, type = 4 },		-- Libram of Tenacity
	[11737] = { 11647, 11648, 11649, 11645, 11646, 0, 11737, 11754, {11951, 4}, {11563, 4}, type = 4 },	-- Libram of Voracity

	--- Darkmoon cards
	-- Portals / Darkmoon Card: Twisting Nether
	[19277] = { 19277, 19290, 0, 19276, 19278, 19279, 19280, 19281, 19282, 19283, 19284 },	-- Portals Deck
	[19276] = 19277,	-- Ace of Portals
	[19278] = 19277,	-- Two of Portals
	[19279] = 19277,	-- Three of Portals
	[19280] = 19277,	-- Four of Portals
	[19281] = 19277,	-- Five of Portals
	[19282] = 19277,	-- Six of Portals
	[19283] = 19277,	-- Seven of Portals
	[19284] = 19277,	-- Eight of Portals

	-- Elementals / Darkmoon Card: Maelstrom
	[19267] = { 19267, 19289, 0, 19268, 19269, 19270, 19271, 19272, 19273, 19274, 19275 },	-- Elementals Deck
	[19268] = 19267,	-- Ace of Elementals
	[19269] = 19267,	-- Two of Elementals
	[19270] = 19267,	-- Three of Elementals
	[19271] = 19267,	-- Four of Elementals
	[19272] = 19267,	-- Five of Elementals
	[19273] = 19267,	-- Six of Elementals
	[19274] = 19267,	-- Seven of Elementals
	[19275] = 19267,	-- Eight of Elementals

	-- Warlords / Darkmoon Card: Heroism
	[19257] = { 19257, 19287, 0, 19258, 19259, 19260, 19261, 19262, 19263, 19264, 19265 },	-- Warlords Deck
	[19258] = 19257,	-- Ace of Warlords
	[19259] = 19257,	-- Two of Warlords
	[19260] = 19257,	-- Three of Warlords
	[19261] = 19257,	-- Four of Warlords
	[19262] = 19257,	-- Five of Warlords
	[19263] = 19257,	-- Six of Warlords
	[19264] = 19257,	-- Seven of Warlords
	[19265] = 19257,	-- Eight of Warlords

	-- Beasts / Darkmoon Card: Blue Dragon
	[19228] = { 19228, 19288, 0, 19227, 19230, 19231, 19232, 19233, 19234, 19235, 19236 },	-- Beasts Deck
	[19227] = 19228,	-- Ace of Beasts
	[19230] = 19228,	-- Two of Beasts
	[19231] = 19228,	-- Three of Beasts
	[19232] = 19228,	-- Four of Beasts
	[19233] = 19228,	-- Five of Beasts
	[19234] = 19228,	-- Six of Beasts
	[19235] = 19228,	-- Seven of Beasts
	[19236] = 19228,	-- Eight of Beasts
	
	-- Level 50 Decks
	-- Wilds Deck
	[221272] = { 221272, 221308, 0, 221271, 221273, 221274, 221275, 221276, 221277, 221278, 221279 }, -- Wilds Deck
	[221271] = 221272,
	[221273] = 221272,
	[221274] = 221272,
	[221275] = 221272,
	[221276] = 221272,
	[221277] = 221272,
	[221278] = 221272,
	[221279] = 221272,
	
	-- Plagues Deck
	[221280] = { 221280, 221307, 0, 221281, 221282, 221283, 221284, 221285, 221286, 221287, 221288 },
	[221281] = 221280,
	[221282] = 221280,
	[221283] = 221280,
	[221284] = 221280,
	[221285] = 221280,
	[221286] = 221280,
	[221287] = 221280,
	[221288] = 221280,
	
	--Dunes Deck
	[221289] = {221289, 221309, 0, 221290, 221291, 221292, 221293, 221294, 221295, 221296, 221297},
	[221290] = 221289,
	[221291] = 221289,
	[221292] = 221289,
	[221293] = 221289,
	[221294] = 221289,
	[221295] = 221289,
	[221296] = 221289,
	[221297] = 221289,
	
	--Nightmares Deck
	[221299] = {221299, 221310, 0 , 221298, 221300, 221301, 221302, 221303, 221304, 221305, 221306},
	[221298] = 221299,
	[221300] = 221299,
	[221301] = 221299,
	[221302] = 221299,
	[221303] = 221299,
	[221304] = 221299,
	[221305] = 221299,
	[221306] = 221299,

	-- Zul'Gurub
	[19724] = { ICONS.HUNTER, 19831, {231321, "SoD"}, 0, ICONS.ROGUE, 19834, {231337, "SoD"}, 0, ICONS.PRIEST, 19841, {231333, "SoD"}, type = 6 },		-- Primal Hakkari Aegis
	[19717] = { ICONS.WARRIOR, 19824, {231351, "SoD"}, 0, ICONS.ROGUE, 19836, {231339, "SoD"}, 0, ICONS.SHAMAN, 19830, {231343, "SoD"}, type = 6 },	-- Primal Hakkari Armsplint
	[19716] = { ICONS.PALADIN, 19827, {231331, "SoD"}, 0, ICONS.HUNTER, 19833, {231323, "SoD"}, 0, ICONS.MAGE, 19846, {231326, "SoD"}, type = 6 },		-- Primal Hakkari Bindings
	[19719] = { ICONS.WARRIOR, 19823, {231352, "SoD"}, 0, ICONS.ROGUE, 19835, {231338, "SoD"}, 0, ICONS.SHAMAN, 19829, {231342, "SoD"}, type = 6 },	-- Primal Hakkari Girdle
	[19723] = { ICONS.WARRIOR, 19822, {231353, "SoD"}, 0, ICONS.MAGE, 20034, {231327, "SoD"}, 0, ICONS.WARLOCK, 20033, {231348, "SoD"}, type = 6 },	-- Primal Hakkari Kossack
	[19720] = { ICONS.PRIEST, 19842, {231335, "SoD"}, 0, ICONS.WARLOCK, 19849, {231349, "SoD"}, 0, ICONS.DRUID, 19839, {231318, "SoD"}, type = 6 },	-- Primal Hakkari Sash
	[19721] = { ICONS.PALADIN, 19826, {231330, "SoD"}, 0, ICONS.HUNTER, 19832, {231322, "SoD"}, 0, ICONS.MAGE, 19845, {231325, "SoD"}, type = 6 },		-- Primal Hakkari Shawl
	[19718] = { ICONS.PRIEST, 19843, {231335, "SoD"}, 0, ICONS.WARLOCK, 19848, {231347, "SoD"}, 0, ICONS.DRUID, 19840, {231319, "SoD"}, type = 6 },	-- Primal Hakkari Stanchion
	[19722] = { ICONS.PALADIN, 19825, {231329, "SoD"}, 0, ICONS.SHAMAN, 19828, {231341, "SoD"}, 0, ICONS.DRUID, 19838, {231317, "SoD"}, type = 6 },	-- Primal Hakkari Tabard

	-- AQ40
	[21237] = { 21268, 21273, 21275, type = 6 },			-- Imperial Qiraji Regalia
	[21232] = { 21242, 21244, 21272, 21269, type = 6 },	-- Imperial Qiraji Armaments
	[20928] = { ICONS.WARRIOR, 21330, 21333, 0, ICONS.HUNTER, 21367, 21365, 0, ICONS.ROGUE, 21361, 21359, 0, ICONS.PRIEST, 21350, 21349, type = 6  }, -- Qiraji Bindings of Command
	[20932] = { ICONS.PALADIN, 21391, 21388, 0, ICONS.SHAMAN, 21376, 21373, 0, ICONS.MAGE, 21345, 21344, 0, ICONS.WARLOCK, 21335, 21338, 0, ICONS.DRUID, 21354, 21355, type = 6 }, -- Qiraji Bindings of Dominance
	[20930] = { ICONS.PALADIN, 21387, 0, ICONS.HUNTER, 21366, 0, ICONS.ROGUE, 21360, 0, ICONS.SHAMAN, 21372, 0, ICONS.DRUID, 21353, type = 6 }, -- Vek'lor's Diadem
	[20926] = { ICONS.WARRIOR, 21329, 0, ICONS.PRIEST, 21348, 0, ICONS.MAGE, 21347, 0, ICONS.WARLOCK, 21337, type = 6 }, -- Vek'nilash's Circlet
	[20927] = { ICONS.WARRIOR, 21332, 0, ICONS.ROGUE, 21362, 0, ICONS.PRIEST, 21352, 0, ICONS.MAGE, 21346, type = 6 }, -- Ouro's Intact Hide
	[20931] = { ICONS.PALADIN, 21390, 0, ICONS.HUNTER, 21368, 0, ICONS.SHAMAN, 21375, 0, ICONS.WARLOCK, 21336, 0, ICONS.DRUID, 21356, type = 6 }, -- Skin of the Great Sandworm
	[20929] = { ICONS.WARRIOR, 21331, 0, ICONS.PALADIN, 21389, 0, ICONS.HUNTER, 21370, 0, ICONS.ROGUE, 21364, 0, ICONS.SHAMAN, 21374, type = 6 }, -- Carapace of the Old God
	[20933] = { ICONS.PRIEST, 21351, 0, ICONS.MAGE, 21343, 0, ICONS.WARLOCK, 21334, 0, ICONS.DRUID, 21357, type = 6 }, -- Husk of the Old God

	-- AQ20
	[20888] = { ICONS.HUNTER, 21402, {233422, "SoD"}, 0, ICONS.ROGUE, 21405, {233434, "SoD"}, 0, ICONS.PRIEST, 21411, {233431, "SoD"}, 0, ICONS.WARLOCK, 21417, {233440, "SoD"}, type = 6 },							-- Qiraji Ceremonial Ring
	[20884] = { ICONS.WARRIOR, 21393, {233443, "SoD"}, 0, ICONS.PALADIN, 21396, {233428, "SoD"}, 0, ICONS.SHAMAN, 21399, {233437, "SoD"}, 0, ICONS.MAGE, 21414, {233425, "SoD"}, 0, ICONS.DRUID, 21408, {233419, "SoD"}, type = 6 },		-- Qiraji Magisterial Ring
	[20885] = { ICONS.WARRIOR, 21394, {233441, "SoD"}, 0, ICONS.ROGUE, 21406, {233432, "SoD"}, 0, ICONS.PRIEST, 21412, {233430, "SoD"}, 0, ICONS.MAGE, 21415, {233424, "SoD"}, type = 6 },								-- Qiraji Martial Drape
	[20889] = { ICONS.PALADIN, 21397, {233427, "SoD"}, 0, ICONS.HUNTER, 21403, {233420, "SoD"}, 0, ICONS.SHAMAN, 21400, {233436, "SoD"}, 0, ICONS.WARLOCK, 21418, {233438, "SoD"}, 0, ICONS.DRUID, 21409, {233418, "SoD"}, type = 6 },	-- Qiraji Regal Drape
	[20890] = { ICONS.PRIEST, 21410, {233429, "SoD"}, 0, ICONS.MAGE, 21413, {233423, "SoD"}, 0, ICONS.WARLOCK, 21416, {233439, "SoD"}, 0, ICONS.DRUID, 21407, {233417, "SoD"}, type = 6 },								-- Qiraji Ornate Hilt
	[20886] = { ICONS.WARRIOR, 21392, {233442, "SoD"}, 0, ICONS.PALADIN, 21395, {233426, "SoD"}, 0, ICONS.HUNTER, 21401, {233421, "SoD"}, 0, ICONS.ROGUE, 21404, {233433, "SoD"}, 0, ICONS.SHAMAN, 21398, {233435, "SoD"}, type = 6  },	-- Qiraji Spiked Hilt

	-- Tier 3
	[22360] = { ICONS.PALADIN, 22428, 0, ICONS.HUNTER, 22438, 0, ICONS.SHAMAN, 22466, 0, ICONS.DRUID, 22490, type = 6 }, -- Desecrated Headpiece
	[22361] = { ICONS.PALADIN, 22429, 0, ICONS.HUNTER, 22439, 0, ICONS.SHAMAN, 22467, 0, ICONS.DRUID, 22491, type = 6 }, -- Desecrated Spaulders
	[22350] = { ICONS.PALADIN, 22425, 0, ICONS.HUNTER, 22436, 0, ICONS.SHAMAN, 22464, 0, ICONS.DRUID, 22488, type = 6 }, -- Desecrated Tunic
	[22362] = { ICONS.PALADIN, 22424, 0, ICONS.HUNTER, 22443, 0, ICONS.SHAMAN, 22471, 0, ICONS.DRUID, 22495, type = 6 }, -- Desecrated Wristguards
	[22364] = { ICONS.PALADIN, 22426, 0, ICONS.HUNTER, 22441, 0, ICONS.SHAMAN, 22469, 0, ICONS.DRUID, 22493, type = 6 }, -- Desecrated Handguards
	[22363] = { ICONS.PALADIN, 22431, 0, ICONS.HUNTER, 22442, 0, ICONS.SHAMAN, 22470, 0, ICONS.DRUID, 22494, type = 6 }, -- Desecrated Girdle
	[22359] = { ICONS.PALADIN, 22427, 0, ICONS.HUNTER, 22437, 0, ICONS.SHAMAN, 22465, 0, ICONS.DRUID, 22489, type = 6 }, -- Desecrated Legguards
	[22365] = { ICONS.PALADIN, 22430, 0, ICONS.HUNTER, 22440, 0, ICONS.SHAMAN, 22468, 0, ICONS.DRUID, 22492, type = 6 }, -- Desecrated Boots
	[22367] = { ICONS.PRIEST, 22514, 0, ICONS.MAGE ,22498, 0, ICONS.WARLOCK, 22506, type = 6 },	-- Desecrated Circlet
	[22368] = { ICONS.PRIEST, 22515, 0, ICONS.MAGE ,22499, 0, ICONS.WARLOCK, 22507, type = 6 },	-- Desecrated Shoulderpads
	[22351] = { ICONS.PRIEST, 22512, 0, ICONS.MAGE ,22496, 0, ICONS.WARLOCK, 22504, type = 6 }, -- Desecrated Robe
	[22369] = { ICONS.PRIEST, 22519, 0, ICONS.MAGE ,22503, 0, ICONS.WARLOCK, 22511, type = 6 }, -- Desecrated Bindings
	[22371] = { ICONS.PRIEST, 22517, 0, ICONS.MAGE ,22501, 0, ICONS.WARLOCK, 22509, type = 6 },	-- Desecrated Gloves
	[22370] = { ICONS.PRIEST, 22518, 0, ICONS.MAGE ,22502, 0, ICONS.WARLOCK, 22510, type = 6 },	-- Desecrated Belt
	[22366] = { ICONS.PRIEST, 22513, 0, ICONS.MAGE ,22497, 0, ICONS.WARLOCK, 22505, type = 6 }, -- Desecrated Leggings
	[22372] = { ICONS.PRIEST, 22516, 0, ICONS.MAGE ,22500, 0, ICONS.WARLOCK, 22508, type = 6 }, -- Desecrated Sandals
	[22353] = { ICONS.WARRIOR, 22418, 0, ICONS.ROGUE, 22478, type = 6 }, -- Desecrated Helmet
	[22354] = { ICONS.WARRIOR, 22419, 0, ICONS.ROGUE, 22479, type = 6 }, -- Desecrated Pauldrons
	[22349] = { ICONS.WARRIOR, 22416, 0, ICONS.ROGUE, 22476, type = 6 }, -- Desecrated Breastplate
	[22355] = { ICONS.WARRIOR, 22423, 0, ICONS.ROGUE, 22483, type = 6 }, -- Desecrated Bracers
	[22357] = { ICONS.WARRIOR, 22421, 0, ICONS.ROGUE, 22481, type = 6 }, -- Desecrated Gauntlets
	[22356] = { ICONS.WARRIOR, 22422, 0, ICONS.ROGUE, 22482, type = 6 }, -- Desecrated Waistguard
	[22352] = { ICONS.WARRIOR, 22417, 0, ICONS.ROGUE, 22477, type = 6 }, -- Desecrated Legplates
	[22358] = { ICONS.WARRIOR, 22420, 0, ICONS.ROGUE, 22480, type = 6 }, -- Desecrated Sabatons

	-- Gem Sacks
	[17962] = { 12361, 7971, 13926, {1529, "1-2"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, type = 2 },		-- Blue Sack of Gems
	[17963] = { 12364, 7971, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, type = 2 },			-- Green Sack of Gems
	[17964] = { 12800, 7971, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, type = 2 },			-- Gray Sack of Gems
	[17965] = { 12363, 7971, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, type = 2 },			-- Yellow Sack of Gems
	[17969] = { 12799, 7971, 13926, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, type = 2 },		-- Red Sack of Gems
	[11938] = {
		17962, 12361, 7971, 13926, {1529, "1-2"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, 0,
		17963, 12364, 7971, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, 0,
		17964, 12800, 7971, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, 0,
		17965, 12363, 7971, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"}, 0,
		17969, 12799, 7971, 13926, {1529, "1-3"}, {7909, "1-3"}, {7910, "1-3"}, {3864, "1-3"},
		type = 2,
	},

	-- Misc Bags
	[21156] = { 20858, 20859, 20860, 20861, 20862, 20863, 20864, 20865, type = 2 },						-- Scarab Bag
	[12033] = { 7910, 1529, 7909, 12361, 1705, 12799, 7971, 5500, 12800, 1206, 12364, type = 2 },		-- Thaurissan Family Jewels

	-- Misc
	[11086] = { 9372,{223526, "SoD"}, 0, 9379, 11086 }, -- Jang'thraze the Protector
	[9379] =  11086,{223526, "SoD"}, -- Sang'thraze the Deflector
	[18784] = { 12725, 0, 18783, 18784 }, -- Top Half of Advanced Armorsmithing: Volume III
	[18783] = 18784, -- Bottom Half of Advanced Armorsmithing: Volume III
	[18780] = { 12727, 0, 18779, 18780 }, -- Top Half of Advanced Armorsmithing: Volume I
	[18779] = 18780, -- Bottom Half of Advanced Armorsmithing: Volume I
	[12731] = { 12752, 12757, 12756 }, -- Pristine Hide of the Beast
	[18782] = { 12726, 0, 18781, 18782 }, -- Top Half of Advanced Armorsmithing: Volume II
	[18781] = { 12726, 0, 18781, 18782 }, -- Bottom Half of Advanced Armorsmithing: Volume II
	[21813] = { 21816, 21817, 21818, 21819, 21820, 21821, 21822, 21823, type = 2}, -- Bag of Candies
	[19697] = { {19696, 4} }, -- Bounty of the Harvest
	[18564] = { 19019,{230224, "SoD"}, 0, 18563, 18564, 19017 }, -- Bindings of the Windseeker <right>
	[18563] = 18564,{230224, "SoD"}, -- Bindings of the Windseeker <left>
	[19017] = 18564, -- Essence of the Firelord
	[17204] = { 17182, type = 4 }, -- Eye of Sulfuras
	[18703] = { 18714, 18713, 18715,0,nil,{228334, "SoD"},{228332, "SoD"}}, -- Ancient Petrified Leaf
	[18646] = { 18665, 18646, 0, 18608, 18609,0,{228335, "SoD"},{228336, "SoD"}}, -- The Eye of Divinity
	[18665] = 18646, -- The Eye of Shadow
	[17074] = { 17074, 17223 }, -- Shadowstrike
	[17223] = 17074, -- Thunderstrike
	[18608] = { 18608, 18609 }, -- Benediction
	[18609] = 18608, -- Anathema
	[7733] = { 7733, 0, 7740, 7741 }, -- Staff of Prehistoria
	[7740] = 7733, -- Gni'kiv Medallion
	[7741] = 7733, -- The Shaft of Tsol
	[12845] = { 17044, 17045, type = 4 }, -- Medallion of Faith
	[17771] = { 17771, 0, 18562, {12360,10}, 17010, {18567,3} }, -- Elementium Bar

	-- Quests
	[10441] = { 10657, 10658, type = 3 }, -- Glowing Shard
	[6283] = { 6335, 4534, type = 3 }, -- The Book of Ur
	[16782] = { 16886, 16887, type = 3 }, -- Strange Water Globe
	[211454] = { 16886, 16887, type = 3 }, -- Strange Water Globe
	[209693] = { 211451, 211450, 211449, type = 3 }, -- Perfect Blackfathom Pearl
	[211452] = { 211451, 211450, 211449, type = 3 }, -- Perfect Blackfathom Pearl
	[9326] = { 9588, type = 3 }, -- Grime-Encrusted Ring
	[17008] = { 17043, 17042, 17039, type = 3 }, -- Small Scroll
	[10454] = { 10455, type = 3 }, -- Essence of Eranikus
	[12780] = { 13966, 13968, 13965, type = 3 }, -- General Drakkisath's Command
	[7666] = { 7673, type = 3 }, -- Shattered Necklace
	[19003] = { 19383, 19384, 19366,0,{230840, "SoD" },{230839, "SoD"},{230841,"SoD"}, type = 3 }, -- Head of Nefarian
	[18423] = { 18404, 18403, 18406,0,{228685, "SoD" },{228687, "SoD"},{228686,"SoD"}, type = 3 }, -- Head of Onyxia
	[20644] = { 20600, type = 3 }, -- Shrouded in Nightmare
	[217350] = { 213346, 213345, 213344, 213343, type = 3 }, -- Thermaplugg's Engineering Notes
	[217351] = { 213346, 213345, 213344, 213343, type = 3 }, -- Thermaplugg's Engineering Notes
	[19018] = { 19019,{230224, "SoD"}, type = 3 }, -- Dormant Wind Kissed Blade
	[231814] = { 224281, 224282, type = 3 }, -- Chromatic Heart
	[231882] = { 231754, 231755, type = 3 }, -- Suppression Device Receipt
	[230904] = { 229909, 229971, 229972, type = 3 }, -- Scroll: SEENECS FO RIEF
	[231452] = { 229749, 229806, type = 3 }, -- Blood of the Lightbringer
	[229906] = { 231509, type = 3 }, -- Tarnished Bronze Scale
	[229352] = { 224122, type = 3 }, -- Intelligence Findings
	[231995] = { 224279, 231890, type = 3 }, -- Hardenced Elementium Slag
	[231722] = { 229910, type = 3 }, -- Depleted Scythe of Chaos
	[231378] = { 224280, type = 3 }, -- Shimmering Golden Disc

	--SoD Tokens
	[217007] = { 213336, 213337, 213341, 213342, 213338, 213339, 213335, 216484, type = 6 },
	[217008] = { 213310, 213311, 213312, 213313, 213314, 213315, 213316, 216485, type = 6 },
	[217009] = { 213328, 213329, 213331, 213332, 213333, 213334, 213330, 216486, type = 6 },
	--Level 50 ST Tokens
	[220636] = { ICONS.PALADIN,nil, 220642,220643,220648,nil,220650,220651,220652, 0, ICONS.PALADIN,nil, 220660,220661,220662,nil,220653,220654,220656, 0, ICONS.WARRIOR,nil, 220642,220643,220648,nil,220653,220654,220656, 0, ICONS.HUNTER,nil, 220666,220667,220668, 0,  ICONS.ROGUE, nil,220676,220678,220677, 0,  ICONS.SHAMAN,nil, 220665,220663,220664,nil,220657,220658,220659, 0, ICONS.SHAMAN,nil, 220660,220661,220662, 0, type = 6 },
	[220637] = { ICONS.PRIEST, nil,220683,220684,220685, nil,220680,220679,220681, 0, ICONS.MAGE,nil, 220680,220679,220681, 0, ICONS.WARLOCK, nil,220680,220679,220681,{nil},220783,220781,220784, 0, ICONS.DRUID, nil,220779,220778,220780, nil,220669,220671,220670, 0, ICONS.DRUID, {nil}, 220672,220673,220675, 0, type = 6 },
	[221475] = { 221474, type = 3 },
	[221363] = { 220626,220627,220628,220629,220630, type = 3 },
	[221346] = { 220626,220627,220628,220629,220630, type = 3 },
	
	--25
	[211322] = { {20744, 2}, type = 9 },
	[211321] = { {11287, 2}, type = 9 },
	[211318] = { {118, 20}, type = 9 },
	[211320] = { {3473, 3}, type = 9 },
	[211323] = { {4360, 12}, type = 9 },
	[211329] = { {6888, 20}, type = 9 },
	[211326] = { {2300, 3}, type = 9 },
	[211332] = { {2581, 10}, type = 9 },
	[211319] = { {2847, 6}, type = 9 },
	[211330] = { {2680, 20}, type = 9 },
	[211324] = { {4362, 3}, type = 9 },
	[211327] = { {4343, 6}, type = 9 },
	[211317] = { {765, 20}, type = 9 },
	[211325] = { {4237, 5}, type = 9 },
	[211328] = { {6238, 4}, type = 9 },
	
	[211934] = { {929, 10}, type = 9 },
	[211315] = { {2318, 14}, type = 9 },
	[211331] = { {6290, 20}, type = 9 },
	[210771] = { {2840, 20}, type = 9 },
	[211933] = { {2835, 10}, type = 9 },
	[211316] = { {2447, 20}, type = 9 },
	[211828] = { {20745, 2}, type = 9 },
	[211824] = { {3385, 20}, type = 9 },
	[211835] = { {21072, 15}, type = 9 },
	[211829] = { {4374, 12}, type = 9 },
	[211822] = { {2453, 20}, type = 9 },
	[211838] = { {3531, 15}, type = 9 },
	[211825] = { {6350, 3}, type = 9 },
	[211836] = { {6890, 20}, type = 9 },
	
	[211831] = { {2316, 2}, type = 9 },
	[211837] = { {5527, 8}, type = 9 },
	[211820] = { {2842, 6}, type = 9 },
	[211821] = { {2319, 12}, type = 9 },
	[211833] = { {2587, 4}, type = 9 },
	[211827] = { {6339, 1}, type = 9 },
	[211819] = { {2841, 12}, type = 9 },
	[211830] = { {5507, 2}, type = 9 },
	[211826] = { {15869, 14}, type = 9 },
	[211935] = { {6373, 15}, type = 9 },
	[211834] = { {5542, 3}, type = 9 },
	[211823] = { {2452, 20}, type = 9 },
	[211832] = { {4251, 2}, type = 9 },
	--40
	[215403] = { {10546, 2}, type = 9 },
	[215400] = { {7966, 5}, type = 9 },
	[215402] = { {4394, 8}, type = 9 },
	[215389] = { {3818, 16}, type = 9 },
	[215391] = { {3819, 8}, type = 9 },
	[215411] = { {7377, 2}, type = 9 },
	[215398] = { {3835, 5}, type = 9 },
	[215387] = { {4235, 5}, type = 9 },
	[215420] = { {4594, 40}, type = 9 },
	[215421] = { {6371, 7}, type = 9 },
	[215413] = { {4334, 3}, type = 9 },
	[215408] = { {5966, 5}, type = 9 },
	[215392] = { {8831, 8}, type = 9 },
	[215386] = { {3860, 6}, type = 9 },
	[215390] = { {3358, 10}, type = 9 },
	
	[215399] = { {7919, 3}, type = 9 },
	[215395] = { {8949, 6}, type = 9 },
	[215388] = { {4304, 10}, type = 9 },
	[215393] = { {1710, 16}, type = 9 },
	[215401] = { {4391, 2}, type = 9 },
	[215419] = { {6451, 10}, type = 9 },
	[215414] = { {7062, 4}, type = 9 },
	[215385] = { {3577, 4}, type = 9 },
	[215417] = { {3729, 10}, type = 9 },
	[215415] = { {4335, 5}, type = 9 },
	[215410] = { {7387, 4}, type = 9 },
	[215407] = { {5964, 4}, type = 9 },
	[215418] = { {17222, 5}, type = 9 },

	[215404] = { {10508, 2}, type = 9 },
	[215406] = { {10577, 14}, type = 9 },
	[215396] = { {8951, 14}, type = 9 },
	[215405] = { {10724, 1}, type = 9 },
	[215397] = { {3855, 2}, type = 9 },
	[215409] = { {8198, 2}, type = 9 },
	[215394] = { {4623, 20}, type = 9 },
	[215416] = { {10008, 3}, type = 9 },
	
	--50
	[220918] = { {16766, 16}, type = 9 },
	[220919] = { {13931, 8}, type = 9 },
	[220920] = { {18045, 12}, type = 9 },
	[220921] = { {8545, 14}, type = 9 },
	[220922] = { {8838, 15}, type = 9 },
	[220923] = { {13463, 6}, type = 9 },
	[220924] = { {6037, 12}, type = 9 },
	[220925] = { {12359, 16}, type = 9 },
	[220926] = { {8170, 14}, type = 9 },
	[220927] = { {8169, 8}, type = 9 },
	[220928] = { {12655, 4}, type = 9 },
	[220929] = { {13443, 6}, type = 9 },
	[220930] = { {13446, 8}, type = 9 },
	[220931] = { {10562, 16}, type = 9 },
	[220932] = { {15993, 3}, type = 9 },
	[220933] = { {15995, 2}, type = 9 },
	[220934] = { {7931, 3}, type = 9 },
	[220935] = { {12406, 5}, type = 9 },
	[220936] = { {7938, 2}, type = 9 },
	[220937] = { {15564, 12}, type = 9 },
	[220938] = { {15084, 6}, type = 9 },
	[220939] = { {15092, 5}, type = 9 },
	[220940] = { {10024, 5}, type = 9 },
	[220941] = { {13856, 6}, type = 9 },
	[220942] = { {10034, 4}, type = 9 },
	--Naxx Tokens
	--Hunter Mage Warrior
	[236236] = { ICONS.HUNTER, 236046, 236054, 0, ICONS.MAGE, 236083, 236091, 0, ICONS.WARRIOR, 236016,236007, type = 6 }, -- T3 Helmet
	[236231] = { ICONS.HUNTER, 236043, 236058, 0, ICONS.MAGE, 236081, 236095, 0, ICONS.WARRIOR, 236014,236005, type = 6 }, -- T3 Breastplate
	[236237] = { ICONS.HUNTER, 236044, 236052, 0, ICONS.MAGE, 236084, 236089, 0, ICONS.WARRIOR, 236017,236008, type = 6 }, -- T3 Shoulders
	[236233] = { ICONS.HUNTER, 236047, 236055, 0, ICONS.MAGE, 236082, 236092, 0, ICONS.WARRIOR, 236019,236010, type = 6 }, -- T3 Gauntlets
	[236234] = { ICONS.HUNTER, 236049, 236057, 0, ICONS.MAGE, 236080, 236094, 0, ICONS.WARRIOR, 236018,236009, type = 6 }, -- T3 Boots
	[236235] = { ICONS.HUNTER, 236042, 236050, 0, ICONS.MAGE, 236077, 236087, 0, ICONS.WARRIOR, 236021,236012, type = 6 }, -- T3 Bracers
	[236238] = { ICONS.HUNTER, 236045, 236053, 0, ICONS.MAGE, 236079, 236090, 0, ICONS.WARRIOR, 236015,236006, type = 6 }, -- T3 Legs
	[236232] = { ICONS.HUNTER, 236048, 236051, 0, ICONS.MAGE, 236078, 236088, 0, ICONS.WARRIOR, 236020,236011, type = 6 }, -- T3 Belt
	--Druid Paladin SHAMAN
	[236249] = { ICONS.DRUID, 236196, 236214, 236182, 236205, 0, ICONS.PALADIN, 236128, 236117, 236137, 0, ICONS.SHAMAN, 236155, 236174, 236144, 236165, type = 6 }, -- T3 Helmet
	[236251] = { ICONS.DRUID, 236200, 236218, 236186, 236209, 0, ICONS.PALADIN, 236132, 236115, 236141, 0, ICONS.SHAMAN, 236159, 236179, 236147, 236169, type = 6 }, -- T3 Chest
	[236254] = { ICONS.DRUID, 236194, 236212, 236189, 236203, 0, ICONS.PALADIN, 236126, 236122, 236135, 0, ICONS.SHAMAN, 236153, 236172, 236145, 236163, type = 6 }, -- T3 Shoulders
	[236250] = { ICONS.DRUID, 236197, 236215, 236184, 236206, 0, ICONS.PALADIN, 236129, 236118, 236138, 0, ICONS.SHAMAN, 236156, 236175, 236142, 236166, type = 6 }, -- T3 Gloves
	[236248] = { ICONS.DRUID, 236199, 236217, 236185, 236208, 0, ICONS.PALADIN, 236131, 236123, 236140, 0, ICONS.SHAMAN, 236158, 236177, 236146, 236168, type = 6 }, -- T3 Boots
	[236247] = { ICONS.DRUID, 236192, 236210, 236183, 236201, 0, ICONS.PALADIN, 236124, 236119, 236133, 0, ICONS.SHAMAN, 236151, 236170, 236149, 236160, type = 6 }, -- T3 Bracers
	[236253] = { ICONS.DRUID, 236195, 236213, 236188, 236204, 0, ICONS.PALADIN, 236127, 236121, 236136, 0, ICONS.SHAMAN, 236154, 236173, 236143, 236164, type = 6 }, -- T3 Legs
	[236252] = { ICONS.DRUID, 236193, 236211, 236187, 236202, 0, ICONS.PALADIN, 236125, 236120, 236134, 0, ICONS.SHAMAN, 236152, 236171, 236148, 236162, type = 6 }, -- T3 Belt
	--Priest Rogue WARLOCK
	[236241] = { ICONS.PRIEST, 236110, 236103, 0, ICONS.ROGUE, 236025, 236037, 0, ICONS.WARLOCK, 236064, 236072, type = 6 }, -- T3 Helmet
	[236242] = { ICONS.PRIEST, 236114, 236097, 0, ICONS.ROGUE, 236023, 236039, 0, ICONS.WARLOCK, 236062, 236076, type = 6 }, -- T3 Chest
	[236240] = { ICONS.PRIEST, 236108, 236102, 0, ICONS.ROGUE, 236026, 236035, 0, ICONS.WARLOCK, 236065, 236070, type = 6 }, -- T3 Shoulders
	[236243] = { ICONS.PRIEST, 236111, 236104, 0, ICONS.ROGUE, 236028, 236038, 0, ICONS.WARLOCK, 236063, 236073, type = 6 }, -- T3 Gloves
	[236239] = { ICONS.PRIEST, 236113, 236099, 0, ICONS.ROGUE, 236027, 236033, 0, ICONS.WARLOCK, 236059, 236075, type = 6 }, -- T3 Boots
	[236245] = { ICONS.PRIEST, 236106, 236100, 0, ICONS.ROGUE, 236030, 236040, 0, ICONS.WARLOCK, 236061, 236068, type = 6 }, -- T3 Bracers
	[236246] = { ICONS.PRIEST, 236109, 236101, 0, ICONS.ROGUE, 236024, 236036, 0, ICONS.WARLOCK, 236060, 236071, type = 6 }, -- T3 Legs
	[236244] = { ICONS.PRIEST, 236107, 236098, 0, ICONS.ROGUE, 236029, 236032, 0, ICONS.WARLOCK, 236066, 236069, type = 6 }, -- T3 Belt
	[237381] = { ICONS.HUNTER, 236041, 236056, 0, ICONS.MAGE, 236085, 236093, 0, ICONS.WARRIOR, 236022, 236013, 0, ICONS.DRUID, 236198, 236216, 236190, 236207, 0, ICONS.PALADIN, 236130, 236116, 236139, 0, ICONS.SHAMAN, 236157, 236176, 236150, 236167, 0, ICONS.PRIEST, 236112, 236105, 0, ICONS.ROGUE, 236031, 236034, 0, ICONS.WARLOCK, 236067, 236074, type = 6 }, -- T3 Ring
	
	-- Quest objective
	[18705] = { 18713,0,{228334, "SoD" }, type = 4 }, -- Mature Black Dragon Sinew
	[18704] = { 18714, type = 4 }, -- Mature Blue Dragon Sinew
	[12871] = { 12895, 0, 12903, 12945, type = 4 }, -- Chromatic Carapace
	[18706] = { {18706, 12}, 0, 19024, type = 4 }, -- Arena Master


	[22523] = { 22523, 22524, 0,
				22689, 22690, 22681, 22680, 22688, 22679, 0,
				22667, 22668, 22657, 22659, 22678, 22656, type = 4 }, -- Insignia of the Dawn
	[22524] = 22523, -- Insignia of the Crusade

	-- Naxxramas
	[22520] = { 23207, 23206, type = 3 }, -- The Phylactery of Kel'Thuzad
	[236350] = { 236351, 236352, type = 3 }, -- The Phylactery of Kel'Thuzad (SoD)

	-- AQ40
	[21221] = { 21712, 21710, 21709,0,{234801, "SoD" },{234802, "SoD" },{234803, "SoD" }, type = 3 }, -- Eye of C'thun
	[21762] = { 21156, 20876, 20879, 20875, 20878, 20881, 20877, 20874, 20882 }, -- Greater Scarab Coffer Key

	-- AQ20
	[21220] = { 21504, 21507, 21505, 21506, 0, {234811, "SoD"},{234812, "SoD"},{234813, "SoD"},{234814, "SoD"}, type = 3 }, -- Head of Ossirian the Unscarred

	-- ZG
	[19802] = { 19950, 19949, 19948, type = 3 }, -- Heart of Hakkar
	[19939] = { 19939, 19940, 19941, 19942, 0,
				ICONS.WARLOCK, ICONS.PRIEST, ICONS.MAGE, ICONS.ROGUE, ICONS.DRUID, ICONS.HUNTER, ICONS.SHAMAN, ICONS.WARRIOR, ICONS.PALADIN, 0,
				19819, 19820, 19818, 19814, 19821, 19816, 19817, 19813, 19815, 0,
				19957, 19958, 19959, 19954, 19955, 19953, 19956, 19951, 19952, 0,
				{231285, "SoD"}, {231283, "SoD"}, {231282, "SoD"}, {231287, "SoD"}, {231280, "SoD"}, {231288, "SoD"}, {231281, "SoD"}, {231286, "SoD"}, {231285, "SoD"}}, -- Gri'lek's Blood
	[19940] = 19939, -- Renataki's Tooth
	[19941] = 19939, -- Wushoolay's Mane
	[19942] = 19939, -- Hazza'rah's Dream Thread
	-- ZG / Punctured Voodoo Doll
	[19820] = 19939, [19818] = 19939, [19819] = 19939, [19814] = 19939, [19821] = 19939, [19816] = 19939, [19817] = 19939, [19815] = 19939, [19813] = 19939,

	-- Reagent for...
	[12811] = { "prof20034", "prof22750", "prof25079", 0, "prof18456", "prof16990", "prof23632", "prof23633", type = 5 }, -- Righteous Orb
	[20381] = { "prof24703", type = 5 }, -- Dreamscale Breastplate
	[12753] = { "prof22928", "prof27830", type = 5 }, -- Dreamscale Breastplate
	[17203] = { "prof21161", {"prof460460", "SoD"}, type = 5 }, -- Sulfuron Ingot
	[15410] = { "prof19106", "prof19093", type = 5 }, -- Scale of Onyxia

	-- Atiesh
	[22727] = { { 22726, 40 }, 22727, 22734, 22733, 0, 22631, 22589, 22630, 22632, 0, { 236398, "SoD"}, { 236401, "SoD"}, { 236399, "SoD"}, { 236400, "SoD"}, }, -- Frame of Atiesh
	[22726] = 22727, -- Splinter of Atiesh
	[22734] = 22727, -- Base of Atiesh
	[22733] = 22727, -- Staff Head of Atiesh
	[22737] = 22727, -- Atiesh / Use item

	-- UBRS key
	[12219] = { 12219, 12336, 12335, 12337, 0, 12344 }, -- Unadorned Seal of Ascension
	[12336] = 12219, -- Gemstone of Spirestone
	[12335] = 12219, -- Gemstone of Smolderthorn
	[12337] = 12219, -- Gemstone of Bloodaxe

	--- Cenarion Circle Dailies
	-- Exalted
	[21188] = { "f609rep8", 0, {20802, 15}, {20800, 20}, {20801, 20}, 21508 }, -- Fist of Cenarius
	[21180] = 21188, -- Earthstrike
	[21190] = 21188, -- Wrath of Cenarius
	-- Revered
	[21184] = { "f609rep7", 0, {20802, 15}, {20800, 20}, {20801, 17}, 21515 }, -- Deeprock Bracers
	[21186] = 21184, -- Rockfury Bracers
	[21185] = 21184, -- Earthcalm Orb
	[21189] = 21184, -- Might of Cenarius
	-- Honored
	[21181] = { "f609rep6", 0, {20802, 7}, {20800, 4}, {20801, 4} }, -- Grace of Earth
	[21183] = 21181, -- Earthpower Vest
	[21182] = 21181, -- Band of Earthen Might
	-- Friendly
	[21178] = { "f609rep5", 0, {20802, 5}, {20800, 3}, {20801, 7} }, -- Gloves of Earthen Power
	[21187] = 21178, -- Earthweave Cloak
	[21179] = 21178, -- Band of Earthen Wrath
	[227728] = {227683, type = 4 }, -- Eye of Sulfuras
	[226557] = { 226557, 226568, type = 9 }, -- Arcanist Boots
	[226552] = { 226552, 216921, type = 9 }, -- Felheart Gloves
	[226645] = { 226645, 226652, 226663, 226673, type = 9 }, -- Cenarion Boots
	[226613] = { 226613, 226636, 226620, 226628, type = 9 }, -- Earthfury Boots
	[226593] = { 226593, 226601, 226609, type = 9 }, -- Lawbringer Boots
	[226486] = { 226486, 226497, type = 9 }, -- Gauntlets of Might
	[226574] = { 226574, 226583, type = 9 }, -- Pants of Prophecy
	[226561] = { 226561, 226565, type = 9 }, -- Arcanist Leggings
	[226547] = { 226547, 216923, type = 9 }, -- Felheart Pants
	[226445] = { 226445, 226479, type = 9 }, -- Nightslayer Pants
	[226646] = { 226646, 226651, 226666, 226671, type = 9 }, -- Cenarion Leggings
	[226532] = { 226532, 226537, type = 9 }, -- Giantstalker's Leggings
	[226614] = { 226614, 226639, 226623, 226631, type = 9 }, -- Earthfury Legguards
	[226594] = { 226594, 226598, 226606, type = 9 }, -- Lawbringer Legplates
	[226490] = { 226490, 226493, type = 9 }, -- Legplates of Might
	[226572] = { 226572, 226585, type = 9 }, -- Gloves of Prophecy
	[226441] = { 226441, 226475, type = 9 }, -- Nightslayer Gloves
	[226531] = { 226531, 226538, type = 9 }, -- Giantstalker's Boots
	[226615] = { 226615, 226637, 226621, 226629, type = 9 }, -- Earthfury Gauntlets
	[226591] = { 226591, 226600, 226608, type = 9 }, -- Lawbringer Gauntlets
	[226487] = { 226487, 226496, type = 9 }, -- Sabatons of Might
	[226573] = { 226573, 226584, type = 9 }, -- Circlet of Prophecy
	[226562] = { 226562, 226564, type = 9 }, -- Arcanist Crown
	[226549] = { 226549, 216922, type = 9 }, -- Felheart Horns
	[226446] = { 226446, 226480, type = 9 }, -- Nightslayer Cover
	[226647] = { 226647, 226658, 226659, 226670, type = 9 }, -- Cenarion Helm
	[226533] = { 226533, 226536, type = 9 }, -- Giantstalker's Helmet
	[226612] = { 226612, 226638, 226622, 226630, type = 9 }, -- Earthfury Helmet
	[226590] = { 226590, 226599, type = 9 }, -- Lawbringer Helm
	[226488] = { 226488, 226495, type = 9 }, -- Helm of Might
	[226571] = { 226571, 226586, type = 9 }, -- Boots of Prophecy
	[226556] = { 226556, 226569, type = 9 }, -- Arcanist Gloves
	[226554] = { 226554, 216918, type = 9 }, -- Felheart Slippers
	[226443] = { 226443, 226477, type = 9 }, -- Nightslayer Boots
	[226648] = { 226648, 226654, 226664, 226669, type = 9 }, -- Cenarion Gloves
	[226528] = { 226528, 226540, type = 9 }, -- Giantstalker's Gloves
	[226560] = { 226560, 226566, type = 9 }, -- Arcanist Mantle
	[226550] = { 226550, 216925, type = 9 }, -- Felheart Shoulder Pads
	[226644] = { 226644, 226653, 226665, 226674, type = 9 }, -- Cenarion Spaulders
	[226611] = { 226611, 226640, 226624, 226632, type = 9 }, -- Earthfury Epaulets
	[226588] = { 226588, 221783, 226605, type = 9 }, -- Lawbringer Spaulders
	[226575] = { 226575, 226582, type = 9 }, -- Robes of Prophecy
	[226559] = { 226559, 226563, type = 9 }, -- Arcanist Robes
	[226548] = { 226548, 216924, type = 9 }, -- Felheart Robes
	[226447] = { 226447, 226473, type = 9 }, -- Nightslayer Chestpiece
	[221785] = { 221785, 226656, 226661, 226675, type = 9 }, -- Cenarion Vestments
	[226534] = { 226534, 226535, type = 9 }, -- Giantstalker's Breastplate
	[226617] = { 226617, 226635, 226619, 226627, type = 9 }, -- Earthfury Vestments
	[226610] = { 226610, 226602, 226595, type = 9 }, -- Lawbringer Chestguard
	[226489] = { 226489, 226494, type = 9 }, -- Breastplate of Might
	[226576] = { 226576, 226581, type = 9 }, -- Mantle of Prophecy
	[226444] = { 226444, 226478, type = 9 }, -- Nightslayer Shoulder Pads
	[226527] = { 226527, 226543, type = 9 }, -- Giantstalker's Epaulets
	[226491] = { 226491, 226492, type = 9 }, -- Pauldrons of Might
	[228277] = { 228701, type = 9 }, -- Core Hound Tooth (Molten)
	[228296] = { 228511, type = 9 }, -- Perdition's  Blade (Molten)
	[228299] = { 228460, type = 9 }, -- Spinal Reaper (Molten)
	[228288] = { 228461, type = 9 }, -- Bonereaver's Edge (Molten)
	[228263] = { 229376, type = 9 }, -- Sorcerous Dagger (Molten)
	[228229] = { 228459, type = 9 }, -- Obsidian Edged Blade (Molten)
	[228146] = { 229377, type = 9 }, -- Magmadar's Left Claw (Molten)
	[228350] = { 229379, type = 9 }, -- Eskhandar's Right Claw (Molten)
	[228267] = { 229372, type = 9 }, -- Gutgore Ripper (Molten)
	[228160] = { 229373, type = 9 }, -- Faithbringer (Molten)
	[228139] = { 229374, type = 9 }, -- Fist of the Firesworn (Molten)
	[228272] = { 229380, type = 9 }, -- Shadowstrike (Molten)
	[228128] = { 228508, type = 9 }, -- Hammer of the Black Anvil (Molten)
	[228129] = { 228143, type = 9 }, -- Shadowflame Skull
	[228264] = { 228462, type = 9 }, -- Aurastone Hammer (Molten)
	[228265] = { 228506, type = 9 }, -- Brutality Blade (Molten)
	[228248] = { 228463, type = 9 }, -- Earthshaker (Molten)
	[228252] = { 228519, type = 9 }, -- Striker's Mark (Molten)
	[228269] = { 228517, type = 9 }, -- Azuresong Mageblade (Molten)
	[228271] = { 228922, type = 9 }, -- Staff of Dominance (Molten)
	[228278] = { 229382, type = 9 }, -- Hyperthermically Insulated Lava Dredger (Molten)
	[227536] = {ICONS.MAGE, 226557, 226568, 0,ICONS.PRIEST, 226571, 226586, 0, ICONS.WARLOCK, 226554,216918, type = 5}, -- Incandescent Boots
	[227765] = {ICONS.DRUID, 226645, 226652, 226663, 226673, 0, ICONS.WARRIOR, 226487, 226496, 0, ICONS.ROGUE, 226443, 226477, type = 5}, -- Scorched Core Boots
	[227763] = {ICONS.DRUID, 226646, 226651, 226666, 226671, 0, ICONS.WARRIOR, 226490, 226493, 0, ICONS.ROGUE, 226445, 226479, type = 5}, -- Scorched Core Leggings
	[227534] = {ICONS.MAGE, 226561, 226565, 0, ICONS.PRIEST, 226574, 226583, 0, ICONS.WARLOCK, 226547, 216923, type = 5}, -- Incandescent Leggings
	[227754] = {ICONS.PALADIN, 226594, 226598, 226606, 0, ICONS.HUNTER, 226532, 226537, 0, ICONS.SHAMAN, 226614, 226639, 226623, 226631, type = 5}, -- Molten Scaled Leggings
	[227757] = {ICONS.PALADIN, 226593, 226601, 226609, 0, ICONS.HUNTER, 226531, 226538, 0, ICONS.SHAMAN, 226613, 226636, 226620, 226628, type = 5}, -- Molten Scaled Boots
	[227533] = {ICONS.MAGE, 226556, 226569, 0, ICONS.PRIEST, 226572, 226585, 0, ICONS.WARLOCK, 226552, 216921, type = 5}, -- Incandescent Gloves
	[227764] = {ICONS.DRUID, 226647, 226658, 226659, 226670, 0, ICONS.WARRIOR, 226488, 226495, 0, ICONS.ROGUE, 226446, 226480, type = 5}, -- Scorched Core Helm
	[227755] = {ICONS.PALADIN, 226590, 226599, 0, ICONS.HUNTER, 226533, 226536, 0, ICONS.SHAMAN, 226612, 226638, 226622, 226630, type = 5}, -- Molten Scaled Helm
	[227759] = {ICONS.DRUID, 226648, 226654, 226664, 226669, 0, ICONS.WARRIOR, 226486, 226497, 0, ICONS.ROGUE, 226441, 226475, type = 5}, -- Scorched Core Gloves
	[227756] = {ICONS.PALADIN, 226591, 226600, 226608, 0, ICONS.HUNTER, 226528, 226540, 0, ICONS.SHAMAN, 226615, 226637, 226621, 226629, type = 5}, -- Molten Scaled Gloves
	[227537] = {ICONS.MAGE, 226560, 226566, 0, ICONS.PRIEST, 226576, 226581, 0, ICONS.WARLOCK, 226550, 216925, type = 5}, -- Incandescent Shoulderpads
	[227762] = {ICONS.DRUID, 226644, 226653, 226665, 226674, 0, ICONS.WARRIOR, 226491, 226492, 0, ICONS.ROGUE, 226444, 226478, type = 5}, -- Scorched Core Shoulderpads
	[227752] = {ICONS.PALADIN, 226588, 221783, 226605, 0, ICONS.HUNTER, 226527, 226543, 0, ICONS.SHAMAN, 226611, 226640, 226624, 226632, type = 5}, -- Molten Scaled Shoulderpads
	[227535] = {ICONS.MAGE, 226559, 226563, 0, ICONS.PRIEST, 226575, 226582, 0, ICONS.WARLOCK, 226548, 216924, type = 5}, -- Incandescent Robe
	[227766] = {ICONS.DRUID, 221785, 226656, 226661, 226675, 0, ICONS.WARRIOR, 226489, 226494, 0, ICONS.ROGUE, 226447, 226473, type = 5}, -- Scorched Core Chest
	[227758] = {ICONS.PALADIN, 226610, 226602, 226595, 0, ICONS.HUNTER, 226534, 226535, 0, ICONS.SHAMAN, 226617, 226635, 226619, 226627, type = 5}, -- Molten Scaled Chest
	[227532] = {ICONS.MAGE, 226562, 226564, 0, ICONS.PRIEST, 226573, 226584, 0, ICONS.WARLOCK, 226549, 216922, type = 5}, -- Incandescent Hood
	[227531] = {ICONS.MAGE, 226558, 226567, 0, ICONS.PRIEST, 226578, 226579, 0, ICONS.WARLOCK, 226553, 216920, type = 5}, -- Incandescent Bindings
	[227760] = {ICONS.DRUID, 226655, 226662, 226668, 226649, 0, ICONS.WARRIOR, 226484, 226499, 0, ICONS.ROGUE, 226442, 226476, type = 5}, -- Scorched Core Bindings
	[227750] = {ICONS.PALADIN, 226589, 226596, 226603, 0, ICONS.HUNTER, 226530, 226541, 0, ICONS.SHAMAN, 226618, 226642, 226626, 226634, type = 5}, -- Molten Scaled Bindings
	[227530] = {ICONS.MAGE, 226555, 226570, 0, ICONS.PRIEST, 226577, 226580, 0, ICONS.WARLOCK, 226551, 216919, type = 5}, -- Incandescent Belt
	[227761] = {ICONS.DRUID, 226657, 226660, 226667, 226650, 0, ICONS.WARRIOR, 226485, 226498, 0, ICONS.ROGUE, 226440, 226474, type = 5}, -- Scorched Core Belt
	[227751] = {ICONS.PALADIN, 226592, 226597, 226604, 0, ICONS.HUNTER, 226529, 226542, 0, ICONS.SHAMAN, 226616, 226641, 226625, 226633, type = 5}, -- Molten Scaled Belt
	[230242] = { 232566, type = 9 }, -- The Untamed Blade (Shadowflame)
	[230241] = { 232567, type = 9 }, -- Spineshatter (Shadowflame)
	[230247] = { 232565, type = 9 }, -- Dragonfang Blade (Shadowflame)
	[230253] = { 232607, type = 9 }, -- Heartstriker (Shadowflame)
	[230254] = { 232564, type = 9 }, -- Maladath (Shadowflame)
	[230276] = { 232561, type = 9 }, -- Claw of the Black Drake (Shadowflame)
	[230271] = { 232562, type = 9 }, -- Drake Talon Cleaver (Shadowflame)
	[230270] = { 232563, type = 9 }, -- Shadow Wing Focus Staff (Shadowflame)
	[230726] = { 232608, type = 9 }, -- Dragonbreath Hand Cannon (Shadowflame)
	[230738] = { 232559, type = 9 }, -- Herald of Woe (Shadowflame)
	[230801] = { 232606, type = 9 }, -- Ashjre'thul (Shadowflame)
	[230794] = { 232557, type = 9 }, -- Claw of Chromaggus (Shadowflame)
	[230747] = { 232558, type = 9 }, -- Chromatically Tempered Sword (Shadowflame)
	[230838] = { 232552, type = 9 }, -- Lok'amir il Romathis (Shadowflame)
	[230837] = { 232555, type = 9 }, -- Crul'shorukh, Edge of Chaos (Shadowflame)
	[230818] = { 232550, type = 9 }, -- Ashkandi, Greatsword of the Brotherhood (Shadowflame)
	[230813] = { 232556, type = 9 }, -- Staff of the Shadow Flame (Shadowflame)
	[230845] = { 232577, type = 9 }, -- Doom's Edge (Shadowflame)
	[230844] = { 232551, type = 9 }, -- Draconic Maul (Shadowflame)
	[232357] = { 232556, type = 9 }, -- Draconic Avenger (Shadowflame)
	[230911] = { 231861, type = 9 }, -- Jeklik's Crusher (Bloodied)
	[230865] = { 231874, type = 9 }, -- Fang of Venoxis (Bloodied)
	[230868] = { 231873, type = 9 }, -- Zulian Stone Axe (Bloodied)
	[230918] = { 231866, type = 9 }, -- Mar'li's Touch (Bloodied)
	[230993] = { 231868, type = 9 }, -- Mandokir's Sting (Bloodied)
	[230989] = { 231867, type = 9 }, -- Bloodlord's Defender (Bloodied)
	[230992] = { 231869, type = 9 }, -- Warblade of the Hakkari (1) (Bloodied)
	[231309] = { 231853, type = 9 }, -- Warblade of the Hakkari (2) (Bloodied)
	[230991] = { 231870, type = 9 }, -- Halberd of Smiting (Bloodied)
	[231274] = { 231847, type = 9 }, -- Gri'lek's Grinder (Bloodied)
	[231273] = { 231846, type = 9 }, -- Gri'lek's Carver (Bloodied)
	[231276] = { 231863, type = 9 }, -- Thoughtblighter (Bloodied)
	[231275] = { 231862, type = 9 }, -- Blazefury Retributer (Bloodied)
	[232309] = { 232310, type = 9 }, -- Renataki's Soul Conduit (Bloodied)
	[231277] = { 231864, type = 9 }, -- Pitchfork of Madness (Bloodied)
	[231278] = { 231872, type = 9 }, -- Hoodoo Hunting Bow (Bloodied)
	[231279] = { 231871, type = 9 }, -- Wushoolay's Poker (Bloodied)
	[231016] = { 231848, type = 9 }, -- Nat Pagle's Fish Terminator (Bloodied)
	[231272] = { 231849, type = 9 }, -- Tigule's Harpoon (Bloodied)
	[230925] = { 231875, type = 9 }, -- Thekal's Grasp (Bloodied)
	[230930] = { 231876, type = 9 }, -- Zulian Slicer (Bloodied)
	[230934] = { 231851, type = 9 }, -- Arlokk's Grasp (Bloodied)
	[230939] = { 231850, type = 9 }, -- Will of Arlokk (Bloodied)
	[231002] = { 231859, type = 9 }, -- Jindo's Hexxer (Bloodied)
	[231004] = { 231860, type = 9 }, -- Jindo's Judgement (Bloodied)
	[231308] = { 231857, type = 9 }, -- Touch of Chaos (Bloodied)
	[231302] = { 231852, type = 9 }, -- Gurubashi Dwarf Destroyer (Bloodied)
	[231296] = { 231858, type = 9 }, -- Bloodcaller (Bloodied)
	[231293] = { 231856, type = 9 }, -- Ancient Hakkari Manslayer (Bloodied)
	[231301] = { 231855, type = 9 }, -- Fang of the Faceless (Bloodied)
	[231315] = { 231854, type = 9 }, -- Zin'rokh, Destroyer of Worlds (Bloodied)
	[234061] = { 234989, type = 9 }, -- Qiraji Sacrifical Dagger (Void-touched)
	[234067] = { 234990, type = 9 }, -- Manslayer of the Qiraji (Void Touched)
	[234096] = { 234991, type = 9 }, -- Bow of Taut Sinew (Void Touched)
	[234097] = { 234992, type = 9 }, -- Stinger of Ayamiss (Void Touched)
	[234104] = { 234993, type = 9 }, -- Crossbow of Imminent Doom (Void Touched)
	[234112] = { 234994, type = 9 }, -- Sand Polished Hammer (Void Touched)
	[234115] = { 234995, type = 9 }, -- Staff of the Ruins (Void Touched)
	[233515] = { 234975, type = 9 }, -- Hammer of Ji'zhi (Void Touched)
	[233571] = { 234976, type = 9 }, -- Wand of Qiraji Nobility (Void Touched)
	[233576] = { 234977, type = 9 }, -- Silithid Claw (Void Touched)
	[233585] = { 234650, type = 9 }, -- Ancient Qiraji Ripper (Void Touched)
	[233586] = { 234978, type = 9 }, -- Jaw of the Sand Reaver (Void Touched)
	[233599] = { 234979, type = 9 }, -- Sharpened Silithid Femur (Void Touched)
	[233605] = { 234980, type = 9 }, -- Huhuran's Stinger (Void Touched)
	[233621] = { 234981, type = 9 }, -- Kalimdor's Revenge (Void Touched)
	[233626] = { 234983, type = 9 }, -- Larvae of the Great Worm (Void Touched)
	[233636] = { 235014, type = 9 }, -- Scepter of the False Prophet (Void Touched)
	[233634] = { 234984, type = 9 }, -- Death's Sthing (Void Touched)
	[233640] = { 234985, type = 9 }, -- Dark Edge of Insanity (Void Touched)
	[233509] = { 234974, type = 9 }, -- Staff of the Qiraji Prophets (Void Touched)
	[234119] = { 235282, type = 9 }, -- Antenna of Invigoration (Void Touched)
	[234122] = { 234998, type = 9 }, -- The Lost Kris of Zedd (Void Touched)
	[234121] = { 234997, type = 9 }, -- Silithid Husked Launcher (Void Touched)
	[233647] = { 234987, type = 9 }, -- Neretzek, The Blood Drinker (Void Touched)
	[233643] = { 234986, type = 9 }, -- Anubisath Warhammer (Void Touched)
	[234118] = { 234996, type = 9 }, -- Gavel of Qiraji Authority (Void Touched)
	[242365] = { 242367, 242364, 242366, 0, 240837, type = 1 }, -- Wing of Balnazzar
	[242366] = { 242367, 0, 240837, type = 5 }, -- Strings of Fate
	[242364] = { 242367, 242365, 242366, 0, 240837, type = 1 }, -- Mature Light Dragon Sinew
	[238945] = { 238961, type = 9 }, -- Caladboulder
	[239196] = { 239301, type = 3 }, -- Ashbringer
	[239696] = { 239301, type = 3 }, -- Ashbringer
	[231729] = {ICONS.PALADIN, 231179, 231195, 231188, 0, ICONS.HUNTER, 231060, 231069, 0, ICONS.SHAMAN, 231214, 231222, 231198, 231206, type = 6}, -- Ancient Gloves
	[231724] = {ICONS.PALADIN, 231174, 231190, 231182, 0, ICONS.HUNTER, 231055, 231063, 0, ICONS.SHAMAN, 231215, 231223, 231199, 231207, type = 6}, -- Ancient Bindings
	[231725] = {ICONS.PALADIN, 231175, 231191, 231183, 0, ICONS.HUNTER, 231056, 231065, 0, ICONS.SHAMAN, 231216, 231224, 231200, 231208, type = 6}, -- Ancient Belt
	[231731] = {ICONS.PALADIN, 231181, 231197, 231187, 0, ICONS.HUNTER, 231062, 231071, 0, ICONS.SHAMAN, 231221, 231229, 231205, 231213, type = 6}, -- Ancient Chest
	[231726] = {ICONS.PALADIN, 231176, 231192, 231184, 0, ICONS.HUNTER, 231057, 231066, 0, ICONS.SHAMAN, 231217, 231225, 231201, 231209, type = 6}, -- Ancient Shoulderpads
	[231730] = {ICONS.PALADIN, 231180, 231196, 231189, 0, ICONS.HUNTER, 231061, 231070, 0, ICONS.SHAMAN, 231220, 231228, 231204, 231212, type = 6}, -- Ancient Boots
	[231727] = {ICONS.PALADIN, 231177, 231193, 231185, 0, ICONS.HUNTER, 231058, 231067, 0, ICONS.SHAMAN, 231218, 231226, 231202, 231210, type = 6}, -- Ancient Leggings
	[231728] = {ICONS.PALADIN, 231178, 231194, 231186, 0, ICONS.HUNTER, 231059, 231068, 0, ICONS.SHAMAN, 231219, 231227, 231203, 231211, type = 6}, -- Ancient Helm
	[231715] = {ICONS.DRUID, 231253, 231261, 231237, 231245, 0, ICONS.ROGUE, 231046, 231054, 0, ICONS.WARRIOR, 231031, 231023, type = 6}, -- Primeval Bindings
	[231721] = {ICONS.DRUID, 231247, 231255, 231231, 231239, 0, ICONS.ROGUE, 231041, 231049, 0, ICONS.WARRIOR, 231037, 231029, type = 6}, -- Primeval Boots
	[231718] = {ICONS.DRUID, 231250, 231258, 231234, 231242, 0, ICONS.ROGUE, 231044, 231052, 0, ICONS.WARRIOR, 231034, 231026, type = 6}, -- Primeval Leggings
	[231720] = {ICONS.DRUID, 231248, 231256, 231232, 231240, 0, ICONS.ROGUE, 231042, 231050, 0, ICONS.WARRIOR, 231036, 231028, type = 6}, -- Primeval Gloves
	[231719] = {ICONS.DRUID, 231249, 231257, 231233, 231241, 0, ICONS.ROGUE, 231043, 231051, 0, ICONS.WARRIOR, 231035, 231027, type = 6}, -- Primeval Helm
	[231723] = {ICONS.DRUID, 231246, 231254, 231230, 231238, 0, ICONS.ROGUE, 231040, 231048, 0, ICONS.WARRIOR, 231038, 231030, type = 6}, -- Primeval Chest
	[231717] = {ICONS.DRUID, 231251, 231259, 231235, 231243, 0, ICONS.ROGUE, 231039, 231047, 0, ICONS.WARRIOR, 231033, 231025, type = 6}, -- Primeval Shoulderpads
	[231716] = {ICONS.DRUID, 231252, 231260, 231236, 231244, 0, ICONS.ROGUE, 231045, 231053, 0, ICONS.WARRIOR, 231032, 231024, type = 6}, -- Primeval Belt
	[231714] = {ICONS.PRIEST, 231169, 231159, 0, ICONS.MAGE, 231105, 231113, 0, ICONS.WARLOCK, 231076, 231095, type = 6}, -- Draconian Robe
	[231708] = {ICONS.PRIEST, 231171, 231161, 0, ICONS.MAGE, 231100, 231108, 0, ICONS.WARLOCK, 231078, 231097, type = 6}, -- Draconian Belt
	[231712] = {ICONS.PRIEST, 231166, 231156, 0, ICONS.MAGE, 231102, 231110, 0, ICONS.WARLOCK, 231073, 231091, type = 6}, -- Draconian Gloves
	[231710] = {ICONS.PRIEST, 231168, 231158, 0, ICONS.MAGE, 231104, 231112, 0, ICONS.WARLOCK, 231075, 231093, type = 6}, -- Draconian Leggings
	[231707] = {ICONS.PRIEST, 231172, 231162, 0, ICONS.MAGE, 231107, 231115, 0, ICONS.WARLOCK, 231079, 231098, type = 6}, -- Draconian Bindings
	[231711] = {ICONS.PRIEST, 231167, 231157, 0, ICONS.MAGE, 231103, 231111, 0, ICONS.WARLOCK, 231074, 231092, type = 6}, -- Draconian Hood
	[231709] = {ICONS.PRIEST, 231170, 231160, 0, ICONS.MAGE, 231106, 231114, 0, ICONS.WARLOCK, 231077, 231096, type = 6}, -- Draconian Shoulderpads
	[231713] = {ICONS.PRIEST, 231165, 231155, 0, ICONS.MAGE, 231101, 231109, 0, ICONS.WARLOCK, 231072, 231090, type = 6}, -- Draconian Boots
	[231642] = { {8845,"20"},{13463,"20"},{8846,"20"},{13465,"20"},{13466,"20"},{13467,"20"}, type = 2 }, -- Warden's Herb Bag
	[231644] = { {14344,"4"},{16203,"1"},{16204,"20"}, type = 2 }, -- Warden's Enchanting Bag
	[232454] = { 221487, 221488, 221489,221510, 221513, 221514, 221516, 232458, 221490,  type = 2 }, -- Emblem of the Wild Gods
	[232455] = { 212548,212549,212551,212552,212559,212561,212562,212560,208853, type = 2 }, -- Emblem of Dishonor
	[232456] = { 213100,213104,213112,213118,213124,213130,213137,213144,216606, type = 2 }, -- Emblem of the Violet Eye
	[232457] = { 232459,232460,232461,232462, type = 2 }, -- Emblem of the Worldcore
	--SoD AQ40
	[235045] = { 234808, 234809, 234810, type = 6 },			-- Imperial Qiraji Regalia
	[235046] = { 234804, 234805, 234806, 234807, type = 6 },	-- Imperial Qiraji Armaments
	[233363] = { ICONS.WARRIOR, 233651, 233373, 0, ICONS.HUNTER, 233664, 233411, 0, ICONS.MAGE, 233402, 233678, 0, type = 6 }, -- Carapace of the Old God
	[233362] = { ICONS.PALADIN, 233397, 233688, 233693, 0, ICONS.SHAMAN, 233704, 233699, 233386, 233694, 0, ICONS.DRUID, 233715, 233711, 233720, 233415, 0, type = 6 }, -- Husk of the Old God
	[233364] = { ICONS.ROGUE, 233389, 233659, 0, ICONS.PRIEST, 233395, 233680, 0, ICONS.WARLOCK, 233380, 233670, 0, type = 6 }, -- Skin of the Old God
	[233367] = { ICONS.WARRIOR, 233375, 233653, 0, ICONS.WARRIOR, 233374, 233654, 0, ICONS.HUNTER, 233410, 233666, 0, ICONS.HUNTER, 233408, 233667, 0, ICONS.MAGE, 233676, 233404, 0, ICONS.MAGE, 233674, 233406, 0, type = 6 }, -- Intact Peritoneum
	[233365] = { ICONS.PALADIN, 233692, 233398, 233687, 0, ICONS.PALADIN, 233690, 233400, 233685, 0, ICONS.SHAMAN, 233705, 233700, 233385, 233695, 0, ICONS.SHAMAN, 233708, 233703, 233382, 233698, 0, ICONS.DRUID, 233718, 233709, 233723, 233412, 0, ICONS.DRUID, 233714, 233710, 233719, 233416, 0, type = 6 }, -- Intact Viscera
	[233368] = { ICONS.ROGUE, 233661, 233388, 0, ICONS.ROGUE, 233662, 233390, 0, ICONS.PRIEST, 233682, 233393, 0, ICONS.PRIEST, 233679, 233396, 0, ICONS.WARLOCK, 233669, 233381, 0, ICONS.WARLOCK, 233672, 233378, 0, type = 6 }, -- Intact Entrails
	[233370] = { ICONS.WARRIOR, 233376, 233658, 0, ICONS.WARRIOR, 233372, 233652, 0, ICONS.HUNTER, 233409, 233668, 0, ICONS.HUNTER, 233407, 233665, 0, ICONS.MAGE, 233677, 233403, 0, ICONS.MAGE, 233675, 233405, 0, type = 6 }, -- Qiraji Bindings of Command
	[233369] = { ICONS.PALADIN, 233689, 233401, 233684, 0, ICONS.PALADIN, 233691, 233399, 233686, 0, ICONS.SHAMAN, 233707, 233702, 233383, 233697, 0, ICONS.SHAMAN, 233706, 233701, 233384, 233696, 0, ICONS.DRUID, 233717, 233713, 233722, 233413, 0, ICONS.DRUID, 233716, 233712, 233721, 233414, 0, type = 6 }, -- Qiraji Bindings of Dominance
	[233371] = { ICONS.ROGUE, 233663, 233387, 0, ICONS.ROGUE, 233660, 233391, 0, ICONS.PRIEST, 233681, 233394, 0, ICONS.PRIEST, 233683, 233392, 0, ICONS.WARLOCK, 233671, 233379, 0, ICONS.WARLOCK, 233673, 233377, 0, type = 6 }, -- Qiraji Bindings of Sovereignty
	--SOD Tier 3.5 Scarlet Enclave Stuff
	[239719] = {ICONS.ROGUE, 239555, 239547, 0, ICONS.PRIEST, 239583, 239588, 0, ICONS.WARLOCK, 240152, 240145, type = 6}, -- Consecrated Bindings
	[239718] = {ICONS.ROGUE, 239556, 239554, 0, ICONS.PRIEST, 239582, 239590, 0, ICONS.WARLOCK, 240151, 240144, type = 6}, -- Consecrated Belt
	[239716] = {ICONS.ROGUE, 239557, 239549, 0, ICONS.PRIEST, 239574, 239584, 0, ICONS.WARLOCK, 240147, 240140, type = 6}, -- Consecrated Gloves
	[239714] = {ICONS.ROGUE, 239560, 239550, 0, ICONS.PRIEST, 239575, 239585, 0, ICONS.WARLOCK, 240148, 240141, type = 6}, -- Consecrated Circlet
	[239710] = {ICONS.ROGUE, 239558, 239553, 0, ICONS.PRIEST, 239572, 239589, 0, ICONS.WARLOCK, 240153, 240139, type = 6}, -- Consecrated Sandals
	[239712] = {ICONS.ROGUE, 239559, 239552, 0, ICONS.PRIEST, 239581, 239586, 0, ICONS.WARLOCK, 240150, 240143, type = 6}, -- Consecrated Shoulderpads
	[239721] = {ICONS.ROGUE, 239561, 239551, 0, ICONS.PRIEST, 239577, 239587, 0, ICONS.WARLOCK, 240149, 240142, type = 6}, -- Consecrated Leggings
	[239715] = {ICONS.ROGUE, 239562, 239548, 0, ICONS.PRIEST, 239565, 239591, 0, ICONS.WARLOCK, 240146, 240138, type = 6}, -- Consecrated Robe
	[239759] = {ICONS.WARRIOR, 239512, 239520, 0, ICONS.HUNTER, 239536, 239544, 0, ICONS.MAGE, 240052, 240044, type = 6}, -- Consecrated Bracers
	[239760] = {ICONS.WARRIOR, 239513, 239521, 0, ICONS.HUNTER, 239535, 239538, 0, ICONS.MAGE, 240053, 240045, type = 6}, -- Consecrated Waistguard
	[239762] = {ICONS.WARRIOR, 239514, 239522, 0, ICONS.HUNTER, 239531, 239539, 0, ICONS.MAGE, 240057, 240049, type = 6}, -- Consecrated Gauntlets
	[239707] = {ICONS.WARRIOR, 239517, 239525, 0, ICONS.HUNTER, 239532, 239540, 0, ICONS.MAGE, 240056, 240048, type = 6}, -- Consecrated Helmet
	[239706] = {ICONS.WARRIOR, 239515, 239523, 0, ICONS.HUNTER, 239530, 239537, 0, ICONS.MAGE, 240058, 240050, type = 6}, -- Consecrated Sabatons
	[239708] = {ICONS.WARRIOR, 239516, 239524, 0, ICONS.HUNTER, 239534, 239542, 0, ICONS.MAGE, 240054, 240046, type = 6}, -- Consecrated Pauldrons
	[239709] = {ICONS.WARRIOR, 239518, 239526, 0, ICONS.HUNTER, 239533, 239541, 0, ICONS.MAGE, 240055, 240047, type = 6}, -- Consecrated Legplates
	[239761] = {ICONS.WARRIOR, 239519, 239527, 0, ICONS.HUNTER, 239529, 239543, 0, ICONS.MAGE, 240059, 240051, type = 6}, -- Consecrated Breastplate
	[239722] = {ICONS.PALADIN, 240023, 240042, 240031, 246056, 0, ICONS.SHAMAN, 240108, 240100, 240137, 240127, 0, ICONS.DRUID, 240060, 240068, 240084, 240076, type = 6}, -- Consecrated Wristguards
	[239756] = {ICONS.PALADIN, 240024, 240043, 240032, 246059, 0, ICONS.SHAMAN, 240107, 240099, 240136, 240126, 0, ICONS.DRUID, 240061, 240069, 240085, 240077, type = 6}, -- Consecrated Girdle
	[239730] = {ICONS.PALADIN, 240028, 240041, 240036, 246055, 0, ICONS.SHAMAN, 240103, 240095, 240130, 240122, 0, ICONS.DRUID, 240065, 240073, 240089, 240081, type = 6}, -- Consecrated Handguards
	[239729] = {ICONS.PALADIN, 240027, 240040, 240035, 246062, 0, ICONS.SHAMAN, 240104, 240096, 240131, 240123, 0, ICONS.DRUID, 240064, 240072, 240088, 240080, type = 6}, -- Consecrated Headpiece
	[239726] = {ICONS.PALADIN, 240029, 240022, 240037, 246057, 0, ICONS.SHAMAN, 240102, 240093, 240129, 240110, 0, ICONS.DRUID, 240066, 240074, 240090, 240082, type = 6}, -- Consecrated Boots
	[239758] = {ICONS.PALADIN, 240025, 240021, 240033, 246061, 0, ICONS.SHAMAN, 240106, 240098, 240135, 240125, 0, ICONS.DRUID, 240062, 240070, 240086, 240078, type = 6}, -- Consecrated Spaulders
	[239757] = {ICONS.PALADIN, 240026, 240020, 240034, 246058, 0, ICONS.SHAMAN, 240105, 240097, 240134, 240124, 0, ICONS.DRUID, 240063, 240071, 240087, 240079, type = 6}, -- Consecrated Legguards
	[239731] = {ICONS.PALADIN, 240030, 240039, 240038, 246060, 0, ICONS.SHAMAN, 240101, 240092, 240128, 240109, 0, ICONS.DRUID, 240067, 240075, 240091, 240083, type = 6}, -- Consecrated Tunic
	[239215] = { 242314, 242317, 242315, 242316, type = 3 }, -- Charred Emblem
}

if AtlasLoot:GameVersion_GE(AtlasLoot.BC_VERSION_NUM) then
	TOKEN_DATA.BCC = {
		--- T4
		-- Head
		[29760] = { ICONS.PALADIN, 29061, 29068, 29073, 0, ICONS.ROGUE, 29044, 0, ICONS.SHAMAN, 29028, 29035, 29040, type = 6 }, -- Helm of the Fallen Champion
		[29761] = { ICONS.WARRIOR, 29011, 29021, 0, ICONS.PRIEST, 29049, 29058, 0, ICONS.DRUID, 29086, 29093, 29098, type = 6 }, -- Helm of the Fallen Defender
		[29759] = { ICONS.HUNTER, 29081, 0, ICONS.MAGE, 29076, 0, ICONS.WARLOCK, 28963, type = 6 }, -- Helm of the Fallen Hero
		-- Shoulder
		[29763] = { ICONS.PALADIN, 29064, 29070, 29075, 0, ICONS.ROGUE, 29047, 0, ICONS.SHAMAN, 29037, 29031, 29043, type = 6 }, -- Pauldrons of the Fallen Champion
		[29764] = { ICONS.WARRIOR, 29016, 29023, 0, ICONS.PRIEST, 29054, 29060, 0, ICONS.DRUID, 29100, 29095, 29089, type = 6 }, -- Pauldrons of the Fallen Defender
		[29762] = { ICONS.HUNTER, 29084, 0, ICONS.MAGE, 29079, 0, ICONS.WARLOCK, 28967, type = 6 }, -- Pauldrons of the Fallen Hero
		-- Chest
		[29754] = { ICONS.PALADIN, 29071, 29066, 29062, 0, ICONS.ROGUE, 29045, 0, ICONS.SHAMAN, 29038, 29033, 29029, type = 6 }, -- Chestguard of the Fallen Champion
		[29753] = { ICONS.WARRIOR, 29012, 29019, 0, ICONS.PRIEST, 29050, 29056, 0, ICONS.DRUID, 29087, 29091, 29096, type = 6 }, -- Chestguard of the Fallen Defender
		[29755] = { ICONS.HUNTER, 29082, 0, ICONS.MAGE, 29077, 0, ICONS.WARLOCK, 28964, type = 6 }, -- Chestguard of the Fallen Hero
		-- Hands
		[29757] = { ICONS.PALADIN, 29065, 29067, 29072, 0, ICONS.ROGUE, 29048, 0, ICONS.SHAMAN, 29032, 29034, 29039, type = 6 }, -- Gloves of the Fallen Champion
		[29758] = { ICONS.WARRIOR, 29017, 29020, 0, ICONS.PRIEST, 29055, 29057, 0, ICONS.DRUID, 29090, 29092, 29097, type = 6 }, -- Gloves of the Fallen Defender
		[29756] = { ICONS.HUNTER, 29085, 0, ICONS.MAGE, 29080, 0, ICONS.WARLOCK, 28968, type = 6 }, -- Gloves of the Fallen Hero
		--Legs
		[29766] = { ICONS.PALADIN, 29074, 29063, 29069, 0, ICONS.ROGUE, 29046, 0, ICONS.SHAMAN, 29030, 29036, 29042, type = 6 }, -- Leggings of the Fallen Champion
		[29767] = { ICONS.WARRIOR, 29022, 29015, 0, ICONS.PRIEST, 29059, 29053, 0, ICONS.DRUID, 29094, 29099, 29088, type = 6 }, -- Leggings of the Fallen Defender
		[29765] = { ICONS.HUNTER, 29083, 0, ICONS.MAGE, 29078, 0, ICONS.WARLOCK, 28966, type = 6 }, -- Leggings of the Fallen Hero

		--- T5
		-- Head
		[30242] = { ICONS.PALADIN, 30125, 30136, 30131, 0, ICONS.ROGUE, 30146, 0, ICONS.SHAMAN, 30166, 30171, 30190, type = 6 }, -- Helm of the Vanquished Champion
		[30243] = { ICONS.WARRIOR, 30120, 30115, 0, ICONS.PRIEST, 30161, 30152, 0, ICONS.DRUID, 30228, 30219, 30233, type = 6 }, -- Helm of the Vanquished Defender
		[30244] = { ICONS.HUNTER, 30141, 0, ICONS.MAGE, 30206, 0, ICONS.WARLOCK, 30212, type = 6 }, -- Helm of the Vanquished Hero
		-- Shoulder
		[30248] = { ICONS.PALADIN, 30127, 30133, 30138, 0, ICONS.ROGUE, 30149, 0, ICONS.SHAMAN, 30168, 30173, 30194, type = 6 }, -- Pauldrons of the Vanquished Champion
		[30249] = { ICONS.WARRIOR, 30117, 30122, 0, ICONS.PRIEST, 30154, 30163, 0, ICONS.DRUID, 30221, 30230, 30235, type = 6 }, -- Pauldrons of the Vanquished Defender
		[30250] = { ICONS.HUNTER, 30143, 0, ICONS.MAGE, 30210, 0, ICONS.WARLOCK, 30215, type = 6 }, -- Pauldrons of the Vanquished Hero
		-- Chest
		[30236] = { ICONS.PALADIN, 30123, 30129, 30134, 0, ICONS.ROGUE, 30144, 0, ICONS.SHAMAN, 30164, 30169, 30185, type = 6 }, -- Chestguard of the Vanquished Champion
		[30237] = { ICONS.WARRIOR, 30113, 30118, 0, ICONS.PRIEST, 30150, 30159, 0, ICONS.DRUID, 30216, 30222, 30231, type = 6 }, -- Chestguard of the Vanquished Defender
		[30238] = { ICONS.HUNTER, 30139, 0, ICONS.MAGE, 30196, 0, ICONS.WARLOCK, 30214, type = 6 }, -- Chestguard of the Vanquished Hero
		-- Hands
		[30239] = { ICONS.PALADIN, 30130, 30135, 30124, 0, ICONS.ROGUE, 30145, 0, ICONS.SHAMAN, 30189, 30165, 30170, type = 6 }, -- Gloves of the Vanquished Champion
		[30240] = { ICONS.WARRIOR, 30114, 30119, 0, ICONS.PRIEST, 30160, 30151, 0, ICONS.DRUID, 30223, 30217, 30232, type = 6 }, -- Gloves of the Vanquished Defender
		[30241] = { ICONS.HUNTER, 30140, 0, ICONS.MAGE, 30205, 0, ICONS.WARLOCK, 30211, type = 6 }, -- Gloves of the Vanquished Hero
		-- Legs
		[30245] = { ICONS.PALADIN, 30132, 30137, 30126, 0, ICONS.ROGUE, 30148, 0, ICONS.SHAMAN, 30172, 30167, 30192, type = 6 }, -- Leggings of the Vanquished Champion
		[30246] = { ICONS.WARRIOR, 30121, 30116, 0, ICONS.PRIEST, 30153, 30162, 0, ICONS.DRUID, 30229, 30220, 30234, type = 6 }, -- Leggings of the Vanquished Defender
		[30247] = { ICONS.HUNTER, 30142, 0, ICONS.MAGE, 30207, 0, ICONS.WARLOCK, 30213, type = 6 }, -- Leggings of the Vanquished Hero

		--- T6
		-- Head
		[31097] = { ICONS.PALADIN, 30987, 30988, 30989, 0, ICONS.PRIEST, 31063, 31064, 0, ICONS.WARLOCK, 31051, type = 6 }, -- Helm of the Forgotten Conqueror
		[31096] = { ICONS.ROGUE, 31027, 0, ICONS.MAGE, 31056, 0, ICONS.DRUID, 31037, 31040, 31039, type = 6 }, -- Helm of the Forgotten Vanquisher
		[31095] = { ICONS.WARRIOR, 30972, 30974, 0, ICONS.HUNTER, 31003, 0, ICONS.SHAMAN, 31012, 31014, 31015, type = 6 }, -- Helm of the Forgotten Protector
		-- Shoulders
		[31101] = { ICONS.PALADIN, 30996, 30997, 30998, 0, ICONS.PRIEST, 31069, 31070, 0, ICONS.WARLOCK, 31054, type = 6 }, -- Pauldrons of the Forgotten Conqueror
		[31102] = { ICONS.ROGUE, 31030, 0, ICONS.MAGE, 31059, 0, ICONS.DRUID, 31047, 31048, 31049, type = 6 }, -- Pauldrons of the Forgotten Vanquisher
		[31103] = { ICONS.WARRIOR, 30979, 30980, 0, ICONS.HUNTER, 31006, 0, ICONS.SHAMAN, 31022, 31023, 31024, type = 6 }, -- Pauldrons of the Forgotten Protector
		-- Chest
		[31089] = { ICONS.PALADIN, 30990, 30991, 30992, 0, ICONS.PRIEST, 31065, 31066, 0, ICONS.WARLOCK, 31052, type = 6 }, -- Chestguard of the Forgotten Conqueror
		[31090] = { ICONS.ROGUE, 31028, 0, ICONS.MAGE, 31057, 0, ICONS.DRUID, 31041, 31042, 31043, type = 6 }, -- Chestguard of the Forgotten Vanquisher
		[31091] = { ICONS.WARRIOR, 30975, 30976, 0, ICONS.HUNTER, 31004, 0, ICONS.SHAMAN, 31016, 31017, 31018, type = 6 }, -- Chestguard of the Forgotten Protector
		-- Hands
		[31092] = { ICONS.PALADIN, 30982, 30983, 30985, 0, ICONS.PRIEST, 31060, 31061, 0, ICONS.WARLOCK, 31050, type = 6 }, -- Gloves of the Forgotten Conqueror
		[31093] = { ICONS.ROGUE, 31026, 0, ICONS.MAGE, 31055, 0, ICONS.DRUID, 31032, 31034, 31035, type = 6 }, -- Gloves of the Forgotten Vanquisher
		[31094] = { ICONS.WARRIOR, 30969, 30970, 0, ICONS.HUNTER, 31001, 0, ICONS.SHAMAN, 31007, 31008, 31011, type = 6 }, -- Gloves of the Forgotten Protector
		-- Legs
		[31098] = { ICONS.PALADIN, 30993, 30994, 30995, 0, ICONS.PRIEST, 31067, 31068, 0, ICONS.WARLOCK, 31053, type = 6 }, -- Leggings of the Forgotten Conqueror
		[31099] = { ICONS.ROGUE, 31029, 0, ICONS.MAGE, 31058, 0, ICONS.DRUID, 31044, 31045, 31046, type = 6 }, -- Leggings of the Forgotten Vanquisher
		[31100] = { ICONS.WARRIOR, 30977, 30978, 0, ICONS.HUNTER, 31005, 0, ICONS.SHAMAN, 31019, 31020, 31021, type = 6 }, -- Leggings of the Forgotten Protector
		-- Wrist
		[34848] = { ICONS.PALADIN, 34431, 34432, 34433, 0, ICONS.PRIEST, 34434, 34435, 0, ICONS.WARLOCK, 34436, type = 6 }, -- Bracers of the Forgotten Conqueror
		[34852] = { ICONS.ROGUE, 34448, 0, ICONS.MAGE, 34447, 0, ICONS.DRUID, 34444, 34445, 34446, type = 6 }, -- Bracers of the Forgotten Vanquisher
		[34851] = { ICONS.WARRIOR, 34441, 34442, 0, ICONS.HUNTER, 34443, 0, ICONS.SHAMAN, 34437, 34438, 34439, type = 6 }, -- Bracers of the Forgotten Protector
		-- Belt
		[34853] = { ICONS.PALADIN, 34485, 34487, 34488, 0, ICONS.PRIEST, 34527, 34528, 0, ICONS.WARLOCK, 34541, type = 6 }, -- Belt of the Forgotten Conqueror
		[34855] = { ICONS.ROGUE, 34558, 0, ICONS.MAGE, 34557, 0, ICONS.DRUID, 34554, 34555, 34556, type = 6 }, -- Belt of the Forgotten Vanquisher
		[34854] = { ICONS.WARRIOR, 34546, 34547, 0, ICONS.HUNTER, 34549, 0, ICONS.SHAMAN, 34542, 34543, 34545, type = 6 }, -- Belt of the Forgotten Protector
		-- Boots
		[34856] = { ICONS.PALADIN, 34559, 34560, 34561, 0, ICONS.PRIEST, 34562, 34563, 0, ICONS.WARLOCK, 34564, type = 6 }, -- Boots of the Forgotten Conqueror
		[34858] = { ICONS.ROGUE, 34575, 0, ICONS.MAGE, 34574, 0, ICONS.DRUID, 34571, 34572, 34573, type = 6 }, -- Boots of the Forgotten Vanquisher
		[34857] = { ICONS.WARRIOR, 34568, 34569, 0, ICONS.HUNTER, 34570, 0, ICONS.SHAMAN, 34565, 34566, 34567, type = 6 }, -- Boots of the Forgotten Protector

		--- Sunwell Sunmote tokens
		-- Cloth
		[34399] = { 34399, 0, {34664, "1"}, {34233, "1"}, type = 7 }, -- Robes of Ghostly Hatred
		[34233] = { 34399, 0, {34664, "1"}, {34233, "1"}, type = 8 }, -- Robes of Faltered Light
		[34406] = { 34406, 0, {34664, "1"}, {34342, "1"}, type = 7 }, -- Gloves of Tyri's Power
		[34342] = { 34406, 0, {34664, "1"}, {34342, "1"}, type = 8 }, -- Handguards of the Dawn
		[34405] = { 34405, 0, {34664, "1"}, {34339, "1"}, type = 7 }, -- Helm of Arcane Purity
		[34339] = { 34405, 0, {34664, "1"}, {34339, "1"}, type = 8 }, -- Cowl of Light's Purity
		[34386] = { 34386, 0, {34664, "1"}, {34170, "1"}, type = 7 }, -- Pantaloons of Growing Strife
		[34170] = { 34386, 0, {34664, "1"}, {34170, "1"}, type = 8 }, -- Pantaloons of Calming Strife
		[34393] = { 34393, 0, {34664, "1"}, {34202, "1"}, type = 7 }, -- Shoulderpads of Knowledge's Pursuit
		[34202] = { 34393, 0, {34664, "1"}, {34202, "1"}, type = 8 }, -- Shawl of Wonderment

		-- Leather
		[34397] = { 34397, 0, {34664, "1"}, {34211, "1"}, type = 7 }, -- Bladed Chaos Tunic
		[34211] = { 34397, 0, {34664, "1"}, {34211, "1"}, type = 8 }, -- Harness of Carnal Instinct
		[34398] = { 34398, 0, {34664, "1"}, {34212, "1"}, type = 7 }, -- Utopian Tunic of Elune
		[34212] = { 34398, 0, {34664, "1"}, {34212, "1"}, type = 8 }, -- Sunglow Vest
		[34408] = { 34408, 0, {34664, "1"}, {34234, "1"}, type = 7 }, -- Gloves of the Forest Drifter
		[34234] = { 34408, 0, {34664, "1"}, {34234, "1"}, type = 8 }, -- Shadowed Gauntlets of Paroxysm
		[34407] = { 34407, 0, {34664, "1"}, {34351, "1"}, type = 7 }, -- Tranquil Moonlight Wraps
		[34351] = { 34407, 0, {34664, "1"}, {34351, "1"}, type = 8 }, -- Tranquil Majesty Wraps
		[34403] = { 34403, 0, {34664, "1"}, {34245, "1"}, type = 7 }, -- Cover of Ursoc the Mighty
		[34245] = { 34403, 0, {34664, "1"}, {34245, "1"}, type = 8 }, -- Cover of Ursol the Wise
		[34404] = { 34404, 0, {34664, "1"}, {34244, "1"}, type = 7 }, -- Mask of the Fury Hunter
		[34244] = { 34404, 0, {34664, "1"}, {34244, "1"}, type = 8 }, -- Duplicitous Guise
		[34384] = { 34384, 0, {34664, "1"}, {34169, "1"}, type = 7 }, -- Breeches of Natural Splendor
		[34169] = { 34384, 0, {34664, "1"}, {34169, "1"}, type = 8 }, -- Breeches of Natural Aggression
		[34385] = { 34385, 0, {34664, "1"}, {34188, "1"}, type = 7 }, -- Leggings of the Immortal Beast
		[34188] = { 34385, 0, {34664, "1"}, {34188, "1"}, type = 8 }, -- Leggings of the Immortal Night
		[34392] = { 34392, 0, {34664, "1"}, {34195, "1"}, type = 7 }, -- Demontooth Shoulderpads
		[34195] = { 34392, 0, {34664, "1"}, {34195, "1"}, type = 8 }, -- Shoulderpads of Vehemence
		[34391] = { 34391, 0, {34664, "1"}, {34209, "1"}, type = 7 }, -- Spaulders of Devastation
		[34209] = { 34391, 0, {34664, "1"}, {34209, "1"}, type = 8 }, -- Spaulders of Reclamation

		-- Mail
		[34402] = { 34402, 0, {34664, "1"}, {34332, "1"}, type = 7 }, -- Cover of Ursoc the Mighty
		[34332] = { 34402, 0, {34664, "1"}, {34332, "1"}, type = 8 }, -- Cowl of Gul'dan
		[34396] = { 34396, 0, {34664, "1"}, {34229, "1"}, type = 7 }, -- Garments of Crashing Shores
		[34229] = { 34396, 0, {34664, "1"}, {34229, "1"}, type = 8 }, -- Garments of Serene Shores
		[34390] = { 34390, 0, {34664, "1"}, {34208, "1"}, type = 7 }, -- Erupting Epaulets
		[34208] = { 34390, 0, {34664, "1"}, {34208, "1"}, type = 8 }, -- Equilibrium Epaulets
		[34409] = { 34409, 0, {34664, "1"}, {34350, "1"}, type = 7 }, -- Gauntlets of the Ancient Frostwolf
		[34350] = { 34409, 0, {34664, "1"}, {34350, "1"}, type = 8 }, -- Gauntlets of the Ancient Shadowmoon
		[34383] = { 34383, 0, {34664, "1"}, {34186, "1"}, type = 7 }, -- Kilt of Spiritual Reconstruction
		[34186] = { 34383, 0, {34664, "1"}, {34186, "1"}, type = 8 }, -- Chain Links of the Tumultuous Storm

		-- Plate
		[34401] = { 34401, 0, {34664, "1"}, {34243, "1"}, type = 7 }, -- Helm of Uther's Resolve
		[34243] = { 34401, 0, {34664, "1"}, {34243, "1"}, type = 8 }, -- Helm of Burning Righteousness
		[34400] = { 34400, 0, {34664, "1"}, {34345, "1"}, type = 7 }, -- Crown of Dath'Remar
		[34345] = { 34400, 0, {34664, "1"}, {34345, "1"}, type = 8 }, -- Crown of Anasterian
		[34389] = { 34389, 0, {34664, "1"}, {34193, "1"}, type = 7 }, -- Spaulders of the Thalassian Defender
		[34193] = { 34389, 0, {34664, "1"}, {34193, "1"}, type = 8 }, -- Spaulders of the Thalassian Savior
		[34388] = { 34388, 0, {34664, "1"}, {34192, "1"}, type = 7 }, -- Pauldrons of Berserking
		[34192] = { 34388, 0, {34664, "1"}, {34192, "1"}, type = 8 }, -- Pauldrons of Perseverance
		[34395] = { 34395, 0, {34664, "1"}, {34216, "1"}, type = 7 }, -- Noble Judicator's Chestguard
		[34216] = { 34395, 0, {34664, "1"}, {34216, "1"}, type = 8 }, -- Heroic Judicator's Chestguard
		[34394] = { 34394, 0, {34664, "1"}, {34215, "1"}, type = 7 }, -- Breastplate of Agony's Aversion
		[34215] = { 34394, 0, {34664, "1"}, {34215, "1"}, type = 8 }, -- Warharness of Reckless Fury
		[34382] = { 34382, 0, {34664, "1"}, {34167, "1"}, type = 7 }, -- Judicator's Legguards
		[34167] = { 34382, 0, {34664, "1"}, {34167, "1"}, type = 8 }, -- Legplates of the Holy Juggernaut
		[34381] = { 34381, 0, {34664, "1"}, {34180, "1"}, type = 7 }, -- Felstrength Legplates
		[34180] = { 34381, 0, {34664, "1"}, {34180, "1"}, type = 8 }, -- Felfury Legplates


		--- Misc
		-- Magtheridon's Lair
		[32385] = { 28791, 28790, 28793, 28792, type = 3 }, -- Magtheridon's Head
		[34846] = { -- Black Sack of Gems
			{32230,"1-3"}, {32249,"1-3"}, {32228,"1-3"}, {32229,"1-3"}, {32231,"1-3"}, {32227,"1-3"}, 0, -- Epic
			{23441,"1-2"}, {23437,"1-2"}, {23436,"1-2"}, {23438,"1-2"}, {23440,"1-2"}, {23439,"1-2"}, -- Blue
			type = 2,
		},
		-- Tempest Keep
		[32405] = { 30018, 30017, 30007, 30015 }, -- Verdant Sphere

		-- Motes
		[22574] = { {22574,"10"}, 0, 21884 }, -- Mote of Fire
		[22576] = { {22576,"10"}, 0, 22457 }, -- Mote of Mana
		[22573] = { {22573,"10"}, 0, 22452 }, -- Mote of Earth
		[22572] = { {22572,"10"}, 0, 22451 }, -- Mote of Air
		[22575] = { {22575,"10"}, 0, 21886 }, -- Mote of Life
		[22578] = { {22578,"10"}, 0, 21885 }, -- Mote of Water

		--- Darkmoon cards
		-- Furies Deck / Darkmoon Card: Vengeance
		[31907] = { 31907, 31858, 0, 31901, 31909, 31908, 31904, 31903, 31906, 31905, 31902 },
		[31901] = 31907, [31909] = 31907, [31908] = 31907, [31904] = 31907, [31903] = 31907, [31906] = 31907, [31905] = 31907, [31902] = 31907,

		-- Blessings Deck / Darkmoon Card: Crusade
		[31890] = { 31890, 31856, 0, 31882, 31889, 31888, 31885, 31884, 31887, 31886, 31883 },
		[31882] = 31890, [31889] = 31890, [31888] = 31890, [31885] = 31890, [31884] = 31890, [31887] = 31890, [31886] = 31890, [31883] = 31890,

		-- Storms Deck / Darkmoon Card: Wrath
		[31891] = { 31891, 31857, 0, 31892, 31900, 31899, 31895, 31894, 31898, 31896, 31893 },
		[31892] = 31891, [31900] = 31891, [31899] = 31891, [31899] = 31891, [31895] = 31891, [31898] = 31891, [31896] = 31891, [31893] = 31891,

		-- Lunacy Deck / Darkmoon Card: Madness
		[31914] = { 31914, 31859, 0, 31910, 31918, 31917, 31913, 31912, 31916, 31915, 31911 },
		[31910] = 31914, [31918] = 31914, [31917] = 31914, [31913] = 31914, [31912] = 31914, [31916] = 31914, [31915] = 31914, [31911] = 31914,

		-- Brewfest
		[33016] = { 33017, 33018, 33019, 33020, 33021 }, -- Blue Brewfest Stein
		[32912] = { 32917, 32918, 32920, 32915, 32919 }, -- Yellow Brewfest Stein
	}
end

if AtlasLoot:GameVersion_GE(AtlasLoot.WRATH_VERSION_NUM) then
	TOKEN_DATA.WRATH = {
		-- The Oculus
		[52676] = {{47241,"2"}, 43953, 0,
			{36918,"1-3"}, {36921,"1-3"}, {36924,"1-3"}, {36927,"1-3"}, {36930,"1-3"}, {36933,"1-3"}, type = 2
		}, -- Cache of the Ley-Guardian

		-- Battered Hilt
		[50380] = {50047, 50046, 50049, 50048, type = 3}, -- horde
		[50379] = 50380, -- alli

		-- Key to the Focusing Iris
		[44569] = {44582, type = 3}, -- 10man
		[44577] = {44581, type = 3}, -- 25man

		-- Heart of Magic / Malygos
		[44650] = {44658, 44657, 44659, 44660, type = 3}, -- 10man
		[44651] = {44661, 44662, 44664, 44665, type = 3}, -- 25man

		--- T7 / 10Man
		-- Head
		[40616] = { ICONS.PALADIN, 39628, 39635, 39640, 0, ICONS.PRIEST, 39514, 39521, 0, ICONS.WARLOCK, 39496, type = 6}, -- Helm of the Lost Conqueror
		[40617] = { ICONS.WARRIOR, 39605, 39610, 0, ICONS.HUNTER, 39578, 0, ICONS.SHAMAN, 39583, 39594, 39602, type = 6}, -- Helm of the Lost Protector
		[40618] = { ICONS.ROGUE, 39561, 0, ICONS.DEATHKNIGHT, 39619, 39625, 0, ICONS.MAGE, 39491, 0, ICONS.DRUID, 39531, 39545, 39553, type = 6}, -- Helm of the Lost Vanquisher
		-- Shoulders
		[40622] = { ICONS.PALADIN, 39631, 39637, 39642, 0, ICONS.PRIEST, 39518, 39529, 0, ICONS.WARLOCK, 39499, type = 6}, -- Spaulders of the Lost Conqueror
		[40623] = { ICONS.WARRIOR, 39608, 39613, 0, ICONS.HUNTER, 39581, 0, ICONS.SHAMAN, 39590, 39596, 39604, type = 6}, -- Spaulders of the Lost Protector
		[40624] = { ICONS.ROGUE, 39565, 0, ICONS.DEATHKNIGHT, 39621, 39627, 0, ICONS.MAGE, 39494, 0, ICONS.DRUID, 39542, 39548, 39556, type = 6}, -- Spaulders of the Lost Vanquisher
		-- Chest
		[40610] = { ICONS.PALADIN, 39629, 39633, 39638, 0, ICONS.PRIEST, 39515, 39523, 0, ICONS.WARLOCK, 39497, type = 6}, -- Chestguard of the Lost Conqueror
		[40611] = { ICONS.WARRIOR, 39606, 39611, 0, ICONS.HUNTER, 39579, 0, ICONS.SHAMAN, 39588, 39592, 39597, type = 6}, -- Chestguard of the Lost Protector
		[40612] = { ICONS.ROGUE, 39558, 0, ICONS.DEATHKNIGHT, 39617, 39623, 0, ICONS.MAGE, 39492, 0, ICONS.DRUID, 39538, 39547, 39554, type = 6}, -- Chestguard of the Lost Vanquisher
		-- Hands
		[40613] = { ICONS.PALADIN, 39632, 39634, 39639, 0, ICONS.PRIEST, 39519, 39530, 0, ICONS.WARLOCK, 39500, type = 6}, -- Gloves of the Lost Conqueror
		[40614] = { ICONS.WARRIOR, 39609, 39622, 0, ICONS.HUNTER, 39582, 0, ICONS.SHAMAN, 39591, 39593, 39601, type = 6}, -- Gloves of the Lost Protector
		[40615] = { ICONS.ROGUE, 39560, 0, ICONS.DEATHKNIGHT, 39618, 39624, 0, ICONS.MAGE, 39495, 0, ICONS.DRUID, 39543, 39544, 39557, type = 6}, -- Gloves of the Lost Vanquisher
		-- Leggings
		[40619] = { ICONS.PALADIN, 39630, 39636, 39641, 0, ICONS.PRIEST, 39517, 39528, 0, ICONS.WARLOCK, 39498, type = 6}, -- Leggings of the Lost Conqueror
		[40620] = { ICONS.WARRIOR, 39607, 39612, 0, ICONS.HUNTER, 39580, 0, ICONS.SHAMAN, 39589, 39595, 39603, type = 6}, -- Leggings of the Lost Protector
		[40621] = { ICONS.ROGUE, 39564, 0, ICONS.DEATHKNIGHT, 39620, 39626, 0, ICONS.MAGE, 39493, 0, ICONS.DRUID, 39539, 39546, 39555, type = 6}, -- Leggings of the Lost Vanquisher

		--- T7 / 25Man
		-- Head
		[40631] = { ICONS.PALADIN, 40571, 40576, 40581, 0, ICONS.PRIEST, 40447, 40456, 0, ICONS.WARLOCK, 40421, type = 6}, -- Crown of the Lost Conqueror
		[40632] = { ICONS.WARRIOR, 40528, 40546, 0, ICONS.HUNTER, 40505, 0, ICONS.SHAMAN, 40510, 40516, 40521, type = 6}, -- Crown of the Lost Protector
		[40633] = { ICONS.ROGUE, 40499, 0, ICONS.DEATHKNIGHT, 40554, 40565, 0, ICONS.MAGE, 40416, 0, ICONS.DRUID, 40461, 40467, 40473, type = 6}, -- Crown of the Lost Vanquisher
		-- Shoulders
		[40637] = { ICONS.PALADIN, 40573, 40578, 40584, 0, ICONS.PRIEST, 40450, 40459, 0, ICONS.WARLOCK, 40424, type = 6}, -- Mantle of the Lost Conqueror
		[40638] = { ICONS.WARRIOR, 40530, 40548, 0, ICONS.HUNTER, 40507, 0, ICONS.SHAMAN, 40513, 40518, 40524, type = 6}, -- Mantle of the Lost Protector
		[40639] = { ICONS.ROGUE, 40502, 0, ICONS.DEATHKNIGHT, 40557, 40568, 0, ICONS.MAGE, 40419, 0, ICONS.DRUID, 40465, 40470, 40494, type = 6}, -- Mantle of the Lost Vanquisher
		-- Chest
		[40625] = { ICONS.PALADIN, 40569, 40574, 40579, 0, ICONS.PRIEST, 40449, 40458, 0, ICONS.WARLOCK, 40423, type = 6}, -- Breastplate of the Lost Conqueror
		[40626] = { ICONS.WARRIOR, 40525, 40544, 0, ICONS.HUNTER, 40503, 0, ICONS.SHAMAN, 40508, 40514, 40523, type = 6}, -- Breastplate of the Lost Protector
		[40627] = { ICONS.ROGUE, 40495, 0, ICONS.DEATHKNIGHT, 40550, 40559, 0, ICONS.MAGE, 40418, 0, ICONS.DRUID, 40463, 40469, 40471, type = 6}, -- Breastplate of the Lost Vanquisher
		-- Hands
		[40628] = { ICONS.PALADIN, 40570, 40575, 40580, 0, ICONS.PRIEST, 40445, 40454, 0, ICONS.WARLOCK, 40420, type = 6}, -- Gauntlets of the Lost Conqueror
		[40629] = { ICONS.WARRIOR, 40527, 40545, 0, ICONS.HUNTER, 40504, 0, ICONS.SHAMAN, 40509, 40515, 40520, type = 6}, -- Gauntlets of the Lost Protector
		[40630] = { ICONS.ROGUE, 40496, 0, ICONS.DEATHKNIGHT, 40552, 40563, 0, ICONS.MAGE, 40415, 0, ICONS.DRUID, 40460, 40466, 40472, type = 6}, -- Gauntlets of the Lost Vanquisher
		-- Leggings
		[40634] = { ICONS.PALADIN, 40572, 40577, 40583, 0, ICONS.PRIEST, 40448, 40457, 0, ICONS.WARLOCK, 40422, type = 6}, -- Legplates of the Lost Conqueror
		[40635] = { ICONS.WARRIOR, 40529, 40547, 0, ICONS.HUNTER, 40506, 0, ICONS.SHAMAN, 40512, 40517, 40522, type = 6}, -- Legplates of the Lost Protector
		[40636] = { ICONS.ROGUE, 40500, 0, ICONS.DEATHKNIGHT, 40556, 40567, 0, ICONS.MAGE, 40417, 0, ICONS.DRUID, 40462, 40468, 40493, type = 6}, -- Legplates of the Lost Vanquisher

		--- T8 / 10Man
		-- Head
		[45647] = { ICONS.PALADIN, 45372, 45377, 45382, 0, ICONS.PRIEST, 45386, 45391, 0, ICONS.WARLOCK, 45417, type = 6}, -- Helm of the Wayward Conqueror
		[45648] = { ICONS.WARRIOR, 45425, 45431, 0, ICONS.HUNTER, 45361, 0, ICONS.SHAMAN, 45402, 45408, 45412, type = 6}, -- Helm of the Wayward Protector
		[45649] = { ICONS.ROGUE, 45398, 0, ICONS.DEATHKNIGHT, 45336, 45342, 0, ICONS.MAGE, 45365, 0, ICONS.DRUID, 45346, 45356, 46313, type = 6}, -- Helm of the Wayward Vanquisher
		-- Shoulders
		[45659] = { ICONS.PALADIN, 45373, 45380, 45385, 0, ICONS.PRIEST, 45390, 45393, 0, ICONS.WARLOCK, 45422, type = 6}, -- Spaulders of the Wayward Conqueror
		[45660] = { ICONS.WARRIOR, 45428, 45433, 0, ICONS.HUNTER, 45363, 0, ICONS.SHAMAN, 45404, 45410, 45415, type = 6}, -- Spaulders of the Wayward Protector
		[45661] = { ICONS.ROGUE, 45400, 0, ICONS.DEATHKNIGHT, 45339, 45344, 0, ICONS.MAGE, 45369, 0, ICONS.DRUID, 45349, 45352, 45359, type = 6}, -- Spaulders of the Wayward Vanquisher
		-- Chest
		[45635] = { ICONS.PALADIN, 45374, 45375, 45381, 0, ICONS.PRIEST, 45389, 45395, 0, ICONS.WARLOCK, 45421, type = 6}, -- Chestguard of the Wayward Conqueror
		[45636] = { ICONS.WARRIOR, 45424, 45429, 0, ICONS.HUNTER, 45364, 0, ICONS.SHAMAN, 45405, 45411, 45413, type = 6}, -- Chestguard of the Wayward Protector
		[45637] = { ICONS.ROGUE, 45396, 0, ICONS.DEATHKNIGHT, 45335, 45340, 0, ICONS.MAGE, 45368, 0, ICONS.DRUID, 45348, 45354, 45358, type = 6}, -- Chestguard of the Wayward Vanquisher
		-- Hands
		[45644] = { ICONS.PALADIN, 45370, 45376, 45383, 0, ICONS.PRIEST, 45387, 45392, 0, ICONS.WARLOCK, 45419, type = 6}, -- Gloves of the Wayward Conqueror
		[45645] = { ICONS.WARRIOR, 45426, 45430, 0, ICONS.HUNTER, 45360, 0, ICONS.SHAMAN, 45401, 45406, 45414, type = 6}, -- Gloves of the Wayward Protector
		[45646] = { ICONS.ROGUE, 45397, 0, ICONS.DEATHKNIGHT, 45337, 45341, 0, ICONS.MAGE, 46131, 0, ICONS.DRUID, 45345, 45351, 45355, type = 6}, -- Gloves of the Wayward Vanquisher
		-- Leggings
		[45650] = { ICONS.PALADIN, 45371, 45379, 45384, 0, ICONS.PRIEST, 45388, 45394, 0, ICONS.WARLOCK, 45420, type = 6}, -- Leggings of the Wayward Conqueror
		[45651] = { ICONS.WARRIOR, 45427, 45432, 0, ICONS.HUNTER, 45362, 0, ICONS.SHAMAN, 45403, 45409, 45416, type = 6}, -- Leggings of the Wayward Protector
		[45652] = { ICONS.ROGUE, 45399, 0, ICONS.DEATHKNIGHT, 45338, 45343, 0, ICONS.MAGE, 45367, 0, ICONS.DRUID, 45347, 45353, 45357, type = 6}, -- Leggings of the Wayward Vanquisher

		--- T8 / 25Man
		-- Head
		[45638] = { ICONS.PALADIN, 46156, 46175, 46180, 0, ICONS.PRIEST, 46172, 46197, 0, ICONS.WARLOCK, 46140, type = 6}, -- Crown of the Wayward Conqueror
		[45639] = { ICONS.WARRIOR, 46151, 46166, 0, ICONS.HUNTER, 46143, 0, ICONS.SHAMAN, 46201, 46209, 46212, type = 6}, -- Crown of the Wayward Protector
		[45640] = { ICONS.ROGUE, 46125, 0, ICONS.DEATHKNIGHT, 46115, 46120, 0, ICONS.MAGE, 46129, 0, ICONS.DRUID, 46161, 46184, 46191, type = 6}, -- Crown of the Wayward Vanquisher
		-- Shoulders
		[45656] = { ICONS.PALADIN, 46152, 46177, 46182, 0, ICONS.PRIEST, 46165, 46190, 0, ICONS.WARLOCK, 46136, type = 6}, -- Mantle of the Wayward Conqueror
		[45657] = { ICONS.WARRIOR, 46149, 46167, 0, ICONS.HUNTER, 46145, 0, ICONS.SHAMAN, 46203, 46204, 46211, type = 6}, -- Mantle of the Wayward Protector
		[45658] = { ICONS.ROGUE, 46127, 0, ICONS.DEATHKNIGHT, 46117, 46122, 0, ICONS.MAGE, 46134, 0, ICONS.DRUID, 46157, 46187, 46196, type = 6}, -- Mantle of the Wayward Vanquisher
		-- Chest
		[45632] = { ICONS.PALADIN, 46154, 46173, 46178, 0, ICONS.PRIEST, 46168, 46193, 0, ICONS.WARLOCK, 46137, type = 6}, -- Breastplate of the Wayward Conqueror
		[45633] = { ICONS.WARRIOR, 46146, 46162, 0, ICONS.HUNTER, 46141, 0, ICONS.SHAMAN, 46198, 46205, 46206, type = 6}, -- Breastplate of the Wayward Protector
		[45634] = { ICONS.ROGUE, 46123, 0, ICONS.DEATHKNIGHT, 46111, 46118, 0, ICONS.MAGE, 46130, 0, ICONS.DRUID, 46159, 46186, 46194, type = 6}, -- Breastplate of the Wayward Vanquisher
		-- Hands
		[45641] = { ICONS.PALADIN, 46155, 46174, 46179, 0, ICONS.PRIEST, 46163, 46188, 0, ICONS.WARLOCK, 46135, type = 6}, -- Gauntlets of the Wayward Conqueror
		[45642] = { ICONS.WARRIOR, 46148, 46164, 0, ICONS.HUNTER, 46142, 0, ICONS.SHAMAN, 46199, 46200, 46207, type = 6}, -- Gauntlets of the Wayward Protector
		[45643] = { ICONS.ROGUE, 46124, 0, ICONS.DEATHKNIGHT, 46113, 46119, 0, ICONS.MAGE, 46132, 0, ICONS.DRUID, 46158, 46183, 46189, type = 6}, -- Gauntlets of the Wayward Vanquisher
		-- Leggings
		[45653] = { ICONS.PALADIN, 46153, 46176, 46181, 0, ICONS.PRIEST, 46170, 46195, 0, ICONS.WARLOCK, 46139, type = 6}, -- Legplates of the Wayward Conqueror
		[45654] = { ICONS.WARRIOR, 46150, 46169, 0, ICONS.HUNTER, 46144, 0, ICONS.SHAMAN, 46202, 46208, 46210, type = 6}, -- Legplates of the Wayward Protector
		[45655] = { ICONS.ROGUE, 46126, 0, ICONS.DEATHKNIGHT, 46116, 46121, 0, ICONS.MAGE, 46133, 0, ICONS.DRUID, 46160, 46185, 46192, type = 6}, -- Legplates of the Wayward Vanquisher

		--- ## WrathOnyxiasLair
		[49644] = {49485, 49486, 49487, type = 3}, -- Head of Onyxia
		[49294] = { {36919, "1-2"}, {36922, "1-3"}, {36931, "1-3"}, {36928, "1-3"}, {36934, "1-3"}, {36925, "1-3"}, type = 2 },	-- Ashen Sack of Gems
		["WrathOnyxiaClassItems10"] = {
			ICONS.WARLOCK, 49315, 0, ICONS.PRIEST, 49316, 49317, 0, ICONS.MAGE, 49318, 0,
			ICONS.ROGUE, 49322, 0, ICONS.DRUID, 49327, 49328, 49326, 0,
			ICONS.HUNTER, 49319, 0, ICONS.SHAMAN, 49331, 49330, 49329, 0,
			ICONS.WARRIOR, 49320, 49321, 0, ICONS.PALADIN, 49323, 49325, 49324, 0, ICONS.DEATHKNIGHT, 49333, 49332,
			type = 9
		},
		["WrathOnyxiaClassItems25"] = {
			ICONS.WARLOCK, 49484, 0, ICONS.PRIEST, 49482, 49483, 0, ICONS.MAGE, 49481, 0,
			ICONS.ROGUE, 49477, 0, ICONS.DRUID, 49472, 49473, 49471, 0,
			ICONS.HUNTER, 49480, 0, ICONS.SHAMAN, 49469, 49468, 49470, 0,
			ICONS.WARRIOR, 49479, 49478, 0, ICONS.PALADIN, 49476, 49475, 49474, 0, ICONS.DEATHKNIGHT, 49467, 49466,
			type = 9
		},

		["Tier7TitanRuneTokens"] = {
			40616, 40617, 40618, 0,
			40622, 40623, 40624, 0,
			40619, 40620, 40621, 0,
			type = 9
		},
		["Tier8TitanRuneTokens"] = {
			45647, 45648, 45649, 0,
			45635, 45636, 45637, 0,
			45659, 45660, 45661, 0,
			45650, 45651, 45652, 0,
			45644, 45645, 45646, 0,
			type = 9
		},

		--- ## Ulduar
		[45038] = { { 45038, 30 }, 45039, 45896, 0, 46017 }, -- Fragment of Val'anyr
		[45039] = 45038, -- Shattered Fragments of Val'anyr
		[45896] = 45038, -- Unbound Fragments of Val'anyr
		[46017] = 45038, -- Val'anyr, Hammer of Ancient Kings

		[46052] = { 46320, 46321, 46322, 46323, type = 3 }, -- Reply-Code Alpha / 10man
		[46053] = { 45588, 45618, 45608, 45614, type = 3 }, -- Reply-Code Alpha / 25man

		--- Algalon Key
		-- 10 man
		[45796] = { 45788, 45786, 45787, 45784, 0, 45796, type = 4 }, -- Celestial Planetarium Key / 10man
		[45788] = 45796, [45786] = 45796, [45787] = 45796, [45784] = 45796,
		-- 25 man
		[45798] = { 45814, 45815, 45816, 45817, 0, 45798, type = 4 }, -- Celestial Planetarium Key / 25man
		[45814] = 45798, [45815] = 45798, [45816] = 45798, [45817] = 45798,

		["AC_UlduarFlameLeviathan10"] = {"ac2913", "ac2914", "ac2915", "ac3056", 0, "ac2911", "ac2909", "ac2907", "ac2905", type = 10},
		["AC_UlduarFlameLeviathan25"] = {"ac2918", "ac2916", "ac2917", "ac3057", 0, "ac2912", "ac2910", "ac2908", "ac2906", type = 10},

		["AC_UlduarXTDeconstructor10"] = {"ac3058", "ac2937", "ac2931", "ac2934", "ac2933", type = 10},
		["AC_UlduarXTDeconstructor25"] = {"ac3059", "ac2938", "ac2932", "ac2936", "ac2935", type = 10},

		["AC_UlduarCouncil10"] = {"ac2945", "ac2947", "ac2939", "ac2941", "ac2940", type = 10},
		["AC_UlduarCouncil25"] = {"ac2946", "ac2948", "ac2942", "ac2944", "ac2943", type = 10},

		["AC_UlduarFreya10"] = {"ac2980", "ac2985", "ac2982", "ac2979", 0, "ac3177", "ac3178", "ac3179", type = 10},
		["AC_UlduarFreya25"] = {"ac2981", "ac2984", "ac2983", "ac3118", 0, "ac3185", "ac3186", "ac3187", type = 10},

		["AC_UlduarHodir10"] = {"ac2961", "ac2967", "ac3182", "ac2963", "ac2969", type = 10},
		["AC_UlduarHodir25"] = {"ac2962", "ac2968", "ac3184", "ac2965", "ac2970", type = 10},

		["AC_UlduarYoggSaron10"] = {"ac3159", "ac3158", "ac3141", "ac3157", "ac3008", 0, "ac3012", "ac3015", "ac3009", "ac3014", type = 10},
		["AC_UlduarYoggSaron25"] = {"ac3164", "ac3163", "ac3162", "ac3161", "ac3010", 0, "ac3013", "ac3016", "ac3011", "ac3017", type = 10},

		--- ## ICC
		[50274] = { {50274,"50"}, {49908,"25"}, 49869, 50226, 50231, 0, 49888, 49623, 0, 51315, 52200, 52201, 52251, 52252, 52253 }, -- Shadowfrost Shard
		[49869] = 50274, -- Light's Vengeance
		[50226] = 50274, -- Festergut's Acidic Blood
		[50231] = 50274, -- Rotface's Acidic Blood
		[49623] = 50274, -- Shadowmourne
		[51315] = 50274, -- Sealed Chest
		[52200] = 50274, -- Reins of the Crimson Deathcharger
		[52201] = 50274, -- Muradin's Favor
		[52251] = 50274, -- Jaina's Locket
		[52252] = 50274, -- Tabard of the Lightbringer
		[52253] = 50274, -- Sylvanas' Music Box


		--- ## VaultofArchavon
		--- Archavon the Stone Watcher
		-- Warlock
		["VoA_A_WARLOCK_10"] = {39497, 39500, 39498, 0, 42001, 42015, 42003, type = 9},
		["VoA_A_WARLOCK_25"] = {40423, 40420, 40422, 0, 41997, 42016, 42004, type = 9},
		-- Priest
		["VoA_A_PRIEST_10_H"] = {39515, 39519, 39517, 0, 41857, 41872, 41862, type = 9},
		["VoA_A_PRIEST_10_D"] = {39523, 39530, 39528, 0, 41919, 41938, 41925, type = 9},
		["VoA_A_PRIEST_25_H"] = {40449, 40445, 40448, 0, 41858, 41873, 41863, type = 9},
		["VoA_A_PRIEST_25_D"] = {40458, 40454, 40457, 0, 41920, 41939, 41926, type = 9},
		-- Rogue
		["VoA_A_ROGUE_10"] = {39558, 39560, 39564, 0, 41648, 41765, 41653, type = 9},
		["VoA_A_ROGUE_25"] = {40495, 40496, 40500, 0, 41649, 41766, 41654, type = 9},
		-- Hunter
		["VoA_A_HUNTER_10"] = {39579, 39582, 39580, 0, 41085, 41141, 41203, type = 9},
		["VoA_A_HUNTER_25"] = {40503, 40504, 40506, 0, 41086, 41142, 41204, type = 9},
		-- Warrior
		["VoA_A_WARRIOR_10_D"] = {39606, 39609, 39607, 0, 40783, 40801, 40840, type = 9},
		["VoA_A_WARRIOR_10_T"] = {39611, 39622, 39612, type = 9},
		["VoA_A_WARRIOR_25_D"] = {40525, 40527, 40529, 0, 40786, 40804, 40844, type = 9},
		["VoA_A_WARRIOR_25_T"] = {40544, 40545, 40547, type = 9},
		-- Deathknight
		["VoA_A_DEATHKNIGHT_10_D"] = {39617, 39618, 39620, 0, 40781, 40803, 40841, type = 9},
		["VoA_A_DEATHKNIGHT_10_T"] = {39623, 39624, 39626, type = 9},
		["VoA_A_DEATHKNIGHT_25_D"] = {40550, 40552, 40556, 0, 40784, 40806, 40845, type = 9},
		["VoA_A_DEATHKNIGHT_25_T"] = {40559, 40563, 40567, type = 9},
		-- Mage
		["VoA_A_MAGE_10"] = {39492, 39495, 39493, 0, 41950, 41969, 41957, type = 9},
		["VoA_A_MAGE_25"] = {40418, 40415, 40417, 0, 41951, 41970, 41958, type = 9},
		-- Druid
		["VoA_A_DRUID_10_DR"] = {39547, 39544, 39546, 0, 41314, 41291, 41302, type = 9},
		["VoA_A_DRUID_25_DR"] = {40469, 40466, 40468, 0, 41315, 41292, 41303, type = 9},
		["VoA_A_DRUID_10_D"] = {39554, 39557, 39555, 0, 41659, 41771, 41665, type = 9},
		["VoA_A_DRUID_25_D"] = {40471, 40472, 40493, 0, 41660, 41772, 41666, type = 9},
		["VoA_A_DRUID_10_H"]  = {39538, 39543, 39539, 0, 41308, 41284, 41296, type = 9},
		["VoA_A_DRUID_25_H"]  = {40463, 40460, 40462, 0, 41309, 41286, 41297, type = 9},
		-- Shaman
		["VoA_A_SHAMAN_10_DR"] = {39592, 39593, 39595, 0, 40989, 41005, 41031, type = 9},
		["VoA_A_SHAMAN_25_DR"] = {40514, 40515, 40517, 0, 40991, 41006, 41032, type = 9},
		["VoA_A_SHAMAN_10_D"] = {39597, 39601, 39603, 0, 41079, 41135, 41162, type = 9},
		["VoA_A_SHAMAN_25_D"] = {40523, 40520, 40522, 0, 41080, 41136, 41198, type = 9},
		["VoA_A_SHAMAN_10_H"]  = {39588, 39591, 39589, 0, 40988, 40999, 41025, type = 9},
		["VoA_A_SHAMAN_25_H"]  = {40508, 40509, 40512, 0, 40990, 41000, 41026, type = 9},
		-- Paladin
		["VoA_A_PALADIN_10_H"] = {39629, 39632, 39630, 0, 40904, 40925, 40937, type = 9},
		["VoA_A_PALADIN_25_H"] = {40569, 40570, 40572, 0, 40905, 40926, 40938, type = 9},
		["VoA_A_PALADIN_10_D"] = {39633, 39634, 39636, 0, 40782, 40802, 40842, type = 9},
		["VoA_A_PALADIN_25_D"] = {40574, 40575, 40577, 0, 40785, 40805, 40846, type = 9},
		["VoA_A_PALADIN_10_T"] = {39638, 39639, 39641, type = 9},
		["VoA_A_PALADIN_25_T"] = {40579, 40580, 40583, type = 9},

		--- Emalon the Storm Watcher
		-- Warlock
		["VoA_E_WARLOCK_10"] = {45419, 45420, 0, 42016, 42004, type = 9},
		["VoA_E_WARLOCK_25"] = {46135, 46139, 0, 42017, 42005, type = 9},
		-- Priest
		["VoA_E_PRIEST_10_H"] = {45387, 45388, 0, 41873, 41863, type = 9},
		["VoA_E_PRIEST_10_D"] = {45392, 45394, 0, 41939, 41926, type = 9},
		["VoA_E_PRIEST_25_H"] = {46188, 46195, 0, 41874, 41864, type = 9},
		["VoA_E_PRIEST_25_D"] = {46163, 46170, 0, 41940, 41927, type = 9},
		-- Rogue
		["VoA_E_ROGUE_10"] = {45397, 45399, 0, 41766, 41654, type = 9},
		["VoA_E_ROGUE_25"] = {46124, 46126, 0, 41767, 41655, type = 9},
		-- Hunter
		["VoA_E_HUNTER_10"] = {45360, 45362, 0, 41142, 41204, type = 9},
		["VoA_E_HUNTER_25"] = {46142, 46144, 0, 41143, 41205, type = 9},
		-- Warrior
		["VoA_E_WARRIOR_10_D"] = {45430, 45432, 0, 40804, 40844, type = 9},
		["VoA_E_WARRIOR_10_T"] = {45426, 45427, type = 9},
		["VoA_E_WARRIOR_25_D"] = {46148, 46150, 0, 40807, 40847, type = 9},
		["VoA_E_WARRIOR_25_T"] = {46164, 46169, type = 9},
		-- Deathknight
		["VoA_E_DEATHKNIGHT_10_D"] = {45341, 45343, 0, 40806, 40845, type = 9},
		["VoA_E_DEATHKNIGHT_10_T"] = {45337, 45338, type = 9},
		["VoA_E_DEATHKNIGHT_25_D"] = {46113, 46116, 0, 46119, 46121, type = 9},
		["VoA_E_DEATHKNIGHT_25_T"] = {40809, 40848, type = 9},
		-- Mage
		["VoA_E_MAGE_10"] = {46131, 45367, 0, 41970, 41958, type = 9},
		["VoA_E_MAGE_25"] = {46132, 46133, 0, 41971, 41959, type = 9},
		-- Druid
		["VoA_E_DRUID_10_DR"] = {45351, 45353, 0, 41314, 41291, type = 9},
		["VoA_E_DRUID_10_D"] = {45355, 45357, 0, 41659, 41771, type = 9},
		["VoA_E_DRUID_10_H"]  = {45345, 45347, 0, 41308, 41284, type = 9},
		["VoA_E_DRUID_25_DR"] = {46189, 46192, 0, 41293, 41304, type = 9},
		["VoA_E_DRUID_25_D"] = {46158, 46160, 0, 41773, 41667, type = 9},
		["VoA_E_DRUID_25_H"]  = {46183, 46185, 0, 41287, 41298, type = 9},
		-- Shaman
		["VoA_E_SHAMAN_10_DR"] = {45406, 45409, 0, 41006, 41032, type = 9},
		["VoA_E_SHAMAN_10_D"] = {45414, 45416, 0, 41136, 41198, type = 9},
		["VoA_E_SHAMAN_10_H"]  = {45401, 45403, 0, 41000, 41026, type = 9},
		["VoA_E_SHAMAN_25_DR"] = {46207, 46210, 0, 41007, 41033, type = 9},
		["VoA_E_SHAMAN_25_D"] = {46200, 46208, 0, 41137, 41199, type = 9},
		["VoA_E_SHAMAN_25_H"]  = {46199, 46202, 0, 41001, 41027, type = 9},
		-- Paladin
		["VoA_E_PALADIN_10_H"] = {45370, 45371, 0, 40926, 40938, type = 9},
		["VoA_E_PALADIN_10_D"] = {45376, 45379, 0, 40805, 40846, type = 9},
		["VoA_E_PALADIN_10_T"] = {45383, 45384, type = 9},
		["VoA_E_PALADIN_25_H"] = {46179, 46181, 0, 40927, 40939, type = 9},
		["VoA_E_PALADIN_25_D"] = {46155, 46153, 0, 40808, 40849, type = 9},
		["VoA_E_PALADIN_25_T"] = {46174, 46176, type = 9},

		--- Koralon the Flame Watcher (Alliance)
		-- Non-ClassSet-Items
		["VoA_K_CLOTH_10"] = {41909, 41898, 41903, 0, 41893, 41881, 41885, type = 9},
		["VoA_K_LEATHER_10"] = {41640, 41630, 41635, 0, 41625, 41617, 41621, 0, 41840, 41832, 41836, type = 9},
		["VoA_K_MAIL_10"] = {41065, 41070, 41075, 0, 41060, 41051, 41055, 0, 41225, 41235, 41230, type = 9},
		["VoA_K_PLATE_10"] = {40983, 40976, 40977, 0, 40889, 40881, 40882, type = 9},
		["VoA_K_BACK_10"] = {42071, 42073, 42069, 42072, 42070, 0, 42074, 42075, type = 9},
		["VoA_K_NECK_10"] = {42037, 42039, 42036, 42040, 42038, 0, 46373, 42034, 42035, type = 9},
		["VoA_K_FINGER_10"] = {42116, 0, 42117, type = 9},
		["VoA_K_CLOTH_25"] = {41910, 41899, 41904, 0, 41894, 41882, 41886, 0, 49181, 49179, 49183, type = 9},
		["VoA_K_LEATHER_25"] = {41641, 41631, 41636, 0, 41626, 41618, 41622, 0, 41841, 41833, 41837, type = 9},
		["VoA_K_MAIL_25"] = {41066, 41071, 41076, 0, 41061, 41052, 41056, 0, 41226, 41236, 41231, type = 9},
		["VoA_K_PLATE_25"] = {40984, 40978, 40979, 0, 40890, 40883, 40884, type = 9},
		["VoA_K_BACK_25"] = {42078, 42080, 42076, 42079, 42077, 0, 42081, 42082, type = 9},
		["VoA_K_NECK_25"] = {42044, 42046, 42043, 42047, 42045, 0, 46374, 42041, 42042, type = 9},
		["VoA_K_FINGER_25"] = {42118, 0, 42119, type = 9},
		-- Warlock
		["VoA_KA_WARLOCK_10"] = {47783, 47785, 0, 42017, 42005, type = 9},
		["VoA_KA_WARLOCK_25"] = {47782, 47780, 0, 42018, 42006, type = 9},
		-- Priest
		["VoA_KA_PRIEST_10_H"] = {47982, 47980, 0, 41874, 41864, type = 9},
		["VoA_KA_PRIEST_10_D"] = {48072, 48074, 0, 41940, 41927, type = 9},
		["VoA_KA_PRIEST_25_H"] = {47983, 47985, 0, 41875, 41865, type = 9},
		["VoA_KA_PRIEST_25_D"] = {48077, 48079, 0, 41941, 41928, type = 9},
		-- Rogue
		["VoA_KA_ROGUE_10"] = {48222, 48220, 0, 41767, 41655, type = 9},
		["VoA_KA_ROGUE_25"] = {48224, 48226, 0, 41768, 41656, type = 9},
		-- Hunter
		["VoA_KA_HUNTER_10"] = {48254, 48252, 0, 41143, 41205, type = 9},
		["VoA_KA_HUNTER_25"] = {48256, 48258, 0, 41144, 41206, type = 9},
		-- Warrior
		["VoA_KA_WARRIOR_10_D"] = {48375, 48373, 0, 40807, 40847, type = 9},
		["VoA_KA_WARRIOR_10_T"] = {48449, 48445, type = 9},
		["VoA_KA_WARRIOR_25_D"] = {48377, 48379, 0, 40810, 40850, type = 9},
		["VoA_KA_WARRIOR_25_T"] = {48452, 48446, type = 9},
		-- Deathknight
		["VoA_KA_DEATHKNIGHT_10_D"] = {48480, 48476, 0, 40809, 40848, type = 9},
		["VoA_KA_DEATHKNIGHT_10_T"] = {48537, 48533, type = 9},
		["VoA_KA_DEATHKNIGHT_25_D"] = {48482, 48484, 0, 40811, 40851, type = 9},
		["VoA_KA_DEATHKNIGHT_25_T"] = {48539, 48541, type = 9},
		-- Mage
		["VoA_KA_MAGE_10"] = {47752, 47750, 0, 41971, 41959, type = 9},
		["VoA_KA_MAGE_25"] = {47753, 47755, 0, 41972, 41960, type = 9},
		-- Druid
		["VoA_KA_DRUID_10_DR"] = {48162, 48160, 0, 41293, 41304, type = 9},
		["VoA_KA_DRUID_10_D"] = {48213, 48215, 0, 41773, 41667, type = 9},
		["VoA_KA_DRUID_10_H"]  = {48132, 48130, 0, 41287, 41298, type = 9},
		["VoA_KA_DRUID_25_DR"] = {48163, 48165, 0, 41294, 41305, type = 9},
		["VoA_KA_DRUID_25_D"] = {48212, 48210, 0, 41774, 41668, type = 9},
		["VoA_KA_DRUID_25_H"]  = {48133, 48135, 0, 41288, 41299, type = 9},
		-- Shaman
		["VoA_KA_SHAMAN_10_DR"] = {48312, 48314, 0, 41007, 41033, type = 9},
		["VoA_KA_SHAMAN_10_D"] = {48342, 48344, 0, 41137, 41199, type = 9},
		["VoA_KA_SHAMAN_10_H"]  = {48284, 48282, 0, 41001, 41027, type = 9},
		["VoA_KA_SHAMAN_25_DR"] = {48317, 48319, 0, 41008, 41034, type = 9},
		["VoA_KA_SHAMAN_25_D"] = {48347, 48349, 0, 41138, 41200, type = 9},
		["VoA_KA_SHAMAN_25_H"]  = {48286, 48288, 0, 41002, 41028, type = 9},
		-- Paladin
		["VoA_KA_PALADIN_10_H"] = {48574, 48568, 0, 40927, 40939, type = 9},
		["VoA_KA_PALADIN_10_D"] = {48603, 48605, 0, 40808, 40849, type = 9},
		["VoA_KA_PALADIN_10_T"] = {48633, 48635, type = 9},
		["VoA_KA_PALADIN_25_H"] = {48576, 48578, 0, 40928, 40940, type = 9},
		["VoA_KA_PALADIN_25_D"] = {48608, 48610, 0, 40812, 40852, type = 9},
		["VoA_KA_PALADIN_25_T"] = {48640, 48638, type = 9},
		-- Koralon the Flame Watcher (Horde)
		-- Warlock
		["VoA_KH_WARLOCK_10"] = {47802, 47800, 0, 42017, 42005, type = 9},
		["VoA_KH_WARLOCK_25"] = {47803, 47805, 0, 42018, 42006, type = 9},
		-- Priest
		["VoA_KH_PRIEST_10_H"] = {48067, 48069, 0, 41874, 41864, type = 9},
		["VoA_KH_PRIEST_10_D"] = {48097, 48099, 0, 41940, 41927, type = 9},
		["VoA_KH_PRIEST_25_H"] = {48066, 48064, 0, 41875, 41865, type = 9},
		["VoA_KH_PRIEST_25_D"] = {48096, 48094, 0, 41941, 41928, type = 9},
		-- Rogue
		["VoA_KH_ROGUE_10"] = {48244, 48246, 0, 41767, 41655, type = 9},
		["VoA_KH_ROGUE_25"] = {48241, 48239, 0, 41768, 41656, type = 9},
		-- Hunter
		["VoA_KH_HUNTER_10"] = {48276, 48278, 0, 41143, 41205, type = 9},
		["VoA_KH_HUNTER_25"] = {48273, 48271, 0, 41144, 41206, type = 9},
		-- Warrior
		["VoA_KH_WARRIOR_10_D"] = {48387, 48389, 0, 40807, 40847, type = 9},
		["VoA_KH_WARRIOR_10_T"] = {48457, 48459, type = 9},
		["VoA_KH_WARRIOR_25_D"] = {48392, 48394, 0, 40810, 40850, type = 9},
		["VoA_KH_WARRIOR_25_T"] = {48462, 48464, type = 9},
		-- Deathknight
		["VoA_KH_DEATHKNIGHT_10_D"] = {48502, 48504, 0, 40809, 40848, type = 9},
		["VoA_KH_DEATHKNIGHT_10_T"] = {48559, 48561, type = 9},
		["VoA_KH_DEATHKNIGHT_25_D"] = {48499, 48497, 0, 40811, 40851, type = 9},
		["VoA_KH_DEATHKNIGHT_25_T"] = {48556, 48554, type = 9},
		-- Mage
		["VoA_KH_MAGE_10"] = {47773, 47775, 0, 41971, 41959, type = 9},
		["VoA_KH_MAGE_25"] = {47772, 47770, 0, 41972, 41960, type = 9},
		-- Druid
		["VoA_KH_DRUID_10_DR"] = {48183, 48185, 0, 41293, 41304, type = 9},
		["VoA_KH_DRUID_10_D"] = {48192, 48190, 0, 41773, 41667, type = 9},
		["VoA_KH_DRUID_10_H"]  = {48153, 48155, 0, 41287, 41298, type = 9},

		["VoA_KH_DRUID_25_DR"] = {48182, 48180, 0, 41294, 41305, type = 9},
		["VoA_KH_DRUID_25_D"] = {48193, 48195, 0, 41774, 41668, type = 9},
		["VoA_KH_DRUID_25_H"]  = {48152, 48150, 0, 41288, 41299, type = 9},
		-- Shaman
		["VoA_KH_SHAMAN_10_DR"] = {48337, 48339, 0, 41007, 41033, type = 9},
		["VoA_KH_SHAMAN_10_D"] = {48367, 48369, 0, 41137, 41199, type = 9},
		["VoA_KH_SHAMAN_10_H"]  = {48296, 48298, 0, 41001, 41027, type = 9},
		["VoA_KH_SHAMAN_25_DR"] = {48334, 48332, 0, 41008, 41034, type = 9},
		["VoA_KH_SHAMAN_25_D"] = {48364, 48362, 0, 41138, 41200, type = 9},
		["VoA_KH_SHAMAN_25_H"]  = {48301, 48303, 0, 41002, 41028, type = 9},
		-- Paladin
		["VoA_KH_PALADIN_10_H"] = {48598, 48596, 0, 40927, 40939, type = 9},
		["VoA_KH_PALADIN_10_D"] = {48630, 48628, 0, 40808, 40849, type = 9},
		["VoA_KH_PALADIN_10_T"] = {48653, 48655, type = 9},
		["VoA_KH_PALADIN_25_H"] = {48593, 48591, 0, 40928, 40940, type = 9},
		["VoA_KH_PALADIN_25_D"] = {48625, 48623, 0, 40812, 40852, type = 9},
		["VoA_KH_PALADIN_25_T"] = {48658, 48660, type = 9},

		--- Toravon the Ice Watcher
		-- Non-ClassSet-Items
		["VoA_T_CLOTH_10"] = {41910, 41899, 41904, 0, 41894, 41882, 41886, 0, 49181, 49179, 49183, type = 9},
		["VoA_T_LEATHER_10"] = {41641, 41631, 41636, 0, 41626, 41618, 41622, 0, 41841, 41833, 41837, type = 9},
		["VoA_T_MAIL_10"] = {41066, 41071, 41076, 0, 41061, 41052, 41056, 0, 41226, 41236, 41231, type = 9},
		["VoA_T_PLATE_10"] = {40984, 40978, 40979, 0, 40890, 40883, 40884, type = 9},
		["VoA_T_BACK_10"] = {42078, 42080, 42076, 42079, 42077, 0, 42081, 42082, type = 9},
		["VoA_T_NECK_10"] = {42044, 42046, 42043, 42047, 42045, 0, 46374, 42041, 42042, type = 9},
		["VoA_T_FINGER_10"] = {42118, 0, 42119, type = 9},
		["VoA_T_CLOTH_25"] = {51329, 51327, 51328, 0, 51367, 51365, 51366, 0, 51339, 51337, 51338, type = 9},
		["VoA_T_LEATHER_25"] = {51345, 51343, 51344, 0, 51342, 51340, 51341, 0, 51370, 51368, 51369, type = 9},
		["VoA_T_MAIL_25"] = {51376, 51374, 51375, 0, 51373, 51371, 51372, 0, 51352, 51350, 51351, type = 9},
		["VoA_T_PLATE_25"] = {51361, 51359, 51360, 0, 51364, 51362, 51363, type = 9},
		["VoA_T_BACK_25"] = {51334, 51348, 51330, 51346, 51332, 0, 51354, 51356, type = 9},
		["VoA_T_NECK_25"] = {51335, 51349, 51331, 51347, 51333, 0, 51353, 51355, 51357, type = 9},
		["VoA_T_FINGER_25"] = {51336, 0, 51358, type = 9},
		-- Warlock
		["VoA_T_WARLOCK_10"] = {50240, 50242, 0, 42018, 42006, type = 9},
		["VoA_T_WARLOCK_25"] = {51209, 51207, 0, 51537, 51539, type = 9},
		-- Priest
		["VoA_T_PRIEST_10_H"] = {50766, 50769, 0, 41875, 41865, type = 9},
		["VoA_T_PRIEST_10_D"] = {50391, 50393, 0, 41941, 41928, type = 9},
		["VoA_T_PRIEST_25_H"] = {51179, 51177, 0, 51483, 51485, type = 9},
		["VoA_T_PRIEST_25_D"] = {51183, 51181, 0, 51488, 51490, type = 9},
		-- Rogue
		["VoA_T_ROGUE_10"] = {50088, 50090, 0, 41768, 41656, type = 9},
		["VoA_T_ROGUE_25"] = {51188, 51186, 0, 51493, 51495, type = 9},
		-- Hunter
		["VoA_T_HUNTER_10"] = {50114, 50116, 0, 41144, 41206, type = 9},
		["VoA_T_HUNTER_25"] = {51154, 51152, 0, 51459, 51461, type = 9},
		-- Warrior
		["VoA_T_WARRIOR_10_D"] = {50079, 50081, 0, 40810, 40850, type = 9},
		["VoA_T_WARRIOR_10_T"] = {50849, 50847, type = 9},
		["VoA_T_WARRIOR_25_D"] = {51213, 51211, 0, 51542, 51544, type = 9},
		["VoA_T_WARRIOR_25_T"] = {51217, 51216, type = 9},
		-- Deathknight
		["VoA_T_DEATHKNIGHT_10_D"] = {50095, 50097, 0, 40811, 40851, type = 9},
		["VoA_T_DEATHKNIGHT_10_T"] = {50856, 50854, type = 9},
		["VoA_T_DEATHKNIGHT_25_D"] = {51128, 51126, 0, 51414, 51416, type = 9},
		["VoA_T_DEATHKNIGHT_25_T"] = {51132, 51131, type = 9},
		-- Mage
		["VoA_T_MAGE_10"] = {50275, 50277, 0, 41972, 41960, type = 9},
		["VoA_T_MAGE_25"] = {51159, 51157, 0, 51464, 51466, type = 9},
		-- Druid
		["VoA_T_DRUID_10_DR"] = {50822, 50820, 0, 41294, 41305, type = 9},
		["VoA_T_DRUID_10_D"] = {50827, 50825, 0, 41774, 41668, type = 9},
		["VoA_T_DRUID_10_H"]  = {50107, 50109, 0, 41288, 41299, type = 9},
		["VoA_T_DRUID_25_DR"] = {51148, 51146, 0, 51434, 51436, type = 9},
		["VoA_T_DRUID_25_D"] = {51144, 51142, 0, 51426, 51428, type = 9},
		["VoA_T_DRUID_25_H"]  = {51138, 51136, 0, 51420, 51422, type = 9},
		-- Shaman
		["VoA_T_SHAMAN_10_DR"] = {50842, 50844, 0, 41008, 41034, type = 9},
		["VoA_T_SHAMAN_10_D"] = {50831, 50833, 0, 41138, 41200, type = 9},
		["VoA_T_SHAMAN_10_H"]  = {50836, 50838, 0, 41002, 41028, type = 9},
		["VoA_T_SHAMAN_25_DR"] = {51201, 51203, 0, 51510, 51512, type = 9},
		["VoA_T_SHAMAN_25_D"] = {51196, 51198, 0, 51504, 51506, type = 9},
		["VoA_T_SHAMAN_25_H"]  = {51191, 51193, 0, 51498, 51500, type = 9},
		-- Paladin
		["VoA_T_PALADIN_10_H"] = {50868, 50866, 0, 40928, 40940, type = 9},
		["VoA_T_PALADIN_10_D"] = {50327, 50325, 0, 40812, 40852, type = 9},
		["VoA_T_PALADIN_10_T"] = {50863, 50861, type = 9},
		["VoA_T_PALADIN_25_H"] = {51169, 51168, 0, 51469, 51471, type = 9},
		["VoA_T_PALADIN_25_D"] = {51163, 51161, 0, 51475, 51477, type = 9},
		["VoA_T_PALADIN_25_T"] = {51172, 51171, type = 9},

		--- Darkmoon cards
		-- Chaos Deck / Darkmoon Card: Berserker!
		[44276] = { 44276, 42989, 0, 44277, 44278, 44279, 44280, 44281, 44282, 44284, 44285 },
		[44277] = 44276, [44278] = 44276, [44279] = 44276, [44280] = 44276, [44281] = 44276, [44282] = 44276, [44284] = 44276, [44285] = 44276,

		-- Prisms Deck / Darkmoon Card: Illusion
		[44259] = { 44259, 42988, 0, 44260, 44261, 44262, 44263, 44264, 44265, 44266, 44267 },
		[44260] = 44259, [44261] = 44259, [44262] = 44259, [44263] = 44259, [44264] = 44259, [44265] = 44259, [44266] = 44259, [44267] = 44259,

		-- Undeath Deck / Darkmoon Card: Death
		[44294] = { 44294, 42990, 0, 44286, 44287, 44288, 44289, 44290, 44291, 44292, 44293 },
		[44286] = 44294, [44287] = 44294, [44288] = 44294, [44289] = 44294, [44290] = 44294, [44291] = 44294, [44292] = 44294, [44293] = 44294,

		-- Lunacy Deck / Darkmoon Card: Greatness
		[44326] = { 44326, 44253, 42987, 44254, 44255, 0, 44268, 44269, 44270, 44271, 44272, 44273, 44274, 44275 },
		[44268] = 44326, [44269] = 44326, [44270] = 44326, [44271] = 44326, [44272] = 44326, [44273] = 44326, [44274] = 44326, [44275] = 44326,


		--- Misc
		[44951] = { { 41119, "24-40" }, type = 11 },
	}
end


local function Init()
	local coloredClassNames = AtlasLoot:GetColoredClassNames()

	for k, v in pairs(TOKEN) do
		if TOKEN[v] then
			TOKEN[k] = TOKEN[v]
		end
	end

	for className, cClassName in pairs(coloredClassNames) do
		TOKEN_TYPE_TEXT[className] = format(TOKEN_FORMAT_STRING, cClassName)
	end
end
AtlasLoot:AddInitFunc(Init)

function Token.IsToken(itemID)
	return TOKEN[itemID or 0] and true or false
end

function Token.GetTokenData(itemID)
	return TOKEN[itemID or 0] and TOKEN[itemID or 0] or nil
end

function Token.GetTokenDescription(itemID)
	return ( itemID and TOKEN[itemID] ) and TOKEN_TYPE_TEXT[TOKEN[itemID].type or TOKEN_TYPE_DEFAULT] or nil
end

function Token.GetTokenType(itemID)
	return ( itemID and TOKEN[itemID] ) and (TOKEN[itemID].type or TOKEN_TYPE_DEFAULT) or nil
end

function Token.TokenTypeAddDescription(itemID)
	return ( itemID and TOKEN[itemID] ) and TOKEN_TYPE_ADD_ITEM_DESCRIPTION[TOKEN[itemID].type or TOKEN_TYPE_DEFAULT] or false
end

function Token.GetTokenDummyNumberRange()
	return TOKE_NUMBER_RANGE
end

-- "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR", "DEATHKNIGHT"
-- AtlasLoot.Data.Token.GetClassItemsForToken(45654, "WARRIOR")
function Token.GetClassItemsForToken(tokenItemID, className)
	if not tokenItemID or not TOKEN[tokenItemID] then return end
	if not className or not ICONS[className] then return end

	local classTokens = {}
	local isClassToken = false
	for i, token in ipairs(TOKEN[tokenItemID]) do
		if isClassToken then
			if token == 0 then
				break
			else
				classTokens[#classTokens+1] = token
			end
		elseif token == ICONS[className] then
			isClassToken = true
		end
	end

	return #classTokens > 0 and classTokens or nil
end

-- TOKEN_TYPE_ADD_ITEM_DESCRIPTION
--[==[@debug@
function Token.GetFullTokenTable()
	return TOKEN
end
--@end-debug@]==]