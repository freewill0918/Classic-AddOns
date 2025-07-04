local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria (85-90)\\Pandaria Scenarios\\Theramore's Fall",{
description="This guide will walk you through the \"Theramore's Fall\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7529,7530,7524},
patch='50001',
model={40312,25341,40278,40589,40587,40352,40346},
startlevel=85,
endlevel=90,
mapid=906,
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
