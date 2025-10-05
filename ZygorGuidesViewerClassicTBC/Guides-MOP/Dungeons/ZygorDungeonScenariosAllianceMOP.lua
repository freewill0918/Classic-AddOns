local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ScenarioAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Arena of Annihilation",{
description="This guide will walk you through the \"Arena of Annihilation\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7271,7272,7273},
patch='50001',
model={43509,43329,40963,39570,39747,43292,42937},
startlevel=85,
endlevel=90,
mapid=480,
mopready=true
},[[
step
talk Gurgthock##63315
accept The Arena of Annihilation##31207 |goto Kun-Lai Summit/0 68.69,48.37
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Arena of Annihilation."_ |script GossipFrame:SelectGossipOption(5)
Enter the Arena of Annihilation Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 1/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Scar-Shell##63311
|tip Crushing Bite reduces the armor of whomever it hits by 50%.
|tip Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
Slay Scar-Shell |scenariogoal 1/19336 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 2/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Jol'Grum##63312
|tip The tank moving causes his rage bar to build.
|tip If the bar reaches 100, he will become Angry. This is a light enrage.
|tip He will cast Headbutt on the tank which knocks them back.
|tip He will also jump to the middle and use Smash, knocking all players back.
Slay Jol'Grum |scenariogoal 2/19337 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 3/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Little Liuyang##63313
|tip Liuyang will constantly shoot off fireballs and paths of fire. Avoid standing in fire.
|tip At around 40%, Firewall will be cast.
|tip Run counter-clockwise while killing the Flmecoaxing Spirits. Killing them will cause a section of the firewall to vanish.
|tip There are three of them.
Slay Little Liuyang |scenariogoal 3/21922 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 4/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Chagan Firehoof##63318
|tip He will use Trailblaze on a random player. This leaves fire on the ground.
|tip Hammertime does damage to whomever is tanking.
|tip There is no real benefit to killing Batu. Just ignore him and kill Chagan.
Slay Chagan Firehoof |scenariogoal 4/19341 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 5/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Satay Byu##64281
|tip Satay Byu will apply Slowing Poison with his basic attacks.
|tip If Slowing Poison reaches 20 stacks it will root the target in place.
|tip Speed of the Jinja will rapidly strike in front of Satay, run away from this.
Slay Satay Byu |scenariogoal 5/20587 |goto Proving Grounds/1 45.95,51.34
step
talk Wodin the Troll-Servant##63314
turnin The Arena of Annihilation##31207 |goto Proving Grounds/1 50.00,18.59
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Proving Grounds/1 50.00,18.59 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm",{
description="This guide will walk you through the \"A Brewing Storm\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7252,8310,7257,7258,7261},
patch='50001',
model={40972},
startlevel=85,
endlevel=90,
mapid=878,
mopready=true
},[[
step
talk Brewmaster Blanche##59569
|tip Blanche patrols all around the bridge and the areas that it connects.
accept Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me the tale of a Brewing Storm."_ |script GossipFrame:SelectGossipOption(3)
Enter the A Brewing Storm Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
talk Brewmaster Blanche##58740
Select _"Let's get this lightning party started, Blanche."_ |script GossipFrame:SelectGossipOption(1)
clicknpc Brewkeg##58916
|tip Brewkegs struck by lightning will sometimes catch fire.
|tip Click on the Brewkegs when they catch fire to extinguish them.
|tip Avoid standing near the lightning rods when they light up.
|tip Stand in green mist on the ground for extra healing.
Defend the Brewing Process |scenariogoal 1/22197 |goto A Brewing Storm/0 55.32,44.99
step
Go down the stairs |goto A Brewing Storm/0 54.34,55.87 < 10 |walk
Go down the stairs |goto A Brewing Storm/0 70.12,43.80 < 10 |walk
Follow the path up |goto A Brewing Storm/0 50.67,32.25 < 10 |walk
Kill enemies that attack in waves
|tip Enemies will periodically jump in your path and attack.
|tip Blanche will sometimes stop before a new group of enemies attacks.
Escort Blanche to Thunderpaw Refuge |scenariogoal 2/19564 |goto A Brewing Storm/0 30.14,66.14
step
Go up the stairs |goto A Brewing Storm/0 31.94,71.19 < 10 |walk
talk Brewmaster Blanche##58740 |goto A Brewing Storm/0 30.27,68.06
|tip She will mount up and run to the entrance to the refuge.
Select _"Let's kill some lizards, Blanche!"_ |script GossipFrame:SelectGossipOption(1)
kill Borokhula the Destroyer##58739
|tip When Borokhula starts to cast Swamp Smash move away from the front of him.
|tip When he begins to channel Earth Shattering, watch the ground and avoid the red circles.
extraaction Boomer Brew Strike##115058
|tip Designate one party member to add control.
|tip The adds can be quickly dispatched using the Boomer Brew Strike button on the screen or with AoE.
|tip Target an add and click it to channel.
Defeat Borokhula the Destroyer |scenariogoal 3/19565 |goto A Brewing Storm/0 30.23,60.76
step
'|script LeaveInstanceParty()
Leave the Scenario |goto A Brewing Storm/0 30.27,68.06 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
talk Brewmaster Blanche##58740
|tip Blanche patrols all around the bridge and the areas that it connects.
turnin Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm (Heroic)",{
description="This guide will walk you through the \"A Brewing Storm\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7252,8310,7257,7258,7261},
patch='50001',
model={40972},
startlevel=85,
endlevel=90,
mapid=878,
mopready=true
},[[
step
talk Brewmaster Blanche##59569
|tip Blanche patrols all around the bridge and the areas that it connects.
accept Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me the tale of a Brewing Storm."_ |script GossipFrame:SelectGossipOption(1)
Enter the A Brewing Storm Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
talk Brewmaster Blanche##58740
Select _"Let's get this lightning party started, Blanche."_ |script GossipFrame:SelectGossipOption(1)
clicknpc Brewkeg##58916
|tip Brewkegs struck by lightning will sometimes catch fire.
|tip Click on the Brewkegs when they catch fire to extinguish them.
|tip Avoid standing near the lightning rods when they light up.
|tip Stand in green mist on the ground for extra healing.
Defend the Brewing Process |scenariogoal 1/22197 |goto A Brewing Storm/0 55.32,44.99
step
Go down the stairs |goto A Brewing Storm/0 54.34,55.87 < 10 |walk
Go down the stairs |goto A Brewing Storm/0 70.12,43.80 < 10 |walk
Follow the path up |goto A Brewing Storm/0 50.67,32.25 < 10 |walk
Kill enemies that attack in waves
|tip Enemies will periodically jump in your path and attack.
|tip Blanche will sometimes stop before a new group of enemies attacks.
Escort Blanche to Thunderpaw Refuge |scenariogoal 2/19564 |goto A Brewing Storm/0 30.14,66.14
step
Go up the stairs |goto A Brewing Storm/0 31.94,71.19 < 10 |walk
talk Brewmaster Blanche##58740 |goto A Brewing Storm/0 30.27,68.06
|tip She will mount up and run to the entrance to the refuge.
Select _"Let's kill some lizards, Blanche!"_ |script GossipFrame:SelectGossipOption(1)
kill Borokhula the Destroyer##58739
|tip When Borokhula starts to cast Swamp Smash move away from the front of him.
|tip When he begins to channel Earth Shattering, watch the ground and avoid the red circles.
extraaction Boomer Brew Strike##115058
|tip Designate one party member to add control.
|tip The adds can be quickly dispatched using the Boomer Brew Strike button on the screen or with AoE.
|tip Target an add and click it to channel.
Defeat Borokhula the Destroyer |scenariogoal 3/19565 |goto A Brewing Storm/0 30.23,60.76
step
'|script LeaveInstanceParty()
Leave the Scenario |goto A Brewing Storm/0 30.27,68.06 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
talk Brewmaster Blanche##58740
|tip Blanche patrols all around the bridge and the areas that it connects.
turnin Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Brewmoon Festival",{
description="This guide will walk you through the \"Brewmoon Festival\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={6923,6931,6930},
patch='50001',
model={43098,43661,42811,43204},
startlevel=85,
endlevel=90,
mapid=884,
mopready=true
},[[
step
talk Brewmaster Boof##63367
accept The Kun-Lai Kicker##31611 |goto The Veiled Stair/0 51.92,43.74
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Brewmoon Festival."_ |script GossipFrame:SelectGossipOption(6)
Enter the Brewmoon Festival Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Follow the path |goto Brewmoon Festival/0 41.47,72.77 < 10 |walk
Follow the path |goto Brewmoon Festival/0 38.94,70.51 < 10 |walk
kill Den Mother Moof##63518
|tip Kill all of the Virmen to spawn her.
|tip Twirlwind can be interrupted by stunning Moof.
|tip Occasionaly, Moof will burrow underground and summon a few weak Virmen mobs.
Defeat the virmen in the silos |scenariogoal 1/19524 |goto Brewmoon Festival/0 36.14,68.91
step
Follow the path |goto Brewmoon Festival/0 37.88,63.88 < 15 |walk
Follow the path |goto Brewmoon Festival/0 40.45,59.46 < 10 |walk
talk Assistant Tart##62793 |goto Brewmoon Festival/0 41.97,52.24 < 7
Select _"Can you help me get out on the water, Tart?"_
|tip This will grant you the ability to walk on water for five minutes.
kill Li Te##63520
|tip Kill all of the Water Spirits to spawn Li Te.
|tip Li Te will periodically be covered in a water shield. When that happens, kite it over water spouts before they burst.
Defeat Li Te |scenariogoal 1/19525 |goto Brewmoon Festival/0 43.41,42.24
step
Follow the path |goto Brewmoon Festival/0 49.96,62.78 < 20 |walk
Enter the cave |goto Brewmoon Festival/0 50.92,85.16 < 20 |walk
kill Karsar the Bloodletter##63529
|tip Karsar the Bloodletter has no aggro table.
|tip Instead, he has an ability called Taste for Blood. This ability causes the highest health party member to automatically have the highest threat.
Defeat Karsar the Bloodletter |scenariogoal 1/19526 |goto Brewmoon Festival/0 56.52,95.61
step
Leave the cave |goto Brewmoon Festival/0 50.89,85.42 < 20 |walk
Follow the path |goto Brewmoon Festival/0 45.79,79.09 < 15 |walk
Start brewing the Kun-Lai Kicker |scenariogoal 1/19716 |goto Brewmoon Festival/0 42.11,67.03
|tip Wait a few moments for this to complete.
step
You must first set up the village defenses before killing all Outrunners
|tip Barrels of Fireworks will allow you to blow up enemies.
|tip Krasarang Wild Brew will pulse fire wherever they are placed.
|tip The Tian Disciple will be dressed in yellow. Talk to them to deploy them.
|tip Vale Marksmen are sleeping pandaren on the ground. Talk to them to deploy them.
|tip Derpa Derpa may be in front of the gong. Talk to him and deploy the item he gives you on the ground. You can keep doing this.
|tip Briaw Shan will give you a Brew Strike ability. Talk to him and have him show you.
|tip If you are solo and cannot get enough defenses, click the Group Finder icon and teleport out and back in.
Set up the village defenses |scenariogoal 2/19529 |goto Brewmoon Festival/0 44.93,65.81
step
kill Bataari Outrunner##64165+
Defeat the scouts from the Ancient Passage |scenariogoal 2/19531 |goto Brewmoon Festival/0 45.06,74.29
step
Follow the path |goto Brewmoon Festival/0 42.15,66.92 < 15 |walk
kill Bataari Outrunner##64165+
Defeat the scouts from the West |scenariogoal 2/19527 |goto Brewmoon Festival/0 39.37,61.11
step
kill Bataari Outrunner##64165+
Defeat the scouts from the Bridge |scenariogoal 2/19530 |goto Brewmoon Festival/0 44.01,64.26
step
Kill Bataari enemies around this area
|tip Stage 3 consists of three waves of different Bataari mobs and War Yetis.
|tip Only one War Yeti will spawn per wave and it can be at any of the three attack points.
Stop the waves of Bataari Invaders |scenariogoal 3/19523 |goto Brewmoon Festival/0 42.40,65.84
step
kill Warbringer Qobi##63528
|tip Kite him out of Oil Slicks.
|tip Avoid standing in fire.
|tip When he is weak, click the axe to do a powerful whilrwind attack.
clicknpc Qobi's Axe##64268
Defeat Warbringer Qobi |scenariogoal 4/19528 |goto Brewmoon Festival/0 42.47,65.90
step
talk Brewmaster Boof##64901
turnin The Kun-Lai Kicker##31611 |goto Brewmoon Festival/0 43.76,68.54
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Brewmoon Festival/0 43.76,68.54 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings",{
description="This guide will walk you through the \"Crypt of Forgotten Kings\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7522,7275,8311,8368,7276},
patch='50001',
model={48740,40884,42296},
startlevel=85,
endlevel=90,
mapid=481,
mopready=true
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Crypt of Forgotten Kings."_ |script GossipFrame:SelectGossipOption(4)
Enter the Crypt of Forgotten Kings Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Go down the stairs |goto Crypt of Forgotten Kings/1 64.05,24.21 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.05,31.81 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.19,39.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 50.68,39.05 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Jin Ironfist##61814
|tip He will randomly jump to players in your group.
Slay Jin Ironfist |scenariogoal 1/19223 |goto Crypt of Forgotten Kings/1 43.83,39.91
step
Follow the path |goto Crypt of Forgotten Kings/1 46.43,51.84 < 15 |walk
Go down the stairs |goto Crypt of Forgotten Kings/1 46.51,59.19 < 15 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Spawn of Hate##61709 |goto Crypt of Forgotten Kings/1 46.90,58.30
|tip Fight here until the Pool of Life is cleansed.
Cleanse the Pool of Life |scenariogoal 2/20882 |goto Crypt of Forgotten Kings/1 46.51,59.19
step
Go up the stairs |goto Crypt of Forgotten Kings/1 46.57,52.12 < 15
Follow the path |goto Crypt of Forgotten Kings/1 50.65,39.02 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.50,39.07 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.12,49.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.09,78.49 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.56,80.00 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.68,89.12 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.22,84.51 < 20 |walk
Follow the path |goto Crypt of Forgotten Kings/2 48.84,86.65 < 10 |walk
Go down the stairs |goto Crypt of Forgotten Kings/2 48.93,69.75 < 10 |walk
Kill enemies along the way
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
Find the source of evil |scenariogoal 3/21041 |goto Crypt of Forgotten Kings/2 48.93,69.75
step
Follow the path |goto Crypt of Forgotten Kings/2 46.21,55.13 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 36.83,38.27 < 10 |walk
Go up the stairs |goto Crypt of Forgotten Kings/2 36.80,29.73 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 43.86,27.72 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Abomination of Anger##61707
|tip Deathforce will pull you to him. Run out of the red circle that surrounds him as fast as possible to avoid instant death.
|tip He will create red clouds on the ground that move around during the fight. These should be avoided.
Slay the Abomination of Anger |scenariogoal 4/19225 |goto Crypt of Forgotten Kings/2 48.93,35.81
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Crypt of Forgotten Kings/2 48.93,35.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings (Heroic)",{
description="This guide will walk you through the \"Crypt of Forgotten Kings\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7522,7275,8311,8368,7276},
patch='50001',
model={48740,40884,42296},
startlevel=85,
endlevel=90,
mapid=481,
mopready=true
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me of the Crypt of Forgotten Kings (Heroic)."_ |script GossipFrame:SelectGossipOption(2)
Enter the Crypt of Forgotten Kings Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
Go down the stairs |goto Crypt of Forgotten Kings/1 64.05,24.21 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.05,31.81 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.19,39.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 50.68,39.05 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Jin Ironfist##61814
|tip He will randomly jump to players in your group.
Slay Jin Ironfist |scenariogoal 1/19223 |goto Crypt of Forgotten Kings/1 43.83,39.91
step
Follow the path |goto Crypt of Forgotten Kings/1 46.43,51.84 < 15 |walk
Go down the stairs |goto Crypt of Forgotten Kings/1 46.51,59.19 < 15 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Spawn of Hate##61709 |goto Crypt of Forgotten Kings/1 46.90,58.30
|tip Fight here until the Pool of Life is cleansed.
Cleanse the Pool of Life |scenariogoal 2/20882 |goto Crypt of Forgotten Kings/1 46.51,59.19
step
Go up the stairs |goto Crypt of Forgotten Kings/1 46.57,52.12 < 15
Follow the path |goto Crypt of Forgotten Kings/1 50.65,39.02 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.50,39.07 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.12,49.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.09,78.49 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.56,80.00 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.68,89.12 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.22,84.51 < 20 |walk
Follow the path |goto Crypt of Forgotten Kings/2 48.84,86.65 < 10 |walk
Go down the stairs |goto Crypt of Forgotten Kings/2 48.93,69.75 < 10 |walk
Kill enemies along the way
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
Find the source of evil |scenariogoal 3/21041 |goto Crypt of Forgotten Kings/2 48.93,69.75
step
Follow the path |goto Crypt of Forgotten Kings/2 46.21,55.13 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 36.83,38.27 < 10 |walk
Go up the stairs |goto Crypt of Forgotten Kings/2 36.80,29.73 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 43.86,27.72 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Abomination of Anger##61707
|tip Deathforce will pull you to him. Run out of the red circle that surrounds him as fast as possible to avoid instant death.
|tip He will create red clouds on the ground that move around during the fight. These should be avoided.
Slay the Abomination of Anger |scenariogoal 4/19225 |goto Crypt of Forgotten Kings/2 48.93,35.81
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Crypt of Forgotten Kings/2 48.93,35.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Greenstone Village",{
description="This guide will walk you through the \"Greenstone Village\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7265,7267,7266},
patch='50001',
model={41877},
startlevel=85,
endlevel=90,
mapid=880,
mopready=true
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of Greenstone Village."_ |script GossipFrame:SelectGossipOption(1)
Enter the Greenstone Village Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Meila |scenariogoal 1/19200 |goto Greenstone Village/0 63.25,52.93
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Swan |scenariogoal 1/19203 |goto Greenstone Village/0 55.61,56.47
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Scribe Rinji |scenariogoal 1/19202 |goto Greenstone Village/0 52.84,57.96
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Mayor Lin |scenariogoal 1/21336 |goto Greenstone Village/0 56.19,63.00
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Portly Shung |scenariogoal 1/19201 |goto Greenstone Village/0 59.39,69.20
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue La & Liupo |scenariogoal 1/19204 |goto Greenstone Village/0 62.17,67.28
step
kill Beast of Jade##66772
|tip Inside the building.
Save Tzu's Dojo |scenariogoal 2/19199 |goto Greenstone Village/0 50.68,70.56
step
clicknpc Burgled Barrel##62682
|tip Look for yellow dots on your minimap.
|tip After clicking a barrel, guide it back to Tzu's Dojo.
Return #6# Burgled Barrels |scenariogoal 3/19229 |goto Greenstone Village/0 52.14,68.37
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
clicknpc Barrel-Chest Huo##62988
Save Barrel-Chest Huo |scenariogoal 4/1244 |goto Greenstone Village/0 52.93,32.63
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
clicknpc Stonecutter Lon##62989
Save Stonecutter Lon |scenariogoal 4/19264 |goto Greenstone Village/0 57.08,30.25
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
clicknpc Kiri Jade-Eyes##62990
Save Kiri Jade-Eyes |scenariogoal 4/19265 |goto Greenstone Village/0 54.76,24.98
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
kill Vengeful Hui##61156
|tip It will come running out and attack.
Slay Vengeful Hui |scenariogoal 5/19205 |goto Greenstone Village/0 52.56,23.50
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Greenstone Village/0 52.56,23.50 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall",{
description="This guide will walk you through the \"Theramore's Fall\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7523,7526,7527},
patch='50001',
model={40317,25092,43673,40318,44011},
startlevel=85,
endlevel=90,
mapid=906,
mopready=true
},[[
step
Enter the Theramore's Fall Scenario |scenariostart
|tip You can queue for this in the dungeon finder.
step
kill Rok'nah Grunt##64732+
|tip Kill the enemies that approach.
Defend the Ship |scenariogoal 1/21020 |goto Theramore's Fall/0 69.25,73.55
step
kill Sky-Captain "Dashing" Dazrip##65609 |scenariogoal 2/21030 |count 1 |goto Theramore's Fall/0 59.63,64.16
|tip On the small ship.
step
clicknpc Leaking Oil Drum##65571
|tip On the small ship.
|tip Run off the ship quickly before it explodes.
|tip A group of enemies will attack you.
Torch the First Horde Ship |scenariogoal 2/19980 |count 1 |goto Theramore's Fall/0 59.42,64.83
step
Follow the path |goto Theramore's Fall/0 51.68,70.23 < 15 |walk
kill Captain Seahoof##65151 |scenariogoal 2/21030 |count 2 |goto Theramore's Fall/0 52.57,84.18
|tip It may be a different captain, this one often changes.
step
Board the ship |goto Theramore's Fall/0 52.85,87.09 < 7 |walk
clicknpc Leaking Oil Drum##65571
|tip On the small ship.
|tip Run off the ship quickly before it explodes.
Torch the Second Horde Ship |scenariogoal 2/19980 |count 2 |goto Theramore's Fall/0 50.74,84.91
step
Follow the path |goto Theramore's Fall/0 64.59,48.39 < 15 |walk
Board the ship |goto Theramore's Fall/0 74.99,48.26 < 7 |walk
kill Captain Korthok##65152 |scenariogoal 2/21030 |count 3 |goto Theramore's Fall/0 77.02,49.25
|tip On the small ship.
step
clicknpc Leaking Oil Drum##65571
|tip On the small ship.
|tip Run off the ship quickly before it explodes.
|tip A group of enemies will attack you.
Torch the third Horde Ship |scenariogoal 2/19980 |count 3 |goto Theramore's Fall/0 77.87,50.97
stickystart "Slay_Vicious_Wyverns"
step
kill Gash'nul##64900 |scenariogoal 3/21109 |goto Theramore's Fall/0 52.66,50.44
|tip During the fight, he will place a Storm Totem on the battlefield.
|tip Kill it or move away from it.
step
label "Slay_Vicious_Wyverns"
kill 2 Vicious Wyvern##64957 |scenariogoal 3/21110 |goto Theramore's Fall/0 52.66,50.44
step
talk Lady Jaina Proudmoore##64727
|tip Stand near her and wait for the dialogue to complete.
Locate Jaina |scenariogoal 4/21112 |goto Theramore's Fall/0 46.17,33.83
stickystart "Destroy_the_Gatecrusher"
step
Go up the hill |goto Theramore's Fall/0 40.40,30.96 < 10 |walk
click Stolen Standard
Recover the First Stolen Standard |scenariogoal 5/21114 |count 1 |goto Theramore's Fall/0 37.82,38.11
step
click Stolen Standard
Recover the Second Stolen Standard |scenariogoal 5/21114 |count 2 |goto Theramore's Fall/0 32.83,44.55
step
click Stolen Standard
Recover the Third Stolen Standard |scenariogoal 5/21114 |count 3 |goto Theramore's Fall/0 29.35,39.21
step
label "Destroy_the_Gatecrusher"
kill Gatecrusher##64479 |scenariogoal 5/21113 |goto Theramore's Fall/0 36.20,39.37
step
Go down the hill |goto Theramore's Fall/0 37.23,32.11 < 10 |walk
kill Warlord Rok'nah##65442 |scenariogoal 6/21115 |goto Theramore's Fall/0 46.15,33.79
|tip When you get close the event will begin.
|tip A wave of enemies will attack before the warlord appears.
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Theramore's Fall/0 46.15,33.79 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Unga Ingoo",{
description="This guide will walk you through completing the \"Unga Ingoo\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7249,7232,7231,7248,7239},
patch='50001',
model={42503},
startlevel=85,
endlevel=90,
mapid=882,
mopready=true
},[[
step
talk Brewmaster Bo##65289
|tip Bo walks around inside the building and on the beach.
accept The Funky Monkey Brew##31058 |goto Krasarang Wilds/0 51.81,77.15
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of Unga Ingoo."_ |script GossipFrame:SelectGossipOption(2)
Enter the Unga Ingoo scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Approach Brewmaster Bo |goto Unga Ingoo/0 51.92,86.44 < 5 |c
step
talk Brewmaster Bo##62467
Select _"Let's get going!"_ |script GossipFrame:SelectGossipOption(1)
Speak with Bo and Begin Following Him |goto Unga Ingoo/0 51.92,86.44 > 10 |c
|tip Follow him up the shore behind him.
step
Follow the path |goto Unga Ingoo/0 41.18,76.67 < 10 |walk
Kill enemies as Bo stops
|tip He will periodically stop and look at things.
Escort Brewmaster Bo |scenariogoal 1/19210 |goto Unga Ingoo/0 50.06,61.29
step
Kill Hozen enemies around this area
|tip Leave one party member behind to defend Brewmaster Bo or Hozen will steal brew.
|tip Defenders should use Inactive Beach Bombs and the Brew Defender cannon to help them fight off Hozen.
|tip "Hozen ships appear in the distance!" signal the approach of new enemies.
click Unga Keg##3365+, Unga Mug##3365+
|tip All over the island, tiny mugs and kegs are found near huts and other objects.
|tip The other two party members should run around the island and collect brew.
|tip Return to the cauldron every time you have 30+ stacks of brew.
Fill the Brewing Cauldron |scenariogoal 2/21304 |goto Unga Ingoo/0 50.08,61.96
|tip Special mobs and objects below generally drop 25 brew kegs.
Kill Ba-Bam at [46.43,64.38]
|tip Click the Zip Line to go to the ship.
Kill the Unga Totem at [60.57,71.30]
A big keg is at [79.66,54.03]
Unstable Keg and Unga Totem at [79.50,45.23]
|tip This cave has lots of brew inside.
|tip Click the unstable keg and run around to catch brew.
Rik Rik at [30.09,23.67]
step
Watch the dialogue
kill Captain Ook##62465
|tip He periodically casts Gonna Ook Ya. Move from the red circle.
|tip When he gets weak, a Scurvy-Curing Orange will spawn. Click it to pick it up and run away from Captain Ook.
Defeat Captain Ook |scenariogoal 3/20696 |goto Unga Ingoo/0 50.34,58.05
step
talk Brewmaster Bo##62491
turnin The Funky Monkey Brew##31058 |goto Unga Ingoo/0 49.56,60.70
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Unga Ingoo/0 49.56,60.70 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Assault on Zan'vess",{
description="This guide will walk you through the \"Assault on Zan'vess\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8016,8017},
patch='50001',
model={46500,29899},
startlevel=85,
endlevel=90,
mapid=883,
mopready=true
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Assault on Zan'vess."_ |script GossipFrame:SelectGossipOption(7)
Enter the Assault on Zan'vess Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
clicknpc Skyfire Gyrocopter##68115
Join the assault of Zan'vess |scenariogoal 1/22294 |goto Assault on Zan'vess/0 45.33,24.67
step
kill Sonic Control Tower##67279+
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Kyparite Quarry Sonic Control Towers |scenariogoal 2/22295 |goto Assault on Zan'vess/0 41.09,84.34
step
kill Zan'thik Guardian##67710+, Sonic Control Tower##67279+
|tip First, you must take out the Guardians channeling the shields.
|tip You will see yellow pools on the ground to indicate their location.
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Whispering Stone Sonic Control Towers |scenariogoal 2/22296 |goto Assault on Zan'vess/0 28.65,75.82
step
kill Scorpid Relocator##67784+, Sonic Control Tower##67279+
|tip First, you must take out the scorpids carrying the towers.
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Venomsting Pits Stone Sonic Control Towers |scenariogoal 2/22297 |goto Assault on Zan'vess/0 29.41,53.76
step
Follow the path |goto Assault on Zan'vess/0 50.34,45.32 < 15 |walk
Follow the path up |goto Assault on Zan'vess/0 50.56,53.05 < 15 |walk
kill Squad Leader Bosh##68143
|tip You can pull the group of enemies before Bosh without engaging him.
Defeat Squad Leader Bosh |scenariogoal 3/22483 |goto Assault on Zan'vess/0 51.00,55.69
step
Follow the path up |goto Assault on Zan'vess/0 48.49,55.32 < 15 |walk
Follow the path |goto Assault on Zan'vess/0 45.25,53.30 < 15 |walk
Follow the path |goto Assault on Zan'vess/0 42.25,53.66 < 15 |walk
Reach the Heart of Zan'vess |scenariogoal 3/22301 |goto Assault on Zan'vess/0 40.13,55.32
step
kill Commander Tel'vrak##67879
|tip Periodically, swarms of adds will engage.
|tip Use the special action ability "Strafing Run" to kill them.
|tip Move out of areas targeted on the ground.
Defeat Commander Tel'vrak |scenariogoal 4/22299 |goto Assault on Zan'vess/0 38.62,56.23
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Assault on Zan'vess/0 38.62,56.23 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\A Little Patience",{
description="This guide will walk you through the \"A Little Patience\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7988,7989,7990,7992,7993,7991},
patch='50001',
model={46813},
startlevel=85,
endlevel=90,
mapid=912,
mopready=true
},[[
step
talk Lyalia##64610
|tip You must complete a brief quest chain to accept the quest related to this scenario.
|tip You can pick up the initial quest, "Meet the Scout," from Lyalia outside of Shrine of Seven Stars.
|tip Complete the two following quests to unlock Lion's Landing.
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 83.99,58.66
step
talk Scout Lynna##68311
|tip Wait for the dialogue to complete
turnin Meet the Scout##32246 |goto Krasarang Wilds/0 85.24,29.13
step
talk King Varian Wrynn##61796
accept A King Among Men##32247 |goto Krasarang Wilds/0 85.29,29.11
step
Follow the path |goto Krasarang Wilds/0 84.09,26.19 < 15 |only if walking
Follow the path |goto Krasarang Wilds/0 81.64,25.58 < 15 |only if walking
talk Marshal Troteman##68331
Find Marshal Troteman |q 32247/2 |goto Krasarang Wilds/0 79.64,25.05
step
Follow the path |goto Krasarang Wilds/0 80.31,22.51 < 15 |only if walking
Follow the path |goto Krasarang Wilds/0 80.17,19.48 < 15 |only if walking
talk Hilda Hornswaggle##68312
Find Hilda Hornswaggle |q 32247/3 |goto Krasarang Wilds/0 80.43,17.53
step
Kill Horde enemies around this area
Kill #25# Horde |q 32247/1 |goto Krasarang Wilds/0 78.52,22.24
step
talk King Varian Wrynn##61796
|tip He is standing next to you.
turnin A King Among Men##32247
accept Lion's Landing##32109
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds/0 85.60,29.13
step
talk Admiral Taylor##67940
accept A Little Patience##32248 |goto Krasarang Wilds/0 89.55,32.58
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of how Varian and Tyrande learned a Little Patience."_ |script GossipFrame:SelectGossipOption(10)
Enter the A Little Patience Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
talk King Varian Wrynn##69026
turnin A Little Patience##32248 |goto A Little Patience/0 41.91,15.44
stickystart "info"
step
talk Duff McStrum##68057 |goto A Little Patience/0 39.04,23.11
talk Ferra Pearl##68599 |goto A Little Patience/0 36.65,16.27
talk Rosey Axlerod##67883 |goto A Little Patience/0 42.46,24.15
talk Elder Adler##67569 |goto A Little Patience/0 22.60,32.64
talk Master Brownstone##68240 |goto A Little Patience/0 48.41,22.12
|tip Only two allies will be available.
|tip About thirty seconds after entering the scenario, you can look on your world map for white dialogue icons to note their location.
Click here when you talk to the two available NPCs |confirm
step
When you initiate the instance, there will be random defense camps that spawn.
|tip Refer to your map to locate them.
|tip Occasionally, the defense camps will be attacked. Have 1 well geared player defend, while the others gathering resources.
Kill enemies around the area
Construct #2# Defenses |scenariogoal 1/22517
step
label "info"
Throughout this scenario, you will need to collect various objects
|tip Look for shining objects on the ground.
|tip Use these objects at the available construction sites to increase your progress.
step
kill Commander Scargash##68474
|tip If you do not outgear the encounter and are targeted by Blood Rage, run away.
|tip Occasionally, Scargash will use Crushing Leap, jumping to an area and knocking everyone nearby back.
Defeat Commander Scargash |scenariogoal 2/22461 |goto A Little Patience/0 47.51,60.60
step
'|script LeaveInstanceParty()
Leave the Scenario |goto A Little Patience/0 47.51,60.60 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Dagger in the Dark",{
description="This guide will walk you through the \"Dagger in the Dark\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8009,7987,7984,7986},
patch='50001',
model={46480,46111},
startlevel=85,
endlevel=90,
mapid=914,
mopready=true
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Dagger in the Dark that felled Vol'jin."_ |script GossipFrame:SelectGossipOption(9)
Enter the Dagger in the Dark Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
talk Vol'jin##67414
Select _"I'm ready. Let's go."_ |script GossipFrame:SelectGossipOption(1)
Speak to Vol'jin |scenariogoal 1/22282 |goto Dagger in the Dark/0 56.08,75.18
step
Follow the path |goto Dagger in the Dark/0 51.16,60.97 < 15 |walk
Find the Saurok Cave |scenariogoal 2/22281 |goto Dagger in the Dark/0 52.48,46.41
step
Kill Darkhatched enemies around this area
Defeat the Saurok Patrol |scenariogoal 3/22416 |goto Dagger in the Dark/0 52.28,44.09
step
kill Darkhatched Lizard-Lord##67263
Defeat the Darkhatched Lizard-Lord |scenariogoal 3/22238 |goto Dagger in the Dark/0 52.06,44.51
step
Watch the dialogue
clicknpc The Spring Saurok-Slayer##67706
|tip Wait a moment for the boat to be repaired.
Jump in the Boat |invehicle |goto Dagger in the Dark/0 51.84,43.05
step
kill Darkhatched Sorcerer##67748
|tip Kill Sorcerers along the way to maintain your progress.
Complete the Boat Ride |scenariogoal 4/22284 |goto Dagger in the Dark/1 50.34,51.15
step
Find the Saurok Hatchery |scenariogoal 5/22287 |goto Dagger in the Dark/1 56.61,31.95
step
kill Broodmaster Noshi##67264
|tip Use Flamethrower when you get swarmed by Darkhatched Swarmlings.
Defeat Broodmaster Noshi |scenariogoal 6/22239 |goto Dagger in the Dark/1 53.00,24.89
step
Watch the dialogue
clicknpc Broken Mogu Tablet##67863
|tip Wait for the dialogue to complete.
Investigate the West Statue |scenariogoal 7/22288 |goto Dagger in the Dark/1 51.49,34.17 |future
step
clicknpc Broken Mogu Tablet##67863
Investigate the East Statue |scenariogoal 7/22289 |goto Dagger in the Dark/1 54.91,16.32
step
Watch the dialogue
kill Rak'gor Bloodrazor##67266
|tip Wait for the dialogue to complete.
|tip Rak'gor will place a Gas Bomb on the ground that you will need to move out of.
Defeat Rak'gor Bloodrazor |scenariogoal 8/22240 |goto Dagger in the Dark/1 53.54,26.34
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Dagger in the Dark/1 53.54,26.34 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Lion's Landing",{
description="This guide will walk you through the \"Lion's Landing\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8010,8011,8012},
patch='50001',
model={46221},
startlevel=85,
endlevel=90,
mapid=911,
mopready=true
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the defense of Lion's Landing."_ |script GossipFrame:SelectGossipOption(11)
Enter the Lion's Landing Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Kill Bloodhilt enemies around this area
talk Daggin Windbeard##68581
|tip Kill any enemies attacking him to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Join Daggin Windbeard |scenariogoal 1/22463 |goto Lion's Landing/0 79.92,78.82
step
Follow the path down |goto Lion's Landing/0 72.98,79.15 < 10 |walk
talk Admiral Taylor##68685
|tip Kill any enemies attacking him to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Join Admiral Taylor |scenariogoal 2/22466 |goto Lion's Landing/0 69.07,69.32
step
Kill enemies around this area
Slay the South Attackers |scenariogoal 3/22484 |goto Lion's Landing/0 70.63,64.25
step
Kill enemies around this area
Slay the East Attackers |scenariogoal 3/22485 |goto Lion's Landing/0 73.17,60.24
step
Kill enemies around this area
Slay the West Attackers |scenariogoal 3/22486 |goto Lion's Landing/0 69.35,57.84
step
talk High Marshal Twinbraid##68851
Select _"We're here to help."_ |script GossipFrame:SelectGossipOption(1)
Locate High Marshal Twinbraid |scenariogoal 4/22488 |goto Lion's Landing/0 67.61,49.47
step
kill Uduji##67434
Slay the Assault Commander |scenariogoal 4/22487 |goto Lion's Landing/0 65.48,51.71
step
talk Amber Kearnen##68871
|tip Kill any enemies attacking her to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Gather Amber's Report |scenariogoal 5/22493 |goto Lion's Landing/0 73.19,51.23
step
talk Sully "The Pickle" McLeary##68883
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Gather Sully's Report |scenariogoal 5/22495 |goto Lion's Landing/0 74.94,61.37
step
Enter the building |goto Lion's Landing/0 73.27,66.21 < 10 |walk
talk Mishka##68870
|tip Inside the building.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Gather Mishka's Report |scenariogoal 5/22494 |goto Lion's Landing/0 75.09,70.74
step
clicknpc Place Boomsticks Here!##68885
Place the Boomsticks |scenariogoal 6/22498 |goto Lion's Landing/0 66.74,53.24
step
clicknpc Place Rockets Here!##68886
Place the Rockets |scenariogoal 6/22496 |goto Lion's Landing/0 66.83,52.76
step
clicknpc Place Bombs Here!##68884
Place the Bombs |scenariogoal 6/22497 |goto Lion's Landing/0 67.14,52.34
step
Kill the approaching enemies
Defeat the First Wave of Enemies |scenariogoal 7/22489 |goto Lion's Landing/0 65.34,51.58
step
Kill the approaching enemies
Defeat the Second Wave of Enemies |scenariogoal 7/22490 |goto Lion's Landing/0 65.34,51.58
step
Kill the approaching enemies
Defeat the Third Wave of Enemies |scenariogoal 7/22491 |goto Lion's Landing/0 65.34,51.58
step
kill Sunwalker Chagon##67548
Slay the Horde Commander |scenariogoal 7/22492 |goto Lion's Landing/0 65.34,51.58
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Lion's Landing/0 65.34,51.58 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
