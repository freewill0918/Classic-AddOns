--[[----------------------------------------------------------------------------

  MountsRarity/MountsRarity.lua
  Provides rarity data for mounts among the playerbase.

  Copyright (c) 2023 Sören Gade

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.

----------------------------------------------------------------------------]]--

-- This build version gets automatically updated.
local MINOR = 653
---@class MountsRarity: { GetData: function, GetRarityByID: function }
local MountsRarity = LibStub:NewLibrary("MountsRarity-2.0", MINOR)
if not MountsRarity then return end -- already loaded and no upgrade necessary

local lazyLoadData = function()
  return {}
end
local data

function MountsRarity:GetData()
  if not data then
    data = lazyLoadData()
  end

  ---@type table<number, number|nil>
  return data
end

---Returns the rarity of a mount (0-100) by ID, or `nil`.
---@param mountID number The mount ID.
function MountsRarity:GetRarityByID(mountID)
  return self:GetData()[mountID]
end

-- Everything after this line gets automatically replaced and updated.
lazyLoadData = function() return {
  [6] = 63.3607,
  [8] = 0.0001,
  [9] = 66.5807,
  [11] = 65.1603,
  [14] = 65.1549,
  [17] = 89.7635,
  [18] = 70.4903,
  [19] = 70.487,
  [20] = 63.3566,
  [21] = 62.4981,
  [24] = 56.7906,
  [25] = 55.7719,
  [26] = 65.1837,
  [27] = 62.4996,
  [31] = 61.0282,
  [34] = 68.1306,
  [36] = 56.7911,
  [38] = 55.7744,
  [39] = 54.7759,
  [40] = 54.3887,
  [41] = 52.1555,
  [42] = 0.0083,
  [43] = 0.0001,
  [45] = 0.0278,
  [46] = 0.0091,
  [50] = 0.0165,
  [51] = 0.0279,
  [52] = 0.0165,
  [53] = 0.0159,
  [54] = 0.0049,
  [55] = 14.6177,
  [56] = 0.0094,
  [57] = 57.7398,
  [58] = 57.4871,
  [62] = 0.0055,
  [63] = 0.0094,
  [64] = 0.0049,
  [65] = 64.3386,
  [66] = 68.1242,
  [67] = 61.0224,
  [68] = 60.2478,
  [69] = 18.6472,
  [71] = 57.7421,
  [72] = 54.3883,
  [73] = 0.0055,
  [74] = 0.0083,
  [75] = 45.1828,
  [76] = 44.546,
  [77] = 44.5476,
  [78] = 45.867,
  [79] = 45.8672,
  [80] = 49.0406,
  [81] = 49.0436,
  [82] = 45.1822,
  [83] = 89.186,
  [84] = 51.8001,
  [85] = 61.1358,
  [87] = 61.012,
  [88] = 52.3113,
  [89] = 50.607,
  [90] = 50.1742,
  [91] = 64.3676,
  [92] = 64.8212,
  [93] = 61.7347,
  [94] = 53.5677,
  [95] = 52.2912,
  [96] = 52.35,
  [97] = 52.291,
  [98] = 52.3499,
  [99] = 53.5698,
  [100] = 61.135,
  [101] = 52.3133,
  [102] = 50.6063,
  [103] = 50.1749,
  [104] = 61.7319,
  [105] = 64.3651,
  [106] = 64.816,
  [107] = 60.2519,
  [108] = 17.881,
  [109] = 16.589,
  [110] = 2.0781,
  [111] = 2.0252,
  [117] = 61.7149,
  [118] = 39.9747,
  [119] = 61.8596,
  [120] = 61.6889,
  [122] = 0.0259,
  [125] = 19.2861,
  [129] = 46.1874,
  [130] = 46.2505,
  [131] = 47.2541,
  [132] = 41.5871,
  [133] = 48.2541,
  [134] = 48.6997,
  [135] = 46.6909,
  [136] = 44.604,
  [137] = 42.8909,
  [138] = 40.4423,
  [139] = 55.6524,
  [140] = 41.6362,
  [141] = 42.3706,
  [142] = 58.6225,
  [146] = 53.5581,
  [147] = 62.4363,
  [149] = 53.4562,
  [150] = 53.7816,
  [151] = 24.0071,
  [152] = 65.0741,
  [153] = 25.6275,
  [154] = 25.6888,
  [155] = 25.4539,
  [156] = 25.1192,
  [157] = 57.49,
  [158] = 57.9965,
  [159] = 62.3797,
  [160] = 54.5623,
  [161] = 53.4185,
  [162] = 42.3256,
  [163] = 57.9939,
  [164] = 65.0736,
  [165] = 53.4164,
  [166] = 54.5618,
  [167] = 53.5575,
  [168] = 17.2553,
  [169] = 0.0603,
  [170] = 25.027,
  [171] = 20.135,
  [172] = 24.9853,
  [173] = 24.9079,
  [174] = 25.0407,
  [176] = 22.7638,
  [177] = 23.4612,
  [178] = 23.1376,
  [179] = 23.287,
  [180] = 22.9783,
  [183] = 27.3728,
  [185] = 25.8806,
  [186] = 28.7637,
  [187] = 26.6999,
  [188] = 26.3909,
  [189] = 26.1982,
  [190] = 26.7581,
  [191] = 26.6517,
  [196] = 1.0298,
  [197] = 1.1115,
  [199] = 1.776,
  [201] = 0.897,
  [202] = 34.4698,
  [203] = 26.7671,
  [204] = 20.1651,
  [205] = 35.6815,
  [207] = 0.0952,
  [211] = 0.2518,
  [212] = 1.1876,
  [213] = 45.0826,
  [219] = 33.8937,
  [220] = 42.3266,
  [221] = 89.3799,
  [222] = 0.0001,
  [223] = 0.1264,
  [224] = 39.6786,
  [226] = 34.3509,
  [230] = 20.8005,
  [236] = 50.9104,
  [237] = 13.7546,
  [240] = 23.6673,
  [241] = 0.1056,
  [243] = 0.7327,
  [246] = 23.3716,
  [247] = 34.0194,
  [248] = 67.373,
  [249] = 31.0591,
  [250] = 65.7135,
  [253] = 61.0146,
  [254] = 26.0799,
  [255] = 26.947,
  [256] = 28.0133,
  [257] = 29.3524,
  [258] = 15.6113,
  [259] = 15.5724,
  [262] = 30.0833,
  [263] = 0.4008,
  [264] = 18.8534,
  [265] = 8.2533,
  [266] = 0.9493,
  [267] = 17.1289,
  [268] = 89.0132,
  [269] = 40.1885,
  [270] = 42.2343,
  [271] = 22.9495,
  [272] = 24.0416,
  [275] = 23.6273,
  [276] = 31.4617,
  [277] = 32.211,
  [278] = 18.3345,
  [279] = 23.4694,
  [280] = 43.7094,
  [284] = 47.0823,
  [285] = 39.4412,
  [286] = 19.1643,
  [287] = 19.6701,
  [288] = 11.6129,
  [289] = 11.4792,
  [291] = 42.7344,
  [292] = 44.6119,
  [293] = 46.7981,
  [294] = 7.501,
  [295] = 7.1338,
  [296] = 7.1336,
  [297] = 8.8921,
  [298] = 6.8775,
  [299] = 7.1764,
  [300] = 7.5011,
  [301] = 6.8773,
  [302] = 7.1765,
  [303] = 8.892,
  [304] = 10.488,
  [305] = 10.5033,
  [306] = 44.9322,
  [307] = 44.9872,
  [309] = 54.7779,
  [310] = 66.5781,
  [311] = 12.988,
  [312] = 15.3895,
  [313] = 0.0692,
  [314] = 65.1788,
  [317] = 0.0724,
  [318] = 19.5056,
  [319] = 20.9476,
  [320] = 19.5055,
  [321] = 19.9918,
  [322] = 11.1362,
  [323] = 17.8697,
  [324] = 18.1401,
  [325] = 18.1397,
  [326] = 20.9468,
  [327] = 19.9908,
  [328] = 0.9391,
  [329] = 7.3411,
  [330] = 7.4261,
  [331] = 6.0015,
  [332] = 5.472,
  [336] = 61.007,
  [337] = 64.3389,
  [338] = 4.0903,
  [340] = 0.0377,
  [341] = 9.745,
  [342] = 0.9056,
  [343] = 0.7543,
  [344] = 0.0457,
  [345] = 0.061,
  [349] = 23.1016,
  [350] = 21.8109,
  [351] = 21.2647,
  [352] = 8.1561,
  [358] = 0.0576,
  [363] = 17.2216,
  [364] = 42.75,
  [365] = 32.1041,
  [366] = 17.0976,
  [367] = 32.0621,
  [368] = 30.387,
  [371] = 37.9782,
  [372] = 1.1028,
  [373] = 46.154,
  [375] = 15.4752,
  [376] = 52.5579,
  [382] = 47.2439,
  [386] = 22.048,
  [388] = 55.6341,
  [389] = 49.2612,
  [391] = 19.5014,
  [392] = 23.4817,
  [393] = 8.8171,
  [394] = 18.8594,
  [395] = 22.4132,
  [396] = 11.008,
  [397] = 20.4475,
  [398] = 35.6902,
  [399] = 35.5108,
  [400] = 4.4442,
  [401] = 58.9978,
  [403] = 41.6508,
  [404] = 5.4874,
  [405] = 9.0556,
  [406] = 9.0974,
  [407] = 48.0544,
  [408] = 0.5362,
  [409] = 44.2971,
  [410] = 10.8185,
  [411] = 13.6383,
  [412] = 0.5324,
  [413] = 20.0754,
  [415] = 22.8915,
  [416] = 34.899,
  [417] = 38.1809,
  [418] = 0.5217,
  [419] = 48.687,
  [420] = 38.7695,
  [421] = 17.5212,
  [422] = 5.4994,
  [423] = 5.7225,
  [424] = 0.043,
  [425] = 24.974,
  [426] = 18.5303,
  [428] = 0.0321,
  [429] = 14.206,
  [430] = 30.6746,
  [431] = 23.3491,
  [432] = 21.5793,
  [433] = 0.48,
  [434] = 19.6827,
  [435] = 55.6264,
  [436] = 49.2539,
  [439] = 44.7436,
  [440] = 19.4986,
  [441] = 19.2231,
  [442] = 10.0866,
  [443] = 23.8454,
  [444] = 11.314,
  [445] = 9.1798,
  [446] = 19.0081,
  [447] = 35.1594,
  [448] = 42.7646,
  [449] = 34.8579,
  [450] = 10.2979,
  [451] = 15.1673,
  [452] = 47.8114,
  [453] = 44.8213,
  [454] = 52.8986,
  [455] = 14.3638,
  [456] = 21.5023,
  [457] = 19.4791,
  [458] = 21.6209,
  [459] = 19.1954,
  [460] = 53.5981,
  [462] = 22.512,
  [463] = 21.4929,
  [464] = 44.2426,
  [465] = 43.1535,
  [466] = 43.2389,
  [467] = 0.0298,
  [468] = 17.9461,
  [469] = 11.9678,
  [470] = 11.3393,
  [471] = 31.2082,
  [472] = 10.0328,
  [473] = 32.5107,
  [474] = 9.3508,
  [475] = 15.7492,
  [476] = 24.1108,
  [477] = 27.1451,
  [478] = 33.9486,
  [479] = 29.8941,
  [480] = 27.4044,
  [481] = 27.3877,
  [482] = 22.5027,
  [484] = 22.805,
  [485] = 22.0194,
  [486] = 40.1353,
  [487] = 40.2583,
  [488] = 4.4432,
  [492] = 50.1878,
  [493] = 48.2653,
  [494] = 47.4526,
  [495] = 48.7347,
  [496] = 52.5627,
  [497] = 43.2431,
  [498] = 44.5818,
  [499] = 43.6682,
  [500] = 42.8689,
  [501] = 43.5114,
  [503] = 7.228,
  [504] = 19.5454,
  [505] = 27.7631,
  [506] = 31.2211,
  [507] = 28.0402,
  [508] = 25.0903,
  [509] = 35.2969,
  [510] = 21.7868,
  [511] = 23.0514,
  [515] = 18.4105,
  [516] = 10.5022,
  [517] = 37.8444,
  [518] = 7.2232,
  [519] = 7.2203,
  [520] = 7.2216,
  [521] = 57.8424,
  [522] = 53.2039,
  [523] = 36.8534,
  [526] = 11.118,
  [527] = 10.7178,
  [528] = 16.8244,
  [529] = 16.2301,
  [530] = 8.8586,
  [531] = 23.8504,
  [532] = 27.4888,
  [533] = 17.1794,
  [534] = 22.8976,
  [535] = 25.3514,
  [536] = 23.5212,
  [537] = 21.07,
  [538] = 31.9459,
  [539] = 32.091,
  [540] = 31.9082,
  [541] = 0.0215,
  [542] = 20.5177,
  [543] = 25.6955,
  [544] = 32.1297,
  [545] = 11.1899,
  [546] = 11.2916,
  [547] = 63.6715,
  [548] = 27.9358,
  [549] = 27.3923,
  [550] = 9.48,
  [551] = 15.726,
  [552] = 28.4253,
  [554] = 6.5743,
  [555] = 7.0682,
  [557] = 10.6779,
  [558] = 14.1274,
  [559] = 23.5456,
  [560] = 4.9578,
  [561] = 28.1979,
  [562] = 0.0244,
  [563] = 0.0464,
  [564] = 0.0696,
  [568] = 5.66,
  [571] = 11.5698,
  [593] = 31.6833,
  [594] = 9.9543,
  [600] = 24.1154,
  [603] = 15.7137,
  [606] = 50.322,
  [607] = 5.0449,
  [608] = 23.0545,
  [609] = 24.5226,
  [611] = 13.8066,
  [612] = 17.2426,
  [613] = 8.2214,
  [614] = 25.5013,
  [615] = 24.6756,
  [616] = 4.6275,
  [617] = 9.3312,
  [618] = 7.2852,
  [619] = 19.4883,
  [620] = 25.1528,
  [621] = 17.0413,
  [622] = 13.823,
  [623] = 7.7201,
  [624] = 17.9224,
  [625] = 13.86,
  [626] = 4.6308,
  [627] = 21.9075,
  [628] = 24.6645,
  [629] = 24.356,
  [630] = 16.7263,
  [631] = 35.6005,
  [632] = 7.9818,
  [633] = 8.4732,
  [634] = 2.8695,
  [635] = 14.6118,
  [636] = 25.9057,
  [637] = 24.4143,
  [638] = 4.8512,
  [639] = 5.1374,
  [640] = 4.2745,
  [641] = 5.0048,
  [642] = 4.6363,
  [643] = 13.8234,
  [644] = 12.0171,
  [645] = 7.428,
  [646] = 40.2767,
  [647] = 24.5075,
  [648] = 9.6636,
  [649] = 4.6608,
  [650] = 11.9633,
  [651] = 48.9728,
  [652] = 9.3395,
  [654] = 5.2979,
  [655] = 17.0403,
  [656] = 28.8694,
  [657] = 60.0498,
  [663] = 1.7712,
  [664] = 5.6656,
  [678] = 41.846,
  [679] = 39.7694,
  [682] = 5.3201,
  [741] = 13.8004,
  [751] = 8.9765,
  [753] = 23.3426,
  [755] = 3.8111,
  [756] = 4.1038,
  [758] = 10.3107,
  [759] = 0.05,
  [760] = 0.0254,
  [761] = 0.046,
  [762] = 66.54,
  [763] = 25.4965,
  [764] = 24.1013,
  [765] = 9.2826,
  [768] = 18.4712,
  [769] = 13.3261,
  [772] = 36.8742,
  [773] = 8.1218,
  [775] = 5.1552,
  [778] = 18.5924,
  [779] = 26.2987,
  [780] = 87.7331,
  [781] = 30.7434,
  [784] = 5.3233,
  [791] = 5.3557,
  [793] = 6.3766,
  [794] = 6.0055,
  [795] = 6.7274,
  [796] = 6.1486,
  [797] = 29.5492,
  [800] = 9.5949,
  [802] = 10.0449,
  [803] = 6.4503,
  [804] = 7.9954,
  [826] = 49.4049,
  [831] = 6.5849,
  [832] = 8.229,
  [833] = 26.0557,
  [834] = 15.3882,
  [836] = 3.418,
  [838] = 15.3708,
  [841] = 4.0051,
  [842] = 4.2401,
  [843] = 3.6271,
  [844] = 3.3887,
  [845] = 21.143,
  [846] = 9.3704,
  [847] = 13.0843,
  [848] = 0.046,
  [849] = 0.0339,
  [850] = 0.0243,
  [851] = 0.0297,
  [852] = 0.0313,
  [853] = 0.0381,
  [854] = 7.3701,
  [855] = 18.5339,
  [860] = 14.1971,
  [861] = 12.3098,
  [864] = 13.8996,
  [865] = 17.5076,
  [866] = 16.2642,
  [867] = 14.9957,
  [868] = 16.4848,
  [870] = 11.0366,
  [872] = 11.5206,
  [873] = 4.1268,
  [874] = 4.2719,
  [875] = 10.0182,
  [876] = 3.7595,
  [877] = 1.0754,
  [878] = 9.7662,
  [881] = 38.3867,
  [882] = 3.642,
  [883] = 33.1758,
  [884] = 12.844,
  [885] = 18.9926,
  [888] = 15.1938,
  [889] = 8.3094,
  [890] = 8.3957,
  [891] = 8.2308,
  [892] = 14.4352,
  [893] = 13.8291,
  [894] = 13.583,
  [896] = 18.1253,
  [898] = 14.672,
  [899] = 12.8875,
  [900] = 3.7592,
  [901] = 3.7049,
  [905] = 11.1202,
  [906] = 28.2832,
  [926] = 15.0879,
  [928] = 10.0562,
  [930] = 11.1818,
  [931] = 9.7141,
  [932] = 7.8165,
  [933] = 3.9475,
  [937] = 0.0334,
  [939] = 22.2158,
  [941] = 9.8652,
  [942] = 10.13,
  [943] = 9.2082,
  [944] = 12.1795,
  [945] = 4.8173,
  [946] = 4.9182,
  [947] = 22.3313,
  [948] = 0.0401,
  [949] = 11.745,
  [954] = 5.2143,
  [955] = 15.5714,
  [956] = 17.4301,
  [958] = 6.0742,
  [959] = 6.2115,
  [960] = 6.0354,
  [961] = 19.3501,
  [962] = 7.019,
  [963] = 8.3304,
  [964] = 22.171,
  [965] = 22.6282,
  [966] = 21.4505,
  [967] = 21.608,
  [968] = 21.4451,
  [970] = 14.6534,
  [971] = 15.745,
  [972] = 11.4239,
  [973] = 11.5042,
  [974] = 28.3169,
  [975] = 28.302,
  [976] = 28.3009,
  [978] = 25.6471,
  [979] = 17.3424,
  [980] = 11.4801,
  [981] = 18.3636,
  [982] = 1.9409,
  [983] = 11.2906,
  [984] = 11.4441,
  [985] = 11.4135,
  [986] = 34.6817,
  [993] = 7.4757,
  [994] = 16.2454,
  [995] = 15.7811,
  [996] = 18.1566,
  [997] = 18.5333,
  [999] = 32.3538,
  [1006] = 40.897,
  [1007] = 40.2619,
  [1008] = 39.0336,
  [1009] = 43.4057,
  [1010] = 12.2921,
  [1011] = 10.1286,
  [1012] = 2.642,
  [1013] = 10.0565,
  [1015] = 9.6998,
  [1016] = 9.742,
  [1018] = 4.6402,
  [1019] = 6.3046,
  [1025] = 11.0303,
  [1026] = 3.2998,
  [1027] = 3.3062,
  [1028] = 11.3629,
  [1030] = 0.2629,
  [1031] = 0.0936,
  [1032] = 0.0901,
  [1035] = 0.3779,
  [1038] = 41.1266,
  [1039] = 3.9658,
  [1040] = 9.3158,
  [1042] = 9.6763,
  [1043] = 4.7773,
  [1044] = 39.8943,
  [1045] = 5.0236,
  [1046] = 13.2855,
  [1047] = 14.3687,
  [1048] = 38.9297,
  [1049] = 27.6942,
  [1050] = 4.9576,
  [1051] = 42.5328,
  [1053] = 13.1267,
  [1054] = 26.616,
  [1057] = 5.5933,
  [1058] = 17.2242,
  [1059] = 3.8314,
  [1060] = 4.0949,
  [1061] = 12.7857,
  [1062] = 3.7313,
  [1063] = 3.7384,
  [1064] = 4.3336,
  [1166] = 13.049,
  [1167] = 21.2066,
  [1168] = 30.497,
  [1169] = 12.1612,
  [1172] = 2.6529,
  [1173] = 14.0988,
  [1174] = 14.0794,
  [1175] = 8.3276,
  [1176] = 10.5528,
  [1178] = 8.6103,
  [1179] = 1.3674,
  [1180] = 18.948,
  [1182] = 17.5842,
  [1183] = 17.5081,
  [1185] = 17.8854,
  [1190] = 8.5623,
  [1191] = 16.6392,
  [1192] = 0.9511,
  [1193] = 11.8154,
  [1194] = 6.4173,
  [1195] = 4.0384,
  [1196] = 4.2472,
  [1197] = 6.9698,
  [1198] = 32.5979,
  [1199] = 17.2374,
  [1200] = 16.1504,
  [1201] = 3.7323,
  [1203] = 16.214,
  [1204] = 11.9339,
  [1205] = 17.4157,
  [1206] = 2.0665,
  [1207] = 1.6094,
  [1208] = 8.2192,
  [1209] = 12.8582,
  [1210] = 6.6082,
  [1211] = 13.1944,
  [1212] = 7.6384,
  [1213] = 5.2223,
  [1214] = 12.4272,
  [1215] = 12.6512,
  [1216] = 8.073,
  [1217] = 5.232,
  [1218] = 6.9119,
  [1219] = 15.1093,
  [1220] = 11.5799,
  [1221] = 8.2802,
  [1222] = 12.9124,
  [1223] = 17.497,
  [1224] = 53.3982,
  [1225] = 18.1724,
  [1227] = 13.5652,
  [1229] = 3.9789,
  [1230] = 11.6785,
  [1231] = 10.5969,
  [1232] = 5.5583,
  [1237] = 8.8896,
  [1238] = 5.5766,
  [1239] = 41.7455,
  [1240] = 51.6296,
  [1242] = 10.1547,
  [1243] = 14.2116,
  [1245] = 23.3687,
  [1246] = 23.3687,
  [1247] = 4.5768,
  [1248] = 5.6789,
  [1249] = 8.023,
  [1250] = 6.4147,
  [1252] = 6.8808,
  [1253] = 33.3107,
  [1254] = 2.306,
  [1255] = 16.6655,
  [1256] = 16.6655,
  [1257] = 2.004,
  [1258] = 5.5784,
  [1259] = 21.2274,
  [1260] = 12.8128,
  [1262] = 4.1294,
  [1265] = 34.7281,
  [1266] = 13.5182,
  [1267] = 13.439,
  [1277] = 1.5257,
  [1282] = 22.8739,
  [1283] = 28.704,
  [1285] = 12.1949,
  [1286] = 40.9732,
  [1287] = 6.801,
  [1288] = 10.7589,
  [1289] = 65.6349,
  [1290] = 19.3281,
  [1291] = 25.0249,
  [1292] = 11.458,
  [1293] = 3.5817,
  [1297] = 5.734,
  [1298] = 2.6908,
  [1299] = 46.3656,
  [1302] = 70.2049,
  [1303] = 54.2391,
  [1304] = 3.0036,
  [1305] = 19.7176,
  [1306] = 13.4741,
  [1307] = 10.9595,
  [1309] = 18.9298,
  [1310] = 13.564,
  [1311] = 13.5842,
  [1312] = 9.3579,
  [1313] = 5.3372,
  [1314] = 5.206,
  [1315] = 18.6029,
  [1317] = 3.7684,
  [1318] = 12.0922,
  [1319] = 6.4293,
  [1320] = 11.7459,
  [1321] = 5.0433,
  [1322] = 5.5906,
  [1324] = 9.6387,
  [1326] = 16.4447,
  [1327] = 3.8171,
  [1328] = 4.7227,
  [1329] = 10.1326,
  [1330] = 13.7909,
  [1332] = 8.2078,
  [1346] = 19.1936,
  [1350] = 18.9717,
  [1351] = 7.5257,
  [1352] = 8.2695,
  [1354] = 16.3919,
  [1355] = 6.9507,
  [1356] = 5.6282,
  [1357] = 62.2821,
  [1358] = 4.0528,
  [1359] = 6.359,
  [1360] = 35.971,
  [1361] = 20.0364,
  [1362] = 30.0524,
  [1363] = 0.4082,
  [1364] = 53.7245,
  [1365] = 13.4572,
  [1366] = 2.0741,
  [1367] = 4.581,
  [1368] = 43.6225,
  [1369] = 55.0667,
  [1370] = 7.7278,
  [1371] = 4.0116,
  [1372] = 4.2167,
  [1373] = 4.4823,
  [1375] = 14.606,
  [1376] = 7.6497,
  [1377] = 9.3457,
  [1378] = 13.8091,
  [1379] = 3.5083,
  [1382] = 1.8136,
  [1384] = 15.416,
  [1385] = 51.3476,
  [1387] = 1.5637,
  [1388] = 57.7227,
  [1389] = 2.8902,
  [1391] = 7.0223,
  [1392] = 7.1584,
  [1393] = 15.2228,
  [1394] = 6.1107,
  [1395] = 9.2214,
  [1396] = 55.5748,
  [1397] = 32.5536,
  [1398] = 14.7371,
  [1399] = 58.7207,
  [1400] = 51.8759,
  [1401] = 2.4834,
  [1402] = 2.3259,
  [1404] = 11.7316,
  [1405] = 19.7779,
  [1406] = 14.6792,
  [1407] = 10.9024,
  [1408] = 8.3666,
  [1409] = 4.4195,
  [1410] = 4.9717,
  [1411] = 9.8347,
  [1413] = 8.7206,
  [1414] = 18.9931,
  [1415] = 44.8444,
  [1416] = 18.367,
  [1417] = 6.7203,
  [1419] = 21.4546,
  [1420] = 6.0391,
  [1421] = 18.1222,
  [1422] = 17.4754,
  [1423] = 18.5242,
  [1424] = 8.9876,
  [1425] = 16.0601,
  [1426] = 3.2545,
  [1428] = 22.5191,
  [1429] = 6.5793,
  [1430] = 5.5293,
  [1431] = 5.6853,
  [1433] = 3.3547,
  [1434] = 9.2026,
  [1436] = 4.4817,
  [1437] = 25.9632,
  [1438] = 11.298,
  [1439] = 11.3207,
  [1440] = 11.3152,
  [1441] = 2.9264,
  [1442] = 20.1252,
  [1443] = 4.2321,
  [1444] = 13.5989,
  [1445] = 19.1231,
  [1446] = 21.8667,
  [1448] = 5.1678,
  [1449] = 9.7615,
  [1450] = 14.22,
  [1451] = 3.8384,
  [1452] = 3.8345,
  [1454] = 8.456,
  [1455] = 10.9596,
  [1456] = 23.598,
  [1458] = 85.4032,
  [1459] = 5.698,
  [1460] = 5.4294,
  [1465] = 3.2511,
  [1466] = 3.1679,
  [1467] = 9.5766,
  [1468] = 22.966,
  [1469] = 21.4638,
  [1471] = 3.2316,
  [1474] = 5.3412,
  [1475] = 11.7103,
  [1476] = 13.2127,
  [1477] = 13.9094,
  [1478] = 6.3842,
  [1480] = 0.5552,
  [1481] = 16.2582,
  [1484] = 59.6363,
  [1485] = 16.5116,
  [1486] = 5.0651,
  [1487] = 12.8866,
  [1489] = 16.1177,
  [1490] = 55.1565,
  [1491] = 4.6467,
  [1492] = 56.2977,
  [1493] = 12.9743,
  [1494] = 13.4054,
  [1495] = 52.906,
  [1496] = 13.2292,
  [1497] = 4.3892,
  [1500] = 7.126,
  [1501] = 9.1129,
  [1502] = 10.4595,
  [1503] = 9.3349,
  [1504] = 4.3142,
  [1505] = 16.5881,
  [1506] = 11.9951,
  [1507] = 8.339,
  [1508] = 10.9905,
  [1509] = 6.0916,
  [1510] = 16.4298,
  [1511] = 13.0707,
  [1513] = 28.4873,
  [1514] = 19.5555,
  [1517] = 5.0405,
  [1520] = 20.7836,
  [1521] = 15.8004,
  [1522] = 15.5241,
  [1523] = 2.9732,
  [1524] = 2.7342,
  [1525] = 5.1336,
  [1526] = 26.099,
  [1528] = 4.252,
  [1529] = 29.3673,
  [1531] = 23.8967,
  [1532] = 2.6154,
  [1533] = 6.2198,
  [1534] = 4.6613,
  [1535] = 2.8415,
  [1536] = 2.3111,
  [1537] = 6.5791,
  [1538] = 4.0148,
  [1539] = 2.3144,
  [1540] = 4.7741,
  [1541] = 5.4884,
  [1542] = 6.9376,
  [1543] = 4.2052,
  [1544] = 21.8052,
  [1545] = 8.2562,
  [1546] = 4.2427,
  [1547] = 3.1467,
  [1549] = 5.4438,
  [1550] = 53.3078,
  [1551] = 7.7258,
  [1552] = 17.1779,
  [1553] = 1.2075,
  [1556] = 54.8961,
  [1563] = 95.6305,
  [1564] = 11.548,
  [1565] = 13.5262,
  [1566] = 25.3396,
  [1568] = 20.0218,
  [1569] = 21.1298,
  [1570] = 3.2637,
  [1571] = 2.5366,
  [1572] = 0.2299,
  [1573] = 32.9009,
  [1574] = 32.0614,
  [1575] = 40.2138,
  [1576] = 28.4429,
  [1577] = 50.1004,
  [1579] = 0.1801,
  [1580] = 6.6951,
  [1581] = 26.4617,
  [1582] = 40.2855,
  [1583] = 3.255,
  [1584] = 6.4057,
  [1585] = 9.714,
  [1586] = 19.3358,
  [1587] = 1.8947,
  [1588] = 80.9592,
  [1589] = 97.2411,
  [1590] = 94.4068,
  [1591] = 91.8105,
  [1594] = 27.5765,
  [1596] = 42.9867,
  [1597] = 9.5749,
  [1599] = 0.0703,
  [1600] = 9.5927,
  [1602] = 6.9196,
  [1603] = 16.3348,
  [1612] = 16.815,
  [1614] = 4.7559,
  [1615] = 22.4306,
  [1616] = 19.9511,
  [1617] = 13.7287,
  [1618] = 6.1828,
  [1619] = 22.3762,
  [1621] = 5.8649,
  [1622] = 43.1338,
  [1623] = 6.9518,
  [1626] = 3.5277,
  [1627] = 3.4201,
  [1629] = 7.0451,
  [1633] = 5.9113,
  [1634] = 11.0681,
  [1635] = 30.8934,
  [1638] = 7.6387,
  [1639] = 18.2892,
  [1644] = 7.601,
  [1645] = 11.1848,
  [1651] = 5.181,
  [1653] = 16.0555,
  [1654] = 10.1138,
  [1655] = 17.1363,
  [1656] = 6.2426,
  [1657] = 20.7597,
  [1658] = 10.8338,
  [1659] = 21.0764,
  [1660] = 0.1628,
  [1662] = 9.3579,
  [1664] = 32.2202,
  [1665] = 31.5071,
  [1667] = 32.1119,
  [1668] = 31.8602,
  [1669] = 6.5883,
  [1671] = 18.1622,
  [1672] = 13.9203,
  [1674] = 19.1638,
  [1679] = 37.5693,
  [1681] = 33.1954,
  [1683] = 38.7221,
  [1684] = 45.8326,
  [1685] = 36.7508,
  [1686] = 50.2981,
  [1688] = 4.0576,
  [1689] = 3.9892,
  [1692] = 27.3958,
  [1698] = 3.2158,
  [1699] = 14.5819,
  [1725] = 31.0403,
  [1727] = 4.4641,
  [1729] = 4.9589,
  [1730] = 7.7333,
  [1732] = 1.5779,
  [1733] = 7.7755,
  [1734] = 6.5872,
  [1735] = 23.282,
  [1736] = 10.1414,
  [1737] = 18.3258,
  [1738] = 17.7657,
  [1739] = 0.1927,
  [1740] = 2.9214,
  [1741] = 2.7558,
  [1742] = 22.0037,
  [1744] = 49.6104,
  [1772] = 40.0134,
  [1773] = 42.1898,
  [1774] = 3.6228,
  [1776] = 26.5677,
  [1777] = 27.8361,
  [1778] = 18.449,
  [1779] = 22.1982,
  [1781] = 18.5129,
  [1782] = 18.2965,
  [1783] = 23.274,
  [1784] = 30.1223,
  [1785] = 15.3037,
  [1792] = 49.1001,
  [1794] = 10.6431,
  [1795] = 26.0045,
  [1797] = 14.5818,
  [1798] = 46.368,
  [1799] = 33.786,
  [1801] = 35.4193,
  [1808] = 30.6116,
  [1809] = 28.7335,
  [1810] = 30.9036,
  [1811] = 29.0177,
  [1812] = 7.8592,
  [1813] = 8.8385,
  [1814] = 7.0461,
  [1815] = 39.5107,
  [1816] = 31.5378,
  [1817] = 31.2337,
  [1818] = 3.0644,
  [1819] = 2.5189,
  [1820] = 2.3454,
  [1822] = 0.2197,
  [1824] = 7.986,
  [1825] = 4.3752,
  [1830] = 71.1841,
  [1831] = 0.1573,
  [1833] = 31.3258,
  [1834] = 7.2091,
  [1835] = 31.5609,
  [1837] = 21.6424,
  [1838] = 28.7851,
  [1839] = 29.6326,
  [1841] = 38.558,
  [1938] = 20.8688,
  [1939] = 21.6374,
  [1940] = 28.2996,
  [1941] = 9.8312,
  [1942] = 28.8619,
  [1943] = 8.1558,
  [1944] = 1.5213,
  [1947] = 9.6741,
  [1948] = 0.7377,
  [1949] = 33.8093,
  [1956] = 33.1997,
  [1957] = 1.7982,
  [1958] = 28.9037,
  [1959] = 17.3279,
  [2023] = 6.3419,
  [2035] = 29.1119,
  [2036] = 22.6216,
  [2038] = 9.3731,
  [2039] = 19.5857,
  [2055] = 25.6033,
  [2056] = 1.7715,
  [2057] = 1.5812,
  [2060] = 26.5004,
  [2063] = 24.8316,
  [2064] = 26.1111,
  [2065] = 19.8181,
  [2067] = 19.9555,
  [2068] = 20.6809,
  [2069] = 26.4859,
  [2070] = 20.3456,
  [2071] = 21.511,
  [2072] = 23.0009,
  [2073] = 22.7683,
  [2074] = 22.9219,
  [2075] = 22.5898,
  [2076] = 22.5893,
  [2077] = 22.4292,
  [2078] = 23.7038,
  [2080] = 23.811,
  [2081] = 21.9721,
  [2083] = 22.5149,
  [2084] = 20.89,
  [2085] = 23.4502,
  [2086] = 22.6613,
  [2087] = 25.264,
  [2088] = 23.297,
  [2089] = 22.732,
  [2090] = 15.7853,
  [2091] = 21.6629,
  [2114] = 2.7936,
  [2116] = 14.3703,
  [2117] = 13.645,
  [2118] = 20.4334,
  [2119] = 2.0099,
  [2140] = 26.9193,
  [2142] = 44.3613,
  [2143] = 21.336,
  [2144] = 62.464,
  [2148] = 14.0594,
  [2150] = 2.1443,
  [2152] = 28.857,
  [2158] = 0.2283,
  [2159] = 22.5875,
  [2162] = 13.2214,
  [2165] = 10.7342,
  [2167] = 1.2824,
  [2171] = 20.4996,
  [2172] = 17.7029,
  [2174] = 16.56,
  [2176] = 3.866,
  [2177] = 17.6444,
  [2178] = 0.7206,
  [2180] = 6.5864,
  [2181] = 30.0374,
  [2184] = 18.5956,
  [2188] = 4.0908,
  [2189] = 27.5846,
  [2190] = 3.4335,
  [2191] = 14.7314,
  [2192] = 8.9562,
  [2193] = 16.0411,
  [2194] = 16.442,
  [2198] = 29.0332,
  [2199] = 26.4151,
  [2201] = 29.6265,
  [2203] = 26.4151,
  [2204] = 13.3822,
  [2205] = 2.4118,
  [2209] = 15.709,
  [2211] = 2.369,
  [2213] = 16.8095,
  [2214] = 41.398,
  [2218] = 0.1186,
  [2219] = 5.1335,
  [2222] = 5.3951,
  [2223] = 1.5779,
  [2224] = 22.7328,
  [2225] = 10.4485,
  [2230] = 7.5603,
  [2232] = 0.4852,
  [2233] = 7.8411,
  [2235] = 13.9376,
  [2237] = 6.759,
  [2238] = 57.2875,
  [2239] = 26.1047,
  [2240] = 8.7806,
  [2244] = 35.9903,
  [2249] = 37.1937,
  [2259] = 13.9376,
  [2261] = 24.6636,
  [2265] = 19.9612,
  [2272] = 0.6549,
  [2274] = 0.0476,
  [2276] = 0.1553,
  [2277] = 8.0964,
  [2278] = 0.1564,
  [2279] = 6.6225,
  [2280] = 5.7015,
  [2281] = 0.0543,
  [2283] = 0.0513,
  [2284] = 0.2454,
  [2286] = 0.4311,
  [2287] = 0.8224,
  [2288] = 3.1949,
  [2289] = 0.0395,
  [2290] = 0.0431,
  [2291] = 6.6182,
  [2292] = 0.0366,
  [2293] = 1.7056,
  [2294] = 0.4984,
  [2295] = 0.0713,
  [2296] = 33.674,
  [2298] = 0.011,
  [2299] = 0.4221,
  [2300] = 0.5348,
  [2303] = 4.5508,
  [2304] = 3.8587,
  [2305] = 3.8587,
  [2307] = 3.8587,
  [2308] = 3.8587,
  [2313] = 2.6362,
  [2315] = 19.6362,
  [2317] = 9.9868,
  [2321] = 15.3111,
  [2322] = 7.1923,
  [2324] = 10.38,
  [2327] = 8.1547,
  [2328] = 11.1574,
  [2329] = 25.8326,
  [2330] = 2.401,
  [2331] = 2.401,
  [2332] = 7.3255,
  [2333] = 8.2542,
  [2334] = 0.1281,
  [2339] = 1.3204,
  [2342] = 1.091,
  [2343] = 1.091,
  [2344] = 1.091,
  [2345] = 1.2804,
  [2346] = 1.091,
  [2347] = 13.1151,
  [2469] = 10.7091,
  [2470] = 7.2125,
  [2471] = 9.0365,
  [2473] = 8.2461,
  [2474] = 7.4367,
  [2476] = 2.5172,
  [2477] = 2.5172,
  [2480] = 25.8316,
  [2482] = 8.509,
  [2483] = 13.8349,
  [2487] = 0.2489,
  [2488] = 16.8918,
  [2489] = 18.0031,
  [2491] = 14.5396,
  [2495] = 13.1381,
  [2496] = 1.0862,
  [2497] = 1.4773,
  [2498] = 1.0253,
  [2499] = 0.9095,
  [2500] = 0.0582,
  [2501] = 0.3072,
  [2502] = 0.1632,
  [2504] = 0.5037,
  [2507] = 2.3917,
  [2508] = 8.052,
  [2519] = 1.4851,
  [2520] = 9.0981,
  [2524] = 1.1247,
  [2525] = 1.0085,
  [2526] = 0.3439,
  [2527] = 0.4549,
  [2529] = 1.0085,
  [2535] = 2.34,
} end
