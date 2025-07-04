local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling\\Mists of Pandaria Quest Stacking\\Launch Preparation Guide",{
author="support@zygorguides.com",
description="This guide will walk you through preparing a quest stack for MoP release",
},[[
step
_NOTE:_
This is the preparation guide for Quest Stacking for MoP.
|tip The goal of this guide is for you to have quests ready to turn in when MoP launches for easy experience.
|tip We will release a separate guide closer to June 21st that walks you through turning in these quests.
|tip That guide is removed for now to prevent anyone accidentally turning in their quests, be sure to update your guides before launch day.
|tip It is advised to have an empty quest log, or as close to empty as possible, before starting this guide.
|confirm Click Here To Continue
step
label "Reset"
_IMPORTANT_
Ensure you turn off any auto quest turnin features before continuing this guide!
|tip Turn this setting off in Zygor and other popular addons such as Questie, Leatrix etc
|tip You do not want to be stacking quests and accidentally have them turned in close to launch day.
|tip This guide may also take several days to a week to fully complete due to the random nature of some quests.
|confirm Click Here Once You're Ready
step
talk Sergeant Gray##48254
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept Bomb's Away!##28275 |goto Tol Barad Peninsula/0 72.9,60.9
accept Cannonball!##27987 |goto Tol Barad Peninsula/0 72.9,60.9
accept Ghostbuster##27978 |goto Tol Barad Peninsula/0 72.9,60.9
accept Taking the Overlook Back##27991 |goto Tol Barad Peninsula/0 72.9,60.9
accept WANTED: Foreman Wellson##27975 |goto Tol Barad Peninsula/0 72.9,60.9
accept Watch Out For Splinters!##27973 |goto Tol Barad Peninsula/0 72.9,60.9
|noquest
step
talk Commander Marcus Johnson##47240
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept Claiming The Keep##28059 |goto Tol Barad Peninsula/0 73.4,59.2
accept Leave No Weapon Behind##28063 |goto Tol Barad Peninsula/0 73.4,59.2
accept Not The Friendliest Town##28130 |goto Tol Barad Peninsula/0 73.4,59.2
accept Teach A Man To Fish.... Or Steal##28137 |goto Tol Barad Peninsula/0 73.4,59.2
accept Walk A Mile In Their Shoes##28065 |goto Tol Barad Peninsula/0 73.4,59.2
|noquest
step
talk Camp Coordinator Brack##48255
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept A Sticky Task##27948 |goto Tol Barad Peninsula/0 73.7,57.6
accept Boosting Morale##27972 |goto Tol Barad Peninsula/0 73.7,57.6
accept Captain P. Harris##27970 |goto Tol Barad Peninsula/0 73.7,57.6
accept Rattling Their Cages##27971 |goto Tol Barad Peninsula/0 73.7,57.6
accept Shark Tank##28050 |goto Tol Barad Peninsula/0 73.7,57.6
accept Thinning the Brood##27944 |goto Tol Barad Peninsula/0 73.7,57.6
|noquest
step
talk Lieutenant Farnsworth##48250
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept Finish The Job##28046 |goto Tol Barad Peninsula/0 74.8,59.6
accept First Lieutenant Connor##27967 |goto Tol Barad Peninsula/0 74.8,59.6
accept Magnets, How Do They Work?##27992 |goto Tol Barad Peninsula/0 74.8,59.6
accept Salvaging the Remains##27966 |goto Tol Barad Peninsula/0 74.8,59.6
accept The Forgotten##27949 |goto Tol Barad Peninsula/0 74.8,59.6
|noquest
stickystart "largosghosts"
step
Follow the path up |goto Tol Barad Peninsula/0 74.3,42.8 < 10 |only if walking
kill Commander Largo##47304 |q 27991/1 |goto Tol Barad Peninsula/0 78.6,42.0
|tip He's at the top of the tower.
step
label "largosghosts"
Kill enemies around this area |kill Overlook Spectre##47182, Ghastly Worker##47183, Overlook Spirit##47181
Slay #14# Largo's Overlook Ghosts |q 27978/1 |goto Tol Barad Peninsula/0 78.2,49.0
|only if haveq(27978)
step
click Cannonball Stack##176215
collect 4 Stack of Cannonballs##62818 |q 27987/1 |goto Tol Barad Peninsula/0 78.2,49.0
|only if haveq(27987)
step
click String of Fish##206754
|tip They look like small fish hanging from simple wooden structures on the docks around this area.
collect 22 Rustberg Seabass##63047 |q 28137/1 |goto Tol Barad Peninsula/0 67.72,23.63
step
Kill enemies around this area |kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28130/1 |goto Tol Barad Peninsula/0 67.6,37.1
|only if haveq(28130)
stickystart "stickysilk"
step
kill 12 Darkwood Lurker##46508+ |q 27944/1 |goto Tol Barad Peninsula/0 54.2,47.0
|only if haveq(27944)
step
label "stickysilk"
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 27948/1 |goto Tol Barad Peninsula/0 54.2,47.0
|only if haveq(27948)
step
kill Captain P. Harris##47287 |q 27970/1 |goto Tol Barad Peninsula/0 47.9,8.1
|tip He's walking around on this broken boat.
|only if haveq(27970)
step
kill Tank##46608 |q 28050/1 |goto Tol Barad Peninsula/0 49.4,19.8
|tip He's an elite shark that swims in the water around this area.
|tip This is a group quest, so you will probably need help.
|only if haveq(28050)
step
click Barrel of Southsea Rum##206580
collect 6 Barrel of Southsea Rum##62810 |q 27972/1 |goto Tol Barad Peninsula/0 49.4,19.8
|only if haveq(27972)
step
kill 8 Shipwrecked Sailor##46605+ |q 27971/1 |goto Tol Barad Peninsula/0 49.0,29.4
|only if haveq(27971)
step
kill Keep Lord Farson##47447 |q 28059/1 |goto Tol Barad Peninsula/0 36.1,27.3
|tip He's upstairs in the fort.
|only if haveq(28059)
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28065/1 |goto Tol Barad Peninsula/0 37.8,29.1
|tip Follow the Farson Hold Prisoner and protect him.
|only if haveq(28065)
step
click Rack of Rifles##206664
collect 12 Rusty Rifle##62921 |q 28063/1 |goto Tol Barad Peninsula/0 41.2,35.8
|only if haveq(28063)
step
kill Foreman Wellson##46648 |q 27975/1 |goto Tol Barad Peninsula/0 27.2,47.7
|only if haveq(27975)
step
clicknpc Wellson Cannon##48283
|tip Shoot the boats.
Destroy #10# Wellson Supply Boats |q 28275/1 |goto Tol Barad Peninsula/0 22.2,36.3
|only if haveq(28275)
step
click Shipyard Lumber##206583
collect 15 Shipyard Lumber##62811 |q 27973/1 |goto Tol Barad Peninsula/0 30.1,43.9
|only if haveq(27973)
stickystart "Kill_Restless_Infantry"
step
use the Magnatized Scrap Collector##62829
click Siege Scrap##206652
collect 7 Siege Engine Scrap##52285 |q 27992/1 |goto Tol Barad Peninsula/0 40.2,57.9
|only if haveq(27992)
step
label "Kill_Restless_Infantry"
kill 5 Restless Infantry##46823 |q 28046/1 |goto Tol Barad Peninsula/0 40.2,57.9
|only if haveq(28046)
step
kill First Lieutenant Connor##46571 |q 27967/1 |goto Tol Barad Peninsula/0 38.4,77.6
|only if haveq(27967)
stickystart "Release_Tortured_Souls"
step
Kill enemies around this area |kill Wandering Soul##46586, Forgotten Ghoul##46569
collect 9 Cursed Femur##62808 |q 27966/1 |goto Tol Barad Peninsula/0 38.1,71.5
|only if haveq(27966)
step
label "Release_Tortured_Souls"
click Forgotten Soldier's Tombstone##206570
Release #6# Tortured Souls |q 27949/1 |goto Tol Barad Peninsula/0 38.1,71.5
|only if haveq(27949)
step
The following daily quests will only be available if the Alliance faction currently controls Tol Barad
Click here to continue |confirm
Click here if your faction does not control Tol Barad |confirm |next "end"
step
talk Sergeant Parker##48066
accept A Huge Problem##28122 |goto Tol Barad/0 50.9,49.7
accept Swamp Bait##28162 |goto Tol Barad/0 50.9,49.7
accept The Leftovers##28163 |goto Tol Barad/0 50.9,49.7
step
goto Tol Barad/0 51.4,49.6
Click here if 2nd Lieutenant Wansworth is present |confirm |next "wansworth_is_here"
Click here if Commander Stevens is present |confirm |next "stevens_is_here"
Click here if Marshal Fallows is present |confirm |next "fallows_is_here"
|tip Only one of these NPCs will be available
step
label "wansworth_is_here"
talk 2nd Lieutenant Wansworth##48061
accept D-Block##28165 |goto Tol Barad/0 51.4,49.6
accept Svarnos##28185 |goto Tol Barad/0 51.4,49.6
accept Cursed Shackles##28186 |goto Tol Barad/0 51.4,49.6
|next "exit"
step
label "stevens_is_here"
talk Commander Stevens##48039
accept Clearing the Depths##28117 |goto Tol Barad/0 51.5,49.5
accept Learning From The Past##28120 |goto Tol Barad/0 51.5,49.5
accept The Imprisoned Archmage##28118 |goto Tol Barad/0 51.5,49.5
|next "exit"
step
label "fallows_is_here"
goto Tol Barad/0 51.5,49.6
talk Marshal Fallows##48074
accept Food From Below##28232
accept Prison Revolt##28188
accept The Warden##28223
|next "exit"
step
label "exit"
Continuing...
step
Enter the underground jail |goto Tol Barad/0 42.7,39.1 < 10 |walk
|only if haveq(28185) or haveq(28165) or haveq(28186)
stickystart "Slay_Demons"
stickystart "Collect_Cursed_Shackles"
step
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28185/1 |goto Tol Barad/0 48.3,30.7
|only if haveq(28185)
step
label "Slay_Demons"
Kill enemies around this area |kill Imprisoned Imp##47549, Cell Watcher##47542, Shivan Destroyer##47540, Jailed Wrathguard##47548
Slay #10# Demons |q 28165/1 |goto Tol Barad/0 44.4,30.5
|only if haveq(28165)
step
label "Collect_Cursed_Shackles"
click Cursed Shackle##181
collect 8 Cursed Shackles##63149 |q 28186/1 |goto Tol Barad/0 44.4,30.5
|only if haveq(28186)
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28162/1 |goto Tol Barad/0 42.1,41.8
|only if haveq(28162)
step
Enter the underground jail |goto Tol Barad/0 44.0,69.2 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28223/1 |goto Tol Barad/0 37.5,71.7
|only if haveq(28223)
step
Kill enemies around this area |kill Imprisoned Worker##47550, Exiled Mage##47552
Slay #10# Prisoners |q 28188/1 |goto Tol Barad/0 40.9,78.2
|only if haveq(28188)
step
click Crate of Cellblock Rations##206996
collect 12 Cellblock Ration##63315 |q 28232/1 |goto Tol Barad/0 40.9,78.2
|only if haveq(28232)
step
Enter the underground jail |goto Tol Barad/0 60.8,50.1 |walk
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28118/1 |goto Tol Barad/0 56.8,54.8
|only if haveq(28118)
stickystart "Collect_Dusty_Journal"
step
Kill enemies around this area |kill Captive Spirit##47531, Ghastly Convict##47590
Slay #9# Ghosts |q 28117/1 |goto Tol Barad/0 51.4,49.5
|only if haveq(28117)
step
label "Collect_Dusty_Journal"
click Dusty Prison Journal##206890
collect 4 Dusty Prison Journal##63034 |q 28120/1 |goto Tol Barad/0 51.4,49.5
|only if haveq(28120)
step
Kill enemies around this area |kill Horde Mage Infantry##47608, Horde Shaman Infantry##47610, Horde Rogue Infantry##47609, Horde Druid Infantry##47607
Kill #12# Horde Infantry |q 28163/1 |goto Tol Barad/0 51.1,29.7
|only if haveq(28163)
step
kill Problim##47593 |q 28122/1 |goto Tol Barad/0 52.8,36.7
|tip He patrols around Baradin Hold.
|only if haveq(28122)
step
label "end"
Wait for Daily Quests to Reset
|tip Open this guide again tomorrow to try for more daily quests.
|tip If it is close to launch day and you still do not have a full quest log, it is not advised to fill your log with quests elsewhere.
|tip The time to travel elsewhere is not worthwhile compared to turning in the quests you have and then leveling in Jade Forest.
'|complete not completedq(28275,27987,27978,27991,27975,27973,28059,28063,28130,28137,28065,27948,27972,27970,27971,28050,27944,28046,27967,27992,27966,27949,28122,28162,28163,28165,28185,28186,28117,28120,28118,28232,28188,28223)
Click here to return to the beginning of the guide |confirm |next "Reset"
]])
