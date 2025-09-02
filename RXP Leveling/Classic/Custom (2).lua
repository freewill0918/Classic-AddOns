RXPGuides.RegisterGuide([[
#cata
#mop
#version 9
#group +The Molten Front
#name A_0_TMF_PreQuests
#next A_1_TMF_Start
#displayname 0.0 - Molten Front Unlock
step
#include RXPGuides\80-82 Mount Hyjal@part1Start-part1End
step
#include RXPGuides\80-82 Mount Hyjal@part2Start-part2End
]]);

RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXPGuides
#name 67-68 Netherstorm
#version 9
#internal
step
#completewith A529
+Abandon any leftover quests you have from Blade's Edge Mountains
step
.goto Blade's Edge Mountains,74.89,24.48,100,0
.goto Blade's Edge Mountains,77.36,24.53,100,0
.goto Netherstorm,21.81,55.56,40 >> Travel to Netherstorm
.skill riding,225,1
step
#completewith NDM
.goto Netherstorm,31.96,64.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Remi Dodoso|r
.home >> Set your Hearthstone to Area 52
.target Innkeeper Remi Dodoso
step
#label A529
>>Travel to Area 52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r, |cRXP_FRIENDLY_The Wanted Poster|r and |cRXP_FRIENDLY_Ravandwyr|r
.accept 10265 >> Accept Consortium Crystal Collection
.goto Netherstorm,32.44,64.20
.accept 10173 >> Accept The Archmage's Staff
.goto Netherstorm,31.36,66.15
.target Nether-Stalker Khay'ji
.target Ravandwyr
step
#label Penta
.goto Netherstorm,42.46,72.76
>>Kill |cRXP_ENEMY_Pentatharon|r. Loot him for his |cRXP_LOOT_Artifact|r
.complete 10265,1 
.mob Pentatharon
step
#requires TheClaw
#label CPowder
.goto Netherstorm,40.87,72.53
.use 29207 >>Use the |T134381:0|t[Conjuring Powder] in your bags to summon |cRXP_ENEMY_Ekkorash|r. Kill him. Loot him for |cRXP_LOOT_Vargoth's Staff|r
.complete 10173,1 
.mob Ekkorash the Inquisitor
step
.hs >> Hearth to Area 52
.cooldown item,6948,>2
step
>>Return to Area 52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r, |cRXP_FRIENDLY_Papa Wheeler|r, |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r and |cRXP_FRIENDLY_Ravandwyr|r



.accept 10206 >> Accept Pick Your Part

.goto Netherstorm,32.99,64.66
.turnin 10265 >> Turn in Consortium Crystal Collection
.accept 10262 >> Accept A Heap of Ethereals
.goto Netherstorm,32.44,64.20
.turnin 10173 >> Turn in The Archmage's Staff
.accept 10300 >> Accept Rebuilding the Staff
.goto Netherstorm,31.36,66.15
.target Nether-Stalker Khay'ji
.target Ravandwyr
.target Rocket-Chief Fuselage
.target Papa Wheeler
step
#loop
.line Netherstorm,28.16,76.82,28.59,77.91,28.17,79.67,29.23,80.03,29.26,78.72,30.50,79.13,30.62,75.59,31.47,76.40,31.81,75.01,30.92,73.97,30.03,74.68,29.19,75.33,28.16,76.82
.goto Netherstorm,28.16,76.82,55,0
.goto Netherstorm,28.59,77.91,55,0
.goto Netherstorm,28.17,79.67,55,0
.goto Netherstorm,29.23,80.03,55,0
.goto Netherstorm,29.26,78.72,55,0
.goto Netherstorm,30.50,79.13,55,0
.goto Netherstorm,30.62,75.59,55,0
.goto Netherstorm,31.47,76.40,55,0
.goto Netherstorm,31.81,75.01,55,0
.goto Netherstorm,30.92,73.97,55,0
.goto Netherstorm,30.03,74.68,55,0
.goto Netherstorm,29.19,75.33,55,0
.goto Netherstorm,28.16,76.82,55,0
>>Kill the |cRXP_ENEMY_Zaxxis|r. Loot them for their |cRXP_LOOT_Insignias|r
>>Loot the transparent |cRXP_PICK_Ethereal Technology|r boxes on the ground
.complete 10262,1 
.complete 10206,1 
.mob Zaxxis Raider
.mob Zaxxis Stalker
step
>>Return to Area 52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r and |cRXP_FRIENDLY_Papa Wheeler|r
.turnin 10262 >> Turn in A Heap of Ethereals
.accept 10205 >> Accept Warp-Raider Nesaad
.goto Netherstorm,32.44,64.20
.turnin 10206 >> Turn in Pick Your Part
.accept 10333 >> Accept Help Mama Wheeler
.goto Netherstorm,32.99,64.66
.target Nether-Stalker Khay'ji
.target Papa Wheeler
step
#label NDM
.goto Netherstorm,26.82,76.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_N. D. Meancamp|r
.accept 10309 >> Accept It's a Fel Reaver, But with Heart
.target N. D. Meancamp
step
#completewith next
.cast 35282 >>Use the |T133868:0|t[Fel Zapper] in your bags on the |cRXP_ENEMY_Fel Reaver|r to start the event
.use 29447
.target Scrapped Fel Reaver
step
>>Kill the |cRXP_ENEMY_Fel Reaver|r whilst killing waves of mobs that come to try to stop you. Loot the |cRXP_ENEMY_Fel Reaver|r for its |cRXP_LOOT_Heart|r. This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.
.complete 10309,1 
.use 29447
.isOnQuest 10309
.target Scrapped Fel Reaver
.target Zaxxis Ambusher
step
.goto Netherstorm,26.82,76.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_N. D. Meancamp|r
.turnin 10309 >> Turn in It's a Fel Reaver, But with Heart
.isQuestComplete 10309
.target N. D. Meancamp
step
>>Abandon the Fel Reaver quest if you were unable to complete it
.abandon 10309 >> Abandon It's a Fel Reaver, But with Heart
step
.goto Netherstorm,28.27,79.61
>>Kill |cRXP_ENEMY_Warp-Raider Nesaad|r
.complete 10205,1 
.mob Warp-Raider Nesaad
step
>>Return to Area 52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
.turnin 10205 >> Turn in Warp-Raider Nesaad
.accept 10266 >> Accept Request for Assistance
.goto Netherstorm,32.44,64.20
.target Nether-Stalker Khay'ji
step
#loop
.line Netherstorm,32.31,56.81,32.97,56.75,33.79,54.62,32.48,54.86,32.78,53.44,34.20,52.78,35.14,51.33,33.86,50.28,32.67,50.47,30.71,54.55,32.31,56.81
.goto Netherstorm,32.31,56.81,55,0
.goto Netherstorm,32.97,56.75,55,0
.goto Netherstorm,33.79,54.62,55,0
.goto Netherstorm,32.48,54.86,55,0
.goto Netherstorm,32.78,53.44,55,0
.goto Netherstorm,34.20,52.78,55,0
.goto Netherstorm,35.14,51.33,55,0
.goto Netherstorm,33.86,50.28,55,0
.goto Netherstorm,32.67,50.47,55,0
.goto Netherstorm,30.71,54.55,55,0
.goto Netherstorm,32.31,56.81,55,0
>>Kill the |cRXP_ENEMY_Disembodied Protectors|r and |cRXP_ENEMY_Vindicators|r. Loot them for their |cRXP_LOOT_Shards|r
.complete 10300,1 
.mob Disembodied Exarch
.mob Disembodied Protector
.mob Disembodied Vindicator
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravandwyr|r
.turnin 10300 >> Turn in Rebuilding the Staff
.accept 10174 >> Accept Curse of the Violet Tower
.goto Netherstorm,31.36,66.15
.target Ravandwyr
step
#completewith next
.cast 34372 >> Use |T135181:0|t[Archmage Vargoth's Staff] in your bags
.use 28455
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Image of Archmage Vargoth|r
.turnin 10174 >> Turn in Curse of the Violet Tower
.accept 10188 >> Accept The Sigil of Krasus
.use 28455
.target Image of Archmage Vargoth
step
.goto Netherstorm,33.74,63.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krexcil|r
.fp Area 52 >> Get the Area 52 flight path
.target Krexcil
step
>>Travel to Kirin'Var
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadell|r, |cRXP_FRIENDLY_Apprentice Andrethan|r, |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r and |cRXP_FRIENDLY_Custodian Dieworth|r
.accept 10334 >> Accept Needs More Cowbell
.goto Netherstorm,57.73,84.94
.accept 10331 >> Accept Indispensable Tools
.goto Netherstorm,57.71,85.19
.accept 10343 >> Accept The Unending Invasion
.goto Netherstorm,57.58,86.30
.accept 10184 >> Accept Malevolent Remnants
.accept 10185 >> Accept A Fate Worse Than Death
.goto Netherstorm,57.50,86.34
.target Thadell
.target Apprentice Andrethan
.target Lieutenant-Sorcerer Morran
.target Custodian Dieworth
step
.goto Netherstorm,55.68,87.17
>>Loot the |cRXP_PICK_Mana Bomb Fragment|r on the ground
.complete 10343,1 
step
.goto Netherstorm,57.58,86.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
.turnin 10343 >> Turn in The Unending Invasion
.accept 10239 >> Accept Potential Energy Source
.target Lieutenant-Sorcerer Morran
step
#completewith SigilK
>>Loot the |cRXP_PICK_Isolation Cubes|r on the ground
.complete 10239,1 
step
.goto Netherstorm,52.33,82.48,50,0
.goto Netherstorm,52.34,82.72,50,0
.goto Netherstorm,51.91,82.68,50,0
.goto Netherstorm,51.65,82.12,50,0
.goto Netherstorm,51.38,82.12,50,0
.goto Netherstorm,51.32,81.99,50,0
.goto Netherstorm,51.13,82.47,50,0
.goto Netherstorm,50.68,82.30,50,0
.goto Netherstorm,50.91,81.69,50,0
.goto Netherstorm,51.13,81.29,50,0
.goto Netherstorm,51.29,81.20,50,0
.goto Netherstorm,51.75,81.23,50,0
.goto Netherstorm,51.94,81.43
.line Netherstorm,52.33,82.48,52.34,82.72,51.91,82.68,51.65,82.12,51.38,82.12,51.32,81.99,51.13,82.47,50.68,82.30,50.91,81.69,51.13,81.29,51.29,81.20,51.75,81.23,51.94,81.43,52.33,82.48
>>Kill |cRXP_ENEMY_Spellbinder Maryana|r. Loot her for her |cRXP_LOOT_Sigil|r
.complete 10188,1 
.unitscan Spellbinder Maryana
step
#completewith next
.cast 34372 >> Use |T135181:0|t[Archmage Vargoth's Staff] in your bags
.use 28455
step
#label SigilK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Image of Archmage Vargoth|r
.turnin 10188 >> Turn in The Sigil of Krasus
.accept 10192 >> Accept Krasus's Compendium
.target Image of Archmage Vargoth
step
.goto Netherstorm,52.33,82.48,50,0
.goto Netherstorm,52.34,82.72,50,0
.goto Netherstorm,51.91,82.68,50,0
.goto Netherstorm,51.65,82.12,50,0
.goto Netherstorm,51.38,82.12,50,0
.goto Netherstorm,51.32,81.99,50,0
.goto Netherstorm,51.13,82.47,50,0
.goto Netherstorm,50.68,82.30,50,0
.goto Netherstorm,50.91,81.69,50,0
.goto Netherstorm,51.13,81.29,50,0
.goto Netherstorm,51.29,81.20,50,0
.goto Netherstorm,51.75,81.23,50,0
.goto Netherstorm,51.94,81.43
.line Netherstorm,52.33,82.48,52.34,82.72,51.91,82.68,51.65,82.12,51.38,82.12,51.32,81.99,51.13,82.47,50.68,82.30,50.91,81.69,51.13,81.29,51.29,81.20,51.75,81.23,51.94,81.43,52.33,82.48
>>Loot the |cRXP_PICK_Isolation Cubes|r on the ground outside
.complete 10239,1 
step
>>Return to Kirin'Var
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r and |cRXP_FRIENDLY_Custodian Dieworth|r
.turnin 10239 >> Turn in Potential Energy Source
.accept 10240 >> Accept Building a Perimeter
.goto Netherstorm,57.58,86.30
.accept 10222 >> Accept The Sunfury Garrison
.goto Netherstorm,57.50,86.34
.target Lieutenant-Sorcerer Morran
.target Custodian Dieworth
step
#completewith Kirin2
>>Kill |cRXP_ENEMY_Severed Spirits|r and |cRXP_ENEMY_Defenders|r
.complete 10184,1 
.mob Severed Defender
.mob Severed Spirit
step
#completewith next
.line Netherstorm,57.78,88.17,58.10,88.69,58.45,88.33,58.92,88.38,59.03,88.24
.use 29234 >>Kill |cRXP_ENEMY_Abjurist Belmara|r. Loot her for her |cRXP_LOOT_Tome|r. Click |T133739:0|t[Belmara's Tome] in your bags
.collect 29234,1,10305 
.accept 10305 >> Accept Abjurist Belmara
.unitscan Abjurist Belmara
step
>>Go inside the houses. Loot the |cRXP_PICK_Compendium Chapters|r inside of them
.complete 10192,2 
.goto Netherstorm,57.55,89.58
.complete 10192,1 
.goto Netherstorm,58.60,89.21
.complete 10192,3 
.goto Netherstorm,58.82,87.95
step
.line Netherstorm,57.78,88.17,58.10,88.69,58.45,88.33,58.92,88.38,59.03,88.24
.goto Netherstorm,57.78,88.17,50,0
.goto Netherstorm,58.10,88.69,50,0
.goto Netherstorm,58.45,88.33,50,0
.goto Netherstorm,58.92,88.38,50,0
.goto Netherstorm,59.03,88.24
.use 29234 >>Kill |cRXP_ENEMY_Abjurist Belmara|r. Loot her for her |cRXP_LOOT_Tome|r. Click |T133739:0|t[Belmara's Tome] in your bags
.collect 29234,1,10305 
.accept 10305 >> Accept Abjurist Belmara
.unitscan Abjurist Belmara
step
#completewith next
.cast 34372 >> Use |T135181:0|t[Archmage Vargoth's Staff] in your bags
.use 28455
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Image of Archmage Vargoth|r
.turnin 10192 >> Turn in Krasus's Compendium
.accept 10301 >> Accept Unlocking the Compendium
.target Image of Archmage Vargoth
step
#sticky
#label ERune
.goto Netherstorm,59.23,85.36,0,0
.use 28725 >>Use the |T135734:0|t[Rune Activation Device] in your bags on the Kirin'Var Rune
.complete 10240,1 
step
.line Netherstorm,58.98,85.69,59.41,86.20.59.85,86.86,59.70,87.12,59.86,87.42,59.62,87.75,59.52,87.52
.goto Netherstorm,59.52,87.52,50,0
.goto Netherstorm,59.62,87.75,50,0
.goto Netherstorm,59.86,87.42,50,0
.goto Netherstorm,59.70,87.12,50,0
.goto Netherstorm,59.85,86.86,50,0
.goto Netherstorm,59.41,86.20,50,0
.goto Netherstorm,58.98,85.69
.use 29236 >>Kill |cRXP_ENEMY_Cohlien Frostweaver|r. Loot him for his |cRXP_LOOT_Cap|r. Click |T133153:0|t[Cohlien's Cap] in your bags
.collect 29236,1,10307 
.accept 10307 >> Accept Cohlien Frostweaver
.unitscan Cohlien Frostweaver
step
.use 29235 >>Kill |cRXP_ENEMY_Conjurer Luminrath|r. Loot him for his |cRXP_LOOT_Mantle|r. Click |T133775:0|t[Luminrath's Mantle] in your bags
.goto Netherstorm,59.49,86.12,50,0
.goto Netherstorm,60.28,84.90,50,0
.goto Netherstorm,59.91,84.30,50,0
.goto Netherstorm,59.72,84.79
.line Netherstorm,59.72,84.79,59.91,84.30,60.28,84.90,59.49,86.12
.collect 29235,1,10306 
.accept 10306 >> Accept Conjurer Luminrath
.unitscan Conjurer Luminrath
step
#loop
.line Netherstorm,61.00,83.65,61.49,84.25,61.44,85.11,61.17,85.48,61.03,84.67,61.00,83.65
.goto Netherstorm,61.00,83.65,45,0
.goto Netherstorm,61.49,84.25,45,0
.goto Netherstorm,61.44,85.11,45,0
.goto Netherstorm,61.17,85.48,45,0
.goto Netherstorm,61.03,84.67,45,0
.goto Netherstorm,61.00,83.65,45,0
>>Kill |cRXP_ENEMY_Kirin'Var Apprentices|r. Loot them for a |cRXP_LOOT_Smithing Hammer|r
.complete 10331,1 
.mob Kirin'Var Apprentice
step
>>Return to Kirin'Var
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Andrethan|r, |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r and |cRXP_FRIENDLY_Custodian Dieworth|r
.turnin 10331 >> Turn in Indispensable Tools
.accept 10332 >> Accept Master Smith Rhonsus
.goto Netherstorm,57.71,85.19
.accept 10233 >> Accept Torching Sunfury Hold
.goto Netherstorm,57.58,86.30
.turnin 10184 >> Turn in Malevolent Remnants
.accept 10312 >> Accept The Annals of Kirin'Var
.goto Netherstorm,57.50,86.34
.isQuestComplete 10184
.target Apprentice Andrethan
.target Lieutenant-Sorcerer Morran
.target Custodian Dieworth
step
#label Kirin2
#requires ERune
>>Return to Kirin'Var
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Andrethan|r and |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
.turnin 10331 >> Turn in Indispensable Tools
.accept 10332 >> Accept Master Smith Rhonsus
.goto Netherstorm,57.71,85.19
.accept 10233 >> Accept Torching Sunfury Hold
.goto Netherstorm,57.58,86.30
.target Apprentice Andrethan
.target Lieutenant-Sorcerer Morran
step
.goto Netherstorm,57.35,82.90
.use 28725 >>Use the |T135734:0|t[Rune Activation Device] in your bags on the Kirin'Var Rune
.complete 10240,2 
step
#completewith Oculus
>>Kill |cRXP_ENEMY_Sunfury Archers|r
.complete 10222,1 
.mob Sunfury Archer
step
#completewith next
>>Kill |cRXP_ENEMY_Spellreaver Marathelle|r. Loot her for her |cRXP_LOOT_Oculus|r
.complete 10301,1 
.unitscan Spellreaver Marathelle
step
#loop
.line Netherstorm,55.93,80.13,56.52,79.24,57.08,78.44,56.73,77.43,55.88,76.58,55.18,77.40,55.93,80.13
.goto Netherstorm,55.93,80.13,35,0
.goto Netherstorm,56.52,79.24,35,0
.goto Netherstorm,57.08,78.44,35,0
.goto Netherstorm,56.73,77.43,35,0
.goto Netherstorm,55.88,76.58,35,0
.goto Netherstorm,55.18,77.40,35,0
.goto Netherstorm,55.93,80.13,35,0
>>Kill |cRXP_ENEMY_Sunfury Flamekeepers|r in Sunfury Hold. Loot them for a |cRXP_LOOT_Torch|r
.use 28550 >>Quickly use the |T135432:0|t[Flaming Torch] in your bags next to |cRXP_ENEMY_Ballistas|r and |cRXP_ENEMY_Tents|r
>>|cRXP_WARN_Loot another|r |cRXP_LOOT_Torch|r |cRXP_WARN_if it expires (5 minute duration)|r
.collect 28550,1,10233,0x1
.complete 10233,1 
.complete 10233,2 
.mob Sunfury Flamekeeper
step
#label Oculus
>>Kill |cRXP_ENEMY_Spellreaver Marathelle|r. Loot her for her |cRXP_LOOT_Oculus|r
.goto Netherstorm,55.94,78.19,40,0
.goto Netherstorm,55.76,78.78,40,0
.goto Netherstorm,55.46,78.95,40,0
.goto Netherstorm,55.76,78.78,40,0
.goto Netherstorm,56.20,78.77,40,0
.goto Netherstorm,56.40,78.58,40,0
.goto Netherstorm,56.54,77.79,40,0
.goto Netherstorm,56.07,77.25,40,0
.goto Netherstorm,55.52,77.48,40,0
.goto Netherstorm,55.89,76.87,40,0
.goto Netherstorm,56.61,77.47,40,0
.goto Netherstorm,56.89,78.25
.line Netherstorm,55.94,78.19,55.76,78.78,55.46,78.95,55.76,78.78,56.20,78.77,56.40,78.58,56.54,77.79,56.07,77.25,55.52,77.48,55.89,76.87,56.61,77.47,56.89,78.25,56.64,78.97
.complete 10301,1 
.unitscan Spellreaver Marathelle
step
#loop
.line Netherstorm,55.93,80.13,56.52,79.24,57.08,78.44,56.73,77.43,55.88,76.58,55.18,77.40,55.93,80.13
.goto Netherstorm,55.93,80.13,35,0
.goto Netherstorm,56.52,79.24,35,0
.goto Netherstorm,57.08,78.44,35,0
.goto Netherstorm,56.73,77.43,35,0
.goto Netherstorm,55.88,76.58,35,0
.goto Netherstorm,55.18,77.40,35,0
.goto Netherstorm,55.93,80.13,35,0
>>Kill |cRXP_ENEMY_Sunfury Archers|r
.complete 10222,1 
.mob Sunfury Archer
step
#completewith next
.cast 34372 >> Use |T135181:0|t[Archmage Vargoth's Staff] in your bags
.use 28455
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Image of Archmage Vargoth|r
.turnin 10301 >> Turn in Unlocking the Compendium
.accept 10209 >> Accept Summoner Kanthin's Prize
.target Image of Archmage Vargoth
step
.goto Netherstorm,54.30,86.07
.use 28725 >>Use the |T135734:0|t[Rune Activation Device] in your bags on the Kirin'Var Rune
.complete 10240,3 
step
>>Return to Kirin'Var
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r and |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
.turnin 10222 >> Turn in The Sunfury Garrison
.accept 10223 >> Accept Down With Daellis
.goto Netherstorm,57.50,86.34
.turnin 10233 >> Turn in Torching Sunfury Hold
.turnin 10240 >> Turn in Building a Perimeter
.goto Netherstorm,57.58,86.30
.target Lieutenant-Sorcerer Morran
.target Custodian Dieworth
step
.goto 1953/530,2881.500,3339.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
.target Gahruj
.turnin 10266 >>Turn in Request for Assistance
.accept 10267 >>Accept Rightful Repossession
step
.goto 1953/530,2883.500,3355.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Wheeler|r
.target Mama Wheeler
.turnin 10333 >>Turn in Help Mama Wheeler
step
.goto 1953/530,2893.800,3360.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehrdad|r
.target Mehrdad
.accept 10348 >>Accept New Opportunities
.accept 10417 >>Accept Run a Diagnostic!
step
.goto 1953/530,2891.600,3373.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shauly Pore|r
.target Shauly Pore
.accept 10433 >>Accept Keeping Up Appearances
step
.goto Netherstorm,48.23,55.00
>>Loot the |cRXP_PICK_Diagnostic Results|r on the ground
.complete 10417,1 
step
.goto Netherstorm,46.45,56.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehrdad|r
.turnin 10417 >> Turn in Run a Diagnostic!
.accept 10418 >> Accept Deal With the Saboteurs
.target Mehrdad
step
#sticky
#label equipment
#loop
.line Netherstorm,58.84,62.54,58.31,62.97,58.10,62.71,57.76,63.29,57.21,63.42,56.82,63.89,57.34,64.44,57.39,65.29,57.22,65.92,56.95,66.52,57.34,67.19,57.38,66.58,57.22,65.92,57.39,65.29,57.34,64.44,57.91,64.06,57.76,63.29,58.10,62.71,58.31,62.97,58.84,62.54,59.10,63.14,59.45,63.04,59.20,62.36,58.84,62.54
.goto Netherstorm,58.84,62.54,50,0
.goto Netherstorm,58.31,62.97,50,0
.goto Netherstorm,58.10,62.71,50,0
.goto Netherstorm,57.76,63.29,50,0
.goto Netherstorm,57.21,63.42,50,0
.goto Netherstorm,56.82,63.89,50,0
.goto Netherstorm,57.34,64.44,50,0
.goto Netherstorm,57.39,65.29,50,0
.goto Netherstorm,57.22,65.92,50,0
.goto Netherstorm,56.95,66.52,50,0
.goto Netherstorm,57.34,67.19,50,0
.goto Netherstorm,57.38,66.58,50,0
.goto Netherstorm,57.22,65.92,50,0
.goto Netherstorm,57.39,65.29,50,0
.goto Netherstorm,57.34,64.44,50,0
.goto Netherstorm,57.91,64.06,50,0
.goto Netherstorm,57.76,63.29,50,0
.goto Netherstorm,58.10,62.71,50,0
.goto Netherstorm,58.31,62.97,50,0
.goto Netherstorm,58.84,62.54,50,0
.goto Netherstorm,59.10,63.14,50,0
.goto Netherstorm,59.45,63.04,50,0
.goto Netherstorm,59.20,62.36,50,0
.goto Netherstorm,58.84,62.54,50,0
>>Loot the |cRXP_PICK_Surveying Equipment|r boxes on the ground
.complete 10267,1 
step
.line Netherstorm,58.84,62.54,58.31,62.97,58.10,62.71,57.76,63.29,57.21,63.42,56.82,63.89,57.34,64.44,57.39,65.29,57.22,65.92,56.95,66.52,57.34,67.19,57.38,66.58,57.22,65.92,57.39,65.29,57.34,64.44,57.91,64.06,57.76,63.29,58.10,62.71,58.31,62.97,58.84,62.54,59.10,63.14,59.45,63.04,59.20,62.36,58.84,62.54
.goto Netherstorm,58.84,62.54,50,0
.goto Netherstorm,58.31,62.97,50,0
.goto Netherstorm,58.10,62.71,50,0
.goto Netherstorm,57.76,63.29,50,0
.goto Netherstorm,57.21,63.42,50,0
.goto Netherstorm,56.82,63.89,50,0
.goto Netherstorm,57.34,64.44,50,0
.goto Netherstorm,57.39,65.29,50,0
.goto Netherstorm,57.22,65.92,50,0
.goto Netherstorm,56.95,66.52,50,0
.goto Netherstorm,57.34,67.19,50,0
.goto Netherstorm,57.38,66.58,50,0
.goto Netherstorm,57.22,65.92,50,0
.goto Netherstorm,57.39,65.29,50,0
.goto Netherstorm,57.34,64.44,50,0
.goto Netherstorm,57.91,64.06,50,0
.goto Netherstorm,57.76,63.29,50,0
.goto Netherstorm,58.10,62.71,50,0
.goto Netherstorm,58.31,62.97,50,0
.goto Netherstorm,58.84,62.54,50,0
.goto Netherstorm,59.10,63.14,50,0
.goto Netherstorm,59.10,63.14,50,0
.goto Netherstorm,59.45,63.04,50,0
.goto Netherstorm,59.20,62.36
>>Kill |cRXP_ENEMY_Summoner Kanthin|r. Loot him for his |cRXP_LOOT_Stone|r. He patrols around
.complete 10209,1 
.unitscan Summoner Kanthin
step
.goto Netherstorm,56.82,65.70,50,0
.goto Netherstorm,56.54,66.24,50,0
.goto Netherstorm,56.15,66.24,50,0
.goto Netherstorm,55.87,66.75,50,0
.goto Netherstorm,55.50,66.83,50,0
.goto Netherstorm,55.18,66.99
.line Netherstorm,56.82,65.70,56.54,66.24,56.15,66.24,55.87,66.75,55.50,66.83,55.18,66.99
>>Kill |cRXP_ENEMY_Master Daellis Dawnstrike|r. He patrols slightly
.complete 10223,1 
.unitscan Master Daellis Dawnstrike
step
#completewith next
.cast 34372 >> Use |T135181:0|t[Archmage Vargoth's Staff] in your bags
.use 28455
step
#label Daellis
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Image of Archmage Vargoth|r
.turnin 10209 >> Turn in Summoner Kanthin's Prize
.accept 10176 >> Accept Ar'kelos the Guardian
.target Image of Archmage Vargoth
step
#requires equipment
#completewith next
.goto Netherstorm,51.30,71.16,50,0
.goto Netherstorm,51.57,74.34,50 >> Cross the bridge back toward Kirin'Var
.skill riding,225,1
step
#requires equipment
.goto Netherstorm,57.50,86.34
>>Return to Kirin'Var
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
.turnin 10223 >> Turn in Down With Daellis
.target Custodian Dieworth
step
.goto Netherstorm,58.06,86.40,15,0
.goto Netherstorm,58.22,86.58
>>Kill |cRXP_ENEMY_Ar'kelos|r inside the tower
.complete 10176,1 
.mob Ar'kelos
step
.goto Netherstorm,58.34,86.40
>>Go to the top of the tower
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Vargoth|r
.turnin 10176 >> Turn in Ar'kelos the Guardian
.target Archmage Vargoth
step
#completewith next
>>Kill |cRXP_ENEMY_Severed Spirits|r and |cRXP_ENEMY_Defenders|r
.complete 10184,1 
.mob Severed Spirit
.mob Severed Defender
step
.goto Netherstorm,60.57,85.13,40,0
.goto Netherstorm,60.98,85.46,40,0
.goto Netherstorm,61.60,85.30,40,0
.goto Netherstorm,60.94,84.72
.line Netherstorm,60.57,85.13,60.98,85.46,61.60,85.30,60.94,84.72,60.57,85.13
>>Kill |cRXP_ENEMY_Rhonsus|r
.complete 10332,1 
.unitscan Rhonsus
step
#loop
.line Netherstorm,60.59,84.56,60.88,83.55,59.06,84.13,58.74,85.57,59.43,87.41,57.49,88.58,57.44,89.51,58.32,89.64,58.73,90.24,59.78,89.32,60.59,84.56
.goto Netherstorm,60.59,84.56,55,0
.goto Netherstorm,60.88,83.55,55,0
.goto Netherstorm,59.06,84.13,55,0
.goto Netherstorm,58.74,85.57,55,0
.goto Netherstorm,59.43,87.41,55,0
.goto Netherstorm,57.49,88.58,55,0
.goto Netherstorm,57.44,89.51,55,0
.goto Netherstorm,58.32,89.64,55,0
.goto Netherstorm,58.73,90.24,55,0
.goto Netherstorm,59.78,89.32,55,0
.goto Netherstorm,60.59,84.56,55,0
>>Kill |cRXP_ENEMY_Severed Spirits|r and |cRXP_ENEMY_Defenders|r
.complete 10184,1 
.mob Severed Spirit
.mob Severed Defender
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Andrethan|r and |cRXP_FRIENDLY_Custodian Dieworth|r
.turnin 10332 >> Turn in Master Smith Rhonsus
.goto Netherstorm,57.71,85.19
.turnin 10184 >> Turn in Malevolent Remnants
.accept 10312 >> Accept The Annals of Kirin'Var
.goto Netherstorm,57.50,86.34
.target Apprentice Andrethan
.target Custodian Dieworth
step
.goto Netherstorm,60.19,87.32,30,0
.goto Netherstorm,60.40,88.01
.use 29233 >>Kill |cRXP_ENEMY_Dathric|r. Loot him for his |cRXP_LOOT_Annals|r and |cRXP_LOOT_Blade|r. Click |T135359:0|t[Dathric's Blade] in your bags
.complete 10312,1 
.collect 29233,1,10182,1 
.accept 10182 >> Accept Battle-Mage Dathric
.mob Battle-Mage Dathric
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
.turnin 10312 >> Turn in The Annals of Kirin'Var
.accept 10316 >> Accept Searching for Evidence
.goto Netherstorm,57.50,86.34
.target Custodian Dieworth
step
#completewith CohlienSp
>>Kill |cRXP_ENEMY_Mana Seekers|r and |cRXP_ENEMY_Mageslayers|r
.complete 10185,1 
.complete 10185,2 
.mob Mana Seeker
.mob Mageslayer
step
.goto Netherstorm,56.90,86.87
.use 28351 >>Go inside the house. Use |T135359:0|t[Dathric's Blade] in your bags next to the Weapon Rack
.complete 10182,1 
.skill riding,225,1
step
.goto Netherstorm,56.90,86.87
.use 28351 >>Use |T135359:0|t[Dathric's Blade] in your bags next to the Weapon Rack while on top of the house
.complete 10182,1 
.skill riding,<225,1
step
.goto Netherstorm,56.43,87.83
.use 28352 >>Use |T133775:0|t[Luminrath's Mantle] in your bags next to the Dresser
.complete 10306,1 
.skill riding,225,1
step
.goto Netherstorm,56.43,87.83
.use 28352 >>Use |T133775:0|t[Luminrath's Mantle] in your bags while on top of the house
.complete 10306,1 
.skill riding,<225,1
step
.goto Netherstorm,55.49,86.55
.use 28336 >>Use |T133739:0|t[Belmara's Tome] in your bags next to the Bookshelf
.complete 10305,1 
step
.goto Netherstorm,55.09,87.55
.use 28353 >>Use |T133153:0|t[Cohlien's Cap] in your bags next to the Footlocker
.complete 10307,1 
.skill riding,225,1
step
#label CohlienSp
.goto Netherstorm,55.09,87.55
.use 28353 >>Use |T133153:0|t[Cohlien's Cap] in your bags while on top of the house
.complete 10307,1 
.skill riding,<225,1
step
#loop
.line Netherstorm,54.77,87.45,54.77,88.52,54.31,89.25,55.60,89.01,55.89,90.71,57.19,86.64,56.42,85.72,55.72,86.97,55.00,86.95,54.77,87.45
.goto Netherstorm,54.77,87.45,55,0
.goto Netherstorm,54.77,88.52,55,0
.goto Netherstorm,54.31,89.25,55,0
.goto Netherstorm,55.60,89.01,55,0
.goto Netherstorm,55.89,90.71,55,0
.goto Netherstorm,57.19,86.64,55,0
.goto Netherstorm,56.42,85.72,55,0
.goto Netherstorm,55.72,86.97,55,0
.goto Netherstorm,55.00,86.95,55,0
.goto Netherstorm,54.77,87.45,55,0
>>Kill |cRXP_ENEMY_Mana Seekers|r and |cRXP_ENEMY_Mageslayers|r
.complete 10185,1 
.mob +Mana Seeker
.complete 10185,2 
.mob +Mageslayer
step
.goto Netherstorm,57.50,86.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
.turnin 10182 >> Turn in Battle-Mage Dathric
.turnin 10185 >> Turn in A Fate Worse Than Death
.turnin 10305 >> Turn in Abjurist Belmara
.turnin 10306 >> Turn in Conjurer Luminrath
.turnin 10307 >> Turn in Cohlien Frostweaver
.target Custodian Dieworth
step
.goto Netherstorm,59.15,78.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bessy|r. This starts an escort
.turnin 10334 >> Turn in Needs More Cowbell
.target Bessy
step
.goto Netherstorm,60.32,78.37,15,0
.goto Netherstorm,60.30,77.97
>>Enter the Barn. Click on the Focus
.turnin 10316 >> Turn in Searching for Evidence
step
#completewith next
.hs >> Hearth to Area 52
step
.goto Netherstorm,46.66,56.94
>>Return to Midrealm Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
.turnin 10267 >> Turn in Rightful Repossession
.accept 10268 >> Accept An Audience with the Prince
.target Gahruj
step
#completewith RipfangL
>>Loot the |cRXP_PICK_Ivory Bell|r (white and purple flowers) in the Eco-Dome
.complete 10348,1 
.maxlevel 67
step
#completewith next
>>Kill |cRXP_ENEMY_Ripfang Lynxes|r. Loot them for their |cRXP_LOOT_Pelts|r
.complete 10433,1 
.mob Ripfang Lynx
.maxlevel 67
step
#loop
.line Netherstorm,46.94,54.53,47.57,53.95,47.62,52.83,47.02,52.66,46.75,51.68,46.05,50.41,45.29,51.93,45.91,53.50,46.94,54.53
.goto Netherstorm,46.94,54.53,50,0
.goto Netherstorm,47.57,53.95,50,0
.goto Netherstorm,47.62,52.83,50,0
.goto Netherstorm,47.02,52.66,50,0
.goto Netherstorm,46.75,51.68,50,0
.goto Netherstorm,46.05,50.41,50,0
.goto Netherstorm,45.29,51.93,50,0
.goto Netherstorm,45.91,53.50,50,0
.goto Netherstorm,46.94,54.53,50,0
>>Kill |cRXP_ENEMY_Barbscale Crocolisk|r
.complete 10418,1 
.mob Barbscale Crocolisk
step
#label RipfangL
#loop
.line Netherstorm,46.50,49.46,45.71,48.52,44.49,48.48,44.44,49.73,42.99,50.75,42.60,53.37,43.30,54.76,43.19,55.94,44.24,57.16,44.67,54.74,46.50,49.46
.goto Netherstorm,46.50,49.46,50,0
.goto Netherstorm,45.71,48.52,50,0
.goto Netherstorm,44.49,48.48,50,0
.goto Netherstorm,44.44,49.73,50,0
.goto Netherstorm,42.99,50.75,50,0
.goto Netherstorm,42.60,53.37,50,0
.goto Netherstorm,43.30,54.76,50,0
.goto Netherstorm,43.19,55.94,50,0
.goto Netherstorm,44.24,57.16,50,0
.goto Netherstorm,44.67,54.74,50,0
.goto Netherstorm,46.50,49.46,50,0
>>Kill |cRXP_ENEMY_Ripfang Lynxes|r. Loot them for their |cRXP_LOOT_Pelts|r
.complete 10433,1 
.mob Ripfang Lynx
.maxlevel 67
step
#loop
.line Netherstorm,46.50,49.46,45.71,48.52,44.49,48.48,44.44,49.73,42.99,50.75,42.60,53.37,43.30,54.76,43.19,55.94,44.24,57.16,44.67,54.74,45.91,57.22,46.50,49.46
.goto Netherstorm,46.50,49.46,50,0
.goto Netherstorm,45.71,48.52,50,0
.goto Netherstorm,44.49,48.48,50,0
.goto Netherstorm,44.44,49.73,50,0
.goto Netherstorm,42.99,50.75,50,0
.goto Netherstorm,42.60,53.37,50,0
.goto Netherstorm,43.30,54.76,50,0
.goto Netherstorm,43.19,55.94,50,0
.goto Netherstorm,44.24,57.16,50,0
.goto Netherstorm,44.67,54.74,50,0
.goto Netherstorm,45.91,57.22,50,0
.goto Netherstorm,46.50,49.46,50,0
>>Loot the |cRXP_PICK_Ivory Bell|r (white and purple flowers) in the Eco-Dome
.complete 10348,1 
.maxlevel 67
step
.goto Netherstorm,46.48,56.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shauly Pore|r
.turnin 10433 >> Turn in Keeping Up Appearances
.accept 10434 >> Accept The Dynamic Duo
.isQuestComplete 10433
.target Shauly Pore
step
#sticky
#label q10348
.goto Netherstorm,46.45,56.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehrdad|r
.turnin 10348 >> Turn in New Opportunities
.target Mehrdad
.isQuestComplete 10348
step
.goto Netherstorm,46.45,56.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehrdad|r
.turnin 10418 >> Turn in Deal With the Saboteurs
.accept 10423 >> Accept To the Stormspire
.target Mehrdad
step
#requires q10348
>>Go to The Stormspire
.goto Netherstorm,43.54,35.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghabar|r
.turnin 10423 >> Turn in To the Stormspire
.accept 10424 >> Accept Diagnosis: Critical
.target Ghabar
step
.goto Netherstorm,44.74,36.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Audi the Needle|r
.turnin 10434 >> Turn in The Dynamic Duo
.isOnQuest 10434
.target Audi the Needle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghabar|r and |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r
.turnin 10268 >> Turn in An Audience with the Prince
.accept 10269 >> Accept Triangulation Point One
.goto Netherstorm,45.87,35.97
.target Image of Nexus-Prince Haramad
step
.goto Netherstorm,47.64,26.77
.use 29803 >>Use the |T133859:0|t[Diagnostic Device] in your bags at the purple pillar
.complete 10424,1 
step
.goto Netherstorm,66.73,33.89
.use 28962 >> Use the |T135164:0|t[Triangulation Device] in your bags. |cRXP_WARN_Walk 10 yards away then walk into the spot below the red arrow|r
.complete 10269,1 
step
.goto Netherstorm,58.35,31.26
>>Return to the Protectorate Watch Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dealer Hazzin|r
.turnin 10269 >> Turn in Triangulation Point One
.accept 10275 >> Accept Triangulation Point Two
.target Dealer Hazzin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Tuluman|r
.accept 10317 >> Accept Dealing with the Foreman
.goto Netherstorm,34.62,37.95
.target Wind Trader Tuluman
step
.goto Netherstorm,28.74,41.29
.use 29018 >> Use the |T135164:0|t[Triangulation Device] in your bags. |cRXP_WARN_Walk 10 yards away then walk into the spot below the red arrow|r
.complete 10275,1 
step
#completewith next
.goto Netherstorm,26.37,43.91,50 >> Enter the mine
step
.goto Netherstorm,26.37,42.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Sundown|r inside the mine
.turnin 10317 >> Turn in Dealing with the Foreman
.accept 10318 >> Accept Dealing with the Overmaster
.target Foreman Sundown
step
.goto Netherstorm,26.87,41.53,30,0
.goto Netherstorm,26.26,40.38,30,0
.goto Netherstorm,26.92,38.27,30,0
.goto Netherstorm,26.82,35.84
>>Kill |cRXP_ENEMY_Grindgarr|r at the end of the mine
.complete 10318,1 
.mob Overmaster Grindgarr
step
#completewith next
.goto Netherstorm,26.37,43.91,50 >> Exit the mine
step
.goto Netherstorm,34.62,37.95
>>Return to Tuluman's Landing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Tuluman|r
.turnin 10275 >> Turn in Triangulation Point Two
.accept 10276 >> Accept Full Triangle
.turnin 10318 >> Turn in Dealing with the Overmaster
.target Wind Trader Tuluman
step
.goto Netherstorm,53.50,21.53
>>Kill |cRXP_ENEMY_Culuthas|r. Loot him for his |cRXP_LOOT_Crystal|r. This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.
.complete 10276,1 
.mob Culuthas
step
.goto Netherstorm,43.54,35.15
>>Return to The Stormspire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghabar|r and |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r
.turnin 10424 >> Turn in Diagnosis: Critical
step
>>Return to The Stormspire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r
.turnin 10276 >> Turn in Full Triangle
.accept 10280 >> Accept Special Delivery to Shattrath City
.goto Netherstorm,45.87,35.97
.target Image of Nexus-Prince Haramad
step
#completewith next
.goto Netherstorm,45.80,35.64
.zone Shattrath City >> Use |cRXP_WARN_Haramad's Teleporter|r next to |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r to teleport to Shattrath City
step
.goto Shattrath City,53.98,44.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
.turnin 10280 >> Turn in Special Delivery to Shattrath City
.isQuestTurnedIn 10276
.target A'dal
]]);

RXPGuides.RegisterGuide([[
#mop
#group RXP-Pandaria
#name 88-89 Townlong Steppes
#internal

step
#completewith DungeonReminder
+|cFFFF0000REMINDER:|r |cRXP_WARN_Queueing for dungeons using the Group Finder tool is a great way to gain efficient XP as well as acquiring gear upgrades while leveling|r
>>|cRXP_WARN_It is |cFFFF0000highly recommended|r to queue for dungeons and complete them at least once for the quests as you level so you don't fall behind in XP. You can pick up quests and turn them in once inside the dungeons|r
step
.goto 388,71.15,56.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r
.turnin 30768 >>Turn in My Husband...
.target Suna Silentstrike
.isOnQuest 30768










step
#optional
.isOnQuest 31695
.goto 388,71.16,56.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 31695 >>Turn in Beyond the Wall
.accept 30814 >>Accept A Foot in the Door
.target Taran Zhu
step
.goto 388,71.16,56.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.accept 30814 >>Accept A Foot in the Door
.target Taran Zhu
step
#loop
.goto 388,70.33,54.19,55,0
.goto 388,70.06,53.00,55,0
.goto 388,71.12,52.16,55,0
.goto 388,71.47,53.14,55,0
.goto 388,70.33,54.19,0
.goto 388,70.06,53.00,0
.goto 388,71.12,52.16,0
.goto 388,71.47,53.14,0
>>Kill |cRXP_ENEMY_Osul Chargers|r
.complete 30814,1 
.mob Osul Charger
step
#label DungeonReminder
.goto 388,71.16,56.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30814 >>Turn in A Foot in the Door
.accept 30769 >>Accept First Assault
.accept 30770 >>Accept Running Rampant
.accept 30771 >>Accept Perfect Pitch
.target Taran Zhu
step
#completewith Osul Sharphorn
#hidewindow
#loop
.goto 388,68.96,55.25,40,0
.goto 388,68.43,54.65,40,0
.goto 388,67.26,54.54,40,0
.goto 388,67.43,53.88,40,0
.goto 388,68.39,53.10,40,0
.goto 388,68.80,52.01,40,0
.goto 388,69.37,50.29,40,0
+1
step
#completewith Pots
>>Kill |cRXP_ENEMY_Osul Sharphorns|r
.complete 30769,1 
.mob Osul Sharphorn
step
#completewith Pots
>>Click on |cRXP_FRIENDLY_Long-Haired Yaks|r and |cRXP_FRIENDLY_Steppebeasts|r
.complete 30770,1 
.target Long-Haired Yak
.target Steppebeast
step
#label Pots
>>Loot the |cRXP_PICK_Pitch Pots|r on the ground for |cRXP_LOOT_Dark Pitch|r
.complete 30771,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob Osul Sharphorn
step
>>Click on |cRXP_FRIENDLY_Long-Haired Yaks|r and |cRXP_FRIENDLY_Steppebeasts|r
.complete 30770,1 
.target Long-Haired Yak
.target Steppebeast
step
#label Osul Sharphorn
.goto 388,68.96,55.25,0
.goto 388,68.43,54.65,0
.goto 388,67.26,54.54,0
.goto 388,67.43,53.88,0
.goto 388,68.39,53.10,0
.goto 388,68.80,52.01,0
.goto 388,69.37,50.29,0
>>Kill |cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob Osul Sharphorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Suna Silentstrike|r
.turnin 30770 >>Turn in Running Rampant
.turnin 30771 >>Turn in Perfect Pitch
.goto 388,67.201,52.272
.target +Ban Bearheart
.turnin 30769 >>Turn in First Assault
.accept 30772 >>Accept Seeing Red
.accept 30774 >>Accept Ranger Rescue
.goto 388,67.248,52.216
.target +Suna Silentstrike
.accept 30773 >>Accept Pitching In
.goto 388,67.201,52.272
.target +Ban Bearheart
step
.goto 388,67.01,51.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
.accept 30775 >>Accept The Exile
.target Katak the Defeated
step
#completewith KillBattat
>>Kill |cRXP_ENEMY_Osul Marauders|r and |cRXP_ENEMY_Osul Spitfires|r. Loot them for their |T135241:0|t[|cRXP_LOOT_Stone Keys|r]
>>Use the |T135241:0|t[|cRXP_LOOT_Stone Keys|r] to open the |cRXP_PICK_Drywood Cages|r
.complete 30772,1 
.mob +Osul Marauder
.mob +Osul Spitfire
.collect 81178,4,30774,0x2,-1
.mob +Osul Marauder
.mob +Osul Spitfire
.complete 30774,2 
.target Longying Ranger
step
#completewith KillBattat
>>|cRXP_WARN_Use|r |T463515:0|t[Ban's Explosives] |cRXP_WARN_on|r |cRXP_PICK_Osul Ballistas|r
>>|cRXP_WARN_These are the small |cRXP_PICK_Ballistas|r without the spinning flag attached|r
.complete 30773,1 
.use 81193
step
.goto 388/870,3233.100,2710.900
>>Kill |cRXP_ENEMY_Ku-Tong|r
.complete 30775,3 
.mob Ku-Tong
step
.goto 388,66.58,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
.complete 30774,2 
.skipgossip
.target Lin Silentstrike
step
.goto 388/870,3358.000,2638.500
>>Kill |cRXP_ENEMY_Urang|r
.complete 30775,2 
.mob Urang
step
#label KillBattat
.goto 388/870,3305.300,2580.500
>>Kill |cRXP_ENEMY_Battat|r
.complete 30775,1 
.mob Battat
step
#completewith next
>>Kill |cRXP_ENEMY_Osul Marauders|r and |cRXP_ENEMY_Osul Spitfires|r. Loot them for their |T135241:0|t[|cRXP_LOOT_Stone Keys|r]
>>Use the |T135241:0|t[|cRXP_LOOT_Stone Keys|r] to open the |cRXP_PICK_Drywood Cages|r
.complete 30772,1 
.mob +Osul Marauder
.mob +Osul Spitfire
.collect 81178,4,30774,0x1,-1
.complete 30774,1 
.target +Longying Ranger
step
.goto 388,66.14,52.44,40,0
.goto 388,67.49,50.99,40,0
.goto 388,68.05,49.37,40,0
.goto 388,67.27,46.01,40,0
.goto 388,67.43,44.31,40,0
.goto 388,67.10,43.57,40,0
.goto 388,66.34,45.13,40,0
.goto 388,66.25,46.27,40,0
.goto 388,64.89,50.58,40,0
>>|cRXP_WARN_Use|r |T463515:0|t[Ban's Explosives] |cRXP_WARN_on|r |cRXP_PICK_Osul Ballistas|r
>>|cRXP_WARN_These are the small |cRXP_PICK_Ballistas|r without the spinning flag attached|r
.complete 30773,1 
.use 81193
step
.goto 388,66.14,52.44,40,0
.goto 388,67.49,50.99,40,0
.goto 388,68.05,49.37,40,0
.goto 388,67.27,46.01,40,0
.goto 388,67.43,44.31,40,0
.goto 388,67.10,43.57,40,0
.goto 388,66.34,45.13,40,0
.goto 388,66.25,46.27,40,0
.goto 388,64.89,50.58,40,0
>>Kill |cRXP_ENEMY_Osul Marauders|r and |cRXP_ENEMY_Osul Spitfires|r. Loot them for their |T135241:0|t[|cRXP_LOOT_Stone Keys|r]
>>Use the |T135241:0|t[|cRXP_LOOT_Stone Keys|r] to open the |cRXP_PICK_Drywood Cages|r
.complete 30772,1 
.mob +Osul Marauder
.mob +Osul Spitfire
.collect 81178,4,30774,0x1,-1
.mob +Osul Marauder
.mob +Osul Spitfire
.complete 30774,1 
.target +Longying Ranger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Suna Silentstrike|r
.turnin 30774 >>Turn in Ranger Rescue
.turnin 30772 >>Turn in Seeing Red
.turnin 30773 >>Turn in Pitching In
.target +Ban Bearheart
.goto 388,67.21,52.27
.accept 30776 >>Accept Jung Duk
.target +Suna Silentstrike
.goto 388,67.26,52.22
step
.goto 388,66.99,51.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
.turnin 30775 >>Turn in The Exile
.target Katak the Defeated
step
.goto 388,66.66,51
>>Click on the |cRXP_PICK_Ceremonial Pile|r to summon and kill |cRXP_ENEMY_Jung Duk|r
.complete 30776,1 
.mob Jung Duk
step
.goto 388,71.02,56.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30776 >>Turn in Jung Duk
.accept 30777 >>Accept In Search of Suna
.target Ban Bearheart
step
.goto 388,67.94,67.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin -31894 >>Turn in A Delicate Balance
.target Orbiss
.accept 30786 >>Accept A Spear Through My Side, A Chain Through My Soul
step
.groundgoto 388/870,3247.600,1829.800,25,0
.goto 388,68.42,71.46,10,0
.goto 388,67.94,67.66
>>Kill |cRXP_ENEMY_Dmong Naruuk|r
>>|cRXP_WARN_Once his health reaches 1%, return to|r |cRXP_FRIENDLY_Orbiss|r
.complete 30786,1 
.mob Dmong Naruuk
step
.goto 388,67.94,67.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30786 >>Turn in A Spear Through My Side, A Chain Through My Soul
.target Orbiss
.accept 30787 >>Accept The Torches
step
#loop
>>Kill |cRXP_ENEMY_Osul Mist-Shamans|r. Loot the |cRXP_FRIENDLY_Mist-Shaman's Torch|r beside them after they die
.goto 388,66.30,67.89,60,0
.goto 388,65.76,68.96,60,0
.goto 388,67.94,69.51,60,0
.goto 388,66.30,67.89,0
.goto 388,65.76,68.96,0
.goto 388,67.94,69.51,0
.complete 30787,1 
.mob Osul Mist-Shaman
.target Mist-Shaman's Torch
step
.goto 388,67.94,67.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30787 >>Turn in The Torches
.target Orbiss
step
.goto 388,67.94,67.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.accept 30788 >>Accept Golgoss
.accept 30789 >>Accept Arconiss
.target Orbiss
step
.isOnQuest 30788
.goto 388,70.513,69.655,5 >> Click the |cRXP_PICK_Peat Clump|r on the ground
step
.isOnQuest 30789
.goto 388,71.5,72.31,5 >>Click the |cRXP_PICK_Peat Mound|r on the ground
step
#loop
.goto 388,70.42,69.64,20,0
.goto 388,71.50,72.31,20,0
>>Defend both |cRXP_FRIENDLY_Golgoss|r and |cRXP_FRIENDLY_Arconiss|r from the attackers while they are summoned
.complete 30788,1 
.target +Golgoss
.complete 30789,1 
.target +Arconiss
step
.goto 388,67.94,67.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30788 >>Turn in Golgoss
.target Orbiss
.turnin 30789 >>Turn in Arconiss
.accept 30815 >>Accept The Death of Me
.complete 30815,1 
.skipgossip
step
.goto 388,67.94,67.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30815 >>Turn in The Death of Me
.target Orbiss
.accept 30792 >>Accept Orbiss Fades
.accept 30791 >>Accept Arconiss Thirsts
.accept 30790 >>Accept Golgoss Hungers
step
#completewith GushingMist
>>Loot the |cRXP_PICK_Snarlvines|r on the ground
.complete 30790,1 
step
#completewith Snarlvines
>>Kill |cRXP_ENEMY_Swamp Rodents|r. Loot them for their |cRXP_LOOT_Clotted Rodent's Blood|r
.complete 30791,1 
.mob Swamp Rodent
step
#label GushingMist
#loop
.goto 388,73.523,73.700,0
.goto 388,70.654,71.001,50,0
.goto 388,71.639,72.832,50,0
.goto 388,73.523,73.700,50,0
.goto 388,74.694,72.062,50,0
.goto 388,74.562,69.989,50,0
.goto 388,72.836,69.480,50,0
>>Run over the |cRXP_PICK_Gushing Mist|r clouds on the ground to collect it
.complete 30792,1 
step
#label Snarlvines
#loop
.goto 388,74.694,72.062,0
.goto 388,70.654,71.001,50,0
.goto 388,71.639,72.832,50,0
.goto 388,73.523,73.700,50,0
.goto 388,74.694,72.062,50,0
.goto 388,74.562,69.989,50,0
.goto 388,72.836,69.480,50,0
>>Loot the |cRXP_PICK_Snarlvines|r on the ground
.complete 30790,1 
step
#loop
.goto 388,74.562,69.989,0
.goto 388,70.654,71.001,50,0
.goto 388,71.639,72.832,50,0
.goto 388,73.523,73.700,50,0
.goto 388,74.694,72.062,50,0
.goto 388,74.562,69.989,50,0
.goto 388,72.836,69.480,50,0
>>Kill |cRXP_ENEMY_Swamp Rodents|r. Loot them for their |cRXP_LOOT_Clotted Rodent's Blood|r
.complete 30791,1 
.mob Swamp Rodent
step
.goto 388,67.93,67.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30792 >>Turn in Arconiss Thirsts
.target Orbiss
.turnin 30790 >>Turn in Golgoss Hungers
.turnin 30791 >>Turn in Arconiss Thirsts
step
.goto 388,67.93,67.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.target Orbiss
.accept 30793 >>Accept Mists' Opportunity
step
.goto 388,76.53,72.60
>>Kill |cRXP_ENEMY_Jahesh of Osul|r
>>|cRXP_WARN_Wait for the RP to finish|r
.complete 30793,1 
.mob Jahesh of Osul
step
.goto 388,76.19,72.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30793 >>Turn in Mists' Opportunity
.target Orbiss
step
.goto 388,82.68,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30777 >>Turn in In Search of Suna
.accept 30778 >>Accept Dust to Dust
.accept 30779 >>Accept Slaying the Scavengers
.target Ban Bearheart
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r and |cRXP_FRIENDLY_Xiao Tu|r
.accept 30780 >>Accept Totemic Research
.goto 388,82.59,73.02,-1
.target +Yalia Sagewhisper
.accept 30781 >>Accept Last Toll of the Yaungol
.goto 388,82.71,73.17,-1
.target +Xiao Tu
step
#completewith Southern Smoke Trail
>>Kill |cRXP_ENEMY_Ashfang Hyenas|r
.complete 30779,1 
.mob Ashfang Hyena
step
#completewith Southern Smoke Trail
>>Loot the |cRXP_PICK_Palewind Totems|r on the ground
.complete 30780,1 
step
#completewith Southern Smoke Trail
.use 81356 >>|cRXP_WARN_Use the|r |T135432:0|t[Shado-Pan Torch] |cRXP_WARN_on the corpses of|r |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
.goto 388,81.26,72.27
>>|cRXP_WARN_Examine the Western Smoke Trail with|r |cRXP_FRIENDLY_Xiao Tu|r
>>|cRXP_WARN_Wait out the RP while he examines it. In case you lose him, talk to him at his original location|r
.complete 30781,2 
.timer 6,Smoke Trail examined RP
.target Xiao Tu
step
.flyable 
.goto 388,84.12,70.62
>>|cRXP_WARN_Examine the Northwestern Smoke Trail with|r |cRXP_FRIENDLY_Xiao Tu|r
>>|cRXP_WARN_Wait out the RP while he examines it. In case you lose him, talk to him at his original location|r
.complete 30781,4 
.target Xiao Tu
step
.goto 388,84.86,71.55
>>|cRXP_WARN_Examine the Eastern Smoke Trail with|r |cRXP_FRIENDLY_Xiao Tu|r
>>|cRXP_WARN_Wait out the RP while he examines it. In case you lose him, talk to him at his original location|r
.complete 30781,1 
.target Xiao Tu
step
.noflyable
.goto 388,84.12,70.62
>>|cRXP_WARN_Examine the Northwestern Smoke Trail with|r |cRXP_FRIENDLY_Xiao Tu|r
>>|cRXP_WARN_Wait out the RP while he examines it. In case you lose him, talk to him at his original location|r
.complete 30781,4 
.target Xiao Tu
step
#label Southern Smoke Trail
.goto 388,83.49,78.51
>>|cRXP_WARN_Examine the Southern Smoke Trail with|r |cRXP_FRIENDLY_Xiao Tu|r
>>|cRXP_WARN_Wait out the RP while he examines it. In case you lose him, talk to him at his original location|r
.complete 30781,3 
.target Xiao Tu
step
#completewith Villagersburned
>>Kill |cRXP_ENEMY_Ashfang Hyenas|r
.complete 30779,1 
.mob Ashfang Hyena
step
#completewith Villagersburned
>>Loot the |cRXP_PICK_Palewind Totems|r on the ground
.complete 30780,1 
step
#label Villagersburned
#loop
.goto 388,83.02,79.57,55,0
.goto 388,83.00,77.23,55,0
.goto 388,82.62,74.11,55,0
.goto 388,80.27,71.93,55,0
.goto 388,82.65,70.41,55,0
.use 81356 >>|cRXP_WARN_Use the|r |T135432:0|t[Shado-Pan Torch] |cRXP_WARN_on the corpses of|r |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
#completewith next
>>Kill |cRXP_ENEMY_Ashfang Hyenas|r
.complete 30779,1 
.mob Ashfang Hyena
step
#loop
.goto 388,83.02,79.57,55,0
.goto 388,83.00,77.23,55,0
.goto 388,82.62,74.11,55,0
.goto 388,80.27,71.93,55,0
.goto 388,82.65,70.41,55,0
>>Loot the |cRXP_PICK_Palewind Totems|r on the ground
.complete 30780,1 
step
#loop
.goto 388,83.02,79.57,55,0
.goto 388,83.00,77.23,55,0
.goto 388,82.62,74.11,55,0
.goto 388,80.27,71.93,55,0
.goto 388,82.65,70.41,55,0
>>Kill |cRXP_ENEMY_Ashfang Hyenas|r
.complete 30779,1 
.mob Ashfang Hyena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Yalia Sagewhisper|r
.turnin 30778 >>Turn in Dust to Dust
.turnin 30779 >>Turn in Slaying the Scavengers
.turnin 30781 >>Turn in Last Toll of the Yaungol
.target +Ban Bearheart
.goto 388,82.68,73.03
.turnin 30780 >>Turn in Totemic Research
.accept 30827 >>Accept What Lies Beneath
.target +Yalia Sagewhisper
.goto 388,82.6,73.03
step
.goto 388,82.59,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
.complete 30827,1 
.timer 18,What Lies Beneath RP
.skipgossip 60864,1
.target Yalia Sagewhisper
step
.goto 388,82.59,73.25
>>Click on the |cRXP_FRIENDLY_Totem of Kindness|r
.complete 30827,2 
.target Totem of Kindness
step
.goto 388,82.69,73.64
>>Click on the |cRXP_FRIENDLY_Totem of Serenity|r
.complete 30827,4 
.target Totem of Serenity
step
.goto 388,82.42,73.57
>>Click on the |cRXP_FRIENDLY_Totem of Tranquility|r
.complete 30827,3 
.timer 20,What Lies Beneath RP
.target Totem of Tranquility
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30827 >>Turn in What Lies Beneath
.accept 30783 >>Accept Hatred Becomes Us
.target +Yalia Sagewhisper
.goto 388,82.59,73.04
.accept 30782 >>Accept Spiteful Spirits
.target +Ban Bearheart
.goto 388,82.68,73.03
step
#completewith next
>>Kill |cRXP_ENEMY_Spiteful Spirits|r
.complete 30782,1 
.mob Spiteful Spirit
step
#loop
.goto 388,83.22,73.59,45,0
.goto 388,82.28,73.91,45,0
.goto 388,81.97,72.68,45,0
.goto 388,83.02,71.87,45,0
.use 81417 >>|cRXP_WARN_Use the|r |T310733:0|t[Totem of Harmony] |cRXP_WARN_on|r |cRXP_FRIENDLY_Crazed Shado-Pan Rangers|r
>>|cRXP_WARN_Kill the |cRXP_ENEMY_Seething Hatreds|r that spawn afterwards|r
.complete 30783,1 
.target Crazed Shado-Pan Ranger
.mob Seething Hatred
step
#loop
.goto 388,83.22,73.59,45,0
.goto 388,82.28,73.91,45,0
.goto 388,81.97,72.68,45,0
.goto 388,83.02,71.87,45,0
>>Kill |cRXP_ENEMY_Spiteful Spirits|r
.complete 30782,1 
.mob Spiteful Spirit
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30783 >>Turn in Hatred Becomes Us
.goto 388,82.6,73.03
.turnin 30782 >>Turn in Spiteful Spirits
.accept 30784 >>Accept The Point of No Return
.goto 388,82.67,73.03
.target Yalia Sagewhisper
.target Ban Bearheart
step
.goto 388,84.08,70.52
>>Kill |cRXP_ENEMY_Suna Silentstrike|r
.complete 30784,1 
.mob Suna Silentstrike
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30784 >>Turn in The Point of No Return
.accept 30785 >>Accept Gao-Ran Battlefront
.goto 388,82.68,73.02
.target +Ban Bearheart
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
.accept 31894 >>Accept A Delicate Balance
.goto 388,82.59,73.03
.target +Yalia Sagewhisper
.isQuestAvailable 30786
step
.noflyable
#completewith next
.goto 388,78.79,83.43,20,0
.goto 388,76.41,82.44
.subzone 6187 >> Travel to the Gao-Ran Battlefront
step
.goto 388,76.41,82.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30785 >>Turn in Gao-Ran Battlefront
.target Taran Zhu
.accept 30884 >>Accept Behind the Battlefront
step
.isOnQuest 30884
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim the Quiet|r
.target Kim the Quiet
.bindlocation 6187
.goto 388/870,2718.100,1385.000
.home >>Set your Hearthstone to Gao-Ran Battlefront
step
.goto 388,75.86,83.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.accept 30891 >>Accept Treatment for the Troops
.target Septi the Herbalist
step
#completewith next
>>Loot the |cRXP_PICK_Violet Citrons|r on the ground
.complete 30891,1 
step
.goto 388,76.94,78.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30884 >>Turn in Behind the Battlefront
.target Taoshi
.accept 30887 >>Accept Unwelcome Intruders
step
#completewith next
>>Kill |cRXP_ENEMY_Krik'thik Deep-Scouts|r
.complete 30887,1 
.mob Krik'thik Deep-Scout
step
#loop
.goto 388,77.99,80.34,55,0
.goto 388,78.69,80.95,55,0
.goto 388,79.41,78.88,55,0
.goto 388,79.84,76.93,55,0
.goto 388,78.77,75.90,55,0
.goto 388,78.41,75.15,55,0
.goto 388,76.48,76.91,55,0
>>Loot the |cRXP_PICK_Violet Citrons|r on the ground
.complete 30891,1 
step
#loop
.goto 388,77.99,80.34,55,0
.goto 388,78.69,80.95,55,0
.goto 388,79.41,78.88,55,0
.goto 388,79.84,76.93,55,0
.goto 388,78.77,75.90,55,0
.goto 388,78.41,75.15,55,0
.goto 388,76.48,76.91,55,0
>>Kill |cRXP_ENEMY_Krik'thik Deep-Scouts|r
.complete 30887,1 
.mob Krik'thik Deep-Scout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Mao the Lookout|r
.turnin 30887 >>Turn in Unwelcome Intruders
.accept 30888 >>Accept Breach in the Defenses
.accept 30890 >>Accept The Restless Watch
.target +Taoshi
.goto 388,79.47,84.47
.accept 30889 >>Accept Trap Setting
.target +Mao the Lookout
.goto 388,79.38,84.45
step
#completewith ScoutJai
>>Kill |cRXP_ENEMY_Krik'thik Scentlayers|r
>>|cRXP_WARN_They become revealed as you approach the moving brown clouds on the ground|r
.use 81925 >>|cRXP_WARN_You can also use the|r |T135815:0|t[Shado-Pan Flare] |cRXP_WARN_to reveal them|r
.complete 30888,1 
.mob Krik'thik Scentlayer
step
#completewith ScoutJai
>>Click on the |cRXP_PICK_Shado-Pan Spike Traps|r
.complete 30889,1 
step
.goto 388,82.21,84.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Wei-chin|r
.complete 30890,1 
.skipgossip
.target Scout Wei-chin
step
.goto 388,81.30,86.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Long|r
.complete 30890,2 
.skipgossip
.target Scout Long
step
.goto 388,82.52,89.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Ying|r
.complete 30890,3 
.skipgossip
.target Scout Ying
step
#label ScoutJai
.goto 388,79.02,90.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jai-gan|r
.complete 30890,4 
.skipgossip
.target Scout Jai-gan
step
#completewith next
>>Kill |cRXP_ENEMY_Krik'thik Scentlayers|r
>>|cRXP_WARN_They become revealed as you approach the moving brown clouds on the ground|r
.use 81925 >>|cRXP_WARN_You can also use the|r |T135815:0|t[Shado-Pan Flare] |cRXP_WARN_to reveal them|r
.complete 30888,1 
.mob Krik'thik Scentlayer
step
#loop
.goto 388,80.71,87.11,55,0
.goto 388,81.30,83.97,55,0
.goto 388,81.34,82.25,55,0
.goto 388,81.98,84.61,55,0
.goto 388,81.87,88.40,55,0
.goto 388,81.11,90.75,55,0
>>Click on the |cRXP_PICK_Shado-Pan Spike Traps|r
.complete 30889,1 
step
#loop
.goto 388,80.71,87.11,55,0
.goto 388,81.30,83.97,55,0
.goto 388,81.34,82.25,55,0
.goto 388,81.98,84.61,55,0
.goto 388,81.87,88.40,55,0
.goto 388,81.11,90.75,55,0
>>Kill |cRXP_ENEMY_Krik'thik Scentlayers|r
.use 81925 >>|cRXP_WARN_They become revealed as you approach the moving brown clouds on the ground|r
.complete 30888,1 
.mob Krik'thik Scentlayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Mao the Lookout|r
.turnin 30888 >>Turn in Breach in the Defenses
.turnin 30890 >>Turn in The Restless Watch
.accept 30960 >>Accept Returning from the Pass
.target +Taoshi
.goto 388,79.46,84.47
.turnin 30889 >>Turn in Trap Setting
.target +Mao the Lookout
.goto 388,79.39,84.46
step
.goto 388,76.41,82.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30960 >>Turn in Returning from the Pass
.accept 30893 >>Accept The Endless Swarm
.target Taran Zhu
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.turnin 30891 >>Turn in Treatment for the Troops
.target Septi the Herbalist
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.accept 30892 >>Accept Back on Their Feet
.accept 30894 >>Accept Rummaging Through the Remains
.target Septi the Herbalist
step
#completewith next
>>Kill |cRXP_ENEMY_Krik'thik Limbpincers|r and |cRXP_ENEMY_Krik'thik Locust-Guards|r
>>Loot the |cRXP_PICK_Krik'thik Limbs|r they can sometimes drop on the ground
.complete 30893,1 
.complete 30894,1 
.mob Krik'thik Locust-Guard
.mob Krik'thik Limbpincer
step
#loop
.goto 388,73.68,86.64,55,0
.goto 388,73.53,88.82,55,0
.goto 388,74.50,90.48,55,0
.goto 388,75.25,89.01,55,0
.goto 388,74.78,87.34,55,0
.goto 388,74.72,85.84,55,0
.use 82787 >>|cRXP_WARN_Use the|r |T237266:0|t[Citron-Infused Bandages] |cRXP_WARN_on|r |cRXP_FRIENDLY_Injured Gao-ran Blackguards|r
>>|cRXP_WARN_You may also use your own healing spells on them|r << Paladin/Shaman/Priest/Druid/Monk
.complete 30892,1 
.target Injured Gao-Ran Blackguard
step
#loop
.goto 388,73.68,86.64,55,0
.goto 388,73.53,88.82,55,0
.goto 388,74.50,90.48,55,0
.goto 388,75.25,89.01,55,0
.goto 388,74.78,87.34,55,0
.goto 388,74.72,85.84,55,0
#label Krik'thik Limbpincer
>>Kill |cRXP_ENEMY_Krik'thik Limbpincers|r and |cRXP_ENEMY_Krik'thik Locust-Guards|r
>>Loot the |cRXP_PICK_Krik'thik Limbs|r they can sometimes drop on the ground
.complete 30893,1 
.complete 30894,1 
.mob Krik'thik Locust-Guard
.mob Krik'thik Limbpincer
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.turnin -30892 >>Turn in Back on Their Feet
.turnin -30894 >>Turn in Rummaging Through the Remains
.target Septi the Herbalist
step
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin -30893 >>Turn in The Endless Swarm
.target Taran Zhu
step
.isQuestTurnedIn 30893
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.accept 30895 >>Accept Improvised Ammunition
.target Taran Zhu
step
.isQuestTurnedIn 30893
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r and |cRXP_FRIENDLY_Initiate Chao|r
.accept 30896 >>Accept Thieves and Troublemakers
.target +Initiate Feng
.goto 388,70.46,86.37
.accept 30897 >>Accept In the Wrong Hands
.target +Initiate Chao
.goto 388,70.33,86.67
step
#completewith next
>>Kill |cRXP_ENEMY_Agitated Nettleskins|r and |cRXP_ENEMY_Agitated Seedstealers|r. Loot them for their |cRXP_LOOT_Volatile Dread Orbs|r
>>Loot the |cRXP_PICK_Dread Orbs|r on the ground for |cRXP_LOOT_Volatile Dread Orbs|r
.complete 30896,1 
.complete 30895,1 
.mob Agitated Nettleskin
.mob Agitated Seedstealer
step
.goto 388,63.06,87.67
>>Kill |cRXP_ENEMY_Needlebottom|r. Loot him for |cRXP_LOOT_Initiate Chao's Sword|r
.complete 30897,1 
.mob Needlebottom
step
#loop
.goto 388,65.27,87.95,70,0
.goto 388,67.00,87.12,70,0
.goto 388,68.90,89.21,70,0
.goto 388,68.65,85.72,70,0
.goto 388,69.97,84.44,70,0
>>Kill |cRXP_ENEMY_Agitated Nettleskins|r and |cRXP_ENEMY_Agitated Seedstealers|r. Loot them for their |cRXP_LOOT_Volatile Dread Orbs|r
>>Loot the |cRXP_PICK_Dread Orbs|r on the ground for |cRXP_LOOT_Volatile Dread Orbs|r
.complete 30896,1 
.complete 30895,1 
.mob Agitated Nettleskin
.mob Agitated Seedstealer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r and |cRXP_FRIENDLY_Initiate Chao|r
.turnin -30897 >>Turn in In the Wrong Hands
.target +Initiate Chao
.goto 388,70.34,86.67,-1
.turnin -30896 >>Turn in Thieves and Troublemakers
.target +Initiate Feng
.goto 388,70.46,86.38,-1
step
.goto 388,76.41,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin -30895 >>Turn in Improvised Ammunition
.target Taran Zhu
step
.isQuestTurnedIn 30895
.goto 388,76.41,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.accept 30898 >>Accept Cutting the Swarm
.target Taran Zhu
step
.goto 388,74.8,84.72
.isOnQuest 30898
.vehicle >>Enter the |cRXP_FRIENDLY_Dragon Launcher|r

step
.isOnQuest 30898
>>|cRXP_WARN_Cast|r |T135597:0|t[Dragon Cannon] |cRXP_WARN_to kill the incoming|r |cRXP_ENEMY_Krik'thik Drones|r
.complete 30898,1 
.mob Krik'thik Drone
step
.goto 388,74.22,85.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin -30898 >>Turn in Cutting the Swarm
.target Taoshi
step
.isQuestTurnedIn 30898
.goto 388,74.22,85.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.accept 30900 >>Accept Terror of the Dread Wastes
.target Taoshi
step
.isOnQuest 30900
.goto 388/870,2806.000,1213.300
>>Kill |cRXP_ENEMY_Norvakess|r
.complete 30900,1 
.mob Norvakess
step
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin -30900 >>Turn in Terror of the Dread Wastes
.target Taran Zhu
step
.isQuestTurnedIn 30900
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.accept 30901 >>Accept Along the Southern Front
.target Taran Zhu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Nenshi|r
.target Kite Master Nenshi
.goto 388/870,2804.100,1436.700
.fp Gao-Ran >>Get the Gao-Ran Battlefront Flight Path
.noflyable
step
.goto 388,67.31,80.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
>>|cRXP_WARN_If you cannot see |cRXP_FRIENDLY_Taoshi|r, log out and back in|r
.turnin -30901 >>Turn in Along the Southern Front
.target Taoshi
.accept 30970 >>Accept Enraged By Hatred
step
.goto 388,67.36,80.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Pao-Me|r
.accept 30971 >>Accept Taking Stock
.target Initiate Pao-Me
step
#completewith Seething Fleshripper
#hidewindow
#loop
.goto 388,64.17,82.63,55,0
.goto 388,66.69,83.71,55,0
.goto 388,66.65,81.43,55,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Seething Fleshrippers|r
.complete 30970,1 
.mob Seething Fleshripper
step
>>Loot the |cRXP_PICK_Shado-Pan Fire Arrows|r on the ground
.complete 30971,1 
step
#label Seething Fleshripper
>>Kill |cRXP_ENEMY_Seething Fleshrippers|r
.complete 30970,1 
.mob Seething Fleshripper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Initiate Pao-Me|r
.turnin 30970 >>Turn in Enraged By Hatred
.target +Taoshi
.goto 388,67.32,80.86
.turnin 30971 >>Turn in Taking Stock
.accept 30972 >>Accept Joining the Fight
.target +Initiate Pao-Me
.goto 388,67.37,80.67
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r and |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30972 >>Turn in Joining the Fight
.target +Lao-Chin the Iron Belly
.goto 388,61.59,79.36
.accept 30973 >>Accept Up In Flames
.target +Taran Zhu
.goto 388,61.64,79.33
step
#loop
.goto 388,61.24,79.28,70,0
.goto 388,58.51,80.05,70,0
.goto 388,62.14,79.64,70,0
.goto 388,60.58,81.01,70,0
.pin 388,60.58,81.01
.pin 388,61.24,79.28
>>Kill |cRXP_ENEMY_Kor'thik Timberhusks|r
>>|cRXP_WARN_Click on the |cRXP_FRIENDLY_Keg Bombs|r to roll them into the |cRXP_ENEMY_Kor'thik Timberhusks|r, then drag them into the fire which the |cRXP_FRIENDLY_Dusklight Rangers|r shoot. << !Hunter !Mage !Priest !Warlock !Shaman
>>This quest is buggy, consider brute forcing them down instead. If you have the option to remove their buff using spells or a glyph, do that instead|r << !Hunter !Mage !Priest !Warlock !Shaman !Monk
>>|cRXP_WARN_Use a fire damage spell to remove their damage shield|r << Warlock/Shaman/Mage
.usespell 19801>>Use |cRXP_WARN_Tranquilizing Shot|r or any fire trap to remove their damage shield << Hunter
.usespell 528>>Use |cRXP_WARN_Dispel Magic|r to remove their damage shield << Priest
>>If you have a Brewmaster spec, consider doing this quest as a Brewmaster, your fire breath ability can remove their damage shield, it's faster to kill everything yourself << Monk
>>If you have a Protection spec and |cRXP_WARN_Glyph of Shield Slam|r, it's faster to kill them yourself << Warrior
>>If you have |cRXP_WARN_Glyph of Icy Touch|r it's faster to kill them yourself << DK
.complete 30973,1 
.mob Kor'thik Timberhusk
.target Keg Bomb
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r and |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30973 >>Turn in Up In Flames
.target +Taran Zhu
.goto 388,61.64,79.32
.accept 30975 >>Accept The Taking of Dusklight Bridge
.target +Lao-Chin the Iron Belly
.goto 388,61.6,79.35
step
#completewith next
.isOnQuest 30975
.goto 422,44.87,9.87,10 >> |cRXP_WARN_Travel to the other end of the bridge|r
step
#label Hulking Kor'thik Fleshrender
.goto 422,43.33,10.89,20,0
.goto 422,44.38,12.08,20,0
.goto 422,45.57,11.24,20,0
.goto 422,44.85,9.96
>>Kill |cRXP_ENEMY_Kor'thik Bloodletters|r and the |cRXP_ENEMY_Hulking Kor'thik Fleshrender|r
>>|cRXP_WARN_Click on the |cRXP_PICK_Tasty Brew|r barrels for a 200% damage increase buff|r
.complete 30975,1 
.complete 30975,2 
.mob Kor'thik Bloodletter
.mob Hulking Kor'thik Fleshrender
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin the Flying Keg|r
.target Jin the Flying Keg
.goto 422/870,3451.700,980.500
.fp The Sunset Brewgarden>>Get The Sunset Brewgarden Flight Path
.noflyable
step
.groundgoto 422,44.85,9.96,20,0
.goto 388,61.11,83.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30975 >>Turn in The Taking of Dusklight Bridge
.target Taran Zhu
.accept 30976 >>Accept Joining the Hunt
step
#completewith next
.subzone 6193 >> Travel to Rensai's Watchpost
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Li-Sen|r
.target Kite Master Li-Sen
.goto 388/870,3960.800,1531.200
.fp Rensai's Watchpost >>Get the Rensai's Watchpost Flight Path
.zoneskip 388,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r and |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 30976 >>Turn in Joining the Hunt
.accept 30899 >>Accept In Skilled Hands
.target +Taran Zhu
.goto 388,54.04,78.08
.accept 30977 >>Accept Grounded Welcome
.target +Rensai Oakhide
.goto 388,53.93,78.14
step
.goto 388,51.27,83.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
.accept 31032 >>Accept Choking the Skies
.target Marksman Ye
step
#completewith next
>>Kill |cRXP_ENEMY_Kor'thik Fleetwings|r
>>|cRXP_WARN_Use|r |T135433:0|t[Wu Kao Torch] |cRXP_WARN_on their corpses|r
.complete 30977,1 
.complete 31032,1 
.mob Kor'thik Fleetwing
.use 83768
step
.goto 388,51.67,87.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30899 >>Turn in In Skilled Hands
.target Hawkmaster Nurong
.accept 30978 >>Accept Hostile Skies
step
.goto 388,51.66,87.31
.isOnQuest 30978
.vehicle >>Enter |cRXP_PICK_Nurong's Cannon|r
.target Nurong's Cannon
step
#loop
.goto 422,55.85,19.61,20,0
.goto 388,51.66,87.31,20,0
>>|cRXP_WARN_Use|r |T135597:0|t[Nurong's Cannon Shot] (1) |cRXP_WARN_to kill|r |cRXP_ENEMY_Kor'thik Swarmers|r
>>|cRXP_WARN_Kill |cRXP_ENEMY_Voress'thalik|r once she spawns|r


.complete 30978,1 
.mob +Kor'thik Swarmer
.complete 30978,2 
.mob +Voress'thalik
step
.goto 388,51.67,87.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
>>|cRXP_WARN_You may have to relog if he's not there|r
.turnin 30978 >>Turn in Hostile Skies
.target Hawkmaster Nurong
.accept 30979 >>Accept Devastation Below
step
.noflyable
#completewith next
.goto 388,54.288,87.378,60 >> |cRXP_WARN_You can safely jump off the edge as you have a Slow Fall buff|r
step
#loop
.goto 388,54.350,86.341,0
.goto 388,54.288,87.378,25,0
.goto 388,54.350,86.341,25,0
.goto 388,55.509,85.454,25,0
>>Kill |cRXP_ENEMY_Voress'thalik|r
.complete 30979,1 
.mob Voress'thalik
step
.goto 388,53.99,86.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30979 >>Turn in Devastation Below
.accept 30980 >>Accept Heroes of the Shado-Pan
.target Hawkmaster Nurong
step
.isOnQuest 30977,31032
#loop
.goto 388,52.28,82.91,45,0
.goto 388,50.37,84.64,45,0
.goto 388,51.30,85.97,45,0
.goto 388,52.28,82.91,0
.goto 388,50.37,84.64,0
.goto 388,51.30,85.97,0
>>Kill |cRXP_ENEMY_Kor'thik Fleetwings|r
>>|cRXP_WARN_Use|r |T135433:0|t[Wu Kao Torch] |cRXP_WARN_on their corpses|r
.beta >>The archers are supposed to shoot them into the ground, if they are not doing anything, skip this quest
.complete 30977,1 
.complete 31032,1 
.mob Kor'thik Fleetwing
.use 83768
step
.isQuestComplete 31032
.goto 388,51.26,83.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
.turnin 31032 >>Turn in Choking the Skies
.target Marksman Ye
step
.isQuestComplete 30977
.goto 388,53.92,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 30977 >>Turn in Grounded Welcome
.target Rensai Oakhide
step
.goto 388,54.07,77.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30980 >>Turn in Heroes of the Shado-Pan
.target Taran Zhu
.accept 31065 >>Accept Buried Beneath
step
.goto 388,53.49,77.40
>>Click on |cRXP_PICK_Wu Kao Spyglass|r
>>|cRXP_WARN_You can skip the cinematic|r
.complete 31065,1 
step
.goto 388,54.06,77.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 31065 >>Turn in Buried Beneath
.target Taran Zhu
.accept 30981 >>Accept Taoshi and Korvexxis
.accept 31063 >>Accept Lao-Chin and Serevex
.accept 31064 >>Accept Nurong and Rothek
step
.goto 388,53.94,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.accept 31687 >>Accept Thinning the Sik'thik
.accept 31688 >>Accept The Search for Restless Leng
.target Rensai Oakhide
step
#completewith cages
>>Kill |cRXP_ENEMY_Sik'thik Mantids|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
#completewith Serevex
>>Click on |cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Korvexxis
.goto 388,46.64,83.04
>>Kill |cRXP_ENEMY_Korvexxis|r
.complete 30981,1 
.mob Korvexxis
step
#label Rothek
.goto 388,39.82,75.66
>>Kill |cRXP_ENEMY_Rothek|r
.complete 31064,1 
.mob Rothek
step
#label Serevex
.goto 388,45.35,77.39
>>Kill |cRXP_ENEMY_Serevex|r
.complete 31063,1 
.mob Serevex
step
#completewith Sik'thik Mantids
#hidewindow
#loop
.goto 388,40.70,80.95,40,0
.goto 388,42.62,78.48,40,0
.goto 388,44.29,77.31,40,0
.goto 388,46.64,76.70,40,0
.goto 388,46.60,74.42,40,0
.goto 388,49.41,78.82,40,0
.goto 388,47.78,83.93,40,0
.goto 388,46.95,86.57,40,0
.goto 388,40.70,80.95,0
.goto 388,42.62,78.48,0
.goto 388,44.29,77.31,0
.goto 388,46.64,76.70,0
.goto 388,46.60,74.42,0
.goto 388,49.41,78.82,0
.goto 388,47.78,83.93,0
.goto 388,46.95,86.57,0
.complete 31687,1 
.complete 31688,1 
.complete 31688,2 
step
#label cages
>>Click on |cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Sik'thik Mantids
>>Kill |cRXP_ENEMY_Sik'thik Mantids|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
.goto 388,47.49,78.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30981 >>Turn in Nurong and Rothek
.target Taran Zhu
.turnin 31063 >>Turn in Lao-Chin and Serevex
.turnin 31064 >>Turn in Nurong and Rothek
.accept 30968 >>Accept The Sha of Hatred
step
.waypoint 388,45.901,82.893
.wpradius 388,45.901,82.893,175
.goto 388/870,4361.200,1524.500
>>Enter the Sik'vess Lair and defeat the |cRXP_ENEMY_Sha of Hatred|r
>>|cRXP_WARN_If the big triangular door is closed, log out and log back in to skip the RP|r
.complete 30968,1 
.pin 388,45.901,82.893
.timer 8,The Sha of Hatred RP
.mob Sha of Hatred
step
.goto 388,46.12,82.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30968 >>Turn in The Sha of Hatred
.target Taoshi
step
#optional
.goto 388,46.12,82.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.accept 31656 >>Accept The Threat in the South
.target Taoshi
.xp <89,1
step
#completewith next
.goto 388,47.204,79.539,30 >>Exit the Sik'vess Lair
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.accept 30921 >>Accept The Motives of the Mantid
.accept 30923 >>Accept Set the Mantid Back
.target Tai Ho
step
#loop
.goto 388,49.15,71.31,10,0
.goto 388/870,4251.600,1852.600,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
>>|cRXP_FRIENDLY_Provisioner Bamfu|r |cRXP_WARN_patrols slightly|r
.accept 30922 >>Accept Natural Antiseptic
.accept 30963 >>Accept The Field Armorer
.accept 30964 >>Accept A Proper Poultice
.target Provisioner Bamfu
step
.goto 388,49.14,71.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.accept 30921 >>Accept The Motives of the Mantid
.accept 30923 >>Accept Set the Mantid Back
.target Tai Ho
step
.isOnQuest 30921
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kali the Night Watcher|r
.target Kali the Night Watcher
.goto 388/870,4273.600,1845.900
.home >>Set your Hearthstone to Shado-Pan Garrison
.bindlocation 6197
step
#completewith krivess
>>Kill |cRXP_ENEMY_Longshadow Mushans|r and |cRXP_ENEMY_Longshadow Bulls|r. Loot them for their |cRXP_LOOT_Full Mushan Bladders|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#completewith krivess
>>Kill |cRXP_ENEMY_Rankbite Tortoises|r and |cRXP_ENEMY_Rankbite Ancients|r. Loot them for their |cRXP_LOOT_Rankbite Shell Fragments|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#completewith Gunpowder Casks
>>Loot the |cRXP_PICK_Mao-Willow's|r on the ground
.complete 30964,1 
step
.isOnQuest 30921
#label krivess
.goto 388/870,4179.200,2351.500,30,0
.goto 388/870,4028.300,2525.900,30,0
.goto 388/870,3921.100,2632.700,30,0
.line 388/870,4179.200,2351.500,4028.300,2525.900,3921.100,2632.700,3848.600,2597.000
.subzone 6205 >> Head to Kri'vess, north of the big tree
step
#completewith Gunpowder Casks
>>Kill |cRXP_ENEMY_Kri'thik Screamers|r and |cRXP_ENEMY_Kri'thik Boneslicers|r to find the clues
>>|cRXP_WARN_Kill one at a time and let|r |cRXP_FRIENDLY_Tai Ho|r |cRXP_WARN_examine their corpse after you kill them|r
.complete 30921,1 
.complete 30921,2 
.complete 30921,3 
.complete 30921,4 
.mob Kri'thik Screamer
.mob Kri'thik Boneslicer
step
.goto 388,55.41,53.09
.use 81891 >>|cRXP_WARN_Use the|r |T463484:0|t[Gunpowder Casks] |cRXP_WARN_on the Weapons|r
.complete 30923,1 
step
#label Gunpowder Casks
.goto 388,56.59,54.04
.use 81891 >>|cRXP_WARN_Use the|r |T463484:0|t[Gunpowder Casks] |cRXP_WARN_on the Supplies|r
.complete 30923,2 
step
#completewith next
>>Loot the |cRXP_PICK_Mao-Willow's|r on the ground
.complete 30964,1 
step
#loop
.goto 388,57.59,53.91,40,0
.goto 388,56.84,50.49,40,0
.goto 388,55.29,51.79,40,0
.goto 388,55.97,54.82,40,0
.goto 388,57.59,53.91,0
.goto 388,56.84,50.49,0
.goto 388,55.29,51.79,0
.goto 388,55.97,54.82,0
>>Kill |cRXP_ENEMY_Kri'thik Screamers|r and |cRXP_ENEMY_Kri'thik Boneslicers|r to find the clues
>>|cRXP_WARN_Kill one at a time and let|r |cRXP_FRIENDLY_Tai Ho|r |cRXP_WARN_examine their corpse after you kill them|r
.complete 30921,1 
.complete 30921,2 
.complete 30921,3 
.complete 30921,4 
.mob Kri'thik Screamer
.mob Kri'thik Boneslicer
step
#completewith Full Mushan Bladder
#hidewindow
#loop
.goto 388,56.83,50.58,70,0
.goto 388,57.59,54.05,70,0
.goto 388,58.51,56.64,70,0
.goto 388,59.20,57.76,70,0
.goto 388,58.12,59.26,70,0
.goto 388,58.38,61.03,70,0
.goto 388,58.09,64.19,70,0
.goto 388,57.20,64.49,70,0
.goto 388,55.87,62.68,70,0
.goto 388,56.04,67.92,70,0
.goto 388,54.48,69.09,70,0
.goto 388,52.91,66.00,70,0
.goto 388,50.48,63.93,70,0
.goto 388,51.25,70.61,70,0
.goto 388,56.83,50.58,0
.goto 388,57.59,54.05,0
.goto 388,58.51,56.64,0
.goto 388,59.20,57.76,0
.goto 388,58.12,59.26,0
.goto 388,58.38,61.03,0
.goto 388,58.09,64.19,0
.goto 388,57.20,64.49,0
.goto 388,55.87,62.68,0
.goto 388,56.04,67.92,0
.goto 388,54.48,69.09,0
.goto 388,52.91,66.00,0
.goto 388,50.48,63.93,0
.goto 388,51.25,70.61,0
.complete 30922,1
.complete 30963,1
.complete 30964,1
step
#completewith Mao-Willow
>>Kill |cRXP_ENEMY_Longshadow Mushans|r and |cRXP_ENEMY_Longshadow Bulls|r. Loot them for their |cRXP_LOOT_Full Mushan Bladders|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#completewith Mao-Willow
>>Kill |cRXP_ENEMY_Rankbite Tortoises|r and |cRXP_ENEMY_Rankbite Ancients|r. Loot them for their |cRXP_LOOT_Rankbite Shell Fragments|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#label Mao-Willow
>>Loot the |cRXP_PICK_Mao-Willow's|r on the ground
.complete 30964,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Longshadow Mushans|r and |cRXP_ENEMY_Longshadow Bulls|r. Loot them for their |cRXP_LOOT_Full Mushan Bladders|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
>>Kill |cRXP_ENEMY_Rankbite Tortoises|r and |cRXP_ENEMY_Rankbite Ancients|r. Loot them for their |cRXP_LOOT_Rankbite Shell Fragments|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#label Full Mushan Bladder
>>Kill |cRXP_ENEMY_Longshadow Mushans|r and |cRXP_ENEMY_Longshadow Bulls|r. Loot them for their |cRXP_LOOT_Full Mushan Bladders|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
.goto 388,49.15,71.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
.turnin 30922 >>Turn in Natural Antiseptic
.turnin 30963 >>Turn in The Field Armorer
.turnin 30964 >>Turn in A Proper Poultice
.target Provisioner Bamfu
step
.goto 388,49.13,71.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.turnin 30921 >>Turn in The Motives of the Mantid
.turnin 30923 >>Turn in Set the Mantid Back
.accept 30924 >>Accept The Wisdom of Niuzao
.target Tai Ho

step
.goto 388/870,4560.700,2041.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
.target Ku-Mo
.accept 30931 >>Accept My Father's Crossbow
step
.goto 388/870,4854.700,2051.000
>>Kill |cRXP_ENEMY_Et'kil|r and loot |cRXP_LOOT_Father's Crossbow|r
>>|cRXP_WARN_This quest is hard, try to CC one of the adds, run behind them when they cast a frontal cone spew and use your cooldowns|r
.complete 30931,1 
.mob Et'kil
step
.goto 388/870,4560.100,2040.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
.target Ku-Mo
.turnin 30931 >>Turn in My Father's Crossbow
step
.goto 388,39.337,62.227
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
.turnin 30924 >>Turn in The Wisdom of Niuzao
.accept 30925 >>Accept Niuzao's Price
.target Ogo the Younger
step
.goto 388,39.244,62.026
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluesaddle|r
.accept 30929 >>Accept Bad Yak
.target Bluesaddle
step
.goto 388/870,4815.000,2185.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
.target Sentinel Commander Qipan
.accept 30932 >>Accept Father's Footsteps
step
.goto 388,39.27,61.94
>>Click on |cRXP_FRIENDLY_Ruthers|r
>>|cRXP_WARN_Ensure you are standing infront of him|r
>>If for some reason nothing happens when you click him, abandon the quest and click him again
.complete 30929,1 
.complete 30929,2 
.complete 30929,3 
.complete 30929,4 
.target Ruthers
step
.goto 388,39.21,62.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluesaddle|r
.turnin 30929 >>Turn in Bad Yak
.target Bluesaddle
step
.goto 388/870,4832.900,2203.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Yalo|r
.complete 30932,4 
.target Sentinel Yalo
.skipgossip
step
#loop
.goto 388,43.659,50.482,0
.goto 388,42.540,46.105,0
.goto 388,38.727,45.566,0
.goto 388,38.197,47.739,0
.goto 388,43.659,50.482,50,0
.goto 388,42.540,46.105,50,0
.goto 388,38.727,45.566,50,0
.goto 388,38.197,47.739,50,0
>>Kill |cRXP_ENEMY_Sra'thik Guards|r and |cRXP_ENEMY_Sra'thik Drones|r
>>|cRXP_WARN_Kill one at a time and let|r |cRXP_FRIENDLY_Tai Ho|r |cRXP_WARN_examine their corpse after you kill them|r
.complete 30925,1 
.complete 30925,2 
.complete 30925,3 
.complete 30925,4 
.mob Sra'thik Guard
.mob Sra'thik Drone
step
.goto 388,39.34,62.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
.turnin 30925 >>Turn in Niuzao's Price
.target Ogo the Younger
step
.goto 388,39.36,62.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
.accept 30926 >>Accept The Terrible Truth
.target Ogo the Elder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r and |cRXP_FRIENDLY_Sentinel Commander Qipan|r
.accept 30928 >>Accept A Trail of Fear
.target +Yak-Keeper Kyana
.goto 388,39.17,62.05
.accept 30927 >>Accept Give Them Peace
.target +Sentinel Commander Qipan
.goto 388,39.41,61.97
step
.isOnQuest 30928
.goto 388,32.64,61.26,20 >>Enter the Niuzao Catacombs on the cliffside
step
#completewith Dread Shadow
>>Kill |cRXP_ENEMY_Dreadlings|r
.complete 30928,1 
.mob Dreadling
step
#completewith Dread Shadow
>>Click on the dead |cRXP_FRIENDLY_Fear-Stricken Sentinels|r
.complete 30927,1 
.target Fear-Stricken Sentinel
step
#label Dread Shadow
.goto 389,53.25,35.73,0
.goto 389,27.7,69.83,15,0
.goto 389,33.51,56.3,15,0
.goto 389,42.63,53.16,15,0
.goto 389,55.02,64.53,15,0
.goto 389,71.55,59.37,15,0
.goto 389,71.55,59.37,15,0
.goto 389,50.243,24.949
>>Kill |cRXP_ENEMY_Dread Shadow|r
.complete 30926,3 
.mob Dread Shadow
step
.goto 389,56.17,20.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.turnin 30926 >>Turn in The Terrible Truth
.target Tai Ho
step
#completewith Dreadling
#hidewindow
#loop
.goto 389,71.03,50.37,20,0
.goto 389,65.51,38.25,20,0
.goto 389,63.79,68.71,20,0
.goto 389,71.03,50.37,0
.goto 389,65.51,38.25,0
.goto 389,60.04,48.02,0
.goto 389,67.10,32.67,0
.goto 389,64.15,21.60,0
.goto 389,72.21,59.63,0
.goto 389,63.79,68.71,0
+1
step
#completewith next
>>Kill the |cRXP_ENEMY_Dreadlings|r
.complete 30928,1 
.mob Dreadling
step
>>Click on the dead |cRXP_FRIENDLY_Fear-Stricken Sentinels|r
.complete 30927,1 
.target Fear-Stricken Sentinel
step
#label Dreadling
>>Kill |cRXP_ENEMY_Dreadlings|r
.complete 30928,1 
.mob Dreadling
step
.isOnQuest 30928
.goto 388,32.64,61.26,30 >> Leave the Niuzao Catacombs
step
.noflyable
#completewith next
.goto 388,39.76,58.55,45,0
.goto 388,38.69,61.23,20,0
.goto 388,37.91,60.65,15,0
.goto 388,38.12,61.88,15 >> Head back to Niuzao Temple and head up the stairs
step
.goto 388/870,4923.600,2208.700
>>Click |cRXP_PICK_Father's Shield|r on the ground
.complete 30932,2 
step
.goto 388/870,4933.500,2226.400
>>Click |cRXP_PICK_Father's Bedroll|r on the ground inside
.complete 30932,1 
step
.goto 388/870,4915.800,2109.400
>>Click |cRXP_FRIENDLY_Ha-Cha|r
.complete 30932,3 
.target Ha-Cha
step
.goto 388/870,4813.500,2186.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
.target Ku-Mo
.turnin 30932 >>Turn in Father's Footsteps
step
.goto 388/870,4815.600,2185.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
.target Sentinel Commander Qipan
.turnin 30927 >>Turn in Give Them Peace
step
.goto 388,39.15,62.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
.turnin 30928 >>Turn in A Trail of Fear
.target Yak-Keeper Kyana
step
#completewith end1
.hs >> Hearth back to Shado-Pan Garrison
.cooldown item,6948,>2,1
.subzoneskip 6197
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Yao-Li|r
.target Kite Master Yao-Li
.goto 388/870,4203.300,1802.600
.fly Rensai's Watchpost >>Fly to Rensai's Watchpost
.noflyable
step
.goto 388,53.92,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 31687 >>Turn in Thinning the Sik'thik
.turnin 31688 >>Turn in The Search for Restless Leng
.target Rensai Oakhide
step
.xp 89 >> Grind to 89
>>|cRXP_WARN_You must be level 89 before moving onto Dread Wastes. Queue for dungeons using the Group Finder tool and complete the quests inside|r
>>|cRXP_WARN_If you wish to quest regularly and you skipped a previous zone, before selecting that guide ensure you have disabled the "Skip overleveled steps" option in the Guide Routing tab|r
step
#label end1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Li-Sen|r
.target Kite Master Li-Sen
.goto 388/870,3961.200,1531.800
.fly Gao >>Fly to Gao-Ran Battlefront
.zoneskip 390
.zoneskip 422
.noflyable
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP-Pandaria
#name 0-Cloud Serpent
#internal
step
#completewith next
.subzone 5931 >>Travel to The Arboretum in Jade Forest
step
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.accept 30134 >>Accept Wild Things
.target Elder Anli
step
#completewith next
.subzone 6012 >>Fly to Windward Isle
step
.goto 371/870,-3109.800,2179.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Tong|r
.turnin 30134 >>Turn in Wild Things
.accept 30135 >>Accept Beating the Odds
.accept 30136 >>Accept Empty Nests
.accept 30137 >>Accept Egg Collection
.target Instructor Tong
step
#completewith Interact with Windward Hatchlings
#hidewindow
#loop
.goto 371,65.25,32.10,30,0
.goto 371,64.75,32.28,30,0
.goto 371,64.74,31.10,30,0
.goto 371,64.69,30.44,30,0
.goto 371,64.54,29.52,30,0
.goto 371,65.25,29.19,30,0
.goto 371,65.53,29.54,30,0
.goto 371,65.25,32.10,0
.goto 371,64.75,32.28,0
.goto 371,64.74,31.10,0
.goto 371,64.69,30.44,0
.goto 371,64.54,29.52,0
.goto 371,65.25,29.19,0
.goto 371,65.53,29.54,0
+1
step
#completewith SerpentEggs
>>Kill |cRXP_ENEMY_Slitherscale Saurok|r
.complete 30135,1 
.mob Slitherscale Eggdrinker
.mob Slitherscale Ripper
step
.isOnQuest 30136
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (1)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30136
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (2)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30136
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (3)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30136
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (4)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30136
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (5)|r
.use 78947
.target Windward Hatchling
step
#label Interact with Windward Hatchlings
.isOnQuest 30136
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (6)|r
.use 78947
.target Windward Hatchling
step
#loop
.goto 371/870,-3141.700,2197.700,0
.goto 371/870,-3141.700,2197.700,15,0
.goto 371/870,-3134.000,2226.200,15,0
.goto 371/870,-3098.500,2252.100,15,0
.goto 371/870,-3036.900,2301.000,15,0
>>|cRXP_WARN_Return the |cRXP_FRIENDLY_Windward Hatchlings|r to their nests|r
.complete 30136,1 
step
#label SerpentEggs
#loop
.goto 371,67.43,27.94,0
.goto 371,66.85,28.05,40,0
.goto 371,67.43,27.94,40,0
.goto 371,67.75,28.87,40,0
.goto 371,67.77,30.25,40,0
.goto 371,67.73,31.90,40,0
.goto 371,68.74,32.16,40,0
.goto 371,69.03,29.14,40,0
.goto 371,69.07,27.93,40,0
.goto 371,69.06,26.11,40,0
.goto 371,68.14,25.30,40,0
>>Loot the |cRXP_LOOT_Serpent Eggs|r on the ground
.complete 30137,1 
step
#loop
.goto 371,66.85,28.05,0
.goto 371,66.85,28.05,40,0
.goto 371,67.43,27.94,40,0
.goto 371,67.75,28.87,40,0
.goto 371,67.77,30.25,40,0
.goto 371,67.73,31.90,40,0
.goto 371,68.74,32.16,40,0
.goto 371,69.03,29.14,40,0
.goto 371,69.07,27.93,40,0
.goto 371,69.06,26.11,40,0
.goto 371,68.14,25.30,40,0
>>Kill |cRXP_ENEMY_Slitherscale Saurok|r
.complete 30135,1 
.mob Slitherscale Eggdrinker
.mob Slitherscale Ripper
step
.goto 371,65.34,31.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Tong|r
.turnin 30135 >>Turn in Beating the Odds
.turnin 30136 >>Turn in Empty Nests
.turnin 30137 >>Turn in Egg Collection
.accept 30138 >>Accept Choosing the One
.turnin 30138 >>Turn in Choosing the One
.target Instructor Tong
step
.goto 371,65.34,31.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Tong|r
.daily 30140,30141,30139 >>Accept The Rider's Journey
.target Instructor Tong
step
#completewith next
.subzone 5931 >>Fly to The Arboretum
step
#optional
.goto 371,57.55,45.10
.isOnQuest 30139
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
.turnin 30139 >>Turn in The Rider's Journey
.target Instructor Skythorn
step
#optional
.goto 371,57.55,45.10
.isOnQuest 30140
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
.turnin 30140 >>Turn in The Rider's Journey
.target Instructor Skythorn
step
.isOnQuest 30141
.goto 371,57.55,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
.turnin 30141 >>Turn in The Rider's Journey
.target Instructor Skythorn
step
#label Egg hatched
.goto 371,57.55,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
.accept 30142 >>Accept It's A...
.complete 30142,1 
.turnin 30142 >>Turn in It's A...
.target Instructor Skythorn
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP-Pandaria
#name 1-Cloud Serpent
#internal


step
#completewith DailiesAccept
>>|cRXP_WARN_Buy|r |T633440:0|t[Golden Carp] |cRXP_WARN_from the Auction House if possible|r
.collect 74866,10
.skill cooking,<300,1
step
#completewith DailiesAccept
>>|cRXP_WARN_Craft|r |T628557:0|t[Windwool Bandages]|r |cRXP_WARN_or buy them from the Auction House if possible|r
.collect 72985,20
.skill first aid,<500,1
step
#completewith next
.subzone 5931 >>Travel to The Arboretum in Jade Forest
step
.dailyreset Cloud
#label DailiesAccept
.goto 371/870,-2592.200,1565.800,0
.goto 371/870,-2564.300,1540.200,5,0
.goto 371/870,-2566.100,1552.500,5,0
.goto 371/870,-2580.000,1565.700,5,0
.goto 371/870,-2631.300,1571.700,5,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Hatchling|r, |cRXP_FRIENDLY_Instructor Skythorn|r, |cRXP_FRIENDLY_Ningna Darkwheel|r, |cRXP_FRIENDLY_Suchi the Sweet|r and |cRXP_FRIENDLY_Elder Anli|r
.daily 30151,31704,30156,30155,31194,30150,31702,30154,31700,31699,31698,31701,30158,30157,31703,30159 >>Accept all of the available daily quests
.disablecheckbox
.questcount <3 30151,31704,30156,30155,31194,30150,31702,30154,31700,31699,31698,31701,30158,30157,31703,30159
.target Your Hatchling
.target Instructor Skythorn
.target Ningna Darkwheel
.target Elder Anli
.target Suchi the Sweet
.reputation 1271,revered,>0,1
step
#label DailiesAccept
.goto 371/870,-2592.200,1565.800,0
.goto 371/870,-2564.300,1540.200,5,0
.goto 371/870,-2566.100,1552.500,5,0
.goto 371/870,-2580.000,1565.700,5,0
.goto 371/870,-2599.500,1618.500,5,0
.goto 371/870,-2640.900,1620.700,5,0
.goto 371/870,-2631.300,1571.700,5,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Cloud Serpent|r, |cRXP_FRIENDLY_Instructor Skythorn|r, |cRXP_FRIENDLY_Ningna Darkwheel|r, |cRXP_FRIENDLY_Elder Anli|r, |cRXP_FRIENDLY_Ace Longpaw|r, |cRXP_FRIENDLY_Instructor Windblade|r, |cRXP_FRIENDLY_Suchi the Sweet|r and |cRXP_FRIENDLY_Qua-Ro Whitebrow|r
.daily 30151,31704,30156,30155,31194,30150,31702,30154,31700,31699,31698,31701,30158,30157,31703,31713,31712,31715,31719,31717,30152,31720,31706,31711,31708,31707,30159 >>Accept all of the available daily quests
.disablecheckbox
.questcount <3 30151,31704,30156,30155,31194,30150,31702,30154,31700,31699,31698,31701,30158,30157,31703,31713,31712,31715,31719,31717,30152,31720,31706,31711,31708,31707,30159
.target Your Cloud Serpent
.target Instructor Skythorn
.target Ningna Darkwheel
.target Elder Anli
.target Ace Longpaw
.target Instructor Windblade
.target Qua-Ro Whitebrow
.target Suchi the Sweet
.reputation 1271,revered,<0,1

step
.isOnQuest 30151
.use 79043 >>|cRXP_WARN_Use the |r|T134480:0|t[Bouncy Ball] |cRXP_WARN_on your|r |cRXP_FRIENDLY_Hatchling|r
>>|cRXP_WARN_Move to the golden circle every time to bounche the ball back and forth|r
.complete 30151,1 
.target Golden Hatchling
.target Azure Hatchling
.target Jade Hatchling
step
.isOnQuest 31704
#loop
.goto 371/870,-2525.500,1696.800,0
.goto 371/870,-2216.100,1537.100,0
.goto 371/870,-2568.800,1389.700,0
.goto 371/870,-2525.500,1696.800,50,0
.goto 371/870,-2462.000,1687.900,50,0
.goto 371/870,-2369.400,1680.200,50,0
.goto 371/870,-2209.700,1641.300,50,0
.goto 371/870,-2216.100,1537.100,50,0
.goto 371/870,-2257.000,1438.200,50,0
.goto 371/870,-2317.000,1340.500,50,0
.goto 371/870,-2460.100,1411.300,50,0
.goto 371/870,-2568.800,1389.700,50,0
>>Kill |cRXP_ENEMY_ Siftworms|r. Loot them for |cRXP_LOOT_Tiny Bags of Poop|r
.complete 31704,1 
.mob Giant Siftworm
.mob Siftworm
step
.isQuestComplete 31704
.goto 371/870,-2564.300,1540.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to your |cRXP_FRIENDLY_Hatchling|r
.dailyturnin 31704 >>Turn in Pooped
.target Golden Hatchling
.target Azure Hatchling
.target Jade Hatchling
.target Your Hatchling
step
.isOnQuest 30150
#loop
.goto 371/870,-2322.800,1677.900,0
.goto 371/870,-2485.500,1656.800,50,0
.goto 371/870,-2322.800,1677.900,50,0
.goto 371/870,-2193.800,1583.100,50,0
.goto 371/870,-2327.300,1493.400,50,0
.goto 371/870,-2504.300,1394.900,50,0
>>Kill |cRXP_ENEMY_Honeykeepers|r. Loot them for their |cRXP_LOOT_Honeycomb|r
.complete 30150,1 
.mob Honeykeeper
step
.isQuestComplete 30151
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 30151 >>Turn in Catch!
.target Elder Anli
step
.isQuestComplete 30150
.goto 371/870,-2564.500,1541.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Hatchling|r
.dailyturnin 30150 >>Turn in Sweet as Honey
.target Golden Hatchling
.target Azure Hatchling
.target Jade Hatchling
.target Your Hatchling
step
.isQuestOffered 58564,31705
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
>>|cRXP_WARN_Skip this step if it's not available|r
.daily 31705 >>Accept Needle Me Not
.target Elder Anli

step
.isOnQuest 31705
.goto 371/870,-2526.400,1719.200
.use 89113 >>|cRXP_WARN_Use the|r |T134135:0|t[Golden Honey] |cRXP_WARN_at the waypoint arrow|r
>>Kill the |cRXP_ENEMY_Orchard Needler|r as he spawns
.complete 31705,1 
.mob Orchard Needler
step
.isOnQuest 30155,31194,30158,30156,31702,30154,31700,30157,31699,31701,31698,31703
#optional
#completewith IsleQuestsComplete
.goto 371/870,-3046.400,2317.200
.subzone 6012 >>Fly to Windward Isle
step
.isOnQuest 30157
#completewith Interact with Windward Hatchlings2
#hidewindow
#loop
.goto 371,65.25,32.10,30,0
.goto 371,64.75,32.28,30,0
.goto 371,64.74,31.10,30,0
.goto 371,64.69,30.44,30,0
.goto 371,64.54,29.52,30,0
.goto 371,65.25,29.19,30,0
.goto 371,65.53,29.54,30,0
.goto 371,65.25,32.10,0
.goto 371,64.75,32.28,0
.goto 371,64.74,31.10,0
.goto 371,64.69,30.44,0
.goto 371,64.54,29.52,0
.goto 371,65.25,29.19,0
.goto 371,65.53,29.54,0
+1
step
.isOnQuest 30157
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (1)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30157
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (2)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30157
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (3)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30157
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (4)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30157
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (5)|r
.use 78947
.target Windward Hatchling
step
#label Interact with Windward Hatchlings2
.isOnQuest 30157
.cast 110171 >>|cRXP_WARN_Use the|r |T134326:0|t[Silken Rope] |cRXP_WARN_on a |cRXP_FRIENDLY_Windward Hatchling|r (6)|r
.use 78947
.target Windward Hatchling
step
.isOnQuest 30159
#sticky
#label StolenEggs
#loop
.waypoint 371,66.85,28.05,40,0
.waypoint 371,67.43,27.94,40,0
.waypoint 371,67.75,28.87,40,0
.waypoint 371,67.77,30.25,40,0
.waypoint 371,67.73,31.90,40,0
.waypoint 371,68.74,32.16,40,0
.waypoint 371,69.03,29.14,40,0
.waypoint 371,69.07,27.93,40,0
.waypoint 371,69.06,26.11,40,0
.waypoint 371,68.14,25.30,40,0
>>Loot the |cRXP_PICK_Serpent Eggs|r on the ground
>>|cRXP_ENEMY_Slitherscale Eggdrinkers|r |cRXP_WARN_and |cRXP_ENEMY_Slitherscale Lizard-Lords|r can also drop them|r
.complete 30159,1 
.mob Slitherscale Eggdrinker
.mob Slitherscale Lizard-Lord
step
.isOnQuest 30156
#sticky
#label SaltbackMeat
#loop
.goto 371/870,-3015.700,2105.400,0
.goto 371/870,-3015.700,2105.400,50,0
.goto 371/870,-3096.600,2085.000,50,0
.goto 371/870,-3174.300,2383.900,50,0
.goto 371/870,-3243.700,2451.200,50,0
.goto 371/870,-3359.300,2453.700,50,0
.goto 371/870,-3368.800,2229.500,50,0
>>Kill |cRXP_ENEMY_Saltback Yearlings|r. Loot them for their |T237339:0|t[|cRXP_LOOT_Saltback Meat Scraps|r]
.use 79028 >>|cRXP_WARN_Use the|r |T237339:0|t[|cRXP_LOOT_Saltback Meat Scraps|r] |cRXP_WARN_to create|r |T237338:0|t[|cRXP_LOOT_Saltback Meat|r]
.collect 79028,15,30156,1 
.disablecheckbox
.collect 79027,3,30156,1
.mob Saltback Yearling
step
.isOnQuest 30157
#sticky
#label WindwardHatchlings
#loop
.goto 371/870,-3141.700,2197.700,0
.goto 371/870,-3141.700,2197.700,15,0
.goto 371/870,-3134.000,2226.200,15,0
.goto 371/870,-3098.500,2252.100,15,0
.goto 371/870,-3036.900,2301.000,15,0
>>|cRXP_WARN_Return the |cRXP_FRIENDLY_Windward Hatchlings|r to their nests|r
.complete 30157,1 
step
.isOnQuest 31194
#sticky
#label SlithLord
.goto 371/870,-3416.700,2195.300
>>Kill the |cRXP_ENEMY_Slitherscale Lizard-Lord|r
.complete 31194,1 
.mob Slitherscale Lizard-Lord
step
.isOnQuest 30155
#sticky
#label SlithSauroks
#loop
.goto 371/870,-3368.800,2229.500,0
.goto 371/870,-3015.700,2105.400,50,0
.goto 371/870,-3096.600,2085.000,50,0
.goto 371/870,-3174.300,2383.900,50,0
.goto 371/870,-3243.700,2451.200,50,0
.goto 371/870,-3359.300,2453.700,50,0
.goto 371/870,-3368.800,2229.500,50,0
>>Kill |cRXP_ENEMY_Slitherscale Eggdrinkers|r and |cRXP_ENEMY_Slitherscale Rippers|r
.complete 30155,1 
.mob Slitherscale Eggdrinker
.mob Slitherscale Ripper
step
.isOnQuest 30158
#sticky
#label Harpoons
#loop
.goto 371/870,-3371.200,2439.800,0
.goto 371/870,-3209.700,2450.500,50,0
.goto 371/870,-3285.200,2443.200,50,0
.goto 371/870,-3371.200,2439.800,50,0
.goto 371/870,-3358.300,2289.200,50,0
.goto 371/870,-3292.300,2246.200,50,0
.goto 371/870,-3323.100,2162.300,50,0
>>Loot the |cRXP_PICK_Slitherscale Weapons|r on the ground for |cRXP_LOOT_Slitherscale Harpoons|r
.complete 30158,1 
step
.isOnQuest 31702
#sticky
#label WindwardSaber
.goto 371/870,-3006.800,2613.500
>>Kill the |cRXP_ENEMY_Windward Saber|r
.complete 31702,1 
.mob Windward Saber
step
.isOnQuest 31701
#sticky
#label WindwardHuntress
.goto 371/870,-3042.100,2448.500,20,0
.goto 371/870,-3076.500,2462.100
>>Kill the |cRXP_ENEMY_Windward Huntress|r inside the cave
.complete 31701,1 
.mob Windward Huntress
step
.isOnQuest 31703
#sticky
#label ShadowfaeMadcap
.goto 371/870,-2925.500,2407.600,20,0
.goto 371/870,-2921.600,2373.000
>>Kill the |cRXP_ENEMY_Shadowfae Madcap|r inside the cave
.complete 31703,1 
.mob Shadowfae Madcap
step
.isOnQuest 31699
#sticky
#label ShadowfaeTrickster
#loop
.goto 371/870,-2835.600,2440.600,0
.goto 371/870,-3019.000,2402.800,50,0
.goto 371/870,-2965.300,2554.300,50,0
.goto 371/870,-2852.000,2616.000,50,0
.goto 371/870,-2835.600,2440.600,50,0
>>Kill |cRXP_ENEMY_Shadowfae Tricksters|r
.complete 31699,1 
.mob Shadowfae Trickster
step
.isOnQuest 30154
#sticky
#label TigerFlank
#loop
.goto 371/870,-2835.600,2440.600,0
.goto 371/870,-3019.000,2402.800,50,0
.goto 371/870,-2965.300,2554.300,50,0
.goto 371/870,-2852.000,2616.000,50,0
.goto 371/870,-2835.600,2440.600,50,0
>>Kill |cRXP_ENEMY_Windward Tigers|r. Loot them for their |cRXP_LOOT_Flanks|r
.complete 30154,1 
.mob Windward Tiger
step
.isOnQuest 31698
#sticky
#label WindwardTiger
#loop
.goto 371/870,-2835.600,2440.600,0
.goto 371/870,-3019.000,2402.800,50,0
.goto 371/870,-2965.300,2554.300,50,0
.goto 371/870,-2852.000,2616.000,50,0
.goto 371/870,-2835.600,2440.600,50,0
>>Kill |cRXP_ENEMY_Windward Tigers|r. Loot them for their |cRXP_LOOT_Flanks|r
.complete 31698,1 
.mob Windward Tiger
step
.isOnQuest 31700
#sticky
#label StolenBoots
#loop
.goto 371/870,-3019.000,2402.800,0
.goto 371/870,-3019.000,2402.800,50,0
.goto 371/870,-2965.300,2554.300,50,0
.goto 371/870,-2852.000,2616.000,50,0
.goto 371/870,-2835.600,2440.600,50,0
>>Loot the |cRXP_LOOT_Stolen Boots|r on the ground
.complete 31700,1 
step
.isOnQuest 30156
#requires SaltbackMeat
.use 79027 >>|cRXP_WARN_Use the|r |T237338:0|t[|cRXP_LOOT_Saltback Meat|r] |cRXP_WARN_to feed your Hatchling|r
.complete 30156,1 
.itemcount 79027,1
step
#requires StolenEggs
step
#requires SaltbackMeat
step
#requires WindwardHatchlings
step
#requires SlithLord
step
#requires SlithSauroks
step
#requires Harpoons
step
#requires WindwardSaber
step
#requires WindwardHuntress
step
#requires ShadowfaeMadcap
step
#requires TigerFlank
step
#requires ShadowfaeTrickster
step
#requires WindwardTiger
step
#requires StolenBoots
step
#optional
#label IsleQuestsComplete

step
.isOnQuest 30152
#completewith next
.goto 371/870,-2641.000,1620.500
.gossipoption 125864 >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Instructor Windblade|r |cRXP_WARN_to start the "Sky Race"|r
.target Instructor Windblade
step
.isOnQuest 30152
#loop
.goto 371/870,-2779.900,1819.900,0
.goto 371/870,-2712.900,2186.600,0
.goto 371/870,-2824.800,2479.900,0
.goto 371/870,-3176.500,1977.900,0
.goto 371/870,-3171.300,1676.500,0
.goto 371/870,-3207.200,1256.600,0
.goto 371/870,-3019.300,1274.300,0
.goto 371/870,-2861.000,1113.000,0
.goto 371/870,-2762.700,1195.900,0
.goto 371/870,-2645.700,1476.500,0
.goto 371/870,-2779.900,1819.900,20,0
.goto 371/870,-2712.900,2186.600,20,0
.goto 371/870,-2824.800,2479.900,20,0
.goto 371/870,-3176.500,1977.900,20,0
.goto 371/870,-3171.300,1676.500,20,0
.goto 371/870,-3207.200,1256.600,20,0
.goto 371/870,-3019.300,1274.300,20,0
.goto 371/870,-2861.000,1113.000,20,0
.goto 371/870,-2762.700,1195.900,20,0
.goto 371/870,-2645.700,1476.500,20,0
>>Follow the arrow and fly by the |cRXP_FRIENDLY_Race Flags|r at the |cRXP_FRIENDLY_Checkpoints|r
>>|cRXP_WARN_Fly through the|r |cRXP_PICK_Cloud Rings|r |cRXP_WARN_to gain additional speed|r
.complete 30152,1 
.complete 30152,2 
step
.isOnQuest 31717
.goto 371/870,-2599.500,1618.700
>>Talk to |cRXP_FRIENDLY_Ace Longpaw|r, then defeat him as he becomes hostile
.complete 31717,1 
.target Ace Longpaw
.skipgossip
step
.isOnQuest 31719
.goto 371/870,-2616.600,1555.300
>>Talk to |cRXP_FRIENDLY_Ningna Darkwheel|r, then defeat her as she becomes hostile
.complete 31719,1 
.target Ningna Darkwheel
.skipgossip
step
.isOnQuest 31720
.goto 371/870,-2631.200,1571.600
>>Talk to |cRXP_FRIENDLY_Suchi the Sweet|r, then defeat her as she becomes hostile
.complete 31720,1 
.target Suchi the Sweet
.skipgossip
step
.isOnQuest 31712,31713,31715
#completewith OonaDailiesComplete
.goto 371/870,-2559.000,2362.100,15 >>Enter the Oona Kagu cave
step
.isOnQuest 31712
#optional
#completewith LordOona
>>Kill |cRXP_ENEMY_Oona Brewchuggers|r, |cRXP_ENEMY_Oona Tuna-Catchers|r and |cRXP_ENEMY_Oona Goons|r
.complete 31712,1 
.mob Oona Brewchugger
.mob Oona Tuna-Catcher
.mob Oona Goon
step
.isOnQuest 31713
#optional
#completewith OonaHozens
>>Kill |cRXP_ENEMY_Oona|r, loot them for their |cRXP_LOOT_Stolen Sri-La Stout|r
>>You can also open the |cRXP_PICK_Stolen Sri-La Kegs|r and |cRXP_PICK_Oona Brew Mugs|r on the ground for |cRXP_LOOT_Stolen Sri-La Stout|r
.complete 31713,1 
.mob Oona Brewchugger
.mob Oona Tuna-Catcher
.mob Oona Goon
step
.isOnQuest 31715
#label LordOona
.goto 371/870,-2438.600,2296.700
>>Kill |cRXP_ENEMY_Lord Oona|r in the back of the cave
.complete 31715,1 
.mob Lord Oona
step
.isOnQuest 31712
#label OonaHozens
#loop
.goto 371/870,-2372.100,2369.300,0
.goto 371/870,-2409.200,2348.200,20,0
.goto 371/870,-2372.100,2369.300,20,0
.goto 371/870,-2465.500,2400.700,20,0
>>Kill |cRXP_ENEMY_Oona Brewchuggers|r, |cRXP_ENEMY_Oona Tuna-Catchers|r and |cRXP_ENEMY_Oona Goons|r
.complete 31712,1 
.mob Oona Brewchugger
.mob Oona Tuna-Catcher
.mob Oona Goon
step
.isOnQuest 31713
#loop
.goto 371/870,-2409.200,2348.200,0
.goto 371/870,-2409.200,2348.200,20,0
.goto 371/870,-2372.100,2369.300,20,0
.goto 371/870,-2465.500,2400.700,20,0
>>Kill |cRXP_ENEMY_Oona|r, loot them for their |cRXP_LOOT_Stolen Sri-La Stout|r
>>|cRXP_WARN_You can also open the |cRXP_PICK_Stolen Sri-La Kegs|r and |cRXP_PICK_Oona Brew Mugs|r on the ground for|r |cRXP_LOOT_Stolen Sri-La Stout|r
.complete 31713,1 
.mob Oona Brewchugger
.mob Oona Tuna-Catcher
.mob Oona Goon
step
#optional
#label OonaDailiesComplete
step
.isOnQuest 31706,31708,31711
#completewith SpiderDailiesComplete
.goto 371/870,-2580.900,2175.800,20 >>Enter The Widow's Mail cave
step
.isOnQuest 31706
#completewith SeedofDoubt
>>Kill |cRXP_ENEMY_Weeping Widows|r
.complete 31706,1 
.mob Weeping Widow
step
.isOnQuest 31707
#completewith WeepWidows
>>Destroy the |cRXP_ENEMY_Widow's Webs|r to free |cRXP_FRIENDLY_Sri-La Villagers|r
.complete 31707,1 
step
.isOnQuest 31708
#completewith WidowWebs
>>Loot the |cRXP_PICK_Mushrooms|r on the ground for |cRXP_LOOT_Serpent's Scale|r
.complete 31708,1 
step
.isOnQuest 31711
#label SeedofDoubt
.goto 371/870,-2436.000,2132.200
>>Kill the |cRXP_ENEMY_Seed of Doubt|r in the center of the cave
.complete 31711,1 
.mob Seed of Doubt
step
.isOnQuest 31706
#label WeepWidows
#loop
.goto 371/870,-2424.800,2063.000,0
.goto 371/870,-2424.800,2063.000,20,0
.goto 371/870,-2477.400,2036.400,20,0
.goto 371/870,-2552.400,2085.800,20,0
.goto 371/870,-2529.400,2155.500,20,0
.goto 371/870,-2444.800,2177.300,20,0
>>Kill |cRXP_ENEMY_Weeping Widows|r
.complete 31706,1 
.mob Weeping Widow
step
#label WidowWebs
.isOnQuest 31707
#loop
.goto 371/870,-2444.800,2177.300,0
.goto 371/870,-2424.800,2063.000,20,0
.goto 371/870,-2477.400,2036.400,20,0
.goto 371/870,-2552.400,2085.800,20,0
.goto 371/870,-2529.400,2155.500,20,0
.goto 371/870,-2444.800,2177.300,20,0
>>Destroy the |cRXP_ENEMY_Widow's Webs|r to free |cRXP_FRIENDLY_Sri-La Villagers|r
.complete 31707,1 
step
.isOnQuest 31708
#loop
.goto 371/870,-2529.400,2155.500,0
.goto 371/870,-2424.800,2063.000,20,0
.goto 371/870,-2477.400,2036.400,20,0
.goto 371/870,-2552.400,2085.800,20,0
.goto 371/870,-2529.400,2155.500,20,0
.goto 371/870,-2444.800,2177.300,20,0
>>Loot the |cRXP_PICK_Mushrooms|r on the ground for |cRXP_LOOT_Serpent's Scale|r
.complete 31708,1 
step
#optional
#label SpiderDailiesComplete
step
.isQuestComplete 31705
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 31705 >>Turn in Needle Me Not
.target Elder Anli
step
.isQuestComplete 30156
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 30156 >>Turn in Feeding Time
.target Elder Anli
step
.isQuestComplete 31194
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 31194 >>Turn in Slitherscale Suppression
.target Elder Anli
step
.isQuestComplete 30155
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 30155 >>Turn in Restoring the Balance
.target Elder Anli
step
.isQuestComplete 30154
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 30154 >>Turn in The Easiest Way To A Serpent's Heart
.target Elder Anli
step
.isQuestComplete 31700
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 31700 >>Turn in The Shoe Is On The Other Foot
.target Elder Anli
step
.isQuestComplete 31702
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 31702 >>Turn in On The Prowl
.target Elder Anli
step
.isQuestComplete 31699
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 31699 >>Turn in Sprite Fright
step
.isQuestComplete 31701
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 31701 >>Turn in Dark Huntress
step
.isQuestComplete 31698
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 31698 >>Turn in Thinning The Pack
step
.isQuestComplete 30158
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 30158 >>Turn in Disarming the Enemy
step
.isQuestComplete 30157
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 30157 >>Turn in Emptier Nests
step
.isQuestComplete 31703
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 31703 >>Turn in Madcap Mayhem
step
.isQuestComplete 31713
.goto 371/870,-2599.600,1618.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ace Longpaw|r
.target Ace Longpaw
.dailyturnin 31713 >>Turn in The Big Brew-haha
step
.isQuestComplete 31712
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 31712 >>Turn in Monkey Mischief
step
.isQuestComplete 31715
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 31715 >>Turn in The Big Kah-Oona
step
.isQuestComplete 30159
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.dailyturnin 30159 >>Turn in Preservation
step
.isQuestComplete 31706
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.turnin 31706 >>Turn in Weeping Widows
step
.isQuestComplete 31711
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.target Elder Anli
.turnin 31711 >>Turn in The Seed of Doubt
step
.isQuestComplete 31708
.goto 371/870,-2564.000,1540.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Cloud Serpent|r
.target Your Cloud Serpent
.turnin 31708 >>Turn in Serpent's Scale
step
.isQuestComplete 31707
.goto 371/870,-2564.000,1540.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Cloud Serpent|r
.target Your Cloud Serpent
.turnin 31707 >>Turn in A Tangled Web
step
.isQuestComplete 31717
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 31717 >>Turn in The Trainer's Challenge
.target Elder Anli
step
.isQuestComplete 31719
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 31719 >>Turn in The Trainer's Challenge
.target Elder Anli
step
.isQuestComplete 31720
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 31720 >>Turn in The Trainer's Challenge
.target Elder Anli
step
.isQuestComplete 30152
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.dailyturnin 30152 >>Turn in The Sky Race
.target Elder Anli

step 
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.daily 30146 >>Accept Snack Time 
.target Jenova Longeye
.skill fishing,<1,1
step 
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.daily 30147 >>Accept Fragments of the Past 
.target Jenova Longeye
.skill archaeology,<525,1
step 
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.daily 30148 >>Accept Just a Flesh Wound 
.target Jenova Longeye
.skill first aid,<500,1
step 
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.daily 30149 >>Accept A Feast for the Senses 
.target Jenova Longeye
.skill cooking,<300,1
step 
.isOnQuest 30146
#loop
.goto 371/870,-2479.600,1613.100,0
.goto 371/870,-2479.600,1613.100,30,0
.goto 371/870,-2358.500,1634.900,30,0
.goto 371/870,-2348.600,1532.000,30,0
.goto 371/870,-2445.200,1495.500,30,0
>>Use |T136245:0|t[Fishing] to obtain |T237326:0|t[|cRXP_LOOT_Sugar Minnow|r]
>>|cRXP_WARN_Look for pools of fish such as "Jade Lungfish Pools" in the river around The Arboretum to maximize your chances of getting|r |T237326:0|t[|cRXP_LOOT_Sugar Minnow|r]
.complete 30146,1 
step 
#optional
#completewith next
.subzone 5930 >>Travel to Dawn's Blossom
step 
.isOnQuest 30149
#optional
.goto 371/870,-1779.700,1536.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chin|r
>>|cRXP_WARN_You must level your Cooking skill to at least 300 to learn|r |T651570:0|t[Fish Cake]
.train 104297 >>Train |T651570:0|t[Fish Cake]
.target Chin
.skill cooking,300,1
step 
.isOnQuest 30149
#optional
.goto 371/870,-1779.700,1536.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chin|r
.train 104297 >>Train |T651570:0|t[Fish Cake]
.target Chin
.skill cooking,<300,1
step 
.isOnQuest 30149
#loop
.goto 371/870,-2445.200,1495.500,0
.goto 371/870,-2479.600,1613.100,30,0
.goto 371/870,-2358.500,1634.900,30,0
.goto 371/870,-2348.600,1532.000,30,0
.goto 371/870,-2445.200,1495.500,30,0
>>|cRXP_WARN_Use|r |T136245:0|t[Fishing] |cRXP_WARN_in nearby water pools of open water to collect|r |T633440:0|t[Golden Carp]
>>|cRXP_WARN_Prepare a|r |T135805:0|t[Cooking Fire] |cRXP_WARN_to cook the|r |T651570:0|t[|cRXP_LOOT_Fish Cakes|r]
.complete 30149,1 
.collect 74866,10,30149,7,-2 
step 
.isOnQuest 30148
#loop
.goto 371/870,-3034.200,2326.300,0
.goto 371/870,-3082.700,2101.900,50,0
.goto 371/870,-3010.100,2204.100,50,0
.goto 371/870,-3034.200,2326.300,50,0
.goto 371/870,-3149.700,2340.400,50,0
>>|cRXP_WARN_Cast a|r |T628557:0|t[Windwool Bandage] |cRXP_WARN_or a|r |T628647:0|t[Heavy Windwool Bandage] |cRXP_WARN_on|r |cRXP_FRIENDLY_Injured Hatchlings|r
.complete 30148,1 
.target Injured Hatchling
step 
.isOnQuest 30147

>>|cRXP_WARN_Travel to the nearest digsite and cast|r |T134435:0|t[Survey] |cRXP_WARN_to find|r |T442739:0|t[Serpentrider Relics]
.complete 30147,1 
step 
.isQuestComplete 30146
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.dailyturnin 30146 >>Turn in Snack Time 
.target Jenova Longeye
step 
.isQuestComplete 30147
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.dailyturnin 30147 >>Turn in Fragments of the Past 
.target Jenova Longeye
step 
.isQuestComplete 30148
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.dailyturnin 30148 >>Turn in Just a Flesh Wound 
.target Jenova Longeye
step 
.isQuestComplete 30149
#loop
.goto 371/870,-2551.100,1542.000,0
.goto 371/870,-2551.100,1542.000,10,0
.goto 371/870,-2562.500,1572.100,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
>>|cRXP_WARN_She patrols around slightly|r
.dailyturnin 30149 >>Turn in A Feast for the Senses 
.target Jenova Longeye

step
#completewith FlightTraining1
.goto 371/870,-2506.600,1586.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_San Redscale|r
>>Buy a |T646324:0|t[|cRXP_LOOT_Grand Commendation of the Order of the Cloud Serpent|r] from him
>>|cRXP_WARN_This will increase your reputation with Cloud Serpent by 100% from now on for all your characters|r
.collect 93229,1 
.target San Redscale
.reputation 1271,revered,<0,1
step
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.accept 30143 >>Accept They Grow Like Weeds
.target Elder Anli
.reputation 1271,revered,<0,1
step
.isOnQuest 30143
.goto 371/870,-2641.000,1620.500
.gossipoption 125863 >>Talk to |cRXP_FRIENDLY_Instructor Windblade|r
>>|cRXP_WARN_You can skip the upcoming cinematic|r
.target Instructor Windblade
step
.isOnQuest 30143
.goto 371/870,-2641.000,1620.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Windblade|r
.target Instructor Windblade
.turnin 30143 >>Turn in They Grow Like Weeds
.accept 30144 >>Accept Flight Training: Ring Round-Up
step
#optional
.isQuestTurnedIn 30143
.goto 371/870,-2641.000,1620.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Windblade|r
.target Instructor Windblade
.accept 30144 >>Accept Flight Training: Ring Round-Up
step
#completewith next
.goto 371/870,-2639.000,1628.000
.vehicle >>Mount your |cRXP_FRIENDLY_Cloud Serpent|r if you wish
>>|cRXP_WARN_You can also complete this quest on your own mount|r
.target Golden Cloud Serpent
.target Azure Cloud Serpent
.target Jade Cloud Serpent
step
.isOnQuest 30144
#loop
.goto 371/870,-2790.200,1817.700,0
.goto 371/870,-2790.200,1817.700,60,0
.goto 371/870,-2782.900,1967.300,60,0
.goto 371/870,-2732.400,2141.900,60,0
.goto 371/870,-2701.000,2239.500,60,0
.goto 371/870,-2701.100,1960.300,60,0
>>Fly through the |cRXP_PICK_Cloud Rings|r in the sky
.complete 30144,1
step
.isQuestComplete 30144
.goto 371/870,-2641.000,1620.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Windblade|r
.turnin 30144 >>Turn in Flight Training: Ring Round-Up
.accept 30145 >>Accept Flight Training: Full Speed Ahead
.target Instructor Windblade
step
#optional
.isQuestTurnedIn 30144
.goto 371/870,-2641.000,1620.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Windblade|r
.accept 30145 >>Accept Flight Training: Full Speed Ahead
.target Instructor Windblade
step
#completewith next
.goto 371/870,-2639.000,1628.000
.vehicle >>Mount your |cRXP_FRIENDLY_Cloud Serpent|r
>>|cRXP_WARN_Abandon and re-accept the quest if your|r |cRXP_FRIENDLY_Cloud Serpent|r |cRXP_WARN_dissapeared|r
.target Golden Cloud Serpent
.target Azure Cloud Serpent
.target Jade Cloud Serpent
step
.isOnQuest 30145
>>Follow |cRXP_FRIENDLY_Instructor Windblade|r as she shows you the Winblade's Course
>>|cRXP_WARN_Fly through the|r |cRXP_PICK_Cloud Rings|r |cRXP_WARN_to gain additional speed|r
.complete 30145,1
.target Instructor Windblade
step
.isQuestComplete 30145
.goto 371/870,-2641.000,1620.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Windblade|r
.turnin 30145 >>Turn in Flight Training: Full Speed Ahead
.accept 30187 >>Accept Flight Training: In Due Course
.target Instructor Windblade
step
#optional
.isQuestTurnedIn 30145
.goto 371/870,-2641.000,1620.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Windblade|r
.accept 30187 >>Accept Flight Training: In Due Course
.target Instructor Windblade
step
#completewith next
.goto 371/870,-2639.000,1628.000
.vehicle >>Mount your |cRXP_FRIENDLY_Cloud Serpent|r
>>|cRXP_WARN_Abandon and re-accept the quest if your|r |cRXP_FRIENDLY_Cloud Serpent|r |cRXP_WARN_dissapeared|r
.target Golden Cloud Serpent
.target Azure Cloud Serpent
.target Jade Cloud Serpent
step
.isOnQuest 30187
#loop
.goto 371/870,-2779.900,1819.900,0
.goto 371/870,-2712.900,2186.600,0
.goto 371/870,-2824.800,2479.900,0
.goto 371/870,-3176.500,1977.900,0
.goto 371/870,-3171.300,1676.500,0
.goto 371/870,-3207.200,1256.600,0
.goto 371/870,-3019.300,1274.300,0
.goto 371/870,-2861.000,1113.000,0
.goto 371/870,-2762.700,1195.900,0
.goto 371/870,-2645.700,1476.500,0
.goto 371/870,-2779.900,1819.900,20,0
.goto 371/870,-2712.900,2186.600,20,0
.goto 371/870,-2824.800,2479.900,20,0
.goto 371/870,-3176.500,1977.900,20,0
.goto 371/870,-3171.300,1676.500,20,0
.goto 371/870,-3207.200,1256.600,20,0
.goto 371/870,-3019.300,1274.300,20,0
.goto 371/870,-2861.000,1113.000,20,0
.goto 371/870,-2762.700,1195.900,20,0
.goto 371/870,-2645.700,1476.500,20,0
>>Follow the arrow and fly by the |cRXP_FRIENDLY_Race Flags|r at the |cRXP_FRIENDLY_Checkpoints|r
>>|cRXP_WARN_Fly through the|r |cRXP_PICK_Cloud Rings|r |cRXP_WARN_to gain additional speed|r
.complete 30187,1 
step
#label FlightTraining1
.isQuestComplete 30187
.goto 371/870,-2641.000,1620.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Windblade|r
.target Instructor Windblade
.turnin 30187 >>Turn in Flight Training: In Due Course
step
#optional
.isQuestAvailable 31811
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
>>|cRXP_WARN_You can skip the upcoming cinematic if you wish|r
.accept 31811 >>Accept Riding the Skies
.target Elder Anli
.reputation 1271,exalted,<0,1
step
#optional
.isOnQuest 31811
.goto 371/870,-2524.100,1466.000
>>|cRXP_WARN_Finish the cinematic|r
.complete 31811,1 
step
#optional
.isQuestComplete 31811
.goto 371/870,-2573.000,1560.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
.turnin 31811 >>Turn in Riding the Skies
.target Elder Anli
.reputation 1271,exalted,<0,1

step
+|cRXP_WARN_You have completed all available daily quests for Cloud Serpent today. Load the same guide again tomorrow once the daily quests have reset to complete more daily quests|r
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP-Pandaria
#name 1-Golden Lotus
#internal

step
.dailyreset vale
.goto 390,56.574,43.532
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r, |cRXP_FRIENDLY_Anji Autumnlight|r, |cRXP_FRIENDLY_Kun Autumnlight|r and |cRXP_FRIENDLY_Sun Tenderheart|r
.daily 30307,30308,31762,31758,30312,31760,30309,31756,30320,30310,31757,31755,31754 >> Accept all of the available daily quests
.disablecheckbox
.questcount <5,30307,30308,31762,31758,30312,31760,30309,31756,30320,30310,31757,31755,31754
.target Leven Dawnblade
.target Anji Autumnlight
.target Kun Autumnlight
.target Sun Tenderheart
step
.isOnQuest 30312
#loop
.goto 390,55.66,27.68,50,0
.goto 390,51.42,28.61,50,0
.use 84242 >>|cRXP_WARN_Use the|r |T133681:0|t[Shado-Pan Bandages] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Defenders|r
.complete 30312,1 
.target Wounded Defender
step
.isOnQuest 31762
#completewith FinalDaily
>>Kill the |cRXP_ENEMY_Shao-Tien Behemoth|r
>>|cRXP_WARN_Wait until you see other players or |cRXP_FRIENDLY_Golden Lotus|r guards also attacking it as it has a lot of HP. Avoid the slams he casts|r
.complete 31762,1 
.mob Shao-Tien Behemoth
.target Golden Lotus Warrior
.target Golden Lotus Archer
step
.isOnQuest 30310
#sticky
#label SubjugatedSerpents
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
>>Kill |cRXP_ENEMY_Subjugated Serpents|r
>>|cRXP_WARN_These have a lot of HP. Try to kite them south along the path back to the |cRXP_FRIENDLY_Golden Lotus|r guards and they will assist you|r
.complete 30310,1 
.mob Subjugated Serpent
.target Golden Lotus Warrior
.target Golden Lotus Archer
step
.isOnQuest 30309
#sticky
#label MoguEffigy
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
>>Kill |cRXP_ENEMY_Mogu Effigies|r
.complete 30309,1 
.mob Mogu Effigy
step
.isOnQuest 31757
#sticky
#label UnleashedSpirits
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
>>Kill |cRXP_ENEMY_Unleashed Spirits|r
.complete 31757,1 
.mob Unleashed Spirit
step
.isOnQuest 30308
#sticky
#label GraniteQuilen
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
>>Kill |cRXP_ENEMY_Granite Quilens|r
.complete 30308,1 
.mob Granite Quilen
step
.isOnQuest 30307
#sticky
#label ShaoTienMogu
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
>>Kill |cRXP_ENEMY_Shao-Tien Mogu|r
.complete 30307,1 
.mob Shao-Tien Reclaimer
.mob Shao-Tien Soul-Render
.mob Shao-Tien Mindbender
.mob Shao-Tien Marauder
step
.isOnQuest 31755
#sticky
#label Torturevictims
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
>>Attack the |cRXP_ENEMY_Shao-Tien Soul-Renders|r channeling on the |cRXP_FRIENDLY_Golden Lotus Guards|r or |cRXP_FRIENDLY_Mistfall Villagers|r to free them
.complete 31755,1 
.target Golden Lotus Guard
.target Mistfall Villager
.mob Shao-Tien Soul-Render
step
.isOnQuest 31754
#sticky
#label Cannons
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
.use 89123>>|cRXP_WARN_Use the|r |T133710:0|t[Wu Kao Explosive] |cRXP_WARN_next to|r |cRXP_PICK_Shao-Tien Cannons|r
.complete 31754,1 
step
.isOnQuest 31758
#sticky
#label Softfoot
#loop
.waypoint 390,51.19,23.77,50,0
.waypoint 390,47.49,21.00,50,0
.waypoint 390,44.12,15.43,50,0
.waypoint 390,38.54,21.92,50,0
.waypoint 390,44.74,25.72,50,0
>>Look for |cRXP_FRIENDLY_Lao Softfoot|r and click the |cRXP_PICK_Shao-Tien Cage|r
.complete 31758,1 
.target Lao Softfoot
step
.isOnQuest 31756
.goto 390/870,1190.300,1573.100
>>Click the eastern |cRXP_PICK_Shao-Tien Stormcaller|r
.complete 31756,1 
step
.isOnQuest 31756
.goto 390/870,1269.700,1627.100
>>Click the northern |cRXP_PICK_Shao-Tien Stormcaller|r
.complete 31756,2 
step
.isOnQuest 31756
.goto 390/870,1388.600,1477.400
>>Click the southern |cRXP_PICK_Shao-Tien Stormcaller|r
.complete 31756,3 
step
.isOnQuest 31756
.goto 390/870,1548.600,1640.000
>>Click the western |cRXP_PICK_Shao-Tien Stormcaller|r
.complete 31756,4 
step
.isOnQuest 31760
.goto 390/870,1362.600,1684.900
>>Kill the |cRXP_ENEMY_Shao-Tien Soul-Renders|r surrounding the |cRXP_ENEMY_Shao-Tien Behemoth|r
.complete 31760,1 
.mob Shao-Tien Soul-Render
step
.isOnQuest 30320
#loop
.waypoint 390,49.66,24.94,70,0
.waypoint 390,45.66,20.42,70,0
.waypoint 390,38.05,21.58,70,0
>>Click on a |cRXP_PICK_Spirit Vortex|r to enter a different phase. Once phased, Click on |cRXP_FRIENDLY_Captive Pandaren Spirits|r
>>|cRXP_WARN_Avoid being hit by |cRXP_ENEMY_Twisted Tormentors|r as doing so will take you out of the phasing and you'll have to re-enter again|r
.complete 30320,1 
.target Captive Pandaren Spirit
step
#label FinalDaily
#optional
.aura -129811 >> |cRXP_WARN_Click off the|r |T463284:0|t[Spirit Void] |cRXP_WARN_buff to return to the living world|r
step
.isOnQuest 31762
#loop
.waypoint 390,48.17,39.33,70,0
.waypoint 390,45.26,24.71,70,0
.waypoint 390,44.10,16.77,70,0
>>Kill the |cRXP_ENEMY_Shao-Tien Behemoth|r
>>|cRXP_WARN_Kite him towards |cRXP_FRIENDLY_Golden Lotus|r guards as he has a lot of HP. Avoid the slams he casts|r
.complete 31762,1 
.mob Shao-Tien Behemoth
.target Golden Lotus Warrior
.target Golden Lotus Archer
step
#requires Softfoot
step
#requires GraniteQuilen
step
#requires ShaoTienMogu
step
#requires UnleashedSpirits
step
#requires MoguEffigy
step
#requires SubjugatedSerpents
step
#requires Torturevictims
step
#requires Cannons

step
.isOnQuest 30307
.goto 390/870,1044.800,1212.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30307 >>Turn in The Eternal Vigil
step
.isOnQuest 30308
.goto 390/870,1048.300,1211.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30308 >>Turn in Stone Hard Quilen
step
.isOnQuest 31762
.goto 390/870,1048.300,1211.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 31762 >>Turn in Crumbling Behemoth
step
.isOnQuest 30309
.goto 390/870,1048.300,1211.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30309 >>Turn in Set in Stone
step
.isOnQuest 31760
.goto 390/870,1048.300,1211.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 31760 >>Turn in Striking First
step
.isOnQuest 30310
.goto 390/870,1048.300,1211.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30310 >>Turn in Striking First
step
.isOnQuest 31757
.goto 390/870,1048.300,1211.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 31757 >>Turn in Unleashed Spirits
step
.isOnQuest 31756
.goto 390/870,1049.700,1211.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 31756 >>Turn in High Chance of Rain
step
.isOnQuest 31758
.goto 390/870,1049.700,1211.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 31758 >>Turn in Laosy Scouting
step
.isOnQuest 31754
.goto 390/870,1049.700,1211.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 31754 >>Turn in Cannonfire
step
.isOnQuest 30312
.goto 390/870,1049.900,1215.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 30312 >>Turn in Given a Second Chance
step
.isOnQuest 30320
.goto 390/870,1049.900,1215.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 30320 >>Turn in Free Spirits
step
.isOnQuest 31755
.goto 390/870,1049.900,1215.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 31755 >>Turn in Acts of Cruelty
step 
.skipOnQuest 31131,whitepetal
.skipOnQuest 31242,mistfallQuiet
.skipOnQuest 31243,mistfallUnderAttack
.skipOnQuest 30283,mistfallUAaccept
.skipOnQuest 30293,mistfallUAaccept
.skipOnQuest 30292,mistfallUAaccept
.skipOnQuest 30282,mistfallUAaccept
.skipOnQuest 30281,mistfallUAaccept
.isNotOnQuest 30283,30293,30292,30282,30281
.isQuestOffered 58408,31131,31242,31243
.goto 390/870,1044.700,1212.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
>>|cRXP_WARN_Skip this step if he is not offering a daily quest|r
.daily 31131,31242,31243 >> Accept the random daily quest
.target Leven Dawnblade

step 
.isNotOnQuest 31131,31242,31243
.goto 390,56.563,43.400
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r, |cRXP_FRIENDLY_Kun Autumnlight|r, |cRXP_FRIENDLY_He Softfoot|r and |cRXP_FRIENDLY_Ren Firetongue|r
.daily 30283,30293,30292,30282,30281 >> Accept all of the available daily quests
.disablecheckbox
.questcount <4,30283,30293,30292,30282,30281
.target Anji Autumnlight
.target Kun Autumnlight
.target He Softfoot
.target Ren Firetongue
.vale unknown
step 
#label mistfallUAaccept
.isNotOnQuest 31131,31242,31243
.goto 390,56.563,43.400
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r, |cRXP_FRIENDLY_Kun Autumnlight|r, |cRXP_FRIENDLY_He Softfoot|r and |cRXP_FRIENDLY_Ren Firetongue|r
.daily 30283,30293,30292,30282,30281 >> Accept all of the available daily quests
.disablecheckbox
.questcount <4,30283,30293,30292,30282,30281
.target Anji Autumnlight
.target Kun Autumnlight
.target He Softfoot
.target Ren Firetongue
.vale whitepetalUnderAttack

step
.isOnQuest 30281
#sticky
#label Whitepetalmogu
#loop
.waypoint 390,41.59,41.21,50,0
.waypoint 390,46.67,42.83,50,0
.waypoint 390,44.31,48.51,50,0
>>Kill |cRXP_ENEMY_Shao-Tien Mindbenders|r and |cRXP_ENEMY_Shao-Tien Reclaimers|r
.complete 30281,1 
.mob Shao-Tien Mindbender
.mob Shao-Tien Reclaimer
step
.isOnQuest 30292
#sticky
#label Flesheaters
#loop
.waypoint 390,41.59,41.21,50,0
.waypoint 390,46.67,42.83,50,0
.waypoint 390,44.31,48.51,50,0
>>Kill |cRXP_ENEMY_Paleblade Flesheaters|r and |cRXP_ENEMY_Skumblade Pillagers|r
.complete 30292,1 
.mob Paleblade Flesheater
.mob Skumblade Pillager
step
.isOnQuest 30293
#sticky
#label DominatedDefenders
#loop
.waypoint 390,41.59,41.21,50,0
.waypoint 390,46.67,42.83,50,0
.waypoint 390,44.31,48.51,50,0
>>Kill the |cRXP_ENEMY_Shao-Tien Mindbenders|r standing besides a |cRXP_FRIENDLY_Golden Lotus Defender|r to free them. Do NOT kill the |cRXP_FRIENDLY_Golden Lotus Defender|r
>>|cRXP_WARN_If you are able to dispel or are in a party with someone who can, dispelling the |cRXP_FRIENDLY_Golden Lotus Defender|r also works|r
.complete 30293,1 
.target Golden Lotus Defender
.mob Shao-Tien Mindbender
step
.isOnQuest 30282
#sticky
#label Banners
#loop
.waypoint 390,41.59,41.21,50,0
.waypoint 390,46.67,42.83,50,0
.waypoint 390,44.31,48.51,50,0
.use 84781 >>|cRXP_WARN_Use the|r |T135433:0|t[Shado-Pan Torch] |cRXP_WARN_on the|r |cRXP_PICK_Shao-Tien Banners|r
.complete 30282,1 
step
.isOnQuest 30283
#sticky
#label RitualStatues
#loop
.goto 390,44.035,44.531,5,0
.goto 390,43.145,43.090,5,0
>>Click the four |cRXP_PICK_Shao-Tien Ritual Statues|r
.complete 30283,1 
step
#requires Flesheaters
step
#requires RitualStatues
step
#requires DominatedDefenders
step
#requires Banners
step
#requires Whitepetalmogu
step
#optional
.isOnQuest 30482
.goto 390/870,1447.000,1137.500
>>Kill |cRXP_ENEMY_Shadowmaster Sydow|r. Loot him for the |cRXP_LOOT_Soul-Gatherer's Beads|r
.complete 30482,1 
.mob Shadowmaster Sydow
step
.isQuestComplete 30281
.goto 390/870,1048.700,1218.600
>>Click on the quest popup under your minimap to turn in the quest
>>|cRXP_WARN_Return to |cRXP_FRIENDLY_He Softfoot|r if you did not get a popup|r
.turnin 30281 >>Turn in The Silent Approach
.target He Softfoot
step
.isOnQuest 30282
.goto 390/870,1048.300,1211.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30282 >>Turn in Burning Away the Filth
step
.isOnQuest 30293
.goto 390/870,1049.700,1211.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30293 >>Turn in In Enemy Hands
step
.isOnQuest 30292
.goto 390/870,1049.700,1211.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30292 >>Turn in Rude Awakenings
step
.isOnQuest 30283
.goto 390/870,1045.400,1219.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
.target Ren Firetongue
.dailyturnin 30283 >>Turn in A Smashing Impression
step
.isQuestOffered 58470,30482
.goto 390/870,1048.700,1218.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_He Softfoot|r
>>|cRXP_WARN_Skip this step if he is not offering the daily quest|r
.target He Softfoot
.daily 30482 >>Accept The Soul-Gatherer
.vale whitepetalUnderAttack
step
.isOnQuest 30482
.goto 390/870,1447.000,1137.500
>>Kill |cRXP_ENEMY_Shadowmaster Sydow|r. Loot him for the |cRXP_LOOT_Soul-Gatherer's Beads|r
.complete 30482,1 
.mob Shadowmaster Sydow
step
.isOnQuest 30482
.goto 390/870,1048.800,1218.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_He Softfoot|r
.target He Softfoot
.turnin 30482 >>Turn in The Soul-Gatherer
step
.isQuestOffered 58408,31248,31249
.goto 390/870,1044.700,1212.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
>>|cRXP_WARN_Skip this step if he is not offering a daily quest|r
.target Leven Dawnblade
.daily 31248,31249 >>Accept the random daily quest
.vale whitepetalUnderAttack

step
#optional
.skipOnQuest 31248,ruinsofguolaiQuiet
.skipOnQuest 31249,mistfallQuiet
step 
#label whitepetal
.isOnQuest 31131
.goto 390/870,1375.000,1170.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_He Softfoot|r
.target He Softfoot
.dailyturnin 31131 >>Turn in Whitepetal Lake
step
#loop
.goto 390/870,1375.000,1170.500,10,0
.goto 390/870,1411.600,1172.800,10,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_He Softfoot|r, |cRXP_FRIENDLY_Ren Firetongue|r and |cRXP_FRIENDLY_Merchant Tantan|r
.daily 30313,30342,30291,30340,30341,30338,30339,30284,30314,30265 >> Accept all of the available daily quests
.disablecheckbox
.questcount <4,30313,30342,30291,30340,30341,30338,30339,30284,30314,30265
.target He Softfoot
.target Ren Firetongue
.target Merchant Tantan
.vale whitepetal
step
#optional
#completewith Surveyor
.isOnQuest 30341
.cast 123193 >> |cRXP_WARN_Use the|r |T135815:0|t[Shado-Pan Flare] |cRXP_WARN_to gain a buff to see |cRXP_ENEMY_Shao-Tien Surveyors|r more easily|r
.use 89366
.aura 123193
step
.isOnQuest 30313
#sticky
#label FogWalker
#loop
.goto 390,43.30,52.94,70,0
.goto 390,37.62,56.11,70,0
.goto 390,39.83,41.40,70,0
>>Kill |cRXP_ENEMY_Fog Walkers|r
.complete 30313,1 
.mob Fog Walker
step
.isOnQuest 30314
#sticky
#label PalebladeSaurok
#loop
.goto 390,43.30,52.94,70,0
.goto 390,37.62,56.11,70,0
.goto 390,39.83,41.40,70,0
>>Kill |cRXP_ENEMY_Paleblade Flesheaters|r and |cRXP_ENEMY_Paleblade Slithertongues|r
.complete 30314,1 
.mob Paleblade Flesheater
.mob Paleblade Slithertongue
step
.isOnQuest 30341
#sticky
#label Surveyor
#loop
.goto 390,43.30,52.94,70,0
.goto 390,37.62,56.11,70,0
.goto 390,39.83,41.40,70,0
>>Kill |cRXP_ENEMY_Shao-Tien Surveyors|r
.use 89366 >>|cRXP_WARN_Ensure you have the|r |T135815:0|t[Shado-Pan Flare] |cRXP_WARN_buff to see |cRXP_ENEMY_Shao-Tien Surveyors|r more easily. Note if you leave the lake area you will lose the buff|r
.complete 30341,1 
.mob Shao-Tien Surveyor
step
.isOnQuest 30342
#sticky
#label StillwaterCrocolisk
#loop
.goto 390,43.30,52.94,70,0
.goto 390,37.62,56.11,70,0
.goto 390,39.83,41.40,70,0
>>Kill |cRXP_ENEMY_Stillwater Crocolisks|r
.complete 30342,1 
.mob Stillwater Crocolisk
step
.isOnQuest 30340
#sticky
#label WhitepetalReed
#loop
.goto 390,43.30,52.94,70,0
.goto 390,37.62,56.11,70,0
.goto 390,39.83,41.40,70,0
>>Loot the |cRXP_PICK_Whitepatel Reeds|r on the ground
.complete 30340,1 
step
.isOnQuest 30339
#sticky
#label WhitepetalWorm
#loop
.goto 390,43.30,52.94,70,0
.goto 390,37.62,56.11,70,0
.goto 390,39.83,41.40,70,0
>>Loot the |cRXP_PICK_Fresh Dirt|r on the ground for |cRXP_LOOT_Fresh Whitepetal Worms|r
.complete 30339,1 
step
.isOnQuest 30291
#sticky
#label WhitepetalCarp
#loop
.goto 390,41.91,47.87,15,0
.goto 390,39.94,46.54,15,0
>>Loot the |cRXP_PICK_Stunned Whitepetal Carps|r in the lake
>>|cRXP_WARN_You can remain on your mount while you do this|r
.complete 30291,1 
step
.isOnQuest 30284
#sticky
#label KnifetoothSwarmers
#loop
.goto 390,41.91,47.87,15,0
.goto 390,39.94,46.54,15,0
>>Kill |cRXP_ENEMY_Knifetooth Swarmers|r
.complete 30284,1 
.mob Knifetooth Swarmer
step
.isOnQuest 30338
#sticky
#label MoguArtifacts
#loop
.goto 390,41.91,47.87,15,0
.goto 390,39.94,46.54,15,0
>>Loot the |cRXP_PICK_Mogu Artifacts|r in the lake
.complete 30338,1 
step
.isOnQuest 30265
#sticky
#label RubyEye
#loop
.goto 390,41.91,47.87,15,0
.goto 390,39.94,46.54,15,0
>>Loot the |cRXP_PICK_Ruby Eyes|r inside the Mogu Statues in the lake
.complete 30265,1 
step
#requires FogWalker
step
#requires StillwaterCrocolisk
step
#requires WhitepetalReed
step
#requires WhitepetalCarp
step
#requires WhitepetalWorm
step
#requires Surveyor
step
#requires MoguArtifacts
step
#requires KnifetoothSwarmers
step
#requires PalebladeSaurok
step
#requires RubyEye
step
.isOnQuest 30313
.goto 390/870,1375.000,1170.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_He Softfoot|r
.target He Softfoot
.dailyturnin 30313 >>Turn in The Moving Mists
step
.isOnQuest 30341
.goto 390/870,1375.000,1170.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_He Softfoot|r
.target He Softfoot
.dailyturnin 30341 >>Turn in Under Watchful Eyes
step
.isOnQuest 30314
.goto 390/870,1375.000,1170.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_He Softfoot|r
.target He Softfoot
.dailyturnin 30314 >>Turn in The Displaced Paleblade
step
.isOnQuest 30342
.goto 390/870,1409.300,1171.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
.target Ren Firetongue
.dailyturnin 30342 >>Turn in Fiery Tongue, Fragile Feet
step
.isOnQuest 30291
.goto 390/870,1409.300,1171.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
.target Ren Firetongue
.dailyturnin 30291 >>Turn in Stunning Display
step
.isOnQuest 30338
.goto 390/870,1409.300,1171.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
.target Ren Firetongue
.dailyturnin 30338 >>Turn in A Weighty Task
step
.isOnQuest 30265
.goto 390/870,1409.300,1171.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
.target Ren Firetongue
.dailyturnin 30265 >>Turn in Sparkle in the Eye
step
.isOnQuest 30284
.goto 390/870,1411.600,1172.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Tantan|r
.target Merchant Tantan
.dailyturnin 30284 >>Turn in A Thousand Pointy Teeth
step
.isOnQuest 30340
.goto 390/870,1411.600,1172.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Tantan|r
.target Merchant Tantan
.dailyturnin 30340 >>Turn in Stick in the Mud
step
.isOnQuest 30339
.goto 390/870,1411.600,1172.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Tantan|r
.target Merchant Tantan
.dailyturnin 30339 >>Turn in Getting your Hands Dirty
step 
.isQuestOffered 59343,30234,30233,31245,31240,31244,31247,31246
.goto 390/870,1409.200,1171.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
>>|cRXP_WARN_Skip this step if he is not offering this daily quest|r
.target Ren Firetongue
.daily 30234,30233,31245,31240,31244,31247,31246 >>Accept the random daily quest
.vale whitepetal
step
.isOnQuest 30234
.goto 390,37.392,50.853
>>Kill |cRXP_ENEMY_Vicejaw|r
>>|cRXP_WARN_NOTE: |cRXP_ENEMY_Vicejaw|r cannot be attacked from the front. You must always attack him from behind. Kite him over the nearby dead |cRXP_ENEMY_Paleblade Flesheater|r bodies until his energy reaches 100 and he begins casting|r |T136133:0|t[Upchuck]|cRXP_WARN_. Once he beings channeling this he takes 100% increased damage for 13 seconds. Repeat this process until he dies|r
.complete 30234,1 
.mob Vicejaw
step
.isOnQuest 30233
.goto 390,46.433,59.340
>>Kill |cRXP_ENEMY_Cracklefang|r
>>|cRXP_ENEMY_Cracklefang|r |cRXP_WARN_will continously leap around and cast|r |T236303:0|t[Devastating Arc] |cRXP_WARN_which deals heavy AoE damage in a 180 degree arc infront of him. Ensure you either out-range him or immediately move behind him when he begins to cast it|r
.complete 30233,1 
.mob Cracklefang
step
.isOnQuest 30234
.goto 390/870,1409.200,1171.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
.target Ren Firetongue
.dailyturnin 30234 >>Turn in Vicejaw
step
.isOnQuest 30233
.goto 390/870,1409.200,1171.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Firetongue|r
.target Ren Firetongue
.dailyturnin 30233 >>Turn in Cracklefang
step 
#optional
.skipOnQuest 31240,ruinsofguolaiQuiet
.skipOnQuest 31244,ruinsofguolaiUnderAttack
.skipOnQuest 31247,settingsun
.skipOnQuest 31246,mistfallUnderAttack

step 
#label mistfallQuiet
.isOnQuest 31242,31245,31249
.goto 390,33.863,72.202
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 31242,31245,31249 >>Turn in Mistfall Village
step 
#loop
.goto 390/870,1623.200,729.600,10,0
.goto 390/870,1625.600,772.000,10,0
.goto 390/870,1585.200,698.000,10,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r, |cRXP_FRIENDLY_Cook Tope|r, |cRXP_FRIENDLY_Merchant Benny|r and |cRXP_FRIENDLY_Mayor Shiyo|r
.daily 30237,30238,30190,30191,30194,30263,30195,30231,30192,30196,30232,30193 >> Accept all of the available daily quests
.disablecheckbox
.questcount <4,30237,30238,30190,30191,30194,30263,30195,30231,30192,30196,30232,30193
.target Che Wildwalker
.target Mayor Shiyo
.target Cook Tope
.target Merchant Benny
.vale mistfallQuiet
step
.isOnQuest 30232
#sticky
#label SilkenFeathers
.waypoint 390,26.67,63.29,70,0
.waypoint 390,38.59,56.89,70,0
.waypoint 390,30.34,51.12,70,0
.waypoint 390,26.86,62.02,70,0
>>Kill |cRXP_ENEMY_Silkfeather Hawks|r. Loot them for their |cRXP_LOOT_Silken Feathers|r
.complete 30232,1 
.mob Silkfeather Hawk
step
.isOnQuest 30193
#sticky
#label GazelleMeat
.waypoint 390,26.37,64.64,70,0
.waypoint 390,34.02,50.25,70,0
.waypoint 390,25.81,61.07,70,0
>>Kill |cRXP_ENEMY_Fairlands Gazelles|r. Loot them for their |cRXP_LOOT_Fairlands Gazelle Meat|r
.complete 30193,1 
.mob Fairlands Gazelle
step
.isOnQuest 30192
#sticky
#label firedoused1
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
.use 85782 >>Click on the |cRXP_PICK_Brazier Fires|r flames on the ground throughout the Village. You can also loot |T132806:0|t[|cRXP_LOOT_Mistfall Water Buckets|r] on the ground and use it to put the fires out
.collect 85782,5
.disablecheckbox
.complete 30192,1 
step
.isOnQuest 30196
#sticky
#label Lushrooms
#loop
.waypoint 390,42.80,64.72,55,0
.waypoint 390,44.31,72.82,55,0
.waypoint 390,52.40,67.70,55,0
>>Loot the |cRXP_PICK_Lushrooms|r on the ground
>>|cRXP_WARN_Note: Looting |cRXP_PICK_Lushrooms|r gives you a stacking debuff that increases your damage dealt and damage taken by 10% per stack. Stacks 5 times|r
.complete 30196,1 
step
.isOnQuest 30263
#sticky
#label Winterboughmogu
#loop
.waypoint 390,31.43,54.95,60,0
.waypoint 390,26.87,51.26,60,0
>>Kill |cRXP_ENEMY_Shao-Tien Painweavers|r and |cRXP_ENEMY_Shao-Tien Conquerors|r
.complete 30263,1 
.mob Shao-Tien Painweaver
.mob Shao-Tien Conqueror
step
.isOnQuest 30194
#sticky
#label Thundermaw
#loop
.waypoint 390,28.52,70.18,60,0
.waypoint 390,24.81,78.22,60,0
.waypoint 390,27.38,77.97,60,0
>>Kill |cRXP_ENEMY_Thundermaws|r
.complete 30194,1 
.mob Thundermaw
step
.isOnQuest 30195
#sticky
#label BlossomPetals
#loop
.waypoint 390,35.5,55.7,55,0
.waypoint 390,31.5,65.8,55,0
.waypoint 390,28.7,75.5,55,0
>>Loot the |cRXP_PICK_Eternal Blossoms|r on the ground
.complete 30195,1 
step
.isOnQuest 30231
#sticky
#label FreshPomfruit
#loop
.waypoint 390,26.87,51.26,70,0
.waypoint 390,27.38,77.97,70,0
.waypoint 390,40.41,64.09,70,0
>>Loot the |cRXP_PICK_Pomfruit|r hanging on the trees
>>|cRXP_WARN_You can complete this on your flying mount|r
.complete 30231,1 
step
.isOnQuest 30190
#sticky
#label Troublemakers
#loop
.waypoint 390,37.42,80.97,40,0
.waypoint 390,38.74,76.19,40,0
.waypoint 390,33.02,71.41,60,0
>>Kill |cRXP_ENEMY_Slateskin Troublemakers|r
.complete 30190,1 
.mob Slateskin Troublemaker
step
.isOnQuest 30191
#sticky
#label MistfallKeg
#loop
.waypoint 390,37.42,80.97,40,0
.waypoint 390,38.74,76.19,40,0
.waypoint 390,33.02,71.41,60,0
>>Loot the |cRXP_PICK_Stolen Mistfall Kegs|r on the ground
>>|cRXP_ENEMY_Slateskin Troublemakers|r |cRXP_WARN_will also drop these on the ground when you engage them|r
.complete 30191,1 
step
.isOnQuest 30237
#sticky
#label MoguSpirits
#loop
.waypoint 390,42.80,64.72,55,0
.waypoint 390,44.31,72.82,55,0
.waypoint 390,52.40,67.70,55,0
>>Kill |cRXP_ENEMY_Ancient Mogu Spirits|r
.complete 30237,1 
.mob Ancient Mogu Spirit
step
.isOnQuest 30238
#sticky
#label PandarenGravestones
#loop
.waypoint 390,42.80,64.72,55,0
.waypoint 390,44.31,72.82,55,0
.waypoint 390,52.40,67.70,55,0
>>Click the |cRXP_PICK_Pandaren Gravestones|r
.complete 30238,1 
step
#requires SilkenFeathers
step
#requires GazelleMeat
step
#requires Lushrooms
step
#requires firedoused1
step
#requires Troublemakers
step
#requires MistfallKeg
step
#requires MoguSpirits
step
#requires PandarenGravestones
step
#requires Thundermaw
step
#requires Winterboughmogu
step
#requires BlossomPetals
step
#requires FreshPomfruit
step
.isOnQuest 30237
.goto 390,33.863,72.202
>>Click on the quest popup under your minimap to turn in the quest
>>|cRXP_WARN_If you did not get a popup, talk to|r |cRXP_FRIENDLY_Che Wildwalker|r
.dailyturnin 30237 >>Turn in The Pandaren Uprising Relived
.target Che Wildwalker
step
#optional
.isOnQuest 30239
.goto 390,47.51,67.93,15,0
.goto 390/870,1279.500,839.400
>>Kill |cRXP_ENEMY_Lao-Fe the Slavebinder|r
.complete 30239,1 
.mob Lao-Fe the Slavebinder
step
.isOnQuest 30191
.goto 390/870,1585.200,698.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Shiyo|r
.target Mayor Shiyo
.dailyturnin 30191 >>Turn in Steer Clear of the Beer Here
step
.isOnQuest 30192
.goto 390/870,1585.200,698.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Shiyo|r
.target Mayor Shiyo
.dailyturnin 30192 >>Turn in My Town, It's on Fire
step
.isOnQuest 30190
.goto 390/870,1585.200,698.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Shiyo|r
.target Mayor Shiyo
.dailyturnin 30190 >>Turn in Sprite Plight
step
.isOnQuest 30195
.goto 390/870,1625.600,772.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Benny|r
.target Merchant Benny
.dailyturnin 30195 >>Turn in Blooming Blossoms
step
.isOnQuest 30231
.goto 390/870,1623.800,759.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Tope|r
.target Cook Tope
.dailyturnin 30231 >>Turn in Pomfruit Pickup
step
.isOnQuest 30196
.goto 390/870,1623.800,759.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Tope|r
.target Cook Tope
.dailyturnin 30196 >>Turn in Lushroom Rush
step
.isOnQuest 30193
.goto 390/870,1623.800,759.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Tope|r
.target Cook Tope
.dailyturnin 30193 >>Turn in Meating Expectations
step
.isOnQuest 30232
.goto 390/870,1623.200,729.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 30232 >>Turn in Ruffling Some Feathers
step
.isOnQuest 30238
.goto 390/870,1623.200,729.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 30238 >>Turn in Return to Rest
step
.isOnQuest 30263
.goto 390/870,1623.200,729.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 30263 >>Turn in Clearing in the Forest
step
.isOnQuest 30194
.goto 390/870,1623.200,729.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 30194 >>Turn in Encroaching Storm
step
.isQuestOffered 59338,30239,30236,31294,30385,30235
.goto 390/870,1623.300,729.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
>>|cRXP_WARN_Skip this step if he is not offering a quest|r
.target Che Wildwalker
.daily 30239,30236,31294,30385,30235 >>Accept the random daily quest
.vale mistfallQuiet
step
.isOnQuest 30235
.goto 390,30.817,79.289
>>Defeat |cRXP_ENEMY_Quid|r
.complete 30235,1 
.mob Quid
step
.isOnQuest 30239
.goto 390,47.51,67.93,15,0
.goto 390/870,1279.500,839.400
>>Kill |cRXP_ENEMY_Lao-Fe the Slavebinder|r
.complete 30239,1 
.mob Lao-Fe the Slavebinder
step
.isOnQuest 30236
.goto 390,34.81,90.03
>>Defeat |cRXP_ENEMY_Aetha|r
>>|cRXP_WARN_You also have a Waterwalking buff which gives you room to dodge her Tornado casts if required|r
.complete 30236,1 
.mob Aetha
step
.isOnQuest 30236
.goto 390/870,1623.300,729.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 30236 >>Turn in Aetha
step
.isOnQuest 30239
.goto 390/870,1623.300,729.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 30239 >>Turn in Lao-Fe the Slavebinder
step
.isOnQuest 30235
.goto 390/870,1623.300,729.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Che Wildwalker|r
.target Che Wildwalker
.dailyturnin 30235 >>Turn in Quid Pro Quo
step
#optional
.skipOnQuest 31294,ruinsofguolaiQuiet
step
#optional
.skipOnQuest 30385,settingsun
step
#optional
#label mistfallUnderAttack
step 
.isOnQuest 31243
.goto 390/870,1591.600,676.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 31243 >>Turn in Attack on Mistfall Village
step 
.isOnQuest 31246
.goto 390/870,1588.300,684.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 31246 >>Turn in Attack on Mistfall Village
step 
#loop
.goto 390/870,1591.600,676.000,5,0
.goto 390,35.290,76.781,5,0
.goto 390,35.248,74.893,5,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r, |cRXP_FRIENDLY_Sun Tenderheart|r and |cRXP_FRIENDLY_Mayor Shiyo|r
.daily 31293,30289,30285,30288,30287,30290,30286 >> Accept all of the available daily quests
.disablecheckbox
.questcount <4,31293,30289,30285,30288,30287,30290,30286
.target Rook Stonetoe
.target Sun Tenderheart
.target Mayor Shiyo
.vale mistfallUnderAttack
step
.isOnQuest 30287
#sticky
#label MoguAttackers2
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
>>Kill |cRXP_ENEMY_Shao-Tien Subjugators|r and |cRXP_ENEMY_Shao-Tien Pillagers|r
.complete 30287,1 
.mob Shao-Tien Subjugator
.mob Shao-Tien Pillager
step
.isOnQuest 30290
#sticky
#label StoneboundQuilen
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
>>Kill |cRXP_ENEMY_Stonebound Quilen|r
.complete 30290,1 
.mob Stonebound Quilen
step
.isOnQuest 30286
#sticky
#label CorneredVillagers
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
>>Attack the |cRXP_ENEMY_Mogu|r and |cRXP_ENEMY_Quilen|r pinning down the |cRXP_FRIENDLY_Cornered Villagers|r
.complete 30286,1 
.target Cornered Villager
step
.isOnQuest 31293
#sticky
#label MoguAttackers
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
>>Kill |cRXP_ENEMY_Shao-Tien Subjugators|r and |cRXP_ENEMY_Shao-Tien Pillagers|r
.complete 31293,1 
.mob Shao-Tien Subjugator
.mob Shao-Tien Pillager
step
.isOnQuest 30289
#sticky
#label DominatedGuards
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
>>Kill |cRXP_ENEMY_Shao-Tien Subjugators|r to free the |cRXP_FRIENDLY_Golden Lotus Guards|r
.complete 30289,1 
.target Golden Lotus Guard
.mob Shao-Tien Subjugator
step
.isOnQuest 30285
#sticky
#label ScoutingReports
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
>>Loot the |cRXP_PICK_Wu Kao Scouting Reports|r on the ground and on the tables
>>|cRXP_WARN_They also have a small chance to drop from the|r |cRXP_ENEMY_Mogu|r
.complete 30285,1 
step
.isOnQuest 30288
#sticky
#label firedoused
#loop
.waypoint 390,33.21,74.04,45,0
.waypoint 390,31.90,70.64,45,0
.waypoint 390,38.27,70.17,45,0
.waypoint 390,36.62,75.53,45,0
>>Loot the |T132806:0|t[|cRXP_LOOT_Mistfall Water Buckets|r] scattered around Mistfall Village
.use 85950 >>|cRXP_WARN_Use the|r |T132806:0|t[|cRXP_LOOT_Mistfall Water Buckets|r] |cRXP_WARN_on the fires|r
.collect 85950,8
.disablecheckbox
.complete 30288,1 
step
#requires CorneredVillagers
step
#requires StoneboundQuilen
step
#requires MoguAttackers2
step
#requires MoguAttackers
step
#requires DominatedGuards
step
#requires ScoutingReports
step
#requires firedoused
step
.isOnQuest 30287
.goto 390/870,1588.300,684.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 30287 >>Turn in Mogu Make Poor House Guests
step
.isOnQuest 30290
.goto 390/870,1588.300,684.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 30290 >>Turn in Stonebound Killers
step
.isOnQuest 30286
.goto 390/870,1591.700,676.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 30286 >>Turn in Backed Into a Corner
step
.isOnQuest 30289
.goto 390/870,1588.300,684.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 30289 >>Turn in Freeing Mind and Body
step
.isOnQuest 31293
.goto 390/870,1588.300,684.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 31293 >>Turn in Mogu Make Poor House Guests
step
.isOnQuest 30285
.goto 390/870,1591.700,676.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 30285 >>Turn in Wu Kao Scouting Reports
step
.isOnQuest 30288
.goto 390/870,1587.300,652.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Shiyo|r
.target Mayor Shiyo
.dailyturnin 30288 >>Turn in My Town, It's On Fire Again
step 
.isQuestOffered 59337,31296,30297,31297
.isQuestOffered 58911,31296,30297
#loop
.goto 390/870,1591.700,676.000,5,0
.goto 390/870,1588.300,684.100,5,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r or |cRXP_FRIENDLY_Rook Stonetoe|r
>>|cRXP_WARN_Skip this step if they are not offering a daily quest|r
.target Sun Tenderheart
.target Rook Stonetoe
.daily 31296,30297,31297 >>Accept the random daily quest
.vale mistfallUnderAttack
step
#optional
.skipOnQuest 31296,ruinsofguolaiQuiet
.skipOnQuest 31297,settingsun
step
.isOnQuest 30297
.goto 390/870,1531.500,573.400
>>Kill |cRXP_ENEMY_Baolai the Immolator|r
.complete 30297,1 
.mob Baolai the Immolator
step
.isOnQuest 30297
.goto 390/870,1588.400,684.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 30297 >>Turn in Baolai the Immolator

step 
#label ruinsofguolaiUnderAttack
.isOnQuest 31244
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 31244 >>Turn in Guo-Lai Encampment
step
#loop
.goto 390/870,1624.600,1298.300,5,0
.goto 390/870,1635.200,1306.100,5,0
.goto 390/870,1642.300,1290.400,5,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r, |cRXP_FRIENDLY_Rook Stonetoe|r and |cRXP_FRIENDLY_Sun Tenderheart|r
.daily 30298,30301,30305,30299,30300,30481 >> Accept all of the available daily quests
.disablecheckbox
.questcount <4,30298,30301,30305,30299,30300,30481
.target Leven Dawnblade
.target Rook Stonetoe
.target Sun Tenderheart
.vale ruinsofguolaiUnderAttack
step
.isOnQuest 30481
#sticky
#label Runestones2
#loop
.waypoint 390,31.34,31.49,50,0
.waypoint 390,29.73,25.07,50,0
.waypoint 390,31.16,17.76,50,0
.waypoint 390,26.50,20.34,50,0
.waypoint 390,25.75,26.92,60,0
.waypoint 390,18.44,31.14,60,0
.waypoint 390,24.77,41.56,60,0
>>Loot the |cRXP_PICK_Guo-Lai Runestones|r on the broken walls
>>|cRXP_WARN_These are small objects and can be difficult to spot|r
.complete 30481,1 
step
.isOnQuest 30301
#sticky
#label BurnTents
#loop
.waypoint 390,25.25,42.81,60,0
.waypoint 390,26.18,37.05,60,0
.waypoint 390,26.29,27.60,60,0
.waypoint 390,20.24,30.42,60,0
.use 85581 >>|cRXP_WARN_Use the|r |T135433:0|t[Shado-Pan Torch] |cRXP_WARN_to burn the Shao-Tien Tents|r
.complete 30301,1 
step
.isOnQuest 30305
#sticky
#label LureMogu
#loop
.waypoint 390,25.25,42.81,60,0
.waypoint 390,26.18,37.05,60,0
.waypoint 390,26.29,27.60,60,0
.waypoint 390,20.24,30.42,60,0
.waypoint 390,31.83,31.73,60,0
>>Lure the |cRXP_ENEMY_Mogu|r over |cRXP_PICK_Poison Traps|r
>>|cRXP_WARN_These look the same as the|r |cFFAAD372Hunter|r |cRXP_PICK_Snake Trap|r |cRXP_WARN_ability|r
.complete 30305,1 
.target He Softfoot
step
.isOnQuest 30299
#sticky
#label MoguStatue2
#loop
.waypoint 390,25.75,26.92,60,0
.waypoint 390,18.44,31.14,60,0
.waypoint 390,24.77,41.56,60,0
.waypoint 390,30.98,31.38,60,0
>>Click the |cRXP_PICK_Mogu Statues|r. Kill it if it comes to life
>>|cRXP_WARN_There are more |cRXP_PICK_Mogu Statues|r in the Guo-Lai Halls|r
.complete 30299,1 
.mob Mogu Statue
step
.isOnQuest 30298
#sticky
#label GuoLaimogu
#loop
.waypoint 390,25.25,42.81,60,0
.waypoint 390,26.18,37.05,60,0
.waypoint 390,26.29,27.60,60,0
.waypoint 390,20.24,30.42,60,0
.waypoint 390,31.83,31.73,60,0
>>Kill |cRXP_ENEMY_Shao-Tien Dominators|r, |cRXP_ENEMY_Shao-Tien Soul-Callers|r and |cRXP_ENEMY_Shao-Tien Torturers|r
.complete 30298,1 
.mob Shao-Tien Dominator
.mob Shao-Tien Soul-Caller
.mob Shao-Tien Torturer
step
.isOnQuest 30300
#loop
.waypoint 390,25.25,42.81,60,0
.waypoint 390,26.18,37.05,60,0
.waypoint 390,26.29,27.60,60,0
.waypoint 390,20.24,30.42,60,0
.waypoint 390,31.83,31.73,60,0
>>Kill |cRXP_ENEMY_Shao-Tien Torturers|r, |cRXP_ENEMY_Shao-Tien Dominators|r and |cRXP_ENEMY_Shao-Tien Soul-Callers|r. Loot them for the |cRXP_LOOT_Shao-Tien Cage Key|r
.complete 30300,1 
.mob Shao-Tien Torturer
.mob Shao-Tien Dominator
.mob Shao-Tien Soul-Caller
step
.isOnQuest 30300
#loop
.waypoint 390,25.25,42.81,60,0
.waypoint 390,26.18,37.05,60,0
.waypoint 390,26.29,27.60,60,0
.waypoint 390,20.24,30.42,60,0
.waypoint 390,31.83,31.73,60,0
>>Click on the |cRXP_PICK_Shao-Tien Cages|r to free the |cRXP_FRIENDLY_Golden Lotus Captives|r
.complete 30300,2 
.target Golden Lotus Captive
step
#requires GuoLaimogu
step
#requires BurnTents
step
#requires LureMogu
step
#requires MoguStatue2
step
#requires Runestones2
step
.isOnQuest 30305
.goto 390/870,1635.200,1306.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 30305 >>Turn in He Knows What He's Doing
step
.isOnQuest 30481
.goto 390/870,1635.200,1306.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rook Stonetoe|r
.target Rook Stonetoe
.dailyturnin 30481 >>Turn in Carved in Stone
step
.isOnQuest 30300
.goto 390/870,1642.300,1290.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 30300 >>Turn in The Key to Success
step
.isOnQuest 30299
.goto 390/870,1642.300,1290.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.dailyturnin 30299 >>Turn in No Stone Unturned
step
.isOnQuest 30298
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30298 >>Turn in Painting the Ruins Red
step
.isOnQuest 30301
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30301 >>Turn in Offering a Warm Welcome
step 
.isQuestOffered 59332,30225,30227,30302
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
>>|cRXP_WARN_Skip this step if he is not offering the daily|r
.target Leven Dawnblade
.daily 30225,30227,30302 >>Accept the randomly daily quest
.vale ruinsofguolaiUnderAttack
step 
.reputation 1269,revered,<0,1
.isQuestOffered 59332,30280,30277
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
>>|cRXP_WARN_Skip this step if he is not offering the daily|r
.target Leven Dawnblade
.daily 30280,30277 >>Accept the random daily quest
.vale ruinsofguolaiUnderAttack
step
#optional
.skipOnQuest 30225,EnterGuoLaiHalls
.skipOnQuest 30227,EnterGuoLaiHalls
.skipOnQuest 30302,EnterGuoLaiHalls
.skipOnQuest 30280,EnterGuoLaiHalls
.skipOnQuest 30277,EnterGuoLaiHalls
step
#optional
#label ruinsofguolaiQuiet
step 
.isOnQuest 31296,31294,31248
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 31296,31294,31248 >>Turn in The Ruins of Guo-Lai
step 
.isOnQuest 31240
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 31240 >>Turn in Guo-Lai Infestation
step
#loop
.goto 390,34.015,38.102,5,0
.goto 390,33.490,40.797,5,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r, |cRXP_FRIENDLY_Kun Autumnlight|r and |cRXP_FRIENDLY_Sinan the Dreamer|r
.daily 30204,30200,30228,30304,30226,30206,30205 >> Accept all of the available daily quests
.disablecheckbox
.questcount <4,30204,30200,30228,30304,30226,30206,30205
.target Anji Autumnlight
.target Kun Autumnlight
.target Sinan the Dreamer
.vale ruinsofguolaiQuiet
step
.isOnQuest 30226
#sticky
#label Risemogu
#loop
.waypoint 390,30.55,30.03,50,0
.waypoint 390,30.94,20.02,50,0
.waypoint 390,27.32,17.14,50,0
>>Kill |cRXP_ENEMY_Shao-Tien Sorcerers|r and |cRXP_ENEMY_Shao-Tien Fists|r
.complete 30226,1 
.mob Shao-Tien Sorcerer
.mob Shao-Tien Fist
step
.isOnQuest 30228
#sticky
#label StonebarkSprite
#loop
.waypoint 390,31.83,32.22,50,0
.waypoint 390,30.31,24.51,50,0
.waypoint 390,30.74,19.50,50,0
.waypoint 390,30.42,16.33,50,0
.waypoint 390,26.92,20.77,50,0
>>Kill |cRXP_ENEMY_Stonebark Tricksters|r and |cRXP_ENEMY_Stonebark Trinketstealers|r
.complete 30228,1 
.mob Stonebark Trickster
.mob Stonebark Trinketstealer
step
.isOnQuest 30204
#sticky
#label AshwebHatchling
#loop
.waypoint 390,25.75,26.92,60,0
.waypoint 390,18.44,31.14,60,0
.waypoint 390,24.77,41.56,60,0
.waypoint 390,30.98,31.38,60,0
.use 85261 >>|cRXP_WARN_Use the|r |T135433:0|t[Shado-Pan Torch] |cRXP_WARN_on the Spider Egg Pods on the ground to spawn |cRXP_ENEMY_Ashweb Hatchlings|r. Running over them will also cause them to spawn|r
>>Kill the |cRXP_ENEMY_Ashweb Hatchlings|r
.complete 30204,1 
.mob Ashweb Hatchling
step
.isOnQuest 30304
#sticky
#label MoguStatue
#loop
.waypoint 390,25.75,26.92,60,0
.waypoint 390,18.44,31.14,60,0
.waypoint 390,24.77,41.56,60,0
.waypoint 390,30.98,31.38,60,0
>>Click the |cRXP_PICK_Mogu Statues|r. Kill it if it comes to life
>>|cRXP_WARN_There are more |cRXP_PICK_Mogu Statues|r in the Guo-Lai Halls|r
.complete 30304,1 
.mob Mogu Statue
step
.isOnQuest 30200
#sticky
#label AshwebSpiders
#loop
.waypoint 390,25.75,26.92,60,0
.waypoint 390,18.44,31.14,60,0
.waypoint 390,24.77,41.56,60,0
>>Kill |cRXP_ENEMY_Ashweb Weavers|r and |cRXP_ENEMY_Ashweb Piercers|r
.complete 30200,1 
.mob Ashweb Weaver
.mob Ashweb Piercer
step
.isOnQuest 30205
#sticky
#label MoguArtifact
#loop
.waypoint 390,31.34,31.49,50,0
.waypoint 390,29.73,25.07,50,0
.waypoint 390,31.16,17.76,50,0
.waypoint 390,26.50,20.34,50,0
>>|cRXP_WARN_Look for the |cRXP_PICK_Ancient Mogu Artifact|r and Blue Circles around it on the ground|r
>>Once you have spotted it, run over the Blue Circles, then loot the |cRXP_PICK_Ancient Mogu Artifact|r
.complete 30205,1 
.target Ancient Mogu Artifact
step
.isOnQuest 30206
#sticky
#label Runestones
#loop
.waypoint 390,31.34,31.49,50,0
.waypoint 390,29.73,25.07,50,0
.waypoint 390,31.16,17.76,50,0
.waypoint 390,26.50,20.34,50,0
.waypoint 390,25.75,26.92,60,0
.waypoint 390,18.44,31.14,60,0
.waypoint 390,24.77,41.56,60,0
>>Loot the |cRXP_PICK_Guo-Lai Runestones|r on the broken walls
>>|cRXP_WARN_These are small objects and can be difficult to spot|r
.complete 30206,1 

step
#requires Runestones
step
#requires MoguArtifact
step
#requires Risemogu
step
#requires AshwebHatchling
step
#requires MoguStatue
step
#requires StonebarkSprite
step
#requires AshwebSpiders
step
.isOnQuest 30206
.goto 390,33.490,40.797
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sinan the Dreamer|r
.target Sinan the Dreamer
.dailyturnin 30206 >>Turn in Runes in the Ruins
step
.isOnQuest 30205
.goto 390,33.490,40.797
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sinan the Dreamer|r
.target Sinan the Dreamer
.dailyturnin 30205 >>Turn in Runelocked
step
.isOnQuest 30204
.goto 390/870,1618.200,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30204 >>Turn in That's Not a Rock!
step
.isOnQuest 30304
.goto 390/870,1618.200,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30304 >>Turn in Hard as a Rock
step
.isOnQuest 30226
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30226 >>Turn in Blood on the Rise
step
.isOnQuest 30228
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30228 >>Turn in Troubling the Troublemakers
step
.isOnQuest 30200
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30200 >>Turn in In Ashen Webs
step 
.isQuestOffered 58503,30225,30227,30302
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
>>|cRXP_WARN_Skip this step if she is not offering the daily|r
.target Anji Autumnlight
.daily 30225,30227,30302 >>Accept the randomly daily quest
.vale ruinsofguolaiQuiet
step 
.reputation 1269,revered,<0,1
.isQuestOffered 58503,30280,30277
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
>>|cRXP_WARN_Skip this step if she is not offering the daily|r
.target Anji Autumnlight
.daily 30280,30277 >>Accept the random daily quest
.vale ruinsofguolaiQuiet
step
#label EnterGuoLaiHalls
#completewith Bloodtip
.goto 395,55.74,92.68,20,0
.goto 395,47.31,82.32
.subzone 6074 >> Enter the Guo-Lai Halls
step
#optional
#completewith ReveredQuests
.isOnQuest 30280,30277
.goto 395,52.328,63.194,14 >> |cRXP_WARN_REMEMBER TO CHECK THE COLOR OF THE TILE AS YOU PASS!|r
step
.isOnQuest 30280
.goto 395,63.10,22.03,15,0
.goto 395,64.65,16.09,15,0
.goto 390/870,1915.700,1697.800
>>|cRXP_WARN_Head to the back of the Halls and go downstairs|r
>>Kill |cRXP_ENEMY_Milau|r
>>|cRXP_WARN_When|r |cRXP_ENEMY_Milau|r |cRXP_WARN_casts|r |T236154:0|t[Lightning Sweep]|cRXP_WARN_, run back to the upper level to avoid it|r
.complete 30280,1 
.mob Milau
step
.isOnQuest 30277
.goto 395,28.62,45.70,10 >> Travel toward the Guo-Lai Vault. Avoid the falling rocks throughout this area
step
.isOnQuest 30277
.goto 395,36.620,36.757
.cast 3365 >> Click the |cRXP_PICK_First Spirit Wall|r
step
.isOnQuest 30277
.goto 395,22.992,28.693
.cast 3365 >> Click the |cRXP_PICK_Second Spirit Wall|r
step
#completewith next
.isOnQuest 30277
.goto 395,34.743,21.958,15 >> Travel further into the Vault
step
.isOnQuest 30277
.goto 395,41.912,27.833
.cast 3365 >> Click the |cRXP_PICK_Final Spirit Wall|r
>>|cRXP_WARN_NOTE: It can spawn in a random location inside this room|r
>>|cRXP_WARN_Remember to only stand on the same tile you saw at the enterance earlier!|r
step
.isOnQuest 30277
.goto 395,49.788,30.805
>>Loot the |cRXP_PICK_Ancient Guo-Lai Artifact|r
>>|cRXP_WARN_Remember to only stand on the same tile you saw at the enterance earlier!|r

.complete 30277,2 
step
#optional
#label ReveredQuests
step
.isOnQuest 30302
.goto 390/870,1795.300,1700.100
>>Kill either |cRXP_ENEMY_Gochao the Ironfist|r, |cRXP_ENEMY_Gaohun the Soul-Severer|r or |cRXP_ENEMY_Huo-Shuang|r
>>|cRXP_WARN_NOTE: There is a very low chance of a bug where you cannot see any |cRXP_ENEMY_Shao-Tien Imperion|r. If this is the case, head to The Golden Pagoda and complete the quest chain for the Battle Spear of the Thunder King, then return to the|r |cRXP_ENEMY_Shao-Tien Imperion|r
.complete 30302,1 
.mob Gochao the Ironfist
.mob Gaohun the Soul-Severer
.mob Huo-Shuang
step
.isOnQuest 30227
.goto 390/870,1798.400,1599.300
>>Kill |cRXP_ENEMY_Wulon|r
>>|cRXP_WARN_NOTE: There is a very low chance of a bug where you cannot see |cRXP_ENEMY_Wulon|r. If this is the case, head to The Golden Pagoda and complete the quest chain for the Battle Spear of the Thunder King, then return to|r |cRXP_ENEMY_Wulon|r
.complete 30227,1 
.mob Wulon
step
#label Bloodtip
.isOnQuest 30225
.goto 390/870,1795.300,1700.100
>>Kill |cRXP_ENEMY_Bloodtip|r
>>|cRXP_WARN_NOTE: There is a very low chance of a bug where you cannot see |cRXP_ENEMY_Bloodtip|r. If this is the case, head to The Golden Pagoda and complete the quest chain for the Battle Spear of the Thunder King, then return to|r |cRXP_ENEMY_Bloodtip|r
.complete 30225,1 
.mob Bloodtip
step
#completewith ExitGLH
.goto 395,49.66,73.37,25,0
.goto 390,22.37,26.65,20 >> Exit the Guo-Lai Halls
step
.isOnQuest 30280
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30280 >>Turn in The Thunder Below
.vale ruinsofguolaiQuiet
step
.isOnQuest 30277
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30277 >>Turn in The Crumbling Hall
.vale ruinsofguolaiQuiet
step
.isOnQuest 30225
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30225 >>Turn in The Ashweb Matriarch
.vale ruinsofguolaiQuiet
step
.isOnQuest 30227
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30227 >>Turn in Wulon, the Granite Sentinel
.vale ruinsofguolaiQuiet
step
.isOnQuest 30302
.goto 390/870,1620.500,1304.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30302 >>Turn in The Imperion Threat
.vale ruinsofguolaiQuiet
step
.isOnQuest 30280
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30280 >>Turn in The Thunder Below
.vale ruinsofguolaiUnderAttack
step
.isOnQuest 30277
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30277 >>Turn in The Crumbling Hall
.vale ruinsofguolaiUnderAttack
step
.isOnQuest 30225
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30225 >>Turn in The Ashweb Matriarch
.vale ruinsofguolaiUnderAttack
step
.isOnQuest 30227
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30227 >>Turn in Wulon, the Granite Sentinel
.vale ruinsofguolaiUnderAttack
step
.isOnQuest 30302
.goto 390/870,1624.600,1298.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.dailyturnin 30302 >>Turn in The Imperion Threat
.vale ruinsofguolaiUnderAttack
step
#optional
#label ExitGLH

step
.reputation 1269,honored,<0,1
.goto 390/870,1044.700,1212.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.accept 30639 >>Accept The Secrets of Guo-Lai
.subzoneskip 6036,1
step
.isOnQuest 30639
.goto 395,55.74,92.68
.subzone 6074 >> Enter the Guo-Lai Halls
step
.isOnQuest 30639
.goto 390/870,2015.000,1680.400
>>Talk to |cRXP_FRIENDLY_He Softfoot|r
.complete 30639,1 
.skipgossipid 129770
.target He Softfoot
step
.isOnQuest 30639
.goto 395,27.81,43.78,20,0
.goto 395,33.49,20.86,20 >>|cRXP_WARN_Follow |cRXP_FRIENDLY_He Softfoot|r into the Guo-Lai Vault|r
step
.isOnQuest 30639
.goto 395,46.532,28.793,10 >>|cRXP_WARN_Head toward |cRXP_ENEMY_Zhao-Jin the Bloodletter|r on the platform to begin the RP|r
.timer 90,The Secrets of Guo-Lai RP
.mob Zhao-Jin the Bloodletter
step
.isOnQuest 30639
.goto 395,48.375,29.946
>>|cRXP_WARN_Kill the attacking |cRXP_ENEMY_Crumbling Jade Warriors|r while waiting out the RP|r
>>|cRXP_WARN_Once |cRXP_FRIENDLY_He Softfoot|r is picked up by the |cRXP_ENEMY_Jade Colossus|r on the platform, attack him to begin the second stage of RP|r
.complete 30639,2 
.timer 20,Cage Opening RP
.mob Crumbling Jade Warrior
.mob Jade Colossus
step
.isOnQuest 30639
.goto 390/870,1044.900,1212.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.turnin 30639 >>Turn in The Secrets of Guo-Lai


step 
.reputation 1269,honored,<0,1
.goto 390/870,1044.700,1212.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.daily 31250 >>Accept Setting Sun Garrison
.subzoneskip 6036,1 
step
#optional
#label settingsun
step
.isOnQuest 31250,31247,30385,31297
.goto 390/870,1937.400,740.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 31250,31247,30385,31297 >>Turn in Setting Sun Garrison
step
.goto 390/870,1937.400,740.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.daily 30306 >>Accept The Battle Ring
.vale settingsun

step
.isQuestAvailable 30639
.reputation 1269,honored,<0,1
.goto 390/870,1936.700,746.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
>>|cRXP_WARN_Skip this step if he is not offering the quest|r
.target Leven Dawnblade
.accept 30639 >>Accept The Secrets of Guo-Lai
.subzoneskip 6035,1 
step
.isOnQuest 30639
.goto 395,55.74,92.68
.subzone 6074 >> Enter the Guo-Lai Halls
step
.isOnQuest 30639
.goto 390/870,2015.000,1680.400
>>Talk to |cRXP_FRIENDLY_He Softfoot|r
.complete 30639,1 
.skipgossipid 129770
.target He Softfoot
step
.isOnQuest 30639
.goto 395,27.81,43.78,20,0
.goto 395,33.49,20.86,20 >>|cRXP_WARN_Follow |cRXP_FRIENDLY_He Softfoot|r into the Guo-Lai Vault|r
step
.isOnQuest 30639
.goto 395,46.532,28.793,10 >>|cRXP_WARN_Head toward |cRXP_ENEMY_Zhao-Jin the Bloodletter|r on the platform to begin the RP|r
.timer 90,The Secrets of Guo-Lai RP
.mob Zhao-Jin the Bloodletter
step
.isOnQuest 30639
.goto 395,48.375,29.946
>>|cRXP_WARN_Kill the attacking |cRXP_ENEMY_Crumbling Jade Warriors|r while waiting out the RP|r
>>|cRXP_WARN_Once |cRXP_FRIENDLY_He Softfoot|r is picked up by the |cRXP_ENEMY_Jade Colossus|r on the platform, attack him to begin the second stage of RP|r
.complete 30639,2 
.timer 20,Cage Opening RP
.mob Crumbling Jade Warrior
.mob Jade Colossus
step
.isOnQuest 30639
.goto 390/870,1936.700,746.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.turnin 30639 >>Turn in The Secrets of Guo-Lai

step
.goto 390/870,1936.800,746.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
.target Leven Dawnblade
.daily 30242,30240 >>Accept the random daily quest
.vale settingsun
step
.isOnQuest 30242
.goto 390,18.770,67.851
>>Stay inside the Survival Ring for 60 seconds
>>|cRXP_WARN_Avoid the |cRXP_FRIENDLY_Shado-Pan Trainers|r as they will knock you back, and stepping into the Blades will cause you to take heavy damage|r
.complete 30242,1 
step
.isOnQuest 30240
.goto 390,18.770,67.851
>>Enter and stay inside the Survival Ring for 60 seconds
>>|cRXP_WARN_Begin running counterclockwise around of the edge of the circle, but remaining on the inside of the|r |cRXP_PICK_Stone Pillars|r
.complete 30240,1 
step
.isOnQuest 30240
.goto 390/870,2013.100,740.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
.target Yumi Goldenpaw
.dailyturnin 30240 >>Turn in Survival Ring: Flame
step
.isOnQuest 30242
.goto 390/870,2013.100,740.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
.target Yumi Goldenpaw
.dailyturnin 30242 >>Turn in Survival Ring: Blades
step
.isOnQuest 30306
.goto 390/870,1988.500,694.400
>>Stand inside of the Battle Ring. Defeat 20 |cRXP_ENEMY_Shado-Pan Trainees|r
.complete 30306,1 
.mob Shado-Pan Trainee
step
.isOnQuest 30306
#loop
.goto 390/870,1962.100,695.800,5,0
.goto 390/870,1963.400,707.100,5,0
.goto 390,20.11,75.68,5,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
>>|cRXP_FRIENDLY_Hai-Me Heavyhands|r |cRXP_WARN_patrols slightly|r
.target Hai-Me Heavyhands
.dailyturnin 30306 >>Turn in The Battle Ring
step
.isQuestOffered 58919,30264,30246,30444
.goto 390/870,1937.400,740.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
>>|cRXP_WARN_Skip this step if she is not offering a quest|r
.daily 30264,30246,30444 >> Accept all of the available daily quests
.target Anji Autumnlight
.vale settingsun
step
.isQuestOffered 58919,30264,30246,30444
.goto 390/870,1937.400,740.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
>>|cRXP_WARN_Skip this step if she is not offering a quest|r
.daily 30264,30246,30444 >> Accept all of the available daily quests
.target Anji Autumnlight
.vale settingsun
step
.isQuestOffered 58920,30243,30245
.goto 390/870,1939.300,742.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
>>|cRXP_WARN_Skip this step if he is not offering a quest|r
.daily 30243,30245 >> Accept all of the available daily quests
.target Kun Autumnlight
.vale settingsun
step
.isQuestOffered 59340,30266
.goto 390,21.490,71.190
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
>>|cRXP_WARN_Skip this step if he is not offering a quest|r
.daily 30266 >> Accept the random daily quests
.target Leven Dawnblade
.vale settingsun
step << skip 
.isQuestAvailable 30642
.goto 390,21.42,71.36
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r, |cRXP_FRIENDLY_Anji Autumnlight|r and |cRXP_FRIENDLY_Kun Autumnlight|r
.daily 30243,30264,30246,30266 >> Accept all of the available daily quests
.disablecheckbox
.questcount <2,30243,30264,30246,30266
.target Leven Dawnblade
.target Anji Autumnlight
.target Kun Autumnlight
.vale settingsun
step << skip 
.isQuestTurnedIn 30642
.goto 390,21.42,71.36
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r, |cRXP_FRIENDLY_Anji Autumnlight|r and |cRXP_FRIENDLY_Kun Autumnlight|r
.daily 30243,30264,30246,30266 >> Accept all of the available daily quests
.disablecheckbox
.questcount <3,30243,30264,30246,30266
.target Leven Dawnblade
.target Anji Autumnlight
.target Kun Autumnlight
.vale settingsun
step
#completewith next
.isOnQuest 30243
.goto 390,3.527,66.257
.vehicle >> Click on a |cRXP_PICK_Hot Oil Cauldron|r
step
.isOnQuest 30243
.goto 390,3.527,66.257,10,0
.goto 390/870,2414.600,888.300,10,0
>>|cRXP_WARN_Cast|r |T252176:0|t[Ignitable Oil Bucket] (1) |cRXP_WARN_followed by|r |T135433:0|t[Shado-Pan Torch] (2) |cRXP_WARN_on the|r |cRXP_ENEMY_Krik'Thik Hivelings|r |cRXP_WARN_below|r
>>|cRXP_WARN_You may need to use a different |cRXP_PICK_Hot Oil Cauldron|r if there are no |cRXP_ENEMY_Mantids|r in range|r
.complete 30243,1 
.mob Krik'Thik Hiveling
step
.isOnQuest 30243
>>Click on the quest popup under your minimap to turn in the quest
.dailyturnin 30243 >>Turn in Mantid Under Fire
.daily 30244 >>Accept Along the Serpent's Spine
step
.isOnQuest 30264
.goto 390/870,2086.300,831.400
>>Mount the |cRXP_FRIENDLY_War Serpent|r
.complete 30264,1 
.target War Serpent
step 
#completewith next
.isOnQuest 30264
>>|cRXP_WARN_Cast|r |T236178:0|t[Delayed Clusterbomb] (1) |cRXP_WARN_on the |cRXP_ENEMY_Mantid|r below|r
.complete 30264,2 
.mob +Krik'thik Hiveling
.complete 30264,3 
.mob +Krik'thik War Wagon
.complete 30264,4 
.mob +Krik'thik Catapult
step
#optional
.isOnQuest 30264
.isOnQuest 30243
>>|cRXP_WARN_Cast|r |T236178:0|t[Delayed Clusterbomb] (1) |cRXP_WARN_on the |cRXP_ENEMY_Mantid|r below|r
.complete 30243,1 
.mob Krik'Thik Hiveling
step 
.isOnQuest 30264
>>|cRXP_WARN_Cast|r |T236178:0|t[Delayed Clusterbomb] (1) |cRXP_WARN_on the |cRXP_ENEMY_Mantid|r below|r
.complete 30264,2 
.mob +Krik'thik Hiveling
.complete 30264,3 
.mob +Krik'thik War Wagon
.complete 30264,4 
.mob +Krik'thik Catapult
step
.isOnQuest 30244
#loop
.goto 390,6.95,72.71,50,0
.goto 390,6.95,66.70,70,0
.goto 390,11.44,66.24,70,0
.goto 390,11.48,50.63,70,0
.goto 390,6.96,44.33,50,0
>>Kill |cRXP_ENEMY_Krik'thik Locust-Guards|r and |cRXP_ENEMY_Krik'thik Needlers|r inside and outside
.complete 30244,1 
.mob Krik'thik Locust-Guard
.mob Krik'thik Needler
step
#completewith next
.goto 390,6.619,70.278
.vehicle >> Enter a |cRXP_PICK_Setting Sun Turret|r on the top of the wall
.target Setting Sun Turret
step
.isOnQuest 30266
>>|cRXP_WARN_Cast|r |T236469:0|t[Dragon Cannon] (1) |cRXP_WARN_to kill the |cRXP_ENEMY_Krik'thik Swarmers|r flying in the air|r
.complete 30266,1 
.mob Krik'thik Swarmer
step
.isOnQuest 30246
#loop
.goto 390,6.95,72.71,50,0
.goto 390,6.95,66.70,70,0
.goto 390,11.44,66.24,70,0
.goto 390,11.48,50.63,70,0
.goto 390,6.96,44.33,50,0
>>Kill |cRXP_ENEMY_Krik'thik Locust-Guards|r and |cRXP_ENEMY_Krik'thik Needlers|r inside and outside
.complete 30246,1 
.mob Krik'thik Locust-Guard
.mob Krik'thik Needler
step
.isOnQuest 30444
#sticky
#label MoguSlain
#loop
.goto 390,17.43,47.72,70,0
.goto 390,9.24,38.43,70,0
.goto 390,16.29,32.20,70,0
>>Kill |cRXP_ENEMY_Shao-Tien Fists|r and |cRXP_ENEMY_Shao-Tien Antiquators|r
.complete 30444,1 
.mob Shao-Tien Fist
.mob Shao-Tien Antiquator
step
.isOnQuest 30245
#sticky
#label ShadoPanReports
#loop
.goto 390,17.43,47.72,70,0
.goto 390,9.24,38.43,70,0
.goto 390,16.29,32.20,70,0
>>Look for a |cRXP_FRIENDLY_Shado-Pan Scout|r that is actively fighting a |cRXP_ENEMY_Shao-Tien Fist|r or |cRXP_ENEMY_Shao-Tien Antiquator|r
>>Kill them, then talk to the |cRXP_FRIENDLY_Shado-Pan Scout|r
>>You can also talk to |cRXP_FRIENDLY_Shado-Pan Scouts|r that are unconscious on the ground
.complete 30245,1 
.target Shado-Pan Scout
step
#requires MoguSlain
step
#requires ShadoPanReports
step
#optional
.isOnQuest 30248
.goto 390/870,2089.300,1524.600
>>Kill |cRXP_ENEMY_Bai-Jin the Butcher|r
.complete 30248,1 
.mob Bai-Jin the Butcher
step
.isOnQuest 30245
.goto 390/870,1939.300,742.000
>>Click on the quest popup under your minimap to turn in the quest
>>Return to |cRXP_FRIENDLY_Kun Autumnlight|r if you did not get a popup
.dailyturnin 30245 >>Turn in Lost Scouts
.target Kun Autumnlight
step
.isOnQuest 30246
>>Click on the quest popup under your minimap to turn in the quest
.dailyturnin 30246 >>Turn in Upon the Ramparts
.daily 30251 >>Accept Vyraxxis, the Krik'thik Swarm-Lord
step
.isOnQuest 30251
.goto 390/870,2279.900,1377.300
>>Kill |cRXP_ENEMY_Vyraxxis|r on the wall
.complete 30251,1 
.mob Vyraxxis
step
.isOnQuest 30244
>>Click on the quest popup under your minimap to turn in the quest
.dailyturnin 30244 >>Turn in Along the Serpent's Spine
.daily 30249 >>Accept Under the Setting Sun
step
.isOnQuest 30249
.goto 390,5.90,58.55
>>Kill |cRXP_ENEMY_Kri'chon|r
>>|cRXP_WARN_Drag him to the |cRXP_PICK_Oil Kegs|r so he breaks them with his abilities. Use a Fire spell on him once he is debuffed with|r |T623777:0|t[Flammable Oil] |cRXP_WARN_or wait until the |cRXP_FRIENDLY_Shado-Pan Rangers|r ignite him with their attacks causing|r |T236228:0|t[Burning Oil] |cRXP_WARN_(Damage taken increased by 50%.)|r
.complete 30249,1 
.mob Kri'chon
step
.isOnQuest 30266
.goto 390/870,1939.300,742.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30266 >>Turn in Bloodied Skies
step
.isOnQuest 30245
.goto 390/870,1939.300,742.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30245 >>Turn in Lost Scouts
step
.isOnQuest 30251
.goto 390/870,1937.400,740.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30251 >>Turn in Vyraxxis, the Krik'thik Swarm-Lord
step
.isOnQuest 30444
.goto 390/870,1937.400,740.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30444 >>Turn in No Reprieve
step
.isQuestTurnedIn 30245
.goto 390/870,1939.400,741.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.daily 30248 >>Accept The Butcher
.vale settingsun
step
.isOnQuest 30248
.goto 390/870,2089.300,1524.600
>>Kill |cRXP_ENEMY_Bai-Jin the Butcher|r
.complete 30248,1 
.mob Bai-Jin the Butcher
step
.isOnQuest 30248
.goto 390/870,1939.400,741.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30248 >>Turn in The Butcher
step
.isOnQuest 30249
.goto 390/870,1939.300,741.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
.target Kun Autumnlight
.dailyturnin 30249 >>Turn in Under the Setting Sun
step
.isOnQuest 30264
.goto 390/870,1937.400,740.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.dailyturnin 30264 >>Turn in Enemy at the Gates
step
#completewith next
.subzone 6036 >> Travel to the Golden Pagoda
step 
.reputation 1269,revered,<0,1
.goto 390/870,1030.900,1222.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.accept 30640 >>Accept Battle Spear of the Thunder King
step
#completewith next
.subzone 6149 >> Fly up to the Ancestral Rise. This is located on the hills above the Guo-Lai Halls
step
.isOnQuest 30640
.goto 390/870,1939.500,1613.700
>>Loot the |cRXP_PICK_Battle Spear of the Thunder King|r in the water
.complete 30640,1 
step
.isOnQuest 30640
.reputation 1269,revered,<0,1
.goto 390/870,1030.900,1222.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.turnin 30640 >>Turn in Battle Spear of the Thunder King
.accept 30641 >>Accept Battle Helm of the Thunder King
step
.isQuestTurnedIn 30640
.reputation 1269,revered,<0,1
.goto 390/870,1030.900,1222.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.accept 30641 >>Accept Battle Helm of the Thunder King
step
.isOnQuest 30641
.goto 395,55.74,92.68
.subzone 6074 >> Enter the Guo-Lai Halls
step
.isOnQuest 30641
.goto 395,51.786,65.312
+|cRXP_WARN_Follow the arrow to the colored|r |cRXP_PICK_Tile|r
>>|cRXP_WARN_WARNING: Take note of the color of the tile you are currently standing on at the arrow location. This color |cRXP_PICK_Tile|r will be "Safe" and not harm you as you go further into the Halls. Manually click this step to skip it once you know the color|r
step
.isOnQuest 30641
.goto 395,58.566,44.283
>>Talk to |cRXP_FRIENDLY_Ren Firetongue|r
.complete 30641,1 
.skipgossip
.target Ren Firetongue
step
.isOnQuest 30641
.goto 395,65.57,23.02,10,0
.goto 395,67.94,15.47,15,0
.goto 390/870,1935.000,1653.100
>>Follow |cRXP_FRIENDLY_Ren Firetongue|r downstairs
>>Loot the |cRXP_PICK_Battle Helm of the Thunder King|r
.complete 30641,2 
step
#completewith next
.subzone 6036 >> Return to the Golden Pagoda
step
.isOnQuest 30641
.reputation 1269,revered,<0,1
.goto 390/870,1030.900,1222.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.turnin 30641 >>Turn in Battle Helm of the Thunder King
.accept 30642 >>Accept Battle Axe of the Thunder King
step
.isQuestTurnedIn 30641
.reputation 1269,revered,<0,1
.goto 390/870,1030.900,1222.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.accept 30642 >>Accept Battle Axe of the Thunder King
step
.isOnQuest 30642
#completewith next
.goto 390,39.69,77.27,20,0
.goto 390,41.29,76.96
.subzone 6127 >>Enter the Silent Sanctuary
step
.isOnQuest 30642
.goto 390,44.24,76.44
>>Kill |cRXP_ENEMY_Jade Constructs|r
>>|cRXP_WARN_The |cRXP_PICK_Blue Rune|r will give you a short Damage and Haste buff. The |cRXP_PICK_Green Rune|r will heal you. Each |cRXP_PICK_Rune|r takes approx 30 seconds to respawn|r
.complete 30642,1 
.mob Jade Construct
step
.isOnQuest 30642
.goto 390/870,1329.300,662.100
>>Loot the |cRXP_PICK_Battle Axe of the Thunder King|r
.complete 30642,2 
step
.isOnQuest 30642
.goto 390/870,1346.600,659.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.turnin 30642 >>Turn in Battle Axe of the Thunder King
step
#completewith next
.subzone 6036 >> Travel to the Golden Pagoda
step 
.reputation 1269,exalted,<0,1
.goto 390/870,1044.800,1212.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leven Dawnblade|r
>>|cRXP_WARN_This can also be accepted from |cRXP_FRIENDLY_Leven Dawnblade|r in other Golden Lotus hubs|r
.target Leven Dawnblade
.accept 30643 >>Accept The Mogu's Message
step
.isOnQuest 30643
#completewith next
.goto 390,39.69,77.27,20,0
.goto 390,41.29,76.96
.subzone 6127 >>Travel to the Silent Sanctuary
step
.isOnQuest 30643
.goto 390/870,1345.800,659.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.turnin 30643 >>Turn in The Mogu's Message
.accept 30644 >>Accept What Comes to Pass
step
.isQuestTurnedIn 30643
.goto 390/870,1345.800,659.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of |cRXP_FRIENDLY_Zhi the Harmonious|r
.target Zhi the Harmonious
.accept 30644 >>Accept What Comes to Pass
step
#completewith next
.goto 390,39.69,77.27,20,0
.subzone 6036 >> Return to the Golden Pagoda
step
.isOnQuest 30644
.goto 390/870,1051.600,1218.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.turnin 30644 >>Turn in What Comes to Pass
.accept 30645 >>Accept The Might of Three
step
.isQuestTurnedIn 30644
.goto 390/870,1051.600,1218.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Tenderheart|r
.target Sun Tenderheart
.accept 30645 >>Accept The Might of Three
step
.isOnQuest 30645
#loop
.goto 390,67.16,48.51,70,0
.goto 390,64.33,32.80,70,0
.goto 390,60.50,37.77,70,0
>>Kill 100 |cRXP_ENEMY_Mogu|r
>>|cRXP_WARN_You will periodically have very powerful buffs on you as you complete this quest, greatly increasing your damage and survivability|r
.complete 30645,1 
step
.isOnQuest 30645
.goto 390/870,602.100,1242.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sinan the Dreamer|r
.target Sinan the Dreamer
.turnin 30645 >>Turn in The Might of Three
.accept 30646 >>Accept The Final Power
step
.isQuestTurnedIn 30645
.goto 390/870,602.100,1242.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sinan the Dreamer|r
.target Sinan the Dreamer
.accept 30646 >>Accept The Final Power
step
.isOnQuest 30646
.goto 390/870,488.200,1344.800
>>Kill |cRXP_ENEMY_Zhao-Jin the Bloodletter|r
>>|cRXP_WARN_He will summon a moving lightning wall, simply face it and jump over it. He will also throw a|r |T376833:0|t[Lightning Spear] |cRXP_WARN_which you need to pick up, and then use your Extra Action Button to throw it back at him|r
.complete 30646,1 
.mob Zhao-Jin the Bloodletter
step
.isOnQuest 30646
.goto 390/870,1048.300,1211.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
.target Anji Autumnlight
.turnin 30646 >>Turn in The Final Power
step
+|cRXP_WARN_You have completed all available daily quests for Golden Lotus today. Load the same guide again tomorrow once the daily quests have reset to complete more daily quests|r
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP-Pandaria
#name 1-Klaxxi
#internal
step
#label dailystart
#completewith AcceptKlaxxi
.subzone 6315 >> Travel to Klaxxi'vess
step 
#optional
.isQuestTurnedIn 31458
.isQuestTurnedIn 31465
.goto 422/870,3205.200,124.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.daily 31504,31237,31272,31510 >>Accept the random daily quest
step 
#optional
.isNotOnQuest 31808
.isQuestTurnedIn 31211
.isQuestOffered 62151,31216
.goto 422/870,3200.400,126.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
>>|cRXP_WARN_Skip this step if he not offering the daily quest|r
.target Xaril the Poisoned Mind
.daily 31216 >>Accept Dark Skies
step
.isOnQuest 31216
.goto 422/870,3200.400,126.100
.gossipoption 129591 >> Talk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r to begin the flight
.skipgossipid 129591
.target Xaril the Poisoned Mind
step
.isOnQuest 31216
>>|cRXP_WARN_Cast|r |T463862:0|t[Paralyzing Serum] (2) |cRXP_WARN_followed by|r |T463860:0|t[Venom Bomb] (1) |cRXP_WARN_on |cRXP_ENEMY_Mantids|r, |cRXP_ENEMY_Kunchongs|r, |cRXP_ENEMY_Behemoths|r and|r |cRXP_ENEMY_Battletanks|r
.complete 31216,2 
.mob +Krik'thik Wingguard
.mob +Ik'thik Warrior
.mob +Krik'thik Wingguard
.mob +Krik'thik Wingleader
.mob +Ik'thik Slayer
.complete 31216,3 
.mob +Krik'thik Battletank
.mob +Ik'thik Kunchong
.mob +Dread Behemoth
step
#completewith next
.cast vehicle,124206,128697,128698 >>|cRXP_WARN_Cast|r |T624006:0|t[Return to Klaxxi'vess] (6)
.subzoneskip 6315
step
.isOnQuest 31216
.goto 422/870,3200.400,126.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
.target Xaril the Poisoned Mind
.dailyturnin 31216 >>Turn in The Poisoned Mind
step
#optional
#hidewindow
#completewith RampageAgainst
.isNotOnQuest 31216
.target Kaz'tik the Manipulator
.daily 31808 >>Accept Rampage Against the Machine
step
#label AcceptKlaxxi
#loop
.dailyreset klaxxi
.goto 422,54.29,35.93,15,0
.goto 422,55.06,35.85,10,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r, |cRXP_FRIENDLY_Rik'kal the Dissector|r, |cRXP_FRIENDLY_Korven the Prime|r and |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.daily 31232,31238,31231,31235,31234,31233,31109,31487,31494,31502,31503,31496,31111,31505,31509,31507,31506,31508,31267,31268,31271,31024,31270,31269 >> Accept all of the available daily quests
.disablecheckbox
.questcount <6,31232,31238,31231,31235,31234,31233,31109,31487,31494,31502,31503,31496,31111,31505,31509,31507,31506,31508,31267,31268,31271,31024,31270,31269
.target Kaz'tik the Manipulator
.target Rik'kal the Dissector
.target Korven the Prime
.target Kil'ruk the Wind-Reaver

step
#label RampageAgainst
.isNotOnQuest 31216
.isQuestOffered 63758,31808
.goto 422/870,3232.300,137.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
>>|cRXP_WARN_Skip this step if he not offering the daily quest|r
.target Kaz'tik the Manipulator
.daily 31808 >>Accept Rampage Against the Machine
step
.isOnQuest 31808
.goto 422,50.82,41.37
#title |cFFFCDC00Follow the Arrow|r
>>Click on |cRXP_FRIENDLY_Kovok|r
.complete 31808,1 
.target Kovok
step
.isOnQuest 31808
#loop
.goto 422,50.65,45.84,40,0
.goto 422,41.68,41.22,50,0
.goto 422,40.63,34.35,45,0
.goto 422,41.76,27.94,40,0
.goto 422,68.01,12.87,50,0
.goto 422,41.76,27.94,40,0
.goto 422,40.63,34.35,45,0
.goto 422,41.68,41.22,50,0
>>|cRXP_WARN_Cast|r |T132104:0|t[Poison Blast] (1) |cRXP_WARN_and|r |T132338:0|t[Slice] (3) |cRXP_WARN_to kill the|r |cRXP_ENEMY_Mantid|r
.complete 31808,2 
.mob Ik'thik Warrior
.mob Ik'thik Slayer
.mob Krik'thik Battletank
.mob Krik'thik Wingguard
.mob Krik'thik Wingleader
step
.isOnQuest 31808
.goto 422,54.25,35.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.dailyturnin 31808 >>Turn in Rampage Against the Machine
.target Kaz'tik the Manipulator
step
#optional
.klaxxi clutches
.goto 422/870,3195.800,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.daily 31109 >>Accept Culling the Swarm
step
#optional
.klaxxi clutches
.goto 422/870,3233.400,133.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r, |cRXP_FRIENDLY_Kaz'tik the Manipulator|r and |cRXP_FRIENDLY_Korven the Prime|r
.target Rik'kal the Dissector
.target Kaz'tik the Manipulator
.target Korven the Prime
.daily 31502 >>Accept Wing Clip
.daily 31503 >>Accept Shortcut to Ruin
.daily 31496 >>Accept Sampling the Empire's Finest
.daily 31487 >>Accept Sonic Disruption
.daily 31494 >>Accept Free From Her Clutches
step
#optional
.klaxxi south
.goto 422/870,3195.800,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.daily 31111 >>Accept Eradicating the Zan'thik
.daily 31505 >>Accept Vess-Guard Duty
step
#optional
.klaxxi south
.goto 422/870,3233.400,133.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r, |cRXP_FRIENDLY_Kaz'tik the Manipulator|r and |cRXP_FRIENDLY_Korven the Prime|r
.target Rik'kal the Dissector
.target Kaz'tik the Manipulator
.target Korven the Prime
.daily 31509 >>Accept Fear Takes Root
.daily 31507 >>Accept Meltdown
.daily 31506 >>Accept Shackles of Manipulation
.daily 31508 >>Accept Specimen Request
step
#optional
.klaxxi terrace
.goto 422/870,3195.800,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.daily 31231 >>Accept Dreadspinner Extermination
.daily 31235 >>Accept Nope Nope Nope
step
#optional
.klaxxi terrace
.goto 422/870,3233.400,133.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r, |cRXP_FRIENDLY_Kaz'tik the Manipulator|r and |cRXP_FRIENDLY_Korven the Prime|r
.target Rik'kal the Dissector
.target Kaz'tik the Manipulator
.target Korven the Prime
.daily 31232 >>Accept An Ancient Empire
.daily 31238 >>Accept Brain Food
.daily 31234 >>Accept Putting An Eye Out
.daily 31233 >>Accept Sap Tapping
step
#optional
.klaxxi lake
.goto 422/870,3195.800,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.daily 31267 >>Accept Mistblade Destruction
step
#optional
.klaxxi lake
.goto 422/870,3233.400,133.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r, |cRXP_FRIENDLY_Kaz'tik the Manipulator|r and |cRXP_FRIENDLY_Korven the Prime|r
.target Rik'kal the Dissector
.target Kaz'tik the Manipulator
.target Korven the Prime
.daily 31268 >>Accept A Little Brain Work
.daily 31271 >>Accept Bad Genes
.daily 31024 >>Accept Kunchong Treats
.daily 31270 >>Accept The Fight Against Fear
.daily 31269 >>Accept The Scale-Lord
step
#optional
.skipOnQuest 31496,klaxxiclutches
.skipOnQuest 31232,klaxxiterrace
.skipOnQuest 31111,klaxxisouth

step
.isOnQuest 31270
#completewith next
>>Kill |cRXP_ENEMY_Horrscale Scorpids|r
.complete 31270,1 
.mob Horrscale Scorpid
step
.isOnQuest 31024
#loop
.goto 422,57.90,51.11,70,0
.goto 422,60.81,53.97,70,0
.goto 422,68.04,52.98,70,0
>>Kill |cRXP_ENEMY_Chillwater Turtles|r. Loot them for their |cRXP_LOOT_Meaty Turtle Haunches|r
.complete 31024,1 
.mob Chillwater Turtle
step
.isOnQuest 31270
#loop
.goto 422,57.90,51.11,70,0
.goto 422,60.81,53.97,70,0
.goto 422,68.04,52.98,70,0
>>Kill |cRXP_ENEMY_Horrscale Scorpids|r
.complete 31270,1 
.mob Horrscale Scorpid
step
.isOnQuest 31267
#completewith ScaleLord
>>Kill |cRXP_ENEMY_Mistblade Rippers|r
.complete 31267,1 
.mob Mistblade Ripper
step
#completewith next
.goto 422,66.77,63.94
.subzone 6543 >>Enter the Mistblade Den
step
#label ScaleLord
.isOnQuest 31269
.goto 422,66.43,66.11
>>Kill the |cRXP_ENEMY_Mistblade Scale-Lord|r
.complete 31269,1 
.mob Mistblade Scale-Lord
step
.isOnQuest 31267
#loop
.goto 422,64.40,64.07,70,0
.goto 422,67.69,61.24,70,0
.goto 422,67.31,56.36,70,0
.goto 422,62.51,56.02,70,0
>>Kill |cRXP_ENEMY_Mistblade Rippers|r
.complete 31267,1 
.mob Mistblade Ripper
step
.isOnQuest 31272
#completewith EncrustedBrains
>>Kill |cRXP_ENEMY_Bonedust Moths|r, |cRXP_ENEMY_Bluehide Mushan|r and |cRXP_ENEMY_Mutating Scorpids|r
.complete 31272,1 
.mob Bonedust Moth
.mob Bluehide Mushan
.mob Mutating Scorpid
step
.isOnQuest 31268
#completewith GeneDrone
.use 85884 >>|cRXP_WARN_Use the|r |T252188:0|t[Sonic Emitter] |cRXP_WARN_on |cRXP_ENEMY_Ik'thik Amberstingers|r to weaken them|r
>>Kill the |cRXP_ENEMY_Ik'thik Amberstingers|r. Loot them for their |cRXP_LOOT_Amber-Encrusted Brains|r
.complete 31268,1 
.mob Ik'thik Amberstinger
step
.isOnQuest 31271
#label GeneDrone
#loop
.goto 422,62.12,66.28,70,0
.goto 422,63.86,72.85,70,0
.goto 422,58.62,73.29,70,0
>>Kill |cRXP_ENEMY_Ik'thik Genemancers|r and |cRXP_ENEMY_Ik'thik Egg-Drones|r
.complete 31271,1 
.mob +Ik'thik Genemancer
.complete 31271,2 
.mob +Ik'thik Egg-Drone
step
#label EncrustedBrains
.isOnQuest 31268
#loop
.goto 422,65.15,68.95,70,0
.goto 422,60.95,70.85,70,0
.goto 422,61.11,64.10,70,0
.use 85884 >>|cRXP_WARN_Use the|r |T252188:0|t[Sonic Emitter] |cRXP_WARN_on |cRXP_ENEMY_Ik'thik Amberstingers|r to weaken them|r
>>Kill the |cRXP_ENEMY_Ik'thik Amberstingers|r. Loot them for their |cRXP_LOOT_Amber-Encrusted Brains|r
.complete 31268,1 
.mob Ik'thik Amberstinger
step
.isOnQuest 31272
#loop
.goto 422,65.15,68.95,70,0
.goto 422,60.95,70.85,70,0
.goto 422,61.11,64.10,70,0
>>Kill |cRXP_ENEMY_Needleback Porcupines|r, |cRXP_ENEMY_Bonedust Moths|r, |cRXP_ENEMY_Bluehide Mushan|r and |cRXP_ENEMY_Mutating Scorpids|r
.complete 31272,1 
.mob Bonedust Moth
.mob Bluehide Mushan
.mob Mutating Scorpid
.mob Needleback Porcupine


step
#optional
#label klaxxiclutches
step
.isOnQuest 31109
#completewith KunchongHatchlingReleased
>>Kill |cRXP_ENEMY_Shek'zeer Mantids|r
.complete 31109,1 
.mob Shek'zeer Bladesworn
.mob Shek'zeer Manipulator
step
.isOnQuest 31504
#completewith MatriarchsMaw
>>Click the |cRXP_PICK_Pheromone Mines|r on the ground
.complete 31504,1 
step
.isOnQuest 31487
#completewith KunchongHatchlingReleased
>>Kill |cRXP_ENEMY_Dread Kunchong|r and |cRXP_ENEMY_Shek'zeer Manipulator|r
*|cRXP_WARN_Use the|r |T458772:0|t[Sonic Disruption Tool] |cRXP_WARN_near |cRXP_ENEMY_Dread Kunchong|r to weaken them and make them attack the |cRXP_ENEMY_Shek'zeer Manipulator|r|r
.complete 31487,1 
.mob +Dread Kunchong
.complete 31487,2 
.mob +Shek'zeer Manipulator
.use 87394
step
.isOnQuest 31494
#label KunchongHatchlingReleased
#loop
.goto 422,47.78,36.52,30,0
.goto 422,49.71,33.25,30,0
.goto 422,46.05,30.11,30,0
.goto 422,44.73,34.43,27,0
>>Click on the |cRXP_PICK_Kunchong Cages|r
.complete 31494,1 
step
.isOnQuest 31109
#completewith DreadKunchongShekzeerManipulator
>>Kill |cRXP_ENEMY_Shek'zeer Mantids|r
.complete 31109,1 
.mob Shek'zeer Bladesworn
.mob Shek'zeer Manipulator
.mob Shek'zeer Needler
step
.isOnQuest 31487
#completewith VessGuardNakalSlain
>>Kill |cRXP_ENEMY_Dread Kunchong|r and |cRXP_ENEMY_Shek'zeer Manipulator|r
*|cRXP_WARN_Use the|r |T458772:0|t[Sonic Disruption Tool] |cRXP_WARN_near |cRXP_ENEMY_Dread Kunchong|r to weaken them and make them attack the |cRXP_ENEMY_Shek'zeer Manipulator|r|r
.complete 31487,1 
.mob +Dread Kunchong
.complete 31487,2 
.mob +Shek'zeer Manipulator
.use 87394
step
.isOnQuest 31503
#label VessGuardNakalSlain
#loop
.goto 422,39.60,31.10,12,0
.goto 422,38.36,31.14,12,0
.goto 422,39.11,31.91,12,0
>>Kill |cRXP_ENEMY_Vess-Guard Na'kal|r
>>|cRXP_ENEMY_Vess-Guard Na'kal|r |cRXP_WARN_patrols slightly|r
.complete 31503,1 
.mob Vess-Guard Na'kal
step
.isOnQuest 31502
#completewith FeederA
>>Kill |cRXP_ENEMY_Shek'zeer Needlers|r. Loot them for their |cRXP_LOOT_Needler Wings|r
.complete 31502,1 
.mob Shek'zeer Needler
step
.isOnQuest 31496
#completewith next
#label EastFeeder
#hidewindow
.complete 31496,2 
step
#title Enter House
#completewith EastFeeder
.goto 422,38.29,31.95,6 >>Enter the house
step
.isOnQuest 31496
>>Click on the |cRXP_PICK_East Feeder|r or use the |T134772:0|t[Sap Jar]
.goto 422,37.85,33.06
.use 87400
.complete 31496,2 
step

.isOnQuest 31496
#title Leave House
.goto 422,38.29,31.95,6 >>Leave the house
step
.isOnQuest 31496
#completewith next
#label NorthFeeder
#hidewindow
.complete 31496,3 
step
#title Enter House
#completewith NorthFeeder
.goto 422,36.25,32.26,6 >>Enter the house
step
.isOnQuest 31496
>>Click on the |cRXP_PICK_North Feeder|r or use the |T134772:0|t[Sap Jar]
.goto 422,37.03,32.83
.use 87400
.complete 31496,3 
step
.isOnQuest 31496
#title Leave House
.goto 422,36.25,32.26,6 >>Leave the house
step
.isOnQuest 31496
#completewith next
#label CentralFeeder
#hidewindow
.complete 31496,1 
step
#title Enter House
#completewith CentralFeeder
.goto 422,37.03,28.07,6 >>Enter the house
step
.isOnQuest 31496
>>Click on the |cRXP_PICK_Central Feeder|r or use the |T134772:0|t[Sap Jar]
.goto 422,37.40,29.24
.use 87400
.complete 31496,1 
step
.isOnQuest 31496
#title Leave House
.goto 422,37.03,28.07,6 >>Leave the house
step
.isOnQuest 31496
#completewith next
#label NortheastFeeder
#hidewindow
.complete 31496,4 
step
#title Enter House
#completewith NortheastFeeder
.goto 422,39.35,29.24,6 >>Enter the house
step
.isOnQuest 31496
#label FeederA
>>Click on the |cRXP_PICK_Northeast Feeder|r or use the |T134772:0|t[Sap Jar]
.goto 422,39.04,30.47
.use 87400
.complete 31496,4 
step
.isOnQuest 31502
#loop
.goto 422,40.10,31.25,35,0
.goto 422,33.92,30.95,35,0
.goto 422,38.50,28.84,35,0
>>Kill |cRXP_ENEMY_Shek'zeer Needlers|r. Loot them for their |cRXP_LOOT_Needler Wings|r
.complete 31502,1 
.mob Shek'zeer Needler
step
.isOnQuest 31487
#label DreadKunchongShekzeerManipulator
#loop
.goto 422,43.38,31.81,50,0
.goto 422,49.86,25.29,50,0
.goto 422,48.41,36.73,50,0
>>Kill |cRXP_ENEMY_Dread Kunchong|r and |cRXP_ENEMY_Shek'zeer Manipulators|r
*|cRXP_WARN_Use the|r |T458772:0|t[Sonic Disruption Tool] |cRXP_WARN_near |cRXP_ENEMY_Dread Kunchong|r to weaken them and make them attack the |cRXP_ENEMY_Shek'zeer Manipulator|r|r
.complete 31487,1 
.mob +Dread Kunchong
.complete 31487,2 
.mob +Shek'zeer Manipulator
.use 87394
step
.isOnQuest 31109
#loop
.goto 422,34.59,30.45,40,0
.goto 422,50.40,23.56,50,0
.goto 422,48.40,36.80,45,0
>>Kill |cRXP_ENEMY_Shek'zeer Mantids|r
.complete 31109,1 
.mob Shek'zeer Bladesworn
.mob Shek'zeer Manipulator
.mob Shek'zeer Needler
step
.klaxxi clutches
#label MatriarchsMaw
#loop
.goto 422,42.11,28.86,85,0
.goto 422,41.77,31.94,85,0
.goto 422,42.04,36.63,85,0
.line 422,42.11,28.86,41.65,31.27,42.04,36.63
>>Kill |cRXP_ENEMY_Karanosh|r. Loot it for the |T237391:0|t[|cRXP_LOOT_Enormous Kunchong Mandibles|r]
.use 87878 >> |cRXP_WARN_Use the|r |T237391:0|t[|cRXP_LOOT_Enormous Kunchong Mandibles|r] |cRXP_WARN_to start the quest|r
>>|cRXP_ENEMY_Karanosh|r |cRXP_WARN_patrols slightly. Find a group for it if you are unable to solo it|r
.collect 87878,1
.daily 31599 >> Accept The Matriarch's Maw
.unitscan Karanosh
step
.isOnQuest 31504
#loop
.goto 422,47.4,36.9,70,0
.goto 422,41.4,36.5,70,0
.goto 422,45.5,28.3,70,0
.goto 422,49.2,32.3,70,0
>>Click the |cRXP_PICK_Pheromone Mines|r on the ground
.complete 31504,1 

step
#optional
#label klaxxiterrace
step
.isOnQuest 31238
.goto 422,53.66,26.18,60,0
.goto 422,58.08,23.80,60,0
.goto 422,63.00,25.45,60,0
.goto 422,66.84,19.63,60,0
>>Kill |cRXP_ENEMY_Greatback Mushans|r and |cRXP_ENEMY_Greatback Calfs|r. Loot them for their |cRXP_LOOT_Mushan Tongues|r
.complete 31238,1 
.mob Greatback Mushan
.mob Greatback Calf
step
.isOnQuest 31231
#sticky
#label Tenders
.waypoint 422,74.30,21.15,60,0
.waypoint 422,71.82,24.56,60,0
.waypoint 422,72.40,29.55,60,0
.waypoint 422,71.31,22.11,60,0
>>Kill |cRXP_ENEMY_Dreadspinner Tenders|r
.complete 31231,1 
.mob Dreadspinner Tender
step
.isOnQuest 31235
#sticky
#label DreadspinnerEggs
.waypoint 422,74.30,21.15,60,0
.waypoint 422,71.82,24.56,60,0
.waypoint 422,72.40,29.55,60,0
.waypoint 422,71.31,22.11,60,0
.use 82807 >>|cRXP_WARN_Use the|r |T133837:0|t[Shado-Pan Dragon Gun] |cRXP_WARN_to destroy|r |cRXP_PICK_Dreadspinner Eggs|r
>>|cRXP_WARN_You can move while casting it|r
.complete 31235,1 
.mob Dreadspinner Egg
step
.isOnQuest 31233
#sticky
#label AmberSap
.waypoint 422,69.11,21.97,60,0
.waypoint 422,67.25,37.29,60,0
.waypoint 422,71.10,24.14,60,0
.waypoint 422,70.90,32.03,60,0
.waypoint 422,66.09,38.98,60,0
>>Click on |cRXP_PICK_Amber Taps|r found on trees. This will attract nearby |cRXP_ENEMY_Sapflies|r. Kill them, then click on the |cRXP_PICK_Amber Pot|r which spawns on the ground below the |cRXP_PICK_Amber Tap|r
.complete 31233,1 
step
.isOnQuest 31232
#sticky
#label GurthaniTablets
.waypoint 422,66.8,27.9,70,0
.waypoint 422,66.7,31.2,70,0
.waypoint 422,71.9,36.1,70,0
.waypoint 422,71.5,23.9,70,0
>>Loot the |cRXP_PICK_Gurthani Tablets|r on the ground
.complete 31232,1 
step
#requires Tenders
step
#requires DreadspinnerEggs
step
#requires GurthaniTablets
step
.isOnQuest 31234
#sticky
#label BeastEye
.goto 422,69.11,21.97,60,0
.goto 422,67.25,37.29,60,0
>>Kill |cRXP_ENEMY_Mire Beasts|r. Loot them for a |cRXP_LOOT_Pristine Mire Beast Eye|r
.complete 31234,1 
.mob Mire Beast
step
.isOnQuest 31237
#sticky
#label EyeofEmpress
.waypoint 422,69.11,21.97,60,0
.waypoint 422,67.25,37.29,60,0
>>|cRXP_WARN_Kill any mob in the area to gain the|r |T132284:0|t[Pheromone Tracking] |cRXP_WARN_buff. This will allow you to see moving |cRXP_PICK_Red Clouds|r on the ground. Quickly stand on it and click the |cRXP_PICK_Eye of the Empress|r inside of it|r
.complete 31237,1 
.mob Eye of the Empress
step
.klaxxi terrace
.goto 422,66.135,31.526,-1
.goto 422,66.447,31.526,-1
>>|cFFFF0000BONUS QUEST!|r |cRXP_WARN_Note: This quest can only be completed with a group with at least 2 players. If you cannot find another person to group with, skip this step|r
>>|cRXP_WARN_Assign 1 player to stand on the |cRXP_PICK_Rune of the Sun|r (red colored rune) and type "/kneel" in chat, and the other player to stand on the |cRXP_PICK_Rune of the Earth|r (green colored rune) and type "/lay" in chat. This will spawn|r |cRXP_ENEMY_Warlord Gurthan|r
>>Kill |cRXP_ENEMY_Warlord Gurthan|r. Loot her for the |T133853:0|t[|cRXP_LOOT_Ashes of Warlord Gurthan|r]
.use 88715 >> |cRXP_WARN_Use the|r |T133853:0|t[|cRXP_LOOT_Ashes of Warlord Gurthan|r] |cRXP_WARN_to start the quest|r
.collect 88715,1
.daily 31677 >>Accept The Warlord's Ashes
.mob Warlord Gurthan
step
#requires AmberSap
step
#requires BeastEye
step
#requires EyeofEmpress

step
#optional
#label klaxxisouth
step
.klaxxi south
#loop
.goto 422,33.026,61.856,0
.goto 422,32.59,58.16,70,0
.goto 422,32.45,62.71,70,0
.line 422,33.20,58.16,31.81,57.30,31.51,59.05,32.36,60.97,31.82,62.30,31.64,63.85,32.85,63.02,34.10,62.10,34.02,60.79,33.20,58.16
>>Kill |cRXP_ENEMY_Kypa'rak|r. Loot it for the |T611648:0|t[|cRXP_LOOT_Massive Kyparite Core|r]
.use 87871>>|cRXP_WARN_Use the|r |T611648:0|t[|cRXP_LOOT_Massive Kyparite Core|r] |cRXP_WARN_to start the quest|r
>>|cRXP_WARN_Find a group for it if you are unable to solo it|r
.collect 87871,1
.daily 31598 >>Accept Kypa'rak's Core
.mob Kypa'rak
step
.isOnQuest 31111
#sticky
#label ImaplerManipulator
#loop
.waypoint 422,36.4,73.1,70,0
.waypoint 422,33.2,72.3,70,0
.waypoint 422,26.6,71.6,70,0
.waypoint 422,36.4,73.1,70,0
.waypoint 422,32.6,79.8,70,0
>>Kill |cRXP_ENEMY_Zan'thik Impalers|r and |cRXP_ENEMY_Zan'thik Manipulators|r
.complete 31111,1 
.mob +Zan'thik Impaler
.complete 31111,2 
.mob +Zan'thik Manipulator
step
.isOnQuest 31509
#sticky
#label DreadsporeBulbs
#loop
.waypoint 422,36.4,73.1,70,0
.waypoint 422,33.2,72.3,70,0
.waypoint 422,26.6,71.6,70,0
.waypoint 422,36.4,73.1,70,0
.waypoint 422,32.6,79.8,70,0
.waypoint 422,22.9,86.2,70,0
.waypoint 422,22.8,73.0,70,0
>>Walk over or click the |cRXP_PICK_Dreadspore Bulbs|r on the ground
.complete 31509,1 
step
.isOnQuest 31505
#loop
.goto 422,29.80,74.47,15,0
.goto 422,28.69,74.94,15,0
>>Kill |cRXP_ENEMY_Vess-Guard Vik'az|r
>>|cRXP_ENEMY_Vess-Guard Vik'az|r |cRXP_WARN_patrols slightly|r
.complete 31505,1 
.mob Vess-Guard Vik'az
step
.isOnQuest 31506
#sticky
#label MinerBrute
#loop
.waypoint 422,30.1,69.9,70,0
.waypoint 422,35.8,72.2,70,0
.waypoint 422,32.0,78.4,70,0
.waypoint 422,29.2,87.7,70,0
>>Kill |cRXP_ENEMY_Thought-Bound Miners|r and |cRXP_ENEMY_Thought-Bound Brutes|r. Loot them for their |cRXP_LOOT_Zan'thik Shackles|r
.complete 31506,1 
.mob Thought-Bound Miner
.mob Thought-Bound Brute
step
.isOnQuest 31508
#sticky
#label KypariCrawler
#loop
.waypoint 422,36.4,73.1,70,0
.waypoint 422,33.2,72.3,70,0
.waypoint 422,26.6,71.6,70,0
.waypoint 422,36.4,73.1,70,0
.waypoint 422,32.6,79.8,70,0
>>Kill |cRXP_ENEMY_Kypari Crawlers|r. Loot them for their |cRXP_LOOT_Kyparite Shards|r

.complete 31508,1 
.mob Kypari Crawler
step
#requires ImaplerManipulator
step
.isOnQuest 31507
#sticky
#label Amberhusks
#loop
.goto 422,24.0,71.5,60,0
.goto 422,22.6,75.1,60,0
.goto 422,24.0,79.7,60,0
>>Kill |cRXP_ENEMY_Zan'thik Amberhusks|r
.complete 31507,1 
.mob Zan'thik Amberhusk
step
.isOnQuest 31510
.goto 422,24.139,86.255
>>Click the |cRXP_PICK_Zan'thik Resonating Crystal|r to summon |cRXP_ENEMY_Adjunct Sek'ot|r
>>Kill |cRXP_ENEMY_Adjunct Sek'ot|r
.complete 31510,1 
.mob Adjunct Sek'ot
step
#requires DreadsporeBulbs
step
#requires Amberhusks
step
#requires MinerBrute
step
#requires KypariCrawler

step
#completewith KlaxxiTurnins
.subzone 6315 >> Return to Klaxxi'vess
step
.isOnQuest 31506
.goto 422,54.25,35.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.dailyturnin 31506 >>Turn in Shackles of Manipulation
.target Kaz'tik the Manipulator
step
.isOnQuest 31238
.goto 422,54.25,35.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.dailyturnin 31238 >>Turn in Brain Food
.target Kaz'tik the Manipulator
step
.isOnQuest 31487
.goto 422,54.26,35.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.dailyturnin 31487 >>Turn in Sonic Disruption
.target Kaz'tik the Manipulator
step
.isOnQuest 31494
.goto 422,54.26,35.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.dailyturnin 31494 >>Turn in Free From Her Clutches
.target Kaz'tik the Manipulator
step
.isOnQuest 31268
.goto 422,54.25,35.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.dailyturnin 31268 >>Turn in A Little Brain Work
.target Kaz'tik the Manipulator
step
.isOnQuest 31024
.goto 422,54.25,35.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.dailyturnin 31024 >>Turn in Kunchong Treats
.target Kaz'tik the Manipulator
step
.isOnQuest 31508
.goto 422,54.37,35.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.dailyturnin 31508 >>Turn in Specimen Request
.target Rik'kal the Dissector
step
.isOnQuest 31509
.goto 422,54.37,35.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.dailyturnin 31509 >>Turn in Fear Takes Root
.target Rik'kal the Dissector
step
.isOnQuest 31271
.goto 422,54.37,35.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.dailyturnin 31271 >>Turn in Bad Genes
.target Rik'kal the Dissector
step
.isOnQuest 31234
.goto 422,54.37,35.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.dailyturnin 31234 >>Turn in Putting An Eye Out
.target Rik'kal the Dissector
step
.isOnQuest 31502
.goto 422,54.37,35.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.dailyturnin 31502 >>Turn in Wing Clip
.target Rik'kal the Dissector
step
.isOnQuest 31503
.goto 422,54.37,35.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.dailyturnin 31503 >>Turn in Shortcut to Ruin
.target Rik'kal the Dissector
step
.isOnQuest 31507
.goto 422,54.30,36.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.dailyturnin 31507 >>Turn in Meltdown
.target Korven the Prime
step
.isOnQuest 31270
.goto 422,54.31,36.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.dailyturnin 31270 >>Turn in The Fight Against Fear
.target Korven the Prime
step
.isOnQuest 31269
.goto 422,54.31,36.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.dailyturnin 31269 >>Turn in The Scale-Lord
.target Korven the Prime
step
.isOnQuest 31233
.goto 422,54.31,36.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.dailyturnin 31233 >>Turn in Sap Tapping
.target Korven the Prime
step
.isOnQuest 31232
.goto 422,54.31,36.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.dailyturnin 31232 >>Turn in An Ancient Empire
.target Korven the Prime
step
.isOnQuest 31496
.goto 422,54.30,36.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.dailyturnin 31496 >>Turn in Sampling the Empire's Finest
.target Korven the Prime
step
.isOnQuest 31272
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31272 >>Turn in Infection
step
.isOnQuest 31504
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31504 >>Turn in Ordnance Disposal
step
.isOnQuest 31237
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31237 >>Turn in Debugging the Terrace
step
.isOnQuest 31510
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31510 >>Turn in Quiet Now
step
.isOnQuest 31267
.goto 422,55.06,35.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.dailyturnin 31267 >>Turn in Mistblade Destruction
.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31231
.goto 422,55.06,35.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.dailyturnin 31231 >>Turn in Dreadspinner Extermination
.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31235
.goto 422,55.06,35.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.dailyturnin 31235 >>Turn in Nope Nope Nope
.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31109
.goto 422,55.06,35.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.dailyturnin 31109 >>Turn in Culling the Swarm
.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31111
.goto 422/870,3195.800,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.dailyturnin 31111 >>Turn in Eradicating the Zan'thik
step
.isOnQuest 31505
.goto 422/870,3195.800,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.dailyturnin 31505 >>Turn in Vess-Guard Duty
step
.isOnQuest 31598
.goto 422,55.018,35.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
.dailyturnin 31598 >>Turn in Kypa'rak's Core
.target Ambersmith Zikk
step
#label KlaxxiTurnins
.isOnQuest 31599
.goto 422,55.018,35.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
.dailyturnin 31599 >>Turn in The Matriarch's Maw
.target Ambersmith Zikk

step 
.reputation 1337,revered,<0,1
.goto 422,55.06,35.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.accept 31018 >>Accept Beneath the Heart of Fear
step
#completewith next
.goto 422,29.377,42.386
.subzone 6299 >> Enter the Amber Womb from the west
step
.isOnQuest 31018
>>Kill |cRXP_ENEMY_Adjunct Ek'vem|r
.goto 422/870,4498.200,-22.100
.complete 31018,1 
.mob Adjunct Ek'vem
step
.isOnQuest 31018
>>Kill |cRXP_ENEMY_Adjunct Ikkess|r
.goto 422/870,4352.100,-19.100
.complete 31018,2 
.mob Adjunct Ikkess
step
.isOnQuest 31018
>>Kill |cRXP_ENEMY_Adjunct Suruz|r
.goto 422/870,4351.000,-164.200
.complete 31018,3 
.mob Adjunct Suruz
step
.isOnQuest 31018
>>Kill |cRXP_ENEMY_Adjunct Tzikzi|r
.goto 422/870,4495.000,-166.900
.complete 31018,4 
.mob Adjunct Tzikzi
step
.isOnQuest 31018
>>Click the |cRXP_PICK_Ancient Amber Chunk|r
.goto 422/870,4425.100,-95.000
.complete 31018,5 
step
#completewith next
.subzone 6418 >> Exit the Amber Womb
step
.isOnQuest 31018
.goto 422/870,4606.300,-87.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
.target Xaril the Poisoned Mind
.turnin 31018 >>Turn in Beneath the Heart of Fear
step
.isQuestTurnedIn 31018
.goto 422/870,4606.300,-87.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
.target Xaril the Poisoned Mind
.accept 31208 >>Accept Venomous Intent
.accept 31209 >>Accept Dark Wings, Dark Things
.accept 31210 >>Accept A Shade of Dread
step
.isOnQuest 31208
#completewith ScarabWings
>>Kill |cRXP_ENEMY_Onyx Venomtails|r and |cRXP_ENEMY_Ruby Venomtails|r. Loot them for their |cRXP_LOOT_Venomous Stingers|r
.complete 31208,1 
.mob Onyx Venomtail
.mob Ruby Venomtail
step
.isOnQuest 31209
#completewith next
>>Kill |cRXP_ENEMY_Dread Scarabs|r. Loot them for their |cRXP_LOOT_Scarab Wings|r
.complete 31209,1 
.mob Dread Scarab
step
.isOnQuest 31210
#loop
.goto 422,27.19,48.01,75,0
.goto 422,27.54,42.40,75,0
.goto 422,26.69,37.26,75,0
.goto 422,26.07,29.13,75,0
>>Loot the |cRXP_PICK_Dreadshades|r on the ground
.complete 31210,1 
step
.isOnQuest 31209
#loop
.goto 422,27.19,48.01,75,0
.goto 422,27.54,42.40,75,0
.goto 422,26.69,37.26,75,0
.goto 422,26.07,29.13,75,0
#label ScarabWings
>>Kill |cRXP_ENEMY_Dread Scarabs|r. Loot them for their |cRXP_LOOT_Scarab Wings|r
.complete 31209,1 
.mob Dread Scarab
step
.isOnQuest 31208
#loop
.goto 422,27.19,48.01,75,0
.goto 422,27.54,42.40,75,0
.goto 422,26.69,37.26,75,0
.goto 422,26.07,29.13,75,0
>>Kill |cRXP_ENEMY_Onyx Venomtails|r and |cRXP_ENEMY_Ruby Venomtails|r. Loot them for their |cRXP_LOOT_Venomous Stingers|r
.complete 31208,1 
.mob Onyx Venomtail
.mob Ruby Venomtail
step
.isQuestTurnedIn 31018
.goto 422/870,4606.300,-87.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
.target Xaril the Poisoned Mind
.turnin 31208 >>Turn in Venomous Intent
.turnin 31209 >>Turn in Dark Wings, Dark Things
.turnin 31210 >>Turn in A Shade of Dread
.accept 31211 >>Accept The Poisoned Mind
step
.isOnQuest 31211
.goto 422/870,4606.300,-87.200
.gossipoption 129590 >> Talk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r to begin the flight
.skipgossipid 129590
.target Xaril the Poisoned Mind
step
.isOnQuest 31211
>>|cRXP_WARN_Cast|r |T463862:0|t[Paralyzing Serum] (2) |cRXP_WARN_followed by|r |T463860:0|t[Venom Bomb] (1) |cRXP_WARN_on |cRXP_ENEMY_Mantids|r, |cRXP_ENEMY_Kunchongs|r, |cRXP_ENEMY_Behemoths|r and|r |cRXP_ENEMY_Battletanks|r
.complete 31211,2 
.mob +Krik'thik Wingguard
.mob +Ik'thik Warrior
.mob +Krik'thik Wingguard
.mob +Krik'thik Wingleader
.mob +Ik'thik Slayer
.complete 31211,3 
.mob +Krik'thik Battletank
.mob +Ik'thik Kunchong
.mob +Dread Behemoth
step
.isOnQuest 31211
.goto 422/870,3200.400,126.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
.target Xaril the Poisoned Mind
.turnin 31211 >>Turn in The Poisoned Mind
step
.isQuestTurnedIn 31211
.isQuestOffered 62151,31216
.goto 422/870,3200.400,126.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
>>|cRXP_WARN_Skip this step if he not offering the daily quest|r
.target Xaril the Poisoned Mind
.daily 31216 >>Accept Dark Skies
step
.isOnQuest 31216
.goto 422/870,3200.400,126.100
.gossipoption 129591 >> Talk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r to begin the flight
.skipgossipid 129591
.target Xaril the Poisoned Mind
step
.isOnQuest 31216
>>|cRXP_WARN_Cast|r |T463862:0|t[Paralyzing Serum] (2) |cRXP_WARN_followed by|r |T463860:0|t[Venom Bomb] (1) |cRXP_WARN_on |cRXP_ENEMY_Mantids|r, |cRXP_ENEMY_Kunchongs|r, |cRXP_ENEMY_Behemoths|r and|r |cRXP_ENEMY_Battletanks|r
.complete 31216,2 
.mob +Krik'thik Wingguard
.mob +Ik'thik Warrior
.mob +Krik'thik Wingguard
.mob +Krik'thik Wingleader
.mob +Ik'thik Slayer
.complete 31216,3 
.mob +Krik'thik Battletank
.mob +Ik'thik Kunchong
.mob +Dread Behemoth
step
#completewith next
.cast vehicle,124206,128697,128698 >>|cRXP_WARN_Cast|r |T624006:0|t[Return to Klaxxi'vess] (6)
.subzoneskip 6315
step
.isOnQuest 31216
.goto 422/870,3200.400,126.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
.target Xaril the Poisoned Mind
.dailyturnin 31216 >>Turn in The Poisoned Mind
step 
.reputation 1337,revered,<0,1
.goto 422/870,3208.500,201.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.target Kor'ik
.accept 31439 >>Accept Dropping Our Signal
step
#completewith next
.subzone 6441 >> Travel to Duskroot Fen
step
.isOnQuest 31439
.goto 422,56.268,58.237
.cast 126372 >> |cRXP_WARN_Use the|r |T645165:0|t[Klaxxi Tuning Fork] |cRXP_WARN_at the|r |cRXP_PICK_Amber Chunk|r
.timer 16,Dropping Our Signal RP
.use 87202
step
.isOnQuest 31439
.goto 422/870,3127.800,-662.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.turnin 31439 >>Turn in Dropping Our Signal
step
.isQuestTurnedIn 31439
.goto 422/870,3127.800,-662.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.accept 31441 >>Accept Corruption Runs Deep
.timer 41,Corruption Runs Deep RP
step
.isOnQuest 31441
.goto 422,56.191,57.517
>>Kill |cRXP_ENEMY_Kor'ik|r
.complete 31441,1 
.mob Kor'ik
step
.isQuestComplete 31441
.goto 422/870,3132.700,-637.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.turnin 31441 >>Turn in Corruption Runs Deep
step
.isQuestTurnedIn 31441
.goto 422/870,3132.700,-637.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.accept 31458 >>Accept Damage Control
.accept 31465 >>Accept Extracting Answers
step
.isOnQuest 31465
#completewith Whisperers
>>Kill |cRXP_ENEMY_Ik'thik Swarmborns|r. Loot them for their |cRXP_LOOT_Venom-Coated Mandibles|r
.complete 31465,1 
.mob Ik'thik Swarmborn
step
.isOnQuest 31458
#completewith next
>>Kill |cRXP_ENEMY_Ik'thik Whisperers|r
.complete 31458,1 
.mob Ik'thik Whisperer
step
.isOnQuest 31458
.goto 422,55.605,47.088
>>Click the |cRXP_PICK_Kypari Ik Beacon|r
.complete 31458,2 
step
.isOnQuest 31458
#label Whisperers
#loop
.goto 422,51.42,44.14,70,0
.goto 422,56.78,46.11,70,0
>>Kill |cRXP_ENEMY_Ik'thik Whisperers|r
.complete 31458,1 
.mob Ik'thik Whisperer
step
.isOnQuest 31465
#loop
.goto 422,51.42,44.14,70,0
.goto 422,56.78,46.11,70,0
>>Kill |cRXP_ENEMY_Ik'thik Swarmborns|r. Loot them for their |cRXP_LOOT_Venom-Coated Mandibles|r
.complete 31465,1 
.mob Ik'thik Swarmborn
step
.isQuestTurnedIn 31441
.goto 422/870,3205.200,124.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.turnin 31458 >>Turn in Damage Control
.turnin 31465 >>Turn in Extracting Answers
step
.isQuestTurnedIn 31458
.isQuestTurnedIn 31465
.goto 422/870,3205.200,124.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.daily 31504,31237,31272,31510 >>Accept the random daily quest
step
.isOnQuest 31504
#loop
.goto 422,47.4,36.9,70,0
.goto 422,41.4,36.5,70,0
.goto 422,45.5,28.3,70,0
.goto 422,49.2,32.3,70,0
>>Click the |cRXP_PICK_Pheromone Mines|r on the ground
.complete 31504,1 
step
.isOnQuest 31272
#loop
.goto 422,65.15,68.95,70,0
.goto 422,60.95,70.85,70,0
.goto 422,61.11,64.10,70,0
>>Kill |cRXP_ENEMY_Needleback Porcupines|r, |cRXP_ENEMY_Bonedust Moths|r, |cRXP_ENEMY_Bluehide Mushan|r and |cRXP_ENEMY_Mutating Scorpids|r
.complete 31272,1 
.mob Bonedust Moth
.mob Bluehide Mushan
.mob Mutating Scorpid
.mob Needleback Porcupine
step
.isOnQuest 31237
.goto 422,69.11,21.97,60,0
.goto 422,67.25,37.29,60,0
>>|cRXP_WARN_Kill any mob in the area to gain the|r |T132284:0|t[Pheromone Tracking] |cRXP_WARN_buff. This will allow you to see moving |cRXP_PICK_Red Clouds|r on the ground. Quickly stand on it and click the |cRXP_PICK_Eye of the Empress|r inside of it|r
.complete 31237,1 
.mob Eye of the Empress
step
.isOnQuest 31510
.goto 422,24.139,86.255
>>Click the |cRXP_PICK_Zan'thik Resonating Crystal|r to summon |cRXP_ENEMY_Adjunct Sek'ot|r
>>Kill |cRXP_ENEMY_Adjunct Sek'ot|r
.complete 31510,1 
.mob Adjunct Sek'ot
step
.isOnQuest 31504
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31504 >>Turn in Ordnance Disposal
step
.isOnQuest 31272
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31272 >>Turn in Infection
step
.isOnQuest 31237
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31237 >>Turn in Debugging the Terrace
step
.isOnQuest 31510
.goto 422/870,3205.200,124.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
.target Hisek the Swarmkeeper
.dailyturnin 31510 >>Turn in Quiet Now
step 
.reputation 1337,exalted,<0,1
.goto 422/870,3192.800,150.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
.target Malik the Unscathed
.accept 31959 >>Accept The Empress' Gambit
step
.isOnQuest 31959
.goto 422,40.398,34.562
.gossipoption 130319 >> Talk to |cRXP_FRIENDLY_Malik the Unscathed|r at the Heart of Fear to begin the RP
.timer 75,The Empress' Gambit RP
.skipgossipid 130319
.target Malik the Unscathed
step
.isOnQuest 31959
.goto 422/870,4002.600,179.000
>>|cRXP_WARN_Wait out the RP|r
.complete 31959,1 
step
.isOnQuest 31959
>>Click on the quest popup under your minimap to turn in and accept the quest
.turnin 31959 >>Turn in The Empress' Gambit
step
.isQuestTurnedIn 31959
>>Click on the quest popup under your minimap to turn in and accept the quest
.accept 31609 >>Accept The Wrath of Shek'zeer
step
.isOnQuest 31609
>>Kill |cRXP_ENEMY_Akkolon|r, |cRXP_ENEMY_Shox'tik|r, |cRXP_ENEMY_Manifestation of Terror|r and |cRXP_ENEMY_Mantid Subjugates|r
.complete 31609,1 
.goto 422/870,3752.000,166.100
.mob +Akkolon
.complete 31609,2 
.goto 422/870,3923.700,-17.300
.mob +Shox'tik
.complete 31609,3 
.goto 422/870,3790.100,361.100
.mob +Manifestation of Terror
.complete 31609,4 
.goto 422/870,3752.000,166.100,70,0
.goto 422/870,3923.700,-17.300,70,0
.goto 422/870,3790.100,361.100,70,0
.goto 422/870,3752.000,166.100,70,0
.goto 422/870,3923.700,-17.300,70,0
.goto 422/870,3790.100,361.100,70,0
.goto 422/870,3752.000,166.100,70,0
.goto 422/870,3923.700,-17.300,70,0
.goto 422/870,3790.100,361.100,70,0
.mob +Sra'thik Subjugate
.mob +Krik'thik Subjugate
.mob +Zan'thik Subjugate
step
#completewith next
.subzone 6315 >> Return to Klaxxi'vess
step
.isOnQuest 31609
.goto 422/870,3192.600,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.turnin 31609 >>Turn in The Wrath of Shek'zeer
.accept 31612 >>Accept Shadow of the Empire
step
.isQuestTurnedIn 31609
.goto 422/870,3192.600,137.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.accept 31612 >>Accept Shadow of the Empire
step
.isOnQuest 31612
.goto 422/870,3192.600,137.100
.gossipoption 126277 >> Talk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r to begin the RP
.skipgossipid 126277
.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31612
.goto 422,56.04,33.63,20,0
.goto 422,57.66,34.23,20,0
.goto 422/870,3248.800,185.100
>>Follow |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r into the chamber below Klaxxi'vess
.complete 31612,1 
.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31612
.goto 422/870,3248.800,185.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.target Kil'ruk the Wind-Reaver
.turnin 31612 >>Turn in Shadow of the Empire
#label dailyend
step
+|cRXP_WARN_You have completed all available daily quests for The Klaxxi today. Load the same guide again tomorrow once the daily quests have reset to complete more daily quests|r
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP-Pandaria
#name 1-Shado-Pan
#internal
step
#completewith next
.subzone 6197 >> Travel to the Shado-Pan Garrison
step
#loop
.goto 388/870,4262.400,1857.700,5,0
.goto 388,49.731,70.515,5,0
.goto 388,49.013,71.328,5,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r, |cRXP_FRIENDLY_Ling of the Six Pools|r or |cRXP_FRIENDLY_Master Snowdrift|r

.daily 31039,31040,31041,31046,31042,31043,31047,31105,31113,31114,31116,31118,31119,31196,31197,31199,31200,31201,31203,31198,31044,31045,31048,31106 >> Accept all of the available daily quests
.disablecheckbox

.questcount <4,31039,31040,31041,31046,31042,31043,31047,31105,31113,31114,31116,31118,31119,31196,31197,31199,31200,31201,31203,31198,31044,31045,31048,31106
.target Ban Bearheart
.target Ling of the Six Pools
.target Master Snowdrift
step
#optional
.skipOnQuest 31114,SnowdriftQuests
.skipOnQuest 31113,SnowdriftQuests
.skipOnQuest 31120,SnowdriftQuests
.skipOnQuest 31116,SnowdriftQuests
.skipOnQuest 31118,SnowdriftQuests
.skipOnQuest 31196,LingQuests
.skipOnQuest 31199,LingQuests
.skipOnQuest 31197,LingQuests
.skipOnQuest 31198,LingQuests
.skipOnQuest 31200,LingQuests
.skipOnQuest 31201,LingQuests
step
.isOnQuest 31039,31041,31040,31046,31105,31042,31043,31047,31044,31045,31048,31106
.goto 388,48.790,70.183
.gossipoption 126279 >> Talk to |cRXP_FRIENDLY_Fei Li|r for her to accompany you
.skipgossipid 126279
.target Fei Li
.subzoneskip 6307
step
.isQuestTurnedIn 31110
.goto 388,48.456,69.885
#completewith ShanzeTurnins
.subzone 6307 >> Go through the |cRXP_PICK_Portal to Shan'ze Dao|r
step
.isQuestAvailable 31110
#completewith ShanzeTurnins
.subzone 6307 >> Travel to Shan'ze Dao
step
.isQuestAvailable 31110
.reputation 1269,friendly,<0,1
.goto 388/870,5421.700,3693.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moshu the Arcane|r
.target Moshu the Arcane
.accept 31110 >>Accept Through the Portal
step
.isOnQuest 31110
#sticky
#label ArcanePowder
#loop
.waypoint 388,29.5,22.5,60,0
.waypoint 388,28.2,18.6,60,0
.waypoint 388,28.0,14.7,60,0
.waypoint 388,30.5,14.5,60,0
.waypoint 388,34.42,20.90,60,0
.waypoint 388,32.00,26.31,60,0
.waypoint 388,28.27,16.05,60,0
.waypoint 388,26.82,9.27,60,0
.waypoint 388,21.59,12.97,60,0
.waypoint 388,28.88,20.54,60,0
.waypoint 388,29.40,17.58,60,0
.waypoint 388,28.17,17.98,60,0
.waypoint 388,23.46,13.85,60,0
>>Kill the |cRXP_ENEMY_Mogu|r on Shan'ze Dao. Loot them for their |cRXP_LOOT_Ancient Arcane Powder|r
.complete 31110,1 
.mob Shan'ze Ancestor
.mob Shan'ze Deathspeaker
.mob Shan'ze Beastmaster
.mob Shan'ze Illusionist
.mob Shan'ze Serpentbinder
step
.isOnQuest 31047
#loop
#sticky
#label WildCloudriders
.waypoint 388,34.42,20.90,60,0
.waypoint 388,32.00,26.31,60,0
>>Click the |cRXP_PICK_Ball and Chain|r to free |cRXP_FRIENDLY_Wild Cloudriders|r
.complete 31047,1 
.target Ball and Chain
step
.isOnQuest 31042
#sticky
#label OnyxHeart
.waypoint 388,26.93,15.17,70,0
.waypoint 388,27.19,9.53,70,0
.waypoint 388,23.93,9.47,70,0
.waypoint 388,22.33,13.60,70,0
>>Kill |cRXP_ENEMY_Onyx Stormclaws|r. Loot them for their |cRXP_LOOT_Onyx Hearts|r
.complete 31042,1 
.mob Onyx Stormclaw
step
.isOnQuest 31043
#sticky
#label Tablets
#loop
.waypoint 388,27.8,16.2,70,0
.waypoint 388,32.4,12.3,70,0
.waypoint 388,21.6,11.5,70,0
>>Loot the |cRXP_PICK_Shan'ze Tablets|r on the ground
>>|cRXP_ENEMY_Shan'ze Serpentbinders|r |cRXP_WARN_can also have a small chance to drop these|r
.complete 31043,1 
.mob Shan'ze Serpentbinder
step
.isOnQuest 31105
#sticky
#label Shanze2
#loop
.waypoint 388,34.42,20.90,60,0
.waypoint 388,32.00,26.31,60,0
.waypoint 388,28.27,16.05,60,0
.waypoint 388,26.82,9.27,60,0
.waypoint 388,21.59,12.97,60,0
>>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r and |cRXP_ENEMY_Shan'ze Beastmasters|r
.complete 31105,1 
.mob Shan'ze Serpentbinder
.mob Shan'ze Beastmaster
step
.isOnQuest 31046
#sticky
#label CloudrunnerHatchlings
#loop
.waypoint 388,34.42,20.90,60,0
.waypoint 388,32.00,26.31,60,0
.waypoint 388,29.53,9.82,60,0
.waypoint 388,23.68,8.91,60,0
>>Click the |cRXP_PICK_Shan'ze Cages|r to free the |cRXP_FRIENDLY_Cloudrunner Hatchlings|r
.complete 31046,1 
.target Cloudrunner Hatchling
step
.isOnQuest 31041
#sticky
#label CloudrunnerEggs
#loop
.waypoint 388,34.42,20.90,60,0
.waypoint 388,32.00,26.31,60,0
.waypoint 388,23.83,21.26,60,0
.waypoint 388,20.10,15.87,60,0
>>Loot for |cRXP_PICK_Shiny Eggs|r on the ground for |cRXP_LOOT_Cloudrunner Eggs|r
.complete 31041,1 
step
.isOnQuest 31040
#sticky
#label Darkwoods
#loop
.waypoint 388,26.80,24.06,60,0
.waypoint 388,23.74,21.23,60,0
.waypoint 388,20.24,16.33,60,0
.waypoint 388,21.29,12.74,60,0
>>Kill |cRXP_ENEMY_Darkwoods Pixies|r and |cRXP_ENEMY_Darkwoods Charmers|r
.complete 31040,1 
.mob Darkwoods Pixie
.mob Darkwoods Charmer
step
.isOnQuest 31039
#sticky
#label Shanze
#loop
.waypoint 388,34.42,20.90,60,0
.waypoint 388,32.00,26.31,60,0
.waypoint 388,28.27,16.05,60,0
.waypoint 388,26.82,9.27,60,0
.waypoint 388,21.59,12.97,60,0
>>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r and |cRXP_ENEMY_Shan'ze Beastmasters|r
.complete 31039,1 
.mob Shan'ze Serpentbinder
.mob Shan'ze Beastmaster
step
.isOnQuest 31044
#sticky
#label BronzeClaw
#loop
.waypoint 388,32.60,26.37,70,0
.waypoint 388,34.03,21.03,70,0
.waypoint 388,30.08,18.43,70,0
.waypoint 388,28.64,12.77,60,0
>>Kill |cRXP_ENEMY_Bronze Quilens|r. Loot them for their |cRXP_LOOT_Bronze Claws|r
.complete 31044,1 
.mob Bronze Quilen
step
.isOnQuest 31045
#sticky
#label Illusionist
#loop
.waypoint 388,28.88,20.54,40,0
.waypoint 388,29.40,17.58,40,0
.waypoint 388,28.17,17.98,40,0
.waypoint 388,23.46,13.85,40,0
>>Kill |cRXP_ENEMY_Shan'ze Illusionists|r
.complete 31045,1 
.mob Shan'ze Illusionist
step
.isOnQuest 31048
#sticky
#label Ancestor
#loop
.waypoint 388,29.5,22.5,60,0
.waypoint 388,28.2,18.6,60,0
.waypoint 388,28.0,14.7,60,0
.waypoint 388,30.5,14.5,60,0
>>Click the |cRXP_PICK_Mogu Burial Urns|r to spawn |cRXP_ENEMY_Shan'ze Ancestors|r
>>Kill the |cRXP_ENEMY_Shan'ze Ancestors|r
.complete 31048,1 
.mob Shan'ze Ancestor
step
.isOnQuest 31106
#sticky
#label Shanze3
#loop
.waypoint 388,34.42,20.90,60,0
.waypoint 388,32.00,26.31,60,0
.waypoint 388,28.27,16.05,60,0
.waypoint 388,26.82,9.27,60,0
.waypoint 388,21.59,12.97,60,0
>>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r and |cRXP_ENEMY_Shan'ze Beastmasters|r
.complete 31106,1 
.mob Shan'ze Serpentbinder
.mob Shan'ze Beastmaster
step
#requires BronzeClaw
step
#requires Illusionist
step
#requires Ancestor
step
#requires Shanze3
step
#requires WildCloudriders
step
#requires OnyxHeart
step
#requires Tablets
step
#requires Shanze2
step
#requires Darkwoods
step
#requires Shanze
step
#requires CloudrunnerHatchlings
step
#requires CloudrunnerEggs
step
#label ShanzeTurnins

step
.isOnQuest 31039,31041,31040,31046
.goto 388/870,4262.400,1857.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei Li|r beside you
>>|cRXP_WARN_If you have lost |cRXP_FRIENDLY_Fei Li|r, head back to the Shado-Pan Garrison and talk to|r |cRXP_FRIENDLY_Ban Bearheart|r
.dailyturnin 31039 >>Turn in The Mogu Menace
.dailyturnin 31041 >>Turn in Egg Rescue!
.dailyturnin 31040 >>Turn in Spiteful Sprites
.dailyturnin 31046 >>Turn in Little Hatchlings
.daily 31049 >>Accept In Sprite Of Everything
.target Fei Li
.target Ban Bearheart
step
.isOnQuest 31105,31042,31043,31047
.goto 388/870,4262.400,1857.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei Li|r beside you
>>|cRXP_WARN_If you have lost |cRXP_FRIENDLY_Fei Li|r, head back to the Shado-Pan Garrison and talk to|r |cRXP_FRIENDLY_Ban Bearheart|r
.dailyturnin 31105 >>Turn in The Mogu Menace
.dailyturnin 31042 >>Turn in Onyx Hearts
.dailyturnin 31043 >>Turn in Dark Arts
.dailyturnin 31047 >>Turn in Born Free
.daily 31061 >>Accept Riding the Storm
.target Fei Li
.target Ban Bearheart
step
.isOnQuest 31044,31045,31048,31106
.goto 388/870,4262.400,1857.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei Li|r beside you
>>|cRXP_WARN_If you have lost |cRXP_FRIENDLY_Fei Li|r, head back to the Shado-Pan Garrison and talk to|r |cRXP_FRIENDLY_Ban Bearheart|r
.dailyturnin 31044 >>Turn in Bronze Claws
.dailyturnin 31045 >>Turn in Illusions Of The Past
.dailyturnin 31048 >>Turn in Grave Consequences
.dailyturnin 31106 >>Turn in The Mogu Menace
.daily 31062 >>Accept When The Dead Speak
.target Ban Bearheart
step
#completewith next
.goto 388,20.239,15.706,15 >> Enter the underground cave
step
.isOnQuest 31049
.goto 388/870,5957.800,4027.500
>>Kill the |cRXP_ENEMY_Darkwoods Faerie|r
.complete 31049,1 
.mob Darkwoods Faerie
step
.isOnQuest 31061
.goto 388,32.84,10.76
.use 83134>>|cRXP_WARN_Use the|r |T134226:0|t[Bronze Claws] |cRXP_WARN_to mount the flying|r |cRXP_ENEMY_Shan'ze Cloudrunners|r
>>|cRXP_WARN_Once mounted, attack the |cRXP_ENEMY_Shan'ze Cloudrunners|r to free them|r
.complete 31061,1 
.mob Shan'ze Cloudrunner
step
.isOnQuest 31061
.exitvehicle >> Exit the |cRXP_FRIENDLY_Shan'ze Cloudrunner|r
step
.isOnQuest 31062
.goto 388/870,5221.000,4193.100
>>Kill the |cRXP_ENEMY_Shan'ze Deathspeaker|r
.complete 31062,1 
.mob Shan'ze Deathspeaker
step
#requires ArcanePowder
step
.isQuestComplete 31110
.goto 388/870,5421.700,3693.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moshu the Arcane|r
.target Moshu the Arcane
.turnin 31110 >>Turn in Through the Portal
step
.isQuestTurnedIn 31110
.goto 388,28.794,23.346,15,0
.goto 388,29.001,22.126
#completewith ReturnGarrison
.subzone 6197 >> Go through the |cRXP_PICK_Portal to Shado-Pan Garrison|r
.subzoneskip 6307,1
step
.isQuestAvailable 31110
#completewith ReturnGarrison
.subzone 6197 >> Return to the Shado-Pan Garrison
step
.isOnQuest 31049
.goto 388/870,4262.400,1857.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.dailyturnin 31049 >>Turn in In Sprite Of Everything
.target Ban Bearheart
step
.isOnQuest 31061
.goto 388/870,4262.400,1857.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.dailyturnin 31061 >>Turn in Riding the Storm
.target Ban Bearheart
step
#label ReturnGarrison
.isOnQuest 31062
.goto 388/870,4262.400,1857.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.dailyturnin 31062 >>Turn in When The Dead Speak
.target Ban Bearheart


step << skip
#label SnowdriftQuests
.isOnQuest 31114,31113,31120,31116,31118
.goto 388,49.699,70.488 
.goto 388,49.307,71.562 

.gossip 62550,0 >> Talk to |cRXP_FRIENDLY_Chao the Voice|r for her to accompany you
.skipgossip
.target Chao the Voice
.tagget Protector Yi
step
#label SnowdriftQuests
.isOnQuest 31114,31113,31120,31116,31118
#loop
.goto 388,49.699,70.488,5,0 
.goto 388,49.307,71.562,5,0 
+Talk to |cRXP_FRIENDLY_Chao the Voice|r or |cRXP_FRIENDLY_Protector Yi|r for either of them to accompany you
.aura -129087
.skipgossip
.target Chao the Voice
.target Protector Yi
step
#completewith DeadTalkerAssault
#hidewindow
#loop
.goto 388,51.36,53.11,45,0
.goto 388,50.37,48.88,45,0
.goto 388,53.27,49.36,40,0
+1
step
#completewith CipheredScroll
.isOnQuest 31114
>>Kill |cRXP_ENEMY_Deadtalker Corpsedefilers|r and a |cRXP_ENEMY_Deadtalker Crusher|r
.complete 31114,1 
.mob +Deadtalker Corpsedefiler
.complete 31114,2 
.mob +Deadtalker Crusher
step
#completewith CipheredScroll
.isOnQuest 31116
>>Kill |cRXP_ENEMY_Defiled Spirits|r. Loot them for their |cRXP_LOOT_Ancient Spirit Dust|r
>>Click on the |cRXP_PICK_Defiled Yaungol Remains|r
>>|cRXP_WARN_You need four |cRXP_LOOT_Ancient Spirit Dust|r per|r |cRXP_PICK_Defiled Yaungol Remains|r
.collect 84727,32,31116,1,-4
.disablecheckbox
.complete 31116,1 
.mob Defiled Spirit
step
#label CipheredScroll
.isOnQuest 31118
>>Kill |cRXP_ENEMY_Deadtalkers|r and |cRXP_ENEMY_Uruk|r. Loot them for the |cRXP_LOOT_Ciphered Scroll|r
.complete 31118,1 
.mob Deadtalker Crusher
.mob Deadtalker Corpsedefiler
.mob Uruk
step
#completewith next
.isOnQuest 31114
>>Kill |cRXP_ENEMY_Deadtalker Corpsedefilers|r and a |cRXP_ENEMY_Deadtalker Crusher|r
.complete 31114,1 
.mob +Deadtalker Corpsedefiler
.complete 31114,2 
.mob +Deadtalker Crusher
step
.isOnQuest 31116
>>Kill |cRXP_ENEMY_Defiled Spirits|r. Loot them for their |cRXP_LOOT_Ancient Spirit Dust|r
>>Click on the |cRXP_PICK_Defiled Yaungol Remains|r
>>|cRXP_WARN_You need four |cRXP_LOOT_Ancient Spirit Dust|r per|r |cRXP_PICK_Defiled Yaungol Remains|r
.collect 84727,32,31116,1,-4
.disablecheckbox
.complete 31116,1 
.mob Defiled Spirit
step
.isOnQuest 31114
#label DeadTalkerAssault
>>Kill |cRXP_ENEMY_Deadtalker Corpsedefilers|r and a |cRXP_ENEMY_Deadtalker Crusher|r
.complete 31114,1 
.mob +Deadtalker Corpsedefiler
.complete 31114,2 
.mob +Deadtalker Crusher
step
.isOnQuest 31119
#completewith next
>>Loot the |cRXP_PICK_Highly Explosive Yaungol Oil Barrels|r on the ground
.collect 84762,10 
step
.isOnQuest 31113
#loop
.goto 388,61.52,43.70,35,0
.goto 388,64.08,42.00,35,0
.goto 388,60.89,41.58,35,0
>>Kill the |cRXP_ENEMY_Gai-Chos|r
.complete 31113,1 
.mob Gai-Cho Pitchthrower
.mob Gai-Cho Yaungol
.mob Gai-Cho Earthtalker
step
.isOnQuest 31119
#completewith next
>>Loot the |cRXP_PICK_Highly Explosive Yaungol Oil Barrels|r on the ground
.collect 84762,10 
.goto 388,61.52,43.70,0
.goto 388,60.89,41.58,0
.goto 388,64.08,42.00,0
step
.isOnQuest 31119
#loop
.goto 388,59.97,48.29,35,0
.goto 388,62.13,47.91,35,0
>>|cRXP_WARN_Use the|r |T252176:0|t[Highly Explosive Yaungol Oil] |cRXP_WARN_to kill the|r |cRXP_ENEMY_Kri'thik|r |cRXP_WARN_and|r |cRXP_ENEMY_Gai-Cho|r
*|cRXP_WARN_If you need more|r |T252176:0|t[Highly Explosive Yaungol Oil] |cRXP_WARN_then fly back up and collect some more|r
>>|cRXP_WARN_You can use it while on your flying mount|r
.complete 31119,1 
.use 84762
step
#completewith SnowdriftQuestsTurnin
.isOnQuest 31113,31114,31118,31119,31116
.goto 388,49.61,70.50
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chao the Voice|r or |cRXP_FRIENDLY_Protector Yi|r beside you
>>|cRXP_WARN_If you have lost |cRXP_FRIENDLY_Chao the Voice|r or |cRXP_FRIENDLY_Protector Yi|r, head back to the Shado-Pan Garrison and talk to|r |cRXP_FRIENDLY_Master Snowdrift|r
.target Chao the Voice
.target Protector Yi
.target Master Snowdrift
step
.isOnQuest 31113
.goto 388,49.61,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chao the Voice|r, |cRXP_FRIENDLY_Protector Yi|r or |cRXP_FRIENDLY_Master Snowdrift|r
.dailyturnin 31113 >>Turn in Assault Fire Camp Gai-Cho
.target Master Snowdrift
.target Chao the Voice
.target Protector Yi
step
.isOnQuest 31114
.goto 388,49.61,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chao the Voice|r, |cRXP_FRIENDLY_Protector Yi|r or |cRXP_FRIENDLY_Master Snowdrift|r
.dailyturnin 31114 >>Turn in Assault Deadtalker's Plateau
.target Master Snowdrift
.target Chao the Voice
.target Protector Yi
step
.isOnQuest 31118
.goto 388,49.61,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chao the Voice|r, |cRXP_FRIENDLY_Protector Yi|r or |cRXP_FRIENDLY_Master Snowdrift|r
.dailyturnin 31118 >>Turn in The Deadtalker Cipher
.target Master Snowdrift
.target Chao the Voice
.target Protector Yi
step
.isOnQuest 31119
.goto 388,49.61,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chao the Voice|r, |cRXP_FRIENDLY_Protector Yi|r or |cRXP_FRIENDLY_Master Snowdrift|r
.dailyturnin 31119 >>Turn in The Enemy of My Enemy... Is Still My Enemy!
.target Master Snowdrift
.target Chao the Voice
.target Protector Yi
step
.isOnQuest 31116
.goto 388,49.61,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chao the Voice|r, |cRXP_FRIENDLY_Protector Yi|r or |cRXP_FRIENDLY_Master Snowdrift|r
.dailyturnin 31116 >>Turn in Spirit Dust
.target Master Snowdrift
.target Chao the Voice
.target Protector Yi
step
#label SnowdriftQuestsTurnin
.isQuestTurnedIn 31119,31116,31118,31114
.goto 388,49.61,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chao the Voice|r, |cRXP_FRIENDLY_Protector Yi|r or |cRXP_FRIENDLY_Master Snowdrift|r
.daily 31117,31120 >>Accept Cheng Bo! or Uruk!
.target Master Snowdrift
.target Chao the Voice
.target Protector Yi
step
.isOnQuest 31120
.goto 388,60.76,42.03
>>Kill |cRXP_ENEMY_Cheng Bo|r
.complete 31120,1 
.mob Cheng Bo
step
.isOnQuest 31117
.goto 388,50.35,48.95
>>Kill |cRXP_ENEMY_Uruk|r
.complete 31117,1 
.mob Uruk
step
#completewith ReturnGarrison2
.subzone 6197 >> Return to the Shado-Pan Garrison
step
.isOnQuest 31120
.goto 388,49.60,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
.dailyturnin 31120 >>Turn in Cheng Bo!
.target Master Snowdrift
step
#label ReturnGarrison2
.isOnQuest 31117
.goto 388,49.60,70.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
.dailyturnin 31117 >>Turn in Uruk!
.target Master Snowdrift

step
#label LingQuests
.isOnQuest 31196,31199,31197,31198,31200,31201
.goto 388,48.699,71.026
.gossip 63617,0 >> Talk to |cRXP_FRIENDLY_Taoshi|r for her to accompany you
>>|cRXP_WARN_Ignore the message about the |cRXP_PICK_Bag of Wu Kao Supplies|r if you see the popup|r
.skipgossip
.target Taoshi
step
.isOnQuest 31196
#sticky
#label LesserSrathik
#loop
.waypoint 388,23.52,52.48,45,0
.waypoint 388,26.02,40.53,55,0
.waypoint 388,16.44,40.98,55,0
.waypoint 388,19.57,45.90,55,0
.waypoint 388,20.12,54.23,45,0
>>Kill the |cRXP_WARN_Non-Elite|r |cRXP_ENEMY_Sra'thik Mantids|r
.complete 31196,1 
.mob Sra'thik Regenerator
.mob Sra'thik Swiftwing
.mob Sra'thik Drone
.mob Sra'thik Cacophyte
.mob Sra'thik Mutilator
step
.isOnQuest 31197
#sticky
#label GreaterSrathik
#loop
.waypoint 388,26.0,46.0,70,0
.waypoint 388,21.8,53.4,70,0
.waypoint 388,18.8,41.2,70,0
.waypoint 388,26.8,40.0,70,0
.line 388,17.66,41.90,17.96,44.79,17.85,46.17,17.64,49.62,18.00,50.30
.line 388,18.41,49.86,19.65,48.38,19.71,46.84,20.18,45.97
.line 388,20.92,42.96,20.16,42.98,19.50,43.73,19.48,44.28,19.71,44.75
.line 388,20.52,40.24,21.59,40.26,22.25,39.77,23.33,39.91,23.55,39.88
.line 388,27.16,40.54,26.27,40.82,27.16,39.60,26.43,38.76
.line 388,24.00,43.82,24.35,42.97,25.19,43.10,25.37,41.57,25.16,40.64
.line 388,26.07,40.86,25.72,43.12,26.12,45.35,26.15,45.90
.line 388,26.01,46.35,25.38,47.65,24.81,48.07
.line 388,23.97,49.38,23.42,50.62,23.37,51.69
.line 388,23.21,52.69,22.45,53.35,21.70,53.59
.line 388,24.85,55.10,24.33,54.92,23.70,54.09,23.52,52.50
.line 388,21.66,53.58,20.31,53.99,20.03,52.51,19.39,51.33
>>Kill the |cRXP_WARN_Elite|r |cRXP_ENEMY_Sra'thik Mantids|r
.complete 31197,1 
.mob Sra'thik Deathmixer
.mob Sra'thik Vessguard
.mob Sra'thik Swarmlord
.mob Sra'thik Will-Breaker
.mob Sra'thik Swarm-Leader
step
.isOnQuest 31199
>>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
.goto 388,27.44,54.78
.complete 31199,2 
step
.isOnQuest 31199
>>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
.goto 388,25.76,53.55
.complete 31199,1 
step
.isOnQuest 31198
.goto 388,23.57,55.64
>>Click on the |cRXP_PICK_Sra'thik Idol|r
.complete 31198,1 
step
.isOnQuest 31198
.goto 388,21.53,49.24
>>Click on the |cRXP_PICK_Sra'thik Idol|r
.complete 31198,3 
step
.isOnQuest 31200
>>|cRXP_WARN_Use the|r |T348523:0|t[Bag of Shado-Pan Gas Bombs] |cRXP_WARN_at the waypoint location|r
.use 86532
.goto 388,23.83,47.29
.complete 31200,2 
step
.isOnQuest 31200
>>|cRXP_WARN_Use the|r |T348523:0|t[Bag of Shado-Pan Gas Bombs] |cRXP_WARN_at the waypoint location|r
.use 86532
.goto 388,23.63,44.72
.complete 31200,3 
step
.isOnQuest 31198
.goto 388,27.82,41.96
>>Click on the |cRXP_PICK_Sra'thik Idol|r
.complete 31198,4 
step
.isOnQuest 31199
>>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
.goto 388,27.18,41.18
.complete 31199,3 
step
.isOnQuest 31199
>>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
.goto 388,26.06,39.94
.complete 31199,4 
step
.isOnQuest 31200
>>|cRXP_WARN_Use the|r |T348523:0|t[Bag of Shado-Pan Gas Bombs] |cRXP_WARN_at the waypoint location|r
.use 86532
.goto 388,22.04,41.56
.complete 31200,4 
step
.isOnQuest 31200
>>|cRXP_WARN_Use the|r |T348523:0|t[Bag of Shado-Pan Gas Bombs] |cRXP_WARN_at the waypoint location|r
.use 86532
.goto 388,21.20,43.18
.complete 31200,5 
step
.isOnQuest 31200
>>|cRXP_WARN_Use the|r |T348523:0|t[Bag of Shado-Pan Gas Bombs] |cRXP_WARN_at the waypoint location|r
.use 86532
.goto 388,21.00,45.88
.complete 31200,1 
step
.isOnQuest 31198
.goto 388,16.17,45.78
>>Click on the |cRXP_PICK_Sra'thik Idol|r
.complete 31198,2 
step
.isOnQuest 31201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Pan Trainee|r
*|cRXP_WARN_Be careful, you may get dismounted in the area|r
.goto 388,18.00,53.45
.skipgossip
.complete 31201,1 
.target Shado_pan Trainee
step
.isOnQuest 31201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Pan Trainee|r
*|cRXP_WARN_Be careful, you may get dismounted in the area|r
.goto 388,17.40,56.91
.skipgossip
.complete 31201,2 
.target Shado_pan Trainee
step
.isOnQuest 31201
#label ShadoPanTraineesFreed
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Pan Trainee|r
*|cRXP_WARN_Be careful, you may get dismounted in the area|r
.goto 388,17.57,58.04
.skipgossip
.complete 31201,3 
.target Shado_pan Trainee
step
#requires LesserSrathik
step
#requires GreaterSrathik
step
#completewith LingTurnin
.isOnQuest 31196,31197,31199,31201,31198
.goto 388,49.01,71.33
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r beside you
>>|cRXP_WARN_If you have lost |cRXP_FRIENDLY_Taoshi|r, head back to the Shado-Pan Garrison and talk to|r |cRXP_FRIENDLY_Ling of the Six Pools|r
.target Taoshi
.target Master Snowdrift
step
.isOnQuest 31196
.goto 388,49.01,71.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r or |cRXP_FRIENDLY_Ling of the Six Pools|r
.dailyturnin 31196 >>Turn in Sra'vess Wetwork
.target Ling of the Six Pools
step
.isOnQuest 31197
.goto 388,49.01,71.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r or |cRXP_FRIENDLY_Ling of the Six Pools|r
.dailyturnin 31197 >>Turn in Friends, Not Food!
.target Ling of the Six Pools
step
.isOnQuest 31199
.goto 388,49.01,71.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r or |cRXP_FRIENDLY_Ling of the Six Pools|r
.dailyturnin 31199 >>Turn in Destroy the Siege Weapons!
.target Ling of the Six Pools
step
.isOnQuest 31201
.goto 388,49.01,71.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r or |cRXP_FRIENDLY_Ling of the Six Pools|r
.dailyturnin 31201 >>Turn in Friends, Not Food!
.target Ling of the Six Pools
step
.isOnQuest 31198
.goto 388,49.01,71.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r or |cRXP_FRIENDLY_Ling of the Six Pools|r
.dailyturnin 31198 >>Turn in A Morale Victory
.target Ling of the Six Pools
step
#label LingTurnin
.isQuestTurnedIn 31201,31199,31197,31196,31198
.goto 388,49.01,71.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r or |cRXP_FRIENDLY_Ling of the Six Pools|r
.daily 31204,31203 >>Accept Target of Opportunity
.target Ling of the Six Pools
step
.isOnQuest 31203
.goto 388,16.36,40.88
>>Kill |cRXP_ENEMY_Sra'thik Swarmlord|r
.complete 31203,1 
.mob Sra'thik Swarmlord
step
.isOnQuest 31204
#completewith next
#title Enter Chamber
.goto 388,27.10,44.07,10 >>Enter Chamber
step
.isOnQuest 31204
.goto 388,27.10,44.07,0
.goto 388,24.33,43.99
>>Kill |cRXP_ENEMY_Sra'thik Hivelord|r
.complete 31204,1 
.mob Sra'thik Hivelord
step
.isOnQuest 31204
#completewith next
#title Leave Chamber
.goto 388,27.10,44.07,10 >>Leave Chamber
step
#completewith ReturnGarrison3
.subzone 6197 >> Return to the Shado-Pan Garrison
step
.isOnQuest 31204
.goto 388,49.01,71.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
.dailyturnin 31204 >>Turn in Target of Opportunity: Sra'thik Hivelord
.target Ling of the Six Pools
step
#label ReturnGarrison3
.isOnQuest 31203
.goto 388,49.01,71.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
.dailyturnin 31203 >>Turn in Target of Opportunity: Sra'thik Swarmlord
.target Ling of the Six Pools
step
.reputation 1270,exalted,<0,1
.goto 388/870,4239.000,1856.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
.target Master Snowdrift
.accept 31266 >>Accept Mogu Incursions
step
.isOnQuest 31266
.goto 388/870,4276.700,2312.300
>>Kill the |cRXP_ENEMY_Shan'ze Spymaster|r
.complete 31266,1 
.mob Shan'ze Spymaster
step
.isOnQuest 31266
.goto 388/870,4238.000,1857.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
.target Master Snowdrift
.turnin 31266 >>Turn in Mogu Incursions
.accept 31277 >>Accept Surprise Attack!
step
.isQuestTurnedIn 31266
.goto 388/870,4238.000,1857.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
.target Master Snowdrift
.accept 31277 >>Accept Surprise Attack!
step
.isOnQuest 31277
#completewith next
.goto 388,42.620,63.922
.gossipoption 129605 >> Talk to |cRXP_FRIENDLY_Ban Bearheart|r to begin the event
>>|cRXP_WARN_If |cRXP_FRIENDLY_Ban Bearheart|r is not there, someone may have already started the event. Move into Niuzao Temple to join|r
.target Ban Bearheart
step
.isOnQuest 31277
.goto 388,40.869,60.323
>>Kill the attacking |cRXP_ENEMY_Mogu|r and |cRXP_ENEMY_Hei Feng|r once he lands
.complete 31277,1 
.complete 31277,2 
.mob Hei Feng
step
.isOnQuest 31277
.goto 388/870,4254.900,1837.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.target Ban Bearheart
.turnin 31277 >>Turn in Surprise Attack!
step
+|cRXP_WARN_You have completed all available daily quests for Shado-Pan today. Load the same guide again tomorrow once the daily quests have reset to complete more daily quests|r
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP-Pandaria
#name 1-The Anglers
#internal
step
#completewith DailyPickups
.subzone 6106 >>Travel to Anglers Wharf
step
.dailyreset Anglers
#label DailyPickups
#loop
.goto 418/870,-244.000,-1474.000,0
.goto 418/870,-255.100,-1469.900,10,0
.goto 418/870,-215.400,-1503.500,10,0
.goto 418/870,-236.300,-1523.900,10,0
.goto 418/870,-202.400,-1396.300,10,0
.goto 418/870,-218.600,-1469.900,10,0
.goto 418/870,-255.900,-1425.400,10,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John "Big Hook" Marsock|r, |cRXP_FRIENDLY_Fiznix|r, |cRXP_FRIENDLY_Fisherman Haito|r, |cRXP_FRIENDLY_Fo Fook|r, |cRXP_FRIENDLY_Angler Shen|r and |cRXP_FRIENDLY_Elder Fisherman Rassan|r
.daily 30753,30678,30586,30658,30701,30763,30700,30585,30754,30588,30698,30613,30598,30584 >>Accept all of the available daily quests
.disablecheckbox
.questcount <3 30753,30678,30586,30658,30701,30763,30700,30585,30754,30588,30698,30613,30598,30584
.target John "Big Hook" Marsock
.target Fiznix
.target Fisherman Haito
.target Fo Fook
.target Angler Shen
.target Elder Fisherman Rassan
step
.isOnQuest 30753
.goto 418/870,-258.700,-1457.500
.vehicle 60408 >>Mount the |cRXP_FRIENDLY_Frenzied Reef Shark|r
>>|cRXP_WARN_Abandon and re-accept the quest if the |cRXP_FRIENDLY_Frenzied Reef Shark|r is not there|r
.target Frenzied Reef Shark
step
.isOnQuest 30753
>>|cRXP_WARN_Use|r |T132298:0|t[Shark Jab] |cRXP_WARN_and|r |T132284:0|t[Eye Gouge] |cRXP_WARN_to deal damage|r
>>|cRXP_WARN_Use|r |T133816:0|t[Hold Tight] |cRXP_WARN_when the |cRXP_FRIENDLY_Frenzied Reef Shark|r tries to throw you off|r
.complete 30753,1 
.target Frenzied Reef Shark
step
.isOnQuest 30586
#loop
.goto 418/870,-416.300,-1346.500,0
.goto 418/870,-416.300,-1346.500,40,0
.goto 418/870,-394.700,-1290.800,40,0
.goto 418/870,-360.900,-1245.300,40,0
.goto 418/870,-292.200,-1287.600,40,0
.goto 418/870,-306.300,-1378.700,40,0
.goto 418/870,-392.000,-1373.700,40,0
>>Loot the |cRXP_PICK_Giant Clams|r on the ledges of the trench underwater for |cRXP_LOOT_Jagged Abalone Meat|r
.complete 30586,1 
step
#completewith next
.goto 418/870,-425.300,-1308.300,40 >>|cRXP_WARN_Enter the underwater cave|r
step
.isOnQuest 30700
.goto 418/870,-511.000,-1308.800
>>Kill |cRXP_ENEMY_Snapclaw|r. Loot him for his |cRXP_LOOT_Claw|r
.complete 30700,1 
.mob Snapclaw
step
.isOnQuest 30588
#loop
.goto 418/870,10.600,-1377.000,0
.goto 418/870,10.600,-1377.000,40,0
.goto 418/870,91.400,-1368.900,40,0
>>Kill |cRXP_ENEMY_Riverblade Raiders|r
.complete 30588,1 
.mob Riverblade Raider
step
.isOnQuest 30754
#loop
.goto 418/870,28.800,-1246.600,0
.goto 418/870,28.800,-1246.600,50,0
.goto 418/870,-56.200,-1207.500,50,0
.goto 418/870,-163.900,-1174.100,50,0
.goto 418/870,-85.600,-1086.900,50,0
.goto 418/870,91.300,-1176.600,50,0
.goto 418/870,176.500,-1240.400,50,0
.goto 418/870,141.900,-1310.900,50,0
.goto 418/870,46.300,-1287.300,50,0
>>Loot the |cRXP_LOOT_Suncrawlers|r on the ground at the bottom of the trees
.complete 30754,1 
step
.isOnQuest 30584
.goto 418/870,28.700,-1112.200
>>Use |T136245:0|t[Fishing] to obtain |T350650:0|t[|cRXP_LOOT_Wolf Piranha|r] anywhere in the Dojani River
.complete 30584,1 
step
.isOnQuest 30698
.goto 418/870,-214.700,-1508.300
.aura 116032 >>Click on the |cRXP_PICK_Goblin Fishing Rafte|r
step
.isOnQuest 30698
#loop
.goto 418/870,-99.500,-1691.900,0
.goto 418/870,218.800,-1800.900,0
.goto 418/870,-99.500,-1691.900,30,0
.goto 418/870,-22.400,-1683.900,30,0
.goto 418/870,218.800,-1800.900,30,0
.goto 418/870,286.300,-1852.600,30,0
>>|cRXP_WARN_Use|r |T136245:0|t[Fishing]|cRXP_WARN_. Aim it towards the|r |cRXP_PICK_Shipwreck Debris|r |cRXP_WARN_in the water. Loot it for|r |cRXP_LOOT_Rusty Shipwreck Debris|r
>>|cRXP_WARN_You can move faster through the water while|r |T534592:0|t[Rafting] |cRXP_WARN_by jumping|r
.complete 30698,1 
.aura -116032
step
.isOnQuest 30698
#optional
#loop
.goto 418/870,-99.500,-1691.900,0
.goto 418/870,218.800,-1800.900,0
.goto 418/870,-99.500,-1691.900,30,0
.goto 418/870,-22.400,-1683.900,30,0
.goto 418/870,218.800,-1800.900,30,0
.goto 418/870,286.300,-1852.600,30,0
>>|cRXP_WARN_Use|r |T136245:0|t[Fishing]|cRXP_WARN_. Aim it towards the|r |cRXP_PICK_Shipwreck Debris|r |cRXP_WARN_in the water. Loot it for|r |cRXP_LOOT_Rusty Shipwreck Debris|r
.complete 30698,1 
.aura 116032
step
.isOnQuest 30701
#loop
.goto 418/870,116.000,-1380.800,0
.goto 418/870,350.800,-1499.300,0
.goto 418/870,514.700,-1590.100,0
.goto 418/870,696.200,-1756.700,0
.goto 418/870,301.700,-1675.000,0
.goto 418/870,116.000,-1380.800,50,0
.goto 418/870,350.800,-1499.300,50,0
.goto 418/870,514.700,-1590.100,50,0
.goto 418/870,696.200,-1756.700,50,0
.goto 418/870,301.700,-1675.000,50,0
>>Kill |cRXP_ENEMY_Viseclaw Fry|r, |cRXP_ENEMY_Viseclaw Scuttlers|r and |cRXP_ENEMY_Viseclaw Fishers|r. Loot them for their |cRXP_LOOT_Eyes|r
>>|cRXP_WARN_They can be found along the coast on the beach. Avoid the|r |cRXP_ENEMY_Elder Viseclaws|r |cRXP_WARN_as they are elite and difficult to kill|r
.complete 30701,1 
.mob Kill Viseclaw Fry
.mob Viseclaw Scuttler
.mob Viseclaw Fisher
step
.isOnQuest 30678
#loop
.goto 418/870,180.300,-1671.500,0
.goto 418/870,72.800,-1633.300,30,0
.goto 418/870,131.100,-1584.600,30,0
.goto 418/870,180.300,-1671.500,30,0
.goto 418/870,238.500,-1709.800,30,0
.use 80599 >>|cRXP_WARN_Aim the|r |T463515:0|t[Goblin Fishing Bomb] |cRXP_WARN_on |cRXP_ENEMY_Sting Rays|r in the water. Loot them for their|r |cRXP_LOOT_Stingers|r
.complete 30678,1 
.mob Sting Ray
step
.isOnQuest 30658
#loop
.goto 418/870,575.900,-2005.900,0
.goto 418/870,575.900,-2005.900,60,0
.goto 418/870,618.700,-2024.100,60,0
.goto 418/870,476.400,-2101.400,60,0
.use 80403 >>|cRXP_WARN_Aim the|r |T643285:0|t[Angler's Fishing Spear] |cRXP_WARN_on |cRXP_ENEMY_Prickly Puffers|r in the water|r
>>Loot them for their |cRXP_LOOT_Spines|r
.complete 30658,1 
.mob Prickly Puffer
step
.isOnQuest 30763
.goto 418/870,921.700,-1534.400
>>Use |T136245:0|t[Fishing] to obtain |T350650:0|t[|cRXP_LOOT_Wolf Piranha|r] anywhere in the Krasarang River
>>|cRXP_WARN_The higher your|r |T136245:0|t[Fishing]|cRXP_WARN_, the more frequently you'll catch|r |T350650:0|t[|cRXP_LOOT_Wolf Piranha|r]
.complete 30763,1 
step
.isOnQuest 30585
.goto 418/870,1334.700,-1091.800
>>|cRXP_WARN_Use|r |T136245:0|t[Fishing] |cRXP_WARN_in the "Mysterious Whirlpool"|r
>>Kill |cRXP_ENEMY_Narjon the Gulper|r as he spawns. Loot him for the |cRXP_LOOT_Beloved Ring|r
.complete 30585,1 
.complete 30585,2 
.mob Narjon the Gulper
step
.isOnQuest 30613
#loop
.goto 418/870,-276.700,-1633.300,0
.goto 418/870,-276.700,-1633.300,50,0
.goto 418/870,-269.200,-1707.600,50,0
.goto 418/870,-336.000,-1707.400,50,0
.goto 418/870,-170.100,-1699.500,50,0
.use 80403 >>|cRXP_WARN_Aim the|r |T643285:0|t[Angler's Fishing Spear] |cRXP_WARN_at |cRXP_ENEMY_Armored Carps|r in the water|r
>>Loot them for |cRXP_LOOT_Armored Carp|r
.complete 30613,1 
.mob Armored Carp
step
.isOnQuest 30598
.goto 418/870,-109.400,-1616.600
>>Loot a |T132834:0|t[|cRXP_LOOT_Pristine Crane Egg|r] on the ground on top of the hill
.complete 30598,1 
step
.isOnQuest 30598
.goto 418/870,-232.900,-1480.000
.use 80303 >>|cRXP_WARN_Throw the|r |T132834:0|t[|cRXP_LOOT_Pristine Crane Egg|r] |cRXP_WARN_in the water at the docks|r
>>Use |T136245:0|t[Fishing] to fish in the green "Fishing Bobber" that appears in the water to obtain the |cRXP_LOOT_Silver Goby|r
.complete 30598,2 
step
#completewith DailyTurnins
.subzone 6106 >>Return to Anglers Wharf
step
.isQuestComplete 30753
.goto 418/870,-255.100,-1469.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John "Big Hook" Marsock|r
.dailyturnin 30753 >>Turn in Jumping the Shark
.target John "Big Hook" Marsock
step
.isQuestComplete 30754
.goto 418/870,-255.000,-1469.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John "Big Hook" Marsock|r
.target John "Big Hook" Marsock
.dailyturnin 30754 >>Turn in Bright Bait
step
.isQuestComplete 30586
.goto 418/870,-236.300,-1523.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fisherman Haito|r
.dailyturnin 30586 >>Turn in Jagged Abalone
.target Fisherman Haito
step
.isQuestComplete 30584
.goto 418/870,-236.000,-1524.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fisherman Haito|r
.turnin 30584 >>Turn in Shocking!
.target Fisherman Haito
step
.isQuestComplete 30678
.goto 418/870,-215.400,-1503.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiznix|r
.dailyturnin 30678 >>Turn in Like Bombing Fish In A Barrel
.target Fiznix
step
.isQuestComplete 30698
.goto 418/870,-215.300,-1503.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiznix|r
.dailyturnin 30698 >>Turn in Scavenger Hunt
.target Fiznix
step
.isQuestComplete 30700
.goto 418/870,-218.600,-1469.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angler Shen|r
.dailyturnin 30700 >>Turn in Snapclaw
.target Angler Shen
step
.isQuestComplete 30588
.goto 418/870,-218.600,-1469.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angler Shen|r
.dailyturnin 30588 >>Turn in Fishing for a Bruising
.target Angler Shen
step
.isQuestComplete 30658
.goto 418/870,-221.800,-1438.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trawler Yotimo|r
.dailyturnin 30658 >>Turn in Huff & Puff
.target Trawler Yotimo
step
.isQuestComplete 30613
.goto 418/870,-222.000,-1438.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trawler Yotimo|r
.dailyturnin 30613 >>Turn in Armored Carp
.target Trawler Yotimo
step
.isQuestComplete 30701
.goto 418/870,-202.400,-1396.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fo Fook|r
.dailyturnin 30701 >>Turn in Viseclaw Soup
.target Fo Fook
step
.isQuestComplete 30763
.goto 418/870,-202.200,-1396.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fo Fook|r
.dailyturnin 30763 >>Turn in Piranha!
.target Fo Fook
step
.isQuestComplete 30585
.goto 418/870,-256.000,-1425.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Fisherman Rassan|r
.dailyturnin 30585 >>Turn in What Lurks Below
.target Elder Fisherman Rassan
step
.isQuestComplete 30598
.goto 418/870,-255.600,-1425.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Fisherman Rassan|r
.dailyturnin 30598 >>Turn in Who Knew Fish Liked Eggs?
.target Elder Fisherman Rassan
step
#optional
#label DailyTurnins
step
+|cRXP_WARN_You have completed all available daily quests for The Anglers today. Load the same guide again tomorrow once the daily quests have reset to complete more daily quests|r
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP-Pandaria
#name 1-Tillers
#internal
step
#completewith AcceptDaily
.zone 376 >> Travel to Valley of the Four Winds
step
.goto 376/870,637.500,-160.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.accept 30252 >>Accept A Helping Hand
step
#loop
.goto 376,51.70,49.34,10,0
.goto 376,52.68,49.68,10,0
.goto 376,52.21,47.66,10,0
>>Click the |cRXP_PICK_Unbudging Rocks|r on the ground
.complete 30252,1 
.target Unbudging Rock
step
.goto 376/870,608.800,-158.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.turnin 30252 >>Turn in A Helping Hand
.accept 30535 >>Accept Learn and Grow I: Seeds
.disablecheckbox
step
.goto 376/870,628.200,-180.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.accept 30535 >>Accept Learn and Grow I: Seeds
step
.goto 376,52.884,52.135
>>Talk to |cRXP_FRIENDLY_Merchant Greenfield|r
.complete 30535,1 
.skipgossip
.target Merchant Greenfield
step
.goto 376/870,628.400,-180.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.turnin 30535 >>Turn in Learn and Grow I: Seeds
.accept 30254 >>Accept Learn and Grow II: Tilling and Planting
step
.goto 376,52.01,48.33
>>Click the |cRXP_PICK_Untilled Soil|r
.use 80302 >>|cRXP_WARN_Use the|r |T464030:0|t[EZ-Gro Green Cabbage Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
.complete 30254,1 
.complete 30254,2 
step
.goto 376/870,628.200,-180.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.turnin 30254 >>Turn in Learn and Grow II: Tilling and Planting
.accept 30255 >>Accept Learn and Grow III: Tending Crops
step
.goto 376,52.01,48.33
.use 79104 >> |cRXP_WARN_Use the|r |T607527:0|t[Rusty Watering Can] |cRXP_WARN_on the|r |cRXP_PICK_Parched EZ-Gro Green Cabbage|r
>>|cRXP_WARN_You need to be facing the|r |cRXP_PICK_Parched EZ-Gro Green Cabbage|r
.complete 30255,1 
step
.goto 376/870,628.200,-180.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.turnin 30255 >>Turn in Learn and Grow III: Tending Crops
.accept 30256 >>Accept Learn and Grow IV: Harvesting
step
.goto 376,52.01,48.33
>>Loot the |cRXP_PICK_Ripe EZ-Gro Green Cabbage|r
.complete 30256,1 
step
.goto 376/870,628.200,-180.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.turnin 30256 >>Turn in Learn and Grow IV: Harvesting
.accept 30257 >>Accept Learn and Grow V: Halfhill Market
step
.goto 376,52.825,47.986
>>Loot the |cRXP_PICK_Dark Soil|r under the hut for the |cRXP_LOOT_Marsh Lily|r
.complete 30257,1 
step
.goto 376/870,592.500,-259.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Mudclaw|r
.target Gina Mudclaw
.turnin 30257 >>Turn in Learn and Grow V: Halfhill Market
.accept 31945 >>Accept Learn and Grow VI: Gina's Vote
step
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656448:0|t[Scallion Seeds]
.collect 80591,1,31945,1 
.target Merchant Greenfield
step
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 80591 >>|cRXP_WARN_Use the|r |T656448:0|t[Scallion Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
.complete 31945,1 
step
.isOnQuest 31945
.goto 376/870,637.900,-171.500
+|cRXP_WARN_If you are unable to instantly harvest your crop, skip this step and check back for them tomorrow!|r
step
.isQuestComplete 31945
.goto 376/870,592.500,-259.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Mudclaw|r
.target Gina Mudclaw
.turnin 31945 >>Turn in Learn and Grow VI: Gina's Vote
step
.isQuestAvailable 31945
#loop
.goto 376/870,628.300,-180.900,8,0
.goto 376/870,608.400,-224.200,8,0
.goto 376/870,603.000,-256.700,8,0
.goto 376/870,597.300,-257.600,8,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r, |cRXP_FRIENDLY_Andi|r, |cRXP_FRIENDLY_Farmer Fung|r, |cRXP_FRIENDLY_Ella|r,|cRXP_FRIENDLY_Fish Fellreed|r, |cRXP_FRIENDLY_Sho|r, |cRXP_FRIENDLY_Gina Mudclaw|r, |cRXP_FRIENDLY_Chee Chee|r, |cRXP_FRIENDLY_Old Hillpaw|r and |cRXP_FRIENDLY_Jogu the Drunk|r
.daily 30336,30474,30317,30327,31943,30333,30479,30322,30323,31672,31942,31673,31941,31670,31669,31674,31675,31671,30475,30321,30337,30478,30326,30477,30319,30335,30472,30325,30471,30324,30334,30470,30473,30318,30476 >> Accept the randomly daily quests
.disablecheckbox
.target Farmer Yoon
.target Andi
.target Farmer Fung
.target Ella
.target Jogu the Drunk
.target Fish Felreed
.target Sho
.target Gina Mudclaw
.target Chee Chee
.target Old Hillpaw
.questcount <4,30336,30474,30317,30327,31943,30333,30479,30322,30323,31672,31942,31673,31941,31670,31669,31674,31675,31671,30475,30321,30337,30478,30326,30477,30319,30335,30472,30325,30471,30324,30334,30470,30473,30318,30476
step
.isQuestTurnedIn 31945
#label AcceptDaily
#loop
.goto 376/870,628.300,-180.900,8,0
.goto 376/870,608.400,-224.200,8,0
.goto 376/870,603.000,-256.700,8,0
.goto 376/870,597.300,-257.600,8,0
.goto 376/870,576.700,-279.700,8,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r, |cRXP_FRIENDLY_Andi|r, |cRXP_FRIENDLY_Farmer Fung|r, |cRXP_FRIENDLY_Ella|r,|cRXP_FRIENDLY_Fish Fellreed|r, |cRXP_FRIENDLY_Sho|r, |cRXP_FRIENDLY_Gina Mudclaw|r, |cRXP_FRIENDLY_Chee Chee|r, |cRXP_FRIENDLY_Old Hillpaw|r and |cRXP_FRIENDLY_Jogu the Drunk|r
.daily 30336,30474,30317,30327,31943,30333,30479,30322,30323,31672,31942,31673,31941,31670,31669,31674,31675,31671,30475,30321,30337,30478,30326,30477,30319,30335,30472,30325,30471,30324,30334,30470,30473,30318,30476 >> Accept the randomly daily quests
.disablecheckbox
.target Farmer Yoon
.target Andi
.target Farmer Fung
.target Ella
.target Jogu the Drunk
.target Fish Felreed
.target Sho
.target Gina Mudclaw
.target Chee Chee
.target Old Hillpaw
.questcount <5,30336,30474,30317,30327,31943,30333,30479,30322,30323,31672,31942,31673,31941,31670,31669,31674,31675,31671,30475,30321,30337,30478,30326,30477,30319,30335,30472,30325,30471,30324,30334,30470,30473,30318,30476
step
.isOnQuest 31669
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656444:0|t[Green Cabbage Seeds]
.collect 79102,1
.target Merchant Greenfield
step
.isOnQuest 31670
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656446:0|t[Juicycrunch Carrot Seeds]
.collect 80590,1
.target Merchant Greenfield
step
.isOnQuest 31672
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656443:0|t[Mogu Pumpkin Seeds]
.collect 80592,1
.target Merchant Greenfield
step
.isOnQuest 31671
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656448:0|t[Scallion Seeds]
.collect 80591,1
.target Merchant Greenfield
step
.isOnQuest 31673
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656682:0|t[Red Blossom Leek Seeds]
.collect 80593,1
.target Merchant Greenfield
step
.isOnQuest 31674
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656681:0|t[Pink Turnip Seeds]
.collect 80594,1
.target Merchant Greenfield
step
.isOnQuest 31675
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656683:0|t[White Turnip Seeds]
.collect 80595,1
.target Merchant Greenfield
step
.isOnQuest 31941
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656680:0|t[Jade Squash Seeds]
.collect 89328,1
.target Merchant Greenfield
step
.isOnQuest 31943
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656679:0|t[Witchberry Seeds]
.collect 89326,1
.target Merchant Greenfield
step
.isOnQuest 31942
.goto 376,52.884,52.135
>>|cRXP_BUY_Talk to |cRXP_FRIENDLY_Merchant Greenfield|r and buy|r |T656445:0|t[Striped Melon Seeds]
.collect 89329,1
.target Merchant Greenfield
step 
.isQuestTurnedIn 31302
#loop
.goto 376/870,583.200,-254.500,5,0
.goto 376/870,611.300,-264.600,5,0
.goto 376/870,617.000,-258.300,5,0
.goto 376/870,613.700,-251.000,5,0
.goto 376/870,599.800,-247.000,5,0
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthea Ironpaw|r, |cRXP_FRIENDLY_Yan Ironpaw|r, |cRXP_FRIENDLY_Kol Ironpaw|r, |cRXP_FRIENDLY_Mei Mei Ironpaw|r or |cRXP_FRIENDLY_Jian Ironpaw|r
.daily 30329,30332,30331,30330,30328 >> Accept the randomly daily cooking quest
.disablecheckbox
.questcount <1,30329,30332,30331,30330,30328
step
.isOnQuest 31672
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 80592 >>|cRXP_WARN_Use the|r |T656443:0|t[Mogu Pumpkin Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31672,1 
step
.isOnQuest 31942
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 89329 >>|cRXP_WARN_Use the|r |T656445:0|t[Striped Melon Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31942,1 
step
.isOnQuest 31673
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 80593 >>|cRXP_WARN_Use the|r |T656682:0|t[Red Blossom Leek Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31673,1 
step
.isOnQuest 31941
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 89328 >>|cRXP_WARN_Use the|r |T656680:0|t[Jade Squash Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31941,1 
step
.isOnQuest 31670
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 80590 >>|cRXP_WARN_Use the|r |T656446:0|t[Juicycrunch Carrot Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31670,1 
step
.isOnQuest 31669
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 79102 >>|cRXP_WARN_Use the|r |T656444:0|t[Green Cabbage Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31669,1 
step
.isOnQuest 31674
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 80594 >>|cRXP_WARN_Use the|r |T656681:0|t[Pink Turnip Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31674,1 
step
.isOnQuest 31675
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 80595 >>|cRXP_WARN_Use the|r |T656683:0|t[White Turnip Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31675,1 
step
.isOnQuest 31943
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 89326 >>|cRXP_WARN_Use the|r |T656679:0|t[Witchberry Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31943,1 
step
.isOnQuest 31671
.goto 376/870,637.900,-171.500
>>Click the |cRXP_PICK_Untilted Soil|r
.use 80591 >>|cRXP_WARN_Use the|r |T656448:0|t[Scallion Seeds] |cRXP_WARN_on the|r |cRXP_PICK_Tilled Soil|r
>>|cRXP_WARN_NOTE: Remember to always check your crop after planting to make sure weeds/vermin are cleared!|r
>>|cRXP_WARN_If all of your |cRXP_PICK_Plots|r are full, you can use the|r |T134435:0|t[Dented Shovel] |cRXP_WARN_to remove a growing crop|r
.complete 31671,1 
step
.isOnQuest 31672,31942,31673,31941,31670,31669,31674,31675,31943,31671
.goto 376/870,628.300,-180.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.dailyturnin 31672,31942,31673,31941,31670,31669,31674,31675,31943,31671 >>Turn in the random daily quest
step
.isOnQuest 30478
>>Loot |cRXP_LOOT_Yoon's Apples|r and |cRXP_LOOT_Yoon's Cranberries|r inside of the hut
.collect 80234,8
.goto 376,52.635,47.794,-1
.collect 80235,50
.goto 376,52.816,47.840,-1
step
.isOnQuest 30322
.goto 376,55.593,52.076
>>Talk to |cRXP_FRIENDLY_Lolo Lio|r
.complete 30322,4 
.skipgossip
.target Lolo Lio
step
.isOnQuest 30322
.goto 376,55.126,50.489
>>Talk to |cRXP_FRIENDLY_Innkeeper Lei Lan|r
>>|cRXP_FRIENDLY_Innkeeper Lei Lan|r |cRXP_WARN_patrols slightly|r
.complete 30322,3 
.skipgossip
.target Innkeeper Lei Lan
step
.isOnQuest 30322
#loop
.goto 376,55.87,49.63,10,0
.goto 376,55.303,47.966,15,0
.goto 376,56.32,47.13,10,0
>>Talk to |cRXP_FRIENDLY_Trader Jambeezi|r
>>|cRXP_FRIENDLY_Trader Jambeezi|r |cRXP_WARN_patrols throughout Halfhill|r
.complete 30322,2 
.skipgossip
.target Trader Jambeezi
step
.isOnQuest 30322
.goto 376,56.679,47.130
>>Talk to |cRXP_FRIENDLY_Spicemaster Jin Jao|r inside the hut
.complete 30322,1 
.skipgossip
.target Spicemaster Jin Jao
step
.isOnQuest 30317
.goto 376,56.495,50.361
.gossipoption 129485 >>Talk to |cRXP_FRIENDLY_Wing Nga|r
.skipgossipid 129485
.target Wing Nga
step
.isOnQuest 30317
>>|cRXP_WARN_Cast|r |T132806:0|t[Water Bucket] (1) |cRXP_WARN_on the |cRXP_PICK_Dusty Spots|r that are highlighted in a yellow circle|r
.complete 30317,1 
step
.isOnQuest 30321
.goto 376,38.585,51.725
>>Talk to |cRXP_FRIENDLY_Gai Lan|r to begin the event
>>Click the |cRXP_PICK_Weeds|r on the farm
>>|cRXP_WARN_You can complete this while on your mount|r
.complete 30321,1 
.skipgossip
.target Gai Lan
step
.isOnQuest 30319
.goto 376,39.638,45.393
.gossipoption 126006 >>Talk to |cRXP_FRIENDLY_Wika-Wika|r to begin the stomping
.skipgossipid 126006
.target Wika-Wika
step
.isOnQuest 30319
.goto 376,39.638,45.393
>>Click on the |cRXP_ENEMY_Black-Nose Marmots|r around |cRXP_FRIENDLY_Wika-Wika|r
.complete 30319,1 
.mob Black-Nose Marmot
step
.isOnQuest 30475
#sticky
#label PlainshawkLeg
#loop
.goto 376,45.87,49.04,60,0
.goto 376,41.67,43.03,60,0
.goto 376,37.14,36.92,60,0
>>Kill |cRXP_ENEMY_Monstrous Plainshawks|r. Loot them for a |cRXP_LOOT_Bloody Plainshawk Leg|r
.collect 80232,1
.mob Monstrous Plainshawk
step
.isOnQuest 30479
#loop
.goto 376,45.7,49.5,40,0
.goto 376,41.9,43.0,40,0
.goto 376,36.8,36.1,40,0
>>Loot the |cRXP_PICK_Goldenfire Orchid|r on the ground
>>|cRXP_WARN_This looks like a golden flower and can spawn in a number of different locations|r
.complete 30479,1 
step
.isOnQuest 30318
#loop
.goto 376/870,1367.000,-252.200,25,0
.goto 376/870,1425.000,-305.600,25,0
.goto 376/870,1483.000,-251.400,25,0
.goto 376/870,1381.700,-201.200,25,0
>>Pick up the |cRXP_FRIENDLY_Hillpaw's Chicken|r until you find the correct one
>>|cRXP_WARN_Use the Extra Action Button to get rid of |cRXP_FRIENDLY_Hillpaw's Chicken|r if it is the incorrect one|r
.complete 30318,1
.target Hillpaw's Chicken
step
.isOnQuest 30330
#sticky
#label ShadelightTruffle
#loop
.waypoint 376,29.73,41.23,50,0
.waypoint 376,31.62,31.14,50,0
.waypoint 376,27.66,33.06,50,0
.use 80127>>|cRXP_WARN_Use the|r |T133626:0|t[Shadelight Truffle Spores] |cRXP_WARN_anywhere along the Skyrange|r
>>Loot the |cRXP_PICK_Shadelight Truffles|r on the ground
.complete 30330,1 
.complete 30330,2 
step
.isOnQuest 30329
#sticky
#label CindergutPeppers
#loop
.waypoint 376,30.55,28.2,50,0
.waypoint 376,34.06,23.24,50,0
.waypoint 376,29.42,34.46,50,0
>>Kill |cRXP_ENEMY_Kunzen Hozens|r. Loot them for their |cRXP_LOOT_Cindergut Peppers|r
.complete 30329,1 
.mob Kunzen Ritualist
.mob Kunzen Ravager
.mob Kunzen Collector
.mob Kunzen Hunter
.mob Kunzen Rockflinger
.mob Kunzen Herdskeeper
step
.isOnQuest 30335
#sticky
#label Kunzenhozen
#loop
.waypoint 376,30.55,28.2,50,0
.waypoint 376,34.06,23.24,50,0
.waypoint 376,29.42,34.46,50,0
>>Kill |cRXP_ENEMY_Kunzen Hozens|r
.complete 30335,1 
.mob Kunzen Ritualist
.mob Kunzen Ravager
.mob Kunzen Collector
.mob Kunzen Hunter
.mob Kunzen Rockflinger
.mob Kunzen Herdskeeper
step
.isOnQuest 30324
#sticky
#label CheeHozen
#loop
.waypoint 376,30.55,28.2,50,0
.waypoint 376,34.06,23.24,50,0
.waypoint 376,29.42,34.46,50,0
>>Kill |cRXP_ENEMY_Kunzen Hozens|r
.complete 30324,1 
.mob Kunzen Ritualist
.mob Kunzen Ravager
.mob Kunzen Collector
.mob Kunzen Hunter
.mob Kunzen Rockflinger
.mob Kunzen Herdskeeper
step
.isOnQuest 30334
#sticky
#label StolenVegetable
#loop
.waypoint 376,30.55,28.2,50,0
.waypoint 376,34.06,23.24,50,0
.waypoint 376,29.42,34.46,50,0
>>Loot the |cRXP_PICK_Stolen Vegetables|r on the ground
.complete 30334,1 
step
.isOnQuest 30471
#sticky
#label StirFry
#loop
.waypoint 376,30.55,28.2,50,0
.waypoint 376,34.06,23.24,50,0
.waypoint 376,29.42,34.46,50,0
>>Loot the |cRXP_PICK_Authentic Valley Stir Fry|r on the outside edge of a building
>>|cRXP_WARN_Turn off enemy nameplates to make spotting this easier|r
.complete 30471,1 
step
.isOnQuest 30472
#sticky
#label SoupCauldron
.waypoint 376/870,1512.400,192.300
>>Loot the |cRXP_PICK_Yu-Ping Soup Cauldron|r
.complete 30472,1 
step
.isOnQuest 30325
#sticky
#label Rituals
#loop
.waypoint 376,29.59,33.67,15,0
.waypoint 376,29.59,35.23,15,0
>>Kill a |cRXP_ENEMY_Kunzen Ritualist|r
>>Click the |cRXP_PICK_Kunzen Ritual Candles|r and |cRXP_PICK_Blazing Embers|r on the ground
.complete 30325,3 
.mob +Kunzen Ritualist
.complete 30325,1 
.complete 30325,2 
step
.isOnQuest 30326
#sticky
#label LegendChief
.waypoint 376/870,1442.600,344.300
>>Kill the |cRXP_ENEMY_Kunzen Legend-Chief|r. Loot it for the |cRXP_LOOT_Kunzen Legend-Book|r
.complete 30326,1 
.mob Yammo
.mob Buk-Buk
.mob Lor-Lor
.mob Bimba
.mob Rit-Rit
step
.isOnQuest 30337
#sticky
#label Fireworks
.use 79885 >>|cRXP_WARN_Use the|r |T135266:0|t[Barrel of Fireworks] |cRXP_WARN_at the specific locations throughout the village|r
.complete 30337,2 
.waypoint 376/870,1394.200,296.800,-1
.complete 30337,1 
.waypoint 376/870,1485.200,359.800,-1
.complete 30337,3 
.waypoint 376/870,1418.100,414.100,-1
.complete 30337,4 
.waypoint 376/870,1307.300,521.400,-1
step
.isOnQuest 30336
#sticky
#label HunterChief
.waypoint 376/870,1478.700,-149.500
>>Kill the |cRXP_ENEMY_Kunzen Hunter-Chief|r
>>|cRXP_WARN_Be careful of their knockback ability|r
.complete 30336,1 
.mob Jokka-Jokka
.mob Jim-Jim
.mob Teeku
.mob Kon-Kon
.mob Maaka
step
.isOnQuest 30474
#sticky
#label Dumpling
#loop
.waypoint 376,30.55,28.2,50,0
.waypoint 376,34.06,23.24,50,0
.waypoint 376,29.42,34.46,50,0
>>Kill the |cRXP_ENEMY_Kunzen|r. Loot them for the |cRXP_LOOT_Spicy Shrimp Dumplings|r
.complete 30474,1 
.mob Kunzen Ritualist
.mob Kunzen Ravager
.mob Kunzen Collector
.mob Kunzen Hunter
.mob Kunzen Rockflinger
.mob Kunzen Herdskeeper
step
.isOnQuest 30473
#sticky
#label YakStatuette
#loop
.waypoint 376,30.55,28.2,50,0
.waypoint 376,34.06,23.24,50,0
.waypoint 376,29.42,34.46,50,0
>>Loot the |cRXP_PICK_Yak Statuette|r in the doorway of any of the Huts in Kunzen Village
>>|cRXP_WARN_You can do this while remaining on your flying mount|r
.complete 30473,1 
.target Yak Statuette
step
.isOnQuest 30327
#sticky
#label KunzenRope
#loop
.waypoint 376,30.94,43.99,45,0
.waypoint 376,32.07,36.76,45,0
.waypoint 376,33.16,34.59,45,0
>>Click the |cRXP_PICK_Kunzen Ropes|r on the edge of the mountain
.complete 30327,1 
step
.isOnQuest 30332
#sticky
#label FattyGoatsteak
#loop
.waypoint 376,30.4,46.8,70,0
.waypoint 376,31.6,32.8,70,0
.waypoint 376,27.6,32.6,45,0
>>Kill |cRXP_ENEMY_Stout Shaghorns|r. Loot them for their |cRXP_LOOT_Fatty Goatsteak|r
.complete 30332,1 
.mob Stout Shaghorn
step
.isOnQuest 30331
#sticky
#label MushanTailStew
#loop
.goto 376,32.446,24.000
.use 79895>>|cRXP_WARN_Channel the|r |T461808:0|t[Master's Pot] |cRXP_WARN_at the Kunzen|r |cRXP_PICK_Bonfire|r
.complete 30331,1 
step
#requires YakStatuette
step
#requires StirFry
step
#requires StolenVegetable
step
#requires CheeHozen
step
#requires Kunzenhozen
step
#requires SoupCauldron
step
#requires Rituals
step
#requires PlainshawkLeg
step
#requires KunzenRope
step
#requires HunterChief
step
#requires Dumpling
step
#requires LegendChief
step
#requires Fireworks
step
#requires CindergutPeppers
step
#requires FattyGoatsteak
step
#requires MushanTailStew
step
#requires ShadelightTruffle
step
.isOnQuest 30477
#sticky
#label EnormousGrouper
#loop
.goto 376,41.49,28.28,40,0
.goto 376,45.77,28.12,40,0
>>Kill the |cRXP_ENEMY_Enormous Cattail Grouper|r. Loot it for its |cRXP_LOOT_Tooth|r
.complete 30477,1 
.mob Enormous Cattail Grouper
step
.isOnQuest 30476
#sticky
#label FreshwaterPearl
#loop
.goto 376,40.9,28.1,40,0
.goto 376,41.7,29.9,40,0
.goto 376,44.5,30.2,40,0
.goto 376,46.6,27.4,60,0
>>Loot a |cRXP_PICK_Freshwater Oyster|r for the |cRXP_LOOT_Blue Freshwater Pearl|r
.complete 30476,1 
step
#requires EnormousGrouper
step
#requires FreshwaterPearl
step
#completewith WarrenMother
.goto 376,46.99,20.88,20 >> Enter the small cave on the cliffside
step
.isOnQuest 30328
#sticky
#label PreservedVegetables
#loop
.waypoint 376/870,1167.500,652.900,20,0
.waypoint 376/870,766.400,603.700,20,0
>>Loot the |cRXP_PICK_Preserved Vegetables|r on the ground
.complete 30328,1 
step
.isOnQuest 30470
#loop
#sticky
#label Chrysoberyl
.waypoint 376,39.33,20.14,20
.waypoint 376/870,1167.500,652.900,10,0
.waypoint 376,39.30,16.64,20,0
>>Loot the |cRXP_PICK_Uncut Chrysoberyl|r on the ground
.complete 30470,1 
step
.isOnQuest 30323
#sticky
#label CircletRingBracelet
#loop
.waypoint 376/870,1167.500,652.900,20,0
.waypoint 376/870,766.400,603.700,20,0
>>Kill |cRXP_ENEMY_Springtail Littlewhiskers|r, |cRXP_ENEMY_Springtail Burrowers|r and |cRXP_ENEMY_Springtail Trappers|r. Loot them for the |cRXP_LOOT_Stolen Circlet|r, |cRXP_LOOT_Ransacked Ring|r and |cRXP_LOOT_Burglarized Braclet|r
.complete 30323,1 
.complete 30323,2 
.complete 30323,3 
.mob Springtail Littlewhisker
.mob Springtail Burrower
.mob Springtail Trapper
step
.isOnQuest 30333
#sticky
#label WarrenMother
.goto 376/870,766.400,603.700
>>Kill the |cRXP_ENEMY_Springtail Warren-Mother|r
.complete 30333,1 
.mob Springtail Warren-Mother
step
#requires Chrysoberyl
step
#requires CircletRingBracelet
step
#requires WarrenMother
step
#requires PreservedVegetables
step
.isOnQuest 30475
.goto 376/870,599.900,-247.100
>>Talk to |cRXP_FRIENDLY_Kol Ironpaw|r to receive the |cRXP_LOOT_Grilled Plainshawk Leg|r
.complete 30475,1 
.itemcount 80232,1
.skipgossipid 126045
.target Kol Ironpaw
step
.isOnQuest 30335
.goto 376/870,628.300,-180.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.dailyturnin 30335 >>Turn in Stalling the Ravage
step
.isOnQuest 30336
.goto 376/870,628.300,-180.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.dailyturnin 30336 >>Turn in The Kunzen Hunter-Chief
step
.isOnQuest 30337
.goto 376/870,628.300,-180.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.dailyturnin 30337 >>Turn in Simian Sabotage
step
.isOnQuest 30334
.goto 376/870,628.300,-180.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.dailyturnin 30334 >>Turn in Stealing is Bad... Re-Stealing is OK
step
.isOnQuest 30333
.goto 376/870,628.300,-180.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
.target Farmer Yoon
.dailyturnin 30333 >>Turn in The Lesser of Two Evils
step
.isOnQuest 30317
.goto 376/870,603.000,-256.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Fung|r
.target Farmer Fung
.dailyturnin 30317 >>Turn in Water, Water Everywhere
step
.isOnQuest 30475
.goto 376/870,603.000,-256.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Fung|r
.target Farmer Fung
.dailyturnin 30475 >>Turn in A Gift For Fung
step
.isOnQuest 30477
.goto 376/870,599.600,-257.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haohan Mudclaw|r
.target Haohan Mudclaw
.dailyturnin 30477 >>Turn in A Gift For Haohan
step
.isOnQuest 30319
.goto 376/870,599.600,-257.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haohan Mudclaw|r
.target Haohan Mudclaw
.dailyturnin 30319 >>Turn in Pest Problems
step
.isOnQuest 30470
.goto 376/870,600.300,-259.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tina Mudclaw|r
.target Tina Mudclaw
.dailyturnin 30470 >>Turn in A Gift For Tina
step
.isOnQuest 30323
.goto 376/870,600.300,-259.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tina Mudclaw|r
.target Tina Mudclaw
.dailyturnin 30323 >>Turn in They Don't Even Wear Them
step
.isOnQuest 30327
.goto 376/870,597.300,-257.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ella|r
.target Ella
.dailyturnin 30327 >>Turn in You Have to Burn the Ropes
step
.isOnQuest 30474
.goto 376/870,597.300,-257.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ella|r
.target Ella
.dailyturnin 30474 >>Turn in A Gift For Ella
step
.isOnQuest 30479
.goto 376/870,592.500,-259.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Mudclaw|r
.target Gina Mudclaw
.dailyturnin 30479 >>Turn in A Gift For Gina
step
.isOnQuest 30322
.goto 376/870,592.500,-259.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Mudclaw|r
.target Gina Mudclaw
.dailyturnin 30322 >>Turn in Money Matters
step
.isOnQuest 30318
.goto 376,53.064,51.847
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Hillpaw|r
.target Old Hillpaw
.dailyturnin 30318 >>Turn in Chasing the Chicken
step
.isOnQuest 30476
.goto 376,53.064,51.847
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Hillpaw|r
.target Old Hillpaw
.dailyturnin 30476 >>Turn in A Gift For Old Hillpaw
step
.isOnQuest 30326
.goto 376/870,608.300,-261.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fish Fellreed|r
.target Fish Fellreed
.dailyturnin 30326 >>Turn in The Kunzen Legend-Chief
step
.isOnQuest 30473
.goto 376/870,608.300,-261.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fish Fellreed|r
.target Fish Fellreed
.dailyturnin 30473 >>Turn in A Gift For Fish
step
.isOnQuest 30478
.goto 376/870,592.200,-271.100
>>Talk to |cRXP_FRIENDLY_Bobo Ironpaw|r to receive the |cRXP_LOOT_Apple-Berry Hooch|r
.complete 30478,1 
.skipgossipid 126042
.target Bobo Ironpaw
step
.isOnQuest 30321
.goto 376/870,576.700,-279.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jogu the Drunk|r
.target Jogu the Drunk
.dailyturnin 30321 >>Turn in Weed War II
step
.isOnQuest 30478
.goto 376/870,576.700,-279.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jogu the Drunk|r
.target Jogu the Drunk
.dailyturnin 30478 >>Turn in A Gift For Jogu
step
.isOnQuest 30472
.goto 376/870,593.400,-266.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sho|r
.target Sho
.dailyturnin 30472 >>Turn in A Gift For Sho
step
.isOnQuest 30325
.goto 376/870,593.400,-266.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sho|r
.target Sho
.dailyturnin 30325 >>Turn in Where It Counts
step
.isOnQuest 30471
.goto 376/870,595.100,-267.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chee Chee|r
.target Chee Chee
.dailyturnin 30471 >>Turn in Not in Chee-Chee's Backyard
step
.isOnQuest 30324
.goto 376/870,595.100,-267.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chee Chee|r
.target Chee Chee
.dailyturnin 30324 >>Turn in Not in Chee-Chee's Backyard
step
.isOnQuest 30329
.goto 376/870,611.300,-264.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthea Ironpaw|r
.dailyturnin 30329 >> Turn in Cindergut Peppers
.target Anthea Ironpaw
step
.isOnQuest 30328
.goto 376/870,617.000,-258.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Ironpaw|r
.dailyturnin 30328 >> Turn in The Thousand-Year Dumpling
.target Yan Ironpaw
step
.isOnQuest 30332
.goto 376/870,599.800,-247.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kol Ironpaw|r
.dailyturnin 30332 >> Turn in Fatty Goatsteak
.target Kol Ironpaw
step
.isOnQuest 30331
.goto 376/870,613.700,-251.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Mei Ironpaw|r
.dailyturnin 30331 >> Turn in The Mile-High Grub
.target Mei Mei Ironpaw
step
.isOnQuest 30330
.goto 376/870,583.200,-254.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jian Ironpaw|r
.dailyturnin 30330 >> Turn in The Truffle Shuffle
.target Jian Ironpaw
step
+|cRXP_WARN_You have completed all available daily quests for The Tillers today. Load the same guide again tomorrow once the daily quests have reset to complete more daily quests|r
]]);

RXPGuides.RegisterGuide([[
#version 10
#cata
#mop
#group RestedXP MoP Preparation
#name QuestDB
#internal
step
.setquestdb {[7163]={["repfaction"]=729,["previousQuest"]=7161,["reputation"]="friendly",["xp"]=69400,["appliesTo"]="Horde"},[7164]={["repfaction"]=729,["reputation"]="honored",["xp"]=69400,["appliesTo"]="Horde"},[7165]={["repfaction"]=729,["reputation"]="revered",["xp"]=86750,["appliesTo"]="Horde"},[7166]={["repfaction"]=729,["reputation"]="exalted",["xp"]=104100,["appliesTo"]="Horde"},[7167]={["repfaction"]=729,["reputation"]="exalted",["xp"]=104100,["appliesTo"]="Horde"},[7168]={["repfaction"]=730,["previousQuest"]=7162,["reputation"]="friendly",["xp"]=69400,["appliesTo"]="Alliance"},[7169]={["repfaction"]=730,["reputation"]="honored",["xp"]=69400,["appliesTo"]="Alliance"},[7170]={["repfaction"]=730,["reputation"]="revered",["xp"]=86750,["appliesTo"]="Alliance"},[7171]={["repfaction"]=730,["reputation"]="exalted",["xp"]=104100,["appliesTo"]="Alliance"},[7172]={["repfaction"]=730,["reputation"]="exalted",["xp"]=104100,["appliesTo"]="Alliance"},[7142]={["priority"]=1,["appliesTo"]="Horde",["previousQuest"]=7222,["xp"]=104100,["questLog"]=true},[7141]={["priority"]=1,["appliesTo"]="Alliance",["previousQuest"]=7221,["xp"]=104100,["questLog"]=true},[13181]={["priority"]=1,["appliesTo"]="Alliance",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[13183]={["priority"]=1,["appliesTo"]="Horde",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[13177]={["priority"]=1,["appliesTo"]="Alliance",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[13178]={["priority"]=1,["appliesTo"]="Horde",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[13186]={["priority"]=1,["appliesTo"]="Alliance",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[13185]={["priority"]=1,["appliesTo"]="Horde",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[13538]={["priority"]=1,["appliesTo"]="Alliance",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[13539]={["priority"]=1,["appliesTo"]="Horde",["xp"]=236000,["questLog"]=true,["alwaysShow"]=true},[27868]={["priority"]=1,["previousQuest"]=27867,["xp"]=138800,["questLog"]=true},[27380]={["priority"]=1,["previousQuest"]=27379,["xp"]=163100,["questLog"]=true},[28854]={["priority"]=1,["xp"]=138800,["questLog"]=true},[28852]={["completewith"]=28854,["priority"]=1,["xp"]=138800,["questLog"]=true},[28853]={["priority"]=1,["xp"]=138800,["questLog"]=true},[29158]={["appliesTo"]="Alliance",["xp"]=69400,},[29157]={["appliesTo"]="Horde",["xp"]=69400,},[29241]={["priority"]=1,["xp"]=138800,["questLog"]=true},[29175]={["priority"]=1,["xp"]=138800,["questLog"]=true},[29242]={["priority"]=1,["xp"]=138800,["questLog"]=true},[29173]={["priority"]=1,["xp"]=138800,["questLog"]=true},[29172]={["priority"]=1,["xp"]=138800,["questLog"]=true},[28120]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28662]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28118]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28661]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28117]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28660]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28122]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28657]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28163]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28659]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28162]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28658]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28186]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28665]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28165]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28663]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28185]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28664]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28188]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28668]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28223]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28669]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28232]={["appliesTo"]="Alliance",["xp"]=69400,["priority"]=2,["questLog"]=true,},[28670]={["appliesTo"]="Horde",["xp"]=69400,["priority"]=2,["questLog"]=true,},[27978]={["group"]="TBlargosoverlook",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27975]={["group"]="TBwellsonsy",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27973]={["group"]="TBwellsonsy",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27991]={["group"]="TBlargosoverlook",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27987]={["group"]="TBlargosoverlook",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28275]={["group"]="TBwellsonsy",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28063]={["group"]="TBfarsonhold",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28137]={["group"]="TBrustbergvl",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28130]={["group"]="TBrustbergvl",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28059]={["group"]="TBfarsonhold",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28050]={["group"]="TBlosthope",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27944]={["group"]="TBdarkwood",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27971]={["group"]="TBlosthope",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27972]={["group"]="TBlosthope",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27948]={["group"]="TBdarkwood",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27970]={["group"]="TBlosthope",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28046]={["group"]="TBrestlessfront",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27967]={["group"]="TBforgottenhill",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27992]={["group"]="TBrestlessfront",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27949]={["group"]="TBforgottenhill",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[27966]={["group"]="TBforgottenhill",["appliesTo"]="Alliance",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28697]={["group"]="TBlargosoverlookh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28695]={["group"]="TBwellsonsyh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28694]={["group"]="TBwellsonsyh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28700]={["group"]="TBlargosoverlookh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28698]={["group"]="TBlargosoverlookh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28696]={["group"]="TBwellsonsyh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28685]={["group"]="TBfarsonholdh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28687]={["group"]="TBrustbergvlh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28686]={["group"]="TBrustbergvlh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28682]={["group"]="TBfarsonholdh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28681]={["group"]="TBlosthopeh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28683]={["group"]="TBdarkwoodh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28679]={["group"]="TBlosthopeh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28680]={["group"]="TBlosthopeh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28684]={["group"]="TBdarkwoodh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28678]={["group"]="TBlosthopeh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28693]={["group"]="TBrestlessfronth",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28691]={["group"]="TBforgottenhillh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28692]={["group"]="TBrestlessfronth",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28689]={["group"]="TBforgottenhillh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28690]={["group"]="TBforgottenhillh",["appliesTo"]="Horde",["xp"]=69400,["priority"]=1,["questLog"]=true,},[28864]={["appliesTo"]="Alliance",["xp"]=55200,["priority"]=3,["questLog"]=true,},[28861]={["appliesTo"]="Alliance",["xp"]=55200,["priority"]=3,["questLog"]=true,},[28860]={["appliesTo"]="Alliance",["xp"]=55200,["priority"]=3,["questLog"]=true,},[28862]={["appliesTo"]="Alliance",["xp"]=55200,["priority"]=3,["questLog"]=true,},[28863]={["appliesTo"]="Alliance",["xp"]=69000,["priority"]=3,["questLog"]=true,},[28873]={["appliesTo"]="Horde",["xp"]=55200,["priority"]=3,["questLog"]=true,},[28875]={["appliesTo"]="Horde",["xp"]=69000,["priority"]=3,["questLog"]=true,},[28871]={["appliesTo"]="Horde",["xp"]=55200,["priority"]=3,["questLog"]=true,},[28874]={["appliesTo"]="Horde",["xp"]=55200,["priority"]=3,["questLog"]=true,},[28872]={["appliesTo"]="Horde",["xp"]=55200,["priority"]=3,["questLog"]=true,},[31889]={["appliesTo"]="Horde",["xp"]=69400,},[31891]={["appliesTo"]="Horde",["xp"]=69400,},[31902]={["appliesTo"]="Alliance",["xp"]=69400,},[31903]={["appliesTo"]="Alliance",["xp"]=69400,},[29262]={["xp"]=69400,["itemId"]=63128,["itemAmount"]=1,},[28803]={["xp"]=69400,["itemId"]=52843,["itemAmount"]=1,},["groups"]={["ZG"]=3,[29241]="ZG",[29175]="ZG",[29242]="ZG",[29173]="ZG",[29172]="ZG",["TWHL"]=3,[27868]="TWHL",[27380]="TWHL",[28854]="TWHL",[28852]="TWHL",[28853]="TWHL",},}
]]);

RXPGuides.RegisterGuide([[
#version 1
#cata
#mop
#include QuestDB
#group RestedXP MoP Preparation

#name !How to Use This Guide
#hidewindow
step
#sticky
+Welcome to the RXP Mists of Pandaria preparation guide
+Feel free to use "Total XP prepared" guide to check on your progress and have a look at your best available quests for the questlog guide.
+Then check out Turn In Day Speed Assistant to speed up your turn in route
+Lastly, you are good to use the Turn In Guide on launch day!
+The Twilight Highlands and Zul'Gurub part of the guide will be auto skipped if you don't have a minimum amount of quests in those areas, the travel time is only worth it if you have a decent quest stack
step << skip
+Once you finish the guide, it is highly recommended you copy your character over to the PTR and give the Turn in Guide a test whirl on the PTR so you know the route better!
]]);

RXPGuides.RegisterGuide([[
#version 1
#cata
#mop
#include QuestDB
#group RestedXP MoP Preparation

#name Turn In Day Speed Assistant
step
>>Some items of note that you can collect to navigate through the turn-in guide faster are the following:
+|cRXP_LOOT_[Shroud of Cooperation]|r or any of the upgraded versions, bought from your faction's Guild Vendor in Orgrimmar or Stormwind. It requires Honored reputation with your guild to be purchased. It is required for the end of turn in guide.
.train 90267>>Make sure you purchase a |T237446:0|t|cRXP_PICK_Flight Master's License|r from Stormwind or Orgrimmar so you can fly in the Cataclysm zones
+|T133416:0|t[Ring of the Kirin Tor] is another highly recommended item to grab, it will cost you ~6000 gold and is sold by |cRXP_FRIENDLY_Harold Winston|r in Dalaran's Jewelcrafting shop



+If you have any Zul'Gurub quests to turn in, consider queuing for it on the Dungeon Finder, in case you get a queue pop you can save about 2-3 minutes
]]);

RXPGuides.RegisterGuide([[
#version 1
#cata
#mop
#include QuestDB
#group RestedXP MoP Preparation

#name RestedXP Total XP prepared
#hidewindow
step
+ So far the experienced you have prepared is:
.showtotalxp
>> Out of the total possible for your character:
.showtotalxp 1
>> For questlog quests, put the items into your bag so all the quests are marked as "(Complete)".
>>-
.show25quests >> CLICK HERE to see the list of 25 best quests for your character
]]);

RXPGuides.RegisterGuide([[
#version 1
#cata
#mop
#include QuestDB
#group RestedXP MoP Preparation
#subgroup Preparation guide
#title 5 - Dungeon Quest Wrap-Up\nRXP MoP Prep Guide
#name 5 - Dungeon Quest Wrap-Up
#next 6 - Tol Barad Daily Quests

step
.requires quest,28854
>>Que up for Grim Batol and pick up all available quests
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
.accept 28854 >> Accept Closing a Dark Chapter
.target Baleflame
step
.requires quest,28852
>>Que up for Grim Batol and pick up all available quests
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
.accept 28852 >> Accept Soften them Up
.target Velastrasza
step
.requires quest,28853
>>Que up for Grim Batol and pick up all available quests
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kill the Courier|r
.accept 28853 >> Accept Kill the Courier
.target Farseer Tooranu
step
.requires quest,28852
.isOnQuest 28852
>>Clear first part of the dungeon up to imprisoned dragons and free them, after that you will mount them and rain fire on dungeon mobs
>>|cRXP_WARN_Focus on Troggs because most party members will focus on dungeon mobs they will have to fight through|r
>>|cRXP_WARN_if you miss some enemies make sure to re do the dungeon and get them|r
>>|cRXP_ENEMY_DO NOT|r |cRXP_WARN_turn this quest in when you are done|r
.complete 28852,1 
.complete 28852,2 
step
.isOnQuest 28853
.requires quest,28853
>> Continue your clear up to 3rd boss and kill |cRXP_ENEMY_Drahga Shadowburner|r.
>>|cRXP_ENEMY_DO NOT|r |cRXP_WARN_turn this quest in when you are done|r
.complete 28853,1 
.target Drahga Shadowburner
step
.isOnQuest 28854
.requires quest,28854
>> Continue your clear up last boss and kill |cRXP_ENEMY_Erudax|r.
>>|cRXP_ENEMY_DO NOT|r |cRXP_WARN_turn this quest in when you are done|r
.complete 28854,1 
.target Erudax
]]);

