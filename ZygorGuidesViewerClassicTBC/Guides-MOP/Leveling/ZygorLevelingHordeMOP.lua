local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHMOP") then return end
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
talk 3rd Officer Kronkar##48360
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept A Sticky Task##28684 |goto Tol Barad Peninsula 55.2,81.3
accept Boosting Morale##28680 |goto Tol Barad Peninsula 55.2,81.3
accept Captain P. Harris##28678 |goto Tol Barad Peninsula 55.2,81.3
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula 55.2,81.3
accept Shark Tank##28681 |goto Tol Barad Peninsula 55.2,81.3
accept Thinning the Brood##28683 |goto Tol Barad Peninsula 55.2,81.3
|noquest
step
talk Commander Larmash##48358
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept Claiming The Keep##28682 |goto Tol Barad Peninsula 53.5,80.6
accept Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.5,80.6
accept Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.5,80.6
accept Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.5,80.6
accept Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.5,80.6
|noquest
step
talk Captain Prug##48363
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept Finish The Job##28693 |goto Tol Barad Peninsula 54.9,79.3
accept First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.9,79.3
accept Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.9,79.3
accept Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.9,79.3
accept The Forgotten##28689 |goto Tol Barad Peninsula 54.9,79.3
|noquest
step
talk Private Sarlosk##48361
|tip They offer a different set of dailies each day.
|tip Come back another day if you still need more quests from this step.
accept Bomb's Away!##28696 |goto Tol Barad Peninsula 55.8,78.5
accept Cannonball!##28698 |goto Tol Barad Peninsula 55.8,78.5
accept Ghostbuster##28697 |goto Tol Barad Peninsula 55.8,78.5
accept Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.8,78.5
accept WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.8,78.5
accept Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.8,78.5
|noquest
step
Follow the path up |goto Tol Barad Peninsula 74.3,42.8 < 10
|only if haveq(28700) or haveq(28697) or haveq(28698)
stickystart "cannonstack"
step
kill Commander Largo##47304 |q 28700/1 |goto Tol Barad Peninsula 78.6,42.0 |tip He's at the top of the tower.
|only if haveq(28700)
step
label "cannonstack"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+ |only if haveq(28697)
Slay #14# Largo's Overlook Ghosts |q 28697/1 |goto Tol Barad Peninsula 78.2,49.0 |only if haveq(28697)
Click Stacks of Cannonballs  |only if haveq(28698)
|tip They look like piles of cannonballs shaped like pyramids on the ground around this area. |only if haveq(28698)
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto Tol Barad Peninsula 78.2,49.0 |only if haveq(28698)
|only if haveq(28697) or haveq(28698)
step
Click Strings of Fish
|tip They look like small fish hanging from simple wooden structures on the docks around this area.
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto Tol Barad Peninsula 69.3,23.1
|only if haveq(28687)
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto Tol Barad Peninsula 67.6,37.1
|only if haveq(28686)
step
kill 12 Darkwood Lurker##46508 |q 28683/1 |goto Tol Barad Peninsula 54.2,47.0 |only if haveq(28683)
kill Darkwood Broodmother##46507+ |only if haveq(28684)
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto Tol Barad Peninsula 54.2,47.0 |only if haveq(28684)
|only if haveq(28683) or haveq(28684)
step
kill Captain P. Harris##47287 |q 28678/1 |goto Tol Barad Peninsula 47.9,8.1
|tip He's walking around on this broken boat.
|only if haveq(28678)
step
kill Tank##46608 |q 28681/1 |goto Tol Barad Peninsula 49.4,19.8 |only if haveq(28681)
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help. |only if haveq(28681)
Click Barrels of Southsea Rum |only if haveq(28680)
|tip They look like barrels underwater around this area. |only if haveq(28680)
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto Tol Barad Peninsula 49.4,19.8 |only if haveq(28680)
|only if haveq(28681) or haveq(28680)
step
kill 8 Shipwrecked Sailor##46605 |q 28679/1 |goto Tol Barad Peninsula 49.0,29.4
|only if haveq(28679)
step
kill Keep Lord Farson##47447 |q 28682/1 |goto Tol Barad Peninsula 36.1,27.3
|tip He's upstairs in the fort.
|only if haveq(28682)
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto Tol Barad Peninsula 37.8,29.1
|tip Follow the Farson Hold Prisoner and protect him.
|only if haveq(28721)
step
Click Racks of Rifles
|tip They look like wooden stands with guns on them around this area.
collect 12 Rusty Rifle##62921 |q 28685/1 |goto Tol Barad Peninsula 41.2,35.8
|only if haveq(28685)
step
kill Foreman Wellson##46648 |q 28695/1 |goto Tol Barad Peninsula 27.2,47.7
|only if haveq(28695)
step
Click a Cannon
|tip They look like black cannons on this small dock.
Shoot the boats
Destroy #10# Wellson Supply Boats |q 28696/1 |goto Tol Barad Peninsula 22.2,36.3
|only if haveq(28696)
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto Tol Barad Peninsula 30.1,43.9
|only if haveq(28694)
step
kill 5 Restless Soldier##46825 |q 28693/1 |goto Tol Barad Peninsula 40.2,57.9 |only if haveq(28693)
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829 |only if haveq(28692)
Click Siege Scraps |only if haveq(28692)
|tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector. |only if haveq(28692)
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto Tol Barad Peninsula 40.2,57.9 |only if haveq(28692)
|only if haveq(28693) or haveq(28692)
stickystart "torturedsouls"
step
kill First Lieutenant Connor##46571 |q 28691/1 |goto Tol Barad Peninsula 38.4,77.6
|tip He's a big skeleton that walks around this area, so you may need to search for him.
|only if haveq(28691)
step
label "torturedsouls"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+ |only if haveq(28690)
collect 9 Cursed Femur##62808 |q 28690/1 |goto Tol Barad Peninsula 38.1,71.5 |only if haveq(28690)
Click Forgotten Soldier's Tombstones |only if haveq(28689)
|tip They look like taller and slimmer gravestones around this area. |only if haveq(28689)
Release #6# Tortured Souls |q 28689/1 |goto Tol Barad Peninsula 38.1,71.5 |only if haveq(28689)
|only if haveq(28690) or haveq(28689)
step
The following daily quests will only be available if the Horde faction currently controls Tol Barad.
Click here to continue |confirm
Click here if your faction does not control Tol Barad |confirm |next "end"
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad 50.9,49.7
accept Swamp Bait##28658 |goto Tol Barad 50.9,49.7
accept The Leftovers##28659 |goto Tol Barad 50.9,49.7
|noquest
step
Click here if Staff Sergeant Lazgar is present |goto Tol Barad 51.4,49.6 |confirm |next "lazgar_is_here"
Click here if Drillmaster Razgoth is present |goto Tol Barad 51.4,49.6 |confirm |next "razgoth_is_here"
Click here if Private Garnoth is present |goto Tol Barad 51.4,49.6 |confirm |next "garnoth_is_here"
|only one of these NPCs will be available
step
label "razgoth_is_here"
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto Tol Barad 51.5,49.7
accept Svarnos##28664 |goto Tol Barad 51.5,49.7
accept Cursed Shackles##28665 |goto Tol Barad 51.5,49.7
|next "exit"
step
label "garnoth_is_here"
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto Tol Barad 51.5,49.7
accept Learning From The Past##28662 |goto Tol Barad 51.5,49.7
accept The Imprisoned Archmage##28661 |goto Tol Barad 51.5,49.7
|next "exit"
step
label "lazgar_is_here"
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto Tol Barad 51.5,49.7
accept Prison Revolt##28668 |goto Tol Barad 51.5,49.7
accept The Warden##28669 |goto Tol Barad 51.5,49.7
|next "exit"
step
label "exit"
Continuing...
step
Enter the underground jail |goto Tol Barad 42.7,39.1 < 10
|only if haveq(28664) or haveq(28663) or haveq(28665)
stickystart "cursedshackles"
step
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto Tol Barad 48.3,30.7
|only if haveq(28664)
step
label "cursedshackles"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+ |only if haveq(28663)
Slay #10# Demons |q 28663/1 |goto Tol Barad 44.4,30.5 |only if haveq(28663)
Click Cursed Shackles |only if haveq(28665)
|tip They look like gray metal ball and chains laying on the ground all around this area. |only if haveq(28665)
collect 8 Cursed Shackles##63149 |q 28665/1 |goto Tol Barad 44.4,30.5 |only if haveq(28665)
|only if haveq(28663) or haveq(28665)
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto Tol Barad 42.1,41.8
|only if haveq(28658)
step
Enter the underground jail |goto Tol Barad 44.0,69.2 < 10
|only if haveq(28669) or haveq(28668) or haveq(28670)
step
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto Tol Barad 37.5,71.7
|only if haveq(28669)
step
kill Imprisoned Worker##47550+, Exiled Mage##47552+ |only if haveq(28668)
Slay #10# Prisoners |q 28668/1 |goto Tol Barad 40.9,78.2 |only if haveq(28668)
Click Crates of Cellblock Rations |only if haveq(28670)
|tip They look like slim square wooden boxes on the ground around this area. |only if haveq(28670)
collect 12 Cellblock Ration##63315 |q 28670/1 |goto Tol Barad 40.9,78.2 |only if haveq(28670)
|only if haveq(28668) or haveq(28670)
step
Enter the underground jail |goto Tol Barad 60.8,50.1 < 10
|only if haveq(28661)
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto Tol Barad 56.8,54.8
|only if haveq(28661)
step
kill Captive Spirit##47531+, Ghastly Convict##47590+ |only if haveq(28660)
Slay #9# Ghosts |q 28660/1 |goto Tol Barad 51.4,49.5 |only if haveq(28660)
Click Dusty Prison Journals |only if haveq(28662)
|tip They are books laying on the ground around this area. |only if haveq(28662)
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto Tol Barad 51.4,49.5 |only if haveq(28662)
|only if haveq(28660) or haveq(28662)
step
kill Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
kill 12 Alliance Infantry |q 28659/1 |goto Tol Barad 35.8,67.8
|only if haveq(28659)
step
kill Problim##47593 |q 28657/1 |goto Tol Barad 52.8,36.7
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
|only if haveq(28657)
step
label "end"
Wait for Daily Quests to Reset
|tip Open this guide again tomorrow to try for more daily quests.
|tip If it is close to launch day and you still do not have a full quest log, it is not advised to fill your log with quests elsewhere.
|tip The time to travel elsewhere is not worthwhile compared to turning in the quests you have and then leveling in Jade Forest.
Click here to return to the beginning of the guide |confirm |next "Reset"
]])
