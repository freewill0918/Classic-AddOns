local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherC") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Volatile Life",{
cataready=true,
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={{52329,84},{52983,400}},
maps={"Mount Hyjal"},
},[[
step
label "Start_Farming_Volatile_Life"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	63.52,31.55	59.57,32.88	56.84,34.54	54.71,29.36	53.13,31.28
path	48.07,30.68	45.74,27.86	36.60,22.67	35.18,25.84	33.14,25.57
path	33.77,34.17	33.99,37.06	27.61,39.43	25.94,37.24	24.30,33.51
path	23.48,36.14	21.88,38.77	15.82,40.94	13.52,40.33	14.38,45.61
path	17.12,53.39	19.25,57.53	23.37,59.85	24.79,61.79	27.32,59.90
path	28.50,54.44	31.11,52.22	34.43,54.53	35.78,57.57	36.87,62.02
path	38.97,61.57	40.29,59.61	41.57,56.62	49.01,57.60	51.13,57.93
path	51.16,53.77	51.72,51.91	54.23,53.26	55.58,57.23	57.62,54.09
path	61.08,59.46	61.30,60.55	65.74,54.83	69.41,55.41	72.97,59.21
path	74.00,61.72	77.50,59.62	79.41,55.08	81.41,51.90
|tip Gather Cinderbloom and other herbs along the path.
click Cinderbloom##202747+
click Stormvine##52984+
goldcollect 84 Volatile Life##52329
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Volatile Life |confirm |next "Start_Farming_Volatile_Life"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Cinderbloom",{
cataready=true,
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={{52983,400},{52329,84}},
maps={"Mount Hyjal"},
},[[
step
label "Start_Farming_Cinderbloom"
map Mount Hyjal/0
path follow smart; loop on; ants curved; dist 60
path	68.20,23.92	59.25,31.60	57.03,38.93	57.93,17.52	51.53,16.95
path	52.61,35.53	48.74,36.52	44.01,24.52	39.84,32.50	36.52,21.76
path	32.30,25.22	34.61,36.91	43.52,42.66	36.23,44.93	25.35,37.83
path	24.12,31.91	11.83,31.63	14.34,47.02	19.04,58.51	25.64,62.01
path	31.91,46.75	33.12,65.25	36.93,53.51	42.31,55.93	33.81,65.02
path	31.33,76.52	33.81,98.22	57.12,80.90	59.23,84.55	59.83,77.83
path	55.82,74.71	59.83,71.61	49.11,51.61	61.92,60.54	67.12,53.50
path	74.31,58.84	71.92,68.52	77.30,63.22	83.01,64.22	89.91,49.82
path	80.90,51.82	77.51,59.51
click Cinderbloom##202747+
|tip Gather Cinderbloom along the path.
goldcollect 400 Cinderbloom##52983
goldcollect 84 Volatile Life##52329
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Cinderbloom |confirm |next "Start_Farming_Cinderbloom"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heartblossom",{
cataready=true,
meta={goldtype="route",skillreq={herbalism=475},levelreq=83},
items={{52986,360},{52329,75}},
maps={"Mount Hyjal"},
},[[
step
label "Start_Farming_Heartblossom"
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
click Heartblossom##202750+
|tip Gather Heartblossom along the path.
goldcollect 360 Heartblossom##52986
goldcollect 75 Volatile Life##52329
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Heartblossom |confirm |next "Start_Farming_Heartblossom"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Stormvine",{
cataready=true,
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={{52984,300},{52329,84}},
maps={"Shimmering Expanse"},
},[[
step
label "Start_Farming_Stormvine"
map Shimmering Expanse/0
path follow smart; loop on; ants curved
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
click Stormvine##202748+
|tip Gather Stormvine along the path.
|tip They share a spawn with Azshara's Veil.
goldcollect 300 Stormvine##52984
goldcollect 84 Volatile Life##52329
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Stormvine |confirm |next "Start_Farming_Stormvine"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Azshara's Veil",{
cataready=true,
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={{52985,300},{52329,84}},
maps={"Shimmering Expanse"},
},[[
step
label "Start_Farming_Azshara's_Veil"
map Shimmering Expanse/0
path follow smart; loop on; ants curved
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
click Azshara's Veil##202749+
|tip Gather Azshara's Veil along the path.
|tip They share a spawn with Stormvine.
goldcollect 300 Azshara's Veil##52985
goldcollect 84 Volatile Life##52329
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Azshara's Veil |confirm |next "Start_Farming_Azshara's_Veil"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Twilight Jasmine",{
cataready=true,
meta={goldtype="route",skillreq={herbalism=525},levelreq=80},
items={{52987,440},{52329,91}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Twilight_Jasmine"
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	70.79,46.66	69.08,42.90	68.12,37.36	67.99,34.25	67.92,32.12
path	67.98,28.52	69.01,26.70	70.14,26.05	69.62,23.03	68.44,21.98
path	66.26,24.24	65.60,26.84	64.83,30.58	62.91,32.57	63.75,36.84
path	62.36,43.90	63.47,46.58	64.18,50.11	63.88,52.38	63.33,55.10
path	62.69,56.32	61.44,58.61	60.10,60.07	58.70,60.30	56.14,58.93
path	54.70,57.04	54.76,53.59	54.07,51.31	53.21,47.50	51.29,44.32
path	51.47,40.36	52.21,36.53	53.48,33.11	54.42,29.98	55.19,27.59
path	55.40,24.05	56.41,21.03	57.11,18.00	57.43,15.53	58.22,11.89
path	57.02,9.89	54.09,12.97	52.71,17.04	52.38,19.85	51.17,21.97
path	51.54,24.86	50.50,26.23	50.53,29.60	50.07,31.64	48.89,32.38
path	46.86,30.23	45.54,29.06	44.74,31.54	44.95,35.06	44.63,37.16
path	43.74,39.31	43.55,42.11	42.73,43.29	41.06,44.76	39.97,45.87
path	39.00,47.54	37.48,49.88	34.58,48.91	32.66,49.23	31.62,48.98
path	31.19,46.65	30.79,42.28	30.76,39.79	29.82,39.80	27.86,37.98
path	26.51,39.06	27.74,40.33	29.17,44.01	29.32,47.45	29.13,49.65
path	28.34,51.37	26.75,52.65	24.65,53.95	22.32,55.39	20.68,56.92
path	21.03,58.92	23.25,58.85	25.48,57.20	27.80,56.29	30.13,53.99
path	31.60,52.58	33.57,51.83	34.78,52.09	36.74,53.31	39.49,55.28
path	41.57,57.93	42.19,59.81	43.60,62.38	45.70,65.74	48.13,67.86
path	50.42,70.52	52.63,73.92	54.83,76.33	56.65,77.04	58.28,76.00
path	59.09,72.74	59.99,70.03	60.77,66.67	61.81,64.63	63.20,61.86
path	65.59,59.13	67.64,56.58
click Twilight Jasmine##202751+
|tip Gather Twilight Jasmine along the path.
goldcollect 440 Twilight Jasmine##52987
goldcollect 91 Volatile Life##52329
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Twilight Jasmine |confirm |next "Start_Farming_Twilight_Jasmine"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Whiptail",{
cataready=true,
meta={goldtype="route",skillreq={herbalism=500},levelreq=80},
items={{52988,240},{52329,50}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Whiptail"
map Uldum/0
path follow smart; loop on; ants curved; dist 60
path	58.42,31.33	56.23,22.66	57.81,14.55	61.51,14.04	57.13,44.73
path	60.51,58.32	69.82,76.52	65.93,75.92	60.02,83.22	59.00,58.82
path	55.30,45.81	52.01,45.61	50.80,42.51	50.80,36.01
click Whiptail##202752+
|tip Gather Whiptail along the path.
goldcollect 240 Whiptail##52988
goldcollect 50 Volatile Life##52329
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Whiptail |confirm |next "Start_Farming_Whiptail"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Elementium Ore (Twilight Highlands)",{
cataready=true,
meta={goldtype="route",skillreq={mining=500},levelreq=80},
items={{52185,260},{52327,12},{52325,12},{52326,12}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Elementium"
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	67.12,53.71	66.14,50.02	65.32,47.07	63.19,43.30	61.37,40.30
path	57.72,38.31	54.89,37.76	52.17,40.03	50.30,42.97	45.84,49.71
path	43.99,52.61	42.07,54.66	39.00,59.98	38.30,62.37	38.09,66.30
path	38.80,69.49	40.30,74.96	42.18,76.70	44.22,77.22	45.48,79.26
path	46.79,81.59	49.33,82.52	51.97,81.92	54.74,81.61	57.05,79.84
path	59.27,77.24	59.82,73.45	60.56,71.34	62.55,68.61	65.27,68.74
path	66.76,71.13	68.14,74.02	67.67,77.62	65.97,80.72	63.98,83.07
path	61.10,85.08	58.48,86.62	55.40,86.44	52.38,87.05	49.45,86.26
path	46.20,85.56	43.32,86.32	40.64,87.78	37.90,88.35	36.61,86.84
path	36.05,84.16	34.20,82.17	32.33,79.21	30.43,73.67	29.60,69.58
path	31.49,67.23	34.04,65.18	35.81,62.68	37.65,59.14	38.56,55.60
path	38.27,49.23	37.53,43.75	37.42,39.31	39.60,35.31	41.42,31.65
path	41.88,28.18	40.70,25.49	39.36,22.58	40.81,20.45	43.38,20.38
path	47.97,20.48	51.88,22.44	55.55,24.46	58.41,26.99	61.48,30.78
path	64.76,34.88	67.50,38.35	68.75,42.37	69.74,47.06	71.15,50.40
click Elementium Vein##202738+
click Rich Elementium Vein##202741+
|tip Gather Elementium along the path.
goldcollect 260 Elementium Ore##52185
goldcollect 9 Volatile Earth##52327
goldcollect 9 Volatile Fire##52325
goldcollect 9 Volatile Water##52326
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Elementium Ore |confirm |next "Start_Farming_Elementium"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Elementium Ore (Uldum)",{
cataready=true,
meta={goldtype="route",skillreq={mining=500},levelreq=80},
items={{52185,320},{52183,32},{52327,12},{52325,12},{52326,12}},
maps={"Uldum"},
},[[
step
label "Start_Farming_Elementium"
map Uldum/0
path follow smart; loop on; ants curved
path	56.86,12.78	54.97,12.91	53.07,12.92	50.43,12.68	49.30,12.15
path	47.71,10.28	46.16,8.31	44.09,7.57	41.61,7.76	39.70,9.33
path	39.95,10.62	41.79,13.78	40.84,15.40	39.40,16.86	38.27,18.67
path	35.87,17.32	33.40,14.72	32.03,13.94	30.76,15.21	30.34,17.27
path	31.13,20.39	31.91,23.31	31.65,26.44	30.89,28.73	29.45,32.01
path	28.80,34.40	28.52,36.72	28.04,39.92	27.38,43.54	26.56,46.54
path	25.41,49.01	23.28,51.15	20.81,53.14	18.60,55.58	17.41,57.24
path	16.15,58.95	15.84,61.02	17.62,62.94	20.17,64.10	22.49,64.26
path	24.03,63.86	26.77,61.47	28.59,59.39	30.98,56.52	33.93,53.95
path	37.25,51.16	39.09,50.02	40.56,50.79	39.41,53.93	38.94,56.75
path	38.52,59.24	38.50,62.47	39.31,64.69	41.01,65.50	43.18,66.16
path	45.86,66.26	48.99,65.26	51.88,62.72	53.94,60.09	56.31,57.10
path	57.53,59.17	57.99,62.49	60.00,62.92	62.73,62.72	65.45,60.59
path	67.20,60.76	69.19,62.16	70.45,64.64	71.28,67.82	72.01,70.64
path	72.95,72.90	74.33,72.01	76.72,68.83	78.55,67.13	80.15,65.55
path	81.75,63.19	81.58,60.80	80.98,59.23	81.29,55.02	81.97,51.35
path	81.36,48.60	80.24,46.39	78.92,45.21	77.26,43.91	75.86,42.46
path	74.21,41.32	72.17,39.38	70.90,37.35	69.60,35.47	69.19,33.01
path	69.21,29.97	69.24,26.94	69.11,23.70	68.85,20.69	68.10,18.82
path	67.38,16.97	66.29,15.85	64.63,15.09	62.95,14.12	61.62,14.89
path	60.14,13.67
click Elementium Vein##202738+
click Rich Elementium Vein##202741+
click Pyrite Deposit##202737+
click Rich Pyrite Deposit##202740+
|tip Gather ore along the path.
goldcollect 320 Elementium Ore##52185
goldcollect 32 Pyrite Ore##52183
goldcollect 12 Volatile Earth##52327
goldcollect 12 Volatile Fire##52325
goldcollect 12 Volatile Water##52326
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Elementium Ore |confirm |next "Start_Farming_Elementium"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Savage Leather",{
cataready=true,
meta={goldtype="route",skillreq={skinning=500},levelreq=80},
items={{52976,600}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Savage_Leather"
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
Kill enemies around this area.
|tip Skin their corpses.
goldcollect 600 Savage Leather##52976
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Savage Leather |confirm |next "Start_Farming_Savage_Leather"
]])
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blackened Dragonscale",{
cataready=true,
meta={goldtype="route",skillreq={skinning=500},levelreq=80},
items={{52979,200},{52976,400},{62782,50}},
maps={"Twilight Highlands"},
},[[
step
label "Start_Farming_Dragonscale"
Kill enemies around this area.
|tip Be sure to target the enemies flying above as well.
|tip Skin their corpses.
goldcollect 200 Blackened Dragonscale##52979 |n |goto Twilight Highlands/0 65.48,74.22
goldcollect 400 Savage Leather##52976
goldcollect 50 Dragon Flank##62782
|goldtracker
|tip
_Ready to Sell?_
Click Here to Sell Your Items on the Auction House |confirm
step
talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
|tip List the items you want to sell on the Auction House.
|tip
_Want to Farm More?_
Click Here to Farm Blackened Dragonscale |confirm |next "Start_Farming_Dragonscale"
]])
