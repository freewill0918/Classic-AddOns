local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherAMOP") then return end
if UnitFactionGroup("player")~="Alliance" then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Peacebloom/Silverleaf/Earthroot",{
meta={goldtype="route",skillreq={herbalism=1},levelreq={1}},
items={{2447,200},{765,240},{2449,140}},
maps={"Elwynn Forest"},
},[[
step
map Elwynn Forest/0
path	follow strict; loop on; ants curved; dist 25
path	35.10,58.10	27.90,73.90	25.80,88.90
path	38.80,87.50	39.90,76.50	46.80,74.60
path	53.50,84.00	62.90,77.80	73.90,83.80
path	77.00,76.50	84.00,85.10	88.50,77.10
path	85.90,61.00	74.50,53.90	70.60,61.70
path	62.10,62.60	62.50,58.10	45.20,63.40
path	44.70,55.50	40.90,53.70
|goldcollect 200 Peacebloom##2447
|goldcollect 240 Silverleaf##765
|goldcollect 140 Earthroot##2449
|goldtracker
Click Here to Sell Items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Rain Poppy",{
meta={goldtype="route",skillreq={pandaria_herbalism=1},levelreq={10}},
items={{72237,384},{89640,18}},
maps={"The Jade Forest"},
},[[
step
map The Jade Forest
path	follow smart; loop off; ants curved; dist 10
path	56.70,80.60	57.60,85.90	61.30,83.70
path	61.10,80.20	60.30,79.60	59.50,74.60
path	57.30,70.90	52.70,69.50	46.50,68.40
path	46.20,63.20	49.00,62.20	48.40,58.60
path	46.20,59.10	41.60,55.50	38.00,51.60
path	35.20,47.90	31.90,45.70	27.40,44.50
path	24.80,41.10	24.90,36.30	26.00,33.10
|goldcollect 384 Rain Poppy##72237
|goldcollect 18 Life Spirit##89640
|goldtracker
Click Here to Sell Items |confirm
step
#include "auctioneer"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Alabaster Pigment",{
meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq={1}},
items={{2447,200},{765,240},{2449,140},{39151,304}},
maps={"Elwynn Forest"},
},[[
step
map Elwynn Forest
path	follow strict; loop on; ants curved; dist 25
path	35.10,58.10	27.90,73.90	25.80,88.90
path	38.80,87.50	39.90,76.50	46.80,74.60
path	53.50,84.00	62.90,77.80	73.90,83.80
path	77.00,76.50	84.00,85.10	88.50,77.10
path	85.90,61.00	74.50,53.90	70.60,61.70
path	62.10,62.60	62.50,58.10	45.20,63.40
path	44.70,55.50	40.90,53.70
|goldcollect 200 Peacebloom##2447|n
|goldcollect 240 Silverleaf##765 |n
|goldcollect 140 Earthroot##2449 |n
Mill the herbs you've gathered into Alabaster Pigment |cast Milling##51005
|goldcollect 304 Alabaster Pigment##39151
|goldtracker
Click Here to Sell Items |confirm
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
Click Here to Sell Items |confirm
step
#include "auctioneer"
]])
