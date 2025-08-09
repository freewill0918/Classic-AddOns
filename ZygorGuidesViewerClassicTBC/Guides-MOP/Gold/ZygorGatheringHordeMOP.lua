local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherHMOP") then return end
if UnitFactionGroup("player")~="Horde" then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Peacebloom/Silverleaf/Earthroot",{
condition_valid='raceclass("Horde")',
meta={goldtype="route",skillreq={herbalism=1},levelreq={1}},
items={{2447,174},{765,216},{2449,132}},
maps={"Durotar"},
},[[
step
map Durotar
path	follow smart; loop on; ants curved; dist 10
path	46.20,17.10	38.80,16.20	38.70,22.10
path	37.90,30.40	48.50,32.80	51.40,36.50
path	51.70,52.00	53.60,62.40	55.60,69.70
path	60.90,69.10	60.70,58.00	57.60,46.90
path	55.00,32.40	57.80,26.10	53.40,12.50
|goldcollect 174 Peacebloom##2447
|goldcollect 216 Silverleaf##765
|goldcollect 132 Earthroot##2449
|goldtracker
Click here to sell items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Rain Poppy",{
condition_valid='raceclass("Horde")',
meta={goldtype="route",skillreq={pandaria_herbalism=1},levelreq={10}},
items={{72237,336},{89640,18}},
maps={"The Jade Forest"},
},[[
step
map The Jade Forest
path	follow smart; loop off; ants curved; dist 10
path	59.50,74.60	57.30,70.90	52.70,69.50
path	46.50,68.40	46.20,63.20	49.00,62.20
path	48.40,58.60	46.20,59.10	41.60,55.50
path	38.00,51.60	35.20,47.90	31.90,45.70
path	27.40,44.50	24.80,41.10	24.90,36.30
path	26.00,33.10
|goldcollect 336 Rain Poppy##72237
|goldcollect 18 Life Spirit##89640
|goldtracker
Click here to sell items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Alabaster Pigment",{
condition_valid='raceclass("Horde")',
meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq={1}},
items={{2447,174},{765,216},{2449,132},{39151,246}},
maps={"Durotar"},
},[[
step
map Durotar
path	follow smart; loop on; ants curved; dist 10
path	46.20,17.10	38.80,16.20	38.70,22.10
path	37.90,30.40	48.50,32.80	51.40,36.50
path	51.70,52.00	53.60,62.40	55.60,69.70
path	60.90,69.10	60.70,58.00	57.60,46.90
path	55.00,32.40	57.80,26.10	53.40,12.50
|goldcollect 174 Peacebloom##2447 |n
|goldcollect 216 Silverleaf##765 |n
|goldcollect 132 Earthroot##2449 |n
Mill the herbs you've gathered into Alabaster Pigment |cast Milling##51005
|goldcollect 246 Alabaster Pigment##39151
|goldtracker
Click here to sell items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Copper Ore/Rough Stone (Horde)",{
condition_valid='raceclass("Horde")',
meta={goldtype="route",skillreq={mining=1},levelreq=1},
items={{2835,612},{2770,588},{1210,12},{818,12}},
maps={"Durotar"},
},[[
step
map Durotar
path	follow smart; loop on; ants curved; dist 15
path	55.10,10.20	53.80,18.50	56.30,24.60
path	52.70,29.30	54.00,39.80	58.70,41.50
path	59.50,54.30	55.70,56.00	56.10,69.40
path	50.80,74.20	49.80,49.20	39.40,51.80
path	37.90,30.40	39.60,17.60
|goldcollect 612 Rough Stone##2835
|goldcollect 588 Copper Ore##2770
|goldcollect 12 Shadowgem##1210
|goldcollect 12 Tigerseye##818
|goldtracker
Click here to sell items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ruined Leather Scraps/Light Leather(Horde)",{
condition_valid='raceclass("Horde")',
meta={goldtype="route",skillreq={skinning=1},levelreq={1}},
items={{2318,192},{2934,150},{117,48,'crap'},{56968,90,'crap'},{5466,54,'crap'},{769,12,'crap'},{771,18,'crap'},{62525,72,'crap'},{2924,30,'crap'},{62512,24,'crap'},{4872,12,'crap'},{4877,54,'crap'},{3685,24,'crap'},{68746,1,'crap'},{1433,1,'crap'},{15474,1,'crap'},{2138,1,'crap'},{4757,1,'crap'},{4876,2,'crap'},{1425,1,'crap'},{17056,1,'crap'},{1411,1,'crap'},{2140,1,'crap'}},
maps={"Durotar"},
},[[
step
map Durotar
path	follow smart; loop on; ants curved; dist 10
path	44.10,20.60	45.70,23.80	45.10,31.20
path	45.50,37.60	45.00,44.40	41.10,46.60
path	36.90,45.20	36.00,34.80	38.00,25.20
path	41.90,19.40
kill Venomtail Scorpid##3127+
kill Bloodtalon Scythemaw##3123+
kill Elder Mottled Boar##3100+
kill Dreadmaw Toothgnasher##39452+
|goldcollect 192 Light Leather##2318
|goldcollect 150 Ruined Leather Scraps##2934
|meta crap_items_follow=1
|goldcollect 48 Tough Jerky##117
|goldcollect 90 Bug Juice##56968
|goldcollect 54 Scorpid Stinger##5466
|goldcollect 12 Chunk of Boar Meat##769
|goldcollect 18 Chipped Boar Tusk##771
|goldcollect 72 Cloudy Crocolisk Eye##62525
|goldcollect 30 Crocolisk Meat##2924
|goldcollect 24 Small Animal Bone##62512
|goldcollect 12 Dry Scorpid Eye##4872
|goldcollect 54 Stone Arrowhead##4877
|goldcollect 24 Raptor Egg##3685
|goldcollect (1) Imbued Primal Cape##68746
|goldcollect (1) Patchwork Armor##1433
|goldcollect (1) Charger's Bindings##15474
|goldcollect (1) Sharpened Letter Opener##2138
|goldcollect (1) Cracked Egg Shells##4757
|goldcollect (2) Bloody Leather Boot##4876
|goldcollect (1) Worn Leather Vest##1425
|goldcollect (1) Light Feather##17056
|goldcollect (1) Withered Staff##1411
|goldcollect (1) Carving Knife of Intellect##2140
|goldtracker
Click here to sell items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Light Leather/Medium Leather/Light Hide/Medium Hide",{
meta={goldtype="route",skillreq={skinning=1},levelreq=10},
items={{4304,8},{2319,420},{4232,44},{2318,384},{783,12},{2592,592},{2589,400},{4306,104}},
maps={"Wetlands"},
},[[
step
kill Ebon Slavehunter##42043+
|goldcollect 8 Thick Leather##4304 |goto Wetlands 67.60,47.20
|goldcollect 420 Medium Leather##2319 |goto Wetlands 67.60,47.20
|goldcollect 44 Medium Hide##4232 |goto Wetlands 67.60,47.20
|goldcollect 384 Light Leather##2318 |goto Wetlands 67.60,47.20
|goldcollect 12 Light Hide##783 |goto Wetlands 67.60,47.20
|goldcollect 592 Wool Cloth##2592 |goto Wetlands 67.60,47.20
|goldcollect 400 Linen Cloth##2589 |goto Wetlands 67.60,47.20
|goldcollect 104 Silk Cloth##4306 |goto Wetlands 67.60,47.20
|goldtracker
Click here to sell items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Light Leather/Medium Leather/Light Hide/Medium Hide (Hillsbrad Foothills)",{
meta={goldtype="route",skillreq={skinning=1},levelreq=7},
items={{2318,280},{783,16},{2319,28}},
maps={"Hillsbrad Foothills"},
},[[
step
map Hillsbrad Foothills
path follow smart; loop on; ants curved; dist 20
path	31.00,65.50	30.00,67.50	32.10,71.70
path	32.80,68.50	34.50,68.70	36.00,71.90
path	36.00,68.30	34.00,66.80	31.90,65.60
kill Infested Bear##47204+
|goldcollect 280 Light Leather##2318
|goldcollect 16 Light Hide##783
|goldcollect 28 Medium Leather##2319
|goldtracker
Click here to sell items |confirm
step
#include "auctioneer"
]])
