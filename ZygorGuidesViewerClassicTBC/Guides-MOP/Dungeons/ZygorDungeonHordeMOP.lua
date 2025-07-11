local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DungeonHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Blackfathom Deeps",{
description="This guide will walk you through completing the Blackfathom Deeps dungeon. This dungeon is located in Ashenvale on the continent of Kalimdor and is home to the Twilight's Hammer, naga, and satyr. This dungeon ranges from level 10 to 30.",
mapid=221,
achieveid={632},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"BFD, Ashenvale"},
},[[
step
label "start"
Press _I_ and queue for Blackfathom Deeps or enter the dungeon with your group |goto Blackfathom Deeps/1 45.00,10.60 |c
step
talk Sentinel Aluwyn##75606
accept The Rise of Aku'mai##34673 |goto Blackfathom Deeps/1 48.45,12.03
only if not completedq(34673)
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	50.00,15.30	52.50,21.40	54.30,33.40
path	54.10,47.50	51.10,48.20	47.60,45.20
path	46.00,44.70
Follow the path and climb over the rocks here |goto Blackfathom Deeps/1 46.00,44.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Ghamoo-Ra##74446
|tip Ghamoo-Ra will use Shell Shocker, targeting a random player and charging to them, releasing a violent burst of energy. Stay spread out to avoid multiple party members taking damage
|tip Every 3 seconds, Ghamoo-Ra will release a Static Shock. This will deal minor nature damage to random party members.
Defeat Ghamoo-ra |scenariogoal 24409 |goto Blackfathom Deeps/1 33.50,59.40
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	29.30,54.60	23.90,46.00	19.00,42.90
path	14.60,43.20
Swim under the water and _follow_ the path |goto Blackfathom Deeps 14.60,43.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Domina##74476
click Altar of Blood
|tip Domina will occasionally summon a Foul Tempest that will inflict shadow damage every second to random players
|tip She will also use Maw of Death, which deals massive shadow damage to anyone in front of her over 2 seconds. Avoid standing in front of her
_HEALER:_ |grouprole HEALER
|tip Pay attention to anyone standing in front of Domina during Maw of Death, as they will take significant damage |grouprole HEALER
Defeat Domina |scenariogoal 24414 |goto Blackfathom Deeps 11.70,41.30
confirm
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	24.10,46.40	29.40,54.70	30.80,66.60
path	31.40,80.10	30.70,83.60	32.30,90.30
path	35.70,90.10	39.90,93.20	46.40,92.40
path	53.10,87.20	57.10,79.80	57.70,73.50
path	57.60,68.40	55.80,63.20
Swim under the water and follow the path |goto Blackfathom Deeps/1 55.80,63.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Subjugator Kor'ul##74565 |goto Blackfathom Deeps/1 54.30,57.00
|tip Kor'ul will use Leviathan's Grip, crushing a random party member over 8 seconds
|tip When he uses Darkness Calls, Kor'ul will summon Aku'mai tentacles. Kill these quickly and avoid the areas of ground they target
_HEALER:_ |grouprole HEALER
|tip Heal the player targeted by Leviathan's Grip |grouprole HEALER
Defeat Subjugator Kor'ul |scenariogoal 24415 |goto Blackfathom Deeps/1 54.30,57.00
confirm
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	58.80,71.10	Blackfathom Deeps/2 37.10,29.30	Blackfathom Deeps/2 39.30,34.20
path	Blackfathom Deeps/2 38.80,42.10	Blackfathom Deeps/2 36.70,51.50	Blackfathom Deeps/2 34.80,55.00
path	Blackfathom Deeps/2 31.50,58.30	Blackfathom Deeps/2 30.00,64.20
Follow the path |goto Blackfathom Deeps/1 30.00,64.20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Thruk##74505 |goto Blackfathom Deeps/2 33.50,68.80
|tip Thruk will use Catch of the Day, using his fishing line to pull a random party member to his feet and rooting them for 10 seconds
|tip Shortly after Catch of the Day, Thruk will use Fillet of Flesh. This will deal heavy physical damage to anyone within 10 yards. Avoid being close to him
Defeat Thruk |scenariogoal 24410 |goto Blackfathom Deeps/2 33.50,68.80
step
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	34.00,68.30	45.80,78.80	Blackfathom Deeps/3 60.00,51.60
click Guardian Egg##76062
|tip Clicking an underwater egg will give you a swim speed buff.
Follow the path |goto Blackfathom Deeps/3 60.00,51.60
|tip You will need to swim under the ruins to reach the Guardian.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guardian of the Deep##74508
|tip Spore Cloud will inflict damage at random areas and summon Guardian Hatchlings.
|tip Guardian of the Deep will Devour Blue Shale Crawlers, healing himself for 25% of max health. Kill them quickly.
|tip Shattering Song will periodically inflict damage to the entire group.
Defeat Guardian of the Deep |scenariogoal 24418 |goto Blackfathom Deeps/3 59.20,30.20
confirm
step
map Blackfathom Deeps/3
path follow loose; loop off; ants curved
path	60.00,51.60	Blackfathom Deeps/2 43.10,75.00	Blackfathom Deeps/2 34.00,68.30
Follow the path |goto Blackfathom Deeps/2 34.00,68.30
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	33.90,65.00	40.80,64.90	40.90,68.80
Follow the path |goto Blackfathom Deeps/2 40.90,68.80
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Executioner Gore##74518 |goto Blackfathom Deeps/2 40.80,73.20
|tip Executioner Gore will use Devouring Blackness on a random player, draining life and dealing damage
|tip Gore will also slam his axe down in an Executioner's Strike, dealing damage in a frontal cone area and leaving a vortex. Move out of the vortex
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Devouring Blackness |grouprole TANK or DAMAGE
Defeat Executioner Gore |scenariogoal 24411 |goto Blackfathom Deeps/2 40.70,77.90
step
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	40.70,81.60	43.00,81.10	46.00,81.60
path	47.20,84.40
Follow the path |goto Blackfathom Deeps/2 47.20,84.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Twilight Lord Bathiel##74728 |goto Blackfathom Deeps/2 51.20,81.60
|tip Bathiel will use Restorative Waters, spraying parts of himself across the room and summoning elementals
|tip These elementals should be killed quickly, as some of them will explode and some will heal Bathiel
|tip Piercing Rain will immediately follow Restorative Waters and deal AoE damage to the entire group
_DAMAGE:_ |grouprole DAMAGE
|tip Kill elementals quickly |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Don't worry about picking up adds |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Prepare to heal the group during Piercing Rain |grouprole HEALER
Defeat Twilight Lord Bathiel |scenariogoal 24412 |goto Blackfathom Deeps/2 51.20,81.60
step
click Fire of Aku'mai
|tip Do this before you leave the room.
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	55.30,81.60	60.80,81.90	64.10,85.40
path	79.20,85.30
Follow the path |goto Blackfathom Deeps/2 79.20,85.30
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Aku'mai the Devourer##75155 |goto Blackfathom Deeps/2 86.50,86.70 |only if default
_Phase 1:_
|tip Aku'mai will spit Venom at his target, dealing nature damage
|tip He will also gradually become more present through Tearing the Void, summoning Deep Terrors
|tip Random players will be hit with Falling Debris, suffering physical damage
_Phase 2:_
|tip Aku'mai the Venomous continues to use Venom
|tip In addition, he will spit Toxic Bile at a random player. This leaves behind a bile pool that you must move out of
_Deep Terrors_
|tip This will periodically crush the ground. Move away from the areas targeted
kill 1 Aku'mai the Devourer##75155 |q 34672/1 |goto Blackfathom Deeps/2 86.50,86.70 |only if haveq(34672)
Defeat Aku'mai |scenariostage 1 |goto Blackfathom Deeps/2 86.50,86.70
step
click Spoils of Blackfathom##225817 |goto Blackfathom Deeps/2 87.72,86.46
confirm
step
talk Sentinel Aluwyn##75606
turnin The Rise of Aku'mai##34673 |goto Blackfathom Deeps/2 87.72,86.46
only if not completedq(34673)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Blackrock Depths: Detention Block",{
description="This guide will walk you through completing the Blackrock Depths: Detention Block dungeon. This dungeon is located in Blackrock Mountain on the continent of Eastern Kingdoms. It is home to the Dark Iron dwarves and led by Emperor Dagran Thaurissan. This dungeon ranges from level 10 to 30.",
mapid=242,
achieveid={642},
patch='30008',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"BRD, Searing, Gorge, Burning, Steppes, BRM"},
},[[
step
label "start"
Press _I_ and queue for Blackrock Depths: Detention Block or enter the dungeon with your group |goto Blackrock Depths/1 34.70,77.80 |c
step
Click here to proceed to the Detention Block section |confirm |or
Click here to skip to the Upper City section |confirm |next "Prospect" |or
step
talk Thal'trak Proudtusk##45821
accept Into the Prison##27579 |goto Blackrock Depths 36.20,77.30
only if not completedq(27579)
step
talk Tinkee Steamboil##45849
accept The Sealed Gate##27603 |goto Blackrock Depths 37.30,80.10
only if not completedq(27603)
step
talk Galamav the Marksman##45839
accept Infiltrating Shadowforge City##27582 |goto Blackrock Depths 36.70,74.50
only if not completedq(27582)
step
kill Lord Roccor##9025
|tip As you follow the path, keep an eye out for Roccor.
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	39.30,75.60	42.60,72.10	46.50,61.90
path	48.60,56.80	52.70,56.50	56.60,61.70
path	56.10,66.70	53.80,70.70	48.20,72.50
Follow the path |goto Blackrock Depths/1 53.60,60.30 < 10 |next "DawsonsCreek" |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to skip all optional bosses and kill High Interrogator Gerstahn |confirm |next "DawsonsCreek"
Proceeding to Grebmar |goto Blackrock Depths/1 55.00,58.70 < 15 |next "Grebmar" |or
Proceeding to Ring of Law |goto Blackrock Depths/1 51.60,70.50 < 15 |next "RoL" |or
confirm
step
label "Grebmar"
kill Houndmaster Grebmar##9319 |goto Blackrock Depths/1 50.70,63.00
|tip Avoid standing near Grebmar if you are a spellcaster, as he will Pummel and interrupt you
|tip Kill the wolves first, and quickly. Bloodlust will increase their damage and make them much more deadly
|tip At 15% health, Grebmar will attempt to Run Away! Run Away!. Kill him before he can flee
confirm |or
Click here to skip Houndmaster Grebmar |confirm |next "RoL" |or
step
label "RoL"
You will have to clear a few waves of trash and a minor mini-boss
|tip Grizzle: Frenzy at 50% health, Cleave, and 20 yard AoE stun
|tip Anub'shiah: Decurse, Enveloping Web will immobilize players, and Banish will stun
|tip Eviscerator: Anti-Magic Shield will periodically make him immune to magic for 6 seconds
|tip Ok'thor the Breaker: Arcane Explosion will deal damage to anyone within 30 yards and he will Polymorph random players
|tip Hedrum the Creeper: Crazed will cause Hedrum to drop threat periodically
|tip Gorosh the Dervish: Whirlwind will hit anyone within 8 yards. Dispel Bloodlust
Defeat the Ring of Law |scenariogoal 25074 |goto Blackrock Depths/1 50.50,62.90 |or
Click here to skip the Ring of Law |confirm |next "DawsonsCreek" |or
step
label "DawsonsCreek"
talk Lexlort##45818
turnin Into the Prison##27579 |goto Blackrock Depths/1 44.31,77.84
accept Twilight?! No!##27581 |goto Blackrock Depths/1 44.42,77.75
only if not completedq(27581)
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	45.20,80.00	46.10,85.20	47.00,90.30
Follow the path |goto Blackrock Depths/1 47.00,90.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Be careful, the side rooms are full of enemies and will most likely aggro.
confirm
step
kill High Interrogator Gerstahn##9018 |goto Blackrock Depths/1 47.60,93.20
|tip Interrupt Mana Burn.
|tip Stay at distance to avoid being feared by Psychic Scream, (8 yards).
|tip Dispel Shadow Word: Pain and Shadow Shield.
Defeat High Interrogator Gerstahn |scenariogoal 1/25075
confirm
step
Slay High Interrogator Gerstahn |q 27581/1 |goto Blackrock Depths/1 47.60,93.20
only if not completedq(27581)
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	47.00,90.30	46.10,85.20	45.20,80.00
Follow the path |goto Blackrock Depths/1 45.20,80.00 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Lexlort##45818
turnin Twilight?! No!##27581 |goto Blackrock Depths/1 44.42,77.75
only if not completedq(27581)
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	43.90,77.20	39.40,75.60
Follow the path |goto Blackrock Depths/1 39.40,75.60 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	36.10,73.50	35.20,62.60	27.20,54.80
Follow the path |goto Blackrock Depths/1 27.20,54.80 |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to skip Bael'Gar |confirm |next "SkipBG" |or
confirm
step
kill Bael'Gar##9016
|tip Players will take a good bit of AoE damage during this fight
|tip The tank should pick up summoned Spawn of Bael'Gar quickly
Defeat Bael'Gar |scenariogoal 25076 |goto Blackrock Depths/1 24.00,51.60 |or
kill Bael'Gar##9016 |q 27603/1 |only if haveq(27603)
Click here to skip Bael'Gar |confirm |or
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	27.20,54.80	35.20,62.60	36.10,73.50
Follow the path |goto Blackrock Depths/1 36.10,73.50
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Tinkee Steamboil##45849
turnin The Sealed Gate##27603 |goto Blackrock Depths/1 37.37,80.07
only if not completedq(27603)
step
label "SkipBG"
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	27.10,55.00	32.20,59.30	36.90,59.50
path	40.90,54.40	44.70,49.60	49.00,42.50
path	54.00,35.00
Follow the path |goto Blackrock Depths/1 54.00,35.00 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Incendius##9017
|tip Move out of areas targeted by Fire Storm
|tip The tank should position their back away from the edge of the bridge to avoid being knocked off the edge by Mighty Blow
|tip Dispel Curse of the Elemental Lord as often as possible
Defeat Lord Incendius |scenariogoal 25072 |goto Blackrock Depths/1 56.50,31.20
step
kill Fineous Darkvire##9056
|tip Interrupt Holy Light
|tip Dispel Seal of Reckoning as often as possible
Defeat Fineous Darkvire |scenariogoal 25073 |goto Blackrock Depths/1 61.50,23.90
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	61.20,24.40	63.20,21.10	66.90,26.30
path	Blackrock Depths/2 60.40,60.00
Follow the path |goto Blackrock Depths/2 60.40,60.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	59.50,30.80	58.50,34.20
Follow the path |goto Blackrock Depths/1 58.50,34.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warder Stilgiss##9041, Verek##9042 |goto Blackrock Depths/2 60.50,67.40
|tip Interrupt Frostbolt
|tip Verek will Enrage at 25% health, gaining increased damage and attack speed
Click here when you kill Stilgiss or to skip this boss |confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	58.50,34.20	54.80,36.00
path	Blackrock Depths/2 52.60,69.70	Blackrock Depths/2 56.20,74.10
path	Blackrock Depths/2 57.30,57.50	Blackrock Depths/2 56.20,93.20
Follow the path |goto Blackrock Depths/2 56.20,93.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to skip Pyromancer Loregrain |confirm |next "Skip"
confirm
step
kill Pyromancer Loregrain##9024 |goto Blackrock Depths/2 54.30,96.30
|tip Kill the Scorching Totem quickly
|tip Dispel Flame Shock from party members
|tip Interrupt Molten Blast
Click here when you kill Loregrain |confirm |next "Kill"
Click here to skip this boss |confirm |next "Skip"
step
label "Kill"
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	Blackrock Depths/2 56.60,90.00	Blackrock Depths/1 54.40,63.10
path	Blackrock Depths/1 52.50,66.90	Blackrock Depths/1 49.40,67.50	Blackrock Depths/1 46.70,63.00
path	Blackrock Depths/2 42.10,90.00	Blackrock Depths/1 40.90,66.60
Follow the path |goto Blackrock Depths/1 40.90,66.60 |next "Prospect"
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Skip"
Jump down to the lower level |goto Blackrock Depths/1 53.80,35.30 < 10
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	53.40,35.60	48.70,42.80	44.60,49.50
path	40.30,55.60	35.90,61.40	36.20,65.10
path	39.50,66.80
Follow the path |goto Blackrock Depths/1 39.50,66.80
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Prospect"
talk Razal'blade##45820
turnin Infiltrating Shadowforge City##27582 |goto Blackrock Depths/1 40.95,67.21
accept The 109th Division##27585 |goto Blackrock Depths/1 40.95,67.21
only if not completedq(27585)
step
Click the Shadowforge Lock |goto Blackrock Depths/1 40.70,61.90 |scenariogoal 25080
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	42.10,90.00	43.80,89.80	45.80,86.10
path	47.40,81.00	42.30,73.40	38.90,75.70
path	36.50,81.10
Follow the path |goto Blackrock Depths/2 36.50,81.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Angerforge##9033
|tip Angerforge Enrages after being hit by any melee attack for 5 seconds
|tip At 40% health, he will use Intruder Alert!, summoning several Medics and Reservists
Defeat General Angerforge |scenariogoal 25081 |goto Blackrock Depths/2 36.60,84.30
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	35.40,81.60	36.50,81.50	36.50,69.10
Follow the path |goto Blackrock Depths/2 36.50,69.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Golem Lord Argelmach##8983
|tip Dispel Lightning Shield as often as possible
Defeat Golem Lord Argelmach |scenariogoal 25082 |goto Blackrock Depths/2 36.90,65.10
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	36.60,69.60	40.00,68.80	46.80,65.20
Follow the path |goto Blackrock Depths/2 46.80,65.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Hierophant Theodora Mulvadania
turnin The 109th Division##27585 |goto Blackrock Depths/2 46.88,66.11
accept The Grim Guzzler##27589 |goto Blackrock Depths/2 46.88,66.12
only if not completedq(27589)
step
click Thunderbrew Lager Keg##164911
|tip Destroy all 3 kegs.
kill Hurley Blackbreath##9537
|tip Avoid standing in front of him, he uses Flame Breath
|tip Periodically, Hurley will enter a Drunken Rage, increasing his attack speed and damage by 50%
Defeat Hurley Blackbreath |scenariogoal 25084 |goto Blackrock Depths/2 47.90,58.30 |or
Click here when you kill Hurley Blackbreath or here to skip this boss |confirm |or
step
kill Ribbly Screwspigot##9543
|tip Gouge will incapacitate anyone hit for 3 seconds
|tip At 30% health, Ribbley will Run Away! Run Away!. Kill him before he can feel
Defeat Ribbly Screwspigot |scenariogoal 25083 |goto Blackrock Depths/2 49.10,61.90 |or
|tip Clear the trash around Ribbly before engaging him.
Click here when you kill Ribbly Screwspigot or here to skip this boss |confirm |or
step
talk Plugger Spazzring##9499 |goto Blackrock Depths/2 49.80,61.40
buy 10 Dark Iron Ale Mug##11325
To skip killing Phalanx, click here |confirm |next "Plugger"
step
label "Rocknot"
talk Private Rocknot##9503
accept Rocknot's Ale##4295 |goto Blackrock Depths/2 51.07,60.61 |repeatable |only if itemcount(11325) > 0
To skip killing Phalanx, click here |confirm |next "Plugger" |only if itemcount(11325) > 0
step
Proceeding to Rocknot |next "Rocknot" |only if itemcount(11325) > 0
Proceeding to Phalanx |next "Phalanx" |only if itemcount(11325) < 1
step
label "Phalanx"
kill Phalanx##9502
|tip Mighty Blow will knock the tank back
|tip Stay at least 10 yards away to avoid Thunder Clap
Defeat Phalanx |scenariogoal 25086 |goto Blackrock Depths/2 53.10,62.60
|tip It will take a moment for Private Rocknot to get drunk enough to start a fight and activate Phalanx.
confirm
step
label "Plugger"
kill Plugger Spazzring##9499
|tip This will cause the remaining bar patrons to become hostile
|tip Dispel Immolate and Curse of Tongues from party members
|tip Plugger will periodically Banish  a random party member
Defeat Plugger Spazzring |scenariogoal 25085 |goto Blackrock Depths/2 49.70,61.30
|tip You must use a special ability to attack Plugger for the first time.
Click here to skip this boss |confirm
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	53.40,62.40	Blackrock Depths/1 54.00,27.00
path	51.70,53.50
Follow the path |goto Blackrock Depths/2 51.70,53.50 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Thunderheart##45824
turnin The Grim Guzzler##27589 |goto Blackrock Depths/2 50.76,52.64
accept The Dark Iron Pact##27591 |goto Blackrock Depths/2 50.76,52.64
only if not completedq(27591)
step
kill Ambassador Flamelash##9156
|tip Flamelash will summon Burning Spirits from the runes around the room
|tip If these elementals reach him, he will gain 5% damage and size for each elemental, to a maximum of 250%
Defeat Ambassador Flamelash |scenariogoal 25077 |goto Blackrock Depths/2 53.80,48.90
step
kill Panzor the Invincible##8923
|tip Panzor has a chance to spawn in the Mold Foundry.
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	52.00,45.50	48.90,41.00	51.50,35.40
path	49.80,29.60	51.60,26.80
Follow the path |goto Blackrock Depths/2 51.60,26.80 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Doom'rel##9039
Tell him: "_Your bondage is at an end, Doom'rel. I challenge you!_"
|tip One of the Seven will attack at a time until they are all dead
Defeat Doom'rel |scenariogoal 25078 |goto Blackrock Depths/2 56.70,21.80
step
talk Warlord Goretooth##45840
turnin The Dark Iron Pact##27591 |goto Blackrock Depths/2 58.08,22.23
accept Rebirth of the K.E.F.##27593 |goto Blackrock Depths/2 58.08,22.23
only if not completedq(27593)
step
kill Shadowforge Flame Keeper##9956
|tip These guys wander all around The Lyceum. You will need to kill them and collect 2 Shadowforge Torches.
collect 2 Shadowforge Torch##11885 |n
click Shadowforge Brazier##3366 |goto Blackrock Depths/2 71.60,6.90
click Shadowforge Brazier##3366 |goto Blackrock Depths/2 71.60,16.90
confirm
step
_Go through_ the door |goto Blackrock Depths/2 74.90,12.90
kill Magmus##9938
|tip War Stomp will deal damage, knock back, and stun anyone within 5 yards
|tip Run out of areas targeted by Fiery Burst
Defeat Magmus |scenariogoal 25079 |goto Blackrock Depths/2 81.70,11.90
|tip The golems in the side alcoves will shoot flames out. Avoid standing in the fire.
step
Enter the Imperial Seat |goto Blackrock Depths/2 85.50,11.90
kill Emperor Dagran Thaurissan##9019, High Priestess of Thaurissan##10076
|tip Hand of Thaurissan will deal fire damage and stun random players for 5 seconds
|tip Interrupt Princess Bronzebeard's Heal and Renew
Defeat Emperor Dagran Thaurissan |scenariogoal 1/34449 |goto Blackrock Depths/2 93.10,11.90
|tip It is recommended to clear the trash on both sides of the throne at least.
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	85.10,11.90	74.80,12.90	70.30,16.90
path	62.00,17.10	60.00,19.90
talk Warlord Goretooth##45840
turnin Rebirth of the K.E.F.##27593 |goto Blackrock Depths/2 58.08,22.25
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(27593)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Deadmines",{
description="This guide will walk you through completing the Deadmines dungeon. This dungeon is located in Westfall on the continent of Eastern Kingdoms and is home to the Defias Brotherhood, led by Edwin VanCleef. This dungeon ranges from level 10 to 30.",
mapid=291,
achieveid={628},
patch='30002',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Westfall, Defias, DM"},
},[[
step
label "start"
Press _I_ and queue for Deadmines or enter the dungeon with your group |goto The Deadmines/1 26.50,13.40 |c
step
talk Kagtha##46889
accept Only the Beginning##27842 |goto The Deadmines/1 29.30,27.20
only if not completedq(27842)
step
talk Slinky Sharpshiv##46906
accept Traitors!!!##27844 |goto The Deadmines/1 28.84,27.33
only if not completedq(27844)
step
talk Miss Mayhem##46902
accept Not Quite There##27847 |goto The Deadmines/1 29.63,24.72
only if not completedq(27847)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	27.80,24.60	24.80,35.00	29.60,43.30
path	28.70,53.30	34.00,59.80
Follow the path |goto The Deadmines/1 34.00,59.80
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Glubtok##47162 |n |goto The Deadmines/1 37.70,61.20
kill 1 Glubtok##47162 |q 27842/1 |goto The Deadmines/1 37.70,61.20 |only if haveq(27842)
_Phase 1:_
|tip Glubtok will occasionally use Fists of Flame and Fists of Frost during this phase, avoid standing near the tank
|tip Tank: Glubtok will periodically Blink to a random location
|tip Blink will reset threat, pick up Glubtok quickly. |only if heroic_dung()
_Phase 2:_
|tip At 50% health, Glubtok will cast beams of fire and frost to his sides. Stand in front or behind him
|tip Glubtok will throw Fire Blossoms and Frost Blossoms at random locations, avoid standing in the impact area
|tip Blossoms summon weak elementals. Kill these quickly |only if heroic_dung()
|tip Glubtok will cast a wall of fire that rotates around the room, avoid contact |only if heroic_dung()
Defeat Glubtok |scenariogoal 24941 |goto The Deadmines/1 37.70,61.20
step
Click the Quest Completion Box that pops up.
turnin Only the Beginning##27842
accept Good Intentions...Poor Execution##27848
only if not completedq(27848)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	41.70,60.00	47.40,61.30	46.50,67.70
path	43.90,72.70	43.80,79.70
Follow the path |goto The Deadmines/1 43.80,79.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Heavy Door##400
Open the door and walk inside |goto The Deadmines/1 43.70,81.60 < 5
confirm
step
kill 1 Helix Gearbreaker##47296 |n |goto The Deadmines/1 49.00,87.40
kill 1 Helix Gearbreaker##47296 |q 27844/1 |goto The Deadmines/1 49.00,87.40 |only if haveq(27844)
_Phase 1:_
|tip Sticky Bombs will explode if players are within 1 yard of them
|tip The Lumbering Oaf will use Oaf Smash, picking up a random player and running into the wall. |only if not heroic_dung()
|tip The Lumbering Oaf will use Oaf Smash, picking up a random player and running into the wall dealing 100% of their maximum health as physical damage |only if heroic_dung()
|tip Helix will jump on a random player. This player will take normal melee damage for 10 seconds
|tip When Helix jumps to a new target, he leaves a Chest Bomb behind. Position yourself below the log in the room so you don't fly up in the air and die from fall damage |only if heroic_dung()
_Phase 2:_
|tip Helix will _Leap_ onto a player and melee attack them
|tip Helix will continue to attach _Chest Bomb_ to targets |only if heroic_dung()
Defeat Helix Gearbreaker |scenariogoal 24942 |goto The Deadmines/1 49.00,87.40
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	53.70,87.30	59.10,87.90	63.50,91.50
path	64.80,85.90	61.00,80.60
Follow the path |goto The Deadmines/1 61.00,80.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Heavy Door##400
Open the door and walk inside |goto The Deadmines/1 61.00,73.60 < 5
confirm
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	59.60,71.40	56.50,65.10	58.50,59.10
path	63.50,58.60	66.20,64.70	The Deadmines/2 14.60,89.80
Follow the winding ramp down |goto The Deadmines/2 14.60,89.80
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Foe Reaper 5000##43778 |n |goto The Deadmines/2 10.40,82.80
kill 1 Foe Reaper 5000##43778 |q 27847/1 |goto The Deadmines/2 10.40,82.80 |only if haveq(27847)
If you're the _Prototype Reaper_ pilot, click here. |confirm |next "Proto_Reap" |only if heroic_dung()
|tip Foe Reaper 5000 will use Reaper Strike, cleaving anyone in front of it
|tip When Overdrive is cast, run away and keep moving until it ends
|tip Occasionally a party member will be targeted with Harvest. Avoid being in front of the Foe Reaper as he moves to the target
_TANK:_ |only if heroic_dung() |grouprole TANK
|tip Pull the Foe Reaper to the top of the ramp |only if heroic_dung() |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Be prepared for party members to take damage during Overdrive |grouprole HEALER
Defeat the Foe Reaper 5000 |scenariogoal 24944 |goto The Deadmines/2 10.40,82.80
|next "canon_blast"
step
label "Proto_Reap"
You will spend your time at the bottom of the ramp, waiting for _Molten Slag_ to spawn
You will have 2 abilities to use to control the adds
Use _Reaper Strike_ twice in a row, then use _Reaper Charge_ to stun them
Repeat this until the Molten Slag dies
Defeat the Foe Reaper 5000 |scenariogoal 24944 |goto The Deadmines/2 10.40,82.80
step
label "canon_blast"
click Defias Cannon##16398
map The Deadmines/2
path follow loose; loop off; ants curved
path	12.60,70.30	13.10,60.40	22.90,58.00
path	28.00,52.50	33.40,48.90
Use the cannon to blow open the door and walk inside |goto The Deadmines/2 33.40,48.90 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	34.30,48.80	41.10,47.80	41.70,30.30
path	50.50,18.10	56.60,27.50	53.10,40.10
path	54.90,55.50
Proceed along the docks avoiding the cannonballs that are being shot at the ground. |goto The Deadmines/2 54.90,55.50 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	54.20,54.70	51.90,45.70	53.60,46.40
path	55.60,50.90	57.30,49.20	54.80,39.80
path	56.30,32.20
Follow the ramp up to the top of the ship. |goto The Deadmines/2 56.30,32.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Admiral Ripsnarl##47626 |n |goto The Deadmines/2 63.90,39.50
kill 1 Admiral Ripsnarl##47626 |q 27848/1 |goto The Deadmines/2 63.90,39.50 |only if haveq(27848)
|tip Ripsnarl will use Swipe, cleaving in a frontal cone. Avoid standing in front of him
|tip Ripsnarl will gain Thirst for Blood, moving faster and gaining attack speed each time he hits (stacking up to 20 times)
|tip At 75%, 50% and 25% He will summon a fog
|tip During the fog, he will Summon Vapors which need to be killed as soon as possible. They will grow larger before they explode, potentially killing anyone nearby
|tip He will use Go For the Throat through the entire fight. It damages then stuns targets for 2 seconds. |only if heroic_dung()
|tip When the fog ends, Ripsnarl will randomly target someone with Go for the Throat, stunning them and dealing damage
_HEALER:_ |only if heroic_dung() |grouprole HEALER
|tip Ripsnarl will use Go for the Throat through the entire encounter. Prepare to heal accordingly |only if heroic_dung() |grouprole HEALER
Defeat Admiral Ripsnarl |scenariogoal 24943 |goto The Deadmines/2 63.90,39.50
step
Click the Quest Completion Box that pops up.
turnin Good Intentions...Poor Execution##27848 |only if haveq(27848)
accept The Defias Kingpin##27850
only if not completedq(27850)
step
kill 1 "Captain" Cookie##47739 |goto The Deadmines/2 63.90,39.50 |only if completedq(27850)
kill 1 "Captain" Cookie##47739 |q 27850/1 |goto The Deadmines/2 63.90,39.50 |only if not completedq(27850)
|tip Cookie will throw regular food and rotten food on the ground. Rotten food will deal damage to anyone standing nearby
|tip Eating good food will remove a stack of bad food and grant a stacking haste buff
|tip Your group must balance eating bad food and good food to keep the deck clear
Defeat "Captain" Cookie |scenariogoal 34437 |goto The Deadmines/2 60.60,44.50
step
A note will appear on the ground
|tip Don't click it until your group is ready, it will start the Vanessa VanCleef event.
|tip Once you click it, Vanessa will come out and poison you.
Click the note and select _"Continue reading..."_ |goto The Deadmines/2 59.90,40.90 <8 |c
only if heroic_dung()
step
Click the 4 _Steam Valves_ to avoid being lowered into the Lava. There will be green arrows indicating where the levers are
Escape the lava |goto The Deadmines/1 57.90,70.30 |c |noway
|only if heroic_dung()
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	57.90,70.30	55.70,65.60	57.60,61.80
path	58.20,57.70	61.70,56.80	65.20,60.10
path	64.80,64.00
Jump down at the end of the ramp, avoiding the fire and blizzard areas |goto The Deadmines/2 15.20,81.70
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	14.00,89.90	10.90,89.90	6.90,81.10
path	9.90,77.60
Follow the path, avoiding the fire and blizzard areas |goto The Deadmines/2 9.90,77.60
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill 1 Glubtok##47162
|tip After you defeat Glubtok, Helix Gearbreaker  will appear at the door
|tip The group needs to collapse at the door, as spiders will spawn and fill the room
|tip Avoid aggroing the spiders if possible
kill 1 Helix Gearbreaker##47296
Defeat Glubtok and Helix |goto The Deadmines/2 12.60,68.40 < 5 |c
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	12.00,60.70	23.30,57.50	26.50,51.30
Follow the path |goto The Deadmines/2 26.50,51.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Foe Reaper 5000##43778
Defeat the Foe Reaper |goto The Deadmines/2 30.80,49.70 < 5 |c
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	34.30,48.80	41.10,47.80	41.70,30.30
path	50.50,18.10	56.60,27.50	53.10,40.10
path	54.90,55.50
Follow the deck onto the ship
|tip You will need to save Emma Harrington, Erik Harrington and Calissa Harrington from the worgen
|tip Kill any packs of Worgen that you see
Proceed along the docks, avoiding the sparks |goto The Deadmines/2 54.90,55.50 <8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	54.20,54.70	51.90,45.70	53.60,46.40
path	55.60,50.90	57.30,49.20	54.80,39.80
path	56.30,32.20
You will need to save _Emma Harrington_, _Erik Harrington_ and _Calissa Harrington_ from the worgen.
|tip Kill any packs of Worgen that you see.
|tip Once you're at Calissa Harrington, burn down Admiral Ripsnarl fast.
Follow the ramp up to the top of the ship. |goto The Deadmines/2 56.30,32.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|only if heroic_dung()
step
kill 1 Vanessa VanCleef##49541
|tip VanCleef will use Deflection, which deflects all ranged, melee and spell attacks for 10 seconds. She will use the ability when her health is higher than 25%
|tip She will use Deadly Blades, randomly attack party members
|tip She will use Backslash dealing 9k to 10k damage
|tip At 50%, she will use Fiery Blaze which deals 46k to 53k fire damage every second. When this happens, ropes will appear at the end of the deck. Click them to avoid the damage
_TANK:_ |grouprole TANK
|tip VanCleef will summon Defias Shadowguard and Defias Blood Wizards. These need to be picked up quickly |grouprole TANK
|tip When Vanessa is at 1% of her total health, she will use Powder Explosion, Move as far away from her as possible to avoid death |grouprole TANK
Defeat Vanessa VanCleef |scenariogoal 24945
only if heroic_dung()
step
talk Slinky Sharpshiv##46906
turnin Traitors!!!##27844 |goto The Deadmines/2 57.58,39.71
only if not completedq(27844)
step
talk Miss Mayhem##46902
turnin Not Quite There##27847 |goto The Deadmines/2 61.77,37.72
only if not completedq(27847)
step
talk Kagtha##46889
turnin The Defias Kingpin##27850 |goto The Deadmines/2 64.32,39.99
only if not completedq(27850)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Dire Maul: Capital Gardens",{
description="This guide will walk you through completing the Dire Maul: Capital Gardens dungeon. This dungeon is located in Feralas on the continent of Kalimdor and is home to undead and arcane creatures imprisoned by Prince Tortheldrin. This dungeon ranges from level 15 to 30.",
mapid=236,
achieveid={644},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DM, West, Feralas"},
},[[
step
label "start"
Press _I_ and queue for Dire Maul: Capital Gardens or enter the dungeon with your group |goto Dire Maul/2 93.50,47.70 |c
step
talk Estulan##44991
accept The Cursed Remains##27112 |goto Dire Maul/2 90.60,44.90
accept The Shen'dralar Ancient##27113 |goto Dire Maul/2 90.60,44.90
step
talk Shen'dralar Watcher##44999
accept The Warped Defender##27109 |goto Dire Maul/2 87.30,52.60
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/2 73.20,53.80
|tip Kill all the Remnants around the crystal to deactivate it.
Kill all the Remnants around the crystal to deactivate it
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	68.60,56.30	61.60,55.40	50.60,43.60
path	45.20,36.60	40.50,35.10	Dire Maul/3 51.70,21.60
path	Dire Maul/3 38.50,23.40	Dire Maul/3 34.80,34.70
Follow the path |goto Dire Maul/3 34.80,34.70 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magister Kalendris##11487 |goto Dire Maul/3 30.60,45.80
|tip Kalendris will randomly cast Shadow Word: Pain or party members. Dispel this or heal through it
|tip Mind Flay will deal shadow damage to the target and reduce movement speed by 50%
|tip Mind Blast deals shadow damage to his current target
|tip Occasionally he will use Dominate Mind on a party member. CC or dispel the afflicted player
kill Magister Kalendris##11487 |q 27112/1 |goto Dire Maul/3 30.60,45.80 |only if haveq(27112)
Defeat Magister Kalendris |scenariogoal 25061 |goto Dire Maul/3 30.60,45.80
step
map Dire Maul/3
path follow loose; loop off; ants curved; dist 10
path	34.60,35.50	38.60,25.50	49.80,16.50
path	46.40,13.50	Dire Maul/2 20.30,21.60
path	Dire Maul/2 23.00,25.80	Dire Maul/2 34.10,23.70
Follow the path |goto Dire Maul/2 34.10,23.70 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/2 42.00,22.40
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.50,27.50	48.40,49.40
Follow the path |goto Dire Maul/2 48.40,49.40 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Shen'dralar Ancient##14358
turnin The Shen'dralar Ancient##27113 |goto Dire Maul/2 48.40,53.80
accept The Madness Within##27110 |goto Dire Maul/2 48.40,53.80
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.50,59.10	48.30,78.90
Follow the path |goto Dire Maul/2 48.30,78.90 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/2 39.50,83.40
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
kill Illyanna Ravenoak##11488 |goto Dire Maul/2 21.70,75.80
|tip Ferra will use Charge on random players, dealing damage and stunning them. This will be followed by Maul, dealing physical damage
|tip Multi-Shot will hit players standing close to each other. Spread out
|tip Areas targeted with Volley will deal arcane damage to anyone standing within. Move out of it
|tip Ravenoak will drop Immolation Trap at her feet. Don't walk over these traps
|tip Concussive Shot will slow or stun random party members for 3 seconds
kill Illyanna Ravenoak##11488 |q 27112/2 |goto Dire Maul/2 21.70,75.80 |only if haveq(27112)
Defeat Illyanna Ravenoak |scenariogoal 25062 |goto Dire Maul/2 21.70,75.80
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	39.40,79.50	47.40,79.80	47.00,71.40
path	45.90,60.10	44.30,58.00	41.50,53.20
Follow the path, jumping onto the ledge first and then jump down to the ramp |goto Dire Maul/2 41.50,53.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Tendris Warpwood##11489 |goto Dire Maul/2 34.60,53.30
|tip Intruder Alert! will summon any Ironbark Protectors left alive in the instance to Warpwood's side
|tip Tendris will Trample anyone within 10 yards, dealing physical damage
|tip Grasping Vines will deal damage to the party, knocking them down and preventing movement for 10 seconds. Dispel this if possible
|tip If no player is within melee range, he will teleport a random person to him and Entangle them for 10 seconds
kill 1 Tendris Warpwood##11489 |q 27109/1 |goto Dire Maul/2 34.60,53.30 |only if haveq(27109)
Defeat Tendris Warpwood |scenariogoal 25063 |goto Dire Maul/2 34.60,53.30
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	76.50,39.90	71.40,40.30	69.40,44.40
path	69.10,52.70	66.70,57.40	60.90,57.70
Follow the path |goto Dire Maul/4 60.90,57.70 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	58.70,60.30	57.40,70.20	50.40,81.70
Follow the path |goto Dire Maul/4 50.40,81.70 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/4 46.50,81.60
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	53.50,76.10	58.00,66.20	58.50,52.90
path	54.70,39.60	50.50,34.40
Follow the path |goto Dire Maul/4 50.50,34.40 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/4 44.70,34.10
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	46.80,35.80	41.00,41.90
Follow the path, avoiding the elementals |goto Dire Maul/4 41.00,41.90 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Immol'thar##11496 |goto Dire Maul/4 35.50,57.00
|tip Eyes of Immol'thar cannot be tanked. Kill them quickly
|tip Portal of Immol'thar will teleport a random player and wipe their threat
|tip Immol'thar will use Infected Bite on the tank, increasing damage taken by a small amount and dealing nature damage. Dispel this disease
|tip Frenzy will cause Immol'thar to enrage, increasing his attack speed by 60% for 3 minutes
|tip He will occasionally Trample, dealing physical damage to anyone standing within 10 yards
kill Immol'thar##11496 |q 27110/1 |goto Dire Maul/4 35.50,57.00 |only if haveq(27110)
Defeat Immol'thar |scenariogoal 27855 |goto Dire Maul/4 35.50,57.00
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	43.60,46.80	51.70,42.60	56.90,37.40
path	59.30,33.40	60.20,27.30	67.20,24.20
path	74.10,23.10	69.80,21.40
Follow the path |goto Dire Maul/4 69.80,21.40 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Prince Tortheldrin##11486 |goto Dire Maul/4 60.40,23.50
_HEALER:_ |grouprole HEALER
|tip Price Tortheldrin attacks very quickly and is capable of dealing large amounts of burst damage |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Save defensive cooldowns in case the healer gets hit with Counterspell |grouprole TANK
|tip Periodically he will _hrash, gaining 2 extra attacks |grouprole TANK
|tip Arcane Blast will deal damage to a random player and knock them back |grouprole TANK
|tip Anyone within 8 yards of Tortheldrin will take damage from Whirlwind. Move away during this |grouprole TANK
|tip He will also randomly Counterspell players. This spell can be very dangerous for healers, as it will prevent spellcasting for 15 seconds |grouprole TANK
kill Prince Tortheldrin##11486 |q 27110/2 |goto Dire Maul/4 60.40,23.50 |only if haveq(27110)
Defeat Prince Tortheldrin |scenariogoal 25065 |goto Dire Maul/4 60.40,23.50
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	66.20,21.80	74.20,22.40	72.70,24.10
path	67.10,24.00	60.30,27.20	59.30,33.00
path	56.40,37.90	59.30,57.60	66.30,57.80
path	68.90,54.50	69.60,43.00	71.90,40.10
path	76.90,39.90	Dire Maul/2 36.90,53.30
path	Dire Maul/2 44.40,53.20	Dire Maul/2 57.50,54.20
path	Dire Maul/2 64.80,56.30	Dire Maul/2 78.80,50.50
You can either run to the beginning of the dungeon to turn in your quests
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
Return to the beginning of the instance |goto Dire Maul/2 78.80,50.50 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27109) and not completedq(27112) and not completedq(27110)
step
talk Shen'dralar Watcher##44999
turnin The Warped Defender##27109 |goto Dire Maul/2 87.30,52.40
only if not completedq(27109)
step
talk Estulan##44991
turnin The Cursed Remains##27112 |goto Dire Maul/2 90.50,44.80
only if not completedq(27112)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	84.40,47.70	71.30,56.00	61.90,55.50
path	54.80,47.20	45.10,36.60	40.80,34.80
path	Dire Maul/3 50.00,12.70	Dire Maul/2 20.30,20.90
path	22.70,26.20	35.60,25.70	48.40,26.10
path	48.40,43.10
Follow the path |goto Dire Maul/2 48.40,43.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27111)
step
talk Shen'dralar Ancient##14358
turnin The Madness Within##27110 |goto Dire Maul/2 48.40,53.80
accept The Treasure of the Shen'dralar##27111 |goto Dire Maul/2 48.40,53.80
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	47.00,59.80	44.30,59.40	41.20,53.40
path	30.00,42.60	Dire Maul/4 71.30,40.30
path	Dire Maul/4 69.30,45.50	Dire Maul/4 68.80,54.50
path	Dire Maul/4 65.70,57.40	Dire Maul/4 59.30,57.20
path	Dire Maul/4 56.30,38.40	Dire Maul/4 59.60,32.80
path	Dire Maul/4 60.60,26.40	Dire Maul/4 67.20,24.10
path	Dire Maul/4 74.10,23.80	Dire Maul/4 72.60,21.70
Jump down and follow the path |goto Dire Maul/4 72.60,21.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27111)
step
click Treasure of the Shen'dralar##179517
turnin The Treasure of the Shen'dralar##27111 |goto Dire Maul/4 70.60,24.10
only if not completedq(27111)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Dire Maul: Gordock Commons",{
description="This guide will walk you through completing the Dire Maul: Gordock Commons dungeon. This dungeon is located in Feralas on the continent of Kalimdor and is home to the Gordok ogres, led by King Gordok. This dungeon ranges from level 15 to 30.",
mapid=235,
achieveid={644},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DM, North, Feralas"},
},[[
step
label "Start"
You may choose to do a normal run or a special tribute run
The tribute run requires you to skip all bosses up to the king and rewards slightly better loot
Click here to do a normal run |confirm |next "Normal"
Or
Click here to do a tribute run |confirm |next "Tribute"
step
label "Normal"
Press _I_ and queue for Dire Maul: Gordock Commons or enter the dungeon with your group |goto Dire Maul/1 71.10,93.50 |c
step
talk Stonemaul Ogre##45052
accept King of the Gordok##27128 |goto Dire Maul 71.70,92.20
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.50,90.10	69.30,86.80	69.30,85.00
Follow the path |goto Dire Maul/1 69.30,85.00 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guard Mol'dar##14326 |goto Dire Maul/1 69.80,75.50
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Mol'dar
|tip Mol'dar will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Mol'dar will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Mol'dar |scenariogoal 25066 |goto Dire Maul/1 69.80,75.50
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	69.30,73.60	69.30,69.90	66.50,68.30
Follow the path |goto Dire Maul/1 66.50,68.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Stomper Kreeg##14322 |goto Dire Maul 62.20,66.00
|tip Booze Spit is a frontal cone attack that will reduce chance to hit by 75% and make you drunk for 8 seconds. Avoid standing in front of Kreeg
|tip War Stomp will knock back any player within 5 yards
|tip Anyone within 8 yards is vulnerable to Whirlwind. Run away when he does this
|tip At 50% health, Kreeg gains Frenzy and Drunken Rage. This will cause him to attack 60% faster and move 100% faster
_TANK:_ |grouprole TANK
|tip Keep your back to a wall and save defensive cooldowns for the 50% enrage |grouprole TANK
Defeat Stomper Kreeg |scenariogoal 25070 |goto Dire Maul 62.20,66.00
confirm
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	61.10,68.30	59.10,71.10	57.40,70.60
path	55.10,68.30	50.00,67.20	49.50,69.80
Follow the path |goto Dire Maul/1 49.50,69.80 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guard Fengus##14321 |goto Dire Maul/1 49.40,78.70
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Fengus
|tip Fengus will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Fengus will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Fengus |scenariogoal 25067 |goto Dire Maul/1 49.40,78.70
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	48.10,78.10	44.10,78.10	40.40,78.20
path	36.50,78.20	31.80,78.10	29.40,77.10
path	27.60,74.60	27.00,69.50	27.00,63.00
Follow the path |goto Dire Maul/1 27.00,63.00 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guard Slip'kik##14323 |goto Dire Maul/1 26.50,57.80
|tip Important: Clear the ogres nearby before engaging Guard Slip'kik
|tip Slip'kik will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Slip'kik will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Slip'kik |scenariogoal 25068 |goto Dire Maul/1 26.50,57.80
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.80,57.50	25.30,57.70	23.90,60.00
path	24.20,66.10	23.30,67.00	23.30,61.20
path	23.90,56.90	25.60,54.50	27.60,54.50
path	27.60,59.90	27.70,64.00	29.10,65.80
path	31.80,65.50	31.80,61.50
Follow the path |goto Dire Maul/1 31.80,61.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Captain Kromcrush##14325 |goto Dire Maul/1 31.90,50.80
|tip Keep Kromcrush away from the area in which he stands. He will use Frightening Shout, fearing anyone within 8 yards for 6 seconds
|tip Mortal Cleave will hit a melee target and another standing near them, reducing healing by 50%
|tip At 50% health, Kromcrush will use Intruder Alert!, calling 2 Gordok Reavers to aid him. CC or kill these first
|tip These reavers will use Cleave, Sunder Armor, and Mortal Strike
|tip At 25% health, Kromcrush will activate Retaliation for 8 seconds, instantly striking anyone hitting him in melee combat
_DAMAGE:_ |grouprole DAMAGE
|tip Do not attack Kromcrush during Retaliation |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be aware that the healing reducting effects on this fight will require to you heal more frequently |grouprole HEALER
Defeat Captain Kromcrush |scenariogoal 25071 |goto Dire Maul/1 31.90,50.80
step
kill 1 Cho'Rush the Observer##14324 |goto Dire Maul/1 31.80,26.40
kill 1 King Gordok##11501 |goto Dire Maul/1 31.80,26.40 |only if default
_Cho'Rush the Observer:_
|tip Cho'Rush can spawn as a Priest, Shaman, or Mage
|tip Interrupt Cho'Rush when he casts Heal, Healing Wave, or Arcane Explosion
|tip Dispel his Power Word: Shield and Bloodlust
_King Gordok:_
|tip Berserker Charge will deal damage to random players and knock them up in the air
|tip The tank will take more damage as the fight progresses thanks to stacks of Sunder Armor
|tip Mortal Strike will reduct healing on the tank by 50%
|tip The King will use War Stomp on anyone within 5 yards, dealing damage and stunning for 4 seconds
kill King Gordok##11501 |q 27128/1 |goto Dire Maul/1 31.80,26.40 |only if haveq(27128)
Defeat King Gordok |scenariogoal 1/27856 |goto Dire Maul/1 31.80,26.40
step
talk Mizzle the Crafty##14353 |goto Dire Maul/1 31.70,27.40
Ask him: _"I'm the new king? What are you talking about?"_
Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well
click Gordok Tribute##179564
confirm |only if not completedq(27128) |next "Return"
confirm |only if completedq(27128) |next "end"
step
label "Return"
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	31.80,31.10	31.80,39.90	31.80,50.80
path	31.80,58.90	31.70,65.60	28.50,65.70
path	27.60,61.10	27.60,54.50	24.70,55.00
path	23.20,61.10	23.60,67.20	24.30,64.10
path	24.30,59.50	26.00,59.50	27.00,63.50
path	27.00,69.50	27.20,74.10	29.40,77.40
path	33.30,78.20	38.70,78.20	44.00,78.10
path	49.40,78.00	53.20,77.80	56.20,78.90
path	57.40,83.80	61.60,86.60	66.00,87.60
path	71.70,90.50
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the instance |goto Dire Maul/1 71.70,90.50 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27128)
step
talk Druid of the Talon##45040
turnin King of the Gordok##27128 |goto Dire Maul 71.70,92.30
only if not completedq(27128)
|next "end"
step
label "Tribute"
Press _I_ and queue for Dire Maul: Gordock Commons or enter the dungeon with your group |goto Dire Maul/1 71.10,93.50 |c
step
talk Druid of the Talon##45040
accept King of the Gordok##27128 |goto Dire Maul 71.70,92.20
|only if not completedq(27128)
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.80,90.10	68.90,88.00	64.00,86.90
path	60.80,86.90	57.00,84.00	55.90,78.10
path	52.90,77.80	48.10,78.10	44.00,78.10
path	35.10,78.10	30.40,77.80	28.00,75.50
path	27.00,69.00	27.20,63.80
Follow the path. Avoid Guard Fengus in the center courtyard! |goto Dire Maul/1 27.20,63.80 < 10
_DO NOT KILL Guard Fengu_
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Broken Trap##179485
Carefully activate the Broken Trap and wait for Guard Slip'kik to walk over it
accept A Broken Trap##27118 |repeatable |goto Dire Maul/1 26.53,58.02
step
talk Knot Thimblejack##14338
accept The Gordok Ogre Suit##27119 |goto Dire Maul 28.60,55.30
only if not completedq(27119)
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.80,57.50	25.30,57.70	23.90,60.00
path	24.20,66.10	23.30,67.00	23.30,61.20
Follow the path |goto Dire Maul/1 23.30,61.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Ogre Tannin Basket##179499
Retrieve the Ogre Tannin |q 27119/1 |goto Dire Maul/1 23.70,55.40 |only if not completedq(27119)
collect 1 Ogre Tannin##18240 |only if completedq(27119) |goto Dire Maul/1 23.60,55.20
If someone else got the Ogre Tannin, click here |confirm |next "King"
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	25.60,58.30	26.50,58.50	28.60,55.30
Jump down and return to Knot
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Knot Thimblejack##14338
turnin The Gordok Ogre Suit##27119 |only if haveq(27119) |or
accept The Gordok Ogre Suit##27120 |or
step
label "King"
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.80,57.50	25.30,57.70	23.90,60.00
path	24.20,66.10	23.30,67.00	23.30,61.20
path	23.90,56.90	25.60,54.50	27.60,54.50
path	27.60,59.90	27.70,64.00	29.10,65.80
path	31.80,65.50	31.80,61.50
Follow the path |goto Dire Maul/1 31.80,61.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Before running down this hallway:
use the Gordok Ogre Suit##18258
Put on your ogre disguise |havebuff Gordok Ogre Suit##22736
step
talk Captain Kromcrush##14325 |goto Dire Maul/1 31.80,50.10
Select _"Um, I'm taking some prisoners we found outside before the king for punishment."_
confirm
step
_DO NOT KILL CHO'RUSH!_
_Cho'Rush the Observer:_
|tip Cho'Rush can spawn as a Priest, Shaman, or Mage
|tip Interrupt Cho'Rush when he casts Heal, Healing Wave, or Arcane Explosion
|tip Dispel his Power Word: Shield and Bloodlust
kill 1 King Gordok##11501 |goto Dire Maul/1 31.80,26.40 |only if default
_King Gordok:_
|tip Berserker Charge will deal damage to random players and knock them up in the air
|tip The tank will take more damage as the fight progresses thanks to stacks of Sunder Armor
|tip Mortal Strike will reduct healing on the tank by 50%
|tip The King will use War Stomp on anyone within 5 yards, dealing damage and stunning for 4 seconds
kill King Gordok##11501 |q 27128/1 |goto Dire Maul/1 31.80,26.40 |only if haveq(27128)
Defeat King Gordok |scenariogoal 1/27856 |goto Dire Maul/1 31.80,26.40
step
talk Mizzle the Crafty##14353 |goto Dire Maul/1 31.70,27.40
Ask him: _"I'm the new king? What are you talking about?"_
_Talk to him a second time_, about the Tribute, and he will spawn a Chest for you to loot as well
click Gordok Tribute##179564
confirm |next "Return2" |only if not completedq(27128) and not completedq(27124) and not completedq(27114)
confirm |next "end" |only if completedq(27124)
step
label "Return2"
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	31.80,31.10	31.80,39.90	31.80,50.80
path	31.80,58.90	31.70,65.60	28.50,65.70
path	27.60,61.10	27.60,54.50	24.70,55.00
path	25.60,58.10	26.00,59.50	27.00,63.50
path	27.00,69.50	27.20,74.10	29.40,77.40
path	33.30,78.20	38.70,78.20	44.00,78.10
path	49.40,78.00
talk Captain Kromcrush##14325
accept Unfinished Gordok Business##27124
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	51.30,77.80	56.00,77.60	57.20,72.80
path	62.00,65.70
talk Stomper Kreeg##14322
accept The Gordok Taste Test##27114
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	63.10,66.50	66.80,68.10	69.30,69.90
path	69.70,75.00
talk Guard Mol'dar##14326
turnin Unfinished Gordok Business##27124
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
talk Druid of the Talon##45040
turnin King of the Gordok##27128 |goto Dire Maul 71.70,92.30
only if not completedq(27128)
step
label "end"
Finished |complete true
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Dire Maul: Warpwood Quarter",{
description="This guide will walk you through completing the Dire Maul: Warpwood Quarter dungeon. This dungeon is located in Feralas on the continent of Kalimdor and has been corrupted by the satyr Alzzin the Wildshaper. This dungeon ranges from level 15 to 30.",
mapid=239,
achieveid={644},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DM, East, Feralas"},
},[[
step
label "start"
Press _I_ and queue for Dire Maul: Warpwood Quarter or enter the dungeon with your group |goto Dire Maul/5 6.70,38.30 |c
step
talk "Ambassador" Dagg'thol##44971
accept Pusillin The Thief##27107 |goto Dire Maul/5 7.10,36.30
accept Lethtendris's Web##27108 |goto Dire Maul/5 7.10,36.30
only if not completedq(27107) and not completedq(27108)
step
talk Pusillin##14354 |goto Dire Maul/5 12.50,30.90
Select _"Game? Are you crazy?"_
confirm
step
talk Furgus Warpwood##44969
accept Shards of the Felvine##27103 |goto Dire Maul/5 11.20,38.40
accept Alzzin the Wildshaper##27104 |goto Dire Maul/5 11.20,38.40
accept An Unwelcome Guest##27105 |goto Dire Maul/5 11.20,38.40
only if not completedq(27103) and not completedq(27104) and not completedq(27105)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	12.60,40.70	12.50,65.80	11.90,72.60
path	13.00,77.10	22.00,75.50	27.10,73.50
path	31.20,73.00	31.40,57.50	31.80,51.10
path	31.40,36.60	32.30,26.60	36.10,26.10
path	46.30,26.20	53.60,26.20	55.10,27.40
path	55.60,30.60	55.90,34.30	57.50,37.40
path	59.10,37.90	66.50,38.10	73.80,41.20
path	74.80,46.70	71.60,46.80
talk Pusillin##14354
Follow the path and _talk to Pusillin_ whenever he stops |goto Dire Maul/5 71.60,46.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Pusillin##14354
Select _"Prepare to meet your maker"_ |goto Dire Maul/5 75.80,45.20
confirm
step
kill 1 Pusillin##14354 |goto Dire Maul/5 73.77,43.74
collect the Book of Incantations##18261 |q 27107/1 |goto Dire Maul/5 73.77,43.74 |only if haveq(27107)
confirm |only if not haveq(27107)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	73.40,40.20	65.70,37.70	60.80,37.80
path	58.20,37.80	57.00,36.60	55.80,33.50
path	55.60,29.10	54.70,26.60	52.00,26.20
path	43.80,26.20	43.70,48.00	45.30,60.50
path	44.40,67.10	43.80,64.60	43.80,58.90
Follow the path |goto Dire Maul/5 43.80,58.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lethtendris##14327 |goto Dire Maul/5 42.80,49.10
|tip Void Bolt deals shadow damage to her current target
|tip Shadow Bolt Volley will deal AoE damage to the whole group
|tip Curse of Thorns has a 50% chance per melee attack to cause shadow damage to the player afflicted
|tip Curse of Tongues will slow the casting speed of anyone effected by 50%
|tip Immolate will apply a standard fire DoT
|tip Lethtendris will Enlarge Pimgib, increasing his damage
|tip Burn down Pimgib and focus on Lethtendris
|tip Interrupt Shadow Bolt Volley, Curse of Thorns, and Curse of Tongues
collect Lethtendris' Web##18426 |q 27108/1 |goto Dire Maul/5 42.80,49.10 |only if haveq(27108)
Defeat Lethtendris |scenariogoal 25058 |goto Dire Maul/5 42.80,49.10
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	43.80,57.20	43.80,66.70	44.80,66.50
path	46.90,63.40	47.00,63.30
Follow the path |goto Dire Maul/5 47.00,63.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.50,82.60	63.20,84.80	63.00,90.30
path	60.90,92.30	58.10,90.90	57.50,87.60
path	58.10,80.30	58.30,76.20
Follow the path |goto Dire Maul/6 58.30,76.20 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Hydrospawn##13280 |goto Dire Maul/6 55.50,71.40
|tip Submersion reduces the party's stamina by 10 per stack. Acts as a soft enrage
|tip Move away from Hydrospawn when he uses Riptide. This will disarm and knock back anyone within 10 yards
|tip Hydrospawn will Summon Massive Geyser, dealing frost damage to anyone standing in the geyser
|tip At 50% health, he will summon 2 Hydrolings. These have a knockback and drop threat every time they land a hit. Kill them quickly
collect Hydrospawn Essence##18299 |q 27105/1 |goto Dire Maul/6 55.50,71.40 |only if haveq(27105)
Defeat Hydrospawn |scenariogoal 25059 |goto Dire Maul/6 55.50,71.40
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	58.20,66.50	57.70,54.90	58.50,52.60
path	60.10,51.90	61.50,52.80	62.10,55.10
path	62.10,69.30	60.00,69.50
Follow the path |goto Dire Maul/6 60.00,69.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Zevrim Thornhoof##11490 |goto Dire Maul/6 57.60,74.00
|tip Players afflicted by Intense Pain will deal shadow damage to anyone standing nearby
|tip Occasionally, Thornhoof will Sacrifice players on his altar. The sacrificed player will take heavy damage over 6 seconds
_HEALER:_ |grouprole HEALER
|tip You must heal the Sacrifice target or they will die |grouprole HEALER
kill 1 Zevrim Thornhoof##11490 |q 27104/1 |goto Dire Maul/6 57.60,74.00 |only if haveq(27104)
Defeat Zevrim Thornhoof |scenariogoal 25060 |goto Dire Maul/6 57.60,74.00
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	53.50,77.30	52.80,88.00	52.90,91.20
path	48.80,90.90	40.70,80.50
Jump down and follow the path |goto Dire Maul/6 40.70,80.50 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	39.60,78.40	40.40,71.40	41.00,66.60
path	39.30,60.90	40.20,48.90
talk Old Ironbark##11491
Tell him "Thank you, Ironbark. We are ready for you to open the door."
Follow him and go through the door he opens |goto Dire Maul/6 40.20,48.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	40.20,45.00	40.20,33.10	41.00,30.10
path	42.90,28.90	48.60,28.90	51.00,22.00
path	55.80,16.90	59.80,16.60	64.50,19.00
path	66.00,28.80
Follow the path |goto Dire Maul/6 66.00,28.80 < 9
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Alzzin the Wildshaper##11492 |goto Dire Maul/6 57.70,28.90 |only if default
_Satyr Form:_
|tip Alzzin will leech mana from random players using Enervate
|tip Wither is a disease that deals nature damage and reduces strength by 50 for 21 seconds
_Tree Form:_
|tip Alzzin will Disarm and Knock Away the tank. Knock Away acts as a threat drop
|tip Wild Regeneration will heal Alzzin over 16 seconds
_Dire Wolf Form:_
|tip Mangle will slow the tank's movement speed by 50% and inflict a short bleed
|tip At 50% health he will use Come Minions!, summoning imps which reset threat every time they hit. Kill them quickly
kill 1 Alzzin the Wildshaper##11492 |q 27104/2 |goto Dire Maul/6 57.70,28.90 |only if haveq(27104)
Defeat Alzzin the Wildshaper |scenariogoal 27854 |goto Dire Maul/6 57.70,28.90
step
click Felvine Shard##179559
Click the Reliquary of Purity in your bags |use Reliquary of Purity##18539
Create a Sealed Reliquary of Purity |q 27103/1 |goto Dire Maul/6 55.00,27.10
only if haveq(27103)
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.20,28.60	68.10,27.00	66.80,21.80
path	63.60,17.10	55.80,17.00	51.10,21.40
path	48.30,28.80	43.00,28.90	40.90,30.20
path	40.20,33.20	40.20,49.50	39.20,60.90
path	40.60,65.00	40.50,70.80	39.10,76.60
path	41.90,82.20	49.30,91.20	52.80,91.10
path	52.90,84.90	54.00,75.30	57.40,75.00
path	57.30,80.70	57.50,90.00	60.30,92.70
path	63.50,89.80	63.30,84.70	61.40,82.60
path	Dire Maul/5 45.70,63.00	Dire Maul/5 43.80,53.60
path	Dire Maul/5 43.80,26.20	Dire Maul/5 33.40,26.30
path	Dire Maul/5 31.50,30.30	Dire Maul/5 31.60,48.70
path	Dire Maul/5 31.10,63.90	Dire Maul/5 31.00,72.50
path	Dire Maul/5 21.40,75.40	Dire Maul/5 14.20,76.90
path	Dire Maul/5 12.40,72.90	Dire Maul/5 12.70,54.20
path	Dire Maul/5 12.40,38.30	Dire Maul/5 8.10,36.60
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the dungeon |goto Dire Maul/5 8.10,36.60 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27107) and not completedq(27108) and not completedq(27103) and not completedq(27104) and not completedq(27105)
step
talk "Ambassador" Dagg'thol##44971
turnin Pusillin The Thief##27107 |goto Dire Maul/5 7.00,36.20
only if not completedq(27107)
step
talk "Ambassador" Dagg'thol##44971
turnin Lethtendris's Web##27108 |goto Dire Maul/5 7.00,36.20
only if not completedq(27108)
step
talk Furgus Warpwood##44969
turnin Shards of the Felvine##27103 |goto Dire Maul/5 11.20,38.40
only if not completedq(27103)
step
talk Furgus Warpwood##44969
turnin Alzzin the Wildshaper##27104 |goto Dire Maul/5 11.20,38.40
only if not completedq(27104)
step
talk Furgus Warpwood##44969
turnin An Unwelcome Guest##27105 |goto Dire Maul/5 11.20,38.40
only if not completedq(27105)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Gnomeregan",{
description="This guide will walk you through completing the Gnomeregan dungeon. This dungeon is located in Dun Morogh on the continent of Eastern Kingdoms. Gnomeregan was the former capital city of the gnomes until it fell to a trogg invasion. This dungeon ranges from level 10 to 30.",
mapid=226,
achieveid={634},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Dun, Morogh"},
},[[
step
label "start"
Press _I_ and queue for Gnomeregan or enter the dungeon with your group |goto Gnomeregan/1 64.40,28.80 |c
step
map Gnomeregan/1
path follow loose;loop off;ants curved
path	62.10,35.60	57.60,42.00	59.00,46.50
path	58.70,55.20	56.70,59.60	62.50,68.40
path	72.60,69.50
Follow the path |goto Gnomeregan/1 72.60,69.50 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Blastmaster Emi Shortfuse##7998
Tell her: "I am ready to begin" |goto Gnomeregan/1 81.90,65.10
|tip This will begin the Grubbis event. 2 waves of enemies will spawn when the walls break down before he emerges to attack the party
|tip You will need to kill the waves of troggs that come out. This will last about 60 seconds per side
|tip Grubbis will use Strike on his current target
|tip Grubbis is accompanied by Chomper, his loyal basilisk pet
Defeat Grubbis |scenariogoal 24958 |goto Gnomeregan/1 77.30,65.60
step
map Gnomeregan/1
path follow loose;loop off;ants curved
path	76.10,67.30	71.30,69.30	63.20,68.70
path	56.60,59.50	59.00,55.50
Follow the path |goto Gnomeregan/1 59.00,55.50 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Walk to the ledge |goto Gnomeregan/1 57.60,51.40 |n
use S.A.F.E. "Parachute"##60680 |only if itemcount(60680) > 0
Jump down from this ledge, onto the big gear below. |goto Gnomeregan/2 83.30,46.40 < 200
confirm
step
kill 1 Viscous Fallout##7079 |only if default
|tip Viscous Fallout patrols around this area
|tip He will only use one ability on the party, Toxic Volley
|tip Toxic Volley will place a nature damage DoT on party members that will deal damage over 15 seconds
kill 1 Viscous Fallout##7079 |q 26939/1 |only if haveq(26939)
Defeat Viscous Fallout |scenariogoal 24959 |goto Gnomeregan/2 83.90,45.50
step
map Gnomeregan/2
path follow loose;loop off;ants curved
path	62.60,47.80	58.50,47.80	56.10,49.70
path	55.80,52.80	55.80,61.10	53.90,67.70
path	49.60,70.30	43.00,69.90	36.60,65.50
path	33.80,57.20	29.60,51.30	24.30,50.20
path	18.80,51.40	15.00,56.80	13.00,64.40
path	17.50,65.90
Follow the path |goto Gnomeregan/2 17.50,65.90
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Electrocutioner 6000##6235 |only if default
|tip Electrocutioner will use Megavolt, inflicting nature damage to all players in front of him
|tip He will also use Shock on his current target, dealing heavy nature damage
|tip Chain Bolt will strike a target and jump to 3 nearby targets, dealing nature damage to each. Stay spread out
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Megavolt and Chain Bolt whenever possible |grouprole TANK or DAMAGE
kill 1 Electrocutioner 6000##6235 |q 26941/1 |only if haveq(26941)
Defeat Electrocutioner 6000 |scenariogoal 24960 |goto Gnomeregan/2 23.70,68.30
step
use S.A.F.E. "Parachute"##60680
|tip Walk to this ledge and use your parachute to reach the bottom safely |goto Gnomeregan/2 23.90,73.30 < 5
talk B.E Barechus##44560
turnin The G-Team##26941 |goto Gnomeregan/3 23.90,39.00
accept The G-Team##26942 |goto Gnomeregan/3 23.90,39.00
only if not completedq(26942)
step
map Gnomeregan/3
path follow loose;loop off;ants curved
path	29.70,36.30	31.50,36.60	38.60,50.30
path	33.60,56.00	38.00,64.50	37.10,67.30
path	36.10,79.80	35.90,85.70	37.80,87.30
Follow the path |goto Gnomeregan/3 37.80,87.30
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Crowd Pummeler 9-60##6229
|tip Crowd Pummeler will use Arcing Smash, a frontal cone cleave attack. Avoid standing in front of him
|tip He will also use Crowd Pummel, damaging all enemies within 10 yards and interrupting spell casting. Stay at range if you can
|tip Occasionally, he will Trample party members within 10 yards for physical damage
Defeat Crowd Pummeler 9-60 |scenariogoal 24961 |goto Gnomeregan/3 43.50,86.80
step
map Gnomeregan/3
path follow loose;loop off;ants curved
path	45.70,88.80	49.90,89.50	51.30,86.90
path	52.80,68.80	52.30,67.40	48.30,72.00
Follow the path and ride the elevator down |goto Gnomeregan/4 71.40,77.20 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Gnomeregan/4
path follow loose;loop off;ants curved
path	69.50,84.70	67.40,87.30	63.00,86.60
path	61.20,89.00	56.50,79.80	54.80,78.60
path	51.00,81.90	49.10,80.60	43.90,70.30
path	41.10,71.40	28.30,66.60	26.20,63.90
path	25.30,60.10	25.80,56.20	28.80,45.70
click The Final Chamber
Follow the path and _open_ The Final Chamber door |goto Gnomeregan/4 28.80,45.70
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Mekgineer Thermaplugg##7800 |only if default
|tip Steam Blast will inflict fire damage to Thermaplugg's current target and knock them back
|tip Pound will deal damage and disorient his current target
|tip Thermaplugg will also use Welding Beam on his current target. This will deal nature damage over 5 seconds
|tip Periodically, he will activate Walking Bombs. These bombs will keep spawning until the red button on the side of the tube is pressed
|tip Walking Bombs will move towards players and Detonate, dealing fire damage in a 10 yard radius
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Steam Blast and Welding Beam as often as possible |grouprole TANK or DAMAGE
Defeat Mekgineer Thermaplugg |scenariostage 1 |goto Gnomeregan/4 31.30,29.90
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Lower Blackrock Spire",{
description="This guide will walk you through completing the Lower Blackrock Spire dungeon. This dungeon is located in Blackrock Mountain on the continent of Eastern Kingdoms and is home to Warchief Rend Blackhand's Dark Horde. This dungeon ranges from level 20 to 30.",
mapid=250,
achieveid={643},
patch='30001',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"BRM, Burning, Steppes, Searing, Gorge, LBRS"},
},[[
step
label "start"
Press _I_ and queue for Lower Blackrock Spire or enter the dungeon with your group |goto Blackrock Spire/4 37.90,43.30 |c
step
talk Acride##10299
accept Trolls, Ogres, and Orcs, Oh My!##27440 |goto Blackrock Spire/4 38.10,51.00
only if not completedq(27440)
step
kill Spirestone Butcher##9219
|tip Keep an eye out for the rare spawn Spirestone Butcher with the ogres.
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 15
path	39.90,48.30	41.70,45.20	47.30,43.20
path	Blackrock Spire/3 53.70,38.10	Blackrock Spire/3 59.40,43.00
path	Blackrock Spire/3 66.50,43.10	Blackrock Spire/3 66.00,57.00
path	Blackrock Spire/3 56.70,57.80	Blackrock Spire/3 46.00,57.80
Follow the path |goto Blackrock Spire/3 46.00,57.80 < 5 |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
Proceeding to Pike |goto Blackrock Spire/3 66.60,55.40 < 10 |next "Pike" |or
confirm
step
label "Pike"
If you wish to kill Urok Doomhowl, you will need to retrieve a Roughshod Pike
collect 1 Roughshod Pike##12533 |goto Blackrock Spire/3 67.70,57.40 |or
Click here if you wish to skip Urok Doomhowl |confirm |or
step
kill Spirestone Butcher##9219
|tip Keep an eye out for the rare spawn Spirestone Butcher with the ogres.
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 15
path	39.90,48.30	41.70,45.20	47.30,43.20
path	Blackrock Spire/3 53.70,38.10	Blackrock Spire/3 59.40,43.00
path	Blackrock Spire/3 66.50,43.10	Blackrock Spire/3 66.00,57.00
path	Blackrock Spire/3 56.70,57.80	Blackrock Spire/3 46.00,57.80
Follow the path |goto Blackrock Spire/3 46.00,57.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Highlord Omokk##9196
|tip Knock Away will knock the tank back unless their back is against a wall
|tip At 50% health, Omokk gains Frenzy, increasing his attack speed by 60%
Defeat Highlord Omokk |scenariogoal 25775 |goto Blackrock Spire/3 34.60,55.20
|tip Be sure to loot Omokk for Omokk's Head if you want to kill Urok Doomhowl.
step
map Blackrock Spire/3
path follow smart; loop off; ants curved; dist 15
path	46.10,57.80	57.50,57.80	57.40,51.10
path	Blackrock Spire/2 53.20,51.10	Blackrock Spire/2 53.30,56.60
path	Blackrock Spire/2 55.40,63.90
Follow the path |goto Blackrock Spire/2 55.40,63.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shadow Hunter Vosh'gajin##9236
|tip Hex makes this encounter slightly dangerous. Dispelling this debuff is critical!
Defeat Shadow Hunter Vosh'gajin |scenariogoal 25776 |goto Blackrock Spire/2 55.60,71.80
step
map Blackrock Spire/2
path follow strict; loop off; ants curved; dist 15
path	55.40,62.10	59.50,58.10	Blackrock Spire/1 59.50,64.20
path	Blackrock Spire/1 53.10,61.10
Follow the path |goto Blackrock Spire/1 53.10,61.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill War Master Voone##9237
|tip Voone will use Throw Axe until 65% health, stunning a random player and dealing damage
|tip At 65% health, Voone will use Cleave and Mortal Strike. Avoid standing in front of him
|tip At 40% health, Voone will Snap Kick, stunning the tank, and Uppercut, knocking the tank back
|tip In addition, random players will be Pummeled
Defeat War Master Voone |scenariogoal 25777 |goto Blackrock Spire/1 53.00,52.90
step
map Blackrock Spire/1
path follow smart; loop off; ants curved; dist 15
path	52.00,57.60	53.90,61.70	62.50,61.70
path	Blackrock Spire/3 66.00,49.80	Blackrock Spire/3 62.90,45.90
path	Blackrock Spire/3 58.90,47.50	Blackrock Spire/1 52.10,49.60
path	48.50,54.00	48.60,63.80	53.50,70.00
path	60.20,70.20
Follow the path |goto Blackrock Spire/1 60.20,70.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mother Smolderweb##10596
|tip Do not stand in front of Smolderweb unless tanking, as Crystallize will stun in a frontal cone
|tip Mother's Milk will poison random players, causing them to root anyone within 8 yards periodically
|tip Stay spread out
Defeat Mother Smolderweb |scenariogoal 25778 |goto Blackrock Spire/1 62.50,76.30
step
map Blackrock Spire/2
path follow smart; loop off; ants curved; dist 15
path	62.20,73.00	56.40,73.60	52.50,76.00
path	Blackrock Spire/3 50.40,74.30	Blackrock Spire/3 47.10,70.40
path	Blackrock Spire/4 45.30,62.00
Follow the path |goto Blackrock Spire/4 45.30,62.00 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
|next "Cont" |only if default
|next "Urok" |only if itemcount(12534) > 0 and itemcount(12533) > 0
confirm
step
label "Urok"
Impale Omokk's head on the roughshod pike atop the pile of skulls |use Omokk's Head##12534
|tip Defend the pike. Once the initial mobs are dead, click it again to challenge Urok Doomhowl
kill Urok Doomhowl##10584
|tip Doomhowl will use Intimidating Roar, fearing anyone within 8 yards for 8 seconds. Stay at range if possible
Defeat Urok Doomhowl |scenariogoal 25779 |goto Blackrock Spire/4 45.80,53.90 |or
Click here if you would like to skip this boss |confirm |or
step
label "Cont"
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 15
path	42.50,61.20	42.70,68.20	Blackrock Spire/5 42.90,79.70
path	Blackrock Spire/5 37.80,80.20
Follow the path |goto Blackrock Spire/5 37.80,80.20 < 12
|tip Be wary of the bug swarms in the alcoves to the right.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Halycon##10220
Defeat Halycon |scenariogoal 25781 |goto Blackrock Spire/5 37.70,85.40
|tip After killing Halycon, Gizrul will come running down the hallway. Be prepared
step
kill Gizrul the Slavener##10268
|tip At 60% health, Gizrul will gain 60% increased attack speed through Frenzy
Defeat Gizrul the Slavener |scenariogoal 25782 |goto Blackrock Spire/5 37.70,85.40
step
map Blackrock Spire/5
path follow smart; loop off; ants curved; dist 10
path	40.00,78.30	39.90,74.00	35.70,70.60
path	37.30,64.90	37.30,64.90	Blackrock Spire/6 41.00,60.40
path	Blackrock Spire/6 51.20,60.40	Blackrock Spire/6 53.60,60.70
path	Blackrock Spire/6 60.10,64.70	Blackrock Spire/6 58.80,58.90
Follow the path |goto Blackrock Spire/6 58.80,58.90 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Overlord Wyrmthalak##9568
|tip Tank Wyrmthalak against a wall to avoid being knocked back
|tip Sweeping Slam will deal damage and knock back anyone in front of him. Stay behind him unless tanking
|tip At 50% health, he will summon a Spirestone Warlord, Smolderthorn Berserker, and Bloodaxe Veteran
|tip If your group DPS is good, burn Wyrmthalak and then deal with the adds
Defeat Overlord Wyrmthalak |scenariogoal 1/34457 |goto Blackrock Spire/6 56.10,55.60
step
map Blackrock Spire/6
path follow strict; loop off; ants curved; dist 12
path	54.30,60.40	49.50,60.50	Blackrock Spire/5 37.30,60.60
path	Blackrock Spire/5 37.30,65.60	Blackrock Spire/5 35.90,71.20
path	Blackrock Spire/5 39.90,74.30	Blackrock Spire/5 40.00,79.40
path	Blackrock Spire/5 42.90,78.90	Blackrock Spire/4 42.60,59.60
path	Blackrock Spire/4 46.60,57.80	Blackrock Spire/3 49.90,57.80
path	Blackrock Spire/3 57.40,57.80	Blackrock Spire/3 62.90,59.10
path	Blackrock Spire/3 66.10,55.10	Blackrock Spire/3 66.10,42.80
path	Blackrock Spire/3 58.90,42.80	Blackrock Spire/3 54.50,37.50
path	Blackrock Spire/4 46.90,42.70	Blackrock Spire/4 40.60,45.80
path	Blackrock Spire/4 39.40,48.30
You can either run to the beginning of the dungeon to turn in your quests. |goto Blackrock Spire/4 39.40,48.30 < 5 |or
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance. |goto Blackrock Spire/4 37.90,43.30 < 8 |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(27440)
step
talk Acride##10299
turnin Trolls, Ogres, and Orcs, Oh My!##27440 |goto Blackrock Spire/4 38.10,51.00
only if haveq(27440)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Maraudon: Earth Song Falls",{
description="This guide will walk you through completing the Maraudon: Earth Song Falls dungeon. This dungeon is located in Desolace on the continent of Kalimdor and is a vibrant cavern home to Princess Theradras. This dungeon ranges from level 10 to 30. Also known as Inner Dire Maul.",
mapid=280,
achieveid={640},
patch='30003',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Desolace"},
},[[
step
label "start"
Press _I_ and queue for Maraudon: Earth Song Falls or enter the dungeon with your group |goto Maraudon/2 28.20,35.20 |c
step
Jump down the waterfall here |goto Maraudon/2 28.20,37.30 < 5
confirm
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Princess Theradras##27692 |goto Maraudon/2 29.90,50.00
only if not completedq(27692)
step
map Maraudon/2
path follow loose; loop off; ants curved
path	29.40,47.10	30.30,53.20	32.40,60.70
path	34.50,60.60	35.40,57.40	37.20,57.80
path	41.10,61.30	44.60,60.00	45.80,57.90
path	45.50,55.20	43.60,57.20	41.10,58.60
path	40.80,62.90	38.30,63.40	36.00,59.60
path	37.20,54.50	39.70,53.60
Follow the path |goto Maraudon/2 39.70,53.60 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Landslide##12203 |goto Maraudon/2 40.60,48.30
|tip Landslide will Knock Away the tank, causing physical damage and knocking them back
|tip Periodically, Trample will deal physical damage to the entire party
|tip During Landslide, all party members will be stunned while he summons 4 Theradrim Shardlings. Kill these and finish Landslide off
_HEALER:_ |grouprole HEALER
|tip Be prepared to heal the group during _Trample_ |grouprole HEALER
Defeat Landslide |scenariogoal 25056 |goto Maraudon/2 40.60,48.30
step
map Maraudon/2
path loop off
path	39.60,53.40	37.10,54.20	35.80,59.60
path	38.20,63.40	41.40,65.50	43.50,67.50
path	45.10,66.70	46.20,68.10	44.70,73.60
path	41.70,75.20	38.80,78.70	36.10,79.60
path	32.80,78.70
Follow the path |goto Maraudon/2 32.80,78.70 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Princess Theradras##12201 |goto Maraudon/2 26.60,78.80 |only if default
|tip Theradras will Thrash, dealing 2 extra attacks to the tank
|tip Repulsive Gaze will fear the tank and anyone standing near them for 6 seconds. Don't stand near the tank
|tip Thrown Boulders will deal damage to random players, interrupt spellcasting, and stun them for 2 seconds
|tip Dust Field will deal nature damage to anyone within 20 yards of Theradras and knock them back
_HEALER:_ |grouprole HEALER
|tip Be prepared for the group to take heavy damage during _Dust Field_ |grouprole HEALER
kill 1 Princess Theradras##12201 |q 27692/1 |goto Maraudon/2 26.60,78.80 |only if haveq(27692)
Defeat Princess Theradras |scenariogoal 1/34447 |goto Maraudon/2 26.60,78.80
step
Click the Quest Complete box in the top right corner
turnin Princess Theradras##27692
only if not completedq(27692)
step
Jump down the waterfall here |goto Maraudon/2 31.30,75.60 < 5
confirm
step
kill 1 Rotgrip##13596 |goto Maraudon/2 41.60,79.50
|tip Rotgrip will Puncture the tank for the entire fight, bleeding them for physical damage
|tip Fatal Bite will damage the tank and heal Rotgrip for twice the amount of damage dealt
Defeat Rotgrip |scenariogoal 25057 |goto Maraudon/2 41.60,79.50
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Maraudon: Foulspore Cavern",{
description="This guide will walk you through completing the Maraudon: Foulspore Cavern dungeon. This dungeon is located in Desolace on the continent of Kalimdor and is a putrid, diseased cavern. This dungeon ranges from level 10 to 30. Also known as Dire Maul Orange.",
mapid=280,
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Desolace, Orange"},
},[[
step
label "start"
Press _I_ and queue for Maraudon: Foulspire Caverns or enter the dungeon with your group |goto Maraudon/1 62.20,28.20 |c
step
Click the Accept Quest box on the right side of your screen.
accept Servants of Theradras##27698 |goto Maraudon 60.80,21.20
only if not completedq(27698)
step
map Maraudon/1
path follow loose; loop off; ants curved
path	59.30,21.80	54.90,23.50	53.30,28.40
path	49.60,30.60	43.80,38.00	40.60,41.70
path	41.00,44.80	43.00,48.20	49.10,44.90
path	53.60,37.30	52.80,33.20	48.90,31.90
path	47.10,29.10	46.10,26.50	47.90,22.30
path	47.10,19.90	40.90,14.40
Follow the path |goto Maraudon/1 40.90,14.40 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Noxxion##13282 |goto Maraudon/1 34.60,10.70 |only if default
|tip Toxic Volley will poison all players within 45 yards for 15 seconds
|tip Noxxion will Uppercut the tank, knocking them back
|tip When he begins to Summon Noxxion Spawn Noxxion will split into 5 Noxxion Spawn
|tip Kill Noxxion Spawn during splits
kill 1 Noxxion##13282 |q 27698/1 |goto Maraudon/1 34.60,10.70 |only if haveq(27698)
Defeat Noxxion |scenariogoal 25054 |goto Maraudon/1 34.60,10.70
step
map Maraudon/1
path follow loose; loop off
path	38.90,16.50	38.20,24.20	35.20,31.00
path	33.70,35.70	32.90,39.90	30.80,39.90
path	25.90,36.20	21.70,35.60
Follow the path |goto Maraudon/1 21.70,35.60 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Razorlash##12258 |goto Maraudon/1 16.30,34.00 |only if default
|tip Razorlash will Puncture the tank, causing them to bleed for 10 seconds
|tip Thrash will cause him to attack 3 times in rapid succession
|tip Razorlash has a Cleave. Avoid standing near the tank
kill 1 Razorlash##12258 |q 27698/2 |goto Maraudon/1 16.30,34.00 |only if haveq(27698)
Defeat Razorlash |scenariogoal 25055 |goto Maraudon/1 16.30,34.00
step
Click the Complete Quest box on the right side of your screen
turnin Servants of Theradras##27698
only if not completedq(27698)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Maraudon: The Wicked Grotto",{
description="This guide will walk you through completing the Maraudon: The Wicked Grotto dungeon. This dungeon is located in Desolace on the continent of Kalimdor and is tainted by demon corruption. This dungeon ranges from level 10 to 30. Also known as Dire Maul Purple.",
mapid=280,
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Desolace, Purple"},
},[[
step
label "start"
Press _I_ and queue for Maraudon: The Wicked Grotto or enter the dungeon with your group |goto Maraudon/1 78.10,68.80 |c
step
Click the Quest Accept box in the top right corner.
accept Corruption in Maraudon##27697 |goto Maraudon 76.70,64.70
only if not completedq(27697)
step
map Maraudon
path follow loose; loop off; ants curved
path	75.80,60.70	72.20,66.10	69.10,64.30
path	65.10,59.70	61.30,56.50	58.00,49.90
path	54.70,48.30	52.30,49.60
Follow the path |goto Maraudon 52.30,49.60 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Tinkerer Gizlock##13601 |goto Maraudon 48.70,56.20
|tip Tinkerer Gizlock will occasionally throw a Bomb as someone, inflicting AoE damage. Stay at least 5 yards apart
|tip Goblin Dragon Gun will deal fire damage in a frontal cone. Avoid standing in front of him
|tip Flash Bomb will cause all beasts, including Feral/Guardian Druids and hunter pets to flee for 5 seconds
|tip Gizlock will randomly Shoot party members, dealing minor physical damage
Defeat Tinkerer Gizlock |scenariogoal 25051 |goto Maraudon 48.70,56.20
step
map Maraudon
path follow loose; loop off; ants curved
path	50.80,58.70	50.20,61.50	48.60,66.60
path	49.90,70.00	48.40,76.10	48.70,81.80
path	47.40,85.10	40.30,87.20	35.60,83.30
path	36.40,79.80	41.00,79.90	42.50,78.40
path	40.00,76.60
Follow the path |goto Maraudon 40.00,76.60 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Vyletongue##12236 |goto Maraudon 37.60,69.50 |only if default
|tip Shoot will deal minor physical damage to random party members
|tip Stay spread out so that Multi-Shot does not hit more than one party member at a time
|tip Occasionally, Vyletongue will Blink 20 yards straight forward
|tip Smoke Bomb will stun any players within 5 yards
kill Lord Vyletongue##12236 |q 27697/1 |goto Maraudon 37.60,69.50 |only if haveq(27697)
Defeat Lord Vyletongue |scenariogoal 25052 |goto Maraudon 37.60,69.50
step
Click the Complete Quest box in the top right corner:
turnin Corruption in Maraudon##27697
only if haveq(27697)
step
map Maraudon/1
path follow loose; loop off; ants curved
path	36.90,76.50	31.00,80.80	31.10,88.60
path	26.40,88.20	24.90,75.20	22.50,58.90
path	Maraudon/2 26.50,6.20
Follow the path |goto Maraudon/2 26.50,6.20 < 30
|tip Celebras the Cursed is an optional boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Celebras the Cursed##12225
|tip Celebras will summon three Forces of Nature.
|tip Twisted Tranquility will deal nature damage and slow players within 45 yards.
|tip Wrath deals single-target nature damage. Can be interrupted.
|tip Entangling Roots will root a single player and deal minor nature damage.
Defeat Celebras the Cursed |scenariogoal 25053 |goto Maraudon/2 24.50,14.30
|tip Celebras the Cursed is an optional boss.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Ragefire Chasm",{
description="This guide will walk you through completing the Ragefire Chasm dungeon. This dungeon is located in Orgrimmar on the continent of Kalimdor and is home to the Burning Blade cultists and troggs. This dungeon ranges from level 10 to 30.",
mapid=213,
achieveid={629},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Orgrimmar, RFC"},
},[[
step
label "start"
Press _I_ and queue for Ragefire Chasm or enter the dungeon with your group |goto Ragefire Chasm/1 62.40,7.90 |c
step
talk Invoker Xorenth##61716
accept A New Enemy##30969 |goto Ragefire Chasm/1 67.80,11.40
accept The Dark Shaman##30983 |goto Ragefire Chasm/1 67.80,11.40
only if not completedq(30969) and not completedq(30983)
step
talk Commander Bagran##61724
accept No Orc Left Behind##30984 |goto Ragefire Chasm/1 68.30,12.80
only if not completedq(30984)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	66.00,21.50	66.10,35.30	65.80,47.00
path	66.20,57.10
Follow this path down, but look out for rising lava. If you see lava rising up, wait for it to go back down before crossing |goto Ragefire Chasm/1 66.20,57.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
stickystart "corruptinsig"
step
kill Mature Flame Hound##61658 |n
Rescue the first Kor'kron Scout |q 30984/1 |count 1 |goto Ragefire Chasm/1 68.00,60.40
only if not completedq(30984)
step
kill Adarogg##61408
Avoid standing in the area targeted by Adarogg's _Inferno Charge_. It will deal physical damage to all nearby players
_HEALER:_ |grouprole HEALER
|tip Adarogg will periodically use Flame Breath on a random player dealing fire damage to them. This will need to be healed |grouprole HEALER
Defeat Adarogg |scenariogoal 24759
step
talk Suspecious Rock##61780
Tell it: _"It's Safe to come out now."_
Rescue the second Kor'kron Scout |q 30984/1 |count 2 |goto Ragefire Chasm/1 65.00,70.80
only if not completedq(30984)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	60.50,68.20	60.60,50.50	59.80,45.10
Follow this path up, but look out for rising lava. If you see lava rising up, wait for it to go back down before crossing. |goto Ragefire Chasm/1 59.80,45.10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
clicknpc Kor'kron Scout##61680
Rescue the third Kor'kron Scout |q 30984/1 |count 3 |goto Ragefire Chasm/1 60.80,43.20
only if not completedq(30984)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	59.30,42.10	60.20,36.20	55.90,28.90
Follow the path |goto Ragefire Chasm/1 55.90,28.90
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dark Shaman Koranthal##61412 |n |only if default
kill Dark Shaman Koranthal##61412 |q 30983/1 |only if haveq(30983)
When Koranthal begins casts _Shadow Storm_, the dark impacts on the ground will deal damage to anyone within 2 yards. Avoid these areas
_TANK:_ |grouprole TANK
|tip Interrupt Twisted Elements |grouprole TANK
_DAMAGE:_ |grouprole DPS
|tip Interrupt Twisted Elements |grouprole DPS
_HEALER:_ |grouprole HEALER
|tip Be prepared to heal targets of Twisted Elements and those taking damage during Shadow Storm |grouprole HEALER
Defeat Dark Shaman Koranthal |scenariogoal 24761 |goto Ragefire Chasm/1 51.80,31.70
step
talk Inconspicous Crate##61790
Tell it: _"It's Safe to come out now."_
Rescue the fourth Kor'kron Scout |q 30984/1 |count 4 |goto Ragefire Chasm/1 52.00,26.20
only if not completedq(30984)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	51.10,37.60	50.00,47.60	40.20,46.40
path	41.20,57.00
Follow the path |goto Ragefire Chasm/1 41.20,57.00
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slagmaw##61463
Slagmaw will randomly _Lava Spit_ at a player's location. Avoid standing within 3 yards of other players
|tip Slagmaw will periodically Submerge, reappearing at a random location.
_HEALER:_ |grouprole HEALER
|tip Be prepared to heal group members who are hit by Lava Spit, especially following Submerge |grouprole HEALER
Defeat Slagmaw |scenariogoal 24763
step
clicknpc Kor'kron Scout##61680
Rescue the last Kor'kron Scout |q 30984/1 |count 5 |goto Ragefire Chasm/1 42.80,66.50
only if not completedq(30984)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	39.50,68.10	32.40,68.30	31.30,74.00
Follow the path |goto Ragefire Chasm/1 31.30,74.00
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lava Guard Gordoth##61528 |n |only if default
kill Lava Guard Gordoth##61528 |q 30983/2 |only if haveq(30983)
Gordoth will periodically cast _Seismic Slam_, dealing damage to all players within 25 yards and knocking them back
|tip Gordoth will target random players with Ground Rupture, dealing damage and knocking them back
|tip At 30%, Gordoth will Enrag_. Save DPS cooldowns and finish him off quickly
_HEALER:_ |grouprole HEALER
|tip Keep the party as close to full health as possible. Knockback may interrupt your cast |grouprole HEALER
Defeat Lava Guard Gordoth |scenariogoal 1/34404 |goto Ragefire Chasm/1 33.70,81.40
step
label "corruptinsig"
_As you go through this Dungeon:_
kill Corrupted Houndmaster##61666+, Corrupted Flamecaller##61705+, Dark Shaman Acolyte##61672+, Corrupted Reaver##61678+
Collect 5 Corrupted Insignias |q 30969/1
only if haveq(30969) and not completedq(30969)
step
talk Invoker Xorenth##61716
turnin A New Enemy##30969 |goto Ragefire Chasm/1 33.50,80.60
turnin The Dark Shaman##30983 |goto Ragefire Chasm/1 33.50,80.60
only if not completedq(30969) and not completedq(30983)
step
talk Commander Bagran##61724
turnin No Orc Left Behind##30984 |goto Ragefire Chasm/1 31.70,76.50
only if not completedq(30984)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Razorfen Downs",{
description="This guide will walk you through completing the Razorfen Downs dungeon. This dungeon is located in Thousand Needles on the continent of Kalimdor and is the capital of the quilboars. This dungeon ranges from level 15 to 30.",
mapid=300,
achieveid={636},
patch='30008',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Barrens, RFD"},
},[[
step
label "start"
Press _I_ and queue for Razorfen Downs or enter the dungeon with your group |goto Razorfen Downs/1 23.80,18.80 < 100 |c
step
talk Koristrasza##74367
accept Blackthorn's Lieutenants##33513 |goto Razorfen Downs/1 28.20,24.30
accept The Ritual##33514 |goto Razorfen Downs/1 28.20,24.30
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	29.30,18.50	33.30,18.70	35.80,22.00
path	38.80,23.10	41.80,18.20	45.20,19.40
path	44.10,25.50	42.80,29.40	47.10,33.50
path	50.90,33.30	54.20,28.30	56.60,30.30
Follow the path |goto Razorfen Downs/1 56.60,30.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Clear this room then click the Gong
kill Aarux##74412 |goto Razorfen Downs/1 58.90,33.70
|tip Aarux will use Web Strand, linking himself to a party member with sticky webbing. If he pulls the player close enough, he will use Plagued Bite. Run away from him
|tip Plagued Bite deals heavy nature damage to the target over 10 seconds
|tip Burning Pustule will deal nature damage to those close to Aarux
kill Aarux##74412 |q 33513/3 |goto Razorfen Downs/1 58.90,33.70 |only if haveq(33513)
Defeat Aarux |scenariogoal 24954 |goto Razorfen Downs/1 58.90,33.70
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	60.50,37.30	63.90,41.70	67.90,40.90
path	72.20,37.50	76.90,33.80	82.10,36.70
Follow the path |goto Razorfen Downs/1 82.10,36.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mordresh Fire Eye##74347
|tip Mordresh will use Lava Burst on the tank, dealing substantial fire damage. Interrupt this
|tip Periodically, he will Summon Blazing Servitor. These need to be killed quickly so no more than 1 is up at a time
|tip Servitors will use Inferno, spewing blobs of fire at random locations. Stay out of the impact points
|tip If more than one servitor is active at a time they will use Fiery Link, connecting themselves together with a line of fire that deals massive damage to anyone touched by it
kill Mordresh Fire Eye##74347 |q 33513/2 |goto Razorfen Downs/1 85.20,46.40 |only if haveq(33513)
Defeat Mordresh Fire Eye |scenariogoal 24955 |goto Razorfen Downs/1 85.20,46.40
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	77.90,42.20	73.00,44.90	68.80,50.50
path	62.50,50.30	56.00,46.10	51.60,45.10
Follow the path |goto Razorfen Downs/1 51.60,45.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Mushlump##74435 |goto Razorfen Downs/1 41.90,43.40
|tip Mushlump will use Smack Down on the tank, dealing increased physical damage over 3 seconds
|tip Tummy Ache will deal heavy nature damage to anyone standing in a cone in front of him
|tip Clouds of Putrid Funk will afflict a disease on anyone standing in them. Avoid coming in contact with these clouds
kill 1 Mushlump##74435 |q 33513/1 |goto Razorfen Downs/1 41.90,43.40 |only if haveq (33513)
Defeat Mushlump |scenariogoal 1/24956 |goto Razorfen Downs/1 41.90,43.40
|tip He patrols the ravine
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	41.90,43.40	34.90,49.40	33.40,54.30
path	33.50,63.40	36.40,70.30
Follow the path |goto Razorfen Downs/1 36.40,70.30 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Koristrasza##74888
turnin Blackthorn's Lieutenants##33513 |goto Razorfen Downs/1 37.84,71.74
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	39.70,73.40	43.60,75.90	48.50,72.00
path	52.00,64.40	53.00,57.30	49.30,51.70
path	42.20,48.70	38.70,50.20	36.70,54.60
path	37.70,64.50	41.00,69.40	45.90,70.00
path	49.20,64.20	49.50,56.90	40.90,53.90
path	40.10,62.10
Follow the path |goto Razorfen Downs/1 40.10,62.10 < 10
|tip Koristrasza will lay patches of healing energy on the ground
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Death Speaker Blackthorn##74875 |goto Razorfen Downs/1 44.70,59.70
|tip Summon Skeletons will animate 3 skeletons to assist Blackthorn
|tip These skeletons will use Disrupting Dash, charging at someone and interrupting spellcasting; and Shield Smash, which cleaves to anyone near the target
|tip Shockwave will deal massive damage to anyone standing in a narrow cone in front of Blackthorn. Avoid this
|tip Searing Shadows will place a DoT on the tank, dealing shadow damage over 15 seconds. Interrupt or dispel this
|tip Be sure to interrupt Shadowmend to prevent Blackthorn from healing his skeletons
Defeat Death Speaker Blackthorn |scenariogoal 2/24957 |goto Razorfen Downs/1 44.70,59.70
step
kill Amnennar the Coldbringer##7358 |goto Razorfen Downs/1 44.60,59.40
|tip Frozen Bomb appears as a patch of frost on the ground. Anyone standing within will suffer frost damage
|tip Throughout the fight, Koristrasza will place green patches of Redeemed Soil
|tip When you are afflicted with Soul Leech, run into a patch of Redeemed Soil to remove the debuff and stun Amnennar for 6 seconds
kill Amnennar the Coldbringer##7358 |q 33514/1 |goto Razorfen Downs/1 44.60,59.40 |only if haveq(33514)
Defeat Amnennar the Coldbringer |scenariogoal 3/24977 |goto Razorfen Downs/1 45.00,58.60
step
talk Koristrasza##74888
turnin The Ritual##33514 |goto Razorfen Downs/1 44.73,59.21
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Razorfen Kraul",{
description="This guide will walk you through completing the Razorfen Kraul dungeon. This dungeon is located in the Southern Barrens on the continent of Kalimdor and is the ancestral home of the quilboars. This dungeon ranges from level 10 to 30.",
mapid=301,
achieveid={635},
patch='30303',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Barrens, RFK"},
},[[
step
label "start"
Press _I_ and queue for Razorfen Kraul or enter the dungeon with your group |goto Razorfen Kraul/1 70.00,83.00 |c
step
talk Auld Stonespire##44402
accept Going, Going, Guano!##26901 |goto Razorfen Kraul 68.30,83.00
accept Agamaggan##26906 |goto Razorfen Kraul 68.30,83.00
accept Take Them Down!##26907 |goto Razorfen Kraul 68.30,83.00
only if not completedq(26901) and not completedq(26906) and not completedq(26907)
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	62.70,80.10	62.20,75.90	62.10,72.10
path	68.40,69.60	72.80,67.30	78.00,65.80
path	81.10,59.50	84.90,49.40	80.90,44.30
path	79.50,40.20	75.60,39.60	72.20,31.80
path	79.00,35.60	82.50,41.40
Follow the path  |goto Razorfen Kraul/1 82.50,41.40 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Roogug##74948 |goto Razorfen Kraul/1 87.20,41.60
|tip When below 75% health, Roogug will occasionally use Bloodlust. This is a stacking enrage effect
|tip Woven Elements will create a vortex of random elemental effects that deal damage
|tip Crystalfire Discharge creates a totem that shoots energy at random players, knocking them back and dealing damage
|tip Solarshard Beam will create a bright pillar of light, silencing anyone within. Move out of this
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Woven Elements |grouprole TANK or DAMAGE
kill 1 Roogug##74948 |q 26907/3 |goto Razorfen Kraul/1 87.20,41.60 |only if haveq(26907)
Defeat Roogug |scenariogoal 24979 |goto Razorfen Kraul/1 87.20,41.60
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	83.40,40.90	79.20,35.50	72.00,31.30
path	71.60,39.10	74.70,43.40	77.50,45.40
Follow the path |goto Razorfen Kraul/1 77.50,45.40 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Hunter Bonetusk##75001 |goto Razorfen Kraul/1 81.90,50.50
|tip At 50% health, Bonetusk will call a Stampede of boars. Avoid the boars to prevent taking damage
|tip Dodge the incoming arrows from Volley
_TANK:_ |grouprole TANK
|tip Be prepared for extra incoming damage during Barrage. Bonetusk will fire multiple arrows very rapidly for a short time |grouprole TANK
kill 1 Hunter Bonetusk##75001 |q 26907/1 |goto Razorfen Kraul/1 81.90,50.50 |only if haveq(26907)
Defeat Hunter Bonetusk |scenariogoal 24978 |goto Razorfen Kraul/1 81.90,50.50
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	74.40,42.70	70.30,36.80	63.10,33.50
path	60.60,27.80
Follow the path |goto Razorfen Kraul/1 60.60,27.80 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Warlord Ramtusk##74462 |goto Razorfen Kraul/1 57.00,30.10
|tip Spirit Link Totem will periodically redistribute the health of all targets inside the field
|tip Ramtusk will use Spirit Axe, throwing his axe to a location and dealing arcane damage to all nearby enemies
|tip Jargba will use Spirit Bolt, causing a orb of energy to randomly move towards a party member
|tip Aggem will occasionally Arcane Shot a random player, dealy heavy arcane damage
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Jargba's Spirit Bolt |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Pay close attention to _rcane Shot targets, they will take significant damage |grouprole HEALER
kill 1 Warlord Ramtusk##74462 |q 26907/2 |goto Razorfen Kraul/1 57.00,30.10 |only if haveq(26907)
Defeat Warlord Ramtusk |scenariogoal 24160 |goto Razorfen Kraul/1 57.00,30.10
step
stickystart "Guano"
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	57.70,37.20	58.80,41.10	55.60,44.50
path	50.60,45.60	47.50,47.60	42.00,54.00
path	32.10,49.00	24.20,48.10
Follow the path |goto Razorfen Kraul/1 24.20,48.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	21.40,47.50	20.10,51.60	17.60,54.70
path	11.50,54.30
Follow the path |goto Razorfen Kraul/1 11.50,54.30 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Groyat, the Blind Hunter##75247 |goto Razorfen Kraul/1 7.50,53.80
|tip Sonic Field will create areas on the ground which deal physical damage to those who stand in them. After a few seconds, anyone nearby will take damage and be stunned for 4 seconds
|tip Groyat will bite his current target occasionally, inflicting them with Drain Life
|tip Dispel Drain Life whenever possible
Defeat Groyat, the Blind Hunter |scenariogoal 24980 |goto Razorfen Kraul/1 7.50,53.80
step
label "Guano"
kill Kraul Bat##4538+, Cave Bat##75467+
Collect Kraul Guano |q 26901/1
only if not completedq(26901)
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	7.30,49.10	7.60,46.60	10.70,44.00
path	14.00,36.70	18.70,39.30	18.70,39.30
Follow the path |goto Razorfen Kraul/1 18.70,39.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Spirit of Agamaggan##44415
turnin Agamaggan##26906 |goto Razorfen Kraul/1 19.90,35.90
accept Agamaggan's Charge##26905 |goto Razorfen Kraul/1 19.90,35.90
only if not completedq(26905)
step
kill 1 Charlga Razorflank##4421 |goto Razorfen Kraul/1 23.70,31.40
|tip Venomous Discharge Crystal will lob poison poison at random players. Avoid the areas targeted
|tip Tidal Tempest Crystal will pull party members towards its center, dealing frost damage. Run away
|tip Molten Inferno Crystal will create lines of fire around the room. Avoid standing in these, as they do high fire damage
|tip Dispel players afflicted by Elemental Binding as often as possible. This debuff will inflict random elemental damage over 6 seconds and root the player
Collect Razorflank's Heart |q 26905/1 |goto Razorfen Kraul/1 23.70,31.40 |only if haveq(26905)
Defeat Charlga Razorflank |scenariostage 1 |goto Razorfen Kraul/1 23.70,31.40
step
talk Spirit of Agamaggan##44415
turnin Agamaggan's Charge##26905 |goto Razorfen Kraul/1 23.50,30.70
only if not completedq(26805)
step
talk Auld Stonespire##44402
turnin Going, Going, Guano!##26901 |goto Razorfen Kraul/1 23.20,31.60
turnin Take Them Down!##26907 |goto Razorfen Kraul/1 23.20,31.60
only if not completedq(26901) or not completedq(26907)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Scarlet Halls",{
description="This guide will walk you through completing the Scarlet Halls dungeon. This dungeon is located in the Tirisfal Glades on the continent of Eastern Kingdoms and is home to the Scarlet Crusade. This dungeon ranges from level 10 to 30.",
mapid=431,
achieveid={7413},
patch='50004',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SM, SH, Tirisfal, Glades"},
},[[
step
stickystart "RankFile"
Press _I_ and queue for Scarlet Halls or enter the dungeon with your group |goto Scarlet Halls/1 34.40,89.80 |c
step
talk Hooded Crusader##64738 |only if not completedq(31490) and not completedq(31493) and not heroic_dung()
talk Hooded Crusader##64738 |only if not completedq(31495) and not completedq(31497) and heroic_dung()
accept Rank and File##31490 |goto Scarlet Halls/1 31.90,84.40 |only if not completedq(31490) and not heroic_dung()
accept Just for Safekeeping, Of Course##31493 |goto Scarlet Halls/1 31.90,84.40 |only if not completedq(31493) and not heroic_dung()
accept Rank and File##31495 |goto Scarlet Halls/1 31.90,84.40 |only if not completedq(31495) and heroic_dung()
accept Just for Safekeeping, Of Course##31497 |goto Scarlet Halls/1 31.90,84.40 |only if not completedq(31497) and heroic_dung()
step
map Scarlet Halls/1
path follow loose; loop off; ants curved
path	37.70,84.80	44.10,85.00	44.20,80.40
path	48.10,80.30
Follow the path |goto Scarlet Halls/1 48.10,80.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
clicknpc Reinforced Archery Target##59163
|tip In order to cross the training ground you must click on an archery target and use it as a shield. Avoid the fire arrows that leave patches of flame on the ground.
kill 1 Commander Lindon##59191 |goto Scarlet Halls/1 49.50,51.40
Defeat Commander Lindon and proceed through the gate |goto Scarlet Halls/1 49.80,50.30 < 5
confirm
step
map Scarlet Halls/1
path follow loose; loop off; ants curved
path	49.80,45.30	49.80,36.50	53.80,36.50
Follow the path |goto Scarlet Halls/1 53.80,36.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Houndmaster Braun##59303
|tip Houndmaster Braun will use Piercing Throw. This will target a player and deal damage to every player in between Braun and his target.
|tip Death Blossom is an AoE whirlwind, spread out to reduce its effectiveness.
|tip Both of these abilities will cause Bloody Mess. This is DoT can stack and become deadly.
|tip At 90%, 80%, 70%, and 60% Braun will summon an Obedient Hound to his side. You can either kill them or just have the tank hold onto them.
|tip If the hounds remain alive at 50% Braun will begin to lose control of them and the will aid you in battle. When this happens, Braun will enter a Bloody Rage, gaining 25% increased damage and 50% increased attack speed.
Defeat Houndmaster Braun |scenariogoal 19266 |goto Scarlet Halls/1 54.70,29.50
step
map Scarlet Halls/2
path follow loose; loop off; ants curved
path	47.90,88.10	52.40,88.20
path	52.20,80.00	57.30,80.00	57.10,71.70
path	61.80,71.50	61.70,54.50
You will need to avoid cannon fire from the cannoneers
Allow the remaining dogs to kill the door guards and proceed along the path. |goto Scarlet Halls/2 61.70,54.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Armsmaster Harlan##58632 |goto Scarlet Halls/2 61.80,45.20
|tip Dragon's Reach is a cleave ability, avoid being in front of this boss.
|tip Harlan will periodically summon two Scarlet Defenders. You can either kill these adds or you can wait for them to be caught in Harlan's Blades of Light ability.
|tip He will use Heroic Leap to the center of the pit and begin casting Blades of Light. This whirlwind quickly moves around the entire area and does massive damage to anybody caught within it. Jump between the different levels of this area to avoid this ability easily.
_HEALER:_ |grouprole HEALER
|tip Avoid standing near the door. The adds will spawn and immediately begin attacking you |grouprole HEALER
Defeat Armsmaster Harlan |scenariogoal 19268 |goto Scarlet Halls/2 61.80,45.20
confirm
step
map Scarlet Halls/2
path follow loose; loop off; ants curved
path	61.70,57.80	56.20,57.70	48.60,57.70
path	48.60,50.50	39.20,50.60	39.20,36.10
path	39.20,25.40
Follow the path |goto Scarlet Halls/2 39.20,25.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Flameweaver Koegler##59150 |goto Scarlet Halls/2 39.30,15.90
|tip Koegler will try to light the book cases around the room on fire with Book Burner. You can avoid this mechanic by staying on the red carpet circle inside this room.
|tip He will move to the center of the room and begin using Greater Dragon's Breath. Watch where he is facing and move around the room clockwise to avoid being hit.
|tip Quickened Mind will cause Koegler's next three spells to be cast nearly instantly. This can be dispelled off of him.
collect Codex of the Crusade##87267 |q 31493/1 |only if haveq(31493) and not heroic_dung()
collect Codex of the Crusade##87267 |q 31497/1 |only if haveq(31497) and heroic_dung()
Defeat Flameweaver Koegler |scenariogoal 1/34441 |goto Scarlet Halls/2 39.30,15.90
step
label "RankFile"
kill Vigilant Watchman##58898+, Master Archer##59175+, Scarlet Evangelist##58685+, Scarlet Myrmidon##58683+, Scarlet Cannoneer##59293+, Scarlet Scourge Hewer##58684+, Scarlet Defender##58676+, Scarlet Evoker##58756+, Scarlet Defender##58998+, Scarlet Treasurer##59241+, Scarlet Hall Guardian##59240+, Scarlet Pupil##59373+, Scarlet Scholar##59372+
Kill 50 Scarlet Crusaders. |q 31490/1 |only if not completedq(31490) and not heroic_dung()
Kill 50 Scarlet Crusaders. |q 31495/1 |only if not completedq(31495) and heroic_dung()
only if haveq(31490) or haveq(31495)
step
talk Hooded Crusader##64738 |only if not completedq(31490) and not completedq(31493) and not heroic_dung()
talk Hooded Crusader##64738 |only if not completedq(31495) and not completedq(31497) and heroic_dung()
turnin Rank and File##31490 |goto Scarlet Halls/2 39.30,15.60 |only if not completedq(31490) and not heroic_dung()
turnin Just for Safekeeping, Of Course##31493 |goto Scarlet Halls/2 39.30,15.60 |only if not completedq(31493) and not heroic_dung()
turnin Rank and File##31495 |goto Scarlet Halls/2 39.30,15.60 |only if not completedq(31495) and heroic_dung()
turnin Just for Safekeeping, Of Course##31497 |goto Scarlet Halls/2 39.30,15.60 |only if not completedq(31497) and heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Scarlet Monastery",{
description="This guide will walk you through completing the Scarlet Monastery dungeon. This dungeon is located in the Tirisfal Glades on the continent of Eastern Kingdoms and is home to the Scarlet Crusade. This dungeon ranges from level 10 to 30.",
mapid=302,
achieveid={637},
patch='30002',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SM, Tirisfal, Glades"},
},[[
step
Press _I_ and queue for Scarlet Monastery or enter the dungeon with your group |goto Scarlet Monastery/2 74.00,45.80 |c
step
talk Hooded Crusader##64827 |only if not completedq(31513) and not heroic_dung()
talk Hooded Crusader##64827 |only if not completedq(31515) and heroic_dung()
accept Blades of the Anointed##31513 |goto Scarlet Monastery/1 72.70,47.00 |only if not completedq(31513) and not heroic_dung()
accept Blades of the Anointed##31515 |goto Scarlet Monastery/1 72.70,47.00 |only if not completedq(31515) and heroic_dung()
only if not completedq(31513) and not completedq(31515)
step
map Scarlet Monastery/1
path follow loose; loop off; ants curved
path	69.90,53.20	55.00,54.20	43.50,53.70
path	35.70,45.80
You can avoid most of the trash here. Destroy the corpse pile first
Follow the path |goto Scarlet Monastery/1 35.70,45.80 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Thalnos the Soulrender##59789
|tip Thalnos will Raise Fallen Crusader. This ability summons zombies that the tank needs to pick up. When the Fallen Crusaders hit you, they leave behind Mind Rot which is a DoT that can stack
|tip He also summons Spirit Gales often. These are puddles on the ground that should not be stepped in. This ability is interruptable
|tip Evict Soul is a debuff that Thalnos throws on a random party member. This DoT needs to be dispelled as quickly as possible
|tip He will also use Summon Empowering Spirit. This ability will summon an add that DPS should kill as quickly as they can. If this add reaches a Fallen Crusader's corpse, it will spawn an Empowered Zombie
|tip Empowered Zombies are large zombies which need to be tanked. They cannot be killed without great focus
Defeat Thalnos the Soulrender |scenariogoal 19270 |goto Scarlet Monastery/1 24.30,45.60
step
click Blade of the Anointed##214296 |only if not completedq(31513) and not heroic_dung()
click Blade of the Anointed##214296 |only if not completedq(31515) and heroic_dung()
Collect the Blade of the Anointed |q 31513/1 |goto Scarlet Monastery/1 20.60,45.90 |only if not completedq(31513) and not heroic_dung()
Collect the Blade of the Anointed |q 31515/1 |goto Scarlet Monastery/1 20.60,45.90 |only if not completedq(31515) and heroic_dung()
only if haveq(31513) or haveq(31515)
step
map Scarlet Monastery/1
path follow loose; loop off; ants curved
path	35.00,52.40	34.90,78.30	39.30,78.30
path	39.40,85.20	48.50,85.20	Scarlet Monastery/2 49.10,11.90
Follow the path |goto Scarlet Monastery/2 49.10,11.90 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Blade of the Anointed##64855 |only if not completedq(31514) and not heroic_dung()
talk Blade of the Anointed##64855 |only if not completedq(31516) and heroic_dung()
turnin Blades of the Anointed##31513 |goto Scarlet Monastery/2 49.10,24.50 |only if haveq(31513) and not heroic_dung()
turnin Blades of the Anointed##31515 |goto Scarlet Monastery/2 49.10,24.50 |only if haveq(31515) and heroic_dung()
accept Unto Dust Thou Shalt Return##31514 |goto Scarlet Monastery/2 49.10,24.50 |only if not completedq(31514) and not heroic_dung()
accept Unto Dust Thou Shalt Return##31516 |goto Scarlet Monastery/2 49.10,24.50 |only if not completedq(31516) and heroic_dung()
only if not completedq(31514) and not completedq(31516)
step
map Scarlet Monastery/2
path follow loose; loop off; ants curved
path	45.70,31.90	43.90,36.30	49.20,43.30
Follow the path |goto Scarlet Monastery/2 49.20,43.30
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Brother Korloff##59223
|tip Flying Kick will hit a random party member knocking them back, make sure they aren't knocked into any uncleared trash.
|tip Blazing Fists is a series of punches Korloff makes in front of him, have the tank take a step back and make sure all party members are behind Korloff.
|tip Firestorm Kick is whirlwind of flame, do not stand in it.
|tip Scorched Earth is a fire trail that Korloff leaves behind him, do not stand in it.
|tip Every 10%, Korloff wil gain a stack of Rising Flame. These increase his fire damage done by 10% per stack.
Defeat Brother Korloff |scenariogoal 19271 |goto Scarlet Monastery/2 49.00,52.40
step
Enter the cathedral here |goto Scarlet Monastery/2 49.10,57.10 < 5
confirm
step
kill 1 High Inquisitor Whitemane##3977, Commander Durand##60040
_Phase 1_
|tip Commander Durand will fight you alone.
|tip He uses Flash of Steel and Dashing Strike. Both of these abilities cause him to jump to party members quickly
_Phase 2_
|tip High Inquisitor Whitemane will cast Power Word: Shield, Smite and Heal. Make sure to interrupt Heal
|tip Whitemane will also try casting Mass Resurrection. DO NOT LET THIS CAST FINISH!! If this cast finishes, all corpses within 100 yards will resurrect and aggro
|tip After you weaken her she will cast Deep Sleep. This puts the entire party to sleep for 10 seconds, during this time she will resurrect Durand
_Phase 3_
|tip Kill Whitemane first, make sure to interrupt Heal
Use the Blades of the Anointed on High Inquisitor Whitemane's corpse |use Blades of the Anointed##87390 |q 31516/1 |only if haveq(31516)
Use the Blades of the Anointed on High Inquisitor Whitemane's corpse |use Blades of the Anointed##87388 |q 31514/1 |only if haveq(31514)
Defeat High Inquisitor Whitemane |scenariogoal 1/34443 |goto Scarlet Monastery/2 49.10,77.90
step
talk Hooded Crusader##64842 |only if not completedq(31514) and not heroic_dung()
talk Hooded Crusader##64842 |only if not completedq(31516) and heroic_dung()
turnin Unto Dust Thou Shalt Return##31514 |goto Scarlet Monastery/2 48.80,76.40 |only if haveq(31514) and not heroic_dung()
turnin Unto Dust Thou Shalt Return##31516 |goto Scarlet Monastery/2 48.80,76.40 |only if haveq(31516) and heroic_dung()
only if not completedq(31514) and not completedq(31516)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Scholomance",{
description="This guide will walk you through completing the Scholomance dungeon. This dungeon is located in the Western Plaguelands on the continent of Eastern Kingdoms and is the academy for Scourge necromancers. This dungeon ranges from level 15 to 30.",
mapid=476,
achieveid={645},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Western, Plaguelands, Scourge"},
},[[
step
Press _I_ and queue for Scholomance or enter the dungeon with your group |goto Scholomance/1 18.10,60.90 < 100 |c
step
talk Talking Skull##64562
accept The Four Tomes##31440 |goto Scholomance/1 27.00,58.80
accept An End to the Suffering##31447 |goto Scholomance/1 27.00,58.80
only if not completedq(31440) and not completedq(31447) and not heroic_dung()
step
If you immediately pull Instructor Chillheart, all trash aside from the 2 Risen Guards will despawn
Go through the gate and jump down |goto Scholomance/1 53.20,60.30 < 5
confirm
step
kill 1 Instructor Chillheart##58633 |goto Scholomance/1 65.50,60.60
_Phase 1:_
|tip Wrack Soul will deal damage to a party member and jump to a nearby party member when it expires. Spread out |only if heroic_dung()
|tip Touch of the Grave causes Chillheart's next 10 basic attacks to deal additional damage
|tip Frigid Grasp will summon ice at a player's feet, step out of this before it explodes
|tip Ice Wall will start at the back of the room and slowly creep toward the boss. If this touches any player, they will die instantly. This will act as the enrage timer of the fight
|tip Kill Chillheart's physical body and Phase 2 will start
_Phase 2:_
|tip The Anarchist Arcanist will float around creating Arcane Bombs. These explode on impact so avoid them
|tip Antonidas' Self Help Guide to Standing in Fire will cast Burn. This does a small AoE of fire damage around the book
|tip Wander's Colossal Book of Shadow Puppets will cast Shadow Bolt at the party
Defeat Instructor Chillheart |scenariogoal 19259 |goto Scholomance/1 65.50,60.60
step
click In the Shadow of the Light##214279
|tip You can find the tome near this area. It is usually sitting on one of the tables.
Destroy the tome "In the Shadow of the Light" |q 31440/1 |goto Scholomance/1 72.15,64.41 |only if not heroic_dung()
Destroy the tome "In the Shadow of the Light" |q 31442/1 |goto Scholomance/1 72.15,64.41 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
map Scholomance/1
path follow loose; loop off; ants curved
path	74.60,52.00	85.70,51.60	85.40,24.10
Follow the path |goto Scholomance/1 85.40,24.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Kel'Thuzad's Deep Knowledge##214278
|tip You can find the tome near this area. It is usually sitting in one of the stone alcoves.
Destroy Kel'Thuzad's Deep Knowledge |q 31440/2 |goto Scholomance/2 73.90,8.60 |only if not heroic_dung()
Destroy Kel'Thuzad's Deep Knowledge |q 31442/2 |goto Scholomance/2 73.90,8.60 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
kill 1 Jandice Barov##59184 |goto Scholomance/2 58.80,18.30
|tip Wondrous Rapidity is a large cone attack in front of Jandice, make sure nobody is in front of her.
|tip Gravity Flux will create a gravity distortion field on the ground. If you step into this ability you will be knocked back as well as damaged heavily |only if heroic_dung()
|tip At 66% and 33% Jandice will cast Phantasmal Images. She will clone herself throughout the room, destroy the clones until she returns to battle
|tip Destroying the wrong clone will deal arcane damage to all party members |only if heroic_dung()
|tip While the clones are alive they will cast Whirl of Illusion, this does AoE damage to everybody in the group every second.
Defeat Jandice Barov |scenariogoal 19260 |goto Scholomance/2 58.80,18.30
step
kill Boneweaver##59193+, Rattlegore##59153 |goto Scholomance/2 48.60,26.70
|tip Clearing all of the Boneweavers in the room will begin the Rattlegore encounter.
|tip With each successful attack Rattlegore will gain a stack of Rusting. This increases his attack damage but lowers his attack and movement speeds. If the tank is getting hit too hard, kite Rattlegore around the room
|tip Bone Spike will target a random party member and do massive damage to them. This can be prevented if every party member keeps Bone Armor active
|tip Bone Armor is granted by clicking on the Bone Piles around the room
|tip Periodically a section of the room will be engulfed in Soulflame. Avoid the fire and be wary because it grows over time
Defeat Rattlegore |scenariogoal 19261 |goto Scholomance/2 48.60,26.70
step
map Scholomance/2
path follow loose; loop off; ants curved
path	43.20,26.50	36.40,26.80	36.70,37.40
Follow the path |goto Scholomance/2 36.70,37.40 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Forbidden Rites and other Rituals Necromantic##214280
|tip You can find the tome near this area. It is usually found on one of the tables or in a stone alcove.
Destroy Forbidden Rites and other Rituals Necromantic |q 31440/3 |goto Scholomance/2 36.00,47.10 |only if not heroic_dung()
Destroy Forbidden Rites and other Rituals Necromantic |q 31442/3 |goto Scholomance/2 36.00,47.10 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
map Scholomance/2
path follow loose; loop off; ants curved
path	39.60,47.50	46.40,47.20
Follow the path |goto Scholomance/2 46.40,47.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lilian Voss##58722 |goto Scholomance/2 51.40,47.10
_Phase 1:_
|tip Lilian will Shadow Shiv a random player after jumping onto them. Run away from allies
|tip Death's Grasp will pull every party member to Lilian and will be followed by Dark Blaze. Dark Blaze causes every player to start leaving a trail of fire behind them. Kite fire away from allies
_Phase 2 (begins at 60%):_
|tip She will periodically cast Blazing Soul which does fire damage to all players.
|tip For every melee attack Lilian lands she will unleash another Blazing Soul. Kite her around
|tip If you are targetedy by Fixate Anger, run away
_Phase 3:_
|tip Be watchful of who Lilian's Soul is Fixating on, this is the highest source of damage during the fight
|tip You will continue to be pulled in by Death's Grasp, keep an area clear of Dark Blaze
Defeat Lilian Voss |scenariogoal 19262 |goto Scholomance/2 51.40,47.10
step
map Scholomance/2
path follow loose; loop off; ants curved
path	54.30,55.60	54.20,67.10
Follow the path |goto Scholomance/2 54.20,67.10 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click The Dark Grimoire##214277
|tip You can find the tome near this area. It is usually found on one of the tables.
Destroy The Dark Grimoire |q 31440/4 |goto Scholomance/2 47.10,73.10 |only if not heroic_dung()
Destroy The Dark Grimoire |q 31442/4 |goto Scholomance/2 47.10,73.10 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
map Scholomance/2
path follow loose; loop off; ants curved
path	47.90,83.40	48.00,88.90	57.50,89.10
path	Scholomance/3 49.90,20.80
Follow the path |goto Scholomance/3 49.90,20.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Darkmaster Gandling##59080 |goto Scholomance/4 49.90,38.50
|tip Immolate will be used on a random party member
|tip Darkmaster Gandling will cast Rise!. This summons many Failed Students that need to be killed. During this cast Darkmaster Gandling takes reduced damage
|tip Periodically a random party member will be teleported to one of Gandling's study rooms for a Harsh Lesson
|tip This party member must kill the Expired Test Subjects and make their way back to the bosses room. If the healer gets trapped in one of these rooms, the Fresh Test Subjects around the room will serve as useful bombs. Dispel the _Explosive Pain_ off of them to deal AoE damage
kill 1 Darkmaster Gandling##59080 |q 31447/1 |goto Scholomance/4 49.90,38.50 |only if haveq(31447)
kill 1 Darkmaster Gandling##59080 |q 31448/1 |goto Scholomance/4 49.90,38.50 |only if haveq(31448)
Defeat Darkmaster Gandling |scenariostage 1 |goto Scholomance/4 49.90,38.50
step
talk Talking Skull##64562
turnin The Four Tomes##31440 |goto Scholomance/3 49.20,21.20
only if not completedq(31440) and not heroic_dung()
step
talk Talking Skull##64562
turnin An End to the Suffering##31447 |goto Scholomance/3 49.20,21.20
only if not completedq(31447) and not heroic_dung()
step
talk Spirit of Lord Alexei Barov##64563
turnin The Four Times##31442 |goto Scholomance/3 49.20,21.20
only if not completedq(31442) and heroic_dung()
step
talk Spirit of Lord Alexei Barov##64563
turnin An End to the Suffering##31448 |goto Scholomance/3 49.20,21.20
only if not completedq(31448) and heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Shadowfang Keep",{
description="This guide will walk you through completing the Shadowfang Keep dungeon. This dungeon is located in the Silverpine Forest on the continent of Eastern Kingdoms and is home to Vincent Godrey and his renegades. This dungeon ranges from level 10 to 30.",
mapid=310,
achieveid={631},
patch='30200',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SFK, Silverpine, Forest"},
},[[
step
label "start"
Press _I_ and queue for Shadowfang Keep or enter the dungeon with your group |goto Shadowfang Keep/1 69.50,61.00 |c
step
talk Deathstalker Commander Belmont##47293
accept This Land is Our Land##27974 |goto Shadowfang Keep/1 64.40,58.00
only if not completedq(27974)
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	70.00,58.10	72.80,50.50	61.10,44.40
path	60.70,54.90	58.50,63.80
Follow the path |goto Shadowfang Keep/1 58.50,63.80 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Baron Ashbury##46962 |goto Shadowfang Keep/1 67.80,72.90
|tip Baron Ashbury will periodically throw everyone in the air using _Asphyxiate_, dropping player health to 1 over 6 seconds
|tip Following Asphyxiate, he will use Stay of Execution. This will heal all party members to 50% |only if not heroic_dung()
|tip Following Asphyxiate, he will use Stay of Execution. This will heal all party members for 10% of their health and himself for 5% health every second until interrupted |only if heroic_dung()
|tip Ashbury will channel Pain and Suffering on a random player, dealing increasing shadow damage over 6 seconds
|tip Wracking Pain will deal shadow damage and increase shadow damage taken by 20% for each stack |only if heroic_dung()
|tip At 25% health, Ashbury will use Calamity. This will deal damage every second to the group and increase in damage until he or the party dies. Soft enrage |only if heroic_dung()
kill 1 Baron Ashbury##46962 |q 27974/1 |goto Shadowfang Keep/1 67.80,72.90 |only if haveq(27974)
Defeat Baron Ashbury |scenariogoal 24774 |goto Shadowfang Keep/1 67.80,72.90
step
talk Deathstalker Commander Belmont##47293
turnin This Land is Our Land##27974 |goto Shadowfang Keep/1 66.40,72.10
accept Plague...Plague Everywhere!##27988 |goto Shadowfang Keep/1 66.40,72.10
only if not completedq(27988)
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	60.20,69.90	61.30,65.30	58.50,64.60
path	56.00,66.50	49.30,62.50	38.30,39.00
Follow the path |goto Shadowfang Keep/1 38.30,39.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/2
path follow loose; loop off; ants curved
path	61.30,11.90	54.10,14.90	45.20,35.90
path	38.80,54.70
Follow the path |goto Shadowfang Keep/2 38.80,54.70 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Baron Silverlaine##3887 |goto Shadowfang Keep/2 31.20,73.30
|tip Baron Silverlaine will cast Veil of Shadow, which reduces healing taken by 50%. Decurse this as often as possible
|tip Cursed Veil will deal shadow damage to the entire group and reduce healing by 75% for 8 seconds. Dispel this whenever possible |only if heroic_dung()
|tip At 70% and 35% he will cast Summon Worgen Spirits |only if not heroic_dung()
|tip At 90%, 60% and 30% he will cast Summon Worgen Spirits |only if heroic_dung()
|tip Odo the Blindwatcher just deals damage
|tip Razorclaw the Butcher stuns targets furthest away from them. He also drains health based on his damage done
|tip Rethilgore drains health from enemy targets, stunning them. Heals for twice the amount that he drains
|tip Wolf Master Nandos summons Lupine Spirits with low health
kill 1 Baron Silverlaine##3887 |q 27988/1 |goto Shadowfang Keep/2 31.20,73.30 |only if haveq(27988)
Defeat Baron Silverlaine |scenariogoal 24779 |goto Shadowfang Keep/2 31.20,73.30
confirm
step
map Shadowfang Keep/2
path follow loose; loop off; ants curved
path	33.10,82.40	31.00,87.90	26.70,90.20
path	Shadowfang Keep/1 14.40,89.20
Run up the stairs  |goto Shadowfang Keep/1 14.40,89.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	19.90,92.60	25.60,72.50	26.60,70.10
Follow the path |goto Shadowfang Keep/1 26.60,70.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Commander Springvale##4278 |goto Shadowfang Keep 28.40,58.60
|tip Commander Springvalve will use Malefic Strike to gain Unholy Power for his abilities
|tip At 3 charges of Unholy Power, he will use Shield of the Perfidious. This deals shadow damage 6 times over 3 seconds in a 25 degree frontal cone |only if not heroic_dung()
|tip At 3 charges of Unholy Power, he will use Shield of the Perfidious. This deals shadow damage 6 times over 3 seconds in a 150 degree frontal cone |only if heroic_dung()
|tip Occasionally he will Desecrate an area under a player, slowing their movement speed and dealing damage. Move out of this quickly
|tip At 3 Unholy Power, Springvalve can use Word of Shame; this places a dot on a random player dealing 5% of max health every 3 seconds until the encounter ends |only if heroic_dung()
|tip Periodically, Springvalve will summon adds. Casters should stay away from Guardsman to prevent being interrupted |only if heroic_dung()
_TANK/DAMAGE:_ |only if heroic_dung() |grouprole TANK or DAMAGE
|tip Interrupt Unholy Empowerment from Guardman and Officers and Forsaken Ability from Officers |only if heroic_dung() |grouprole TANK or DAMAGE
_HEALER:_ |only if heroic_dung() |grouprole HEALER
|tip Guardsman will use Mortal Strike on the tank. Prepare for this reduction in healing |only if heroic_dung() |grouprole HEALER
kill 1 Commander Springvale##4278 |q 27988/2 |goto Shadowfang Keep 28.40,58.60 |only if haveq(27988)
Defeat Commander Springvale |scenariogoal 24780 |goto Shadowfang Keep 28.40,58.60
confirm
step
talk Deathstalker Commander Belmont##47293
turnin Plague...Plague Everywhere!##27988 |goto Shadowfang Keep/1 27.90,60.70
accept Orders Are For the Living##27996 |goto Shadowfang Keep/1 27.90,60.70
only if not completedq(27996)
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	32.90,70.80	36.00,67.70	Shadowfang Keep/7 25.00,75.20
Go down the steps |goto Shadowfang Keep/7 25.00,75.20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/7
path follow loose; loop off; ants curved
path	28.60,74.60	39.60,79.10
Follow the path |goto Shadowfang Keep/7 39.60,79.10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/7
path follow loose; loop off; ants curved
path	49.60,86.50	51.40,83.50	54.00,88.10
path	54.20,94.20	56.30,95.30	58.30,85.90
path	66.60,89.20	72.80,65.00	69.80,58.80
path	45.40,46.50	41.80,46.50	42.30,41.30
path	45.40,41.00	49.30,22.10	46.40,21.20
path	44.60,30.70
Follow the path |goto Shadowfang Keep/7 44.60,30.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/3
path follow loose; loop off; ants curved
path	52.20,66.00	44.60,61.10	49.20,45.20
path	54.00,26.80	58.00,11.70	66.40,16.40
path	64.90,36.10	53.40,81.40	45.50,79.90
path	43.60,89.70	51.60,91.10	50.50,79.30
path	43.20,85.60	50.10,92.70	Shadowfang Keep/4 49.30,75.20
Follow this path |goto Shadowfang Keep/4 49.30,75.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Walden##46963 |goto Shadowfang Keep/4 54.20,54.30
|tip Lord Walden will use Ice Shards. These explode on the ground. Stay out of the impact areas
|tip He will also Conjure Poisonous Mixture. Stay away from the poison on the ground
|tip Walden will use Conjure Mystery Toxin. If the result is Toxic Coagulant, keep moving to keep your stacks below 3 |only if heroic_dung()
|tip If the conjured toxin is Toxic Catalyst, use any DPS cooldowns you have, as you will have 100% critical strike |only if heroic_dung()
_HEALER:_ |only if heroic_dung() |grouprole HEALER
|tip Pay special attention to party members afflicted with Toxic Coagulent and Toxic Catalyst |only if heroic_dung() |grouprole HEALER
kill 1 Lord Walden##46963 |q 27996/1 |goto Shadowfang Keep/4 54.20,54.30 |only if haveq(27996)
Defeat Lord Walden |scenariogoal 24775 |goto Shadowfang Keep/4 54.20,54.30
step
talk Deathstalker Commander Belmont##47293
turnin Orders Are For the Living##27996 |goto Shadowfang Keep/4 60.20,41.20
accept Sweet, Merciless Revenge##27998 |goto Shadowfang Keep/4 60.20,41.20
only if not completedq(27998)
step
map Shadowfang Keep/4
path follow loose; loop off; ants curved
path	60.90,29.10	49.10,26.80	38.70,34.20
path	34.40,51.20	Shadowfang Keep/5 39.00,70.60	Shadowfang Keep/5 48.80,75.60
Go up the steps |goto Shadowfang Keep/5 48.80,75.60
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/5
path follow loose; loop off; ants curved
path	50.90,68.60	62.30,63.80	64.00,49.50
path	59.50,35.20	59.80,28.40	49.30,26.00
path	40.20,33.40	34.80,47.30	36.30,64.20
path	Shadowfang Keep/6 48.90,90.60
Follow the path and go up the steps |goto Shadowfang Keep/6 48.90,90.60
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/6
path follow loose; loop off; ants curved
path	50.90,82.60	60.90,44.10
Follow the path |goto Shadowfang Keep/6 60.90,44.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Godfrey##46964 |goto Shadowfang Keep/6 61.60,23.80
|tip Lord Godfrey will shoot Cursed Bullets at a random player; interrupt this quickly
|tip Godfrey will apply Mortal Wound to his current target, reducing healing by 5% per stack. Stacks 10 times
|tip Occasionally, he will Summon Bloodthirsty Ghouls where the 6 bullets land. Kill these ghouls when they spawn
|tip When Godfrey uses Pistol Barrage, he will deal massive damage in a 60 degree frontal cone. Do not stand in front of him during this |only if heroic_dung()
kill 1 Lord Godfrey##46964 |q 27998/1 |goto Shadowfang Keep/6 61.60,23.80 |only if haveq(27998)
Defeat Lord Godfrey |scenariostage 1 |goto Shadowfang Keep/6 61.60,23.80
step
talk Deathstalker Commander Belmont##47293
turnin Sweet, Merciless Revenge##27998 |goto Shadowfang Keep/6 58.70,53.20
only if not completedq(27998)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\The Stormwind Stockade",{
description="This guide will walk you through completing The Stormwind Stockade dungeon. This dungeon is located in Stormwind City on the continent of Eastern Kingdoms and is a guarded prison containing prominent Defias criminals. This dungeon ranges from level 10 to 30.",
mapid=225,
achieveid={633},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Hogger"},
},[[
step
label "start"
Press _I_ and queue for The Stockade or enter the dungeon with your group |goto The Stockade/1 50.10,68.20 |c
step
map The Stockade/1
path follow loose; loop off; ants curved
path	50.00,45.50	50.00,29.80
Follow the path |goto The Stockade/1 50.00,29.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Randolph Moloch##46383 |goto The Stockade/1 50.80,19.20
|tip Randolph will start Wildly Stabbing occasionally, attacking significanly faster but at a reduced chance to hit
|tip He will use Sweep, attacking both the tank and the closest additional party member
|tip At around 65% and 35% health, Randolph will Vanish, reappearing behind a random player and attacking them
Defeat Randolph Moloch |scenariogoal 24762 |goto The Stockade/1 50.80,19.20
step
map The Stockade/1
path follow loose; loop off; ants curved
path	49.70,36.30	60.60,36.40	67.20,38.40
path	74.30,42.70
Follow the path |goto The Stockade/1 74.30,42.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Overheat##46264 |goto The Stockade/1 81.00,48.00
|tip Lord Overheat will cast Rain of Fire, lasting for 9 seconds. Move out of the area targeted
|tip He will use Fireball on his current target
|tip Occasionally, he will target a party member with Overheat. This will deal fire damage over 9 seconds
Defeat Lord Overheat |scenariogoal 24760 |goto The Stockade/1 81.00,48.00
step
map The Stockade/1
path follow loose; loop off; ants curved
path	70.80,40.10	62.70,36.80	52.80,36.40
path	41.00,36.10	33.10,34.50	25.90,30.10
Follow the path |goto The Stockade/1 25.90,30.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hogger##46254 |goto The Stockade/1 22.10,27.00
|tip Hogger will use Vicious Slice, dealing damage instantly as well as 15% of the target's health over 6 seconds
|tip He will also use Maddening Call, dealing damage to the party and reducing attack and cast speed by 60%
|tip At 30%, Hogger will Enrage. This will dramatically increase his damage output
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Maddening Call as often as possible |grouprole TANK or DAMAGE
Defeat Hogger |scenariogoal 1/34403 |goto The Stockade/1 22.10,27.00
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Stratholme: Main Gate",{
description="This guide will walk you through completing the Stratholme: Main Gate dungeon. This dungeon is located in the Eastern Plaguelands on the continent of Eastern Kingdoms and is the city in which the Order of the Silver Hand was founded. This dungeon ranges from level 15 to 30.",
mapid=317,
achieveid={646},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Scourge, Strat, Eastern, Plaguelands, Balnazaar"},
},[[
step
label "start"
Press _I_ and queue for Stratholme: Main Gate or enter the dungeon with your group |goto Stratholme/1 68.00,88.50 |c
step
talk Packmaster Stonebruiser##45323
accept The Great Ezra Grimm##27192 |goto Stratholme 67.00,89.20
only if not completedq(27192)
step
talk Master Craftsman Wilhelm##45201
accept Cutting the Competition##27185 |goto Stratholme 65.30,87.20
only if not completedq(27185)
step
talk Crusade Commander Eligor Dawnbringer##45200
accept The Dreadlord Balnazzar##27208 |goto Stratholme 66.30,86.70
accept Of Love and Family##27305 |goto Stratholme 66.30,86.70
accept Retribution##27223 |goto Stratholme 66.30,86.70
only if not completedq(27208) and not completedq(27305) and not completedq(27223)
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	66.30,84.90	66.20,72.60	67.20,61.70
path	63.00,57.30	59.50,58.10	58.00,60.40
Follow the path |goto Stratholme/1 58.00,60.40 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Stratholme Courier##11082 |goto Stratholme/1 54.50,70.80
click Premium Siabi Tobacco##176248
kill 1 Ezra Grimm##11058 |goto Stratholme/1 54.50,70.80
|tip He will show up after you click the box.
collect Siabi's Premium Tobacco##13172 |q 27192/1 |goto Stratholme/1 54.50,70.80
only if haveq(27192)
step
click Postbox Parcel##176360 |goto Stratholme/1 54.20,71.30
|tip Be prepared, 3 Undead Postman will appear and attack the party
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	57.90,61.40	59.80,52.30
Follow the path |goto Stratholme/1 59.80,52.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Postbox Parcel##176360 |goto Stratholme/1 62.50,52.00
|tip Open the King's Square Postbox. Be prepared, 3 Undead Postman will appear and attack the party
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	60.20,49.30	60.00,41.70	60.10,33.50
Follow the path |goto Stratholme/1 60.10,33.50 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Hearthsinger Forresten##10558
|tip Occasionally, Forresten will put a player to sleep with Enchanting Lullaby. Interrupt him or dispel the debuff
|tip Demoralizing Shout will reduce the melee attack power of anyone within 10 yards
|tip Shoot will hit random party members for minor physical damage
|tip Spread out to avoid excessive damage from _Multi-Shot_
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind him while you DPS to avoid the 50% increased dodge chance he gains from Incorporeal Defense |grouprole DAMAGE
Defeat Hearthsinger Forresten |scenariogoal 24910 |goto Stratholme/1 59.80,26.70
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	61.30,29.50	69.10,23.30
Follow the path |goto Stratholme/1 69.10,23.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Unforgiven##10516 |goto Stratholme/1 73.60,20.40
|tip Unrelenting Anguish is a channeled attack that deals heavy shadow damage over 5 seconds. Interrupt this
|tip The Unforgiven is accompanied by 4 Vengeful Phantoms. These phantoms will use Frost Shock, dealing frost damage and slowing movement speed
|tip Clean up the phantoms and kill The Unforgiven
kill The Unforgiven##10516 |q 27223/1 |goto Stratholme/1 73.60,20.40 |only if haveq(27223)
Defeat The Unforgiven |scenariogoal 24909 |goto Stratholme/1 73.60,20.40
confirm
step
click Postbox Parcel##176360 |goto Stratholme/1 69.90,25.30
|tip Click the Market Row Postbox. Be prepared, 3 Undead Postman and Postmaster Malown will appear and attack the party
|tip Malown will Backhand the tank, stunning them for 2 seconds
|tip Be sure to keep him away from any packs of mobs, as he will Fear a player occasionally
|tip Curse of Tongues will slow spellcasting by 50% on any player afflicted. Dispel this when possible
Defeat Postmaster Malown |scenariogoal 24914 |goto Stratholme/1 69.90,25.30
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	67.50,26.60	59.80,31.20	55.00,27.20
path	49.70,23.30
Follow the path |goto Stratholme/1 49.70,23.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Timmy the Cruel##10808 |goto Stratholme 50.10,17.40
|tip Timmy will gain extra attacks through Thrash
|tip Ravenous Claw will heal Timmy for the damage he deals with it
|tip At 50% health, timmy will Enrage. This will increase his damage dealt by 10% and his attack speed by 30%
_TANK:_ |grouprole TANK
|tip Save defensive cooldowns for Enrage |grouprole TANK
kill Timmy the Cruel##10808 |q 27223/2 |goto Stratholme 50.10,17.40 |only if haveq(27223)
Defeat Timmy the Cruel |scenariogoal 24912 |goto Stratholme 50.10,17.40
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	48.90,23.40	42.70,27.80	39.40,28.90
path	35.60,30.60	30.80,36.20	29.50,33.40
path	27.60,35.40	26.40,32.80	23.80,35.70
path	27.40,43.40
Follow the path |goto Stratholme/1 27.40,43.40 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Commander Malor##11032
|tip Ground Smash will deal physical damage to anyone within 10 yards and stun them for 2 seconds
|tip Head Crack will reduce the tank's stamina for 15 seconds
|tip Interrupt Shadow Bolt Volley so it doesn't deal damage to the entire group
Defeat Commander Malor |scenariogoal 24915 |goto Stratholme/1 30.60,39.90
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	27.40,43.30	20.60,50.50	15.40,56.00
path	12.40,49.70
Follow the path |goto Stratholme/1 12.40,49.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Blacksmithing Plans##173232
|tip The Hammersmith has only one ability - Bone Smelt.
|tip This will deal heavy fire damage to his current target and reduce their armor by 50% for 20 seconds
kill Risen Hammersmith##11120 |q 27185/1 |goto Stratholme/1 12.50,47.50
only if haveq(27185)
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	8.80,51.30	10.50,55.30	7.60,58.20
path	5.90,54.80
Follow the path |goto Stratholme/1 5.90,54.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Willey Hopebreaker##10997
click Scarlet Cannon##176216
click Cannonball Stack##176215
|tip Every 5 seconds, Willey will Summon Risen Riflemen. You must gather Scarlet Cannonballs and use the Scarlet Cannons to kill them
|tip Knock Away will deal damage to the tank and knock him back
|tip He will occasionally Pummel anyone standing close, interrupting any spell being cast and dealing physical damage
Defeat Willey Hopebreaker |scenariogoal 24916 |goto Stratholme/1 3.60,50.20
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	5.60,54.60	7.70,58.80	10.70,55.40
path	8.70,51.50	11.60,48.30	15.30,56.20
path	20.60,50.60	23.20,55.70	19.90,58.90
path	23.80,67.10	21.10,69.80	24.60,77.40
Follow the path |goto Stratholme/1 24.60,77.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Instructor Galford##10811
click Unfinished Painting##177287 |tip This is on the wall next to you.
|tip Fire Nova will deal damage to anyone within 10 yards
|tip Galford will use Pyroblast on the tank, dealing heavy fire damage and ticking for additional damage over 12 seconds
|tip Occasionally, the tank will be hit with Burning Winds. This will deal fire damage and stun for 5 seconds. Dispel
collect Of Love and Family##14679 |q 27305/1 |goto Stratholme/1 27.40,76.20 |only if haveq(27305)
Defeat Instructor Galford |scenariogoal 24917 |goto Stratholme/1 27.40,75.20
confirm
step
kill 1 Balnazzar##10813
|tip Mind Blast will deal shadow damage to his current target
|tip Shadow Shock will hit the entire group with shadow damage
|tip Randomly, Balnazzar will use Domination on a player, mind controlling them for 8 seconds
|tip He will also randomly Sleep players, lasting 6 seconds
|tip Anyone within 8 yards is succeptible to Psychic Scream. This causes players to flee for 4 seconds
kill 1 Balnazzar##10813 |q 27208/1 |goto Stratholme/1 19.30,83.10 |only if haveq(27208)
Defeat Balnazzar |scenariogoal 1/27861 |goto Stratholme/1 19.30,83.10
step
talk Crusade Commander Eligor Dawnbringer##45200
turnin The Dreadlord Balnazzar##27208 |goto Stratholme/1 21.60,80.80
only if not completedq(27208)
step
talk Crusade Commander Eligor Dawnbringer##45200
turnin Of Love and Family##27305 |goto Stratholme/1 21.60,80.80
only if not completedq(27305)
step
talk Crusade Commander Eligor Dawnbringer##45200
turnin Retribution##27223 |goto Stratholme/1 21.60,80.80
only if not completedq(27223)
step
talk Packmaster Stonebruiser##45323
turnin The Great Ezra Grimm##27192 |goto Stratholme/1 21.60,79.80
only if not completedq(27192)
step
talk Master Craftsman Wilhelm##45201
turnin Cutting the Competition##27185 |goto Stratholme/1 24.20,76.30
only if not completedq(27185)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Stratholme: Service Entrance",{
description="This guide will walk you through completing the Stratholme: Service Entrance dungeon. This dungeon is located in the Eastern Plaguelands on the continent of Eastern Kingdoms and is the city in which the Order of the Silver Hand was founded. This dungeon ranges from level 15 to 30.",
mapid=317,
achieveid={646},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Scourge, Strat, Eastern, Plaguelands, Baron, Rivendare"},
},[[
step
label "start"
Press _I_ and queue for Stratholme: Service Entrance or enter the dungeon with your group |goto Stratholme/2 67.70,86.30 |c
step
talk Packmaster Stonebruiser##45328
accept Liquid Gold##27352 |goto Stratholme/2 67.70,82.20
step
talk Archmage Angela Dosantos##45330
accept Argent Reinforcements##27359 |goto Stratholme/2 67.10,72.60
step
talk Crusade Commander Korfax##45206
accept Man Against Abomination##27228 |goto Stratholme/2 67.90,72.10
step
talk Crusade Commander Eligor Dawnbringer##45329
accept Lord Aurius Rivendare##27227 |goto Stratholme/2 68.00,72.70
step
talk Master Craftsman Wilhelm##45331
accept Weapons for War##27230 |goto Stratholme/2 68.60,73.10
step
click Gauntlet Gate##3614
Go through this gate |goto Stratholme/2 63.20,65.40 <5 |c
step
stickystart "Banshee"
click Gauntlet Gate##3614
Go through this gate |goto Stratholme/2 62.90,57.50 <5 |c
step
click Blacksmithing Plans##173232
kill Black Guard Swordsmith##11121 |q 27230/1 |goto Stratholme/2 72.70,52.40
only if haveq(27230)
step
kill Baroness Anastari##10436
|tip Anastari will Possess random players. Attack them until they reach 50% health
|tip Dispel Silence and Banshee Curse whenever possible
|tip After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
kill Thuzadin Acolyte##10399+
Defeat Baroness Anastari |scenariogoal 24919 |goto Stratholme/2 74.80,46.80
step
map Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	73.40,46.30	70.40,38.10	68.00,33.00
path	67.10,26.40
Finish killing the Thuzadin Acolytes and follow the path |goto Stratholme/2 67.10,26.40 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maleki the Pallid##10438
|tip Dispel Drain Life and Ice Tomb from players
|tip When possible, dispel Frost Armor from Maleki
|tip After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
kill Thuzadin Acolyte##10399+
Defeat Maleki the Pallid |scenariogoal 24920 |goto Stratholme/2 68.10,20.00
step
map Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	66.90,22.10	59.10,32.20	58.00,40.40
Finish killing the Thuzadin Acolytes and follow the path |goto Stratholme/2 58.00,40.40
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nerub'enkan##10437
|tip After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
kill Thuzadin Acolyte##10399+
Defeat Nerub'enkan |scenariogoal 24921 |goto Stratholme/2 56.50,46.80
step
map Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	57.70,45.80	57.90,39.10	59.20,31.50
path	57.30,19.40
Finish killing the Thuzadin Acolytes and follow the path |goto Stratholme/2 57.30,19.40 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magistrate Barthilas##10435
|tip Casters should stay at least 10 yards away to avoid interruption caused by Crowd Pummel
|tip Barthilas will gain increased damage as Furious Anger stacks. This is a soft enrage
Defeat Magistrate Barthilas |scenariogoal 24930 |goto Stratholme/2 57.00,15.10
confirm
step
label "Banshee"
kill Wailing Banshee##10464+ |only if haveq(27359)
collect 4 Banshee Essence##41504 |q 27359/1 |goto Stratholme/2 66.50,49.30 |only if haveq(27359)
click Crate##237149 |only if haveq(27352) and itemcount(13180) < 1
collect Stratholme Holy Water##13180 |q 27352/1 |only if haveq(27352) and itemcount(13180) < 1
|tip These are found throughout the instance.
step
kill Venom Belcher##10417+, Bile Spewer##10416
|tip Clear this room of Abominations.
Defeat Venom Belcher and Bile Spewer |scenariogoal 2/24922 |goto Stratholme/2 47.30,19.90
step
kill Ramstein the Gorger##10439
|tip Knockout will stuck and knock back the tank
|tip Ranged should stay at least 10 yards away to avoid Trample damage
Defeat Ramstein the Gorger |scenariogoal 3/24923 |goto Stratholme/2 47.30,19.90
step
Before you kill the next boss, you will have a wave a mobs come from the left gate.
Slay these little skeletons
confirm
step
You will have a wave of elite mobs come from the doorway.
kill Black Guard Sentry##10394+
Defeat Black Guard Sentry |scenariogoal 4/24924 |goto Stratholme/2 47.30,19.90
step
kill Lord Aurius Rivendare##45412
|tip Kill Mindless Skeletons quickly so Rivendare cannot sacrifice them for health
|tip Avoid standing in front of Rivendare as he cleaves
|tip Unholy Aura will deal shadow damage to everyone within 30 yards every 2 seconds
Defeat Lord Aurius Rivendare |scenariogoal 4/27860 |goto Stratholme/2 37.40,19.90
step
talk Crusade Commander Eligor Dawnbringer##45329
turnin Lord Aurius Rivendare##27227 |goto Stratholme/2 44.80,20.40
step
talk Crusade Commander Korfax##45206
turnin Man Against Abomination##27228 |goto Stratholme/2 43.90,14.10
step
talk Archmage Angela Dosantos##45330
turnin Argent Reinforcements##27359 |goto Stratholme/2 42.50,12.70
step
talk Master Craftsman Wilhelm##45331
turnin Weapons for War##27230 |goto Stratholme/2 49.80,18.40
step
talk Packmaster Stonebruiser##45328
turnin Liquid Gold##27352 |goto Stratholme/2 49.70,22.40
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Sunken Temple",{
description="This guide will walk you through completing the Sunken Temple dungeon. This dungeon is located in the Swamp of Sorrows on the continent of Eastern Kingdoms and is a shrine to the Atal'ai trolls. This dungeon ranges from level 20 to 30.",
mapid=220,
achieveid={641},
patch='30003',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Swamp, of, Sorrows, ST, Hakkar"},
},[[
step
label "start"
Press _I_ and queue for Sunken Temple or enter the dungeon with your group |goto The Temple of Atal'Hakkar/1 50.00,15.80 |c
step
talk Lord Itharius##46077
accept Jammal'an the Prophet##27604 |goto The Temple of Atal'Hakkar/1 50.00,17.30
accept Eranikus##27605 |goto The Temple of Atal'Hakkar/1 50.00,17.30
accept The Blood God Hakkar##27633 |goto The Temple of Atal'Hakkar/1 50.00,17.30
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	50.00,26.40	52.50,35.70	59.20,53.70
path	70.70,63.90	76.30,56.80
Follow the path |goto The Temple of Atal'Hakkar/1 76.30,56.80 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Jammal'an the Prophet##5710
|tip Clear the room before engaging the Prophet.
|tip Interrupt Ogom the Wretched's Shadow Bolt
|tip Kill the Earthgrab Totem and move out of Flamestrike
Loot the Head of Jammal'an from Jammal'an the Prophet |q 27604/1 |goto The Temple of Atal'Hakkar/1 76.10,38.70 |only if haveq(27604)
Defeat Jammal'an the Prophet |scenariogoal 24936 |goto The Temple of Atal'Hakkar/1 76.10,38.70
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	75.90,53.90	73.40,63.90	58.80,53.30
Follow the path |goto The Temple of Atal'Hakkar/1 58.80,53.30 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dreamscythe##5721, Weaver##5720
|tip Avoid standing in front of the dragons or they will knock you back.
Defeat Dreamscythe |scenariogoal 24938 |goto The Temple of Atal'Hakkar/1 50.00,45.70
Defeat Weaver |scenariogoal 24937 |goto The Temple of Atal'Hakkar/1 50.00,45.70
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	41.10,53.40	31.00,62.20	24.20,60.20
Follow the path |goto The Temple of Atal'Hakkar/1 24.20,60.20 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Shrine of the Soulflayer##3365
kill Avatar of Hakkar##8443
|tip CC players affected by Cause Insanity
|tip Dispel Curse of Tongues whenever possible
Defeat Avatar of Hakkar |scenariogoal 24934 |goto The Temple of Atal'Hakkar/1 24.30,45.70
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	24.20,60.20	31.00,62.20	41.90,52.70
path	49.90,60.90	49.90,71.80
Follow the path |goto The Temple of Atal'Hakkar/1 49.90,71.80 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hazzas##5722, Morphaz##5719
|tip Avoid standing in front of the dragons or they will knock you back.
Defeat Hazzas |scenariogoal 24940 |goto The Temple of Atal'Hakkar/1 49.40,81.30
Defeat Morphaz |scenariogoal 24939 |goto The Temple of Atal'Hakkar/1 49.40,81.30
step
kill Shade of Eranikus##5709
|tip Note that you will not be able to attack him if you haven't defeated the other bosses.
|tip Dispel players affected by Deep Slumber
|tip War Stomp will stun anyone within 5 yards
Defeat Shade of Eranikus |scenariogoal 1/34436 |goto The Temple of Atal'Hakkar/1 68.50,87.70
step
talk Lord Itharius##46077
turnin Jammal'an the Prophet##27604 |goto The Temple of Atal'Hakkar 50.00,17.20
turnin Eranikus##27605 |goto The Temple of Atal'Hakkar 50.00,17.20
turnin The Blood God Hakkar##27633 |goto The Temple of Atal'Hakkar 50.00,17.20
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Uldaman",{
description="This guide will walk you through completing the Uldaman dungeon. This dungeon is located in the Badlands on the continent of Kalimdor and is an ancient titan city currently inhabited by Dark Iron dwarves. This dungeon ranges from level 15 to 30.",
mapid=230,
achieveid={638},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Uldaman, Badlands"},
},[[
step
label "start"
Press _I_ and queue for Uldaman or enter the dungeon with your group |goto Uldaman/1 67.00,72.70 < 100 |c
step
talk Lidia Sunglow##46235
accept Behind Closed Doors##27681 |goto Uldaman,63.90,73.00
only if not completedq(27681)
step
talk High Examiner Tae'thelan Bloodwatcher##46236
accept The Chamber of Khaz'mul##27679 |goto Uldaman 63.70,72.60
only if not completedq(27679)
step
talk Aoren Sunglow##46241
accept We Require More Minerals##27682 |goto Uldaman 64.00,72.10
only if not completedq(27682)
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	65.40,75.90	65.30,81.40	62.00,81.10
path	62.00,75.40	56.70,75.50	57.10,85.60
path	60.00,89.00	55.40,93.40
Follow the path |goto Uldaman/1 55.40,93.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Olaf##6908 |goto Uldaman/1 58.00,94.80
kill 1 Eric "The Swift"##6907 |goto Uldaman/1 58.00,94.80
kill 1 Baelog##6906 |goto Uldaman/1 58.00,94.80
|tip Olaf will periodically stun a player for 2 seconds.
|tip The other 2 will cause random physical damage to players in the group.
Defeat the Lost Dwarves
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	55.40,93.40	60.00,89.00	57.10,85.60
path	56.60,81.40	53.30,81.40	53.30,78.60
Follow the path |goto Uldaman/1 53.30,78.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Revelosh##6910 |goto Uldaman 52.70,72.20
|tip Revelosh will use Chain Lightning, arcing to up to 2 additional targets. Interrupt this as often as possible
|tip He will also use Lightning Bolt on his primary target
Defeat Revelosh |scenariogoal 24971 |goto Uldaman 52.70,72.20
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	51.30,72.50	48.20,72.50
Follow the path |goto Uldaman/1 48.20,72.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click the Keystone##2688 |goto Uldaman/1 45.40,73.70 < 7
kill 1 Ironaya##7228 |goto Uldaman/1 45.40,73.70
|tip Arcing Smash is a frontal cone cleave attack. Don't stand in front of her
|tip Periodically, Ironaya will Knock Away her current target, dealing physical damage and knocking them back
|tip War Stomp will deal damage to everyone in melee range and stun them for 4 seconds
kill 1 Ironaya##7228 |q 27679/1 |goto Uldaman/1 45.40,73.70 |only if haveq(27679)
Defeat Ironaya |scenariogoal 24972 |goto Uldaman/1 45.40,73.70
step
Click the Complete Quest box in the top right corner.
turnin The Chamber of Khaz'mul##27679
accept Archaedas, The Ancient Stone Watcher##27680
only if not completedq(27680)
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	43.60,69.30	41.70,66.40	38.90,65.00
path	36.10,64.40	36.50,59.90	35.20,58.30
path	34.90,56.00	32.40,54.50	31.10,56.90
Follow the path |goto Uldaman/1 31.10,56.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Obsidian Sentinel##7023
|tip Obsidian Reflection will give the Sentinel a 20% chance to reflect the next spell cast at him
|tip Occasionally, the Sentinel will use Splintered Obisian. This lowers Obsidian Sentinel's damage and summons an Obsidian Shard
|tip These Shards possess the same Obsidian Reflection as the Sentinel
Obtain the Obsidian Power Core |q 27682/1 |goto Uldaman/1 28.70,61.70 |only if haveq(27682)
Defeat the Obsidian Sentinel |scenariogoal 24973 |goto Uldaman/1 28.70,61.70
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	29.30,58.30	31.50,56.40	32.70,54.30
path	36.30,56.50	36.50,53.40	36.40,50.90
path	39.30,49.20	45.50,49.20
Follow the path |goto Uldaman/1 45.50,49.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Ancient Stone Keeper##7206 |goto Uldaman/1 47.50,42.50
|tip Sand Storms will swirl towards random players, dealing physical damage and slowing them. Stay away from these
Retrieve the Titan Power Core |q 27682/2 |goto Uldaman/1 47.50,42.50 |only if haveq(27682)
Defeat the Ancient Stone Keeper |scenariogoal 24974 |goto Uldaman/1 47.50,42.50
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	45.50,41.20	41.50,41.20	41.10,36.80
path	39.60,36.20	38.40,39.10	36.60,39.30
path	36.30,36.00	34.80,35.80	33.20,36.20
path	31.20,34.20	29.00,34.50
Follow the path |goto Uldaman/1 29.00,34.50 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Galgann Firehammer##7291 |goto Uldaman/1 25.80,35.90 |only if default
|tip Galgann will use Fire Nova, dealing fire damage to all players within 10 yards
|tip Amplify Flames will increase the damage the tank takes from his fire spells
|tip He will randomly Flame Lash, stacking a fire DoT on players which decreases their fire resistance
|tip Shadowforge Geologists will use Flame Lash as well as Flame Strike, placing a pillar of fire on the ground. Avoid these areas
|tip Interrupt the Geologists as often as possible. Kill them first and then kill Galgann
kill 1 Galgann Firehammer##7291 |q 27681/1 |goto Uldaman/1 25.80,35.90 |only if haveq(27681)
Defeat Galgann Firehammer |scenariogoal 24975 |goto Uldaman/1 25.80,35.90
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	28.20,33.70	30.10,34.80	31.50,33.10
path	32.30,28.10	28.00,21.30	24.20,26.90
Follow the path |goto Uldaman/1 24.20,26.90 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Grimlok##4854 |goto Uldaman/1 21.30,24.60
|tip Chain Bolt will arc to up to 3 targets, dealing nature damage
|tip He will cast Lightning Bolt on the tank
|tip Bloodlust will increase one of his minion's attack speed by 30%. Dispel this if possible
|tip Shrink is a curse that reduces the strength and stamina of anyone within 5 yards
|tip The Jadespine Basilisk will use Reflection, reflecting spells for 5 seconds. Dispel this or have melee kill it
|tip Crystalline Slumber will stun the Basilisk's target and deal arcane damage
|tip Kill the adds and then kill Grimlok
Defeat Grimlok |scenariogoal 24976 |goto Uldaman/1 21.30,24.60
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	24.90,26.00	28.00,21.30	31.50,26.60
path	35.80,29.70	39.20,30.10	40.90,33.70
path	45.10,32.30	45.30,28.40	44.10,24.50
click Temple Door##1370
Follow the path and open the Temple Door |goto Uldaman/1 44.10,24.50 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Altar of Archaedas
Defeat the 4 guardians that spawn
Activate the Altar of Archaedas |goto Uldaman/2 41.70,16.70 < 5
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	41.20,15.00	39.40,9.00	44.60,5.30
path	Uldaman/2 65.10,43.90	Uldaman/2 69.30,57.70
path	Uldaman/2 59.70,64.50	Uldaman/2 58.10,59.50
click Temple Door##1370
Follow the path and open the Temple Door |goto Uldaman/2 58.10,59.50 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Altar of Archaedas |goto Uldaman/2 56.00,53.00
kill 1 Archaedas##2748 |goto Uldaman/2 55.40,50.70 |only if default
|tip Archaedas calls an Earthen Custodian every 10 seconds to assist him
|tip At 66% health, he will awaken 6 Earthen Guardians. These guardians will use Whirlwind, run away when they do this
|tip At 33% health, he will awaken 2 Vault Warders. These warders will Trample anyone within 10 yards for physical damage. Run away when they do this
|tip Archaedas will occasionally Ground Tremor, stunning anyone within 20 yards
|tip Kill the adds when they spawn, then switch back to Archaedas
kill 1 Archaedas##2748 |q 27680/1 |goto Uldaman/2 55.40,50.70 |only if haveq(27680)
Defeat Archaedas |scenariogoal 1/34442 |goto Uldaman/2 55.40,50.70
step
Click the Quest Complete box in the top right corner.
turnin Archaedas, The Ancient Stone Watcher##27680
only if not completedq(27680)
step
click The Discs of Norgannon##131474
accept The Platinum Discs##2278 |goto Uldaman/2 50.00,33.60
only if not completedq(2278)
step
talk Lore Keeper of Norgannon##7172
Ask him about the Earthen
Learn the lore that the stone watcher has to offer. |q 2278/1 |goto Uldaman/2 48.00,37.20
only if haveq(2278)
step
click The Discs of Norgannon##131474
turnin The Platinum Discs##2278 |goto Uldaman/2 50.00,33.60
accept The Platinum Discs##2280 |goto Uldaman/2 50.00,33.60
only if not completedq(2280)
step
map Uldaman/2
path follow loose; loop off; ants curved; dist 10
path	52.50,41.80	59.70,64.60
path	69.50,57.60	65.70,45.30
path	Uldaman/1 44.70,5.20	Uldaman/1 39.20,9.00	Uldaman/1 41.60,16.70
path	Uldaman/1 43.60,23.20	Uldaman/1 45.40,28.90	Uldaman/1 44.50,32.90
path	Uldaman/1 41.20,33.40	Uldaman/1 39.50,30.30	Uldaman/1 37.00,29.80
path	Uldaman/1 32.60,28.00	Uldaman/1 31.30,34.10	Uldaman/1 33.50,36.30
path	Uldaman/1 35.80,35.40	Uldaman/1 36.60,39.70	Uldaman/1 38.50,39.20
path	Uldaman/1 39.90,35.90	Uldaman/1 41.20,37.80	Uldaman/1 41.60,41.20
path	Uldaman/1 45.60,41.30	Uldaman/1 45.30,49.10	Uldaman/1 38.40,49.10
path	Uldaman/1 36.40,51.10	Uldaman/1 36.60,54.70	Uldaman/1 36.20,58.00
path	Uldaman/1 35.90,64.00	Uldaman/1 40.60,65.80	Uldaman/1 47.60,72.50
path	Uldaman/1 53.30,72.60	Uldaman/1 53.20,81.40	Uldaman/1 56.70,81.00
path	Uldaman/1 56.80,75.50	Uldaman/1 62.00,75.60	Uldaman/1 61.90,81.20
path	Uldaman/1 65.50,81.00	Uldaman/1 65.50,72.40
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the instance |goto Uldaman/1 65.50,72.40 < 25
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(27681) or haveq(2280) or haveq(27682)
step
talk Lidia Sunglow##46235
turnin Behind Closed Doors##27681 |goto Uldaman,63.90,73.00
only if not completedq(27681)
step
talk High Examiner Tae'thelan Bloodwatcher##46236
turnin The Platinum Discs##2280 |goto Uldaman 63.70,72.60
only if not completedq(2280)
step
talk Aoren Sunglow##46241
turnin We Require More Minerals##27682 |goto Uldaman 64.00,72.10
only if not completedq(27682)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Wailing Caverns",{
description="This guide will walk you through completing the Wailing Caverns dungeon. This dungeon is located in the Northern Barrens on the continent of Kalimdor and is home to the Druids of the Fang. This dungeon ranges from level 10 to 30.",
mapid=279,
achieveid={630},
patch='30002',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"WC, Barrens, Deviate"},
},[[
step
label "start"
Press _I_ and queue for Wailing Caverns or enter the dungeon with your group |goto Wailing Caverns/1 45.90,59.70 |c
step
talk Ebru##5768
accept Cleansing the Caverns##26870 |goto Wailing Caverns/1 46.60,59.20
only if not completedq(26870)
step
talk Nalpak##5767
accept Deviate Hides##26872 |goto Wailing Caverns/1 46.60,58.40
accept Preemptive Methods##26873 |goto Wailing Caverns/1 46.60,58.40
only if not completedq(26872)
stickystart "Quests"
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	45.60,53.00	41.40,51.60	35.00,51.50
path	35.50,49.10	37.80,44.20	36.90,39.80
path	32.90,40.30
Follow the path |goto Wailing Caverns/1 32.90,40.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lady Anacondra##3671 |only if default
kill 1 Lady Anacondra##3671 |q 26870/2 |only if haveq(26870)
|tip Lady Anacondra will cast Lightning Bolt on her current target
|tip She will also put random players to sleep using Druid's Slumber
|tip Anacondra will periodically attempt to heal herself or an ally with Healing Touch
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lady Anacondra |scenariogoal 24764 |goto Wailing Caverns/1 30.50,43.20
step
Jump down here |goto Wailing Caverns/1 30.30,40.10 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	28.20,40.10	25.10,46.30	20.50,45.30
path	14.40,43.60	8.90,33.60	11.40,29.30
path	12.10,32.40	12.90,33.50	14.70,34.30
path	15.80,39.00
Jump in the water and follow this path |goto Wailing Caverns/1 15.80,39.00 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Pythas##3670 |only if default
kill 1 Lord Pythas##3670 |q 26870/3 |only if haveq(26870)
|tip Lord Pythas will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Pythas will periodically attempt to heal himself or an ally with Healing Touch
|tip Players within 10 yards will occasionally take nature damage and suffer reduced attack speed from Thunder Clap
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Pythas |scenariogoal 24769 |goto Wailing Caverns/1 20.10,41.60
step
map Wailing Caverns
path follow loose; loop off; ants curved
path	18.60,35.60	17.30,27.20	16.10,24.40
path	11.90,24.90	5.60,30.20	7.60,38.20
path	8.30,44.30	12.70,52.40	15.70,53.70
Follow the path |goto Wailing Caverns 15.70,53.70 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Cobrahn##3669 |only if default
kill 1 Lord Cobrahn##3669 |q 26870/1 |only if haveq(26870)
|tip Lord Cobrahn will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Cobrahn will periodically attempt to heal himself or an ally with Healing Touch
|tip At 45% health, Cobrahn will gain Serpent Form. He will begin using Poison on players. Dispel this when possible
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Cobrahn |scenariogoal 24770 |goto Wailing Caverns/1 15.60,58.50
step
Jump down here |goto Wailing Caverns/1 15.80,51.80 |n
|tip You will take some fall damage |goto Wailing Caverns/1 16.10,49.20 <5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	17.90,46.20	22.00,45.60	24.70,46.60
path	27.30,40.80	31.80,36.80	37.70,35.30
path	44.90,37.50	50.30,43.10	52.80,49.00
path	51.80,54.90	52.50,58.00	55.20,64.00
path	58.50,67.00
kill Kresh##3653
If you haven't already killed Kresh, then you will find him walking in this little river.
Defeat Kresh |scenariogoal 24772
Follow the path |goto Wailing Caverns/1 58.50,67.00 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Skum##3674 |goto Wailing Caverns/1 60.70,72.10
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	60.50,78.80	57.20,88.60	54.30,87.50
path	54.00,84.50	54.90,81.80	56.60,79.00
path	55.50,75.00	54.90,70.30	52.90,67.00
path	52.40,66.90	50.40,62.40	52.00,60.00
path	55.90,56.80	64.40,59.70	68.60,62.20
path	71.60,64.70	73.20,69.20	72.40,76.50
path	68.20,84.20	62.50,82.80
Follow this path |goto Wailing Caverns/1 62.50,82.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go to the ledge |goto Wailing Caverns/1 60.40,81.20
Jump across the gap |goto Wailing Caverns/1 59.20,79.80 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	56.70,78.00	54.40,76.50	53.60,69.90
path	53.00,63.80	54.40,60.60	58.40,56.70
Follow the path |goto Wailing Caverns/1 58.40,56.70
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Serpentis##3673 |only if default
kill Lord Serpentis##3673 |q 26870/4 |only if haveq(26870)
|tip Lord Serpentis will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Serpentis will periodically attempt to heal himself or an ally with Healing Touch
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Serpentis |scenariogoal 1/24771 |goto Wailing Caverns/1 62.60,53.30
step
kill 1 Verdan the Everliving##5775 |goto Wailing Caverns/1 56.40,47.50
|tip Verdan the Everliving has one ability, Grasping Vines
_Grasping Vines_
|tip This will periodically knock down players within 10 yards and immobilize them for 5 seconds
_TANK:_ |grouprole TANK
|tip Make use of defenisive cooldowns, especially during Grasping Vines |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Be prepared, Verdan the Everliving may deal significant damage to undergeared tanks |grouprole HEALER
confirm
step
Walk to the edge of the pit |goto Wailing Caverns/1 55.30,42.80 |n
Jump down this hole |goto Wailing Caverns/1 54.50,39.50 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	54.10,43.40	50.50,43.10	44.60,38.70
path	41.00,37.80	38.10,38.30	37.60,44.90
path	35.50,48.50	35.40,50.90	37.80,51.70
path	44.20,52.50
Follow the path |goto Wailing Caverns/1 44.20,52.50 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Quests"
clicknpc Serpentbloom##13891
Kill Deviate mobs for Deviate Hides
Collect Deviate Hides |q 26872/1
Collect Serpent Bloom |q 26873/1
step
talk Ebru##5768
turnin Cleansing the Caverns##26870 |goto Wailing Caverns/1 46.60,59.20
only if not completedq(26870)
step
talk Nalpak##5767
turnin Deviate Hides##26872 |goto Wailing Caverns/1 46.60,58.40
turnin Preemptive Methods##26873 |goto Wailing Caverns/1 46.60,58.40
only if not completedq(26872) or not completedq(26873)
step
talk Muyoh##3678 |goto Wailing Caverns/1 46.50,56.00
Select _"Let the event begin!"_ and start following |goto Wailing Caverns/1 45.30,53.30 < 8
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	44.20,52.40	38.90,51.60	35.00,51.10
path	35.00,51.10	36.20,47.20	37.80,44.20
path	37.60,39.90	34.50,39.50	30.40,43.00
path	28.10,41.80	26.60,39.40	27.90,34.00
path	32.60,29.40	37.70,24.80	37.60,21.60
path	34.50,15.90
There will be 2 waves of mobs that attack him, then the boss will appear.
Escort and Protect Muyoh until you get to the boss |scenariogoal 2/24776 |goto Wailing Caverns/1 34.50,15.90 <5 |noway
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
kill 1 Mutanus the Devourer##3654
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Naralex's Nightmare. This will put players to sleep for 8 seconds |grouprole TANK or DAMAGE
|tip Mutanus will Terrify random players. Dispel this if possible |grouprole TANK or DAMAGE
|tip Occasionally, Mutanus will use Thundercrack, dealing damage to all players within 10 yards and stunning them |grouprole TANK or DAMAGE
Defeat Mutanus the Devourer |scenariogoal 2/18524 |goto Wailing Caverns/1 34.00,15.60
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Zul'Farrak",{
description="This guide will walk you through completing the Zul'Farrak dungeon. This dungeon is located in the Tanaris on the continent of Kalimdor and is home to the Sandfury trolls. This dungeon ranges from level 15 to 30.",
mapid=219,
achieveid={639},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"ZF, Troll, Tanaris"},
},[[
step
label "start"
Press _I_ and queue for Zul'Farrak or enter the dungeon with your group |goto Zul'Farrak/0 56.60,91.00 |c
step
talk Mazoga's Spirit##40712
accept Chief Ukorz Sandscalp##27068 |goto Zul'Farrak 56.70,89.20
accept Wrath of the Sandfury##27071 |goto Zul'Farrak 56.70,89.20
step
talk Chief Engineer Bilgewhizzle##7407
accept A Fool's Errand##27070 |goto Zul'Farrak 58.20,89.10
step
talk Tran'rek##44929
accept Breaking and Entering##27076 |goto Zul'Farrak 58.30,88.70
step
map Zul'Farrak
path follow strict; loop off
path	57.50,79.90	59.10,68.20	57.30,55.70
path	53.00,38.90	59.80,42.00	55.60,30.70
Follow the path. |goto Zul'Farrak 55.50,30.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Theka the Martyr##7272
|tip Fevered Plague will deal nature damage every 3 seconds for 30 seconds to a player
|tip At 30% health, Theka will Transform, becoming immune to shadow and physical damage for 15 seconds
Defeat Theka the Martyr |scenariogoal 24949 |goto Zul'Farrak 54.80,29.30
step
kill Antu'sul##8127
|tip Moving to this location will cause the boss to chase your party until he aggros.
kill Servant of Antu'sul##8156+, Sul'lithuz Broodling##8138+
|tip Interrupt Healing Wave whenever possible
|tip Destroy Greater Healing Ward and Earthgrab totems
|tip He will summon Sul'lithuz Broodlings to aid him in battle. Tanks try to pick them up quickly
Defeat Antu'sul |scenariogoal 24948 |goto Zul'Farrak 66.00,26.00
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	60.30,27.30	56.40,25.40	52.00,25.40
path	46.20,19.70
Follow the path |goto Zul'Farrak/0 46.20,19.70
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Witch Doctor Zum'rah will be friendly until you approach him.
kill Witch Doctor Zum'rah##7271
|tip Zum'rah will use Awaken Zul'farrak Zombie periodically, summoning zombies from the graves
|tip Interrupt Healing Wave and Shadow Bolt Volley whenever possible
Defeat Witch Doctor Zum'rah |scenariogoal 24950 |goto Zul'Farrak/0 44.10,15.80
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	43.40,19.00	40.50,21.40	35.70,17.70
path	31.60,17.10	27.00,17.80
Follow the path |goto Zul'Farrak/0 27.00,17.80 < 10
|tip Clear the trash around the area before starting the boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Sandfury Executioner##7274
|tip Once you kill the Executioner, click the cages behind him.
click Troll Cage##1787
There will be an event when you release the prisoners.
kill Sandfury Drudge##7788+, Sandfury Slave##7787+, Sandfury Cretin##7789+
|tip Defend Sergeant Bly from the attacking trolls.
|tip Eventually Shadowpriest Sezz'zis will appear.
kill Shadowpriest Sezz'ziz##7275
kill Nekrum Gutchewer##7796
|tip Interrupt Heal cast by Sezz'ziz and be wary of Psychic Scream, as it will fear party members
Defeat Shadowpriest Sezz'ziz |scenariogoal 24947 |goto Zul'Farrak/0 25.10,17.90
Defeat Nekrum Gutchewer |scenariogoal 24946 |goto Zul'Farrak/0 25.10,17.90
step
talk Weegli Blastfuse##7607 |goto Zul'Farrak/0 30.10,16.90
Ask him if he can blow up the door now
confirm
step
talk Sergeant Bly##7604
Tell him you're tired of taking orders from him
kill Sergeant Bly##7604, Murta Grimgut##7608, Raven##7605, Oro Eyegouge##7606 |goto Zul'Farrak 30.50,18.10
confirm
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	33.60,19.40	40.40,30.90
Follow the path |goto Zul'Farrak/0 40.40,30.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ruuzlu##7797
kill Chief Ukorz Sandscalp##7267
|tip Avoid standing in front of Sandscalp unless you are the tank, as he cleaves frequently
Defeat Chief Ukorz Sandscalp |scenariogoal 1/34439 |goto Zul'Farrak/0 43.50,34.60
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	40.50,31.10	34.40,20.50	31.60,23.70
path	34.80,29.10	34.60,35.70	32.50,39.00
Follow the path |goto Zul'Farrak/0 32.50,39.00 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hydromancer Velratha##7795
|tip She patrols around the room a bit, but often stops here.
|tip Interrupt Healing Wave whenever possible
|tip Avoid being hit by Crashing Wave. It will deal damage and knock you back
Loot Velratha for the Tiara of the Deep |q 27070/1 |only if haveq(27070)
Defeat Hydromancer Velratha |scenariogoal 24951 |goto Zul'Farrak/0 29.70,38.80
confirm
step
Kill trash while making your way to the _Gong of Zul'Farrak_. |goto Zul'Farrak 32.90,43.60 < 5
confirm
step
click Gong of Zul'Farrak##141832
|tip This will cause Gahz'rilla to spawn.
kill Gahz'rilla##7273
|tip Dispel Freeze Solid whenever possible to lessen party damage
Loot Gahz'rilla for Gahz'rilla's Electrified Scale |q 27070/2 |only if haveq(27070)
Defeat Gahz'rilla |scenariogoal 24952 |goto Zul'Farrak/0 29.40,38.60
confirm
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	32.50,39.00	34.60,35.70	34.80,29.10
path	31.60,23.70	34.40,20.50	40.50,21.40
path	52.00,25.40	55.60,30.70	59.80,42.00
path	53.00,38.90	57.30,55.70	59.10,68.20
path	57.50,79.90
Follow the path |goto Zul'Farrak/0 57.50,79.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
You can either run to the beginning of the dungeon to turn in your quests |goto Zul'Farrak/0 56.60,91.00 < 80
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance |goto Zul'Farrak/0 56.60,91.00 < 80
confirm
|only if not completedq(27068) or not completedq(27071) or not completedq(27076) or not completedq(27070)
step
talk Mazoga's Spirit##40712
turnin Chief Ukorz Sandscalp##27068 |goto Zul'Farrak 56.70,89.20
turnin Wrath of the Sandfury##27071 |goto Zul'Farrak 56.70,89.20
step
talk Chief Engineer Bilgewhizzle##7407
turnin A Fool's Errand##27070 |goto Zul'Farrak 58.20,89.10
step
talk Tran'rek##44929
turnin Breaking and Entering##27076 |goto Zul'Farrak 58.30,88.70
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Blackwing Lair",{
description="This guide will walk you through completing the Blackwing Lair raid. This dungeon is located in Blackrock Mountain on the continent of Eastern Kingdoms and is home to Nefarian and the Blackrock clan orcs. This raid is level 30.",
mapid=287,
achieveid={685},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"BWL, Nefarian, Burning, Steppes, Searing, Gorge, BRM"},
},[[
step
Enter the doorway here |goto Burning Steppes/14 63.45,44.15
Click the Orb of Command to teleport to Blackwing Lair. |goto Burning Steppes/14 64.30,70.90 |n
Enter the Blackwing Lair |goto Blackwing Lair/1 51.70,81.80 < 5 |noway |c
step
kill Razorgore the Untamed##12435 |goto Blackwing Lair/1 35.70,67.20
|tip The objective of this fight is to destroy all the eggs in the room by controlling Razorgore the Untamed before killing him.
|tip When controlling Razorgore, he has the following abilities:
|tip Destroy Egg destroys a nearby egg. This is an instant cast.
|tip Calm Dragonkin puts the target Dragonkin to sleep for 30 seconds.
|tip Fireball Volley inflicts 1000 Fire damage to all enearby enemies. 2 second cast.
|tip When fighting Razorgore, he also has these abilities:
|tip Conglagration inflicts 3000 Fire damage over 10 seconds to the target, also hitting nearby enemies for 150 damage.
|tip Summon Player teleports the targeted player to Razorgore's location.
confirm
step
kill Vaelastrasz the Corrupt##13020 |goto Blackwing Lair/1 33,27
|tip Essence of the Red this is a raid-wide buff that lasts for 3 minutes after engaging Vaelastrasz in combat. It restores 500 mana, 50 energy, 20 rage per second, or 20 runir power, depending on your class.
|tip Fire Nova is an AoE that inflicts 560-650 Fire damage to nearby enemies.
|tip Flame Breath inflicts 3060-4000 Fire damage to enemies in a cone in front of Vaelastrasz. Make sure the tank is the only one in front of Vaelastrasz when this occurs.
|tip Burning Adrenaline is a buff applied to random raid members throughout the fight and also on the tank every 45 seconds. It increases damage by 100%, attack speed by 100% and spells cast instantly, but it reduces max health by 5% every second, eventually killing the player.
|tip Cleave hits for 2000 damage and can chain off of targets that are struck. Make sure the tank is the only one in front of Vaelastrasz when this occurs.
confirm
step
path loop off
path	Blackwing Lair/1 41.10,28.40	Blackwing Lair/1 44.90,28.30	Blackwing Lair/2 41.60,44.00
path	Blackwing Lair/2 25.00,61.10	Blackwing Lair/2 33.50,62.70	Blackwing Lair/2 49.30,80.30
path	Blackwing Lair/3 53.10,67.90
Follow the path, clearing trash and clicking Supression Devices as you make your way to the next boss, Broodlord Lashlayer |goto Blackwing Lair/3 53.10,67.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Broodlord Lashlayer##12017 |goto Blackwing Lair/3 48,57
|tip Blase Wave deals Fire damage to nearby enemies and reducing their movement speed for 8 seconds.
|tip Cleave deals 110% weapon damage and hits additional raid members near the target. Make sure the tank is the only one in front of the boss when this occurs.
|tip Knock Away deals a small amount of damage and knocks the target back.
|tip Mortal Strike deals 500% weapon damage to the target and applies a wounded debuff, reducing healing the target receives by 50% for 5 seconds.
confirm
step
kill Firemaw##11983 |goto Blackwing Lair/3 46.80,44.20
|tip He patrols through the next room so you may have to wait a minute for him to come back to this spot.
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Summon Player teleports a random raid member to Firemaw's location.
|tip Wing Buffet is an AoE that inflicts 550-950 damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
confirm
step
path loop off
path	Blackwing Lair/3 41.70,35.40	Blackwing Lair/3 32.00,39.10	Blackwing Lair/4 22.10,56.90
path	Blackwing Lair/4 28.30,48.40
Follow the path, clearing trash as you make your way to the next boss, Ebonroc. |goto Blackwing Lair/4 28.30,48.40 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ebonroc##14601 |goto Blackwing Lair/4 35,37
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Shadow of Ebonroc is a 8 second debuff that is cast on the main tank. It restores Ebonroc's health by 25,000 every time he hits the target.
confirm
step
kill Flamegor##11981 |goto Blackwing Lair/4 37.50,42.70
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Fire Nova deals 550 Fire damage to all raid members. This occurs every 5 seconds but only when enraged.
confirm
step
Click this Lever to start the next boss fight with Chromaggus. |goto Blackwing Lair/4 49.90,70.50
confirm
step
kill Chromaggus##14020 |goto Blackwing Lair/4 43.00,69.00
|tip Chromaggus uses breath attacks that hits the entire raid, within line of sight. There are 5 possible types.
|tip Incinerate: Red deals 3600-4300 Fire damage.
|tip Corrosive Acid: Green deals 875-1125 Nature damage every 3 seconds for 15 seconds. Also reduces armor by 4000-5000.
|tip Frost Burn: Blue reduces attack speed by 80% and deals 1000-1500 Frost damage.
|tip Ignight Flesh: Black deals 650-850 Fire damage every 3 seconds for 60 seconds. This can stack if used again before the original 60 seconds are up.
|tip Time Lapse: Bronze is a 6 second stun and reduces maximum health to half. Will also heal when the stun wears off.
|tip Chromaggus also used Brood Afflictions which debuff everyone in the zone.
_Red:_
|tip deals 50 Fire damage every 3 seconds. Will heal Chromaggus if an affected player dies.
_Green:_
|tip reduces healing by 50% and deals 50 Nature damage every 5 seconds.
_Blue:_
|tip slows movement speed by 70% and cast speed by 50%. Also drains 50 mana and 1 health every second.
_Black:_
|tip increases Fire damage taken by 100%.
_Bronze:_
|tip This is a 4 second stun that occurs randomly for 10 minutes. Can be removed with Hourglass Sand. |use Hourglass Sand##19183
confirm
step
map Blackwing Lair/4
path loop off
path	54.50,57.60	65.40,69.30	75.40,88.00
Follow this path to the final boss, Nefarian. |goto Blackwing Lair/4 75.40,88.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Lord Victor Nefarius##10162 |goto Blackwing Lair/4 75.40,88.00
Click through the dialogue, ending with the final statement, "Please do."
|tip This will start this boss fight, make sure you are ready.
confirm
step
_Nefarian_ |goto Blackwing Lair/4 72.60,81.70
_Phase 1_
|tip As soon as the fight starts he will be invulnerable and will randomly Shadow Bolt and Fear random raid members. The room also begins to fill with Drakonids.
|tip The objective of Phase 1 is to kill the Drakonids.
Red Drakonid
|tip These have a short-range conal DoT attack. This DoT is stackable. Make sure the tank is the only one in front of them when this occurs.
Blue Drakonid
|tip These attacks drain mana and lowers attack speed.
Green Drakonid
|tip These stun raid members.
Black Drakonid
|tip These have a direct-damage Fire attack.
Bronze Drakonid
|tip These reduce attack and cast speed.
_Phase 2_
|tip This phase starts after 42 Drakonids have been slain. Negarian then turns into his dragon form.
Click here to proceed to _Phase 2_ |confirm
step
kill Nefarian##11583 |goto Blackwing Lair/4 70.60,73.30
_Phase 2_
|tip Shadow Flame is a raid-wide AoE that Nefarian casts before landing at the start of the phase. It deals 1000 Shadow damage to every raid member.
|tip Veil of Shadow is a debuff that reduces healing effects bt 75% for 6 seconds.
|tip Tail Lash hits all raid members behind Nefarian, dealing 1000-1400 damage and stunning them for 2 seconds.
|tip Bellowing Roar is a large AoE Fear, scattering all raid members within 35 yards of Nefarian for 4 seconds.
|tip Cleave hits the target and any nearby players. Make sure the tank is the only person in front of Nefarian when this occurs.
|tip Every 30 seconds, Nefarian will "call out" a specific class. This class is affected by the following:
_Death Knights_ cast Death Grip on the entire raid, pulling every to Nefarian.
_Druids_ are stuck in Cat Form.
_Hunters_ equipped weapon is instantly broken. Bring backup weapons to use in case this happens.
_Mages_ cast Wild Polymorph on random raid members, polymorphing the target.
_Monks_ roll around uncontrollable for 5 seconds.
_Priests_ direct heals with apply a stackable DoT with Corrupted Healing instead of restoring health.
_Paladins_ cast Blessing of Protection on Nefarian, protecting him from all physical attacks for the duration.
_Rogues_ are teleported and immobilized in an area near Nefarian.
_Shamans_ give Nefarian buffed totems.
_Warriors_ are stuck in Berserker Stance and take an additional 30% damage.
_Warlocks_ 2 Infernals per Warlock are summoned to fight for Nefarian. They stun and do minor damage to the raid.
_Phase 3_
|tip This phase starts at 20% health.
Click here to proceed to _Phase 3_ |confirm
step
kill Nefarian##11583 |goto Blackwing Lair/4 70.60,73.30
_Phase 3_
|tip Nefarian will revive all dead Drakonids as Bone Constructs. AoE them down.
|tip After all are dead Nefarian continues to cast class debuff callouts until he dies.
confirm
step
You may have looted a quest item from Nefarian.
Click the Head of Nefarian in your bags. |use Head of Nefarian##19003
accept The Lord of Blackrock##7783
|only if not completedq(7783)
step
talk Vol'jin##10540
turnin The Lord of Blackrock##7783 |goto Orgrimmar/1 48.20,70.70
|only if not completedq(7783)
step
talk Vol'jin##10540
accept The Lord of Blackrock##7784 |goto Orgrimmar/1 48.20,70.70
|only if completedq(7784)
step
talk Overlord Natoj##14392
turnin The Lord of Blackrock##7784 |goto Orgrimmar/1 52.60,82.20
|only if completedq(7784)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Molten Core",{
mapid=232,
achieveid={686},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"MC, Ragnaros, Burning, Steppes, Searing, Gorge, BRM"},
description="This guide will walk you through the Molten Core Raid.",
},[[
step
talk Lothos Riftwaker##14387 |goto Burning Steppes/16 54.30,83.40
Tell him "Transport me to the Molten Core." |goto Molten Core/1 27.90,26.50 < 5
confirm
step
map Molten Core/1
path follow loose;loop off;ants straight
path	31.20,22.80	36.20,17.30	43.80,15.80
path	47.30,20.40	49.10,29.20	53.10,30.10
path	56.50,32.40	62.50,40.20
Follow the path, clearing trash as you make your way to the first boss, Lucifron. |goto Molten Core/1 62.50,40.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lucifron##12118 |goto Molten Core/1 66.30,35.60
|tip Impending Doom inflicts 2000 Shadow damage to nearby raid members after 10 seconds.
|tip Lucifron's Curse is a debuff applied to nearby raid members, increasing the cost of their spells and abilities by 100% for 5 minutes.
|tip Shadow Shock hits all raid members within 20 yards of Lucifron for Shadow damage.
_Flamewalker Protectors_
|tip Cleave inflicts melee damage to the targeted raid member and up to 5 nearby allies. Make sure the tank is the only one in front of the Protector when this occurs.
|tip Dominate Mind takes control of a player for 15 seconds.
|confirm
step
Clear trash here before engaging the next boss, Magmadar. |goto Molten Core/1 68.50,26.30 <5 |c
step
kill Magmadar##11982 |goto Molten Core/1 70.10,19.60
|tip Magma Spit deals 100 Fire damage and another 75 Fire damage every 3 seconds for 30 seconds. Stacks up to 3 times.
|tip Lava Breath inflicts 1200 Fire damage to raid members in front of Magmadar. Make sure the tank is the only one in front of Magmadar when this occurs.
|tip Panic is an AoE Fear that causes raid members near Magmadar to flee in fear for 8 seconds.
|tip Lava Bomb is an AoE spell that deals 3200 Fire damage over 8 seconds to any player standing in the affected area.
|tip Frenzy occurs at 30% health, increasing Magmadar's attack speed by 150%. Kill him as quickly as possible to avoid death.
|confirm
step
map Molten Core/1
path loop off
path	62.50,40.10	59.70,35.90	55.00,31.90
path	50.40,32.90	44.60,30.70	40.90,38.60
path	36.80,51.10
Follow the path, clearing trash as you make your way to the next boss, Gehennas. |goto Molten Core/1 36.80,51.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gehennas##12259 |goto Molten Core/1 32,48
|tip Shadow Bolt deals 2000-2500 Shadow damage to a non-tank raid member.
|tip Rain of Fire is an AoE that deals 925-1075 Fire damage every 2 seconds for 6 seconds.
|tip Gehennas' Curse reduces healing effects of nearby raid members by 75% for 5 minutes.
_Flamewalkers_
|tip Fist of Ragnaros stuns nearby raid members for 4 seconds.
|tip Sunder Armor is a stacking debuff that reduces the target's armor by 1000 and stacks up to 20 times.
|confirm
step
map Molten Core/1
path loop off
path	34.10,51.80	34.00,61.30	32.60,66.20
Follow the path, clearing trash as you make your way to the next boss, Garr. |goto Molten Core/1 32.60,66.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Garr##12057 |goto Molten Core/1 30,70
|tip Antimagic Pulse is an AoE dispell, removing 1 beneficial spell effect from nearby raid members.
|tip Magma Shackles is an AoE, reducing the movement speed of nearby raid members by 40% for 15 seconds.
_Firesworn_
|tip Immolate inflicts 800 Fire damage and an additional 400 Fire damage every 3 seconds for 21 seconds.
|tip Eruption causes the Firesworn to explode, dealing 1850-2150 Fire damage to nearby players.
|confirm
step
map Molten Core/1
path loop off
path	37.00,70.60	46.00,70.80
Follow the path, clearing trash as you make your way to the next boss, Baron Geddon. |goto Molten Core/1 46.00,70.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Baron Geddon##12056 |goto Molten Core/1 50.60,75.50
|tip He is on a small patrol route, you may have to wait a few seconds for him to appear here.
|tip Inferno is a proximity-based AoE, hitting all raid members near Geddon. It lasts 10 seconds, each pulse coming 1 second apart and increasing in damage every pulse.
|tip Ignite Mana is a DoT that removes 400 mana and does 400 damage to the target. It lasts 5 minutes but can be dispelled.
|tip Living Bomb is a debuff that cannot be dispelled. After 10 seconds the bomb explodes, dealing 3200 Fire damage to the targeted raid member and all nearby allies. The target will also be launched into the air and take fall damage upon landing.
|tip At 2% health, Geddon turns himself into a Living Bomb. You have 5 seconds to kill him before he explodes and deals a large amount of damage to all raid members in melee range, usually killing them.
|confirm
step
kill Shazzrah##12264 |goto Molten Core/1 52.70,83.50
|tip Arcane Explosion inflicts 925-1075 Arcane damage to nearby raid members.
|tip Shazzrah's Curse is a debuff that increases the target's magical damage taken by 100% for 5 minutes.
|tip Magic Grounding is a buff that reduces the magical damage taken by Shazzrah by 50% for 30 seconds.
|tip Counterspell is an AoE interrupt, countering the spellcasting of nearby raid members and also disabling that school of magic for 10 seconds.
|tip Blink teleports Sazzrah 20 yards forward, freeing him from any bonds and wiping threat.
|confirm
step
map Molten Core/1
path loop off
path	57.60,74.10	66.10,65.80	72.60,73.50
path	76.00,79.50
Follow the path, clearing trash as you make your way to the next boss, Sulfuron Harbinger. |goto Molten Core/1 76.00,79.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Sulfuron Harbinger##12098 |goto Molten Core/1 83,83.20
|tip Demoralizing Shout reduces all nearby raid members' attack power by 300 for 30 seconds.
|tip Inspire is a buff that doubles Sulfuron's attack speed and increases damage by 25%.
|tip Flame Spear deals 1000 Fire damage to the target and any nearby raid members.
|tip Hand of Ragnaros deals 300-400 Fire damage to nearby players, also knocking them back and stunning them for 2 seconds.
_Flamewalker Priest_
|tip Shadow Word: Pain is a DoT that deals 418 Shadow damage every 3 seconds.
|tip Immolate deals 400 Fire damage every 3 seconds.
|tip Dark Mending heals the target for 27,750-32,250.
|confirm
step
map Molten Core/1
path loop off
path	74.90,71.50	78.60,56.80	72.90,50.10
Follow the path, clearing trash as you make your way to the next boss, Golemagg the Incinerator. |goto Molten Core/1 72.90,50.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Golemagg the Incinerator##11988 |goto Molten Core/1 68.70,59.40
_Phase 1_
|tip Golemagg's Trust buffs Golemagg's Core Ragers, increasing their damage by 500 and attack speed by 50%.
|tip Magma Splash is a stacking debuff applied when raid members attack Golemagg. It starts off dealing 50 damage per tick and reducing armor by 250, stacking up to 50 times with 2500 damage per tick and 12,500 armor reduction,
|tip Pyroblast deals 2000 damage to a random raid member and inflicting a DoT that deals 200 damage every 3 seconds for 12 seconds.
_Phase 2_
|tip This phase starts at 10% health.
|tip Golemagg will start using _Earthquake_, dealing damage to all raid members near him and increasing his attack speed.
|tip Attract Rager is applied to every raid member when Golemagg reaches 10% health. It increases the aggro of all players except the tank.
_Core Ragers_
|tip Mangle reduces the target's movement speed by 50% and deals 300 damage every 2 seconds.
|tip These adds cannot die while Golemagg is still alive. They need to be tanked away from Golemagg, but taking them too far away will cause the fight to bug and reset.
|confirm
step
map Molten Core/1
path loop off
path	77.10,52.50	79.80,60.20	78.00,68.70
path	83.20,74.20
Follow the path, clearing trash as you make your way to the next boss, Majordomo Executus. |goto Molten Core/1 83.20,74.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Majordomo Executus##12018 |goto Molten Core/1 82.70,65.40
|tip The goal of this fight is to kill all of Majordomo's guards.
|tip Aegis of Ragnaros Majordomo casts this on himself, absorbing 30,000 damage, reflecting 250 damage on melee attacks and healing himself to full, making him impossible to kill.
|tip Shield this shielding spell lasts for 10 seconds and is given to all of Majordomo's allies: Purple Shield: up to 100 melee damage is reflected. _White Shield:_ each magic attack has a 50% chance to reflect back at the caster.
|tip Teleport instantly transports a random raid member into the nearby fiery pit of Molten Core. The player will take 1000-2000 Fire damage while standing in this. Move out of it as quickly as possible.
|tip Blast Wave is an AoE that hits nearby raid members will moderate Fire damage.
_Flamewalker Elite_
|tip Fire Blast deals 900-1200 Fire damage to the target.
|tip Shield and Blast Wave that function the same as Majordomo's.
_Flamewalker Healer_
|tip Shadowbolt deals 1000 Shadow damage to a random raid member.
|tip Shield that functions the same as Majordomo's.
|confirm
step
Make sure to click the Cache of the Firelord to receive your loot. |goto Molten Core/1 83.00,65.00
|confirm
step
map Molten Core/1
path loop off
path	78.40,58.70	74.70,71.80	70.50,66.40
path	63.90,67.70	46.90,71.70	36.40,69.90
path	39.10,57.10	53.20,67.10	62.10,61.10
path	58.80,45.80	49.70,52.00	54.60,53.90
Follow the path, clearing trash as you make your way to the final boss, Ragnaros. |goto Molten Core/1 54.60,53.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Majordomo Executus##54404 |goto Molten Core/1 54.60,53.90
Tell him "Tell me more.", and click through the dialogue.
This will start the final fight, make sure you are ready.
|confirm
step
kill Ragnaros##11502 |goto Molten Core/1 55.10,54.50
|tip Wrath of Ragnaros occurs every 25 seconds and sends all raid members in melee range flying back. All melee players should back up prior to this being used to avoid being knocked into lava.
|tip Hammer of Ragnaros hits a random mana-using raid member, knocking back all players within 20 yards of the target.
|tip Lava Splash affects players close to a lava flow.
|tip Elemental Fire is a debuff that deals 4800 damage over 8 seconds to Ragnaros' target.
|tip Magma Blast occurs if no one is engaging Ragnaros in melee combat. It deals 4000-6000 damage to the whole raid.
|tip Melt Weapon deals damage to raid members' weapons. It takes 1 point of weapon durability per attempt. A spare weapon or repair bot is recommended.
|tip Summon Sons of Flame occurs after 3 minutes of combat. Ragnaros will summon 8 Sons of Flame and submerge under the lava. After 90 seconds, or once all 8 adds are killed, Ragnaros will reappear.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Ruins of Ahn'Qiraj",{
mapid=247,
achieveid={689},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"AQ20, Silithus"},
description="This guide will walk you through the Ruins of Ahn'Qiraj Raid.",
},[[
step
talk Keyl Swiftclaw##15500
accept Cloak of the Unseen Path##8696 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Hunter
step
talk Warden Haro##15499
accept Scythe of the Unseen Path##8712 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Hunter
step
talk Windcaller Yessendra##15498
accept Signet of the Unseen Path##8704 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Hunter
step
talk Keyl Swiftclaw##15500
accept Cloak of Unending Life##8692 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Druid
step
talk Warden Haro##15499
accept Mace of Unending Life##8708 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Druid
step
talk Windcaller Yessendra##15498
accept Band of Unending Life##8700 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Druid
step
talk Keyl Swiftclaw##15500
accept Drape of Vaulted Secrets##8691 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Mage
step
talk Warden Haro##15499
accept Blade of Vaulted Secrets##8707 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Mage
step
talk Windcaller Yessendra##15498
accept Band of Vaulted Secrets##8699 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Mage
step
talk Keyl Swiftclaw##15500
accept Cloak of Veiled Shadows##8693 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Rogue
step
talk Warden Haro##15499
accept Dagger of Veiled Shadows##8709 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Rogue
step
talk Windcaller Yessendra##15498
accept Band of Veiled Shadows##8701 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Rogue
step
talk Keyl Swiftclaw##15500
accept Cape of Eternal Justice##8695 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Paladin
step
talk Warden Haro##15499
accept Blade of Eternal Justice##8711 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Paladin
step
talk Windcaller Yessendra##15498
accept Ring of Eternal Justice##8703 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Paladin
step
talk Keyl Swiftclaw##15500
accept Cloak of the Gathering Storm##8690 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Shaman
step
talk Warden Haro##15499
accept Hammer of the Gathering Storm##8706 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Shaman
step
talk Windcaller Yessendra##15498
accept Ring of the Gathering Storm##8698 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Shaman
step
talk Keyl Swiftclaw##15500
accept Drape of Unyielding Strength##8557 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Warrior
step
talk Warden Haro##15499
accept Sickle of Unyielding Strength##8558 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Warrior
step
talk Windcaller Yessendra##15498
accept Signet of Unyielding Strength##8556 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Warrior
step
talk Keyl Swiftclaw##15500
accept Shroud of Infinite Wisdom##8689 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Priest
step
talk Warden Haro##15499
accept Gravel of Infinite Wisdom##8705 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Priest
step
talk Windcaller Yessendra##15498
accept Ring of Infinite Wisdom##8697 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Priest
step
talk Keyl Swiftclaw##15500
accept Shroud of Unspoken Names##8694 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Warlock
step
talk Warden Haro##15499
accept Kris of Unspoken Names##8710 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|only Warlock
step
talk Windcaller Yessendra##15498
accept Ring of Unspoken Names##8702 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|only Warlock
step
Enter the Ruins of Ahn'Qiraj |goto Ruins of Ahn'Qiraj/0 60.40,12.30 < 5 |c
step
map  Ruins of Ahn'Qiraj
path loop off
path	60.80,17.40	62.50,19.70	62.90,23.50
path	58.70,27.90	56.90,31.60
Follow the path, clearing trash as you go until you get to the first boss, Kurannaxx. |goto Ruins of Ahn'Qiraj 56.90,31.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kurinnaxx##15348 |goto Ruins of Ahn'Qiraj 56.50,34.40
_Phase 1_
|tip Mortal Wounds is a stackable debuff on the main tank that reduces healing by 10%. It hits as a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Sandtrap affects the entire group. Random sandtraps spawn under a player's feet and erupts, dealing 2000 damage, silencing them, and reducing their chance to hit by 75% for 20 seconds. Keep an eye on your feet and move out of the way as quickly as possible.
|tip Summon teleports a random player to the boss' location.
|tip Thrash makes Kurannaxx hit two additional times.
_Phase 2_
|tip Frenzy occurs when the boss reaches 30% health, this increases his attack speed by 75% and the Physical damage it deals by 250. Be sure to kill him quickly when he reaches this stage to avoid death.
|confirm
step
talk Lieutenant General Andorov##15471 |goto Ruins of Ahn'Qiraj 55.20,38.00
Tell him "Let's find out."
|tip This will start the next boss encounter, make sure you area ready.
|confirm
step
Follow the Lieutenant and his men here |goto Ruins of Ahn'Qiraj 59.10,42.80 < 5 |c
step
_Wave 1_
kill Captain Qeez##15391 |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip He has a cleave attack, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|confirm
step
_Wave 2_
kill Captain Tuubid##15392 |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip Attack Order debuff causes the mobs to aggro to that player.
|confirm
step
_Wave 3_
kill Captain Drenn##15389 |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip Hurricane AoE lightning spell. Move out of the tornadoes that spawn.
|confirm
step
_Wave 4_
kill Captain Xurrem##15390 |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip Shockwave is an AoE knockdown, it has a short range so only melee should have to deal with it.
|confirm
step
_Wave 5_
kill Major Yeggeth##15386 |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip Blessing of Protection is a cleave and deals 900 damage, make sure the boss is turned away from the group.
|tip Shield of Rajaxx makes Yeggeth immune to all schools of magic for 6 seconds.
|confirm
step
_Wave 6_
kill Major Pakkon##15388  |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip Sweeping Slam AoE attack. It has a short range and only melee should have to deal with it.
|confirm
step
_Wave 7_
kill Colonel Zerran##15385 |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip Enlarge is a magic-dispellable buff that increases his melee damage. It also increases the damage of his adds. Dispell as fast as possible.
|confirm
step
kill General Rajaxx##15341 |goto Ruins of Ahn'Qiraj 59.10,42.80
|tip Thunder Clap cuts everyone's hitpoints in half and wipes all player's aggro. Healers should be ready for this and tanks will need to re-taunt.
|tip He will yell You are not worth my time, <player name> this dumps all of that player's aggro, and he will engage a new target.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	54.90,50.00	52.50,47.30	52.30,41.50
path	45.20,34.20	36.10,33.30
Follow the path, clearing trash as you go until you get to the next boss, Moam. |goto Ruins of Ahn'Qiraj 36.10,33.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Moam##15340 |goto Ruins of Ahn'Qiraj/0 30.70,37.40
|tip Trample AoE melee attack, melee classes should be wary of this.
|tip Drain Mana takes 500 mana from 6 people and replenishes Moam's mana. This can be countered by keeping his mana drained.
|tip Arcane Explosion occurs if Moam reaches 100% mana. Huge AoE that deals 3000 damage, knocks players back, and then deals fall damage.
|tip Summon Mana Fiend occurs 90 seconds into the fight. Moam summoms 3 Mana Fiends. Must be killed off quickly. These are banishable and rootable and use Arcane Explosion.
|tip Turn to Stone also occurs 90 seconds into the fight. Moam turns to stone and cannot attack or use Drain Mana (he still regenerates some mana over time).
|tip He comes out of stone after 90 seconds or if his mana reaches 100%.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	31.10,41.80	33.90,45.50	34.00,50.40
path	39.90,58.90	42.90,69.90
Follow the path, clearing trash as you go until you get to the next boss, Ossirian The Unscarred. |goto Ruins of Ahn'Qiraj 42.90,69.90 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ossirian The Unscarred##15339 |goto Ruins of Ahn'Qiraj 40.50,74.40
|tip Strength of Ossirian Ossirian starts the fight with this buff, dealing massive melee damage. Ccounter this by kiting him to the crystals that spawn around the area. They greatly reduce his damage dealth and makes him vulnerable to a school of magic. Typically a specific raid member will be assigned to run around and scout out the crystal locations for the rest of the raid.
|tip Enveloping Winds is a 10 second stun to whoever has aggro. He will then ignore this person but their threat will be preserved. The effect can break upon taking damage.
|tip Tornadoes spawn when Ossirian is engaged. They will move around the area throughout the fight and deal high damage to anyone caught in them. Keep an eye out and avoid them.
|tip Warstomp is a short range AoE spell that hits around Ossirian and deals 1500 damage and knocks players back.
|tip Curse of Tongues is an AoE debuff that increases cast time of those caught in it. Avoid this by keeping the casters at range.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	50.10,74.10	55.10,81.30
Follow the path, clearing trash as you go until you get to the next boss, Ayamiss The Hunter. |goto Ruins of Ahn'Qiraj 55.10,81.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ayamiss The Hunter##15369 |goto Ruins of Ahn'Qiraj 58.30,85.70
_Phase 1_
|tip Fly Ayamiss is airborne and cannot be hit with melee attacks during this phase. This ends once he reaches 70% health.
_Phase 2_
|tip Poison Stinger applies a debuff that does 25 Nature damage per second but can stack up to 100 times. He only uses this while flying and is cast upon the player with most aggro.
|tip Stinger Spray does 1000 Nature damage to the raid. This occurs approximately every 30 seconds.
|tip Hive'Zara Swarmer summons about 20 wasps that fly up in the air. They attack together as they descend. Are relatively easy to deal with due to their low hit points.
|tip Paralyze_ shackles a player to the altar. An add will spawn and begin moving towards them, it must be killed before it reaches them or it will kill them and spawn another elite mob.
|tip This boss is immune to taunts.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	59.10,80.30	63.90,80.90	67.80,74.60
path	69.60,68.90
Follow the path, killing trash until you get to the last boss, Buru the Gorger. |goto Ruins of Ahn'Qiraj 69.60,68.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Buru the Gorger##15370 |goto Ruins of Ahn'Qiraj 70.60,63.70
|tip Eggs deal 100-500 damage to players based on their proximity to the egg. They deal 45000 damage to Buru and is the only way to damage him.
|tip Dismember is a stacking bleed debuff that does 1248 damage every 2 seconds. Buru will use this if he catches up to the player that is kiting him.
|tip Speeding Up gives Buru increased movement speed while chasing a player. Remove this effect by hurting him with an egg explosion.
|tip Creeping Plague is activated when he has less than 20% health. It is a raid-wide stacking debuff that deals increased damage every 3 ticks. At this point the fight becomes a dps race.
|tip Thorns deals 200 damage to melee attackers.
|tip This boss is immune to taunts.
|confirm
step
talk Keyl Swiftclaw##15500
turnin Cloak of the Unseen Path##8696 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8696)
step
talk Warden Haro##15499
turnin Scythe of the Unseen Path##8712 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8712)
step
talk Windcaller Yessendra##15498
turnin Signet of the Unseen Path##8704 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8704)
step
talk Keyl Swiftclaw##15500
turnin Cloak of Unending Life##8692 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8692)
step
talk Warden Haro##15499
turnin Mace of Unending Life##8708 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8708)
step
talk Windcaller Yessendra##15498
turnin Band of Unending Life##8700 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8700)
step
talk Keyl Swiftclaw##15500
turnin Drape of Vaulted Secrets##8691 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8691)
step
talk Warden Haro##15499
turnin Blade of Vaulted Secrets##8707 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8707)
step
talk Windcaller Yessendra##15498
turnin Band of Vaulted Secrets##8699 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8699)
step
talk Keyl Swiftclaw##15500
turnin Cloak of Veiled Shadows##8693 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8693)
step
talk Warden Haro##15499
turnin Dagger of Veiled Shadows##8709 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8709)
step
talk Windcaller Yessendra##15498
turnin Band of Veiled Shadows##8701 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8701)
step
talk Keyl Swiftclaw##15500
turnin Cape of Eternal Justice##8695 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8695)
step
talk Warden Haro##15499
turnin Blade of Eternal Justice##8711 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8711)
step
talk Windcaller Yessendra##15498
turnin Ring of Eternal Justice##8703 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8703)
step
talk Keyl Swiftclaw##15500
turnin Cloak of the Gathering Storm##8690 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8690)
step
talk Warden Haro##15499
turnin Hammer of the Gathering Storm##8706 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8706)
step
talk Windcaller Yessendra##15498
turnin Ring of the Gathering Storm##8698 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8698)
step
talk Keyl Swiftclaw##15500
turnin Drape of Unyielding Strength##8557 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8557)
step
talk Warden Haro##15499
turnin Sickle of Unyielding Strength##8558 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8558)
step
talk Windcaller Yessendra##15498
turnin Signet of Unyielding Strength##8556 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8556)
step
talk Keyl Swiftclaw##15500
turnin Shroud of Infinite Wisdom##8689 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8689)
step
talk Warden Haro##15499
turnin Gravel of Infinite Wisdom##8705 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8705)
step
talk Windcaller Yessendra##15498
turnin Ring of Infinite Wisdom##8697 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8697)
step
talk Keyl Swiftclaw##15500
turnin Shroud of Unspoken Names##8694 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8694)
step
talk Warden Haro##15499
turnin Kris of Unspoken Names##8710 |goto Ahn'Qiraj: The Fallen Kingdom 59.50,14.00
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8710)
step
talk Windcaller Yessendra##15498
turnin Ring of Unspoken Names##8702 |goto Ahn'Qiraj: The Fallen Kingdom 59.40,14.10
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8702)
step
Click the Head of Ossirian the Unscarred in your bags |use Head of Ossirian the Unscarred##21220
accept The Fall of Ossirian##8791
|only if not completedq(8791)
step
talk Commander Mar'alith##15181
turnin The Fall of Ossirian##8791 |goto Silithus 53.20,32.50
|only if haveq(8791)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Temple of Ahn'Qiraj",{
mapid=319,
achieveid={687},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"AQ40, Silithus, C'Thun"},
description="This guide will walk you through the Ruins of Ahn'Qiraj Raid.",
},[[
step
Enter the Temple of Ahn'Qiraj |goto Ahn'Qiraj/2 51.40,26.50 < 5
step
map Ahn'Qiraj/2
path loop off
path	41.80,19.80	39.10,26.20
Follow the path, clearing trash as you go until you get to the first boss, The Prophet Skeram. |goto Ahn'Qiraj/2 39.10,26.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Prophet Skeram##15263 |goto Ahn'Qiraj/2 43.50,41.30
|tip True Fulfillment mind controls a target, giving them increased damage, higher resistances, increased movement speed, and instant-cast spells. The target grows in size, and can be sheeped, feared, stunned, or put to sleep.
|tip Quartile Split occurs at 75%, 50%, and 25%, creating two images that share Skeram's abilities. These have much less hit points than the real Skeram and need to be killed when they spawn.
|tip Arcane Explosion AoE hits for 1500 damage in a large radius. Skeram casts this only if there are more than 4 players in melee range. This spell is interruptable.
|tip Earth Shock hits Skeram's target for 2500 damage every second until that target is in melee range.
|tip Blinks to either platform beside him. This also wipes aggro.
|confirm
step
talk Kandrostrasz##15503 |goto Ahn'Qiraj/2 59.20,68.80
turnin Mortal Champions##8595 |or
turnin Mortal Champions##8579
step
talk Kandrostrasz##15503
accept Striker's Leggings##8658
accept Striker's Footguards##8626 |goto Ahn'Qiraj/2 59.10,68.70
|only Hunter
step
talk Vethsera##15504
accept Striker's Hauberk##8656 |goto Ahn'Qiraj/2 59.40,68.50
|only Hunter
step
talk Andorgos##15502
accept Striker's Diadem##8657
accept Striker's Pauldrons##8659 |goto Ahn'Qiraj/2 59.60,68.20
|only Hunter
step
talk Kandrostrasz##15503
accept Stormcaller's Leggings##8624
accept Stormcaller's Footguards##8621 |goto Ahn'Qiraj/2 59.10,68.70
|only Shaman
step
talk Vethsera##15504
accept Stormcaller's Hauberk##8622 |goto Ahn'Qiraj/2 59.40,68.50
|only Shaman
step
talk Andorgos##15502
accept Stormcaller's Diadem##8623
accept Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj/2 59.60,68.20
|only Shaman
step
talk Kandrostrasz##15503
accept Genesis Trousers##8668
accept Genesis Boots##8665 |goto Ahn'Qiraj/2 59.10,68.70
|only Druid
step
talk Vethsera##15504
accept Genesis Vest##8666 |goto Ahn'Qiraj/2 59.40,68.50
|only Druid
step
talk Andorgos##15502
accept Genesis Helm##8667
accept Genesis Shoulderpads##8669 |goto Ahn'Qiraj/2 59.60,68.20
|only Druid
step
talk Kandrostrasz##15503
accept Enigma Leggings##8631
accept Enigma Boots##8634 |goto Ahn'Qiraj/2 59.10,68.70
|only Mage
step
talk Vethsera##15504
accept Enigma Robes##8633 |goto Ahn'Qiraj/2 59.40,68.50
|only Mage
step
talk Andorgos##15502
accept Enigma Circlet##8632
accept Enigma Shoulderpads##8625 |goto Ahn'Qiraj/2 59.60,68.20
|only Mage
step
talk Kandrostrasz##15503
accept Doomcaller's Trousers##8663
accept Doomcaller's Footwraps##8660 |goto Ahn'Qiraj/2 59.10,68.70
|only Warlock
step
talk Vethsera##15504
accept Doomcaller's Robes##8661 |goto Ahn'Qiraj/2 59.40,68.50
|only Warlock
step
talk Andorgos##15502
accept Doomcaller's Circlet##8662
accept Doomcaller's Mantle##8664 |goto Ahn'Qiraj/2 59.60,68.20
|only Warlock
step
talk Kandrostrasz##15503
accept Deathdealer's Leggings##8640
accept Deathdealer's Boots##8637 |goto Ahn'Qiraj/2 59.10,68.70
|only Rogue
step
talk Vethsera##15504
accept Deathdealer's Vest##8638 |goto Ahn'Qiraj/2 59.40,68.50
|only Rogue
step
talk Andorgos##15502
accept Deathdealer's Helm##8639
accept Deathdealer's Spaulders##8641 |goto Ahn'Qiraj/2 59.60,68.20
|only Rogue
step
talk Kandrostrasz##15503
accept Conqueror's Legguards##8560
accept Conqueror's Greaves##8559 |goto Ahn'Qiraj/2 59.10,68.70
|only Warrior
step
talk Vethsera##15504
accept Conqueror's Breastplate##8562 |goto Ahn'Qiraj/2 59.40,68.50
|only Warrior
step
talk Andorgos##15502
accept Conqueror's Crown##8561
accept Conqueror's Spaulders##8544 |goto Ahn'Qiraj/2 59.60,68.20
|only Warrior
step
talk Kandrostrasz##15503
accept Avenger's Legguards##8629
accept Avenger's Greaves##8655 |goto Ahn'Qiraj/2 59.10,68.70
|only Paladin
step
talk Vethsera##15504
accept Avenger's Breastplate##8627 |goto Ahn'Qiraj/2 59.40,68.50
|only Paladin
step
talk Andorgos##15502
accept Avenger's Crown##8628
accept Avenger's Pauldrons##8630 |goto Ahn'Qiraj/2 59.60,68.20
|only Paladin
step
talk Kandrostrasz##15503
accept Trousers of the Oracle##8593
accept Footwraps of the Oracle##8596 |goto Ahn'Qiraj/2 59.10,68.70
|only Priest
step
talk Vethsera##15504
accept Vestments of the Oracle##8603 |goto Ahn'Qiraj/2 59.40,68.50
|only Priest
step
talk Andorgos##15502
accept Tiara of the Oracle##8592
accept Mantle of the Oracle##8594 |goto Ahn'Qiraj/2 59.60,68.20
|only Priest
step
map Ahn'Qiraj
path loop off
path	Ahn'Qiraj/2 49.50,65.50	Ahn'Qiraj/3 46.10,24.30	Ahn'Qiraj/3 42.90,30.20
path	Ahn'Qiraj/3 47.80,67.90	Ahn'Qiraj/1 33.30,51.30	Ahn'Qiraj/1 35.00,49.50
path	Ahn'Qiraj/1 31.80,49.70	Ahn'Qiraj/1 29.50,49.40
Follow the path, clearing trash as you go until you get to the next boss, the Bug Trio. |goto Ahn'Qiraj 29.50,49.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Bug Trio_ |goto Ahn'Qiraj 27.90,49.60
kill Lord Kri##15511
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Toxic Volley hits for 500 Nature damage and inflicts a DoT that ticks for 125 damage. It can stack any number of times but can be dispelled.
|tip Death Effect: his corpse leaves a poison cloud that DoTs for 2000 damage per second, usually resulting in death if stood in.
kill Princess Yauj##15543
|tip Fear_ AoE fear. If the raid party is feared too far away, the fight can bug and reset. Tank her as far from the main raid as possible.
|tip Great Heal is a large single=target heal that she uses on herself or one of the other bug bosses. Interrupting this is critical.
|tip Death Effect: spawns several bug adds when she dies. These can be cc'ed with normal means and aren't usually an issue.
kill Vem##15544
|tip Berserker Charge Vem charges at a raid member, knocking them back and dealing extra damage.
|tip Knockdown, Vem does slightly increased damage and knocks down his target and any nearby allies, stunning them for 2 seconds.
|tip Death Effect: enrages Yauj and Kri if they are still alive. Which will greatly increase their attack speed and damage. This is designed to wipe the raid. Kill them as quickly as possible to avoid death.
|confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	30.50,50.30	35.00,49.70	33.10,46.80
path	31.80,41.20	34.30,40.60	37.90,38.90
path	40.90,36.70
Follow the path, clearing trash as you go until you get to the next boss, Battleguard Sartura. |goto Ahn'Qiraj/1 40.90,36.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Battleguard Sartura##15516 |goto Ahn'Qiraj/1 43.10,35.20
|tip Whirlwind makes Sartura immune to stun. While using this spell, she has increased movement speed and deals AoE damage. Avoid her and her guards when they are using this.
|tip Aggro drop Sartura and her guard occasionally reset aggro and will chase random raid members for 5 seconds. After the 5 seconds they will return to the one with highest aggro.
|tip Frenzy occurs when Sartura reaches 20% health, dealing 124 more physical damage and increased attack speed by 60%. Kill her as quickly as possible to avoid death.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase her attack speed and damage. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|tip Her guards use a knockback occasionally.
|confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	44.60,29.20	47.40,18.50	56.20,14.60
path	60.10,19.30
Follow the path, clearing trash as you go until you get to the next boss, Fankriss the Unyielding. |goto Ahn'Qiraj/1 60.10,19.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fankriss the Unyielding##15510 |goto Ahn'Qiraj/1 61.60,22.80
|tip Mortal Wounds is a stackable debuff on the main tank that reduces healing by 10%. This is a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Summon Worm is used randomly during the fight, and spawns 1-3 elite worm adds. They enrage after 20 seconds, dealing 10,000-20,000 damage per hit. Kill them as soon as they spawn to prevent death.
|tip Adds will be spawned shortly after the fight starts and then again every minute. 3 groups of 4 adds will spawn, 1 group coming from each of the large tunnels that shoot off from the main room.
|tip When this happens a raid member will be teleported and rooted near one of the spawns. The adds can be snared or feared, and need to be killed quickly.
|confirm
step
The next boss. Viscidus, is optional.
|tip He can only be killed if you and your raid members can deal Frost damage. It takes 200 Frost attacks to freeze him and then about 200 melee attacks. You and your group can skip this boss or fight him.
Click here to _fight_ Viscidus! |next "fightbonus" |confirm
Click here to _skip_ Viscidus! |next "skipbonus" |confirm
step
label "fightbonus"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	65.10,22.30	66.10,19.40	66.30,17.60
path	68.80,18.20
Follow the path up the brown pipe until you get to the next boss, Viscidus. |goto Ahn'Qiraj/1 68.80,18.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Viscidus##15299 |goto Ahn'Qiraj/1 70.70,18.40
|tip Poison Shock is a 15 yard AoE that deals 1200 Nature damage every 10 seconds.
|tip Poison Volley is an AoE that does 1500 Nature damage and applies a DoT that does 500 damage every 2 seconds for 10 seconds. The DoT can be dispelled.
|tip Toxin Clouds are shot out by Viscidus every 30-40 seconds. It is an AoE that deals 1500 damage every 2 seconds and slows movement speed by 40%. The damage radius is bigger than the graphic so be sure to move way out of it.
_Frost Phases_
|tip The only way to kill Viscidus is to freeze him with ice and then shatter him.
|tip "Viscidus begins to slow" his movement and attack speed is reduced by 15%. This phase starts after he is hit with 100 Frost attacks,
|tip "Viscidus is freezing up" his movement and attack speed is reduced by 30%. This phase starts after he is hit with 150 Frost attacks.
|tip "Viscidus is frozen solid" his movement and attacks stop completely. The raid now needs to switch to melee attacks and "shatter" him. This phase starts after Viscidus is hit with 200 Frost attacks
_Melee Phases_
|tip "Viscidus begins to crack" continue attacking with melee.
|tip "Viscidus looks ready to shatter" continue attacking with melee.
|tip "Viscidus explodes" Viscidus shatters into Globs of Viscidus. Each glob represents 5% of his total health. Destroy these to do damage. If he is below 5% health when shattered, he will die. If the Globs reach the center of the room, Viscidus will reform.
|confirm
step
label "skipbonus"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	60.80,27.50	56.30,34.10	55.70,43.50
path	54.20,49.90	50.40,51.80	47.30,50.90
Follow the path, clearing trash as you go until you get to the next boss, Princess Huhuran. |goto Ahn'Qiraj/1 47.30,50.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Princess Huhuran##15509 |goto Ahn'Qiraj/1 44.30,47.30
|tip Frenzy Huhuran's damage is greatly increased while she is in this form. A Hunter can remove it with Tranquilizing Shot.
|tip Poison Bolt deals 2000 damage to the closest 15 people. This only occurs when she Frenzies or Berserks.
|tip Noxious Poison deals 2900 Nature damage over 8 seconds and a Silence. This will hit a random person and any raid members around Huhuran.
|tip Wyvern Sting is an AoE sleep effect on a random area within melee range and can affect up to 10 raid members. If cleansed it deals 3000 Nature damage.
|tip Acid Spit DoT deals about 250 damage every 2 seconds. This DoT is stackable and tanks will need to be rotated for healing.
|tip Berserk occurs when Huhuran reaches 30% health. Her attack speed doubles and she releases poison bolts that deal 2000 damage every 3 seconds to the closest 15 raid members.
|tip Kill her as quickly as possible to avoid death.
|confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	44.60,54.60	47.40,61.50	56.10,68.30
Follow the path, clearing trash as you go until you get to the next boss, the Twin Emperors. |goto Ahn'Qiraj/1 56.10,68.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Twin Emperors_ |goto Ahn'Qiraj/1 57.70,70.70
|tip Both share the following abilities:
|tip Heal Brother occurs whenever the Twins get within 60 yards of one another. They will spam this heal on each other, healing for 30,000 health per tick. They must be tanked far apart.
|tip Twin Teleport occurs every 30-40 seconds. The Twins switch places. This effect is preceded by a blue glow at their feet. After the teleport both Twins wipe all aggro and will attack the closest raid member to them.
|tip Combined Health the Twins share health percentage. Damaging one of them also does damage to the other.
|tip Berserk_ occurs after 15 minutes of combat. It will greatly increase their attack speed and damage. This is designed to wipe the raid. Kill them before they reach this stage to avoid death.
kill Emperor Vek'nilash##15275
_Melee_
|tip Immune to all magic damage (except Holy).
|tip Uppercut knocks back a single random target in melee range.
|tip Unbalancing Strike deals 350% weapon damage and leaves the target unbalanced, lowering their defense by 100 for 6 seconds.
|tip Mutate Bug mutates a bug every 10-15 seconds making it grow and attack the raid. Needs to be killed off.
kill Emperor Vek'lor##15276
_Caster_
|tip Immune to all physical damage.
|tip Shadow Bolt is spammed on Vek'lor's aggro target, hitting for 3000-4000.
|tip Blizzard AoE that does 1500 damage per tick and slows those within it.
|tip Arcane Burst AoE that deals 4000-5000 Arcane damage whenever a player is within melee range. Knocks back anyone it hits and slows their movement speed by 70%.
|tip Explode Bug every 7-10 seconds Vek'lor forces a nearby bug to explode, dealing a large amount of damage over a wide area.
|confirm
step
The next boss, Ouro the Sand Worm, is optional.
Kill him! |next "killworm" |confirm
Skip him! |next "skipworm" |confirm
step
label "killworm"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	57.10,73.30	53.90,77.20	50.00,80.80
path	45.60,82.30	42.20,80.20	37.90,75.60
path	33.80,76.10
Follow the path, clearing trash as you go until you get to Ouro. |goto Ahn'Qiraj/1 33.80,76.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ouro##15517 |goto Ahn'Qiraj/1 30.60,79.30
|tip Sweep deals 1000-2500 Physical damage to his target, alonog with an AoE knockback. This usually drops the current tank's aggro and Ouro will need to be picked up by another tank.
|tip Sand Blast occurs every 20-25 seconds, dealing about 4000 Nature damage to the person with the highest threat. Also hits like a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Submerge Ouro burrows underground, becoming untargetable and undamagable. He has a chance to do this every 1.50 minutes, it is random. He will also Submerge if no player is in melee range.
|tip Ground Rupture deals 2000 Physical damage to anyone on top of Ouro when he reappears from a Submerge.
|tip Dirt Mound's Quake deals 1500 Nature damage when Ouro is Submerged.
|tip Scarab Adds will spawn after each resurface. They despawn after 45 seconds, so any form of crowd control is enough to handle them.
|tip Enrage occurs when Ouro has 20% health left. It increases his attack speed by 150% and doubles his damage. He will no longer Submerge at this point. Kill him as fast as possible to avoid death.
|next "finalstart"|confirm
step
label "skipworm"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	57.10,73.30	53.90,77.20	50.00,80.80
path	45.60,82.30	42.20,80.20	37.90,75.60
path	37.60,70.30
Follow the path, clearing trash as you go |goto Ahn'Qiraj/1 37.60,70.30 <5 |next "finalstart"
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "finalstart"
map Ahn'Qiraj
path follow loose;loop off;ants straight
path	Ahn'Qiraj/1 37.90,67.80	Ahn'Qiraj/1 32.10,56.10	Ahn'Qiraj/1 35.50,50.00
path	Ahn'Qiraj/1 34.00,45.20	Ahn'Qiraj/3 67.90,53.30	Ahn'Qiraj/3 71.40,75.80
path	Ahn'Qiraj/3 62.20,85.10
Follow the path through the final area as you make your way to the last boss, C'Thun. |goto Ahn'Qiraj/3 62.40,86.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill C'Thun##15727 |goto Ahn'Qiraj/3 58.40,67.20
_Phase 1_
|tip Eye Beam, a green energy beam, is cast every 3 seconds by Eye of C'Thun and deals about 3000 Nature damage to a random target. If another player is within 10 yards of this target, the beam will jump to them, dealing 1.50x the damage dealt to the previous target. Raid members will want to stay spread out to avoid this happening.
|tip Dark Glare a red energy beam, deals about 50,000 Shadow damage to any player who passes through the beam. The initial target is random, but he will rotate 180 degrees clockwise or counterclockwise. When this happens, move out of its way.
|tip Eye Tentacle will spawn 8 small eye tentacles every 45 seconds, knocking back anyone within a few yards of their spawn point.  They use Mind Flay which deals 750 damage every second for 3 seconds. If the group is ready for them they are easily killed due to their low hit points.
|tip Claw Tentacle spawn at random locations very often. When they spawn they deal about 1500 damage and a knockback.
_Phase 2_
|tip This starts as soon as the Eye of C'Thun's health reaches 0.
|tip Giant Claw Tentacle spawns about every minute. These deal 3500 damage with Ground Rupture, and will need to be tanked due to their high damage. If no one is in range for an attack they will burrow and reappear with full health, repeating the Ground Rupture attack.
|tip Giant Eye Tentacle spawns about every minute. These also deal significant damage with Ground Rupture and they cast _Eye Beam_, which bounces off nearby raid members. Killing these are a priority.
_Stomach of C'Thun_
|tip Every 10 seconds, a random raid member will be swallowed by C'Thun and dropped into his stomach. Swim out of the acid pools and onto one of the patches of land. _Flesh Tentacles_ have 25,000 health and killing them weakens C'Thun, causing him to turn purple and become vulnerable for 45 seconds. This is the time you use to attack and kill him.
|confirm
step
Click the Eye of C'Thun in your bags |use Eye of C'Thun##21221
accept C'Thun's Legacy##8801
|only if not completedq(8801)
step
talk Caelestrasz##15379
turnin C'Thun's Legacy##8801 |goto Ahn'Qiraj/3 51.20,85
|only if not completedq(8801)
step
Throughout the raid, you may have looted a quest item. If not, just skip this step.
Use the Ancient Qiraji Artifact in your bags |use Ancient Qiraji Artifact##21230
accept Secrets of the Qiraji##8784
step
talk Kandrostrasz##15503
turnin Striker's Leggings##8658
turnin Striker's Footguards##8626 |goto Ahn'Qiraj/2 59.10,68.70
|only Hunter
step
talk Vethsera##15504
turnin Striker's Hauberk##8656 |goto Ahn'Qiraj/2 59.40,68.50
|only Hunter
step
talk Andorgos##15502
turnin Striker's Diadem##8657
turnin Striker's Pauldrons##8659 |goto Ahn'Qiraj/2 59.60,68.20
|only Hunter
step
talk Kandrostrasz##15503
turnin Stormcaller's Leggings##8624
turnin Stormcaller's Footguards##8621 |goto Ahn'Qiraj/2 59.10,68.70
|only Shaman
step
talk Vethsera##15504
turnin Stormcaller's Hauberk##8622 |goto Ahn'Qiraj/2 59.40,68.50
|only Shaman
step
talk Andorgos##15502
turnin Stormcaller's Diadem##8623
turnin Stormcaller's Pauldrons##8602 |goto Ahn'Qiraj/2 59.60,68.20
|only Shaman
step
talk Kandrostrasz##15503
turnin Genesis Trousers##8668
turnin Genesis Boots##8665 |goto Ahn'Qiraj/2 59.10,68.70
|only Druid
step
talk Vethsera##15504
turnin Genesis Vest##8666 |goto Ahn'Qiraj/2 59.40,68.50
|only Druid
step
talk Andorgos##15502
turnin Genesis Helm##8667
turnin Genesis Shoulderpads##8669 |goto Ahn'Qiraj/2 59.60,68.20
|only Druid
step
talk Kandrostrasz##15503
turnin Enigma Leggings##8631
turnin Enigma Boots##8634 |goto Ahn'Qiraj/2 59.10,68.70
|only Mage
step
talk Vethsera##15504
turnin Enigma Robes##8633 |goto Ahn'Qiraj/2 59.40,68.50
|only Mage
step
talk Andorgos##15502
turnin Enigma Circlet##8632
turnin Enigma Shoulderpads##8625 |goto Ahn'Qiraj/2 59.60,68.20
|only Mage
step
talk Kandrostrasz##15503
turnin Doomcaller's Trousers##8663
turnin Doomcaller's Footwraps##8660 |goto Ahn'Qiraj/2 59.10,68.70
|only Warlock
step
talk Vethsera##15504
turnin Doomcaller's Robes##8661 |goto Ahn'Qiraj/2 59.40,68.50
|only Warlock
step
talk Andorgos##15502
turnin Doomcaller's Circlet##8662
turnin Doomcaller's Mantle##8664 |goto Ahn'Qiraj/2 59.60,68.20
|only Warlock
step
talk Kandrostrasz##15503
turnin Deathdealer's Leggings##8640
turnin Deathdealer's Boots##8637 |goto Ahn'Qiraj/2 59.10,68.70
|only Rogue
step
talk Vethsera##15504
turnin Deathdealer's Vest##8638 |goto Ahn'Qiraj/2 59.40,68.50
|only Rogue
step
talk Andorgos##15502
turnin Deathdealer's Helm##8639
turnin Deathdealer's Spaulders##8641 |goto Ahn'Qiraj/2 59.60,68.20
|only Rogue
step
talk Kandrostrasz##15503
turnin Conqueror's Legguards##8560
turnin Conqueror's Greaves##8559 |goto Ahn'Qiraj/2 59.10,68.70
|only Warrior
step
talk Vethsera##15504
turnin Conqueror's Breastplate##8562 |goto Ahn'Qiraj/2 59.40,68.50
|only Warrior
step
talk Andorgos##15502
turnin Conqueror's Crown##8561
turnin Conqueror's Spaulders##8544 |goto Ahn'Qiraj/2 59.60,68.20
|only Warrior
step
talk Kandrostrasz##15503
turnin Avenger's Legguards##8629
turnin Avenger's Greaves##8655 |goto Ahn'Qiraj/2 59.10,68.70
|only Paladin
step
talk Vethsera##15504
turnin Avenger's Breastplate##8627 |goto Ahn'Qiraj/2 59.40,68.50
|only Paladin
step
talk Andorgos##15502
turnin Avenger's Crown##8628
turnin Avenger's Pauldrons##8630 |goto Ahn'Qiraj/2 59.60,68.20
|only Paladin
step
talk Kandrostrasz##15503
turnin Trousers of the Oracle##8593
turnin Footwraps of the Oracle##8596 |goto Ahn'Qiraj/2 59.10,68.70
|only Priest
step
talk Vethsera##15504
turnin Vestments of the Oracle##8603 |goto Ahn'Qiraj/2 59.40,68.50
|only Priest
step
talk Andorgos##15502
turnin Tiara of the Oracle##8592
turnin Mantle of the Oracle##8594 |goto Ahn'Qiraj/2 59.60,68.20
|only Priest
step
talk Andorgos##15502
turnin Secrets of the Qiraji##8784 |goto Ahn'Qiraj/2 59.60,68.20
|only if haveq(8784)
step
talk Kandrostrasz##15503 |goto Ahn'Qiraj/2 59.20,68.80
Turn in any extra Qiraji Lord's Insginias you have.
turnin Mortal Champions##8595 |or
turnin Mortal Champions##8579
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Auchenai Crypts",{
mapid=256,
achieveid={666},
patch='30008',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Terokkar, Forest"},
description="This guide will walk you through the Auchindoun: Auchenai Crypts dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Mana-Tombs or enter the dungeon with your group |goto Auchenai Crypts/1 44.10,75.10 |c
step
talk Draenei Spirit##54725
accept The Dead Watcher##29590 |goto Auchenai Crypts/1 44.30,72.60
accept The End of the Exarch##29596 |goto Auchenai Crypts/1 44.30,72.60
step
map Auchenai Crypts/1
path follow smart; loop off; ants curved; dist 15
path	44.10,69.50	43.40,54.60	43.50,41.50
path	44.10,27.60	44.50,17.30	Auchenai Crypts/2 22.40,11.90
path	Auchenai Crypts/2 22.80,23.30	Auchenai Crypts/2 29.20,22.80
path	Auchenai Crypts/2 31.60,17.50	Auchenai Crypts/2 41.80,17.60
Follow the path |goto Auchenai Crypts/2 41.80,17.60 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Tormented Soulpriest##54698
accept Raging Spirits##29591 |goto Auchenai Crypts/2 51.00,17.90
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	46.20,23.00	46.20,41.30	46.20,56.90
Follow the path |goto Auchenai Crypts/2 46.20,56.90 < 6
|tip Beware of invisible Raging Souls on the bridge.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shirrak the Dead Watcher##18371
|tip Casters need to stay at max range to minimize casting speed reduction caused by Inhibit Magic.
|tip Attract Magic will Death Grip the party to Shirrak.
Defeat Shirrak the Dead Watcher |scenariogoal 24893 |goto Auchenai Crypts/2 46.20,68.70
stickystart "Spirits"
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	46.20,77.60	46.90,88.00	52.80,88.00
path	58.70,85.80	66.30,88.10	73.60,88.00
path	73.70,78.30
Follow the path |goto Auchenai Crypts/2 73.70,78.30 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Exarch Maladaar##18373
|tip Soul Scream will disorient anyone within 10 yards for 2 seconds.
|tip Stolen Soul makes a copy of a random player, lowering their damage and healing and attacking them for 2 minutes.
|tip Summon Avatar occurs at 25% health. This avatar needs to be picked up and deals heavy physical damage.
Defeat Exarch Maladaar |scenariogoal 1/34430 |goto Auchenai Crypts/2 74.20,49.90
step
label "Spirits"
kill 5 Angered Skeleton##18524+ |q 29591/1
kill 5 Raging Skeleton##18524+ |q 29591/2
kill 3 Auchenai Necromancer##18702+ |q 29591/3
only if haveq(29591)
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	73.60,54.10	73.70,71.20	73.50,87.80
path	64.50,87.70	55.80,87.70	46.50,87.70
path	46.20,71.20	46.20,51.20	46.20,34.70
path	46.30,25.60
Follow the path back to the quest giver |goto Auchenai Crypts/2 46.30,25.60 < 10 |c |noway
talk Tormented Soulpriest##54698
turnin Raging Spirits##29591
|tip This quest requires you to run back to a previous area before you return to the beginning of the instance.
only if haveq(29591)
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	73.60,54.10	73.70,71.20	73.50,87.80
path	64.50,87.70	55.80,87.70	46.50,87.70
path	46.20,71.20	46.20,51.20	46.20,34.70
path	46.30,25.60	42.10,17.60	30.40,17.60
path	Auchenai Crypts/1 44.10,26.30	Auchenai Crypts/1 44.10,57.60
Follow the path to the beginning of the dungeon |goto Auchenai Crypts/1 44.10,57.60 < 30
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(29590) or not completedq(29596)
step
talk Draenei Spirit##54725
turnin The Dead Watcher##29590 |goto Auchenai Crypts 44.30,72.60
turnin The End of the Exarch##29596 |goto Auchenai Crypts 44.30,72.60
only if not completedq(29590) or not completedq(29596)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Mana-Tombs",{
mapid=272,
achieveid={651},
patch='30103',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Terokkar, Forest"},
description="This guide will walk you through the Auchindoun: Mana-Tombs dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Mana-Tombs or enter the dungeon with your group |goto Mana-Tombs/1 33.50,17.30 |c
step
talk Mamdy the "Ologist"##54694
accept Intriguing Specimens##29574 |goto Mana-Tombs 32.70,19.40
only if not completedq(29574)
step
talk Artificer Morphalius##54692
accept Safety is Job One##29573 |goto Mana-Tombs 34.40,19.40
accept Undercutting the Competition##29575 |goto Mana-Tombs 34.40,19.40
only if not completedq(29573) or not completedq(29575)
step
kill Pandemonius##18341
|tip Clear out this room before you pull the boss, they will aggro with him.
|tip When Dark Shell is cast, STOP ATTACKING. You will kill yourself if you don't.
Loot Pandemonius' Essence |q 29574/1 |goto Mana-Tombs 48.20,27.70 |only if haveq(29574)
Defeat Pandemonius |scenariogoal 24894 |goto Mana-Tombs 48.20,27.70
step
map Mana-Tombs/1
path follow smart; loop off; ants curved; dist 15
path	47.00,28.70	55.80,28.80	60.00,33.50
path	60.70,43.70	60.70,52.30	56.00,65.00
Follow the path |goto Mana-Tombs/1 56.00,65.00 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tavarok##18343
|tip Crystal Prison will trap a random player and deal 10% of the maximum health every second for 5 seconds.
|tip Arcing Smash will damage anyone standing in front of him.
Loot Tavarok's Heart |q 29574/2 |goto Mana-Tombs/1 60.60,74.90 |only if haveq(29574)
Defeat Tavarok |scenariogoal 24895 |goto Mana-Tombs/1 61.30,74.00
step
map Mana-Tombs/1
path follow smart; loop off; ants curved; dist 15
path	60.70,74.90	60.80,83.80	50.00,84.30
path	39.20,84.30	32.60,84.00	32.60,74.00
path	32.60,61.20
Follow the path |goto Mana-Tombs/1 32.60,61.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nexus-Prince Shaffar##18344
Loot Shaffar's Wrappings |q 29575/1 |goto Mana-Tombs/1 32.40,50.70 |only if haveq(29575)
Defeat Nexus-Prince Shaffar |scenariogoal 1/34431 |goto Mana-Tombs/1 32.40,50.70
step
map Mana-Tombs/1
path follow smart; loop off; ants curved; dist 15
path	32.50,46.50	32.60,34.60	41.40,34.10
path	38.60,28.60	33.80,25.20
Follow the path |goto Mana-Tombs/1 33.80,25.20 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(29573) or not completedq(29575) or not completedq(29574)
step
talk Artificer Morphalius##54692
turnin Safety is Job One##29573 |goto Mana-Tombs 34.30,19.60
turnin Undercutting the Competition##29575 |goto Mana-Tombs 34.30,19.60
only if not completedq(29573) or not completedq(29575)
step
talk Mamdy the "Ologist"##54694
turnin Intriguing Specimens##29574 |goto Mana-Tombs 32.80,19.40
only if not completedq(29574)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Sethekk Halls",{
mapid=258,
achieveid={653},
patch='40100',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Terokkar, Forest"},
description="This guide will walk you through the Auchindoun: Sethekk Halls dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Escape from Sethekk Halls or enter the dungeon with your group |goto Sethekk Halls/1 73.40,36.50 |c
step
talk Isfar##54840
accept Brother Against Brother##29605 |goto Sethekk Halls 72.20,35.50
accept Terokk's Legacy##29606 |goto Sethekk Halls 72.20,35.50
only if not completedq(29605) or not completedq(29606)
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	73.30,34.80	73.10,28.00	63.40,27.80
path	59.00,38.00	59.00,45.80	54.10,52.10
path	48.70,53.80
Follow the path |goto Sethekk Halls/1 48.70,53.80 < 10
|tip Kill Time-Lost Controllers first. They drop totems that mind control.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Darkweaver Syth##18472
|tip At 90%, 55%, and 15% health, Syth will summon four elementals. AoE these quickly.
|tip Chain Lightning deals AoE damage so try and spread out.
Loot Terokk's Mask |q 29606/1 |goto Sethekk Halls/1 48.60,67.50 |only if haveq(29606)
Defeat Darkweaver Syth |scenariogoal 24889 |goto Sethekk Halls/1 48.60,67.50
step
talk Dealer Vijaad##54847
accept Eyes of Desire##29607 |goto Sethekk Halls 48.30,67.70
only if not completedq(29607)
step
talk Lakka##18956
Tell him: "_I'll have you out of there in just a moment._"
Free Lakka |q 29605/1 |goto Sethekk Halls 50.80,70.80
only if haveq(29605)
stickystart "Serpent"
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	48.60,71.20	48.60,83.30	48.90,95.00
path	Sethekk Halls/2 53.20,94.90	Sethekk Halls/2 53.10,82.50
path	Sethekk Halls/2 44.00,82.40	Sethekk Halls/2 43.10,88.60
path	Sethekk Halls/2 30.10,88.40	Sethekk Halls/2 27.20,80.90
path	Sethekk Halls/2 32.60,71.20	Sethekk Halls/2 32.60,41.60
Follow the path |goto Sethekk Halls/2 32.60,41.60 < 10
|tip Kill Time-Lost Controllers first. They drop totems that mind control.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung()
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	48.60,71.20	48.60,83.30	48.90,95.00
path	Sethekk Halls/2 53.20,94.90	Sethekk Halls/2 53.10,82.50
path	Sethekk Halls/2 44.00,82.40	Sethekk Halls/2 43.10,88.60
path	Sethekk Halls/2 30.10,88.40	Sethekk Halls/2 27.20,80.90
path	Sethekk Halls/2 32.60,71.20
Follow the path |goto Sethekk Halls/2 32.60,71.20 < 10
|tip Kill Time-Lost Controllers first. They drop totems that mind control.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Anzu##23035
|tip At 75% and 35% health, Anzu will become immune and summon his brood. AoE the birds and continue with Anzu.
|tip Paralyzing Screech will stun everyone for 6 seconds.
|tip Dive Causes Anzu to charge a player and knock them back.
|tip Spell Bomb should be dispelled whenever possible.
Defeat Anzu |scenariogoal 24890 |goto Sethekk Halls/2 32.40,56.00
only if heroic_dung()
step
kill Talon King Ikiss##18473
|tip At 80%, 50%, and 25% health, Ikiss will used Arcane Explosion. Hide behind a pillar.
|tip Just before Arcane Explosion is cast, Ikiss will Slow the whole party. Stay close to a pillar. |only if heroic_dung()
Loot Terokk's Quill |q 29606/2 |goto Sethekk Halls/2 32.20,29.50 |only if haveq(29606)
Defeat Talon King Ikiss |scenariogoal 1/34428 |goto Sethekk Halls/2 32.20,29.50
step
label "Serpent"
kill Cobalt Serpent##19428+
|tip Do this as you run through the next part of the dungeon.
collect 3 Cobalt Eye##72480 |q 29607/1
only if haveq(29607)
step
map Sethekk Halls/2
path follow smart; loop off; ants curved; dist 12
path	32.50,27.50	40.70,27.50
path	Sethekk Halls/1 54.30,27.50	Sethekk Halls/1 64.30,27.80	Sethekk Halls/1 72.50,27.90
Follow the path back to the quest giver |goto Sethekk Halls/1 72.50,27.90 < 10 |noway |c
talk Isfar##54840
turnin Brother Against Brother##29605 |goto Sethekk Halls/1 72.20,35.50 |noway
turnin Terokk's Legacy##29606 |goto Sethekk Halls/1 72.20,35.50 |noway
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(29605) or haveq(29606)
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	73.30,34.80	73.10,28.00	63.40,27.80
path	59.00,38.00	59.00,45.80	54.10,52.10
path	48.70,53.80
Follow the path back to the quest giver |goto Sethekk Halls/1 48.70,53.80 < 10 |noway |c
talk Dealer Vijaad##54847
turnin Eyes of Desire##29607 |goto Sethekk Halls 48.10,67.70 |noway
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(29607)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Shadow Labyrinth",{
mapid=260,
achieveid={654},
patch='50004',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Terokkar, Forest"},
description="This guide will walk you through the Auchindoun: Shadow Labyrinth dungeon.",
},[[
step
label "start"
Press _I_ and queue for Shadow Labyrinth or enter the dungeon with your group |goto Shadow Labyrinth/1 22.00,12.40 |c
step
talk Spy Grik'tha##54891
accept Find Spy To'gun##29640 |goto Shadow Labyrinth 22.60,12.50
only if not completedq(29640)
step
talk Field Commander Mahfuun##54890
accept The Codex of Blood##29643 |goto Shadow Labyrinth 21.30,13.10
accept Ambassador Hellmaw##29645 |goto Shadow Labyrinth 21.30,13.10
only if not completedq(29643) or not completedq(29645)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 15
path	21.90,14.90	28.20,20.30	35.40,22.60
path	38.90,32.60	34.00,39.10
Follow the path |goto Shadow Labyrinth/1 34.00,39.10 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 12 Cabal Ritualist##18794+ |q 29645/1 |goto Shadow Labyrinth/1 29.50,39.10
|tip Kill all the Ritualists in this room to activate the boss.
kill Ambassador Hellmaw##18731 |goto Shadow Labyrinth/1 21.40,39.10
|tip Stay behind Hellmaw to avoid damage from Corrosive Acid.
|tip Fear will periodically be cast, Fearing the party for 6 seconds.
Defeat Ambassador Hellmaw |scenariogoal 24863 |goto Shadow Labyrinth/1 29.50,39.10
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	19.20,39.20	14.50,31.40	17.00,22.40
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Spy To'gun##18891
turnin Find Spy To'gun##29640 |goto Shadow Labyrinth/1 17.00,22.40 |noway
accept The Soul Devices##29641 |goto Shadow Labyrinth/1 17.00,22.40 |noway
only if not completedq(29641)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	16.30,23.50	14.50,31.40	19.20,39.20
path	26.60,45.60	26.50,51.30
Follow the path |goto Shadow Labyrinth/1 26.50,51.30 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
stickystart "souldevice"
step
kill Blackheart the Inciter##18667
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Incite Chaos will cause all party members to attack each other for 30 seconds.
|tip War Stomp will deal damage and knock back anyone within 20 yards of Blackheart.
Defeat Blackheart the Inciter |scenariogoal 24868 |goto Shadow Labyrinth/1 26.20,68.20
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	26.50,72.30	27.00,88.10	34.00,88.10
path	46.00,88.10	53.00,87.90	53.40,78.80
Follow the path |goto Shadow Labyrinth/1 53.40,78.80 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grandmaster Vorpil##18732
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Draw Shadows will teleport everyone to Vorpil's platform into Rain of Fire, move out.
|tip Void Travelers will be summoned by portals, kill them before they reach Vorpil.
|tip Vorpil will cast Banish on a player randomly |only if heroic_dung()
Defeat Grandmaster Vorpil |scenariogoal 24866 |goto Shadow Labyrinth/1 53.30,56.50
step
click Codex of Blood##6892
turnin The Codex of Blood##29643 |goto Shadow Labyrinth/1 53.30,59.00
accept Into the Heart of the Labyrinth##29644 |goto Shadow Labyrinth/1 53.30,59.00
only if not completedq(29644)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	53.30,52.70	53.30,39.20	59.40,39.20
Follow the path |goto Shadow Labyrinth/1 59.40,39.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Murmur##18708
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Murmur's Touch will deal damage to nearby party memebers, so stay spread out. |only if heroic_dung()
|tip Thundering Storm will hit all players if they are more than 25 yards away.
Defeat Murmur |scenariogoal 1/34420 |goto Shadow Labyrinth/1 80.80,39.10
step
label "souldevice"
click Soul Device##182940
|tip Collect these as you traverse the Shadow Labyrinth.
collect 5 Soul Device##27480 |q 29641/1
only if haveq(29641)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	77.80,39.10	67.60,39.00	59.30,38.80
path	53.30,39.20	53.30,57.70	53.30,68.20
path	53.30,86.20	46.00,88.10	36.00,87.90
path	27.80,87.90	26.60,68.30	26.60,45.30
path	34.40,39.20	38.70,30.70	34.10,22.30
path	23.30,17.80	22.00,13.90
Follow the path back to the start of the dungeon |goto Shadow Labyrinth/1 22.00,13.90 < 40
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
talk Field Commander Mahfuun##54890
turnin Into the Heart of the Labyrinth##29644 |goto Shadow Labyrinth/1 21.30,13.10 |noway
turnin Ambassador Hellmaw##29645 |goto Shadow Labyrinth/1 21.30,13.10 |noway
only if haveq(29644) or haveq(29645)
step
talk Spy Grik'tha##54891
turnin The Soul Devices##29641 |goto Shadow Labyrinth/1 22.60,12.50
only if haveq(29641)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Caverns of Time: The Black Morass",{
mapid=273,
achieveid={655},
patch='40001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"Opening, Dark, Portal, BM, CoT, Tanaris"},
description="This guide will walk you through the Cavern's of Time: Opening the Dark Portal dungeon.",
},[[
step
label "start"
Press _I_ and queue for Caverns of Time: Opening the Dark Portal or enter the dungeon with your group |goto The Black Morass/0 51.70,0.50 |c
step
talk Sa'at##20201
accept The Opening of the Dark Portal##10297 |goto The Black Morass 49.30,6.40
collect Chrono-Beacon##24289
step
Protect Medivh while he attempts to open the Dark Portal.
|tip If his shield gets too low you will fail.
|tip Monsters will appear randomly in the swamp out of yellow portals.
|tip To stop the flow of monsters you have to kill the Rift Lords summmoning the portals.
kill Rift Lord##17839+
|tip Every 6 waves a boss will spawn. Simply kill these like you did the Rift Lords.
confirm
step
Wave 6
kill Chrono Lord Deja##17879
|tip Arcane Blast deals arcane damage and knocks a player back.
|tip Time Lapse slows a players attack and movement speed, dispel.
|tip Arcane Discharge deals arcane damage to everyone within 50 yards.
|tip Attraction pulls all players within 50 yards to Deja.
Defeat Chrono Lord Deja |scenariogoal 24869 |goto The Black Morass/0 48.60,73.60
step
Continue to protect Medivh while he attempts to open the Dark Portal.
|tip If his shield gets too low you will fail
|tip Monsters will appear randomly in the swamp out of yellow portals.
|tip To stop the flow of monsters you have to kill the Rift Lords summmoning the portals.
kill Rift Lord##17839+
confirm
step
Wave 12
kill Temporus##17880
|tip Hasten increases Temporus' attack speed and movement speed, dispel quickly.
|tip Wing Buffet deals damage and knocks back anyone within 15 yards.
|tip Stop casting when Spell Reflection is active.
Defeat Temporus |scenariogoal 24870 |goto The Black Morass/0 48.60,73.60
step
Continue to protect Medivh while he attempts to open the Dark Portal.
|tip If his shield gets too low you will fail,
|tip Monsters will appear randomly in the swamp out of yellow portals.
|tip To stop the flow of monsters you have to kill the Rift Lords summmoning the portals.
kill Rift Lord##17839+
confirm
step
Wave 18
kill Aeonus##17881+
|tip Sand Breath deals damage and slows anyone in front of Aeonus.
|tip Cleave deals damage to anyone in front of Aeonus.
|tip Enrage increases Aeonus' attack speed. Save a cooldown for this.
Defeat Aeonus |scenariogoal 1/34422 |goto The Black Morass/0 48.60,73.60
Open the Dark Portal |q 10297/1 |only if haveq(10297) |goto The Black Morass/0 48.90,71.80
step
talk Sa'at##20201
turnin The Opening of the Dark Portal##10297 |goto The Black Morass/0 49.30,6.50
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Caverns of Time: Escape from Durnholde Keep",{
mapid=274,
achieveid={652},
patch='30302',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"EDK, DK, CoT, Tanaris"},
description="This guide will walk you through the Caverns of Time: Escape from Durnholde Keep dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Escape from Durnholde Keep or enter the dungeon with your group |goto Old Hillsbrad Foothills/0 23.20,24.80 |c
step
map Old Hillsbrad Foothills/0
path follow smart; loop off; ants curved; dist 15
path	23.20,24.80	24.00,28.90	26.20,32.20
path	26.70,38.70	25.80,43.90	27.50,47.00
Follow the path |goto Old Hillsbrad Foothills/0 27.50,47.00 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Erozion##18723
accept Taretha's Diversion##29598 |goto Old Hillsbrad Foothills 28.90,48.30 |only if not completedq(29598)
collect Pack of Incendiary Bombs##25853 |goto Old Hillsbrad Foothills 28.90,48.30
step
talk Brazen##18725 |goto Old Hillsbrad Foothills 29.20,47.90
Tell him: "_I'm ready to go to Durnholde Keep._" |goto Old Hillsbrad Foothills 69.30,71.50 < 5
confirm
step
map Old Hillsbrad Foothills/0
path follow smart; loop off; ants curved; dist 15
path	69.30,71.60	70.40,67.40	72.50,63.30
path	74.30,63.20	76.30,61.80	78.00,62.20
Follow the path |goto Old Hillsbrad Foothills/0 78.00,62.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Barrels##2886 |goto Old Hillsbrad Foothills/0 67.90,59.70 < 10
|tip You will need to set all 5 bombs inside the barrels.
Location of Barrel 1 |goto Old Hillsbrad Foothills/0 77.50,65.70 < 10
Location of Barrel 2 |goto Old Hillsbrad Foothills/0 76.20,68.10 < 10
Location of Barrel 3 |goto Old Hillsbrad Foothills/0 74.30,68.20 < 10
Location of Barrel 4 |goto Old Hillsbrad Foothills/0 68.90,62.10 < 10
Location of Barrel 5 |goto Old Hillsbrad Foothills/0 68.40,59.10 < 10
Set 5 Internment Lodges on Fire |q 29598/1 |only if haveq(29598)
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm |only if not haveq(29598) or completedq(29598)
step
kill Lieutenant Drake##17848
|tip Lieutenant Drake will come down these stairs when the building are on fire.
Defeat Lieutenant Drake |scenariogoal 24891 |goto Old Hillsbrad Foothills/0 75.70,64.80
step
map Old Hillsbrad Foothills/0
path follow smart; loop off; ants curved; dist 10
path	75.70,64.50	76.30,63.00	74.50,62.80
path	73.20,61.30	74.00,59.10	75.00,59.50
path	74.60,58.40	74.50,57.70
Follow the path |goto Old Hillsbrad Foothills/0 74.50,57.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Thrall##17876
|tip He is in the basement.
turnin Taretha's Diversion##29598 |goto Old Hillsbrad Foothills/0 74.50,57.70
accept Escape from Durnholde##29599 |goto Old Hillsbrad Foothills/0 74.50,57.70
only if not completedq(29599)
step
talk Thrall##17876 |goto Old Hillsbrad Foothills/0 74.50,57.70
Tell him: "_We are ready to get you out of here Thrall. Let's go!_"
|tip Make sure everyone has the quest. You cannot pick it up after starting the event.
confirm
step
kill Captain Skarloc##17862
|tip Follow Thrall, he will take you to Skarloc
Defeat Captain Skarloc |scenariogoal 24892 |goto Old Hillsbrad Foothills/0 69.60,68.40
step
talk Thrall##17876
|tip Talk to Thrall after killing the boss.
Tell him: "_Taretha cannot see you, Thrall._"
confirm
step
talk Thrall##17876 |goto Old Hillsbrad Foothills/0 52.80,41.20
|tip Follow Thrall until he stops near Tarren Mill, you will have to fight guards along the way.
Tell him: "_We're ready, Thrall._"
confirm
step
talk Taretha##18887 |goto Old Hillsbrad Foothills/0 51.30,29.80
|tip Follow Thrall until he comes upstairs here.
Tell her: "_Strange wizard?_"
confirm
step
kill Epoch Hunter##18096
|tip Follow Thrall outside and you will have to fight a few waves of dragonkin. The Boss will come down to fight once you have killed enough mobs.
Defeat Epoch Hunter |scenariogoal 1/34429 |goto Old Hillsbrad Foothills/0 50.20,31.50
Fulfill Thrall's Destiny |q 29599/1 |goto Old Hillsbrad Foothills/0 50.20,31.50 |only if haveq(29599)
|tip You will have to wait a short time for the dialogue to complete
step
talk Erozion##18723
turnin Escape from Durnholde##29599 |goto Old Hillsbrad Foothills/0 50.30,30.90
only if haveq(29599)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Slave Pens",{
mapid=265,
achieveid={649},
patch='40001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SP, CR, Zangarmarsh"},
description="This guide will walk you through the Coilfang Reservoir: Slave Pens dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Slave Pens or enter the dungeon with your group |goto The Slave Pens/1 20.00,13.40 |c
step
talk Watcher Jhang##54667
accept Lost in Action##29563 |goto The Slave Pens 18.90,11.30
accept The Heart of the Matter##29565 |goto The Slave Pens 18.90,11.30
only if not completedq(29563) or not completedq(29565)
step
talk Nahuud##54668
accept A Brother Betrayed##29564 |goto The Slave Pens 17.90,12.10
only if not completedq(29564)
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	16.90,15.10	10.20,29.80	6.30,45.90
path	8.70,53.20	13.90,51.80	23.80,50.30
path	33.50,50.70	41.30,52.80	42.40,41.90
path	40.30,34.80	42.80,21.30
Follow the path |goto The Slave Pens/1 42.80,21.30 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mennu the Betrayer##17941
|tip Killing the Corrupted Nova Totem is top priority, followed by Mennu's Healing Ward.
Defeat Mennu the Betrayer |scenariogoal 24907 |goto The Slave Pens/1 48.80,24.30
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	48.80,23.60	48.80,13.00	45.50,22.10
path	45.30,35.90	48.80,44.20	48.80,53.80
Follow the path |goto The Slave Pens/1 48.80,53.80 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Jump down here |goto The Slave Pens/1 52.20,65.40 < 5
confirm
step
talk Weeder Greenthumb##17890
Discover Weeder Greenthumb |q 29563/2 |goto The Slave Pens/1 48.90,83.40
only if haveq(29563)
step
map The Slave Pens/1
path follow loose; loop off; ants curved; dist 15
path	50.00,66.60	48.80,71.00	51.30,75.30
path	55.10,74.20	57.20,61.20	58.90,53.20
Follow the path |goto The Slave Pens/1 58.90,53.20 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Rokmar the Crackler##17991
|tip Grievous Wound will bleed all party members until they are healed to full health.
|tip Frenzy causes Rokmar to gain increased physical damage and 60% increased attack speed.
Loot The Invader's Claw |q 29565/1 |only if haveq(29565)
Defeat Rokmar the Crackler |scenariogoal 24908 |goto The Slave Pens/1 57.30,45.40
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	59.40,48.60	67.50,45.50	74.70,51.00
path	88.00,47.70	90.50,53.30
Follow the path |goto The Slave Pens/1 90.50,53.30 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Naturalist Bite##17893
Discover Naturalist Bite |q 29563/1 |goto The Slave Pens/1 95.70,66.20
only if haveq(29563)
step
talk Naturalist Bite##17893
|tip Be ready to fight a couple mobs.
kill Coilfang Champion##17957+, Coilfang Enchantress##17961+
Talk to Naturalist Bite
Tell him: "_Naturalist, please grant me your boon_"
Receive the Mark of Bite |havebuff Mark of Bite##34906 |goto The Slave Pens/1 95.70,66.20
step
kill Quagmirran##17942
|tip Avoid standing in front of Quagmirran or you will be hit with Acid Spray and Cleave.
|tip Poison Bolt Volley Deals nature damage to all party members.
|tip Uppercut deals physical damage and knocked the affected player up in the air.
Loot The Slave Master's Eye |q 29565/2 |goto The Slave Pens 86.20,67.90 |only if haveq(29565)
Defeat Quagmirran |scenariogoal 1/34433 |goto The Slave Pens 86.20,67.90
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	87.90,62.00	90.50,52.90	86.60,48.40
path	77.00,50.40	67.70,47.70	59.10,49.30
path	52.30,48.80	45.00,48.10	39.00,54.20
path	29.30,50.20	17.60,50.80	7.50,52.80
path	6.90,42.50	11.10,27.20	17.90,12.20
Follow the path back to the beginning of the dungeon |goto The Slave Pens/1 17.90,12.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Nahuud##54668
turnin A Brother Betrayed##29564 |goto The Slave Pens 17.90,12.20
|tip You can also Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
only if not completedq(29564)
step
talk Watcher Jhang##54667
turnin Lost in Action##29563 |goto The Slave Pens 18.80,11.30
turnin The Heart of the Matter##29565 |goto The Slave Pens 18.80,11.30
only if not completedq(29563) or not completedq(29565)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: The Steamvault",{
mapid=263,
achieveid={656},
patch='40300',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"SV, CR, Zangarmarsh"},
description="This guide will walk you through the Coilfang Reservoir: The Steamvault dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Steamvault or enter the dungeon with your group |goto The Steamvault/1 17.60,29.80 |c
step
talk Watcher Jhang##54848
accept A Proper Fate##29613 |goto The Steamvault 17.90,27.30
step
talk Naturalist Bite##54849
accept Containment is Key##29614 |goto The Steamvault 17.50,25.90
step
talk Windcaller Claw##54851
accept Windcaller Claw and the Water Thief##29615 |goto The Steamvault 18.90,27.80
stickystart "Kills"
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	20.10,28.00	25.20,27.60	30.80,29.40
path	32.30,39.60	38.40,34.40	44.90,28.40
path	49.40,23.70
Follow the path |goto The Steamvault/1 49.40,23.70 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hydromancer Thespia##17797
|tip Enveloping Winds traps a player in a cyclone, stunning them for 6 seconds.
|tip Lightning Cloud deals nature damage to anyone standing in the cloud. Move out.
|tip Lung Burst deals nature damage every 2 seconds for 10 seconds. Dispel whenever possible.
|tip Water Elementals will spawn, Interrupt Water Bolt Volley and kill them quickly.
Defeat Hydromancer Thespia |scenariogoal 24884 |goto The Steamvault 54.30,12.40
step
click Main Chambers Access Panel##7147 |goto The Steamvault 54.20,10.60
You hear a faint echo...
confirm
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	53.70,17.70	46.70,24.90	42.40,34.00
path	44.90,40.40	56.00,45.80	50.60,55.10
path	48.20,61.50	41.10,67.30
Follow the path |goto The Steamvault/1 41.10,67.30 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mekgineer Steamrigger##17796
|tip Electrified Net immobilizes and deals nature damage over 6 seconds.
|tip Super Shrink Ray is a rontal cone attack that reduces damage dealt by 35%. Avoid standing in front.
|tip Spread out to avoid multiple players being hit by the Saw Blade.
|tip Mechanics spawn in 25% health intervals and heal the boss. Kill them quickly.
Loot the Irradiated Gear |q 29614/3 |only if haveq(29614)
Defeat Mekgineer Steamrigger |scenariogoal 24885 |goto The Steamvault 33.60,81.20
step
click Main Chambers Access Panel##7147 |goto The Steamvault 31.80,84.00
You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
confirm
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	32.90,82.40	39.90,68.40	46.60,66.50
path	49.50,56.80	56.70,43.50	68.60,43.40
Follow the path |goto The Steamvault/1 68.60,43.40 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warlord Kalithresh##17798
|tip When Kalithresh channels on a Naga Distiller, kill it within 12 seconds or he will Enrage.
|tip Stop casting during Spell Reflection.
|tip Impale bleeds a player over 12 seconds.
Defeat Warlord Kalithresh |scenariogoal 3248 |goto The Steamvault/1 78.70,43.30
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	76.50,43.50	67.10,43.50	48.00,42.60
path	42.20,32.90	32.40,39.50	28.10,28.40
path	23.20,28.10
Follow the path |goto The Steamvault/1 23.20,28.10 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Kills"
kill 3 Bog Overlord##21694+|q 29614/1
kill 6 Coilfang Leper##21338+ |q 29614/2
only if haveq(29614)
step
talk Windcaller Claw##54851
turnin Windcaller Claw and the Water Thief##29615 |goto The Steamvault/1 18.80,27.60
only if haveq(29615)
step
talk Watcher Jhang##54848
turnin A Proper Fate##29613 |goto The Steamvault/1 18.00,27.20
only if haveq(29613)
step
talk Naturalist Bite##54849
turnin Containment is Key##29614 |goto The Steamvault/1 17.60,25.90
only if haveq(29614)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Underbog",{
mapid=262,
achieveid={650},
patch='30009',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"UB, CR, Zangarmarsh"},
description="This guide will walk you through the Coilfang Reservoir: Underbog dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Underbog or enter the dungeon with your group |goto The Underbog/1 29.70,67.90 |c
step
talk Naturalist Bite##54678
accept A Necessary Evil##29568 |goto The Underbog 29.50,64.70
step
talk Watcher Jhang##54675
accept Rescuing the Expedition##29570 |goto The Underbog 30.90,65.30
step
talk T'shu##54674
accept Stalk the Stalker##29567 |goto The Underbog 31.50,65.50
accept Bring Me A Shrubbery!##29691 |goto The Underbog 31.50,65.50
stickystart "sanguinehibiscus"
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	31.90,62.50	37.00,60.30	44.20,61.40
path	51.50,69.20	56.90,82.00	59.10,87.80
path	56.20,89.70
Follow the path |goto The Underbog/1 56.20,89.70
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hungarfen##17770
|tip Stay away from Underbog Mushrooms. They explode after 20 seconds leaving a nasty DoT.
|tip Foul Spores is cast at 20% health, leeching health from anyone within 15 yards.
Defeat Hungarfen |scenariogoal 24904 |goto The Underbog/1 70.20,91.40
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	70.30,87.70	70.20,76.50	61.40,68.10
path	59.80,56.20	70.70,55.90	74.40,43.90
path	68.50,36.60	69.10,30.70
Follow the path |goto The Underbog/1 69.10,30.70
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ghaz'an##18105
|tip Stand off to Ghaz'an's sides or you will be hit with Acid Breath or Tail Sweep.
Defeat Ghaz'an |scenariogoal 24905 |goto The Underbog/1 78.30,28.00
step
Jump down in the water here  |goto The Underbog/1 78.90,24.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Swim across the water and jump down here |goto The Underbog/1 79.60,15.20 < 5
confirm
step
talk Earthbinder Rayge##17885
Discover Earthbinder Rayge |q 29570/1 |goto The Underbog/1 67.40,21.30
only if haveq(29570)
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	79.70,11.60	71.60,14.10	62.00,20.00
path	57.10,26.10	45.90,28.10
Follow the path |goto The Underbog/1 45.90,28.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Swamplord Musel'ek##17826, Claw##17827
|tip Spread out to minimize damage from Volley.
|tip Knock Away will knock the targeted player back and deal physical damage.
Defeat Swamplord Musel'ek and Claw |scenariogoal 24906 |goto The Underbog/1 41.50,25.40
step
Talk to Windcaller Claw
Discover Windcaller Claw |q 29570/2 |goto The Underbog/1 40.70,21.60
only if haveq(29570)
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	41.50,28.30	40.60,42.50	35.80,43.10
path	30.80,34.80	26.90,36.10
Follow the path |goto The Underbog/1 26.90,36.10 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Black Stalker##17882
|tip Stay spread out to minimize Chain Lightning damage.
|tip If you are affected by Static Charge, move away from allies or they will take damage too.
Loot the Black Stalker's Brain |q 29567/1 |goto The Underbog 25.90,45.50 |only if haveq(29567)
Defeat The Black Stalker |scenariogoal 1/34432 |goto The Underbog 25.90,45.50
step
label "sanguinehibiscus"
click Sanguine Hibiscus##183385
|tip These can be found throughout the dungeon.
collect 5 Sanguine Hibiscus##24246 |q 29691/1
only if haveq(29691)
step
talk Naturalist Bite##54678
turnin A Necessary Evil##29568 |goto The Underbog 29.50,64.50
step
talk Watcher Jhang##54675
turnin Rescuing the Expedition##29570 |goto The Underbog 30.80,65.30
step
talk T'shu##54674
turnin Stalk the Stalker##29567 |goto The Underbog 31.60,65.50
turnin Bring Me A Shrubbery!##29691 |goto The Underbog 31.60,65.50
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: The Blood Furnace",{
mapid=261,
achieveid={648},
patch='30003',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"HC, BF, HFC, HFP, Peninsula"},
description="This guide will walk you through the Hellfire Citadel: The Blood Furnace dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Blood Furnace or enter the dungeon with your group |goto The Blood Furnace/1 47.80,90.60 |c
step
talk Caza'rez##54636
accept Make Them Bleed##29535 |goto The Blood Furnace 51.40,90.00
accept Heart of Rage##29536 |goto The Blood Furnace 51.40,90.00
accept Mind the Gap##29537 |goto The Blood Furnace 51.40,90.00
only if not completedq(29535) or not completedq(29536) or not completedq(29537)
stickystart "felorcblood"
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	52.00,90.00	58.20,89.50	58.10,76.60
path	58.10,66.40	58.10,56.10	53.10,53.00
path	49.70,46.80	47.30,41.20	45.00,41.20
Follow the path |goto The Blood Furnace/1 45.00,41.20 < 6
|tip Be wary of stealthed Laughing Skull Rogues
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Maker##17381
|tip Domination mind controls a party member for 10 seconds, crowd control this party member.
|tip Exploding Breaker deals nature damage to the player targeted and anyone within 8 yards. Stay spread out to minimize party damage.
Loot the Fel Infusion Rod |q 29535/2 |goto The Blood Furnace 36.60,40.70 |only if haveq(29535)
Defeat the Maker |scenariogoal 24911 |goto The Blood Furnace 36.60,40.70
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	35.80,41.30	31.70,42.10	30.80,30.60
path	31.90,21.10	35.50,22.00
Follow the path |goto The Blood Furnace/1 35.50,22.00 < 5
|tip Be wary of stealthed Laughing Skull Rogues
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Cell Door Lever##181982
|tip This will start the boss fight. You will have 4 cell doors open and have to fight Orcs until all 4 waves are complete.
kill Broggok##17380
|tip DPS should stay behind Broggok to avoid damage from Slime Spray.
Defeat Broggok |scenariogoal 24913 |goto The Blood Furnace/1 43.40,21.90
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	44.70,22.00	58.10,21.40	58.60,27.50
path	62.60,29.00	65.80,33.20	67.80,41.00
path	65.40,41.20
Follow the path |goto The Blood Furnace/1 65.40,41.20 < 5
|tip Be wary of stealthed Laughing Skull Rogues
|tip Opening the world map will display an ant trail guiding you through the current floor.
Investigate The Blood Furnace |q 29536/1 |only if haveq(29536)
confirm
step
kill Shadowmoon Channeler##17653
|tip After the Channelers die, Keli'dan will activate.
kill Keli'dan the Breaker##17377
|tip Dispel Corruption whenever possible. When Keli'dan becomes immune, he will kneel down and cast Burning Nova. Run at least 20 yards away.
Defeat the Shadowmoon Channeler |scenariogoal 3239 |goto The Blood Furnace/1 59.20,42.50
step
label "felorcblood"
kill Laughing Skull Enforcer##17370+, Laughing Skull Rogue##17491+
kill Shadowmoon Warlock##17371+, Shadowmoon Adept##17397+, Shadowmoon Summoner##17395+
Loot 10 Fel Orc Blood Vials |q 29535/1
only if haveq(29535)
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	62.30,47.20	63.40,63.40	63.50,78.40
path	62.80,90.60	55.50,89.70
Follow the path |goto The Blood Furnace/1 55.50,89.70 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(29535) or not completedq(29536) or not completedq(29537)
step
talk Caza'rez##54636
turnin Make Them Bleed##29535 |goto The Blood Furnace/1 51.40,90.10
turnin Heart of Rage##29536 |goto The Blood Furnace/1 51.40,90.10
turnin Mind the Gap##29537 |goto The Blood Furnace/1 51.40,90.10
only if not completedq(29535) or not completedq(29536) or not completedq(29537)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Hellfire Ramparts",{
mapid=347,
achieveid={647},
patch='30003',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"HC, HFR, Ramps, HFC, HFP, Peninsula"},
description="This guide will walk you through the Hellfire Citadel: Hellfire Ramparts dungeon.",
},[[
step
Enter the "Hellfire Citadel: Hellfire Ramparts" Dungeon |goto Hellfire Ramparts/1 50.10,70.40 |c
|tip Form a group or queue for it through the Group Finder tool.
step
talk Stone Guard Stok'ton##54606
accept War on the Ramparts##29527 |goto Hellfire Ramparts/1 48.50,68.10 |only if not haveq(29527) or not completedq(29527)
accept Demons in the Citadel##29530 |goto Hellfire Ramparts/1 48.50,68.10 |only if not haveq(29530) or not completedq(29530)
accept Hitting Them Where It Hurts##29593 |goto Hellfire Ramparts/1 48.50,68.10 |only if not haveq(29593) or not completedq(29593)
|only if not completedallq(29527,29530,29593)
stickystart "Collect_Hellfire_Supplies"
step
map Hellfire Ramparts/1
path follow smart; loop off; ants curved; dist 20
path	47.00,64.90	45.50,55.30	51.70,46.90
path	59.50,48.50	65.60,55.40	72.00,52.40
path	75.90,43.70
kill Watchkeeper Gargolmar##17306 |scenariogoal 1/24926 |goto Hellfire Ramparts/1 76.90,34.40
|tip Kill the Hellfire Watchers first interrupting their Heal spell when cast.
|tip Stay spread out at least 10 yards apart to minimize damage from Surge.
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
collect Gargolmar's Hand##23881 |q 29527/1 |goto Hellfire Ramparts/1 76.90,34.40
|tip Loot it from Watchkeeper Gargolmar's corpse.
|only if haveq(29527)
step
map Hellfire Ramparts/1
path follow smart; loop off; ants curved; dist 20
path	74.80,31.50	69.70,30.50	65.00,39.80
path	69.70,41.70	68.40,48.10	65.10,45.20
path	59.90,45.90	56.00,52.60	57.20,57.60
path	54.30,61.20	51.50,56.90	47.00,43.70
path	43.30,31.90
kill Omor the Unscarred##17308 |scenariogoal 1/18536 |goto Hellfire Ramparts/1 39.30,21.20
|tip Treacherous Aura will do shadow damage to anyone within 15 yards every second for the duration of the encounter.
|tip Periodically Omor will summon a Fiendish Hound to attack players.
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
collect Omor's Hoof##23886 |q 29530/1 |goto Hellfire Ramparts/1 39.30,21.20
|tip Loot it from Omor the Unscarred's corpse.
|only if haveq(29530)
step
label "Collect_Hellfire_Supplies"
click Hellfire Supplies##209348+
|tip They look like large piles of wooden crates with red Horde symbols on the side all over the lower dungeon.
collect 3 Hellfire Supplies##72160 |q 29593/1
|only if haveq(29593)
step
map Hellfire Ramparts/1
path follow smart; loop off; ants curved; dist 20
path	40.90,25.00	45.70,39.50	51.90,56.40
path	44.00,68.20
Slay Vazruden the Herald and Nazan |scenariogoal 1/34435 |goto Hellfire Ramparts/1 36.20,79.30
|tip Players targeted by Vazruden's Mark should keep moving to avoid being hit by fireballs.
|tip When Vazruden dies, Nazan lands and attacks.
|tip Avoid standing in front of Nazan or you will be hit by Cone of Fire.
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
collect Nazan's Head##23901 |q 29527/2 |goto Hellfire Ramparts/1 36.20,79.30
|tip Loot it from Nazan's corpse.
|only if haveq(29527)
step
talk Stone Guard Stok'ton##54606
|tip Jump down back on the bridge to return to the entrance.
turnin War on the Ramparts##29527 |goto Hellfire Ramparts/1 48.50,68.10 |only if haveq(29527) and not completedq(29527)
turnin Demons in the Citadel##29530 |goto Hellfire Ramparts/1 48.50,68.10 |only if haveq(29530) and not completedq(29530)
turnin Hitting Them Where It Hurts##29593 |goto Hellfire Ramparts/1 48.50,68.10 |only if haveq(29593) and not completedq(29593)
|only if not completedallq(29527,29530,29593) and (haveq(29527) or haveq(29530) or haveq(29593))
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Shattered Halls",{
mapid=246,
achieveid={657},
patch='40300',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"HC, SH, HFP, Peninsula"},
description="This guide will walk you through the Hellfire Citadel: Shattered Halls dungeon.",
},[[
step
label "start"
Press _I_ and queue for Shattered Halls or enter the dungeon with your group |goto The Shattered Halls/1 61.10,92.80 |c
step
talk Caza'rez##54932
accept Honor the Dying##29651 |goto The Shattered Halls 58.60,88.50
only if not completedq(29651)
step
talk Stone Guard Stok'ton##54931
accept Fel Ember##29650 |goto The Shattered Halls 58.60,88.50
accept A Very Special Cloth##29655 |goto The Shattered Halls 58.60,88.50
accept The Will of the Warchief##29653 |goto The Shattered Halls 58.60,88.50
only if not completedq(29650) or not completedq(29655) or not completedq(29653)
stickystart "Kills"
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	59.20,88.40	59.00,78.50	55.10,77.20
path	46.90,77.10	34.60,77.20	34.40,69.70
path	38.50,69.70	42.80,65.60	37.50,61.70
Follow the path |goto The Shattered Halls/1 37.50,61.70 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grand Warlock Nethekurse##16807
|tip Shadow Cleave will cleave up to 3 nearby targets.
|tip Death Coil fears a player for 4 seconds and deals shadow damage.
|tip Move out of the Lesser Shadow Fissures immediately, they deal shadow damage.
|tip At 25% health, Dark Spin deals physical damage to anyone within 5 yards and shadow damage to everyone. Kill him quickly.
collect 1 Grand Warlock's Amulet##23735 |only if haveq(29650)
Defeat Grand Warlock Nethekurse |scenariogoal 24864 |goto The Shattered Halls/1 34.60,62.10
step
Use your Grand Warlock's Amulet next to this fire |use Grand Warlock's Amulet##23735
Create the Fel Ember |q 29650/1 |goto The Shattered Halls/1 31.90,60.60
only if haveq(29650)
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	34.40,59.00	34.10,52.60	29.60,49.70
path	29.60,37.00	29.60,18.70
Follow the path |goto The Shattered Halls/1 29.60,18.70 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Blood Guard Porung##20923
|tip Cleave deals physical damage to anyone in front of Porung.
Defeat Blood Guard Porung |scenariogoal 24867 |goto The Shattered Halls/1 29.70,14.70
only if heroic_dung()
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	29.80,14.20	36.50,14.00	45.40,13.90
path	53.60,14.60	53.90,24.60
Follow the path |goto The Shattered Halls/1 53.90,24.60 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	34.40,59.00	34.10,52.60	29.60,49.70
path	29.60,37.00	29.60,18.70	29.80,14.20
path	36.50,14.00	45.40,13.90	53.60,14.60
path	53.90,24.60
Follow the path |goto The Shattered Halls/1 53.90,24.60 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung()
step
kill Warbringer O'mrogg##16809
|tip O'mrogg chooses a random target and applies threat to them, dealing damage.
|tip Fears all nearby players for 3 seconds.
|tip Burning Maul adds fire damage to his attacks for 18 seconds. Save a cooldown for this.
|tip Blast Wave deals fire damage to anyone nearby and slows movement speed.
Loot O'mrogg's Warcloth |q 29655/1 |only if haveq(29655)
Defeat Warbringer O'mrogg |scenariogoal 24865 |goto The Shattered Halls/1 53.90,34.10
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	56.60,34.30	59.00,34.40	66.70,34.90
path	67.20,46.70
Follow the path |goto The Shattered Halls/1 67.20,46.70 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warchief Kargath Bladefist##16808
|tip Sweeping Strikes causes the next 5 attacks to hit a nearby player.
|tip Blade Dance deals physical damage to random players in the room. Spread out.
|tip Charges a random player |only if heroic_dung()
|tip Bladefist summons random reinforcements that need to be picked up by the tank and killed.
Loot Warchief Kargath's Fist |q 29653/1 |only if haveq(29653)
Defeat Warchief Kargath Bladefist |scenariogoal 1/34421 |goto The Shattered Halls/1 67.80,55.30
step
label "Kills"
kill 4 Shattered Hand Legionnaire##16700+ |q 29651/1
kill 2 Shattered Hand Champion##17671+ |q 29651/3
kill 2 Shattered Hand Centurion##17465+ |q 29651/2
only if haveq(29651)
step
talk Stone Guard Stok'ton##54931
turnin Honor the Dying##29651 |goto The Shattered Halls/1 67.20,51.80
turnin Fel Ember##29650 |goto The Shattered Halls/1 67.20,51.80
turnin A Very Special Cloth##29655 |goto The Shattered Halls/1 67.20,51.80
turnin The Will of the Warchief##29653 |goto The Shattered Halls/1 67.20,51.80
only if haveq(29651) or haveq(29650) or haveq(29655) or haveq(29653)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Magister's Terrace",{
mapid=348,
achieveid={661},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"MT, Isle, Quel'Danas"},
description="This guide will walk you through the Magisters' Terrace dungeon.",
},[[
step
label "start"
Press _I_ and queue for Magister's Terrace or enter the dungeon with your group |goto Magisters' Terrace/2 42.50,90.00 |c
step
talk Exarch Larethor##55007
accept Severed Communications##29684 |goto Magisters' Terrace/2 42.60,87.20
accept A Radical Notion##29686 |goto Magisters' Terrace/2 42.60,87.20
accept Twisted Associations##29687 |goto Magisters' Terrace/2 42.60,87.20
only if not completedq(29684) or not completedq(29686) or not completedq(29687)
step
map Magisters' Terrace/2
path follow smart; loop off; ants curved; dist 15
path	42.60,74.50	42.60,31.20	42.60,23.50
Follow the path |goto Magisters' Terrace/2 42.60,23.50 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Selin Fireheart##24723
|tip Fireheart will drain a player's health, restoring his own.
|tip ireheart will drains mana from a player. |only if heroic_dung()
|tip Fel Explosion deals AoE fire damage and drains Selin's mana.
|tip Fel Crystal restores his mana as long as it remains alive. Kill these quickly when they activate.
Defeat Selin Fireheart |scenariogoal 24879 |goto Magisters' Terrace/2 42.60,23.60
step
map Magisters' Terrace/2
path follow smart; loop off; ants curved; dist 15
path	42.60,23.60	49.20,20.10	56.90,20.30
path	59.50,26.60
Follow the path |goto Magisters' Terrace/2 59.50,26.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Tyrith##24822
turnin Severed Communications##29684 |goto Magisters' Terrace/2 60.80,23.70
accept The Scryer's Scryer##11490 |goto Magisters' Terrace/2 60.80,23.70
only if not completedq(11490)
step
kill Vexallus##24744
|tip Chain Lightning deals nature damage to up to 3 targets. Spread out.
|tip At 20% health, Overload deals AoE damage and increases party damage taken.
|tip Every 15% health a Pure Energy is summoned. These will leave a DoT on all players upon death and increase damage by 50%.
|tip Two Pure Energies are summoned. |only if heroic_dung()
Loot the Volatile Essence |q 29686/1 |only if haveq(29686)
Defeat Vexallus |scenariogoal 24880 |goto Magisters' Terrace/2 81.60,26.80
step
click Scrying Orb##251182
Activate the Scrying Orb |q 11490/1 |goto Magisters' Terrace/2 94.20,26.80
only if haveq(11490)
step
talk Kalecgos##24848
|tip It will take a moment for him to fly down.
turnin The Scryer's Scryer##11490 |goto Magisters' Terrace/2 94.10,35.90
accept Hard to Kill##29685 |goto Magisters' Terrace/2 94.10,35.90
only if not completedq(29685)
step
map Magisters' Terrace/2
path follow smart; loop off; ants curved; dist 15
path	90.00,40.70	83.20,34.30
path	Magisters' Terrace/1 82.90,56.30	Magisters' Terrace/1 58.80,56.30
path	Magisters' Terrace/1 45.70,56.20
Follow the path |goto Magisters' Terrace/1 45.70,56.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Priestess Delrissa##24560
|tip Dispel Renew and Power Word: Shield from Delrissa.
|tip Interrupt Flash Heal every time.
|tip She will cast Psychic Scream, which is a 5 second melee range fear.
_Minions_:
|tip Use CC, interrupt fears and heals. Dispel CC on party members. Focus 1 target at a time.
Defeat Priestess Delrissa |scenariogoal 24881 |goto Magisters' Terrace/1 39.20,56.20
step
map Magisters' Terrace
path follow loose;loop off;ants straight
path	31.00,56.10	19.20,49.70
Follow the path |goto Magisters' Terrace 19.20,49.70 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kael'thas Sunstrider##24664
|tip Interrupt Fireball.
|tip Phoenix Egg spawns when a Phoenix dies. Kill these within 15 seconds.
|tip Shock Barrier makes Kael'thas immune to interrupts while in effect. |only if heroic_dung()
|tip Pyroblast deals massive damage and follows Shock Barrier. Burn through the barrier and interrupt this. |only if heroic_dung()
|tip At 50% health, Gravity Lapse phase begins and everyone "swims" through the air.
|tip Arcane Spheres follow random players. Avoid them.
|tip Every 30 seconds, Kael'thas takes 50% more damage for 10 seconds.
Loot the Head of Kael'thas |q 29685/1 |only if haveq(29685)
Defeat Kael'thas Sunstrider |scenariogoal 1/34424 |goto Magisters' Terrace/1 7.40,50.10
step
talk Exarch Larethor##55007
turnin A Radical Notion##29686 |goto Magisters' Terrace/1 13.40,49.90
turnin Twisted Associations##29687 |goto Magisters' Terrace/1 13.40,49.90
turnin Hard to Kill##29685 |goto Magisters' Terrace/1 13.40,49.90
only if haveq(29686) or haveq(29687) or haveq(29685)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Arcatraz",{
mapid=269,
achieveid={660},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"TK, Netherstorm"},
description="This guide will walk you through the Tempest Keep: The Arcatraz dungeon.",
},[[
step
label "start"
Press _I_ and queue for Arcatraz or enter the dungeon with your group |goto The Arcatraz/1 41.30,81.70 |c
step
Click the Quest Accept Box that pops up
accept Unbound Darkness##29674 |goto The Arcatraz/1 41.30,73.70
step
map The Arcatraz/1
path follow loose; loop off; dist 10
path	41.20,57.30	41.30,49.10	45.60,39.50
path	57.30,39.60
Follow the path |goto The Arcatraz/1 57.30,39.60 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Zereketh the Unbound##20870 |only if not haveq(29674)
kill Zereketh the Unbound##20870  |q 29674/1 |only if haveq(29674)
|tip Void Zone summons an AoE that damages anyone standing in it.
Defeat Zereketh the Unbound |scenariogoal 24886 |goto The Arcatraz/1 61.60,24.80
step
Click the Quest Accept Box that pops up
turnin Unbound Darkness##29674
accept Hey There Dalliah##29675
step
map The Arcatraz/2
path follow loose; loop off; dist 10
path	 The Arcatraz/1 63.40,35.40	The Arcatraz/1 66.30,35.40	85.30,38.70
path	61.40,38.60	41.10,29.30	28.10,40.30
path	28.30,57.00
Follow the path up the stairs and through the halls |goto The Arcatraz/2 28.30,57.00 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Wrath-Scryer Soccothrates##20886 |only if not haveq(29675)
kill Wrath-Scryer Soccothrates##20886 |q 29675/1 |only if haveq(29675)
|tip Fel Immolation deals damage to players within 15 yards of Soccothrates.
|tip Avoid the Felfire AoE left by this ability.
Defeat Wrath-Scryer Soccothrates |scenariogoal 24888 |goto The Arcatraz/2 21.40,77.00
step
kill Dalliah the Doomsayer##20885 |only if not haveq(29675)
kill Dalliah the Doomsayer##20885 |q 29675/2 |only if haveq(29675)
|tip Whirlwind deals damage to players within 8 yards. Move away when this is cast.
|tip Gift of the Doomsayer causes heals cast on the affected player to heal Dalliah instead.
Defeat Dalliah the Doomsayer |scenariogoal 24887 |goto The Arcatraz/2 35.70,78.40
step
Click the Quest Turnin Box that pops up
turnin Hey There Dalliah##29675
accept Maximum Security Breakout##29681
step
map The Arcatraz/2
path follow loose; loop off; dist 10
path	29.90,57.10	38.30,57.20
Follow the path |goto The Arcatraz/2 38.30,57.20 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map The Arcatraz/3
path follow loose; loop off; dist 10
path	27.40,88.40	30.00,57.40	30.10,40.00
path	40.10,30.60	51.30,31.60
Follow the path |goto The Arcatraz/3 51.30,31.60 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Harbinger Skyriss##20912 |only if not haveq(29681)
|tip Attack Warden Mellichar to get the fight stared. He will unleash several monsters and then Harbinger Skyriss.
kill Harbinger Skyriss##20912 |q 29681/1 |only if haveq(29681)
|tip Attack Warden Mellichar to get the fight stared. He will unleash several monsters and then Harbinger Skyriss.
Defeat Harbinger Skyriss |scenariogoal 1/34427 |goto The Arcatraz/3 58.20,30.50
step
Click the Quest Turnin Box that pops up
turnin Maximum Security Breakout##29681
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Tempest Keep: Botanica",{
mapid=266,
achieveid={659},
patch='unknown',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"TK, Netherstorm"},
description="This guide will walk you through the Tempest Keep: Botanica dungeon.",
},[[
step
label "start"
Press _I_ and queue for Botanica or enter the dungeon with your group |goto The Botanica/1 89.60,41.10 |c
step
Click the Accept Quest box on the right side of your screen
accept Saving the Botanica##29660 |goto The Botanica 85.50,47.30
step
map The Botanica
path follow loose; loop off
path	79.30,49.40	53.00,51.00	48.80,56.60
path	47.80,43.30
Follow the path through the halls |goto The Botanica 47.70,43.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Commander Sarannis##17976 |only if not haveq(29660)
kill Commander Sarannis##17976 |q 29660/1 |only if haveq(29660)
|tip Sarannis casts Summon Reinforcements at 55% health, summoning 3 Bloodwarder Reservists and a Bloodwarder Mender. Focus the Mender down first.
Defeat Commander Sarannis |scenariogoal 24871 |goto The Botanica 47.40,18.20
step
map The Botanica
path follow loose; loop off; dist 10
path	25.60,16.80	20.50,15.20	22.10,19.70
Follow the path |goto The Botanica 22.10,19.70 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Botanist Freywinn##17975 |only if not haveq(29660)
kill High Botanist Freywinn##17975 |q 29660/2 |only if haveq(29660)
|tip Nature's Will causes Freywinn to turn into a tree, healing his nearby allies and summong 3 Frayer Protectors.
Defeat High Botanist Freywinn |scenariogoal 24872 |goto The Botanica 25.90,25.50
step
map The Botanica
path follow loose; loop off; dist 10
path	19.60,22.50	 20.30,45.20	12.50,46.40
Follow the path |goto The Botanica 12.50,46.40 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Thorngrin the Tender##17978 |only if not haveq(29660)
kill Thorngrin the Tender##17978 |q 29660/3 |only if haveq(29660)
|tip Sacrifice teleports a player, stunning them and leeching health every second for 8 seconds.
|tip Hellfire deals area damage around Thorngrin, lasting 6 seconds. Move away from him.
Defeat Thorngrin the Tender |scenariogoal 24873 |goto The Botanica 8.20,47.60
step
Click the Complete Quest Box in the top right corner
turnin Saving the Botanica##29660
accept Culling the Herd##29667
step
Continue towards the final room |goto The Botanica/1 14.80,72.50
kill 6 Mutate Fleshlasher##19598 |q 29667/1 |goto The Botanica/1 34.30,82.20
kill 6 Mutate Fear-Shrieker##19513 |q 29667/2 |goto The Botanica/1 34.30,82.20
kill 6 Mutate Horror##19865 |q 29667/3 |goto The Botanica/1 34.30,82.20
|tip You may have to run the dungeon more than once to get all of them.
step
kill Laj##17980
collect Rapidly Evolving Frond##72706 |q 29667/4 |only if haveq(29667)
Defeat Laj |scenariogoal 24874 |goto The Botanica/1 34.10,89.30
step
Click the Quest complete box at the top right of the screen
turnin Culling the Herd##29667
accept A Most Somber Task##29669
step
kill Warp Splinter##17977 |only if not haveq(29669)
kill Warp Splinter##17977 |q 29669/1 |only if haveq(29669)
|tip Summon Saplings summons 6 Sapling adds. After 25 seconds they will sacrifice themselves and heal Warp Splinter equal to their remaining health. These should be killed off as fast as possible.
Defeat Warp Splinter |scenariogoal 1/34423 |goto The Botanica/1 34.10,35.80
step
Click the Complete Quest box at the top right of the screen
turnin A Most Somber Task##29669
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Mechanar",{
mapid=267,
achieveid={658},
patch='unknown',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"TK, Netherstorm"},
description="This guide will walk you through the Tempest Keep: The Mechanar dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Mechanar or enter the dungeon with your group |goto The Mechanar/1 49.40,83.50 |c
step
Click the Accept Quest box on the right side of your screen
accept With Great Power, Comes Great Responsibility##29657 |goto The Mechanar/1 49.40,83.50
step
Take the left passage |goto The Mechanar 43.50,70.60 < 5 |c
step
kill Gatewatcher Gyro-Kill##19218
Defeat Gatewatcher Gyro-Kill |scenariogoal 24878 |goto The Mechanar 46.40,58.40
step
Click the Accept Quest box on the right side of your screen
accept Lost Treasure##29659
step
map The Mechanar/1
path follow strict; loop off; ants curved; dist 10
path	37.80,51.30	39.10,36.40	42.40,44.20
path	48.40,46.30
Follow the path |goto The Mechanar/1 48.40,46.30 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mechano-Lord Capacitus##19219 |only if not haveq(29657)
kill Mechano-Lord Capacitus##19219 |q 29657/1 |only if haveq(29657)
Defeat Mechano-Lord Capacitus |scenariogoal 24876 |goto The Mechanar 51.10,30.40
step
Click the Turnin Quest box on the right side of your screen
turnin With Great Power, Comes Great Responsibility##29657
step
Click the Turnin Quest box on the right side of your screen
accept The Calculator##29658
step
kill Gatewatcher Iron-Hand##19710
Defeat Gatewatcher Iron-Hand |scenariogoal 24877 |goto The Mechanar 60.20,36.80
step
map The Mechanar/1
path follow loose; loop off; ants curved; dist 10
path	51.40,36.40	47.10,47.20	42.20,43.00
path	38.70,27.90
Follow the path to the Cash of the Legion |goto The Mechanar/1 38.70,27.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
click Cache of the Legion##184465 |goto The Mechanar/1 39.40,28.30 < 5 |noway
|tip Loot the items inside.
collect Blinding Fury##72663 |q 29659/1 |goto The Mechanar/1 39.40,28.30 |noway |only if haveq(29659)
confirm
step
Click the Quest Complete Box in the top right corner of your screen
turnin Lost Treasure##29659
step
map The Mechanar/1
path follow loose; loop off; ants curved; dist 10
path	41.70,21.40	The Mechanar/2 41.70,33.60
Ride the elevator up to the Calculation Chamber |goto The Mechanar/2 41.70,33.60
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nethermancer Sepethrea##19221
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Raging Flames will be summoned throughout the fight, try to avoid them and their AoE spells. They are not hard to avoid.
Defeat Nethermancer Sepethrea |scenariogoal 24882 |goto The Mechanar/2 47.60,20.80
step
map The Mechanar/2
path follow loose; loop off; ants curved; dist 10
path	52.80,36.40	52.60,50.90	49.60,58.10
path	38.50,60.90
kill Bloodwarder Centurion##19510+, Sunseeker Astromage##19168+, Tempest-Forge Destroyer##19735+
Follow the long hallway and kill the mobs that spawn in groups |goto The Mechanar/2 38.50,60.90 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Pathaleon the Calculator##19220 |only if not haveq(29658)
kill Pathaleon the Calculator##19220 |q 29658/1 |only if haveq(29658)
|tip Domination will Mind Control a party member for 5 seconds.
|tip Frenzy increases Pathaleon's attack speed by 60% and physical damage by 75.
Defeat Pathaleon the Calculator |scenariogoal 1/34425 |goto The Mechanar/2 27.80,61.40
step
Click the Quest Complete Box in the top right corner
turnin The Calculator##29658 |only if haveq(29658)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Black Temple",{
mapid=339,
achieveid={697},
patch='30002',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"BT, Shadowmoon, Valley, SMV, Illidan"},
description="This guide will walk you through the Black Temple Raid.",
},[[
step
Click here if you are doing a normal run of Black Temple |next "normal"
Click here if you are doing the Timewalking Black Temple instance |next "Timewalk"
confirm
step
label "normal"
Enter Black Temple |goto Shadowmoon Valley/0 71.03,46.36 < 5
confirm |next "BT"
step
label "Timewalk"
During the Burning Crusade Timewalking event this raid is also available to Timewalk.
|tip To join a group, you must press "I" and look for one to join in the Premade Groups tab. These groups can usually be found within the Custom tab or the Legacy tab.
|tip Once your group is filled, your leader must talk to Vormu to queue the raid for this instance. He is right next to the Timewalking vendor in Shattrath City.
talk Vormu##123252
Select _"Send me into the Black Temple"_ |goto Shattrath City/0 54.67,38.98
confirm |next "BT"
step
label "BT"
map Black Temple/2
path loop off; dist 15
path	23.00,46.70	24.80,41.10	32.70,41.40
path	37.10,38.40	37.40,21.70
Follow the path, clearing trash as you make your way to the first boss, High Warlord Naj'entus. |goto Black Temple/2 37.40,21.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Warlord Naj'entus##22887 |goto Black Temple/2 43.60,19.40
|tip Needle Spine deals 2900-3900 damage and an additional 2500 Frost damage to 3 random targets.
|tip Impaling Spine hits a random raid member for 4500-4900 damage, stunning the target and applying a DoT that deals 2750 damage every 3 seconds, lasting 30 seconds.
|tip Tidal Shield Naj'entus becomes immune to all damage and regenerates health. Can only be broken by a player throwing Naj'entus Spine at him. The raid takes 8500 Frost damage once the shield is broken. |use Najentus Spine##32408
|tip Enrage occurs after 8 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Black Temple/2
path loop off; dist 15
path	33.40,19.20	29.20,19.70	27.40,14.70
path	27.50,6.60
Follow the path, clearing trash as you make your way to the next boss, Supremus. |goto Black Temple/2 27.50,6.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Black Temple/1
path loop off; dist 15
path	28.10,67.80	31.90,51.90	42.10,50.00
Follow the path, clearing trash as you make your way to the next boss, Supremus. |goto Black Temple/1 42.10,50.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Supremus##22898 |goto Black Temple/1 61.10,47.60
_Phase 1_
|tip Molten Flame is a blue fire trail coming from Supremus, spreading along the ground towards a random target. The flames deal 3325-3675 Fire damage per second.
|tip Hateful Strike is a melee attack that deals 27,500-32,200 damage to the target with most health and within melee range.
_Phase 2_
|tip Gaze fixes aggro on a target and and Supremus moves towards them at 90% normal speed.
|tip Molten Punch affects the target if they are affected by Gaze. It knocks the target back and deals 5200 damage if they are within 40 yards of Supremus.
|tip Volcanic Geyser randomly summons small volcanoes which deal 4100-4800 Fire damage to targets within 15 yards.
|confirm
step
path loop off; dist 15
path	Black Temple/1 64.00,47.60	Black Temple/3 17.20,50.60	Black Temple/3 24.90,51.20
path	Black Temple/3 29.50,56.60	Black Temple/1 83.50,53.60	Black Temple/3 33.70,51.40
path	Black Temple/3 39.70,59.90	Black Temple/3 40.80,67.80	Black Temple/3 40.80,79.80
Follow the path, clearing trash as you make your way to the next boss, the Shade of Akama. |goto Black Temple/3 40.80,79.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Akama##23191 |goto Black Temple/3 40.90,74.50
Tell him "I'm with you, Akama."
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill Shade of Akama##22841 |goto Black Temple/3 40.80,88.90
_Phase 1_
|tip You must kill the Channelers around the Shade of Akama, as well as the adds he spawns during this time.
|tip Ashtongue Defender: uses Debilitating Shot, which applies a debuff to the target that reduces all melee damage done by 75% for 5 seconds.
|tip Ashtongue Elementalist: uses _Rain of Fire, an AoE which does 3500 Fire damage every 2 seconds, lasting 8 seconds.
|tip Ashtongue Rogue: uses Debilitating Poison, which slows attack and casting speed of the target by 50% along with a DoT that does 1800 Nature damage every 2 seconds for 8 seconds.
|tip Ashtongue Spiritbinder: uses Spirit Mend, which heals another Ashtongue for 2500 every 2 seconds for 10 seconds. Chain Heal heals up to 5 Ashtongue for 7000 each.
_Phase 2_
|tip This phase starts when the Channelers are killed and the Shade becomes attackable.
|tip During this phase all raid members (even most healers) need to attack and kill the Shade of Akama as quickly as possible.
|confirm
step
path loop off; dist 15
path	Black Temple/3 40.90,80.10	Black Temple/3 40.90,67.60	Black Temple/3 53.00,66.10
path	Black Temple/3 60.30,66.30	Black Temple/3 67.90,66.60	Black Temple/3 70.10,75.90
path	Black Temple/3 57.90,91.40	Black Temple/5 75.50,67.50	Black Temple/5 55.20,68.50
path	Black Temple/5 34.60,56.50
Follow the path, clearing trash as  you make your way to the next boss, Teron Gorefiend. |goto Black Temple/5 34.60,56.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Teron Gorefiend##22871 |goto Black Temple/5 39,19
|tip Incinerate is cast on a random raid member, dealing 3000 Fire damage and applying a debuff which does an additional 8000 Fire damage over 3 seconds.
|tip Doom Blossom Teron summons a dark cloud which lasts for 2 minutes and casts Shadow Bolts at random raid members, dealing 1500 Shadow damage.
|tip Crushing Shadows is cast on 5 random raid members, applying a 15 second debuff which increases Shadow damage taken by 60%.
|tip Shadow of Death is cast every 30 seconds on a random raid member, giving a debuff that kills the target after 55 seconds. Upon their death, 4 Shadowy Constructs spawn and the player turns into a Ghost for 60 seconds.
_Shadowy Constructs_
|tip Shadow Strike melee attack that hits for about 2500 Shadow damage.
|tip Atrophy is a 60 second debuff applied on a melee attack. It decreases attack speed by 5% and stacks up to 10 times.
|tip Immune cannot take damage from normal players, only by players in Ghost form.
|confirm
step
path loop off; dist 15
path	Black Temple/5 34.50,59.10	Black Temple/5 76.40,68.80	Black Temple/3 70.40,76.50
path	Black Temple/3 59.50,66.20	Black Temple/3 52.70,62.80	Black Temple/3 54.20,50.00
path	Black Temple/3 52.80,37.80	Black Temple/3 59.60,35.10	Black Temple/3 62.60,34.70
path	Black Temple/4 73.40,35.40	Black Temple/4 72.70,21.60	Black Temple/4 65.70,21.30
path	Black Temple/4 53.20,30.10	Black Temple/4 53.40,39.10
Follow the path, clearing trash as you make your way to the next boss, Gurtogg Bloodboil. |goto Black Temple/4 53.40,39.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gurtogg Bloodboil##22948 |goto Black Temple/4 53,46
|tip Fel Acid Breath is a 10 yard AoE, hitting in a frontal cleave and applying a DoT that deals 2750 Nature damage every 5 seconds for 20 seconds. Make sure the tank is the only one in front of him when this occrs.
|tip Arcing Smash deals 5000 damage and a 5 yard frontal cleave. Make sure the tank is the only one in front of him when this occurs.
_Phase 1 Abilities_
|tip Bloodboil is a debuff cast every 10 seconds on the 5 raid members farthest away from Gurtogg. It deals 600 damage per stack every second for 24 seconds.
|tip Acidic Wound is a stacking debuff applied on melee every 2 seconds and lasts 60 seconds. It reduces armor by 500 and ticks for 250 damage.
|tip Eject knockbacks the target, reducing their threat.
|tip Bewildering Strike disorients the target for 5 seconds.
_Phase 2 Abilities_
|tip Arcing Smash damage is increased to 12,000 and gives a debuff that reduces healing received by 50%.
|tip Fel Rage (Player) 30 second debuff that increases armor, health, healing, damage, and size. Gurtogg will only attack the player that has this.
|tip Fel Rage (Self) is a stacking buff which increases Gurtogg's damage and forces him to only attack the player with Fel Rage.
|tip Acidic Geyser deals 5000 Nature damage in a 5 yard AoE on and around the Fel Rage target.
|tip Fel Acid Breath this is only cast on the raid member with Fel Rage.
|tip Insignificance all raid members get this buff during this phase. Threat cannot be gained.
|tip Berserk occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Black Temple/4
path loop off; dist 15
path	58.40,47.50	65.10,47.40	74.20,53.30
path	73.70,69.80	73.30,84.80	70.60,85.80
Follow the path, clearing trash as you make your way to the next boss, the Reliquary of Souls. |goto Black Temple/4 70.60,85.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Reliquary of Souls##22856 |goto Black Temple/4 65,85
_Essence of Suffering_
|tip Aura of Suffering reduces the raid's healing, regeneration, and armor by 100% and defense by 500.
|tip Fixate Essence of Suffering locks aggro on the closest target for 5 seconds.
|tip Enrage occurs every 45 seconds, increasing its damage and attack speed.
|tip Soul Drain is a debuff applied to 3 random targets, dealing 2600-3300 damage plus draining 2600-3300 mana every 3 seconds.
_Essence of Desire_
|tip Aura of Desire is applied to the whole raid. 50% of damage dealt also hits the player. Healing is increased by 100% and max mana is reduced by 5% every 8 seconds.
|tip Deaden is a debuff that increases damage taken by 100% and lasts 10 seconds.
|tip Spirit Shock deals 10,000 Arcane damage and a 5 second confuse.
|tip Rune Shield lasts 15 seconds and absorbs 50,000 damage, also granting immunity to interrupts and increasing attack and casting speeds.
_Essence of Anger_
|tip Aura of Anger deals raid-wide Shadow damage which increases by 100 every 3 seconds and increases damage taken by 5% each tick.
|tip Seethe gives Essence of Anger a 10 second buff that increases its attack speed and cast speed by 100%.
|tip Soul Scream hits 5 raid members in a 10 yard frontal cone are hit with 3000 Shadow damage plus draining 5000 mana/rage.
|tip Spite affects 3 random raid members, applying a debuff that gives 2 seconds immunity, then deals 7500 Nature damage, followed by another 2 seconds immunity.
|confirm
step
path loop off; dist 15
path	Black Temple/4 73.30,86.20	Black Temple/4 73.40,62.30	Black Temple/4 73.50,52.00
path	Black Temple/4 66.70,39.50	Black Temple/4 63.10,39.30	Black Temple/3 41.60,34.10
path	Black Temple/3 41.60,24.70	Black Temple/3 34.30,17.10	Black Temple/3 26.20,21.30
path	Black Temple/6 12.70,66.60	Black Temple/6 26.90,53.80	Black Temple/6 32.30,36.70
path	Black Temple/6 39.10,37.10	Black Temple/6 50.10,37.10	Black Temple/6 56.50,37.10
Follow the path, clearing trash as you make your way to the next boss, Mother Shahraz. |goto Black Temple/6 56.50,37.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mother Shahraz##22947 |goto Black Temple/6 66.60,37
|tip Saber Lash is a frontal cleave dealing 30,000 damage divided up among 3 targets. Make sure the tanks are the only ones in front of her when this occurs.
|tip Fatal Attraction teleports 3 random raid members to one location and applies the Demonic Energy debuff.
|tip Demonic Energy lasts 30 seconds, the affected players release a 15 yard AoE that deals 3000 Shadow damage per second. It is removed if all 3 are 25 yards away from each other.
|tip Silencing Shriek is an 18 yard AoE silence.
_Beams_
|tip A beam is cast every 9 seconds and hits 10 random raid members. There are multiple types of beams.
|tip Sinful Beam: deals 7000-8000 Shadow damage.
|tip Sinister Beam: deals 2000 Shadow damage and knocks those affected into the air, dealing 50% fall damage.
|tip Vile Beam: deals 2500 Shadow damage every second for 8 seconds.
|tip Wicked Beam: deals 4000 Shadow damage plus drains 1000 mana.
_Prismatic Aura_
|tip This occurs every 15 seconds, choosing a random aura which reduces damage of one spell type and increasing another.
|tip Arcane: Arcane damage reduced by 25%. Nature damage increased by 25%.
|tip Nature: Nature damage reduced by 25%. Arcane damage increased by 25%.
|tip Holy: Holy damage reduced by 25%. Shadow damage increased by 25%.
|tip Shadow: Shadow damage reduced by 25%. Holy damage increased by 25%.
|tip Fire: Fire damage reduced by 25%. Frost damage increased by 25%.
|tip Frost: Frost damage reduced by 25%. Fire damage increased by 25%.
|tip Enrage occurs at 10%, increasing her damage and attack speed slightly. Kill her as quickly as possible to avoid death.
|tip Hard Enrage occurs after 10 minutes of combat. It increases her damage by 500%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Black Temple/7
path loop off; dist 15
path	Black Temple/6 67.20,45.90	Black Temple/6 67.30,55.20	Black Temple/7 69.20,14.10
path	65.90,24.90	69.10,36.60	65.80,48.30
path	65.80,60.10	63.10,79.00	47.00,73.90
Follow the path, clearing trash as you make your way to the next boss, The Illidari Council. |goto Black Temple/7 47.00,73.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Illidari Council_ |goto Black Temple/7 47.30,47.90
kill Lady Malande##22951
|tip Empowered Smite deals 5500-6000 Holy damage.
|tip Divine Wrath affects a random raid member, dealing 5000 Holy damage and a DoT that deals 2500 Fire damage every second for 8 seconds.
|tip Reflective Shield lasts 20 seconds, absorbing up to 25,000 damage and reflecting half the damage back to the attacker.
|tip Circle of Healing heals the Council for 100,000. It is a 2.50 second cast and is interruptible.
kill High Nethermancer Zerevor##22950
|tip Arcane Bolt deals 15,000 Arcane damage.
|tip Flamestrike is a 10 yard AoE at a random location that deals 5000 Fire damage and an additional 3000 every second for 12 seconds.
|tip Blizzard is a 10 yard AoE at a random location that deals 6000 Frost damage every second for 12 seconds.
|tip Dempen Magic is a self buff that reduces Zerevor's magic damage taken by 75% and healing by up to 500.
|tip Arcane Explosion is a 10 yard AoE centered around Zerevor that deals 9000 Arcane damage. This is only used if there is a raid member within 10 yards of him.
kill Gathios the Shatterer##22949
|tip Hammer of Justice stuns a random raid member within 10-40 yards, lasting 6 seconds.
|tip Consecration is a 12 yard AoE, centered around Gathios, that lasts 21 seconds and deals 2250 damage every 3 seconds.
|tip Seal of Command is a self buff that inceases Gathios' melee damage by 70%. Shares a cool down with Seal of Blood.
|tip Seal of Blood is a self buff that increases Gathios' by 800 Holy damage.
|tip Judgement removes one of Gathios' Seals, adding a DoT to his target. When removed with this, Seal of Command hits for 7000 over 9 seconds and Seal of Blood hits for 11,000 damage over 9 seconds.
|tip Blessing of Spell Warding is a 15 second buff that grants Gathios' target immunity to spell damage. Shared cool down with Blessing of Protection.
|tip Blessing of Protection is a 15 second buff that grants Gathios' target immunity to physical damage. Shared cool down with Blessing of Spell Warding.
|tip Devotion Aura is a 30 second buff applied to the rest of the Council, increasing their armor by 20%. Shared cool down with Chromatic Resistance Aura.
|tip Chromatic Resistane Aura is a 30 second buff applied to the rest of the Council, increasing their resistances by 250. Shared cool down with _Devotion Aura_.
kill Veras Darkshadow##22952
|tip Deadly Poison deals 1000 Nature damage every second for 4 seconds.
|tip Envenom is used on a raid member that has Deadly Poison, removing the debuff and dealing 6000 damage.
|tip Vanish Veras stealths from combat, lasting 30 seconds.
|tip Enrage occurs after 15 minutes. It increases their damage by 500%. Kill them before they reach this stage to avoid death.
|confirm
step
talk Akama##23089 |goto Black Temple/7 47.10,54.60
Tell him "I'm ready."
|confirm
step
path loop off; dist 15
path	36.90,48.00	40.30,39.20	47.60,34.90
path	47.50,30.20	Black Temple/8 67.90,20.40	Black Temple/8 71.70,38.40
Follow Akama up to Illidan. |goto Black Temple/8 71.70,38.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Akama##23089 |goto Black Temple/8 72.00,38.50
Tell him "We're ready to face Illidan."
|tip This will start the final boss fight, make sure you are ready.
|confirm
step
kill Illidan Stormrage##22917 |goto Black Temple/8 53,54
_Phase 1, 3, and 5 Abilities_
|tip Flame Crash is a 10 yard AoE that deals 5000 Fire damage every tick, lasting 2 minutes and centered on the ground at Illidan's target.
|tip Draw Soul is a frontal cone AoE that deals 5000 Shadow damage and heals Illidan for 100,000 for each target hit.
|tip Parasitic Shadowfiend affects a random raid member, applying a debuff that deals 3000 Shadow damage every tick and spawning 2 Parasitic Shadowfiends upon expiration.
|tip Agonizing Flames is a 5 yard AoE on a random raid member that deals 5000 Fire damage plus a DoT that deals 36,000 damage over 60 seconds, slightly increasing damage each tick.
_Phase 2_
|tip Fireball deals 3000-4000 Fire damage in a 10 yard radius.
|tip Eye Beam puts a trail of blue Demon Fire on the ground. Raid members standing where these land take 20,000 Shadow damage. The fire trails lasts for 1 minute and deals 2000 Fire damage every second to any standing in it.
|tip Dark Barrage affects a random raid member, dealing 3000 Shadow damage every second for 10 seconds.
_Phase 4_
|tip Shadow Blast is a 20 yard AoE that hits for 11,000 Shadow damage, centered on the player with highest aggro.
|tip Flame Burst deals 3500 Fire damage to all raid members plus additional damage to players closer together than 5 yards.
|tip Shadow Demons spawns 4 Shadow Demon adds. They target random raid members, stun them, and then move towards that player.
|tip Aura of Dread is a 15 yard AoE, centered on Illidan, dealing 1000 Shadow damage every second and increasing Shadow damage taken by 30%.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\The Eye",{
mapid=334,
achieveid={696},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"TK, Kael'thas, Ashes, Al'ar, Netherstorm, Tempest, Keep"},
description="This guide will walk you through The Eye Raid.",
},[[
step
Enter The Eye |goto Tempest Keep/1 50.06,91.93 < 1000
step
map Tempest Keep
path loop off
path	50.00,87.60	50.10,75.60	50.10,65.50
path	50.00,62.70	47.70,64.40
Follow the path, clearing trash as you make your way to the first boss, Al'ar. |goto Tempest Keep 47.70,64.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Al'ar##19514 |goto Tempest Keep 45.40,59.20
|tip When pulled, he flies to the spot first. Have a tank here to pick him up.
_Phase 1_
|tip Flame Buffet only occurs if there isn't a player within melee range of Al'ar. It is a stackable debuff that occurs every 1.50 seconds, causing 2000 Fire damage and increasing Fire damage taken by 10% per stack.
|tip Flame Quills occurs when Al'ar flies to the center of the room and launches quills at the platforms or the outer part of the ramps, dealing 8000 Fire damage per second.
|tip Ember Blast occurs when Al'ar "dies". He explodes, knocking back nearby raid members and dealing 10,000 Fire damage.
_Phase 2_
|tip Flame Buffet only occurs if there isn't a player within melee range of Al'ar. It is a stackable debuff that occurs every 1.50 seconds, causing 2000 Fire damage and increasing Fire damage taken by 10% per stack.
|tip Dive Bomb occurs after Al'ar "dies" the first time. He comes back to life and targets a random raid member. He crashes into the ground, dealing 5000 Fire damage and spawning two Ember of Al'ar adds. He then uses _Rebirth_.
|tip Rebirth occurs after Dive Bomb, dealing 5000 Fire damage to anyone in melee range and knocking them back.
|tip Flame Patch spawns under a random player, dealing 3000 Fire damage per tick, and applying a stacking debuff that deals Fire damage and increases Fire damage taken.
|tip Melt Armor reduces the target's armor by 80% for 60 seconds. When this happens tanks must taunt immediately.
|tip Berserk is an enrage mechanic and occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Tempest Keep
path loop off
path	45.10,58.80	47.10,51.00	40.50,41.50
path	31.80,44.60
Follow the path, clearing trash as you make your way to the next boss, the Void Reaver. |goto Tempest Keep 31.80,44.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Void Reaver##19516 |goto Tempest Keep 25.40,49.60
|tip Void Reaver is immune to taunts.
|tip Pounding is a channeled AoE that lasts 3 seconds, dealing 1350-2250 Arcane damage every second.
|tip Arcane Orb is an AoE used on a random raid member that is at least 18 yards away from Void Reaver. It deals 7000 Arcane damage along with a 6 second silence.
|tip Knock Away is a single target knockback used on the raid member with the highest aggro, slightly reducing their aggro.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Tempest Keep
path loop off
path	32.10,44.40	40.50,41.50	46.90,50.80
path	53.00,51.10	59.60,41.60	68.20,44.50
Follow the path, clearing trash as you make your way to the next boss, High Astromancer Solarian. |goto Tempest Keep 68.20,44.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Astromancer Solarian## |goto Tempest Keep 73.80,49.20
|tip Wrath of the Astromancer is a debuff placed on a random raid member. After 6 seconds they explode, dealing 5400-6600 Arcane damage to all nearby allies.
|tip Arcane Missles targets a random raid member and deals 3000 Arcane damage every second for 3 seconds.
|tip Blinding Light is an AoE that deals 2500 Arcane damage to the entire raid.
|tip Every 50 seconds Solarian disappear and summons adds to attack the raid. She returns after 15 seconds, with 2 more elite adds.
|confirm
step
map Tempest Keep
path loop off
path	68.20,44.50	59.60,41.60	57.70,33.40
path	53.90,27.20
Follow the path, clearing trash as you make your way to the final boss, Kael'thas Sunstrider. |goto Tempest Keep 53.90,27.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kael'thas Sunstrider##19622 |goto Tempest Keep 50.00,15.00
|tip Kael'thas and his advisors are immune to taunts.
_Phase 1-3_
|tip Fireball deals 16,000-20,000 Fire damage and is interruptible.
|tip Flamestrike is an AoE that deals 120,000 damage in a 6 yard radius plus an additional 3000 Fire damage per second for 8 seconds.
|tip Summon Pheonix occasionally spawns a pheonix add to attack the raid.
|tip Arcane Disruption deals 1750-2250 Arcane damage and a 10 second disorient to the entire raid.
|tip Shock Barrier is a shield that absorbs 80,000 damage, lasting 10 seconds and making him immune to interrupts.
_Phase 4 Abilities_
|tip Mind Control Kael'thas mind controls 3-4 raid members.
|tip Pyroblast deals 45,000-55,000 Fire damage. It is interruptable and he will begin casting it after using Shock Barrier
_Phase 5 Abilities_
|tip Gravity Lapse all raid members are teleported to Kael'thas and then "swim" in the air for 30 seconds.
|tip Nether Beam deals 2000 Arcane damage to a random raid member, jumping to nearby players and doubling the damage dealt every jump.
|tip Nether Vapor spawns black clouds above Kael'thas. If touched they apply a stacking debuff that reduces max health ny 10% and stack up to 9 times.
_Thaladred the Darkener_
|tip Gaze fixes all aggro to the targeted player.
|tip Phychic Blow deals 4500 damage plus a knockback.
|tip Silence is an AoE silence, affecting all raid members within 8 yards of Thaldred.
_Lord Sanguinar_
|tip Bellowing Roar is an AoE fear, centered on himself and fearing all raid members within 35 yards.
_Grand Astromancer Capernian_
|tip Fireball deals 6000-7000 Fire damage to a single target.
|tip Conflagration hits a random raid member within 30 yards, causing disorient and 600-900 damage per second plus 300 damage per second to all players within 8 yards of the targeted player.
|tip Arcane Explosion deals 4500 Arcane damage plus a knockdown and debuff that slows movement speed.
_Master Engineer Telonicus_
|tip Bomb deals 7000-9000 Fire damage in a small AoE centered on his target.
|tip Remote Toy is a 60 second debuff used on a random raid member, is occasionally stuns the player for 4 seconds throughout the duration.
|confirm
step
You may have looted a quest item from Kael'thas.
Click the Verdant Sphere in your bags |use Verdant Sphere##32405
accept Kael'thas and the Verdant Sphere##11007
|only if not completedq(11007)
step
talk A'dal##18481
turnin Kael'thas and the Verdant Sphere##11007 |goto Shattrath City 54.20,44.40
|only if haveq(11007)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Gruul's Lair",{
mapid=330,
achieveid={692},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"BEM, Blade's, Edge, Mountains, Dragonkiller"},
description="This guide will walk you through the Gruul's Lair Raid.",
},[[
step
Enter Gruul's Lair |goto Gruul's Lair/1 81.87,78.11 < 1000
step
kill High King Maulgar##18831 |goto Gruul's Lair 55,57
|tip Arcing Smash deals damage to the target and any raid members near the target. It hits as a cleave, so make sure the tank is the only one in front of Maulgar when this happens.
|tip Berserker Charge causes Maulgar to charge his current target, an additional 300 damage and knocking them back.
|tip Intimidating Roar is a debuff that causes the target to freeze in fear for 8 seconds and causing all nearby raid members to flee in fear.
|tip Mighty Blow deals an additional 150 damage and knocks the target back.
|tip Whirlwind hits nearby enemies, inflicting an additional 110 damage for 15 seconds.
_Krosh Firehand_
|tip Uses Spell Shield which reduces magic damage taken by 75%.
_Olm the Summoner_
|tip Has a stacking DoT and summons Fel Stalker adds. Also occasionally uses Death Coil, healing himself for the same amount of damage it deals.
_Kiggler the Crazed_
|tip Has Lightning Bolt which does about 3000 damage to a single target. Arcane Shock deals 800 damage and applies a DoT.
_Blindeye the Seer_
|tip Uses Power Word: Shield which absorbs damage and Prayer of Healing which heals to full. Also has a smaller heal that heals for about 5% health
|confirm
step
map Gruul's Lair
path loop off
path	43.90,69.00	33.20,65.40	20.90,52.70
Follow this short path, clearing trash as you make your way to the second and final boss, Gruul the Dragonkiller. |goto Gruul's Lair 20.90,52.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gruul the Dragonkiller## |goto Gruul's Lair 21,27
|tip Growth is a buff that increases Gruul's damage by 15% and size by 10% every 15 seconds, stacking up to 30 times. Lasts for 5 minutes.
|tip Hurtful Strike hits the target with the second highest aggro within Gruul's melee range. Melee DPS should try to keep their aggro lower than the main tank and also the off tank.
|tip Reverberation is a zone-wide silence AoE. It lasts 4 seconds.
|tip Cave In is a random AoE that deals 3000 damage every 3 seconds in the targeted area.
|tip Ground Slam is a zone-wide knockback, then triggers Gronn Lord's Grasp.
|tip Gronn Lord's Grasp is a stacking debuff that occurs after a Ground Slam. It reduces movement speed by 20%, stacking 5 times and then causing the Stoned effect.
|tip Stoned stuns the target. Occurs after getting 5 stacks of Gronn Lord's Grasp. Will then cause Shatter.
|tip Shatter is a raid wide AoE. The damage dealt is increased if raid members are near each other when it occurs. Hits for 1000-8500, depending on player proximity.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Hyjal Summit (Battle for Mount Hyjal)",{
mapid=329,
achieveid={695},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Archimonde, MH, HS, CoT, Caverns, Time"},
description="This guide will walk you through the Battle for Mount Hyjal Raid.",
},[[
step
talk Andormu##20130
accept The Caverns of Time##10277 |goto Tanaris/18 41.70,38.70
|only if not completedq(10277)
step
Follow the Custodian of Time as she travels around the Cavern. |q 10277/1 |goto Tanaris/18 53.60,55.60
|only if haveq(10277)
step
Enter Hyjal Summit |goto Tanaris/18 35.90,15.68 < 5
confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.50,63.80
Tell her "My companions and I are with you."
|tip This will start the first boss fight, so make sure you are ready.
|confirm
step
Defeat the 8 waves of enemies. |goto Hyjal Summit 7.60,69.50
|confirm
step
kill Rage Winterchill##17767 |goto Hyjal Summit 7.60,69.50
|tip Frost Armor increases Rage Winterchill's armor by 3000, slows melee attackers' movement speed by 50%, and increases the time between their attacks by 25%.
|tip Icebolt stuns the player for 4 seconds and deals about 5000 damage.
|tip Death and Decay is an AoE spell that ticks for 15% of max health as damage per second to each player in the targeted area. Move out of it as quickly as possible.
|tip Frost Nova is an AoE spell that roots all players around Rage Winterchill for up to 10 seconds.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.60,63.80
Tell her "I am ready."
|tip This will start the next boss fight, make sure you are ready.
|confirm
step
Defeat the 8 waves of enemies. |goto Hyjal Summit 7.60,69.50
|confirm
step
kill Anetheron##17808 |goto Hyjal Summit 7.60,69.50
|tip Vampiric Aura his melee attacks heals him for 300% of the damage.
|tip Carrion Swarm is a random one-direction cone attack that does 3000-6000 Shadow damage plus gives a 15 second debuff that reduces healing done by 75%. He casts this about every 15 seconds.
|tip Sleep is a 10 second stun that affects 3 targets.
|tip Inferno is cast every 60 seconds and targets a random raid member. An elite Towering Inferno is summoned on them and they are stunned for 2 seconds.
|tip Berserk occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.50,63.80
Tell her "Until we meet again."
|tip This will start the transition to the next phase of the raid, make sure you are ready to move out.
|confirm
step
map  Hyjal Summit
path loop off
path	15.20,64.00	16.60,60.40	19.00,56.30
path	22.40,62.20	25.50,63.90	28.50,63.70
path	33.20,62.80	35.50,59.00	35.60,55.60
path	32.20,48.30	32.60,41.40	37.60,36.40
path	41.10,35.60
Follow this road east to the Horde Camp.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Thrall##17852 |goto Hyjal Summit 48.00,41.50
Tell him "I am with you."
|tip This will start the next boss fight, make sure you are ready.
|confirm
step
Defeat the first wave of enemies. |goto Hyjal Summit 43.10,36.00
|confirm
step
Defeat the second wave of enemies. |goto Hyjal Summit 51.90,33.10
|confirm
step
Defeat the third wave of enemies. |goto Hyjal Summit 43.80,35.80
|confirm
step
Defeat the fourth wave of enemies. |goto Hyjal Summit 43.80,35.80
There are also flying enemys here. |goto Hyjal Summit 51.90,33.10
|confirm
step
Defeat 5th wave of enemies. |goto Hyjal Summit 43.80,35.80
|confirm
step
Defeat any remaining enemies around here. |goto Hyjal Summit 47.40,37.50
|tip This wave usually has a flying Frost Wyrm, make sure to look up in the sky.
|confirm
step
Defeat the seventh wave of enemies here. |goto Hyjal Summit 43.80,35.80
|tip This wave usually has a flying Frost Wyrm, make sure to look up in the sky.
|confirm
step
Defeat the last wave of enemies here. |goto Hyjal Summit 43.80,35.80
|confirm
step
kill Kaz'rogal##17888 |goto Hyjal Summit 43.50,36.00
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip War Stomp is a 15 yard AoE melee attack, dealing 1700-2500 damage and also stuns for 5 seconds.
|tip Cripple debuff is given to a raid member that increases time between attacks by 75%, movement speed by 75% and reduces their strength by 75%. Lasts 12 seconds.
|tip Mark of Kaz'rogal, a debuff that affects all mana users in the raid. Drains 600 mana per second for 5 seconds. If mana is reduced to 0 by the debuff, the debuff is removed and the target and nearby allies take 10,000-11,000 Shadow damage.
|confirm
step
talk Thrall##17852 |goto Hyjal Summit 48.00,41.50
Tell him "We have nothing to fear."
|tip This will start the next boss fight, make sure you are ready.
|confirm
step
Defeat the first wave of enemies here. |goto Hyjal Summit 44.00,36.20
|confirm
step
Defeat the second wave of enemies in this area. |goto Hyjal Summit 44.80,38.10
|tip This wave usually has a flying Frost Wyrm, make sure to look up in the sky.
|confirm
step
Defeat the third wave of enemies this wave have Giant Infernals in the Horde Camp. |goto Hyjal Summit 45.20,38.20
|confirm
step
Defeat the rest of the enemies here. |goto Hyjal Summit 43.70,36.10
|confirm
step
Defeat the Giant Infernals and Fel Stalkers attack the Camp. |goto Hyjal Summit 47.90,37.
|confirm
step
Defeat the enemies in this area. |goto Hyjal Summit 43.70,36.10
|confirm
step
Defeat the Giant Infernals, Ghouls, Crypt Fiends, and Fel Stalkers attacking in this area. |goto Hyjal Summit 47.40,38.40
|confirm
step
Defeat the last wave of enemies here. |goto Hyjal Summit 43.70,36.10
|confirm
step
kill Azgalor##17842 |goto Hyjal Summit 43.70,36.10
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Rain of Fire is a 15 yard AoE cast on a random target. Lasts 30 seconds and deals 1700 fire damage every 2 seconds. Party members inside the AoE for more than 2 seconds will also be hit for 1200 damage every second for 5 seconds.
|tip Howl of Azgalor is a 5 second zone-wide AoE silence.
|tip Doom is cast on a random party member every 45 seconds. The target dies after 20 seconds and spawns an elite add. Cannot be resisted or removed.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Thrall##17852 |goto Hyjal Summit 48.00,41.50
Tell him "Until we meet again."
|tip This will start the transition to the final phase of the raid, make sure you are ready to move out.
|confirm
step
map  Hyjal Summit
path loop off
path	56.20,45.60	60.30,53.50	67.20,48.30
path	73.40,44.40	75.20,46.30	74.40,50.10
path	74.50,56.60
Follow the road east to Nordrassil.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Tyrande Whisperwind##17948 |goto Hyjal Summit 74.30,57.60
Tell her "I would be grateful to any aid you can provide."
|tip This will start the next boss fight, so make sure you are ready.
|confirm
step
Jump off the cliff here |goto Hyjal Summit 75.30,45.60
Use the Tears of the Goddess in your bag to slow your fall |use Tears of the Goddess##24494
|tip The slow effect only lasts 2 seconds, so wait until the last second to use it.
|confirm
step
kill Archimonde##17968 |goto Hyjal Summit 76.90,36.70
|tip Air Burst is a 15 yard AoE spell that deals 1500 Nature damage centered on a random target. All affected players are tossed into the air and take over 100% fall damage. Avoid at all costs.
|tip Fear is an 8 second AoE Fear. Affects entire raid.
|tip Grip of the Legion deals 2500 damage every 2 seconds for 5 minutes. This is dispellable.
|tip Doomfire spell that leaves a trail of fire on the ground. Anyone touched by it gets a debuff that deals 2400 Fire damage every 3 seconds, which is reduced by 150 every tick.
|tip Finger of Death deals 30,000 Shadow damage to a single target. It is only used if no targets are in melee range.
|tip Soul Charge this is cast whenever a raid member dies.Achimonde gains a Soul Charge which he can use at a random time. The type of affect it has depends on the character class that made it. The following effects apply to the whole raid:
|tip Priest, Mage, Warlock: 4500 Fire damage and a 4 second silence.
|tip Warrior, Rogue, Paladin: 4500 Physical damage and 4 seconds damage taken increased by 50%.
|tip Druid, Shaman, Hunter: 4500 Nature damage over 8 seconds plus 2250 mana burn.
|tip Enrage mechanic: Hand of Death deals 100,000 Shadow damage to everyone in the raid. This is cast 9 minutes after Archimonde is engaged or if he reaches Nordrassil. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Andormu##20130
turnin The Caverns of Time##10277 |goto Tanaris/18 41.70,38.70
|only if haveq(10277)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Karazhan",{
mapid=350,
achieveid={690},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Deadwind, Pass"},
description="This guide will walk you through the Karazhan Raid.",
},[[
step
Enter Karazhan |goto Karazhan/1 58.76,76.11 < 1000
step
map Karazhan/1
path loop off
path	50.00,72.30	49.10,84.90	42.30,86.20
Follow the path, clearing trash as you make your way to the first boss, Attumen the Huntsman. |goto Karazhan/1 42.30,86.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Attumen the Huntsman##16152 |goto Karazhan/1 45.50,82.60
|tip He spawns here after Midnight reaches 95% health. They both are immune to taunts.
|tip Shadow Cleave hits for 4,000 Shadow damage. It is a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Intangible Presence is cast every 30 seconds, it is a reflectable AoE that reduces change to hit with melee, ranged attacks, and spells by 50%. The area it affects is centered on Attumen's target.
|tip Mount Up occurs when Attument or Midnight are at 25% health. He will mount up, turning into a single boss with a higher health percentage.
|tip Berserker Charge hits a random target, dealing 200 damage and applying a knockdown with a brief stun.
|confirm
step
map Karazhan/1
path loop off
path	44.80,88.80	49.20,75.60	53.00,64.10
path	Karazhan/3 54.50,65.90	Karazhan/3 45.20,54.50	Karazhan/3 36.80,65.40
Follow the path, clearing trash as you make your way to the next boss, Moroes. |goto Karazhan/3 36.80,65.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Moroes##15687 |goto Karazhan/3 28.20,64.20
|tip This boss is immune to taunts.
|tip Vanish disappears briefly. This does not affect aggro.
|tip Garrote is a Physical DoT applied to a random raid member after a Vanish. Deals 1000 damage every 3 seconds for 5 minutes.
|tip Blind is a disorient effect hits Moroes' closest non-tank target.
|tip Gouge hits Moroes' current target, stunning them. This effect breaks on damage. While they are stunned Moroes will switch to the raid member with the second highest threat.
|tip Enrage occurs at 30% health. This encreases Moroes' damage. Kill him as quickly as possible to avoid death.
|confirm
step
path loop off
path	Karazhan/3 46.40,55	66.60,49.80	71.20,42.80
path	Karazhan/4 63.40,42.10	Karazhan/4 66.20,33.10	Karazhan/4 76.60,41.50
Follow the path, clearing trash as you make your way to the next boss, the Maiden of Virtue. |goto Karazhan/4 76.60,41.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maiden of Virtue##16457 |goto Karazhan/4 82.50,48.50
|tip This boss is immune to taunts.
|tip Holy Ground is a permanent AoE that deals 300 Holy damage and 1 second of silence every 3 seconds to all raid members within 12 yards. This effect lasts the entire fight.
|tip Holy Fire deals 3500 Fire damage and an additional 1750 Fire damage every 2 seconds for 12 seconds. This can be dispelled.
|tip Holy Wrath is a chain AoE, dealing Holy damage and jumping to nearby raid members. Each jump increases the damage dealt by 40%. Counter this by staying spread out.
|tip Repentance deals 2000 Holy damage and incapacitates the entire raid for 12 seconds, but broken by any damage taken. This does not hit the Maiden's target.
|tip Berserk occurs after 10 minutes of combat, increasing her damage by 500%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Karazhan/4
path loop off
path	77.10,42.10	65.90,32.50	56.20,37.10
path	48.60,39.70	41.10,38.50	28.00,23.10
path	24.20,24.50	19.90,40.30	11.00,41.30
path	12.30,25.30
Follow the path, clearing trash as you make your way to the next boss, the Opera Event. |goto Karazhan/4 12.30,25.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Barnes##16812 |goto Karazhan/4 20.80,27.00
Tell him "I'm not an actor." and "Ok, I'll give it a try."
|tip This will start the Opera boss event, make sure you are ready.
|confirm
step
You'll get one of three events: |goto Karazhan/4 21.00,35.30
The Big Bad Wolf |next "wolf" |confirm
Wizard of Oz |next "oz" |confirm
Romulo & Julianne |next "raj" |confirm
step
label "wolf"
talk Grandmother##17603 |goto Karazhan/4 17.00,34.70
Tell her "Oh, grandmother, what big ears you have."
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill The Big Bad Wolf##17521 |goto Karazhan/4 18.40,34.90
|tip Terrifying Howl is cast every 25-35 seconds, fearing nearby enemies for 3 seconds.
|tip Little Red Riding Hood changes the target into Little Red Riding Hood, reducing their armor and resistances to 0, and increasing speed by 50%. Also pacifies and silences the target.
|tip This raid member will need to run away until this effect ends.
|tip Wide Swipe is cast every 25-35 seconds and stuns the target for 4 seconds.
|next "operaend" |confirm
step
label "oz"
kill The Crone##18168 |goto Karazhan/4 18.40,34.90
|tip Kill order: Dorothee, Roar, Strawman, Tinhead. Killing these spawn The Crone. Killing him ends the event.
_Abilities:_
|tip Dorothee: Water bolt hits for 2000 Frost damage. Frightened Scream AoE, fearing 3 raid members for 2 seconds.
|tip Roar: Frightened Scream AoE, fearing 3 raid members for 2 seconds.
|tip Strawman: Burning Straw chance to be disoriented for 6 seconds when hit by a Fire spell. Brain Bash stuns target for 4 seconds.
|tip Tinhead: Cleave make sure that the main tank is the only one that is in front of the boss when this occurs. Rust slows Tinhead's speed by 10%, stacking up to 8 times.
|tip The Crone: Cyclone knocks the targeted player up into the air, dealing fall damage. Chain Lightning deals 2800 damage, jumping to nearby targets and dealing increased damage after every jump. Hits up to 5 players.
|next "operaend" |confirm
step
label "raj"
kill Romulo##17533 |goto Karazhan/4 18.40,34.90
|tip Backward Lunge strikes an enemmy behind the Romulo, dealing weapon damage plus 300 and knocking the target back.
|tip Deadly Swathe strikes nearby enemies in front of Romulo, dealing weapon damage plus 300 and hitting up to 3 targets.
|tip Poisoned Thrust is a stacking debuff that reduces all stats by 10%, stacking up to 8 times.
|tip Daring inceases Romulo's attack speed and Physical damage dealt by 50% for 8 seconds.
kill Julianne##17534
|tip Eternal Affection heals one of Julianne's allies for about 50,000.
|tip Powerful Attraction stuns Julianne's target for 6 seconds.
|tip Blinding Passion deals 4500 Holy damage over 4 seconds.
|tip Devotion increases Julianne's spell casting speed and damage by 50% for 10 seconds.
|next "operaend" |confirm
step
label "operaend"
map Karazhan
path loop off
path	Karazhan/4 20.00,41.20	Karazhan/5 47.00,83.90	Karazhan/5 78.10,58.40
path	Karazhan/5 65.00,25.70	Karazhan/6 40.90,16.20	Karazhan/6 41.80,34.50
path	Karazhan/6 48.60,46.50	Karazhan/6 52.80,53.90	Karazhan/6 58.10,62.10
path	Karazhan/6 43.00,83.60	Karazhan/6 58.86,76.61	Karazhan/6 44.60,83.50
Follow the path, clearing trash as you make your way to the next boss, Nightbane.
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click the Urn to summon Nightbane. This will start the boss fight, make sure you are ready.
|confirm
step
kill Nightbane##17225 |goto Karazhan 44.60,83.50
|tip Nightbane is immune to taunts.
|tip Phase 1 is the ground phase. Nightbane will alternate between this phase and Phase 2 during the fight.
|tip Phase 2 is flight phase. These phases occur at 75%, 50%, and 25% health.
_Ground Phases_
|tip Bellowing Roar is an AoE fear, cast every 45-60 seconds. Healers and DPS at range should be able to avoid it.
|tip Charrred Earth is an AoE cast on a random raid member. Does a DoT that deals up to 3000 FIre damage per second. It disappears once the player leaves the affected area.
|tip Distracting Ash debuff that reduces Nightbane's target's chance to hit with melee and spells by 30% for 40 seconds. This can be dispelled.
|tip Smoldering Breath inflicts 5000-6000 Fire damage to raid members in a frontal cone.
|tip Tail Sweep_ deals 450 Fire damage in a cone behind Nightbane. Also knocks them back and deals 450 damage every 3 seconds for 25 seconds.
|tip He also has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
_Flight Phases_
|tip Rain of Bones is cast on a random raid member, dealing 400 AoE damage and summoning Restless Skeleton adds.
|tip Smoking Blast deals 2000 damage every second for 15 seconds to the target with highest threat and an additional 3000 Fire damage over 18 seconds. This DoT can be dispelled.
|tip Fireball Barrage is cast if any member of the raid is too far away from Nightbane while in the Flight phase. Each fireball deals 3500 damage, casting a fireball each second until all raid members are within range again.
|confirm
step
map Karazhan
path loop off
path	Karazhan/6 55.90,73.90	Karazhan/6 62.50,75.40	Karazhan/6 65.30,68.80
path	Karazhan/7 57.30,27.00	Karazhan/7 47.80,62.50	Karazhan/7 53.90,54.90
path	Karazhan/7 51.00,67.90	Karazhan/8 60.50,51.90	Karazhan/8 44.20,39.90
path	Karazhan/8 29.80,57.70	Karazhan/8 45.70,74.50	Karazhan/9 61.10,21.30
path	Karazhan/9 59.90,17.60	Karazhan/9 56.00,14.50	Karazhan/9 45.60,14.10
path	Karazhan/9 40.50,19.90
Follow the path, clearing trash as you make your way to the next boss, The Curator. |goto Karazhan/9 40.50,19.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Curator##15691 |goto Karazhan/9 46.80,31.90
|tip Summon Astral Flare spawns an Astral Flare every 10 seconds (10 Flares total). The Flare spawns with threat from a non-tank raid member and immediately moves in their direction, hitting nearby raid members with Arcing Sear.
|tip Killing these as quickly as possible is essential, as you don't want more than one of them dealing damage at the same time.
|tip Hateful Bolt hits a non-tank raid member, dealing about 5000 Arcane damage.
|tip Evocation lasts for 20 seconds and occurs after The Curator has summoned all 10 Astral Flares. He becomes inactive for 20 seconds while recovering mana and increasing damage taken by 200%. Deal as much damage as possible.
|tip Soft Enrage occurs when The Curator reaches 15% health, increasing melee attack speed and Hateful Bolt cast rate. At this point he no longer uses Evocation or summons Astral Flares. Kill him as fast as possible to avoid death.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Karazhan/9
path loop off
path	52.20,42.80	49.70,51.40	49.90,59.30
path	40.90,59.20	33.80,62.20	41.90,67.40
path	44.40,79.70	40.00,83.00	32.10,68.20
path	Karazhan/10 28.70,55.90	Karazhan/10 27.70,43.50	Karazhan/10 36.50,33.30
path	Karazhan/10 36.80,22.30
Follow the path, clearing trash as you make your way to the next boss, Terestian Illhoof. |goto Karazhan/10 36.80,22.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Perplexing Bookshelf to gain access to the secret room.
|confirm
step
Follow the path down |goto Karazhan/11 44.00,51.00 <5 |c
step
kill Terestian Illhoof##15688 |goto Karazhan/11 53,69
|tip Shadow Bolt deals 4000 Shadow damage to the raid member with the highest threat.
|tip Sacrifice deals 1500 damage per second to a random raid member, also summoning them to the center of the room and stunning them until the Chains are killed.
|tip While the Chains are alive, Illhoof is also healed for 3000 health per second. When this occurs, killing these are top priority.
|tip Berserk occurs after 10 minutes of combat. Illhoof spams high-damage Shadow Bolt Volleys on the entire raid group every few seconds.
|confirm
step
map Karazhan/10
path loop off
path	38.30,25.60	48.30,45.20	58.10,42.40
path	63.60,35.80
Follow the path, clearing trash as you make your way to the next boss, the Shade of Aran |goto Karazhan/10 63.60,35.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Private Library Door
|confirm
step
kill Shade of Aran##16524 |goto Karazhan/10 71.10,26.60
|tip Summon Water Elementals Aran spawns 4 Water Elementals to protect him.
|tip Frostbolt deals 4000 Frost damage and reduces the movement speed of the target for 4 second.
|tip Fireball deals 4000-5000 Fire damage and is interruptable.
|tip Arcane Missles is a 5 second channelled spell that shoots 5 missles, each dealing about 1350 Arcane damage. This spell is interruptable.
|tip Chains of Ice is a 10 second root.
|tip AoE Counterspell is a 10 yard AoE interrupt and locks out schools of magic for 10 seconds.
|tip Flame Wreath is used randomly every 30 seconds. It creates a fiery aura around 3 random raid members that last for 20 seconds.
|tip When stepped on, the Auras are triggered, dealing 3000-4000 Fire damage to everyone in the room. They can still be triggered after Aran's death.
|tip Circular Blizzard is used randomly every 30 seconds. It is a large AoE that slowly moves clockwise around the room, dealing 1500 Frost damage every 2 seconds and slowing movement speed by 65%.
|tip Magnetic Pull/Slow/Super Arcane Explosion pulls everyone to the center of the room and slows them. It is then followed by a 10 second cast Arcane Explosion that deals 10,000 damage in a 20 yard radius.
|confirm
step
map Karazhan/12
path loop off
path	Karazhan/10 55.20,46.80	 Karazhan/10 60.20,58.50	Karazhan/12 48.40,57.20
path	54.60,49.60	52.80,70.90	44.50,80.80
path	36.30,78.00	25.30,60.70	Karazhan/13 53.80,78.10
path	Karazhan/13 44.10,57.10
Follow the path, clearing trash as you make your way to the next boss, Netherspite |goto Karazhan/13 44.10,57.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Netherspite##15689 |goto Karazhan/13 36.60,43.60
|tip Nether Burn deals 1200 Shadow damage every 5 seconds. Only active during Portal Phase.
|tip Void Zone opens a large portal that lasts 25 seconds, inflicting 1000 Shadow damage every 2 seconds to all raid members in that area.
|tip Netherbreath is a conal ability that hits all targets in front of Netherspite, dealing 4500 Arcane damage and knocking them back about 20 yards.
|tip Empowerment occurs during Portal Phases a few seconds after beams come up. It is a self-buff and increases Netherspite's damage by 200%.
|tip Enrage occurs after 9 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Portal Phase_
|tip The first phase of the fight, lasting 1 minute and alternating with the Banish Phase.
|tip A red, green, and blue portal open up and shoot out beams of light at Netherspite, giving him a stacking buff. Physically blocking these beams with a raid member is essential, cutting off his buffs and giving them to that player. Along with the buffs come a negative effect, so rotating raid members is normal.
|tip Red is tank beam.
|tip Green is healer beam.
|tip Blue is DPS beam.
_Banish Phase_
|tip The second phase of the fight, lasting 30 seconds and alternating with the Portal Phase.
|tip Netherspite becomes banished, remaining stationary but becoming vulnerable to all damage.
|tip After a few seconds Netherspite targets random raid members, casting Netherbreath.
|tip All aggro is wiped at the end of this phase.
|confirm
step
map Karazhan/12
path loop off
path	Karazhan/13 49.50,67.20	Karazhan/13 56.40,83.00	27.10,61.50
path	27.00,57.60	21.30,47.60	23.80,41.60
path	30.10,33.90	34.40,26.70	39.90,18.60
Follow the path, clearing trash as you make your way to the next boss, the Chess event. |goto Karazhan/12 39.90,18.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Gamesman's Hall Door to enter the Gamesman's Hall
|confirm
step
talk Warchief Blackhand##21752 |goto Karazhan/14 40.90,68.90
"Control Warchief Blackhand"
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill King Llane##21684 |goto Karazhan/14 39.40,67.60
The goal of this fight is to kill _King Llane_ by using your "chess" pieces, without letting them kill _Warchief Blackhand_. Each piece has their own abilities.
|tip
_Warchief Blackhand_
|tip Cleave deals 7200 damage to 3 frontal adjacent enemies.
|tip Bloodlust grants 50% increased damage to all allies on 8 adjacent squares.
_Orc Warlock_
|tip Fireball deals 7200 damage to any single enemy piece.
|tip Poison Cloud deals 10800 damage to any enemy chess piece and all adjacent enemy pieces.
_Orc Necrolyte_
|tip Shadow Mend heals a friendly piece for 21,600.
|tip Shadow Spear deals 3600 damage to enemy pieces standing in front in a straight line of 3.
_Orc Wolf_
|tip Bite deals 5400 damage to a target 1 square in front.
|tip Howl reduces damage dealt by three front adjacent enemy pieces by 50%. Lasts 20 seconds.
_Summoned Daemon_
|tip Hellfire deals 5400 damage to all adjacent enemy pieces.
|tip Fire Shield reduces damage taken by 50% for 5 seconds.
_Orc Grunt_
|tip Vicious Strike deals 1800 damage to a target 1 square in front.
_Medivh cheats:_
|tip Healing Cheat heals Warchief Blackhand and all other enemy pieces to full health.
|tip Damage Cheat places a fire AoE on a random player controlled piece.
|tip Berserking Cheat grants one of Medivh's pieces increased size, speed, and damage.
|confirm
step
Loot the Dust Covered Chest |goto Karazhan/14 25.90,74.50
|confirm
step
map Karazhan/14
path loop off
path	52.00,61.60	56.00,56.80	50.10,46.20
path	50.10,46.20	68.30,46.20	77.20,58.00
Follow the path, clearing trash as you go. Climb these stairs all the way to the top. |goto Karazhan/17 48.20,85.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Karazhan/17
path loop off
path	40.90,81.60	39.70,72.30	44.70,64.10
Follow this path to the final boss, Prince Malchezaar. |goto Karazhan/17 44.70,64.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Prince Malchezaar##15690 |goto Karazhan/17 53.90,42.00
|tip Phase 1 starts immediately after Malchezaar is engaged in combat.
|tip Phase 2 starts at 60% health. Malchezaar will now use Flying Axes in this phase.
|tip Phase 3 starts at 30% health. Flying Axes and Amplify Damage will be used in this final phase.
|tip Summon Infernal spawns a Netherspite Infernal that casts a large AoE Hellfire on the raid. These cannot be attacked and must be avoided.
|tip Enfeeble is cast on 5 random raid members, reducing their maximum health to 1 hit point for 7 seconds.
|tip Shadow Nova is usually cast after Enfeeble. It has a range of 24 yards, deals about 3000 Shadow damage and has a knockback. This can easily be avoided by staying at range of Malchezaar.
|tip Shadow Word: Pain is a DoT cast on Malchezaar's main target or a random target, dealing 1500 damage per tick. This can be dispelled.
|tip Thrash makes Malchezaar's melee attack hit his target 2 additional times.
|tip Flying Axes hit random targets
|tip Amplify Damage is a debuff that doubles the target's damage taken from all sources. It is cast on a random target and is not dispellable.
|confirm
step
label "raidend"
Finished |complete true
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Magtheridon's Lair",{
mapid=331,
achieveid={693},
patch='30102',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"HFP, Peninsula"},
description="This guide will walk you through the Magtheridon's Lair Raid.",
},[[
step
Enter Magtheridon's Lair |goto Magtheridon's Lair/1 62.72,18.03 < 1000
step
map Magtheridon's Lair
path loop off
path	68.40,25.60	68.60,48.00	63.60,59.30
path	57.50,68.70	65.00,93.40
Follow the path, clearing trash as you make your way to Magtheridon. |goto Magtheridon's Lair 65.00,93.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magtheridon##17257 |goto Magtheridon's Lair 68,78
_Phase 1_
|tip This phase starts as soon you a Channeler is engaged in combat. The raid has 2 minutes before Magtheridon becomes active. Interrupt and kill as many Channelers as possible.
_Phase 2_
|tip Starts when Magtheridon becomes active and starts attacking the raid. Any remaining Channelers need to be killed.
|tip Blast Nova deals a large amount of Fire damage to all raid members in range. Must be interrupted by clicking the 5 Manticron Cubes.
_Phase 3_
|tip Starts when Megtheridon reaches 30% health. He shatters the walls, causing the roof to collapse which deals 5200-6800 damage and a 2 second stun to the entire raid.
|tip Collapse is the destroyed ceiling falling on the raid. It occurs randomly for the rest of this phase.
confirm
step
You may have looted a quest item from Magtheridon.
Click Magtheridon's Head in your bags |use Magtheridon's Head##32385
accept The Fall of Magtheridon##11003
only if not completedq(11003)
step
talk Nazgrel##3230
turnin The Fall of Magtheridon##11003 |goto Hellfire Peninsula 55.00,36.00
only if not completedq(11003)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Serpentshrine Cavern",{
mapid=332,
achieveid={694},
patch='30103',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"SSC, Vashj, Lady"},
description="This guide will walk you through the Serpentshrine Cavern Raid.",
},[[
step
Enter the Serpentshrine Cavern |indoors Coilfang Reservoir |goto Zangarmarsh/0 51.90,32.99 < 5
confirm
step
Take the elevator down |goto Serpentshrine Cavern 13.50,58.90 <5 |c
step
map Serpentshrine Cavern
path loop off
path	15.40,58.00	17.30,66.40	19.00,69.20
path	19.70,68.00
Follow the path to the second elevator, and then take it up. |goto Serpentshrine Cavern 19.70,68.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Serpentshrine Cavern
path loop off
path	21.40,72.90	25.80,73.70	28.10,80.10
path	32.20,82.60
Follow this path, clearing trash as you make your way to the first boss, Hydross the Unstable. |goto Serpentshrine Cavern 32.20,82.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hydross the Unstable##21216 |goto Serpentshrine Cavern 36.80,84.80
|tip Summon Elementals Hydross summons 4 elementals whenever he switches between forms.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Water Form_
|tip Immune to Frost damage.
|tip Mark of Hydross is a raid-wide debuff that stacks up to 6 times, increasing Frost damage taken by 10%, 25%, 50%, 100%, 250%, and finally 500%.
|tip Water Tomb is a single target AoE. It stuns all affected players for 4 seconds and deals 4500 Frost damage over 5 seconds.
_Poison Form_
|tip Immune to Nature damage.
|tip Mark of Corruption is a raid-wide debuff that stacks up to 6 times, increasing Nature damage taken by 10%, 25%, 50%, 100%, 250%, and finally 500%.
|tip Vile Sludge is a debuff that deals 4000 Nature damage over 24 seconds and reduces healing and damage by 50%.
|confirm
step
map Serpentshrine Cavern
path loop off
path	35.90,75.90	36.40,69.60	35.50,64.40
Clear the trash as you make your way to this spot. |goto Serpentshrine Cavern 35.50,64.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Jump off the pipe here and swim to the large circular platform below. |goto Serpentshrine Cavern 36.30,61.90 < 5 |c
step
kill The Lurker Below##21217 |goto Serpentshrine Cavern 40,58
|tip You or a raid member has to fish here in the Strange Pool to summon the boss.
_Phase 1_
|tip Water Bolt deals 9000-11,000 damage to a random target. He will only use this if no player is within melee range.
|tip Whirl deals 3000-4000 physical damage and a 5 yard knockback to all raid members in melee range.
|tip Geyser affects a random raid member, dealing 3000-4000 Frost damage and a 10 yard knockback to everyone within 10 yards of the target.
|tip Spout shoots a water spray from his mouth and begins to rotate 360 degrees, dealing 3500 Frost damage and knocking the target back 60 yards.
_Phase 2_
|tip The Lurker Below submerges underwater, spawning 9 adds. He will resurface after 1 minute.
|tip Coilfang Guardian adds have a Arcing Smash cone, make sure the tank is the only one in front of them when this occurs.
|tip Coilfang Ambusher adds have a Multi-Shot attack, which hits up to 3 players for 2000-3000 damage.
|confirm
step
map Serpentshrine Cavern
path loop off
path	37.10,51.70	40.60,49.50	41.00,42.70
path	40.00,40.10	33.50,41.90	30.00,39.10
path	30.60,29.60	36.10,25.00
Follow the path, clearing trash as you make your way to the next boss, Leotheras the Blind. |goto Serpentshrine Cavern 36.10,25.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Leotheras the Blind##21215 |goto Serpentshrine Cavern 41.30,26.20
|tip He switches between human and demon forms, wiping aggro each time this happens.
_Phase 1_ lasts until Leotheras has 15% health.
_Human Form_
|tip Whirldwind lasts 12 seconds and deals 3000 damage plus a DoT that lasts 15 seconds and deals 2500 damage every 3 seconds.
_Demon Form_
|tip Chaos Blast is an AoE that deals 150 Fire damage and applies a debuff that increases Fire damage taken by 1675 and stacks up to 20 times.
|tip Summon Inner Demons occurs about 45 seconds into the Demon Form phase. Inner Demons are spawns for 5 raid members, they can only be attacked by the person they belong to. If Leotheras returns to human form while one of them are alive that player will be Mind Controlled for 10 minutes.
_Phase 2_ starts at 15% health.
|tip Leotheras splits and both forms must be dealt with at the same time. The demon form has full health while the human form retains the same health.
|tip Kill the human form as quickly as possible to avoid death.
|confirm
step
map Serpentshrine Cavern
path loop off
path	43.10,30.70	45.30,23.30	39.50,20.60
path	42.30,14.20	44.80,14.10
Follow the path, clearing trash as you make your way to the next boss, Fathom-Lord Karathress. |goto Serpentshrine Cavern 44.80,14.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fathom-Lord Karathress##21214 |goto Serpentshrine Cavern 48,17
|tip Cataclysmic Bolt affects a random raid member, dealing 50% of the their maximum health as Shadow damage, knocking them down and stunning them.
|tip Sear Nova deals 3000 Fire damage to all raid members in melee range.
|tip Bkessing of the Tides Karathress gains this buff if he reaches 75% health while any of the other adds are alive. It increases his attack and cast speed by 66% for each add.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Fathom-Guard Sharkkis_
|tip Multi-shot deals 2000-3000 damage to 3 raid members.
|tip Leeching Arrow targets a random raid member and burns 525 health and mana every second for 12 seconds.
|tip Hurl Trident hits a random player for 1500 damage.
|tip Summon Pet spawns an elemental or a beast pet to attack the raid. The elemental pet explodes upon death.
|tip The Beast Within increases Sharkkis' damage by 30# and pet damage by 50%.
_Fathom-Guard Tidalvess_
|tip Spitfire Totem lasts 1 minute and attacks up to 5 raid members within 45 yards for 2500-3500 Fire damage.
|tip Poison CLeansing Totem removes 1 poison effect from Tidalvess every 5 seconds.
|tip Earthbind Totem periodically reduces the movement speed of nearby players by 50%.
_Fathom-Guard Caribdis_
|tip Water Bolt Volley is a 45 yard AoE that deals 2700-3200 Frost damage.
|tip Tidal Surge is a 10 yard AoE stun that lasts 3 seconds.
|tip Healing Wave is a single target heal cast on any mob or herself, healing 20-30% health.
|tip The Whirlwind spawns a whirlwind near her, which moves around the room, knocking players into the air for 3-9 seconds and applying a debuff that increases their cast time.
|confirm
step
map Serpentshrine Cavern
path loop off
path	51.40,14.30	58.10,11.40	59.40,19.10
Follow the path, clearing trash as you make your way to the next boss, Morogrim Tidewalker. |goto Serpentshrine Cavern 59.40,19.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Morogrim Tidewalker##21213 |goto Serpentshrine Cavern 59.40,25.10
|tip Tidal Wave deals 4000-5000 Frost damage to the target and reduces their attack speed by 400% for 15 seconds.
|tip Watery Grave teleports 4 raid members under the waterfalls, inflicting 6000 damage after 6 seconds and fall damage.
|tip Earthquake deals 3000-4000 damage in a 50 yard radius around Morogrim.
|tip Summon Murlocs Morogrim spawns 2 packs of 6 murlocs each after every Earthquake.
|tip Summon Watery Globules occurs at 25% health. He stops casting Watery Grave and summons 4 watery globules, 1 from each grave spot. They move towards a raid member and explode for 4000-6000 damage.
|confirm
step
map Serpentshrine Cavern
path loop off
path	59.50,32.90	52.90,41.70	47.00,41.70
path	41.30,41.60	40.90,48.00	46.90,51.00
path	50.50,58.30
Follow the path, clearing trash as you make your way to the last boss, Lady Vashj. |goto Serpentshrine Cavern 50.50,58.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click Lady Vashj's Bridge Console to bring up the bridge. |goto Serpentshrine Cavern 50.50,58.30
|confirm
step
kill Lady Vashj##21212 |goto Serpentshrine Cavern 71.80,59.10
|tip Multi-Shot hits the target and up to 4 nearby raid members for 6500-7500 damage.
|tip Shock Blast deals 9000 Nature damage and a 5 second stun to the targeted raid member.
|tip Entangle is a 10 second AoE immobilize that affects all raid members within 15 yards of Vashj.
|tip Static Charge is a debuff that does 2000 damage per tick to the target and anyone within 5 yards, lasting 15 seconds.
_Phase 2_
|tip Vashj spawns adds to attack the raid and her shield must be turned off.
|tip Forked Lightning deals 2300-2600 Nature damage in a frontal cone. Make sure the tank is the only one in front of her when this occurs.
|tip Enchanted Elemental: slowly moves toward Vashj and increases her damage by 5% if it reacher her.
|tip Tainted Elemental: does Poison Spit, which hits a random target for 2000 Nature damage and an additional DoT that deals 2000 damage every second for 8 seconds.
|tip Tainted Elementals drop Tainted Cores which are used to destroy Lady Vashj's shield, 4 are needed.
|tip Coilfang Elite: has a cleave. Make sure the tank is the only one in front of them when this occurs.
|tip Coilfang Strider: uses Mind Blast that deals 2500 Shadow damage. Panic Aura is an 8 yard AoE that causes a 4 second Fear every tick.
_Phase 3_
|tip Toxic Spore Bats: continue to spawn in this phase. They use Toxic Spores, which is a poison AoE that deals 1500 Nature damage per second.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Sunwell Plateau",{
mapid=335,
achieveid={698},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Kil'jaeden, Isle, Quel'Danas"},
description="This guide will walk you through the Sunwell Plateau Raid.",
},[[
step
Enter Sunwell Plateau |goto Sunwell Plateau/1 30.94,36.41 < 1000
step
map Sunwell Plateau/1
path loop off
path	33.90,43.30	36.60,51.50	33.70,58.30
path	25.10,59.80	17.60,55.50	16.90,45.70
path	23.60,39.70	31.50,33.80	40.00,35.30
path	40.50,65.30	21.30,66.50	15.60,66.00
path	12.20,54.00	21.30,50.80
Follow the path, clearing trash as you make your way to the first boss, Kalecgos. |goto Sunwell Plateau/1 21.30,50.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "dragon"
kill Kalecgos##24850 |goto Sunwell Plateau/1 29,50
This fight takes place in two realms at the same time. Both fights need to be done and coordinated at the same time.
_Normal Realm_
|tip Players must face and subdue Kalecgos the dragon.
|tip Arcane Buffet deals 500 Arcane damage plus a stacking debuff that increases Arcane damage taken by 500 for 40 seconds. Hits all players in the normal realm.
|tip Frost Breath is a 30 yard frontal AoE spell that slows attack speed by 75% to all raid members affected.
|tip Tail Lash deals 1500 damage and a 2 second stun to raid members behind Kalecgos.
|tip Spectral Blast is cast about every 20 seconds and Kalecgos targets a random raid member. After 2 seconds they take 5000 Arcane AoE damage. They are also teleported to the spectral realm and for about 10 seconds a portal is opened that other raid members can use to go there too.
|tip Wild Magic gives a random target a random buff/debuff.
_Green:_
|tip Increases healing by 100%.
_Purple:_
|tip Increases cast time by 100%.
_Red:_
|tip Reduces chance to hit with melee and ranged attacks by 50%.
_White:_
|tip Increases damage done by critical hits by 100%.
_Black:_
|tip Increases threat generation by 100%.
_Blue:_
|tip Reduces spell and ability costs by 50%.
|tip Enrage occurs when either Kalecgos or Sathrovarr reach 10% health, both enrage, greatly increasing their damage. Kill them both as fast as possible to avoid death.
Click here to see mechanics for the spectral realm and Sathrovarr the Corruptor |next "kalec" |confirm
Click here when the fight is over |next "kalecgosend" |confirm
step
label "kalec"
kill Sathrovarr the Corruptor##24892 |goto Sunwell Plateau/1 29,50
|tip This fight takes place in two realms at the same time. Both fights need to be done and coordinated at the same time.
_Spectral Realm_
|tip Spectral Realm is a debuff dealt to players upon entering the realm. It lasts 60 seconds and they are teleported back to the normal realm once it expires.
_Sathrovarr_
|tip Corrupting Strike deals 9000 Shadow damage, a stun, and an additional 1000 damage over 3 seconds.
|tip Curse of Boundless Agony is a 30 second Shadow DoT that deals increasing damage every tick, starting at 100 damage and doubling every 5 seconds. If this kills the target or if it is removed it jumps to the next target.
|tip Shadow Bolt Volley deals 5000 Shadow damage to a random raid member and up to two nearby members.
|tip Enrage occurs when either Kalecgos or Sathrovarr reach 10% health, both enrage, greatly increasing their damage. Kill them both as fast as possible to avoid death.
_Kalec_
|tip Revitalize is a random buff dealt to nearby raid members, restoring 450 health and mana every 3 seconds for 10 seconds and stacking up to two times.
Click here to see mechanics for the normal realm and Kalecgos |next "dragon" |confirm
Click here when the fight is over |next "kalecgosend" |confirm
step
label "kalecgosend"
map Sunwell Plateau/1
path loop off
path	50.40,51.50	51.90,60.30	59.50,71.10
path	62.40,73.70
Follow the path, clearing trash as you make your way to the next boss, Brutallus. |goto Sunwell Plateau/1 62.40,73.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brutallus##24882 |goto Sunwell Plateau/1 65,84
|tip Meteor Slash deals 20,000 Fire damage split between enemy targets in a cone in front of Brutallus. Also increases Fire damage taken by 75%. Stacks up to 100 and lasts 40 seconds.
|tip Burn is a 60 second debuff and spreads to nearby raid members. The debuff deals Fire damage every second and slowly increases.
|tip Stomp_is an AoE that deals 20,000 damage and reduces armor of those hit by 50% for 10 seconds. Removes Burn if target has it.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
kill Felmyst##25038 |goto Sunwell Plateau/1 67.00,90.00
|tip Cleave make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Corrosion deals 10,000 Nature damage and increases physical damage taken by 100% on the tank. Lasts 10 seconds.
|tip Gas Nova is an AoE spell that deals 2000 Nature damage and drains 3000 health and 1000 mana every 2 seconds for 30 seconds.
|tip Noxious Fumes deals 1000 Nature damage every 3 seconds to all raid members within 100 yards of Felmyst. Not resistable.
|tip Encapsulate lifts a random raid member into the air and does 5 ticks, dealing 3500 Arcane damage to them and everyone within 20 yards.
|tip Demonic Vapor is a breath ability used when Felmyst is in the air. It deals 4000 Nature damage and summons skeleton adds. Stepping in the trail left by this also deals 2000 Nature damage per second for 10 seconds and summons additional skeleton adds.
|tip Fog Corruption is an AoE spell that mind controls raid members inside of it fr the duration of the battle. Players affected by this should be killed off.
|tip Berserk occurs after 10 minutes of combat. It increases her damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Sunwell Plateau/1
path loop off
path	76.80,69.80	69.40,74.60	76.60,57.90
path	67.50,68.20	73.50,54.80	74.90,50.20
path	78.10,38.00	68.60,35.00
Follow the path, clearing trash as you make your way to the next boss, the Eredar Twins. |goto Sunwell Plateau/1 68.60,35.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Eredar Twins |goto Sunwell Plateau/1 64,32
kill Lady Sacrolash##25165
|tip Confounding Blow confounds the target for 6 seconds, dealing 7500-10,000 Shadow damage. Temporarily drops target's aggro.
|tip Dark Touched is a stacking debuff that reduces healing effects by 5%, stacking up to 20 times. Lasts 3 minutes and can only be removed by being hit with Fire damage from either boss.
|tip Shadow Blades deals 2500-3500 physical damage and also applies _Dark Strike_, which deals 450 Shadow damage every 2 seconds and slows the target by 10% for 10 seconds, stacking up to 5 times.
|tip Shadow Nova deals 3500 Shadow damage to every raid member in a 10 yard radius of Sacrolash's target.
|tip Shadow Image Lady Sacrolash spawns multiple Shadow Image adds which die after a short amount of time. These adds cannot be targeted and can deal melee or AoE damage.
|tip Berserk occurs after 6 minutes of combat. It increases her damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
kill Grand Warlock Alythess##25166
|tip Pyrogenics is a buff that increases Alythess' Fire damage by 35%.
|tip Flame Touched is a stackable debuff that deals 300 Fire damage every 2 seconds. Stacks up to 20 times and can only be removed by being hit with Shadow damage.
|tip Conflagration is a debuff that deals 1600 Fire damage to everyone within 8 yards of Alythess' target. It also confounds the target and deals 1600 Fire damage every second in the targeted area.
|tip Blaze deals 5500-7500 Fire damage and leaves an AoE on the ground which burns for 2500 Fire damage.
|tip Flame Sear is a debuff that affects 3-5 random raid members and deals 650 Fire damage every half-second for 6 seconds.
|tip Berserk occurs after 6 minutes of combat. It increases her damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Sunwell Plateau/1
path loop off
path	58.30,29.50	66.90,22.60	71.60,27.20
path	79.90,20.80	72.80,16.80	67.30,26.70
Follow the path, clearing trash as you make your way to the next boss, M'uru. |goto Sunwell Plateau/1 67.30,26.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill M'uru##25741 |goto Sunwell Plateau/2 46,24
|tip Negative Energy hits 4-5 random raid members, dealing 1000 Shadow damage. This lasts the entire fight.
|tip Darkness creates a large AoE Void Zone that deals 3000 Shadow damage every second to all raid members inside it, and they cannot be healed. This also spawns 8 Dark Fiend adds.
|tip Summons Shadowsword Berserker These deal high melee damage and have a buff that increases their attack speed and movement by 100%.
|tip Summons Shadowsword Fury Mage These cast Fel Fireball, which deal 5000 Fire damage. They can also melee for 3000-4000 damage. They have a buff, Spell Fury, which causes spells to cast instantly, increases magic damage by 50% and makes them unable to move.
|tip Summons Void Sentinel Spawns a Voidwalker that hits for 9000-10,000 with melee attacks. Also has Shadow Pulse, an AoE that deals 4000 Shadow damage every 3 seconds. And Void Blast, which deals 10,000-11,000 damage as well as a debuff slowing attack speed by 35%.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
kill Entropius##25840
|tip Negative Energy deals 2000 Shadow damage to Entropius' target, jumping to a nearby target and hitting for half the previous damage. The number of maximum targets this can hit increases every 12-15 seconds.
|tip Darkness spawns a Void Zone under a raid member, dealing 3000 Shadow damage every second. This also spawns a Dark Fiend that must be Dispelled or Purged.
|tip Singularity spawns over a raid member, after a few seconds it will move around and toss any nearby raid members into the air, interrupting them and dealing 500 damage.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Sunwell Plateau/2
path loop off
path	32.40,41.50	27.90,60.90	36.70,83.60
path	48.20,87.00	60.30,66.50
Follow the path, clearing trash as you make your way to the last boss, Kil'jaeden. |goto Sunwell Plateau/2 60.30,66.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Kil'jaeden_ |goto Sunwell Plateau/2 46,61
|tip This fight consists of 5 phases.
_Phase 1_
|tip Kill the 3 Hands of the Deceiver adds that are around the Sunwell.
|tip Shadow Bolt Volley deals 1000 Shadow damage to all raid members within 30 yards and applies a stackable debuff that increases Shadow damage taken by 750.
|tip Soul Portal opens a portal that spawns Volatile Felfire Fiend. They run toward nearby raid members and explode, dealing massive damage. They have very low hit points and should be killed immediately.
|tip Shadow Infusion occurs when the Hand has 20% health. The Hand will get a buff that makes him immune to stun and silence effects.
_Phase 2_
|tip starts after all Hands of the Deceiver are killed.
Click here to move to Phase 2 |confirm
step
_Kil'jaeden_ |goto Sunwell Plateau/2 46,61
_Phase 2_
|tip Kil'jaeden spawns, knocking back all raid members within the glowing circle in the middle of the room.
|tip Soul Flay deals 3000 Shadow damage per second and reduces the target's movement speed.
|tip Legion Lightning is an AoE spell that deals 3000-3500 Shadow damage to the target, then jumping to a nearby raid member and dealing less damage after each jump. It also drains 1500 mana from each player it affects.
|tip Fire Bloom places a debuff on up to 5 random raid members, dealing 1700 Fire damage every 2 seconds to the target and all other raid members within 10 yards. Lasts 20 seconds.
|tip Summon Shield Orb spawns a Shield Orb that attacks the raid with Shadow Bolts. These have low hit points and should be killed quickly after spawning.
_Phase 3_
|tip This phase starts at 85% health.
Click here to move to Phase 3 |confirm
step
_Kil'jaeden_ |goto Sunwell Plateau/2 46,61
_Phase 3_
|tip 30-40 seconds into this phase, Kalecgos will empower 1 of the 4 Orbs of the Blue Dragonflight around the room. Clicking these will turn you into a dragon and give you special abilities for 2 minutes. These abilities help counter some of Kil'jaeden's abilities.
|tip Sinister Reflection spawns 4 Sinister Reflections, mimicking the target player's class and image. Melee attacks from these Reflections deal large amounts of damage.
|tip Shadow Spike bombards randomly targeted raid members with spikes that explode when they reach their target, dealing 5000-6200 Shadow damage to all nearby raid members. Also applies a debuff that reduces healing effects by 50% for 10 seconds.
|tip Flame Dart Explosion deals 1800 Fire damage every 3 seconds, unless the player is affected by Breath:Haste from the Orbs of the Blue Dragonflight.
|tip Darkness of a Thousand Souls Kil'jaeden covers himself with wings. After 8 seconds he hits all raid members for 47,000-52,000 Shadow damage. This is countered by the Shield of the Blue ability from Orbs of the Blue Dragonflight.
_Phase 4_
|tip This phase starts at 55% health.
Click here to move to Phase 4 |confirm
step
_Kil'jaeden_ |goto Sunwell Plateau/2 46,61
_Phase 4_
|tip Armageddon is an AoE meteor spell that deals 10,000 damage to any player inside it. There will be 3 of these will be in effect for this entire phase.
_Phase 5_
|tip This phase starts at 25% health.
Click here to move to Phase 5 |confirm
step
_Kil'jaeden_ |goto Sunwell Plateau/2 46,61
|tip This is the final phase of this fight.
_Phase 5_
|tip Sacrifice of Aveena is a debuff that is applied to Kil'jaeden for this phase. It increases Holy damage he takes by 25%.
|tip This phase is a dps race - kill him as quickly as possible to avoid death.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Ahn'kahet: The Old Kingdom",{
mapid=132,
achieveid={481},
patch='30008',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"OK, Dragonblight"},
description="This guide will walk you through the Ahn'kahet: The Old Kingdom dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Ahn'kahet: The Old Kingdom or enter the dungeon with your group |goto Ahn'kahet: The Old Kingdom/1 90.00,79.10 |c
step
talk Seer Ixit##55658
accept Pupil No More##29825 |goto Ahn'kahet: The Old Kingdom 87.20,72.60
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	86.60,71.30	83.90,64.60	80.10,54.70
path	79.60,46.60	81.30,39.50	80.20,31.80
path	74.40,30.60
Follow the path |goto Ahn'kahet: The Old Kingdom/1 74.40,30.60 < 6
|tip Kill Ahn'kahar Spell Flingers first. Be sure to interrupt their Shadow Blast.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Elder Nadox##29309
kill Elder Nadox##29309 |q 29825/1 |only if haveq(29825) |goto Ahn'kahet: The Old Kingdom/1 70.40,28.60
|tip Brood Plague is a disease that deals nature damage over 30 seconds. Dispel.
|tip Brood Rage enrages nearby swarmers, increasing their health and damage.
|tip Destroy Ahn'kahar Guardians to drop Nadox's immunity.
|tip AoE Ahn'kahar Swarmers quickly to minimize the numbers affected by Brood Rage.
Defeat Elder Nadox |scenariogoal 27901 |goto Ahn'kahet: The Old Kingdom/1 70.40,28.60
step
Click the Complete Quest Box in the top right corner of your screen.
turnin Pupil No More##29825
accept Reclaiming Ahn'Kahet##29826
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	70.60,29.90	67.10,33.00	64.90,25.80
path	61.50,28.10	61.70,34.40	57.20,34.00
path	56.80,27.50
click Ancient Nerubian Device##8393
|tip You must activate these devices at each platform.
Follow the path |goto Ahn'kahet: The Old Kingdom/1 56.80,27.50 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill the mobs around the Ancient Nerubian Device, then click it.
click Ancient Nerubian Device##8393 |goto Ahn'kahet: The Old Kingdom/1 56.70,24.40
|confirm
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	56.80,27.50	57.20,34.00	54.50,35.00
path	50.10,29.90
click Ancient Nerubian Device##8393
|tip You must activate these devices at each platform.
Follow the path |goto Ahn'kahet: The Old Kingdom/1 50.10,29.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill the mobs around the Ancient Nerubian Device, then click it.
click Ancient Nerubian Device##8393 |goto Ahn'kahet: The Old Kingdom/1 50.10,29.90
|confirm
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	51.10,31.10	54.80,35.40	56.10,46.40
path	58.90,49.10
Follow the path |goto Ahn'kahet: The Old Kingdom/1 58.90,49.10 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 3 Eye of Taldaram##30285+ |q 29826/1 |only if haveq(29826)
kill Bonegrinder##30284 |q 29826/2 |goto Ahn'kahet: The Old Kingdom/1 56.90,38.20 |only if haveq(29826)
step
kill Prince Taldaram##29308
kill Prince Taldaram##29308 |q 29826/3 |only if haveq(29826) |goto Ahn'kahet: The Old Kingdom/1 63.10,50.40
|tip Conjure Flame Sphere floats towards a player. Try not to come in contact with it.
|tip He will disappear and reappear behind a random player, inflicting Embrace of the Vampyr.
|tip Embrace of the Vampyr stuns the player and deals shadow damage. Deal 20,000 damage to Taldaram to break it. |only if not heroic_dung()
|tip Embrace of the Vampyr stuns the player and deals shadow damage. Deal 40,000 damage to Taldaram to break it. |only if heroic_dung()
Defeat Prince Taldaram |scenariogoal 27902 |goto Ahn'kahet: The Old Kingdom/1 63.00,49.40
step
Click the Complete Quest Box in the top right corner of your screen
turnin Reclaiming Ahn'Kahet##29826
accept The Faceless Ones##13187
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	64.90,46.10	66.80,46.90	64.30,51.50
path	60.40,51.90	58.30,56.10
Follow the path |goto Ahn'kahet: The Old Kingdom/1 58.30,56.10 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	57.80,57.30	58.90,62.40	65.40,58.60
path	66.70,63.10	65.70,68.10
Follow the path |goto Ahn'kahet: The Old Kingdom/1 65.70,68.10 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
To skip the optional heroic boss Amanitar, click here |confirm |next "Jedoga"
confirm
only if heroic_dung()
step
kill Amanitar##30258 |goto Ahn'kahet: The Old Kingdom/1 66.30,78.30
|tip Pull the Cave Beasts before Amanitar.
|tip Mini shrinks all players, reducing damage by 75%. Kill a healthy mushroom while standing near it to cancel.
|tip Entangling Roots deals nature damage and immobilizes over 10 seconds.
|tip Healthy Mushroom, Upon death, cancels the effects of Mini and increases damage by 100%.
|tip Poisonous Mushroom, Upon death, deals nature damage every 2 seconds.
confirm
only if heroic_dung()
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	65.70,68.10	66.70,63.10	65.40,58.60
path	58.90,62.40	57.80,57.30
Follow the path |goto Ahn'kahet: The Old Kingdom/1 57.70,60.00 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
label "Jedoga"
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	56.90,59.10	51.50,58.00	49.10,64.00
Follow the path |goto Ahn'kahet: The Old Kingdom/1 49.10,64.00 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
To skip the optional boss Jedoga Shadowseeker, click here |confirm |next "Herald"
confirm
step
kill Jedoga Shadowseeker##29310
|tip Cyclone Strike deals damage and knocks back anyone close to Jedoga. Move away.
|tip Thundershock creates a cloud of lightning. Move out or suffer heavy damage.
|tip At 50% health, Jedoga calls a Twilight Volunteer. Don't let it reach her or she will gain 200% damage for 20 seconds.
Defeat Jedoga Shadowseeker |scenariogoal 27903 |goto Ahn'kahet: The Old Kingdom/1 49.30,72.30
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	47.90,68.10	50.10,61.20	52.30,51.60
Follow the path |goto Ahn'kahet: The Old Kingdom/1 52.30,51.60 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Herald"
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	56.50,58.80	52.60,52.10	49.50,48.60
path	41.10,49.40	37.60,49.80
Follow the path |goto Ahn'kahet: The Old Kingdom/1 37.60,49.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 3 Forgotten One##30414+ |only if not haveq(13187) |goto Ahn'kahet: The Old Kingdom/1 32.40,50.10
kill 3 Forgotten Ones##30414+ |q 13187/1 |only if haveq(13187) |goto Ahn'kahet: The Old Kingdom/1 32.40,50.10
|tip Avoid Shadow Crash, an AoE attack that targets the ground.
|confirm |only if not haveq(13187)
step
kill Herald Volazj##29311
kill Herald Volazj##29311 |q 13187/2 |only if haveq(13187)
|tip Shadow Bolt Volley deals shadow damage to all players.
|tip Shiver is a curse that deals shadow damage whenever a player is hit and then jumps to another player within 20 yards. Stay spread out and decurse.
|tip When Insanity is active kill the twisted visions of your allies to be released. No effect solo.
Defeat Herald Volazj |scenariogoal 1/27905 |goto Ahn'kahet: The Old Kingdom/1 22.80,50.70
step
talk Seer Ixit##55658
turnin The Faceless Ones##13187 |goto Ahn'kahet: The Old Kingdom/1 26.90,50.40
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Azjol-Nerub",{
mapid=157,
achieveid={480},
patch='50004',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"AN, Dragonblight"},
description="This guide will walk you through the Azjol-Nerub dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Azjol-Nerub or enter the dungeon with your group |goto Azjol-Nerub/3 9.40,93.30 |c
step
talk Reclaimer A'zak##55564
accept Death to the Traitor King##29807
accept Don't Forget the Eggs!##29808
accept The Gatewatcher's Talisman##29811 |goto Azjol-Nerub/3 15.20,83.80
stickystart "Eggs"
step
map Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 12
path	14.70,84.20	19.70,63.90	25.20,36.60
path	34.40,40.00
Follow the path |goto Azjol-Nerub/3 34.40,40.00 < 8
|tip Kill Anub'ar Skirmishers first!
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Krik'thir the Gatewatcher##28684
|tip A watcher will attack a soon as the first one pulled dies. Krik'thir will engage when all watchers are dead.
|tip Mind Flay reduces movement speed and deals shadow damage over 3 seconds.
|tip Curse of Fatigue slows and deals damage to everyone within 5 yards of Krik'thir. Dispel this.
|tip Summons a swarm of insects to attack random players. AoE these down.
Defeat Krik'thir the Gatewatcher |scenariogoal 27898 |goto Azjol-Nerub/3 46.30,45.20
step
label "Eggs"
click Nerubian Scourge Egg##193051
Destroy 6 Nerubian Scourge Eggs. |q 29808/1 |goto Azjol-Nerub/3 34.60,48.70
|tip All around this room.
only if haveq(29808)
step
map Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 12
path	48.80,44.70	64.30,44.70	85.20,44.90
Follow the path |goto Azjol-Nerub/3 85.20,44.90 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hadronox##28921
|tip Killing the mobs in the room will cause Hadronox to come up and engage.
|tip Leech Poison drains health from anyone within 25 yards. Players killed while poisoned heal him for 10% health.
|tip Acid Cloud deals nature damage. Don't stand in it.
|tip Web Grab deals physical damage and pulls players close. Run back out.
Defeat Hadronox |scenariogoal 27899 |goto Azjol-Nerub/3 87.40,53.50
step
map Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 12
path	73.70,37.50	Azjol-Nerub/2 39.10,27.90
path	Azjol-Nerub/2 52.70,10.90	Azjol-Nerub/2 62.10,23.10
path	Azjol-Nerub/2 60.00,47.40	Azjol-Nerub/2 48.10,66.90
Follow the path |goto Azjol-Nerub/2 48.10,66.90 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Azjol-Nerub/1
path follow smart; loop off; ants curved; dist 12
path	22.40,51.70	27.40,51.60	37.00,48.90
path	44.80,48.90	58.90,48.40
Jump down the hole and follow the path |goto Azjol-Nerub/1 58.90,48.40 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Anub'arak##29120
|tip Be sure your party is inside the platform or they will be locked out.
|tip Impale fires a spike through the ground. Move away from this.
|tip Pound deals massive damage and stuns anyone in front. Even the tank should move behind Anub'arak during this.
|tip Every 25% health, Anub'arak will Submerge, summoning adds and spikes. Move away from ground spikes and kill the adds that spawn at the gate.
Loot Anub'arak's Broken Husk |q 29807/1 |only if haveq(29807)
Defeat Anub'arak |scenariogoal 1/27900 |goto Azjol-Nerub/1 87.40,53.50
step
talk Reclaimer A'zak##55564
turnin Death to the Traitor King##29807
turnin Don't Forget the Eggs!##29808
turnin The Gatewatcher's Talisman##29811 |goto Azjol-Nerub/1 62.20,48.50
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Caverns of Time: The Culling of Stratholme",{
mapid=130,
achieveid={479},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"CoT, Tanaris"},
description="This guide will walk you through the Caverns of Time: The Culling of Stratholme dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Culling of Stratholme or enter the dungeon with your group |goto The Culling of Stratholme/1 87.50,71.20 |c
step
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	87.50,71.20	89.80,68.00	89.40,64.90
path	86.40,61.50
talk Chromie##26527
accept Dispelling Illusions##13149 |goto The Culling of Stratholme/1 86.40,61.50 |noway |only if not completedq(13149)
Tell her: "_Chromie, you and I both know what's going to happen in this time stream._" |only if completedq(13151) |goto The Culling of Stratholme/2 50.50,76.00
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm |next "Dungeon" |only if completedq(13151)
step
click Plagued Grain Crate##336
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	83.90,59.10	81.20,59.70	77.80,54.90
path	73.40,55.00	70.10,51.20
Use your Arcane Disruptor on the 5 Suspicious Grain Crates at the waypoints. |use Arcane Disruptor##37888
|tip Opening the world map will display an ant trail guiding you through the current floor.
Plague Grain Crates Dispelled |q 13149/1 |only if haveq(13149)
Click here when you have all 5 Dispelled |confirm |only if not haveq(13149)
step
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	69.40,51.70	65.10,49.20	61.40,51.00
path	54.80,50.60	49.20,44.40	47.60,39.80
talk Chromie##27915
turnin Dispelling Illusions##13149
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(13149)
step
talk Chromie##27915
accept A Royal Escort##13151 |goto The Culling of Stratholme/1 47.60,39.80 |only if not haveq(13151)
only if not completedq(13151)
step
talk Chromie##27915 |goto The Culling of Stratholme/1 47.60,39.80
Ask her: "_What do you think they're up to?_"
confirm
step
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	47.90,39.80	47.40,31.60	The Culling of Stratholme/2 50.60,87.70
path	The Culling of Stratholme/2 53.90,83.00	The Culling of Stratholme/2 50.50,79.20
Follow the path |goto The Culling of Stratholme/2 50.50,79.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Arthas##26499 |goto The Culling of Stratholme/2 50.50,79.20
Tell him: "_Yes, my Prince. We are ready._"
|tip You may have to wait for the dialogue to end before he appears here.
confirm
step
label "Dungeon"
map The Culling of Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	45.10,64.90	46.60,58.50	53.10,62.40
path	61.50,52.90	59.70,39.00
Move between these waypoints in order to find the mobs that spawn
|tip A white flag on the minimap shows the current spawn location.
Click here when _Meathook_ spawns on Scourge Wave 5 |confirm
step
kill Meathook##26529
|tip Constricting Chains stuns a player and deals damage over 5 seconds.
|tip Disease Explusion deals nature damage and interrupts spellcasting in a 10 yard range.
|tip Meathook increases his damage by 10% for 30 seconds. Stacks up to 10 times. |only if heroic_dung()
Defeat Meathook |scenariogoal 27930 |goto The Culling of Stratholme/2 52.90,62.40
step
map The Culling of Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	45.10,64.90	46.60,58.50	53.10,62.40
path	61.50,52.90	59.70,39.00
Move between these waypoints in order to find the mobs that spawn
|tip A white flag on the minimap shows the current spawn location.
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here when _Salramm the Fleshcrafter_ spawns on Scourge Wave 10 |confirm
step
kill Salramm the Fleshcrafter##26530
|tip Steal Flesh reduces a random player's damage by 75% while increasing Salramm's damage by 75%.
|tip Summon Ghouls, Summons 2 ghoul minions. Kill these quickly before they explode.
|tip Explode Ghoul detonates a nearby ghoul, dealing fire damage in a 10 yard radius.
|tip Curse of Twisted Flesh reduces a player's health by 25% and deals shadow damage over 30 seconds. Dispel quickly. |only if heroic_dung()
Defeat Salramm the Fleshcrafter |scenariogoal 27931 |goto The Culling of Stratholme/2 52.90,62.40
step
talk Arthas##26499 |goto The Culling of Stratholme/2 58.80,36.70
Tell him: "_We're only doing what is best for Lordaeron, your Highness._"
confirm
step
map The Culling of Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	58.10,32.70	59.00,27.00	61.70,31.40
path	65.80,28.40
Fight the mobs that spawn at these points
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Chrono-Lord Epoch##26532
|tip Time Warp reduces melee, casting, and movement speed by 70% for 6 seconds.
|tip Time Step randomly charges a player, dealing damage.
|tip Wounding Strike deals damage and reduces healing by 25%. Leaves a bleed over 4 seconds.
|tip Curse of Exertion increases ability resource cost by 100%. Dispel.
|tip Time Stop stuns all players for 2 seconds. |only if heroic_dung()
Defeat Chrono-Lord Epoch |scenariogoal 27932 |goto The Culling of Stratholme/2 66.10,26.00
step
talk Arthas##26499 |goto The Culling of Stratholme/2 65.50,28.80
Tell him: "_I'm Ready._"
confirm
step
Follow Arthas down the steps |goto The Culling of Stratholme/2 64.90,14.20
confirm
step
talk Arthas##26499 |goto The Culling of Stratholme/2 64.90,14.20
Tell him: "_For Lordaeron!_"
confirm
step
map The Culling of Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	64.90,14.20	62.20,9.90	56.60,11.40
path	50.90,15.40	45.40,18.30	38.30,24.80
path	40.10,37.20
Follow Arthas |goto The Culling of Stratholme/2 40.10,37.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Infinite Corruptor##32273
|tip Corrupting Blight deals 8% of the target's max health as damage every 3 seconds for 2 minutes. Stacks up to 5 times.
|tip Void Strike deals damage, bypassing armor.
Defeat Infinite Corruptor |scenariogoal 24857 |goto The Culling of Stratholme/2 51.90,41.40
Click here if you didn't make the timer |confirm
only if heroic_dung()
step
talk Arthas##26499 |goto The Culling of Stratholme/2 40.10,37.20
Tell him: "_I'm ready to battle the dreadlord, sire._"
confirm
step
kill Mal'Ganis##26533
|tip Sleep puts a player to sleep for 10 seconds. Dispel this.
|tip Mind Blast deals shadow damage to a random player.
|tip Vampiric Touch heals Mal'Ganis for 50% of his damage dealt.
|tip Carrion Swarm is a frontal cone attack that deals shadow damage and leaves a 15 second DoT. Don't stand in front of him.
Defeat Mal'Ganis |scenariogoal 27933 |goto The Culling of Stratholme/2 33.50,44.90
step
talk Chromie##30997
|tip You may have to wait a few moments for him to appear.
turnin A Royal Escort##13151 |goto The Culling of Stratholme/2 32.00,44.70
only if haveq(13151)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Drak'Tharon Keep",{
mapid=160,
achieveid={482},
patch='30009',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DTK, DK, Zul'Drak"},
description="This guide will walk you through the Drak'Tharon Keep dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Drak'Tharon Keep or enter the dungeon with your group |goto Drak'Tharon Keep/1 29.40,81.00 |c
step
talk Kurzel##55677
accept Head Games##13129 |goto Drak'Tharon Keep 35.50,83.20
accept What the Scourge Dred##29828 |goto Drak'Tharon Keep 35.50,83.20
only if not completedq(13129) or not completedq(29828)
step
talk Image of Drakuru##58149
accept Cleansing Drak'Tharon##30120 |goto Drak'Tharon Keep 37.00,80.90
only if not completedq(30120)
stickystart "Mojo"
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	36.00,82.30	42.60,87.10	47.40,81.70
path	47.70,67.70	47.50,45.50	52.80,37.00
Follow the path |goto Drak'Tharon Keep/1 52.80,37.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Trollgore##26630
|tip Infected Wound increases physical damage taken by 15%. Dispel this disease.
|tip Consume deals shadow damage and increases Trollgore's damage by 2% for each enemy within 50 yards. |only if not heroic_dung()
|tip Consume deals shadow damage and increases Trollgore's damage by 5% for each enemy within 50 yards. |only if heroic_dung()
|tip Corpse Explode detonates a nearby Invader corpse, dealing nature damage.
|tip Drakkari Invader fly in randomly and attack Trollgore and players.
Defeat Trollgore |scenariogoal 27906 |goto Drak'Tharon Keep/1 56.80,19.30
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	56.90,18.90	66.30,18.80	66.20,26.10
path	65.80,36.10
Follow the path |goto Drak'Tharon Keep/1 65.80,36.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Novos the Summoner##26631
|tip Kill the adds coming down the stairs.
|tip Kill 4 of these Crystal Handlers to release Novos.
|tip Move out of Blizzard or suffer frost damage.
|tip Wrath of Misery is a curse that deals periodic shadow damage. Dispel if possible.
|tip Summons skeletons to attack the party.
Defeat Novos the Summoner |scenariogoal 27907 |goto Drak'Tharon Keep 73.30,47.60
step
Use Kurzel's Blouse Scrap on Novos the Summoner's corpse |use Kurzel's Blouse Scrap##43214 |only if haveq(13129)
Collect the Ichor-Stained Cloth |q 13129/1 |goto Drak'Tharon Keep/1 69.50,47.50
only if haveq(13129)
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	69.50,47.60	67.10,56.50	62.30,58.10
path	56.00,55.60	55.60,77.80	64.00,76.90
Follow the path |goto Drak'Tharon Keep/1 64.00,76.90 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill King Dred##27483
|tip Clear the raptors before pulling Dred.
|tip Grievous Bite deals physical damage every 2 seconds until the player is fully healed.
|tip Mangling Slash increases bleed damage by 75%.
|tip Bellowing Roar fears all players within 35 yards for 4 seconds.
|tip Piercing Slash reduces armor by 75% for 10 seconds. Use a cooldown for this.
|tip If raptors are alive, Dred summons them.
Loot King Dred's Tooth |q 29828/1 |only if haveq(29828)
Defeat King Dred |scenariogoal 27908 |goto Drak'Tharon Keep 67.80,80.20
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	63.70,85.60	67.90,79.40	64.50,71.70
path	Drak'Tharon Keep/2 39.40,71.80	Drak'Tharon Keep/2 36.60,63.30
path	Drak'Tharon Keep/2 37.70,28.60	Drak'Tharon Keep/2 47.20,28.50
path	Drak'Tharon Keep/2 56.70,21.80	Drak'Tharon Keep/2 55.40,13.30
Follow the path |goto Drak'Tharon Keep/2 55.40,13.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Mojo"
kill Drakkari Commander##27431+, Drakkari Guardian##26620+, Drakkari Shaman##26639+
collect 5 Enduring Mojo##38303 |q 30120 |goto Drak'Tharon Keep/2 37.10,67.20
only if haveq(30120)
step
kill The Prophet Tharon'ja##26632
_Phase 1_:
|tip Rain of Fire deals fire damage in the targeted area.
|tip Curse of Life deals shadow damage for 9 seconds or until the target reaches 50% health.
_Phase 2_:
|tip Use Touch of Life and Slaying Strike on cooldown. Taunt immediately after using Bone Armor.
|tip Poison Cloud deals nature damage every second. Move out of this.
Defeat The Prophet Tharon'ja |scenariogoal 1/27909 |goto Drak'Tharon Keep/2 51.30,13.20
step
Use Drakuru's Elixir at the giant brazier here |use Drakuru's Elixir##35797 |goto Drak'Tharon Keep/2 37.90,13.20
talk Drakuru##28016 |tip Follow him back to the Prophet and wait for the dialogue to end.
turnin Cleansing Drak'Tharon##30120
only if haveq(30120)
step
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
map Drak'Tharon Keep/2
path follow strict; loop off; ants curved; dist 12
path	46.10,13.40	38.30,13.20	38.20,20.10
Follow the path back to the quest giver |goto Drak'Tharon Keep/2 38.20,20.10 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(13129) or haveq(29828)
step
map Drak'Tharon Keep/2
path follow strict; loop off; ants curved; dist 12
path	39.00,14.10	41.10,14.00	Drak'Tharon Keep/1 49.10,13.90
Follow the path back to the quest giver |goto Drak'Tharon Keep/1 49.10,13.90 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(13129) or haveq(29828)
step
map Drak'Tharon Keep/1
path follow strict; loop off; ants curved; dist 12
path	Drak'Tharon Keep/1 44.00,13.30	Drak'Tharon Keep/1 43.90,30.00
path	Drak'Tharon Keep/1 42.30,36.70	Drak'Tharon Keep/1 47.60,45.50
path	Drak'Tharon Keep/1 47.60,83.00	Drak'Tharon Keep/1 35.90,82.10
Follow the path back to the quest giver |goto Drak'Tharon Keep/1 35.90,82.10 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Kurzel##55677
turnin Head Games##13129 |goto Drak'Tharon Keep 35.50,83.20 |noway
turnin What the Scourge Dred##29828 |goto Drak'Tharon Keep 35.50,83.20 |noway
only if haveq(13129) or haveq(29828)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Forge of Souls",{
mapid=183,
achieveid={4516},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"FoS, ICC, Icecrown, Citadel"},
description="This guide will walk you through the Forge of Souls dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Forge of Souls or enter the dungeon with your group |goto The Forge of Souls/1 66.10,88.90 |c
step
talk Lady Sylvanas Windrunner##37596
turnin Inside the Frozen Citadel##24506 |goto The Forge of Souls 64.00,91.20 |only if haveq(24506)
accept Echoes of Tortured Souls##24511 |goto The Forge of Souls 64.00,91.20
only if not completedq(24511)
step
kill Spiteful Apparition##36551
|tip Be wary of these ghostly skulls. They are invisible.
map The Forge of Souls/1
path follow smart; loop off; ants curved; dist 15
path	63.90,90.10	61.70,83.90	67.30,79.30
path	69.30,74.20	70.00,68.00	69.30,63.20
path	66.70,58.40	59.40,60.50	58.50,65.30
path	54.50,67.10	53.80,58.50	50.60,58.50
path	46.70,54.00	43.60,54.00
Follow the path |goto The Forge of Souls/1 43.60,54.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Bronjahm##36497
|tip If Corrupt Soul is not dispelled before the debuff expires it stuns the player for 2 seconds.
|tip Corrupted Soul Fragments move towards Bronjahm. If it reaches him, it will heal him for a large amount of health.
|tip At 35% health, the storm begins. All players must be within 10 yards of him or suffer damage and reduced speed.
|tip Random players are feared during Soulstorm.
Defeat Bronjahm |scenariogoal 27935 |goto The Forge of Souls/1 43.30,49.80
step
kill Spiteful Apparition##36551
|tip Be wary of these ghostly skulls. They are invisible.
map The Forge of Souls/1
path follow smart; loop off; ants curved; dist 15
path	43.30,50.00	42.90,45.20	46.70,45.60
path	48.10,40.70	46.30,35.60	44.10,30.30
path	47.00,24.80	49.40,19.60	47.10,16.70
Follow the path |goto The Forge of Souls/1 47.10,16.70 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Devourer of Souls##36502
|tip Mirrored Soul Damage taken by Devourer of Souls is split between the affected player. Stop attacking to avoid killing them.
|tip Phantom Blast deals massive shadow damage to the targeted player. Interrupt this as often as possible.
|tip Well of Souls jumps on a player and leaves a pool on the ground. Players standing in the pool take heavy damage.
|tip Unleashed Souls cannot be attacked. Run away for the 15 second duration.
|tip Wailing Souls deals damage and knocks back anyone in front of Devourer of Souls.
Defeat the Devourer of Souls |scenariogoal 1/27936 |goto The Forge of Souls/1 45.60,14.90
step
talk Lady Sylvanas Windrunner##38161
turnin Echoes of Tortured Souls##24511 |goto The Forge of Souls/1 44.00,13.10
accept The Pit of Saron##24682 |goto The Forge of Souls/1 44.00,13.10
only if not completedq(24682)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Gundrak",{
mapid=153,
achieveid={484},
patch='50004',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Zul'Drak"},
description="This guide will walk you through the Gundrak dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Gundrak or enter the dungeon with your group |goto Gundrak/1 59.00,30.90 |c
step
talk Tol'mar##55738
accept Gal'darah Must Pay##29834 |goto Gundrak,57.30,34.60
accept One of a Kind##29839 |goto Gundrak,57.30,34.60
accept For Posterity##29844 |goto Gundrak,57.30,34.60
only if not completedq(29834) or not completedq(29839) or not completedq(29844)
stickystart "drakhistory"
step
Go down the ramp |goto Gundrak/1 58.70,40.00 |c
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slad'ran##29304
|tip Powerful Bite deals damage and reduces armor by 20% for 5 seconds.
|tip Poison Nova deals nature damage to everyone within 15 yards and poisons them for 16 seconds.
|tip Slad'ran Viper bites and leaves a poison DoT.
|tip Slad'ran Constrictor encases a player in snakes. If Grip stacks up to 5, the player is stunned. Kill the snakes.
Defeat Slad'ran |scenariogoal 27911 |goto Gundrak/1 54.10,48.70
step
click Altar of Slad'ran##8278 |goto Gundrak/1 53.80,48.70
confirm
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	57.00,48.70	58.80,54.80	58.90,66.40
path	49.60,73.50
Follow the path |goto Gundrak/1 49.60,73.50 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Drakkari Colossus##29307
kill Drakkari Elemental##29573
_Colossus Phase_:
|tip Mortal Strikes reduces healing received by 50% for 3 seconds.
|tip He Emerges at 50% health, the Drakkari Elemental emerges.
_The Elemental_:
|tip Mojo Volley deals nature damage to 2 random players.
|tip The Elemental charges forward. Players in the path take nature damage over 45 seconds.
|tip At 50% health, the Elemental merges and becomes the Colossus again.
Loot the Drakkari Colossus Fragment |q 29839/1 |only if haveq(29839)
Defeat Drakkari Colossus |scenariogoal 27912 |goto Gundrak/1 46.90,66.30
step
click Altar of the Drakkari Colossus##8278 |goto Gundrak/1 46.50,62.50
confirm
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	46.60,65.20	46.20,73.30	41.00,72.50
path	37.70,60.40	34.60,59.40	33.50,54.00
Follow the path |goto Gundrak/1 33.50,54.00 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Moorabi##29305
_Prophet_:
|tip Ground Tremor deals damage and stuns all players within 60 yards for 2 seconds.
|tip Numbing Shout reduces casting speed by 25% for 5 seconds.
|tip Mojo Frenzy increases casting speed and damage based upon remaining health.
|tip Transforms into the Avatar, increasing damage by 25%. Interrupt as much as possible.
_Avatar_:
|tip Quake deals damage and stuns all players within 60 yards for 2 seconds.
|tip Numbing Roar reduces casting speed by 50% for 5 seconds.
Defeat Moorabi |scenariogoal 27913 |goto Gundrak/1 37.40,49.10
step
click Altar of Moorabi##8278 |goto Gundrak/1 39.60,49.20
confirm
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	38.10,49.10	31.70,49.10	27.70,48.00
path	23.30,53.00	25.00,64.50
Follow the path |goto Gundrak/1 25.00,64.50 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Eck the Ferocious##29932 |goto Gundrak/1 25.30,70.20
|tip Eck Spit deals nature damage and drains mana in a frontal cone. Stay behind Eck.
|tip Eck Spring leaps on a distant player.
|tip After 90 seconds, Eck gains 150% attack speed and 500% increased damage. Hard enrage timer.
confirm
only if heroic_dung()
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	25.00,64.50	23.30,53.00	27.70,48.00
path	31.70,49.10	38.10,49.10
Follow the path |goto Gundrak/1 38.10,49.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	40.00,49.10	46.60,54.00	46.60,47.80
path	46.50,37.40
Follow the path |goto Gundrak/1 46.50,37.40 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gal'darah##29306
_Prophet_:
|tip Stampede charges a player, dealing damage and knocking them in the air.
|tip Gal'darah does Whirling Slash, dealing damage and leaving a bleed. Run away.
|tip Puncture bleeds a player for 2 minutes.
_Avatar_:
|tip Impaling Charge, charges a player, dealing damage and knocking them back.
|tip Enrage increases attack speed by 100% for 8 seconds. Use a cooldown if tanking.
|tip Stomp deals damage and knocks back all players within 10 yards.
Defeat Gal'darah |scenariogoal 1/27914 |goto Gundrak/1 46.60,25.70
step
label "drakhistory"
There will be Drakkari History Tablets throughout the dungeon. You will need to collect 6 to complete the quest
click Drakkari History Tablet##192826
collect 6 Drakkari History Tablet##43140 |q 29844/1
only if haveq(29844)
step
talk Tol'mar##55738
turnin Gal'darah Must Pay##29834 |goto Gundrak 51.70,20.90
turnin One of a Kind##29839 |goto Gundrak 51.70,20.90
turnin For Posterity##29844 |goto Gundrak 51.70,20.90
only if haveq(29834) or haveq(29839) or haveq(29844)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Halls of Lightning",{
mapid=138,
achieveid={486},
patch='30303',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"HoL, Storm, Peaks"},
description="This guide will walk you through the Halls of Lightning dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Halls of Lightning or enter the dungeon with your group |goto Halls of Lightning/1 7.40,53.80 |c
step
talk Stormherald Eljrrin##56027
accept Diametrically Opposed##29860 |goto Halls of Lightning 11.90,53.80
accept Whatever it Takes!##29861 |goto Halls of Lightning 11.90,53.80
accept Clearing the Way##29862 |goto Halls of Lightning 11.90,53.80
only if not completedq(29860) or not completedq(29861) or not completedq(29862)
stickystart "Storm"
step
map Halls of Lightning/1
path follow smart; loop off; ants curved; dist 15
path	11.50,53.80	20.20,53.70	32.60,53.60
path	44.80,39.10
Follow the path |goto Halls of Lightning/1 44.80,39.10 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Bjarngrim##28586
|tip Charge Up empowers any mobs nearby with 30% increased damage. Kill his adds first.
|tip Battle Stance gives 25% haste.
|tip Mortal Strike reduces healing received by 50%.
|tip Pummel interrupts spellcasting for 4 seconds.
|tip Berserker Stance gives 25% damage.
|tip Whirlwind deals damage to anyone within 8 yards. Run away.
|tip Cleave deals frontal damage. Stay behind him.
|tip Defensive Stance gives 25% damage reduction.
|tip Knock Away knocks back anyone within 10 yards.
|tip Spell Reflection reflects the next spell cast at Bjarngrim.
Defeat General Bjarngrim |scenariogoal 27918 |goto Halls of Lightning/1 47.20,42.30
step
map Halls of Lightning/1
path follow smart; loop off; ants curved; dist 15
path	44.80,39.10	54.80,53.60	67.00,53.60
Follow the path |goto Halls of Lightning/1 67.00,53.60 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Storm"
kill 3 Stormforged Tactician##28581+ |q 29862/2 |goto Halls of Lightning/1 58.10,53.70
kill 3 Stormforged Mender##28582+ |q 29862/1 |goto Halls of Lightning/1 58.10,53.70
only if haveq(29862)
step
map Halls of Lightning/1
path follow smart; loop off; ants curved; dist 15
path	67.00,53.60	78.80,55.80	Halls of Lightning/2 56.00,21.20
kill Slag##28585+
|tip Avoid standing near these when they die, as they will explode.
Follow the path and _go up_ the steps |goto Halls of Lightning/2 56.00,21.20 < 8
|tip Do not attack the slags or stop until you are up the stairs!
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Halls of Lightning/2
path follow smart; loop off; ants curved; dist 15
path	57.20,25.80	52.30,25.90	44.30,25.40
Follow the path |goto Halls of Lightning/2 44.30,25.40 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Volkhan##28587
|tip The best strategy is to ignore the golems and burn down Volkhan.
|tip Heats a Molten Golem, healing it for 20%.
|tip Temper creates 2 Molten Golems.
|tip At 25% health, Shattering Stomp does physical damage and shatters any brittle Molten Golems.
|tip Molten Golem's attack random players. At 1% health, they become inactive, waiting to be shattered.
Defeat Volkhan |scenariogoal 27919 |goto Halls of Lightning/2 41.80,23.10
step
map Halls of Lightning/2
path follow loose;loop off;ants straight
path	47.00,44.10	47.00,52.30	51.40,54.20
path	57.90,54.30
kill Titanium Siegebreaker##28961
Follow the path through the hallway, stopping at each waypoint |goto Halls of Lightning/2 57.90,54.30 < 10
|tip At each of the waypoint, enemies will spawn. Kill the Titanium Siegebreakers first, they use a fear ability.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ionar##28546
|tip Static Overload zaps the player and nearby allies over 10 seconds. At the end, knocks back. Don't move near allies.
|tip At 50% health, Ionar Disperses and becomes electricity that pursues players. Run away!
|tip Sparks of Ionar deal nature damage to anyone within 5 yards and cause players to take 2% increased damage. Effect stacks.
Defeat Ionar |scenariogoal 27920 |goto Halls of Lightning/2 61.10,75.00
step
kill Stormforged Runeshaper##28836
|tip Kill these first, they use a massive damage AoE
map Halls of Lightning/2
path follow smart; loop off; ants curved; dist 15
path	57.60,75.50	48.90,72.00	39.50,68.20
path	29.50,75.80	20.40,82.80	22.60,73.10
path	19.20,64.80
Follow the path |goto Halls of Lightning/2 19.20,64.80 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Loken##28923
|tip Pulsing Shockwave deals more damage the further players stand from Loken. Stay close.
|tip Lightning Nova deals significant nature damage to players close to Liken. Run away.
|tip Arc Lightning functions exactly like chain lightning. Stay spread out around him. |only if heroic_dung()
Loot Loken's Tongue |q 29861/1 |goto Halls of Lightning/2 19.20,56.10 |only if haveq(29861)
Defeat Loken |scenariogoal 27921 |goto Halls of Lightning/2 19.20,56.10
step
talk Stormherald Eljrrin##56027
turnin Diametrically Opposed##29860 |goto Halls of Lightning/2 19.10,62.80
turnin Whatever it Takes!##29861 |goto Halls of Lightning/2 19.10,62.80
turnin Clearing the Way##29862 |goto Halls of Lightning/2 19.10,62.80
only if haveq(29860) or haveq(29861) or haveq(29862)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Halls of Reflection",{
mapid=185,
achieveid={4518},
patch='30300',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"HoR, ICC, Icecrown, Citadel"},
description="This guide will walk you through the Halls of Reflection dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Halls of Reflection or enter the dungeon with your group |goto Halls of Reflection/1 47.30,80.80 |c
step
talk Lady Sylvanas Windrunner##38189 |goto Halls of Reflection/1 45.00,76.30
turnin Frostmourne##24713 |goto Halls of Reflection/1 45.00,76.30 |only if haveq(24713)
Ask her: "_Can you remove the sword?_"
|tip Watch the dialogue that follows.
confirm
only if not completedq(24802)
step
talk Lady Sylvanas Windrunner##38189 |goto Halls of Reflection/1 45.00,76.30
|tip When your group is ready, tell her that you think you hear Arthas coming
confirm
only if completedq(24802)
step
_Kill Priority_:
kill Ghostly Priest##38175
|tip Interrupt Dark Mending and Cower in fear as much as possible.
kill Shadowy Mercenary##38177
|tip Dispel Deadly Poison and be wary of Kidney Shot, a 3 second stun.
kill Phantom Mage##38172
|tip Interrupt Flamestrike every time. Copies of the mage will explode upon death, stay at range.
kill Tortured Rifleman##38176
|tip Dispel Cursed Arrow as much as possible. It increases magic damage taken by 50%.
kill Spectral Footman##38173
|tip Casters shouldn't stand near these, they use Shield Bash. This interrupts spellcasting.
|tip Line of sight the trash and wait for them to come to you. Waves of 4-5 enemies will come at a time.
At wave 5, you will face _Falric_. Click here to move onto his strategy. |confirm |goto Halls of Reflection/1 41.30,61.90
step
kill Falric##38112
|tip Quivering Strike deals damage and reduces dodge chance by 20% for 5 seconds. Dispellable.
|tip If Impending Despair is not dispelled within 6 seconds, it stuns the target for 6 seconds.
|tip Defiling Horror fears the party and deals shadow damage every second for 4 seconds.
|tip Hopelessness reduces damage and healing done by the entire party by 20% per cast. |only if not heroic_dung()
|tip Hopelessness reduces damage and healing done by the entire party by 25% per cast. |only if heroic_dung()
Defeat Falric |scenariogoal 27915
step
_Kill Priority_:
kill Ghostly Priest##38175
|tip Interrupt Dark Mending and Cower in fear as much as possible.
kill Shadowy Mercenary##38177
|tip Dispel Deadly Poison and be wary of Kidney Shot, a 3 second stun.
kill Phantom Mage##38172
|tip Interrupt Flamestrike every time. Copies of the mage will explode upon death, stay at range.
kill Tortured Rifleman##38176
|tip Dispel Cursed Arrow as much as possible. It increases magic damage taken by 50%.
kill Spectral Footman##38173
|tip Casters shouldn't stand near these, they use Shield Bash. This interrupts spellcasting.
|tip Line of sight the trash and wait for them to come to you. Waves of 4-5 enemies will come at a time.
At wave 10, you will face _Marwyn_. Click here to move onto his strategy. |confirm |goto Halls of Reflection/1 34.40,72.70
step
kill Marwyn##38113
|tip Obliterate deals heavy damage to Marwyn's current target.
|tip Well of Corruption increases shadow damage taken by 75%, stacking 4 times. Don't stand in this.
|tip Corrupted Flesh reduces the maximum health of all nearby players by 50% for 8 seconds.
|tip Shared Suffering deals damage over 12 seconds to a player, then splits damage to the party. Dispel this quickly.
Defeat Marwyn |scenariogoal 27916
step
Click the Quest Discovered box
accept Wrath of the Lich King##24802
step
kill Frostsworn General##36723
|tip The General will spawn images of your group. They explode upon death, so try to kill them at range.
map Halls of Reflection/1
path follow smart; loop off; ants curved; dist 12
path	36.20,64.90	31.00,57.50	26.30,50.80
path	19.70,41.50	13.50,32.50	12.90,23.30
Follow the path to Jaina, killing the General along the way |goto Halls of Reflection/1 12.90,23.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Lady Sylvanas Windrunner##38189 |goto Halls of Reflection/1 12.90,23.20
Find Lady Sylvanas Windrunner |q 24802/1 |goto Halls of Reflection/1 12.90,23.20 |only if haveq(24802)
Tell her: "_We're ready! Let's go!_"
confirm always
step
_Kill Priority_:
|tip Focus one target at a time, speed is important. You don't want to get caught by the Lich King.
kill Risen Witch Doctor##36941
|tip Interrupt Shadow Bolt Volley and dispel Curse of Doom.
kill Lumbering Abomination##37069
|tip Face these away from the group. They use Cleave and Vomit Spray. Vomit Spray increases damage taken by 20%.
map Halls of Reflection/1
path follow smart; loop off; ants curved; dist 15
path	14.70,20.00	27.50,27.50	40.50,36.10
path	51.10,44.90	66.60,65.00	77.30,77.60
Follow the path, stopping at each point to kill the mobs the Lich King spawns
|tip Opening the world map will display an ant trail guiding you through the current floor.
Escape from Arthas |scenariogoal 1/27917
step
talk Lady Sylvanas Windrunner##38189
turnin Wrath of the Lich King##24802 |goto Halls of Reflection/1 75.90,76.40
confirm
only if not completedq(24500)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Halls of Stone",{
mapid=140,
achieveid={485},
patch='30100',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"HoS, Storm, Peaks"},
description="This guide will walk you through the Halls of Stone dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Halls of Stone or enter the dungeon with your group |goto Halls of Stone/1 34.40,36.20 |c
step
talk Kaldir Ironbane##55835
accept The Forlorn Watcher##29848 |goto Halls of Stone 35.80,35.00
accept Corrupt Constructs##29850 |goto Halls of Stone 35.80,35.00
only if not completedq(29848) or not completedq(29850)
stickystart "Giants"
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	35.80,36.40	45.10,36.40	49.90,41.80
path	50.00,53.40	40.70,54.10	32.30,51.20
path	30.00,61.40	34.30,69.70	38.10,67.80
Follow the path |goto Halls of Stone/1 38.10,67.80 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Krystallus##27977
|tip Ground Slam knocks everyone back and slows speed by 20% every second.
|tip Shatters players turned to stone. Make sure you aren't near a party member after Ground Slam.
|tip Boulder Toss, tosses a boulder at a random player, dealing damage.
|tip Stomp deals damage to anyone within 25 yards.
|tip Ground Spike summons spikes under a random player, dealing heavy damage. Move out. |only if heroic_dung()
Defeat Krystallus |scenariogoal 27922 |goto Halls of Stone/1 39.60,61.80
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	39.20,62.50	41.60,55.00	50.00,53.70
path	50.00,65.90	50.00,77.20
Follow the path |goto Halls of Stone/1 50.00,77.20 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maiden of Grief##27975
|tip Pillar of Woe deals shadow damage to a player, leaving a DoT for 10 seconds.
|tip Shock of Sorrow deals damage to all players and stuns for 6 seconds. Breaks upon taking damage.
|tip Storm of Grief deals shadow damage to anyone within the area every second. Move out of this.
|tip Parting Sorrow mana burns a player, dealing 1 shadow damage for each point of mana drained. |only if heroic_dung()
Loot the Crystal Tear of Grief |q 29848/1 |only if haveq(29848)
Defeat Maiden of Grief |scenariogoal 27923 |goto Halls of Stone/1 50.00,85.40
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	50.00,85.90	50.00,68.90	50.70,53.40
path	58.90,53.30	67.20,53.50	70.90,48.70
Follow the path |goto Halls of Stone/1 70.90,48.70 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Brann Bronzebeard##28070
accept Halls of Stone##13207 |goto Halls of Stone/1 70.90,48.60 |noway |only if not completedq(13207)
Tell him: "_Brann, it would be our honor!_"
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	70.90,48.70	72.50,57.50	76.80,64.00
path	81.90,71.40
Then, follow the path |goto Halls of Stone/1 81.90,71.40 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Tell Brann: "_Let's move Brann..._"
_Searing Gaze_:
|tip Deals fire damage to anyone within 5 yards. Move away.
|tip An orb of shadow moves towards a player. Upon impact, deals shadow damage and increases damage taken by 50% and movement speed by 30% Move away. |only if not heroic_dung()
|tip An orb of shadow moves towards a player. Upon impact, deals shadow damage and increases damage taken by 100% and movement speed by 50% Move away. |only if heroic_dung()
_Adds_:
|tip Keep the adds under control. Interrupt and dispel to minimize outgoing damage.
Defeat Tribunal of Ages |scenariogoal 27924 |goto Halls of Stone/1 81.70,71.10
step
Tell Brann: "_There will be plenty of time..._"
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	84.20,74.70	76.70,63.50	69.50,53.50
path	60.50,53.30	50.30,53.20	50.10,43.00
path	53.60,36.10	49.90,28.80
Then, follow the path |goto Halls of Stone/1 49.90,28.80 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Brann Bronzebeard##28070 |goto Halls of Stone/1 49.90,28.70
Tell Brann: "_We're with you Brann! Open it!_"
Then, walk inside |goto Halls of Stone/1 49.90,22.80 < 10
confirm
step
label "Giants"
kill 3 Dark Rune Giant##27969 |q 29850/1 |goto Halls of Stone/1 46.00,36.00
only if haveq(29850)
step
kill Sjonnir The Ironshaper##27978
|tip Chain Lightning arcs to up to 3 targets, dealing more damage per jump. Spread out.
|tip Static Charge deals damage to nearby allies. Stay away from other players. Dispel whenever possible.
|tip Lightning Ring deals nature damage to anyone within 10 yards. Increases nature damage taken by 10% for 15 seconds.
|tip At 20% health, Sjonnir Frenzy's gaining 50% increased attack speed and 100% increased damage.
|tip Kill the adds quickly. Some can combine to become more powerful. New types emerge every 25% health.
Defeat Sjonnir The Ironshaper |scenariogoal 1/27925 |goto Halls of Stone/1 49.90,13.00
step
talk Brann Bronzebeard##28070
turnin Halls of Stone##13207 |goto Halls of Stone/1 49.90,11.60
only if haveq(13207)
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	49.90,12.50	49.80,28.60	45.00,36.20
path	35.80,34.90
talk Kaldir Ironbane##55835
turnin The Forlorn Watcher##29848
turnin Corrupt Constructs##29850
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(29848) or haveq(29850)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\The Nexus",{
mapid=129,
achieveid={478},
patch='30008',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Coldarra, Borean, Tundra"},
description="This guide will walk you through the The Nexus dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for The Nexus or enter the dungeon with your group |goto The Nexus/1 36.20,88.00 |c
step
talk Image of Warmage Kaitlyn##55537
accept Have They No Shame?##13095 |goto The Nexus 36.20,83.00
only if not completedq(13095)
step
talk Image of Warmage Kaitlyn##55536
accept Quickening##11911 |goto The Nexus 37.20,81.40
only if not completedq(11911)
step
talk Warmage Kaitlyn##55531
accept Prisoner of War##11973 |goto The Nexus 36.20,81.40
only if not completedq(11973)
step
talk Image of Warmage Kaitlyn##55535
accept Postponing the Inevitable##11905 |goto The Nexus 35.10,81.40
only if not completedq(11905)
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	35.40,80.30	29.00,70.70	22.20,67.00
path	21.90,58.00
Follow the path |goto The Nexus/1 21.90,58.00 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Commander Kolurg##26798
|tip Whirlwind is a short distance AoE. Casters should stay at range.
|tip Frightening Shout fears all players within 8 yards for 6 seconds.
click Berinand's Research##192788 |only if haveq(13094)
Loot Berinand's Research |q 13094/1 |goto The Nexus 19.00,51.80 |only if haveq(13094)
Defeat Commander Kolurg |scenariogoal 27897
only if heroic_dung()
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	18.90,51.90	21.90,44.00	21.70,35.90
path	27.60,36.10
Follow the path |goto The Nexus/1 27.60,36.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	35.40,80.30	29.00,70.70	22.20,67.00
path	21.90,58.00
Follow the path |goto The Nexus/1 21.90,58.00 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung() and haveq(13094)
step
kill Horde Commander##27947
click Berinand's Research##192788 |only if haveq(13094)
collect Berinand's Research##43095 |q 13094/1 |goto The Nexus 19.00,51.80 |only if haveq(13094)
only if haveq(13094) and not heroic_dung()
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	18.90,51.90	21.90,44.00	21.70,35.90
path	27.60,36.10
Follow the path |goto The Nexus/1 27.60,36.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung() and haveq(13094)
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	35.40,80.30	29.00,70.70	22.20,67.00
path	21.90,58.00	18.90,51.90	21.90,44.00
path	21.70,35.90	27.60,36.10
Follow the path |goto The Nexus/1 27.60,36.10 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung() and not haveq(13094)
step
kill Grand Magus Telestra##26731
|tip Spread out to minimize group damage from Firebomb.
|tip Ice Nova stuns for 3 seconds.
|tip Mirror Images occurs at 50% health. Interrupt Time Stop and Critter as much as possible. Don't stand in blizzard. Kill the images quickly.
Defeat Grand Magus Telestra |scenariogoal 27892 |goto The Nexus/1 27.60,38.60
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	27.60,38.60	27.10,31.00	26.90,25.00
path	31.40,22.00	39.40,21.70	43.80,21.90
path	49.10,21.50	52.40,15.40	54.00,19.30
path	56.40,21.80
Follow the path |goto The Nexus/1 56.40,21.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Anomalus##26763
|tip Destroy the rift and the Wraiths that come forth. Expect heavy AoE damage.
|tip At 50% health, Anomalus becomes immune with Rift Shield and charges nearby open rifts. This lasts 45 seconds.
|tip Wraiths appear faster from rifts and the range of rift abilities is increased. Lasts 45 seconds.
|tip Arcane Attraction increases a random players arcane damage taken. Dispel quickly! |only if heroic_dung()
Defeat Anomalus |scenariogoal 27893 |goto The Nexus 61.50,21.90
step
Use your Interdimensional Refabricator here |use Interdimensional Refabricator##35479
Stall the Interdimensional Rift |q 11905/1 |goto The Nexus 65.10,21.80
only if haveq(11905)
stickystart "Splinter"
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	59.30,22.20	54.10,21.70	50.70,23.40
path	53.90,35.80	54.10,42.90	56.70,52.60
path	64.40,53.00	64.50,60.40	60.30,64.70
Follow the path |goto The Nexus/1 60.30,64.70 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Splinter"
kill Crystalline Protector##26792
Loot 5 Arcane Splinters |q 11911/1 |goto The Nexus/1 60.30,64.80
only if haveq(11911)
step
kill Ormorok the Tree-Shaper##26794
|tip Spell Reflection reflects the next 4 spells casts. Use low damage abilities.
|tip Trample deals physical damage to everyone nearby.
|tip Patches of spikes appear on the ground. Move out or you will take damage and be knocked up in the air.
|tip Frenzy Occurs at 30% health. Save defensive and DPS cooldowns for this.
|tip Summon Crystalline Tangler roots players that it hits. |only if heroic_dung()
Defeat Ormorok the Tree-Shaper |scenariogoal 27894 |goto The Nexus/1 56.90,70.30
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	56.20,72.80	52.40,69.10	52.70,60.80
path	48.60,67.50	41.70,67.50
Follow the path |goto The Nexus/1 41.70,67.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Telestra's Containment Sphere##188526
|tip Keristrasza will engage after activating the spheres.
kill Keristrasza##26723
|tip Intense Cold stacks every second, slowing casting speed. Keep moving to avoid the stacks.
|tip Avoid standing in front of behind Keristrasza.
|tip Enrage occurs at 25% health, use DPS and defensive cooldowns for this.
|tip Crystal Chains roots a player for 10 seconds. Dispel quickly. |only if not heroic_dung()
|tip Crystallize deals frost damage and roots all players. Dispel quickly. |only if heroic_dung()
Defeat Keristrasza |scenariogoal 1/27895 |goto The Nexus/1 38.30,67.20
step
talk Image of Warmage Kaitlyn##55537
turnin Have They No Shame?##13094 |goto The Nexus 36.20,83.00
only if haveq(13094)
step
talk Image of Warmage Kaitlyn##55536
turnin Quickening##11911 |goto The Nexus 37.20,81.40
only if haveq(11911)
step
talk Warmage Kaitlyn##55531
turnin Prisoner of War##11973 |goto The Nexus 36.20,81.40
only if haveq(11973)
step
talk Image of Warmage Kaitlyn##55535
turnin Postponing the Inevitable##11905 |goto The Nexus 35.10,81.40
only if haveq(11905)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\The Oculus",{
mapid=142,
achieveid={487},
patch='40304',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Coldarra, Borean, Tundra"},
description="This guide will walk you through the Oculus dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for The Oculus or enter the dungeon with your group |goto The Oculus/1 61.30,47.60 |c
step
accept The Struggle Persists##13124 |goto The Oculus 63.30,42.00
only if not completedq(13124)
step
map The Oculus/1
path follow smart; loop off; ants curved; dist 10
path	61.30,47.60	64.30,30.80	61.00,17.20
path	52.60,11.00	35.40,19.70	33.40,35.60
path	38.40,50.90
Follow the path and click the portal at the end |goto The Oculus/1 47.90,69.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Drakos the Interrogator##27654
Defeat Drakos the Interrogator |scenariogoal 27926 |goto The Oculus/1 48.90,76.10
step
talk Belgaristrasz##27658
turnin The Struggle Persists##13124 |goto The Oculus/1 50.10,81.20
only if haveq(13124)
step
talk Belgaristrasz##27658
accept A Unified Front##13126 |goto The Oculus/1 50.10,81.20
only if not completedq(13126)
step
Talk to either Verdisa, Belgaristrasz or Eternos and obtain a dragon.
talk Belgaristrasz##27658
collect Ruby Essence##37860 |or
|tip Talk to Belgaristrasz for the Ruby Essence.
talk Eternos##27659
collect Amber Essence##37859 |or
|tip Talk to Eternos for the Amber Essence.
talk Verdisa##27657
collect Emerald Essence##37815 |or
|tip Talk to Verdisa for the Emerald Essence.
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
stickystart "Const"
step
map The Oculus/2
path follow smart; loop off; ants curved; dist 12
path	47.10,74.00	39.80,61.80	42.70,49.90
path	55.20,49.40	58.40,60.50	57.70,66.30
Follow the path |goto The Oculus/2 57.70,66.30 < 25
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Clear this platform |goto The Oculus/2 73.20,75.30
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Clear this platform |goto The Oculus/2 26.40,79.60
confirm
step
label "Const"
kill 10 Centrifuge Construct##27641 |q 13126/1 |goto The Oculus/2 29.30,76.30
only if haveq(13126)
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
kill Varos Cloudstrider##27447
Defeat Varos Cloudstrider |scenariogoal 27927 |goto The Oculus/2 46.20,19.20
step
talk Image of Belgaristrasz##28012
turnin A Unified Front##13126 |goto The Oculus/2 45.70,18.80
accept Mage-Lord Urom##13127 |goto The Oculus/2 45.70,18.80
only if not completedq(13127)
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Fly up to this platform with your drake |goto The Oculus/3 62.20,15.00 < 5 |c
step
Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons
kill Mage-Lord Urom##27655 |goto The Oculus/3 70.70,27.00
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons
kill Mage-Lord Urom##27655 |goto The Oculus/3 50.40,87.80
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Attack Mage-Lord Urom. When he vanishes, kill the mobs he summons
kill Mage-Lord Urom##27655 |goto The Oculus/3 25.60,31.10
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
kill Mage-Lord Urom##27655
Defeat Mage-Lord Urom |scenariogoal 27928 |goto The Oculus/3 44.00,44.90
step
talk Raelorasz##26117
turnin Mage-Lord Urom##13127
accept A Wing and a Prayer##13128 |goto The Oculus/3 44.50,44.40
only if not completedq(13128)
step
Use your Ruby Essence |invehicle |use Ruby Essence##37860 |only if itemcount(37860) > 0 |next "ruby"
Use your Amber Essence |invehicle |use Amber Essence##37859 |only if itemcount(37859) > 0 |next "amber"
Use your Emerald Essence |invehicle |use Emerald Essence##37815 |only if itemcount(37815) > 0 |next "emerald"
step
label "emerald"
kill Ley-Guardian Eregos
|tip As the Emerald Drake, your job will be to heal your group.
|tip Leeching Poison puts a DoT on your target, siphoning health from that target to you. It will be important that you keep 3 stacks up on the boss at all times at the very least.
|tip Touch the Nightmare damages you in order to reduce your enemies damage output. It should be used on Ley-Guardian Eregos only, however DO NOT SPAM this ability.
|tip Dream Funnel transfers 5% of your health to a friendly target. This along with Leeching Poison is what you should be using the most.
Defeat Ley-Guardian Eregos |scenariogoal 1/27929 |goto The Oculus/0 49.60,49.20
|next "turnin"
step
label "ruby"
kill Ley-Guardian Eregos##27656
|tip As the Ruby Drake, your job will be to Tank the boss and the whelplings as best you can at all times.
|tip Searing Wrath jumps to nearby opponents when used.
|tip Evasive Aura gives you a charge whenever you're damaged. The charge is used for your 3rd ability.
|tip Evasive Maneuvers allows you to dodge all incoming damage.
Defeat Ley-Guardian Eregos |scenariogoal 1/27929 |goto The Oculus/0 49.60,49.20
|next "turnin"
step
label "amber"
kill Ley-Guardian Eregos##27656
|tip As the Amber Drake, your job will be to damage Ley-Guardian Eregos.
|tip Shock Lance is your primary attack.
|tip Stop Time is an important ability, freezing all enemy targets when used. It is important to use this when Ley-Guardian Eregos uses Enraged Assault.
|tip Temporal Rift, a channeled ability, which should be used until you have 10 Shock Charges, at which point you will want to use Shock Lance.
Defeat Ley-Guardian Eregos |scenariogoal 1/27929 |goto The Oculus/0 49.60,49.20
|next "turnin"
step
label "turnin"
talk Belgaristrasz##27658
turnin A Wing and a Prayer##13128 |goto The Oculus/4 47.60,83.70
only if haveq(13128)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Pit of Saron",{
mapid=184,
achieveid={4517},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"PoS, ICC, Icecrown, Citadel"},
description="This guide will walk you through the Pit of Saron dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for the Pit of Saron or enter the dungeon with your group |goto Pit of Saron/0 40.90,80.50 |c
step
talk Lady Sylvanas Windrunner##38161
|tip You may have to pull a mob to get her to run through the portal.
turnin The Pit of Saron##24682 |goto Pit of Saron 40.80,79.70 |only if haveq(24682)
accept The Path to the Citadel##24507 |goto Pit of Saron 40.80,79.70
only if not completedq(24507)
stickystart "Free_Horde_Slaves"
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	41.10,78.70	42.60,72.80	45.80,68.30
path	49.40,68.50	52.80,64.90	55.70,62.10
path	58.90,59.30	63.70,54.90
Follow the path |goto Pit of Saron/0 63.70,54.90 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Free_Horde_Slaves"
click Ball and Chain##207079
Free #15# Horde Slaves |q 24507/1
only if haveq(24507)
step
kill Forgemaster Garfrost##36494
|tip Permafrost Deals frost damage and increases damage taken by 20% for 3 seconds. Line of sight Garfrost using Saronite boulders to clear your stacks.
|tip Chunks of saronite land on the ground. Don't stand near the impact area.
|tip Thundering Stomp stuns all players for 2 secons.
|tip Chilling Wave deals massive frost damage to anyone in front of Garfrost. Move behind him.
|tip Deep Freeze slows movement speed and freezes the player after 14 seconds, dealing frost damage.
Defeat Forgemaster Garfrost |scenariogoal 27937 |goto Pit of Saron/0 66.40,55.50
step
talk Gorkun Ironskull##37592
turnin The Path to the Citadel##24507 |goto Pit of Saron/0 65.60,55.00
accept Deliverance from the Pit##24712 |goto Pit of Saron/0 65.60,55.00
only if not completedq(24712)
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	62.70,54.90	60.10,50.90	56.90,47.10
path	54.70,43.10	51.00,42.60
Follow the path |goto Pit of Saron/0 51.00,42.60 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ick##36476
|tip Kill the Plagueborn Horrors first.
|tip Mighty Kick deals damage and knocks the player back.
|tip Run away quickly if you are focused by Pursuit.
|tip Poison Nova deals fatal nature damage in a 15 yard radius. Run away.
|tip Explosive Barrage hurls missiles at all players, leaving Exploding Orbs. These detonate after 3 seconds. Run away.
|tip Toxic Waste leaves a puddle of waste at a location, dealing nature damage. Move out.
Defeat Ick |scenariogoal 27938 |goto Pit of Saron/0 47.40,41.50
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	47.10,41.40	49.50,43.20	52.30,40.30
path	49.70,31.00	54.00,31.50	57.30,32.10
Follow the path |goto Pit of Saron/0 57.30,32.10 < 10
|tip Take it slow, mobs will run and take up position in front of you.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	59.80,31.30	62.40,28.70	63.00,22.40
path	63.00,22.40	60.80,19.80	56.30,18.10
path	51.50,18.00	47.80,19.20
Follow the path, stopping on the tile to kill the big elemental |goto Pit of Saron/0 47.80,19.20 < 10
|tip Let the tank go first and avoid the falling ice on the ground.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Scourgelord Tyrannus##36658
|tip Forceful Smash knocks a player back, dealing massive physical damage.
|tip Unholy Power slows Tyrannus' speed and increases his damage. Kite him around during this.
|tip Overlord's Brand redirects damage from the branded character to the tank. Stop attacking.
|tip Mark of Rimefang will attack this player from the air. Run away from group members and keep moving.
Defeat Scourgelord Tyrannus |scenariogoal 1/27939 |goto Pit of Saron/0 44.50,23.10
step
talk Lady Sylvanas Windrunner##38161
|tip you will have to wait for her to show up.
turnin Deliverance from the Pit##24712 |goto Pit of Saron/0 39.70,16.10
accept Frostmourne##24713 |goto Pit of Saron/0 39.70,16.10
only if not completedq(24713)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Trial of the Champion",{
mapid=171,
achieveid={3778},
patch='30200',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"ToC, Icecrown, Argent, Tournament, Grounds"},
description="This guide will walk you through the Trial of the Champion dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Trial of the Champion or enter the dungeon with your group |goto Trial of the Champion/1 51.20,30.20 |c
step
Click the Quest Discovered box |only if not completedq(29851)
accept Champion of the Tournament##29851 |goto Trial of the Champion 49.60,30.30 |only if not completedq(29851)
click Lance Rack##130
collect Argent Lance##46106
step
Go to the center to start the event. |goto Trial of the Champion 51.40,51.30 < 8 |c
step
Equip your _Argent Lance_. |equipped Argent Lance##46106 |use Argent Lance##46106
clicknpc Argent Warhorse##36557
Ride an Argent Warhorse. |invehicle |goto Trial of the Champion 57.90,33.60
stickystart "Warhorse"
step
talk Arelas Brightstar##35005 |goto Trial of the Champion 51.00,53.10
Tell him: "_I am ready._"
|tip You will be confronted with several waves of enemies, 3 at a time. Focus on 1 enemy at a time.
confirm
step
label "Warhorse"
_Thrust_:
|tip Primary attack.
_Shield Break_:
|tip Used to remove an enemy's Defend buff.
_Charge_:
|tip Deals massive damage and removes 1 layer of Defend.
_Defend_
|tip Reduces damage you take by 30%, stacking 3 times. This should be maintained at 3 at all times.
step
The first boss encounter will consist of the last group of jousters you defeated.
_Kill priority_:
_Runok Wildmane_:
|tip Has Healing Wave and Earth Shield. Interrupt Healing Wave at all costs.
_Eressea Dawnsinger_:
|tip She will Polymorph random party members, as well as use Blast Wave to AoE your group down.
_Deathstalker Visceri_:
|tip He will use Poison Bottle, leaving a green puddle on the ground that deals damage, and Fan of Knives.
_Mokra the Skullcrusher_:
|tip He will use Mortal Strike on the tank, reducing healing received by 50% as well as a Bladestorm.
_Zul'tore_:
|tip He will use Multishot and Lightning Arrow which can be dispelled.
Defeat the Grand Champions |scenariogoal 25098 |goto Trial of the Champion/1 51.10,52.50
step
talk Arelas Brightstar##35005 |goto Trial of the Champion/1 47.90,53.90
Tell him: "_I am ready for the next challenge._"
|tip There will be 3 groups of trash that come out
kill Argent Priestess##35307
|tip Always kill these first, interrupting heals and killing Fountains of Light.
confirm
step
There will be one of two bosses at this point:
Click here for _Eadric_ |next "Eadric" |confirm
Click here for _Argent Confessor Paletress_ |next "Paletress" |confirm
step
label "Eadric"
kill Eadric##35119
|tip Hammer of Justice stuns a random party member for 6 seconds. Dispel this.
|tip When Radiance is being casted turn away from Eadric so you aren't blinded. It will render you unable to act for 2 seconds.
|tip Hammer of the Righteous is thrown at a random party member. If not stunned, use your special action button to throw it back at Eadric.
Defeat Eadric |scenariogoal 2/25313 |goto Trial of the Champion/1 46.00,52.60 |next "Black_Knight"
step
label "Paletress"
kill Argent Confessor Paletress##34928
|tip Holy Fire deals fire damage and additional fire damage of 8 seconds.
|tip Summon Memory, used at 50% health. Kill the memory first, as it uses fear and places a shield on Paletress.
|tip Reflective Shield active on Paletress while the Memory is alive. Absorbs all damage and reflects 25% of it back.
Defeat Argent Confessor Paletress |scenariogoal 2/25313 |goto Trial of the Champion/1 46.00,52.60
step
label "Black_Knight"
talk Arelas Brightstar##35005 |goto Trial of the Champion/1 51.00,53.10
Tell him: "_I am ready._"
confirm
step
kill The Black Knight##35451
There are 3 phases to this fight.
_Phase 1_:
|tip Raise Argent Herald summons ghouls which leap around and drop aggro.  They also Explode, dealing out AoE Damage.
|tip Death's Respite stuns a player for 2 seconds and knocks them back, dealing massive damage.
_Phase 2_:
|tip Army of the Dead summons several ghouls that leap around and explode.
|tip Desecration deals heavy damage to anyone standing in it. Move out.
_Phase 3_:
|tip Death's Bite is an aura which deals out shadowfrost damage and increases magic damage taken by 5% per stack, up to 100 stacks.
|tip Marked for Death leaves a debuff that increases magic damage taken by 200% for 10 seconds.
Defeat the Black Knight. |q 29851/1 |only if haveq(29851)
Defeat The Black Knight |scenariogoal 3/27934
step
Click the Complete Quest Box
turnin Champion of the Tournament##29851
only if haveq(29851)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Utgarde Keep",{
mapid=133,
achieveid={477},
patch='40100',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Howling, Fjord, UK"},
description="This guide will walk you through the Utgarde Keep: Utgarde Keep dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Utgarde Keep or enter the dungeon with your group |goto Utgarde Keep/1 69.30,73.00 |c
step
talk Dark Ranger Marrah##24137
accept A Score to Settle##30112
accept Disarmament##13206
accept Ingvar Must Die!##11262 |goto Utgarde Keep,68.20,67.70
stickystart "vrykulweapons"
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 15
path	68.30,68.60	65.70,56.30	62.80,38.90
path	65.10,31.00	56.20,25.20	50.40,28.50
path	43.90,28.40	38.50,34.10	31.60,37.60
path	23.60,38.60	25.90,50.30
Follow the path |goto Utgarde Keep/1 25.90,50.30 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Prince Keleseth##23953
|tip Frost Tomb ice blocks a player, inflicting frost damage and stunning them for 20 seconds. Kill it to break them free.
|tip Skeletons attack when engaging Keleseth. After their death, they will resurrect in 20 seconds. Kill them quickly.
Defeat Prince Keleseth |scenariogoal 27889 |goto Utgarde Keep/1 29.50,67.00
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 15
path	25.40,68.20	21.70,74.70	25.50,86.20
path	35.30,88.50	50.10,82.20	Utgarde Keep/2 28.10,67.90
path	Utgarde Keep/2 26.60,60.10	Utgarde Keep/2 37.10,54.80
path	Utgarde Keep/2 44.50,82.50	Utgarde Keep/2 55.30,79.70
Follow the path |goto Utgarde Keep/2 55.30,79.70 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dalronn##24201
kill Skarvald the Constructor##24200
|tip When one dies, it becomes an untargetable ghost. Dalronn is much easier to deal with as a ghost.
_Dalronn_:
|tip Kill him first.
|tip Interrupt Shadow Bolt.
|tip Debilitate inflicts shadow damage and reduces all speed by 50% for 8 seconds.
|tip Summon Skeletons interrupt this to avoid the adds.
_Skarvald:_
|tip Kill him last.
|tip Enrage increases his attack speed and damage for 10 seconds. .
Defeat Dalronn and Skarvald the Constructor |scenariogoal 27890 |goto Utgarde Keep/2 58.30,60.70
step
map Utgarde Keep/2
path follow smart; loop off; ants curved; dist 15
path	58.60,60.50	55.30,45.80	53.80,25.80
Follow the path |goto Utgarde Keep/2 53.80,25.80 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Utgarde Keep/3
path follow smart; loop off; ants curved; dist 15
path	Utgarde Keep/3 33.00,49.90	Utgarde Keep/3 28.90,37.80
path	Utgarde Keep/3 39.80,32.30	Utgarde Keep/3 50.70,29.30
path	Utgarde Keep/3 51.80,38.50	Utgarde Keep/3 54.80,52.80
path	Utgarde Keep/3 67.70,41.90
Follow the path |goto Utgarde Keep/3 67.70,41.90 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ingvar the Plunderer##23954
_Phase 1_:
|tip Frontal cone damage. Avoid standing in front.
|tip Staggering Roar deals damage and locks out spells cast for 6 seconds.
|tip Enrage stacks up to 50 times.
_Phase 2_:
|tip Hide behind a pillar until Dreadful Roar is over.
|tip Frontal cleave.
|tip Shadow Axe leaves a spinning axe that deals damage. Move out.
|tip Dreadful Roar deals shadow damage and locks out spells for 8 seconds.
Loot Ingvar's Head |q 29763/1 |only if haveq(29763)
Defeat Ingvar the Plunderer |scenariogoal 1/27891 |goto Utgarde Keep/3 72.70,38.80
step
label "vrykulweapons"
While going through the instance, look for Vrykul Weapons along the walls
click Vrykul Weapons##193059
Loot 5 Vrykul Weapons |q 29764/1
only if haveq(29764)
step
map Utgarde Keep/3
path follow smart; loop off; ants curved; dist 15
path	72.50,38.00	58.00,50.20	46.60,56.50
path	Utgarde Keep/1 79.90,73.40	Utgarde Keep/1 73.60,66.40
Follow the path |goto Utgarde Keep/1 73.60,66.40 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(29763) or haveq(29764) or haveq(29803)
step
talk Dark Ranger Marrah##24137
turnin A Score to Settle##30112
turnin Disarmament##13206
turnin Ingvar Must Die!##11262 |goto Utgarde Keep/1 68.20,67.70
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Utgarde Keep: Utgarde Pinnacle",{
mapid=136,
achieveid={488},
patch='unknown',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Howling, Fjord, UK, UP"},
description="This guide will walk you through the Utgarde Keep: Utgarde Pinnacle dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Utgarde Pinnacle or enter the dungeon with your group |goto Utgarde Pinnacle/2 44.50,16.10 |c
step
talk Image of Argent Confessor Paletress##56072
accept Working at the Source##29864 |goto Utgarde Pinnacle/2 45.10,18.10
only if not completedq(29864)
step
talk Brigg Smallshanks##30871
accept Junk in My Trunk##13131 |goto Utgarde Pinnacle/2 44.00,18.20
accept Vengeance Be Mine!##13132 |goto Utgarde Pinnacle/2 44.00,18.20
only if not completedq(13131) or not completedq(13132)
stickystart "Junk"
step
map Utgarde Pinnacle/2
path follow smart; loop off; ants curved; dist 12
path	44.40,18.70	44.30,34.00	40.60,35.90
path	35.50,35.80	33.50,42.90	34.00,51.60
path	33.30,59.90	35.10,69.00	39.60,69.10
path	39.70,77.10	Utgarde Pinnacle/1 31.10,74.90
Follow this path until you get downstairs. |goto Utgarde Pinnacle/1 31.10,74.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Svala Sorrowgrave##26668
|tip Call Flames deals fire damage to random players.
|tip Ritual of the Sword will target a random player paralyzing them by Channelers on the alter. Kill the channelers within 25 seconds to free the player.
|tip Ritual Channeler is surrounded by a shield that places a stacking DoT on attacking players. Each DPS should kill 1 Channeler.
Defeat Svala Sorrowgrave |scenariogoal 27885 |goto Utgarde Pinnacle,33.80,74.20
step
map Utgarde Pinnacle/1
path follow strict; loop off; ants curved; dist 12
path	35.90,76.10	35.90,86.20	45.70,86.30
path	Utgarde Pinnacle/2 52.70,75.50	Utgarde Pinnacle/2 52.20,84.40
path	Utgarde Pinnacle/2 58.10,84.50
Follow the path |goto Utgarde Pinnacle/2 58.10,84.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gortok Palehoof##26687
click Stasis Generator##7811
|tip This will trigger an event where 3 out of 5 statues come to life, the third being the actual boss.
_Jormunger_:
|tip Leaves poison on the ground and summons non-elite adds.
_Rhino_:
|tip Has a heavy stomp damage and randomly charges victims, leaving a dot.
_Furlbog_:
|tip Casts Chain Lightning and randomly changes aggro, as well as an AoE Fear.
_Worgen_:
|tip  Uses Mortal Strike on the tank.
_Gortok Palehoof_:
|tip Arcing Smash does cone damage wherever he is facing.
|tip Impale leaves a DoT on a random party member.
|tip Withering Roar decreases your maximum health by 500 and stacks. The longer the fight lasts the harder it will become to heal.
Defeat Gortok Palehoof |scenariogoal 27886 |goto Utgarde Pinnacle/2 61.80,84.10
step
kill Skadi the Ruthless##26693
|tip Aggroing the boss will trigger an event. Ymirjar mobs will come to fight you and you will have to battle them up the hall.
|tip Don't stand in Freezing Cloud.
|tip Ymirjar Harpooners drops ammo for the launchers. Click them to pick them up. When you get the message "Skadi the Ruthless is within range of the harpoon launchers!" click the Harpoon Launchers to shoot him down.
|tip Kite Skadi around during Whirlwind to minimize damage.
|tip Poisoned Spear will Poison a player, dealing nature damage. Dispel quickly.
Defeat Skadi the Ruthless |scenariogoal 27887 |goto Utgarde Pinnacle/2 68.70,65.10
step
map Utgarde Pinnacle/2
path follow smart; loop off; ants curved; dist 12
path	68.30,36.70	62.80,37.00	55.50,37.40
path	Utgarde Pinnacle/1 56.30,18.30	Utgarde Pinnacle/1 56.20,32.40
path	Utgarde Pinnacle/1 49.70,44.40	Utgarde Pinnacle/2 48.90,53.70
Follow the path |goto Utgarde Pinnacle/2 48.90,53.70 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill King Ymiron##26861
|tip Gift of the Fallen Kings is used at 66% and 33% health. Grants a new ability. |only if not heroic_dung()
|tip Gift of the Fallen Kings is used every 20% health. Grants a new ability. |only if heroic_dung()
|tip Spirit Burst deals shadow damage to all players. Lasts until the next Gift.
|tip Summon Spirit Fount deals shadow damage to a random player every second. Lasts until the next Gift.
|tip Spirit Strike increases physical damage taken, stacking up to 100 times. Lasts until the next Gift.
_Summon Avenging Spirits_:
|tip Summon Avenging Spirits summons 4 spirits to attack players. Lasts until the next Gift.
|tip At 66% and 33%, King Ymiron will stun the entire party for 8 seconds with Screams of the Dead. |only if not heroic_dung()
|tip Every 20% health, King Ymiron will stun the entire party for 8 seconds with Screams of the Dead. |only if heroic_dung()
|tip Dark Slash deals damage equal to 50% of the targets current health.
|tip Bane deals AoE damage in a 10 yard radius whenever Ymiron is attacked. Dispel this.
|tip Fetid Rot deals nature damage and reduces healing received by 25%. Dispel this.
Defeat King Ymiron |scenariogoal 1/27888 |goto Utgarde Pinnacle/2 42.60,53.50
step
label "Junk"
Loot Untarnished Silver Bar |q 13131/1
Loot Shiny Bauble |q 13131/2
Loot Golden Goblet |q 13131/3
Loot Jade Statue |q 13131/4
only if haveq(13131)
step
talk Image of Argent Confessor Paletress##56072
turnin Working at the Source##29864 |goto Utgarde Pinnacle/2 45.10,18.10
only if haveq(29864)
step
talk Brigg Smallshanks##30871
turnin Junk in My Trunk##13131 |goto Utgarde Pinnacle/2 44.00,18.20
turnin Vengeance Be Mine!##13132 |goto Utgarde Pinnacle/2 44.00,18.20
only if haveq(13131) or haveq(13132)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\The Violet Hold",{
mapid=168,
achieveid={483},
patch='unknown',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"VH, Dalaran"},
description="This guide will walk you through the The Violet Hold dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for The Violet Hold or enter the dungeon with your group |goto The Violet Hold/1 46.10,99.20 |c
step
talk Lieutenant Sinclari##30658
accept Containment##29830 |goto The Violet Hold 47.70,89.70
only if not completedq(29830)
step
In this instance, _Blue Portals_ will randomly pop up at each of the large pink shields in the room
You will need to go to it and defeat the monsters that come out until it closes
On waves 6, 12 and 18 bosses will spawn
Tell Lieutenant Sinclari: "_Activate the crystals when we get in trouble, right._"
confirm
step
label "the_list"
Click here for Erekem |next "Erekem" |confirm
Click here for Moragg |next "Moragg" |confirm
Click here for Ichoron |next "Ichoron" |confirm
Click here for Xevozz |next "Xevozz" |confirm
Click here for Lavanthor |next "Lavanthor" |confirm
Click here for Zuramat the Obliterator |next "Zuramat_the_Obliterator" |confirm
step
label "the_list2"
Click here for Erekem |next "Erekem2" |confirm
Click here for Moragg |next "Moragg2" |confirm
Click here for Ichoron |next "Ichoron2" |confirm
Click here for Xevozz |next "Xevozz2" |confirm
Click here for Lavanthor |next "Lavanthor2" |confirm
Click here for Zuramat the Obliterator |next "Zuramat_the_Obliterator2" |confirm
step
label "Erekem"
kill Erekem##29315
|tip Erekem should always die first.
|tip Earth Shield heals the bearer each time they are hit. Dispel when possible.
|tip Bloodlust increases all speeds by 35%. Dispel.
|tip Chain Heal heals all 3 targets. Interrupting this is top priority.
|tip Lightning Bolt deals nature damage. Interrupt only if a spare is available.
Defeat Erekem |scenariogoal 24858 |goto The Violet Hold/1 24.60,63.50
|next "the_list2"
step
label "Erekem2"
kill Erekem##29315
|tip Erekem should always die first.
|tip Earth Shield heals the bearer each time they are hit. Dispel when possible.
|tip Bloodlust increases all speeds by 35%. Dispel.
|tip Chain Heal heals all 3 targets. Interrupting this is top priority.
|tip Lightning Bolt deals nature damage. Interrupt only if a spare is available.
Defeat Erekem |scenariogoal 24859 |goto The Violet Hold/1 24.60,63.50
|next "final_boss"
step
label "Moragg"
kill Moragg##29316
|tip Optic Link deals damage to a player over 12 seconds, increases with each tick.
|tip Corrosive Saliva stacks up to 20 times, decreasing armor by 5% per stack.
|tip Ray of Pain deals shadow damage to a random player and reduces healing received by 15% for 5 seconds.
|tip Ray of Suffering deals shadow damage over 5 seconds to a random player.
Defeat Moragg |scenariogoal 24858 |goto The Violet Hold/1 67.10,54.50
|next "the_list2"
step
label "Moragg2"
kill Moragg##29316
|tip Optic Link deals damage to a player over 12 seconds, increases with each tick.
|tip Corrosive Saliva stacks up to 20 times, decreasing armor by 5% per stack.
|tip Ray of Pain deals shadow damage to a random player and reduces healing received by 15% for 5 seconds.
|tip Ray of Suffering deals shadow damage over 5 seconds to a random player.
Defeat Moragg |scenariogoal 24859 |goto The Violet Hold/1 67.10,54.50
|next "final_boss"
step
label "Ichoron"
kill Ichoron##29313
|tip Protective Bubble reduced damage taken by 99%. 35 successful attacks against Ichoron will cause her to Burst.
|tip Burst deals frost damage to everyone with a knockback. Creates 10 Ichor Globules and reduces her health by 30%.
|tip Ichor Globule, Each one heals Ichoron for 3% of her health. Kite Ichoron around and kill the Globules before they reach her.
Defeat Ichoron |scenariogoal 24858 |goto The Violet Hold/1 53.90,42.90
|next "the_list2"
step
label "Ichoron2"
kill Ichoron##29313
|tip Protective Bubble reduced damage taken by 99%. 35 successful attacks against Ichoron will cause her to Burst.
|tip Burst deals frost damage to everyone with a knockback. Creates 10 Ichor Globules and reduces her health by 30%.
|tip Ichor Globule, Each one heals Ichoron for 3% of her health. Kite Ichoron around and kill the Globules before they reach her.
Defeat Ichoron |scenariogoal 24859 |goto The Violet Hold/1 53.90,42.90
|next "final_boss"
step
label "Xevozz"
kill Xevozz##29266
|tip Kite him around away from spheres.
|tip Arcane Barrage Volley deals arcane damage to everyone within 45 yards.
|tip Arcane Buffet deals arcane damage and increases arcane damage taken for 20 seconds. Stacks 10 times. Dispel when possible.
|tip Ethereal Sphere pulse, dealing arcane damage to anyone within 8 yards. Avoid them as much as possible.
|tip Spheres coming within 3 yards of Xevozz increase his damage and attack speed for 8 seconds.
Defeat Xevozz |scenariogoal 24858 |goto The Violet Hold/1 33.90,48.10
|next "the_list2"
step
label "Xevozz2"
kill Xevozz##29266
|tip Kite him around away from spheres.
|tip Arcane Barrage Volley deals arcane damage to everyone within 45 yards.
|tip Arcane Buffet deals arcane damage and increases arcane damage taken for 20 seconds. Stacks 10 times. Dispel when possible.
|tip Ethereal Sphere pulse, dealing arcane damage to anyone within 8 yards. Avoid them as much as possible.
|tip Spheres coming within 3 yards of Xevozz increase his damage and attack speed for 8 seconds.
Defeat Xevozz |scenariogoal 24859 |goto The Violet Hold/1 33.90,48.10
|next "final_boss"
step
label "Lavanthor"
kill Lavanthor##29312
|tip Flame Breath deals fire damage in a frontal cone. Don't stand in front of Lavanthor.
|tip Lava Burn creates a lava bomb that hits the area where the targeted player stands and lasts for 8 seconds. Move out.
|tip Cauterizing Flames deals fire damage to all players and increases fire damage taken by 35%.
Defeat Lavanthor |scenariogoal 24858 |goto The Violet Hold/1 59.80,72.50
|next "the_list2"
step
label "Lavanthor2"
kill Lavanthor##29312
|tip Flame Breath deals fire damage in a frontal cone. Don't stand in front of Lavanthor.
|tip Lava Burn creates a lava bomb that hits the area where the targeted player stands and lasts for 8 seconds. Move out.
|tip Cauterizing Flames deals fire damage to all players and increases fire damage taken by 35%.
Defeat Lavanthor |scenariogoal 24859 |goto The Violet Hold/1 59.80,72.50
|next "final_boss"
step
label "Zuramat_the_Obliterator"
kill Zuramat the Obliterator##29314
|tip Void Shift deals shadow damage and allows players to see Void Sentries.
|tip While shifted, kill these Void Sentries as quick as you can to stop the shadow bolt volley they cast.
|tip While Shroud of Darkness is active, attacks against Zuramat reduce healing by 10%, stacking 5 times. Don't attack during the 10 second duration.
Defeat Zuramat the Obliterator |scenariogoal 24858 |goto The Violet Hold/1 28.80,34.80
|next "the_list2"
step
label "Zuramat_the_Obliterator2"
kill Zuramat the Obliterator##29314
|tip Void Shift deals shadow damage and allows players to see Void Sentries.
|tip While shifted, kill these Void Sentries as quick as you can to stop the shadow bolt volley they cast.
|tip While Shroud of Darkness is active, attacks against Zuramat reduce healing by 10%, stacking 5 times. Don't attack during the 10 second duration.
Defeat Zuramat the Obliterator |scenariogoal 24859 |goto The Violet Hold/1 28.80,34.80
|next "final_boss"
step
label "final_boss"
kill Cyanigosa##31134
|tip DPS and Heals should stand on either of her sides, to avoid Uncontrollable Energy and Tail Swipe.
|tip She will use Arcane Grip, which pulls all party members to her and drops aggro. The tank should Taunt immediately.
|tip She will cast Blizzard on a random party member.
Defeat Cyanigosa |scenariogoal 1/27910 |goto The Violet Hold/1 46.00,56.20
step
talk Lieutenant Sinclari##30658
turnin Containment##29830 |goto The Violet Hold 45.90,91.20
only if haveq(29830)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\The Eye of Eternity",{
mapid=141,
achieveid={1391, 1394},
patch='unknown',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"EoE, Coldarra, Borean, Tundra, Malygos"},
description="This guide will walk you through the Eye of Eternity Raid.",
},[[
step
Enter The Eye of Eternity |goto Borean Tundra/0 27.59,26.56 < 5
|tip It is on the third story of this building.
confirm
step
Click the Focusing Iris to start the fight. |goto The Eye of Eternity/1 37.70,50.70
confirm
step
_Malygos_ |goto The Eye of Eternity/1 38.20,50.40
_Phase 1_
|tip Arcane Explosion deals 6000-8000 Arcane damage to everyone in the raid.
|tip Arcane Breath deals 18,800-28,300 Arcane damage in a cone in front of Malygos. It also applies a debuff, causing an explosion after 5 seconds which deals 10,000 damage to all nearby players.
|tip Arcane Storm Arcane missles fire into the air, which hit random raid members 9500-10,500 Arcane damage.
|tip Vortex occurs when Malygos flies into the air, tossing the raid around and dealing 2000 Arcane damage. The raid will then be dropped on the center platform, taking 10% fall damage.
|tip Power Sparks Malygos summons a Power Spark away from the platform and move towards him, increasing his damage done by 50% if it reaches him. If killed it leaves a mark on the ground that increases players' damage by 50% when standing in it.
|tip Detonate affects the player with the most mana in the raid, burning 10,000 mana and dealing 2 Arcane damage per mana point.
_Phase 2_ occurs when Malygos is at 50% health.
Click here to proceed to _Phase 2_. |confirm
step
_Malygos_ |goto The Eye of Eternity/1 38.20,50.40
_Phase 2_
|tip Nexus Lord and Scions of Eternity adds will spawn at the beginning of the phase.
|tip Arcane Storm Arcane missles fire into the air, which hit random raid members 9500-10,500 Arcane damage.
|tip Deep Breath deals 5000 Arcane damage per second to the whole raid for 5 seconds.
|tip Power Overload spawn purple anti-magic zones on the platform, reducing all magic taken by 50% while standing inside.
_Phase 3_ starts when all the adds are dead.
Click here to proceed to _Phase 3_ |confirm
step
kill Malygos##28859 |goto The Eye of Eternity/1 38.20,50.40
_Phase 3_
|tip All raid members land on red dragons after Malygos shatters the platform.
|tip Arcane Pulse deals 28,200-31,700 Arcane damage to anyone within 30 yards of Malygos.
|tip Static Field creates a blue orb at a random location. The orb deals 10,000 Arcane damage per second to anyone within 30 yards of it.
|tip Surge of Power affects a random raid member. Malygos shoots a beam at them, dealing 12,000 Arcane damage every half-second for 3 seconds, as well as 5000 Arcane damage per second to anyone near the primary target.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Icecrown Citadel",{
mapid=186,
achieveid={4532, 4608},
patch='30302',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"ICC, LK, Lich, King, Shadowmourne"},
description="This guide will walk you through the Icecrown Citadel Raid.",
},[[
step
Enter Icecrown Citadel |goto Icecrown/0 53.79,87.04 < 5
confirm
step
map Icecrown Citadel/1
path loop off
path	38.90,29.20	38.90,36.30	39.00,52.40
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar. |goto Icecrown Citadel/1 39.00,52.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Marrowgar##36612 |goto Icecrown Citadel 38.90,59.80
|tip Bone Storm is an AoE hits players around Marrowgar, dealing less damage the further away you are.
|tip Bone Spike Graveyard deals 10% of each the target's maximum health as damage every second until killed by other raid members. Will automatically end after 5 mintues.
|tip Coldflame summons a line of frost that hits players in the way, dealing 9000 Frost damage every second for 8 seconds.
|tip Bone Slice deals 200% normal damage, split between Marrowgar's target and a nearby ally.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Icecrown Citadel/1
path loop off
path	34.20,58.80	34.30,66.70	38.90,72.40
path	39.00,80.50
Follow the path, clearing trash as you make your way to the next boss, Lady Deathwhisper. |goto Icecrown Citadel/1 39.00,80.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Lady Deathwhisper_ |goto Icecrown Citadel/1 39.10,86.70
Click here for 10 man abilities. |next "death10" |confirm
Click here for 25 man abilities. |next "death25" |confirm
step
label "death10"
kill Lady Deathwhisper##36855 |goto Icecrown Citadel/1 39.10,86.70
_Phase 1_
|tip Animate Dead reanimates a Cult Adherent or Cult Fanatic.
|tip Dark Empowerment is a buff applied to Deathwhisper's allies. It increases their spell damage and make them immune to interrupts.
|tip Dark Transformation transforms a random Cult Fanatic into an Undead Behemoth, increasing its damage by 100%.
|tip Mana Barrier is a buff that heals the target in exchange for their mana.
|tip Shadow Bolt deals 9000-11,800 Shadow damage to the target.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
_Phase 2_
|tip Frostbolt deals 37,000 Frost damage to a raid member and reduces their movement speed by 50% for 4 seconds. Interruptable.
|tip Frostbolt Volley inflicts 10,800-13,200 Frost damage to nearby raid members, also reducing their movement speed by 50% for 4 seconds.
|tip Summon Vengeful Shade spawns a Vengeful Shade that cannot be attacked. It chases a player for a short time, casting Vengeful Blast on them.
|tip Touch of Insignificance reduces the target's threat generation by 20%. Stacks up to 5 times.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
|next "deathcomplete" |confirm
step
label "death25"
kill Lady Deathwhisper##36855 |goto Icecrown Citadel/1 39.10,86.70
_Phase 1_
|tip Animate Dead reanimates a Cult Adherent or Cult Fanatic.
|tip Dark Empowerment is a buff applied to Deathwhisper's allies. It increases their spell damage and make them immune to interrupts.
|tip Dark Transformation transforms a random Cult Fanatic into an Undead Behemoth, increasing its damage by 100%.
|tip Mana Barrier is a buff that heals the target in exchange for their mana.
|tip Shadow Bolt deals 11,800-13,100 Shadow damage to the target.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
|tip Dominate Mind charms the targeted player for 20 seconds, increasing their damage by 200% and healing by 500%.
_Phase 2_
|tip Frostbolt deals 52,000 Frost damage to a raid member and reduces their movement speed by 50% for 4 seconds. Interruptable.
|tip Frostbolt Volley inflicts 14,400-17,600 Frost damage to nearby raid members, also reducing their movement speed by 50% for 4 seconds.
|tip Summon Vengeful Shade spawns a Vengeful Shade that cannot be attacked. It chases a player for a short time, casting Vengeful Blast on them.
|tip Touch of Insignificance reduces the target's threat generation by 20%. Stacks up to 5 times.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
|tip Dominate Mind charms the targeted player for 20 seconds, increasing their damage by 200% and healing by 500%.
|next "deathcomplete" |confirm
step
label "deathcomplete"
Take the elevator up to the next level |goto Icecrown Citadel/1 39.00,85.50 < 5 |c
step
map Icecrown Citadel/2
path loop off
path	45.70,77.10	51.00,71.80	58.60,55.50
path	66.40,55.40
Follow the path towards the next boss encounter, the Gunship Battle. |goto Icecrown Citadel/2 24.10,55.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Zafod Boombox##37184
Tell him to give you a jetpack! |goto Icecrown Citadel/2 74.70,61.90
Equip the jetpack |use Goblin Rocket Pack##49278
|confirm
step
talk High Overlord Saurfang##36939
Tell him "My companions are all accounted for, Saurfang. Let's go!" |goto Icecrown Citadel/2 73.30,61.40
This will start the boss fight, make sure you are ready.
|confirm
step
_Gunship Battle_
|tip This fight is an aerial battle between the Skybreaker and Ogrim's Hammer.
|tip The raid will need to be split into an offensive and defensive team.
|tip Defensive Team: consists of the majority of the raid. Their job is to keep the players' gunship free of enemy boarding parties and kill ranged attackers.
|tip Offensive Team: consists of melee attackers, tank and healer(s). Their job is to use the guns to attack the enemy ship and board it using the jetpacks, to kill adds.
|tip Use the jetpack to get to the enemy ship. |use Goblin Rocket Pack##49278
_High Overlord Saurfang_
|tip Battle Fury increases damage dealt by 5%.
|tip Cleave inflicts 120% weapon damage to the target and up to 3 nearby alliles. Make sure the tank is the only one in front of him when this occurs.
|tip Rending Throw Saurfang throws his weapon at a player, dealing 3000-4000 weapon damage and an additional 2000 Physical damage ever 3 seconds for 18 seconds.
_Kor'kron Battle-Mage_
|tip Below Zero freezes the target in ice, stunning them.
_Kor'kron Rocketeer_
|tip Rocket Artillery launches a rocket that deals 6300-7700 Fire damage to players in the targeted area.
_Kor'kron Sergeant_
|tip Bladestorm lasts 6 seconds and hits up to 4 nearby players every second.
|tip Wounding Strike deals 200% weapon damage and applies a debuff that reduces healing by 25% for 10 seconds.
|tip Desperate Resolve increases their attack speed and armor by 60%.
_Kor'kron Reaver_
|tip Desperate Resolve_ increases their attack speed and armor by 60%.
_Kor'kron Axethrower_
|tip Shoot shoots at the target, dealing 4000 Physical damage.
|tip Hurl Axe deals 4000 Physical damage.
|confirm
step
talk High Overlord Saurfang##37187
Tell him "We're ready, Saurfang." |goto Icecrown Citadel/2 45.60,72.30
This will start the next boss fight, make sure you are ready.
|confirm
step
kill Deathbringer Saurfang##37813 |goto Icecrown Citadel/2 45.60,65.50
|tip Blood Link is a stacking buff that gives Saurfang Blood Power, increasing his size and damage dealt by 1% per stack.
|tip Blood Nova is an AoE that deals 10,000 Physical damage to players nearby the target.
|tip Boiling Blood does 9500 Physical damage every 3 seconds for 24 seconds.
|tip Call Blood Beast summons a blood beast add every 40 seconds.
|tip Frenzy increases Saurfang's attack speed by 30%.
|tip Mark of the Fallen Champion causes Saurfang's attacks to splash to his target, dealing 5700-6300 additional damage. If the target dies while affected by this, Saurfang is healed for 5% of his total health.
|tip Rune of Blood is a debuff used on a raid member. Saurfang's attacks leech 5100-6800 additional health from players affected by this, healing him for 10 times the amount of health leeched.
|confirm
step
|goto Icecrown Citadel/3 51.50,16.50 |n
Go through the doorway here to go up to the next level of Icecrown. |goto Icecrown Citadel/5 51.80,83.40 < 10 |noway |c
step
map Icecrown Citadel/5
path loop off
path	51.80,80.50	47.70,76.80	51.90,71.40
path	45.80,62.90	41.70,53.70	38.10,58.60
path	32.70,53.70	28.80,65.40	24.50,65.40
Follow the path, clearing trash as you make your way to the next boss, Festergut. |goto Icecrown Citadel/5 24.50,65.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Festergut_ |goto Icecrown Citadel/5 19.80,65.40
Click here for 10 man abilities. |next "gut10" |confirm
Click here for 25 man abilities. |next "gut25" |confirm
step
label "gut10"
kill Festergut##36626 |goto Icecrown Citadel/5 19.80,65.40
|tip Gas Spore inflicts 2 random raid members with a gaseous spore. The spore explodes after 12 seconds, dealing 2000 damage to all nearby raid members and giving them 25% resistance to the blight. Stacks up to 3 times.
|tip Inhale Blight inhales the Gaseous Blight in the room, increasing damage dealt and attack speed by 25%.
|tip Pungent Blight occurs after Inhale Blight. Deals 48,750-51,250 damage to the raid and releases the blight back into the room.
|tip Vile Gas inflicts a plague in the targeted area, inflicting 5000 damage every 2 seconds for 6 seconds. Being hit by this causes a player to vomit, dealing an additional 4000 damage to nearby allies.
|tip Gastric Bloat inflicts 10,000 Nature damage to the target and applies a stacking debuff. At 10 stacks, Gastric Explosion occurs, killing the player and dealing 30,000 Shadow damage to nearby raid members within 10 yards.
|next "gutcomplete" |confirm
step
label "gut25"
kill Festergut##36626 |goto Icecrown Citadel/5 19.80,65.40
|tip Gas Spore inflicts 2 random raid members with a gaseous spore. The spore explodes after 12 seconds, dealing 2000 damage to all nearby raid members and giving them 25% resistance to the blight. Stacks up to 3 times.
|tip Inhale Blight inhales the Gaseous Blight in the room, increasing damage dealt and attack speed by 25%.
|tip Pungent Blight occurs after Inhale Blight. Deals 48,750-51,250 damage to the raid and releases the blight back into the room.
|tip Vile Gas inflicts a plague in the targeted area, inflicting 5000 damage every 2 seconds for 6 seconds. Being hit by this causes a player to vomit, dealing an additional 4000 damage to nearby allies.
|tip Gastric Bloat inflicts 10,000 Nature damage to the target and applies a stacking debuff. At 10 stacks, Gastric Explosion occurs, killing the player and dealing 30,000 Shadow damage to nearby raid members within 10 yards.
|tip Putrid Hate is an AoE that deals large damage in a 200 yard radius. This also applies a debuff to nearby raid members, reducing their movement speed by 25%.
|next "gutcomplete" |confirm
step
label "gutcomplete"
Make sure to click the Gas Release Valve before leaving the room. This, along with another valve, must be used to access a later boss. |goto Icecrown Citadel/5 23.50,63.60
|confirm
step
map Icecrown Citadel/5
path loop off
path	29.60,54.10	29.20,42.30	24.70,42.10
Follow the path, clearing trash as you make your way to the next boss, Rotface. |goto Icecrown Citadel/5 24.70,42.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Rotface##36627 |goto Icecrown Citadel/5 19.80,41.90
|tip Ooze Flood inflicts 5400-5700 damage every second and also reduces the target's movement speed by 25% for 5 seconds.
|tip Slime Spray summons a green ooze rain, dealing 5500 Nature damage every second for 5 seconds to players in a _cone_ in front of Rotface.
|tip Mutated Infection inflicts 4000 Shadow damage every second and reduces healing received by 50% for 12 seconds. Upon expiration, a small ooze is created at the target's location.
_Little Ooze_
|tip Sticky Ooze deals 3000 damage every second and reduces movement speed by 50%.
|tip Weak Radiating Ooze deals 3500 damage every 2 seconds to players within the targeted area. Also causes Little Ooze to merge together, creating a Big Ooze.
_Big Ooze_
|tip Sticky Ooze deals 3000 damage every second and reduces movement speed by 50%.
|tip Radiating Ooze deals 4500 damage every 2 seconds to players within the targeted area. Also causes Big Oozes to merge together, applying a buff that increases their damage dealt by 20% and stacking up to 10 times.
|tip Unstable Ooze Explosion occurs when a Big Ooze merges with 5 other oozes.
step
Make sure to click the Ooze Release Valve before leaving the room. This opens the door to the next boss. |goto Icecrown Citadel/5 23.50,43.90
|confirm
step
map Icecrown Citadel/5
path loop off
path	24.40,53.40	18.40,53.70	17.30,53.70
Kill the Flesh-eating Insects in this hallway until the door opens to the next boss, Professor Putricide. |goto Icecrown Citadel/5 17.30,53.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Professor Putricide##36678 |goto Icecrown Citadel/5 13.30,53.70
|tip Mutated Slime vial of Mutated Slime is thrown at the target, creating a puddle that deals 4500 damage every second until it is consumed by another Mutated creature.
|tip Unstable Experiment Putricide performs an experiment, spawning a Volitile Ooze or a Gas Cloud. The Ooze should be killed and the Cloud should be kited.
|tip Choking Gas Bomb is an AoE around Putricide, dealing 5500 damage every second and then explodes for 16,000 damage after 20 seconds.
|tip Malleable Goo Putricide bounces a Malleable ball of Green Goo at his target, inflicting 14,500-15,300 damage and reducing their attack and cast speed by 200% for 15 seconds.
|tip Mutated Plague occurs during Phase 3. This is applied to Putricide's target every 10 seconds, dealing increased Shadow damage to the raid. Kill him as fast as possible to avoid death.
|confirm
step
map Icecrown Citadel/5
path loop off
path	32.50,53.70	37.50,58.60	41.70,53.80
path	51.90,38.50	51.80,20.00
Follow the path, clearing trash as you make your way to the next boss, the Blood Prince Council. |goto Icecrown Citadel/5 51.80,20.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Blood Prince Council_ |goto Icecrown Citadel/5 51.80,14.50
Click here for 10 man abilities. |next "council10" |confirm
Click here for 25 man abilities. |next "council25" |confirm
step
label "council10"
Blood Prince Council |goto Icecrown Citadel/5 51.80,14.50
kill Prince Valanar##37970
|tip Shock Vortex creates an AoE vortex that deals 8000 damage to players within 12 yards and knocks them back.
|tip Kinetic Bomb summons a bomb that drifts toward the ground, exploding on impact and dealing 10,800-13,200 damage to players and knocking them back.
|tip Empowered Shock Vortex creates vortexes under players near Valanar, dealing 5000 damage and knocking them back.
kill Prince Taldaram##37973
|tip Conjure Flame creates a ball of flames that flies through the air, growing in size and dealing at least 7500 Fire damage to players near the impact. Deals increased damage based on size.
|tip Conjure Empowered Flame created an empowered ball of flame that flies towards the target and explodes on impact, dealing at least 7500 Fire damage. Also inflicts 1000 Fire damage to nearby players.
|tip Glittering Sparks_sparks shoot from Taldaram in a cone, burning players for 13,000 Fire damage over 8 seconds and reducing their movement speed by 20%.
kill Prince Keleseth##37972
|tip Shadow Lance deals 16,000 Shadow damage to the target.
|tip Shadow Resonance affects the nearest target, dealing 1000 damage and reducing Shadow damage taken from all sources by 35%.
|tip Empowered Shadow Lance deals 78,000-82,000 damage to the target.
|next "councilcomplete" |confirm
step
label "council25"
Blood Prince Council |goto Icecrown Citadel/5 51.80,14.50
kill Prince Valanar##37970
|tip Shock Vortex creates an AoE vortex that deals 9000 damage to players within 12 yards and knocks them back.
|tip Kinetic Bomb summons a bomb that drifts toward the ground, exploding on impact and dealing 12,000 damage to the entire raid and knocks them back.
|tip Empowered Shock Vortex creates vortexes under players near Valanar, dealing 7000 damage and knocking them back.
kill Prince Taldaram##37973
|tip Conjure Flame creates a ball of flames that flies through the air, growing in size and dealing at least 10,000 Fire damage to players near the impact. Deals increased damage based on size.
|tip Conjure Empowered Flame created an empowered ball of flame that flies towards the target and explodes on impact, dealing at least 10,000 Fire damage. Also inflicts 1000 Fire damage to nearby players.
|tip Glittering Sparks sparks shoot from Taldaram in a _cone_, burning players for 16,100 Fire damage over 8 seconds and reducing their movement speed by 20%.
kill Prince Keleseth##37972
|tip Shadow Lance deals 17,000-18,000 Shadow damage to the target.
|tip Shadow Resonance affects the nearest target, dealing 1000 damage and reducing Shadow damage taken from all sources by 35%.
|tip Empowered Shadow Lance deals 85,000-89,600 damage to the target.
|next "councilcomplete" |confirm
step
label "councilcomplete"
map Icecrown Citadel/6
path loop off
path	Icecrown Citadel/5 46.70,14.10	Icecrown Citadel/5 42.70,17.00	Icecrown Citadel/6 30.70,59.80
path	51.10,73.60	51.10,59.80
Follow the path, clearing trash as you make your way to the next boss, Blood-Queen Lana'thel. |goto Icecrown Citadel/6 51.10,59.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Blood-Queen Lana'thel##37955 |goto Icecrown Citadel/6 51.10,43.80
_Ground Phase_
|tip Blood Mirror a debuff that inflicts 100% of the damage the target takes to the linked player.
|tip Delirious Slash inflicts 50% of weapon damage and applies a bleed DoT that inflicts 5500-6500 every 3 seconds for 15 seconds.
|tip Vampiric Bite deals 12,000-14,000 damage to the target, also applying Essence of the Blood Queen.
|tip Essence of the Blood Queen infuses the target with the blood of the Vampyr Queen, increasing damage by 100% and healing them for 10% of damage inflicted.
|tip Pact of the Darkfallen  deals 5000 Shadow damage every 2 seconds to the target and nearby players. Expires when all linked players are within 5 yards.
|tip Shroud of Sorrow deals 4500 Shadow damage every 3 seconds to players within 40 yards of Lana'thel.
|tip Swarming Shadow is a mass of shadows that appear under the target, dealing 2500 Shadow damage every 2 seconds.
|tip Twilight Blootbolt deals 9200-10,750 damage to the target and surrounding players.
_Air Phase_
|tip Incite Terror is a 4 second Fear on the entire raid.
|tip Bloodbolt Whirl summons a maelstrom of Bloodbolts every 2 seconds for 6 seconds, these deal 10,000 damage to the targeted player and their surrounding allies.
|confirm
step
|goto Icecrown Citadel/6 51.10,69.70 |n
Jump down the hole here |goto Icecrown Citadel/5 51.90,33.60 < 10 |noway |c
step
map Icecrown Citadel/5
path loop off
path	51.80,38.50	61.70,53.80	69.30,53.80
path	74.40,53.70	76.60,58.40	76.60,62.70
Follow the path, clearing trash as you make your way to the next boss, Valithria Dreamwalker. |goto Icecrown Citadel/5 76.60,62.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat Valithria Dreamwalker |goto Icecrown Citadel/5 76.60,73.70
This fight ends after Valithria is healed back to 100% health.
Most healers should focus on Valithria, while the rest of the raid group take care of the adds that continuously spawn.
|tip If you are soloing this instance and do not have a heal, this boss can be skipped by just walking past.
|tip Nightmare Portal summons Nightmare Portals that allow access to the Dreamstate. Valithria's healers should use these and absorb the Dream Clouds that spawn there, granting them Emerald Vigor.
|tip Emerald Vigor is a buff that regenerates 200 mana every 3 seconds and increases damage and healing done by 10%.
|tip Dreamwalker's Rage occurs when Valithria reaches 100% health. It deals 10,000,000 Nature damage to all surrounding enemies. Does not hit players.
_Blazing Skeleton_
|tip Fireball deals 4700-5300 Fire damage to the target.
|tip Lay Waste surrounds the skeleton in flames for 12 seconds, dealing 4000 Fire damage to the raid every 2 seconds.
_Blistering Zombie_
|tip Acid Burst explodes the zombie, dealing 9400-10,500 Nature damage and 750 Nature damage every second to all players within 15 yards.
|tip Corrosion is a DoT applied to a player after being hit by a melee attack, dealing 2000 Nature damage every 3 seconds and reducing their armor by 10%. Stacks up to 5 times.
_Risen Archmage_
|tip Column of Frost marks a location under a players feet. After 2 seconds frost erupts, dealing 12,000 Frost damage to players within 3 yards and knocking them into the air.
|tip Frostbolt Volley deals 8500-10,500 Frost damage to nearby players, also reducing their movement speed for 4 seconds.
|tip Mana Void summons a void at a random player's location, burning 800 mana per second to all players within 6 yards.
_Gluttonous Abomination_
|tip Gut Spray deals 20000 Nature damage per second and increases the target's Physical damage taken by 25% for 12 seconds.
|confirm
step
|goto Icecrown Citadel/5 76.70,92.90 |n
Ride this elevator down |goto Icecrown Citadel/4 36.60,88.70 < 10 |noway |c
step
Clear the waves of adds that spawn in this room until the northern gate at [36.50,50.10] opens. |goto Icecrown Citadel/4 36.60,67.50
|confirm
step
Clear the two groups of trash here, leaving Spinestalker and Rimefang alive. Once you kill those two the boss, Sindragosa, will spawn. |goto Icecrown Citadel/4 36.50,35.50
|confirm
step
_Sindragosa_ |goto Icecrown Citadel/4 36.60,23.40
Click here for 10 man abilities. |next "sin10" |confirm
Click here for 25 man abilities. |next "sin25" |confirm
step
label "sin10"
kill Sindragosa##36853 |goto Icecrown Citadel/4 36.60,23.40
_Ground Phase_
|tip Cleave hits Sindragosa's target and up to 10 additional nearby players. Make sure the tank is the only one in front of her when this occurs.
|tip Frost Aura deals 3000 Frost damage every 3 seconds to all players near Sindragosa.
|tip Frost Breath inflicts 27,750-32,250 Frost damage to raid members in a 60 yard cone in front of Sindragosa. Also reduces their attack speed by 50% and movement speed by 15% for 90 seconds.
|tip Ice Grip pulls nearby players to the caster and then uses Blistering Cold.
|tip Blistering Cold deals 30,000 Frost damage to players within 25 yards.
|tip Chilled to the Bone_ deals 1000 Frost damage every 2 seconds per stack.
|tip Permeating Chill affects players attacking Sindragosa with physical attacks. They receive this debuff, dealing 1000 Frost damage every 2 seconds per stack.
|tip Tail Smash deals 11,250-18,750 damage on players behind Sindragosa.
_Air Phase_
|tip Frost Beacon Marks the targeted player for imprisonment in an Ice Tomb, dealing 8% of their maximum health in damage every second if not freed by other players.
|tip Frost Bomb deals 23,500-26,400 Frost damage to all nearby raid members.
_Final Phase_
|tip Mystic Buffet buffets all players near Sindragosa with Arcane energy, increasing all magic damage taken by 20% for stack.
|next "sincomplete" |confirm
step
label "sin25"
kill Sindragosa##36853 |goto Icecrown Citadel/4 36.60,23.40
_Ground Phase_
|tip Cleave hits Sindragosa's target and up to 10 additional nearby players. Make sure the tank is the only one in front of her when this occurs.
|tip Frost Aura deals 4500 Frost damage every 3 seconds to all players near Sindragosa.
|tip Frost Breath inflicts 37,000-43,000 Frost damage to raid members in a 60 yard cone in front of Sindragosa. Also reduces their attack speed by 50% and movement speed by 15% for 90 seconds.
|tip Ice Grip_ pulls nearby players to the caster and then uses Blistering Cold.
|tip Blistering Cold deals 35,000 Frost damage to players within 25 yards.
|tip Chilled to the Bone_ deals 1000 Frost damage every 2 seconds per stack.
|tip Permeating Chill affects players attacking Sindragosa with physical attacks. They receive this debuff, dealing 1000 Frost damage every 2 seconds per stack.
|tip Tail Smash deals 11,250-18,750 damage on players behind Sindragosa.
_Air Phase_
|tip Frost Beacon Marks the targeted player for imprisonment in an Ice Tomb, dealing 8% of their maximum health in damage every second if not freed by other players.
|tip Frost Bomb deals 23,500-26,400 Frost damage to all nearby raid members.
_Final Phase_
|tip Mystic Buffet buffets all players near Sindragosa with Arcane energy, increasing all magic damage taken by 20% for stack.
|next "sincomplete" |confirm
step
label "sincomplete"
map Icecrown Citadel/4
path loop off
path	39.40,44.10	46.90,33.40	51.70,33.30
Follow this path to the elevator and take it up to the next level. |goto Icecrown Citadel/5 86.00,53.80 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Icecrown Citadel/5
path loop off
path	80.70,53.80	67.70,53.70	59.20,53.70
path	52.00,53.70
Follow the path to the teleporter and step through it, taking you to the final boss, the Lich King. |goto Icecrown Citadel/7 49.40,39.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Highlord Tirion Fordring##38995 |goto Icecrown Citadel/7 49.80,50.40
Tell him "We are prepared, Highlord..."
This will start the final battle with the Lich King, make sure you are ready.
|confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 1_
|tip Adds in this Phase should be tanked away from the group and killed using Necrotic Plague. This is a DoT that is used on players, but when dispelled (or the player dies) it jumps to a nearby unit, hopefully the summoned adds.
|tip Summon Drudge Ghouls spawns 3 Drudge Ghoulds to attack the raid.
|tip Summon Shambling Horror spawns a Shambling Horror to attack the raid. These have a _frontal cone_ attack and _enrage_.
|tip Nectrotic Plague is a DoT the Lich King uses on a player, dealing 50,000 damage over 5 seconds for 15 seconds. If the player dies, or if it is dispelled, it jumps up to 10 yards to a nearby unit. You want it to jump to the summoned adds.
|tip Infest deals 6500-7500 Shadow damage to the raid, also increasing their Shadow damage taken.
|tip Summon Shadow Trap the Lich King spawns a Shadow Trap under the targeted player's feet. Stepping within 5 yards of the trap causes it to explode, dealing 23,500-26,500 Shadow damage to players within 10 yards and knocking them back.
|tip Phase 1.50 starts when the Lich King reaches 70% health.
Click here to move to _Phase 1.50_. |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 1.50_
|tip Remorseless Winter creates a large winter storm that deals 7000-8000 Frost damage every second to all raid members within 45 yards.
|tip Pain and Suffering deals 2800-3200 Shadow damage and an additional 500 Shadow damage every second for 3 seconds in a frontal cone.
|tip Summon Ice Sphere spawns an Ice Sphere that moves towards its target. If it reaches them it deals 9400-10,600 Frost damage to all players within 10 yards, also knocking them back.
|tip Raging Spirit rips out a piece of the target's spirit, spawning a Raging Spirit that deals 20,000 Shadow damage to all players in a 15 yard frontal cone and silencing them for 5 seconds.
|tip Quake occurs at the end of the phase, the Lich King sends out shockwaves, causing the edge of the platform to crumble.
Click here to move to _Phase 2_. |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 2_
|tip Infest deals 6500-7500 Shadow damage to the raid, also increasing their Shadow damage taken.
|tip Soul Reaper hits the target for 50% weapon damage and applies Soul Reaper, which deals 50,000 Shadow damage after 5 seconds. Also increases the Lich King's haste by 100% for 5 seconds.
|tip Defile creates a defiled area under a player's feet, dealing damage to anyone inside it and growing in size whenever it deals damage.
|tip Summon Val'kyr spawns a Val'kyr Shadowguard, which picks up a random player and tries to throw them off the edge of the platform if not killed in time.
|tip Phase 2.50 starts when the Lich King falls below 40% health.
Click here to advance to _Phase 2.50_. |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 2.50_
|tip Remorseless Winter creates a large winter storm that deals 7000-8000 Frost damage every second to all raid members within 45 yards.
|tip Pain and Suffering deals 2800-3200 Shadow damage and an additional 500 Shadow damage every second for 3 seconds in a frontal cone.
|tip Summon Ice Sphere spawns an Ice Sphere that moves towards its target. If it reaches them it deals 9400-10,600 Frost damage to all players within 10 yards, also knocking them back.
|tip Raging Spirit rips out a piece of the target's spirit, spawning a Raging Spirit that deals 20,000 Shadow damage to all players in a 15 yard _frontal cone_ and silencing them for 5 seconds.
|tip Quake occurs at the _end of the phase_, the Lich King sends out shockwaves, causing the edge of the platform to crumble.
Click here to proceed to _Phase 3_. |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 3_
|tip Soul Reaper hits the target for 50% weapon damage and applies Soul Reaper, which deals 50,000 Shadow damage after 5 seconds. Also increases the Lich King's haste by 100% for 5 seconds.
|tip Defile creates a defiled area under a player's feet, dealing damage to anyone inside it and growing in size whenever it deals damage.
|tip Vile Spirits spawns 10 Vile Spirit adds which attack the raid after 30 seconds. They can explode when near players, dealing 20,000 Shadow damage to players within 5 yards.
|tip Harvest Souls deals 7500 Shadow damage every second for 6 seconds. If the targets are still alive when this expires, they are sent into Frostmourne.
_Inside Frostmourne_
|tip There is an NPC and a mob inside. A tank can pick up the mob, who will also need to be interrupted. Healers can heal the NPC and all DPS have 60 seconds to kill the mob. Failure to kill the mob in time results in all players' deaths.
|tip Phase 4 starts when the Lich King reaches 10% health.
Click here to advance to _Phase 4_. |confirm
step
kill The Lich King##36597 |goto Icecrown Citadel/7 49.80,50.40
_Phase 4_
|tip Fury of Frostmourne occurs at the beginning of Phase 4, dealing Shadow damage to the entire raid.
|tip Raise Dead raises the dead back to life to fight again for the Lich King.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Naxxramas",{
mapid=162,
achieveid={576, 577},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Dragonblight, Plague, Construct, Military, Arachnid, Quarter"},
description="This guide will walk you through the Naxxramas Raid.",
},[[
step
Enter Naxxramas |goto Naxxramas/5 54.10,49.80 < 1000
|tip The entrance is in the building up in the air.
step
This raid has 5 different sections. You can start at any of them.
Click here to start in the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start in the Plague Quarter |next "plaguestart" |confirm
Click here to start in the Military Quarter |next "militarystart" |confirm
Click here to start in the Construct Quarter |next "constructstart" |confirm
Click here to start in Frostwyrm Lair |next "frostwyrmstart" |confirm
step
label "arachnidstart"
map Naxxramas/5
path loop off
path	55.10,47.10	Naxxramas/2 33.20,74.60	Naxxramas/2 33.10,65.10
path	Naxxramas/2 30.70,56.70
Follow the path, clearing trash as you make your way to the first arachnid boss, Anub'Rekhan. |goto Naxxramas/2 30.70,56.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Anub'Rekhan_ |goto Naxxramas/2 30.70,43.90
Click here for 10 man abilities |next "anub10" |confirm
Click here for 25 man abilities |next "anub25" |confirm
step
label "anub10"
kill Anub'Rekhan##15956 |goto Naxxramas/2 30.70,43.90
|tip Impale is an AoE that hits a random raid member and everyone in a straight line in between them dealing 4800-6100 damage, then launching all affected players into the air and dealing 50% fall damage.
|tip Locus Swarm Anub'Rekhan slows to 60% normal movement speed and deals AoE damage to all those within 30 yards around him as he moves.  Remaining within range of the AoE applies a stacking DoT that deals 1100 Nature damage every 2 seconds, and silences the player. This also spawns a Crypt Guard add.
|tip Summon Corpse Scarabs occurs whenever there is a corpse in the room (either a player or a Crypt Guard), Anub'Rekhan spawns Corpse Scarabs from it. 10 spawn from a Crypt Guard corpse and 5 from a player corpse, moving with threat toward a random player.
|next "anubcomplete" |confirm
step
label "anub25"
kill Anub'Rekhan##15956 |goto Naxxramas/2 30.70,43.90
|tip Impale is an AoE that hits a random raid member and everyone in a straight line in between them dealing 5700-7300 damage, then launching all affected players into the air and dealing 50% fall damage.
|tip Locus Swarm Anub'Rekhan slows to 75% normal movement speed and deals AoE damage to all those within 30 yards around him as he moves.  Remaining within range of the AoE applies a stacking DoT that deals 1500 Nature damage every 2 seconds, and silences the player. This also spawns a Crypt Guard add.
|tip Summon Corpse Scarabs occurs whenever there is a corpse in the room (either a player or a Crypt Guard), Anub'Rekhan spawns Corpse Scarabs from it. 10 spawn from a Crypt Guard corpse and 5 from a player corpse, moving with threat toward a random player.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "anubcomplete" |confirm
step
label "anubcomplete"
map Naxxramas/2
path loop off
path	32.60,64.00	39.20,65.10	44.90,56.80
path	50.00,50.40	52.20,40.90	49.00,36.40
Follow the path, clearing trash as you make your way to the next boss, Grand Widow Faerlina. |goto Naxxramas/2 49.00,36.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Grand Widow Faerlina_ |goto Naxxramas/2 44.50,36.00
Click here for 10 man abilities. |next "widow10" |confirm
Click here for 25 man abilities. |next "widow25" |confirm
step
label "widow10"
kill Grand Widow Faerlina##15953 |goto Naxxramas/2 44.50,36.00
|tip Poison Bolt Volley hits the 10 closest players to Faerlina, dealing 2600-3300 Nature damage and applies a DoT that deals 1500 Nature damage every 2 seconds for 8 seconds.
|tip Rain of Fire is cast on random raid members during the fight. It deals 1750-275 Fire damage every 2 seconds and lasts 6 seconds.
|tip Frenzy occurs every 60-80 seconds, increasing  Faerlina's damage by 150%, attack speed by 50%, and size by 50%.
|next "widowcomplete" |confirm
step
label "widow25"
kill Grand Widow Faerlina##15953 |goto Naxxramas/2 44.50,36.00
|tip Poison Bolt Volley hits the 10 closest players to Faerlina, dealing 3300-4200 Nature damage and applies a DoT that deals 2000 Nature damage every 2 seconds for 8 seconds.
|tip Rain of Fire is cast on random raid members during the fight. It deals 3700-4300 Fire damage every 2 seconds and lasts 6 seconds.
|tip Frenzy occurs every 60-80 seconds, increasing  Faerlina's damage by 150%, attack speed by 50%, and size by 50%.
|next "widowcomplete" |confirm
step
label "widowcomplete"
map Naxxramas/2
path loop off
path	52.10,41.70	53.70,50.00	59.30,54.80
path	59.50,67.20	64.30,70.60	67.70,60.60
path	67.90,51.90	64.00,35.90	62.70,29.50
path	64.70,25.10
Follow the path, clearing trash as you make your way to the next boss, Maexxna. |goto Naxxramas/2 64.70,25.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Maexxna_ |goto Naxxramas/2 69.80,16.20
Click here for 10 man abilities. |next "maexxna10" |confirm
Click here for 25 man abilities. |next "maexxna25" |confirm
step
label "maexxna10"
kill Maexxna##15952 |goto Naxxramas/2 69.80,16.20
|tip Web Wrap occurs after 20 seconds, and then every 40 seconds after that. Sends a random raid member flying towards the webs on the western side of the wall, encasing and stunning them in a cocoon. The cocoons must be killed by other raid members to release the trapped member. When trapped inside, the player takes 2500-3000 Nature damage every 2 seconds.
|tip Web Spray occurs every 40 seconds, stunning everyone in the room for 6 seconds, dealing 1700-2200 Nature damage.
|tip Poison Shock deals 3500-4500 Nature damage in a frontal cone. Make sure the tank is the only one in front of Maexxna when this occurs,
|tip Necrotic Poison is a debuff applied to raid members in front of Maexxna that reduces healing by 75% for 30 seconds.
|tip Frenzy occurs at 30%, increasing damage by 50%, attack speed by 50%, and size by 15%.
|next "maexxnacomplete" |confirm
step
label "maexxna25"
kill Maexxna##15952 |goto Naxxramas/2 69.80,16.20
|tip Web Wrap occurs after 20 seconds, and then every 40 seconds after that. Sends a random raid member flying towards the webs on the western side of the wall, encasing and stunning them in a cocoon. The cocoons must be killed by other raid members to release the trapped member. When trapped inside, the player takes 2500-3000 Nature damage every 2 seconds.
|tip Web Spray occurs every 40 seconds, stunning everyone in the room for 6 seconds, dealing 2100-2800 Nature damage.
|tip Poison Shock deals 4500-4580 Nature damage in a frontal cone. Make sure the tank is the only one in front of Maexxna when this occurs,
|tip Necrotic Poison is a debuff applied to raid members in front of Maexxna that reduces healing by 90% for 30 seconds.
|tip Frenzy occurs at 30%, increasing damage by 75%, attack speed by 50%, and size by 15%.
|next "maexxnacomplete" |confirm
step
label "maexxnacomplete"
You have cleared the Arachnid Quarter!
You can use the Naxxramas Portal to return to the start of the raid. |goto Naxxramas/2 72.70,20.40
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "plaguestart"
map Naxxramas/5
path loop off
path	54.90,52.20	Naxxramas/4 33.00,22.80	Naxxramas/4 35.60,28.60
path	Naxxramas/4 33.50,37.60	Naxxramas/4 33.50,50.00
Follow the path, clearing trash as you make your way to the first boss, Noth the Plaguebringer. |goto Naxxramas/4 33.50,50.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Noth the Plaguebringer_ |goto Naxxramas/4 34,54
Click here for 10 man abilities. |next "noth10" |confirm
Click here for 25 man abilities. |next "noth25" |confirm
step
label "noth10"
kill Noth the Plaguebringer##15954 |goto Naxxramas/4 34,54
_Phase 1_
|tip Curse of the Plaguebringer affects 3 random raid members. If the curse is not removed within 10 seconds it will inflict Wrath of the Plaguebringer.
|tip Wrath of the Plaguebringer for every missed curse, all players within 30 yards take 3700-4300 Shadow damage and 1500 Shadow damage every 2 seconds for 10 seconds.
|tip Summon Plagued Warriors occurs every 30 seconds, Noth spawns 2 Plagued Warrior adds. They have a _cleave_.
|tip Berserk occurs after 3 skeleton phases. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Phase 2_
|tip Every 110 seconds Noth teleports away and becomes invulnerable while waves of skeletons attack the raid. This lasts 70 seconds.
|tip Plagued Champions: use mortal strike, which is a cleave.
|tip Plagued Guardians: use Arcane Explosion, which deals 4000 damage to all raid members within 30 yards.
|next "nothcomplete" |confirm
step
label "noth25"
kill Noth the Plaguebringer##15954 |goto Naxxramas/4 34,54
_Phase 1_
|tip Curse of the Plaguebringer affects 10 random raid members. If the curse is not removed within 10 seconds it will inflict Wrath of the Plaguebringer on them and all allies within 30 yards.
|tip Wrath of the Plaguebringer for every missed curse, all players within 30 yards take 5500-6500 Shadow damage and 3500 Shadow damage every 2 seconds for 10 seconds.
|tip Blink Noth teleports, completely wiping aggro.
|tip Cripple occurs after a Blink, affect players in the area he teleports from, slowing their movement speed by 50%, attack speed by 100%, and strength by 50%.
|tip Summon Plagued Warriors occurs every 30 seconds, Noth spawns 2 Plagued Warrior adds. They have a cleave.
|tip Berserk occurs after 3 skeleton phases. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Phase 2_
|tip Every 110 seconds Noth teleports away and becomes invulnerable while waves of skeletons attack the raid. This lasts 70 seconds.
|tip Plagued Champions: use mortal strike, which is a cleave.
|tip Plagued Guardians: use Arcane Explosion, which deals 6000 damage to all raid members within 30 yards.
|next "nothcomplete" |confirm
step
label "nothcomplete"
map Naxxramas/4
path loop off
path	39.30,56.80	43.60,35.70	50.00,35.60
Follow the path, clearing trash as you make your way to the next boss, Heigan the Unclean. |goto Naxxramas/4 50.00,35.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Heigan the Unclean_ |goto Naxxramas/4 51.10,43.20
Click here for 10 man abilities. |next "heigan10" |confirm
Click here for 25 man abilities. |next "heigan25" |confirm
step
label "heigan10"
kill Heigan the Unclean##15936 |goto Naxxramas/4 51.10,43.20
_Phase 1_
|tip Spell Disruption is a 30 yard AoE aura around Heigan. It increases cast time by 300% to anyone inside it.
|tip Decrepit Fever is applied to a random raid member, dealing 4500 Nature damage every 3 seconds and reduces the max health of all players within 20 yards by 50%.
_Phase 2_
|tip Occurs after 90 seconds Heigan teleports to the middle of the raised platform.
|tip Plague Cloud deals 7500 Nature damage every second to anyone on the raised platform.
|tip Eruption affects 3/4 of the remaining area of the room. It deals 6500-7300 Nature damage each hit.
|next "heigancomplete" |confirm
step
label "heigan25"
kill Heigan the Unclean##15936 |goto Naxxramas/4 51.10,43.20
_Phase 1_
|tip Spell Disruption is a 20 yard AoE aura around Heigan. It increases cast time by 300% to anyone inside it.
|tip Decrepit Fever is applied to a random raid member, dealing 3000 Nature damage every 3 seconds and reduces the max health of all players within 20 yards by 50%.
_Phase 2_
|tip Occurs after 90 seconds Heigan teleports to the middle of the raised platform.
|tip Plague Cloud deals 7500 Nature damage every second to anyone on the raised platform.
|tip Eruption affects 3/4 of the remaining area of the room. It deals 6500-7300 Nature damage each hit.
|next "heigancomplete" |confirm
step
label "heigancomplete"
map Naxxramas/4
path loop off
path	53.90,45.90	58.70,28.50	71.20,28.40
Follow the path, clearing trash as you make your way to the last plague boss, Loatheb. |goto Naxxramas/4 71.20,28.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Loatheb_ |goto Naxxramas/4 75.00,28.50
Click here for 10 man abilities. |next "loa10" |confirm
Click here for 25 man abilities. |next "loa25" |confirm
step
label "loa10"
kill Loatheb##16011 |goto Naxxramas/4 75.00,28.50
|tip Necrotic Aura occurs every 20 seconds, reducing the healing done by the raid by 100% for 17 seconds.
|tip Deathblossom occurs every 30 seconds, affecting the entire raid. It deals 200 Nature damage every second for 6 seconds, and then deals 1200 damage.
|tip Inevitable Doom occurs after 2 minutes of combat. Every 30 seconds it inflicts 4000 Shadow damage.
|tip Fungal Creep is a buff that increases critical chance by 50% and spells and abilities cause no threat. This buff lasts 90 seconds. Every 30 seconds more Spores are spawned. Killing these allow 5 raid members to get the buff.
|next "loacomplete" |confirm
step
label "loa25"
kill Loatheb##16011 |goto Naxxramas/4 75.00,28.50
|tip Necrotic Aura occurs every 20 seconds, reducing the healing done by the raid by 100% for 17 seconds.
|tip Deathblossom occurs every 30 seconds, affecting the entire raid. It deals 400 Nature damage every second for 6 seconds, and then deals 1500 damage.
|tip Inevitable Doom occurs after 2 minutes of combat. Every 30 seconds it inflicts 5000 Shadow damage.
|tip Fungal Creep is a buff that increases critical chance by 50% and spells and abilities cause no threat. This buff lasts 90 seconds. Every 20 seconds more Spores are spawned. Killing these allow 5 raid members to get the buff.
|next "loacomplete" |confirm
step
label "loacomplete"
You have cleared the Plague Quarter!
You can use the Naxxramas Portal to return to the start of the raid. |goto Naxxramas/4 77.50,28.40
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "militarystart"
map Naxxramas/5
path loop off
path	51.70,52.00	Naxxramas/3 64.60,25.10	Naxxramas/3 55.10,32.40
path	Naxxramas/3 49.70,44.80	Naxxramas/3 52.80,44.10	Naxxramas/3 42.70,39.30
Follow the path, clearing trash as you make your way to the first boss, Instructor Razuvious. |goto Naxxramas/3 42.70,39.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Instructor Razuvious_ |goto Naxxramas/3 42.70,44
Click here for 10 man abilities. |next "raz10" |confirm
Click here for 25 man abilities. |next "raz25" |confirm
step
label "raz10"
kill Instructor Razuvious##16061 |goto Naxxramas/3 42.70,44
|tip Disrupting Shout occurs about every 15 seconds. It is an AoE that deals 4200-4700 Physical damage to the whole raid.
|tip Jagged Knife occurs every 10 seconds and affects a random raid member. It deals 5000 Physical damage and applies a DoT which deals 10,000 damage over 5 seconds.
|tip Unbalancing Strike inflicts 350% weapon damage and reduces the target's defense skill by 100 for 6 seconds. Only the Death Knight Understudies should be hit with this, as it deals about 100,000 damage.
|next "razcomplete" |confirm
step
label "raz25"
kill Instructor Razuvious##16061 |goto Naxxramas/3 42.70,44
|tip Disrupting Shout occurs about every 15 seconds. It is an AoE that deals 7100-7800 Physical damage to the whole raid.
|tip Jagged Knife occurs every 10 seconds and affects a random raid member. It deals 5000 Physical damage and applies a DoT which deals 10,000 damage over 5 seconds.
|tip Unbalancing Strike inflicts 350% weapon damage and reduces the target's defense skill by 100 for 6 seconds. Only the Death Knight Understudies should be hit with this, as it deals about 100,000 damage.
|next "razcomplete" |confirm
step
label "razcomplete"
map Naxxramas/3
path loop off
path	42.50,51.60	54.20,50.10	57.10,43.60
path	66.40,44.70
Follow the path, clearing trash as you make your way to the next boss, Gothik the Harvester. |goto Naxxramas/3 66.40,44.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Gothik the Harvester_ |goto Naxxramas/3 66.90,58.20
Click here for 10 man abilities. |next "got10" |confirm
Click here for 25 man abilities. |next "got25" |confirm
step
label "got10"
kill Gothik the Harvestor## |goto Naxxramas/3 66.90,58.20
_Phase 1_
|tip Adds spawn on both sides of the room and Grothik is invulnerable. After 4 minutes and 34 seconds he comes down and is attackable.
_Phase 2_
|tip Shadowbolt hits Grothik's target for 2800-3500 Shadow damage.
|tip Harvest Soul occurs every 15 seconds. It reduces the stats the entire raid by 10%. It can stack up to 10 times.
|next "gotcomplete" |confirm
step
label "got25"
kill Gothik the Harvestor## |goto Naxxramas/3 66.90,58.20
_Phase 1_
|tip Adds spawn on both sides of the room and Grothik is invulnerable. After 4 minutes and 34 seconds he comes down and is attackable.
_Phase 2_
|tip Shadowbolt hits Grothik's target for 4500-5500 Shadow damage.
|tip Harvest Soul occurs every 15 seconds. It reduces the stats the entire raid by 10%. It can stack up to 10 times.
|next "gotcomplete" |confirm
step
label "gotcomplete"
map Naxxramas/3
path loop off
path	62.40,62.30	58.50,72.30	50.20,72.40
path	41.90,67.20	36.00,68.10
Follow the path, clearing trash as you make your way to the last boss,the Four Horsemen. |goto Naxxramas/3 36.00,68.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Four Horseman_ |goto Naxxramas/3 30,75
Click here for 10 man abilities. |next "four10" |confirm
Click here for 25 man abilities. |next "four25" |confirm
step
label "four10"
_The Four Horsemen_ |goto Naxxramas/3 30,75
kill Thane Korth'azz##16064
|tip Meteor deals 13,750-15,250 Fire damage split between all players in an 8 yard radius.
|tip Mark of Korth'azz is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Baron Rivendare##30549
|tip Unholy Shadow deals 2100-2600 Shadow and a DoT that deals 4800 Shadow damage over 8 seconds.
|tip Mark of Rivendareis a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Lady Blaumeux##16065
|tip Shadow Bolt deals 2500 Shadow damage to the closest player.
|tip Void Zone summons a void zone on a random raid member within 45 yards. It deals 2750 Shadow damage every second to anyone in it.
|tip Mark of Blaumeux is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Unyielding Pain occurs if no player with aggro is within 55 yards of her. She will spam this ability, dealing 6000 Shadow damage to the entire raid.
kill Sir Zeliek##16063
|tip Holy Blast deals 2500 Holy damage to the closest player.
|tip Mark of Zeliek is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Condemnation occurs if no player with aggro is within 55 yards. It deals 6000 damage to the entire raid.
|next "fourcomplete" |confirm
step
label "four25"
_The Four Horsemen_ |goto Naxxramas/3 30,75
kill Thane Korth'azz##16064
|tip Meteor deals 47,500-52,500 Fire damage split between all players in an 8 yard radius.
|tip Mark of Korth'azz is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Baron Rivendare##30549
|tip Unholy Shadow deals 4500-5500 Shadow and a DoT that deals 12,000 Shadow damage over 8 seconds.
|tip Mark of Rivendare is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Lady Blaumeux##16065
|tip Shadow Bolt deals 8500-9500 Shadow damage to the closest player.
|tip Void Zone summons a void zone on a random raid member within 45 yards. It deals 4200 Shadow damage every second to anyone in it.
|tip Mark of Blaumeux is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Unyielding Pain occurs if no player with aggro is within 55 yards of her. She will spam this ability, dealing 6000 Shadow damage to the entire raid.
kill Sir Zeliek##16063
|tip Holy Blast deals 9000-10,000 Holy damage to the closest player.
|tip Mark of Zeliek is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Condemnation occurs if no player with aggro is within 55 yards. It deals 6000 damage to the entire raid.
|next "fourcomplete" |confirm
step
label "fourcomplete"
You have cleared the Military Quarter!
You can use the Naxxramas Portal to return to the start of the raid. |goto Naxxramas/3 27.90,80.40
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "constructstart"
map Naxxramas/5
path loop off
path	52.10,47.60	Naxxramas/1 68.20,77.00	Naxxramas/1 63.80,70.30
path	Naxxramas/1 56.80,66.30	Naxxramas/1 52.60,70.50	Naxxramas/1 49.50,73.30
path	Naxxramas/1 47.30,61.30
Follow the path, clearing trash as you make your way to the first boss, Patchwerk. |goto Naxxramas/1 47.30,61.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Patchwerk_ |goto Naxxramas/1 50.90,54.60
Click here for 10 man abilities. |next "werk10" |confirm
Click here for 25 man abilities. |next "werk25" |confirm
step
label "werk10"
kill Patchwerk##16028 |goto Naxxramas/1 53.80,50.30
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Hateful Strike melee attack that deals 20,000-27,000 Physical damage. Also adds threat to the three players with the highest aggro.
|tip Frenzy occurs at 5%, increasing his damage by 25% and attack speed by 40%.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "werkcomplete" |confirm
step
label "werk25"
kill Patchwerk##16028 |goto Naxxramas/1 53.80,50.30
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Hateful Strike melee attack that deals 80,000 Physical damage to 2 raid members. Also adds threat to the three players with the highest aggro.
|tip Frenzy occurs at 5%, increasing his damage by 25% and attack speed by 40%.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "werkcomplete" |confirm
step
label "werkcomplete"
map Naxxramas/1
path loop off
path	55.00,40.70	59.70,46.50
Follow the path, clearing trash as you make your way to the next boss,. |goto Naxxramas/1 59.70,46.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Grobbulus_ |goto Naxxramas/1 63.50,52.70
|tip He walks up and down this ramp, you may have to wait for him.
Click here for 10 man abilities. |next "grob10" |confirm
Click here for 25 man abilities. |next "grob25" |confirm
step
label "grob10"
kill Grobbulus##15931 |goto Naxxramas/1 63.50,52.70
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Poison Cloud are dropped below Grobbulus every 15 seconds. They expand over time and last 75 seconds. They deal 2000 Nature damage every second.
|tip Slime Spray deals 6300-7700 Nature damage to enemie in front of Grobbulus in a 45 cone. Make sure the tank is the only one in front of Grobbulus when this occurs. Players hit by this summon a Fallout Slime add.
|tip Mutating Injection is cast on a random raid member. After 10 seconds, or if cleansed, it deals 8000-9000 Nature damage to everyone within 20 yards.
|tip Berserk occurs after 12 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "grobcomplete" |confirm
step
label "grob25"
kill Grobbulus##15931 |goto Naxxramas/1 63.50,52.70
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Poison Cloud are dropped below Grobbulus every 15 seconds. They expand over time and last 75 seconds. They deal 4250 Nature damage every second.
|tip Slime Spray deals 12,000-13,000 Nature damage to enemie in front of Grobbulus in a 45 cone. Make sure the tank is the only one in front of Grobbulus when this occurs. Players hit by this summon a Fallout Slime add.
|tip Mutating Injection is cast on a random raid member. After 10 seconds, or if cleansed, it deals 8000-9000 Nature damage to everyone within 20 yards.
|tip Berserk occurs after 9 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "grobcomplete" |confirm
step
label "grobcomplete"
map Naxxramas/1
path loop off
path	66.90,53.00	60.90,57.50	60.00,60.80
path	58.00,61.40	55.20,57.10	50.30,49.80
Follow the path, clearing trash as you make your way to the next boss, Gluth. He will aggro as soon as you enter the room. |goto Naxxramas/1 50.30,49.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Gluth_ |goto Naxxramas/1 48.10,46.80
Click here for 10 man abilities. |next "gluth10" |confirm
Click here for 25 man abilities. |next "gluth25" |confirm
step
label "gluth10"
kill Gluth##15932 |goto Naxxramas/1 48.10,46.80
|tip Mortal Wound applies a stacking debuff that reduces the effectiveness of healing by 10% for 15 seconds.
|tip Enrage increases Gluth's attack speed and damage by 25% for 8 seconds.
|tip Decimate reduces the health of all nearby targets (enemies and friendlies) to 5%.
|tip Devour Zombie Gluth moves towards any zombies that get near him. They heal him for 5%.
|tip Berserk occurs after 8 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "gluthcomplete" |confirm
step
label "gluth25"
kill Gluth##15932 |goto Naxxramas/1 48.10,46.80
|tip Mortal Wound applies a stacking debuff that reduces the effectiveness of healing by 10% for 15 seconds.
|tip Enrage increases Gluth's attack speed by 100%.
|tip Decimate reduces the health of all nearby targets (enemies and friendlies) to 5%.
|tip Devour Zombie Gluth moves towards any zombies that get near him. They heal him for 5%.
|tip Berserk occurs after 8 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "gluthcomplete" |confirm
step
label "gluthcomplete"
map Naxxramas/1
path loop off
path	42.50,38.60	34.90,27.20
Follow the path, clearing trash as you make your way to the next boss, Thaddius. |goto Naxxramas/1 34.90,27.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Thaddius_ |goto Naxxramas/1 29,19
Click here for 10 man abilities. |next "thaddius10" |confirm
Click here for 25 man abilities. |next "thaddius25" |confirm
step
label "thaddius10"
_Feugen_
|tip Static Field deals 2500 Nature damage every 3 seconds to anyone within 60 yards.
|tip Magnetic Pull pulls Stalagg's tank to Feugen every 30 seconds and switches their threat.
_Stalagg_
|tip Power Surge increases Stalagg's attack speed by 200% for 10 seconds.
|tip Magnetic Pull pulls Feugen's tank to Stalagg every 30 seconds and switches their threat.
kill Thaddius##15928 |goto Naxxramas/1 26.90,14.90
|tip Chain Lightning hits 3 random raid members for 3600-4400 Nature damage.
|tip Polarity Shift charges the entire raid either negatively or positively, split roughly half and half. When standing on another player with the same charge a 10% damage buff is gained. When standing on people with opposite charges, both deal 3500 damage to each other.
|tip Ball Lightning occurs if no one is in melee range of Thaddius, it deals 17,500-22,500 Nature damage.
|tip Enrage occurs after 6 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "thaddiuscomplete" |confirm
step
label "thaddius25"
_Feugen_
|tip Static Field deals 3500 Nature damage every 3 seconds to anyone within 60 yards.
|tip Magnetic Pull pulls Stalagg's tank to Feugen every 30 seconds and switches their threat.
_Stalagg_
|tip Power Surge increases Stalagg's attack speed by 200% for 10 seconds.
|tip Magnetic Pull pulls Feugen's tank to Stalagg every 30 seconds and switches their threat.
kill Thaddius##15928 |goto Naxxramas/1 26.90,14.90
|tip Chain Lightning hits 5 random raid members for 7000-8000 Nature damage.
|tip Polarity Shift charges the entire raid either negatively or positively, split roughly half and half. When standing on another player with the same charge a 10% damage buff is gained. When standing on people with opposite charges, both deal 4500 damage to each other.
|tip Ball Lightning occurs if no one is in melee range of Thaddius, it deals 17,500-22,500 Nature damage.
|tip Enrage occurs after 6 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "thaddiuscomplete" |confirm
step
label "thaddiuscomplete"
You have cleared the Construct Quarter!
You can use the Naxxramas Portal here to return to the start of the raid. |goto Naxxramas/1 27.20,10.70
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "frostwyrmstart"
Start here |goto Naxxramas/5 53.40,50.10 |n
Click the Orb of Naxxramas to teleport to the Upper Necropolis. |goto Naxxramas/6 73.60,72.80 <5 |noway |c
step
_Sapphiron_ |goto Naxxramas/6 59,68
Click here for 10 man abilities. |next "sapp10" |confirm
Click here for 25 man abilities. |next "sapp25" |confirm
step
label "sapp10"
kill Sapphiron##15989 |goto Naxxramas/6 59,68
_Phase 1_
|tip He has a cleave and tailslap. Raid members need to stay from the front and back of him to avoid damage from these.
|tip Frost Aura hits the entire raid for 1200 Frost damage shortly after she is engaged. It continues to do damage every 2 seconds until she is slain.
|tip Life Drain is a debuff that affect two random raid members. It drains 2100-2800 health as Shadow damage and heals Sapphiron for 4300-5600 every 3 seconds.
|tip Chill is an ice storm that moves around the room while Sapphiron is engaged. It deals 3500-4500 Frost damage every 2 seconds and slows their movement speed by 50% for 10 seconds, affecting everyone within it.
_Phase 2_
|tip Phase 2 starts after 45 seconds, Sapphiron takes to the air, knocking back all players within melee range.
|tip Ice Bolt affects two players per air phase. Each player is encased in ice, stunning them until the ice shatters, dealing 2500-3400 Frost damage to them and 15,000 damage to nearby players within 5 yards.
|tip Frost Breath occurs after Sapphiron uses "Ice Bolt" twice. Sapphiron starts casting, taking 7 seconds to complete the cast. Once casted, it deals 150,000 Frost damage to everyone in the room. This can be avoided by taking cover behind the ice blocks.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "sappquest" |confirm
step
label "sapp25"
kill Sapphiron##15989 |goto Naxxramas/6 59,68
_Phase 1_
|tip He has a cleave and tailslap. Raid members need to stay from the front and back of him to avoid damage from these.
|tip Frost Aura hits the entire raid for 1600 Frost damage shortly after she is engaged. It continues to do damage every 2 seconds until he is slain.
|tip Life Drain is a debuff that affect two random raid members. It drains 4500-5500 health as Shadow damage and heals Sapphiron for 9000-11,000 every 3 seconds for 12 seconds.
|tip Chill is an ice storm that moves around the room while Sapphiron is engaged. It deals 5500-6500 Frost damage every 2 seconds and slows their movement speed by 50% for 10 seconds, affecting everyone within it.
_Phase 2_
|tip Phase 2 starts after 45 seconds, Sapphiron takes to the air, knocking back all players within melee range.
|tip Ice Bolt affects two players per air phase. Each player is encased in ice, stunning them until the ice shatters, dealing 6300-7700 Frost damage to them and all nearby players.
|tip Frost Breath occurs after Sapphiron uses "Ice Bolt" twice. Sapphiron starts casting, taking 7 seconds to complete the cast. Once casted, it deals 150,000 Frost damage to everyone in the room. This can be avoided by taking cover behind the ice blocks.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "sappquest" |confirm
step
label "sappquest"
Sapphiron may have dropped you a quest item.
Click the Key to the Focusing Iris in your bags |use Key to the Focusing Iris##44569
accept The Key to the Focusing Iris##13372 |or
Click the Heroic Key to the Focusing Iris in your bags |use Heroic Key to the Focusing Iris##44577
accept The Heroic Key to the Focusing Iris##13375 |or
|next "sappcomplete"
step
label "sappcomplete"
map Naxxramas/6
path loop off
path	45.00,64.00	35.70,55.00	34.20,41.00
Follow the path to the last boss, Kel'Thuzad. |goto Naxxramas/6 34.20,41.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Kel'Thuzad_ |goto Naxxramas/6 36,25
Click here for 10 man abilities. |next "kel10" |confirm
Click here for 25 man abilities. |next "kel25" |confirm
step
label "kel10"
kill Kel'Thuzad##15990 |goto Naxxramas/6 36,25
_Phase 1_
|tip Kel'Thuzad is invulnerable. You must kill the adds he spawns.
_Phase 2_
|tip Begins after 3 minutes and 48 seconds.
|tip Frost Bolt (single) inflicts 10,000-13,000 Frost damage and reduces movement speed by 50% for 4 seconds.
|tip Frost Bolt (multiple) hits the entire raid, inflicting 4500-5500 Frost damage and reducing their movement speed for 4 seconds.
|tip Mana Detonation is a debuff applied to a random mana-user. The player will explode after 5 seconds, dealing Arcane damage to all players within 10 yards based on their maximum mana.
|tip Shadow Fissure summons a red fissure around the targeted player which deals 62,000-137,500 Shadow damage after 5 seconds.
|tip Frost Blast places an Ice Block on the targeted player and all players within 10 yards of them, stunning them. This effect will continue to chain to additional players within 10 yards. It deals 104% of their maximum health as damage over 4 seconds. If they are not healed in that time they will die.
_Phase 3_
|tip Occurs at 45% health.
|tip 2 Guardians of Ice Crown adds are summoned to attack the raid, but despawn when Kel'Thuzad dies.
|next "kelcomplete" |confirm
step
label "kel25"
kill Kel'Thuzad##15990 |goto Naxxramas/6 36,25
_Phase 1_
|tip Kel'Thuzad is invulnerable. You must kill the adds he spawns.
_Phase 2_
|tip Begins after 3 minutes and 48 seconds.
|tip Frost Bolt (single) inflicts 30,000 Frost damage and reduces movement speed by 50% for 4 seconds. This must be interrupted.
|tip Frost Bolt (multiple) hits the entire raid, inflicting 7000-8800 Frost damage and reducing their movement speed for 4 seconds.
|tip Mana Detonation is a debuff applied to a random mana-user. The player will explode after 5 seconds, dealing Arcane damage to all players within 10 yards based on their maximum mana.
|tip Shadow Fissure summons a red fissure around the targeted player which deals 62,000-137,500 Shadow damage after 5 seconds.
|tip Frost Blast places an Ice Block on the targeted player and all players within 10 yards of them, stunning them. This effect will continue to chain to additional players within 10 yards. It deals 104% of their maximum health as damage over 4 seconds. If they are not healed in that time they will die.
|tip Chains of Kel'Thuzad mind controls up to 3 raid members, increasing their damage by 200% and healing by 500%. This lasts 20 seconds and they will buff and heal Kel'Thuzad.
_Phase 3_
|tip Occurs at 45% health.
|tip 2 Guardians of Ice Crown adds are summoned to attack the raid, but despawn when Kel'Thuzad dies.
|next "kelcomplete" |confirm
step
label "kelcomplete"
You have cleared Frostwyrm Lair!
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "raidend"
talk Alexstrasza the Life-Binder##26917
|tip She is at the very top of Wyrmrest Temple.
turnin The Key to the Focusing Iris##13372 |goto Dragonblight/0 59.80,54.60
|only if haveq(13372)
step
talk Alexstrasza the Life-Binder##26917
|tip She is at the very top of Wyrmrest Temple.
turnin The Heroic Key to the Focusing Iris##13375 |goto Dragonblight/0 59.80,54.60
|only if haveq(13375)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\The Obsidian Sanctum",{
mapid=155,
achieveid={1876, 625},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Sartharion, Onyx, Drake, Dragonblight"},
description="This guide will walk you through the Obsidian Sanctum Raid.",
},[[
step
Go down into the large fissure, following it underneath Wyrmrest Temple. |goto Dragonblight/0 59.70,49.30 < 50
step
Enter The Obsidian Sanctum |goto Dragonblight/0 60.00,56.70
step
This raid has 10 man and 25 man versions.
The abilities and strategies are the same, the only differences being the enemies' increased health and damage in 25 man.
|confirm
step
The boss of this raid, Sartharion, is found at this location. |goto The Obsidian Sanctum/0 52.80,47.60
|tip He has 3 drake lieutenants, Shadron, Tenebron, and Vesperon. You can kill all 3 drakes or leave some combination of them alive. Killing Sartharion with one or more lieutenants alive increase the difficulty and quality of loot that drops.
|tip For each lieutenant left alive, the raid will receive a debuff when engaging Sartharion:
_Power of Shadron_
|tip This increases the raid's Fire damage taken by 100%.
_Power of Tenebron_
|tip This increases the raid's Shadow damage taken by 100%.
_Power of Vesperon_
|tip This decreases the raid's maximumm health by 25%.
Click here to kill Shadron |next "shadron" |confirm
Click here to kill Tenebron |next "tenebron" |confirm
Click here to kill Vesperon |next "vesperon" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "shadron"
kill Shadron##30451 |goto The Obsidian Sanctum/0 51.50,34.50
|tip Shadow Breath is a fronal cleave, dealing 7000-8000 Shadow damage (9000-10,000 in heroic). Make sure the tank is the only one in front of him when this occurs.
|tip Shadow Fissure creates a shadowy area on the ground, which hits everyone within it for 6000-9000 damage after 5 seconds (9500-13,500 in heroic).
Click here to kill Tenebron |next "tenebron" |confirm
Click here to kill Vesperon |next "vesperon" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "tenebron"
kill Tenebron##30452 |goto The Obsidian Sanctum/0 41,48.50
|tip Shadow Breath is a fronal cleave, dealing 7000-8000 Shadow damage (9000-10,000 in heroic). Make sure the tank is the only one in front of him when this occurs.
|tip Shadow Fissure creates a shadowy area on the ground, which hits everyone within it for 6000-9000 damage after 5 seconds (9500-13,500 in heroic).
Click here to kill Shadron |next "shadron" |confirm
Click here to kill Vesperon |next "vesperon" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "vesperon"
kill Vesperon##30449 |goto The Obsidian Sanctum/0 52.50,62.50
|tip Shadow Breath is a fronal cleave, dealing 7000-8000 Shadow damage (9000-10,000 in heroic). Make sure the tank is the only one in front of him when this occurs.
|tip Shadow Fissure creates a shadowy area on the ground, which hits everyone within it for 6000-9000 damage after 5 seconds (9500-13,500 in heroic).
Click here to kill Shadron |next "shadron" |confirm
Click here to kill Tenebron |next "tenebron" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "sarth"
_Sartharion_ |goto The Obsidian Sanctum/0 53.30,47.80
|tip If any of the 3 drake lieutenants are still alive when engaged, the corresponding debuff will be applied to the raid.
|tip Sartharion will also call for the lieutenants' assistance, aggroing them and their nearby adds onto the raid.
|confirm
step
kill Sartharion##28860 |goto The Obsidian Sanctum/0 53.30,47.80
|tip Cleave hits the target and up to 10 nearby raid members. Make sure the tank is the only one in front of Satharion when this occurs.
|tip Tail Lash hits all raid members behind Satharion, inflicting 3000-4000 damage (4300-5600 on heroic).
|tip Fire Breath inflicts 8700-11,200 Fire damage (11,000-14,000 on heroic) to enemies in a cone in front of Sartharion. Make sure the tank is the only one in front of him when this occurs.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Onyxia's Lair",{
description="This guide will walk you through the Onyxia's Lair Raid.",
mapid=248,
achieveid={4396,4397},
patch='30202',
},[[
step
map Onyxia's Lair/1
path follow smart; loop off; ants curved; dist 15
path	38.63,23.60	42.64,34.10	44.00,56.73	57.79,82.11	65.74,81.70
path	67.43,59.38
kill Onyxian Warder##12129+
|tip Follow the path, killing the Onyxian Warders as you go.
|tip Avoid standing in front of them unless you are a tank or you will be Cleaved.
|tip All 4 warders will respawn when engaging Onyxia to prevent your escape.
confirm
step
kill Onyxia##10184 |goto Onyxia's Lair/1 67.23,23.72
_Phase 1 (100%-66% HP):_
|tip Have the tank drag Onyxia to the north side of the cave.
|tip While the tank positions her, have the raid move along her flank, avoiding her front and back.
|tip "Cleave" deals damage to anyone standing in front of her.
|tip The tank should position their back to the wall to avoid being knocked back by "Wing Buffet."
|tip Avoid standing behind her or "Tail Sweep" may knock you into the whelp eggs to the sides.
_Phase 2 (65%-41% HP):_
|tip At 65% health, she will take flight.
|tip During this time, she will use "Fireball" on the target with the highest threat.
|tip Approximately every 60 seconds, she will use "Breath" and burn a portion of the cavern.
|tip Tilt your camera up at her to see where she is facing and move out of her frontal cone.
|tip Onyxia will release whelps intially and after the first "Breath" (10 per side) which need to be tanked and AoE'd down.
|tip Onyxian Lair Guards spawn every 30 seconds and need to be tanked quickly and killed.
_Phase 3 (40%-0% HP):_
|tip This phase is mostly identical to phase 1 and the same strategy applies, with one addition.
|tip "Bellowing Roar" fears all players for 3 seconds, while "Eruption" deals flame damage around cracks in the floor.
|tip Maintaining fear immunity on the main tank is important so the raid doesn't get hit with "Cleave" or "Breath."
|tip Small numbers of Onyxian Whelps may spawn randomly.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\The Ruby Sanctum",{
mapid=200,
achieveid={4817, 4815},
patch='30305',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Dragonblight, Halion"},
description="This guide will walk you through the Ruby Sanctum Raid.",
},[[
step
Go down into the large fissure, following it underneath Wyrmrest Temple. |goto Dragonblight/0 59.70,49.30 < 50
step
Enter The Ruby Sanctum |goto Dragonblight/0 61.25,52.69 < 5
confirm
step
This raid has 3 mini bosses that must be killed before the final boss, Halion, emerges.
|tip The first 2 can be killed in any order, then unlocking access to the third boss.
Click here to kill Balharus |next "balth" |confirm
Click here to kill Saviana |next "sav" |confirm
step
label "balth"
kill Baltharus the Warborn##39751 |goto The Ruby Sanctum/0 65.80,53.90
|tip Blade Tempest is a cleave that deals 70% of weapon damage. Make sure the tank is the only one in front of Baltharus when this occrs.
|tip Repelling Wave knocks nearby raid members back, inflicting 4100-4800 Fire damage and stunning them for 3 seconds.
|tip Summon Clone occurs when Baltharus is at 50% health. He spawns a clone of himself with the same health.
|tip Enervating Brand affects the target and any raid members within 12 yards of them. This occurs every 2 seconds and reduces the affected players' damage by 2% per stack, while increasing Baltharus' damage simultaneously.
Click here to kill the other beginning boss, Saviana |next "sav" |confirm
Click here to kill the third boss, General Zarithrian |next "gen" |confirm
step
label "sav"
kill Saviana Ragefire##39747 |goto The Ruby Sanctum/0 36.50,53.70
|tip Flame Breath hits as a cleave, inflicting 24,500-31,500 Fire damage. Make sure the tank is the only one in front of Saviana when this occurs.
|tip Enrage increases his attack speed by 150% and causes Fire Nova, which inflicts 7600 Fire damage to players within 100 yards.
|tip Conflagration occurs during air phases, Saaviana enguls the targeted raid member in flames, dealing 8000 Fire damage to them and all other raid members in 10 yards.
|tip Flame Beacon occurs during air phases, Saviana targets 3 people and deals 24,500-31,500 damage (33,700-43,00 in heroic).
Click here to kill the other beginning boss, Balharus |next "balth" |confirm
Click here to kill the third boss, General Zarithrian |next "gen" |confirm
step
label "gen"
kill General Zarithrian##39746 |goto The Ruby Sanctum/0 49.60,80.10
|tip Cleave Armor is a debuff that reduces the target's armor by 20% for 30 seconds and stacks up to 5 times.
|tip Intimidating Roar is an AoE sun, paralyzing raid members near Zarithrian for 4 seconds.
|tip Summon Flamecaller_ spawns 3 Onyx Firecallers.
Click here to kill the final boss, Halion! |next "hel" |confirm
step
label "hel"
kill Halion##39863 |goto The Ruby Sanctum/0 49.30,53.90
_Phase 1_
|tip Halion has the typical dragon abilities, including two frontal cleaves and a tail lash. The tank should be the only one in front of him and all raid members should stay away from his tail.
|tip Fiery Combustion engulfs the target in flame, dealing 4000 Fire damage every 2 seconds, every tick applies Mark of Combustion which deals 3000 Fire damage per charge.
|tip Meteor Strike deals 18,000-22,000 Fire damage to enemies within 12 yards.
_Phase 2_
|tip Halion spawns a portal to the Twilight realm. The raid should split and kill Halion in both realms
|tip Dark Breath is a frontal cone, inflicting 17,000-23,000 Shadow damage. Make sure the tank is the only one in front of Halion when this occurs.
|tip Dusk Shroud is an aura the eminates from Halion. Raid members near him take 3000 Shadwo damage every 2 seconds.
|tip Soul Consumption deals 4000 Shadow damage every 2 seconds. Every time this deals damage it applies Mark of Consumption, which deals 3000 Shadow damage per charge.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Trial of the Crusader",{
mapid=172,
achieveid={3917, 3916},
patch='30302',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Argent, Tournament, Grounds, Icecrown, ToC"},
description="This guide will walk you through the Trial of the Crusader Raid.",
},[[
step
Enter Trial of the Crusader |goto Icecrown/0 75.10,21.82 < 5
confirm
step
talk Barrett Ramsey##34816 |goto Trial of the Crusader/1 64.80,54.10
Tell him "Yes. We are prepared for the challenges ahead of us."
This will start the first boss fight, make sure you are ready.
|confirm
step
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
Click here for 10 man abilities. |next "beasts10" |confirm
Click here for 25 man abilities. |next "beasts25" |confirm
step
label "beasts10"
_Beasts of Northrend_
_Phase 1_
kill Gormok the Impaler##34796 |goto Trial of the Crusader/1 51.30,52.50
|tip Staggering Stomp deals 8000 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 100% weapon damage to the target and applies a bleed DoT that deals 1400-1800 damage every 2 seconds for 30 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_
_Phase 2_
kill Acidmaw##35144 |goto Trial of the Crusader/1 51.30,52.50
|tip Paralytic Bite inflicts 7800-9200 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 6800-8000 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 7800-9000 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 2750-3225 Fire damage every 0.25 seconds for 2.50 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 7000-8000 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 7000-8000 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_
_Phase 3_
kill Icehowl##34797 |goto Trial of the Crusader/1 51.30,52.50
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 15,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 41,600-48,300 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 7400-8600 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl deals 7000-8000 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beasts25"
_Beasts of Northrend_
_Phase 1_
kill Gormok the Impaler##34796 |goto Trial of the Crusader/1 51.30,52.50
|tip Staggering Stomp deals 8200 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 100% weapon damage to the target and applies a bleed DoT that deals 2100-2800 damage every 2 seconds for 40 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_
_Phase 2_
kill Acidmaw##35144 |goto Trial of the Crusader/1 51.30,52.50
|tip Paralytic Bite inflicts 11,100-13,000 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 7000-8000 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 13,000-15,000 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 3700-4300 Fire damage every 0.25 seconds for 2.50 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 7000-8000 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 7000-8000 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_
_Phase 3_
kill Icehowl##34797 |goto Trial of the Crusader/1 51.30,52.50
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 20,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 70,000-80,000 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 10,100-11,800 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl deals 9200-10,750 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beastscomplete"
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "What new challenge await us?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_Lord Jaraxxus_ |goto Trial of the Crusader/1 51.20,52.40
Click here for 10 man abilities. |next "jara10" |confirm
Click here for 25 man abilities. |next "jara25" |confirm
step
label "jara10"
kill Lord Jaraxxus##34780 |goto Trial of the Crusader/1 51.20,52.40
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Fireball inflicts 15,100-15,800 damage and an additional 6000 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 30,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a Burning Inferno.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jara25"
kill Lord Jaraxxus##34780 |goto Trial of the Crusader/1 51.20,52.40
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Fireball inflicts 24,300-25,600 damage and an additional 9500 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 60,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a _Burning Inferno_.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jaracomplete"
The next boss fight has many similarities to arena-style PvP. Having a few pieces of PvP gear helps but is not required.
You will fight a team consisting of members of the opposite faction. The individual members are randomly selected from a pool of possible NPCs.
|confirm
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "Of course!"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Faction Champions_ |goto Trial of the Crusader/1 51.20,52.40
|tip The AI of the enemy NPCs behave a lot like players in PvP.
|tip Healer NPCs switch to spam heals on DPS members.
|tip Damage-dealing NPCs gang up on a single raid member, especially those with low health.
|tip All members, even the healers, use crowd control abilities such as Polymorph, Fear, Hex, and Banish.
|tip Their AI uses proximity, health, and damage to determine who they attack. Try to avoid being in the center of their group; they are likely to all turn and one shot you. If you're AoE'ing, be ready to get aggro.
|tip A general strategy is to use all cooldowns as soon as the fight starts (Bloodlust/Heroism, trinkets, etc) and try and kill the healers first. The fight gets immensely easier after each kill.
|confirm
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "That tough, huh?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Twin Val'kyr_ |goto Trial of the Crusader/1 51.20,52.40
Click here for 10 man abilities. |next "twin10" |confirm
Click here for 25 man abilities. |next "twin25" |confirm
step
label "twin10"
_The Twin Val'kyr_
kill Fjola Lightbane##34497, Eydis Darkbane##34496 |goto Trial of the Crusader/1 51.20,52.40
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
_Fjola Lightbane_
|tip Shield of Lights absorbs 175,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Light deals 1500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 6000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
_Eydis Darkbane_
|tip Shield of Darkness absorbs 175,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 1500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 6000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 20% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting Twin's Pact, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twin25"
_The Twin Val'kyr_
kill Fjola Lightbane##34497, Eydis Darkbane##34496 |goto Trial of the Crusader/1 51.20,52.40
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
_Fjola Lightbane_
|tip Shield of Lights absorbs 700,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 9000 damage every second.
|tip Surge of Light deals 2500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 9000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
_Eydis Darkbane_
|tip Shield of Darkness absorbs 700,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 2500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 9000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 20% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting Twin's Pact, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twincomplete"
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "Your words of praise are appreciated."
This will start the final boss fight, make sure you are ready.
|confirm
step
goto Trial of the Crusader/1 51.20,52.40 |n
The Lich King will appear and then destroy the floor, sending the raid falling down below. |goto Trial of the Crusader/2 |noway |c
step
_Anub'arak_ |goto Trial of the Crusader/2 53.50,34.00
Click here for 10 man abilities. |next "anu10" |confirm
Click here for 25 man abilities. |next "anu25" |confirm
step
label "anu10"
kill Anub'arak##34564 |goto Trial of the Crusader/2 53.50,34.00
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 2 random raid members, dealing 3500 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 2 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anu25"
kill Anub'arak##34564 |goto Trial of the Crusader/2 53.50,34.00
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 5 random raid members, dealing 3500 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 5 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anucomplete"
Finished |complete true
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Trial of the Grand Crusader",{
mapid=172,
achieveid={3918, 3812},
patch='40200',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Argent, Tournament, Grounds, Icecrown, TotGC"},
description="This guide will walk you through the Trial of the Grand Crusader Raid.",
},[[
step
Enter Trial of the Grand Crusader |goto Icecrown/0 75.10,21.82 < 5
confirm
step
The major difference between this raid and the Trial of the Crusader is the Argent Crusade Tribute Chest.
All boss encounters in this raid are in Heroic Mode and the raid is given 50 attempts to complete it.
If the raid wipes 50 times all undefeated bosses will despawn and be unavailable for the remainder of the lockout period.
When the raid is completed, higher amounts of remaining attempts will reward more and higher quality loot and extra achievements.
|confirm
step
talk Barrett Ramsey##34816 |goto Trial of the Crusader/1 64.80,54.10
Tell him "Yes. We are prepared for the challenges ahead of us."
This will start the first boss fight, make sure you are ready.
|confirm
step
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
Click here for 10 man abilities. |next "beasts10" |confirm
Click here for 25 man abilities. |next "beasts25" |confirm
step
label "beasts10"
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
_Phase 1_
kill Gormok the Impaler##34796
|tip Staggering Stomp deals 9200-9800 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 150% weapon damage to the target and applies a bleed DoT that deals 2600-3300 damage every 2 seconds for 30 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
_Phase 2_
kill Acidmaw##35144
|tip Paralytic Bite inflicts 13,000-15,000 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 8300-9700 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 13,000-15,0000 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 3700-4300 Fire damage every 0.25 seconds for 2.50 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 8300-9700 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 8300-9700 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
_Phase 3_
kill Icehowl##34797
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 20,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 55,500-64,500 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 10,100-11,800 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl deals 9000-10,750 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beasts25"
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
_Phase 1_
kill Gormok the Impaler##34796
|tip Staggering Stomp deals 11,700-12,300 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 150% weapon damage to the target and applies a bleed DoT that deals 4000-5000 damage every 2 seconds for 45 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
_Phase 2_
kill Acidmaw##35144
|tip Paralytic Bite inflicts 18,500-21,500 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 10,100-11,800 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 18,500-21,500 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 4600-5300 Fire damage every 0.25 seconds for 2.50 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 13,000-15000 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 10,000-11,800 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_ |goto Trial of the Crusader/1 51.30,52.50
_Phase 3_
kill Icehowl##34797
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 30,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 83,000-96,750 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 10,100-11,800 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl_ deals 13,000-15,000 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beastscomplete"
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "What new challenge await us?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_Lord Jaraxxus_ |goto Trial of the Crusader/1 51.20,52.40
Click here for 10 man abilities. |next "jara10" |confirm
Click here for 25 man abilities. |next "jara25" |confirm
step
label "jara10"
kill Lord Jaraxxus##34780 |goto Trial of the Crusader/1 51.20,52.40
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Firebal inflicts 15,100-15,800 damage and an additional 6000 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 30,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a Burning Inferno.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jara25"
kill Lord Jaraxxus##34780 |goto Trial of the Crusader/1 51.20,52.40
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Fireball inflicts 24,300-25,600 damage and an additional 9500 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 60,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a Burning Inferno.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
|tip Touch of Jaraxxus inflicts 4000 Shadow damage every second to a random raid member. Applies Curse of the Nether to nearby players.
|tip Curse of the Nether inflicts 4500 Shadow damage every second for 15 seconds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jaracomplete"
The next boss fight has many similarities to arena-style PvP. Having a few pieces of PvP gear helps but is not required.
You will fight a team consisting of members of the opposite faction. The individual members are randomly selected from a pool of possible NPCs.
|confirm
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "Of course!"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Faction Champions Heroic_ |goto Trial of the Crusader/1 51.20,52.40
The AI of the enemy NPCs behave a lot like players in PvP.
Healer NPCs switch to spam heals on DPS members.
Damage-dealing NPCs gang up on a single raid member, especially those with low health.
All members, even the healers, use crowd control abilities such as Polymorph, Fear, Hex, and Banish.
Their AI uses proximity, health, and damage to determine who they attack. Try to avoid being in the center of their group; they are likely to all turn and one shot you. If you're AoE'ing, be ready to get aggro.
A general strategy is to use all cooldowns as soon as the fight starts (Bloodlust/Heroism, trinkets, etc) and try and kill the healers first. The fight gets immensely easier after each kill.
|confirm
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "That tough, huh?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Twin Val'kyr_ |goto Trial of the Crusader/1 51.20,52.40
Click here for 10 man abilities. |next "twin10" |confirm
Click here for 25 man abilities. |next "twin25" |confirm
step
label "twin10"
_The Twin Val'kyr_ |goto Trial of the Crusader/1 51.20,52.40
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
kill Fjola Lightbane##34497
|tip Shield of Lights absorbs 300,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Light deals 1500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 6000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
kill Eydis Darkbane##34496
|tip Shield of Darkness absorbs 300,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 1500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 6000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 50% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting Twin's Pact, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twin25"
_The Twin Val'kyr_ |goto Trial of the Crusader/1 51.20,52.40
The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
kill Fjola Lightbane##34497
|tip Shield of Lights absorbs 1,200,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 9000 damage every second.
|tip Surge of Light deals 2500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 9000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
kill Eydis Darkbane##34496
|tip Shield of Darkness absorbs 1,200,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 2500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 9000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 50% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting _Twin's Pact_, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twincomplete"
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Tell him "Your words of praise are appreciated."
This will start the final boss fight, make sure you are ready.
|confirm
step
goto Trial of the Crusader/1 51.20,52.40 |n
The Lich King will appear and then destroy the floor, sending the raid falling down below. |goto Trial of the Crusader/2 |noway |c
step
_Anub'arak_ |goto Trial of the Crusader/2 53.50,34.00
Click here for 10 man abilities. |next "anu10" |confirm
Click here for 25 man abilities. |next "anu25" |confirm
step
label "anu10"
kill Anub'arak##34564 |goto Trial of the Crusader/2 53.50,34.00
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 2 random raid members, dealing 6000 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 2 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anu25"
kill Anub'arak##34564 |goto Trial of the Crusader/2 53.50,34.00
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 5 random raid members, dealing 6000 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 5 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anucomplete"
Finished |complete true
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Ulduar",{
mapid=147,
achieveid={2894, 2895},
patch='30100',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Storm, Peaks, Old, God"},
description="This guide will walk you through the Ulduar Raid.",
},[[
step
Enter Ulduar |goto The Storm Peaks/0 41.55,17.96 < 5
confirm
step
Click here if you would like Normal mode of The Flame Leviathan |next "Normal Mode"
Click here if you would like Hard mode of The Flame Leviathan |next "Hard Mode"
confirm
step
label "Normal Mode"
talk Brann Bronzebeard##33579 |goto Ulduar/1 49.90,86.00
Tell him "We're ready. Begin the assault!"
|confirm |next "Trash 1"
step
label "Hard Mode"
talk Lore Keeper of Norgannon##33686 |goto Ulduar/1 52.70,88.90
Tell him "Activate secondary defensive systems."
|confirm |next "Trash 2"
step
label "Trash 2"
You and your party can now climb into the siege vehicles and start the battle.
Salvaged Siege Engines are found at |goto Ulduar/1 50.00,90.00
|tip Melee and ranged damage dealer.
Salvaged Choppers are found at |goto Ulduar/1 51.60,86.10
|tip AoE kill Iron Dwarves on foot, drop ignitable oil patches, collect Gunners who have completed their mission, bring pyrite to Demolishers.
Salvaged Demolishers are found at |goto Ulduar/1 53.90,86.90
|tip Ranged damage dealer.
Click here once you've chosen your vehicles |confirm |next "Hard Trash"
step
label "Hard Trash"
Make your way north to the first boss, the Flame Leviathan |goto Ulduar/1 49.10,45.10 < 10
|tip If you are on hard mode you may destroy towers to lower the difficulty of the boss.
Kill adds as you go. The Storm Beacon towers spawn an endless stream of adds, but can be destroyed to stop the spawning.
The Tower of Flames can be located here |goto Ulduar/1 45.40,57.00
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his  hard mode abilities.
The Tower of Frost can be located here |goto Ulduar/1 60.20,50.00
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his  hard mode abilities.
The Tower of Storms can be located here |goto Ulduar/1 38.60,37.80
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his hard mode abilities.
The Tower of Life can be located here |goto Ulduar/1 56.40,63.70
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his hard mode abilities.
You can find a repair station at [Ulduar/1 51.90,47.40].
|tip Driving over this will completely heal your vehicle and restore energy, steam pressure, and pyrite.
Another of these repair stations can be found at [Ulduar/1 46.50,47.10]
confirm |next "Bosstime 2"
step
label "Trash 1"
You and your party can now climb into the siege vehicles and start the battle.
Salvaged Siege Engines are found at |goto Ulduar/1 50.00,90.00
|tip Melee and ranged damage dealer.
Salvaged Choppers are found at |goto Ulduar/1 51.60,86.10
|tip AoE kill Iron Dwarves on foot, drop ignitable oil patches, collect Gunners who have completed their mission, bring pyrite to Demolishers.
Salvaged Demolishers are found at |goto Ulduar/1 53.90,86.90
|tip Ranged damage dealer.
Click here once you've chosen your vehicles |confirm |next "Normal Trash"
step
label "Normal Trash"
Make your way north to the first boss, the Flame Leviathan |goto Ulduar/1 49.10,45.10 < 10
Kill adds as you go. The Storm Beacon towers spawn an endless stream of adds, but can be destroyed to stop the spawning.
You can find a repair station at [Ulduar/1 51.90,47.40]. Driving over this will completely heal your vehicle and restore energy, steam pressure, and pyrite.
Another of these repair stations can be found at [Ulduar/1 46.50,47.10]
confirm |next "Bosstime 1"
step
label "Bosstime 1"
Clearing these adds will cause the boss, the Flame Leviathan to spawn. |goto Ulduar/1 49,40
It is a good idea to shoot down as many Mechanolift 304-A as possible. These drop pyrite, which replenish your ammo and is used for some vehicle abilities.
|confirm |next "Boss 1"
step
label "Boss 1"
kill Flame Leviathan##33113 |goto Ulduar/1 49,40
|tip Flame Vents has a 50 yard range and inflicts 3000 Fire damage every second to enemies around Flame Leviathan, lasting 10 seconds.
|tip Battering Ram deals damage and knocks the target backward, increasing damage taken by 50% for 20 seconds.
|tip Gathering Speed increases Flame Leviathan's speed by 5%, stacking up to 20 times.
|tip Missle Barrage fires missles into the air that hit random raid members and deal 3700-4200 damage.
|confirm |next "continue"
step
label "Bosstime 2"
Clearing these adds will cause the boss, the Flame Leviathan to spawn. |goto Ulduar/1 49,40
It is a good idea to shoot down as many Mechanolift 304-A as possible. These drop pyrite, which replenish your ammo and is used for some vehicle abilities.
|confirm |next "Boss 2"
step
label "Boss 2"
kill Flame Leviathan##33113 |goto Ulduar/1 49,40
|tip Flame Vents has a 50 yard range and inflicts 3000 Fire damage every second to enemies around Flame Leviathan, lasting 10 seconds.
|tip Battering Ram deals damage and knocks the target backward, increasing damage taken by 50% for 20 seconds.
|tip Gathering Speed increases Flame Leviathan's speed by 5%, stacking up to 20 times.
|tip Missle Barrage fires missles into the air that hit random raid members and deal 3700-4200 damage.
|tip The Life Tower will increase the bosses health and periodically summon many plant adds which need to be killed asap.
|tip The Fire Tower will increase his health and damage.
|tip The Frost Tower will increase his health and summon a blue beam which will follow vehicles around, once it reaches one it will summon a orb from the top of the beam, when it reaches the bottom anyone within a short range will get frozen.
|tip The Storms Tower will increase his health and damage.
|confirm |next "continue"
step
label "continue"
map Ulduar/1
path loop off
path	48.50,35.10	48.60,26.50	40.60,26.50
Follow the path, clearing trash as you make your way to the next boss, Ignis the Furnace Master. |goto Ulduar/1 40.60,26.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Ignis the Furnace Master_ |goto Ulduar/1 37.50,26.50
Click here for 10 man abilities. |next "ignis10" |confirm
Click here for 25 man abilities. |next "ignis25" |confirm
step
label "ignis10"
kill Ignis the Furnace Master##33118 |goto Ulduar/1 37.50,26.50
|tip Scorch is a cleave, dealing 2500 Fire damage every half second to all raid members in front of Ignis and lasting 3 seconds. The ground is also scorched by this effect, it catches fire and deals 3300-3700 Fire damage every second to anyone standing in it. Iron Construct adds dragged through the fire begin to heat up, causing them to become molten.
|tip Flame Jets Ignis stomps on the ground, causing geysers of flame to erupt under all raid members. These deal 5500-6500 Fire damage, knocking players into the air for 8 seconds and dealing an additional 1000 Fire damage every second.
|tip Slag Pot a random raid member is thrown into Ignis' slag pot, dealing 3500 Fire damage every second for 10 seconds. If they survive their haste is increased by 100% for 10 seconds.
|tip Activate Construct Ignis actives an Iron Construct add. These adds must be dragged through his Scorch ability, turning them Molten after 10 stacks. Once Molten, it must be run into water to turn it Brittle. This stuns the Construct, increasing its chance of being critically hit and causing it to shatter if hit for more than 5000 damage in one attack.
|tip Strength of the Creator is a stacking buff applied to Ignis when an Iron Construct is alive. It increases his damage by 20% for every Iron Construct summoned.
|next "igniscomplete" |confirm
step
label "ignis25"
kill Ignis the Furnace Master##33118 |goto Ulduar/1 37.50,26.50
|tip Scorch is a cleave, dealing 4000 Fire damage every half second to all raid members in front of Ignis and lasting 3 seconds. The ground is also scorched by this effect, it catches fire and deals 3300-3700 Fire damage every second to anyone standing in it. Iron Construct adds dragged through the fire begin to heat up, causing them to become molten.
|tip Flame Jets Ignis stomps on the ground, causing geysers of flame to erupt under all raid members. These deal 8500-11,200 Fire damage, knocking players into the air for 8 seconds and dealing an additional 2600 Fire damage every second.
|tip Slag Pot a random raid member is thrown into Ignis' slag pot, dealing 5000 Fire damage every second for 10 seconds. If they survive their haste is increased by 100% for 10 seconds.
|tip Activate Construct Ignis actives an Iron Construct add. These adds must be dragged through his Scorch ability, turning them Molten after 10 stacks. Once Molten, it must be run into water to turn it Brittle. This stuns the Construct, increasing its chance of being critically hit and causing it to shatter if hit for more than 5000 damage in one attack.
|tip Strength of the Creator is a stacking buff applied to Ignis when an Iron Construct is alive. It increases his damage by 20% for every Iron Construct summoned.
|next "igniscomplete" |confirm
step
label "igniscomplete"
map Ulduar/1
path loop off
path	49.10,26.60	51.30,26.60
Follow the path to the next boss, Razorscale. |goto Ulduar/1 51.30,26.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Expedition Commander##33210 |goto Ulduar/1 51.30,26.60
Tell him "We are ready to help!"
This will start the boss fight, make sure you are ready.
|confirm
step
_Razorscale_ |goto Ulduar/1 54.10,26.30
Click here for 10 man abilities. |next "rzr10" |confirm
Click here for 25 man abilities. |next "rzr25" |confirm
step
label "rzr10"
kill Razorscale##33186 |goto Ulduar/1 54.10,26.30
Phase 1 starts with Razorscale in the air, spawning adds and attacking the raid.
Avoid her attacks and kill the adds until the Harpoon Turrets are ready at [Ulduar/1 52.20,26.80]. These will pull her to the ground so you can attack her.
|tip Fireball deals 11,000-12,000 Fire damage.
|tip Wing Buffet occurs when Razorscale breaks her chains. It knocks back players within 35 yards of her.
|tip Flame Buffet is a debuff that increases the target's Fire damage taken by 1000 for 1 minute.
|tip Flame Breath deals 13,000-16,700 Fire damage to players in a cone in front of Razorscale. Make sure the tank is the only one in front of her when this occurs.
|tip Devouring Flame Razorscale spits a Lava Bomb at a player, inflicting 6000-7000 Fire damage to them and an additional 6000-7000 Fire damage every second to anyone standing within 6 yards of the explosion, lasting 25 seconds.
|tip Fuse Armor is a debuff that reduces the armor, attack, and movement speed by 20%, stacking up to 5 times.
|tip Berserk occurs after 8 minutes, it increases Razorscale's attack speed by 150% and damge dealt by 900%. Kill her as fast as possible to avoid death.
|next "rzrcomplete" |confirm
step
label "rzr25"
kill Razorscale##33186 |goto Ulduar/1 54.10,26.30
Phase 1 starts with Razorscale in the air, spawning adds and attacking the raid.
Avoid her attacks and kill the adds until the Harpoon Turrets are ready at [Ulduar/1 52.20,26.80]. These will pull her to the ground so you can attack her.
|tip Fireball deals 11,000-12,000 Fire damage.
|tip Wing Buffet occurs when Razorscale breaks her chains. It knocks back players within 35 yards of her.
|tip Flame Buffet is a debuff that increases the target's Fire damage taken by 1500 for 1 minute.
|tip Flame Breath deals 17,500-22,500 Fire damage to players in a cone in front of Razorscale. Make sure the tank is the only one in front of her when this occurs.
|tip Devouring Flame Razorscale spits a Lava Bomb at a player, inflicting 8800-10,200 Fire damage to them and an additional 8800-10,200 Fire damage every second to anyone standing within 6 yards of the explosion, lasting 25 seconds.
|tip Fuse Armor is a debuff that reduces the armor, attack, and movement speed by 20%, stacking up to 5 times.
|tip Berserk occurs after 8 minutes, it increases Razorscale's attack speed by 150% and damge dealt by 900%. Kill her as fast as possible to avoid death.
|next "rzrcomplete" |confirm
step
label "rzrcomplete"
map Ulduar/1
path loop off
path	48.60,25.30	48.60,19.00	48.50,17.30
Follow the path, clearing trash as you make your way to the next boss, XT-002 Deconstructor. |goto Ulduar/1 48.50,17.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_XT-002 Deconstructor_ |goto Ulduar/1 48.50,13.90
Click here for 10 man abilities. |next "xt10" |confirm
Click here for 25 man abilities. |next "xt25" |confirm
step
label "xt10"
kill XT-002 Deconstructor##33293 |goto Ulduar/1 48.50,13.90
|tip Gravity Bomb after 9 seconds a Gravity Bomb spawns at the targeted player's location, pulling raid members within 12 yards into the gravity well, dealing 12,000 damage.
|tip Light Bomb is a DoT that deals 2700 AoE damage every tick.
|tip Heartbreak XT reveals his heart, lowering it to the ground and becoming invulnerable. Destroy the heart. This will increase his health by 60% and damage by 15%, this will activate hard mode healing him to full.
|tip Tympanic Tantrum deals damage equal to 10% of the player's maximum health every second for 8 seconds. Nearby raid members are stunned for this duration.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "xtcomplete" |confirm
step
label "xt25"
kill XT-002 Deconstructor##33293 |goto Ulduar/1 48.50,13.90
|tip Gravity Bomb after 9 seconds a Gravity Bomb spawns at the targeted player's location, pulling raid members within 12 yards into the gravity well, dealing 12,000 damage.
|tip Light Bomb is a DoT that deals 2700 AoE damage every tick.
|tip Heartbreak XT reveals his heart, lowering it to the ground and becoming invulnerable. Destroy the heart. This will increase his health by 60% and damage by 15%, this will activate hard mode healing him to full.
|tip Tympanic Tantrum deals damage equal to 10% of the player's maximum health every second for 8 seconds. Nearby raid members are stunned for this duration.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "xtcomplete" |confirm
step
label "xtcomplete"
goto Ulduar/1 48.50,11.10 |n
Click the Ulduar Teleporter and teleport to the Antechamber of Ulduar. |goto Ulduar/2 37.10,75.30 < 10 |noway |c
step
map Ulduar/2
path loop off
path	37.20,70.60	37.10,47.60	28.90,30.20
path	15.30,36.70
Follow the path, clearing trash as you make your way to the next boss, the Assembly of Iron. |goto Ulduar/2 15.30,36.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Assembly of Iron_ |goto Ulduar/2 15,56
Click here for 10 man abilities. |next "iron10" |confirm
Click here for 25 man abilities. |next "iron25" |confirm
step
label "iron10"
_Assembly of Iron_ |goto Ulduar/2 15,56
|tip When one of the bosses dies the other ones will gain another ability and be restored to full health.
kill Steelbreaker##32867
|tip Fusion Punch deals 18,800-21,100 Nature damage and an additional 15,000 Nature damage every second for 4 seconds. Only hits the tanks.
|tip High Voltage inflicts 1500 Nature damage to the whole raid every 3 seconds.
|tip If Steelbreaker is left in the last 2 he will gain the ability Static disruption, which increase nature damage taken by 75 percent per stack, this will be cast on a random ranged player.
|tip If Steelbreaker is the last one alive he will gain the ability Overwhelming Power, which puts a debuff on the tank with aggro on him which will cause this tank to explode and die after 60 seconds.
kill Runemaster Molgeim##32927
|tip Rune of Power is a ground-targeted AoE that buffs anyone, enemy of friendly, standing on it with increased damage by 50%.
|tip Shield of Runes a shield that absorbs 20,000 damage. If the shield absorbs this much damage, Molgeim is buffed with 50% increased damage. This should be purged, dispelled, or spellstolen.
|tip If Runemaster is left in the last 2 he will gain the ability Rune of Death which puts a huge green rune on the ground, anyone standing in this will take 2,500 damage per second and be slowed, move out of this asap.
|tip If Runemaster is the last one alive he will gain the ability Rune of Summoning, this will summon a purple rune under a random player and summon adds which fixate players, If they reach a player they will explode dealing damage to the raid.
kill Stormcaller Brundir##32857
|tip Chain Lightning deals 4100-4800 Nature damage to the target and can jump to 5 additional targets within 10 yards.
|tip Overload deals 20,000 Nature damage to all raid members within 20 yards of Brundir. While casting this he deals 250 Nature damage and is immune to stuns.
|tip Stormcaller will gain the ability Lightning Whirl, which deals damage to random raid members.
|next "ironcomplete" |confirm
step
label "iron25"
_Assembly of Iron_ |goto Ulduar/2 15,56
|tip When one of the bosses dies the other ones will gain another ability and be restored to full health.
kill Steelbreaker##32867
|tip Fusion Punch deals 18,800-21,100 Nature damage and an additional 15,000 Nature damage every second for 4 seconds. Only hits the tanks.
|tip High Voltage inflicts 1500 Nature damage to the whole raid every 3 seconds.
|tip If Steelbreaker is left in the last 2 he will gain the ability Static disruption, which increase nature damage taken by 75 percent per stack, this will be cast on a random ranged player.
|tip If Steelbreaker is the last one alive he will gain the ability Overwhelming Power, which puts a debuff on the tank with aggro on him which will cause this tank to explode and die after 60 seconds.
kill Runemaster Molgeim##32927
|tip Rune of Power is a ground-targeted AoE that buffs anyone, enemy of friendly, standing on it with increased damage by 50%.
|tip Shield of Runes a shield that absorbs 20,000 damage. If the shield absorbs this much damage, Molgeim is buffed with 50% increased damage. This should be purged, dispelled, or spellstolen.
|tip If Runemaster is left in the last 2 he will gain the ability Rune of Death which puts a huge green rune on the ground, anyone standing in this will take 2,500 damage per second and be slowed, move out of this asap.
|tip If Runemaster is the last one alive he will gain the ability Rune of Summoning, this will summon a purple rune under a random player and summon adds which fixate players, If they reach a player they will explode dealing damage to the raid.
kill Stormcaller Brundir##32857
|tip Chain Lightning deals 4100-4800 Nature damage to the target and can jump to 5 additional targets within 10 yards.
|tip Overload deals 20,000 Nature damage to all raid members within 20 yards of Brundir. While casting this he deals 250 Nature damage and is immune to stuns.
|tip Stormcaller will gain the ability Lightning Whirl, which deals damage to random raid members.
|next "ironcomplete" |confirm
step
label "ironcomplete"
map Ulduar/2
path loop off
path	15.40,37.10	26.80,30.50	35.70,36.50
path	36.10,25.00	37.20,21.80
Follow the path, clearing trash as you make your way to the next boss, Kologarn. |goto Ulduar/2 37.20,21.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Kologarn_ |goto Ulduar/2 37.30,14.00
Click here for 10 man abilities. |next "kolo10" |confirm
Click here for 25 man abilities. |next "kolo25" |confirm
step
label "kolo10"
kill Kologarn##32930 |goto Ulduar/2 37.30,14.00
|tip Overhead Smash applies a debuff that reduces armor by 20% for 6 seconds and interrupts casting for 8 seconds for any raid members in melee range.
|tip Petrifying Breath occurs when no target is in melee range, usually results in a wipe. It deals 14,000-16,000 damage every second for 4 seconds, also increasing damage taken by 20% for 8 seconds.
|tip Focused Eyebeam shoots beams out of his eyes, dealing 2700-3200 Nature damage to players within 3 yards.
_Left Arm_
|tip Shockwave sweeps the entire raid, dealing 8800-10,200 Nature damage.
_Right Arm_
|tip Stone Grip grabs a random raid member and stuns them, dealing 3200-3700 damage per second until the player is dead or the arm takes 150,000 damage.
|next "kolocomplete" |confirm
step
label "kolo25"
kill Kologarn##32930 |goto Ulduar/2 37.30,14.00
|tip Overhead Smash applies a debuff that reduces armor by 25% for 45 seconds, stacking up to 4 times and interrupts casting for 8 seconds for any raid members in melee range.
|tip Petrifying Breath occurs when no target is in melee range, usually results in a wipe. It deals 18,700-21,200 damage every second for 4 seconds, also increasing damage taken by 20% for 8 seconds.
|tip Focused Eyebeam shoots beams out of his eyes, dealing 3700-4300 Nature damage to players within 3 yards.
_Left Arm_
|tip Shockwave sweeps the entire raid, dealing 11,500-13,400 Nature damage.
_Right Arm_
|tip Stone Grip grabs a random raid member and stuns them, dealing 5300-5600 damage per second until the player is dead or the arm takes 450,000 damage.
|next "kolocomplete" |confirm
step
label "kolocomplete"
goto Ulduar/2 38.60,0.10 |n
Loot the chest and go down the stairs here. |goto Ulduar/3 53.70,77.00 < 10 |noway |c
step
_Auriaya_ |goto Ulduar/3 56.70,65.50
|tip She walks back and forth along the northern part of this balcony, you may have to wait a minute for her to come back.
Click here for 10 man abilities. |next "aur10" |confirm
Click here for 25 man abilities. |next "aur25" |confirm
step
label "aur10"
kill Auriaya##33515 |goto Ulduar/3 56.70,65.50
|tip Terrifying Screech is an AoE Fear, causing players near Auriaya to flee in horror for 5 seconds.
|tip Sentinel Blast inflicts 5500 Shadow damage and increases their Shadow damage taken by 100% for 5 seconds. Stacks 5 times.
|tip Sonic Screech is an AoE that deals 74,000-86,000 Shadow damage to all enemies in its path. The damage is split between the target.
|tip Summon Swarming Guardian summons a swarm of smaller panther adds.
|next "aurcomplete" |confirm
step
label "aur25"
kill Auriaya##33515 |goto Ulduar/3 56.70,65.50
|tip Terrifying Screech is an AoE Fear, causing players near Auriaya to flee in horror for 5 seconds.
|tip Sentinel Blast inflicts 5500 Shadow damage and increases their Shadow damage taken by 100% for 5 seconds. Stacks 5 times.
|tip Sonic Screech is an AoE that deals 185,000-215,000 Shadow damage to all enemies in its path. The damage is split between the target.
|tip Summon Swarming Guardian summons a swarm of smaller panther adds.
|next "aurcomplete" |confirm
step
label "aurcomplete"
map Ulduar/3
path loop off
path	51.00,55.90	51.30,43.20	52.10,33.40
Follow the path, clearing trash on your way to the next boss, Freya. |goto Ulduar/3 52.10,33.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
The next boss fight has 10 and 25 man versions. The abilities used and strategies are very similar, the differences being the mobs' increased health and damage in 25 man.
|confirm
step
_Freya_ |goto Ulduar/3 53,23
|tip She has 3 Ancients that have unique abilities that increase the fight's difficulty if left alive:
|tip IF Brightleaf is left alive Freya will gain a buff increasing Freya and her Nature allies magic damage by 50 percent.
|tip If Ironbranch is left alive Freya will gain a buff increasing her allies physical damage by 50 percent.
|tip If Stonebark is left alive Freya will gain a buff increasing her physical damage by 50 percent.
Click here to kill the Ancients and weaken Freya! |next "killancients" |confirm
Click here to kill Freya without killing Ancients! |next "freya" |confirm
step
label "killancients"
kill Elder Brightleaf##32915 |goto Ulduar/3 40.10,20.50
|tip Casts a Sunbeam that, if not moved out of, will heal him quickly.
|tip Solar Flare does 8000-9000 AoE damage to the raid.
|confirm
step
kill Elder Stonebark##32914 |goto Ulduar/3 55.50,40.70
|tip Ground Tremor hits the entire raid for 8500-9500 damage.
|tip Petrified Bark reflects melee attacks and abilities for 30 seconds. Lasts for 60 charges (120 charges in 25 man).
|tip Fists of Stone is a buff that generally will kill the tank. This usually causes the need for a tank swap after it is cast on the main tank. Increases Stonebark's movement speed by 20%, damage by 250% and has a chance to reduce the target's chance to block, dodge, or parry by 100%.
|confirm
step
kill Elder Ironbranch##32913 |goto Ulduar/3 61.80,20.70
|tip Impale deals 16,500-20,000 (33,000-37,000 in 25 man) damage every second for 5 seconds. Must be healed through.
|tip Iron Roots roots the targeted player in place. These roots must be targeted and destroyed to free the player.
|confirm
step
label "freya"
kill Freya##32906 |goto Ulduar/3 53,23
|tip As you engage Freya, she will cast a heal on herself and a buff that increases her healing by 4% per stack, starting with 150 stacks, making her basically invincible at the start of the fight. These buffs are removed by killing the adds she spawns.
|tip Touch of Eonar this is a permanent buff on Freya that heals her for 6000 health every second.
|tip Attuned to Nature is the stacking buff that increases Freya's healing by 4% per stack. It is removed by killing adds.
|tip Sunbeam deals 5000-6000 Nature damage to enemies within 8 yards of the targeted area.
|tip Nature Bomb Freya launches 10-15 nature bombs onto random raid members. These bombs explode after 10 seconds, dealing 6000 Nature damage to raid members within 10 yards of the bomb, also knocking them back.
|tip IF Brightleaf is left alive Freya will gain a buff increasing Freya and her Nature allies magic damage by 50 percent.
|tip If Ironbranch is left alive Freya will gain a buff increasing her allies physical damage by 50 percent.
|tip If Stonebark is left alive Freya will gain a buff increasing her physical damage by 50 percent.
|confirm
step
map Ulduar/3
path loop off
path	51.10,51.30	52.20,57.70	56.30,56.90
path	60.60,49.30	65.80,48.60
Follow the path, clearing trash as you make your way to the next boss, Thorim. |goto Ulduar/3 65.80,48.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Thorim##32865 |goto Ulduar/3 67.60,48.70
|tip The raid group must be split into two. One group down the hallway to reach Thorim and the other to to stay and fight the waves of adds.
_Phase 1_
|tip Charge Orb charges a nearby orb with electricity, making it fire a Lightning Shock every second, inflicting 3000 Nature damage to raid members within 30 yards.
|tip Stormhammer deals 2500 damage to a raid member, knocking them down and stunning them for 2 seconds and causing a Deafening Thunder.
|tip Defeaning Thunder deals 5000 Nature damage to players in close proximity to a Stormhammer strike.
|tip Summon Lightning Orb spawns an orb that lays waste to all in its path. This occurs if no one is in the room below Thorim or if no one reaches him within 5 minute.
_Phase 2_
|tip Chain Lightning_ hits a player for 3700-4300 Nature damage, jumping to nearby players and dealing an additional 50% damage every jump.
|tip Lightning Charge deals 14,000-16,100 damage in a cone. Make sure the tank is the only one in front of Thorim when this occurs.
|tip Unbalancing Strike inflicts 200% weapon damage and applies a debuff that lowers their defense by 200 for 15 seconds.
_Hard Mode_
|tip This is activated if the hallway group gets through the gauntlet within 3 minutes.
|tip This will bring Sara into the fight, Sara will cast Frostbolt on random players.
|tip She will cause blizzards to fall on random parts of the room causing damage and slowing anyone standing in them.
|tip She will also periodically teleport onto players and cast Frost Nova rooting anyone in range.
|confirm
step
map Ulduar/3
path loop off
path	56.40,56.80	56.50,64.40	57.80,72.40
path	64.30,77.60	72.80,79.10	75.90,74.70
path	73.60,64.40	71.80,63.90
Follow the path, clearing trash as you make your way to the next boss, Hodir. |goto Ulduar/3 71.80,63.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Hodir_ |goto Ulduar/3 66.00,63.70
Click here for 10 man abilities. |next "hodir10" |confirm
Click here for 25 man abilities. |next "hodir25" |confirm
step
label "hodir10"
kill Hodir##32845 |goto Ulduar/3 66.00,63.70
|tip Biting Cold aura that stacks a DoT that deals Frost damage. Dispellable by moving.
|tip Freeze inflicts 5500-6500 Frost damage to nearby players, immobilizing them for 10 seconds.
|tip Flash Freeze freezes the raid in ice blocks. Other raid members must attack and kill the ice block to free the encased player. Being hit by a second Flash Freeze before being freed is an instant kill. Avoid this by hiding in Snowdrifts that spawn.
|tip Icicles ice shards fall from the ceiling, dealing a knockback and 12,000 Frost damage to any players underneath. This spawns the Snowdrifts that players hide in to avoid Flash Freeze.
|tip Frozen Blows is a self buff that adds 31,000 Frost damage to all melee attacks but reduces physical damage by 70%. Also hits the raid for 4000 Frost damage every 2 seconds. Lasts 20 seconds.
|next "hodircomplete" |confirm
step
label "hodir25"
kill Hodir##32845 |goto Ulduar/3 66.00,63.70
|tip Biting Cold aura that stacks a DoT that deals Frost damage. Dispellable by moving.
|tip Freeze inflicts 5500-6500 Frost damage to nearby players, immobilizing them for 10 seconds.
|tip Flash Freeze freezes the raid in ice blocks. Other raid members must attack and kill the ice block to free the encased player. Being hit by a second Flash Freeze before being freed is an instant kill. Avoid this by hiding in Snowdrifts that spawn.
|tip Icicles ice shards fall from the ceiling, dealing a knockback and 13,500 Frost damage to any players underneath. This spawns the Snowdrifts that players hide in to avoid Flash Freeze.
|tip Frozen Blows is a self buff that adds 40,000 Frost damage to all melee attacks but reduces physical damage by 70%. Also hits the raid for 4000 Frost damage every 2 seconds. Lasts 20 seconds.
|next "hodircomplete" |confirm
step
label "hodircomplete"
map Ulduar/3
path loop off
path	59.50,64.10	56.20,62.40	51.00,54.50
Follow the path to the Ulduar Teleporter |goto Ulduar/3 51.00,54.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
goto Ulduar/3 51.00,54.50 |n
Click the Ulduar Teleporter and teleport to the Spark of Imagination. |goto Ulduar/5 43.60,61.90 < 10 |noway |c
step
_Mimiron_ |goto Ulduar/5 43.60,41.10
This fight consists of 4 phases, each of which Mimiron is in a different mechanical vehicle or device.
You may also activate Hard Mode by pressing the "DO NOT PRESS THIS BUTTON!" in the back of the room.
|tip During Hard mode all phases do 25 percent more damage.
|tip The fire will also follow players.
Click here for 10 man abilities. |next "mimi10" |confirm
Click here for 25 man abilities. |next "mimi25" |confirm
step
label "mimi10"
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 1 Leviathan MKII_
|tip Napalm Shell deals 8000 Fire damage to players within 5 yards of the targeted area, also applying a DoT that deals 4000 Fire damage every second for 8 seconds.
|tip Plasma Blast is a 3 second cast, dealing 17,000 damage every second.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 9000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
Click here for _Phase 2_ |confirm
step
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 2 VX-001_
|tip Heat Wave deals 10,000 Fire damage to the entire raid and an additional 2000 damage every second for 5 seconds.
|tip Rapid Burst is a cone that deals 2500-2800 damage to all targets in front of VK-001. Make sure the tank is the only one in front of him when this occurs.
|tip Rocket Strike deals 5,000,000 damage at the targeted area.
|tip Spinning Up VX-001 starts spinning for 4 seconds, then casting P3Wx2 Laser Barrage, which deals 20,000 Arcane damage to targets within 80 yards in front of VX-001. Make sure the tank is the only one in front of him when this occurs.
Click here to move to _Phase 3_ |confirm
step
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 3 Aerial Command Unit_
|tip Plasma Ball is used on the player with highest threat, dealing 9500-10,500 damage.
|tip Assault Bot: uses Magnetic Field, which roots the target and increases their damage taken by 30% for 6 seconds.
|tip Bomb Bot: explodes, dealing 23,500-26,500 Fire damage in a 5 yard radius.
Click here to advance to _Phase 4_ |confirm
step
kill Mimiron##33350 |goto Ulduar/5 43.60,41.10
_Phase 4 V-07-TR-0N_
|tip Uses combined abilities from previous phases.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 9000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
|tip Rocket Strike deals 5,000,000 damage at the targeted area.
|tip P3Wx2 Laser Barrage deals 20,000 Arcane damage to targets within 80 yards in front of VX-001.
|tip Hand Pulse deals 4700-5300 damage to the raid.
|tip Plasma Ball is used on the player with highest threat, dealing 9500-10,500 damage.
|tip You must destroy all 4 parts within 20 seconds.
|next "mimicomplete" |confirm
step
label "mimi25"
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 1 Leviathan MKII_
|tip Napalm Shell deals 9000 Fire damage to players within 5 yards of the targeted area, also applying a DoT that deals 6000 Fire damage every second for 8 seconds.
|tip Plasma Blast is a 3 second cast, dealing 25,000 damage every second.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 20,000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
Click here for _Phase 2_ |confirm
step
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 2 VX-001_
|tip Heat Wave deals 10,500 Fire damage to the entire raid and an additional 3000 damage every second for 5 seconds.
|tip Rapid Burst is a cone that deals 3300-3700 damage to all targets in front of VK-001. Make sure the tank is the only one in front of him when this occurs.
|tip Rocket Strike deals 5,000,000 damage at two targeted areas.
|tip Spinning Up VX-001 starts spinning for 4 seconds, then casting P3Wx2 Laser Barrage, which deals 20,000 Arcane damage to targets within 80 yards in front of VX-001. Make sure the tank is the only one in front of him when this occurs.
Click here to move to _Phase 3_ |confirm
step
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 3 Aerial Command Unit_
|tip Plasma Ball is used on the player with highest threat, dealing 14,100-15,800 damage.
|tip Assault Bot: uses Magnetic Field, which roots the target and increases their damage taken by 30% for 6 seconds.
|tip Bomb Bot: explodes, dealing 23,500-26,500 Fire damage in a 5 yard radius.
Click here to advance to _Phase 4_ |confirm
step
kill Mimiron##33350 |goto Ulduar/5 43.60,41.10
_Phase 4 V-07-TR-0N_
|tip Uses combined abilities from previous phases.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 9000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
|tip Rocket Strike deals 5,000,000 damage at two targeted areas.
|tip P3Wx2 Laser Barrage deals 20,000 Arcane damage to targets within 80 yards in front of VX-001.
|tip Hand Pulse deals 7000-8000 damage to the raid.
|tip Plasma Ball is used on the player with highest threat, dealing 14,100-15,800 damage.
|tip You must destroy all 4 parts within 20 seconds.
|next "mimicomplete" |confirm
step
label "mimicomplete"
goto Ulduar/5 43.70,62.00 |n
Click on the Ulduar Teleporter and teleport to the Conservatory of Life |goto Ulduar/3 50.90,54.30 < 10 |noway |c
step
The last normal boss in this raid, Yogg-Saron, has varying degrees of difficulty, depending on the amount of help (if any) taken from the Keepers you've already defeated. Each Keeper grants you a buff and aids you in the fight.
After proceeding to the next boss, you won't be able to come back and get these buffs unless you exit and enter the raid again. It is suggested you pick up any wanted buffs now.
|tip Mimiron grants Speed of Invention, increasing movement speed by 20%. In battle, he aids you with Destabilization Matrix, a debuff that reduces the enemiy tentacles' attack speed by 100% and casting speed by 300%. He is found at [Ulduar/3 47.80,60.30].
|tip Thorim grants Fury of the Storm, increasing total health by 20%. In battle he uses Titanic Storm. This spell kills immortal creates. It is the only way to kill immortal creatures. He is found at [Ulduar/3 54.30,60.30]
|tip Freya grants Resilience of Nature, increasing healing received by 20%. In battle she uses Sanity Well. These green pillars of light are placed at the sides of the room and regenerate Sanity to players standing in them. This is the only way to regenerate Sanity. She is found at [Ulduar/3 46.50,69.90].
|tip Hodir grants Fortitude of Frost, reducing your damage taken by 20% from all sources. In battle he uses Horid's Protective Gaze. Instead of dying, a player gets a chance to get encased in ice. This is a 10 second buff that can be removed by the player, saving them from death. He is found at [Ulduar/3 55.60,70.10].
|confirm
step
map Ulduar/3
path loop off
path	43.90,72.40	38.00,74.60	30.00,74.60
Follow the path, clearing trash as you make your way to the next boss, General Vezax. |goto Ulduar/3 30.00,74.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ulduar/4
path loop off
path	31.40,51.50	27.90,56.70	30.10,63.50
path	34.90,68.40	42.80,65.50
Follow the path as you make your way to the next boss, General Vezax. |goto Ulduar/4 42.80,65.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_General Vezax_ |goto Ulduar/4 52.60,57.10
Click here for 10 man abilities. |next "vez10" |confirm
Click here for 25 man abilities. |next "vez25" |confirm
step
label "vez10"
kill General Vezax##33271 |goto Ulduar/4 52.60,57.10
|tip Shadow Crash deals 5600-6300 Shadow damage and knocking back all raid members near the impact area. After impact, it leaves a field that lingers for 20 seconds, increasing magic damage dealt and cast speed by 100%, and reducing healing done and mana costs by 75%.
|tip Searing Flames deals 13,800-16,100 Fire damage to all raid members within 100 yards, also reducing their armor by 75% for 10 seconds.
|tip Surge of Darkness buffs Vezax, increasing his Physical damage by 100% and reducing movement speed by 55%. Lasts 10 seconds.
|tip Mark of the Faceless siphons 5000 health every second from players near the target. Lasts 10 seconds.
|tip Aura of Despair is a debuff applied to mana-users. It prevents mana regeneration and reduces melee attack speed by 20%.
|tip Corrupted Rage affects Shamans with Shamanistic Rage, increasing mana restored by 100% per proc, but reducing healing by 90%.
|tip Corrupted Wisdom affects Paladins with Judgments of the Wise, corrupting it to reduce healing.
|tip Saronite Vapors spawn green crystals with 12,600 hit points. Destroying these leave a green puddle on the ground. Standing in them cause players to take stacking Shadow damage but they regenerate mana.
_Hard Mode_
|tip Hard mode is activated when 8 Saronite Vapors are not soaked, this will summon a Saronite Animus.
|tip Once this is spawned it will need to be killed before you can damage the boss again.
|next "vezcomplete" |confirm
step
label "vez25"
kill General Vezax##33271 |goto Ulduar/4 52.60,57.10
|tip Shadow Crash deals 11,300-12,700 Shadow damage and knocking back all raid members near the impact area. After impact, it leaves a field that lingers for 20 seconds, increasing magic damage dealt and cast speed by 100%, and reducing healing done and mana costs by 75%.
|tip Searing Flames deals 13,800-16,100 Fire damage to all raid members within 100 yards, also reducing their armor by 75% for 10 seconds.
|tip Surge of Darkness buffs Vezax, increasing his Physical damage by 100% and reducing movement speed by 55%. Lasts 10 seconds.
|tip Mark of the Faceless siphons 5000 health every second from players near the target. Lasts 10 seconds.
|tip Aura of Despair is a debuff applied to mana-users. It prevents mana regeneration and reduces melee attack speed by 20%.
|tip Corrupted Rage affects Shamans with Shamanistic Rage, increasing mana restored by 100% per proc, but reducing healing by 90%.
|tip Corrupted Wisdom affects Paladins with Judgments of the Wise, corrupting it to reduce healing.
|tip Saronite Vapors spawn green crystals with 25,200 hit points. Destroying these leave a green puddle on the ground. Standing in them cause players to take stacking Shadow damage but they regenerate mana.
_Hard Mode_
|tip Hard mode is activated when 8 Saronite Vapors are not soaked, this will summon a Saronite Animus.
|tip Once this is spawned it will need to be killed before you can damage the boss again.
|next "vezcomplete" |confirm
step
label "vezcomplete"
map Ulduar/4
path loop off
path	62.00,60.20	68.00,56.50
Follow the path to the final boss, Yogg-Saron. |goto Ulduar/4 68.00,56.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Yogg-Saron_
Click here for 10 man abilities. |next "yogg10" |confirm
Click here for 25 man abilities. |next "yogg25" |confirm
step
label "yogg10"
_Yogg-Saron_ |goto Ulduar/4 68,40.80
_Phase 1 Sara_
|tip Sara stands in the center of the room. The only way to damage her is the AoE damage from dying Guardian adds.
|tip Sara's Fervor increases one of her allies' damage by 20% and their damage taken by 100%, lasting 15 seconds.
|tip Sara's Blessing heals one of her allies' for 27,000-33,000 and causes 60,000 Shadow damage over 20 seconds.
|tip Sara's Anger deals 12,500 Shadow damage over 3 seconds and increases Physical damage dealt by 12,000, lasting 12 seconds.
|tip Sanity buff indicates overall level of Sanity. If Sanity reaches 0, the player becomes Insane.
|tip Insane is a 60 second debuff. Yogg-Baron mind controls the taget, increasing their damage by 100% and health by 300%. The raid must kill the player. This debuff kills the target upon expiration.
Click here to move to _Phase 2_ |confirm
step
_Yogg-Saron_ |goto Ulduar/4 68,40.80
_Phase 2_
There are now two areas; outside and inside the Mind's Eye. During this phase, portals are opened to the Mind's Eye. This phase ends when the Mind's Eye is at 30% health.
_Crusher Tentacle_
|tip Diminish Power weakens all members of the raid, reducing their damage by 20%. Stacks up to 4 times. Hitting the tentacle with by a melee attack disrupts the cast.
|tip Focused Anger enrages the tentacle, increasing its attack speed and damage by 3% per stack, stacking up to 99 times.
_Corruptor Tentacle_
|tip Curse of Doom a debuff that inflicts 20,00 Shadow damage after 12 seconds.
|tip Apathy is a 20 second debuff which reduces attack, casting, and movement speeds by 60%.
|tip Black Plague is a 24 second debuff which periodically stuns the target for 2 seconds.
|tip Draining Poison is an 18 second debuff that deals 3500 Nature damage and drains 1400 mana every 3 seconds.
_Constrictor Tentacle_
|tip Squeeze grabs a nearby raid member, inflicting 7500 Physical damage every second.
_Sara_
|tip Psychosis deals 5000 Shadow damage and reduces Sanity by 12.
|tip Brain Link links two random raid members with a beam, which deals 3000 Shadow damage and reduces Sanity by 2 to both players while they are more than 20 yards apart.
|tip Malady of the Mind 4 second debuff. The target takes 5000 Shadow damage, loses 3 Sanity and gets Feared. The debuff jumps to another target within 10 yards upon expiration.
|tip Death Ray spawns slow moving green beams which kill any player they touch.
_The Mind's Eye (Inside)_
|tip Laughing Skull: uses _Lunatic Gaze_ looking into the laughin skull inflicts 1750 Shadow damage and reduces Sanity by 2% every second.
|tip Influence Tentacle: uses _Grim Reprisal_ reflects 60% of damage taken back to the attacker.
|tip Brain of Yogg-Saron: drives all nearby players insane, reducing Sanity to 0. 60 second cast time.
Click here to move to _Phase 3_ |confirm
step
kill Yogg-Saron##33288 |goto Ulduar/4 68,40.80
_Phase 3_
The Head of the Beast
|tip Lunatic Gaze looking into the maw unhinges your mind, inflicting 5700-6300 Shadow damage and reducing Sanity by 4% every second.
|tip Empowering Shadows empowers Yogg-Saron's friendly units within 20 yards, causing them to regenerate 750,000 health over 20 seconds.
|tip Shadowy Barrier protects Yogg-Saron from all attacks and spells.
|tip Extinguish All Life wipes the raid. Occurs after 15 minutes of combat.
|tip If you recruited the help of 3 Keepers or less, he also uses:
|tip Deafening Roar deals 7600-8400 Physical damage and silences them for 4 seconds.
|next "yoggcomplete" |confirm
step
label "yogg25"
_Yogg-Saron_ |goto Ulduar/4 68,40.80
_Phase 1 Sara_
|tip Sara stands in the center of the room. The only way to damage her is the AoE damage from dying Guardian adds.
|tip Sara's Fervor increases one of her allies' damage by 20% and their damage taken by 100%, lasting 15 seconds.
|tip Sara's Blessing heals one of her allies' for 27,000-33,000 and causes 60,000 Shadow damage over 20 seconds.
|tip Sara's Anger deals 12,500 Shadow damage over 3 seconds and increases Physical damage dealt by 12,000, lasting 12 seconds.
|tip Sanity buff indicates overall level of Sanity. If Sanity reaches 0, the player becomes Insane.
|tip Insane is a 60 second debuff. Yogg-Baron mind controls the taget, increasing their damage by 100% and health by 300%. The raid must kill the player. This debuff kills the target upon expiration.
Click here to move to _Phase 2_ |confirm
step
_Yogg-Saron_ |goto Ulduar/4 68,40.80
_Phase 2_
There are now two areas; outside and inside the Mind's Eye. During this phase, portals are opened to the Mind's Eye. This phase ends when the Mind's Eye is at 30% health.
_Crusher Tentacle_
|tip Diminish Power weakens all members of the raid, reducing their damage by 20%. Stacks up to 4 times. Hitting the tentacle with by a melee attack disrupts the cast.
|tip Focused Anger enrages the tentacle, increasing its attack speed and damage by 3% per stack, stacking up to 99 times.
_Corruptor Tentacle_
|tip Curse of Doom a debuff that inflicts 20,00 Shadow damage after 12 seconds.
|tip Apathy is a 20 second debuff which reduces attack, casting, and movement speeds by 60%.
|tip Black Plague is a 24 second debuff which periodically stuns the target for 2 seconds.
|tip Draining Poison is an 18 second debuff that deals 3500 Nature damage and drains 1400 mana every 3 seconds.
_Constrictor Tentacle_
Squeeze grabs a nearby raid member, inflicting 7500 Physical damage every second.
_Sara_
|tip Psychosis deals 5000 Shadow damage and reduces Sanity by 12.
|tip Brain Link links two random raid members with a beam, which deals 3000 Shadow damage and reduces Sanity by 2 to both players while they are more than 20 yards apart.
|tip Malady of the Mind 4 second debuff. The target takes 5000 Shadow damage, loses 3 Sanity and gets Feared. The debuff jumps to another target within 10 yards upon expiration.
|tip Death Ray spawns slow moving green beams which kill any player they touch.
_The Mind's Eye (Inside)_
Laughing Skull: uses _Lunatic Gaze_ looking into the laughin skull inflicts 1750 Shadow damage and reduces Sanity by 2% every second.
Influence Tentacle: uses _Grim Reprisal_ reflects 60% of damage taken back to the attacker.
Brain of Yogg-Saron: drives all nearby players insane, reducing Sanity to 0. 60 second cast time.
Click here to move to _Phase 3_ |confirm
step
kill Yogg-Saron##33288 |goto Ulduar/4 68,40.80
_Phase 3_
The Head of the Beast
|tip Lunatic Gaze looking into the maw unhinges your mind, inflicting 5700-6300 Shadow damage and reducing Sanity by 4% every second.
|tip Empowering Shadows empowers Yogg-Saron's friendly units within 20 yards, causing them to regenerate 750,000 health over 20 seconds.
|tip Shadowy Barrier protects Yogg-Saron from all attacks and spells.
|tip Extinguish All Life wipes the raid. Occurs after 15 minutes of combat.
|tip If you recruited the help of 3 Keepers or less, he also uses:
|tip Deafening Roar deals 7600-8400 Physical damage and silences them for 4 seconds.
|next "yoggcomplete" |confirm
step
label "yoggcomplete"
There is a bonus boss, Algalon the Observer, that can be killed, but only in hard mode.
Click here to kill Algalon! |next "alstart" |confirm
Click here to skip Algalon! |next "raidcomplete" |confirm
step
label "alstart"
goto Ulduar/4 67.20,60.00 |n
Click the Ulduar Teleporter and teleport to the Antechamber of Ulduar. |goto Ulduar/2 37.10,75.70 < 10 |noway |c
step
map Ulduar/2
path loop off
path	37.00,70.40	37.20,47.20	46.50,30.60
path	58.00,36.90	59.20,43.10
Follow the path, clearing any trash as you make your way to the bonus boss, Algalon the Observer. |goto Ulduar/2 59.20,43.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Celestial Planetarium Access panel. |goto Ulduar/2 59.20,43.10
This will start the fight, make sure you are ready.
|confirm
step
_Algalon the Observer_ |goto Ulduar/2 73.50,46.20
Click here for 10 man abilities. |next "al10" |confirm
Click here for 25 man abilities. |next "al25" |confirm
step
label "al10"
kill Algalon the Observer##32871 |goto Ulduar/2 77.80,46.80
|tip Cosmic Smash calls a boulder from the sky, dealing 41,400-43,500 Fire damage.
|tip Black Hole Explosion deals 16,000-17,000 instant Shadow damage to the raid.
|tip Quantum Strike hits Algalon's target for 15,600-17,300 Physical damage
|tip Phase Punch deals 8800-10,200 damage to the targets within 5 yards, also fading them to another plane of existence after 5 stacks.
|tip Big Bang deals 76,300-88,600 Physical damage to nearby enemies.
|tip Ascend to the Heavens occurs after 6 minutes of combat, dealing 655,000-725,000 damage to the raid. Kill him before he reaches this stage to avoid death.
|next "raidcomplete" |confirm
step
label "al25"
kill Algalon the Observer##32871 |goto Ulduar/2 77.80,46.80
|tip Cosmic Smash calls a boulder from the sky, dealing 41,400-43,500 Fire damage.
|tip Black Hole Explosion deals 16,000-17,000 instant Shadow damage to the raid.
|tip Quantum Strike hits Algalon's target for 34,100-35,800 Physical damage
|tip Phase Punch deals 8800-10,200 damage to the targets within 5 yards, also fading them to another plane of existence after 5 stacks.
|tip Big Bang deals 107,000-113,000 Physical damage to nearby enemies.
|tip Ascend to the Heavens occurs after 6 minutes of combat, dealing 655,000-725,000 damage to the raid. Kill him before he reaches this stage to avoid death.
|next "raidcomplete" |confirm
step
label "raidcomplete"
Finished |complete true
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Vault of Archavon",{
mapid=156,
achieveid={1722, 1721, 3136, 3137, 3836, 3837, 4585, 4586},
patch='30300',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Wintergrasp, Toravon, Archavon, Emalon, Koralon"},
description="This guide will walk you through the Vault of Archavon Raid.",
},[[
step
In order to enter and complete this raid your faction must control Wintergrasp.
|confirm
step
|goto Wintergrasp/0 50.40,16.40 |n
Click the Defender's Portal to be teleported to the raid entrance. |goto Wintergrasp/0 50.40,15.90 < 5 |noway |c
step
Enter Vault of Archavon |goto Wintergrasp/0 50.06,11.90 < 5
confirm
step
map Vault of Archavon/1
path loop off; dist 15
path	46.50,55.50	39.90,55.40
Follow the path, clearing trash as you make your way to the first boss, Koralon the Flame Watcher. |goto Vault of Archavon/1 39.90,55.40 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Koralon the Flame Watcher_ |goto Vault of Archavon/1 35.30,55.40
Click here for 10 man abilities |next "kor10" |confirm
Click here for 25 man abilities |next "kor25" |confirm
step
label "kor10"
kill Koralon the Flame Watcher##35013 |goto Vault of Archavon/1 35.30,55.40
|tip Burning Fury increases Korlon's damage by 5%. This occurs when Koralon is engaged and stacks every 20 seconds.
|tip Meteor Fists inflicts 100-125% weapon damage, splitting Koralon's damage evenly between an additional player within 10 yards of his primary target.
|tip Burning Breath inflicts 4000 Fire damage to all targets every second for 3 seconds.
|tip Flaming Cinder inflicts 4000 Fire damage and an additional 3000 Fire damage every second to all players within 4 yards of the _Burning Cinder_ placed on the ground.
|next "korcomplete" |confirm
step
label "kor25"
kill Koralon the Flame Watcher##35013 |goto Vault of Archavon/1 35.30,55.40
|tip Burning Fury increases Korlon's damage by 5%. This occurs when Koralon is engaged and stacks every 20 seconds.
|tip Meteor Fists inflicts 100-125% weapon damage, splitting Koralon's damage evenly between an additional player within 10 yards of his primary target.
|tip Burning Breath inflicts 4000 Fire damage to all targets every second for 3 seconds.
|tip Flaming Cinder inflicts 5300-5700 Fire damage and an additional 4300-4600 Fire damage every second to all players within 4 yards of the _Burning Cinder_ placed on the ground.
|next "korcomplete" |confirm
step
label "korcomplete"
map Vault of Archavon/1
path loop off; dist 15
path	52.00,55.40	58.70,55.50
Follow the path, clearing trash as you make your way to the next boss, Emalon the Storm Watcher. |goto Vault of Archavon/1 58.70,55.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Emalon the Storm Watcher_ |goto Vault of Archavon/1 62,55
Click here for 10 man abilities |next "emalon10" |confirm
Click here for 25 man abilities |next "emalon25" |confirm
step
label "emalon10"
kill Emalon the Storm Watcher##33993 |goto Vault of Archavon/1 62,55
|tip Chain Lightning deals 4500-5400 Nature damage, jumping to nearby raid members and increasing the damage dealt by 50% each jump.
|tip Lightning Nova is an AoE that deals 21,000-24,000 Nature damage to all raid members within 20 yards of Emalon.
|tip Overcharge Emalon overcharged a Tempest Minion, increasing its damage by 20% and stacking up to 10 times. The minion will explode after 10 stacks are reached, dealing 30,000 Nature damage to all players inside the raid. Kill them before this happens to avoid death.
|tip Enrage occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "emaloncomplete" |confirm
step
label "emalon25"
kill Emalon the Storm Watcher##33993 |goto Vault of Archavon/1 62,55
|tip Chain Lightning deals 7400-8600 Nature damage, jumping to nearby raid members and increasing the damage dealt by 20% each jump.
|tip Lightning Nova is an AoE that deals 30,000 Nature damage to all raid members within melee range of Emalon. Damage is reduced with distance, but cannot be outranged in 25 man.
|tip Overcharge Emalon overcharged a Tempest Minion, increasing its damage by 20% and stacking up to 10 times. The minion will explode after 10 stacks are reached, dealing 30,000 Nature damage to all players inside the raid. Kill them before this happens to avoid death.
|next "emaloncomplete" |confirm
step
label "emaloncomplete"
map Vault of Archavon/1
path loop off; dist 15
path	49.30,40.50	49.30,32.90	49.20,22.80
Follow the path, clearing trash as you make your way to the next boss, Archavon the Stone Watcher. |goto Vault of Archavon/1 49.20,22.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Archavon the Stone Watcher_ |goto Vault of Archavon/1 49,16
Click here for 10 man abilities |next "arch10" |confirm
Click here for 25 man abilities |next "arch25" |confirm
step
label "arch10"
kill Archavon the Stone Watcher##31125 |goto Vault of Archavon/1 49,16
|tip Rock Shards hits the target with rocks every 0.10 second for 3 seconds, dealing about 7000 damage to them and all nearby raid members.
|tip Stomp deals 3700-4300 damage and stuns the target for 2 seconds.
|tip Crushing Leap Archavon leaps at a raid member, leaving a trail of white clouds on the ground that deal 2000 damage per tick to those standing in them.
|tip Enrage occurs after 5 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "archcomplete" |confirm
step
label "arch25"
kill Archavon the Stone Watcher##31125 |goto Vault of Archavon/1 49,16
|tip Rock Shards hits the target with rocks every 0.10 second for 3 seconds, dealing about 7000 damage to them and all nearby raid members.
|tip Stomp deals 3700-4300 damage and stuns the target for 2 seconds.
|tip Crushing Leap Archavon leaps at a raid member, leaving a trail of white clouds on the ground that deal 2000 damage per tick to those standing in them.
|tip Enrage occurs after 5 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "archcomplete" |confirm
step
label "archcomplete"
map Vault of Archavon/1
path loop off; dist 15
path	52.20,36.60	58.70,36.60
Follow the path, clearing trash as you make your way to the last boss, Toravon the Ice Watcher. |goto Vault of Archavon/1 58.70,36.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Toravon the Ice Watcher_ |goto Vault of Archavon/1 62,36
Click here for 10 man abilities |next "tor10" |confirm
Click here for 25 man abilities |next "tor25" |confirm
step
label "tor10"
kill Toravon the Ice Watcher##38433 |goto Vault of Archavon/1 62,36
|tip Frozen Mallet Toravon's attacks have a chance to deal Frostbite, inflicting 975-1025 damage every 2 seconds for 10 seconds, stacks up to 100 times.
|tip Frozen Orb spawns a Frozen Orb at the targeted location. These deal 3000 damage every second to enemies within 8 yards.
|tip Whiteout inflicts 11,500 Frost damage to all nearby raid members and increases Frost damage taken by 25%, stacks up to 20 times.
|tip Freezing Ground has a 6 yard range and inflicts 4500-5600 Frost damage, immobilizing those affected for 5 seconds.
|next "torcomplete" |confirm
step
label "tor25"
kill Toravon the Ice Watcher##38433 |goto Vault of Archavon/1 62,36
|tip Frozen Mallet Toravon's attacks have a chance to deal Frostbite, inflicting 2000 damage every 2 seconds for 10 seconds, stacks up to 100 times.
|tip Frozen Orb spawns 3 Frozen Orbs at the targeted location. These deal 3000 damage every second to enemies within 8 yards.
|tip Whiteout inflicts 13,500 Frost damage to all nearby raid members and increases Frost damage taken by 25%, stacks up to 20 times.
|tip Freezing Ground has a 6 yard range and inflicts 4500-5600 Frost damage, immobilizing those affected for 5 seconds.
|next "torcomplete" |confirm
step
label "torcomplete"
Finished |complete true
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Blackrock Caverns",{
mapid=283,
achieveid={4833},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Searing, Gorge, Burning, Steppes, BRM, BRC"},
description="This guide will walk you through the Blackrock Caverns dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Blackrock Caverns or enter the dungeon with your group |goto Blackrock Caverns/1 32.40,69.90 < 100 |c
step
talk Finkle Einhorn##49476
accept To the Chamber of Incineration!##28735 |goto Blackrock Caverns,33.10,66.00
step
Clear the trash around this area without pulling the boss|goto Blackrock Caverns 49.30,74.10
_Rom'ogg Bonecrusher_ patrols nearby, if you aggro him, he will do a shout attracting the nearby groups.
Click here when you've cleared the groups. |confirm
step
kill Rom'ogg Bonecrusher##39665 |only if not haveq(28735)
kill Rom'ogg Bonecrusher##39665 |q 28735/1 |only if haveq(28735)
Pull _Rom'ogg Bonecrusher_ when he's at |goto Blackrock Caverns 50.00,67.30
|tip For this fight, he will use Call for Help when you engage him. Any mob nearby that you didnt kill will come to his aid.
|tip He will often use Quake, which can be avoided by moving to the side when you see him casting it. This will also summon Angered Earths. |only if heroic_dung()
|tip He will also summon Angered Earths each time he uses Quake, which need to be picked up by your tank. There will be one per ground crack. |only if heroic_dung()
|tip At 66% and 33% he will use Chains of Woe followed by The Skullcracker, which needs to be avoided or it will kill you.
|tip Players will need to kill the Chains of Woe, then move away from the boss in order to avoid massive, and possibly fatal damage.
|tip He will also use Wounding Strike on the tank, reducing healing received by 25%.
Defeat Rom'ogg Bonecrusher |scenariogoal 1/24792
step
Click the Quest Completion Box that pops up.
turnin To the Chamber of Incineration!##28735
step
map Blackrock Caverns/1
path follow strict;loop off;ants straight
path	50.10,55.20	50.10,39.20	53.90,21.50
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
accept What Is This Place?##28737 |goto Blackrock Caverns/1 53.90,21.50
step
There will be an Evolved Twilight Zealot patrolling here. |goto Blackrock Caverns/1 54.00,20.40
|tip Interrupt Shadow Stike whenever he uses it.
kill Evolved Twilight Zealot##39987
|confirm
step
Jump down the ledge here. |goto Blackrock Caverns/1 51.90,20.00 < 5
confirm
step
kill Evolved Twilight Zealot##39987
There will be a group of 5 patrolling the hallway here. |goto Blackrock Caverns/2 30.30,16.60
Once they are defeated, there will be another Evolved Twilight Zealot on the ramp at |goto Blackrock Caverns/2 29.60,14
|tip Interrupt Shadow Stike whenever he uses it.
|confirm
step
kill Corla, Herald of Twilight##39679 |only if not haveq(28737)
kill Corla, Herald of Twilight##39679 |q 28737/1 |only if haveq(28737)
|tip You will see two beams on each side of Corla. You should have Ranged DPS or Healers step into the beams during the encounter.
|tip This will give whoever interrupts the beams stacks of Evolution, when you reach 80, step out of the beams. You will need to move back in when your stack falls back off.
|tip Failing to interrupt the beams, or to move out when you reach 80 will result in Twilight Evolution, which will enrage either a player or the minions into attacking your party members, and likely wipe you.
|tip Corla, Herald of Twilight will cast Dark Command on a random party member. It will be important to interrupt this, as it can ruin the Evolution rotations.
Defeat Corla, Herald of Twilight |scenariogoal 1/24793 |goto Blackrock Caverns/2 27.40,16.60
step
Click the Quest Completion Box that pops up.
turnin What Is This Place?##28737
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	34.20,13.30	37.50,13.20	39.20,16.00
Hug the wall, following the way points.
|tip There will be trash at the last waypoint.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	38.70,25.10	38.60,30.10	43.60,30.50
path	43.70,37.80	43.40,50.10	43.50,57.00
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
accept The Twilight Forge##28738 |goto Blackrock Caverns/2 43.50,57.70
step
There will be 2 fire elementals patrolling around the room with _Karsh Steelbender_.
kill Conflagration##39994+
Pull one at a time back to the ramp.
|confirm
step
kill Karsh Steelbender##39698 |only if not haveq(28738)
kill Karsh Steelbender##39698 |q 28738/1 |only if haveq(28738)
|tip For this fight, there will be a large pillar of flame at the center of the room.
|tip The tank will need to run through the center, giving the boss a Superheated Quicksilver Armor debuff, increasing the damage the boss takes.
|tip When the debuff has 5 seconds left, the tank will have to Run through the pillar of flame again, renewing and adding another debuff to the boss.
|tip If you let Superheated Quicksilver Armor fall off the boss he will gain his Quicksilver Armor buff.
Defeat Karsh Steelbender |scenariogoal 1/24794 |goto Blackrock Caverns/2 45.60,65.60
step
Click the Quest Completion Box that pops up:
turnin The Twilight Forge##28738
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	53.50,67.20	55.70,68.30	58.50,64.90
path	61.60,71.80
Kill trash at the waypoints.
|tip The second group should be 2 Defiled Earth Ragers. Everyone in the group needs to stand close, as they do an AoE that does more damage the further away you are.
|tip Be sure you hug the wall on the left up until the last waypoint.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Quest Completion Box that pops up:
accept Do My Eyes Deceive Me?##28740 |goto Blackrock Caverns/2 66.10,71.60
step
There will be 3 Corehound Pups. You can pull them without pulling the boss behind them.
kill Lucky##40008 |n |goto Blackrock Caverns/2 66.30,77.50
kill Buster##40013 |n |goto Blackrock Caverns/2 66.30,77.50
kill Spot##40011 |n |goto Blackrock Caverns/2 66.30,77.50
|confirm
|only if not heroic_dung()
step
kill Beauty##39700 |only if not haveq(28740)
kill Beauty##39700 |q 28740/1 |only if haveq(28740)
|tip She will randomly cast Terrifying Roar, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
|tip She will Berserker Charge an enemy, knocking them back.
|tip She will also use Flamebreak on melee knocking them back.
|tip She casts Magma Spit on party members, causing AoE damage when it is dispelled.
|confirm |only if not haveq(28740)
|only if not heroic_dung()
step
kill Beauty##39700 |only if not haveq(28740)
kill Beauty##39700 |q 28740/1 |only if haveq(28740)
|tip You will need to use crowd control on Lucky, Buster and Spot or kill them before engaging the boss.
|tip DO NOT kill Runty, or the boss will enrage and deal incredible damage.
|tip She will randomly cast Terrifying Roar, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
|tip She will Berserker Charge an enemy, knocking them back.
|tip She will also use Flamebreak on melee knocking them back.
|tip She casts Magma Spit on party members, causing AoE damage when it is dispelled.
|confirm |only if not haveq(28740)
|only if heroic_dung()
step
Click the Quest Completion Box that pops up:
turnin Do My Eyes Deceive Me?##28740
step
Wait here for the elemental patrol. |goto Blackrock Caverns/2 69.60,72.20
|confirm
step
Click the Quest Completion Box that pops up.
accept Ascendant Lord Obsidius##28741 |goto Blackrock Caverns/2 70.00,63.40
step
kill Ascendant Lord Obsidius##39705 |only if not haveq(28741)
kill Ascendant Lord Obsidius##39705 |q 28741/1 |only if haveq(28741)
|tip When you get within aggro radius, he will be attacked. When Raz dies then it will be time to face the boss.
|tip Ascendant Lord Obsidius will split.
|tip There will be 3 Shadows of Obsidius that need to be kited by a ranged DPS. |only if heroic_dung()
|tip He will use Thunderclap, which will decrease allies movement speed by 50% if they are within 25 yards of it. |only if heroic_dung()
|tip During the fight, he will switch bodies with one of the other two clones and you will have to switch dps.
Defeat Ascendant Lord Obsidius |scenariogoal 1/34413 |goto Blackrock Caverns/2 68.80,56.00
step
talk Finkle Einhorn##49476
turnin Ascendant Lord Obsidius##28741 |goto Blackrock Caverns/2 68.80,56.00
|only if haveq(28741)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\End Time",{
mapid=401,
achieveid={6117},
patch='40300',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Twilight, Highlands, Hour"},
description="This guide will walk you through the End of Time dungeon.",
},[[
step
Press _I_ and queue for End Time or enter the dungeon with your group |goto End Time/1 81.00,44.10 < 100 |c
step
talk Alurmi##57864
accept Archival Purposes##30097 |goto End Time 79.60,45.10
step
talk Nozdormu##54476
accept Murozond##30096 |goto End Time 79.60,45.00
step
label "transit"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.50,79.50 < 5 |noway |c |next "Emerald" |or
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Ruby Dragonshrine> |goto End Time/3 34.30,43.20 < 5 |noway |c |next "Ruby" |or
<Obsidian Dragonshrine> |goto End Time/4 29.20,16.00 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.50,77.50 < 5 |noway |c |next "Bronze" |or
step
label "Emerald"
kill Time-Twisted Nightsaber##54688+, Time-Twisted Sentinel##54512+
_Everyone:_
|tip In this section, you will need to start the trash by aggroing a Nightsaber. Once you have started, you will have to fight until the boss appears.
|tip There are Nightsabers and Sentinel's which keep spawning, you will have to fight constantly (they do not hit hard), stack together in the Moonlight so the tank can keep aggro.
|tip Run to each of the Moonlights as they appear and stay in it until it disappears.
Repeat until Tyrande shows up.
confirm
step
label "Tyrande"
kill Echo of Tyrande##54544 |goto End Time/5 51.80,42.90
_Everyone:_ |grouprole EVERYONE
|tip Tyrande will will send out waves of Moonlance which you will need to avoid. |grouprole EVERYONE
|tip When Tyrande is at 30% health she will be surrounded by Tears of Elune, this looks like fireworks and damages anyone within 4 yards of it. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip Tyrande will cast Eyes of the Goddess which move around the outside of the pool causing damage and silencing players. |grouprole DAMAGE
|tip It is best to remain in the pool to avoid these, but the pool will reduce your casting speed so use any speed increasing abilities you have to counteract this. |grouprole DAMAGE
_Healer:_ |grouprole HEALER
|tip Moonlance can be dispelled if a party member is hit by it. |grouprole HEALER
|tip Piercing Gaze of Elune can also be dispelled. |grouprole HEALER
_Tank:_ |grouprole TANK
|tip Absorb or Reflect Moonbolt when possible. |grouprole TANK
|tip Dodge Moonlance. |grouprole TANK
|tip Use a Damage Modifer when Tyrande 30% Health. |grouprole TANK
kill 2 Echos in the End Time instance |q 30097/1 |only if haveq(30097)
confirm
step
label "next_1"
Click Time Transit Device and choose one of the destinations:
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Ruby Dragonshrine> |goto End Time/3 34.30,43.20 < 5 |noway |c |next "Ruby" |or
<Obsidian Dragonshrine> |goto End Time/4 29.20,16.00 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.50,77.50 < 5 |noway |c |next "Bronze" |or
step
label "Azure"
kill Time-Twisted Priest##54690+, Time-Twisted Sorceress##54691+, Time-Twisted Rifleman##54693+, Time-Twisted Footman##54687+
_Everyone:_
|tip Clearing the trash mobs in this room is not very difficult. You want to start killing the Priest, then the Riflemen. Make sure to have the Dps kill the Fountain of Light that are summoned also.
|tip If you can, Control the Sorceress by using Shackle or Turn Undead. If you cannot, kill Sorceress 2nd.
|tip To summon the Echo of Jaina, you will need to go around and click 16 Fragments of Jaina's Staff. Once you have clicked all 16, she will appear in the middle of the map, in the blue swirling circle.
confirm
step
label "Jaina"
kill Echo of Jaina##54445
_Everyone:_ |grouprole EVERYONE
|tip Jaina will Pyroblast the tank throughout the whole fight, this is just a fireball that causes medium damage. This cannot be silenced but can be reflected. |grouprole EVERYONE
|tip Jaina randomly creates a bomb called Flarecore, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it. |grouprole EVERYONE
|tip Jaina will blink at random times and throw 3 Frost Blades that can only be dodged, not jumped over. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip Jaina periodically creates a bomb called Flarecore, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it. |grouprole DAMAGE
|tip Jaina will blink at random times and throw 3 Frost Blades that can only be dodged, not jumped over. |grouprole DAMAGE
_Tank:_ |grouprole TANK
|tip Absorb or Reflect Pyroblast when possible. |grouprole TANK
|tip Immediately touch Flarecore. |grouprole TANK
|tip Dodge Frost Blades. |grouprole TANK
Kill 2 Echos in the End Time instance. |q 30097/1 |only if haveq(30097)
confirm
step
label "next_2"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.50,79.50 < 5 |noway |c |next "Emerald" |or
<Ruby Dragonshrine> |goto End Time/3 34.30,43.20 < 5 |noway |c |next "Ruby" |or
<Obsidian Dragonshrine> |goto End Time/4 29.20,16.00 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.50,77.50 < 5 |noway |c |next "Bronze" |or
step
label "Ruby"
kill Time-Twisted Geist##54511+
|tip Target the Geists and kill them with AoE, kill all Geists first, they cause the most damage.
confirm
step
label "Sylvanas"
kill Echo of Sylvanas##54123  |goto End Time/3 55.80,39.00
_Everyone:_ |grouprole EVERYONE
|tip Spread out 10 yards apart. |grouprole EVERYONE
|tip Avoid Blighted Ground. |grouprole EVERYONE
|tip All party members must target the same Risen Ghoul and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe the party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again. |grouprole EVERYONE
_Healer:_ |grouprole HEALER
|tip Dispell Shriek of the Highborne asap, this will deal damage and slow the target for 30 seconds. |grouprole HEALER
Kill 2 Echos in the End Time instance |q 30097/1 |only if haveq(30097)
confirm
step
label "next_3"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.50,79.50 < 5 |noway |c |next "Emerald" |or
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Obsidian Dragonshrine> |goto End Time/4 29.20,16.00 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.50,77.50 < 5 |noway |c |next "Bronze" |or
step
label "Obsidian"
kill Time-Twisted Drake##54543+, Time-Twisted Seer##54553+, Time-Twisted Breaker##54552+
|tip If you can, try and Control the Twisted Breaker, this mob can hit very hard.
|tip If any of these mobs step into the lava, they will get a buff that will do extra fire damage.
confirm
step
label "Baine"
kill Echo of Baine##54431
_Everyone:_ |grouprole EVERYONE
|tip If you step in the Lava briefly, you will gain a debuff that makes you take additional fire damage, and a 20 second buff that will give you additional 10k damage per melee hit. |grouprole EVERYONE
|tip Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him. |grouprole EVERYONE
_Tank:_ |grouprole TANK
|tip Run to other rocks as they explode. |grouprole TANK
|tip Use damage reduction ability during Molten Axe. |grouprole TANK
kill 2 Echos in the End Time instance |q 30097/1 |only if haveq(30097)
confirm
step
label "next_4"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.50,79.50 <5 |noway |c |next "Emerald" |or
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Ruby Dragonshrine> |goto End Time/3 34.30,43.20 <5 |noway |c |next "Ruby" |or
<Bronze Dragonshrine> |goto End Time/6 36.50,77.50 <5 |noway |c |next "Bronze" |or
step
label "Bronze"
kill Murozond##54432 |q 30096/1 |only if haveq(30096) |goto End Time/6 48.20,32.40
kill Muronzond##54432 |only if not haveq(30096) |goto End Time/6 48.20,32.40
_Everyone:_ |grouprole EVERYONE
|tip Distortion Bombs will be cast at random players and leave a circle or arcane on the ground avoid standing in these. |grouprole EVERYONE
|tip You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, this resets everyone's revives, cooldowns, all health, and clears the Distortion Bombs on the ground. |grouprole EVERYONE
_Healer:_ |grouprole HEALER
|tip Tank and Melee cannot avoid Temporal Blast, a small AoE that deals 25k damage, this will need to be healed through. |grouprole HEALER
|tip The Tank will be hit with Infinite Breath. This is shadow damage that is dealt in a cone in front of Muronzond and will follow tank if he moves left or right. This will need to be healed through. |grouprole HEALER
_Tank:_ |grouprole TANK
|tip Face boss away from group. |grouprole TANK
|tip Use damage reduction ability during Infinite Breath. |grouprole TANK
|tip Rotate Boss away from Distortion Bombs. |grouprole TANK
|tip As a tank you will need to face Boss aways from group. Muronzond has Tail Swipe so group cannot be directly behind boss. |grouprole TANK
Defeat Murozond |scenariogoal 2/24803 |goto End Time/6 48.20,32.40
step
label "next_5"
After you kill Murozond wait for Alurmi
talk Alurmi##57864
turnin Archival Purposes##30097
step
talk Nozdormu##54751
turnin Murozond##30096 |goto End Time/6 52.10,44.50
step
talk Nozdormu##54751
accept The Well of Eternity##30098 |goto End Time/6 52.10,44.50
step
If you wish to continue to the Well of Eternity talk to Nozdormu and he will teleport you there
talk Nozdormu##54751 |goto End Time/6 52.10,44.50
Tell him "Take me to the Well of Eternity" |goto Well of Eternity |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Grim Batol",{
mapid=293,
achieveid={4840},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Twilight, Highlands"},
description="This guide will walk you through the Grim Batol dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Grim Batol or enter the dungeon with your group |goto Grim Batol/1 12.20,56.10 < 100 |c
step
talk Farseer Tooranu##50385
accept Kill the Courier##28853 |goto Grim Batol,18.40,55.20
step
talk Velastrasza##50390
accept Soften them Up##28852 |goto Grim Batol 19,55
step
talk Baleflame##50387
accept Closing a Dark Chapter##28854 |goto Grim Batol 19.40,53
step
map Grim Batol
path follow strict;loop off;ants straight
path	18.00,43.40	20.20,39.60	26.20,39.80
path	27.90,27.10	31.80,26.20
Follow the path, clearing the trash as you go.
You will need to kill the nets that are holding the dragons down.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
clicknpc Battered Red Drake##42571
|tip You will end up flying through the instance, gaining the ability to attack groups of enemies.
|tip The damage that you do to them stays even after you land.
Kill 15 Twilight's Hammer Minions |q 28852/1
Kill 25 Trogg Dwellwers |q 28852/2
|tip If you didn't get all of the Trogg Dwellers, you can fly back and get them at the end of the instance.
Click here once you've landed. |confirm
|only if haveq(28852)
step
map Grim Batol
path follow strict;loop off;ants straight
path	32.80,29.90	31.90,39.40	34.30,54.30
path	30.00,58.60	35.20,68.20
Follow the path, clearing the trash as you go.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Umbriss##39625
|tip He will randomly use Blitz towards a party member. You need to move out of his path to avoid damage.
|tip He will also use Ground Siege in a random direction. It will also need to be avoided.
|tip The tank will be hit with Bleeding Wound which does massive damage every 2 seconds until they are healed to 90% of their health.
|tip At 30% he will get a Frenzy affect gaining 50% attack speed and damage.
|tip He will summon adds. Make sure to keep them more than 10 yards away from the boss. If close to the boss when they die, they will give the boss a 100% damage buff.
|tip If the adds get near the boss, they will be buffed and deal significant more damage. |only if heroic_dung()
|tip He will cast Modgud's Malady which needs to be dispelled. It is a Magic debuff and stacks up to 10 times. |only if heroic_dung()
Defeat General Umbriss |scenariogoal 1/24816 |goto Grim Batol 40.40,68.40
step
Wait for a patrol to come here. |goto Grim Batol 46.30,48.50
Watch for Forgemaster Throngus who patrols through the room. Go back into the hallway if you haven't cleared the trash yet. |goto Grim Batol 48.70,47.10
Once the trash is cleared, click here. |confirm |goto Grim Batol 45.70,43.60
step
kill Forgemaster Throngus##40177
|tip This boss cycles through weapons, which have different strategies depending on which he's holding:
|tip While using a Mace his movement speed will be decreased by 70%, but his damage will be increased by 200%. The tank will need to kite him.
|tip He will jump to random party members during Mace stance inflicting damage as a dot for 5 seconds.
|tip He will leave a trail of Burning Flames behind him as he walks, avoid it at all cost. |only if heroic_dung()
|tip While using Dual Blades he loses 20% damage, but uses the _Thrash_ ability, causing him to attack an additional two times when he swings his weapons.
|tip He will also use Disorienting Roar while in Dual Blade stance, reducing casting and attack speed by 50%. This effect can be removed by using an ability or spell.
|tip He will also leave Burning Flames on whoever he hits, which can be dispelled. This effect stack with each hit. |only if heroic_dung()
|tip While using his Phalanx He takes 99% reduced damage. Move behind him to bypass this mechanic.
|tip While in Phalanx stance, there will also be archers constantly firing at your group.
|tip He will use the ability Flaming Shield which deals fire damage to anyone in front of his shield, so be quick to move behind him. |only if heroic_dung()
Defeat Forgemaster Throngus |scenariogoal 1/24813 |goto Grim Batol 44.70,38.60
step
map Grim Batol
path follow strict;loop off
path	56.80,47.90	60.60,53.50	60.40,63.40
path	63.80,64.60	67.20,68.10	73.00,59.00
path	68.50,54.70	70.70,41.70	69.80,30.20
Kill trash and follow the path to Drahga Shadowburner. |goto Grim Batol 69.80,30.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Darhga Shadowburner##40319
_Phase 1:_
|tip He will use Invocation of Flame which will mark the ground at a random location. It will summon a fire elemental that targets a random player, shooting a red beam.
|tip ALL DPS EXCEPT FOR THE TARGET need to kill it as soon as possible.
|tip His basic attack is Burning Shadowbolt, which can be interrupted.
_Phase 2:_
|tip At 25% he will retreat and the dragon Valiona will catch him. Tank her at the center of the room.
|tip Invocation of Flame will still be used, so be aware of the spawn point and target.
|tip She will use Devouring Flames which is a wide cone attack, so don't stand in front of her.
|tip She will use Valiona's Flame which targets a random player and breathes a 40 yard long cone which stuns and damages all players within the cone.
|tip She swipes, so don't stand in front of her.
|tip She places Seeping Twilight on the ground, a large circular pool on the ground that deals out damage over time.
|tip When her health is low she will drop Drahga Shadowburner.
collect Missive to Cho'gall##66927 |q 28853/1 |only if haveq(28853)
Defeat Darhga Shadowburner |scenariogoal 1/24812 |goto Grim Batol 70.30,20.70
step
map Grim Batol
path follow strict;loop off
path	77.00,40.00	85.80,40.00	86.10,57.40
Follow the path to _Erudax, The Duke of Below_. |goto Grim Batol 86.10,57.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Erudax##40484 |only if not haveq(28854)
kill Erudax |q 28854/1 |only if haveq(28854)
|tip The main mechanic for this fight is Shadow Gale, in which he will create a purple void zone circle on the ground. The entire group needs to move into it as fast as they can so that they aren't killed by the AoE that effects players outside of the circle. He will take double damage during the duration of the spell.
|tip Each time he uses Shadow Gale, he will summon 2 Faceless Corruptor. Use every ability you have to slow them down and kill them.
|tip ONLY SLOWING EFFECTS will work on them. If you don't kill them they will eventually heal the boss.
|tip He will use Enfeebling Blow which will knock the tank back, giving him a debuff called Feeble Body, increasing the damage the tank will take by 100% for 3 seconds.
|tip He will use Binding Shadows which is an AoE root that you can step out of before it hits the ground.
|tip If you don't kill the adds fast enough, they will be buffed with Shield of Nightmares, which will damage your group each time the add is hit. |only if heroic_dung()
Defeat Erudax |scenariogoal 1/34416 |goto Grim Batol 85.70,60.90
step
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
talk Farseer Tooranu##50385
turnin Kill the Courier##28853 |goto Grim Batol,18.40,55.20
step
talk Velastrasza##50390
turnin Soften them Up##28852 |goto Grim Batol 19,55
step
talk Baleflame##50387
turnin Closing a Dark Chapter##28854 |goto Grim Batol 19.40,53
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Halls of Origination",{
mapid=297,
achieveid={4841},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Uldum"},
description="This guide will walk you through the Halls of Origination dungeon.",
},[[
step
label "start"
Press _I_ and queue for Halls of Origination or enter the dungeon with your group |goto Halls of Origination/1 49.90,93.60 < 100 |c
step
map Halls of Origination/1
path follow smart; loop off; ants curved; dist 15
path	48.10,87.10	48.30,75.10	50.00,72.90
path	50.30,63.30	53.80,63.30
Follow the path |goto Halls of Origination/1 53.80,63.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Temple Guardian Anhuur##39425
You will have 2 phases when fighting this boss
_Phase 1:_
|tip Fight this boss until he becomes immune to damage. This happens at 66% and 33%.
|tip He will cast Burning Light, which will cause a beam of light to shoot from the wall. Don't stand in the fire it creates on the ground.
|tip He will cast Divine Reckoning at a random party member. After 8 seconds, the spell will erupt and damage you along with anyone within 7 yards of you. It is a Magic Debuff and can be dispelled.
_Phase 2:_
|tip When he casts Shield of Light he becomes immune to damage.
|tip You will have to jump off the sides of the platform to the right or left, then click the switch to deactivate  shield of light and run back. |only if not heroic_dung()
|tip You will have to jump off the sides of the platform to the right and left, then click the switch to deactivate  shield of light and run back. |only if heroic_dung()
|tip Once he has shield of light, he will start channeling _Reverberating Hymn which deals 400 holy damage per stack. It stacks every 4 seconds and lasts until you click the left and right switches.
|tip Immediately moving into phase 2, Pit Vipers will spawn on the ground near the levers. The tank should take care to pick them up so that a DPS can click the lever.
Defeat Temple Guardian Anhuur |scenariogoal 1/24827 |goto Halls of Origination 58.30,62.70
step
map Halls of Origination/1
path follow smart; loop off; ants curved; dist 15
path	61.30,63.40	67.20,63.40	67.60,52.60
path	71.30,50.10	84.00,50.00
path	Halls of Origination/2 32.90,49.30
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill all the mobs in this area, then click a Camel to continue. |invehicle |c
step
kill Earthrager Ptah##39428
You will have 2 phases when fighting this boss
_Phase 1:_
|tip Look out for Earth Spike. The ground will rumble, then erupt a spike, move when you see dust.
|tip He will use Flame Bolt, which is channeled and damages 2 random players. |only if not heroic_dung()
|tip He will use Flame Bolt, which is channeled and damages 3 random players. |only if heroic_dung()
|tip He will use Raging Smash which will damage the tank and 2 additional targets within melee range.
_Phase 2:_
|tip At 50% Ptah will burrow and you will have to fight some mobs.
|tip He will summon a Sand Vortex that moves around the battlefield.
|tip He will summon Dustbone Horrors and _Jeweled Scarabs_, which need to be killed before the boss returns.
|tip Be aware of quicksand, this will slow your movement and cause damage while standing in it.
Defeat Earthrager Ptah |scenariogoal 1/25097 |goto Halls of Origination/1 49.80,49.30
step
click Halls of Origination Transit Device##204979 |goto Halls of Origination/1 66.70,48.50
Teleport to The Maker's Rise. |goto Halls of Origination 67.50,52.80 < 5 |noway |c
step
map Halls of Origination/1
path follow smart; loop off; ants curved; dist 15
path	63.60,49.90	56.40,49.40
talk Brann Bronzebeard##39908
Tell him "We're ready! Go, Brann!" |goto Halls of Origination/1 56.00,44.70
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill each Elemental Warden on the platforms around this room
[49.00,32.60]
[63.30,32.60]
[63.30,22.10]
[49.20,22.00]
|confirm
step
kill Anraphet##39788
|tip This boss is more of a Healing intensive fight for the whole group.
|tip Anraphet will cast Alpha Beams, this cause damage to a player and all players around them.
|tip It will leave circle on the ground you need to avoid for 3 seconds. |only if not heroic_dung()
|tip It will leave circle on the ground you need to avoid and lingers throughout the fight. |only if heroic_dung()
|tip Anraphet will go into Omega Stance causing damage to the whole group for 8 seconds.
|tip After Omega Stance or Alpha Beams, he will use Crumbling Ruin, decreasing the groups health by 8%. It stacks 10 times.
Defeat Anraphet |scenariogoal 1/24828 |goto Halls of Origination/1 56.20,19.30
step
click Halls of Origination Transit Device##204979 |goto Halls of Origination/1 56.20,27.20 |n
Teleport to The Maker's Rise. |goto Halls of Origination/1 67.50,52.80 < 5
confirm
step
click The Maker's Lift Controller##207669 |goto Halls of Origination/1 66.40,48.30
Bring Elevator to the 2nd floor |goto Halls of Origination/3 45.90,47.60 |noway |c
step
kill Ammunae##39731 |goto Halls of Origination/3 47.10,78.80
|tip He will cast Wither on a random party member. It reduces attack speed, casting speed and movement speed by 60%. It can be interrupted and dispelled (magic).
|tip He will cast Consume Life Energy, which will deal nature damage and dimish a players 'resource'.
|tip He will summon Seedling Pods. They will use _Energize_ on Ammunae, increasing his damage done by 5% and attack speed by 30% while alive. Kill them when they spawn.
|tip It will also heal Ammunae for 1% of his max health every 3 seconds while alive. |only if heroic_dung()
|tip He will use Rampant Growth, transforming all Seedling Pods into Bloodpetal Sprouts which will inflict massive damage to the party.
|tip He will spawn a Spore. It moves slowly and when it dies, it leaves a spore cloud with a 6 yard radius that deals nature damage every 1.50 seconds.
|tip The Noxious Spore cloud that spawn can also dish out major damage to any plant life, inflicting 12 to 18% of it's health.
|confirm
step
kill Setesh##39732 |goto Halls of Origination/3 67.10,49.50
|tip He will cast Chaos Bolt at a random party member.
|tip He will also place Seed of Chaos on a random party member. When it detonates, the group will take shadow damage.
|tip Through the fight, he will Summon Chaos Portals. It will spawn monsters that the DPS need to kill, then despawn after around 25 seconds. |only if not heroic_dung()
|tip Through the fight, he will Summon Chaos Portals. It will spawn monsters while it is up. The DPS will need to attack the portal to stop it from spawning adds. |only if heroic_dung()
|confirm
step
kill Isiset##39587 |goto Halls of Origination/3 26.70,49.80
|tip She will cast Supernova through out the fight. You can turn away from her to avoid the disorienting effect right before she finishes her cast.
|tip When she reaches 66 and 33% health, she will use her Mirror Images ability.
|tip At 66% she will split into 3 forms. Kill the Veil of Sky Mirror Image.
|tip At 33% she will split into 2 forms. Kill the Celestial Call Mirror Image.
|confirm
step
kill Rajh##39378
|tip Rajh will start with 100 energy and cast spells at 20 energy each.
|tip Rajh's spells to avoid are: Summon Sun Orb. This is channeled above a players head, after 3 seconds it will drop and deal damage, knocking players nearby back. It can be interrupted.
|tip He will cast Inferno Leap and it needs to be interrupted. If not, he will jump towards a targeted player, and deal large damage knocking away any nearby players.
|tip This can kill the player he lands on if they do not move.
|tip He will also cast Solar Winds which creates a fiery vortex in front of him that grows an dmoves around the room.
|tip The Solar Wind will leave Solar Fire on the ground, which deal out massive damage. |only if heroic_dung
|tip When he reaches 10 or less energy, he walks to the middle of the room and casts Blessing of the Sun.
|tip He will become 100% more vulnerable to player attack, while regenerating his energy and causing AoE fire damage to your group.
Defeat Rajh |scenariogoal 1/34418 |goto Halls of Origination/3 47.20,19.70
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight",{
mapid=399,
achieveid={6119},
patch='40300',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Tanaris, Caverns, Time, of, CoT"},
description="This guide will walk you through the Hour of Twilight dungeon.",
},[[
step
Press _I_ and queue for Hour of Twilight or enter the dungeon with your group |goto Hour of Twilight/1 48.30,19.70 < 100 |c
step
talk Thrall##54548
turnin The Hour of Twilight##30102 |goto Hour of Twilight,48.70,19.70
accept To Wyrmrest!##30103 |goto Hour of Twilight,48.70,19.70
step
talk Thrall##54548 |goto Hour of Twilight,48.70,19.70
Tell him "Yes Thrall"
confirm
step
map Hour of Twilight
path follow strict;loop off;ants straight
path	50.90,20.30	52.30,21.60	53.90,23.10
Follow this path and kill the groups.
Talk to Thrall when you are ready to face the boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Arcurion##54590
_Everyone:_ |grouprole EVERYONE
|tip Avoid Icy Boulders. |grouprole EVERYONE
|tip Interrupt or use damage reduction ability on Hand of Frost. |grouprole EVERYONE
|tip At 30% use damage reduction cooldowns and dps cooldowns on the boss. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip Keep Thrall out of the Ice block by damaging it when he is frozen. |grouprole DAMAGE
_Healer:_ |grouprole HEALER
|tip When the boss hits 30% the group will take aoe damage until it is defeated, save cooldowns for this phase. |grouprole HEALER
Click here for a more detailed boss fight.
Defeat Arcurion |scenariogoal 1/24841 |goto Hour of Twilight 56.70,27.40
step
collect Urgent Twilight Missive##77957 |n
Click the Urgent Twilight Missive in your bags. |use Urgent Twilight Missive##77957
accept The Twilight Prophet##30105 |goto Hour of Twilight 56.70,27.40
step
talk Thrall##54548 |goto Hour of Twilight 57.40,28.80
Tell him "Lead the Way"
confirm
step
map Hour of Twilight
path follow strict;loop off;ants straight
path	58.40,31.90	55.30,33.10	51.80,35.20
path	47.40,36.70	45.00,40.50
Follow the Thrall |goto Hour of Twilight 43.70,45.30
talk Thrall##54548
Tell him "Yes Thrall lets do this"
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Twilight Assassin##55106+, Twilight Thug##55111+, Twilight Bruiser##55112+, Twilight Ranger##55107+, Twilight Shadow-Walker##55109+
map Hour of Twilight
path follow loose;loop off;ants straight
path	45.50,47.10	45.60,49.00
path	43.00,50.00	40.40,48.70
Follow Thrall through this canyon.
|tip You will have to fight a few groups through this area.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Asira Dawnslayer##54968
_Everyone:_ |grouprole EVERYONE
|tip Avoid Choking Smoke Bomb, you will not be able to target the boss while inside this. |grouprole EVERYONE
|tip Stand in Thrall's Fire Totem, this gives a health and damage buff stacking up to 10 times. |grouprole EVERYONE
|tip If targeted by mark of Silence be sure to run behind the tank that way you do not take damage or silenced. |grouprole EVERYONE
Defeat Asira Dawnslayer |scenariogoal 1/24842 |goto Hour of Twilight,39.50,52.40
step
clicknpc Life Warden##55549 |goto Hour of Twilight 40.10,50.80
|invehicle |c
step
You will land next to Thrall on the road to Wyrmrest Temple.
|outvehicle |c
step
talk Thrall##54548 |goto Hour of Twilight 49.20,67.70
Tell him "Yes Thrall lets do this"
confirm
step
kill Faceless Shadow Weaver##54633+, Faceless Brute##54632+, Shadow Borer##54686+
map Hour of Twilight
path follow loose; loop off; straight
path	49.80,70.20	49.70,71.70	49.40,75.40
path	49.40,81.00	49.60,82.80
Follow Thrall through this canyon.
|tip Kill the Shadow Borer's first, they interrupt and stop healing.
Enter Wyrmrest Temple here. |goto Hour of Twilight 49.60,82.80 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Archbishop Benedictus##54938
_Everyone:_ |grouprole EVERYONE
|tip Spread out 10 yards. |grouprole EVERYONE
|tip Avoid Wave of Virtue by standing in the blue shell. |grouprole EVERYONE
|tip Avoid Wave of Twilight by running to the side. |grouprole EVERYONE
|tip Move out of purple circles on the ground. |grouprole EVERYONE
_Healer:_ |grouprole HEALER
|tip Watch out for players infected by Twilight Shear of Purifying Blast, they will take damage and deal damage to another around them, these can be dispelled. |grouprole HEALER
Unmask the Twilight Prophet. |q 30105/1 |only if haveq(30105)
Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if haveq(30103)
Defeat Archbishop Benedictus |scenariogoal 1/18544 |goto Hour of Twilight/2 47.20,50.90
step
talk Thrall##54971
turnin To Wyrmrest!##30103 |goto Hour of Twilight/2 46.90,45.00
turnin The Twilight Prophet##30105 |goto Hour of Twilight/2 46.90,45.00
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Lost City of the Tol'vir",{
mapid=277,
achieveid={4848},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Uldum, LCotT"},
description="This guide will walk you through the Lost City of the Tol'vir dungeon.",
},[[
step
label "start"
Press _I_ and queue for Lost City of the Tol'vir or enter the dungeon with your group |goto Lost City of the Tol'vir/0 31.80,16.80 < 100 |c
step
talk Captain Hadan##50038
accept The Source of Their Power##28783 |goto Lost City of the Tol'vir 31.70,16.30
accept Targets of Opportunity##28781 |goto Lost City of the Tol'vir 31.70,16.30
step
kill 1 Oathsworn Captain##45122 |q 28781/2 |goto Lost City of the Tol'vir 40.80,28.80
|tip The Captain will cast an AoE spell on the ground. Make sure to move out of this fast, it will do lots of damage.
|only if haveq(28781)
step
map Lost City of the Tol'vir/0
path follow strict;loop off;ants straight
path	33.80,27.00	40.80,28.80	42.30,40.80
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Husam##44577 |only if not haveq(28781)
kill General Husam##44577 |q 28781/1 |only if haveq(28781)
|tip He will use Shockwave. When he is beginning to cast, get out of the smoke on the ground. It will deal damage in each direction.
|tip He will toss Mystic Traps all around him. Do not get near these, or they will detonate, causing 35k damage.
|tip When he uses Mystic Trap, he will cast Detonate Traps soon after, causing them to glow followed by an explosion. Move away from them before the blow up |only if heroic_dung()
Defeat General Husam# |scenariogoal 1/24826 |goto Lost City of the Tol'vir/0 36.50,43.20
step
kill 1 Oathsworn Captain##45122 |q 28781/2 |goto Lost City of the Tol'vir/0 30.10,34.60
|only if haveq(28781)
step
map Lost City of the Tol'vir/0
path follow strict;loop off;ants straight
path	42.70,41.40	50.90,43.60	51.00,57.30
path	58.60,57.30	66.40,70.50
Follow this path and kill the boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lockmaw##43614
|tip Lockmaw will use Dust Flail, which will affect anyone standing behind him.
|tip Spread out so you don't hurt your group with Viscous Poison. It will damage anyone within 5 yards of you, as well as slow them by 30%
|tip He will also cast Scent of Blood on a random party member, causing 4 adds to attack them. Kill them fast and have your tank taunt them whenever possible.
|tip At 30% Health he will gain the ability Venomous Rage, which can be dispelled.
kill Augh##49045 |only if heroic_dung()
|tip Augh will appear after you defeat Lockmaw. Avoid his Whirlwind by kiting him around. |only if heroic_dung()
|tip He will toss a poison on random party members called Paralytic Blow Dart, dispel it if you are able. |only if heroic_dung()
|tip He will cast Dragon's Breath on your tank, disorienting him. At this time he will go after party members with high threat. |only if heroic_dung()
|tip He will go into a frenzy which cannot be removed. |only if heroic_dung()
Defeat Lockmaw |scenariogoal 1/24824 |goto Lost City of the Tol'vir/0 67.20,72.20
step
map Lost City of the Tol'vir/0
path follow strict;loop off;ants straight
path	66.00,69.60	59.10,58.30	49.70,57.10
path	47.10,68.10	49.00,76.40	42.00,81.60
path	39.70,71.20	36.70,61.10	27.10,65.50
Follow this path and kill the boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Prophet Barim##43612
_Phase 1:_
|tip He will cast Blaze of the Heavens, which spawns a bird that can be kited or nuked from afar. When you kill it it turns to an egg and heals. |only if heroic_dung()
|tip He will use Fifty Lashings to increase his damage output. You may want to use cooldowns.
|tip He will cast Plague of Ages, this will deal 4k damage every second for 9 second and can be dispelled.
|tip Heaven's Fury. This will open up a portal of light that will deal large damage to anyone standing in the light.
|tip At 50% he will use Repentance, pulling the entire group to him. It will also deal out damage and knock the players back at the end of it's duration.
_Phase 2:_
|tip He will place Hallowed Ground on the ground that deals massive damage. Move out of it as fast as possible.
|tip He will summon a Harbinger of Darkness and start using Soul Sever. Soul Sever spawns a Soul Fragment which needs to be killed quickly and can be slowed, stunned and snared.
|tip Players will randomly be hit for around 7,000 damage during this phase. Healers need to try and keep people topped off.
|tip When the Harbinger of Darkness is dead, it will go back to phase one.
Defeat High Prophet Barim |scenariogoal 1/24825 |goto Lost City of the Tol'vir/0 26.50,65.50
step
Start here |goto Lost City of the Tol'vir/0 36.00,62.80 |n
Ride the Wind Tunnel |goto Lost City of the Tol'vir/0 35.70,53.90 < 5
confirm
step
kill Siamat##44819 |only if not haveq(28783)
kill Siamat |q 28783/1 |only if haveq(28783)
_Phase 1:_
|tip He will spawn Minions of Siamat. Interrupt their spells and kill them as fast as you can. Kill them by the ledges, as they spawn whirlwinds when they die.
|tip He will summon Servants of Siamat, which need to be Tanked and Killed. Only 3 will spawn during the fight. After the 3rd one, Siamat will become vulnerable. Move away from them as they are about to die to avoid AoE damage.
|tip During the fight, Siamat will cast Storm Bolt.
_Phase 2:_
|tip He will use Wailing Winds when the shield goes down. Move away from the edges and top every one off health wise if you are the healer.
|tip Minions of Siamat will continue to spawn, but you can ignore them and focus on the boss.
|tip He will use Absorb Storms removing a minion and granting him a passive AoE.
Defeat Siamat |scenariogoal 1/34417 |goto Lost City of the Tol'vir/0 40.80,55.30
step
talk Captain Hadan##50038
turnin The Source of Their Power##28783
turnin Targets of Opportunity##28781 |goto Lost City of the Tol'vir 31.70,16.30
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\The Stonecore",{
mapid=324,
achieveid={4846},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Deepholm"},
description="This guide will walk you through the Stonecore dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Stonecore or enter the dungeon with your group |goto The Stonecore/1 54.50,94.50 < 100 |c
step
talk Earthwarden Yrsa##50048
accept Twilight Documents##28815 |goto The Stonecore 53.70,94.90
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	54.60,88.40	61.40,79.20	63.30,70.90
kill Stonecore Earthshaper##43537+
|tip Make sure to kill him first, if not killed fast enough, he will transform and do big group damage.
|tip You will have to fight him in each group as you continue forward.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Twilight Documents##207415
collect Twilight Documents##65734 |q 28815/1 |goto The Stonecore/1 63.50,65.20
|only if haveq(28815)
step
Click the Quest Completion Box that pops up:
turnin Twilight Documents##28815
accept Followers and Leaders##28814
step
kill Corborus##43438
_Phase 1_
|tip Corborus will attack the Tank and use Crystal Barrage. These crystals will do damage to anyone standing in them.
|tip These will also spawn Crystal Shards to attack. Make sure to AoE these down quickly. |only if heroic_dung()
|tip Additionally, he will randomly use Dampening Wave, which will reduce the healing the party takes, as well as dealing damage. Remove this from the tank as soon as possible. (Magic Effect)
_Phase 2_
|tip Corborus will burrow. During this time avoid the areas with rubble when he is underground, he will jump out of these areas and hurt anyone standing in it.
|tip Kill the adds he summons during this phase.
Defeat Corborus |scenariogoal 1/25089 |goto The Stonecore 62.40,61.20
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	59.60,59.80	54.90,58.40	50.00,59.70
path	46.10,55.70	43.40,52.20	38.80,49.60
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slabhide##43214
|tip He will use Sand Blast which deals damage in a cone in front of him. Only the tank should be in front of him.
|tip He will cast Lava Fissure under a ranndom players feet. It will erupt after 3 seconds and create a lava pool that lasts for 30 seconds.
|tip He will cast Stalactite often. When he does he'll move to the center of the room and cause spikes to rain from the ceiling. Avoid them, as they do massive damage. There will be a shadow where they drop.
|tip After the Stalactite's, he will cast Crystal Storm, move behind the rocks out of his line of site to avoid damage. |only if heroic_dung()
Defeat Slabhide |scenariogoal 1/25090 |goto The Stonecore/1 37.70,44.90
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	37.70,39.50	39.80,32.20	38.60,20.80
path	42.70,16.70	45.40,19.00
As you run through this room, you will want to kill the Stonecore Sentries, they will aggro big groups if they are close enough. |goto The Stonecore/1 38.70,20.60
|tip Stonecore Bruisers patrol this area. When you can, kill them away from groups.
|tip If you stay to the right side, you will not have to kill groups on the left side.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ozruk##42188
|tip Face Ozruk away from the group. He will use Ground Slam that everyone, including the tank need to avoid. This causes massive damage
|tip Ozruk will cast Shatter shortly after Ground Slam. Run 15 yards away from him or you will take damage up to 200k.
|tip He will cast Paralyze, which needs to be dispelled. You can also cast a DoT when Ozruk has Elementium Bulwark up, or simply melee him keeping the Elementium Spike Shield debuff on you at all times to break the effect. |only if heroic_dung()
Defeat Ozruk |scenariogoal 1/25091 |goto The Stonecore/1 47.70,20.00
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	48.50,27.20	48.00,35.60	48.40,45.20
path	53.50,40.50
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Priestess Azil##42333 |only if not haveq(28814)
kill High Priestess Azil##42333  |q 28814/1 |only if haveq(28814)
kill 101 Devout Follower##42428 |q 28814/2 |only if haveq(28814)
_Phase One_
|tip She will need to be tanked and moved when she creates a _Gravity Well_ (purple circle with that deals shadow damage).
|tip During this phase, boss will need to be tanked on the left of the Gravity Well, so the mobs will run in and die.
|tip She will also use an ability called Force Grip which deals massive damage to the tank and should be interrupted each time it is used. |only if heroic_dung()
_Phase Two_
|tip She will float up to her altar and Tank will need to get aggro on all the Devout Followers that run in.
|tip She will use Seismic Shard, which throws a huge rock at a random party member. More often than not it will kill that party member, so be on the look out for a shadow on the ground. |only if heroic_dung()
Defeat High Priestess Azil |scenariogoal 1/34450 |goto The Stonecore/1 57.64,38.24
step
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
talk Earthwarden Yrsa##50048
turnin Followers and Leaders##28814 |goto The Stonecore/1 53.60,95.00
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Throne of the Tides",{
mapid=322,
achieveid={4839},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Vashj'ir, Water"},
description="This guide will walk you through the Abyssal Maw: Throne of the Tides dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Throne of the Tides or enter the dungeon with your group |goto Throne of the Tides/1 49.90,88.20 < 100 |c
step
talk Captain Taylor##50270
accept Rescue the Earthspeaker!##28834 |goto Throne of the Tides,49.90,90.60
accept Sins of the Sea Witch##28836 |goto Throne of the Tides,49.90,90.60
|tip You can only pick up these quests if you have completed the main quest line in Val'shara.
confirm
step
map Throne of the Tides/1
path follow smart; loop off; ants curved; dist 12
path	49.90,88.20	50.20,74.80	50.50,64.70
path	49.90,49.70	Throne of the Tides/2 50.10,84.50
Follow the path |goto Throne of the Tides/2 50.10,84.50 < 12
|tip Mobs will swim through the bubbles of water on the sides of the tunnel.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Ride the jellyvator to the top and get off |goto Throne of the Tides/2 50.60,77.60 < 8 |noway |c
|tip You will need to jump to actually get on the jellyfish.
step
map Throne of the Tides/2
path follow smart; loop off; ants curved; dist 12
path	50.60,77.60	50.60,65.70	50.60,51.60
path	50.50,33.40
Follow the path |goto Throne of the Tides/2 50.50,33.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lady Naz'jar##40586
scenariogoal 24798 |goto Throne of the Tides/2 50.60,21.40
step
click Throne of Tides Defense System##7147 |goto Throne of the Tides/2 50.80,33.10
confirm
step
kill Commander Ulthok##40765
|tip Squeeze this will be used on a random party member, restricting them from any actions.
|tip He will use Dark Fissure where the tank is standing.  It's important to move away from him when he does this as this attack may one-shot you.
|tip When he uses Dark Fissure it leaves a circle of shadow on the ground that slowly expands the longer the fight carries on.
|tip He casts Curse of Fatigue at a random target, slowing their movement and haste by 50%
|tip He will Enrage increasing all damage done by 50%.
Defeat Commander Ulthok |scenariogoal 24799 |goto Throne of the Tides/2 50.60,41.80
step
Click the Throne of the Tides Teleporter |goto Throne of the Tides/2 51.20,52.70
confirm
step
map Throne of the Tides
path follow strict;loop off;ants straight
path	57.30,44.60	61.90,43.70	66.20,38.60
path	67.20,30.40
Kill the trash at these points above.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mindbender Ghur'sha##40788 |goto Throne of the Tides/1 67.20,20.40
_Phase 1:_
|tip Erunak will cast Earth Shards at a random party member. It will cause damage in a line, so move out of it.
|tip He will cast Lava Bolt at a random target.  This spell can be interrupted.
|tip He will use Magma Splash in a cone in front of him.
_Phase 2:_
|tip Mindbender Ghur'sha will put Mind Fog on the ground, rendering you unable to cast or attack, as well as causing shadow damage.
|tip He will randomly Enslave a party member. You will have to beat the member down until they reach 50% helath.
|tip If you don't free the player, they will die. |only if heroic_dung()
|tip The most important ability to watch out for is Absorb Magic. All spells cast at him while this ability is up will heal him.
Rescue Erunak Stonespeaker |q 28834/1 |only if haveq(28834)
confirm
step
talk Erunak Stonespeaker##36915
turnin Rescue the Earthspeaker!##28834 |goto Throne of the Tides/1 67.20,20.40
step
map Throne of the Tides/1
path follow strict;loop off;ants straight
path	67.20,30.40	66.20,38.60	61.90,43.70
path	57.30,44.60	50.00,44.70	42.60,44.10
path	34.60,41.80	32.40,30.00
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Neptulon##40792 |goto Throne of the Tides/1 32.50,22.50
Let him know you're ready.
confirm
step
kill 3 Faceless Sapper##44752+, Vicious Mindlasher##44715+, Unyielding Behemoth##44648+
kill Ozumat##44566
_Phase 1:_
|tip Deep Murloc Invaders will spawn in groups. Often, and should be AoE'd down.
|tip There will be 3 Vicious Mindlashers that spawn, and need to be tanked.
|tip There will be 1 Unyielding Behemoth that spawns and needs to be tanked.
|tip After the 3 Vicious Mindlashers and Unyielding Behemoth are killed, 3 Faceless Sappers will spawn.
_Phase 2:_
|tip Kill the Faceless Sappers 1 at a time, focusing them down quickly.
|tip The tank should look for Blight Beasts, kiting them around the room as they spawn.
|tip Once the 3 Faceless Sappers are defeated, Ozumat will appear.
Defeat Ozumat |scenariogoal 1/34414 |goto Throne of the Tides/1 36.40,17.40
step
talk Captain Taylor##50270
turnin Sins of the Sea Witch##28836 |goto Throne of the Tides,49.90,90.60
only if haveq(28836)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Vortex Pinnacle",{
mapid=325,
achieveid={4847},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Uldum, VP"},
description="This guide will walk you through the Vortex Pinnacle dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Vortex Pinnacle or enter the dungeon with your group |goto The Vortex Pinnacle/1 54.10,16.70 < 100 |c
step
talk Itesh##49943
accept A Long Way from Home##28779
accept Vengeance for Orsis##28760 |goto The Vortex Pinnacle 54.40,16.60
step
map The Vortex Pinnacle
path follow strict;loop off;ants straight
path	59.10,24.30	62.00,28.70	65.40,29.70
path	65.10,33.40	62.10,34.00
Follow the path down the ramp.
|tip Fight near the wall so you don't get knocked off.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grand Vizier Ertan##43878
|tip When engaged, she will summon whirlwinds at the outside of the room.
|tip Move in towards her to avoid them for the duration of the fight.
|tip As the fight progresses, Grand Vizier Ertan will pull the whirlwinds to form a wall around her. Move outward, away from her, avoiding the whirlwinds!
|tip If you're hit by the whirlwinds you will receive a debuff, decreasing movement, casting and attack speed as well as take nature damage.
collect Grand Vizier Etran's Heart##65660 |q 28779/1 |only if haveq(28779)
Defeat Grand Vizier Ertan |scenariogoal 1/24810 |goto The Vortex Pinnacle 55,44.60
step
Start here |goto The Vortex Pinnacle 57.60,48.90
Ride the Slipstream across the gap. |goto The Vortex Pinnacle 63.60,59.10 < 5
confirm
step
kill Young Storm Dragon##45919 |goto The Vortex Pinnacle 60.60,65.30 |n
|tip When you pull these, move it away from the circle or it will heal for all the damage you do.
confirm
step
There will be Howling Gales that you will need to hit to cross the bridge. |goto The Vortex Pinnacle 58.40,68.90 |n
Cross the bridge. |goto The Vortex Pinnacle 55.20,73.60 < 5
confirm
step
kill Young Storm Dragon##45919 |goto The Vortex Pinnacle 53.60,76.10 |n
|tip When you pull these, move it away from the circle or it will heal for all the damage you do.
|confirm
step
kill Empyrean Assassin##45922
kill Turbulent Squall##45924  |goto The Vortex Pinnacle 53.00,77.70
|tip For this trash, move out of Hurricane.
|tip Interrupt Cloudburst when it's cast.
|tip Kill Empyrean Assassins first.
|confirm
step
kill Altairus##43873
|tip When engaged, Altairus will summon a wind which will affect your haste.
|tip He will also summon Twisting Winds, which will toss you up in the air and deal damage if you're hit by them. |only if heroic_dung()
|tip Using the wind current to your advantage will be the deciding factor in this fight.
|tip You will need to navigate around the boss. When you have the Upwind of Altairus buff, stop moving. You gain a 100% haste buff for spells and attacks.
|tip If you have the Downwind of Altairus debuff, circle the boss until you have the Upwind buff.
|tip Do not stand in front of Altairus. He uses a cone breath ability.
Defeat Altairus |scenariogoal 1/24811 |goto The Vortex Pinnacle 52,80.60
step
Start here |goto The Vortex Pinnacle 49.40,80.70 |n
Ride the Slipstream across the gap. |goto The Vortex Pinnacle 31.40,80.40 < 8
confirm
step
map The Vortex Pinnacle
path follow strict;loop off;ants straight
path	33.30,72.60	32.50,69.20	29.60,63.90
path	28.00,57.30	30.70,51.00	30.10,44.10
Follow the path
|tip There will be an electric field in the area. Magic won't work on mobs in these fields.
|tip For these trash pulls, always kill or use crowd control for Temple Adepts.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Asaad##43875 |only if not haveq(28760)
kill Asaad##43875 |q 28760/1 |only if haveq(28760)
|tip He will channel Supremacy of the Storm. When he does so he will start to create a triangle on the ground randomly in the room.
|tip You will need to run inside of the triangle.
|tip His primary attack is Chain Lightning so try to spread out of possible to reduce group damage.
|tip He will cast Static Cling which will root you to the ground and can be deadly. If you jump at the time it is cast you will not get rooted, but if not then it is a Magic effect and can be removed. |only if heroic_dung()
Defeat Asaad |scenariogoal 1/34415 |goto The Vortex Pinnacle 29.80,39
step
Start here |goto The Vortex Pinnacle 29.20,46.40  |n
Ride the Slipstream across the gap. |goto The Vortex Pinnacle 54.10,16.80 < 8
confirm
step
talk Itesh##49943
turnin A Long Way from Home##28779
turnin Vengeance for Orsis##28760 |goto The Vortex Pinnacle 54.50,15.90
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity",{
mapid=398,
achieveid={6118},
patch='40300',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Caverns, of, Time, CoT, WoE"},
description="This guide will walk you through the Well of Eternity dungeon.",
},[[
step
Press _I_ and queue for Well of Eternity or enter the dungeon with your group |goto Well of Eternity/0 28.00,63.30 < 100 |c
step
talk Nozdormu##55624
turnin The Well of Eternity##30098 |goto Well of Eternity,27.30,64.20
step
talk Nozdormu##55624
accept In Unending Numbers##30099 |goto Well of Eternity,27.30,64.20
step
talk Alurmi##57864
accept Documenting the Timeways##30104 |goto Well of Eternity 26.00,63.00
step
kill Legion Demon##55503 |goto Well of Eternity,26.20,65.60
_Everyone:_
|tip He will use 2 abilities. He will leap to a random party causing damage to anyone nearby.
|tip He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
Archive a Legion Demon |q 30104/1 |only if haveq(30104)
|confirm |only if not haveq(30104)
step
talk Illidan Stormrage##55500 |goto Well of Eternity 19.60,68.80
Tell him "I am ready to be hidden by your shadowcloak"
confirm
step
kill Dreadlord Defender##55656+, Corrupted Arcanist##55654
_Warning_
|tip Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
|tip Take out the Dreadlords first and try to interrupt their Carrion Swarm, this causes big shadow damage to anyone in front of them.
click Portal Energy Focus##209448 |goto Well of Eternity 27.10,56.70
Disable the First portal. |q 30099/1 |only if haveq(30099)
|confirm |only if not haveq(30099)
step
kill Dreadlord Defender##55656+, Corrupted Arcanist##55654
|tip Take out the Dreadlords first and try to interrupt their Carrion Swarm, this causes big shadow damage to anyone in front of them.
click Portal Energy Focus##209448
Disable Second portal. |q 30099/2 |only if haveq(30099)
|confirm |only if not haveq(30099)
step
kill Dreadlord Defender##55656+, Corrupted Arcanist##55654
|tip Take out the Dreadlords first and try to interrupt their Carrion Swarm, this causes big shadow damage to anyone in front of them.
click Portal Energy Focus##209448 |goto Well of Eternity 15.90,35.10
Disable Third portal |q 30099/3 |only if haveq(30099)
|confirm |only if not haveq(30099)
step
kill Peroth'arn##55085 |q 30099/4 |only if haveq(30099) |goto Well of Eternity 19.50,52.00
kill Peroth'arn##55085 |only if not haveq(30099) |goto Well of Eternity 19.50,52.00
_Everyone:_ |grouprole EVERYONE
|tip Fel Decay will target a random player, then leave an AoE circle on the ground. Stay out of this. |grouprole EVERYONE
|tip At 60% health, Peroth'arn will stun the group, and deal shadow damage for 4 seconds. He will vanish after this, giving you time to recover. |grouprole EVERYONE
|tip While he is stealthed, avoid detection by the Eyes of Peroth'arn. If any party member is detected, Peroth'arn will ambush that person and deal massive damage. |grouprole EVERYONE
|tip He will return if the group remains undetected by the Eyes of Peroth'arn for 40 seconds. |grouprole EVERYONE
_Tank:_ |grouprole TANK
|tip Taunt the boss asap if any player is detected by his Eyes. |grouprole TANK
|tip Tanks take 20% increased damage during this fight. |grouprole TANK
_Healer:_ |grouprole HEALER
|tip For this fight, be careful of healing those with the Fel Decay debuff. You will take equal damage that your heals do to that target. |grouprole HEALER
|tip He randomly places a DoT called Fel Flames on a party member, so be ready to heal through it. |grouprole HEALER
|tip When he hits 60%, he will deal massive AoE damage, so be sure to heal up the party before hand. |grouprole HEALER
|tip If any party member is detected, Peroth'arn will ambush that person and deal massive damage, be fast to heal this player. |grouprole HEALER
Defeat Peroth'arn |scenariogoal 2/24837 |goto Well of Eternity 19.50,52.00
step
talk Nozdormu##55624
turnin In Unending Numbers##30099 |goto Well of Eternity 29.40,40.00
accept The Vainglorious##30100 |goto Well of Eternity 29.40,40.00
step
kill Enchanted Highmistress##56579+, Enchanted Magus##54882+, Eternal Champion##54612 |goto Well of Eternity 33.60,35.10
|tip Walking along this path you will encounter groups of 3.
|tip Kill the spellcasters first as they do damage to the whole group.
|confirm
step
kill Eye of the Legion##54747+ |goto Well of Eternity 31.50,29.40
|tip These deal massive channeled fire damage called Fel Flames in a frontal cone. This can be interrupted.
|confirm
step
kill Royal Handmaiden##54645+
The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
Archive Royal Handmaiden |q 30104/2 |goto Well of Eternity 43.70,27.30
|only if haveq(30104)
step
kill Queen Azshara##54853 |only if not haveq(30100) |goto Well of Eternity 47.20,36.90
kill Queen Azshara##54853 |q 30100/1 |only if haveq(30100) |goto Well of Eternity 47.20,36.90
*NOTE* You will not attack the Queen, killing all guards will end the fight.
_Everyone:_ |grouprole EVERYONE
|tip The Queen will often cast Total Obedience and charm your entire party. Interrupt this or it will kill your group. |grouprole EVERYONE
|tip The Frost Magus unleashes a very powerful attack you will want to dodge called Coldflame. This looks like a blue line of energy on the ground. You will know it's coming by the spinning blue circles that appear before it hits. |grouprole EVERYONE
|tip The Queen will summon 2 Magus' to life at a time to attack the group. These will be summoned about every 30 seconds. |grouprole EVERYONE
|tip There are 3 types of Magus' all with basic abilities, Fire, Frost, and Arcane. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip She will cast Servant of the Queen which mind controls a player. Kill the puppet strings above that character to release them. |grouprole DAMAGE
Defeat Queen Azshara |scenariogoal 3/24838 |goto Well of Eternity 47.20,36.90
step
Click the Time Transit Device |goto Well of Eternity 43.90,32.90
Teleport to The Well of Eternity |goto Well of Eternity 73.10,84.00 < 5
confirm
step
talk Nozdormu##55624
turnin The Vainglorious##30100 |goto Well of Eternity 71.70,80.60
accept The Path to the Dragon Soul##30101 |goto Well of Eternity 71.70,80.60
step
kill Doomguard Annihilator##55519+ |goto Well of Eternity/0 73.20,77.70
|tip Wait for Tyrande to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
|confirm always
step
kill Abyssal Doombringer##55510 |goto Well of Eternity/0 83.80,61.20
|tip When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
|confirm
step
kill Captain Varo'then##55419
_Everyone:_ |grouprole EVERYONE
|tip When coming up to fight Mannoroth, you will first face Captain Varo'then. |grouprole EVERYONE
|tip Captain Varo'then will attack with Magistrike dealing 30k fire damage. This jumps to any player nearby. |grouprole EVERYONE
|tip Fel Firestorm will fall from the sky often. This is a rapid Fel Flame that flows along the ground. Stay out of it. |grouprole EVERYONE
Archive Captain Varo'then. |q 30104/3 |only if haveq(30104)
Defeat Captain Varo'then |scenariogoal 4/24839 |goto Well of Eternity/0 84.70,55.00
step
kill Mannoroth##54969 |q 30101/1 |only if haveq(30101) |goto Well of Eternity/0 84.70,55.00
kill Mannoroth##54969 |only if not haveq(30101) |goto Well of Eternity/0 84.70,55.00
_Everyone:_ |grouprole EVERYONE
|tip After a short time, a portal will open releasing lots of Doomguards and Demons. |grouprole EVERYONE
|tip Attack Mannoroth until he gets to 25%. He will retreat at this point. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip After Varo'then is dead, start attacking Mannoroth. |grouprole DAMAGE
|tip Aoe any demon that comes out. |grouprole DAMAGE
|tip Attack Mannoroth and avoid the fire that rains from the sky. If you attract any adds run to your tank so that he may pick them up. |grouprole DAMAGE
_Tank:_ |grouprole TANK
|tip click the sword that falls and use it against Mannoroth. |grouprole TANK
|tip Stand near the portal and aoe any demon that comes out, pick these up until Tyrande Whisperwind is free. |grouprole TANK
Defeat Mannoroth |scenariogoal 4/24840 |goto Well of Eternity/0 84.70,55.00
step
talk Alurmi##57864
turnin Documenting the Timeways##30104 |goto Well of Eternity/0 87.80,49.90
step
talk Illidan Stormrage##55532
turnin The Path to the Dragon Soul##30101 |goto Well of Eternity/0 84.60,55.90
|tip You will have to wait a little while for the RP to finish.
step
talk Chromie##57913
accept The Hour of Twilight##30102 |goto Well of Eternity/0 87.30,49.30
step
If you wish to continue to the Hour of Twilight talk to Chromie and she will teleport you there
talk Chromie##57913 |goto Well of Eternity/0 87.30,49.30
Tell her "I am ready to help Thrall, back in my present time."  |goto Hour of Twilight |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Zul'Aman",{
mapid=333,
achieveid={691, 5769},
patch='40100',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Ghostlands, ZA, Amani"},
description="This guide will walk you through the Zul'Aman dungeon.",
},[[
step
label "start"
talk Witch Doctor T'wansi##52925
accept The Hex Lord's Fetish##29186 |goto Zul'Aman 13.80,52.20
step
talk Vol'jin##52924
accept Warlord of the Amani##11196 |goto Zul'Aman 14.20,53.20
step
talk Vol'jin##52924 |goto Zul'Aman 14.20,53.20
Tell him you are ready to open the doors.
|confirm
step
There will be a patrol walking at this point, wait for it to pass before moving to your left. |goto Zul'Aman 34.40,48.70
|confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	31.80,43.80	29.70,41.30	33.00,40.00
path	35.40,40.10	37.80,39.40	37.40,34.30
path	36.00,28.50
At this point, follow the path up the steps.
|tip There will be mobs that come after you from behind as you go up the steps.
|tip Kill Amani'shi Wind Walkers first, interrupting Chain Heal whenever they cast it.
Follow the path up to Akil'zon's Altar. |goto Zul'Aman 36.00,28.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Akil'zon##23574
|tip For this encounter, you will want to spread out to avoid zapping party members with AoE attacks.
|tip Amani Kidnappers will swoop down, picking up a random party member. You will have to kill the bird quickly.
|tip He will cast Electrical Storm on a random party member. When this happens, all players will need to move underneath the party member who is affected.
|tip Electrical Storm deals out massive damage that increases over time, so move quickly.
|tip He will also put the Static Disruption debuff on a random target, dealing nature damage and increasing nature damage taken. It can be dispelled.
Defeat Akil'zon |scenariogoal 1/24846 |goto Zul'Aman 35.10,22.90
step
map Zul'Aman
path follow strict;loop off;ants straight
path	34.30,61.70	31.00,63.40	30.80,66.60
path	33.90,70.40	34.10,75.80	37.50,76.50
The patrol will still be there you can avoid it or kill them.
|tip Follow the path up, fighting trash as you go along.
|tip Kill Amani'shi Medicine Men first, followed by Amani'shi Casters.
|tip If needed, you can also use crowd control on them when needed.
|tip At the last pull, you will not be able to crowd control at first.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nalorakk##23576
_Phase 1(Troll Phase):_
|tip He will deal massive damage to the tank with _Brutal Strike_.
|tip He also uses an ability called Surge. It's important to know that he charges the player furthest from him, leaving a debuff that increases damage taken by 500%!
|tip This means that you need to rotate who gets hit by it. Ranged DPS and Healers should be the ones to do this. However if you don't have enough ranged, have everyone stack close to the boss, and have a melee step out when it's their turn.
|tip He will use Surge 3 times, so 3 people will need to take the hit!_
_Phase 2(Bear Phase):_
|tip He will put a massive bleed dot on the tank called Lacerating Slash.
|tip He will also use Deafening Roar, which silences the party for 2 seconds. It will be important to keep the tank topped off on health during phase 2.
|tip He will go back and forth between phases.
Defeat Nalorakk |scenariogoal 1/24847 |goto Zul'Aman 40.60,76.50
step
map Zul'Aman
path follow strict;loop off;ants straight
path	34.30,76.80	33.90,90.60	37.50,91.40
path	43.30,89.50	48.00,90.00	49.60,86.20
path	52.20,84.20	55.90,84.20	59.80,83.60
path	58.50,77.60	55.40,76.80	55.40,72.60
Follow the path.
|tip Use crowd control on Amani'shi Flame Casters when applicable.
|tip Keep an eye out for Amani'shi Scouts, if they do not die instantly they will summon additional adds..
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Jan'alai##23578
|tip For this fight, he will cast Flame Breath towards a random player. Step out of the way when he does so, it deals massive fire damage.
|tip He will also Summon Amani'shi Hatchers, which hatch Amani Dragonhawk Hatchlings. ONLY KILL ONE of the Hatchers, and let the other destroy the eggs.
|tip Use every AoE ability you have to kill the hatchlings as they come in waves.
|tip He will also periodically use Fire Bomb, where he will teleport to the center of the room and throw fire orbs around randomly. DO NOT STAND ON THE FIRE ORBS.
|tip DPS him down slowly until the Amani Dragonhawk Hatchlings are dead.
Defeat Jan'alai |scenariogoal 1/24848 |goto Zul'Aman 55.40,71.00
step
map Zul'Aman
path follow strict;loop off;ants straight
path	55.60,62.90	59.10,56.10	59.10,50.80
path	59.00,43.10	62.30,37.60	64.80,30.00
path	71.30,23.40	76.40,21.70
Follow the path. |goto Zul'Aman 76.40,21.70 < 5
|tip If you have any sort of water walk, you can reach the end waypoint without fighting much.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	75.10,14.90	70.40,14.10	68.30,19.20
path	65.20,23.10
There will be packs of Amani Lynx that are stealthed. Let your tank move ahead of the party.
|tip At the last waypoint, use any crowd control you have available, and pull the group to the bottom of the stairs.
|tip Kill the trolls first.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Halazzi##23577
|tip He will drop a Water Totem, which heals and restores mana to anyone standing in it's radius. Move Halazzi out of it, and have ranged party members stand in it.
|tip At 66% and 33% he will summon a Spirit of the Lynx that has random threat no matter what. Halazzi's health will jump to 100% also. Burn him down.
|tip Kill Corrupted Lightning Totems as they are summoned. He only casts this while in troll form.
|tip Dispel Flame Shock if possible. He only casts this while in troll form.
Defeat Halazzi |scenariogoal 1/24849 |goto Zul'Aman 58.00,23.30
step
map Zul'Aman
path follow strict;loop off;ants straight
path	59.40,33.90	62.40,34.30	59.90,40.10
path	58.80,45.80	58.10,53.90	64.90,53.20
Follow the path up to Hex Lord Malacrass.
|tip Use crowd control on Amani'shi Medicine Men.
|tip When you fight Amani'shi Berserkers let your tank get threat before you attack, they cannot be taunted.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "hex"
kill Hex Lord Malacrass##24239+ |goto Zul'Aman 71.30,53.20
|tip He will have two adds on both his sides. They can be crowd controlled and should be if possible.
|tip If your group has no crowd control, then you will need to kill them before attacking the boss, as they do a lot of damage.
|tip Hex Lord Malacrass will adopt the abilities from a random party member. Click below to see what he will do.
collect The Hex Lord's Fetish##69264 |q 29186/1 |only if haveq(29186)
Death Knight: |next "dk" |confirm
Druid: |next "druid" |confirm
Hunter: |next "hunt" |confirm
Mage: |next "mage" |confirm
Paladin: |next "pally" |confirm
Priest: |next "priest" |confirm
Rogue: |next "rogue" |confirm
Shaman: |next "shaman" |confirm
Warlock: |next "lock" |confirm
Warrior: |next "war" |confirm
Click here to continue. |next "daa" |confirm
step
label "dk"
He will put Death and Decay on the ground. Stay out of it.
|tip Kill Blood Worms if you see them.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "druid"
He will use Lifebloom which should be dispelled.
|tip He will also use Thorns which should be removed from him.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "hunt"
He will use Explosive Trap.
|tip He will use Freezing Trap.
|tip He will use Snake Trap. AoE down the snakes.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "mage"
He will root nearby players with Frost Nova.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "pally"
He will use Consecration, which is an AoE Ground Type attack. Move out of it.
|tip He will cast Holy Light which needs to be interrupted.
|tip He will use Avenging Wrath which can be Purged, Dispelled or you can use Spell Steal.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "priest"
He will use Mind Control.
|tip He Will use Heal which needs to be interrupted.
|tip He will use Psychic Scream which will fear you if you are close so stay away if you can.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "rogue"
He will use Blind.
|tip He will use Would Poison on the tank which needs to be dispelled (Poison).
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "shaman"
He will use Fire Nova so stay away from him if you can.
|tip He will use Healing Wave which needs to be interrupted.
|tip He will use Chain Lightning so spread out.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "lock"
He will cast Rain of Fire, simply move out of its radius.
|tip He will cast Unstable Affliction, DO NOT dispel it.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "war"
He will use Spell Reflect, be sure not to cast big spells when he's got it up.
|tip He will use Whirlwind, so don't be within melee range.
|tip He will use Mortal Strike on the tank.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "daa"
Click the doors and fight the trolls that come out. |goto Zul'Aman 73.80,53.20
After you defeat the trolls, make your way to the steps.
|confirm
step
label "final"
kill Daakara##23863 |only if not haveq(11196) |goto Zul'Aman 90.80,52.60
This encounter has 3 phases:
_Phase 1:_
|tip He will use Whirlwind often. Melee should move away from him when he is casting it to avoid damage.
|tip He will also also use Grievous Throw which leaves a bleed on a target. If you heal the afflicted target to full it will go away.
_Phase 2:_
|tip He will take on two of the forms of former bosses. If Lynx is first, he will choose Dragonhawk second. If Bear is first then Eagle will be second. Click to get a detailed explaination.
|confirm |only if not haveq(11196) |next "turnin"
kill Daakara##23863 |q 11196/1 |only if haveq(11196) |next "turnin"
Click here for details on _Shape of the Eagle_.|next "eagle" |confirm
Click here for details on _Shape of the Bear_.|next "bear" |confirm
Click here for details on _Shape of the Dragonhawk_.|next "dragonhawk" |confirm
Click here for details on _Shape of the Lynx_.|next "lynx" |confirm
step
label "eagle"
He will use Energy Storm which will hit players whenever they cast a spell for 12,000 nature damage.
|tip Kill Lightning Totems as he places them on the battle field.
|tip He will cast Summoned Cyclone which needs to be avoided at all cost.
Click here to go back to the boss. |next "final" |confirm
step
label "bear"
His main ability will be Creeping Paralysis, this will stun the entire party after a few seconds but can be dispelled. Mass Dispell is extremely useful but if you do not have one then dispel priority targets (Healer, Tank, Highest DPS).
|tip He will also use Surge, so you will all need to stack up on the boss, having 3 different ranged move out to take the surge.
Click here to go back to the boss. |next "final" |confirm
step
label "dragonhawk"
He will cast Flame Whirl which increases damage from fire, this is unavoidable.
|tip He will cast Flame Breath at targets in front of him. Do not be in front of him.
|tip He casts Column of Fire which deals out a lot of damage, move out of it.
Click here to go back to the boss. |next "final" |confirm
step
label "lynx"
He will use Claw Rage on a random party member. The tank will need to Taunt it IMMEDIATELY.
|tip He will also spawn a Lynx during the fight.
|tip He will also randomly use Lynx Rush dealling mass damage to the target.
Click here to go back to the boss. |next "final" |confirm
step
label "turnin"
talk Witch Doctor T'wansi##52925
turnin The Hex Lord's Fetish##29186 |goto Zul'Aman 91.60,54.80
step
talk Vol'jin##52924
turnin Warlord of the Amani##11196 |goto Zul'Aman 93.00,53.60
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Zul Gurub",{
mapid=337,
achieveid={688, 5768},
patch='40100',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Stranglethorn, Vale, STV, ZG"},
description="This guide will walk you through the Zul Gurub dungeon.",
},[[
step
label "start"
Press _I_ and queue for Zul'Gurub or enter the dungeon with your group |goto Zul'Gurub/0 30.00,48.90 < 100 |c
step
talk Overseer Blingbang##53151
accept Booty Bay's Interests##29252 |goto Zul'Gurub 30.70,47.50
step
talk Bloodslayer Zala##53024
accept Break the Godbreaker##29241 |goto Zul'Gurub 30.60,47.30
step
talk Briney Boltcutter##53043
accept Putting a Price on Priceless##29242 |goto Zul'Gurub 30.50,51.00
step
talk Bloodslayer T'ara##53023 |goto Zul'Gurub/0 30.80,47.10
accept The Beasts Within##29172 |or
accept Break Their Spirits##29175 |or
accept Secondary Targets##29173 |or
|tip T'ara will only offer 1 or 2 of these quests at a time.
step
kill Venomancer Mauri##52380 |goto Zul'Gurub/0 33.40,46.70
clicknpc Zanzil's Cauldron of Toxic Torment##52529
Get the Toxic Torment Buff. |havebuff Toxic Torment##96328
step
Fight your way through this path.
kill Venomtip Needler##52379+ |goto Zul'Gurub/0 37.20,46.40
|tip If you need another nature buff, you can get one here.
|confirm
step
kill Tiki Lord Mu'Loa##52340+ |goto Zul'Gurub/0 43.90,51.00
|confirm
step
Fight your way to the next cauldron.
clicknpc Zanzil's Cauldron of Toxic Torment##52529 |goto Zul'Gurub/0 48.50,52.10
Get the Toxic Torment Buff. |havebuff Toxic Torment##96328
step
Pull the Venomguard Destroyers near the cauldron and kill them.
kill Venomguard Destroyer##52311+
|confirm
step
kill High Priest Venoxis##52155 |goto Zul'Gurub/0 50.80,55.10
_Phase 1:_
|tip He will cast, Toxic Link which attaches 2 party members. Run 25 yards away from each other to break this.
|tip Whispers of Hethiss is a beam of poison that will damage a player while channeled. This needs to be _interrupted_.
|tip During the fight he will use Venomous Effusion which creates a maze of poison on the ground. Avoid the wall at all cost.
_Phase 2:_
|tip Venoxis will Transform into a snake god. A poisonous cloud maze will appear on the ground, avoid walking in this.
|tip He will continue to use Venomous Effusion.
|tip His damage will be increased by 50% while in snake form.
|tip He will cast a Pool of Acrid Tears on the player furthest away from him which deals nature damage. Avoid if you can.
|tip He will use a cone attack, Breath of Hethiss, so melee should attack from the back if possible.
_Phase 3:_
|tip Players will be chased by Poison Tendrils, avoid these for 12 seconds. After this phase, Venoxis will take 100% more damage for 10 seconds. If  you do not kill him, phase 1 will repeat.
|confirm
step
map Zul'Gurub
path follow strict;loop off
path	49.40,54.30	49.00,58.10	52.90,57.80
Follow this path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Once you get to this opening, avoid the rocks to make it up the hill. |goto Zul'Gurub 56.20,63.00 < 5
confirm
step
kill Berserking Boulder Roller##52348 |goto Zul'Gurub 56.90,72.30
|confirm
step
kill Bloodlord Mandokir##52151 |goto Zul'Gurub 60.10,80.20
|tip He will randomly use Decapitate which will kill whoever he uses it on.
|tip When the player is killed, a Chained Spirit will revive you, giving you Spirit's Vengeance, granting 25% Health, Damage, Healing and decreasing damage taken by 10%. This effect stacks.
|tip He will gain a Level Up buff when he kills a player, increasing damage dealt by 20%, a stacking effect.
|tip Mandokir will summon his raptor Ohgan. Kill the Raptor everytime it spawns or it will kill a Chained Spirit.
|tip There are only 8 spirits, so kill Ohgan as fast as possible.
|tip He will use Devastating Slam often during the fight, a 45 degree cone attack that will likely kill you. It marks the ground as to where it strikes, so avoid it.
|tip He will toss the Bloodletting debuff on a random target, dealing 50% of their current health as shadow damage.
|confirm
step
Go back down the hill |goto Zul'Gurub 56.60,63.30 < 5 |c
confirm
step
kill Kaulema the Mover##52422 |q 29173/2 |goto Zul'Gurub 54.60,63.00
|only if haveq(29173)
step
kill Mor'Lek the Dismantler##52405 |q 29173/1 |goto Zul'Gurub 54.90,55.50
|only if haveq(29173)
step
kill Witch Doctor Qu'in##52322 |goto Zul'Gurub 54.50,52.70
kill Chosen of Hethiss##52323+
|confirm
step
kill Ritual Tiki Mask##52364+ |goto Zul'Gurub 59.50,46.10
|confirm
step
If a party member has an Archaeology of 225 at least and wishes to fight the boss, click here. |confirm |next |goto Zul'Gurub 59.30,46.40
If the party wishes to skip the Archaeology boss, click here. |next "end" |confirm |goto Zul'Gurub 59.30,46.40
step
The Edge of Madness event will summon 1 of 4 random bosses.
If Hazza'rah spawns click here. |next "hazza" |confirm
If Renataki spawns click here. |next "rena" |confirm
If Wushoolay spawns click here. |next "wush" |confirm
If Gri'lek spawns click here. |next "gri" |confirm
step
label "hazza"
kill Hazza'rah##52271
|tip Hazza'rah will use Nightmare and summon 4 adds. Each add will target a random party member and cast Waking Nightmare stunning them. The player who is not stunned must kill the adds before they reach the targetted player.
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "rena"
kill Renataki##52269
|tip Renataki will use Deadly Poison throughout the fight. This effect stacks and can be cleansed.
|tip He will periodically Vanish. When he does this make sure everybody in the party is at 100% health. He will Ambush a random target that deals 90% of the players health.
|tip He will also cast Thousand Blades. This whirlwind is dangerous and needs to be avoided.
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "wush"
kill Wushoolay##52286
|tip Wushoolay will summon Lightning Clouds periodically that should be avoided.
|tip He will use Forked Lightning, so spread out.
|tip Wushoolay will transform into a ball of lightning and charge at a random player. After he reaches them he begins to cast Lightning Rod. Everybody needs to run away from Wushoolay at this point, Lightning Rod does deadly amounts of damage and needs to be avoided
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "gri"
kill Gri'lek##52258
|tip Gri'lek is a kiting encounter.
|tip He will fixate on a random party member and gain the _Avatar_ buff, increasing his damage output by 500% and reducing his movement speed. If he fixates on you just run away until it is done.
|tip He will cast Entangling Roots on the player he is chasing, this can and needs to be dispelled.
|tip He constantly summons Rupture Lines. Avoid the rumbling dirt.
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "end"
map Zul'Gurub
path follow strict;loop off
path	58.00,50.90	56.50,50.50	56.60,43.30
path	58.50,34.90
Follow this path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mortaxx##52438 |q 29173/3 |goto Zul'Gurub 62.40,33.80
|only if haveq(29173)
step
Enter the building here |goto Zul'Gurub 57.90,29.80 < 5 |c
|only if haveq(29175)
step
kill Gurubashi Master Chef##52392 |goto Zul'Gurub 57.70,27.30
Destroy the Gurubashi Master Chef |q 29175/2
|only if haveq(29172)
step
Follow this path. |goto Zul'Gurub 55.60,27.70 < 5 |c
confirm
step
Follow this path down towards the water. |goto Zul'Gurub 53.60,29.20 < 5 |c
|only if haveq(29172)
step
kill Lost Offspring of Gahz'ranka##52418 |q 29172/1 |goto Zul'Gurub 55.10,33.50
|only if haveq(29172)
step
Follow this path. |goto Zul'Gurub 47.90,27.60 < 5
confirm
step
kill High Priestess Kilnara##52059 |goto Zul'Gurub 47.80,20.90
_Phase 1_
|tip The tank should pull the Pride of Bethekk and keep aggro on Kilnara.
|tip The DPS should focus on killing the 16 Pride of Bethekk, pulling 4 at a time. (You can kill more if you've got great dps)
|tip She will cast Tears of Blood on random party members. It deals massive damage and should be dispelled as soon as possible.
|tip She will also cast Lash of Anguish on a random target, which should be dispelled.
|tip She will cast Wave of Agony at a random player, attacking and knocking back anyone in front of her. Avoid it.
_Phase 2_
|tip Once she reaches 50% health she will enter phase 2, vanishing. When she reappears, she will be in cat form.
|tip She will deal out more damage. DPS her down as fast as possible.
|confirm
step
map Zul'Gurub
path follow strict;loop off
path	47.60,23.60	44.90,28.10	42.20,29.10
Go upstairs and leave the building. |goto Zul'Gurub 47.60,23.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Zul'Gurub
path follow strict;loop off
path	38.10,29.80	37.00,32.10	33.80,36.10
path	33.00,38.40
Follow this path |goto Zul'Gurub 33.00,38.40 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|only if haveq(29172)
step
kill Florawing Hive Queen##52442 |q 29172/2
|only if haveq(29172)
step
map Zul'Gurub
path follow strict;loop off
path	38.80,27.10	34.80,27.10	34.80,27.10
Follow this path up to the next boss |goto Zul'Gurub 34.80,27.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Zanzil##52053 |goto Zul'Gurub 31.40,24.80
|tip Zanzil will Drain 3 Cauldrons separately during this fight. You will use the buff of each Cauldron for the proper response to the boss.
click  Zanzil's Cauldron of Toxis Torment |goto Zul'Gurub 30.60,23.90
|tip Use the Green Cauldron at this location to get the buff. He will cast Graveyard Gas and put poison all over the ground.
click Zanzil's Cauldron of Frostburn Formula |goto Zul'Gurub 31.60,27.30
|tip Use the Blue Cauldron at this location to get the Forstburn Formula. He will resurrect a Berserker which you will have to kill.
click Zanzil's Cauldron of Burning Blood |goto Zul'Gurub 33.00,24.30
|tip Use the Red Cauldron at this location to get the Burning Blood. The Tank will use this to aggro and kill all the Zombies that resurrect.
|confirm
step
map Zul'Gurub
path follow strict;loop off
path	37.70,27.50	42.70,30.20	41.10,37.00
path	46.10,39.90	46.60,36.60
Follow this path up and around |goto Zul'Gurub 46.60,36.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Jin'do the Godbreaker##52148 |only if not haveq(29252) |goto Zul'Gurub 48.70,39.90
kill Jin'do the Godbreaker##52148 |q 29241/1 |only if haveq(29241) |goto Zul'Gurub 48.70,39.90
This fight has 2 phases
_Phase 1:_
|tip Jin'do will cast an aura Shadows of Hakkar, which will do heavy damage to the group. Make sure to stand in the green bubbles while this aura is active.
|tip Once his aura, Shadows of Hakkar is over, move out of the bubble.
_Phase 2:_
|tip Jin'do will go away and there will be 3 chains protected by a barrier on the ground. The tank will need to grab a Gurubashi Spirit and get near the chains.
|tip The Gurubashi Spirit will use Body Slam on a player, if the player is near the chains, the barrier will break. Kill 3 chains by breaking the barrier and attacking them.
collect Zul'Gurub Stone##69774 |q 29252/1 |only if haveq(29252)
|confirm |only if not haveq(29252)
step
Go to this bridge |goto Zul'Gurub 42.50,42.40 <5 |c
|only if haveq(29172)
step
kill Gub##52440 |q 29175/1 |goto Zul'Gurub 43.00,44.60
|only if haveq(29175)
step
Follow this path |goto Zul'Gurub 43.60,47.90 <5 |c
|only if haveq(29172)
step
Cross the bridge |goto Zul'Gurub 44.80,51.00 <5 |c
|only if haveq(29172)
step
Follow this path |goto Zul'Gurub 47.80,53.00 <5 |c
|only if haveq(29172)
step
Follow the path to the edge of the water |goto Zul'Gurub 46.70,54.30 <5 |c
|only if haveq(29172)
step
kill Tor-Tun##52414 |q 29172/3 |goto Zul'Gurub 46.10,55.70
|only if haveq(29172)
step
talk Overseer Blingbang##53151
turnin Booty Bay's Interests##29252 |goto Zul'Gurub 30.70,47.50
step
talk Bloodslayer Zala##53024
turnin Break the Godbreaker##29241 |goto Zul'Gurub 30.60,47.30
step
talk Bloodslayer T'ara##53023 |goto Zul'Gurub 30.80,47.10
turnin The Beasts Within##29172 |or
turnin Break Their Spirits##29175 |or
turnin Secondary Targets##29173 |or
|tip T'ara will only offer 1 or 2 of these quests at a time.
step
talk Briney Boltcutter##53043
turnin Putting a Price on Priceless##29242 |goto Zul'Gurub 30.50,50.90
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Baradin Hold",{
mapid=282,
condition_suggested=function() return level>=32 and level<=35 end,
keywords={"BH, TB, Tol, Barad"},
description="This guide will walk you through the Baradin Hold Raid.",
},[[
step
This raid can only be completed if your faction controls Baradin Hold, the main fortress on Tol Barad.
|confirm
step
Enter Baradin Hold |goto Tol Barad/0 47.69,52.58 < 5
confirm
step
map Baradin Hold/1
path loop off
path	48.00,72.50	54.60,62.90	70.80,62.90
Follow the path, clearing trash as you make your way to the first boss, Argaloth. |goto Baradin Hold/1 70.80,62.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Argaloth##47120 |goto Baradin Hold/1 80.40,63.40
|tip Meteor Slash deals 200,000 Fire damage, split between players within 65 yards in front of Argaloth, also increasing their fire damage taken by 100%.
|tip Consuming Darkness the Shambling Doom inflicts 3000 Shadow damage and applies a DoT that deals additional Shadow damage every 0.50 seconds for 15 seconds. Should be dispelled immediately.
|tip Fel Firestorm occurs when Argaloth is at 66% and 33% health. He rains fireballs down on the raid, leaving scorch marks on the ground upon impact. These marks deal 8500 Fire damage when standing in them.
|tip Berserk is an enrage, occuring after 5 minutes of combat. It increases his damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
confirm
step
kill Occu'thar##52363 |goto Baradin Hold/1 15.50,63.10
|tip Eyes of Occu'thar spawns a swarm of eyes that attach to players, inflicting 8700-9200 Shadow damage every second. After 10 seconds they explode, dealing 25,000 Shadow damage to the raid.
|tip Focused Fire Occu'thar targets a player, then inflicts 25,000 Fire damage every second to players within 12 yards of the targeted location.
|tip Searing Shadows deals 105,000 Shadow damage to players in a cone in front of Occu'thar, also increasing Shadow damage they take by 100% for 30 seconds.
|tip Berserk is an enrage, occuring after 8 minutes of combat. It increases her damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
kill Alizabal##55869 |goto Baradin Hold/1 47.90,17.90
|tip Skewer skewers and stuns Alizabal's target for 8 seconds, dealing 10,000 Physical damage every 2 seconds and increasing the target's damage taken by 150%.
|tip Seething Hate affects a random player, dealing 200,000 total Fire damage, split between all players within 6 yards of the target.
|tip Blade Dance Alizabal enters a blade dance, dealing 12,500 Physical damage every second to all players within 13 yards of her and deflecting all incoming attacks.
|tip Berserk is an enrage, occuring after 5 minutes of combat. It increases her damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\The Bastion of Twilight",{
mapid=294,
achieveid={4850},
patch='40003',
condition_suggested=function() return level>=32 and level<=35 end,
description="This guide will walk you through the Bastion of Twilight Raid.",
},[[
step
Enter The Bastion of Twilight |goto Twilight Highlands/0 34.01,77.88 < 5
|tip The instance portal is located high up in the air.
confirm
step
map The Bastion of Twilight/1
path loop off
path	39.60,42.70	39.60,19.80	46.60,19.40
Follow the path, clearing trash as you make your way to the first boss, Halfus Wyrmbreaker. |goto The Bastion of Twilight/1 46.60,19.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Halfus Wyrmbreaker##44600 |goto The Bastion of Twilight/1 53.40,19.30
|tip Furious Roar occurs after Halfus reaches 50% health. It deals 10,000 Physical damage and knocks the raid down.
|tip Dragon's Vengeance Halfus takes an additional 100% damage from all sources, stacking up to 3 times.
|tip Frenzied Assault increases the caster's attack speed by 100%.
|tip Malevolent Strikes reduces the effectiveness of any healing on the target by 6%, stacking up to 15 times.
|tip Shadow Nova deals 30,000 Shadow damage and knocking back all players.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Proto-Behemoth_
|tip Fireball deals Fire damage to players in a small area.
|tip Fireball Barrage deals 34,000-46,000 Fire damage to players in a small area.
|tip Scorching Breath deals 9000 Fire damage per second to players in front of the Proto-Behemoth.
_Heroic_ |only if heroic_dung()
|tip On heroic difficulty this boss starts off with all 5 buffs from the 5 drakes. |only if heroic_dung()
confirm
step
map The Bastion of Twilight/1
path loop off
path	53.70,29.10	53.70,48.90	53.70,68.30
Follow the path, clearing trash as you make your way to the next boss, Valiona and Theralion. |goto The Bastion of Twilight/1 53.70,68.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Valiona & Theralion_ |goto The Bastion of Twilight/1 53.90,78.40
kill Valiona##45992
_Grounded_
|tip Blackout deals 35,000 total Shadow damage to players within 8 yards, splitting damage to all players affected by it.
|tip Devouring Flames deals 40,000 Shadow damage to players in front of Valiona. Deals less damage to players farther away from Valiona.
_Flying_
|tip Deep Breath Valiona begins to cast Twilight Flames that deal 15,000 Shadow damage every second and send the target to the Twilight Realm.
|tip Twilight Meteorite is a debuff placed on a random player. After 6 seconds it deals 120,000 total Shadow damage to players within 8 yards, spliting damage between all nearby players.
kill Theralion##45993
_Grounded_
|tip Engulfing Magic increases damage and healing done by 100% and causes you to inflict Shadow damage equal to the damage or healing you do to allies within 10 yards.
|tip Fabulous Flames deal 15,000 Shadow damage every second.
_Flying_
|tip Dazzling Destruction causes swirls on the ground to appear. After 5 seconds 50,000 Shadow damage to every player within the blast zone.
|tip Twilight Blast deals 30,000 Shadow damage to players within 8 yards of the target.
_Heroic_ |only if heroic_dung()
|tip If hit by either Deep Breath or  Dazzling Destruction will cause you to enter the Twlight Zone |only if heroic_dung()
|tip In here you will need to kill Twilight Sentries. |only if heroic_dung()
|tip Orbs will spawn in this realm called Unstable Twilight these need to be dodged. |only if heroic_dung()
|tip Anyone within the Twilight Realm will take damage every 2 seconds that will increase over time. |only if heroic_dung()
confirm
step
map The Bastion of Twilight/1
path loop off
path	53.60,86.70	47.10,92.80	The Bastion of Twilight/2 42.40,18.20
Follow the path, clearing trash as you make your way to the next boss, the Twilight Ascendant Council. |goto The Bastion of Twilight/2 42.40,18.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Twilight Ascendant Council_ |goto The Bastion of Twilight/2 42.50,45.50
_Phase 1_
kill Feludius##43687
|tip Heart of Ice deals increasing Frost damage every 2 seconds, starting at 2000 Frost damage and increasing to 4000 and then 8000 Frost damage.
|tip Hydro Lance deals 45,000-55,000 Frost damage to a random player.
|tip Water Bomb deals 10,000 Frost damage to players within 6 yards, applying the Waterlogged debuff.
|tip Waterlogged reduces the target's movement speed by 25%. Fire can remove this effect.
|tip Glaciate deals massive Frost damage to any nearby players, and reducing damage the farther away from Feludius each player is.
|tip Frozen Blood freezes a Waterlogged enemy solid, stunning them and dealing 20,000 Frost damage every 2 seconds for 10 seconds.
kill Ignacious##43686
|tip Burning Blood deals increasing Fire damage every 2 seconds, starting at 2000 Fire damage and increasing to 4000 and then 8000 Fire damage.
|tip Aegis of Flame surrounds the caster with a shield of flame, absorbing 1,000,000 damage and preventing spell interruption.
|tip Flame Torrent inflicts 40,000 Fire damage in a 18 yard cone every second for 3 seconds.
|tip Inferno Leap deals 23,000-27,000 Fire damage and knocking away all nearby players.
|tip Inferno Rush Ignacious runs back to his primary aggro target, leaving a trail of flames behind him that deal 5000 Fire damage every 0.50 seconds and removes Waterlogged.
|tip Rising Flames deals increasing Fire damage to the entire raid until interrupted.
_Heroic_ |only if heroic_dung()
|tip Arion and Terrastra will assist their allies in the first phase. |only if heroic_dung()
|tip Ariod will help using an ability Static Overload, this will put a debuff on a player and anyone standing near this player will take damage every 2 seconds. |only if heroic_dung()
|tip Terrastra will help using an ability called Gravity Core, this will deal damage to a random player and slow haste and movement speed of any other player within 10 yards. |only if heroic_dung()
Click here to move to Phase 2. |confirm
step
_Twilight Ascendant Council_ |goto The Bastion of Twilight/2 42.50,45.50
_Phase 2_
kill Arion##43688
|tip Call Winds creates a cyclone that deals 7000 Nature damage and levitates the player into the air.
|tip Lightning Rod marks a player that attracts electrical attacks. Arion will cast Chain Lightning on this player.
|tip Chain Lightning affects players that have been marked to attract electricity. It deals 10,000 Nature damage and bounces to additional nearby players.
|tip Disperse the caster dissolves into the wind and materializes somewhere else in the room.
|tip Lightning Blast deals 72,000-88,000 Nature damage to the tank after Arion casts Disperse.
|tip Thundershock deals 146,000-153,000 Nature damage to all nearby players.
kill Terrastra##43689
|tip Gravity Well creates a well that connects nearby players to the ground, reducing the effectiveness of some powerful electric attacks.
|tip Gravity Core occurs after entering a Gravity Well, dealing 10,000 Physical damage every 2 seconds for 10 seconds.
|tip Harden Skin increases Terrastra's Physical damage dealt by 100% and absorbing 50% of all damage taken, up to a maximum of 650,000.
|tip Eruption shoots a spike through the floor, impaling players within 4 yards and dealing 47,000-52,000 damage and knocking them up into the air.
|tip Quake sends a shockwave through the ground, dealing 150,000 damage to all players who are in contact with the ground. Deals more to targets grounded by a Gravity Well.
Click here to move to Phase 3. |confirm
step
_Defeat The Twilight Ascendant Council_ |goto The Bastion of Twilight/2 42.50,45.50
_Phase 3_
kill Elementium Monstrosity##43735
|tip Lava Seed creates kernels of Flame energy in the surrounding area which erupt and deal 35,000-45,000 Fire damage to nearby players.
|tip Liquid Ice the Monstrosity freezes the ground beneath it. The pools of ice will grow as the Monstrosity stands in it, also increasing the damage dealt.
|tip Electric Instability deals constant Nature damage to random players, increasing intensity the longer the Monstrosity is alive and jumping to nearby players.
|tip Gravity Crush traps a player in a gravity bubble, lifting them from the ground and dealing 10% of their maximum health every 0.50 seconds for 6 seconds. After 6 seconds the player is dropped to the ground.
|confirm
step
map The Bastion of Twilight/2
path loop off
path	43.90,75.30	56.60,75.10
Follow the path, clearing trash as you make your way to the next boss, Cho'gall. |goto The Bastion of Twilight/2 56.60,75.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Cho'gall##43324 |goto The Bastion of Twilight/2 73.40,75.40
_Phase 1_
|tip Conversion causes the target to channel Worshipping on Cho'gall, causing him to gain Twisted Devotion every 3 seconds.
|tip Twisted Devotion increases Cho'gall's damage by 10% for 20 seconds.
|tip Flame's Orders adds 20,000 Fire damage to each melee attack and spawns Fire patches.
|tip Shadow's Orders adds a Shadow AoE effect to Cho'gall's attacks. These hit everyone in the room.
|tip Fury of Cho'gall deals 30,000 Shadow damage and 30,000 Physical damage and increasing their Shadow and Physical damage taken by 20%.
|tip Summon Corrupting Adherent summons Corrupted Adherents to attack the raid.
|tip When Flame's Orders is consumed Cho'gall will gain 1 stack of FLaming Destruction for each 10 percent health this add has left. |only if heroic_dung()
|tip When Shadow's Orders is consumed Cho'gall will gain 1 stack of Empowered Shadows for each 10 percent health this add has left. |only if heroic_dung()
|tip Phase 2 starts when Cho'gall reaches 25% health.
Click here to move to Phase 2. |confirm
step
kill Cho'gall##43324 |goto The Bastion of Twilight/2 73.40,75.40
_Phase 2_
|tip Fury of Cho'gall deals 30,000 Shadow damage and 30,000 Physical damage and increasing their Shadow and Physical damage taken by 20%.
|tip Corruption of the Old God deals 5000 Shadow damage every 2 seconds to the entire raid.
|tip Darkened Creations Cho'gall summons Darkened Creations to attack the raid. They use Debilitating Beam.
|tip Debilitating Beam reducing healing and damage by 75% and deals 5000 Shadow damage every second for 10 seconds.
|tip On Heroic Debilitating Beam causes Corrupted Blood. |only if heroic_dung()
confirm
step
The final boss in this encounter, Sinestra, can only be done in Heroic mode.
Click here to fight Sinestra! |next "sinestra" |confirm
Click here to skip Sinestra. |next "raidend" |confirm
step
label "sinestra"
kill Sinestra##45213 |goto The Bastion of Twilight/3 49,34.20
|tip Twilight Blast deals 166,000-184,000 Shadow damage to the targeted player.
|tip Twilight Essence deals 10,000 Shadow damage to players within the bubbling essence.
|tip Unleash Essence releases twilight energy that hits all nearby players, dealing damage equal to 10% of their maximum health every second.
|tip Twilight Slicer fires a beam of twilight energy, dealing 50,000 Shadow damage every 0.30 seconds to any players that touch it.
|tip Wrack deals increasing Shadow damage over 1 minute.
|tip Twilight Pulse deals 30,000 Shadow damage every 0.50 seconds to players within 10 yards.
|tip Twilight Spit deals 4000 Shadow damage and increasing Shadow damage taken by 10%.
|tip Indomitable regains control through sheer will, becoming immune to all bonds and restraints until stopped. Deals 40,000 Shadow damage to players within 10 yards and knocks them back.
|tip Destroy the 2 Pulsing Twlight Eggs when their shield is down.
confirm
step
label "raidend"
Finished |complete true
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Blackwing Descent",{
mapid=285,
achieveid={4842},
patch='40003',
condition_suggested=function() return level>=32 and level<=35 end,
description="This guide will walk you through the Blackwing Descent Raid.",
},[[
step
Enter Blackwing Descent |goto Burning Steppes/0 23.17,26.40 < 5
confirm
step
map Blackwing Descent/1
path loop off
path	42.60,59.90	36.10,59.70	31.50,56.90
Follow the path, clearing trash as you make your way to the first boss, Magmaw. |goto Blackwing Descent/1 31.50,56.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magmaw##41570 |goto Blackwing Descent/1 27.50,53.10
|tip Mangle deals 110,000-128,400 damage every 5 seconds. Usually used on tanks.
|tip Sweltering Armor Magmaw melts the taget's armor, reducing it by 50%.
|tip Magma Spit inflicts 39,300-50,600 Fire damage to the targeted player when no player is in melee range. Triggers Molten Tantrum.
|tip Molten Tantrum with no one nearby to attack, Magmaw goes into a frenzy, increasing Fire damage dealt by 100% and stacking up to 10 times.
|tip Lava Spew deals 31,400-36,500 Fire damage to all players within 60 yards every second, lasting 3 seconds.
|tip Parasitic Infection deals 12,000-14,000 damage every 2 seconds, causing Infectious Vomit after 10 seconds.
|tip Infectious Vomit deals 40,000 damage to all players within 8 yards of the affected player.
|tip Pillar of Flame Magmaw launches magma at a player, dealing 25,000 damage and sundering the ground, which deals 120,000 Fire damage and a knockback to players near the affected spot.
|tip Massive Crash Magmaw slams down onto the ground, stunning any players caught underneath him for 3 seconds.
|tip When Magmaw slumps forward players can jump on his head and use constricting chains to impale him on the spike in the room, increasing his vulnerability.
confirm
step
map Blackwing Descent/1
path loop off
path	51.20,59.90	58.30,59.70	61.00,57.30
Follow the path, clearing trash as you make your way to the next boss, the Omnotron Defense System. |goto Blackwing Descent/1 61.00,57.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Omnotron Defense System_ |goto Blackwing Descent/1 65.40,57.40
kill Arcanotron##42166
|tip Power Generator is a large vortex on the ground, buffing any who stand in it with increased damage and mana regeneration. Try to keep the boss out of it.
|tip Arcane Annihilator is interruptable and deals massive damage to a single target.
|tip Power Conversion causes Arcanotron to gain a stacking damage buff every time he takes damage. Mages can steal this buff.
kill Electron##42179
|tip Lightning Conductor places a debuff on one player that hits all nearby players for a large amount of damage. Those affected by this should move away from the rest of the group.
|tip Electrical Discharge deals 24,000 Nature damage and jumps to additional players within 8 yards.
|tip Unstable Shield deals 30,000 Nature damage to the attacker and all players within 6 yards of the attacker, whenever Electron is hit with an attack.
kill Magmatron##42178
|tip Incineration Security Measure shoots out jets of flame all over the room. Unlimited range and unavoidable.
|tip Acquiring Target targets a raid member and shoots a jet of flame at them after a few seconds. Deals 21,000 Fire damage every second for 4 seconds. Avoid it and heal the targeted player.
|tip Flamethrower targets the tank, launching a jet of flame at them.
|tip Barrier absorbs 300,00 damage and explodes to deal 75,000 damage to the raid if broken through.
kill Toxitron##42180
|tip Poison Cloud is a pool on the ground that increases all damage taken by 50%, including Toxitron.
|tip Poison Protocol spawns 3 Poison Bombs that move towards a chosen target. If they reach their target, they explode for about 100,000 damage and leave a pool of poison.
|tip Poison Soaked Shell occurs when Toxitron is attacked, it applies a stacking DoT to the attacker but also applies a buff that makes your attacks deal an additional 10,000 Nature damage.
confirm
step
map Blackwing Descent/1
path	58.80,54.70	47.10,53.30	Blackwing Descent/2 47.40,88.10
path	Blackwing Descent/2 57.60,69.50	Blackwing Descent/2 65.50,69.70
Follow the path, clearing trash as you make your way to the next boss, Maloriak. |goto Blackwing Descent/2 65.50,69.70 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maloriak##41378 |goto Blackwing Descent/2 71.40,70.20
_All Phases_
|tip Arcane Storm deals 14,100-15,800 Arcane damage every second for 6 seconds to the entire raid.
|tip Release Abberations releases 3 Abberations from their growth chamber, causing them to attack all players.
|tip Red Vial Phase - "Mix and Stir! Apply heat!"
|tip Consuming Flames ignites a random player, dealing 9000 Fire damage every second for 10 seconds. Any other magic damage taken while this is in effect increases its damage dealt by 25%.
|tip Scorching Blast deals 750,000 total Fire damage, split between all players in a 60 yard _cone_ in front of Maloriak.
|tip Blue Vial Phase - "How well does the mortal shell handle extreme temperature change? Must find out! For Science!"
|tip Biting Chill surrounds a random player with a ring of frost that deals 7500 Frost damage to the target and all players within 8 yards every second for 10 seconds.
|tip Flash Freeze affects a random player, dealing 50,000 Frost damage to them and all players within 10 yards and encasing them in ice for 30 seconds. When the ice breaks it deals an additional 50,000 Frost damage.
|tip Green Vial Phase - "This one's a little unstable! But what's progress without failure?"
|tip Remedy heals Maloriak for 150,000 health and 2000 mana every second for 10 seconds.
|tip Debilitating Slime coats every unit in the room with slime, increasing damage taken by 100% and suppresses any Growth Catalysts on the target, temporarily removing it.
|tip 25% Health - "When pushed to the edge, results may become unpredictable!"
|tip Release All releases all remaining Aberrations from their growth chambers. Also releases two Prime Subjects from their chambers.
|tip Magma Jets releases a stream of fire towards a random player. These deal 25,000 Fire damage initially and leaves a burning effect on the ground that deals 5000 Fire damage.
|tip Absolute Zero summons a sphere of energy near a random player. If this sphere comes within 6 yards of a player, it explodes and deals 20,000 Frost damage to all players within 6 yards, also knocking them back.
|tip Acid Nova deals 5000 Nature damage every second for 10 seconds.
confirm
step
map Blackwing Descent/2
path loop off
path	65.50,69.70	57.60,69.50	47.40,53.00
path	47.50,40.90
Follow the path, clearing trash as you make your way to the next boss, Atramedes. |goto Blackwing Descent/2 47.50,40.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Atramedes##41442 |goto Blackwing Descent/2 47.50,32.70
|tip This fight has a Sound Bar. If it gets to 100 Atramedes will aggro and kill you. Clicking one of the Ancient Dwarven Shields around the room to reset the raid's sound to 0.
|tip Vertigo increases Atramedes' damage taken by 50%.
_Ground Phase_
|tip Sonar Pulse discs of energy fly around the room, dealing 6000 Arcane damage if touched and adds 7 Sound.
|tip Sonic Breath is cast on the player with the highest Sound. It deals 15,000 damage and 20 Sound every second.
|tip Modulation increases the raid's Sound by 7 and dealing 40,000 Shadow damage.
|tip Searing Flame deals 15,000 Fire damage every second for 8 seconds and increases Fire damage taken by 25% per stack. Adds 13-15 Sound.
_Air Phase_
|tip Roaring Flame Breath is used on the player with the highest Sound, dealing 15,000 damage and 20 Sound every second.
|tip Sonar Pulse discs of energy fly around the room, dealing 6000 Arcane damage if touched and adds 7 Sound.
|tip Sonar Bomb deals 30,000 Arcane damage to all players within 8 yards and adds 30 Sound.
|tip Sonic Fireball deals 30,000 Fire damage to all players within 6 yards of the impact.
|tip Roaring Flame throws flame patches around the room, dealing 15,000 Fire damage and an additional 8000 Fire damage every second for 4 seconds. Increases Sound by 5.
confirm
step
map Blackwing Descent/2
path loop off
path	47.50,40.90	47.40,53.00	36.70,69.50
path	28.80,69.70
Follow the path, clearing trash as you make your way to the next boss, Chimaeron. |goto Blackwing Descent/2 28.80,69.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Chimaeron##43296 |goto Blackwing Descent/2 24.50,70.20
_Phase 1_
|tip Caustic Slime deals 235,000 total Nature damage to all players within 6 yards of the impact and reduces their chance to hit.
|tip Fued Chimaeron is unable to perform melee attacks while his heads are fighting each other.
|tip Double Attack Chimaeron strikes twice with his next attack.
|tip Break Chimaeron attacks viciously, increasing the target's Physical damage taken by 25% and reducing healing by 15% for 1 minute.
_Phase 2_
|tip Phase 2 starts when Chimaeron reaches 20% health.
|tip Mortality Chimaeron becomes immune to taunt and increases his damage by 20%. Also reduces healing for all players by 99%.
|tip Double Attack Chimaeron strikes twice with his next attack.
confirm
step
map Blackwing Descent/2
path loop off
path	28.80,69.70	36.70,69.50
Follow the path, clearing trash as you make your way to the final boss, Nefarian. |goto Blackwing Descent/2 36.70,69.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nefarian##41376 |goto Blackwing Descent/2 48,70.20
_Phase 1_
_Onyxia_
|tip Electric Discharge inflicts 20,000 Nature damage every secondto players on Onyxia's sides.
|tip Shadowflame Breath inflicts 35,000 damage every 0.50 second for 1.50 seconds to players in a cone in front of Onyxia.
|tip Cleave deals 110% melee damage to the targeted player and all nearby players. Make sure the tank is the only one in front of Onyxia when this occurs.
|tip Tail Lash deals 20.000 damage and a 2 second stun to all players behind Onyxia.
|tip Children of Deathwing Nefarian and Onyxia attack 100% faster when they are within 60 yards of each other.
_Nefarian_
|tip Hail of Bones deals 25,000 Shadow damage to nearby players and spawns an Animated Bone Warrior.
|tip Cleave deals 110% melee damage to the targeted player and all nearby players. Make sure the tank is the only one in front of Nefarian when this occurs.
|tip Shadowflame Breath inflicts 55,000 damage every 0.50 second for 1.50 seconds to players in a cone in front of Onyxia.
|tip Tail Lash deals 20.000 damage and a 2 second stun to all players behind Onyxia.
|tip Children of Deathwing Nefarian and Onyxia attack 100% faster when they are within 60 yards of each other.
Click here to proceed to Phase 2. |confirm
step
kill Nefarian##41376 |goto Blackwing Descent/2 48,70.20
_Phase 2_
|tip Shadowflame Barrage is cast repeatedly for all of Phase 2. It deals 25,000 damage to the target.
|tip Shadow of Cowardice inflicts 30,000 damage to the targeted player and increases their Shadow damage taken by 100%.
Click here to move to Phase 3. |confirm
step
kill Nefarian##41376 |goto Blackwing Descent/2 48,70.20
_Phase 3_
|tip Cleave deals 110% melee damage to the targeted player and all nearby players. Make sure the tank is the only one in front of Nefarian when this occurs.
|tip Shadowflame Breath inflicts 55,000 damage every 0.50 second for 1.50 seconds to players in a cone in front of Onyxia.
|tip Tail Lash deals 20.000 damage and a 2 second stun to all players behind Onyxia.
|tip Shadowblaze Spark creates a blaze at the targeted location. It spreads from the initial location, following players and speeding up if it is touched.
|tip Shadowblaze deals 50,000 damage every second to players standing within the Shadowblaze.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Dragon Soul",{
mapid=409,
achieveid={6177},
patch='40300',
condition_suggested=function() return level>=32 and level<=35 end,
description="This guide will walk you through the Dragon Soul Raid.",
},[[
step
Click here if you are doing the normal clear of the instance |next "Normal DS"
Click here if you are doing the LFR wings of the instance |next "LFR DS Index"
confirm
step
label "LFR DS Index"
talk Auridormi##80675 |goto Tanaris/18 63.06,27.35
Click here if you are queueing for the First wing of Dragon Soul (Siege of Wyrmrest Temple) |next "First_Wing_DS"
Click here if you are queueing for the Second wing of Dragon Soul (Moments Preceding the Fall of Deathwing) |next "Second_Wing_DS"
confirm
step
label "Normal DS"
Enter Dragon Soul |goto Tanaris/18 61.97,26.96 < 5
confirm
step
label "First_Wing_DS"
kill Morchok##55265 |goto Dragon Soul/1 50.60,69.60
_Phase 1_
|tip Stomp deals 750,000 total Physical damage split between all affected players. Morchok's target and their closest ally take a double portion of the damage.
|tip Crush Armor deals 120% melee damage and reducing their armor by 10% for 20 seconds and stacking up to 10 times.
|tip Resonating Crystal creates a crystal that explodes after 12 seconds for massive Shadow damage split between 3 random players, the damage is increased depending on the distance of each player from the crystal.
|tip Furious occurs at 20% health. Morchok's attack speed by 30% and damage by 20%.
_Phase 2_
|tip Earthen Vortex_ Morchok draws all players towards him, dealing 5% of their maximum health as Physical damage every second for 5 seconds.
|tip Falling Fragments_ shards of Earth's Vengeance erupt from the ground, inflicting 15,000 Physical damage to players within 2 yards.
|tip Black Blood of the Earth_ Morchok causes the black blood to erupt from the ground, inflicting 5000 Nature damage and increasing Nature damage taken by 100% every second while a player is standing in the blood.
_Heroic_
|tip In heroic Morchok will split into 2, each with the same abilities as the original.
confirm
step
talk Valeera##57289 |goto Dragon Soul/1 49.40,59.30
Arrive in Warlord Zon'ozz's room |goto Dragon Soul/2 52.00,86.80 < 5 |noway |c
step
kill Warlord Zon'ozz##55308 |goto Dragon Soul/2 50.90,53
|tip Black Blood of Go'rath deals 9000 damage every second.
|tip Phychic Drain channels phychic force in a cone in front of Zon'ozz, dealing 83,000-96,750 Shadow damage.
|tip Disrupting Shadows deals 25,000-30,000 Shadow damage every 2 seconds.
|tip Focused Anger increases the target's Physical damage taken and attack speed by 10%.
_Heroic_
|tip When the boss awakens his Maw of Go'rath he will also summon the adds similiar to those surronding the boss when first entering the room.
|tip These adds will spawn around the room, they need to be switched to and killed asap.
confirm
step
talk Eiendormi##57288 |goto Dragon Soul/1 51.20,59.50
Arrive in Yor'sahj the Unsleeping room |goto Dragon Soul/3 46.00,83.70 < 5 |noway |c
step
kill Yor'sahj the Unsleeping##55312 |goto Dragon Soul/3 46.80,49.90
|tip Searing Blood hits random players, dealing increased damage the farther away from Yor'sahj the targets are.
|tip Deep Corruption receiving healing or absorption effects will trigger an explosion at 5 stacks.
|tip Void Bolt hurls a shadow bolt at a player, dealing Shadow damage.
_Heroic_
|tip In Heroic he will spawn 4 slimes during Call Blood Shu'ma.
confirm
step
talk Nethestrasz##57287 |goto Dragon Soul/1 50.20,57.80
Arrive at the top of the tower |goto Dragon Soul/1 49.50,60.20
click the portal to Eye of Eternity |goto Dragon Soul/1 50.50,60.50
Arrive in the Eye of Eternity |goto Dragon Soul/4 52.50,23.50 < 5 |noway |c
step
kill Hagara the Stormbinder##55689 |goto Dragon Soul/4 52.70,52
|tip Focused Assault slices rapidly at the target, dealing 50% weapon damage.
|tip Feedback increases damage taken by 100% for 15 seconds.
|tip Ice Tomb conjures spheres of ice to entomb players in blocks of ice.
|tip Frostflake applies a stacking snare that reduces movement speed by 10%.
|tip Lightning Storm deals 11,000 Nature damage to all nearby players.
|tip Shattered Ice deals 54,000-63,000 Frost damage to a player and reduces their movement speed for 4 seconds.
_Heroic_
|tip During Frozen Tempest she will also cast Frostflake, this will target a random person and slow them eventually to a stop over the course of 15 seconds.
|tip Once Frostflake expires it will deal 35 percent of that players health.
|tip During Lightning Storm she will cast Storm Pillars under a random players feet, after 3 seconds if stood in will deal damage, avoid these lightning circles.
|tip If you are doing this on LFR this is the end of wing 1.
confirm
step
label "Second_Wing_DS"
kill Ultraxion##55294 |goto Dragon Soul/1 49.90,45.70
|tip Unstable Monstrosity Twilight energry erupts from Ultraxion's hide, dealing 300,000 total Shadow damage every 6 secondsm split between all players in the Twilight Realm and within 30 yards of the target. Every minute Ultraxion is engaged in combat it reduces the time between arcs by 1 second.
|tip Heroic Will pulls the player from the Twilight realm for up to 5 seconds, but they are unable to attack, cast, or move while concentrating.
|tip Fading Light sucks the light from the targeted player and a random player, drawing them into the Twilight over 5-10 seconds. Upon expiration, players in the Twilight realm die.
|tip Hour of Twilight players caught in the Twilight realm when this occurs take 300,000 Shadow damage. If this doesn't hit a player it generally results in a wipe.
|tip Twilight Burst occurs if all raid members stand outside the range of Ultraxion's claws. He deals 75,000 Shadow damage on all plaers and increases their magical damage taken by 50% for 6 seconds.
confirm
step
kill Warmaster Blackhorn##56427 |goto Dragon Soul/5 48.30,16.80
|tip Shockwave deals 100,000 Physical damage to players in a 80-yard cone in front of the caster, stunning them for 4 seconds.
|tip Siphon Vitality deals damage equal to 20% of the target's remaining health, also healing the caster.
|tip Devastate deals 120% weapon damage and applying Sunder Armor.
|tip Sunder Armor reduces the target's armor by 20% per stack, applying up to 5 times and lasting 30 seconds.
|tip Disrupting Roar deals 50,000 Physical damage to all players and interrupting their spellcasting within 10 yards for 8 seconds.
_Heroic_
|tip Fire will appear on the Deck of the ship, the more damaged the ship the more fire there will be, avoid this fire.
|confirm
step
Defeat the Spine of Deathwing |goto Dragon Soul/6 33.20,85.20
|tip If all players are on one side of Deathwing, he will do a barrel roll, attempting to throw off any players not attached to his back.
_Corruption_ adds
|tip Searing Plasma debuff that absorbs 200,000 healing from the target and dealing 7500 Physical damage periodically.
|tip When killed, these spawn a Hideous Amalgamation add and Corrupted Blood.
|tip Corrupted Blood forms from the hole left by the Corruption. It deals a small amount of damage and prevents players from being thrown off Deathwing's back. When these are killed it creates an untargetable residue, which crawls back to the hole.
_Hideous Amalgamation_
|tip These should be tanked and dragged through the residue created after killing Corrupted Blood, giving it a stack of Absorbed Blood. At 10 stacks, the Amalgamation explodes, removing a nearby armor plate from Deathwing, and likely killing any nearby players.
|tip Seal Armor Breach occurs after a Hideous Amalgamation explodes and removes one of Deathwing's armor plates. If this cast is completed, the armor plate is re-sealed.
|tip This fight ends after 3 armor plates are successfully removed, sending Deathwing down into the Maelstrom.
_Heroic_
|tip During the fight he will apply Blood Corruption Death to random players, if not dispelled it will deal damage to the player and players around the target.
|tip When this is dispelled it will jump to a different player and mutate into Blood Corruption Earth, when this expires it will give a buff reducing damage taken by 20 percent for 2 minutes.
|confirm
step
_Madness of Deathwing - Aspects_ |goto Dragon Soul/7 47.80,53.80
_Alexstrasza_
|tip Alexstrasza's Presence increases the player's maximum health by 20%.
|tip Cauterize inflicts lethal damage to Blistering Tentacles over 10 seconds and reduces the damage inflicted by Corrupted Blood.
_Nozdormu_
|tip Nozdormu's Presence increases the player's haste by 20%.
|tip Time Zone creates a Time Zone at the targeted location, causing Deathwing's Elementium Meteor to greatly decrease its travel speed and also reduces any enemies' attack speed by 50%.
_Ysera_
|tip Ysera's Presence increases player healing by 20%.
|tip Enter the Dream allows players to enter the Dream, decreasing all damage taken by 50% for 2.50 seconds.
_Kalecgos_
|tip Kalecgos' Presence increases player damage dealt by 20%.
|tip Spellweaving allows attacks and abilities to cause Spellweaving, which inflicts 2000 Arcane damage to enemies within 6 yards, but not including the current target.
_Thrall_
|tip Carrying Winds takes players between adjacent platforms and increases their movement speed by 60% for 10 seconds. This effect is stackable.
|confirm
step
kill Deathwing##46471 |goto Dragon Soul/7 47.80,53.80
_Phase 1_
|tip Assault Aspect Deathwing attacks the platform with the largest number of players and an attached limb.
|tip Cataclysm Deathwing attempts to bring forth a 2nd cataclysm, dealing 1,500,000 Fire damage to all players.
|tip Elementium Bolt is cast on a targeted platform. If reached, it deals 390,000 Fire damage every 5.20 seconds
|tip Corrupting Parasite inflicts increasing Shadow damage periodically. Upon expiration, it detaches itself from the player and deals 250,000 Fire damage to players within 10 yards.
|tip Unstable Corruption deals 10% of the Corrupted Parasite's health as Fire damage to all players.
|tip Hemorrhage creates Regenerative Blood at a nearby location that regenerate health and attack the raid.
_Limb Tentacle_
|tip Burning Blood gushes from the Tentacle, inflicting Fire damage every 2 seconds, the damage increasing as the Tentacle's health lowers.
|tip Agonizing Pain the pain from severing Deathwing's limb stuns him and inflicts 20% of his health as damage.
_Mutated Corruption_
|tip Crush deals 100,000 Physical damage to players in a cone in front of the Corruption.
|tip Impale deals 400,000 Physical damage to the Corruption's target.
|tip Phase 2 starts when Deathwing reaches 20% health.
_Heroic_
|tip Corrupted Parasites will spawn and deal damage to all players within 10 yards every 10 seconds, and will periodically deal damage based on its remaining health to the entire raid.
|tip These Parasites need to be killed asap.
Click here to advance to Phase 2. |confirm
step
kill Deathwing##46471 |goto Dragon Soul/7 47.80,53.80
_Phase 2_
|tip Congealing Blood Deathwing begins to hemorrhage, creating Congealing Blood at a nearby location. These move toward him, healing him for 1% of his health if they reach him.
|tip Elementium Fragment Deathwing's armor chips off, forming Elementium Fragments that deal 200,000 Physical damage to random players.
|tip Elementium Terror Deathwing's armor chips off, forming Elementium Terrors that deal 60,000 Physical damage and an additional 20,000 Physical damage every second.
|tip Corrupted Blood deals Fire damage every 2 seconds, the damage increasing as Deathwing's health lowers.
_Heroic_
|tip He will summon many Congealing Bloods, these will run toward Deathwing, these need to be killed asap, if they reach Deathwing they will heal him.
|tip If you are doing this on LFR this is the end of wing 2.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Firelands",{
mapid=367,
achieveid={5802},
patch='40200',
condition_suggested=function() return level>=32 and level<=35 end,
description="This guide will walk you through the Firelands Raid.",
},[[
step
Enter Firelands |goto Mount Hyjal/0 47.58,77.90 < 5
confirm
step
map Firelands/1
path loop off
path	33.20,77.00	41.70,70.40	29.30,62.70
path	16.10,46.10	27.40,44.30
Follow the path, clearing trash as you make your way to the first boss, Beth'tilac. |goto Firelands/1 27.40,44.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Beth'tilac##52498 |goto Firelands/1 20.80,32
_Phase 1_
|tip Ember Flare deals 20,000 Fire damage to players near Beth'tilac.
|tip Meteor Burn deals 40,000 Fire damage to players within 7 yards of the impact. Also burns a hole in the web that players can fall through.
|tip Consume Beth'tilac consumes Cinderweb Spiderlings, healing herself for 10% of her maximum health.
|tip Smoldering Devastation occurs when Bath'tilac's energy fully depletes. She sets herself ablaze, dealing 400,000 Fire damage on all players located on the same level.
_Phase 2_
|tip Frenzy increases her damage by 5%, stacking up to 50 times.
|tip The Widow's Kiss reduces the target's healing by 10%, stacking every 2 seconds for 20 seconds, also causes the affected player to deal damage to all nearby players within 10 yards.
|tip Ember Flare deals 20,000 Fire damage to players on the same level as Beth'tilac.
|tip Consume Beth'tilac consumes Cinderweb Spiderlings, healing herself for 10% of her maximum health.
confirm
step
map Firelands/1
path loop off
path	27.40,44.30	16.10,46.10	29.30,62.70
path	41.70,70.40	53.00,66.50
Follow the path, clearing trash as you make your way to the next boss, _Shannox_. |goto Firelands/1 53.00,66.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shannox##53691 |goto Firelands/1 49.20,46
|tip Immolation Trap Fire trap similar to a Hunter's trap. Deals Fire damage to the player that walks over it and all nearby players.
|tip Crystal Prison Trap trap that stuns the player that walks over it.
|tip Hurl Spear deals large AoE damage to players within 3 yards of the impact point and moderate damage to players within 50 yards. Also creates fire eruptions on the floor around the impact point.
|tip Arcing Slash deals Physical damage in a frontal cleave. Make sure the tank is the only player in front of Shannox when this occurs.
|tip Jagged Tear DoT that deals 2000 damage every 3 seconds for 24 seconds.
confirm
step
map Firelands/1
path loop off
path	64.70,56.60	71.60,71.00
Follow the path, clearing trash as you make your way to the next boss, Lord Rhyolith. |goto Firelands/1 71.60,71.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Rhyolith##52558 |goto Firelands/1 65.60,75.60
|tip Concussive Stomp deals 32,000-38,000 Fire damage to players near Ryolith.
|tip Burning Feet increases movement speed by 100%.
|tip Immolation deals Fire damage every second to players near Ryolith.
|tip Molten Spew Ryolith spits lava at nearby players.
|tip Obsidian Armor reduces damage taken by 1% per stack.
|tip Superheated increases damage dealt by 10% every 10 seconds.
confirm
step
map Firelands/1
path loop off
path	71.60,71.00	64.70,56.60	57.90,51.20
Follow the path, clearing trash as you make your way to the next boss, Alysrazor. |goto Firelands/1 57.90,51.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Alysrazor##52530 |goto Firelands/1 64,39
_Phase 1_
|tip Firestorm deals 31,500 Fire damage to all players and knocking them back, also deals an additional 10,500 Fire damage every second for 10 seconds.
|tip Blazing Claw deals 105,000 Physical damage to players in a 25-yard cone every 1.50 seconds. Each swipe also increases the target's Fire and Physical damage taken by 10% for 15 seconds.
|tip Molting Alysrazor creates _Molten Feathers_ nearby.
|tip Molten Feather these feathers can be picked up by a player, up to a maximum of 3. While holding a feather all spells can be cast while moving and increases movement speed by 30% per feather. If 3 feathers are obtained, the player will gain _Wings of Flame_.
|tip Wings of Flame allows the player to fly for 20 seconds.
Click here to move to Phase 2. |confirm
step
kill Alysrazor##52530 |goto Firelands/1 64,39
_Phase 2_
|tip Fiery Vortex a vortex appears in the middle of the room, dealing 105,000 Fire damage every 0.50 seconds.
|tip Fiery Tornado tornado erupts from the Fiery Vortex, dealing 26,000 Fire damage every second.
|tip Blazing Power rings of fire appear on the ground and last 3 seconds. Players who pass through these gain increased haste by 4% and stacks up to 25 times.
Click here to move to Phase 3. |confirm
step
kill Alysrazor##52530 |goto Firelands/1 64,39
_Phase 3_
|tip Burnout Alystrazor's fire burns out, causing her to become immobile and increasing damage taken by 100% and creating a n Essence of the Green when struck with a spell.
|tip Essence of the Green emits 10% of maximum mana to players.
_Phase 4_
|tip Blazing Buffet deals 10,500 Fire damage to all players every second as long as Alysrazor remains Ignited.
|tip Blazing Claw deals 105,000 Physical damage to players in a 25-yard cone every 1.50 seconds. Each swipe also increases the target's Fire and Physical damage taken by 10% for 15 seconds.
|tip Full Power occurs when Alysrazor reaches 100 Molten Power. This deals 52,500 Fire damage to all players and knocks them back.
confirm
step
kill Baleroc##53494 |goto Firelands/1 49.20,32.80
|tip Blaze of Glory increases the target's maximum health by 20% but also their Physical damage taken by 20%.
|tip Countdown forms a link between 2 players for 8 seconds. After 8 seconds both will explode and deal 125,000 Fire damage to all nearby players unless the linked players move near each other.
|tip Incendiary Soul increases the target's Fire damage taken by 20%.
|tip Decimation Strike deals Shadow damage equal to 90% of the target's maximum health, but always at least 250,000 damage, and reduces the target's healing done by 90% for 4 seconds.
|tip Decimation Blade deals 90% of the target's maximum health.
confirm
step
map Firelands/1
path loop off
path	49.30,17.20	Firelands/3 51.00,90.00
Follow the path, clearing trash as you make your way to the next boss, Majordomo Staghelm. |goto Firelands/3 51.00,90.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Majordomo Staghelm##52571 |goto Firelands/3 50.90,72.40
|tip Fury increases Staghelm's damage by 8% per stack. He gains a stack of this every time he switches between scorpion and cat forms.
|tip Searing Seeds plants fiery seeds into all raid members. Each seed grows at a different rate and explodes when fully grown, dealing 45,000 Fire damage to players within 12 yards.
|tip Fiery Cyclone tosses all raid members into the air, preventing any action but making them invulnerable.
_Scorpion Form_
|tip Flame Scythe inflicts Fire damage in a cone in front of Staghelm, split between all players hit.
_Cat Form_
|tip Leaping Flames leaps at a player, leaving behind a Spirit of the Flame and landing in a blaze, igniting the ground and causing it to deal 19,000 Fire damage every 0.50 seconds for 1 minute.
confirm
step
map Firelands/3
path loop off
path	51.00,90.00	50.60,30.20
Follow the path, clearing trash as you make your way to the next boss, Ragnaros. |goto Firelands/3 50.60,30.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ragnaros##52409 |goto Firelands/3 50.70,15.30
|tip Sulfuras Smash Ragnaros strikes the ground, sending out waves of lava from the impact point.
|tip Magma Trap creates a trap that deals 60,000 Fire damage to all players and knocking back the player that triggered it.
|tip Hand of Ragnaros deals 23,000 Fire damage to all players within 55 yards and knocking them back.
|tip Wrath of Ragnaros deals 45,000 Fire damage to players within 6 yards of the target, also knocking them back.
|tip Molten Seed after 10 seconds they spawn adds that can't be tanked.
|tip Engulfing Flames Ragnaros summons flames around the platform that can obscure the platform.
|tip Living Meteors rains meteors down on targeted players. Damaging the meteors will cause it to roll away and change its path. Anyone struck by one of these will be killed.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds",{
mapid=328,
achieveid={4851},
patch='40003',
condition_suggested=function() return level>=32 and level<=35 end,
description="This guide will walk you through the Throne of the Four Winds Raid.",
},[[
step
Enter Throne of the Four Winds |goto Uldum/0 38.45,80.57 < 5
|tip The entrance to this raid is located on a platform high in the air.
confirm
step
_Conclave of Wind_ |goto Throne of the Four Winds/1 47.50,26
kill Anshal##45870
|tip Soothing Winds summons a green circle on a random player. This heals all players inside it for 20,000 health every second, but also silencing and pacifying them.
|tip Nurture summons a Ravenous Creeper every second for 5 seconds. These use Toxic Spores.
|tip Toxic Spores spores erupt from the caster every second for 5 seconds, afflicting all players within 8 yards with a toxin that deals 500 Nature damage every second for 5 seconds and stacking up to 25 times.
|tip Zephyr occurs at full energy, healing all of his allies for 25,000 health every second and also increasing damage by 15% for 15 seconds.
kill Nezir##45871
|tip Wind Chill deals 5000 Frost damage to all players within 100 yards and increasing all Frost damage taken by 10% for 30 seconds.
|tip Permafrost deals 10,000 Frost damage every second in a cone for 3 seconds.
|tip Ice Patch deals 7800 Frost damage every second to all players within 20 yards and slowing their movement speed by 10%.
|tip Sleet Storm deals 30,000 Frost damage every second to all players within 100 yards, split between all targets.
kill Rohash##45872
|tip Slicing Gale deals 11,000-13,000 Nature damage, increasing Nature damage they take by 5% for 30 seconds.
|tip Wind Blast spins around the platform, blasting the area in front of the caster every second, dealing 10,000 Nature damage and a 200 yard knockback.
|tip Tornado summons 3 nearby tornadoes that move around the area, dealing 42,000 Nature damage to any player that gets within 10 yards.
|tip Hurricane occurs at full energy. Creates a large vortex that catches all nearby players and launches them high into the air and dealing 2500 Nature damage every second for 15 seconds.
|tip Storm Shield will be cast when he gains 30 energy this will give him a shield for 450k and deal 7,800 damage per second to any player on his platform. |only if heroic_dung()
confirm
step
kill Al'Akir##46753 |goto Throne of the Four Winds/1 47.50,50
_Phase 1_ - 100%-80% health.
|tip Ice Storm creates a blizzard that moves around the platform and deals 15,000 Frost damage every 0.50 seconds.
|tip Static Shock shocks all nearby players and deals 1000 Nature damage every second for 5 seconds.
|tip Electrocute channels a bolt at the target that deals increasing Nature damage. Ends if the target moves into melee range of Al'Akir.
|tip Wind Burst deals 28,000-31,000 Nature damage to all players and knocking them back.
|tip Lightning Strike deals 20,000 Nature damage in a cone, facing a random player every second for 30 seconds. All players affected deal an additional 20,000 Nature damage to nearby players.
|tip Squall Line creates a wall of tornadoes that circle around Al'Akir platform with an opening that players must move through.
|tip Static Shock willdeal damage and interrupt anyone within melee range. |only if heroic_dung()
|tip Phase 2 starts when Al'Akir reaches 80% health.
Click here to move to Phase 2. |confirm
step
kill Al'Akir##46753 |goto Throne of the Four Winds/1 47.50,50
_Phase 2_ - 80%-25% health.
|tip Static Shock shocks all nearby players, dealing 1000 Nature damage every second, interrupting spells cast and lasting 5 seconds.
|tip Electrocute channels a bolt at the target that deals increasing Nature damage. Ends if the target moves into melee range of Al'Akir.
|tip Squall Line creates a wall of tornadoes that circle around Al'Akir platform with an opening that players must move through.
|tip Acid Rain deals 500 Nature per second to all players and increasing by 500 damage every 15 seconds until Al'Akir reaches Phase 3.
|tip Stormling summons a Stormling add to attack the raid. When killed it applies Feedback to Al'Akir.
|tip Feedback increases Al'Akir's damage dealt by 10% per stacks for 20 seconds.
_Phase 3_ starts when Al'Akir reaches 25% health.
Click here to move to Phase 3. |confirm
step
kill Al'Akir##46753 |goto Throne of the Four Winds/1 47.50,50
_Phase 3_ - 25% health.
|tip Eye of the Storm increases the caster's movement speed by 300%.
|tip Chain Lightning deals 15,000 Nature damage to a random player and then jumps to an additional nearby player, increasing damage dealt by 30% each jump.
|tip Lightning Rod causes a random player to emit lightning to nearby players after 5 seconds, dealing 5000 Nature damage every second for 5 seconds.
|tip Lightning Cloud summons clouds at the same altitude of the targeted player. After 5 seconds, these clouds erupt in lightning and deal 50,000 Nature damage per second to all players at the same altitude. Lasts 30 seconds.
|tip Wind Burst deals 38,000-42,000 Nature damage to all players and knocking them back.
|tip Lightning will be cast on random players for around 12k damage all throughout this phase. |only if heroic_dung()
confirm
]])
