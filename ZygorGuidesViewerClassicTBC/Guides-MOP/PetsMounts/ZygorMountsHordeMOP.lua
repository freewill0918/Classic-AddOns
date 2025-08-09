local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Black Dragon Turtle",{
keywords={"black","dragon","turtle","ground","mount"},
model={43717},
mounts={127286},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Black Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127286) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Black Dragon Turtle##91008 |goto Orgrimmar/1 69.85,41.16 |or
'|complete hasmount(127286) |or
step
use the Reins of the Black Dragon Turtle##91008
learnmount Black Dragon Turtle##127286
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Blue Dragon Turtle",{
keywords={"blue","dragon","turtle","ground","mount"},
model={43718},
mounts={127287},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Blue Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127287) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Blue Dragon Turtle##91009 |goto Orgrimmar/1 69.85,41.16 |or
'|complete hasmount(127287) |or
step
use the Reins of the Blue Dragon Turtle##91009
learnmount Blue Dragon Turtle##127287
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Green Dragon Turtle",{
keywords={"green","dragon","turtle","ground","mount"},
model={42250},
mounts={120395},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Green Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(120395) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Green Dragon Turtle##91004 |goto Orgrimmar/1 69.85,41.16 |or
'|complete hasmount(120395) |or
step
use the Reins of the Green Dragon Turtle##91004
learnmount Green Dragon Turtle##120395
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Red Dragon Turtle",{
keywords={"red","dragon","turtle","ground","mount"},
model={43721},
mounts={127290},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Red Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127295) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Red Dragon Turtle##91007 |goto Orgrimmar/1 69.85,41.16 |or
'|complete hasmount(127290) |or
step
use the Reins of the Red Dragon Turtle##91007
learnmount Red Dragon Turtle##127290
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Black Dragon Turtle",{
keywords={"great","black","dragon","turtle","ground","mount"},
model={43723},
mounts={127295},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Black Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127295) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Black Dragon Turtle##91011 |goto Orgrimmar/1 69.85,41.16 |or
'|complete hasmount(127295) |or
step
use the Reins of the Great Black Dragon Turtle##91011
learnmount Great Black Dragon Turtle##127295
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Green Dragon Turtle",{
keywords={"great","green","dragon","turtle","mount","ground","mount"},
model={43722},
mounts={127293},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Green Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127295) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Green Dragon Turtle##91012 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127308)
step
use the Reins of the Great Green Dragon Turtle##91012
learnmount Great Green Dragon Turtle##127293
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Purple Dragon Turtle",{
keywords={"great","purple","dragon","turtle","ground","mount"},
model={43726},
mounts={127310},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Purple Dragon Turtle mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Huojin Pandaren |complete rep('Huojin Pandaren') == Exalted |or
|tip Use the "Huojin Pandaren" reputation guide to accomplish this.
Click Here to Load the "Huojin Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren"
'|complete hasmount(127295) |or
only if not Pandaren
step
talk Turtlemaster Odai##66022
buy Reins of the Great Purple Dragon Turtle##91015 |goto Orgrimmar/1 69.85,41.16 |complete hasmount(127310)
step
use the Reins of the Great Purple Dragon Turtle##91015
learnmount Great Purple Dragon Turtle##127310
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Crimson Primal Direhorn",{
keywords={"crimson","prime","direhorn","exalted","sunreaver","onslaught","ground","mount"},
model={48101},
mounts={140250},
patch='52000',
mounttype='Ground',
description="This guide will teach you how to acquire the Crimson Primal Direhorn mount.",
mopready=true,
},[[
step
Reach Exalted Reputation with the Sunreaver Onslaught |complete rep('Sunreaver Onslaught') == Exalted |or
|tip Use the "Sunreaver Onslaught" reputation guide to accomplish this.
Click Here to Load the "Sunreaver Onslaught" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Sunreaver Onslaught"
'|complete hasmount(140250) |or
step
talk Vasarin Redmorn##67672
buy Reins of the Crimson Primal Direhorn##95565 |goto Isle of Thunder/0 33.34,32.38 |or
'|complete hasmount(140250) |or
step
use the Reins of the Crimson Primal Direhorn##95565
learnmount Crimson Primal Direhorn##140250
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Red Dragonhawk",{
keywords={"armored","Red","dragon","hawk","flying","mount"},
model={48816},
mounts={142266},
patch='53000',
mounttype='Flying',
description="This guide will teach you how to acquire the Armored Red Dragonhawk mount.",
mopready=true,
},[[
step
achieve 8304 |or
|tip Use the "Mount Parade" achievement guide to accomplish this.
Click Here to Load the "Mount Parade" achievement guide |confirm |loadguide "Achievement Guides\\Collections\\Mounts\\Mount Parade"
'|complete hasmount(142266) |or
step
collect 1 Armored Red Dragonhawk##98104 |or
|tip You can find it in your mailbox.
'|complete hasmount(142266) |or
step
use the Armored Red Dragonhawk##98104
learnmount Armored Red Dragonhawk##142266
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Grand Wyvern",{
keywords={"grand","wyvern","operation:","shieldwall","flying","mount"},
model={47165},
mounts={136164},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Grand Wyvern mount.",
mopready=true,
},[[
step
achieve 7929 |or
|tip Use the "Dominance Offensive" dailies guide to accomplish this.
Click Here to Load the "Dominance Offensive" dailies guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies"
'|complete hasmount(136164) |or
step
collect Grand Wyvern##93386 |or
|tip You can find it in your mailbox.
'|complete hasmount(136164) |or
step
use the Grand Wyvern##93386
learnmount Grand Wyvern##136164
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Grand Armored Wyvern",{
keywords={"grand","armored","wyvern","dominance","offensive","exalted","flying","mount"},
model={46930},
mounts={135418},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Grand Armored Wyvern mount.",
mopready=true,
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.18 |or
'|complete hasmount(135418) |or
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.78,64.34 |or
'|complete hasmount(135418) |or
step
Watch the dialogue
talk Garrosh Hellscream##62092
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.71,64.44 |or
'|complete hasmount(135418) |or
step
Kill Alliance enemies around this area
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.83,62.02 |or
'|complete hasmount(135418) |or
step
talk Blood Guard Gro'tash##67927
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.74,53.12 |or
'|complete hasmount(135418) |or
step
talk Grizzle Gearslip##67926
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.77,57.72 |or
'|complete hasmount(135418) |or
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250
accept Domination Point##32108 |or
'|complete hasmount(135418) |or
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.58,63.85 |or
'|complete hasmount(135418) |or
step
Reach Exalted Reputation with Dominance Offensive |complete rep('Dominance Offensive') == Exalted |or
|tip Use the "Dominance Offensive" reputation guide to accomplish this.
Click Here to Load the "Dominance Offensive" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive"
'|complete hasmount(135418) |or
step
talk Tuskripper Grukna##69060
buy Grand Armored Wyvern##93169 |goto Krasarang Wilds/0 10.87,53.33 |or
'|complete hasmount(135418) |or
step
use the Grand Armored Wyvern##93169
learnmount Grand Armored Wyvern##135418
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Pandaren Kite",{
keywords={"pandaren","kite","flying","mount"},
model={41903},
mounts={118737},
patch='50400',
mounttype='Flying',
description="This guide will teach you how to acquire the Pandaren Kite mount.",
mopready=true,
},[[
step
achieve 6827 |or
|tip Reach {y}Exalted{} Reputation with Golden Lotus, Shado-Pan, The Lorewalkers, The Tillers, Huojin Pandaren, The August Celestials, The Klaxxi, The Anglers, and Order of the Cloud Serpent.
|tip Use these guides to accomplish this.
Click Here to Load the Golden Lotus Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus" |only if rep("Golden Lotus") < Exalted
Click Here to Load the Shado-Pan Dailies guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if rep("Shado-Pan") < Exalted
Click Here to Load The Lorewalkers Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Lorewalkers" |only if rep("The Lorewalkers") < Exalted
Click Here to Load The Tillers Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers" |only if rep("The Tillers") < Exalted
Click Here to Load the Huojin Pandaren Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren" |only if rep("Huojin Pandaren") < Exalted
Click Here to Load The August Celestials Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials" |only if rep("The August Celestials") < Exalted
Click Here to Load The Klaxxi Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi" |only if rep("The Klaxxi") < Exalted
Click Here to Load The Anglers Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Anglers" |only if rep("The Anglers") < Exalted
Click Here to Load Order of the Cloud Serpent Reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent" |only if rep("Order of the Cloud Serpent") < Exalted
'|complete hasmount(118737) |or
step
collect 1 Pandaren Kite String##81559 |or
|tip You can find it in your mailbox.
'|complete hasmount(118737) |or
step
use the Pandaren Kite String##81559
learnmount Pandaren Kite##118737
]])
