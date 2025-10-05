local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies",{
mopready=true,
startlevel=90,
description="This guide will take you through The Dominance Offensive dailies Becoming Exalted with the Dominance Offensive allows you to purchase an epic flying mount, epic armor, and battle pets for your character.",
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.17
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
label "Begin_Daily_Quests"
talk Blood Guard Gro'tash##67880
accept The Ruins of Ogudei##32449 |goto Krasarang Wilds/0 10.08,53.87 |or |next "Ruins_of_Ogudei_Hub"
accept The Time is Now!##32450 |goto Krasarang Wilds/0 10.08,53.87 |or |next "Lion's_Landing_Hub"
accept Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds/0 10.08,53.87 |or
|tip Only one of these quests will be available if this NPC is offering quests today.
If No Quests Are Available, Click Here |complete nodailies(67880) or completedq(32222,32223) |or |next "Cave_Hub"
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
accept Tear It Up##32126 |goto Krasarang Wilds/0 10.37,53.86
step
talk Shokia##67618
accept Death on Two Legs##32123 |goto Krasarang Wilds/0 10.33,55.70
step
use the Bilgewater Molotov##92019
|tip Use it to kill Skyfire Gyrocopter X2 enemies around this area.
|tip They fly around in the air above this area.
|tip You can do this while mounted.
kill 6 Skyfire Gyrocopter X2##67359 |q 32235/1 |goto Krasarang Wilds/0 11.98,57.13
|only if haveq(32235) or completedq(32235)
stickystart "Slay_Alliance_Troops_2"
step
clicknpc Alliance Supply Drop##67969+
Destroy #8# Alliance Supply Drops |q 32126/1 |goto Krasarang Wilds/0 8.26,61.87
You can find more around:
[Krasarang Wilds/0 8.29,66.65]
[Krasarang Wilds/0 11.25,66.69]
|only if haveq(32126) or completedq(32126)
step
label "Slay_Alliance_Troops_2"
kill Shieldwall Marine##67354, Shieldwall Stormcaller##67425, Dwarven Mortar Team Engineer##67913
Sill #10# Alliance |q 32123/1 |goto Krasarang Wilds/0 8.03,61.31
|only if haveq(32123) or completedq(32123)
step
talk Shokia##67618
turnin Death on Two Legs##32123 |goto Krasarang Wilds/0 10.33,55.70
|only if haveq(32123) or completedq(32123)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
turnin Tear It Up##32126 |goto Krasarang Wilds/0 10.37,53.86
|only if haveq(32126) or completedq(32126)
step
talk Blood Guard Gro'tash##67880
turnin Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds/0 10.08,53.87
accept Another One Bites the Dust##32128 |goto Krasarang Wilds/0 10.08,53.87
|only if haveq(32235) or completedq(32235)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
accept All Dead, All Dead##32127 |goto Krasarang Wilds/0 10.37,53.86
|only if completedq(32126)
step
kill Captain Brent the Black##67626 |q 32127/1 |goto Krasarang Wilds/0 12.79,75.80
|tip On the second floor of the ship towards the back.
|only if haveq(32127) or completedq(32127)
step
click Powder Magazine##216231
|tip It's on the bottom floor of the ship next to fireworks and bombs.
Destroy the Defiant Ammunition |q 32128/2 |goto Krasarang Wilds/0 12.33,75.58
|only if haveq(32128) or completedq(32128)
step
kill Captain Mulkey##67627 |q 32127/2 |goto Krasarang Wilds/0 15.28,76.37
|tip On the second floor of the ship towards the back.
|only if haveq(32127) or completedq(32127)
step
click Powder Magazine##216231
|tip It's on the bottom floor of the ship next to fireworks and bombs.
Destroy the Valor's Edge Ammunition |q 32128/1 |goto Krasarang Wilds/0 15.10,76.62
|only if haveq(32128) or completedq(32128)
step
talk Blood Guard Gro'tash##67880
turnin Another One Bites the Dust##32128 |goto Krasarang Wilds/0 10.08,53.87
|only if haveq(32128) or completedq(32128)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
turnin All Dead, All Dead##32127 |goto Krasarang Wilds/0 10.37,53.86
|next "End_of_Quests"
|only if haveq(32127) or completedq(32127)
step
label "Cave_Hub"
click Bounty Board##232398
accept Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds/0 12.74,56.72 |or
accept Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds/0 12.74,56.72 |or
|tip Only one of these quests will be available.
step
talk Rivett Clutchpop##67608
accept Storming the Beach##32221 |goto Krasarang Wilds/0 12.92,56.13 |or
accept Bilgewater Infiltrators##32214 |goto Krasarang Wilds/0 12.92,56.13 |or
|tip Only one of these quests will be available.
step
talk Duke##67562
accept Krasarang Steampot##32199 |goto Krasarang Wilds/0 13.77,55.78 |or
accept Mystery Meatloaf##32197 |goto Krasarang Wilds/0 13.77,55.78 |or
|tip Only one of these quests will be available.
step
talk Boss-Lady Trixel##67535
accept Work Order: Iron##32140 |goto Krasarang Wilds/0 13.79,55.85 |or
accept Work Order: Fuel##32136 |goto Krasarang Wilds/0 13.79,55.85 |or
accept Work Order: Lumber##32138 |goto Krasarang Wilds/0 13.79,55.85 |or
|tip Only one of these quests will be available.
stickystart "Kill_Shieldwall_Forces"
step
use the "New" and "Improved" Infared Heat Focals##92475
|tip It will cause Saboteurs to be visible and show on the mimimap.
kill 10 SI:7 Saboteur##67689 |q 32214/1 |goto Krasarang Wilds/0 9.65,61.07
|only if haveq(32214) or completedq(32214)
step
kill Chief Engineer Cogwrench##68012 |q 32222/1 |goto Krasarang Wilds/0 21.67,51.09
|only if haveq(32222) or completedq(32222)
step
kill Lieutenant Ethan Jacobson##68028 |q 32223/1 |goto Krasarang Wilds/0 19.07,70.99
|only if haveq(32223) or completedq(32223)
step
label "Kill_Shieldwall_Forces"
kill Shieldwall Marine##67354, Dwarven Mortar Team Engineer##67545, Shieldwall Stormcaller##67425
Kill #10# Shieldwall Forces |q 32221/1 |goto Krasarang Wilds/0 18.95,68.43
|only if haveq(32221) or completedq(32221)
step
talk Zino "The Shredder" Quickchop##67534
turnin Work Order: Lumber##32138 |goto Krasarang Wilds/0 20.48,58.06
accept Stacked!##32139 |goto Krasarang Wilds/0 20.48,58.06
|only if haveq(32138) or completedq(32138)
step
talk Daxil "The Gem" Oregrind##67537
turnin Work Order: Iron##32140 |goto Krasarang Wilds/0 22.57,62.37
accept Power Metal##32141 |goto Krasarang Wilds/0 22.57,62.37
|only if haveq(32140) or completedq(32140)
step
talk Grizzle Gearslip##67542
turnin Work Order: Fuel##32136 |goto Krasarang Wilds/0 25.54,60.47
accept Runnin' On Empty##32137 |goto Krasarang Wilds/0 25.54,60.47
|only if haveq(32136) or completedq(32136)
step
talk Bixy Buzzsaw##67553
accept Precious Resource##32237 |goto Krasarang Wilds/0 25.25,60.41
|only if completedq(32136)
step
talk Bixy Buzzsaw##67533
accept Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
|only if completedq(32138)
step
talk Bixy Buzzsaw##67553
accept Bug Off!##32236 |goto Krasarang Wilds/0 22.38,62.29
|only if completedq(32140)
stickystart "Collect_Domination_Point_Lumber"
step
use the Universal Remote##91902
|tip Use it on Shieldwall Mecha-Pounders to weaken them.
kill 9 Shieldwall Mecha-Pounder##68011 |q 32238/1 |goto Krasarang Wilds/0 19.98,61.21
|only if haveq(32238) or completedq(32238)
step
label "Collect_Domination_Point_Lumber"
click Domination Point Lumber##216177
collect 9 Domination Point Lumber##216177 |q 32139/1 |goto Krasarang Wilds/0 19.98,61.21
|only if haveq(32139) or completedq(32139)
stickystart "Collect_Polluted_Viseclaw_Meat"
stickystart "Collect_Chunk_of_Mystery_Meat"
step
click Fauly Valve+
|tip They look like round leaking valves on pipes around this area.
Tighten #8# Faulty Valves |q 32237/1 |goto Krasarang Wilds/0 23.62,56.34
|only if haveq(32237) or completedq(32237)
step
click "Distilled" Fuel Barrel+
|tip They look like partially submerged brown barrels in and around water around this area.
collect 9 "Distilled" Fuel Barrel##91846 |q 32137/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32137) or completedq(32137)
step
label "Collect_Polluted_Viseclaw_Meat"
kill Polluted Viseclaw##67896, Polluted Viseclaw Scuttler##68584
collect 5 Polluted Viseclaw Meat##91869 |q 32199/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32199) or completedq(32199)
step
label "Collect_Chunk_of_Mystery_Meat"
kill Mature Terrapin##67895, Polluted Viseclaw##67896, Polluted Viseclaw Scuttler##68584
collect 7 Chunk of Mystery Meat##91874 |q 32197/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32197) or completedq(32197)
stickystart "Collect_Energized_Iron_Ore_Chunks"
stickystart "Kill_Shale_Shards"
step
Enter the cave |goto Krasarang Wilds/0 21.89,61.56 < 10 |walk
use the Hand-Dandy Bug Off Sprayer##93026
|tip Use it on Agitated Shale Spiders to spawn Shale Shards inside the cave.
Spray #5# Agitated Shale Spiders |q 32236/1 |goto Krasarang Wilds/0 19.86,62.43
|only if haveq(32236) or completedq(32236)
step
label "Kill_Shale_Shards"
kill 12 Shale Shards##68653 |q 32236/2 |goto Krasarang Wilds/0 19.86,62.43
|tip Inside the cave.
|only if haveq(32236) or completedq(32236)
step
label "Collect_Energized_Iron_Ore_Chunks"
click Energized Iron##216178+
|tip They look like large ore deposits inside the cave.
click Energized Iron Ore Chunk##216716+
|tip They spawn after clicking larger Energized Iron.
collect 7 Energized Iron Ore Chunk##91848 |q 32141/1 |goto Krasarang Wilds/0 19.86,62.43
|only if haveq(32141) or completedq(32141)
step
talk Bixy Buzzsaw##67533
turnin Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
|only if haveq(32238) or completedq(32238)
step
talk Zino "The Shredder" Quickchop##67534
turnin Stacked!##32139 |goto Krasarang Wilds/0 20.48,58.06
|only if haveq(32139) or completedq(32139)
step
talk Bixy Buzzsaw##67553
turnin Bug Off!##32236 |goto Krasarang Wilds 22.38,62.29
|only if haveq(32236) or completedq(32236)
step
talk Bixy Buzzsaw##67553
turnin Precious Resource##32237 |goto Krasarang Wilds/0 25.25,60.41
|only if haveq(32237) or completedq(32237)
step
talk Sezik Steampot##67536
turnin Krasarang Steampot##32199 |goto Krasarang Wilds/0 26.06,58.07 |only if haveq(32199) or completedq(32199)
turnin Mystery Meatloaf##32197 |goto Krasarang Wilds/0 26.06,58.07 |only if haveq(32197) or completedq(32197)
|only if haveq(32199,32197) or completedq(32199,32197)
step
talk Boss-Lady Trixel##67535
turnin Power Metal##32141 |goto Krasarang Wilds/0 13.79,55.85 |only if haveq(32141) or completedq(32141)
turnin Runnin' On Empty##32137 |goto Krasarang Wilds/0 13.79,55.85 |only if haveq(32137) or completedq(32137)
|only if haveq(32137,32141) or completedq(32137,32141)
step
talk Rivett Clutchpop##67608
turnin Storming the Beach##32221 |goto Krasarang Wilds/0 12.92,56.13 |only if haveq(32221) or completedq(32221)
turnin Bilgewater Infiltrators##32214 |goto Krasarang Wilds/0 12.92,56.13 |only if haveq(32214) or completedq(32214)
|only if haveq(32221,32214) or completedq(32221,32214)
step
talk Blood Guard Gro'tash##67880
turnin Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds/0 10.08,53.87 |only if haveq(32223) or completedq(32223)
turnin Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds/0 10.08,53.87 |only if haveq(32222) or completedq(32222)
|only if haveq(32223,32222) or completedq(32223,32222)
|next "End_of_Quests"
step
label "Lion's_Landing_Hub"
talk Shademaster Kiryn##67628
turnin The Time is Now!##32450 |goto Krasarang Wilds/0 75.83,34.47
accept Hero Killer##32135 |goto Krasarang Wilds/0 75.83,34.47
accept Worker Harassment##32132 |goto Krasarang Wilds/0 75.83,34.47
accept Sentry Wards##32133 |goto Krasarang Wilds/0 75.83,34.47
|only if haveq(32450) or completedq(32450)
step
talk Zazzix "Toasty" Sparkrocket##67402
accept Good Luck, Have Fun##32130 |goto Krasarang Wilds/0 75.86,34.16 |or 2
accept We Require More Minerals!##32131 |goto Krasarang Wilds/0 75.86,34.16 |or 2
accept Hard Counter##32134 |goto Krasarang Wilds/0 75.86,34.16 |or 2
|tip Only two of these quests will be available.
|only if completedq(32450)
stickystart "Kill_Shieldwall_Peasants"
stickystart "Kill_Dwarven_Mortar_Team_Engineers"
stickystart "Kill_Dwarven_Mortar_Tubes"
stickystart "Collect_Extra-Waxy_Alliance_Ears"
step
kill Thane Stonehearth##67636 |q 32135/1 |goto Krasarang Wilds/0 81.27,24.57
|tip He walks around this area.
|only if haveq(32135) or completedq(32135)
step
clicknpc Town Hall Sentry Ward Location##67744
|tip Inside the building.
Place the Sentry Ward in Town Hall |q 32133/1 |goto Krasarang Wilds/0 86.27,25.58
|only if haveq(32133) or completedq(32133)
step
clicknpc Docks Sentry Ward Location##67742
Place the Sentry Ward on the Docks |q 32133/2 |goto Krasarang Wilds/0 86.10,33.13
|only if haveq(32133) or completedq(32133)
step
clicknpc Barracks Sentry Ward Location##67743
|tip Upstairs inside the building.
Place the Sentry Ward in the Barracks |q 32133/3 |goto Krasarang Wilds/0 87.75,32.74
|only if haveq(32133) or completedq(32133)
step
label "Kill_Shieldwall_Peasants"
kill 30 Shieldwall Peasant##67423 |q 32132/1 |goto Krasarang Wilds/0 84.13,23.22
|only if haveq(32132) or completedq(32132)
step
label "Kill_Dwarven_Mortar_Team_Engineers"
kill 8 Dwarven Mortar Team Engineer##67545 |q 32134/1 |goto Krasarang Wilds/0 83.23,25.38
|only if haveq(32134) or completedq(32134)
step
label "Kill_Dwarven_Mortar_Tubes"
kill 2 Dwarven Mortar Tube##67541 |q 32134/2 |goto Krasarang Wilds/0 83.23,25.38
|only if haveq(32134) or completedq(32134)
step
kill Shieldwall Engineer##67441+
click Animatable Stone
collect 20 Animatable Stone##91823 |q 32131/1 |goto Krasarang Wilds/0 78.38,18.54
|only if haveq(32131) or completedq(32131)
step
label "Collect_Extra-Waxy_Alliance_Ears"
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Dwarven Mortar Team Engineer##67545, Shieldwall Huntress##67317, Shieldwall Vindicator##67296, Shieldwall Peasant##67423
collect 10 Extra-Waxy Alliance Ears##92474 |q 32130/1 |goto Krasarang Wilds/0 84.81,27.11
|only if haveq(32130) or completedq(32130)
step
talk Zazzix "Toasty" Sparkrocket##67402
turnin Good Luck, Have Fun##32130 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32130) or completedq(32130)
turnin We Require More Minerals!##32131 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32131) or completedq(32131)
turnin Hard Counter##32134 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32134) or completedq(32134)
|only if haveq(32130,32131,32134) or completedq(32130,32131,32134)
step
talk Shademaster Kiryn##67628
turnin Hero Killer##32135 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32135) or completedq(32135)
turnin Worker Harassment##32132 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32132) or completedq(32132)
turnin Sentry Wards##32133 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32133) or completedq(32133)
|only if haveq(32135,32132,32133) or completedq(32135,32132,32133)
|next "End_of_Quests"
step
label "Ruins_of_Ogudei_Hub"
talk Belloc Brightblade##67847
turnin The Ruins of Ogudei##32449 |goto Krasarang Wilds/0 76.31,34.08
accept Taking Advantage##32118 |goto Krasarang Wilds/0 76.31,34.08
|only if haveq(32449) or completedq(32449)
step
click Portal to Ruins of Ogudei
Reach the Ruins of Ogudei |complete subzone("Ruins of Ogudei") or completedq(32118) |goto Krasarang Wilds/0 76.20,33.98
|only if haveq(32118) or completedq(32118)
step
talk Kaelis Sunsoar##68274
turnin Taking Advantage##32118 |goto Krasarang Wilds/3 35.30,42.14
accept The Spirit Trap##32342 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept It Is A Mystery##32344 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept We're Not Monsters!##32345 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Legacy of Ogudei##32120 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 35.30,42.14 |or 5
|tip One of these quests will not be available.
|only if haveq(32118) or completedq(32118)
stickystart "Collect_Ancient_Mogu_Essence"
stickystart "Collect_Spirit_Traps"
stickystart "Free_Troubled_Slave_Spirits"
step
Disperse the Anamoly |q 32344/1 |goto Krasarang Wilds/3 89.81,12.54
|tip Walk around this cave and pay attention to your Anamoly Reader above your actionbars.
|tip This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get.
|tip When you have 100%, you will automatically disperse the anamoly.
|only if haveq(32344) or completedq(32344)
step
label "Collect_Spirit_Traps"
kill Spirit Trap##68061+
|tip They look like floating blue crystals inside the cave.
Collect #3# Spirit Traps |q 32342/1 |goto Krasarang Wilds/3 89.81,12.54
|only if haveq(32342) or completedq(32342)
step
label "Collect_Ancient_Mogu_Essence"
kill Spiritbound Brutalizer##68073, Spiritbound Arcanist##68070
collect 5 Ancient Mogu Essence##92704 |q 32120/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32120) or completedq(32120)
step
label "Free_Troubled_Slave_Spirits"
kill Troubled Slave Spirit##68074+
Free #14# Troubled Slave Spirits |q 32345/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32345) or completedq(32345)
stickystart "Collect_Meng-do's_Essence"
step
Follow the path |goto Krasarang Wilds/2 78.51,56.39 < 7 |only if walking
kill Gen-li Twister of Words##68169
collect Gen-Li's Essence##92736 |q 32343/1 |goto Krasarang Wilds/2 68.08,82.44
|only if haveq(32343) or completedq(32343)
step
label "Collect_Meng-do's_Essence"
kill Meng-do Strength of Mountains##68170
collect Meng-do's Essence##92735 |q 32343/1 |goto Krasarang Wilds/2 66.59,78.85
|only if haveq(32343) or completedq(32343)
step
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Lion's Landing Guard Captain##68310
Slay #12# Lion's Landing Military |q 32348/1 |goto Krasarang Wilds/1 53.95,22.39
|only if haveq(32348) or completedq(32348)
step
Follow the path down |goto Krasarang Wilds/3 70.93,40.35 < 10 |only if walking
talk Kaelis Sunsoar##68274
turnin The Spirit Trap##32342 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32342) or completedq(32342)
turnin It Is A Mystery##32344 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32344) or completedq(32344)
turnin We're Not Monsters!##32345 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32345) or completedq(32345)
turnin Legacy of Ogudei##32120 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32120) or completedq(32120)
turnin Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32343) or completedq(32343)
turnin Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32348) or completedq(32348)
|only if haveq(32342,32344,32345,32120,32343,32348) or completedq(32342,32344,32345,32120,32343,32348)
step
label "End_of_Quests"
You Have Completed the Available Daily Quests |complete false or not completedq(32449,32450,32235,32126,32123,32127,32128,32223,32222,32221,32214,32199,32197,32140,32136,32138,32139,32141,32137,32238,32237,32236,32135,32132,32133,32130,32131,32134,32118,32342,32344,32345,32120,32343,32348) |next "Begin_Daily_Quests"
|tip New quests will become available with the next daily server reset.
|tip |only if rep("Dominance Offensive") >= Revered
buy Grand Commendation of the Dominance Offensive##93232 |goto Krasarang Wilds/0 10.83,53.37 |n |only if rep("Dominance Offensive") >= Revered
|tip You can buy the Grand Commedation of the Dominance Offensive from Tuskripper Grunka. |only if rep("Dominance Offensive") >= Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("Dominance Offensive") >= Revered
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Beastmaster's Hunt Dailies (Dominance Offensive)",{
mopready=true,
startlevel=90,
description="This guide will take you through the vendor quests for the Dominance Offensive to kill one of 3 beasts for reputation each day.",
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.17
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
label "Collect_Tokens"
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Dwarven Mortar Team Engineer##67545, Shieldwall Huntress##67317, Shieldwall Vindicator##67296, Shieldwall Peasant##67423
collect 90 Lion's Landing Commission##91838 |goto Krasarang Wilds/0 85.26,27.78
|tip You will need 30 commissions for each vendor quest item, 3 items in total.
|tip You will buy the items and accept the quests one at a time due to the items being unique.
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Crane Snare##91819 |goto Krasarang Wilds/0 10.77,53.60 |q 32161 |future
step
use the Sturdy Crane Snare##91819
accept Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds/0 10.77,53.60
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Tiger Trap##91821 |goto Krasarang Wilds/0 10.77,53.60 |q 32162 |future
step
use the Sturdy Tiger Trap##91821
accept Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds/0 10.77,53.60
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Crab Crate##91822 |goto Krasarang Wilds/0 10.77,53.60 |q 32163 |future
step
use the Sturdy Crab Crate##91822
accept Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds/0 10.77,53.60
step
kill Great Crane##59763+
collect Pristine Jet Crownfeather##91815 |q 32161/2 |goto Krasarang Wilds/0 72.66,44.93
step
kill Unga Villager##60358+
|tip Make sure you stay in the quest area and kill the correct mobs.
|tip Mobs along the beach don't drop the fish.
collect 30 Funky Rotten Fish##91817 |q 32163/1 |goto Krasarang Wilds/0 46.77,91.08
You can find some bigger clusters around [Krasarang Wilds/0 44.01,90.62]
step
kill Child of Chi-Ji##60616+
|tip You will need to kill a lot of these all over the island.
|tip Fly around the beach area, killing the small groups of cranes.
|tip Then work on the interior while they respawn.
collect 5 Pristine Golden Crownfeather##91814 |q 32161/1 |goto Krasarang Wilds/0 34.32,72.33
The beach can be found at [Krasarang Wilds/0 28.49,68.60]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds/0 39.21,61.92
step
Watch the dialogue
talk Ancient Bloodcrown Crane##67555
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds/0 39.26,61.85
step
kill Wasteland Yak##66549, Wasteland Calf##66595
collect 25 Unbruised Yak Haunch##91816 |q 32162/1 |goto Dread Wastes/0 52.40,66.75
You can find more around:
[Dread Wastes/0 45.48,55.54]
[Dread Wastes/0 37.55,52.10]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds/0 13.87,41.34
step
Watch the dialogue
talk Krasari Elder##67556
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds/0 13.89,41.20
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds/0 56.30,42.05
step
Watch the dialogue
talk Colossal Viseclaw##67508
|tip It will walk up and become captured in a crate.
accept Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds/0 56.34,42.15
step
talk Huntsman Blake##67558
turnin Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds/0 84.33,18.85
step
Choose the beast you prefer to fight today:
|tip You can only fight one beast and complete its daily quest each day.
Ancient Bloodcrown Crane |confirm
|tip This beast casts random songs with various spell effects.
Krasari Elder |confirm |next "Krasari_Elder"
|tip This beast requires you to remain in melee range the entire time and randomly vanishes.
Colossal Viseclaw |confirm |next "Colossal_Viseclaw"
|tip This beast needs to be kept moving to lower its damage reduction buff.
step
label "Ancient_Bloodcrown_Crane"
talk Huntsman Blake##67558
Select _"We would like to fight the Ancient Bloodcrown Crane."_ |gossip 40760
|tip During the fight, pay attention to the songs that it uses.
|tip Interrupt those that can be and avoid the others.
|tip Run out of the red circle.
kill Ancient Bloodcrown Crane##67555
accept Ancient's Fall##32167 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin Ancient's Fall##32167 |goto Krasarang Wilds/0 84.33,18.85
step
label "Krasari_Elder"
talk Huntsman Blake##67558
Select _"We would like to fight the Krasari Elder."_ |gossip 40761
|tip Stay close to it at all times.
|tip It will occassionally vanish.
|tip If you have a Hunter, put a flare out.
kill Krasari Elder##67556
accept End of an Elder##32168 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin End of an Elder##32168 |goto Krasarang Wilds/0 84.33,18.85
step
label "Colossal_Viseclaw"
talk Huntsman Blake##67558
Select _"We would like to fight the Colossal Viseclaw."_ |gossip 40762
kill Colossal Viseclaw##67508
|tip During the fight, kite it around and stay mobile.
|tip It has a damage reduction buff that decreases while while it moves.
|tip Stop moving when the buff nears zero or it will reset upon reaching zero.
accept A Colossal Victory##32169 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin A Colossal Victory##32169 |goto Krasarang Wilds/0 84.33,18.85
step
You Have Completed the Available Daily Quests |complete false or not completedq(32161,32162,32163,32181,32182,32183,32167,32168,32169) |next "Collect_Tokens"
|tip New quests will become available with the next daily server reset.
]])
