local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmC") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Water",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="elemental"},
items={{52326,64}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Volatile_Water"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
|tip You can also fish in any schools of fish for Volatile Water as well. |only if skill("Fishing") >= 450
goldcollect 53 Volatile Water##52326
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Volatile Water |confirm |next "Start_Farming_Volatile_Water"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Fire",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="elemental"},
items={{52325,60}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Volatile_Fire"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
goldcollect 60 Volatile Fire##52325
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Volatile Fire |confirm |next "Start_Farming_Volatile_Fire"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Earth",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="elemental"},
items={{52327,80}},
maps={"Mount Hyjal"},
},[[
step
label "Start_Farming_Volatile_Earth"
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
goldcollect 80 Volatile Earth##52327
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Volatile Earth |confirm |next "Start_Farming_Volatile_Earth"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Air",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="elemental"},
items={{52328,44}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Volatile_Air"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
goldcollect 44 Volatile Air##52328
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Volatile Air |confirm |next "Start_Farming_Volatile_Air"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Embersilk Cloth",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="cloth"},
items={{53010,1600}},
maps={"Deepholm"},
},[[
step
label "Start_Farming_Embersilk_Cloth"
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.20,25.60	67.20,32.00	68.60,35.80	69.00,42.60	73.00,45.00
path	77.20,42.80	76.80,35.60	74.60,32.80	74.80,28.40	72.20,26.60
Kill humanoid enemies around this area
goldcollect 1600 Embersilk Cloth##53010
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Embersilk Cloth |confirm |next "Start_Farming_Embersilk_Cloth"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Dragon Flank",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="food"},
items={{62782,60}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Dragon_Flank"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	69.97,74.75	68.58,72.58	65.91,71.20	63.42,71.61	61.66,74.66
path	61.10,78.40	61.52,81.41	63.15,81.55	65.03,80.87	67.27,77.49
Kill Dragonkin enemies along the path
goldcollect 60 Dragon Flank##62782
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Dragon Flank |confirm |next "Start_Farming_Dragon_Flank"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Basilisk Liver",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="food"},
items={{62783,120}},
maps={"Deepholm"},
},[[
step
label "Start_Farming_Basilisk_Liver"
map Deepholm/0
path follow smart; loop on; ants straight; dist 30
path	43.47,28.20	45.05,25.12	46.45,21.89	41.34,13.37	38.12,14.37
path	35.97,21.65	36.52,24.39	37.38,27.47	37.61,31.33	41.17,29.98
Kill Basilisk enemies along the path
goldcollect 120 Basilisk Liver##62783
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Basilisk "Liver" |confirm |next "Start_Farming_Basilisk_Liver"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Crocolisk Tail",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="food"},
items={{62784,100}},
maps={"Deepholm"},
},[[
step
label "Start_Farming_Crocolisk_Tail"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path    54.61,46.14    56.17,50.11    57.47,51.67    57.87,54.07    58.63,56.98
path    59.04,60.18    60.49,60.70    60.27,57.55    59.86,55.26    59.19,52.69
path    58.55,51.06    57.82,50.05    57.67,47.17    57.21,45.34    55.83,44.88
Kill Crocolisk along the path
goldcollect 100 Crocolisk Tail##62784
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Crocolisk Tail |confirm |next "Start_Farming_Crocolisk_Tail"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Snake Eye",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="food"},
items={{62780,200}},
maps={"Kelp'thar Forest"},
},[[
step
label "Start_Farming_Snake_Eye"
kill Brinescale Serpent##39948+
goldcollect 200 Snake Eye##62780 |goto Kelp'thar Forest/0 56.28,37.89
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Snake Eye |confirm |next "Start_Farming_Snake_Eye"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Giant Turtle Tongue",{
cataready=true,
meta={goldtype="route",levelreq=85,itemtype="food"},
items={{62781,180}},
maps={"Kelp'thar Forest"},
},[[
step
label "Start_Farming_Giant_Turtle_Tongue"
kill Speckled Sea Turtle##40223+
goldcollect 180 Giant Turtle Tongue##62781 |goto Kelp'thar Forest/0 50.94,41.57
You can find more here:
[54.47,50.52]
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.10,70.60 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Giant Turtle Tongue |confirm |next "Start_Farming_Giant_Turtle_Tongue"
]])
