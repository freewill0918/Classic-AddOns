
-------------------------------------
-- 物品附魔信息庫 Author: M
-------------------------------------

local MAJOR, MINOR = "LibItemEnchant.7000", 1
local lib = LibStub:NewLibrary(MAJOR, MINOR)

if not lib then return end

--Thanks to RRRRBUA(NGA)
local EnchantItemDB = {
    [5423] = 128537,
    [5424] = 128538,
    [5425] = 128539,
    [5426] = 128540,
    [5427] = 128541,
    [5428] = 128542,
    [5429] = 128543,
    [5430] = 128544,
    [5431] = 128545,
    [5432] = 128546,
    [5433] = 128547,
    [5434] = 128548,
    [5435] = 128549,
    [5436] = 128550,
    [5437] = 128551,
    [5438] = 128552,
    [5439] = 128553,
    [5444] = 128558,
    [5445] = 128559,
    [5446] = 128560,
    [5447] = 128561,
    [5440] = 128554,
    [5441] = 140213,
    [5442] = 140214,
    [5443] = 140215,
    [5881] = 140217,
    [5882] = 140218,
    [5883] = 140219,
    [5888] = 141861,
    [5889] = 141908,
    [5890] = 141909,
    [5891] = 141910,
    [5896] = 144305,
    [5899] = 144328,
    [5900] = 144346,
    [5931] = 153247,
    [5929] = 153197,
    [5939] = 153439,
    [5943] = 153443,
    [5955] = 158212,
    --那萊矯捷瞄準鏡 158327
    --5957 炙燃火藥
    --6087 韧性法术丝线
    --6088 谨慎法术丝线
    --6089 轻羽法术丝线
    
    [6108] = 168446,
    [6109] = 168447,
    [6110] = 168448,
    [6111] = 168449,
    [6112] = 168593,
    [6148] = 168596,
    [6149] = 168592,
    [6150] = 168598,
    --戒指 致命 153442
    --戒指 应变 153445
    
}

--Data from: M, RRRRBUA(NGA), KibsItemLevel
local EnchantSpellDB = {
    [15] = 2831,
    [16] = 2832,
    [17] = 2833,
    [18] = 10344,
    [24] = 7443,
    [30] = 3974,
    [32] = 3975,
    [33] = 3976,
    [34] = 7218,
    [36] = 6296,
    [37] = 7220,
    [41] = 7420,
    [43] = 7216,
    [44] = 7426,
    [63] = 13538,
    [66] = 7863,
    [241] = 13503,
    [242] = 7748,
    [243] = 7766,
    [246] = 7776,
    [247] = 7867,
    [248] = 7782,
    [249] = 7786,
    [250] = 7788,
    [254] = 7857,
    [255] = 13380,
    [369] = 34001,
    [463] = 9781,
    [464] = 9783,
    [663] = 12459,
    [664] = 12460,
    [723] = 7793,
    [724] = 13644,
    [744] = 13421,
    [783] = 7771,
    [803] = 13898,
    [805] = 13943,
    [823] = 13536,
    [843] = 13607,
    [844] = 13612,
    [845] = 13617,
    [846] = 24302,
    [847] = 13626,
    [848] = 13635,
    [849] = 13637,
    [850] = 13640,
    [851] = 20024,
    [852] = 13836,
    [853] = 13653,
    [854] = 13655,
    [856] = 13661,
    [857] = 13663,
    [863] = 13689,
    [865] = 13698,
    [866] = 13700,
    [884] = 13746,
    [904] = 13935,
    [905] = 13822,
    [906] = 13841,
    [907] = 13846,
    [908] = 13858,
    [909] = 13868,
    [910] = 25083,
    [911] = 13890,
    [912] = 13915,
    [913] = 13917,
    [923] = 13931,
    [924] = 7428,
    [925] = 13646,
    [927] = 13939,
    [928] = 13941,
    [929] = 20020,
    [930] = 13947,
    [931] = 13948,
    [943] = 13529,
    [963] = 13937,
    [1071] = 34009,
    [1075] = 44528,
    [1099] = 60663,
    [1103] = 44633,
    [1119] = 44555,
    [1128] = 60653,
    [1147] = 44508,
    [1483] = 15340,
    [1503] = 15389,
    [1504] = 15391,
    [1505] = 15394,
    [1506] = 15397,
    [1507] = 15400,
    [1508] = 15402,
    [1509] = 15404,
    [1510] = 15406,
    [1523] = 15427,
    [1524] = 15429,
    [1525] = 15439,
    [1526] = 15441,
    [1527] = 15444,
    [1528] = 15446,
    [1529] = 15449,
    [1530] = 15458,
    [1532] = 15463,
    [1543] = 15490,
    [1597] = 60763,
    [1600] = 60616,
    [1603] = 60668,
    [1606] = 60621,
    [1704] = 16623,
    [1843] = 19057,
    [1883] = 20008,
    [1884] = 20009,
    [1885] = 20010,
    [1886] = 20011,
    [1887] = 20012,
    [1889] = 20015,
    [1890] = 20016,
    [1891] = 20025,
    [1892] = 20026,
    [1893] = 20028,
    [1894] = 20029,
    [1896] = 20030,
    [1897] = 13695,
    [1898] = 20032,
    [1899] = 20033,
    [1900] = 20034,
    [1903] = 20035,
    [1904] = 20036,
    [1951] = 44591,
    [1952] = 44489,
    [1953] = 47766,
    [2322] = 33999,
    [2326] = 44635,
    [2332] = 60767,
    [2381] = 44509,
    [2443] = 21931,
    [2483] = 22593,
    [2484] = 22594,
    [2485] = 22598,
    [2486] = 22597,
    [2487] = 22596,
    [2488] = 22599,
    [2503] = 22725,
    [2504] = 22749,
    [2505] = 22750,
    [2523] = 22779,
    [2543] = 22840,
    [2544] = 22844,
    [2545] = 22846,
    [2563] = 23799,
    [2564] = 23800,
    [2565] = 23801,
    [2567] = 23803,
    [2568] = 23804,
    [2583] = 24149,
    [2584] = 24160,
    [2587] = 24163,
    [2588] = 24164,
    [2589] = 24165,
    [2590] = 24167,
    [2591] = 24168,
    [2603] = 13620,
    [2604] = 24420,
    [2605] = 24421,
    [2606] = 24422,
    [2613] = 25072,
    [2614] = 25073,
    [2615] = 25074,
    [2616] = 25078,
    [2617] = 25079,
    [2621] = 25084,
    [2622] = 25086,
    [2646] = 27837,
    [2647] = 27899,
    [2648] = 27906,
    [2649] = 27914,
    [2650] = 23802,
    [2653] = 27944,
    [2654] = 27945,
    [2655] = 27946,
    [2656] = 27948,
    [2657] = 27951,
    [2658] = 27954,
    [2659] = 27957,
    [2661] = 27960,
    [2662] = 27961,
    [2666] = 27968,
    [2667] = 27971,
    [2668] = 27972,
    [2669] = 27975,
    [2670] = 27977,
    [2671] = 27981,
    [2672] = 27982,
    [2673] = 27984,
    [2674] = 28003,
    [2675] = 28004,
    [2679] = 27913,
    [2681] = 28161,
    [2682] = 28163,
    [2683] = 28165,
    [2714] = 29454,
    [2715] = 29475,
    [2716] = 29480,
    [2717] = 29483,
    [2721] = 29467,
    [2722] = 30250,
    [2723] = 30252,
    [2724] = 30260,
    [2745] = 31369,
    [2746] = 31370,
    [2747] = 31371,
    [2748] = 31372,
    [2792] = 32397,
    [2793] = 32398,
    [2794] = 32399,
    [2841] = 44968,
    [2933] = 33992,
    [2934] = 33993,
    [2935] = 33994,
    [2937] = 33997,
    [2938] = 34003,
    [2939] = 34007,
    [2940] = 34008,
    [2977] = 35355,
    [2978] = 35402,
    [2979] = 35403,
    [2980] = 35404,
    [2981] = 35405,
    [2982] = 35406,
    [2983] = 35407,
    [2984] = 35415,
    [2985] = 35416,
    [2986] = 35417,
    [2987] = 35418,
    [2988] = 35419,
    [2989] = 35420,
    [2990] = 35432,
    [2991] = 35433,
    [2992] = 35434,
    [2993] = 35435,
    [2994] = 35436,
    [2995] = 35437,
    [2996] = 35438,
    [2997] = 35439,
    [2998] = 35441,
    [2999] = 35443,
    [3001] = 35445,
    [3002] = 35447,
    [3003] = 35452,
    [3004] = 35453,
    [3005] = 35454,
    [3006] = 35455,
    [3007] = 35456,
    [3008] = 35457,
    [3009] = 35458,
    [3010] = 35488,
    [3011] = 35489,
    [3012] = 35490,
    [3013] = 35495,
    [3095] = 37889,
    [3096] = 37891,
    [3150] = 33991,
    [3222] = 42620,
    [3223] = 42687,
    [3225] = 42974,
    [3228] = 44119,
    [3229] = 44383,
    [3231] = 44484,
    [3232] = 47901,
    [3233] = 27958,
    [3234] = 44488,
    [3236] = 44492,
    [3238] = 44506,
    [3239] = 44524,
    [3241] = 44576,
    [3243] = 44582,
    [3244] = 44584,
    [3245] = 44588,
    [3246] = 44592,
    [3247] = 44595,
    [3249] = 44612,
    [3251] = 44621,
    [3252] = 44623,
    [3253] = 44625,
    [3256] = 44631,
    [3260] = 44769,
    [3269] = 45697,
    [3273] = 46578,
    [3289] = 47103,
    [3294] = 47672,
    [3296] = 47899,
    [3297] = 47900,
    [3315] = 48401,
    [3325] = 50901,
    [3326] = 50902,
    [3329] = 50906,
    [3330] = 50909,
    [3332] = 50913,
    [3366] = 53331,
    [3367] = 53342,
    [3368] = 53344,
    [3370] = 53343,
    [3595] = 54447,
    [3599] = 54736,
    [3601] = 54793,
    [3605] = 55002,
    [3607] = 55076,
    [3608] = 55135,
    [3718] = 55630,
    [3719] = 55631,
    [3720] = 55632,
    [3721] = 55634,
    [3731] = 55836,
    [3748] = 56353,
    [3754] = 24162,
    [3755] = 24161,
    [3775] = 58126,
    [3776] = 58128,
    [3777] = 58129,
    [3788] = 59619,
    [3789] = 59621,
    [3790] = 59625,
    [3793] = 59771,
    [3794] = 59773,
    [3795] = 59777,
    [3796] = 59778,
    [3797] = 59784,
    [3806] = 59927,
    [3807] = 59928,
    [3808] = 59934,
    [3809] = 59936,
    [3810] = 59937,
    [3811] = 59941,
    [3812] = 59944,
    [3813] = 59945,
    [3814] = 59946,
    [3815] = 59947,
    [3816] = 59948,
    [3817] = 59954,
    [3818] = 59955,
    [3819] = 59960,
    [3820] = 59970,
    [3822] = 60581,
    [3823] = 60582,
    [3824] = 60606,
    [3825] = 60609,
    [3826] = 60623,
    [3827] = 60691,
    [3828] = 44630,
    [3829] = 44513,
    [3830] = 44629,
    [3831] = 47898,
    [3832] = 60692,
    [3833] = 60707,
    [3834] = 60714,
    [3835] = 61117,
    [3836] = 61118,
    [3837] = 61119,
    [3838] = 61120,
    [3842] = 61271,
    [3843] = 61468,
    [3844] = 44510,
    [3845] = 44575,
    [3846] = 34010,
    [3847] = 62158,
    [3849] = 62201,
    [3850] = 62256,
    [3851] = 62257,
    [3852] = 62384,
    [3853] = 62447,
    [3854] = 62948,
    [3855] = 62959,
    [3858] = 63746,
    [3869] = 64441,
    [3870] = 64579,
    [3872] = 56039,
    [3873] = 56034,
    [3875] = 59929,
    [3876] = 59932,
    [4061] = 74132,
    [4062] = 74189,
    [4063] = 74191,
    [4064] = 74192,
    [4065] = 74193,
    [4066] = 74195,
    [4067] = 74197,
    [4068] = 74198,
    [4069] = 74199,
    [4070] = 74200,
    [4071] = 74201,
    [4072] = 74202,
    [4073] = 74207,
    [4074] = 74211,
    [4075] = 74212,
    [4076] = 74213,
    [4077] = 74214,
    [4082] = 74220,
    [4083] = 74223,
    [4084] = 74225,
    [4085] = 74226,
    [4086] = 74229,
    [4087] = 74230,
    [4088] = 74231,
    [4089] = 74232,
    [4090] = 74234,
    [4091] = 74235,
    [4092] = 74236,
    [4093] = 74237,
    [4094] = 74238,
    [4095] = 74239,
    [4096] = 74240,
    [4097] = 74242,
    [4098] = 74244,
    [4099] = 74246,
    [4100] = 74247,
    [4101] = 74248,
    [4102] = 74250,
    [4103] = 74251,
    [4104] = 74253,
    [4105] = 74252,
    [4106] = 74254,
    [4107] = 74255,
    [4108] = 74256,
    [4109] = 75149,
    [4110] = 75150,
    [4111] = 75151,
    [4112] = 75152,
    [4113] = 75154,
    [4114] = 75155,
    [4120] = 78165,
    [4121] = 78166,
    [4122] = 78169,
    [4124] = 78170,
    [4126] = 78171,
    [4127] = 78172,
    [4175] = 81932,
    [4176] = 81933,
    [4177] = 81934,
    [4187] = 84424,
    [4188] = 84427,
    [4193] = 86375,
    [4194] = 86401,
    [4195] = 86402,
    [4196] = 86403,
    [4197] = 86847,
    [4198] = 86854,
    [4199] = 86898,
    [4200] = 86899,
    [4201] = 86900,
    [4202] = 86901,
    [4203] = 86906,
    [4204] = 86907,
    [4205] = 86909,
    [4206] = 86931,
    [4207] = 86932,
    [4208] = 86933,
    [4209] = 86934,
    [4214] = 84425,
    [4215] = 92433,
    [4216] = 92437,
    [4217] = 93448,
    [4222] = 67839,
    [4223] = 55016,
    [4227] = 95471,
    [4245] = 96245,
    [4246] = 96246,
    [4247] = 96247,
    [4248] = 96249,
    [4249] = 96250,
    [4250] = 96251,
    [4256] = 96261,
    [4257] = 96262,
    [4258] = 96264,
    [4259] = 96286,
    [4267] = 99623,
    [4270] = 101598,
    [4411] = 104338,
    [4412] = 104385,
    [4414] = 104389,
    [4415] = 104390,
    [4416] = 104391,
    [4417] = 104392,
    [4418] = 104393,
    [4419] = 104395,
    [4420] = 104397,
    [4421] = 104398,
    [4422] = 104401,
    [4423] = 104403,
    [4424] = 104404,
    [4426] = 104407,
    [4427] = 104408,
    [4428] = 104409,
    [4429] = 104414,
    [4430] = 104416,
    [4431] = 104417,
    [4432] = 104419,
    [4433] = 104420,
    [4434] = 104445,
    [4441] = 104425,
    [4442] = 104427,
    [4443] = 104430,
    [4444] = 104434,
    [4445] = 104440,
    [4446] = 104442,
    [4687] = 108115,
    [4699] = 109086,
    [4700] = 109093,
    [4717] = 110764,
    [4719] = 113011,
    [4720] = 7418,
    [4721] = 7457,
    [4722] = 13378,
    [4723] = 7745,
    [4724] = 13419,
    [4725] = 7779,
    [4726] = 13687,
    [4727] = 7859,
    [4728] = 13485,
    [4729] = 13622,
    [4730] = 13501,
    [4731] = 13631,
    [4732] = 71692,
    [4733] = 13464,
    [4734] = 13882,
    [4735] = 13642,
    [4736] = 13659,
    [4737] = 13648,
    [4738] = 13817,
    [4739] = 13887,
    [4740] = 13815,
    [4741] = 13905,
    [4742] = 20013,
    [4743] = 13945,
    [4744] = 20017,
    [4745] = 13693,
    [4746] = 27967,
    [4747] = 44500,
    [4748] = 44589,
    [4750] = 82200,
    [4803] = 121192,
    [4804] = 121193,
    [4805] = 121194,
    [4806] = 121195,
    [4808] = 121988,
    [4822] = 122387,
    [4823] = 122388,
    [4824] = 122386,
    [4825] = 122392,
    [4826] = 122393,
    [4869] = 124091,
    [4870] = 124116,
    [4871] = 124118,
    [4872] = 124119,
    [4880] = 124559,
    [4881] = 124561,
    [4882] = 124563,
    [4883] = 124564,
    [4884] = 124565,
    [4885] = 124566,
    [4886] = 124567,
    [4887] = 124568,
    [4888] = 124569,
    [4895] = 125496,
    [4896] = 125497,
    [4897] = 126392,
    [4907] = 127015,
    [4908] = 127014,
    [4909] = 127013,
    [4910] = 127012,
    [4912] = 113048,
    [4913] = 113047,
    [4914] = 113046,
    [4915] = 113045,
    [4916] = 113044,
    [4918] = 128286,
    [4992] = 130749,
    [4993] = 130758,
    [5000] = 109099,
    [5001] = 131464,
    [5003] = 131862,
    [5004] = 131863,
    [5035] = 139631,
    [5055] = 141167,
    [5056] = 141168,
    [5057] = 141170,
    [5058] = 141173,
    [5059] = 141174,
    [5060] = 141175,
    [5061] = 141176,
    [5062] = 141177,
    [5063] = 141330,
    [5076] = 141445,
    [5080] = 141862,
    [5081] = 141868,
    [5091] = 141971,
    [5092] = 141973,
    [5093] = 141974,
    [5094] = 141975,
    [5095] = 141976,
    [5096] = 141977,
    [5097] = 141978,
    [5098] = 141981,
    [5099] = 141982,
    [5100] = 141983,
    [5101] = 141984,
    [5110] = 142173,
    [5111] = 142175,
    [5112] = 142177,
    [5113] = 142178,
    [5124] = 142469,
    [5125] = 142468,
    [5183] = 27911,
    [5184] = 27917,
    [5237] = 33990,
    [5250] = 33995,
    [5255] = 33996,
    [5257] = 34002,
    [5258] = 34004,
    [5259] = 44529,
    [5260] = 46594,
    [5274] = 155692,
    [5275] = 156050,
    [5276] = 156061,
    [5281] = 158877,
    [5284] = 158907,
    [5285] = 158892,
    [5292] = 158893,
    [5293] = 158894,
    [5294] = 158895,
    [5295] = 158896,
    [5297] = 158908,
    [5298] = 158878,
    [5299] = 158909,
    [5300] = 158879,
    [5301] = 158910,
    [5302] = 158880,
    [5303] = 158911,
    [5304] = 158881,
    [5310] = 158884,
    [5311] = 158885,
    [5312] = 158886,
    [5313] = 158887,
    [5314] = 158889,
    [5317] = 158899,
    [5318] = 158900,
    [5319] = 158901,
    [5320] = 158902,
    [5321] = 158903,
    [5324] = 158914,
    [5325] = 158915,
    [5326] = 158916,
    [5327] = 158917,
    [5328] = 158918,
    [5330] = 159235,
    [5331] = 159236,
    [5334] = 159672,
    [5335] = 159673,
    [5336] = 159674,
    [5337] = 159671,
    [5352] = 170627,
    [5353] = 170628,
    [5354] = 170629,
    [5355] = 170630,
    [5356] = 170631,
    [5357] = 170886,
    [5383] = 173287,
    [5384] = 173323,
    [5423] = 190866,
    [5424] = 190867,
    [5425] = 190868,
    [5426] = 190869,
    [5427] = 190870,
    [5428] = 190871,
    [5429] = 190872,
    [5430] = 190873,
    [5431] = 190874,
    [5432] = 190875,
    [5433] = 190876,
    [5434] = 190877,
    [5435] = 190878,
    [5436] = 190879,
    [5437] = 190892,
    [5438] = 190893,
    [5439] = 190894,
    [5889] = 228402,
    [5890] = 228405,
    [5891] = 228408,
    [5444] = 190988,
    [5445] = 190989,
    [5446] = 190990,
    [5447] = 190991,
    [5440] = 190954,
    [5441] = 190955,
    [5442] = 190956,
    [5443] = 190957,
    [5881] = 222851,
    [5882] = 222852,
    [5883] = 222853,
    [5888] = 228139,
    --[5898] = , +9致命
    [5899] = 235731,
    [5900] = 235795,
    [5932] = 255035,
    [5933] = 255040,
    [5934] = 255065,
    [5935] = 255066,
    [5936] = 255068,
    [5937] = 255070,
    [5938] = 255071,
    [5939] = 255072,
    [5940] = 255073,
    [5941] = 255074,
    [5942] = 255086,
    [5943] = 255087,
    [5944] = 255088,
    [5945] = 255089,
    [5946] = 255103,
    [5948] = 255110,
    [5949] = 255129,
    [5950] = 255141,
    [5962] = 268852,
    [5963] = 268894,
    [5964] = 268901,
    [5965] = 268907,
    [5966] = 268913,
    [5970] = 271366,
    [5971] = 271433,
    
    -- 熊貓人刺繡附魔
    [4892] = 125481, -- 光紋刺繡 (Lightweave Embroidery)
    [4893] = 125482, -- 暗輝刺繡 (Darkglow Embroidery)
    [4894] = 125483, -- 劍衛刺繡 (Swordguard Embroidery)
    
    -- 戒指附魔
    [4359] = 103461, -- 強效敏捷 (Greater Agility)
    [4360] = 103462, -- 強效智力 (Greater Intellect)
    [4361] = 103463, -- 強效耐力 (Greater Stamina)
    [4807] = 103465, -- 強效力量 (Greater Strength)

}

function lib:GetEnchantSpellID(ItemLink)
    local enchant = tonumber(string.match(ItemLink, "item:%d+:(%d+):"))
    if (enchant and EnchantSpellDB[enchant]) then
        return EnchantSpellDB[enchant], enchant
    end
    return nil, enchant
end

function lib:GetEnchantItemID(ItemLink)
    local enchant = tonumber(string.match(ItemLink, "item:%d+:(%d+):"))
    if (enchant and EnchantItemDB[enchant]) then
        return EnchantItemDB[enchant], enchant
    end
    return nil, enchant
end

-- GetEnchantInfo: 綜合方法，返回附魔物品ID、附魔法術ID和附魔ID
function lib:GetEnchantInfo(link, slotID)
    local enchantID = tonumber(string.match(link, "item:%d+:(%d+):"))
    if not enchantID or enchantID == 0 then
        return nil, nil, nil
    end
    
    local enchantItemID = EnchantItemDB[enchantID]
    local enchantSpellID = EnchantSpellDB[enchantID]
    
    return enchantItemID, enchantSpellID, enchantID
end
