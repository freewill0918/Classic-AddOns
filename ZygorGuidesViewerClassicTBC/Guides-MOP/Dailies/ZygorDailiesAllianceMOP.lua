local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Operation: Shieldwall",{
startlevel=15,
description="This guide will take you through quests for Operation: Shieldwall. Becoming Exalted with Operation: Shieldwall allows you to purchase an epic flying mount, epic armor, and battle pets for your character.",
},[[
step
talk Lyalia##64610
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 83.97,58.64
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds/0 85.24,29.13
step
Watch the dialogue
talk King Varian Wrynn##61796
|tip He will eventually reach the beach.
accept A King Among Men##32247 |goto Krasarang Wilds/0 85.29,29.11
stickystart "Slay_Horde"
step
talk Marshal Troteman##68331
|tip Kill any enemies he is attacking.
Find Marshal Troteman |q 32247/2 |goto Krasarang Wilds/0 79.63,25.05
step
talk Hilda Hornswaggle##68312
|tip Kill any enemies she is attacking.
Find Hilda Hornswaggle |q 32247/3 |goto Krasarang Wilds/0 80.43,17.53
step
label "Slay_Horde"
kill Horde Raider##68332, Horde Hunter##68334, Horde Priest##67904
Slay #25# Horde |q 32247/1 |goto Krasarang Wilds/0 81.42,21.94
step
_Next to you:_
talk King Varian Wrynn##61796
turnin A King Among Men##32247 |goto Krasarang Wilds/0 81.42,21.94
accept Lion's Landing##32109 |goto Krasarang Wilds/0 81.42,21.94
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds/0 85.59,29.16
step
fpath Lion's Landing |goto Krasarang Wilds/0 88.33,34.70
step
label "Begin_Daily_Quests"
talk Marshal Troteman##67631
accept Priorities, People!##32116 |goto Krasarang Wilds/0 89.69,33.08 |or |next "Ruins_of_Ogudei_Hub"
accept Attack! Move!##32148 |goto Krasarang Wilds/0 89.69,33.08 |or 3
accept Tower Defense##32151 |goto Krasarang Wilds/0 89.69,33.08 |or 3
accept Hero Killer##32153 |goto Krasarang Wilds/0 89.69,33.08 |or 3
accept Siege Damage##32152 |goto Krasarang Wilds/0 89.69,33.08 |or 3
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(67631) or completedq(32149,32150) |or
|tip If no quests are offered, this step will advance.
step
talk Amber Kearnen##68908
accept Send A Message##32451 |goto Krasarang Wilds/0 89.79,32.43 |or |next "Domination_Point_Hub"
accept And Then There Were Goblins##32452 |goto Krasarang Wilds/0 89.79,32.43 |or |next "Bilgewater_Operations_Hub"
|only if not haveq(32148,32151,32153,32152) and not completedq(32148,32151,32153,32152)
step
talk Mishka##67630
accept Resource Gathering##32149 |goto Krasarang Wilds/0 89.67,32.79
accept Supply Block##32150 |goto Krasarang Wilds/0 89.67,32.79
stickystart "Collect_Animatable_Stone"
step
kill Bilgewater Sapper##67929+
collect Bilgewater Blasting Cap##92493 |q 32152/1 |goto Krasarang Wilds/0 77.63,18.58
|only if haveq(32152) or completedq(32152)
step
label "Collect_Animatable_Stone"
kill Bilgewater Sapper##67929+
collect 20 Animatable Stone##91823 |q 32151/1 |goto Krasarang Wilds/0 77.63,18.58
|only if haveq(32151) or completedq(32151)
stickystart "Kill_Domination_Point_Supply_Carts"
stickystart "Destroy_A_Domination_Point_Demolisher"
stickystart "Slay_Domination_Point_Shaman_or_Raiders"
stickystart "Collect_Lion's_Landing_Lumber"
step
kill Mazuru##67646 |q 32153/1 |goto Krasarang Wilds/0 79.18,27.60
|tip He walks around this area.
|only if haveq(32153) or completedq(32153)
step
label "Kill_Domination_Point_Supply_Carts"
kill 8 Domination Point Supply Cart##67756 |q 32150/1 |goto Krasarang Wilds/0 78.31,28.95
|only if haveq(32150) or completedq(32150)
step
label "Destroy_A_Domination_Point_Demolisher"
clicknpc Domination Point Demolisher##67671
Destroy a Domination Point Demolisher |q 32152/2 |goto Krasarang Wilds/0 78.31,28.95
|only if haveq(32152) or completedq(32152)
step
label "Collect_Lion's_Landing_Lumber"
click Hastily Abandoned Lumber##216229+
collect 12 Lion's Landing Lumber##91907 |q 32149/1 |goto Krasarang Wilds/0 77.46,24.51
|only if haveq(32149) or completedq(32149)
step
label "Slay_Domination_Point_Shaman_or_Raiders"
kill Dominance Shaman##67520+, Domination Point Raider##67826+
Slay #12# Domination Point Shaman or Raiders |q 32148/1 |goto Krasarang Wilds/0 78.06,26.91
|only if haveq(32148) or completedq(32148)
step
talk Mishka##67630
turnin Resource Gathering##32149 |goto Krasarang Wilds/0 89.67,32.79 |only if haveq(32149) or completedq(32149)
turnin Supply Block##32150 |goto Krasarang Wilds/0 89.67,32.79 |only if haveq(32150) or completedq(32150)
|only if haveq(32149,32150) or completedq(32149,32150)
step
talk Marshal Troteman##68331
turnin Attack! Move!##32148 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32148) or completedq(32148)
turnin Tower Defense##32151 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32151) or completedq(32151)
turnin Hero Killer##32153 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32153) or completedq(32153)
turnin Siege Damage##32152 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32152) or completedq(32152)
|only if haveq(32148,32151,32153,32152) or completedq(32148,32151,32153,32152)
|next "End_of_Quests"
step
label "Bilgewater_Operations_Hub"
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
turnin And Then There Were Goblins##32452 |goto Krasarang Wilds/0 16.48,79.20
accept The Only Good Goblin...##32157 |goto Krasarang Wilds/0 16.48,79.20
|only if haveq(32452) or completedq(32452)
step
talk Mishka##54614
|tip On the deck of the Skyfire ship.
accept It's Only Right##32156 |goto Krasarang Wilds/0 16.66,78.52
|only if completedq(32452)
step
talk Seraphine of the Winter##68182
|tip On the deck of the Skyfire ship.
accept Two Step Program##32158 |goto Krasarang Wilds/0 16.71,78.54 |or
accept Undermining the Under Miner##32433 |goto Krasarang Wilds/0 16.71,78.54 |or
|tip Only one of these quests will be available.
|only if completedq(32452)
step
talk Sully 'The Pickle' McLeary##54616
|tip He walks back and forth on the edge of the deck of the Skyfire ship.
accept Burn Out!##32154 |goto Krasarang Wilds/0 17.02,78.62 |or 2
accept Dis-Assembly Required##32446 |goto Krasarang Wilds/0 17.02,78.62 |or 2
accept Circle of Life##32159 |goto Krasarang Wilds/0 17.02,78.62 |or 2
accept Necessary Breaks##32155 |goto Krasarang Wilds/0 17.02,78.62 |or 2
|tip Only two of these quests will be available.
|only if completedq(32452)
step
use the Unstable Explosive##93187
Destroy the Northwestern Fuel Tank |q 32154/3 |goto Krasarang Wilds/0 15.29,59.07
|only if haveq(32154) or completedq(32154)
stickystart "Collect_Shieldwall_Soldier_Dog_Tags"
stickystart "Plant_Energized_Seeds"
stickystart "Kill_Bilgewater_Goblins"
step
kill Shredmaster Packle##67371 |q 32158/1 |goto Krasarang Wilds/0 19.55,62.08
|only if haveq(32158) or completedq(32158)
step
use the Re-Configured Remote##93180
|tip Use it on Jungle Shredders.
kill Jungle Shredder##67285+
collect 6 Scrap Metal##93179 |q 32446/1 |goto Krasarang Wilds/0 19.61,61.16
|only if haveq(32446) or completedq(32446)
step
kill Grezik Oregrind##67373 |q 32433/1 |goto Krasarang Wilds/0 22.13,61.29
|only if haveq(32433) or completedq(32433)
step
label "Plant_Energized_Seeds"
Click on mounds of dirt in the area
Plant #11# Energized Seeds |q 32159/1 |goto Krasarang Wilds/0 19.97,60.88
|only if haveq(32159) or completedq(32159)
step
use the Unstable Explosive##93187
Destroy the Northeastern Fuel Tank |q 32154/1 |goto Krasarang Wilds/0 25.42,59.59
|only if haveq(32154) or completedq(32154)
step
use the Unstable Explosive##93187
Destroy the Northern Fuel Tank |q 32154/2 |goto Krasarang Wilds/0 23.88,54.55
|only if haveq(32154) or completedq(32154)
step
label "Kill_Bilgewater_Goblins"
kill Grease Worker##67281, Refining Specialist##67283, Off-Duty Miner##67563, Off-Duty Miner##67564, Off-Duty Logger##67638, Off-Duty Logger##67637, Bilgewater Logger##67869, Bilgewater Logger##67870, Bilgewater Miner##67871, Bilgewater Miner##67873, Bilgewater Bruiser##68826, Bilgewater Bruiser##68825
Slay #10# Bilgewater Goblins |q 32157/1 |goto Krasarang Wilds/0 25.61,57.94
You can find more around [Krasarang Wilds/0 20.08,60.27]
|only if haveq(32157) or completedq(32157)
step
label "Collect_Shieldwall_Soldier_Dog_Tags"
clicknpc Fallen Shieldwall Soldier##68700+
collect 7 Shieldwall Soldier Dog Tag##93009 |q 32156/1 |goto Krasarang Wilds/0 20.08,60.27
|only if haveq(32156) or completedq(32156)
step
talk Sully 'The Pickle' McLeary##54616
|tip He walks back and forth on the edge of the deck of the Skyfire ship.
turnin Burn Out!##32154 |goto Krasarang Wilds/0 17.02,78.62 |only if haveq(32154) or completedq(32154)
turnin Dis-Assembly Required##32446 |goto Krasarang Wilds/0 17.02,78.62 |only if haveq(32446) or completedq(32446)
|only if haveq(32154,32446) or completedq(32154,32446)
step
talk Seraphine of the Winter##68182
|tip On the deck of the Skyfire ship.
turnin Two Step Program##32158 |goto Krasarang Wilds/0 16.71,78.54 |only if haveq(32158) or completedq(32158)
turnin Undermining the Under Miner##32433 |goto Krasarang Wilds/0 16.71,78.54 |only if haveq(32433) or completedq(32433)
|only if haveq(32158,32433) or completedq(32158,32433)
step
talk Mishka##54614
|tip On the deck of the Skyfire ship.
turnin It's Only Right##32156 |goto Krasarang Wilds/0 16.66,78.52
|only if haveq(32156) or completedq(32156)
step
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
turnin The Only Good Goblin...##32157 |goto Krasarang Wilds/0 16.48,79.20
|only if haveq(32157) or completedq(32157)
|next "End_of_Quests"
step
label "Domination_Point_Hub"
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
|tip You can purchase a Portal Reagents: Skyfire from Proveditor Grantley to open a 20-minute portal to the ship if you have 5x Domination Point Commissions.
turnin Send A Message##32451 |goto Krasarang Wilds/0 16.48,79.20
accept Hammer to Fall##32146 |goto Krasarang Wilds/0 16.48,79.20
accept We Will Rock You##32142 |goto Krasarang Wilds/0 16.48,79.20
Proveditor Grantley can be found at [Krasarang Wilds/0 89.53,33.55]
|only if haveq(32451) or completedq(32451)
step
talk Tinkmaster Overspark##67976
accept A Kind of Magic##32143 |goto Krasarang Wilds/0 16.49,79.28
|only if completedq(32451)
step
talk Mishka##54614
|tip On the deck of the Skyfire ship.
accept Under Pressure##32144 |goto Krasarang Wilds/0 16.66,78.52
|only if completedq(32451)
stickystart "Kill_Domination_Orcs"
step
clicknpc Scout-o-Meter Mk I##67544
Eliminate the Beachhead Demolishers |q 32143/1 |goto Krasarang Wilds/0 11.64,67.98
|only if haveq(32143) or completedq(32143)
step
clicknpc the Scout-o-Meter Mk II##67546
Eliminate the Horde Wolves |q 32143/2 |goto Krasarang Wilds/0 10.81,60.91
|only if haveq(32143) or completedq(32143)
stickystart "Kill_Heavy_Mooks"
stickystart "Destroy_Horde_Supply_Crates"
step
clicknpc the Scout-o-Meter Mk III##67547
Destroy the Horde Bomb Stockpile |q 32143/3 |goto Krasarang Wilds/0 12.68,56.65
|only if haveq(32143) or completedq(32143)
step
Click the Complete Quest Box
turnin A Kind of Magic##32143
accept Don't Lose Your Head##32145
|only if haveq(32143) or completedq(32143)
step
kill Or'Dac##67435 |q 32145/1 |goto Krasarang Wilds/0 10.92,58.01
|tip It walks around the bonfire.
|only if haveq(32145) or completedq(32145)
step
kill 1 Stone Guard Ruk'Ra##67429 |q 32145/2 |goto Krasarang Wilds/0 13.39,57.89
|only if haveq(32145) or completedq(32145)
step
kill 1 Chief Bombgineer Snicklefritz##67427 |q 32145/3 |goto Krasarang Wilds/0 13.33,56.27
|only if haveq(32145) or completedq(32145)
step
label "Destroy_Horde_Supply_Crates"
click Horde Supply Crate##216665+
|tip They look like large brown boxes on the ground.
Destroy #8# Horde Supply Crates |q 32144/1 |goto Krasarang Wilds/0 12.16,57.34
|only if haveq(32144) or completedq(32144)
step
label "Kill_Heavy_Mooks"
kill 5 Heavy Mook##67399 |q 32146/1 |goto Krasarang Wilds/0 12.16,57.34
|only if haveq(32146) or completedq(32146)
step
label "Kill_Domination_Orcs"
kill 10 Domination Orc##67357 |q 32142/1 |goto Krasarang Wilds/0 12.16,57.34
|only if haveq(32142) or completedq(32142)
step
talk Mishka##54614
|tip On the deck of the Skyfire ship.
turnin Under Pressure##32144 |goto Krasarang Wilds/0 16.66,78.52
|only if haveq(32144) or completedq(32144)
step
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
turnin Hammer to Fall##32146 |goto Krasarang Wilds/0 16.48,79.20 |only if haveq(32146) or completedq(32146)
turnin We Will Rock You##32142 |goto Krasarang Wilds/0 16.48,79.20 |only if haveq(32142) or completedq(32142)
|only if haveq(32146,32142) or completedq(32146,32142)
step
talk Tinkmaster Overspark##67976
turnin Don't Lose Your Head##32145 |goto Krasarang Wilds/0 16.49,79.28
|only if haveq(32145) or completedq(32145)
|next "End_of_Quests"
step
label "Ruins_of_Ogudei_Hub"
Enter the cave |goto Krasarang Wilds/0 80.32,17.14 < 10 |walk
talk Hilda Hornswaggle##68312
|tip Inside the cave.
turnin Priorities, People!##32116 |goto Krasarang Wilds/1 30.19,27.43
accept The Spirit Trap##32121 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Shackles of the Past##32115 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Eviction Notice##32347 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Oi Ain't Afraid o' No Ghosts!##32346 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Ogudei's Lieutenants##32122 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept It Is A Mystery##32119 |goto Krasarang Wilds/1 30.19,27.43 |or 5
|tip Five of these quests will be available.
|only if haveq(32116) or completedq(32116)
stickystart "Destroy_Spirit_Traps"
stickystart "Slay_Spiritbound_Mogu"
stickystart "Release_Troubled_Slave_Spirits"
step
Disperse the Anamoly |q 32119/1 |goto Krasarang Wilds/3 89.81,12.54
|tip Walk around this cave and pay attention to your Anamoly Reader above your action bar.
|tip This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get.
|tip Once you have 100%, you will automatically disperse the anamoly
|only if haveq(32119) or completedq(32119)
step
label "Destroy_Spirit_Traps"
kill Spirit Trap##68061+
|tip They look like floating blue crystals inside the cave.
Destroy #3# Spirit Traps |q 32121/1 |goto Krasarang Wilds/3 89.81,12.54
|only if haveq(32121) or completedq(32121)
step
label "Slay_Spiritbound_Mogu"
kill Spiritbound Arcanist##68070, Spiritbound Brutalizer##68073
Slay #12# Spiritbound Mogu |q 32346/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32346) or completedq(32346)
step
label "Release_Troubled_Slave_Spirits"
kill Troubled Slave Spirit##68074+
Release #14# Troubled Slave Spirits |q 32115/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32115) or completedq(32115)
step
Follow the path down |goto Krasarang Wilds/3 70.93,40.35 < 10 |only if walking
kill Reliquary Scout##67861, Reliquary Blood Knight##68126, Reliquary Mage##68114
Slay #10# Reliquaries |q 32347/1 |goto Krasarang Wilds/3 62.60,58.64
|only if haveq(32347) or completedq(32347)
stickystart "Kill_Meng-do_Strength_of_Mountains"
step
Follow the path up |goto Krasarang Wilds/3 80.75,30.19 < 10 |only if walking and haveq(32347)
Follow the path |goto Krasarang Wilds/2 78.51,56.39 < 7 |only if walking
kill Gen-li Twister of Words##68169 |q 32122/1 |goto Krasarang Wilds/2 68.08,82.44
|only if haveq(32122) or completedq(32122)
step
label "Kill_Meng-do_Strength_of_Mountains"
kill Meng-do Strength of Mountains##68170 |q 32122/2 |goto Krasarang Wilds/2 66.59,78.85
|only if haveq(32122) or completedq(32122)
step
Follow the path |goto Krasarang Wilds/3 89.20,35.08 < 10 |only if walking |only if haveq(32122)
talk Hilda Hornswaggle##68312
turnin The Spirit Trap##32121 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32121) or completedq(32121)
turnin Shackles of the Past##32115 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32115) or completedq(32115)
turnin Eviction Notice##32347 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32347) or completedq(32347)
turnin Oi Ain't Afraid o' No Ghosts!##32346 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32346) or completedq(32346)
turnin Ogudei's Lieutenants##32122 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32122) or completedq(32122)
turnin It Is A Mystery##32119 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32119) or completedq(32119)
|only if haveq(32121,32115,32347,32346,32122,32119) or completedq(32121,32115,32347,32346,32122,32119)
step
label "End_of_Quests"
You Have Completed the Available Daily Quests |complete false or not completedq(32116,32451,32452,32149,32150,32148,32151,32153,32152,32157,32156,32158,32433,32154,32446,32159,32155,32146,32142,32143,32144,32145,32121,32115,32347,32346,32122,32119) |next "Begin_Daily_Quests"
|tip New quests will become available with the next daily server reset.
]])
ZGV.BETAEND()
