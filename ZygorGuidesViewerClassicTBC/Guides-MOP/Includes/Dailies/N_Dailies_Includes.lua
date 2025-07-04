local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------------
----- Argent Tournament -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("ArgentT_Quests",[[
	step
		talk Commander Falstaav##28059
		accept Parachutes for the Argent Crusade##12740 |goto Zul'Drak/0 39.42,66.96
	step
		click Argent Shieldman##28028+, Argent Crusader##28029+
		Use your Crusader Parachute |use Crusader Parachute##39615
		|tip It won't work on all of them.
		Equip #10# Argent forces with a parachute |q 12740/1 |goto 38.40,67.10
	step
		talk Commander Falstaav##28059
		turnin Parachutes for the Argent Crusade##12740 |goto 39.42,66.96
	step
		talk Commander Kunz##28039
		accept Pa'Troll##12596 |goto 40.27,66.62
	step
		Follow the path |goto Zul'Drak/0 40.27,61.44 < 30 |only if walking
		Follow the path |goto 39.25,58.68 < 30 |only if walking
		Follow the path |goto 37.29,54.63 < 30 |only if walking
		Enter the building |goto 35.78,52.23 < 7 |walk
		talk Alchemist Finklestein##28205
		accept Lab Work##12557 |goto 35.02,52.10
	step
		Go into the 2 rooms next to you:
		click Muddy Mire Maggot
		|tip Muddy Mire Maggots are contained in bags on the ground.
		_These are items on shelves that you can click_
		collect Muddy Mire Maggot##38386 |q 12557/1 |goto Zul'Drak/0 34.97,53.50
		click Withered Batwing##190473
		collect Withered Batwing##38339 |q 12557/2 |goto 35.09,53.43
		|tip Withered Batwings looks like bone wings.
		click Chilled Serpent Mucus##190462
		collect Chilled Serpent Mucus##38346 |q 12557/4 |goto 35.09,53.42
		|tip Chilled Serpent Mucus looks like a skinny green vial.
		click Amberseed##190459
		collect Amberseed##38340 |q 12557/3 |goto 34.97,51.57
		|tip Amberseeds look like spiked potatoes.
	step
		talk Alchemist Finklestein##28205
		turnin Lab Work##12557
		Complete Alchemist Finklestein's task |q 12596/4 |goto 35.02,52.10
	step
		Leave the building |goto Zul'Drak/0 35.84,52.25 < 7 |walk
		Follow the path |goto 37.23,54.57 < 30 |only if walking
		Follow the path |goto 39.24,58.71 < 30 |only if walking
		Follow the path |goto 40.10,61.34 < 30 |only if walking
		Follow the path |goto 43.58,62.18 < 30 |only if walking
		Follow the path |goto 46.28,64.52 < 20 |only if walking
		Enter the building |goto 47.95,63.59 < 10 |walk
		talk Captain Grondel##28043
		accept Creature Comforts##12599 |goto 48.15,63.89
	step
		click Dead Thornwood+
		|tip They look like curved thorny roots coming out of the water around this area.
		collect 20 Dead Thornwood##38563 |q 12599/1 |goto 46.90,61.40
	step
		Enter the building |goto 47.95,63.59 < 10 |walk
		talk Captain Grondel##28043
		turnin Creature Comforts##12599 |goto 48.15,63.89
		Complete Captain Grondel's Task |q 12596/3 |goto 48.15,63.89
	step
		Leave the building |goto Zul'Drak/0 47.93,63.57 < 7 |walk
		Follow the path |goto 45.92,66.37 < 30 |only if walking
		Go up the stairs |goto 46.48,67.38 < 15 |only if walking
		Go down the stairs |goto 49.77,72.23 < 15 |only if walking
		Follow the path |goto 50.03,75.00 < 30 |only if walking
		Go up the stairs |goto 49.33,77.85 < 20 |only if walking
		talk Captain Brandon##28042
		accept Something for the Pain##12597 |goto 48.77,78.87
	step
		Follow the path |goto Zul'Drak/0 47.27,79.47 < 20 |only if walking
		Click the Mature Water-Poppy plants
		|tip They look like tall white-leaved plants with purple bulbs at the top.
		collect 5 Mature Water-Poppy##38552 |q 12597/1 |goto 44.90,79.50
	step
		Follow the path |goto Zul'Drak/0 47.27,79.47 < 20 |only if walking
		talk Captain Brandon##28042
		turnin Something for the Pain##12597
		Complete Captain Brandon's Task |q 12596/1 |goto 48.77,78.87
	step
		Go down the stairs |goto Zul'Drak/0 49.56,77.54 < 15 |only if walking
		Follow the path |goto 52.26,76.13 < 30 |only if walking
		Go up the stairs |goto 55.45,75.87 < 20 |only if walking
		talk Captain Rupert##28044
		accept Throwing Down##12598 |goto 58.07,72.43
	step
		Go up the stairs |goto Zul'Drak/0 55.78,71.80 < 20 |only if walking
		Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574
		Seal #5# Nerubian Tunnels |q 12598/1 |goto 53.40,68.70
		|tip They look like squarish pyramid dirt mounds around this area.
		|tip They can also be found inside the building.
	step
		Go down the stairs |goto Zul'Drak/0 56.04,72.21 < 15 |only if walking
		talk Captain Rupert##28044
		turnin Throwing Down##12598
		Complete Captain Rupert's Task |q 12596/2 |goto 58.10,72.40
	step
		Go down the stairs |goto 54.69,73.00 < 15 |only if walking
		Follow the path |goto 51.51,72.66 < 20 |only if walking
		Go up the stairs |goto 49.56,71.89 < 15 |only if walking
		Follow the path |goto 47.93,70.14 < 30 |only if walking
		Follow the path |goto 44.61,73.88 < 30 |only if walking
		talk Commander Kunz##28039
		turnin Pa'Troll##12596 |goto 40.27,66.62
]])

---------------------------
----- Cooking Dailies -----
---------------------------

------------------------------
----- Isle of Quel'Danas -----
------------------------------

ZygorGuidesViewer:RegisterInclude("SSO_PreQuest_Dailies",[[
		talk Exarch Nasuun##24932
		accept Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.10,42.50
	step
		talk Lord Torvos##25140
		accept Sunfury Attack Plans##11877 |goto 62.80,36.00
	step
		talk Emissary Mordin##19202
		accept Gaining the Advantage##11875 |goto 62.80,35.60
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		talk Harbinger Haronem##19475
		accept The Multiphase Survey##11880 |goto Shattrath City 61.70,52.10
	step
		kill Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
		Skin their corpses in order to collect the Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand 50.30,40.40
		only if skill("Skinning")>=300
	step
		Mine inside the cave and collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto 40.80,31.60
		You can check [Nagrand,50.00,56.60] for more Mining Nodes.
		only if skill("Mining")>=300
	step
		use the Multiphase Spectrographic Goggles##35233
		Get the Multiphase Goggles buff |havebuff spell:46273 |goto Nagrand 38.30,65.30
		|tip You have to be in the Nagrand zone to correctly get the buff.
		only if haveq(11880)
	step
		All around Nagrand:
		Gather _Felweed_ and _Dreaming Glory_ to collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1
		only if skill("Herbalism")>=300
	step
		Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
		Use your Multiphase Spectrographic Goggles on the Orbs |use Multiphase Spectrographic Goggles##35233
		Take #6# Multiphase Readings |q 11880/1 |goto Nagrand 38.30,65.30
	step
		kill Unbound Ethereal##22244+, Bash'ir Raider##22241+, Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+
		collect 1 Bash'ir Phasing Device##34248 |n
		Use the Bash'ir Phasing Device |use Bash'ir Phasing Device##34248
		Become Out of Phase |havebuff spell:44856
		click Smuggled Mana Cell##187039
		Collect 10 Smuggled Mana Cell |q 11514/1 |goto Blade's Edge Mountains 54.00,18.10
	step
		kill Sunfury Bloodwarder##18853+, Sunfury Captain##19453+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643
		collect Sunfury Attack Plans##35231 |q 11877/1 |goto Netherstorm 25.90,66.80
	step
		talk Lord Torvos##25140
		turnin Sunfury Attack Plans##11877 |goto Shattrath City 62.80,36.00
	step
		talk Emissary Mordin##19202
		turnin Gaining the Advantage##11875 |goto 62.80,35.60
	step
		talk Harbinger Haronem##19475
		turnin The Multiphas Survey##11880 |goto 61.60,52.20
	step
		talk Exarch Nasuun##24932
		turnin Maintaining the Sunwell Portal##11514 |goto 49.10,42.50
	step
		talk Astromancer Darnarian##25133
		accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas 47.50,35.40
	step
		talk Battlemage Arynna##25057
		accept The Air Strikes Must Continue##11533 |goto 47.50,35.10
	step
		talk Harbinger Inuuro##25061
		accept The Battle Must Go On##11537 |goto 47.60,35.10
	step
		talk Anchorite Ayuri##25112
		accept Your Continued Support##11548 |goto 48.80,37.20
		This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		turnin Your Continued Support##11548 |goto 48.80,37.20
	step
		talk Vindicator Kaalan##25108
		accept Keeping the Enemy at Bay##11543 |goto 50.60,39.00
	step
		talk Magister Ilastar##25069
		accept Crush the Dawnblade##11540 |goto 49.30,40.40
	step
		talk Smith Hauthaa##25046
		accept Don't Stop Now....##11536 |goto 50.60,40.80
		accept Ata'mal Armaments##11544 |goto 50.60,40.80
	step
		talk Mar'nah##24975
		accept Rediscovering Your Roots##11521 |goto 51.50,32.50
		accept Open for Business##11546 |goto 51.50,32.50
	step
		talk Captain Valindria##25088
		accept Disrupt the Greengill Coast##11541 |goto 53.80,34.30
	step
		talk Captain Theris Dawnhearth##24967
		accept Arm the Wards!##11523 |goto 47.50,30.50
		accept The Missing Magistrix##11526 |goto 47.50,30.50
	step
		talk Vindicator Xayann##24965
		accept Further Conversions##11525 |goto 47.10,30.70
	step
		kill Wretched Fiend##24966+
		collect 4 Mana Remnants##34338 |q 11523 |c
		kill Erratic Sentry##24972+ |n
		Use Attuned Crystal Cores on the Erratic Sentries corpse |use Attuned Crystal Cores##34368
		Deploy #5# Converted Sentries |q 11525/1 |goto Isle of Quel'Danas 44.30,28.50
		click Bloodberry Bush##187333
		collect 5 Bloodberry##34502 |q 11546/1 |goto Isle of Quel'Danas 44.30,28.50
		|tip They can be found all around this area on the ground.
	step
		kill 6 Dawnblade Summoner##24978 |q 11540/1 |goto Isle of Quel'Danas 42.10,35.70
		kill 6 Dawnblade Blood Knight##24976 |q 11540/2 |goto Isle of Quel'Danas 42.10,35.70
		kill 3 Dawnblade Marksman##24979 |q 11540/3 |goto Isle of Quel'Danas 42.10,35.70
		Use your Astromancer's Crystal to sample the Bloodcrystal's density |use Astromancer's Crystal##34533
		Bloodcrystal Reading Taken |q 11547/3 |goto Isle of Quel'Danas 42.10,35.70
	step
		Use the Mana Remnants to Energize the Crystal Ward |use Mana Remnants##34338
		Energize a Crystal Ward |q 11523/1 |goto Isle of Quel'Danas 46.50,35.50
	step
		talk Ayren Cloudbreaker##25059
		Tell him you Need to Intercept the Dawnblade Reinforcements.
		Use your Flaming Oil to set fire to the ships sails as you fly around |use Flaming Oil##34489
		Sin'loren sails burned |q 11543/1 |goto 48.50,25.20
		Bloodoath sails burned |q 11543/2 |goto 48.50,25.20
		Dawnchaser sails burned |q 11543/3 |goto 48.50,25.20
	step
		kill 6 Dawnblade Reservist##25087+ |q 11543/4 |goto Isle of Quel'Danas 51.10,9.70
		Another spot for them is at [Isle of Quel'Danas 55.20,11.80]
	step
		talk Unrestrained Dragonhawk##25236 |goto Isle of Quel'Danas,52.40,17.40
		Ride the dragonhawk to Sun's Reach |goto Isle of Quel'Danas 48.40,25.30 |noway |c
	step
		talk Ayren Cloudbreaker##25059
		Tell him you've been ordered to undertake an airstrike.
		Use your Arcane Charges on mobs once you get to the Dead Scar |use Arcane Charges##34475
		kill 2 Pit Overlord##25031+ |q 11533/1 |goto Isle of Quel'Danas 48.50,25.20
		kill 3 Eredar Sorcerer##25033+ |q 11533/2 |goto Isle of Quel'Danas 48.50,25.20
		kill 12 Wrath Enforcer##25030+ |q 11533/3 |goto Isle of Quel'Danas 48.50,25.20
	step
		kill Emissary of Hate##25003 |n
		Use your Shattered Sun Banner on his corpse |use Shattered Sun Banner##34414
		Impale the Emissary of Hate |q 11537/1 |goto Isle of Quel'Danas,48.50,43.70
		kill 6 Burning Legion Demon##25068 |q 11537/2 |goto Isle of Quel'Danas,48.50,43.70
		Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
		Portal Reading Taken |q 11547/1 |goto Isle of Quel'Danas 48.50,43.70
	step
		Take this path back to the shoreside |goto Isle of Quel'Danas 57.30,38.60 < 10 |only if walking
		kill Darkspine Myrmidon##25060+
		collect Darkspine Chest Key##34477 |n
		kill Darkspine Siren##25073+
		collect Orb of Murloc Control##34483 |n
		Use your Orbs of Murloc Control on Greengill Slaves along the shore |use Orb of Murloc Control##34483
		Free 10 Greengill Slaves |q 11541/1 |goto Isle of Quel'Danas 64.10,49.90
		Use your Darkspine Chest Keys on the Darkspine Ore Chest
		collect 3 Darkspine Iron Ore##34479 |q 11536/1 |goto Isle of Quel'Danas 64.10,49.90
	step
		Use your Astromancer's Crystal to sample the Shrine's density |use Astromancer's Crystal##34533
		Shrine Reading Taken |q 11547/2 |goto Isle of Quel'Danas 61.10,62.00
	step
		talk Mar'nah##24975
		turnin Open for Business##11546 |goto 51.50,32.50
	step
		talk Captain Valindria##25088
		turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas 53.80,34.30
	step
		talk Smith Hauthaa##25046
		turnin Don't Stop Now....##11536 |goto 50.60,40.70
	step
		talk Vindicator Kaalan##25108
		turnin Keeping the Enemy at Bay##11543 |goto 50.60,39.00
	step
		talk Magister Ilastar##25069
		turnin Crush the Dawnblade##11540 |goto 49.30,40.40
	step
		talk Astromancer Darnarian##25133
		turnin Know Your Ley Lines##11547 |goto 47.50,35.30
	step
		talk Battlemage Arynna##25057
		turnin The Air Strikes Must Continue##11533 |goto 47.50,35.10
	step
		talk Harbinger Inuuro##25061
		turnin The Battle Must Go On##11537 |goto 47.60,35.10
	step
		talk Captain Theris Dawnhearth##24967
		turnin Arm the Wards!##11523 |goto 47.50,30.50
	step
		talk Vindicator Xayann##24965
		turnin Further Conversions##11525 |goto 47.10,30.70
	step
		|use Captured Legion Scroll##34420 |goto Isle of Quel'Danas 48.50,44.70
		Teleport to Hellfire Peninsula |goto Hellfire Peninsula 58.60,18.70 < 10 |noway |c
	step
		talk Magistrix Seyla##24937
		turnin The Missing Magistrix##11526 |goto Hellfire Peninsula 58.20,17.60
		accept Blood for Blood##11515 |goto Hellfire Peninsula 58.20,17.60
		accept Blast the Gateway##11516 |goto Hellfire Peninsula 58.20,17.60
	stickystart "emaciatedfelblood"
	step
		kill Wrath Herald##24919+
		collect 4 Demonic Blood##34259
		use the Sizzling Embers to summon a Living Flare |use Sizzling Embers##34253
		kill Incandescent Fel Spark##22323+ |n
		Once you see a message that says _"Living Flare becomes unstable with brimming energy!"_ take it to [Hellfire Peninsula 58.60,18.70]
		Legion Gateway Destroyed |q 11516/1 |goto Hellfire Peninsula 66.40,20.10
	step
	label "emaciatedfelblood"
		Use your Fel Siphon on Felblood Initiates |use Fel Siphon##34257
		kill 4 Emaciated Felblood##24918 |q 11515/1 |goto 59.90,21.00
	step
		talk Magistrix Seyla##24937
		turnin Blast the Gateway##11516 |goto Hellfire Peninsula 58.20,17.60
		turnin Blood for Blood##11515 |goto Hellfire Peninsula 58.20,17.60
	step
		kill Razorthorn Flayer##24920+
		collect Razorthorn Flayer Gland##34255 |q 11521 |n
		Use your Razorthorn Flayer Gland on Razorthorn Ravagers |use Razorthorn Flayer Gland##34255
		Use your pets Expose Razorthorn Root ability on mounds of dirt around the area |cast Expose Razorthorn Root##44935
		collect 5 Razorthorn Root##34254 |q 11521/1 |goto Terokkar Forest 59.70,10.30
	step
		kill Shadowmoon Chosen##22084+, Shadowmoon Slayer##22082+, Shadowmoon Darkweaver##22081+
		collect 5 Ata'mal Armament##34500 |q 11544 |goto Shadowmoon Valley 68.50,37.50
	step
		talk Mar'nah##24975
		turnin Rediscovering Your Roots##11521 |goto Isle of Quel'Danas 51.50,32.50
	step
		Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil |use Ata'mal Armament##34500
		Cleanse 5 Ata'mal Metals |q 11544/1 |goto 50.60,40.70
	step
		talk Smith Hauthaa##25046
		turnin Ata'mal Armaments##11544 |goto 50.60,40.70
]])

-------------------
----- Oracles -----
-------------------

ZygorGuidesViewer:RegisterInclude("Oracles_PreQuests",[[
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin/0 50.48,62.13
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q 12654/1 |goto 50.53,77.21
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto 50.54,76.58
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto 54.99,69.11
		accept The Ape Hunter's Slave##12529 |goto 54.99,69.11
	step
		_Next to you:_
		talk Goregek the Gorilla Hunter##28214
		accept Tormenting the Softknuckles##12530
	stickystart "Slay_Hardknuckle_Matriarch"
	step
		kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto 57.49,73.30
	step
		kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto 62.24,72.66
	step
	label "Slay_Hardknuckle_Matriarch"
		use Softknuckle Poker##38467
		|tip Use it on Softknuckle gorrilas.
		|tip They look like baby gorillas around this area.
		|tip Eventually a Hardknuckle Matriarch will spawn.
		kill Hardknuckle Matriarch##28213 |q 12530/1 |goto 66.90,73.41
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto 54.99,69.11
		turnin Tormenting the Softknuckles##12530 |goto 54.99,69.11
		accept The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
	step
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto 55.50,69.68
	stickystart "Slay_Sapphire_Hive_Drones"
	step
		kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto 61.52,77.75
	step
	label "Slay_Sapphire_Hive_Drones"
		kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto 61.52,77.75
	step
		Follow the path down |goto 59.41,79.10 < 5 |walk
		Continue down the path |goto 57.55,79.65 < 10 |walk
		kill Sapphire Hive Queen##28087
		|tip Inside the cave.
		collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.17,79.17
	step
		Follow the path |goto 57.43,81.33 < 15 |only if walking
		Leave the cave |goto 59.33,79.18 < 5 |only if walking
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533 |goto 54.99,69.12
		turnin The Sapphire Queen##12534 |goto 54.99,69.12
	step
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto 55.50,69.68
	step
		clicknpc Chicken Escapee##28161+
		|tip They look like small chickens running around this area.
		collect 12 Captured Chicken##38483 |q 12532/1 |goto 55.22,70.15
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto 55.50,69.68
		accept The Underground Menace##12531 |goto 55.50,69.68
	step
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto 54.99,69.11
	stickystart "Collect_Claw_of_Serfex"
	step
		click Skyreach Crystal Formation##190500
		|tip They look like small clusters of light purple crystals along the river around this area.
		collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.81,84.57
	step
	label "Collect_Claw_of_Serfex"
		kill Serfex the Reaver##28083
		|tip He looks like a burrowing worm that travels along the river around this area.
		collect Claw of Serfex##38473 |q 12531/1 |goto 49.79,84.96
	step
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto 54.99,69.11
		turnin Mischief in the Making##12535 |goto 54.99,69.11
		accept A Rough Ride##12536 |goto 54.99,69.11
	step
		talk Captive Crocolisk##28298
		Tell him _"You look safe enough...let's do this."_
		Mount the Crocolisk |invehicle |goto 57.28,68.39 |q 12536
	step
		Watch the dialogue
		Travel to Mistwhisper Refuge |q 12536/1 |goto 46.25,39.47 |notravel
	step
		_Next to you:_
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	stickystart "Slay_Mistwhisper_Gorlocs"
	step
		use Skyreach Crystal Clusters##38510
		|tip Use it next to the stone monument.
		click Arranged Crystal Formation##190502
		Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.37,37.21
	step
	label "Slay_Mistwhisper_Gorlocs"
		Kill Mistwhisper enemies around this area
		Kill #12# Mistwhisper Gorlocs |q 12538/1 |goto 44.79,36.61
	step
		_Next to you:_
		talk Zepik the Gorloc Hunter##28216
		|tip Use Zepik's Hunting Horn to summon Zepik if he's not already next to you.
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto 54.99,69.11
		accept Just Following Orders##12540 |goto 54.99,69.11
	step
		clicknpc Injured Rainspeaker Oracle##28217
		Select _<Reach down and pull the Injured Rainspeaker Oracle to its feet.>_
		kill Ravenous Mangal Crocolisk##28325
		Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.70,64.97
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540 |goto 55.70,64.97
		accept Fortunate Misunderstandings##12570 |goto 55.70,64.97
	step
		talk Injured Rainspeaker Oracle##28217
		Tell him _"I am ready to travel to your village now."_ |goto 55.70,64.97
		Begin Following the Injured Rainspeaker Oracle |goto 55.24,64.17 < 10 |c |q 12570
	step
		Follow the Injured Rainspeaker as it walks
		Watch the dialogue
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 53.52,56.81
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto 54.59,56.35
		accept Make the Bad Snake Go Away##12571 |goto 54.59,56.35
	step
		_Next to you:_
		talk Lafoo##28120
		|tip Use Lafoo's Bug Bag to summon Lafoo if he's not already next to you.
		accept Gods like Shiny Things##12572
	stickystart "Slay_Emperor_Cobras"
	step
		kill Venomtip##28358 |q 12571/2 |goto 57.48,52.50
		|tip It looks like a purple and red cobra near the waterfall in this area.
	step
		_Next to you:_
		talk Lafoo##28120
		|tip Use Lafoo's Bug Bag to summon Lafoo if he's not already next to you.
		Stand on top of the twinkles of light on the ground around this area
		|tip Lafoo will dig up the treasure.
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.43,53.13
	step
	label "Slay_Emperor_Cobras"
		kill 10 Emperor Cobra##28011 |q 12571/1 |goto 52.43,53.13
	step
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto 54.59,56.35
		accept Making Peace##12573 |goto 54.59,56.35
		turnin Gods like Shiny Things##12572 |goto 54.59,56.35
	step
		talk Shaman Vekjik##28315
		Tell him _"Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."_
		Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.30,64.63
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto 50.48,62.13
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto 54.59,56.35
		accept Back So Soon?##12574 |goto 54.59,56.35
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto 42.15,38.65
		accept The Lost Mistwhisper Treasure##12575 |goto 42.15,38.65
		accept Forced Hand##12576 |goto 42.15,38.65
	stickystart "Slay_Frenzyheart_Spearbearers"
	stickystart "Slay_Frenzyheart_Scavengers"
	step
		kill Warlord Tartek##28105 |q 12575/1 |goto 41.29,19.79
		|tip He walks up on a red dragon.
	step
		click Mistwhisper Treasure##190578
		|tip It looks like a yellow glowing floating orb hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.69,19.49
	step
	label "Slay_Frenzyheart_Spearbearers"
		kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.40,22.88
	step
	label "Slay_Frenzyheart_Scavengers"
		kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.40,22.88
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto 42.15,38.65
		turnin Forced Hand##12576 |goto 42.15,38.65
		accept Home Time!##12577 |goto 42.15,38.65
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto 54.59,56.35
		accept The Angry Gorloc##12578 |goto 54.59,56.35
	step
		talk High-Oracle Soo-say##28027
		Tell him _"I need to find Moodle, doyou have his stress ball?"_
		collect 1 Moodle's Stress Ball##38624 |goto 54.58,56.36 |q 12578
	step
		Travel to Mosswalker Village |q 12578/1 |goto 75.35,54.23
	step
		use Moodle's Stress Ball##38624
		_Next to you:_
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step
		talk Mosswalker Victim##28113+
		|tip They look like friendly NPC's laying on the ground around this area.
		Select _<Check for a pulse...>_
		Rescue #6# Mosswalker Victims |q 12580/1 |goto 75.32,52.30
	step
		_Next to you:_
		talk Moodle##28122
		|tip Use Moodle's Stress Ball to summon Moodle if he's not already next to you.
		turnin The Mosswalker Savior##12580
	step
		click Lifeblood Shard##190702
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 69.34,57.94
	step
		_Next to you:_
		talk Moodle##28122
		|tip Use Moodle's Stress Ball to summon Moodle if he's not already next to you.
		turnin Lifeblood of the Mosswalker Shrine##12579
		accept A Hero's Burden##12581
	step
		Enter the cave |goto 70.89,58.70 < 10 |walk
		Follow the path down |goto 73.90,59.06 < 10 |only if walking
		kill Artruis the Heartless##28659
		kill Zepik the Gorloc Hunter##28668 |q 12581/1 |goto 72.12,57.61
		|tip Inside the cave.
		|tip This will decrease your Reputation with the Frenzyheart Tribe to Hated.
	step
		click Artruis' Phylactery##190777
		turnin A Hero's Burden##12581 |goto 72.06,57.57
		|tip Inside the cave.
		|tip Completing this quest will allow you to do The Oracles daily quests.
]])

ZygorGuidesViewer:RegisterInclude("Oracles_Dailies",[[
		Enter the cave |goto Sholazar Basin/0 70.89,58.70 < 10 |walk
		Follow the path down |goto 73.90,59.06 < 10 |walk
		kill Artruis the Heartless##28659, Zepik the Gorloc Hunter##28668
		talk Jaloot##28667
		|tip Inside the cave.
		|tip Kill Artruis the Heartless and Zepik the Gorloc Hunter in order to talk to Jaloot.
		|tip This will decrease your Reputation with the Frenzyheart Tribe to Hated.
		accept Hand of the Oracles##12689 |goto 72.46,57.52
		accept Return of the Friendly Dryskin##12695 |goto 72.46,57.52
	step
		talk High-Oracle Soo-say##28027
		turnin Return of the Friendly Dryskin##12695 |goto 54.59,56.36
	step
	label "Oracles_Dailies_Start"
		talk High-Oracle Soo-say##28027
		accept Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
	step
		talk High-Oracle Soo-say##28027
		Tell him _"I need to find Lafoo, do you have his bug bag?"_
		collect 1 Lafoo's Bug Bag##38622 |goto 54.59,56.36
	step
		talk Oracle Soo-nee##29006
		|tip You will only be able to accept and turn in 1 of these 4 daily quests per day.
		accept A Cleansing Song##12735 |or |goto 53.34,56.45
		accept Song of Fecundity##12737 |or |goto 53.34,56.45
		accept Song of Reflection##12736 |or |goto 53.34,56.45
		accept Song of Wind and Water##12726 |or |goto 53.34,56.45
	step
		Enter the building |goto 54.00,54.33 < 5 |walk
		talk Oracle Soo-dow##29149
		|tip Inside the building.
		|tip You will only be able to accept and turn in 1 of these 3 daily quests per day.
		accept Mastery of the Crystals##12761 |or |goto 54.16,53.77
		accept Power of the Great Ones##12762 |or |goto 54.16,53.77
		accept Will of the Titans##12705 |or |goto 54.16,53.77
	step
		Stand on top of the twinkles of light on the ground around this area
		|tip Lafoo will dig up the treasure.
		|tip Use Lafoo's Bug Bag to summon Lafoo if he's not already next to you.
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q 12704/1 |goto 52.43,53.15
		only if haveq(12704)
	step
		use Chime of Cleansing##39572
		kill Spirit of Atha##29033 |q 12735/1 |goto 42.70,42.79
		only if haveq(12735)
	step
		use Chime of Cleansing##39572
		kill Spirit of Ha-Khalan##29018 |q 12735/2 |goto 49.41,62.70
		only if haveq(12735)
	step
		use Chime of Cleansing##39572
		kill Spirit of Koosu##29034 |q 12735/3 |goto 48.79,70.54
		only if haveq(12735)
	step
		use Horn of Fecundity##39599
		|tip Use it next to Soaked Fertile Dirt piles.
		|tip They look like mounds of dirt with small trees growing out of them on the ground around this area.
		Play the Song of Fecundity #8# Times |q 12737/1 |goto 26.19,37.14
		only if haveq(12737)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Glimmering Pillar |q 12736/1 |goto 49.98,37.39
		only if haveq(12736)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.43,52.26
		only if haveq(12736)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.39,74.88
		only if haveq(12736)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.30,79.41
		only if haveq(12736)
	step
		use Drums of the Tempest##39571
		Take Control of Haiphoon, the Great Tempest |invehicle |goto 25.35,35.40 |q 12726
		only if haveq(12726)
	stickystart "Devour_Storm_Revenants"
	step
		Haiphoon has 2 forms: Water and Air
		While in Air Form:
		kill Aqueous Spirit##28862+
		|tip When the Aqueous Spirits are weak, use the "Devour Water" ability to eat them.
		|tip After eating an Aqueous Spirit, you will turn into Haiphoon's Water Form.
		Devour #3# Aqueous Spirits |q 12726/1 |goto 25.35,35.40
		only if haveq(12726)
	step
	label "Devour_Storm_Revenants"
		While in Water Form:
		kill Storm Revenant##28858
		|tip When the Storm Revenants are weak, use the "Devour Wind" ability to eat them.
		|tip After eating a Storm Revenant, you will turn into Haiphoon's Air Form.
		Devour #3# Storm Revenants |q 12726/2 |goto 25.35,35.40
		only if haveq(12726)
	step
		click Sparktouched Crystal Defenses##191209
		collect 1 Crystal of the Violent Storm##39694 |complete itemcount(39694)>=1 |q 12761 |goto 33.05,75.69
		collect 1 Crystal of Unstable Energy##39693 |complete itemcount(39693)>=1 |q 12761 |goto 33.05,75.69
		collect 1 Crystal of the Frozen Grip##39689 |complete itemcount(39689)>=1 |q 12761 |goto 33.05,75.69
		only if haveq(12761)
	step
		use Crystal of the Frozen Grip##39689
		use Crystal of the Violent Storm##39694
		use Crystal of Unstable Energy##39693
		|tip Use the crystals to help you defeat Frenzyheart enemies around this area.
		Kill #50# Frenzyheart Attackers |q 12761/1 |goto 22.19,79.42
		only if haveq(12761)
	step
		use Dormant Polished Crystal##39747
		collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.50,60.23
		only if haveq(12762)
	step
		use Energized Polished Crystal##39748
		Gain the Power of the Great Ones Buff |havebuff spell:53371 |q 12762 |goto 22.19,79.42
		only if haveq(12762)
	step
		Kill Frenzyheart enemies around this area
		Kill #30# Frenzyheart Attackers |q 12762/1 |goto 22.19,79.42
		only if haveq(12762)
	step
		Kill Frenzyheart enemies around this area
		collect 1 Tainted Crystal##39266 |goto 22.19,79.42
		only if haveq(12705)
	step
		use Tainted Crystal##39266 |goto Sholazar Basin 33.60,74.98 < 5 |walk
		|tip Use Soo-holu's abilities to help kill Frenzyheart enemies if you aren't a high level.
		Kill #50# Frenzyheart Attackers |q 12705/1 |goto 22.19,79.42
		only if haveq(12705)
	step
		talk Lightningcaller Soo-met##28107
		turnin Mastery of the Crystals##12761 |or |goto 33.50,74.75 |only if haveq(12761)
		turnin Power of the Great Ones##12762 |or |goto 33.50,74.75 |only if haveq(12762)
		turnin Will of the Titans##12705 |or |goto 33.50,74.75 |only if haveq(12705)
	step
		talk Oracle Soo-nee##29006
		turnin A Cleansing Song##12735 |or |goto 53.34,56.45 |only if haveq(12735)
		turnin Song of Fecundity##12737 |or |goto 53.34,56.45 |only if haveq(12737)
		turnin Song of Reflection##12736 |or |goto 53.34,56.45 |only if haveq(12736)
		turnin Song of Wind and Water##12726 |or |goto 53.34,56.45 |only if haveq(12726)
	step
		talk High-Oracle Soo-say##28027
		turnin Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
	step
		You've completed the daily for today
		Click to restart the dailies guide |confirm |next "Oracles_Dailies_Start"
]])

---------------------
----- Therazane -----
---------------------

ZygorGuidesViewer:RegisterInclude("Therazane_Dailies", [[
		//Starting Dailies |complete true
	step
	label "Reset"
		talk Felsen the Enduring##43805
		accept Fear of Boring##27046 |goto Deepholm/0 56.10,14.40
		accept Motes##27047 |goto Deepholm/0 56.10,14.40
		accept Beneath the Surface##28488 |goto Deepholm/0 56.10,14.40
		|tip The quests that appear are random each day.
		|noquest
	step
		talk Terrath the Steady##43806
		accept The Restless Brood##28391 |goto Deepholm/0 56.60,14.10
		|noquest
		only if rep ('Therazane') >= Revered
	step
		talk Pyrite Stonetender##44945
		accept Lost In The Deeps##26710 |goto Deepholm/0 55.40,14.20
		|noquest
	step
		talk Gorsik the Tumultuous##43804
		|tip Walking around this area.
		accept Soft Rock##27049 |goto Deepholm/0 57.30,12.50
		accept Fungal Fury##27050 |goto Deepholm/0 57.30,12.50
	step
		talk Ruberick##44973
		accept Through Persistence##27051 |goto Deepholm/0 59.60,14.00
		accept Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered |goto Deepholm/0 59.60,14.00
		|noquest
	step
		use the Stonework Mallet##60266
		|tip It's a huge green crystal sitting on the ground.
		Strike the Pale Resonating Crystal |q 28391/1 |goto Deepholm/0 32.70,24.30
		|only if haveq(28391) or completedq(28391)
	step
		kill Aeosera##43641
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.
		|tip When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.
		|tip Repeat this until she surrenders.
		Defeat Aeosera |q 28391/2 |goto Deepholm/0 32.70,24.30
		only if rep ('Therazane') >= Revered
	step
		talk Terrath the Steady##43806
		turnin The Restless Brood##28391 |goto Deepholm/0 56.60,14.10
		only if rep ('Therazane') >= Revered
	stickystart "Collect_Deep_Garnet_Crystal"
	stickystart "Kill_Gyreworms"
	stickystart "Collect_Painite_Shard"
	step
		Enter the cave |goto Deepholm/0 58.30,25.60 < 10 |walk
		talk Ricket##44968
		|tip Inside the cave.
		accept Underground Economy##27048 |goto Deepholm/0 61.30,26.20
		|tip This quest can be offered at random and may not be offered everyday.
		|noquest
	step
		Click the Ruby Gemstone Cluster
		|tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
		kill Enormous Gyreworm##48533
		|tip Inside the cave.
		collect Ruby Crystal Cluster##64404 |q 28488/1 |goto Deepholm/0 66.10,28.10
		|only if haveq(28488) or completedq(28488)
	step
		use Ricket's Tickers##65514
		|tip They look like huge white rocks around this area.
		collect 3 Deep Alabaster Crystal##65504 |q 27048/1 |goto Deepholm/0 63.60,23.00
		|only if haveq(27048) or completedq(27048)
	step
		use Ricket's Tickers##65514
		|tip They look like huge blue rocks around this area.
		collect 3 Deep Celestite Crystal##65507 |q 27048/2 |goto Deepholm/0 61.80,19.70
		|only if haveq(27048) or completedq(27048)
	step
		use Ricket's Tickers##65514
		|tip They look like huge purple rocks around this area.
		collect 3 Deep Amethyst Crystal##65508 |q 27048/3 |goto Deepholm/0 64.40,18.60
		|only if haveq(27048) or completedq(27048)
	step
	label "Collect_Deep_Garnet_Crystal"
		use Ricket's Tickers##65514
		|tip They look like huge red rocks around this area.
		collect 3 Deep Garnet Crystal##65510 |q 27048/4 |goto Deepholm/0 66.40,20.20
		|only if haveq(27048) or completedq(27048)
	step
	label "Kill_Gyreworms"
		Kill enemies around this area |kill Gorged Gyreworm##42766, Gyreworm##44257, Gorged Gyreworm##44259
		kill 10 Gyreworm##44257 |q 27046/1 |goto Deepholm/0 63.60,23.90
		|only if haveq(27046) or completedq(27046)
	step
	label "Collect_Painite_Shard"
		click Painite Shard##205195
		|tip They look like small green glowing crystals sitting on the ground all around inside this cave.
		collect 10 Painite Mote##60791 |q 27047/1 |goto Deepholm/0 63.60,23.90
		|only if haveq(27047) or completedq(27047)
	step
		talk Pebble##49956
		Tell him to follow you |q 26710 |future |goto Deepholm/0 63.10,20.80 |or
		|confirm |or
		|only if haveq(26710) or completedq(26710)
	step
		Follow this path |goto Deepholm/0 64.20,17.60 < 10 |only if walking
		talk Ricket##44968
		turnin Underground Economy##27048 |goto Deepholm/0 61.30,26.20
		|only if haveq(27048) or completedq(27048)
	step
		Leave the cave |goto Deepholm/0 58.30,25.60 < 10 |walk
		Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
		Bring Pebble to safety |q 26710/1 |goto Deepholm/0 58.30,25.60
		|only if haveq(26710) or completedq(26710)
	stickystart "Collect_Bag_of_Verlok_Miracle_Grow"
	stickystart "Destroy_Freshly_Sprouted_Mushrooms"
	step
		kill 8 Fungal Behemoth##42475 |q 27049/1 |goto Deepholm/0 74.00,41.20
	step
	label "Collect_Bag_of_Verlok_Miracle_Grow"
		Kill Verlok enemies around this area |kill Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
		collect Bag of Verlok Miracle-Grow##60767 |q 27051/1 |goto Deepholm/0 74.00,41.20
	step
	label "Destroy_Freshly_Sprouted_Mushrooms"
		click Sprouting Crimson Mushroom##205151
		|tip They look like tiny mushrooms on the ground around this area. Try to only click the solid blue, solid red or white-brown ones. The blue ones with red spots will explode and hurt you.
		Destroy #10# Freshly Sprouted Mushrooms |q 27050/1 |goto Deepholm/0 74.00,41.20
	step
		Enter the cave |goto Deepholm/0 68.60,29.10 < 10 |walk
		talk Earthmender Norsala##43503
		Tell her you're ready when she is
		kill Fungalmancer Glop##43372 |q 28390/1 |goto Deepholm/0 69.80,31.90
		|tip Follow him each time he runs away.
		|tip Avoid the mushrooms as you walk, they will give you a debuff.
		|tip While fighting Fungalmancer Glop, kill the Boomshrooms he creates.
		|tip Don't let them grow too big, they will explode and deal a lot of damage.
		|only if haveq(28390) or completedq(28390)
	step
		Follow the path up |goto Deepholm/0 70.20,33.80 < 10 |only if walking
		Leave the cave |goto Deepholm/0 68.60,29.10 < 10 |walk
		talk Felsen the Enduring##43805
		turnin Fear of Boring##27046 |goto Deepholm/0 Deepholm 56.10,14.40 |only if haveq(27046) or completedq(27046)
		turnin Motes##27047 |goto Deepholm/0 Deepholm 56.10,14.40 |only if haveq(27047) or completedq(27047)
		turnin Beneath the Surface##28488 |goto Deepholm/0 Deepholm 56.10,14.40 |only if haveq(28488) or completedq(28488)
	step
		talk Pyrite Stonetender##44945
		turnin Lost In The Deeps##26710 |goto Deepholm/0 55.40,14.20
		only if haveq(26710) or completedq(26710)
	step
		talk Gorsik the Tumultuous##43804
		|tip Walking around this area.
		turnin Soft Rock##27049 |goto Deepholm/0 57.30,12.50 |only if haveq(27049) or completedq(27049)
		turnin Fungal Fury##27050 |goto Deepholm/0 57.30,12.50 |only if haveq(27050) or completedq(27050)
	step
		talk Ruberick##44973
		turnin Through Persistence##27051 |goto Deepholm/0 59.60,14.00 |only if haveq(27051) or completedq(27051)
		turnin Glop, Son of Glop##28390 |goto Deepholm/0 59.60,14.00 |only if haveq(28390) or completedq(28390)
	step
		Wait for Daily Quests to Reset
		'|complete not completedq(27046,27047,28488,26710,27049,27050,27051,28390)|next "Reset" |or
]])