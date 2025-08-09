local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHMOP") then return end
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
model={43098,43661,43204},
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
model={48740,40884},
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
model={48740,40884},
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
achieveid={7529,7530,7524},
patch='50001',
model={40312,25341,40278,40589,40587,40352,40346},
startlevel=85,
endlevel=90,
mapid=906,
mopready=true
},[[
step
Enter the Theramore's Fall Scenario |scenariostart
|tip You can queue for this in the dungeon finder.
step
Follow the path |goto Theramore's Fall H/0 61.39,52.93 < 20 |walk
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the First Powder Barrel |scenariogoal 1/22180 |count 1 |goto Theramore's Fall H/0 61.84,68.72
step
kill Captain Tellern##59088 |scenariogoal 1/22381 |count 1 |goto Theramore's Fall H/0 65.45,63.02 |noordinal
|tip He walks around on the deck of the ship.
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the second Powder Barrel |scenariogoal 1/22180 |count 2 |goto Theramore's Fall H/0 66.17,64.15
step
Follow the path |goto Theramore's Fall H/0 72.29,70.83 < 15 |walk
kill Squallshaper Lanara##58948 |scenariogoal 1/22381 |count 2 |goto Theramore's Fall H/0 73.58,62.02 |noordinal
|tip On the ship.
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Third Powder Barrel |scenariogoal 1/22180 |count 3 |goto Theramore's Fall H/0 73.19,62.18
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Fourth Powder Barrel |scenariogoal 1/22180 |count 4 |goto Theramore's Fall H/0 73.24,76.47
step
Follow the path |goto Theramore's Fall H/0 58.11,58.48 < 15 |walk
Follow the path |goto Theramore's Fall H/0 56.54,77.83 < 15 |walk
kill "Mad" Morden Morgrensen##59086 |scenariogoal 1/22381 |count 3 |goto Theramore's Fall H/0 51.66,87.26 |noordinal
|tip He walks around on the deck of the ship.
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Fifth Powder Barrel |scenariogoal 1/22180 |count 5 |goto Theramore's Fall H/0 50.29,86.05
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Sixth Powder Barrel |scenariogoal 1/22180 |count 6 |goto Theramore's Fall H/0 58.62,73.51
step
talk Blastmaster Sparkfuse##58765
Select _"We've rigged the powder barrels in every ship."_ |script GossipFrame:SelectGossipOption(1)
Inform Blastmaster Sparkfuse |scenariogoal 2/19989 |goto Theramore's Fall H/0 57.72,57.69
stickystart "Slay_Theramore_Gryphons"
step
kill Baldruc##58777 |scenariogoal 3/19981 |goto Theramore's Fall H/0 50.37,46.80
|tip During the fight, he will place a Storm Totem on the battlefield.
|tip Kill it or move away from it.
step
label "Slay_Theramore_Gryphons"
kill 2 Theramore Gryphon##58782+ |scenariogoal 3/19982 |goto Theramore's Fall H/0 50.37,46.80
step
kill Big Bessa##58787 |scenariogoal 4/19983 |goto Theramore's Fall H/0 34.77,40.55
|tip It moves up and down the road.
step
clicknpc Unmanned Tank##58788
|tip Run away before it explodes.
Sabotage the First Unmanned Tank |scenariogoal 4/19980 |count 1 |goto Theramore's Fall H/0 32.89,36.91
step
clicknpc Unmanned Tank##58788
|tip Run away before it explodes.
Sabotage the Second Unmanned Tank |scenariogoal 4/19980 |count 2 |goto Theramore's Fall H/0 29.05,38.00
step
clicknpc Unmanned Tank##58788
|tip Run away before it explodes.
Sabotage the Third Unmanned Tank |scenariogoal 4/19980 |count 3 |goto Theramore's Fall H/0 30.02,45.64
step
Enter the building |goto Theramore's Fall H/0 53.07,34.77 < 10 |walk
Run up the stairs |goto Theramore's Fall H/0 54.32,38.36 < 5 |walk
Run up the ramp |goto Theramore's Fall H/0 51.92,37.12 < 5 |walk
kill Hedric Evencane##58840 |scenariogoal 5/19987 |goto Theramore's Fall H/0 53.88,37.27
|tip Upstairs inside the building.
step
collect Arcane Shackles Key##79261 |scenariogoal 5/21241 |goto Theramore's Fall H/0 53.88,37.27
|tip Loot it from Hedric's corpse.
step
Run down the ramp |goto Theramore's Fall H/0 51.92,37.12 < 5 |walk
Run down the stairs |goto Theramore's Fall H/0 54.32,38.36 < 5 |c |walk
step
Run down the stairs |goto Theramore's Fall H/0 53.14,37.36 < 3 |walk
talk Thalen Songweaver##58816
Choose _<Unlock the shackles.>_ |script GossipFrame:SelectGossipOption(1)
Free Thalen Songweaver |scenariogoal 5/19988 |goto Theramore's Fall H/0 54.49,36.37
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Theramore's Fall H/0 54.49,36.37 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
|tip Thalen will also open a Return Portal after his cast.
|tip This portal leads to Orgrimmar.
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
