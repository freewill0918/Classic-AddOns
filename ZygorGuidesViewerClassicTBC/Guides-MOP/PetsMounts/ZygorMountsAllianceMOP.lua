local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Brown Dragon Turtle",{
keywords={"brown","dragon","turtle","ground","mount"},
model={43719},
mounts={127288},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Brown Dragon Turtle mount.",
},[[
step
Reach Exalted Reputation with the Tushui Pandaren |complete rep('Tushui Pandaren') == Exalted |or
|tip Use the "Tushui Pandaren" reputation guide to accomplish this.
Click Here to Load the "Tushui Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren"
'|complete hasmount(127288) |or
only if not Pandaren
step
talk Old Whitenose##65068
buy Reins of the Brown Dragon Turtle##91005 |goto Stormwind City/0 67.74,18.43 |or
'|complete hasmount(127288) |or
step
use the Reins of the Brown Dragon Turtle##91005
learnmount Brown Dragon Turtle##127288
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Purple Dragon Turtle",{
keywords={"purple","dragon","turtle","ground","mount"},
model={43910},
mounts={127289},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Purple Dragon Turtle mount.",
},[[
step
Reach Exalted Reputation with the Tushui Pandaren |complete rep('Tushui Pandaren') == Exalted |or
|tip Use the "Tushui Pandaren" reputation guide to accomplish this.
Click Here to Load the "Tushui Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren"
'|complete hasmount(127289) |or
only if not Pandaren
step
talk Old Whitenose##65068
buy Reins of the Purple Dragon Turtle##91006 |goto Stormwind City/0 67.74,18.43 |or
'|complete hasmount(127289) |or
step
use the Reins of the Purple Dragon Turtle##91006
learnmount Purple Dragon Turtle##127289
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Blue Dragon Turtle",{
keywords={"great","blue","dragon","turtle","ground","mount"},
model={43724},
mounts={127302},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Blue Dragon Turtle mount.",
},[[
step
Reach Exalted Reputation with the Tushui Pandaren |complete rep('Tushui Pandaren') == Exalted |or
|tip Use the "Tushui Pandaren" reputation guide to accomplish this.
Click Here to Load the "Tushui Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren"
'|complete hasmount(127302) |or
only if not Pandaren
step
talk Old Whitenose##65068
buy Reins of the Brown Dragon Turtle##91013 |goto Stormwind City/0 67.74,18.43 |or
'|complete hasmount(127302) |or
step
use the Reins of the Great Blue Dragon Turtle##91013
learnmount Great Blue Dragon Turtle##127302
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Brown Dragon Turtle",{
keywords={"great","brown","dragon","ninja","turtle","ground","mount"},
model={43725},
mounts={127308},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Brown Dragon Turtle mount.",
},[[
step
Reach Exalted Reputation with the Tushui Pandaren |complete rep('Tushui Pandaren') == Exalted |or
|tip Use the "Tushui Pandaren" reputation guide to accomplish this.
Click Here to Load the "Tushui Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren"
'|complete hasmount(127308) |or
only if not Pandaren
step
talk Old Whitenose##65068
buy Reins of the Great Brown Dragon Turtle##91014 |goto Stormwind City/0 67.74,18.43 |or
'|complete hasmount(127308) |or
step
use the Reins of the Great Brown Dragon Turtle##91014
learnmount Great Brown Dragon Turtle##127308
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Red Dragon Turtle",{
keywords={"great","red","dragon","turtle","ground","mount"},
model={42352},
mounts={120822},
patch='50400',
mounttype='Ground',
description="This guide will teach you how to acquire the Great Red Dragon Turtle mount.",
},[[
step
Reach Exalted Reputation with the Tushui Pandaren |complete rep('Tushui Pandaren') == Exalted |or
|tip Use the "Tushui Pandaren" reputation guide to accomplish this.
Click Here to Load the "Tushui Pandaren" reputation guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren"
'|complete hasmount(120822) |or
only if not Pandaren
step
talk Old Whitenose##65068
buy Reins of the Great Red Dragon Turtle##91010 |goto Stormwind City/0 67.74,18.43 |or
'|complete hasmount(120822) |or
step
use the Reins of the Great Red Dragon Turtle##91010
learnmount Great Red Dragon Turtle##120822
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Primal Direhorn",{
keywords={"golden","prime","direhorn","exalted","sunreaver","onslaught","ground","mount"},
model={48100},
mounts={140249},
patch='52000',
mounttype='Ground',
description="This guide will teach you how to acquire the Golden Primal Direhorn mount.",
},[[
step
Reach Exalted Reputation with the Kirin Tor Offensive |complete rep('Kirin Tor Offensive') == Exalted |or
|tip Use the "Kirin Tor Offensive" reputation guide to accomplish this.
Click Here to Load the "Kirin Tor Offensive" reputation guide "Reputation Guides\\Mists of Pandaria Reputations\\Kirin Tor Offensive"
'|complete hasmount(140249) |or
step
talk Hiren Loresong##68000
buy Reins of the Golden Primal Direhorn##95564 |goto Isle of Thunder/0 64.69,74.54 |or
'|complete hasmount(140249) |or
step
use the Reins of the Golden Primal Direhorn##95564
learnmount Golden Primal Direhorn##140249
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Blue Dragonhawk",{
keywords={"armored","Blue","dragon","hawk","flying","mount"},
model={48816},
mounts={142478},
patch='53000',
mounttype='Flying',
description="This guide will teach you how to acquire the Armored Blue Dragonhawk mount.",
},[[
step
achieve 8304 |or
|tip Use the "Mount Parade" achievement guide to accomplish this.
Click Here to Load the "Mount Parade" achievement guide |confirm |loadguide "Achievement Guides\\Collections\\Mounts\\Mount Parade"
'|complete hasmount(142478) |or
step
collect 1 Armored Blue Dragonhawk##98259 |or
|tip You can find it in your mailbox.
'|complete hasmount(142478) |or
step
use the Armored Blue Dragonhawk##98259
learnmount Armored Blue Dragonhawk##142478
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Grand Gryphon",{
keywords={"grand","gryphon","operation:","shieldwall","flying","mount"},
model={47166},
mounts={136163},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Grand Gryphon mount.",
},[[
step
achieve 7928 |or
|tip Use the "Operation: Shieldwall" dailies guide to accomplish this.
Click Here to Load the "Operation: Shieldwall" dailies guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\Operation: Shieldwall"
'|complete hasmount(136163) |or
step
collect Grand Gryphon##93385 |or
|tip You can find it in your mailbox.
'|complete hasmount(136163) |or
step
use the Grand Gryphon##93385
learnmount Grand Gryphon##136163
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Grand Armored Gryphon",{
keywords={"grand","armored","gryphon","operation:","shieldwall","exalted","flying","mount"},
model={46929},
mounts={135416},
patch='51000',
mounttype='Flying',
description="This guide will teach you how to acquire the Grand Armored Gryphon mount.",
},[[
step
talk Lyalia##64610
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 83.99,58.68 |or
'|complete hasmount(135416) |or
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds/0 85.27,29.06 |or
'|complete hasmount(135416) |or
step
Watch the dialogue
talk King Varian Wrynn##61796
accept A King Among Men##32247 |goto Krasarang Wilds/0 85.32,29.04 |or
'|complete hasmount(135416) |or
step
talk Marshal Troteman##68331
Find Marshal Troteman |q 32247/2 |goto Krasarang Wilds/0 79.66,24.96 |or
'|complete hasmount(135416) |or
step
talk Hilda Hornswaggle##68312
Find Hilda Hornswaggle |q 32247/3 |goto Krasarang Wilds/0 80.45,17.43 |or
'|complete hasmount(135416) |or
step
Kill Horde enemies around this area
Slay #25# Horde |q 32247/1 |goto Krasarang Wilds/0 84.25,21.85 |or
'|complete hasmount(135416) |or
step
_Next to you:_
talk King Varian Wrynn##61796
turnin A King Among Men##32247
accept Lion's Landing##32109 |or
'|complete hasmount(135416) |or
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds/0 85.62,29.06 |or
'|complete hasmount(135416) |or
step
Reach Exalted Reputation with Operation: Shieldwall |complete rep('Operation: Shieldwall') == Exalted |or
|tip Use the "Operation: Shieldwall" reputation guide to accomplish this.
'|complete hasmount(135416) |or
step
talk Agent Malley##69059
buy Grand Armored Gryphon##93168 |goto Krasarang Wilds/0 89.69,33.40 |or
'|complete hasmount(135416) |or
step
use the Grand Armored Gryphon##93168
learnmount Grand Armored Gryphon##135416
]])
