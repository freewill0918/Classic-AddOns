local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ScenarioAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria (85-90)\\Pandaria Scenarios\\Theramore's Fall",{
description="This guide will walk you through the \"Theramore's Fall\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7523,7526,7527},
patch='50001',
model={40317,25092,43673,40318,44011},
startlevel=85,
endlevel=90,
mapid=906,
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
