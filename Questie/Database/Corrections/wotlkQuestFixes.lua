---@class QuestieWotlkQuestFixes
local QuestieWotlkQuestFixes = QuestieLoader:CreateModule("QuestieWotlkQuestFixes")
local _QuestieWotlkQuestFixes = {}

---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")
---@type ZoneDB
local ZoneDB = QuestieLoader:ImportModule("ZoneDB")
---@type QuestieProfessions
local QuestieProfessions = QuestieLoader:ImportModule("QuestieProfessions")
---@type QuestieCorrections
local QuestieCorrections = QuestieLoader:ImportModule("QuestieCorrections")
---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")


QuestieCorrections.killCreditObjectiveFirst[11652] = true
QuestieCorrections.killCreditObjectiveFirst[12100] = true
QuestieCorrections.killCreditObjectiveFirst[12546] = true
QuestieCorrections.killCreditObjectiveFirst[12561] = true
QuestieCorrections.killCreditObjectiveFirst[12762] = true
QuestieCorrections.killCreditObjectiveFirst[12779] = true
QuestieCorrections.killCreditObjectiveFirst[12919] = true
QuestieCorrections.killCreditObjectiveFirst[13086] = true
QuestieCorrections.killCreditObjectiveFirst[13373] = true
QuestieCorrections.killCreditObjectiveFirst[13376] = true
QuestieCorrections.killCreditObjectiveFirst[13380] = true
QuestieCorrections.killCreditObjectiveFirst[13382] = true
QuestieCorrections.killCreditObjectiveFirst[13404] = true
QuestieCorrections.killCreditObjectiveFirst[13406] = true
QuestieCorrections.killCreditObjectiveFirst[24498] = true
QuestieCorrections.killCreditObjectiveFirst[24507] = true

function QuestieWotlkQuestFixes:Load()
    _QuestieWotlkQuestFixes:InsertMissingQuestIds()

    local questKeys = QuestieDB.questKeys
    local raceIDs = QuestieDB.raceKeys
    local classIDs = QuestieDB.classKeys
    local factionIDs = QuestieDB.factionIDs
    local zoneIDs = ZoneDB.zoneIDs
    local sortKeys = QuestieDB.sortKeys
    local profKeys = QuestieProfessions.professionKeys
    local specialFlags = QuestieDB.specialFlags

    return {
        [55] = {
            [questKeys.objectives] = {{{1200}}},
        },
        [75] = {
            [questKeys.specialFlags] = 0,
        },
        [171] = {
            [questKeys.startedBy] = {{14305},nil,nil},
            [questKeys.questLevel] = -1,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [172] = {
            [questKeys.questLevel] = -1,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [176] = {
            [questKeys.startedBy] = {nil,{68,156561}},
        },
        [236] = {
            [questKeys.finishedBy] = {{31108}},
            [questKeys.exclusiveTo] = {13153,13154,13156,13195,13196,13197,13198},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [403] = {
            [questKeys.startedBy] = {nil,{269}},
        },
        [434] = {
            [questKeys.triggerEnd] = {"Overhear Lescovar and Marzon's Conversation", {[zoneIDs.STORMWIND_CITY]={{72.22,35.37}}}},
        },
        [508] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [558] = {
            [questKeys.questLevel] = -1,
            [questKeys.parentQuest] = 0,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [648] = {
            [questKeys.triggerEnd] = {"Escort OOX-17/TN to safety", {[zoneIDs.TANARIS]={{61,53}}}},
        },
        [768] = {
            [questKeys.requiredSkill] = {393,1},
        },
        [836] = {
            [questKeys.triggerEnd] = {"Escort OOX-09/HL to safety", {[zoneIDs.THE_HINTERLANDS]={{57.81,50.2}}}},
        },
        [910] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [911] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [915] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [925] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [974] = { -- Finding the Source
            [questKeys.requiredSourceItems] = {},
        },
        [1056] = {
            [questKeys.nextQuestInChain] = 1057,
        },
        [1132] = {
            [questKeys.startedBy] = {{4455}},
            [questKeys.finishedBy] = {{4456}},
        },
        [1135] = {
            [questKeys.startedBy] = {{4456}},
            [questKeys.finishedBy] = {{4456}},
        },
        [1198] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [1252] = {
            [questKeys.preQuestSingle] = {11123},
        },
        [1253] = {
            [questKeys.preQuestSingle] = {11123},
        },
        [1284] = {
            [questKeys.preQuestSingle] = {11123},
        },
        [1361] = {
            [questKeys.startedBy] = {{2229,4485,10540}},
        },
        [1468] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [1479] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [1558] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [1678] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [1679] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [1680] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [1681] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [1682] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [1687] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [1716] = {
            [questKeys.preQuestSingle] = {},
        },
        [1795] = {
            [questKeys.requiredSourceItems] = {},
        },
        [1800] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [1885] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD,
        },
        [2204] = {
            [questKeys.startedBy] = {nil,{112877}},
        },
        [2279] = {
            [questKeys.preQuestSingle] = {2278},
        },
        [2358] = {
            [questKeys.startedBy] = {{7009}},
        },
        [2701] = {
            [questKeys.finishedBy] = {nil,{141980}},
        },
        [2767] = {
            [questKeys.triggerEnd] = {"Escort OOX-22/FE to safety", {[zoneIDs.FERALAS]={{55.63,51.35}}}},
        },
        [2879] = {
            [questKeys.requiredSourceItems] = {9255,9256,9257,9258},
        },
        [3161] = {
            [questKeys.requiredSourceItems] = {},
        },
        [3641] = {
            [questKeys.preQuestSingle] = {},
        },
        [3763] = {
            [questKeys.startedBy] = {{6735}},
            [questKeys.exclusiveTo] = {3789,3790},
        },
        [3789] = {
            [questKeys.startedBy] = {{6740}},
            [questKeys.exclusiveTo] = {3763,3790},
        },
        [3790] = {
            [questKeys.startedBy] = {{5111}},
            [questKeys.exclusiveTo] = {3763,3789},
        },
        [4127] = {
            [questKeys.startedBy] = {nil,{164909,186419}},
        },
        [4144] = {
            [questKeys.specialFlags] = nil,
        },
        [4362] = {
            [questKeys.preQuestSingle] = {4361},
        },
        [4363] = {
            [questKeys.preQuestSingle] = {4362},
        },
        [4485] = {
            [questKeys.startedBy] = {{6179}},
        },
        [4486] = {
            [questKeys.startedBy] = {{5149}},
        },
        [4491] = {
            [questKeys.requiredSourceItems] = {},
        },
        [4740] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [4763] = {
            [questKeys.objectives] = {nil,nil,{{12355}}},
        },
        [4771] = {
            [questKeys.preQuestSingle] = {5522},
        },
        [4822] = {
            [questKeys.questLevel] = -1,
            [questKeys.parentQuest] = 0,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
        },
        [5057] = {
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [5305]  ={
            [questKeys.requiredSpecialization] = 0,
        },
        [5306]  ={
            [questKeys.requiredSpecialization] = 0,
        },
        [5307]  ={
            [questKeys.requiredSpecialization] = 0,
        },
        [5502] = {
            [questKeys.questLevel] = -1,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.SPECIAL,
            [questKeys.preQuestGroup] = {915,925},
        },
        [5505] = {
            [questKeys.startedBy] = {{11056}},
            [questKeys.finishedBy] = {{11056}},
        },
        [5531] = {
            [questKeys.nextQuestInChain] = 0,
        },
        [5721] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.EASTERN_PLAGUELANDS]={{35.01,84.05}}}, Questie.ICON_TYPE_EVENT, l10n("Place the Relic Bundle in the Town Square."),}},
        },
        [6185] = {
            [questKeys.triggerEnd] = {"The Blightcaller Uncovered", {[zoneIDs.EASTERN_PLAGUELANDS]={{23.4,67.8}}}},
        },
        [6521] = {
            [questKeys.startedBy] = {{36273}},
            [questKeys.finishedBy] = {{36273}},
        },
        [6522] = {
            [questKeys.finishedBy] = {{36273}},
        },
        [6622] = { -- Triage
            [questKeys.requiredSourceItems] = {},
        },
        [6624] = { -- Triage
            [questKeys.requiredSourceItems] = {},
        },
        [6963] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [6983] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [7023] = {
            [questKeys.startedBy] = {{13435,23010}},
        },
        [7042] = {
            [questKeys.startedBy] = {{13433}},
        },
        [7641] = {
            [questKeys.preQuestSingle] = {7638,7670},
        },
        [7643] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {7642,7648},
        },
        [7704] = {
            [questKeys.startedBy] = {nil,nil,{18950}},
        },
        [7785] = {
            [questKeys.requiredClasses] = classIDs.NONE,
        },
        [7786] = {
            [questKeys.requiredClasses] = classIDs.NONE,
        },
        [7787] = {
            [questKeys.requiredClasses] = classIDs.NONE,
        },
        [8149] = {
            [questKeys.objectives] = {nil,{{1323,"Place a tribute at Uther's Tomb"}}},
            [questKeys.extraObjectives] = {},
        },
        [8150] = {
            [questKeys.objectives] = {nil,{{1324,"Place a tribute at Grom's Monument"}}},
            [questKeys.extraObjectives] = {},
        },
        [8166] = {
            [questKeys.requiredMaxLevel] = 49,
        },
        [8167] = {
            [questKeys.requiredMaxLevel] = 39,
        },
        [8168] = {
            [questKeys.requiredMaxLevel] = 29,
        },
        [8169] = {
            [questKeys.requiredMaxLevel] = 49,
        },
        [8170] = {
            [questKeys.requiredMaxLevel] = 39,
        },
        [8171] = {
            [questKeys.requiredMaxLevel] = 29,
        },
        [8346] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{15274},15274,"Mana Tap creature"}}},
        },
        [8551] = {
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [8552] = {
            [questKeys.specialFlags] = 0,
        },
        [8553] = {
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [8554] = {
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [8746] = {
            [questKeys.objectives] = {{{15664,"Find Metzen the Reindeer and rescue him"}},nil,{{21211}}},
        },
        [8762] = {
            [questKeys.objectives] = {{{15664,"Find Metzen the Reindeer and rescue him"}},nil,{{21211}}},
        },
        [8764] = { -- The Changing of Paths - Protector No More
            [questKeys.specialFlags] = specialFlags.REPEATABLE,
        },
        [8765] = { -- The Changing of Paths - Invoker No More
            [questKeys.specialFlags] = specialFlags.REPEATABLE,
        },
        [8766] = { -- The Changing of Paths - Conqueror No More
            [questKeys.specialFlags] = specialFlags.REPEATABLE,
        },
        [8767] = {
            [questKeys.requiredClasses] = classIDs.ROGUE + classIDs.WARRIOR + classIDs.HUNTER + classIDs.PALADIN + classIDs.DEATH_KNIGHT,
        },
        [8871] = {
            [questKeys.startedBy] = {},
        },
        [8872] = {
            [questKeys.startedBy] = {},
        },
        [8874] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.startedBy] = {},
        },
        [8875] = {
            [questKeys.startedBy] = {},
        },
        [8888] = {
            [questKeys.exclusiveTo] = {8889},
        },
        [8892] = {
            [questKeys.preQuestSingle] = {},
        },
        [9078] = {
            [questKeys.requiredClasses] = classIDs.ROGUE,
        },
        [9154] = {
            [questKeys.startedBy] = {{16241,16255}},
            [questKeys.finishedBy] = {{16281}},
            [questKeys.questLevel] = -1,
        },
        [9189] = {
            [questKeys.requiredRaces] = raceIDs.BLOOD_ELF,
        },
        [9211] = {
            [questKeys.specialFlags] = 1,
        },
        [9213] = {
            [questKeys.specialFlags] = 1,
        },
        [9221] = {
            [questKeys.specialFlags] = 1,
        },
        [9222] = {
            [questKeys.specialFlags] = 1,
        },
        [9223] = {
            [questKeys.specialFlags] = 1,
        },
        [9224] = {
            [questKeys.specialFlags] = 1,
        },
        [9225] = {
            [questKeys.specialFlags] = 1,
        },
        [9226] = {
            [questKeys.specialFlags] = 1,
        },
        [9227] = {
            [questKeys.specialFlags] = 1,
        },
        [9228] = {
            [questKeys.specialFlags] = 1,
        },
        [9247] = {
            [questKeys.finishedBy] = {{16281}},
        },
        [9358] = {
            [questKeys.exclusiveTo] = {9252},
        },
        [9361] = {
            [questKeys.requiredSourceItems] = {23270},
        },
        [9425] = {
            [questKeys.requiredRaces] = raceIDs.BLOOD_ELF,
        },
        [9648] = {
            [questKeys.name] = "Maatparm Mushroom Menagerie",
            [questKeys.objectivesText] = {"Maatparm at Blood Watch wants 1 Aquatic Stinkhorn, 1 Blood Mushroom, 1 Ruinous Polyspore, and 1 Fel Cone Fungus."},
        },
        [9681] = {
            [questKeys.startedBy] = {{17717,17718}},
        },
        [9876] = {
            [questKeys.nextQuestInChain] = 9738,
        },
        [10137] = {
            [questKeys.requiredSourceItems] = {},
        },
        [10155] = {
            [questKeys.requiredSourceItems] = {},
        },
        [10173] = {
            [questKeys.requiredSourceItems] = {},
        },
        [10180] = {
            [questKeys.nextQuestInChain] = 10097,
        },
        [10445] = {
            [questKeys.exclusiveTo] = {13432},
        },
        [10460] = {
            [questKeys.preQuestSingle] = {10445,13432},
        },
        [10461] = {
            [questKeys.preQuestSingle] = {10445,13432},
        },
        [10462] = {
            [questKeys.preQuestSingle] = {10445,13432},
        },
        [10463] = {
            [questKeys.preQuestSingle] = {10445,13432},
        },
        [10464] = {
            [questKeys.objectives] = {nil,nil,nil,{990,9000}},
        },
        [10465] = {
            [questKeys.objectives] = {nil,nil,nil,{990,9000}},
        },
        [10466] = {
            [questKeys.objectives] = {nil,nil,nil,{990,9000}},
        },
        [10467] = {
            [questKeys.objectives] = {nil,nil,nil,{990,9000}},
        },
        [10468] = {
            [questKeys.objectives] = {nil,nil,nil,{990,21000}},
        },
        [10469] = {
            [questKeys.objectives] = {nil,nil,nil,{990,21000}},
        },
        [10470] = {
            [questKeys.objectives] = {nil,nil,nil,{990,21000}},
        },
        [10471] = {
            [questKeys.objectives] = {nil,nil,nil,{990,21000}},
        },
        [10472] = {
            [questKeys.objectives] = {nil,nil,nil,{990,42000}},
        },
        [10473] = {
            [questKeys.objectives] = {nil,nil,nil,{990,42000}},
        },
        [10474] = {
            [questKeys.objectives] = {nil,nil,nil,{990,42000}},
        },
        [10475] = {
            [questKeys.objectives] = {nil,nil,nil,{990,42000}},
        },
        [10651] = {
            [questKeys.requiredSourceItems] = {},
        },
        [10667] = {
            [questKeys.preQuestSingle] = {},
        },
        [10670] = {
            [questKeys.preQuestSingle] = {},
        },
        [10702] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{21864,21878,21879,23020,21978},21978,},},},
        },
        [10703] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{21864,21878,21879,23020,21978},21978,},},},
        },
        [10725] = {
            [questKeys.objectives] = {nil,nil,nil,{967,42000}},
        },
        [10726] = {
            [questKeys.objectives] = {nil,nil,nil,{967,42000}},
        },
        [10727] = {
            [questKeys.objectives] = {nil,nil,nil,{967,42000}},
        },
        [10728] = {
            [questKeys.objectives] = {nil,nil,nil,{967,42000}},
        },
        [10729] = {
            [questKeys.nextQuestInChain] = 10733,
        },
        [10730] = {
            [questKeys.nextQuestInChain] = 10734,
        },
        [10731] = {
            [questKeys.nextQuestInChain] = 10735,
        },
        [10732] = {
            [questKeys.nextQuestInChain] = 10736,
        },
        [10769] = {
            [questKeys.objectives] = {{{19823}},nil,{{31108}}},
        },
        [10776] = {
            [questKeys.objectives] = {{{19823}},nil,{{31310}}},
        },
        [10888] = {
            [questKeys.exclusiveTo] = {13430},
        },
        [10900] = {
            [questKeys.requiredMaxLevel] = 70,
        },
        [10901] = {
            [questKeys.exclusiveTo] = {13431},
        },
        [10946] = {
            [questKeys.requiredSourceItems] = {},
        },
        [10958] = {
            [questKeys.preQuestSingle] = {10949},
        },
        [10985] = {
            [questKeys.exclusiveTo] = {13429},
        },
        [11010] = {
            [questKeys.requiredClasses] = classIDs.WARLOCK + classIDs.ROGUE + classIDs.MAGE + classIDs.PRIEST + classIDs.WARRIOR + classIDs.PALADIN + classIDs.HUNTER + classIDs.SHAMAN + classIDs.DEATH_KNIGHT,
        },
        [11117] = {
            [questKeys.startedBy] = {{23486}},
            [questKeys.finishedBy] = {{23486}},
        },
        [11118] = {
            [questKeys.startedBy] = {{23486}},
            [questKeys.finishedBy] = {{23486}},
        },
        [11120] = {
            [questKeys.startedBy] = {{24657}},
            [questKeys.finishedBy] = {{24657}},
        },
        [11122] = {
            [questKeys.objectives] = {{{24468,"Kegs Delivered"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Grab a keg"), 0, {{"monster", 24364}}}},
        },
        [11137] = {
            [questKeys.preQuestSingle] = {},
        },
        [11152] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11153] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.HOWLING_FJORD]={{28.1,42.2}}}, Questie.ICON_TYPE_EVENT, l10n("Wait for Harrowmeiser's zeppelin to dock"),}},
            [questKeys.requiredSourceItems] = {},
        },
        [11154] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Throw the firecrackers up to 20 yards away underneath a darkclaw bat to scare it"), 0, {{"monster", 23959}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11157] = {
            [questKeys.objectives] = {{{23777,"Proto-Drake Egg destroyed"}},nil,nil,nil,{{{23688,23750},23688}}},
        },
        [11170] = {
            [questKeys.objectives] = {{{24120,"North Fleet Reservist Infected"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Bat Handler Camille"), 0, {{"monster", 23816}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11175] = {
            [questKeys.exclusiveTo] = {11176},
        },
        [11188] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11202] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11218] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11227] = {
            [questKeys.requiredSourceItems] = {33238},
        },
        [11232] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11238] = {
            [questKeys.sourceItemId] = 33282,
        },
        [11241] = {
            [questKeys.triggerEnd] = {"Rescue Apothecary Hanes",{[zoneIDs.HOWLING_FJORD]={{78.72,37.23,},},},},
        },
        [11245] = {
            [questKeys.requiredSourceItems] = {33311},
        },
        [11246] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{23661,23662,23663,23664,23665,23666,23667,23668,23669,23670},23661,"Winterskorn Vrykul Dismembered"}}},
            [questKeys.requiredSourceItems] = {33311},
        },
        [11247] = {
            [questKeys.requiredSourceItems] = {33311},
        },
        [11249] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Present the Vrykul Scroll of Ascension"), 0, {{"object", 186586}}}},
        },
        [11252] = {
            [questKeys.preQuestSingle] = {},
        },
        [11253] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11257] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{23661,23662,23663,23664,23665,23666,23667,23668,23669,23670},23661,"Winterskorn Vrykul Dismembered"}}},
            [questKeys.requiredSourceItems] = {33340},
        },
        [11258] = {
            [questKeys.requiredSourceItems] = {33340},
        },
        [11259] = {
            [questKeys.requiredSourceItems] = {33340},
        },
        [11260] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Present the Vrykul Scroll of Ascension"), 0, {{"object", 186586}}}},
        },
        [11267] = {
            [questKeys.sourceItemId] = 33282,
        },
        [11270] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11279] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Spray Proto-Drake Egg"), 0, {{"monster", 23777}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11280] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Place Tillinghast's Plagued Meat on the ground"), 0, {{"monster", 24170}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11281] = {
            [questKeys.objectives] = {{{24173}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Carved Horn"), 0, {{"object", 186599}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11282] = {
            [questKeys.objectives] = {{{24161,"Oric the Baleful's Corpse Impaled"},{24016,"Ulf the Bloodletter's Corpse Impaled"},{24162,"Gunnar Thorvardsson's Corpse Impaled"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Slay Vrykul across the Forsaken blockade until they appear"), 0, {{"monster", 24015}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11285] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11286] = {
            [questKeys.preQuestSingle] = {},
        },
        [11296] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Break Riven Widow Cocoons to free captives"), 0, {{"monster", 24210}}}},
        },
        [11297] = {
            [questKeys.nextQuestInChain] = 11298,
        },
        [11298] = {
            [questKeys.preQuestSingle] = {},
        },
        [11300] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_SLAY, l10n("Kill gladiators at the Ring of Judgement until Oluf the Violent appears"), 0, {{"monster", 24213},{"monster", 24214},{"monster", 24215}}},
                {nil, Questie.ICON_TYPE_SLAY, l10n("Kill Oluf the Violent"), 0, {{"monster", 23931}}},
            },
        },
        [11301] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Use Grick's Bonesaw on corpses of Deranged Explorers"), 0, {{"monster", 23967}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11302] = {
            [questKeys.preQuestSingle] = {11284},
        },
        [11306] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Fill the Empty Apothecary's Flask at the Cauldron of Vrykul Blood"),0,{{"object", 186656}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Mix the Flask of Vrykul Blood with Harris's Plague Samples"),1,{{"object", 186657}}},
            },
        },
        [11307] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{23564,24198,24199},23564,"Plagued Vrykul Sprayed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11310] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{23564,24198,24199},23564,"Plagued Vrykul exterminated"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11314] = {
            [questKeys.objectives] = {{{23678,"Chill Nymphs Freed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11317] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Meditate"), 0, {{"object", 186649}}}},
        },
        [11318] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.objectives] = {{{80001,nil,Questie.ICON_TYPE_EVENT},{80002,nil,Questie.ICON_TYPE_EVENT},{80003,nil,Questie.ICON_TYPE_EVENT}}},
        },
        [11319] = {
            [questKeys.objectives] = {{{23876,"Spores frozen"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11322] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Meditate"), 0, {{"object", 186649}}}},
        },
        [11329] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Search for Northern Barbfish"), 0, {{"object", 186659}}}},
        },
        [11330] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11332] = {
            [questKeys.sourceItemId] = 33634,
            [questKeys.preQuestSingle] = {11331},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Get a gryphon to ride and some bombs"), 0, {{"monster", 23859}}}},
        },
        [11335] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{45.6,45.8}},
            }},
            [questKeys.exclusiveTo] = {11336,11337,11338,13405,14163},
            [questKeys.questFlags] = 4226,
        },
        [11336] = {
            [questKeys.triggerEnd] = {"Victory in Alterac Valley", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ALTERAC_MOUNTAINS]={{39.4,82.2}},
            }},
            [questKeys.exclusiveTo] = {11335,11337,11338,13405,14163},
        },
        [11337] = {
            [questKeys.triggerEnd] = {"Victory in the Eye of the Storm", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.exclusiveTo] = {11335,11336,11338,13405,14163},
        },
        [11338] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ASHENVALE]={{61.8,83.8}},
            }},
            [questKeys.exclusiveTo] = {11335,11336,11337,13405,14163},
        },
        [11339] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{73.3,30}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.exclusiveTo] = {11340,11341,11342,13407,14164},
        },
        [11340] = {
            [questKeys.triggerEnd] = {"Victory in Alterac Valley", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ALTERAC_MOUNTAINS]={{63.3,60.2}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.exclusiveTo] = {11339,11341,11342,13407,14164},
        },
        [11341] = {
            [questKeys.triggerEnd] = {"Victory in Eye of the Storm", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.exclusiveTo] = {11339,11340,11342,13407,14164},
        },
        [11342] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.THE_BARRENS]={{47,9.3}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.exclusiveTo] = {11339,11340,11341,13407,14164},
        },
        [11343] = {
            [questKeys.triggerEnd] = {"Secrets of Wyrmskull Uncovered",{[zoneIDs.HOWLING_FJORD]={{60.13,50.8,},},},},
            [questKeys.requiredSourceItems] = {},
        },
        [11344] = {
            [questKeys.triggerEnd] = {"Secrets of Nifflevar Uncovered",{[zoneIDs.HOWLING_FJORD]={{69.04,54.79,},},},},
            [questKeys.requiredSourceItems] = {},
        },
        [11346] = {
            [questKeys.preQuestSingle] = {11284},
        },
        [11348] = {
            [questKeys.objectives] = {{{23725,"Test Rune of Command on normal Stone Giants"},{24334}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11352] = {
            [questKeys.objectives] = {{{23725,"Test Rune of Command on normal Stone Giants"},{24334}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11355] = {
            [questKeys.preQuestSingle] = {11284},
            [questKeys.objectives] = {{{23725,"Runed Stone Giant Corpse Analyzed"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [11358] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Rune Sample"), 0, {{"object", 186718},}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11365] = {
            [questKeys.objectives] = {{{23725,"Runed Stone Giant Corpse Analyzed"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [11366] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Rune Sample"), 0, {{"object", 186718},}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11372] = { -- Wanted: The Headfeathers of Ikiss
            [questKeys.zoneOrSort] = zoneIDs.AUCHINDOUN_DUNGEONS,
        },
        [11373] = { -- Wanted: Shaffar's Wondrous Pendant
            [questKeys.zoneOrSort] = zoneIDs.AUCHINDOUN_DUNGEONS,
        },
        [11374] = { -- Wanted: The Exarch's Soul Gem
            [questKeys.zoneOrSort] = zoneIDs.AUCHINDOUN_DUNGEONS,
        },
        [11375] = { -- Wanted: Murmur's Whisper
            [questKeys.zoneOrSort] = zoneIDs.AUCHINDOUN_DUNGEONS,
        },
        [11376] = { -- Wanted: Malicious Instructors
            [questKeys.zoneOrSort] = zoneIDs.AUCHINDOUN_DUNGEONS,
        },
        [11390] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 24418},}}},
        },
        [11391] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 24418},}}},
        },
        [11392] = {
            [questKeys.startedBy] = {nil,{186267}},
            [questKeys.finishedBy] = {nil,{186314}},
        },
        [11393] = {
            [questKeys.exclusiveTo] = {11394,},
        },
        [11394] = {
            [questKeys.preQuestSingle] = {},
        },
        [11396] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11399] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11401] = {
            [questKeys.startedBy] = {nil,{186267}},
            [questKeys.finishedBy] = {nil,{186314}},
        },
        [11409] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.objectives] = {{{80004,nil,Questie.ICON_TYPE_EVENT},{80005,nil,Questie.ICON_TYPE_EVENT},{80006,nil,Questie.ICON_TYPE_EVENT}}},
        },
        [11410] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Fresh Barbfish Bait"), 0, {{"object", 186770},}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11412] = {
            [questKeys.objectives] = {{{24510,"Kegs Delivered"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Grab a keg"), 0, {{"monster", 24527}}}},
        },
        [11414] = {
            [questKeys.sourceItemId] = 33618,
        },
        [11415] = {
            [questKeys.sourceItemId] = 33618,
        },
        [11416] = {
            [questKeys.requiredSourceItems] = {33618},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Touch Talonshrike's Egg"), 0, {{"object", 186814},{"object", 190283},{"object", 190284}}}},
        },
        [11417] = {
            [questKeys.requiredSourceItems] = {33618},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Touch Talonshrike's Egg"), 0, {{"object", 186814},{"object", 190283},{"object", 190284}}}},
        },
        [11418] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Feathered Charm on Steelfeather"), 0, {{"monster", 24514},}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11420] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.HOWLING_FJORD]={{56.6,49.1}}}, Questie.ICON_TYPE_EVENT, l10n("Entrance to Utgarde Catacombs"),}},
        },
        [11421] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Commandeer Crykul Harpoon Gun"),0,{{"object",190512}}}},
        },
        [11428] = {
            [questKeys.preQuestSingle] = {11316},
            [questKeys.preQuestGroup] = {},
        },
        [11429] = {
            [questKeys.objectives] = {nil,{{186863,"Alliance Banner Placed"}},nil,nil,{{{24640},24640,"Alliance Banner Defended"}}},
        },
        [11431] = {
            [questKeys.startedBy] = {{24657}},
            [questKeys.finishedBy] = {{24657}},
        },
        [11436] = {
            [questKeys.triggerEnd] = {"Go Harpoon Surfing",{[zoneIDs.HOWLING_FJORD]={{60.08,62.06,},},},},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Go Harpoon Surfing"),0,{{"object",186894}}}},
        },
        [11443] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11448] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Ask McGoyver for a ride to the Explorers' League Outpost"),0,{{"monster",24040}}}},
        },
        [11452] = {
            [questKeys.startedBy] = {nil,nil,{34090}},
            [questKeys.requiredSourceItems] = {},
        },
        [11453] = {
            [questKeys.startedBy] = {nil,nil,{34091}},
            [questKeys.requiredSourceItems] = {},
        },
        [11458] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11460] = {
            [questKeys.objectives] = {{{24752,"Fjord Rock Falcon Fed"}}},
        },
        [11465] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Send your Trained Rock Falcon after it"), 0, {{"monster", 24746}}}},
        },
        [11466] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Olga"), 0, {{"monster", 24639}}}},
        },
        [11467] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Search for treasure"), 0, {{"object", 186944}}}},
        },
        [11468] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Send your Trained Rock Falcon after it"), 0, {{"monster", 24747}}}},
        },
        [11470] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Release the Trained Rock Falcon"), 0, {{"object", 190222}}}},
        },
        [11471] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Fight Jonah"), 0, {{"monster", 24742}}}},
        },
        [11472] = {
            [questKeys.objectives] = {{{24797,"Reef Bull led to a Reef Cow"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Lure Reef Bull with Tasty Reef Fish"), 0, {{"monster", 24786},{"monster", 24804}}}},
            [questKeys.reputationReward] = {{factionIDs.THE_KALUAK,500}},
            [questKeys.requiredSourceItems] = {34127},
        },
        [11475] = {
            [questKeys.preQuestSingle] = {11244},
        },
        [11478] = {
            [questKeys.exclusiveTo] = {11448},
        },
        [11485] = {
            [questKeys.triggerEnd] = {"Rocket Jump Mastered",{[zoneIDs.HOWLING_FJORD]={{75.08,64.55,},},},},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Work Bench then cast Rocket Jump standing on the rune next to it"),0,{{"object", 186958}}}},
        },
        [11489] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Work Bench then cast Collect Data near the blue relic near Gwendolyn's cart"),0,{{"object", 186958}}}},
        },
        [11491] = {
            [questKeys.objectives] = {{{24718,"Lebronski Bluffed"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Work Bench then cast Bluff on Lebronski after you've walked on his rug"),0,{{"object", 186958}}}},
        },
        [11494] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Put on the Golem suit"),0,{{"object", 186958}}}},
        },
        [11495] = {
            [questKeys.objectives] = {{{24847,"Thundering Cave investigated"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Put on the Golem suit"),0,{{"object", 186958}}}},
        },
        [11528] = {
            [questKeys.exclusiveTo] = {13203,13966},
        },
        [11529] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.HOWLING_FJORD]={{37.2,74.8}}}, Questie.ICON_TYPE_OBJECT, l10n("Use The Big Gun at the front of the ship to slay Sorlof"),0,{{"monster", 24992}}}},
        },
        [11531] = {
            [questKeys.specialFlags] = 1,
        },
        [11566] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11567] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ask Alanya for transportation"),0,{{"monster", 27933}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("After acquiring the Armor, get a ride back"),0,{{"monster", 28277}}},
            },
        },
        [11568] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11569] = {
            [questKeys.preQuestSingle] = {11571},
        },
        [11570] = {
            [questKeys.triggerEnd] = {"Escort Lurgglbr to safety",{[zoneIDs.BOREAN_TUNDRA]={{41.35,16.29,},},},},
        },
        [11574] = {
            [questKeys.preQuestSingle] = {11595,11596,11597},
            [questKeys.exclusiveTo] = {11587},
        },
        [11575] = {
            [questKeys.exclusiveTo] = {11587},
        },
        [11576] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11582] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11585] = {
            [questKeys.exclusiveTo] = {10212,11586}, -- we want to only show 11586 if you did the Nagrand quest
        },
        [11587] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Open the prison"),0,{{"object", 187561}}}},
        },
        [11590] = {
            [questKeys.objectives] = {{{25316,"Captured Beryl Sorcerer"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [11591] = {
            [questKeys.exclusiveTo] = {11592,11593,11594,},
        },
        [11592] = {
            [questKeys.triggerEnd] = {"Successfully assisted Longrunner Proudhoof's assault.",{[zoneIDs.BOREAN_TUNDRA]={{49.45,26.49,},},},},
        },
        [11593] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11594] = {
            [questKeys.preQuestSingle] = {},
        },
        [11595] = { -- The Defense of Warsong Hold (Nefarian Variant)
            [questKeys.preQuestGroup] = {7783,11585}, -- 11585 is exclusiveTo with 11586, so we need only 1 of them to check both
            [questKeys.exclusiveTo] = {8745}, -- we use exclusiveTo for the the Scarab Lord quest, so it doesn't show when you did that one
        },
        [11596] = { -- The Defense of Warsong Hold (Normal Variant)
            [questKeys.preQuestSingle] = {11585,11586}, -- we have both here since exclusiveTo fields are ignored in preQuestSingle
            [questKeys.exclusiveTo] = {7784,8745}, -- we use exclusiveTo for the Nefarian Head quest and the Scarab Lord quests, so it doesn't show when you did either of those quests
        },
        [11597] = { -- The Defense of Warsong Hold (Scarab Lord Variant)
            [questKeys.preQuestGroup] = {8745,11585}, -- 11585 is exclusiveTo with 11586, so we need only 1 of them to check both
        },
        [11606] = {
            [questKeys.preQuestSingle] = {11595,11596,11597},
        },
        [11608] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11610] = {
            [questKeys.objectives] = {nil,{{191088,"Elder Kesuk's ceremony completed"},{191089,"Elder Sagani's ceremony completed"},{191090,"Elder Takret's ceremony completed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11611] = {
            [questKeys.preQuestSingle] = {11595,11596,11597},
            [questKeys.objectives] = {{{25284,"Warsong Peon Freed"}}},
        },
        [11626] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11631] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Imperean's Primal on Snarlfang's Totem"),0,{{"monster", 25455}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11632] = {
            [questKeys.startedBy] = {nil,nil,{34777}},
        },
        [11633] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11636] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Take a ride to Garrosh's Landing"),0,{{"monster", 25459}}}},
        },
        [11637] = {
            [questKeys.sourceItemId] = 34781,
        },
        [11647] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11648] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11650] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11652] = { -- The Plains of Nasam
            [questKeys.objectives] = {{{25465}},nil,nil,nil,{{{27106,27107,27108,27110},27106,"Injured Warsong Soldier rescued"},{{25332,25333,25469,},25333,"Scourge Unit obliterated"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Drive a tank"),0,{{"monster", 25334}}}},
        },
        [11653] = {
            [questKeys.objectives] = {{{25432,"Crafty's Blaster Tested"},{25434,"Crafty's Blaster Tested"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [11654] = {
            [questKeys.startedBy] = {nil,nil,{34815}},
            [questKeys.preQuestSingle] = {11633},
        },
        [11656] = {
            [questKeys.objectives] = {nil,{{188656,"The Serpent's Maw destroyed"},{188655,"The Kur Drakkar destroyed"},{188653,"Bor's Hammer destroyed"},{188657,"Bor's Anvil destroyed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11661] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11664] = {
            [questKeys.triggerEnd] = {"Mootoo Saved",{[zoneIDs.BOREAN_TUNDRA]={{31.19,54.44,},},},},
        },
        [11670] = {
            [questKeys.objectives] = {{{25430,"Warsong Banner Planted in Magmothregar"},},nil,{{34870,nil},},nil,},
            [questKeys.requiredSourceItems] = {34869},
        },
        [11671] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_SLAY, l10n("Kill Inquisitor Salrand"), 0, {{"monster", 25584}}},
                {{[zoneIDs.BOREAN_TUNDRA]={{41.8,39.1}}}, Questie.ICON_TYPE_EVENT, l10n("Use Beryl Shield Detonator"),},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [11673] = {
            [questKeys.triggerEnd] = {"Bonker Togglevolt escorted to safety.",{[zoneIDs.BOREAN_TUNDRA]={{53.84,13.85,},},},},
        },
        [11677] = {
            [questKeys.objectives] = {nil,{{187879,"Plague Cauldron Neutralized"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11680] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11686] = {
            [questKeys.objectives] = {nil,{{191697,"Scout Warsong Granary"},{191698,"Scout Torp's Farm"},{191699,"Scout Warsong Slaughterhouse"}}},
        },
        [11688] = {
            [questKeys.preQuestSingle] = {},
        },
        [11690] = {
            [questKeys.objectives] = {{{25596,"Kodo rescued"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Bring the kodos to Farmer Torp"), 0, {{"monster", 25607}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11694] = {
            [questKeys.objectives] = {nil,{{187879,"Plague Cauldron Neutralized"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11704] = {
            [questKeys.preQuestSingle] = {11708},
        },
        [11705] = {
            [questKeys.objectives] = {{{25618,"Varidus the Flenser Defeated"}}},
        },
        [11706] = {
            [questKeys.objectives] = {{{25768},{25768,"Nerubian tunnels collapsed"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use The Horn of Elemental Fury near the southern sinkhole"),0,{{"monster", 25664}}}},
        },
        [11708] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.objectives] = {{{25590,"Fizzcrank's tale listened to."}}},
        },
        [11711] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Get a new Deserter if you lose him/her"), 0, {{"monster", 25379}}}},
            [questKeys.triggerEnd] = {"Alliance Deserter Delivered",{[zoneIDs.BOREAN_TUNDRA]={{55.28,50.86}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11712] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{25814},25814,"Fizzcrank Gnome cursed & ported"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11713] = {
            [questKeys.preQuestSingle] = {11796},
        },
        [11719] = {
            [questKeys.triggerEnd] = {"Bloodspore Flower Used",{[zoneIDs.BOREAN_TUNDRA]={{52.07,52.46,},},},},
        },
        [11721] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11723] = {
            [questKeys.objectives] = {{{25768},{25794,"Deploy the Shake-n-Quake 5000"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11728] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Throw Wolf Bait"),0,{{"monster", 25791}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11730] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{25753,25758,25752},25753,"Robots reprogrammed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11788] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),1,{{"object", 187984}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),2,{{"object", 187985}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),3,{{"object", 187986}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),4,{{"object", 187987}}},
            },
        },
        [11794] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11796] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11798] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use The Gearmaster's Manual"),0,{{"object", 190334}}}},
        },
        [11855] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [11865] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place fake fur near Caribou Traps"),0,{{"object", 187995},{"object", 187996},{"object", 187997},{"object", 187998},{"object", 187999},{"object", 188000},{"object", 188001},{"object", 188002},{"object", 188003},{"object", 188004},{"object", 188005},{"object", 188006},{"object", 188007},{"object", 188008}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11876] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11878] = {
            [questKeys.objectives] = {{{25862,"Orphaned Mammoth Calf Delivered to Khu'nok"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Deliver the orphan to Khu'nok"),0,{{"monster", 25861}}}},
        },
        [11879] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount Wooly Mammoth Bull to assist in killing Kaw the Mammoth Destroyer"),0,{{"monster", 25743}}},
                {nil, Questie.ICON_TYPE_SLAY, l10n("Kill Kaw the Mammoth Destroyer"), 0, {{"monster", 25802}}},
            },
        },
        [11880] = {
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [11881] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Use Jenny's Whistle near a crashed flying machine"),0,{{"object", 188019}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Return Jenny to safety without losing cargo"),0,{{"monster", 25849},}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [11887] = {
            [questKeys.objectives] = {nil,nil,{{35276}}},
        },
        [11888] = {
            [questKeys.preQuestSingle] = {11595,11596,11597},
        },
        [11889] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11890] = {
            [questKeys.triggerEnd] = {"Fizzcrank Pumping Station environs inspected.",{[zoneIDs.BOREAN_TUNDRA]={{64.38,23.81}}}},
        },
        [11891] = {
            [questKeys.requiredSourceItems] = {35828},
            [questKeys.sourceItemId] = 35237,
        },
        [11892] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11893] = {
            [questKeys.objectives] = {{{24601}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Windsoul Totem to collect energy from killing Steam Ragers"),0,{{"monster", 24601}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11894] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Uncured Caribou Hide"),0,{{"object", 188086}}}},
        },
        [11895] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Storm Totem to summon Storm Tempest"),0,{{"monster", 26048}}}},
        },
        [11896] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{25752,25753,25758},26082,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11897] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11898] = {
            [questKeys.extraObjectives] = {
                {{[zoneIDs.BOREAN_TUNDRA]={{86.55,28.59}}}, Questie.ICON_TYPE_EVENT, l10n("Enter teleporter to access Naxxanar"),},
                {{[zoneIDs.BOREAN_TUNDRA]={{86.80,30.12}}}, Questie.ICON_TYPE_EVENT, l10n("Use Naxxanar teleporters"),},
            },
        },
        [11899] = {
            [questKeys.objectives] = {{{25814,"Gnome soul captured"},},nil,nil,nil,},
            [questKeys.preQuestSingle] = {11895},
            [questKeys.requiredSourceItems] = {},
        },
        [11905] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.THE_NEXUS]={{64.9,21.6},{-1,-1}}}, Questie.ICON_TYPE_EVENT, l10n("Use Interdimensional Refabricator")}},
            [questKeys.requiredSourceItems] = {},
        },
        [11906] = {
            [questKeys.preQuestSingle] = {11895},
        },
        [11907] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),1,{{"object", 187984}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),2,{{"object", 187985}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),3,{{"object", 187986}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Valve"),4,{{"object", 187987}}},
            },
        },
        [11908] = {
            [questKeys.preQuestSingle] = {11902},
        },
        [11909] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Research the Gearmaster's Manual"),0,{{"object", 190334},{"object", 190335}}}},
        },
        [11913] = {
            [questKeys.objectives] = {nil,{{188112,"Farshire Grain burnt"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11919] = {
            [questKeys.objectives] = {{{26127,"Captured Nexus Drake"},},nil,nil,nil,},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Bring the captured drake to Raelorasz"),0,{{"monster", 26117}}}},
            [questKeys.requiredSourceItems] = {},
            [questKeys.zoneOrSort] = 3537,
        },
        [11930] = {
            [questKeys.triggerEnd] = {"Secure Passage to Dragonblight",{[zoneIDs.DRAGONBLIGHT]={{10.29,53.83,},},},},
        },
        [11938] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{25378,25383,25386,25387,25393,25609},25378,"En'kilah Casualty"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11940] = {
            [questKeys.objectives] = {{{26127,"Captured Nexus Drake"},},nil,nil,nil,},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Bring the captured drake to Raelorasz"),0,{{"monster", 26117}}}},
            [questKeys.zoneOrSort] = 3537,
            [questKeys.requiredSourceItems] = {},
        },
        [11945] = {
            [questKeys.reputationReward] = {{factionIDs.THE_KALUAK,500}},
        },
        [11946] = {
            [questKeys.sourceItemId] = 35671,
        },
        [11951] = {
            [questKeys.requiredSourceItems] = {35671},
        },
        [11956] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Ride Dusk"),0,{{"monster", 26191}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Open the phylactery"),0,{{"object", 188141}}},
            },
        },
        [11957] = {
            [questKeys.requiredSourceItems] = {35671},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Talk to Keristrasza"),0,{{"monster", 26206}}},
                {{[zoneIDs.BOREAN_TUNDRA]={{22,22.6}}}, Questie.ICON_TYPE_EVENT, l10n("Use Arcane Power Focus"),},
            },
        },
        [11959] = {
            [questKeys.objectives] = {{{26196,"Loguhn's Blood Smeared"}}},
        },
        [11960] = {
            [questKeys.reputationReward] = {{factionIDs.THE_KALUAK,500}},
        },
        [11967] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Keristrasza"),0,{{"monster", 26206}}}},
        },
        [11969] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Raelorasz' Spark"),0,{{"object", 194151}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [11982] = {
            [questKeys.objectives] = {{{26270,"Iron Dwarf Operations Disrupted"}}},
            [questKeys.preQuestSingle] = {},
        },
        [11984] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Enlist Budd's help"), 0, {{"monster", 26422}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Escort Budd to the Drak'Zin Ruins"), 0, {{"monster", 32663}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use Budd's Tag Troll spell to stun Drakkari trolls"), 0, {{"monster", 26425}, {"monster", 26447}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Capture stunned Drakkari trolls with Bounty Hunter's Cage"), 0, {{"monster", 26425}, {"monster", 26447}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [11989] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Dull Carving Knife near Drakuru"),0,{{"monster", 26423}}}},
        },
        [11991] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Drink Drakuru's Elixir after gathering 5 Frozen Mojo"),0,{{"object", 188287}}}},
            [questKeys.requiredSourceItems] = {35799},
        },
        [11993] = {
            [questKeys.requiredSourceItems] = {},
        },
        [11995] = {
            [questKeys.exclusiveTo] = {12439},
        },
        [12000] = {
            [questKeys.preQuestSingle] = {},
        },
        [12007] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Drink Drakuru's Elixir after gathering Zim'bo's Mojo"),0,{{"object", 420033}}}},
            [questKeys.requiredSourceItems] = {35797,35836},
        },
        [12014] = {
            [questKeys.sourceItemId] = 35837,
        },
        [12017] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Tu'u'gwar's Bait"),0,{{"object", 188370}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12019] = {
            [questKeys.finishedBy] = {{26170,198875}},
            [questKeys.extraObjectives] = {
                {{[zoneIDs.BOREAN_TUNDRA]={{86.6,28.6}}}, Questie.ICON_TYPE_EVENT, l10n("Teleport to the top of Naxxanar"),},
                {nil, Questie.ICON_TYPE_TALK, l10n("Talk to Thassarian"), 0, {{"monster", 198875}}},
            },
        },
        [12020] = {
            [questKeys.preQuestSingle] = {},
        },
        [12022] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.requiredSourceItems] = {33096},
        },
        [12027] = {
            [questKeys.triggerEnd] = {"Help Emily and Mr. Floppy return to the camp",{[zoneIDs.GRIZZLY_HILLS]={{53.81,33.33,},},},},
        },
        [12028] = {
            [questKeys.objectives] = {nil,{{188416}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12029] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{26458,26570,26582,26583},26612,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12032] = {
            [questKeys.objectives] = {{{26648,"Oacha'noa's compulsion obeyed."}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Commune with Oacha'noa"),0,{{"object", 188422}}}},
        },
        [12033] = {
            [questKeys.preQuestSingle] = {11916},
            [questKeys.objectives] = {nil,{{188423,}},nil,nil,},
        },
        [12034] = {
            [questKeys.preQuestSingle] = {12008},
        },
        [12035] = {
            [questKeys.objectives] = {{{25623,"Harvest Collector Rewired"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [12036] = {
            [questKeys.triggerEnd] = {"Pit of Narjun Explored",{[zoneIDs.DRAGONBLIGHT]={{26.26,50.01,},},},},
        },
        [12037] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Search for Kurzel"),0,{{"monster", 27909}}}}, -- to use -1 instead of 0 when questie supports showing extraobjectives when quest complete
        },
        [12038] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{26458,26570,26582,26583},26612,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12039] = {
            [questKeys.preQuestSingle] = {12034},
            [questKeys.requiredSourceItems] = {},
        },
        [12049] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Throw the Explosive Charges when it opens its mouth wide"),0,{{"monster", 26293}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12050] = {
            [questKeys.preQuestGroup] = {12046,12047},
            [questKeys.requiredSourceItems] = {},
        },
        [12052] = {
            [questKeys.preQuestGroup] = {12046,12047},
            [questKeys.requiredSourceItems] = {},
        },
        [12053] = {
            [questKeys.objectives] = {{{26678,"Warsong Battle Standard Defended"}}},
        },
        [12055] = {
            [questKeys.startedBy] = {nil,nil,{36742}},
            [questKeys.preQuestSingle] = {12000},
        },
        [12056] = {
            [questKeys.preQuestSingle] = {12034},
        },
        [12058] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12059] = {
            [questKeys.startedBy] = {nil,nil,{36746}},
            [questKeys.preQuestSingle] = {11999},
        },
        [12060] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12061] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12063] = {
            [questKeys.preQuestSingle] = {12036},
        },
        [12065] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Ley line focus information retrieved"), 0, {{"object", 188445}}},
            },
        },
        [12066] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Ley line focus information retrieved"), 0, {{"object", 188445}}},
            },
        },
        [12067] = {
            [questKeys.startedBy] = {nil,nil,{36756}},
        },
        [12068] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Drink Drakuru's Elixir after gathering 5 Sacred Mojo"),0,{{"object", 420049}}}},
            [questKeys.requiredSourceItems] = {35797,36758},
        },
        [12069] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Free Roanauk Icemist"),0,{{"object", 188463}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12070] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12072] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12075] = {
            [questKeys.preQuestSingle] = {},
        },
        [12076] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Zort's Scraper when covered in Corrosive Spit"),0,{{"monster", 26358},{"monster", 26359}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12078] = {
            [questKeys.preQuestSingle] = {12077},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Sturdy Crates to capture the worm spawn"),0,{{"monster", 26359}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12079] = {
            [questKeys.preQuestSingle] = {12075},
        },
        [12080] = {
            [questKeys.preQuestSingle] = {12076},
        },
        [12082] = {
            [questKeys.triggerEnd] = {"Harrison has escorted you to safety.",{[zoneIDs.GRIZZLY_HILLS]={{73.51,24.02,},},},},
        },
        [12083] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Ley line focus information retrieved"), 0, {{"object", 188474}}},
            },
        },
        [12084] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Ley line focus information retrieved"), 0, {{"object", 188474}}},
            },
        },
        [12085] = {
            [questKeys.startedBy] = {nil,nil,{36780}},
        },
        [12092] = {
            [questKeys.preQuestSingle] = {12065},
        },
        [12095] = {
            [questKeys.preQuestGroup] = {12089,12090,12091},
        },
        [12096] = {
            [questKeys.preQuestSingle] = {12066},
        },
        [12097] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Rokhan to call down Sarathstra"), 0, {{"monster", 26859}}},},
        },
        [12099] = {
            [questKeys.objectives] = {{{26417,"Runed Giants Freed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12100] = {
            [questKeys.preQuestSingle] = {12034},
        },
        [12105] = {
            [questKeys.startedBy] = {nil,nil,{36940}},
        },
        [12107] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Ley Line Focus Control Talisman"),1,{{"object", 188491}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12110] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Ley Line Focus Control Talisman"),1,{{"object", 188491}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12111] = {
            [questKeys.objectives] = {{{26615,},{26482,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12112] = {
            [questKeys.preQuestGroup] = {12050,12052},
        },
        [12117] = {
            [questKeys.nextQuestInChain] = 11958,
        },
        [12118] = {
            [questKeys.nextQuestInChain] = 11958,
        },
        [12121] = {
            [questKeys.objectives] = {{{27199,}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Ring the gong outside Drakil'jin to summon Warlord Jin'arrak"),0,{{"object", 188510}}}},
        },
        [12124] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Take a drake to the top of the temple"),1,{{"monster", 26443}}}},
        },
        [12125] = {
            [questKeys.objectives] = {{{26411}},nil,{{36828}}},
        },
        [12126] = {
            [questKeys.objectives] = {{{26926}},nil,{{36836}}},
        },
        [12127] = {
            [questKeys.objectives] = {{{26283}},nil,{{36846}}},
        },
        [12132] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12125,12126,12127},
        },
        [12137] = {
            [questKeys.sourceItemId] = 36859,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak with Gan'jo to return to life"),0,{{"monster", 26924}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use the Snow of Eternal Slumber on ancient Drakkari spirits"),0,{{"monster", 26811},{"monster", 26812}}},
            },
        },
        [12138] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{26407,27017},26407,}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Fight Lightning Sentries with Depleted War Golem deployed nearby"),0,{{"monster", 26407}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12140] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12146] = {
            [questKeys.startedBy] = {nil,nil,{36855}},
        },
        [12147] = {
            [questKeys.startedBy] = {nil,nil,{36856}},
        },
        [12150] = {
            [questKeys.objectives] = {{{27003,}}},
        },
        [12151] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.DRAGONBLIGHT]={{57.09,76.26}}}, Questie.ICON_TYPE_EVENT, l10n("Blow the horn"),0}},
            [questKeys.requiredSourceItems] = {},
        },
        [12152] = {
            [questKeys.requiredSourceItems] = {36870,37063},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Place the Infused Drakkari Offering at the gongs outside Drakil'jin"),0,{{"object", 188510}}},
            },
        },
        [12153] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12154] = { -- Blackout
            [questKeys.requiredSourceItems] = {},
        },
        [12157] = {
            [questKeys.exclusiveTo] = {12171,12235,12297},
        },
        [12159] = {
            [questKeys.objectives] = {{{26891,"Miner at Rest"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12166] = {
            [questKeys.objectives] = {{{26616,"Blighted Elk's corpse cleansed"},{26643,"Rabid Grizzly's corpse cleansed"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [12171] = {
            [questKeys.exclusiveTo] = {12235,12297},
        },
        [12172] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12173] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12174] = {
            [questKeys.exclusiveTo] = {12235,12298},
        },
        [12180] = {
            [questKeys.preQuestSingle] = {12014},
        },
        [12181] = {
            [questKeys.exclusiveTo] = {12188},
        },
        [12182] = {
            [questKeys.exclusiveTo] = {},
            [questKeys.nextQuestInChain] = 12188,
        },
        [12184] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{26408,26409,26410,26414,27177},26408,}}},
        },
        [12185] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Intercept the message from Loken"),1,{{"object", 188596}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12188] = {
            [questKeys.preQuestSingle] = {},
        },
        [12191] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.requiredSourceItems] = {33096},
        },
        [12198] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{26407,27017},26407,}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Fight Lightning Sentries with Depleted War Golem deployed nearby"),0,{{"monster", 26407}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12199] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12202] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{26408,26409,26410,26414,27177},26408,}}},
        },
        [12203] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Intercept the message from Loken"),1,{{"object", 188596}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [12204] = {
            [questKeys.preQuestSingle] = {12099,12058},
            [questKeys.preQuestGroup] = {},
        },
        [12206] = {
            [questKeys.objectives] = {{{27349,"Flask of Blight tested"}}},
        },
        [12207] = {
            [questKeys.preQuestSingle] = {12413},
        },
        [12208] = {
            [questKeys.preQuestSingle] = {12412},
        },
        [12210] = {
            [questKeys.preQuestSingle] = {12212},
        },
        [12211] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27202,27203,27206,27207,27209,27210,27211,27232,27233,27234,27235,27236,27237,27246,27247},27203,"Scarlet Onslaught corpses picked clean"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12213] = {
            [questKeys.preQuestSingle] = {12413},
            [questKeys.requiredSourceItems] = {},
        },
        [12214] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27206,27213,27296,27028},27296,}}},
        },
        [12218] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Commandeer a Forsaken Blight Spreader"),1,{{"monster", 26523}}},
            },
        },
        [12220] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12222] = {
            [questKeys.preQuestSingle] = {12294},
        },
        [12223] = {
            [questKeys.preQuestSingle] = {12294},
        },
        [12224] = {
            [questKeys.preQuestGroup] = {12221,12140,12072},
        },
        [12229] = {
            [questKeys.preQuestGroup] = {12207,12213},
        },
        [12231] = {
            [questKeys.objectives] = {{{27274,"Orsonn's Story"},{27275,"Kodian's Story"}}},
            [questKeys.preQuestGroup] = {12207,12213},
        },
        [12232] = {
            [questKeys.objectives] = {nil,{{188673,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12236] = {
            [questKeys.preQuestGroup] = {12241,12242},
            [questKeys.objectives] = {{{26633,}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Tur Ragepaw to summon Ursoc"),0,{{"monster", 27328}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12237] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27315,27336,27345,27341},27315,"Helpless Villager Rescued"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12238] = {
            [questKeys.requiredSourceItems] = {35797,38303},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Drink Drakuru's Elixir after gathering 5 Enduring Mojo"),0,{{"object", 190629}}}},
        },
        [12240] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.DRAGONBLIGHT]={{68.29,74.29}}}, Questie.ICON_TYPE_EVENT, l10n("Release the termites"),0}},
            [questKeys.requiredSourceItems] = {},
        },
        [12241] = {
            [questKeys.preQuestGroup] = {12229,12231},
            [questKeys.requiredSourceItems] = {},
        },
        [12242] = {
            [questKeys.preQuestGroup] = {12229,12231},
        },
        [12243] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12244] = {
            [questKeys.objectives] = {{{27354}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Deliver Shredder"),0,{{"monster", 27371}}}},
        },
        [12247] = {
            [questKeys.objectives] = {{{27274,"Orsonn's Story"},{27275,"Kodian's Story"}}},
        },
        [12248] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12249] = {
            [questKeys.objectives] = {{{26633,}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Tur Ragepaw to summon Ursoc"),0,{{"monster", 27328}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12252] = {
            [questKeys.objectives] = {{{27209,"Torturer LeCraft fully questioned"},{27209}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12255] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Ride Flamebringer"),0,{{"monster", 27292}}}},
        },
        [12256] = {
            [questKeys.preQuestSingle] = {12468},
        },
        [12258] = {
            [questKeys.preQuestSingle] = {12251},
        },
        [12259] = {
            [questKeys.preQuestGroup] = {12256,12257},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Ride Flamebringer"),0,{{"monster", 27292}}}},
        },
        [12260] = {
            [questKeys.objectives] = {{{27202,}}},
        },
        [12261] = {
            [questKeys.preQuestSingle] = {12447},
            [questKeys.objectives] = {{{27430,}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Destructive Ward"),0,{{"object", 188707}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12262] = {
            [questKeys.preQuestSingle] = {12447},
        },
        [12263] = {
            [questKeys.triggerEnd] = {"Uncover the Magmawyrm Resurrection Chamber",{[zoneIDs.DRAGONBLIGHT]={{31.76,30.46,},},},},
        },
        [12264] = {
            [questKeys.preQuestSingle] = {12263},
            [questKeys.objectives] = {{{27358},{27362},{27363}}},
        },
        [12265] = {
            [questKeys.preQuestSingle] = {12263},
        },
        [12267] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12269] = {
            [questKeys.preQuestSingle] = {12275},
        },
        [12270] = {
            [questKeys.objectives] = {{{27354}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Deliver Shredder"),0,{{"monster", 27423}}}},
        },
        [12271] = {
            [questKeys.startedBy] = {nil,nil,{37432}},
            [questKeys.preQuestSingle] = {12245},
        },
        [12272] = {
            [questKeys.preQuestSingle] = {12275},
            [questKeys.requiredSourceItems] = {},
        },
        [12273] = {
            [questKeys.objectives] = {{{27237,},{27235,},{27234,},{27236,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12274] = {
            [questKeys.objectives] = {nil,{{188713,"Abbey bell rung"}},nil,nil,{{{27245},27245,"High Abbot spoken with"}}},
        },
        [12276] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12277] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the Mine Bomb here"),0,{{"object", 188711}}}},
        },
        [12279] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12284] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27475,27482,},27475,"Alliance units eliminated"}}},
        },
        [12288] = {
            [questKeys.objectives] = {{{27463,"Wounded Skirmishers Healed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12289] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27456,27463},27456,"Horde units eliminated"}}},
        },
        [12291] = {
            [questKeys.objectives] = {{{27226,"Forgotten Peasant Questioned"},{27225,"Forgotten Rifleman Questioned"},{27224,"Forgotten Knight Questioned"},{27229,"Forgotten Footman Questioned"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12296] = {
            [questKeys.objectives] = {{{27482,"Westfall Infantry Healed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12297] = {
            [questKeys.preQuestSingle] = {11250},
            [questKeys.exclusiveTo] = {12171,12235},
        },
        [12298] = {
            [questKeys.exclusiveTo] = {12174,12235},
        },
        [12300] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12301] = {
            [questKeys.objectives] = {nil,{{189304,"The Forgotten Redeemed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12307] = {
            [questKeys.preQuestSingle] = {},
        },
        [12308] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"),0,{{"monster", 27409}}}},
            [questKeys.triggerEnd] = {"Escape from Silverbrook",{[zoneIDs.GRIZZLY_HILLS]={{32.37,59.14}}}},
            [questKeys.objectives] = {},
        },
        [12316] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27500,27550},27550,"Horde killed in Venture Bay"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Get in the shredder if you have the key"),0,{{"monster", 27496}}}},
        },
        [12317] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27501,27549},27549,"Alliance killed in Venture Bay"}}},
        },
        [12323] = {
            [questKeys.objectives] = {{{27570,"Venture Company Stragglers smoked out"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12324] = {
            [questKeys.objectives] = {{{27570,"Venture Company Stragglers smoked out"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12321] = {
            [questKeys.objectives] = {{{27577,"Righteous Sermon Heard"}}},
        },
        [12325] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Get a ride to Thorson's Post"),0,{{"monster", 27661}}}},
        },
        [12326] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Get in"),0,{{"monster", 27587}}}},
            [questKeys.objectives] = {{{27607,"Plague Wagon Sabotaged"},{27588,"7th Legion Elite Safely Dropped Off"}}},
        },
        [12327] = {
            [questKeys.triggerEnd] = {"Vision from the Past",{[zoneIDs.SILVERPINE_FOREST]={{46.53,76.18,},},},},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Gossamer Potion"),0,{{"object", 189972}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12330] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Tranquilizer Dart on Tatjana"),0,{{"monster", 27627}}}},
            [questKeys.triggerEnd] = {"Tatjana Delivered",{[zoneIDs.GRIZZLY_HILLS]={{57.77,41.7,},},},},
            [questKeys.requiredSourceItems] = {},
        },
        [12372] = {
            [questKeys.objectivesText] = {"Devrestrasz at Wyrmrest Temple has asked you to slay 3 Azure Dragons, slay 5 Azure Drakes, and to destabilize the Azure Dragonshrine while riding a Wyrmrest Defender into battle."}, -- #4675
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ride a Wyrmrest Defender to defend the Temple"), 0, {{"monster", 27629}}},
            },
        },
        [12405] = { -- Candy Bucket
            [questKeys.finishedBy] = {},
        },
        [12412] = {
            [questKeys.preQuestSingle] = {12259},
        },
        [12414] = {
            [questKeys.objectives] = {{{26472,"Highland Mustangs returned"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Bring the mustangs to Squire Percy"), 0, {{"monster", 26377}}}},
            [questKeys.requiredSourceItems] = {37707},
        },
        [12415] = {
            [questKeys.objectives] = {{{26472,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12419] = {
            [questKeys.startedBy] = {nil,nil,{37833}},
        },
        [12423] = {
            [questKeys.startedBy] = {nil,nil,{37830}},
        },
        [12427] = {
            [questKeys.preQuestSingle] = {12413},
            [questKeys.triggerEnd] = {"Ironhide defeated",{[zoneIDs.GRIZZLY_HILLS]={{23.2,64.68,},},},},
            [questKeys.objectives] = {{{27715,}}},
        },
        [12428] = {
            [questKeys.triggerEnd] = {"Torgg Thundertotem defeated",{[zoneIDs.GRIZZLY_HILLS]={{23.05,64.55,},},},},
            [questKeys.objectives] = {{{27716,}}},
        },
        [12429] = {
            [questKeys.triggerEnd] = {"Rustblood defeated",{[zoneIDs.GRIZZLY_HILLS]={{23.12,64.62,},},},},
            [questKeys.objectives] = {{{27717,}}},
        },
        [12430] = {
            [questKeys.triggerEnd] = {"Horgrenn Hellcleave defeated",{[zoneIDs.GRIZZLY_HILLS]={{23.11,64.6,},},},},
            [questKeys.objectives] = {{{27718,}}},
        },
        [12431] = {
            [questKeys.objectives] = {{{27727,}}},
        },
        [12432] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Ride the rocket!"), 0, {{"monster", 27593}}}},
        },
        [12434] = {
            [questKeys.specialFlags] = 1,
            [questKeys.preQuestSingle] = {12433},
            [questKeys.startedBy] = {{27565}},
            [questKeys.finishedBy] = {{27565}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [12435] = { -- #4675
            [questKeys.name] = "Report to Lord Devrestrasz",
            [questKeys.objectivesText] = {"Speak with Lord Devrestrasz at Wyrmrest Temple."},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Take a drake to the middle of the temple"), 0, {{"monster", 26949}}}},
        },
        [12437] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Ride the rocket!"), 0, {{"monster", 27593}}}},
        },
        [12439] = {
            [questKeys.exclusiveTo] = {11995,12000},
        },
        [12446] = {
            [questKeys.specialFlags] = 1,
            [questKeys.preQuestSingle] = {12443},
            [questKeys.startedBy] = {{27495}},
            [questKeys.finishedBy] = {{27495}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [12453] = {
            [questKeys.preQuestSingle] = {12412},
            [questKeys.objectives] = {{{26369,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12456] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.DRAGONBLIGHT]={{64.6,77}}}, Questie.ICON_TYPE_EVENT, l10n("Use Skytalon Molts"),0}},
            [questKeys.requiredSourceItems] = {},
        },
        [12457] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Man the Chain Gun"),0,{{"monster", 27714}}},},
        },
        [12459] = {
            [questKeys.objectives] = {{{26841,nil},{27808,nil},{27122,nil},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [12462] = {
            [questKeys.preQuestSingle] = {12326},
        },
        [12464] = {
            [questKeys.preQuestSingle] = {},
        },
        [12467] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Talk to Wyrmbait"),0,{{"monster", 27843}}},
                {nil, Questie.ICON_TYPE_SLAY, l10n("Destroy Icestorm"),0,{{"monster", 26287}}},
            },
        },
        [12468] = {
            [questKeys.preQuestSingle] = {},
        },
        [12470] = {
            [questKeys.objectives] = {{{27840,"Hourglass of Eternity protected"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12473] = {
            [questKeys.objectives] = {{{27383,"Thel'zan the Duskbringer Defeated"}}},
        },
        [12478] = {
            [questKeys.objectives] = {nil,{{190191,"Secrets of the Past Revealed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12481] = {
            [questKeys.objectives] = {{{24238,"Bjorn Halgurdsson insulted"},{24238,"Bjorn Halgurdsson defeated"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12484] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.GRIZZLY_HILLS]={{16.84,48.34}}}, Questie.ICON_TYPE_EVENT, l10n("Place Scourged Troll Mummy in the fire"),0}},
        },
        [12486] = {
            [questKeys.preQuestSingle] = {11595,11596,11597},
        },
        [12491] = {
            [questKeys.startedBy] = {nil,nil,{38280}},
            [questKeys.preQuestSingle] = {},
        },
        [12492] = {
            [questKeys.startedBy] = {nil,nil,{38281}},
            [questKeys.preQuestSingle] = {},
        },
        [12498] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_SLAY, l10n("Slay Antiok's mount to make him vulnerable"),0,{{"monster", 28018}}},
                {nil, Questie.ICON_TYPE_SLAY, l10n("Slay Grand Necrolord Antiok"),0,{{"monster", 28006}}},
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"),0,{{"monster", 27996}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [12500] = {
            [questKeys.preQuestSingle] = {12498},
        },
        [12501] = { -- Troll Patrol
            [questKeys.finishedBy] = {{28039}},
            [questKeys.objectives] = {{{28042,"Captain Brandon's Task",Questie.ICON_TYPE_TALK},{28044,"Captain Rupert's Task",Questie.ICON_TYPE_TALK},{28043,"Captain Grondel's Task",Questie.ICON_TYPE_TALK},{28205,"Alchemist Finklestein's Task",Questie.ICON_TYPE_TALK}}},
            [questKeys.exclusiveTo] = {12563,12587},
            [questKeys.childQuests] = {12502,12509,12519,12541},
        },
        [12502] = {
            [questKeys.parentQuest] = 12501,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Plant the Argent Crusade Banner"), 0, {{"object", 190522}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12503] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28023,28026,28246,28669,28022},28022,"Scourge at The Argent Stand destroyed"}}},
        },
        [12506] = {
            [questKeys.triggerEnd] = {"Main building at the Altar of Sseratus investigated.",{[zoneIDs.ZUL_DRAK]={{40.32,39.46,},},},},
        },
        [12507] = { -- Strange Mojo
            [questKeys.startedBy] = {nil,nil,{38321}},
        },
        [12509] = {
            [questKeys.parentQuest] = 12501,
        },
        [12512] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28133,28136},28133},{{28141,28142},28141},{{28143,28148},28143}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Escort rescued Crusaders to Dr. Rogers"), 0, {{"monster", 28125}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12516] = { -- Too Much of a Good Thing
            [questKeys.objectives] = {{{28068}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Use Muddled Mojo on Prophet of Sseratus before killing it"), 0, {{"monster", 28068}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12519] = {
            [questKeys.parentQuest] = 12501,
        },
        [12520] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12523,12525},
        },
        [12521] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Take a ride to Sholazar Basin"), 0, {{"monster", 28160}}}},
        },
        [12527] = {
            [questKeys.requiredSourceItems] = {38380},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Feed with Zul'Drak Rat"), 0, {{"monster", 28145}}}},
        },
        [12528] = {
            [questKeys.preQuestSingle] = {},
        },
        [12529] = {
            [questKeys.requiredSourceItems] = {38619},
        },
        [12530] = {
            [questKeys.requiredSourceItems] = {38619},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Softknuckle Poker on Softknuckles"), 0, {{"monster", 28127}}}},
        },
        [12531] = {
            [questKeys.requiredSourceItems] = {38621},
        },
        [12532] = {
            [questKeys.requiredSourceItems] = {38621},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12533,12534},
        },
        [12533] = {
            [questKeys.requiredSourceItems] = {38621},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12529,12530},
        },
        [12534] = {
            [questKeys.requiredSourceItems] = {38621},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12529,12530},
        },
        [12536] = {
            [questKeys.requiredSourceItems] = {38512},
            [questKeys.objectives] = {{{28298,"Travel to Mistwhisper Refuge",Questie.ICON_TYPE_TALK}}},
        },
        [12537] = {
            [questKeys.requiredSourceItems] = {38512},
            [questKeys.objectives] = {nil,{{190502,"Sabotage the Mistwhisper Weather Shrine"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the Skyreach Crystal Clusters"), 0, {{"object", 300213}}}},
        },
        [12538] = {
            [questKeys.requiredSourceItems] = {38512},
        },
        [12539] = { -- Hoofing It
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12537,12538},
            [questKeys.requiredSourceItems] = {38512},
        },
        [12540] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Injured Rainspeaker Oracle"), 0, {{"monster", 28217}}}},
        },
        [12541] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Start the procedure"), 0, {{"monster", 28205}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Toss ingredients into the cauldron"), 0, {{"object", 190499}}},
            },
            [questKeys.objectives] = {nil,{{190499,"Truth Serum Created"}}},
        },
        [12544] = {
            [questKeys.objectives] = {{{28256,nil,Questie.ICON_TYPE_EVENT}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Soo-rahm's Incense"), 0, {{"object", 190507}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12545] = {
            [questKeys.preQuestSingle] = {},
        },
        [12546] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12548] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.SHOLAZAR_BASIN]={{40.35,83.08,}}}, Questie.ICON_TYPE_EVENT, l10n("Travel through the Waygate"),}},
        },
        [12549] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12523,12525},
        },
        [12551] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12520,12549},
        },
        [12555] = {
            [questKeys.objectives] = {{{28274,"Plague Sprayers webbed and destroyed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12557] = {
            [questKeys.objectives] = {nil,nil,{{38386},{38339},{38340},{38346}}},
        },
        [12561] = { -- An Issue of Trust
            [questKeys.preQuestSingle] = {},
            [questKeys.requiredSpell] = 54197,
        },
        [12563] = { -- Troll Patrol
            [questKeys.finishedBy] = {{28039}},
            [questKeys.objectives] = {{{28042,"Captain Brandon's Task",Questie.ICON_TYPE_TALK},{28044,"Captain Rupert's Task",Questie.ICON_TYPE_TALK},{28043,"Captain Grondel's Task",Questie.ICON_TYPE_TALK},{28205,"Alchemist Finklestein's Task",Questie.ICON_TYPE_TALK}}},
            [questKeys.exclusiveTo] = {12501,12587},
            [questKeys.childQuests] = {12541,12564,12568,12585},
        },
        [12564] = {
            [questKeys.parentQuest] = 12563,
        },
        [12568] = {
            [questKeys.parentQuest] = 12563,
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28260,28156},28260,"Argent Footman Corpse Incinerated"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12569] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Sandfern Disguise near the fallen log"), 0, {{"object", 190545}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12570] = {
            [questKeys.triggerEnd] = {"Escort the Injured Rainspeaker Oracle to Rainspaker Canopy",{[zoneIDs.SHOLAZAR_BASIN]={{52.79,59.36}}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Start the escort"), 0, {{"monster", 28217}}}},
        },
        [12571] = {
            [questKeys.requiredSourceItems] = {38622},
        },
        [12572] = {
            [questKeys.requiredSourceItems] = {38622},
        },
        [12573] = {
            [questKeys.requiredSourceItems] = {38622},
            [questKeys.objectives] = {{{28315,"Extend Peace Offering to Shaman Vekjik",Questie.ICON_TYPE_TALK}}},
        },
        [12574] = {
            [questKeys.requiredSourceItems] = {38623},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12572,12573},
        },
        [12575] = {
            [questKeys.requiredSourceItems] = {38623},
        },
        [12576] = {
            [questKeys.requiredSourceItems] = {38623},
        },
        [12577] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12575,12576},
        },
        [12578] = {
            [questKeys.requiredSourceItems] = {38624},
            [questKeys.triggerEnd] = {"Travel to Mosswalker Village.",{[zoneIDs.SHOLAZAR_BASIN]={{75.07,51.88,},},},},
        },
        [12579] = {
            [questKeys.requiredSourceItems] = {38624},
        },
        [12580] = {
            [questKeys.requiredSourceItems] = {38624},
            [questKeys.objectives] = {{{28113,"Mosswalker Victims Rescued"}}},
        },
        [12584] = {
            [questKeys.preQuestSingle] = {12552},
        },
        [12585] = {
            [questKeys.parentQuest] = 12563,
        },
        [12587] = { -- Troll Patrol
            [questKeys.objectives] = {{{28042,"Captain Brandon's Task",Questie.ICON_TYPE_TALK},{28044,"Captain Rupert's Task",Questie.ICON_TYPE_TALK},{28043,"Captain Grondel's Task",Questie.ICON_TYPE_TALK},{28205,"Alchemist Finklestein's Task",Questie.ICON_TYPE_TALK}}},
            [questKeys.exclusiveTo] = {12501,12563},
            [questKeys.childQuests] = {12541,12588,12591,12594},
        },
        [12588] = {
            [questKeys.objectives] = {nil,{{190550,"Ancient Dirt Mounds Investigated"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12589] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12523,12525},
            [questKeys.objectives] = {{{28054,"Shot apple on Lucky Wilhelm's Head"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12591] = {
            [questKeys.objectives] = {nil,{{190555,"Nerubian Tunnels Collapsed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12595] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12556,12558,12569},
        },
        [12596] = { -- Pa'Troll
            [questKeys.objectives] = {{{28042,"Captain Brandon's Task",Questie.ICON_TYPE_TALK},{28044,"Captain Rupert's Task",Questie.ICON_TYPE_TALK},{28043,"Captain Grondel's Task",Questie.ICON_TYPE_TALK},{28205,"Alchemist Finklestein's Task",Questie.ICON_TYPE_TALK}}},
            [questKeys.preQuestSingle] = {12740},
            [questKeys.preQuestGroup] = {},
        },
        [12598] = {
            [questKeys.objectives] = {nil,{{190555,"Nerubian Tunnels Sealed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12601] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Start the procedure"), 0, {{"monster", 28205}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Toss ingredients into the cauldron"), 0, {{"object", 190499}}},
            },
            [questKeys.objectives] = {nil,{{190499,"Truth Serum Created"}}},
        },
        [12602] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Start the procedure"), 0, {{"monster", 28205}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Toss ingredients into the cauldron"), 0, {{"object", 190499}}},
            },
            [questKeys.objectives] = {nil,{{190499,"Truth Serum Created"}}},
        },
        [12603] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12556,12558,12569},
        },
        [12604] = {
            [questKeys.preQuestSingle] = {12501,12563,12587},
        },
        [12605] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12556,12558,12569},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Break the egg"), 0, {{"monster", 28408}}}},
        },
        [12606] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28415,28413},28415}}},
        },
        [12607] = {
            [questKeys.objectives] = {{{28374,"Shattertusk Mammoth Delivered",Questie.ICON_TYPE_EVENT}}},
            [questKeys.requiredSourceItems] = {},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Apply the harness"), 0, {{"monster", 28379}}}},
        },
        [12611] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12615] = {
            [questKeys.preQuestSingle] = {12516},
        },
        [12620] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.SHOLAZAR_BASIN]={{49.64,37.41,}}}, Questie.ICON_TYPE_EVENT, l10n("Use Freya's Horn atop of the Glimmering Pillar")}},
            [questKeys.requiredSourceItems] = {},
        },
        [12621] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Listen to what the Avatar of Freya has to say"), 0, {{"monster", 27801}}}},
        },
        [12622] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Kill Jin'Alai Trolls until their leaders appear"), 0, {{"monster", 28388},{"monster", 28504},{"object", 193768},{"object", 193769},{"object", 193770}}}},
        },
        [12629] = {
            [questKeys.preQuestSingle] = {12637},
            [questKeys.preQuestGroup] = {},
            [questKeys.exclusiveTo] = {12643},
            [questKeys.nextQuestInChain] = 12648,
        },
        [12630] = {
            [questKeys.objectives] = {{{28519,"Hair Samples Collected"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [12631] = {
            [questKeys.startedBy] = {nil,nil,{38660}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {},
            [questKeys.exclusiveTo] = {12633},
            [questKeys.nextQuestInChain] = 12637,
            [questKeys.requiredSourceItems] = {},
        },
        [12632] = {
            [questKeys.objectives] = {{{28404}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12633] = {
            [questKeys.startedBy] = {nil,nil,{38673}},
            [questKeys.preQuestSingle] = {12238},
            [questKeys.preQuestGroup] = {},
            [questKeys.exclusiveTo] = {12631},
            [questKeys.nextQuestInChain] = 12638,
            [questKeys.requiredSourceItems] = {},
        },
        [12634] = {
            [questKeys.preQuestGroup] = {12520,12549},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Pull Sturdy Vines to reveal fruit"), 0, {{"object", 190622}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Ask for a spare fruit"), 0, {{"monster", 28604}}},
            },
        },
        [12637] = {
            [questKeys.objectives] = {{{28532,"Choker's Purpose Exposed",Questie.ICON_TYPE_TALK}}},
            [questKeys.preQuestSingle] = {12631},
            [questKeys.preQuestGroup] = {},
            [questKeys.exclusiveTo] = {12638},
            [questKeys.nextQuestInChain] = 12629,
            [questKeys.requiredSourceItems] = {},
        },
        [12638] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12633,12238},
            [questKeys.exclusiveTo] = {12637},
            [questKeys.nextQuestInChain] = 12643,
            [questKeys.requiredSourceItems] = {},
        },
        [12641] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Eye of Acherus Control Mechanism"), 0, {{"object", 191609}}}},
            [questKeys.objectives] = {{{28525,nil,Questie.ICON_TYPE_EVENT},{28543,nil,Questie.ICON_TYPE_EVENT},{28542,nil,Questie.ICON_TYPE_EVENT},{28544,nil,Questie.ICON_TYPE_EVENT}}},
        },
        [12643] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12638,12238},
            [questKeys.exclusiveTo] = {12629},
            [questKeys.nextQuestInChain] = 12649,
        },
        [12644] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Begin the distillation process"), 0, {{"monster", 28566}}}},
        },
        [12645] = {
            [questKeys.objectives] = {{{27986,nil,Questie.ICON_TYPE_INTERACT},{28047,nil,Questie.ICON_TYPE_INTERACT},{28568,nil,Questie.ICON_TYPE_INTERACT}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12648] = {
            [questKeys.preQuestSingle] = {12629},
            [questKeys.preQuestGroup] = {},
            [questKeys.exclusiveTo] = {12649},
            [questKeys.nextQuestInChain] = 12661,
        },
        [12649] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12643,12238},
            [questKeys.exclusiveTo] = {12648},
            [questKeys.nextQuestInChain] = 12661,
        },
        [12651] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12558,12556,12592},
            [questKeys.exclusiveTo] = {12654},
            [questKeys.nextQuestInChain] = 12654,
        },
        [12652] = {
            [questKeys.requiredRaces] = 2047,
            [questKeys.preQuestSingle] = {12629,12643},
            [questKeys.exclusiveTo] = {12713},
            [questKeys.objectives] = {{{28565,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12659] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28465,28600},28622}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12661] = { -- Infiltrating Voltarus
            [questKeys.preQuestSingle] = {12648,12649},
            [questKeys.preQuestGroup] = {},
            [questKeys.childQuests] = {12663,12664},
            [questKeys.exclusiveTo] = {},
            [questKeys.nextQuestInChain] = 12669,
            [questKeys.requiredSourceItems] = {38699},
            [questKeys.objectives] = {{{28503,"Overlord Drakuru's task complete",Questie.ICON_TYPE_TALK}}},
            [questKeys.extraObjectives] = {{{[zoneIDs.ZUL_DRAK]={{28.38,44.85}}}, Questie.ICON_TYPE_EVENT, l10n("Infiltrate Voltarus using Ensorcelled Choker")}},
        },
        [12662] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Heb'Jin's Drum to summon Heb'Jin"), 0, {{"object", 190695}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12663] = {
            [questKeys.preQuestSingle] = {12649},
            [questKeys.exclusiveTo] = {12664,12648},
            [questKeys.parentQuest] = 12661,
            [questKeys.objectives] = {{{28666,"Tour of Zul'Drak complete"}}},
        },
        [12664] = { -- Dark Horizon
            [questKeys.preQuestSingle] = {12648},
            [questKeys.exclusiveTo] = {12663,12649},
            [questKeys.parentQuest] = 12661,
            [questKeys.objectives] = {{{28666,"Tour of Zul'Drak complete",Questie.ICON_TYPE_TALK}}},
        },
        [12665] = { -- I Sense a Disturbance
            [questKeys.objectives] = {{{28671,"Quetz'lun's fate revealed.",Questie.ICON_TYPE_EVENT}}},
        },
        [12668] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28747,28748},28747,"Trolls killed near a Soul Font"}}},
        },
        [12669] = { -- So Far, So Bad
            [questKeys.objectives] = {{{28503,"Drakuru's task complete",Questie.ICON_TYPE_TALK},{28739,"Blight Cauldrons diluted",Questie.ICON_TYPE_INTERACT}}},
            [questKeys.requiredSourceItems] = {38699,41390},
        },
        [12670] = {
            [questKeys.preQuestSingle] = {12850},
            [questKeys.extraObjectives] = {{nil,Questie.ICON_TYPE_MOUNT_UP,l10n("Take the gryphon to ground level"),0,{{"monster",29488}}}},
        },
        [12671] = {
            [questKeys.triggerEnd] = {"Reconnaissance Flight",{[zoneIDs.SHOLAZAR_BASIN]={{50.04,61.43,},},},},
        },
        [12673] = { -- It Rolls Downhill
            [questKeys.objectives] = {nil,{{190716}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Use Scepter of Suggestion to mind control Blight Geist"), 0, {{"monster", 28750}}}},
        },
        [12674] = {
            [questKeys.objectives] = {{{28752,"High Priest Mu'funu hexed at death"},{28754,"High Priestess Tua-Tua hexed at death"},{28756,"High Priest Hawinni hexed at death"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12676] = { -- Sabotage
            [questKeys.requiredSourceItems] = {41390,38699},
            [questKeys.objectives] = {nil,{{190731,"Scourgewagons destroyed",Questie.ICON_TYPE_INTERACT}},nil,nil,{{{28503},28503,"Drakuru's task complete",Questie.ICON_TYPE_TALK}}},
            [questKeys.triggerEnd] = {"Learn Drakuru's secret",{[zoneIDs.ZUL_DRAK]={{27.07,46.16}}}},
        },
        [12677] = { -- Hazardous Materials
            [questKeys.requiredSourceItems] = {41390,38699},
            [questKeys.objectives] = {{{28503,"Drakuru's task complete",Questie.ICON_TYPE_TALK}},nil,{{39159}}},
        },
        [12680] = {
            [questKeys.objectives] = {{{28653,nil,Questie.ICON_TYPE_EVENT}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 28605},{"monster", 28606},{"monster", 28607}}}},
        },
        [12683] = {
            [questKeys.objectives] = {{{28003,},{28003}}},
            [questKeys.preQuestSingle] = {},
        },
        [12685] = {
            [questKeys.objectives] = {{{28671}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Quetz'lun's Ritual"), 0, {{"monster", 28672}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12686] = { -- Zero Tolerance
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Scepter of Empowerment to mind control Servant of Drakuru",Questie.ICON_TYPE_INTERACT), 0, {{"monster", 28802}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12687] = {
            [questKeys.objectives] = {{{28788,"The Horseman's Challenge",Questie.ICON_TYPE_EVENT}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_SLAY, l10n("Defeat Dark Rider of Acherus and take his horse"), 0, {{"monster", 28768}}},
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 28782}}},
            },
        },
        [12688] = {
            [questKeys.triggerEnd] = {"Escort Engineer Helice out of Swindlegrin's Dig",{[zoneIDs.SHOLAZAR_BASIN]={{37.29,50.59,},},},},
        },
        [12690] = { -- Fuel for the Fire
            [questKeys.exclusiveTo] = {12710},
            [questKeys.requiredSourceItems] = {38699},
            [questKeys.objectives] = {{{28844,"Drakkari Skullcrushers Slain"},{28873,"Drakkari Chieftain Lured"},},nil,nil,nil,},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Scepter of Command",Questie.ICON_TYPE_INTERACT), 0, {{"monster", 28843}}}},
        },
        [12692] = {
            [questKeys.requiredMinRep] = {1104,9000},
        },
        [12695] = {
            [questKeys.requiredMinRep] = {1105,9000},
        },
        [12697] = {
            [questKeys.preQuestGroup] = {12678,12679,12687,12733,},
            [questKeys.startedBy] = {{28377}},
            [questKeys.preQuestSingle] = {},
        },
        [12698] = {
            [questKeys.objectives] = {{{28845,nil,Questie.ICON_TYPE_INTERACT}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Return Scarlet Ghouls"), 0, {{"monster", 28658}}},
                {nil, Questie.ICON_TYPE_INTERACT, l10n("Use the Gift of the Harvester on it"), 0, {{"monster", 28819},{"monster", 28822},{"monster", 28891}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [12699] = {
            [questKeys.preQuestSingle] = {12523},
            [questKeys.requiredSourceItems] = {},
        },
        [12701] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Climb inside the Inconspicuous Mine Car"), 0, {{"object", 190767}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use the Scarlet Cannon"), 0, {{"monster", 28833}}},
            },
        },
        [12702] = {
            [questKeys.requiredMinRep] = {1104,9000},
            [questKeys.requiredSourceItems] = {},
        },
        [12703] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the blood at the Shrine of Kartak"), 0, {{"object", 190782}}}},
            [questKeys.requiredMinRep] = {1104,9000},
        },
        [12704] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Talk to High-Oracle Soo-say to retrieve a Gorloc companion"), 0, {{"monster", 28027}}},
            },
            [questKeys.requiredMinRep] = {1105,9000},
            [questKeys.requiredSourceItems] = {38622,38623,38624},
        },
        [12705] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Use the Tainted Crystal at the Great Lightning Stone"), 0, {{"object", 190781}}},
            },
            [questKeys.requiredMinRep] = {1105,9000},
        },
        [12706] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Take the gryphon to Acherus"), 0, {{"monster", 29501}}}},
        },
        [12707] = {
            [questKeys.objectives] = {{{28861,"Mam'toth Disciples trampled to death"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Medallion of Mam'toth to calm and ride an Enraged Mammoth"),0,{{"monster", 28851}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12710] = {
            [questKeys.requiredSourceItems] = {38699},
            [questKeys.objectives] = {{{28948,"Drakuru's upper chamber explored"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Open the coffin"), 0, {{"object", 190948}}},
                {{[zoneIDs.ZUL_DRAK]={{28.38,44.85}}}, Questie.ICON_TYPE_EVENT, l10n("Take the teleporter to Drakuru's upper chamber")},
            },
        },
        [12712] = {
            [questKeys.requiredSourceItems] = {39313,39314,39315,39316},
        },
        [12713] = { -- Betrayal
            [questKeys.objectives] = {nil,nil,{{40425,"Overlord Drakuru Defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_INTERACT, l10n("Use the Scepter of Domination to control it"), 0, {{"monster", 28931}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Go on top of the ziggurat with Drakuru"), 0, {{"monster", 28503}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Defeat Drakuru"), 0, {{"monster", 28998}}},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("After defeating Drakuru, go back down using this portal"), 0, {{"object", 202357}}},
            },
            [questKeys.requiredSourceItems] = {38699,41390,43059},
        },
        [12714] = {
            [questKeys.extraObjectives] = {{nil,Questie.ICON_TYPE_MOUNT_UP,l10n("Take the gryphon to ground level"),0,{{"monster",29488}}}},
        },
        [12720] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28610,28936,28939,28940},28610,nil,Questie.ICON_TYPE_INTERACT}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Equip Keleseth's Persuaders and persuade Scarlet Crusaders"), 0, {{"monster", 28610},{"monster", 28936},{"monster", 28939},{"monster", 28940},}}},
            [questKeys.requiredSourceItems] = {39371},
        },
        [12721] = {
            [questKeys.objectives] = {{{28952,"Akali unfettered from his chains."}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Release Akali from his chains"), 0, {{"object", 191018}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12723] = {
            [questKeys.preQuestGroup] = {12717,12720,12722},
        },
        [12726] = {
            [questKeys.requiredMinRep] = {1105,9000},
            [questKeys.objectives] = {{{28862,},{28858,}}},
            [questKeys.extraObjectives] = {{{[zoneIDs.SHOLAZAR_BASIN]={{26.51,35.63}}}, Questie.ICON_TYPE_EVENT, l10n("Use Drums of the Tempest at Stormwright's Shelf"),}},
            [questKeys.requiredSourceItems] = {},
        },
        [12728] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12730] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use the Prophet of Akali Convocation"), 0, {{"object", 191123}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12732] = {
            [questKeys.requiredMinRep] = {1104,9000},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Fill Rejek's Vial"), 0, {{"object", 191122}}}},
            [questKeys.requiredSourceItems] = {39573,39576},
        },
        [12733] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28391,28394,28406},28391,"Death Knights defeated in a duel"}}},
        },
        [12734] = {
            [questKeys.objectives] = {{{28086,"Blade blooded on Sapphire Hive Wasp"},{28096,"Blade blooded on Hardknuckle Charger"}},nil,nil,nil,{{{28109,28110},28109,"Blade Blooded on Mistwhisper members"}}},
            [questKeys.requiredMinRep] = {1104,9000},
        },
        [12735] = {
            [questKeys.extraObjectives] = {
                {{[zoneIDs.SHOLAZAR_BASIN]={{43,42}}}, Questie.ICON_TYPE_EVENT, l10n("Use Chime of Cleansing to summon Spirit of Atha"), 1},
                {{[zoneIDs.SHOLAZAR_BASIN]={{49,63}}}, Questie.ICON_TYPE_EVENT, l10n("Use Chime of Cleansing to summon Spirit of Ha-Khalan"), 2},
                {{[zoneIDs.SHOLAZAR_BASIN]={{46,74}}}, Questie.ICON_TYPE_EVENT, l10n("Use Chime of Cleansing to summon Spirit of Koosu"), 3},
            },
            [questKeys.requiredMinRep] = {1105,9000},
            [questKeys.requiredSourceItems] = {},
        },
        [12736] = {
            [questKeys.requiredMinRep] = {1105,9000},
            [questKeys.requiredSourceItems] = {},
        },
        [12737] = {
            [questKeys.objectives] = {nil,{{191136,nil,Questie.ICON_TYPE_INTERACT}}},
            [questKeys.requiredMinRep] = {1105,9000},
            [questKeys.requiredSourceItems] = {},
        },
        [12739] = { -- A Special Surprise (Tauren)
            [questKeys.preQuestSingle] = {12738}
        },
        [12740] = { -- Parachutes for the Argent Crusade
            [questKeys.objectives] = {nil,nil,nil,nil,{{{28028,28029},28028,nil,Questie.ICON_TYPE_INTERACT}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12741] = {
            [questKeys.requiredMinRep] = {1104,9000},
        },
        [12742] = { -- A Special Surprise (Human)
            [questKeys.preQuestSingle] = {12738},
            [questKeys.requiredRaces] = raceIDs.HUMAN,
        },
        [12743] = { -- A Special Surprise (Night Elf)
            [questKeys.preQuestSingle] = {12738},
        },
        [12744] = { -- A Special Surprise (Dwarf)
            [questKeys.preQuestSingle] = {12738},
            [questKeys.requiredRaces] = raceIDs.DWARF,
        },
        [12745] = { -- A Special Surprise (Gnome)
            [questKeys.preQuestSingle] = {12738},
        },
        [12746] = { -- A Special Surprise (Draenei)
            [questKeys.preQuestSingle] = {12738},
        },
        [12747] = { -- A Special Surprise (Blood Elf)
            [questKeys.preQuestSingle] = {12738},
        },
        [12748] = { -- A Special Surprise (Orc)
            [questKeys.preQuestSingle] = {12738},
            [questKeys.requiredRaces] = raceIDs.ORC,
        },
        [12749] = { -- A Special Surprise (Troll)
            [questKeys.preQuestSingle] = {12738},
            [questKeys.requiredRaces] = raceIDs.TROLL,
        },
        [12750] = { -- A Special Surprise (Undead)
            [questKeys.preQuestSingle] = {12738},
        },
        [12752] = {
            [questKeys.startedBy] = {{19169,19175,19176,19177,19178,20102}},
        },
        [12753] = {
            [questKeys.startedBy] = {{18927,19148,19171,19172,19173,20102}},
        },
        [12754] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.PLAGUELANDS_THE_SCARLET_ENCLAVE]={{60.9,75.5}}}, Questie.ICON_TYPE_EVENT, l10n("Use the Makeshift Cover"),}},
            [questKeys.requiredSourceItems] = {},
        },
        [12757] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Use the Portal to Acherus"),0,{{"object", 191155}}}},
        },
        [12758] = {
            [questKeys.requiredMinRep] = {1104,9000},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Venture Co. Explosive on dead Stonewatcher"),0,{{"monster", 28877}}}},
        },
        [12759] = {
            [questKeys.requiredMinRep] = {1104,9000},
        },
        [12760] = {
            [questKeys.requiredMinRep] = {1104,9000},
            [questKeys.requiredSourceItems] = {},
        },
        [12761] = {
            [questKeys.requiredMinRep] = {1105,9000},
        },
        [12762] = {
            [questKeys.requiredMinRep] = {1105,9000},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Charge the Dormant Polished Crystal at the exposed Lifeblood Pillar"),2,{{"object", 300224}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12771] = {
            [questKeys.preQuestSingle] = {12753},
        },
        [12772] = {
            [questKeys.startedBy] = {{18927,19148,19171,19172,19173,20102}},
        },
        [12773] = {
            [questKeys.preQuestSingle] = {12772},
        },
        [12774] = {
            [questKeys.preQuestSingle] = {12775},
        },
        [12775] = {
            [questKeys.startedBy] = {{18927,19148,19171,19172,19173,20102}},
        },
        [12776] = {
            [questKeys.preQuestSingle] = {12777},
        },
        [12777] = {
            [questKeys.startedBy] = {{18927,19148,19171,19172,19173,20102}},
        },
        [12778] = {
            [questKeys.extraObjectives] = {{nil,Questie.ICON_TYPE_MOUNT_UP,l10n("Take the gryphon to ground level"),0,{{"monster",29488}}}},
        },
        [12779] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.PLAGUELANDS_THE_SCARLET_ENCLAVE]={{53.5,36.7}}}, Questie.ICON_TYPE_EVENT, l10n("Use the Horn of the Frostbrood"),}},
            [questKeys.startedBy] = {{29110}},
            [questKeys.requiredSourceItems] = {},
        },
        [12782] = {
            [questKeys.startedBy] = {{19169,19175,19176,19177,19178,20102}},
        },
        [12783] = {
            [questKeys.startedBy] = {{19169,19175,19176,19177,19178,20102}},
        },
        [12784] = {
            [questKeys.startedBy] = {{19169,19175,19176,19177,19178,20102}},
        },
        [12785] = {
            [questKeys.preQuestSingle] = {12783},
        },
        [12786] = {
            [questKeys.preQuestSingle] = {12784},
        },
        [12787] = {
            [questKeys.preQuestSingle] = {12752},
        },
        [12788] = {
            [questKeys.preQuestSingle] = {12782},
        },
        [12797] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.UN_GORO_CRATER]={{50.54,7.74,}}}, Questie.ICON_TYPE_EVENT, l10n("Travel through the Waygate"),}},
        },
        [12801] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Highlord Darion Mograine"), 0, {{"monster", 29173}}}},
            [questKeys.objectives] = {nil,{{191330,"The Light of Dawn Uncovered",Questie.ICON_TYPE_EVENT}}},
        },
        [12802] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Drink Drakuru's Elixir after gathering 5 Desperate Mojo"),0,{{"object", 188358}}}},
            [questKeys.requiredSourceItems] = {35797,36739,36743},
        },
        [12803] = {
            [questKeys.requiredSpell] = 54197,
        },
        [12804] = {
            [questKeys.preQuestSingle] = {12520},
        },
        [12805] = {
            [questKeys.objectives] = {{{29124,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12807] = {
            [questKeys.objectives] = {{{29344,}}},
        },
        [12808] = {
            [questKeys.startedBy] = {{18927,19148,19171,19172,19173,20102}},
        },
        [12809] = {
            [questKeys.preQuestSingle] = {12808},
        },
        [12810] = {
            [questKeys.objectives] = {{{29392,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12811] = {
            [questKeys.startedBy] = {{19169,19175,19176,19177,19178,20102}},
        },
        [12812] = {
            [questKeys.preQuestSingle] = {12811},
        },
        [12813] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{29329,29330,29333,29338},29398}}},
            [questKeys.preQuestSingle] = {12807},
            [questKeys.requiredSourceItems] = {},
        },
        [12814] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{29406,29405},29406}}},
        },
        [12815] = {
            [questKeys.preQuestSingle] = {12814},
            [questKeys.requiredSourceItems] = {},
        },
        [12816] = {
            [questKeys.triggerEnd] = {"Investigate a circle",{[zoneIDs.EVERSONG_WOODS]={{56.5,52,},},},},
        },
        [12817] = {
            [questKeys.triggerEnd] = {"Investigate a circle",{[zoneIDs.AZUREMYST_ISLE]={{34.9,45.5,},},},},
        },
        [12820] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12821] = {
            [questKeys.name] = "Cell Block Tango",
            [questKeys.triggerEnd] = {"Garm Teleporter Activated",{[zoneIDs.STORM_PEAKS]={{50.7,81.9,},},},},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Activate the teleporter"), 0, {{"object", 191574}}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {12820,12828,12832},
            [questKeys.sourceItemId] = 40731,
        },
        [12823] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place Hardpacked Explosive Bundle at Frostgut's Altar"), 0, {{"object", 191842}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12828] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Retrieve U.D.E.D."), 0, {{"object", 191553}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Use U.D.E.D on Ironwool Mammoth"), 0, {{"monster", 29402}}},
            },
        },
        [12831] = {
            [questKeys.preQuestSingle] = {},
        },
        [12832] = {
            [questKeys.triggerEnd] = {"Escort the Injured Goblin Miner to K3.",{[zoneIDs.STORM_PEAKS]={{40.2,79,},},},},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Start the escort"), 0, {{"monster", 29434}}}},
        },
        [12833] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12838] = {
            [questKeys.preQuestSingle] = {12807},
        },
        [12839] = {
            [questKeys.preQuestSingle] = {12807},
        },
        [12842] = {
            [questKeys.objectives] = {nil,{{191746}}},
        },
        [12847] = {
            [questKeys.triggerEnd] = {"Arete's Gate summoned",{[zoneIDs.ICECROWN]={{9.53,47.01}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12848] = {
            [questKeys.extraObjectives] = {{nil,Questie.ICON_TYPE_INTERACT,l10n("Unlock the chains"),0,{{"object",191577}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12851] = {
            [questKeys.name] = "Bearly Hanging On",
            [questKeys.objectives] = {{{29358},{29351}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount Icefang"), 0, {{"monster", 29598}}},
            },
        },
        [12852] = {
            [questKeys.objectives] = {{{29621,}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12855] = {
            [questKeys.requiredSourceItems] = {40971},
            [questKeys.preQuestSingle] = {12854},
            [questKeys.extraObjectives] = {{{[zoneIDs.STORM_PEAKS]={{36.4,64.2}}}, Questie.ICON_TYPE_EVENT, l10n("Use Frosthound's Collar at the Abandoned Camp")}},
        },
        [12856] = {
            [questKeys.objectives] = {{{29639,"Rescued Brunnhildar Prisoners"},{29708,"Freed Proto-Drakes"}}},
            [questKeys.extraObjectives] = {
                {{[zoneIDs.STORM_PEAKS]={{62.00,59.50}}}, Questie.ICON_TYPE_EVENT, l10n("Fly freed Proto-Drakes to safety while carrying rescued Brunnhildar Prisoners"),},
            },
        },
        [12858] = {
            [questKeys.sourceItemId] = 40971,
            [questKeys.requiredSourceItems] = {41130},
        },
        [12859] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12860] = {
            [questKeys.requiredSourceItems] = {40971},
            [questKeys.objectives] = {{{29746,"Hidden Data gathered"}}},
        },
        [12862] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Ricket for transportation"), 0, {{"monster", 29428}}}},
        },
        [12864] = {
            [questKeys.objectives] = {{{29811,"Locate Missing Scout"}}},
        },
        [12865] = {
            [questKeys.objectives] = {{{29854,"Stormcrest Eagles fed"}}},
            [questKeys.preQuestSingle] = {12863},
        },
        [12869] = {
            [questKeys.preQuestGroup] = {12867,13417},
        },
        [12871] = {
            [questKeys.preQuestSingle] = {12872},
        },
        [12872] = {
            [questKeys.requiredSourceItems] = {40971},
        },
        [12874] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Fjorlin Frostbrow"), 0, {{"monster", 29732}}}},
        },
        [12876] = {
            [questKeys.preQuestSingle] = {12874},
        },
        [12885] = {
            [questKeys.preQuestSingle] = {12872},
            [questKeys.exclusiveTo] = {12930},
            [questKeys.sourceItemId] = 40971,
        },
        [12886] = {
            [questKeys.objectives] = {{{29694}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Use Hyldnir Harpoon to land on nearby Proto-Drakes"), 0, {{"monster", 29625}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Use Hyldnir Harpoon on Column Ornaments to dismount"), 0, {{"monster", 29754}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [12887] = {
            [questKeys.objectives] = {{{29747,"The Ocular has been destroyed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12889] = {
            [questKeys.requiredSkill] = {202,400},
        },
        [12892] = {
            [questKeys.objectives] = {{{29747,"The Ocular has been destroyed"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12893] = {
            [questKeys.objectives] = {{{29769},{29770},{29840}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12896] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Tamper with General's Weapon Rack to summon General Lightsbane"), 0, {{"object", 191778},{"object", 191779}}},
            },
        },
        [12897] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Tamper with General's Weapon Rack to summon General Lightsbane"), 0, {{"object", 191778},{"object", 191779}}},
            },
        },
        [12906] = {
            [questKeys.objectives] = {{{30146,"Exhausted Vrykul Disciplined"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12910] = {
            [questKeys.sourceItemId] = 40971,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount Frostbite to track scent"), 0, {{"monster", 29857}}},
            },
        },
        [12913] = {
            [questKeys.sourceItemId] = 40971,
        },
        [12915] = {
            [questKeys.requiredSourceItems] = {41506},
        },
        [12916] = {
            [questKeys.objectives] = {nil,{{420048,"Scourge Enclosure Blown Up"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12919] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Let Gymer know you're ready"), 0, {{"monster", 29647}}},
                {{[zoneIDs.ZUL_DRAK]={{26.71,57.29}}}, Questie.ICON_TYPE_EVENT, l10n("Slay Scourge while riding Gymer"),},
            },
        },
        [12920] = {
            [questKeys.preQuestSingle] = {12917},
        },
        [12924] = {
            [questKeys.objectives] = {{{30099,"Fjorn's Anvil Brought to Dun Niffelem"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12925] = {
            [questKeys.preQuestSingle] = {12905},
        },
        [12926] = {
            [questKeys.sourceItemId] = 40971,
            [questKeys.requiredSourceItems] = {41130},
        },
        [12927] = {
            [questKeys.requiredSourceItems] = {40971},
            [questKeys.objectives] = {{{29746,"Hidden Data gathered"}}},
        },
        [12928] = {
            [questKeys.requiredSourceItems] = {40971},
        },
        [12929] = {
            [questKeys.preQuestSingle] = {12928},
            [questKeys.exclusiveTo] = {12930},
            [questKeys.sourceItemId] = 40971,
        },
        [12930] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12932] = { -- This is the version of the quest you get if you have NOT completed 9977
            [questKeys.objectives] = {{{30014,"Yggdras Defeated"}}},
            [questKeys.exclusiveTo] = {12954,9977},
            [questKeys.nextQuestInChain] = 12933,
        },
        [12933] = {
            [questKeys.objectives] = {{{30017,"Stinkbeard Defeated"}}},
            [questKeys.preQuestSingle] = {12932,12954},
        },
        [12934] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{30019,30024,30025,30026},30019,"Elemental Lord Defeated"}}},
        },
        [12935] = {
            [questKeys.objectives] = {{{30020,"Orinoko Tuskbreaker Defeated"}}},
        },
        [12936] = {
            [questKeys.objectives] = {{{30023,"Korrak the Bloodrager Defeated"}}},
        },
        [12937] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12939] = {
            [questKeys.objectives] = {{{30037,}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use the Challenge Flag on sparring Mjordin Combatants"), 0, {{"monster", 30037}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12940] = { -- Candy Bucket
            [questKeys.startedBy] = {nil,{191878}},
            [questKeys.finishedBy] = {nil,{191878}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [12941] = { -- Candy Bucket
            [questKeys.startedBy] = {nil,{191879}},
            [questKeys.finishedBy] = {nil,{191879}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [12942] = {
            [questKeys.preQuestSingle] = {12905},
        },
        [12943] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12944] = {
            [questKeys.startedBy] = {nil,{191882}},
            [questKeys.finishedBy] = {nil,{191882}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [12945] = {
            [questKeys.startedBy] = {nil,{191883}},
            [questKeys.finishedBy] = {nil,{191883}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [12946] = {
            [questKeys.startedBy] = {nil,{191880}},
            [questKeys.finishedBy] = {nil,{191880}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [12947] = {
            [questKeys.startedBy] = {nil,{191881}},
            [questKeys.finishedBy] = {nil,{191881}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [12948] = {
            [questKeys.objectives] = {{{30022,"Vladof the Butcher Defeated"}}},
        },
        [12950] = {
            [questKeys.startedBy] = {nil,{192018}},
            [questKeys.finishedBy] = {nil,{192018}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [12953] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Harpoon Guns to burn Dry Haystacks"), 0, {{"monster", 30066}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12954] = { -- The Amphitheater of Anguish: Yggdras!
            [questKeys.objectives] = {{{30014,"Yggdras Defeated"}}},
            [questKeys.exclusiveTo] = {12932},
            [questKeys.nextQuestInChain] = 12933,
        },
        [12957] = {
            [questKeys.objectives] = {{{29384},{29369}}},
        },
        [12966] = {
            [questKeys.preQuestGroup] = {12915,12956},
            [questKeys.requiredMinRep] = {1119,0},
        },
        [12967] = {
            [questKeys.objectives] = {{{30120}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Ride Snorri"), 0, {{"monster", 30123}}}},
        },
        [12968] = {
            [questKeys.preQuestSingle] = {12905},
        },
        [12970] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Listen to Lok'lira's proposal"), 0, {{"monster", 29975}}},
            },
        },
        [12973] = {
            [questKeys.objectives] = {{{30405,"Accompany Brann Bronzebeard to Frosthold."}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Get in Brann's Flying Machine"), 0, {{"monster", 30134}}}},
            [questKeys.preQuestSingle] = {12880},
        },
        [12974] = {
            [questKeys.exclusiveTo] = {12932,12954},
        },
        [12975] = {
            [questKeys.preQuestSingle] = {12924},
        },
        [12977] = {
            [questKeys.name] = "Hodir's Call",
            [questKeys.objectives] = {{{29974,"Niffelem Forefather freed"},},nil,nil,nil,{{{30144,30135},30144,},},},
            [questKeys.preQuestSingle] = {12976},
            [questKeys.requiredSourceItems] = {},
        },
        [12978] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{29370,29374,29380},29370,"Nidavelir Stormforged slain"}}},
        },
        [12979] = {
            [questKeys.objectives] = {nil,nil,{{42204},},nil,nil,},
        },
        [12981] = {
            [questKeys.preQuestSingle] = {12967},
        },
        [12982] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{30186,30194,30195,30196},30186,"Ebon Blade Prisoners set free"}}},
        },
        [12983] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12984] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12985] = {
            [questKeys.requiredMinRep] = {1119,3000},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Diamond Tipped Pick on the corpses of Dead Iron Giants"), 0, {{"monster", 29914},{"monster", 30163}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12986] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12987] = {
            [questKeys.name] = "Placing Hodir's Helm",
            [questKeys.requiredMinRep] = {1119,3000},
            [questKeys.requiredSourceItems] = {},
        },
        [12988] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12994] = {
            [questKeys.requiredMinRep] = {1119,9000},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Ethereal Worg's Fang"), 0, {{"monster", 32569}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12995] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{29915,29919,30037,30243,30250,30409,30475,30483,30484,30632,30725,30751,29880},29880,"Ebon Blade Banner planted near vrykul corpse"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12996] = {
            [questKeys.objectives] = {{{29352,"Kirgaraak Defeated"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [12997] = {
            [questKeys.requiredSourceItems] = {},
        },
        [12998] = {
            [questKeys.objectives] = {nil,{{192181,"Attempt to secure the Heart of the Storm"}}},
        },
        [13000] = {
            [questKeys.requiredSourceItems] = {},
        },
        [13001] = {
            [questKeys.name] = "Forging Hodir's Spear",
            [questKeys.requiredMinRep] = {1119,9000},
        },
        [13003] = {
            [questKeys.name] = "How To Slay Your Dragon",
            [questKeys.objectives] = {{{30275,"Wild Wyrm Slain"}}},
            [questKeys.preQuestSingle] = {13001},
            [questKeys.requiredSourceItems] = {},
        },
        [13005] = {
            [questKeys.objectives] = {{{29984,"Iron Sentinel slain"},{29978,"Iron Dwarf Assailant slain"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_SLAY, l10n("Use the Horn of the Peaks and call on the Earthen to defeat Iron Dwarves and Iron Sentinels"), 0, {{"monster", 29984},{"monster",29978}}}},
            [questKeys.preQuestSingle] = {13057},
        },
        [13006] = {
            [questKeys.name] = "A Viscous Cleaning",
            [questKeys.requiredMinRep] = {1119,3000},
            [questKeys.preQuestSingle] = {12987},
        },
        [13007] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount Tamed Jormungar to fight Iron Colossus"),0,{{"monster", 30301},{"object", 192262}}},},
        },
        [13008] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{30273,30268,30274},30273,}}},
        },
        [13010] = {
            [questKeys.objectives] = {{{30105}},nil,nil,{1119,3000}},
        },
        [13011] = {
            [questKeys.name] = "Culling Jorcuttar",
            [questKeys.objectivesText] = {"King Jokkum in Dun Niffelem wants you to slay Jorcuttar in Hibernal Cavern."},
            [questKeys.requiredMinRep] = {1119,3000},
            [questKeys.requiredSourceItems] = {42733},
            [questKeys.extraObjectives] = {{{[zoneIDs.STORM_PEAKS]={{54.71,60.79}}}, Questie.ICON_TYPE_EVENT, l10n("Place Icemaw Bear Flank"), 0}},
        },
        [13012] = {
            [questKeys.startedBy] = {{30348}},
            [questKeys.finishedBy] = {{30348}},
        },
        [13013] = {
            [questKeys.startedBy] = {{30357}},
            [questKeys.finishedBy] = {{30357}},
        },
        [13014] = {
            [questKeys.startedBy] = {{30358}},
            [questKeys.finishedBy] = {{30358}},
        },
        [13015] = {
            [questKeys.startedBy] = {{30359}},
            [questKeys.finishedBy] = {{30359}},
        },
        [13016] = {
            [questKeys.startedBy] = {{30360}},
            [questKeys.finishedBy] = {{30360}},
        },
        [13017] = {
            [questKeys.startedBy] = {{30531}},
            [questKeys.finishedBy] = {{30531}},
        },
        [13018] = {
            [questKeys.startedBy] = {{30362}},
            [questKeys.finishedBy] = {{30362}},
        },
        [13019] = {
            [questKeys.startedBy] = {{30363}},
            [questKeys.finishedBy] = {{30363}},
        },
        [13020] = {
            [questKeys.startedBy] = {{30375}},
            [questKeys.finishedBy] = {{30375}},
        },
        [13021] = {
            [questKeys.startedBy] = {{30536}},
            [questKeys.finishedBy] = {{30536}},
        },
        [13022] = {
            [questKeys.startedBy] = {{30533}},
            [questKeys.finishedBy] = {{30533}},
        },
        [13023] = {
            [questKeys.startedBy] = {{30534}},
            [questKeys.finishedBy] = {{30534}},
        },
        [13024] = {
            [questKeys.startedBy] = {{30365}},
            [questKeys.finishedBy] = {{30365}},
        },
        [13025] = {
            [questKeys.startedBy] = {{30367}},
            [questKeys.finishedBy] = {{30367}},
        },
        [13026] = {
            [questKeys.startedBy] = {{30368}},
            [questKeys.finishedBy] = {{30368}},
        },
        [13027] = {
            [questKeys.startedBy] = {{30369}},
            [questKeys.finishedBy] = {{30369}},
        },
        [13028] = {
            [questKeys.startedBy] = {{30370}},
            [questKeys.finishedBy] = {{30370}},
        },
        [13029] = {
            [questKeys.startedBy] = {{30371}},
            [questKeys.finishedBy] = {{30371}},
        },
        [13030] = {
            [questKeys.startedBy] = {{30372}},
            [questKeys.finishedBy] = {{30372}},
        },
        [13031] = {
            [questKeys.startedBy] = {{30373}},
            [questKeys.finishedBy] = {{30373}},
        },
        [13032] = {
            [questKeys.startedBy] = {{30374}},
            [questKeys.finishedBy] = {{30374}},
        },
        [13033] = {
            [questKeys.startedBy] = {{30364}},
            [questKeys.finishedBy] = {{30364}},
        },
        [13034] = {
            [questKeys.preQuestSingle] = {},
        },
        [13035] = {
            [questKeys.preQuestSingle] = {13057},
        },
        [13037] = {
            [questKeys.objectives] = {{{30395}}},
        },
        [13038] = {
            [questKeys.objectives] = {{{30448}}},
            [questKeys.preQuestSingle] = {13034},
        },
        [13039] = {
            [questKeys.preQuestSingle] = {13036},
        },
        [13040] = {
            [questKeys.preQuestSingle] = {13036},
        },
        [13042] = {
            [questKeys.preQuestSingle] = {12999},
            [questKeys.objectives] = {{{30409,"Information beaten out of Apprentice Osterkilgr"},{30409}}},
        },
        [13043] = {
            [questKeys.preQuestSingle] = {12999},
            [questKeys.startedBy] = {nil,nil,{42772}},
            [questKeys.requiredSourceItems] = {},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount Nergeld"), 0, {{"monster", 30403}}},
            },
        },
        [13044] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13008,13039,13040},
        },
        [13045] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount Argent Skytalon"), 0, {{"monster", 30500}}},
                {{[zoneIDs.ICECROWN]={{86.85,76.61}}}, Questie.ICON_TYPE_EVENT, l10n("Drop Off Captured Crusader"), 0},
            },
        },
        [13046] = {
            [questKeys.objectives] = {{{30422}}},
            [questKeys.requiredMinRep] = {1119,21000},
            [questKeys.requiredSourceItems] = {},
        },
        [13047] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13035,13005},
            [questKeys.objectives] = {{{30399,"Witness the Reckoning"}}},
        },
        [13048] = {
            [questKeys.objectives] = {{{80000}}},
            [questKeys.preQuestGroup] = {13037,13038},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Attune the Lorehammer"), 0, {{"object", 192541},{"object", 192542},{"object", 192543},{"object", 192544},{"object", 192545},{"object", 192546}}},
            },
        },
        [13049] = {
            [questKeys.preQuestGroup] = {13037,13038},
        },
        [13051] = {
            [questKeys.requiredSourceItems] = {},
        },
        [13058] = {
            [questKeys.preQuestGroup] = {13048,13049},
            [questKeys.extraObjectives] = {
                {{[zoneIDs.STORM_PEAKS]={{64.4,46.7}}}, Questie.ICON_TYPE_OBJECT, l10n("Use the Lorehammer to travel back in time"), 0},
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Defeat the North Wind"), 0, {{"monster", 30474}}},
            },
        },
        [13059] = {
            [questKeys.objectives] = {nil,{{192560}},nil,nil,{{{30475},32821,}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_SLAY, l10n("Defeat Volgur"), 0, {{"monster", 30483}}},
                {nil, Questie.ICON_TYPE_SLAY, l10n("Defeat Brita"), 0, {{"monster", 30484}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [13060] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Talk to Ricket for transportation"), 0, {{"monster", 29428}}},
            },
        },
        [13064] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Listen to Thorim's history"), 0, {{"monster", 29445}}},
            },
        },
        [13065] = {
            [questKeys.startedBy] = {{30537}},
            [questKeys.finishedBy] = {{30537}},
        },
        [13066] = {
            [questKeys.startedBy] = {{30535}},
            [questKeys.finishedBy] = {{30535}},
        },
        [13067] = {
            [questKeys.startedBy] = {{30538}},
            [questKeys.finishedBy] = {{30538}},
        },
        [13068] = {
            [questKeys.preQuestSingle] = {13141},
        },
        [13069] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 30337}}}},
        },
        [13071] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 30272}}}},
        },
        [13073] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Speak to Arch Druid Lilliandra for transportation to Moonglade"), 0, {{"monster", 30630}}}},
        },
        [13086] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount Argent Cannon"), 0, {{"monster", 30236}}},
            },
        },
        [13091] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{30725,29880,30632,30243,30250},30644,}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Possess a Water Terror"), 0, {{"object", 192774}}},
            },
        },
        [13092] = {
            [questKeys.preQuestSingle] = {12999},
            [questKeys.specialFlags] = 0,
        },
        [13093] = {
            [questKeys.preQuestSingle] = {13092},
        },
        [13098] = {
            [questKeys.preQuestSingle] = {},
        },
        [13106] = {
            [questKeys.preQuestSingle] = {12896,12897},
            [questKeys.exclusiveTo] = {13119,13120},
        },
        [13109] = {
            [questKeys.preQuestSingle] = {13047},
        },
        [13110] = {
            [questKeys.objectives] = {{{30202}}},
            [questKeys.preQuestSingle] = {13104},
            [questKeys.requiredSourceItems] = {},
        },
        [13117] = {
            [questKeys.preQuestSingle] = {},
        },
        [13118] = {
            [questKeys.preQuestSingle] = {13104},
        },
        [13120] = {
            [questKeys.requiredSourceItems] = {},
        },
        [13121] = {
            [questKeys.objectives] = {nil,{{192861}}},
        },
        [13122] = {
            [questKeys.preQuestSingle] = {13104},
        },
        [13125] = {
            [questKeys.preQuestGroup] = {13122,13118},
            [questKeys.requiredSourceItems] = {},
        },
        [13129] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Dip Kurzel's Blouse Scrap on the remains of Novos the Summoner"), 0, {{"monster", 26631}}}},
        },
        [13130] = {
            [questKeys.preQuestSingle] = {13104},
        },
        [13133] = {
            [questKeys.objectives] = {{{30886}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Wake Slumbering Mjordin until you find Iskalder"), 0, {{"monster", 30718}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Iskalder delivered to The Bone Witch"), 0, {{"monster", 30232}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [13134] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13119,13120},
        },
        [13135] = {
            [questKeys.preQuestSingle] = {13104},
        },
        [13136] = {
            [questKeys.startedBy] = {nil,nil,{43242}},
            [questKeys.objectives] = {nil,nil,{{43259}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13119,13120},
        },
        [13137] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Use the Battlescar Signal Fire to summon Iskalder"), 0, {{"object", 193024}}},
            },
        },
        [13138] = {
            [questKeys.preQuestSingle] = {13136},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Bag of Jagged Shards near Malykriss Furnace"), 0, {{"object", 193004}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13139] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13125,13130,13135},
        },
        [13140] = {
            [questKeys.preQuestSingle] = {13136},
        },
        [13141] = {
            [questKeys.objectives] = {{{30989,"Battle for Crusaders' Pinnacle"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Plant the Blessed Banner of the Crusade"), 0, {{"object", 193003}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13142] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Blow the War Horn of Jotunheim to challenge Overthane Balargarde"), 0, {{"object", 193028}}},
            },
        },
        [13143] = {
            [questKeys.objectives] = {{{30894}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Lead a subdued Lithe Stalker to the cliff above Vereth the Cunning"), 0, {{"monster", 31049}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13144] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{30689,31048},30689,}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13152,13211},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Free Burning Skeletons to destroy Chained Abominations"), 0, {{"object", 193060}}}},
        },
        [13145] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Seize Control of a Lithe Stalker"), 0, {{"object", 193424}}}},
        },
        [13146] = {
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_OBJECT, l10n("Seize Control of a Lithe Stalker"), 0, {{"object", 193424}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Drag Scourge Bombs to Lumbering Atrocities"), 0, {{"monster", 30920}}},
            },
        },
        [13147] = {
            [questKeys.objectives] = {{{30922}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Seize Control of a Lithe Stalker"), 0, {{"object", 193424}}}},
        },
        [13149] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Plagued Grain Crates Dispelled: 0/1"), 0, {{"object", 190094}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13151] = {
            [questKeys.objectives] = {{{26533,"Mal'Ganis Defeated"}}},
        },
        [13152] = {
            [questKeys.preQuestSingle]= {},
            [questKeys.preQuestGroup] = {13134,13138,13140},
            [questKeys.objectives] = {{{30993,"Patches freed"},{30992,"Help Patches kill Doctor Sabnok"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Free Patches"), 0, {{"object", 193025}}}},
        },
        [13153] = {
            [questKeys.startedBy] = {},
            [questKeys.exclusiveTo] = {236,13154,13156,13195,13196,13197,13198},
        },
        [13154] = {
            [questKeys.startedBy] = {},
            [questKeys.exclusiveTo] = {236,13153,13156,13195,13196,13197,13198},
        },
        [13155] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13172,13174},
        },
        [13156] = {
            [questKeys.startedBy] = {},
            [questKeys.exclusiveTo] = {236,13153,13154,13195,13196,13197,13198},
        },
        [13160] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Seize Control of a Lithe Stalker"), 0, {{"object", 193424}}}},
        },
        [13164] = {
            [questKeys.preQuestSingle]= {},
            [questKeys.preQuestGroup] = {13161,13162,13163},
        },
        [13168] = {
            [questKeys.triggerEnd] = {"Seize Control of an Eidolon Watcher", {[zoneIDs.ICECROWN]={{44.19,24.69}}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Eye of Dominion"), 0, {{"object", 193058}}}},
        },
        [13169] = {
            [questKeys.objectives] = {{{30952,"Hungering Plaguehounds fed"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Seize Control of an Eidolon Watcher"), 0, {{"object", 193058}}}},
        },
        [13170] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Seize Control of an Eidolon Watcher"), 0, {{"object", 193058}}}},
        },
        [13171] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Seize Control of an Eidolon Watcher"), 0, {{"object", 193058}}}},
        },
        [13172] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13169,13170,13171},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Speak to Keritose Bloodblade to secure a Skeletal Gryphon"), 0, {{"monster", 30946}}}},
        },
        [13174] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13169,13170,13171},
        },
        [13177] = {
            [questKeys.startedBy] = {},
            [questKeys.exclusiveTo] = {13179},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{30739,39019},39019,"Horde members slain"}}},
        },
        [13178] = {
            [questKeys.startedBy] = {},
            [questKeys.exclusiveTo] = {13180},
        },
        [13179] = {
            [questKeys.exclusiveTo] = {13177},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{30739,39019},39019,"Horde members slain"}}},
        },
        [13180] = {
            [questKeys.exclusiveTo] = {13178},
        },
        [13181] = {
            [questKeys.triggerEnd] = {"Victory in Lake Wintergrasp", {[zoneIDs.DALARAN]={{33,67.2}}}},
        },
        [13183] = {
            [questKeys.triggerEnd] = {"Victory in Lake Wintergrasp", {[zoneIDs.DALARAN]={{58.2,25.6}}}},
        },
        [13185] = {
            [questKeys.exclusiveTo] = {13223},
        },
        [13186] = {
            [questKeys.exclusiveTo] = {13222},
        },
        [13188] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Go to Stormwind"), 0, {{"object", 193053}}}},
        },
        [13189] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_INTERACT, l10n("Go to Orgrimmar"), 0, {{"object", 193052}}}},
        },
        [13190] = {
            [questKeys.requiredSourceItems] = {43494},
            [questKeys.objectives] = {nil,{{193057,"Ahn'kahar Watcher Corpse Burned"}}},
        },
        [13191] = {
            [questKeys.startedBy] = {},
            [questKeys.finishedBy] = {{31106}},
            [questKeys.exclusiveTo] = {13192,13193,13194,13199,13200,13201,13202},
        },
        [13192] = {
            [questKeys.exclusiveTo] = {13191,13193,13194,13199,13200,13201,13202},
        },
        [13193] = {
            [questKeys.startedBy] = {},
            [questKeys.exclusiveTo] = {13191,13192,13194,13199,13200,13201,13202},
        },
        [13194] = {
            [questKeys.startedBy] = {},
            [questKeys.exclusiveTo] = {13191,13192,13193,13199,13200,13201,13202},
        },
        [13195] = {
            [questKeys.exclusiveTo] = {236,13153,13154,13156,13196,13197,13198},
        },
        [13196] = {
            [questKeys.exclusiveTo] = {236,13153,13154,13156,13195,13197,13198},
        },
        [13197] = {
            [questKeys.finishedBy] = {{31108}},
            [questKeys.exclusiveTo] = {236,13153,13154,13156,13195,13196,13198},
        },
        [13198] = {
            [questKeys.exclusiveTo] = {236,13153,13154,13156,13195,13196,13197},
        },
        [13199] = {
            [questKeys.exclusiveTo] = {13191,13192,13193,13194,13200,13201,13202},
        },
        [13200] = {
            [questKeys.finishedBy] = {{31106}},
            [questKeys.exclusiveTo] = {13191,13192,13193,13194,13199,13201,13202},
        },
        [13201] = {
            [questKeys.exclusiveTo] = {13191,13192,13193,13194,13199,13200,13202},
        },
        [13202] = {
            [questKeys.exclusiveTo] = {13191,13192,13193,13194,13199,13200,13201},
        },
        [13203] = {
            [questKeys.exclusiveTo] = {11528,13966},
        },
        [13204] = {
            [questKeys.startedBy] = {nil,nil,{43512}},
        },
        [13211] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13134,13138,13140},
            [questKeys.requiredSourceItems] = {},
        },
        [13214] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31191,31192,31193,31194,31195,31196,},31191}}},
        },
        [13215] = {
            [questKeys.objectives] = {{{31222}}},
        },
        [13216] = {
            [questKeys.objectives] = {{{31242}}},
        },
        [13217] = {
            [questKeys.objectives] = {{{31271}}},
        },
        [13218] = {
            [questKeys.objectives] = {{{31277}}},
        },
        [13219] = {
            [questKeys.objectives] = {{{14688}}},
        },
        [13220] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Crusader Olakin's Remains at the Sanctum of Reanimation Slab"), 0, {{"object", 193090}}}},
            [questKeys.requiredSourceItems] = {43567,43568},
        },
        [13221] = {
            [questKeys.triggerEnd] = {"Escort Father Kamaros to safety", {[zoneIDs.ICECROWN]={{32,57.1}}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13119,13120},
        },
        [13222] = {
            [questKeys.exclusiveTo] = {13186},
        },
        [13223] = {
            [questKeys.exclusiveTo] = {13185},
        },
        [13226] = {
            [questKeys.nextQuestInChain] = 13036,
        },
        [13227] = {
            [questKeys.nextQuestInChain] = 13036,
        },
        [13228] = {
            [questKeys.objectives] = {{{31273,"Dying Berserker Questioned"}}},
            [questKeys.childQuests] = {13230},
            [questKeys.preQuestSingle] = {13224},
        },
        [13229] = {
            [questKeys.triggerEnd] = {"Escort Father Kamaros to safety", {[zoneIDs.ICECROWN]={{32,57.1}}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13119,13120},
        },
        [13230] = {
            [questKeys.parentQuest] = 13228,
            [questKeys.preQuestSingle] = {13228},
        },
        [13231] = {
            [questKeys.objectives] = {{{31304,"Dying Soldier Questioned"}}},
            [questKeys.childQuests] = {13232},
            [questKeys.preQuestSingle] = {13225},
        },
        [13232] = {
            [questKeys.objectives] = {{{31304,"Dying Soldiers Slain"}}},
            [questKeys.parentQuest] = 13231,
            [questKeys.preQuestSingle] = {13231},
        },
        [13233] = {
            [questKeys.triggerEnd] = {"Kill horde players in Icecrown", {[zoneIDs.ICECROWN]={{60.9,41.3}}}},
            [questKeys.preQuestSingle] = {13231},
        },
        [13234] = {
            [questKeys.preQuestSingle] = {13228},
            [questKeys.triggerEnd] = {"Kill alliance players in Icecrown", {[zoneIDs.ICECROWN]={{60.9,41.3}}}},
        },
        [13235] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Margrave Dhakar to fight Morbidus"), 0, {{"monster", 31306}}}},
        },
        [13236] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31254,32414,31276},31329}}},
        },
        [13238] = {
            [questKeys.preQuestSingle] = {13228},
        },
        [13239] = {
            [questKeys.preQuestSingle] = {13238},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31137,31583},31137,"Field Tests Conducted"}}},
            [questKeys.requiredSourceItems] = {43609,43610,43616},
        },
        [13240] = {
            [questKeys.startedBy] = {{31439},nil,nil},
            [questKeys.finishedBy] = {{31439},nil,nil},
            [questKeys.exclusiveTo] = {13241,13243,13244},
        },
        [13241] = {
            [questKeys.startedBy] = {{31439},nil,nil},
            [questKeys.finishedBy] = {{31439},nil,nil},
            [questKeys.exclusiveTo] = {13240,13243,13244},
        },
        [13242] = {
            [questKeys.preQuestSingle] = {12500},
        },
        [13243] = {
            [questKeys.startedBy] = {{31439},nil,nil},
            [questKeys.finishedBy] = {{31439},nil,nil},
            [questKeys.exclusiveTo] = {13240,13241,13244},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{27744,28341},27744}}},
        },
        [13244] = {
            [questKeys.startedBy] = {{31439},nil,nil},
            [questKeys.finishedBy] = {{31439},nil,nil},
            [questKeys.exclusiveTo] = {13240,13241,13243},
        },
        [13245] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13246,13247,13248,13249,13250,13251,13252,13253,13254,13255,13256,14199},
        },
        [13246] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13247,13248,13249,13250,13251,13252,13253,13254,13255,13256,14199},
        },
        [13247] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13248,13249,13250,13251,13252,13253,13254,13255,13256,14199},
        },
        [13248] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13249,13250,13251,13252,13253,13254,13255,13256,14199},
        },
        [13249] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13250,13251,13252,13253,13254,13255,13256,14199},
        },
        [13250] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13251,13252,13253,13254,13255,13256,14199},
        },
        [13251] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13250,13252,13253,13254,13255,13256,14199},
        },
        [13252] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13250,13251,13253,13254,13255,13256,14199},
        },
        [13253] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13250,13251,13252,13254,13255,13256,14199},
        },
        [13254] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13250,13251,13252,13253,13255,13256,14199},
        },
        [13255] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13250,13251,13252,13253,13254,13256,14199},
        },
        [13256] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13250,13251,13252,13253,13254,13255,14199},
        },
        [13258] = {
            [questKeys.preQuestGroup] = {12938,13224},
        },
        [13260] = {
            [questKeys.preQuestSingle] = {13228},
        },
        [13261] = {
            [questKeys.preQuestSingle] = {13239},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31137,31583},31137,"Field Tests Conducted"}}},
            [questKeys.requiredSourceItems] = {43609,43610,43616},
        },
        [13264] = {
            [questKeys.objectives] = {{{31142,"Icy Ghouls Exploded"},{31147,"Vicious Geists Exploded"},{31205,"Risen Alliance Soldiers Exploded"}}},
            [questKeys.preQuestSingle] = {13237},
            [questKeys.requiredSourceItems] = {43966},
        },
        [13265] = {
            [questKeys.requiredSpell] = -59390,
        },
        [13267] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Begin the assault!"), 0, {{"monster", 31650}}}},
        },
        [13268] = {
            [questKeys.requiredSpell] = -59390,
        },
        [13269] = {
            [questKeys.requiredSpell] = -59390,
        },
        [13270] = {
            [questKeys.requiredSpell] = -59390,
        },
        [13272] = {
            [questKeys.requiredSpell] = -59390,
        },
        [13273] = {
            [questKeys.preQuestSingle] = {12928},
            [questKeys.sourceItemId] = 40971,
        },
        [13274] = {
            [questKeys.sourceItemId] = 40971,
        },
        [13276] = {
            [questKeys.objectives] = {{{31142,"Icy Ghouls Exploded"},{31147,"Vicious Geists Exploded"},{31205,"Risen Alliance Soldiers Exploded"}}},
            [questKeys.preQuestSingle] = {13264},
            [questKeys.requiredSourceItems] = {43966},
        },
        [13277] = {
            [questKeys.preQuestSingle] = {13237},
        },
        [13278] = {
            [questKeys.preQuestSingle] = {13277},
        },
        [13279] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Pustulant Spinal Fluid"), 0, {{"monster", 31773}}}},
            [questKeys.objectives] = {{{31773,"Plague Cauldron Neutralized"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13280] = {
            [questKeys.preQuestSingle] = {13296},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Plant Alliance Battle Standard"), 0, {{"object", 193565}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Get in the Jumpbot"), 0, {{"monster", 31736}}},
            },
        },
        [13281] = {
            [questKeys.preQuestSingle] = {13279},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Pustulant Spinal Fluid"), 0, {{"monster", 31773}}}},
            [questKeys.objectives] = {{{31773,"Plague Cauldron Neutralized"}}},
        },
        [13283] = {
            [questKeys.preQuestSingle] = {13293},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Plant Horde Battle Standard"), 0, {{"object", 193565}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Get in the Jumpbot"), 0, {{"monster", 31770}}},
            },
        },
        [13284] = {
            [questKeys.preQuestSingle] = {13341},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31701,31737},31701,"Alliance troops escorted to Ymirheim"}}},
        },
        [13285] = {
            [questKeys.sourceItemId] = 40971,
            [questKeys.requiredSourceItems] = {},
        },
        [13286] = {
            [questKeys.preQuestSingle] = {13231},
        },
        [13288] = {
            [questKeys.objectives] = {{{31142,"Icy Ghouls Exploded"},{31147,"Vicious Geists Exploded"},{31205,"Risen Alliance Soldiers Exploded"}}},
            [questKeys.preQuestSingle] = {13287},
            [questKeys.requiredSourceItems] = {43966},
        },
        [13289] = {
            [questKeys.objectives] = {{{31142,"Icy Ghouls Exploded"},{31147,"Vicious Geists Exploded"},{31205,"Risen Alliance Soldiers Exploded"}}},
            [questKeys.preQuestSingle] = {13288},
            [questKeys.requiredSourceItems] = {43966},
        },
        [13290] = {
            [questKeys.preQuestSingle] = {13231},
        },
        [13291] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31137,31583},31137,"Field Tests Conducted"}}},
            [questKeys.requiredSourceItems] = {43609,43610,43616},
        },
        [13292] = {
            [questKeys.preQuestSingle] = {13291},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31137,31583},31137,"Frostbrood Skytalons Destroyed"}}},
            [questKeys.requiredSourceItems] = {43609,43610,43616},
        },
        [13293] = {
            [questKeys.preQuestSingle] = {13224},
        },
        [13294] = {
            [questKeys.preQuestSingle] = {13287},
        },
        [13295] = {
            [questKeys.objectives] = {{{31773,"Plague Cauldron Neutralized"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Pustulant Spinal Fluid"), 0, {{"monster", 31773}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13296] = {
            [questKeys.preQuestSingle] = {13225},
        },
        [13297] = {
            [questKeys.preQuestSingle] = {13295},
            [questKeys.objectives] = {{{31773,"Plague Cauldron Neutralized"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Pustulant Spinal Fluid"), 0, {{"monster", 31773}}}},
        },
        [13298] = {
            [questKeys.preQuestSingle] = {13294},
        },
        [13300] = {
            [questKeys.objectives] = {{{31397,"Saronite Mine Slave rescued"}}},
            [questKeys.preQuestSingle] = {13225},
        },
        [13301] = {
            [questKeys.preQuestSingle] = {13340},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31832,31833},31832,"Horde troops escorted to Ymirheim"}}},
        },
        [13302] = {
            [questKeys.objectives] = {{{31397,"Saronite Mine Slave rescued"}}},
            [questKeys.preQuestSingle] = {13224},
        },
        [13305] = {
            [questKeys.preQuestSingle] = {13304},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Board Refurbished Demolisher"), 0, {{"monster", 32370}}}},
        },
        [13306] = {
            [questKeys.preQuestSingle] = {13366},
            [questKeys.requiredSourceItems] = {},
        },
        [13307] = {
            [questKeys.preQuestSingle] = {13306},
        },
        [13308] = {
            [questKeys.preQuestSingle] = {13224,13225},
        },
        [13309] = {
            [questKeys.preQuestSingle] = {13341},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Get on the turret"), 0, {{"monster", 32227}}}},
            [questKeys.objectives] = {{{32222,"Skybreaker Infiltrators dropped"}}},
        },
        [13310] = {
            [questKeys.preQuestSingle] = {13340},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Get on the turret"), 0, {{"monster", 31884}}}},
            [questKeys.objectives] = {{{31882,"Skybreaker Infiltrators dropped"}}},
        },
        [13312] = {
            [questKeys.preQuestGroup] = {13306,13367},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Rune of Distortion near Grimkor's Orb to summon Grimkor the Wicked"), 0, {{"object", 193622}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13313] = {
            [questKeys.preQuestSingle] = {13306},
            [questKeys.requiredSourceItems] = {},
        },
        [13314] = {
            [questKeys.preQuestSingle] = {13332},
            [questKeys.requiredSourceItems] = {},
        },
        [13315] = {
            [questKeys.preQuestSingle] = {13288},
        },
        [13316] = {
            [questKeys.preQuestSingle] = {13329},
        },
        [13318] = {
            [questKeys.objectives] = {{{32236,"Dark Subjugator dragged and dropped"}}},
            [questKeys.preQuestSingle] = {13315},
        },
        [13319] = {
            [questKeys.preQuestSingle] = {13315},
        },
        [13320] = {
            [questKeys.preQuestSingle] = {13315},
        },
        [13321] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.ICECROWN]={{49.7,34.4},{49.1,34.2},{48.9,33.2}}}, Questie.ICON_TYPE_EVENT, l10n("Throw a Writhing Mass into a cauldron at Aldur'thar")}},
            [questKeys.requiredSourceItems] = {44301,44304},
        },
        [13322] = {
            [questKeys.preQuestSingle] = {13321},
            [questKeys.extraObjectives] = {{{[zoneIDs.ICECROWN]={{49.7,34.4},{49.1,34.2},{48.9,33.2}}}, Questie.ICON_TYPE_EVENT, l10n("Throw a Writhing Mass into a cauldron at Aldur'thar")}},
            [questKeys.requiredSourceItems] = {44301,44304},
        },
        [13323] = {
            [questKeys.preQuestSingle] = {13318},
            [questKeys.objectives] = {{{32236,"Dark Subjugator dragged and dropped"}}},
        },
        [13328] = {
            [questKeys.preQuestSingle] = {13329},
        },
        [13329] = {
            [questKeys.objectives] = {{{32467,"Skeletal Reaver bones dissolved"}}},
            [questKeys.preQuestGroup] = {13307,13312},
            [questKeys.requiredSourceItems] = {},
        },
        [13330] = {
            [questKeys.preQuestSingle] = {13224},
        },
        [13331] = {
            [questKeys.preQuestSingle] = {13313},
            [questKeys.requiredSourceItems] = {},
        },
        [13332] = {
            [questKeys.preQuestSingle] = {13345},
            [questKeys.requiredSourceItems] = {},
        },
        [13333] = {
            [questKeys.preQuestSingle] = {13314},
            [questKeys.requiredSourceItems] = {},
        },
        [13334] = {
            [questKeys.preQuestSingle] = {13332},
        },
        [13335] = {
            [questKeys.objectives] = {{{32467,"Skeletal Reaver bones dissolved"}}},
            [questKeys.preQuestGroup] = {13334,13337},
            [questKeys.requiredSourceItems] = {},
        },
        [13336] = {
            [questKeys.preQuestSingle] = {13225},
        },
        [13337] = {
            [questKeys.preQuestGroup] = {13332,13346},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Rune of Distortion near Grimkor's Orb to summon Grimkor the Wicked"), 0, {{"object", 193622}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13338] = {
            [questKeys.preQuestSingle] = {13335},
        },
        [13339] = {
            [questKeys.preQuestSingle] = {13335},
        },
        [13340] = {
            [questKeys.preQuestSingle] = {13224},
        },
        [13341] = {
            [questKeys.preQuestSingle] = {13225},
        },
        [13342] = {
            [questKeys.objectives] = {{{32316}}},
            [questKeys.preQuestSingle] = {13318},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Activate the Summoning Stone after collecting 5 Dark Matter"), 0, {{"object", 420001}}}},
            [questKeys.requiredSourceItems] = {44434},
        },
        [13343] = {
            [questKeys.objectives] = {{{32327,"Hourglass of Eternity protected from the Infinite Dragonflight."}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13344] = {
            [questKeys.objectives] = {{{32316}}},
            [questKeys.preQuestSingle] = {13342},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Activate the Summoning Stone after collecting 5 Dark Matter"), 0, {{"object", 420001}}}},
            [questKeys.requiredSourceItems] = {44434},
        },
        [13345] = {
            [questKeys.preQuestSingle] = {13318},
        },
        [13346] = {
            [questKeys.requiredSourceItems] = {44476,44477,44478,44479,44480},
        },
        [13347] = {
            [questKeys.preQuestSingle] = {12499},
        },
        [13350] = {
            [questKeys.preQuestSingle] = {13346},
            [questKeys.requiredSourceItems] = {44476,44477,44478,44479,44480},
        },
        [13351] = {
            [questKeys.preQuestSingle] = {13264},
        },
        [13352] = {
            [questKeys.objectives] = {{{32236,"Dark Subjugator dragged and dropped"}}},
            [questKeys.preQuestSingle] = {13351},
        },
        [13353] = {
            [questKeys.objectives] = {{{32236,"Dark Subjugator dragged and dropped"}}},
            [questKeys.preQuestSingle] = {13352},
        },
        [13354] = {
            [questKeys.preQuestSingle] = {13351},
        },
        [13355] = {
            [questKeys.preQuestSingle] = {13351},
        },
        [13356] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.ICECROWN]={{49.7,34.4},{49.1,34.2},{48.9,33.2}}}, Questie.ICON_TYPE_EVENT, l10n("Throw a Writhing Mass into a cauldron at Aldur'thar")}},
            [questKeys.requiredSourceItems] = {44301,44304},
        },
        [13357] = {
            [questKeys.preQuestSingle] = {13356},
            [questKeys.extraObjectives] = {{{[zoneIDs.ICECROWN]={{49.7,34.4},{49.1,34.2},{48.9,33.2}}}, Questie.ICON_TYPE_EVENT, l10n("Throw a Writhing Mass into a cauldron at Aldur'thar")}},
            [questKeys.requiredSourceItems] = {44301,44304},
        },
        [13358] = {
            [questKeys.objectives] = {{{32316}}},
            [questKeys.preQuestSingle] = {13352},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Activate the Summoning Stone after collecting 5 Dark Matter"), 0, {{"object", 420001}}}},
            [questKeys.requiredSourceItems] = {44434},
        },
        [13359] = {
            [questKeys.preQuestSingle] = {13348},
            [questKeys.nextQuestInChain] = 13360,
        },
        [13360] = {
            [questKeys.preQuestSingle] = {13359},
        },
        [13361] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31395,32587,32588},32588,"The Prince's Destiny"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Pick it up"), 0, {{"object", 193980},{"object", 194023},{"object", 194024}}}},
        },
        [13363] = {
            [questKeys.preQuestSingle] = {13362},
        },
        [13364] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Tirion while wearing a Cultist Acolyte's Hood"), 0, {{"monster", 32239}}}},
        },
        [13365] = {
            [questKeys.objectives] = {{{32316}}},
            [questKeys.preQuestSingle] = {13358},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Activate the Summoning Stone after collecting 5 Dark Matter"), 0, {{"object", 420001}}}},
            [questKeys.requiredSourceItems] = {44434},
        },
        [13366] = {
            [questKeys.preQuestSingle] = {13352},
        },
        [13367] = {
            [questKeys.requiredSourceItems] = {44477,44479,44478,44476,44480},
        },
        [13368] = {
            [questKeys.preQuestSingle] = {13367},
            [questKeys.requiredSourceItems] = {44477,44479,44478,44476,44480},
        },
        [13369] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Request a portal to Orgrimmar"), 0, {{"monster", 32346}}}},
        },
        [13372] = {
            [questKeys.startedBy] = {nil,nil,{44569}},
        },
        [13373] = {
            [questKeys.objectives] = {{{32179},{32188}},nil,nil,nil,{{{32182,32183},32182}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Rizzy Ratchwiggle"), 0, {{"monster", 31839}}}},
        },
        [13375] = {
            [questKeys.startedBy] = {nil,nil,{44577}},
        },
        [13376] = {
            [questKeys.preQuestSingle] = {13373},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Rizzy Ratchwiggle"), 1, {{"monster", 31839}}}},
            [questKeys.objectives] = {{{32188},{32154},{31721}},nil,nil,nil,{{{32182,32183},32182}}},
        },
        [13377] = {
            [questKeys.objectives] = {{{32518,"Assist King Varian Wrynn"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Begin the assault!"), 0, {{"monster", 32401}}}},
        },
        [13379] = {
            [questKeys.preQuestSingle] = {13239},
        },
        [13380] = {
            [questKeys.objectives] = {{{32179},{32188}},nil,nil,nil,{{{32182,32183},32182}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Karen No"), 0, {{"monster", 31648}}}},
        },
        [13382] = {
            [questKeys.preQuestSingle] = {13380},
            [questKeys.objectives] = {{{32188},{32154},{31721}},nil,nil,nil,{{{32182,32183},32182}}},
        },
        [13383] = {
            [questKeys.preQuestSingle] = {13291},
        },
        [13386] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {13225,12898},
        },
        [13390] = {
            [questKeys.startedBy] = {{31237},{193195}},
        },
        [13394] = {
            [questKeys.preQuestSingle] = {13393},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Board Refurbished Demolisher"), 0, {{"monster", 32370}}}},
        },
        [13395] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31254,32414,31276},31329}}},
        },
        [13398] = {
            [questKeys.preQuestSingle] = {13396},
        },
        [13400] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{31395,32587,32588},32588,"The Prince's Destiny"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Pick it up"), 0, {{"object", 193980},{"object", 194023},{"object", 194024}}}},
        },
        [13403] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Tirion while wearing a Cultist Acolyte's Hood"), 0, {{"monster", 32239}}}},
        },
        [13404] = {
            [questKeys.preQuestSingle] = {13380},
            [questKeys.objectives] = {{{32179},{32188}},nil,nil,nil,{{{32182,32183},32182}}},
        },
        [13405] = {
            [questKeys.triggerEnd] = {"Victory in Strand of the Ancients", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.exclusiveTo] = {11335,11336,11337,11338,14163},
        },
        [13406] = {
            [questKeys.preQuestSingle] = {13373},
            [questKeys.objectives] = {{{32179},{32188}},nil,nil,nil,{{{32182,32183},32182}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Rizzy Ratchwiggle"), 1, {{"monster", 31839}}}},
        },
        [13407] = {
            [questKeys.triggerEnd] = {"Victory in Strand of the Ancients", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.exclusiveTo] = {11339,11340,11341,11342,14164},
        },
        [13408] = {
            [questKeys.preQuestSingle] = {10143,10483},
        },
        [13409] = {
            [questKeys.preQuestSingle] = {10124},
        },
        [13410] = {
            [questKeys.preQuestSingle] = {10143,10483},
        },
        [13411] = {
            [questKeys.preQuestSingle] = {10124},
        },
        [13413] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 1, {{"monster", 32548}}}},
        },
        [13414] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 1, {{"monster", 32548}}}},
        },
        [13415] = {
            [questKeys.requiredSourceItems] = {40971},
        },
        [13416] = {
            [questKeys.requiredSourceItems] = {40971},
        },
        [13418] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Take a ride to the ship"), 1, {{"monster", 31081}}}},
        },
        [13419] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Take a ride to the ship"), 1, {{"monster", 31085}}}},
        },
        [13420] = {
            [questKeys.startedBy] = {nil,nil,{44725}},
            [questKeys.requiredMinRep] = {1119,3000},
            [questKeys.requiredSourceItems] = {},
        },
        [13422] = {
            [questKeys.preQuestSingle] = {12906},
            [questKeys.objectives] = {{{30146,"Exhausted Vrykul Disciplined"}}},
            [questKeys.exclusiveTo] = {13423,13424,13425},
            [questKeys.requiredSourceItems] = {},
        },
        [13423] = {
            [questKeys.preQuestSingle] = {12971},
            [questKeys.exclusiveTo] = {13422,13424,13425},
        },
        [13424] = {
            [questKeys.preQuestSingle] = {12997},
            [questKeys.exclusiveTo] = {13422,13423,13425},
            [questKeys.requiredSourceItems] = {},
        },
        [13425] = {
            [questKeys.preQuestSingle] = {12925},
            [questKeys.exclusiveTo] = {13422,13423,13424},
        },
        [13426] = {
            [questKeys.preQuestSingle] = {13285},
            [questKeys.nextQuestInChain] = 13034,
        },
        [13427] = {
            [questKeys.triggerEnd] = {"Victory in Alterac Valley", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ALTERAC_MOUNTAINS]={{39.4,82.2}},
            }},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {14178,14179,14180},
        },
        [13428] = {
            [questKeys.triggerEnd] = {"Victory in Alterac Valley", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ALTERAC_MOUNTAINS]={{63.3,60.2}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {14181,14182,14183},
        },
        [13429] = {
            [questKeys.triggerEnd] = {"Help Akama and Maiev enter the Black Temple.", {[zoneIDs.SHADOWMOON_VALLEY]={{71.05,46.11},{66.29,44.06}}}},
            [questKeys.exclusiveTo] = {10985},
            [questKeys.startedBy] = {{18528}},
            [questKeys.finishedBy] = {{18528}},
            [questKeys.preQuestSingle] = {10949},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Let Xi'ri know you're ready to battle"), 1, {{"monster", 18528}}}},
        },
        [13430] = {
            [questKeys.exclusiveTo] = {10888},
            [questKeys.preQuestGroup] = {10884,10885,10886},
        },
        [13431] = {
            [questKeys.exclusiveTo] = {10901},
        },
        [13432] = {
            [questKeys.exclusiveTo] = {10445},
        },
        [13433] = {
            [questKeys.startedBy] = {nil,{194056}},
            [questKeys.finishedBy] = {nil,{194056}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13434] = {
            [questKeys.startedBy] = {nil,{194057}},
            [questKeys.finishedBy] = {nil,{194057}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13435] = {
            [questKeys.startedBy] = {nil,{194058}},
            [questKeys.finishedBy] = {nil,{194058}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13436] = {
            [questKeys.startedBy] = {nil,{194059}},
            [questKeys.finishedBy] = {nil,{194059}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13437] = {
            [questKeys.startedBy] = {nil,{194060}},
            [questKeys.finishedBy] = {nil,{194060}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13438] = {
            [questKeys.startedBy] = {nil,{194061}},
            [questKeys.finishedBy] = {nil,{194061}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13439] = {
            [questKeys.startedBy] = {nil,{194062}},
            [questKeys.finishedBy] = {nil,{194062}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13440] = {
            [questKeys.startedBy] = {nil,{194032}},
            [questKeys.finishedBy] = {nil,{194032}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13441] = {
            [questKeys.startedBy] = {nil,{194033}},
            [questKeys.finishedBy] = {nil,{194033}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13442] = {
            [questKeys.startedBy] = {nil,{194035}},
            [questKeys.finishedBy] = {nil,{194035}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13443] = {
            [questKeys.startedBy] = {nil,{194036}},
            [questKeys.finishedBy] = {nil,{194036}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13444] = {
            [questKeys.startedBy] = {nil,{194038}},
            [questKeys.finishedBy] = {nil,{194038}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13445] = {
            [questKeys.startedBy] = {nil,{194040}},
            [questKeys.finishedBy] = {nil,{194040}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13446] = {
            [questKeys.startedBy] = {nil,{194044}},
            [questKeys.finishedBy] = {nil,{194044}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13447] = {
            [questKeys.startedBy] = {nil,{194045}},
            [questKeys.finishedBy] = {nil,{194045}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13448] = {
            [questKeys.startedBy] = {nil,{194063}},
            [questKeys.finishedBy] = {nil,{194063}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13449] = {
            [questKeys.startedBy] = {nil,{194049}},
            [questKeys.finishedBy] = {nil,{194049}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13450] = {
            [questKeys.startedBy] = {nil,{194034}},
            [questKeys.finishedBy] = {nil,{194034}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13451] = {
            [questKeys.startedBy] = {nil,{194037}},
            [questKeys.finishedBy] = {nil,{194037}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13452] = {
            [questKeys.startedBy] = {nil,{194065}},
            [questKeys.finishedBy] = {nil,{194065}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [13453] = {
            [questKeys.startedBy] = {nil,{194039}},
            [questKeys.finishedBy] = {nil,{194039}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13454] = {
            [questKeys.startedBy] = {nil,{194042}},
            [questKeys.finishedBy] = {nil,{194042}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13455] = {
            [questKeys.startedBy] = {nil,{194043}},
            [questKeys.finishedBy] = {nil,{194043}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13456] = {
            [questKeys.startedBy] = {nil,{194066}},
            [questKeys.finishedBy] = {nil,{194066}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [13457] = {
            [questKeys.startedBy] = {nil,{194046}},
            [questKeys.finishedBy] = {nil,{194046}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13458] = {
            [questKeys.startedBy] = {nil,{194048}},
            [questKeys.finishedBy] = {nil,{194048}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13459] = {
            [questKeys.startedBy] = {nil,{194067}},
            [questKeys.finishedBy] = {nil,{194067}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [13460] = {
            [questKeys.startedBy] = {nil,{194068}},
            [questKeys.finishedBy] = {nil,{194068}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [13461] = {
            [questKeys.startedBy] = {nil,{194069}},
            [questKeys.finishedBy] = {nil,{194069}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [13462] = {
            [questKeys.startedBy] = {nil,{194070}},
            [questKeys.finishedBy] = {nil,{194070}},
            [questKeys.requiredRaces] = raceIDs.NONE,
        },
        [13464] = {
            [questKeys.startedBy] = {nil,{194073}},
            [questKeys.finishedBy] = {nil,{194073}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13465] = {
            [questKeys.startedBy] = {nil,{194074}},
            [questKeys.finishedBy] = {nil,{194074}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13466] = {
            [questKeys.startedBy] = {nil,{194075}},
            [questKeys.finishedBy] = {nil,{194075}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13467] = {
            [questKeys.startedBy] = {nil,{194076}},
            [questKeys.finishedBy] = {nil,{194076}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13468] = {
            [questKeys.startedBy] = {nil,{194077}},
            [questKeys.finishedBy] = {nil,{194077}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13469] = {
            [questKeys.startedBy] = {nil,{194078}},
            [questKeys.finishedBy] = {nil,{194078}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13470] = {
            [questKeys.startedBy] = {nil,{194079}},
            [questKeys.finishedBy] = {nil,{194079}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13471] = {
            [questKeys.startedBy] = {nil,{194080}},
            [questKeys.finishedBy] = {nil,{194080}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13473] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13474] = {
            [questKeys.startedBy] = {nil,{194081}},
            [questKeys.finishedBy] = {nil,{194081}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13481] = {
            [questKeys.triggerEnd] = {"Escort Father Kamaros to safety", {[zoneIDs.ICECROWN]={{32,57.1}}}},
        },
        [13482] = {
            [questKeys.triggerEnd] = {"Escort Father Kamaros to safety", {[zoneIDs.ICECROWN]={{32,57.1}}}},
        },
        [13485] = {
            [questKeys.startedBy] = {{32801}},
            [questKeys.finishedBy] = {{32801}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13486] = {
            [questKeys.startedBy] = {{32802}},
            [questKeys.finishedBy] = {{32802}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13487] = {
            [questKeys.startedBy] = {{32803}},
            [questKeys.finishedBy] = {{32803}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13488] = {
            [questKeys.startedBy] = {{32804}},
            [questKeys.finishedBy] = {{32804}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13489] = {
            [questKeys.startedBy] = {{32805}},
            [questKeys.finishedBy] = {{32805}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13490] = {
            [questKeys.startedBy] = {{32806}},
            [questKeys.finishedBy] = {{32806}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13491] = {
            [questKeys.startedBy] = {{32807}},
            [questKeys.finishedBy] = {{32807}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13492] = {
            [questKeys.startedBy] = {{32808}},
            [questKeys.finishedBy] = {{32808}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13493] = {
            [questKeys.startedBy] = {{32809}},
            [questKeys.finishedBy] = {{32809}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13494] = {
            [questKeys.startedBy] = {{32810}},
            [questKeys.finishedBy] = {{32810}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13495] = {
            [questKeys.startedBy] = {{32811}},
            [questKeys.finishedBy] = {{32811}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13496] = {
            [questKeys.startedBy] = {{32812}},
            [questKeys.finishedBy] = {{32812}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13497] = {
            [questKeys.startedBy] = {{32813}},
            [questKeys.finishedBy] = {{32813}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13498] = {
            [questKeys.startedBy] = {{32814}},
            [questKeys.finishedBy] = {{32814}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13499] = {
            [questKeys.startedBy] = {{32815}},
            [questKeys.finishedBy] = {{32815}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13500] = {
            [questKeys.startedBy] = {{32816}},
            [questKeys.finishedBy] = {{32816}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13501] = {
            [questKeys.startedBy] = {nil,{194084}},
            [questKeys.finishedBy] = {nil,{194084}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13548] = {
            [questKeys.startedBy] = {nil,{194119}},
            [questKeys.finishedBy] = {nil,{194119}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13549] = {
            [questKeys.objectives] = {{{29327,"Female Frost Leopards recovered"},{29319,"Female Icepaw Bears recovered"},},nil,nil,nil,},
            [questKeys.requiredSourceItems] = {},
        },
        [13559] = {
            [questKeys.preQuestSingle] = {12924},
        },
        [13592] = { -- HUMAN A Valiant's Field Training
            [questKeys.preQuestSingle] = {13684,13593},
            [questKeys.exclusiveTo] = {13699,13744,13749,13760,13755},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13593] = { -- HUMAN Valiant Of Stormwind
            [questKeys.preQuestSingle] = {13725,13713,13723,13724},
            [questKeys.exclusiveTo] = {13684,13686},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13600] = { -- HUMAN A Worthy Weapon
            [questKeys.preQuestSingle] = {13684,13593},
            [questKeys.exclusiveTo] = {13699,13603,13616,13741,13742,13743,13746,13747,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13603] = { -- HUMAN A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13684,13593},
            [questKeys.exclusiveTo] = {13699,13600,13616,13741,13742,13743,13746,13747,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredSourceItems] = {},
        },
        [13604] = {
            [questKeys.startedBy] = {nil,nil,{45506}},
        },
        [13607] = {
            [questKeys.triggerEnd] = {"Entrance to Celestial Planetarium located",{[zoneIDs.THE_ARCHIVUM]={{60,46.3}},[zoneIDs.ULDUAR]={{-1,-1}}}},
            [questKeys.preQuestSingle] = {13604},
        },
        [13616] = { -- HUMAN The Edge Of Winter
            [questKeys.preQuestSingle] = {13684,13593},
            [questKeys.exclusiveTo] = {13699,13600,13603,13741,13742,13743,13746,13747,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13625] = {
            [questKeys.objectives] = {{{33229,"Use Thrust on Melee Target"},{33243,"Use Shield-Breaker on vulnerable Ranged Target"},{33272,"Use Charge on vulnerable Charge Target"}}},
            [questKeys.preQuestGroup] = {13828,13835,13837},
            [questKeys.exclusiveTo] = {13679},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33843}}}},
        },
        [13627] = {
            [questKeys.startedBy] = {},
            [questKeys.finishedBy] = {},
            [questKeys.requiredSourceItems] = {},
        },
        [13629] = {
            [questKeys.requiredSourceItems] = {},
        },
        [13631] = {
            [questKeys.startedBy] = {nil,nil,{46052}},
        },
        [13633] = {
            [questKeys.preQuestSingle] = {13667},
        },
        [13634] = {
            [questKeys.preQuestSingle] = {13668},
        },
        [13643] = {
            [questKeys.requiredSourceItems] = {},
        },
        [13662] = {
            [questKeys.preQuestSingle] = {7722},
            [questKeys.requiredMinRep] = {59,3000},
            [questKeys.requiredMaxRep] = {59,9000},
        },
        [13663] = {
            [questKeys.objectives] = {{{33513,"Black Knight's Gryphon taken"}},nil,{{45121},{45122}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13664] = {
            [questKeys.preQuestSingle] = {13700,13701},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33870}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Cavin"), 0, {{"monster", 33522}}},
            },
        },
        [13665] = { -- HUMAN The Grand Melee
            [questKeys.preQuestSingle] = {13684,13593},
            [questKeys.exclusiveTo] = {13699,13745,13750,13761,13756},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33800}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13666] = {
            [questKeys.preQuestGroup] = {13828,13835,13837},
            [questKeys.exclusiveTo] = {13679,13669,13670},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13669] = {
            [questKeys.preQuestGroup] = {13828,13835,13837},
            [questKeys.exclusiveTo] = {13679,13666,13670},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
        },
        [13670] = {
            [questKeys.preQuestGroup] = {13828,13835,13837},
            [questKeys.exclusiveTo] = {13679,13666,13669},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
        },
        [13671] = {
            [questKeys.preQuestGroup] = {13828,13835,13837},
            [questKeys.exclusiveTo] = {13679},
            [questKeys.parentQuest] = 0,
        },
        [13672] = {
            [questKeys.childQuests] = {},
        },
        [13673] = {
            [questKeys.preQuestGroup] = {13829,13838,13839},
            [questKeys.exclusiveTo] = {13674,13675,13680},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [13674] = {
            [questKeys.preQuestGroup] = {13829,13838,13839},
            [questKeys.exclusiveTo] = {13673,13675,13680},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
        },
        [13675] = {
            [questKeys.preQuestGroup] = {13829,13838,13839},
            [questKeys.exclusiveTo] = {13673,13674,13680},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
        },
        [13676] = {
            [questKeys.preQuestGroup] = {13829,13838,13839},
            [questKeys.exclusiveTo] = {13680},
            [questKeys.parentQuest] = 0,
        },
        [13677] = {
            [questKeys.objectives] = {{{33229,"Use Thrust on Melee Target"},{33243,"Use Shield-Breaker on vulnerable Ranged Target"},{33272,"Use Charge on vulnerable Charge Target"}}},
            [questKeys.preQuestGroup] = {13829,13838,13839},
            [questKeys.exclusiveTo] = {13680},
            [questKeys.parentQuest] = 0,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33842}}}},
        },
        [13678] = {
            [questKeys.childQuests] = {},
        },
        [13679] = {
            [questKeys.objectives] = {{{33448,"Argent Valiant defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33843}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire David"), 0, {{"monster", 33447}}},
            },
        },
        [13680] = {
            [questKeys.objectives] = {{{33448,"Argent Valiant defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33842}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire David"), 0, {{"monster", 33447}}},
            },
        },
        [13681] = {
            [questKeys.startedBy] = {},
            [questKeys.finishedBy] = {},
            [questKeys.requiredSourceItems] = {},
        },
        [13682] = {
            [questKeys.preQuestSingle] = {13664},
        },
        [13697] = { -- ORC The Valiant's Charge
            [questKeys.preQuestSingle] = {13691,13707},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13699] = { -- HUMAN The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33800}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13703] = { -- DWARF Valiant Of Ironforge
            [questKeys.preQuestSingle] = {13699,13725,13724,13723},
            [questKeys.exclusiveTo] = {13685,13686},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13704] = { -- GNOME Valiant Of Gnomeregan
            [questKeys.preQuestSingle] = {13699,13725,13713,13724},
            [questKeys.exclusiveTo] = {13688,13686},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13705] = { -- DRAENEI Valiant Of The Exodar
            [questKeys.preQuestSingle] = {13699,13725,13713,13723},
            [questKeys.exclusiveTo] = {13690,13686},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13706] = { -- NIGHT ELF Valiant Of Darnassus
            [questKeys.preQuestSingle] = {13699,13724,13713,13723},
            [questKeys.exclusiveTo] = {13689,13686},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13707] = { -- ORC Valiant Of Orgrimmar
            [questKeys.preQuestSingle] = {13727,13728,13729,13731},
            [questKeys.exclusiveTo] = {13691,13687},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13708] = { -- TROLL Valiant Of Sen'jin
            [questKeys.preQuestSingle] = {13726,13728,13729,13731},
            [questKeys.exclusiveTo] = {13693,13687},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13709] = { -- TAUREN Valiant Of Thunder Bluff
            [questKeys.preQuestSingle] = {13726,13727,13729,13731},
            [questKeys.exclusiveTo] = {13694,13687},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13710] = { -- UNDEAD Valiant Of Undercity
            [questKeys.preQuestSingle] = {13726,13727,13728,13731},
            [questKeys.exclusiveTo] = {13695,13687},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13711] = { -- BLOOD ELF Valiant Of Silvermoon
            [questKeys.preQuestSingle] = {13726,13727,13728,13729},
            [questKeys.exclusiveTo] = {13696,13687},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13713] = { -- DWARF The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33795}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13714] = { -- DWARF The Valiant's Charge
            [questKeys.preQuestSingle] = {13685,13703},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13715] = { -- GNOME The Valiant's Charge
            [questKeys.preQuestSingle] = {13688,13704},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13716] = { -- DRAENEI The Valiant's Charge
            [questKeys.preQuestSingle] = {13690,13705},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13717] = { -- NIGHT ELF The Valiant's Charge
            [questKeys.preQuestSingle] = {13689,13706},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13718] = { -- HUMAN The Valiant's Charge
            [questKeys.preQuestSingle] = {13684,13593},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13719] = { -- TROLL The Valiant's Charge
            [questKeys.preQuestSingle] = {13693,13708},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13720] = { -- TAUREN The Valiant's Charge
            [questKeys.preQuestSingle] = {13694,13709},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13721] = { -- UNDEAD The Valiant's Charge
            [questKeys.preQuestSingle] = {13695,13710},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13722] = { -- BLOOD ELF The Valiant's Charge
            [questKeys.preQuestSingle] = {13696,13711},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13723] = { -- GNOME The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33793}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13724] = { -- DRAENEI The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33790}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13725] = { -- NIGHT ELF The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33794}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13726] = { -- ORC The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33799}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13727] = { -- TROLL The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33796}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13728] = { -- TAUREN The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33792}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13729] = { -- UNDEAD The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33798}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13731] = { -- BLOOD ELF The Valiant's Challenge
            [questKeys.objectives] = {{{33707,"Argent Champion defeated"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33791}}},
                {nil, Questie.ICON_TYPE_TALK, l10n("Speak to Squire Danny"), 0, {{"monster", 33518}}},
            },
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13741] = { -- DWARF A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13685,13703},
            [questKeys.exclusiveTo] = {13713,13600,13603,13616,13742,13743,13746,13747,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredSourceItems] = {},
        },
        [13742] = { -- DWARF A Worthy Weapon
            [questKeys.preQuestSingle] = {13685,13703},
            [questKeys.exclusiveTo] = {13713,13600,13603,13616,13741,13743,13746,13747,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13743] = { -- DWARF The Edge Of Winter
            [questKeys.preQuestSingle] = {13685,13703},
            [questKeys.exclusiveTo] = {13713,13600,13603,13616,13741,13742,13746,13747,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13744] = { -- DWARF A Valiant's Field Training
            [questKeys.preQuestSingle] = {13685,13703},
            [questKeys.exclusiveTo] = {13713,13592,13749,13755,13760},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13745] = { -- DWARF The Grand Melee
            [questKeys.preQuestSingle] = {13685,13703},
            [questKeys.exclusiveTo] = {13713,13665,13750,13761,13756},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33795}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13746] = { -- GNOME A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13688,13704},
            [questKeys.exclusiveTo] = {13723,13600,13603,13616,13741,13742,13743,13747,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredSourceItems] = {},
        },
        [13747] = { -- GNOME A Worthy Weapon
            [questKeys.preQuestSingle] = {13688,13704},
            [questKeys.exclusiveTo] = {13723,13600,13603,13616,13741,13742,13743,13746,13748,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13748] = { -- GNOME The Edge Of Winter
            [questKeys.preQuestSingle] = {13688,13704},
            [questKeys.exclusiveTo] = {13723,13600,13603,13616,13741,13742,13743,13746,13747,13757,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13749] = { -- GNOME A Valiant's Field Training
            [questKeys.preQuestSingle] = {13688,13704},
            [questKeys.exclusiveTo] = {13723,13592,13744,13755,13760},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13750] = { -- GNOME The Grand Melee
            [questKeys.preQuestSingle] = {13688,13704},
            [questKeys.exclusiveTo] = {13723,13665,13745,13761,13756},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33793}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13752] = { -- DRAENEI A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13690,13705},
            [questKeys.exclusiveTo] = {13724,13600,13603,13616,13741,13742,13743,13746,13747,13748,13757,13758,13759,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredSourceItems] = {},
        },
        [13753] = { -- DRAENEI A Worthy Weapon
            [questKeys.preQuestSingle] = {13690,13705},
            [questKeys.exclusiveTo] = {13724,13600,13603,13616,13741,13742,13743,13746,13747,13748,13757,13758,13759,13752,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13754] = { -- DRAENEI The Edge Of Winter
            [questKeys.preQuestSingle] = {13690,13705},
            [questKeys.exclusiveTo] = {13724,13600,13603,13616,13741,13742,13743,13746,13747,13748,13757,13758,13759,13752,13753},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13755] = { -- DRAENEI A Valiant's Field Training
            [questKeys.preQuestSingle] = {13690,13705},
            [questKeys.exclusiveTo] = {13724,13592,13744,13749,13760},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13756] = { -- DRAENEI The Grand Melee
            [questKeys.preQuestSingle] = {13690,13705},
            [questKeys.exclusiveTo] = {13724,13665,13745,13750,13761},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33790}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13757] = { -- NIGHT ELF A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13689,13706},
            [questKeys.exclusiveTo] = {13725,13600,13603,13616,13741,13742,13743,13746,13747,13748,13758,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredSourceItems] = {},
        },
        [13758] = { -- NIGHT ELF A Worthy Weapon
            [questKeys.preQuestSingle] = {13689,13706},
            [questKeys.exclusiveTo] = {13725,13600,13603,13616,13741,13742,13743,13746,13747,13748,13757,13759,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13759] = { -- NIGHT ELF The Edge Of Winter
            [questKeys.preQuestSingle] = {13689,13706},
            [questKeys.exclusiveTo] = {13725,13600,13603,13616,13741,13742,13743,13746,13747,13748,13757,13758,13752,13753,13754},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13760] = { -- NIGHT ELF A Valiant's Field Training
            [questKeys.preQuestSingle] = {13689,13706},
            [questKeys.exclusiveTo] = {13725,13592,13744,13749,13755},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13761] = { -- NIGHT ELF The Grand Melee
            [questKeys.preQuestSingle] = {13689,13706},
            [questKeys.exclusiveTo] = {13725,13665,13745,13750,13756},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33794}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13762] = { -- ORC A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13691,13707},
            [questKeys.exclusiveTo] = {13726,13763,13764,13768,13769,13770,13773,13774,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredSourceItems] = {},
        },
        [13763] = { -- ORC A Worthy Weapon
            [questKeys.preQuestSingle] = {13691,13707},
            [questKeys.exclusiveTo] = {13726,13762,13764,13768,13769,13770,13773,13774,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13764] = { -- ORC The Edge Of Winter
            [questKeys.preQuestSingle] = {13691,13707},
            [questKeys.exclusiveTo] = {13726,13762,13763,13768,13769,13770,13773,13774,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13765] = { -- ORC A Valiant's Field Training
            [questKeys.preQuestSingle] = {13691,13707},
            [questKeys.exclusiveTo] = {13726,13771,13776,13781,13786},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13767] = { -- ORC The Grand Melee
            [questKeys.preQuestSingle] = {13691,13707},
            [questKeys.exclusiveTo] = {13726,13772,13777,13782,13787},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33799}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13768] = { -- TROLL A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13693,13708},
            [questKeys.exclusiveTo] = {13727,13762,13763,13764,13769,13770,13773,13774,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredSourceItems] = {},
        },
        [13769] = { -- TROLL A Worthy Weapon
            [questKeys.preQuestSingle] = {13693,13708},
            [questKeys.exclusiveTo] = {13727,13762,13763,13764,13768,13770,13773,13774,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13770] = { -- TROLL The Edge Of Winter
            [questKeys.preQuestSingle] = {13693,13708},
            [questKeys.exclusiveTo] = {13727,13762,13763,13764,13768,13769,13773,13774,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13771] = { -- TROLL A Valiant's Field Training
            [questKeys.preQuestSingle] = {13693,13708},
            [questKeys.exclusiveTo] = {13727,13765,13776,13781,13786},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13772] = { -- TROLL The Grand Melee
            [questKeys.preQuestSingle] = {13693,13708},
            [questKeys.exclusiveTo] = {13727,13767,13777,13782,13787},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33796}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13773] = { -- TAUREN A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13694,13709},
            [questKeys.exclusiveTo] = {13728,13762,13763,13764,13768,13769,13770,13774,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredSourceItems] = {},
        },
        [13774] = { -- TAUREN A Worthy Weapon
            [questKeys.preQuestSingle] = {13694,13709},
            [questKeys.exclusiveTo] = {13728,13762,13763,13764,13768,13769,13770,13773,13775,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13775] = { -- TAUREN The Edge Of Winter
            [questKeys.preQuestSingle] = {13694,13709},
            [questKeys.exclusiveTo] = {13728,13762,13763,13764,13768,13769,13770,13773,13774,13778,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13776] = { -- TAUREN A Valiant's Field Training
            [questKeys.preQuestSingle] = {13694,13709},
            [questKeys.exclusiveTo] = {13728,13765,13771,13781,13786},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13777] = { -- TAUREN The Grand Melee
            [questKeys.preQuestSingle] = {13694,13709},
            [questKeys.exclusiveTo] = {13728,13767,13772,13782,13787},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33792}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13778] = { -- UNDEAD A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13695,13710},
            [questKeys.exclusiveTo] = {13729,13762,13763,13764,13768,13769,13770,13773,13774,13775,13779,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredSourceItems] = {},
        },
        [13779] = { -- UNDEAD A Worthy Weapon
            [questKeys.preQuestSingle] = {13695,13710},
            [questKeys.exclusiveTo] = {13729,13762,13763,13764,13768,13769,13770,13773,13774,13775,13778,13780,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13780] = { -- UNDEAD The Edge Of Winter
            [questKeys.preQuestSingle] = {13695,13710},
            [questKeys.exclusiveTo] = {13729,13762,13763,13764,13768,13769,13770,13773,13774,13775,13778,13779,13783,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13781] = { -- UNDEAD A Valiant's Field Training
            [questKeys.preQuestSingle] = {13695,13710},
            [questKeys.exclusiveTo] = {13729,13765,13771,13776,13786},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13782] = { -- UNDEAD The Grand Melee
            [questKeys.preQuestSingle] = {13695,13710},
            [questKeys.exclusiveTo] = {13729,13767,13772,13777,13787},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33798}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13783] = { -- BLOOD ELF A Blade Fit For A Champion
            [questKeys.preQuestSingle] = {13696,13711},
            [questKeys.exclusiveTo] = {13731,13762,13763,13764,13768,13769,13770,13773,13774,13775,13778,13779,13780,13784,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Use Warts-B-Gone Lip Balm and /kiss a Lake Frog"), 0, {{"monster", 33224}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredSourceItems] = {},
        },
        [13784] = { -- BLOOD ELF A Worthy Weapon
            [questKeys.preQuestSingle] = {13696,13711},
            [questKeys.exclusiveTo] = {13731,13762,13763,13764,13768,13769,13770,13773,13774,13775,13778,13779,13780,13783,13785},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Place the flower offering"), 0, {{"monster", 33273}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13785] = { -- BLOOD ELF The Edge Of Winter
            [questKeys.preQuestSingle] = {13696,13711},
            [questKeys.exclusiveTo] = {13731,13762,13763,13764,13768,13769,13770,13773,13774,13775,13778,13779,13780,13783,13784},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use Everburning Ember"), 0, {{"monster", 33303}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13786] = { -- BLOOD ELF A Valiant's Field Training
            [questKeys.preQuestSingle] = {13696,13711},
            [questKeys.exclusiveTo] = {13731,13765,13771,13776,13781},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13787] = { -- BLOOD ELF The Grand Melee
            [questKeys.preQuestSingle] = {13696,13711},
            [questKeys.exclusiveTo] = {13731,13767,13772,13777,13782},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33791}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13788] = {
            [questKeys.preQuestSingle] = {13664},
        },
        [13789] = {
            [questKeys.preQuestSingle] = {13700},
        },
        [13790] = {
            [questKeys.preQuestSingle] = {13700},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33794},{"monster", 33800},{"monster", 33793},{"monster", 33795},{"monster", 33790}}}},
        },
        [13791] = {
            [questKeys.preQuestSingle] = {13700},
        },
        [13793] = {
            [questKeys.preQuestSingle] = {13700},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33794},{"monster", 33800},{"monster", 33793},{"monster", 33795},{"monster", 33790}}}},
        },
        [13795] = {
            [questKeys.preQuestSingle] = {13702,13732,13733,13734,13735,13736,13737,13738,13739,13740},
        },
        [13809] = {
            [questKeys.preQuestSingle] = {13664},
        },
        [13810] = {
            [questKeys.preQuestSingle] = {13701},
        },
        [13811] = {
            [questKeys.preQuestSingle] = {13701},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33796},{"monster", 33798},{"monster", 33799},{"monster", 33791},{"monster", 33792}}}},
        },
        [13812] = {
            [questKeys.preQuestSingle] = {13664},
        },
        [13813] = {
            [questKeys.preQuestSingle] = {13701},
        },
        [13814] = {
            [questKeys.preQuestSingle] = {13701},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33796},{"monster", 33798},{"monster", 33799},{"monster", 33791},{"monster", 33792}}}},
        },
        [13816] = {
            [questKeys.triggerEnd] = {"Entrance to Celestial Planetarium located",{[zoneIDs.THE_ARCHIVUM]={{60,46.3}},[zoneIDs.ULDUAR]={{-1,-1}}}},
            [questKeys.preQuestSingle] = {13817},
        },
        [13817] = {
            [questKeys.preQuestSingle] = {},
            [questKeys.startedBy] = {nil,nil,{45857}},
        },
        [13819] = {
            [questKeys.startedBy] = {nil,nil,{46053}},
        },
        [13820] = {
            [questKeys.startedBy] = {{33817}},
            [questKeys.finishedBy] = {{33434}},
            [questKeys.exclusiveTo] = {13627},
        },
        [13825] = {
            [questKeys.startedBy] = {{8125}},
            [questKeys.finishedBy] = {{8125}},
            -- [questKeys.exclusiveTo] = {6610}, -- This is not ideal. You can only do 13825 if you completed 6610 prior to Wotlk. But now with Wotlk you do 6610 and then can not do 13825
            [questKeys.requiredSkill] = {185,225},
        },
        [13826] = {
            [questKeys.startedBy] = {{12919}},
            [questKeys.finishedBy] = {{12919}},
            -- [questKeys.exclusiveTo] = {6607}, -- This is not ideal. You can only do 13826 if you completed 6607 prior to Wotlk. But now with Wotlk you do 6607 and then can not do 13826
            [questKeys.requiredSkill] = {356,225},
        },
        [13828] = {
            [questKeys.objectives] = {{{33973,"Jeran Lockwood's advice"},{33229,"Use Thrust on Melee Target"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33843}}}},
        },
        [13829] = {
            [questKeys.objectives] = {{{33973,"Jeran Lockwood's advice"},{33229,"Use Thrust on Melee Target"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33842}}}},
        },
        [13830] = {
            [questKeys.triggerEnd] = {"Discover the Ghostfish mystery",{[zoneIDs.SHOLAZAR_BASIN]={{48.89,62.29,}}}},
            [questKeys.extraObjectives] = {{{[zoneIDs.SHOLAZAR_BASIN]={{48.2,63.4}}}, Questie.ICON_TYPE_NODE_FISH, l10n("Fish for Phantom Ghostfish")}},
            [questKeys.requiredSourceItems] = {45902},
        },
        [13832] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.THE_UNDERBELLY]={{46,68}}}, Questie.ICON_TYPE_NODE_FISH, l10n("Fish for Corroded Jewelry")}},
        },
        [13833] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.BOREAN_TUNDRA]={{57.5,33.2},{62.2,64.2},{45,45}}}, Questie.ICON_TYPE_SLAY, l10n("Slay any beast, jump in any water location and fish in the Pool of Blood"), 0}},
        },
        [13834] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.WINTERGRASP]={{70,36},{63,60},{50,44},{37.6,36},{56,66},{42,75},{34.7,19.5}}}, Questie.ICON_TYPE_NODE_FISH, l10n("Fish for Terror Fish"), 0}},
        },
        [13835] = {
            [questKeys.objectives] = {{{33974,"Valis Windchaser's advice"},{33243,"Use Shield-Breaker on vulnerable Ranged Target"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33843}}}},
        },
        [13836] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.DALARAN]={{67.43,61.38},{62.43,70.05}}}, Questie.ICON_TYPE_NODE_FISH, l10n("Fish for Severed Arm")}},
        },
        [13837] = {
            [questKeys.objectives] = {{{33972,"Rugan Steelbelly's advice"},{33272,"Charge vulnerable Charge Target"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33843}}}},
        },
        [13838] = {
            [questKeys.objectives] = {{{33974,"Valis Windchaser's advice"},{33243,"Use Shield-Breaker on vulnerable Ranged Target"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33842}}}},
        },
        [13839] = {
            [questKeys.objectives] = {{{33972,"Rugan Steelbelly's advice"},{33272,"Charge vulnerable Charge Target"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 33842}}}},
        },
        [13843] = {
            [questKeys.startedBy] = {nil,{191761}},
            [questKeys.finishedBy] = {nil,{191761}},
            [questKeys.preQuestSingle] = {12889},
            [questKeys.requiredSpell] = -55252,
            [questKeys.requiredSkill] = {profKeys.ENGINEERING,400},
        },
        [13846] = {
            [questKeys.preQuestSingle] = {13700,13701},
            [questKeys.requiredMaxRep] = {1106,42000},
        },
        [13847] = { -- HUMAN At The Enemy's Gates
            [questKeys.preQuestSingle] = {13684,13593},
            [questKeys.exclusiveTo] = {13699,13851,13852,13854,13855},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13850] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Melee attack Venomhide Ravasaur"), 0, {{"monster", 6508}}}},
        },
        [13851] = { -- DWARF At The Enemy's Gates
            [questKeys.preQuestSingle] = {13685,13703},
            [questKeys.exclusiveTo] = {13713,13847,13852,13854,13855},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13852] = { -- GNOME At The Enemy's Gates
            [questKeys.preQuestSingle] = {13688,13704},
            [questKeys.exclusiveTo] = {13723,13847,13851,13854,13855},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13854] = { -- DRAENEI At The Enemy's Gates
            [questKeys.preQuestSingle] = {13690,13705},
            [questKeys.exclusiveTo] = {13724,13847,13851,13852,13855},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13855] = { -- NIGHT ELF At The Enemy's Gates
            [questKeys.preQuestSingle] = {13689,13706},
            [questKeys.exclusiveTo] = {13725,13847,13851,13852,13854},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [13856] = { -- ORC At The Enemy's Gates
            [questKeys.preQuestSingle] = {13691,13707},
            [questKeys.exclusiveTo] = {13726,13857,13858,13859,13860},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13857] = { -- TROLL At The Enemy's Gates
            [questKeys.preQuestSingle] = {13693,13708},
            [questKeys.exclusiveTo] = {13727,13856,13858,13859,13860},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13858] = { -- TAUREN At The Enemy's Gates
            [questKeys.preQuestSingle] = {13694,13709},
            [questKeys.exclusiveTo] = {13728,13856,13857,13859,13860},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13859] = { -- BLOOD ELF At The Enemy's Gates
            [questKeys.preQuestSingle] = {13696,13711},
            [questKeys.exclusiveTo] = {13731,13856,13857,13858,13860},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13860] = { -- UNDEAD At The Enemy's Gates
            [questKeys.preQuestSingle] = {13695,13710},
            [questKeys.exclusiveTo] = {13729,13856,13857,13858,13859},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [13861] = {
            [questKeys.preQuestSingle] = {13700},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
        },
        [13862] = {
            [questKeys.preQuestSingle] = {13701},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
        },
        [13863] = {
            [questKeys.preQuestSingle] = {13701},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
        },
        [13864] = {
            [questKeys.preQuestSingle] = {13700},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 34125}}}},
        },
        [13887] = {
            [questKeys.preQuestSingle] = {13850},
        },
        [13906] = {
            [questKeys.preQuestSingle] = {13887},
        },
        [13929] = {
            [questKeys.triggerEnd] = {"Roo taken to visit Grizzlemaw", {[zoneIDs.GRIZZLY_HILLS]={{50.7,43.9}}}}, -- oracle orphan
            [questKeys.preQuestSingle] = {13926},
            [questKeys.exclusiveTo] = {13927},
        },
        [13930] = {
            [questKeys.triggerEnd] = {"Keken taken to visit Grizzlemaw", {[zoneIDs.GRIZZLY_HILLS]={{50.7,43.9}}}}, -- wolvar orphan
            [questKeys.preQuestSingle] = {13927},
            [questKeys.exclusiveTo] = {13926},
        },
        [13931] = {
            [questKeys.preQuestSingle] = {11409},
        },
        [13932] = {
            [questKeys.preQuestSingle] = {11318},
        },
        [13933] = {
            [questKeys.triggerEnd] = {"Roo taken to visit Bronze Dragonshrine", {[zoneIDs.DRAGONBLIGHT]={{72,39}}}}, -- oracle orphan
            [questKeys.preQuestSingle] = {13926},
            [questKeys.exclusiveTo] = {13927},
        },
        [13934] = {
            [questKeys.triggerEnd] = {"Keken taken to visit Bronze Dragonshrine", {[zoneIDs.DRAGONBLIGHT]={{72,39}}}}, -- wolvar orphan
            [questKeys.preQuestSingle] = {13927},
            [questKeys.exclusiveTo] = {13926},
        },
        [13937] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Buy a Small Paper Zeppelin"), 0, {{"monster", 29478}}}},
            [questKeys.objectives] = {{{33533,"Throw Small Paper Zeppelin to Roo"},},nil,nil,nil,},
            [questKeys.preQuestGroup] = {13954,13956},
            [questKeys.nextQuestInChain] = 13959,
            [questKeys.exclusiveTo] = {13927},
            [questKeys.requiredSourceItems] = {46693},
            [questKeys.sourceItemId] = 46397,
        },
        [13938] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Buy a Small Paper Zeppelin"), 0, {{"monster", 29478}}}},
            [questKeys.objectives] = {{{33532,"Throw Small Paper Zeppelin to Kekek"},},nil,nil,nil,},
            [questKeys.preQuestGroup] = {13955,13957},
            [questKeys.nextQuestInChain] = 13960,
            [questKeys.exclusiveTo] = {13926},
            [questKeys.requiredSourceItems] = {46693},
            [questKeys.sourceItemId] = 46396,
        },
        [13950] = {
            [questKeys.triggerEnd] = {"Roo taken to visit Winterfin Retreat", {[zoneIDs.BOREAN_TUNDRA]={{43.5,13.6}}}}, -- oracle orphan
            [questKeys.preQuestSingle] = {13926},
            [questKeys.exclusiveTo] = {13927},
        },
        [13951] = {
            [questKeys.triggerEnd] = {"Keken taken to visit Snowfall Glade", {[zoneIDs.DRAGONBLIGHT]={{46,61},{44,70}}}}, -- wolvar orphan
            [questKeys.preQuestSingle] = {13927},
            [questKeys.exclusiveTo] = {13926},
        },
        [13954] = {
            [questKeys.objectives] = {{{26917,"Roo taken to visit Alexstrasza the Life-Binder",Questie.ICON_TYPE_EVENT}}},
            [questKeys.preQuestGroup] = {13929,13933,13950},
            [questKeys.exclusiveTo] = {13927},
        },
        [13955] = {
            [questKeys.objectives] = {{{26917,"Keken taken to visit Alexstrasza the Life-Binder",Questie.ICON_TYPE_EVENT}}},
            [questKeys.preQuestGroup] = {13930,13934,13951},
            [questKeys.exclusiveTo] = {13926},
        },
        [13956] = {
            [questKeys.objectives] = {{{28092,"Roo taken to visit The Etymidian",Questie.ICON_TYPE_EVENT}}},
            [questKeys.extraObjectives] = {{{[zoneIDs.SHOLAZAR_BASIN]={{40.3,83.3}}}, Questie.ICON_TYPE_EVENT, l10n("Use the waygate to teleport to Un'goro Crater")}},
            [questKeys.preQuestGroup] = {13929,13933,13950},
            [questKeys.exclusiveTo] = {13927},
        },
        [13957] = {
            [questKeys.objectives] = {{{27986,"Keken taken to visit Hemet Nesingwary",Questie.ICON_TYPE_EVENT}}},
            [questKeys.preQuestGroup] = {13930,13934,13951},
            [questKeys.exclusiveTo] = {13926},
        },
        [13959] = {
            [questKeys.preQuestSingle] = {13937},
            [questKeys.exclusiveTo] = {13927},
        },
        [13960] = {
            [questKeys.preQuestSingle] = {13938},
            [questKeys.exclusiveTo] = {13926},
        },
        [13966] = {
            [questKeys.exclusiveTo] = {11528,13203},
        },
        [14016] = {
            [questKeys.specialFlags] = nil,
            [questKeys.questFlags] = 128,
            [questKeys.objectives] = {nil,nil,nil,nil,{{{35127},35127,"Investigate the Black Knight's Grave"}}},
        },
        [14023] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14024,
        },
        [14024] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14028,
            [questKeys.preQuestSingle] = {14023},
        },
        [14028] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14030,
            [questKeys.preQuestSingle] = {14024},
        },
        [14030] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14033,
            [questKeys.preQuestSingle] = {14028},
        },
        [14033] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14035,
            [questKeys.preQuestSingle] = {14030},
        },
        [14035] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.preQuestSingle] = {14033},
        },
        [14037] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14040,
        },
        [14040] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14041,
            [questKeys.preQuestSingle] = {14037},
        },
        [14041] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14043,
            [questKeys.preQuestSingle] = {14040},
        },
        [14043] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14044,
            [questKeys.preQuestSingle] = {14041},
        },
        [14044] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.nextQuestInChain] = 14047,
            [questKeys.preQuestSingle] = {14043},
        },
        [14047] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
            [questKeys.preQuestSingle] = {14044},
        },
        [14048] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14051] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14053] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14054] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14055] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14058] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14059] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14060] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14061] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14062] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14064] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14065] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.zoneOrSort] = sortKeys.PILGRIMS_BOUNTY,
        },
        [14076] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use your drum near a Mysterious Snow Mound"), 0, {{"object", 195309}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [14077] = { -- The Light's Mercy
            [questKeys.objectives] = {{{34852,nil,Questie.ICON_TYPE_INTERACT}}},
        },
        [14079] = {
            [questKeys.requiredRaces] = raceIDs.HUMAN,
        },
        [14081] = {
            [questKeys.requiredRaces] = raceIDs.BLOOD_ELF,
        },
        [14082] = {
            [questKeys.requiredRaces] = raceIDs.DRAENEI,
        },
        [14083] = {
            [questKeys.requiredRaces] = raceIDs.DWARF,
        },
        [14084] = {
            [questKeys.requiredRaces] = raceIDs.GNOME,
        },
        [14085] = {
            [questKeys.requiredRaces] = raceIDs.NIGHT_ELF,
        },
        [14086] = {
            [questKeys.requiredRaces] = raceIDs.ORC,
        },
        [14087] = {
            [questKeys.requiredRaces] = raceIDs.TAUREN,
        },
        [14088] = {
            [questKeys.requiredRaces] = raceIDs.TROLL,
        },
        [14089] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD,
        },
        [14090] = {
            [questKeys.objectives] = {{{29618,"Snowblind Follower captured",Questie.ICON_TYPE_INTERACT}}},
            [questKeys.requiredSourceItems] = {},
        },
        [14092] = { -- Breakfast Of Champions
            [questKeys.exclusiveTo] = {14141,14145},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Use your drum near a Mysterious Snow Mound"), 0, {{"object", 195309}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [14101] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.HROTHGARS_LANDING]={{50.4,15.6}}}, Questie.ICON_TYPE_EVENT, l10n("Summon Drottinn Hrothgar using the Kvaldir War Horn")}},
            [questKeys.requiredSourceItems] = {},
        },
        [14102] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.HROTHGARS_LANDING]={{43.8,24.6}}}, Questie.ICON_TYPE_EVENT, l10n("Summon Mistcaller Yngvar using the Mistcaller's Charm")}},
            [questKeys.requiredSourceItems] = {},
        },
        [14103] = {
            [questKeys.specialFlags] = 1,
            [questKeys.startedBy] = {{28701}},
            [questKeys.finishedBy] = {{28701}},
        },
        [14104] = {
            [questKeys.extraObjectives] = {{{[zoneIDs.HROTHGARS_LANDING]={{58.59,31.72}}}, Questie.ICON_TYPE_EVENT, l10n("Provoke Ornolf the Scarred using the Captured Kvaldir Banner")}},
            [questKeys.requiredSourceItems] = {},
        },
        [14107] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{32149},32149,"Fallen Hero's Spirit blessed",Questie.ICON_TYPE_INTERACT}}},
            [questKeys.requiredSourceItems] = {47035},
        },
        [14108] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Mount up"), 0, {{"monster", 35117}}}},
            [questKeys.objectives] = {{{34925,"Hurl Spears at North Sea Kraken"},{35092}}},
        },
        [14112] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Take chum"), 0, {{"object", 195352}}}},
        },
        [14136] = { -- Rescue at Sea
            [questKeys.exclusiveTo] = {14140,14144,14143},
        },
        [14140] = { -- Stop The Aggressors
            [questKeys.exclusiveTo] = {14144,14136,14143},
        },
        [14141] = { -- Gormok Wants His Snobolds
            [questKeys.exclusiveTo] = {14092,14145},
            [questKeys.objectives] = {{{29618,"Snowblind Follower captured",Questie.ICON_TYPE_INTERACT}}},
            [questKeys.requiredSourceItems] = {},
        },
        [14143] = { -- A Leg Up
            [questKeys.exclusiveTo] = {14136,14140,14144},
        },
        [14144] = { -- The Light's Mercy
            [questKeys.exclusiveTo] = {14136,14140,14143},
            [questKeys.objectives] = {{{34852,nil,Questie.ICON_TYPE_INTERACT}}},
        },
        [14145] = { -- What Do You Feed a Yeti, Anyway?
            [questKeys.exclusiveTo] = {14092,14141},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_LOOT, l10n("Take chum"), 0, {{"object", 195353}}}},
        },
        [14151] = {
            [questKeys.objectives] = {},
            [questKeys.requiredSpell] = -66659,
            [questKeys.requiredSkill] = {171,450},
            [questKeys.triggerEnd] = {"Epic Gem Transmutes", {[zoneIDs.DALARAN]={{42.25,32.06}}}},
        },
        [14163] = {
            [questKeys.triggerEnd] = {"Victory in the Isle of Conquest", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.exclusiveTo] = {11335,11336,11337,11338,13405},
        },
        [14164] = {
            [questKeys.triggerEnd] = {"Victory in the Isle of Conquest", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.exclusiveTo] = {11339,11340,11341,11342,13407},
        },
        [14178] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{45.6,45.8}},
            }},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {14179,14180,13427},
        },
        [14179] = {
            [questKeys.triggerEnd] = {"Victory in the Eye of the Storm", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {14178,14179,13427},
        },
        [14180] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ASHENVALE]={{61.8,83.8}},
            }},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {14178,14179,13427},
        },
        [14181] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{73.3,30}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {13428,14182,14183},
        },
        [14182] = {
            [questKeys.triggerEnd] = {"Victory in Eye of the Storm", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {13428,14181,14183},
        },
        [14183] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.THE_BARRENS]={{47,9.3}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.exclusiveTo] = {13428,14181,14182},
        },
        [14199] = {
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.exclusiveTo] = {13245,13246,13247,13248,13249,13250,13251,13252,13253,13254,13255,13256},
        },
        [14352] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [14349] = {
            [questKeys.preQuestGroup] = {6022,6042,6133,6135,6136},
        },
        [14418] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD,
        },
        [14419] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD,
        },
        [14420] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD,
        },
        [14421] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD,
        },
        [14444] = {
            [questKeys.objectives] = {{{27990,"Ask Krasus about the hilt's origins"}}},
        },
        [14483] = {
            [questKeys.startedBy] = {nil,nil,{49641}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [20438] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Ask Shandy Glossgleam to lend you a tabard"), 0, {{"monster", 36856}}}},
        },
        [24216] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.THE_BARRENS]={{47,9.3}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 50,
            [questKeys.exclusiveTo] = {24221},
        },
        [24217] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.THE_BARRENS]={{47,9.3}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 20,
        },
        [24218] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ASHENVALE]={{61.8,83.8}},
            }},
            [questKeys.startedBy] = {{15351}},
            [questKeys.finishedBy] = {{15351}},
            [questKeys.requiredMaxLevel] = 50,
            [questKeys.exclusiveTo] = {24220},
        },
        [24219] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ASHENVALE]={{61.8,83.8}},
            }},
            [questKeys.startedBy] = {{15351}},
            [questKeys.finishedBy] = {{15351}},
            [questKeys.requiredMaxLevel] = 20,
        },
        [24220] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{45.6,45.8}},
            }},
            [questKeys.startedBy] = {{15351}},
            [questKeys.finishedBy] = {{15351}},
            [questKeys.requiredMaxLevel] = 50,
            [questKeys.exclusiveTo] = {24218},
        },
        [24221] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{73.3,30}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 50,
            [questKeys.exclusiveTo] = {24216},
        },
        [24223] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{45.6,45.8}},
            }},
            [questKeys.startedBy] = {{15351}},
            [questKeys.finishedBy] = {{15351}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.exclusiveTo] = {24224,24427},
        },
        [24224] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ASHENVALE]={{61.8,83.8}},
            }},
            [questKeys.startedBy] = {{15351}},
            [questKeys.finishedBy] = {{15351}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.exclusiveTo] = {24223,24427},
        },
        [24225] = {
            [questKeys.triggerEnd] = {"Victory in Warsong Gulch", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.THE_BARRENS]={{47,9.3}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.exclusiveTo] = {24226,24426},
        },
        [24226] = {
            [questKeys.triggerEnd] = {"Victory in Arathi Basin", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ARATHI_HIGHLANDS]={{73.3,30}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.exclusiveTo] = {24225,24426},
        },
        [24426] = {
            [questKeys.triggerEnd] = {"Victory in Alterac Valley", {
                [zoneIDs.ORGRIMMAR]={{80.68,30.51},{36.94,65.36}},
                [zoneIDs.THUNDER_BLUFF]={{57.8,76.4}},
                [zoneIDs.UNDERCITY]={{58.27,97.9}},
                [zoneIDs.SILVERMOON_CITY]={{97,38.3}},
                [zoneIDs.SHATTRATH_CITY]={{66.96,56.6}},
                [zoneIDs.DALARAN]={{58.19,20.59}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ALTERAC_MOUNTAINS]={{63.3,60.2}},
            }},
            [questKeys.startedBy] = {{15350}},
            [questKeys.finishedBy] = {{15350}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.exclusiveTo] = {24225,24226},
        },
        [24427] = {
            [questKeys.triggerEnd] = {"Victory in Alterac Valley", {
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
                [zoneIDs.ALTERAC_MOUNTAINS]={{39.4,82.2}},
            }},
            [questKeys.startedBy] = {{15351}},
            [questKeys.finishedBy] = {{15351}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.exclusiveTo] = {24223,24224},
        },
        [24428] = {
            [questKeys.startedBy] = {nil,nil,{49644}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [24429] = {
            [questKeys.startedBy] = {nil,nil,{49643}},
        },
        [24431] = {
            [questKeys.specialFlags] = 1,
        },
        [24442] = { -- Battle Plans Of The Kvaldir
            [questKeys.startedBy] = {nil,nil,{49676}},
        },
        [24461] = {
            [questKeys.requiredSourceItems] = {49718,49723},
        },
        [24476] = {
            [questKeys.requiredSourceItems] = {},
        },
        [24480] = {
            [questKeys.requiredSourceItems] = {},
        },
        [24498] = {
            [questKeys.objectives] = {{{36494}},nil,nil,nil,{{{36764,36765,36766,36767},36764,"Alliance Slaves freed"}}},
            [questKeys.preQuestSingle] = {24683},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Free the slave"), 1, {{"object", 202168}}}},
        },
        [24499] = {
            [questKeys.objectives] = {{{36497},{36502}}},
        },
        [24500] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.finishedBy] = {{36955}},
            [questKeys.objectives] = {{{36955,"Find Jaina Proudmoore"},{36954,"Escape the Lich King"}}},
        },
        [24507] = {
            [questKeys.objectives] = {{{36494}},nil,nil,nil,{{{36770,36771,36772,36773},36770,"Horde Slaves freed"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Free the slave"), 1, {{"object", 202168}}}},
        },
        [24510] = {
            [questKeys.reputationReward] = {{1050,25}},
        },
        [24511] = {
            [questKeys.objectives] = {{{36497},{36502}}},
        },
        [24535] = {
            [questKeys.objectives] = {{{37205,"Thalorien's Blessing obtained"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Examine the remains"), 0, {{"monster", 37552}}}},
        },
        [24536] = {
            [questKeys.objectives] = {{{3296,nil,Questie.ICON_TYPE_INTERACT}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Snagglebolt's Air Analyzer on perfumed guards"), 0, {{"monster", 3296}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [24541] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Grab the package"), 0, {{"monster", 37671}}}},
            [questKeys.sourceItemId] = 49867,
        },
        [24545] = {
            [questKeys.requiredClasses] = classIDs.WARRIOR + classIDs.PALADIN + classIDs.DEATH_KNIGHT,
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {nil,{201742}},
            [questKeys.nextQuestInChain] = 24743,
            [questKeys.requiredMinRep] = {1156,3000},
        },
        [24547] = {
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.preQuestSingle] = {24743},
        },
        [24548] = {
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.preQuestSingle] = {24757},
            [questKeys.nextQuestInChain] = 24912,
        },
        [24549] = {
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.preQuestSingle] = {24912},
            [questKeys.nextQuestInChain] = 24748,
        },
        [24553] = {
            [questKeys.requiredClasses] = classIDs.WARRIOR + classIDs.PALADIN + classIDs.ROGUE + classIDs.HUNTER + classIDs.DEATH_KNIGHT + classIDs.MAGE + classIDs.WARLOCK,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ask the warden to take you to the Sunwell"), 0, {{"monster", 37523}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("After restoring Quel'Delar, go back to Dalaran"), 0, {{"object", 194481}}},
            },
        },
        [24555] = {
            [questKeys.objectives] = {{{27990,"Ask Krasus about the hilt's origins"}}},
        },
        [24556] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Ask Shandy Glossgleam to lend you a tabard"), 0, {{"monster", 36856}}}},
        },
        [24559] = {
            [questKeys.requiredSourceItems] = {49718,49723},
        },
        [24560] = {
            [questKeys.requiredSourceItems] = {},
        },
        [24561] = {
            [questKeys.requiredSourceItems] = {},
        },
        [24563] = {
            [questKeys.objectives] = {{{37205,"Thalorien's Blessing obtained"}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Examine the remains"), 0, {{"monster", 37552}}}},
        },
        [24564] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD + raceIDs.ORC + raceIDs.TROLL + raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.WARRIOR + classIDs.PALADIN + classIDs.ROGUE + classIDs.HUNTER + classIDs.DEATH_KNIGHT + classIDs.MAGE + classIDs.WARLOCK,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ask the warden to take you to the Sunwell"), 0, {{"monster", 37523}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("After restoring Quel'Delar, go back to Dalaran"), 0, {{"object", 194481}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [24579] = {
            [questKeys.exclusiveTo] = {24580,24581,24582,24583,24584,24585,24586,24587,24588,24589,24590},
        },
        [24580] = {
            [questKeys.exclusiveTo] = {24579,24581,24582,24583,24584,24585,24586,24587,24588,24589,24590},
        },
        [24581] = {
            [questKeys.exclusiveTo] = {24579,24580,24582,24583,24584,24585,24586,24587,24588,24589,24590},
        },
        [24582] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24583,24584,24585,24586,24587,24588,24589,24590},
        },
        [24583] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24584,24585,24586,24587,24588,24589,24590},
        },
        [24584] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24583,24585,24586,24587,24588,24589,24590},
        },
        [24585] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24583,24584,24586,24587,24588,24589,24590},
        },
        [24586] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24583,24584,24585,24587,24588,24589,24590},
        },
        [24587] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24583,24584,24585,24586,24588,24589,24590},
        },
        [24588] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24583,24584,24585,24586,24587,24589,24590},
        },
        [24589] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24583,24584,24585,24586,24587,24588,24590},
        },
        [24590] = {
            [questKeys.exclusiveTo] = {24579,24580,24581,24582,24583,24584,24585,24586,24587,24588,24589},
        },
        [24594] = {
            [questKeys.requiredRaces] = raceIDs.BLOOD_ELF,
            [questKeys.requiredClasses] = classIDs.WARRIOR + classIDs.PALADIN + classIDs.ROGUE + classIDs.HUNTER + classIDs.DEATH_KNIGHT + classIDs.MAGE + classIDs.WARLOCK,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ask the warden to take you to the Sunwell"), 0, {{"monster", 37523}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("After restoring Quel'Delar, go back to Dalaran"), 0, {{"object", 194481}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [24595] = {
            [questKeys.requiredClasses] = classIDs.DRUID + classIDs.PRIEST + classIDs.SHAMAN,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ask the warden to take you to the Sunwell"), 0, {{"monster", 37523}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("After restoring Quel'Delar, go back to Dalaran"), 0, {{"object", 194481}}},
            },
        },
        [24596] = {
            [questKeys.requiredRaces] = raceIDs.BLOOD_ELF,
            [questKeys.requiredClasses] = classIDs.DRUID + classIDs.PRIEST + classIDs.SHAMAN,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ask the warden to take you to the Sunwell"), 0, {{"monster", 37523}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("After restoring Quel'Delar, go back to Dalaran"), 0, {{"object", 194481}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [24597] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [24598] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD + raceIDs.ORC + raceIDs.TROLL + raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID + classIDs.PRIEST + classIDs.SHAMAN,
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_TALK, l10n("Ask the warden to take you to the Sunwell"), 0, {{"monster", 37523}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("After restoring Quel'Delar, go back to Dalaran"), 0, {{"object", 194481}}},
            },
            [questKeys.requiredSourceItems] = {},
        },
        [24609] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [24610] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [24611] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [24612] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [24613] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [24614] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [24615] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [24629] = {
            [questKeys.exclusiveTo] = {24635, 24636},
            [questKeys.requiredSourceItems] = {},
        },
        [24635] = {
            [questKeys.exclusiveTo] = {24629, 24636},
            [questKeys.requiredSourceItems] = {},
        },
        [24636] = {
            [questKeys.exclusiveTo] = {24629, 24635},
            [questKeys.requiredSourceItems] = {},
        },
        [24638] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24645, 24647, 24648, 24649, 24650, 24651, 24652},
            [questKeys.objectives] = {nil,{{420034,"Chemical Wagon Destroyed"}},nil,nil,{{{37214},37214}}},
            [questKeys.requiredMaxLevel] = 13,
            [questKeys.requiredSourceItems] = {},
        },
        [24645] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24638, 24647, 24648, 24649, 24650, 24651, 24652},
            [questKeys.objectives] = {nil,{{420035,"Chemical Wagon Destroyed"}},nil,nil,{{{37917},37917}}},
            [questKeys.requiredMaxLevel] = 22,
            [questKeys.requiredSourceItems] = {},
        },
        [24647] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24638, 24645, 24648, 24649, 24650, 24651, 24652},
            [questKeys.objectives] = {nil,{{420038,"Chemical Wagon Destroyed"}},nil,nil,{{{37984},37984}}},
            [questKeys.requiredMaxLevel] = 31,
            [questKeys.requiredSourceItems] = {},
        },
        [24648] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24638, 24645, 24647, 24649, 24650, 24651, 24652},
            [questKeys.objectives] = {nil,{{420039,"Chemical Wagon Destroyed"}},nil,nil,{{{38006},38006}}},
            [questKeys.requiredMaxLevel] = 40,
            [questKeys.requiredSourceItems] = {},
        },
        [24649] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24638, 24645, 24647, 24648, 24650, 24651, 24652},
            [questKeys.objectives] = {nil,{{420040,"Chemical Wagon Destroyed"}},nil,nil,{{{38016},38016}}},
            [questKeys.requiredMaxLevel] = 50,
            [questKeys.requiredSourceItems] = {},
        },
        [24650] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24638, 24645, 24647, 24648, 24649, 24651, 24652},
            [questKeys.objectives] = {nil,{{420041,"Chemical Wagon Destroyed"}},nil,nil,{{{38023},38023}}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.requiredSourceItems] = {},
        },
        [24651] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24638, 24645, 24647, 24648, 24649, 24650, 24652},
            [questKeys.objectives] = {nil,{{420042,"Chemical Wagon Destroyed"}},nil,nil,{{{38030},38030}}},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.requiredSourceItems] = {},
        },
        [24652] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
            [questKeys.startedBy] = {{37172}},
            [questKeys.finishedBy] = {{37172}},
            [questKeys.exclusiveTo] = {24638, 24645, 24647, 24648, 24649, 24650, 24651},
            [questKeys.objectives] = {nil,{{420043,"Chemical Wagon Destroyed"}},nil,nil,{{{38032},38032}}},
            [questKeys.requiredMaxLevel] = 80,
            [questKeys.requiredSourceItems] = {},
        },
        [24655] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{{68,1976},1976,nil,Questie.ICON_TYPE_INTERACT}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Use Snagglebolt's Air Analyzer on perfumed guards"), 0, {{"monster", 68},{"monster", 1976}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [24656] = {
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Grab the package"), 0, {{"monster", 38065}}}},
            [questKeys.sourceItemId] = 49867,
        },
        [24658] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24659, 24660, 24662, 24663, 24664, 24665, 24666},
            [questKeys.objectives] = {nil,{{420036,"Chemical Wagon Destroyed"}},nil,nil,{{{37214},37214}}},
            [questKeys.requiredMaxLevel] = 13,
            [questKeys.requiredSourceItems] = {},
        },
        [24659] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24658, 24660, 24662, 24663, 24664, 24665, 24666},
            [questKeys.objectives] = {nil,{{420037,"Chemical Wagon Destroyed"}},nil,nil,{{{37917},37917}}},
            [questKeys.requiredMaxLevel] = 22,
            [questKeys.requiredSourceItems] = {},
        },
        [24660] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24658, 24659, 24662, 24663, 24664, 24665, 24666},
            [questKeys.objectives] = {nil,{{420038,"Chemical Wagon Destroyed"}},nil,nil,{{{37984},37984}}},
            [questKeys.requiredMaxLevel] = 31,
            [questKeys.requiredSourceItems] = {},
        },
        [24662] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24658, 24659, 24660, 24663, 24664, 24665, 24666},
            [questKeys.objectives] = {nil,{{420039,"Chemical Wagon Destroyed"}},nil,nil,{{{38006},38006}}},
            [questKeys.requiredMaxLevel] = 40,
            [questKeys.requiredSourceItems] = {},
        },
        [24663] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24658, 24659, 24660, 24662, 24664, 24665, 24666},
            [questKeys.objectives] = {nil,{{420040,"Chemical Wagon Destroyed"}},nil,nil,{{{38016},38016}}},
            [questKeys.requiredMaxLevel] = 50,
            [questKeys.requiredSourceItems] = {},
        },
        [24664] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24658, 24659, 24660, 24662, 24663, 24665, 24666},
            [questKeys.objectives] = {nil,{{420041,"Chemical Wagon Destroyed"}},nil,nil,{{{38023},38023}}},
            [questKeys.requiredMaxLevel] = 60,
            [questKeys.requiredSourceItems] = {},
        },
        [24665] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24658, 24659, 24660, 24662, 24663, 24664, 24666},
            [questKeys.objectives] = {nil,{{420042,"Chemical Wagon Destroyed"}},nil,nil,{{{38030},38030}}},
            [questKeys.requiredMaxLevel] = 70,
            [questKeys.requiredSourceItems] = {},
        },
        [24666] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
            [questKeys.startedBy] = {{38066}},
            [questKeys.finishedBy] = {{38066}},
            [questKeys.exclusiveTo] = {24658, 24659, 24660, 24662, 24663, 24664, 24665},
            [questKeys.objectives] = {nil,{{420043,"Chemical Wagon Destroyed"}},nil,nil,{{{38032},38032}}},
            [questKeys.requiredMaxLevel] = 80,
            [questKeys.requiredSourceItems] = {},
        },
        [24683] = {
            [questKeys.preQuestSingle] = {24499},
        },
        [24710] = {
            [questKeys.preQuestSingle] = {24498},
        },
        [24711] = {
            [questKeys.preQuestSingle] = {24710},
        },
        [24743] = {
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.preQuestSingle] = {24545},
            [questKeys.nextQuestInChain] = 24547,
        },
        [24745] = {
            [questKeys.startedBy] = {nil,nil,{50320}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
        },
        [24748] = {
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.preQuestSingle] = {24549},
            [questKeys.objectives] = {{{36597,"Lich King Defeated"}}},
        },
        [24749] = {
            [questKeys.preQuestSingle] = {24547},
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.objectives] = {{{36678,"Infuse Shadow's Edge with Unholy power then slay Putricide."}}},
        },
        [24756] = {
            [questKeys.preQuestSingle] = {24749},
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.objectives] = {{{37955,"Infuse Shadow's Edge with Blood then defeat Lana'thel."}}},
        },
        [24757] = {
            [questKeys.preQuestSingle] = {24756},
            [questKeys.nextQuestInChain] = 24548,
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.objectives] = {{{36853,"Infuse Shadow's Edge with Frost then slay Sindragosa."}}},
        },
        [24792] = {
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.preQuestSingle] = {24657},
        },
        [24793] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.preQuestSingle] = {24576},
        },
        [24795] = {
            [questKeys.requiredClasses] = classIDs.DRUID + classIDs.PRIEST + classIDs.SHAMAN,
        },
        [24796] = {
            [questKeys.requiredClasses] = classIDs.WARRIOR + classIDs.PALADIN + classIDs.ROGUE + classIDs.HUNTER + classIDs.DEATH_KNIGHT + classIDs.MAGE + classIDs.WARLOCK,
        },
        [24798] = {
            [questKeys.requiredRaces] = raceIDs.BLOOD_ELF,
            [questKeys.requiredClasses] = classIDs.DRUID + classIDs.PRIEST + classIDs.SHAMAN,
        },
        [24799] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD + raceIDs.ORC + raceIDs.TROLL + raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID + classIDs.PRIEST + classIDs.SHAMAN,
        },
        [24800] = {
            [questKeys.requiredRaces] = raceIDs.BLOOD_ELF,
            [questKeys.requiredClasses] = classIDs.WARRIOR + classIDs.PALADIN + classIDs.ROGUE + classIDs.HUNTER + classIDs.DEATH_KNIGHT + classIDs.MAGE + classIDs.WARLOCK,
        },
        [24801] = {
            [questKeys.requiredRaces] = raceIDs.UNDEAD + raceIDs.ORC + raceIDs.TROLL + raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.WARRIOR + classIDs.PALADIN + classIDs.ROGUE + classIDs.HUNTER + classIDs.DEATH_KNIGHT + classIDs.MAGE + classIDs.WARLOCK,
        },
        [24802] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.finishedBy] = {{37554}},
            [questKeys.objectives] = {{{37554,"Find Sylvanas Windrunner"},{36954,"Escape the Lich King"}}},
        },
        [24803] = {
            [questKeys.specialFlags] = 1,
        },
        [24815] = {
            [questKeys.requiredMinRep] = {1156,3000},
        },
        [24819] = { -- A Change of Heart - Destruction friendly - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.requiredMinRep] = {1156,3000},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24811},
            [questKeys.exclusiveTo] = {24825,24826,24827,24828,25239},
        },
        [24820] = { -- A Change of Heart - Vengeance friendly - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.requiredMinRep] = {1156,3000},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24810},
            [questKeys.exclusiveTo] = {24825,24826,24827,24828,25239},
        },
        [24821] = { -- A Change of Heart - Courage friendly - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.requiredMinRep] = {1156,3000},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24808},
            [questKeys.exclusiveTo] = {24825,24826,24827,24828,25239},
        },
        [24822] = { -- A Change of Heart - Wisdom friendly - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.requiredMinRep] = {1156,3000},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24809},
            [questKeys.exclusiveTo] = {24825,24826,24827,24828,25239},
        },
        [24823] = { -- Path of Destruction - honored to revered
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24828,24811},
        },
        [24825] = { -- Path of Wisdom - friendly to honored
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24809},
        },
        [24826] = { -- Path of Vengeance - friendly to honored
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24810},
        },
        [24827] = { -- Path of Courage - friendly to honored
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24808},
        },
        [24828] = { -- Path of Destruction - friendly to honored
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,24811},
        },
        [24829] = { -- Path of Destruction - revered to exalted
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24823,24811},
        },
        [24830] = { -- Path of Wisdom - honored to revered
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24825,24809},
        },
        [24831] = { -- Path of Wisdom - revered to exalted
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24830,24809},
        },
        [24832] = { -- Path of Vengeance - honored to revered
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24826,24810},
        },
        [24833] = { -- Path of Vengeance - revered to exalted
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24832,24810},
        },
        [24834] = { -- Path of Courage - honored to revered
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24827,24808},
        },
        [24835] = { -- Path of Courage - revered to exalted
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24834,24808},
        },
        [24836] = { -- A Change of Heart - Destruction honored - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24828,24811},
            [questKeys.exclusiveTo] = {24823,24830,24832,24834,25240},
        },
        [24837] = { -- A Change of Heart - wisdom honored - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24825,24809},
            [questKeys.exclusiveTo] = {24823,24830,24832,24834,25240},
        },
        [24838] = { -- A Change of Heart - vengeance honored - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24826,24810},
            [questKeys.exclusiveTo] = {24823,24830,24832,24834,25240},
        },
        [24839] = { -- A Change of Heart - courage honored - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24827,24808},
            [questKeys.exclusiveTo] = {24823,24830,24832,24834,25240},
        },
        [24840] = { -- A Change of Heart - Destruction revered - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24823,24811},
            [questKeys.exclusiveTo] = {24829,24831,24833,24835,25242},
        },
        [24841] = { -- A Change of Heart - Wisdom revered - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24830,24809},
            [questKeys.exclusiveTo] = {24829,24831,24833,24835,25242},
        },
        [24842] = { -- A Change of Heart - Vengeance revered - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24832,24810},
            [questKeys.exclusiveTo] = {24829,24831,24833,24835,25242},
        },
        [24843] = { -- A Change of Heart - Courage revered - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24834,24808},
            [questKeys.exclusiveTo] = {24829,24831,24833,24835,25242},
        },
        [24844] = { -- A Change of Heart - Destruction exalted - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24829,24811},
        },
        [24845] = { -- A Change of Heart - Wisdom exalted - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24831,24809},
        },
        [24846] = { -- A Change of Heart - Vengeance exalted - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24833,24810},
        },
        [24847] = { -- A Change of Heart - Courage exalted - ormus
            [questKeys.startedBy] = {{38316}},
            [questKeys.finishedBy] = {{38316}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24835,24808},
        },
        [24849] = { -- Hot On The Trail
            [questKeys.objectives] = {{{38340,nil,Questie.ICON_TYPE_EVENT},{38341,nil,Questie.ICON_TYPE_EVENT},{38342,nil,Questie.ICON_TYPE_EVENT}}},
        },
        [24851] = { -- Hot On The Trail
            [questKeys.objectives] = {{{38340,nil,Questie.ICON_TYPE_EVENT},{38341,nil,Questie.ICON_TYPE_EVENT},{38342,nil,Questie.ICON_TYPE_EVENT}}},
        },
        [24857] = {
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        },
        [24869] = { -- 10man
            [questKeys.startedBy] = {{38471}},
            [questKeys.finishedBy] = {{38471}},
            [questKeys.exclusiveTo] = {24870,24871,24872,24873,24874},
        },
        [24870] = { -- 10man
            [questKeys.startedBy] = {{38491}},
            [questKeys.finishedBy] = {{38491}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.exclusiveTo] = {24869,24872,24873,24874},
        },
        [24871] = { -- 10man
            [questKeys.startedBy] = {{38492}},
            [questKeys.finishedBy] = {{38492}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.exclusiveTo] = {24869,24872,24873,24874},
        },
        [24872] = { -- 10man
            [questKeys.startedBy] = {{38589}},
            [questKeys.finishedBy] = {{38017}},
            [questKeys.exclusiveTo] = {24869,24870,24871,24873,24874},
            [questKeys.requiredSourceItems] = {},
        },
        [24873] = { -- 10man
            [questKeys.startedBy] = {{38501}},
            [questKeys.finishedBy] = {{38501}},
            [questKeys.objectives] = {{{38501,"Return with two strains of Blight"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Get hit by Slime Spray to get the Green Blight strain"), 0, {{"monster", 36627}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Get hit by Gaseous Blight to get the Orange Blight strain"), 0, {{"monster", 36626}}},
            },
            [questKeys.exclusiveTo] = {24869,24870,24871,24872,24874},
        },
        [24874] = { -- 10man
            [questKeys.startedBy] = {{38551}},
            [questKeys.finishedBy] = {{38558}},
            [questKeys.exclusiveTo] = {24869,24870,24871,24872,24873},
        },
        [24875] = { -- 25man
            [questKeys.startedBy] = {{38471}},
            [questKeys.finishedBy] = {{38471}},
            [questKeys.exclusiveTo] = {24876,24877,24878,24879,24880},
        },
        [24876] = { -- 25man
            [questKeys.startedBy] = {{38492}},
            [questKeys.finishedBy] = {{38492}},
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.exclusiveTo] = {24875,24878,24879,24880},
        },
        [24877] = { -- 25man
            [questKeys.startedBy] = {{38491}},
            [questKeys.finishedBy] = {{38491}},
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.exclusiveTo] = {24875,24878,24879,24880},
        },
        [24878] = { -- 25man
            [questKeys.startedBy] = {{38501}},
            [questKeys.finishedBy] = {{38501}},
            [questKeys.objectives] = {{{38501,"Return with two strains of Blight"}}},
            [questKeys.extraObjectives] = {
                {nil, Questie.ICON_TYPE_EVENT, l10n("Get hit by Slime Spray to get the Green Blight strain"), 0, {{"monster", 36627}}},
                {nil, Questie.ICON_TYPE_EVENT, l10n("Get hit by Gaseous Blight to get the Orange Blight strain"), 0, {{"monster", 36626}}},
            },
            [questKeys.exclusiveTo] = {24875,24876,24877,24879,24880},
        },
        [24879] = { -- 25man
            [questKeys.startedBy] = {{38551}},
            [questKeys.finishedBy] = {{38558}},
            [questKeys.exclusiveTo] = {24875,24876,24877,24878,24880},
        },
        [24880] = { -- 25man
            [questKeys.startedBy] = {{38589}},
            [questKeys.finishedBy] = {{38017}},
            [questKeys.exclusiveTo] = {24875,24876,24877,24878,24879},
            [questKeys.requiredSourceItems] = {},
        },
        [24912] = {
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.preQuestSingle] = {24548},
            [questKeys.nextQuestInChain] = 24549,
        },
        [24914] = {
            [questKeys.startedBy] = {nil,nil,{51315}},
            [questKeys.preQuestSingle] = {24549},
            [questKeys.requiredSourceItems] = {},
        },
        [24915] = {
            [questKeys.startedBy] = {{37120}},
            [questKeys.finishedBy] = {{37120}},
            [questKeys.preQuestSingle] = {24914},
        },
        [24916] = {
            [questKeys.startedBy] = {{38606}},
            [questKeys.finishedBy] = {{38606}},
            [questKeys.preQuestSingle] = {24914},
        },
        [24917] = {
            [questKeys.startedBy] = {{38607}},
            [questKeys.finishedBy] = {{38607}},
            [questKeys.preQuestSingle] = {24914},
        },
        [24918] = {
            [questKeys.startedBy] = {{38609}},
            [questKeys.finishedBy] = {{38609}},
            [questKeys.preQuestSingle] = {24914},
        },
        [24919] = {
            [questKeys.startedBy] = {{38608}},
            [questKeys.finishedBy] = {{38608}},
            [questKeys.preQuestSingle] = {24914},
        },
        [25199] = {
            [questKeys.preQuestSingle] = {25229},
            [questKeys.startedBy] = {{39675}},
            [questKeys.finishedBy] = {{39675}},
            [questKeys.objectives] = {{{39368,"Salute the Drill Sergeant"},{39368,"Roar with the Drill Sergeant"},{39368,"Cheer with the Drill Sergeant"},{39368,"Dance with the Drill Sergeant"}}},
        },
        [25212] = {
            [questKeys.startedBy] = {{39386}},
            [questKeys.finishedBy] = {{39386}},
            [questKeys.preQuestSingle] = {25199},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Board the Flying Machine"), 0, {{"monster", 39396}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [25229] = {
            [questKeys.requiredLevel] = 1,
            [questKeys.objectives] = {nil,nil,nil,nil,{{{39253,39623},39623,"Gnomes Motivated"},{{39624,39466,39675},39466,"Motivated Gnomes Brought to Captain Sparknozzle"}}},
            [questKeys.requiredSourceItems] = {},
        },
        [25239] = { -- Path of Might - friendly to honored
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24815,25238},
        },
        [25240] = { -- Path of Might - honored to revered
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25239,25238},
        },
        [25242] = { -- Path of Might - revered to exalted
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25240,25238},
        },
        [25246] = { -- A Change of Heart - might exalted - aronen
            [questKeys.preQuestGroup] = {25242,25238},
        },
        [25247] = { -- A Change of Heart - might friendly - aronen
            [questKeys.preQuestGroup] = {24815,25238},
            [questKeys.requiredMinRep] = {1156,3000},
            [questKeys.exclusiveTo] = {24825,24826,24827,24828,25239},
        },
        [25248] = { -- A Change of Heart - might honored - aronen
            [questKeys.preQuestGroup] = {25238,25239},
            [questKeys.exclusiveTo] = {24823,24830,24832,24834,25240},
        },
        [25249] = { -- A Change of Heart - might revered - aronen
            [questKeys.preQuestGroup] = {25240,25238},
            [questKeys.exclusiveTo] = {24823,24830,24832,24834,25240},
        },
        [25283] = {
            [questKeys.startedBy] = {{39678}},
            [questKeys.finishedBy] = {{39678}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25212,25295},
            [questKeys.nextQuestInChain] = 25500,
            [questKeys.requiredSourceItems] = {},
        },
        [25285] = {
            [questKeys.startedBy] = {{39675}},
            [questKeys.finishedBy] = {{39675}},
            [questKeys.preQuestSingle] = {25199},
            [questKeys.nextQuestInChain] = 25289,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Get in"), 0, {{"monster", 39715}}}},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{39682,39715},39715,"Ejection System Tested"}}},
        },
        [25286] = {
            [questKeys.preQuestSingle] = {25283},
            [questKeys.exclusiveTo] = {25500},
            [questKeys.questLevel] = -1,
        },
        [25287] = {
            [questKeys.questLevel] = -1,
        },
        [25289] = {
            [questKeys.startedBy] = {{39675}},
            [questKeys.finishedBy] = {{39675}},
            [questKeys.preQuestSingle] = {25285},
            [questKeys.nextQuestInChain] = 25295,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Get in"), 0, {{"monster", 39716}}}},
            [questKeys.objectives] = {nil,nil,nil,nil,{{{39713,39716},39716,"Left Leg Servos Tested"},{{39713,39716},39716,"Right Leg Servos Tested"},{{39713,39716},39716,"Evasive Maneuver System Tested"}}},
        },
        [25295] = {
            [questKeys.startedBy] = {{39675}},
            [questKeys.finishedBy] = {{39675}},
            [questKeys.preQuestSingle] = {25289},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_MOUNT_UP, l10n("Get in"), 0, {{"monster", 39717}}}},
            [questKeys.objectives] = {{{39711,"Weapon System Tested"}}},
        },
        [25393] = {
            [questKeys.requiredLevel] = 75,
            [questKeys.questLevel] = -1,
        },
        [25444] = { -- Da Perfect Spies
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Attune a Captured Frog"), 0, {{"monster", 40187}}}},
        },
        [25445] = { -- Zalazane's Fall
            [questKeys.objectives] = {{{40502,"Zalazane Killed"}}},
            [questKeys.requiredLevel] = 75,
            [questKeys.questLevel] = -1,
        },
        [25446] = { -- Frogs Away!
            [questKeys.nextQuestInChain] = 25461,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Handler Marnlek and deploy the frogs on the white smoke"), 0, {{"monster", 40204}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [25461] = { -- Trollin' For Volunteers
            [questKeys.preQuestSingle] = {25446},
            [questKeys.nextQuestInChain] = 25470,
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Handler Marnlek for a ride"), 0, {{"monster", 40204}}}},
            [questKeys.requiredSourceItems] = {},
        },
        [25470] = { -- Lady Of Da Tigers
            [questKeys.preQuestSingle] = {25461},
        },
        [25480] = { -- Dance Of De Spirits
            [questKeys.nextQuestInChain] = 25495,
            [questKeys.objectives] = {{{40352,"Dance of the Spirits"}}},
        },
        [25495] = { -- Preparin' For Battle
            [questKeys.preQuestSingle] = {25480},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Handler Marnlek for a ride"), 0, {{"monster", 40204}}}},
        },
        [25500] = {
            [questKeys.preQuestSingle] = {25283},
            [questKeys.requiredMaxLevel] = 74,
            [questKeys.exclusiveTo] = {25286},
            [questKeys.nextQuestInChain] = 25287,
        },
        [26012] = { -- Trouble at Wyrmrest
            [questKeys.exclusiveTo] = {26013},
        },
        [26013] = { -- Assault on the Sanctum
            [questKeys.preQuestSingle] = {},
        },
        [26034] = {
            [questKeys.preQuestSingle] = {26013},
        },
        [64845] = {
            [questKeys.triggerEnd] = {"Victory in a battleground match", {
                [zoneIDs.ALTERAC_MOUNTAINS] = {{39.4,82.2}},
                [zoneIDs.ARATHI_HIGHLANDS] = {{45.6,45.8}},
                [zoneIDs.ASHENVALE] = {{61.8,83.8}},
                [zoneIDs.DALARAN]={{29.79,75.78}},
                [zoneIDs.DARNASSUS]={{58.02,34.52}},
                [zoneIDs.IRONFORGE]={{70.41,91.10}},
                [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
                [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
                [zoneIDs.THE_EXODAR]={{26.6,50.06}},
                [zoneIDs.WINTERGRASP]={{50.02,15.16}},
            }},
        },

        ----- Boosted character quests -----
        [70395] = {
            [questKeys.name] = "A New Beginning",
            [questKeys.startedBy] = {}, -- This quest is auto accept
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Meet with your class trainer in Stormwind."},
            [questKeys.zoneOrSort] = 1519,
        },
        [70396] = {
            [questKeys.name] = "A New Beginning",
            [questKeys.startedBy] = {}, -- This quest is auto accept
            [questKeys.finishedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Meet with your class trainer in Orgrimmar."},
            [questKeys.zoneOrSort] = 1637,
        },
        [70397] = {
            [questKeys.name] = "Tools for Survival",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Open the survival kit and equip a weapon."},
            [questKeys.objectives] = {nil,{{410010, "Open the Survival Kit"}, {410011, "Equip a Weapon"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1519,
        },
        [70398] = {
            [questKeys.name] = "Combat Training",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Train a spell by speaking to your class trainer."},
            [questKeys.objectives] = {nil,{{410012, "Train a Spell"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1519,
        },
        [70401] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{410013, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1519,
        },
        [70411] = {
            [questKeys.name] = "To the Dockmaster",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{26546,26548},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Use a scroll of teleportation from your inventory to reach the harbor and speak to the dock master."},
            [questKeys.requiredSourceItems] = {199335,199336},
            [questKeys.zoneOrSort] = 150,
        },
        [70734] = {
            [questKeys.name] = "Tools for Survival",
            [questKeys.startedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.finishedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Open the survival kit and equip a weapon."},
            [questKeys.objectives] = {nil,{{410002, "Open the Survival Kit"}, {410003, "Equip a Weapon"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1637,
        },
        [70735] = {
            [questKeys.name] = "Combat Training",
            [questKeys.startedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.finishedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Train a spell by speaking to your class trainer."},
            [questKeys.objectives] = {nil,{{410006, "Train a Spell"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1637,
        },
        [70736] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.finishedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{410008, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1637,
        },
        [70737] = {
            [questKeys.name] = "To the Zeppelin Master",
            [questKeys.startedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.finishedBy] = {{26537,26539},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Use a scroll of teleportation from your inventory to reach the zeppelin tower and speak to the zeppelin master."},
            [questKeys.requiredSourceItems] = {199777,199778},
            [questKeys.zoneOrSort] = 1637,
        },
        [70761] = {
            [questKeys.name] = "Tools for Survival",
            [questKeys.startedBy] = {{3036},nil,nil},
            [questKeys.finishedBy] = {{3036},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID,
            [questKeys.objectivesText] = {"Open the survival kit and equip a weapon."},
            [questKeys.objectives] = {nil,{{410004, "Open the Survival Kit"}, {410005, "Equip a Weapon"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1638,
        },
        [70762] = {
            [questKeys.name] = "A New Beginning",
            [questKeys.startedBy] = {}, -- This quest is auto accept
            [questKeys.finishedBy] = {{3036},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID,
            [questKeys.objectivesText] = {"Meet with your Druid trainer in Thunder Bluff."},
            [questKeys.zoneOrSort] = 1638,
        },
        [70764] = {
            [questKeys.name] = "Combat Training",
            [questKeys.startedBy] = {{3036},nil,nil},
            [questKeys.finishedBy] = {{3036},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID,
            [questKeys.objectivesText] = {"Train a spell by speaking to your class trainer."},
            [questKeys.objectives] = {nil,{{410007, "Train a Spell"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1638,
        },
        [70765] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{3036},nil,nil},
            [questKeys.finishedBy] = {{3036},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{410009, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1638,
        },
        [70865] = {
            [questKeys.name] = "To Shattrath City",
            [questKeys.startedBy] = {{376,914,928,3036,3324,3328,3344,3406,5495,5497,5505,5515,5885,5994,13283,20407,23128},nil,nil},
            [questKeys.finishedBy] = {{19684},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.objectivesText] = {"Use the scroll of teleportation from your inventory to reach Shattrath City and speak to the mysterious Haggard War Veteran."},
            [questKeys.requiredSourceItems] = {200068},
            [questKeys.zoneOrSort] = 3897,
        },
        [70869] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.finishedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{410008, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1637,
        },
        [70870] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 70,
            [questKeys.questLevel] = 70,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{410013, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1519,
        },
        [78136] = {
            [questKeys.name] = "A New Beginning",
            [questKeys.startedBy] = {}, -- This quest is auto accept
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Meet with your class trainer in Stormwind."},
            [questKeys.zoneOrSort] = 1519,
        },
        [78137] = {
            [questKeys.name] = "A New Beginning",
            [questKeys.startedBy] = {}, -- This quest is auto accept
            [questKeys.finishedBy] = {{3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Meet with your class trainer in Orgrimmar."},
            [questKeys.zoneOrSort] = 1637,
        },
        [78138] = {
            [questKeys.name] = "A New Beginning",
            [questKeys.startedBy] = {}, -- This quest is auto accept
            [questKeys.finishedBy] = {{3036},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID,
            [questKeys.objectivesText] = {"Meet with your Druid trainer in Thunder Bluff."},
            [questKeys.zoneOrSort] = 1638,
        },
        [78140] = {
            [questKeys.name] = "Tools for Survival",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Open the survival kit and equip a weapon."},
            [questKeys.objectives] = {nil,{{410010, "Open the Survival Kit"}, {410011, "Equip a Weapon"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1519,
        },
        [78151] = {
            [questKeys.name] = "Tools for Survival",
            [questKeys.startedBy] = {{3036},nil,nil},
            [questKeys.finishedBy] = {{3036},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.TAUREN,
            [questKeys.objectivesText] = {"Open the survival kit and equip a weapon."},
            [questKeys.objectives] = {nil,{{410004, "Open the Survival Kit"}, {410005, "Equip a Weapon"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1637,
        },
        [78157] = {
            [questKeys.name] = "Combat Training",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Train a spell by speaking to your class trainer."},
            [questKeys.objectives] = {nil,{{410012, "Train a Spell"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1519,
        },
        [78158] = {
            [questKeys.name] = "Combat Training",
            [questKeys.startedBy] = {{3036},nil,nil},
            [questKeys.finishedBy] = {{3036},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.TAUREN,
            [questKeys.requiredClasses] = classIDs.DRUID,
            [questKeys.objectivesText] = {"Train a spell by speaking to your class trainer."},
            [questKeys.objectives] = {nil,{{410007, "Train a Spell"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1638,
        },
        [78164] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{410013, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1519,
        },
        [78166] = {
            [questKeys.name] = "To Northrend",
            [questKeys.startedBy] = {{376,914,928,5495,5497,5505,5515,13283,20407},nil,nil},
            [questKeys.finishedBy] = {{26673},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.objectivesText] = {"Use the scroll of teleportation from your inventory to reach Northrend and speak to the Image of Archmage Modera."},
            [questKeys.requiredSourceItems] = {210046,210047},
            [questKeys.zoneOrSort] = 65,
        },
        [78167] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{3036,3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.finishedBy] = {{3036,3324,3328,3344,3353,3406,5885,5994,23128},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{410008, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 1637,
        },
        [78168] = {
            [questKeys.name] = "To Northrend",
            [questKeys.startedBy] = {{3036,3324,3328,3344,3353,3406,5885,5994,23128},nil,nil},
            [questKeys.finishedBy] = {{26471},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.objectivesText] = {"Use the scroll of teleportation from your inventory to reach Northrend and speak to the Image of Archmage Aethas Sunreaver."},
            [questKeys.requiredSourceItems] = {210046,210047},
            [questKeys.zoneOrSort] = 65,
        },
        [78219] = {
            [questKeys.name] = "A New Beginning",
            [questKeys.startedBy] = {}, -- This quest is auto accept
            [questKeys.finishedBy] = {{28471,28472,28474},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredClasses] = classIDs.DEATH_KNIGHT,
            [questKeys.objectivesText] = {"Meet with your Death Knight trainer in Acherus: The Ebon Hold."},
            [questKeys.zoneOrSort] = 4281,
        },
        [78220] = {
            [questKeys.name] = "Tools for Survival",
            [questKeys.startedBy] = {{28471,28472,28474},nil,nil},
            [questKeys.finishedBy] = {{28471,28472,28474},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredClasses] = classIDs.DEATH_KNIGHT,
            [questKeys.objectivesText] = {"Open the survival kit and equip a weapon."},
            [questKeys.objectives] = {nil,{{420045, "Open the Survival Kit"}, {420046, "Equip a Weapon"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 4281,
        },
        [78221] = {
            [questKeys.name] = "Combat Training",
            [questKeys.startedBy] = {{28471,28472,28474},nil,nil},
            [questKeys.finishedBy] = {{28471,28472,28474},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredClasses] = classIDs.DEATH_KNIGHT,
            [questKeys.objectivesText] = {"Train a spell by speaking to your class trainer."},
            [questKeys.objectives] = {nil,{{420047, "Train a Spell"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 4281,
        },
        [78222] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{28471,28472,28474},nil,nil},
            [questKeys.finishedBy] = {{28471,28472,28474},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.DEATH_KNIGHT,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{420044, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 4281,
        },
        [78223] = {
            [questKeys.name] = "To Northrend",
            [questKeys.startedBy] = {{28471,28472,28474},nil,nil},
            [questKeys.finishedBy] = {{26673},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.DEATH_KNIGHT,
            [questKeys.objectivesText] = {"Use the scroll of teleportation from your inventory to reach Northrend and speak to the Image of Archmage Modera."},
            [questKeys.requiredSourceItems] = {210046,210047},
            [questKeys.zoneOrSort] = 65,
        },
        [78224] = {
            [questKeys.name] = "Talented",
            [questKeys.startedBy] = {{28471,28472,28474},nil,nil},
            [questKeys.finishedBy] = {{28471,28472,28474},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredClasses] = classIDs.DEATH_KNIGHT,
            [questKeys.objectivesText] = {"Activate the Talents interface and allocate 5 Talent Points."},
            [questKeys.objectives] = {nil,{{420044, "Spend 5 Talent Points"}},nil,nil,nil},
            [questKeys.zoneOrSort] = 4281,
        },
        [78225] = {
            [questKeys.name] = "To Northrend",
            [questKeys.startedBy] = {{28471,28472,28474},nil,nil},
            [questKeys.finishedBy] = {{26471},nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredClasses] = classIDs.DEATH_KNIGHT,
            [questKeys.objectivesText] = {"Use the scroll of teleportation from your inventory to reach Northrend and speak to the Image of Archmage Aethas Sunreaver."},
            [questKeys.requiredSourceItems] = {210046,210047},
            [questKeys.zoneOrSort] = 65,
        },
        [78752] = {
            [questKeys.name] = "Proof of Demise: Titan Rune Protocol Gamma",
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.objectivesText] = {"The Lich King's presence mustn't extend any further!","","The Council of Six has decreed that any strong enough fighter should take up arms and aid in keeping Azeroth safe!"},
            [questKeys.objectives] = {nil,nil,{{211206}}},
            [questKeys.zoneOrSort] = 4395,
            [questKeys.questFlags] = 4232,
            [questKeys.specialFlags] = 1,
            [questKeys.reputationReward] = {{factionIDs.KIRIN_TOR,75}},
        },
        [78753] = {
            [questKeys.name] = "Proof of Demise: Threats to Azeroth",
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.objectivesText] = {"We must continue putting pressure on all fronts!","","The Council of Six has decreed that any willing fighter should take up arms and aid in keeping Azeroth safe!"},
            [questKeys.objectives] = {nil,nil,{{211207}}},
            [questKeys.zoneOrSort] = 4395,
            [questKeys.questFlags] = 4232,
            [questKeys.specialFlags] = 1,
            [questKeys.reputationReward] = {{factionIDs.KIRIN_TOR,75}},
        },
        [83713] = {
            [questKeys.name] = "Proof of Demise: Titan Rune Protocol Alpha",
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.objectivesText] = {"The Lich King's presence mustn't extend any further!","","The Council of Six has decreed that any strong enough fighter should take up arms and aid in keeping Azeroth safe!"},
            [questKeys.objectives] = {nil,nil,{{211206}}},
            [questKeys.zoneOrSort] = 4395,
            [questKeys.questFlags] = 4232,
            [questKeys.specialFlags] = 1,
            [questKeys.reputationReward] = {{factionIDs.KIRIN_TOR,75}},
        },
        [83714] = {
            [questKeys.name] = "Proof of Demise: Threats to Azeroth",
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.objectivesText] = {"We must continue putting pressure on all fronts!","","The Council of Six has decreed that any willing fighter should take up arms and aid in keeping Azeroth safe!"},
            [questKeys.objectives] = {nil,nil,{{211207}}},
            [questKeys.zoneOrSort] = 4395,
            [questKeys.questFlags] = 4232,
            [questKeys.specialFlags] = 1,
            [questKeys.reputationReward] = {{factionIDs.KIRIN_TOR,75}},
        },
        [83717] = {
            [questKeys.name] = "Proof of Demise: Titan Rune Protocol Beta",
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.objectivesText] = {"The Lich King's presence mustn't extend any further!","","The Council of Six has decreed that any strong enough fighter should take up arms and aid in keeping Azeroth safe!"},
            [questKeys.objectives] = {nil,nil,{{211206}}},
            [questKeys.zoneOrSort] = 4395,
            [questKeys.questFlags] = 4232,
            [questKeys.specialFlags] = 1,
            [questKeys.reputationReward] = {{factionIDs.KIRIN_TOR,75}},
        },
        [87379] = {
            [questKeys.name] = "Proof of Demise: Threats to Azeroth",
            [questKeys.startedBy] = {{20735},nil,nil},
            [questKeys.finishedBy] = {{20735},nil,nil},
            [questKeys.requiredLevel] = 80,
            [questKeys.questLevel] = 80,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.objectivesText] = {"We must continue putting pressure on all fronts!","","The Council of Six has decreed that any willing fighter should take up arms and aid in keeping Azeroth safe!"},
            [questKeys.objectives] = {nil,nil,{{211207}}},
            [questKeys.zoneOrSort] = 4395,
            [questKeys.questFlags] = 4232,
            [questKeys.specialFlags] = 1,
            [questKeys.reputationReward] = {{factionIDs.KIRIN_TOR,75}},
        },
    }
end

function _QuestieWotlkQuestFixes:InsertMissingQuestIds()

    -- Alliance boosted quests
    QuestieDB.questData[70395] = {} -- A New Beginning
    QuestieDB.questData[70397] = {} -- Tools for Survival
    QuestieDB.questData[70398] = {} -- Combat Training
    QuestieDB.questData[70401] = {} -- Talented
    QuestieDB.questData[70411] = {} -- To the Dockmaster
    QuestieDB.questData[70870] = {} -- Talented
    QuestieDB.questData[78136] = {} -- A New Beginning
    QuestieDB.questData[78140] = {} -- Tools for Survival
    QuestieDB.questData[78157] = {} -- Combat Training
    QuestieDB.questData[78164] = {} -- Talented
    QuestieDB.questData[78166] = {} -- To Northrend
    QuestieDB.questData[78222] = {} -- Talented DK
    QuestieDB.questData[78223] = {} -- To Northrend DK

    -- Horde boosted quests
    QuestieDB.questData[70396] = {} -- A New Beginning
    QuestieDB.questData[70734] = {} -- Tools for Survival
    QuestieDB.questData[70735] = {} -- Combat Training
    QuestieDB.questData[70736] = {} -- Talented
    QuestieDB.questData[70737] = {} -- To the Zeppelin Master
    QuestieDB.questData[70761] = {} -- Tools for Survival
    QuestieDB.questData[70762] = {} -- A New Beginning
    QuestieDB.questData[70764] = {} -- Combat Training
    QuestieDB.questData[70765] = {} -- Talented
    QuestieDB.questData[70869] = {} -- Talented
    QuestieDB.questData[78137] = {} -- A New Beginning
    QuestieDB.questData[78138] = {} -- A New Beginning
    QuestieDB.questData[78151] = {} -- Tools for Survival
    QuestieDB.questData[78158] = {} -- Combat Training
    QuestieDB.questData[78167] = {} -- Talented
    QuestieDB.questData[78168] = {} -- To Northrend
    QuestieDB.questData[78224] = {} -- Talented DK
    QuestieDB.questData[78225] = {} -- To Northrend DK

    -- Neutral boosted quests
    QuestieDB.questData[70865] = {} -- To Shattrath City
    QuestieDB.questData[78219] = {} -- A New Beginning
    QuestieDB.questData[78220] = {} -- Tools for Survival
    QuestieDB.questData[78221] = {} -- Combat Training

    -- P4 quests
    QuestieDB.questData[78752] = {} -- Proof of Demise: Titan Rune Protocol Gamma
    QuestieDB.questData[78753] = {} -- Proof of Demise: Threats to Azeroth
end
