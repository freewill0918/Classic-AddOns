local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Fishy",{
patch='50100',
source='Quest',
description="This guide will teach you how to acquire the Fishy bsttle pet.",
pet=847,
},[[
step
talk Admiral Taylor##60970
accept A Perfect Match##29903 |goto The Jade Forest/0 58.90,81.70
step
Talk to _Pearlfin Aqualyte_
_Being small has its advantages_ = Give them daggers.
_Everyone here gets the standard..._ = Give them daggers.
_From a young age..._ = Give them Book of Healing Prayers.
_I am a strong jinyu!_ = Give them a shield.
_I am terrible with a spear_ = Give them a Spellcaster's Staff.
_I bring bandages and food..._ = Give them Book of Healing Prayers.
_I have had basic warrior training..._ = Give them a Spellcaster's Staff.
_I prefer to shape the properties of water_ = Give them a Spellcaster's Staff.
_I'm quick and fast..._ = Give them daggers.
_In your land, is it true..._ = Give them Book of Healing Prayers.
_My sword is quick..._ = Give them a shield.
_My duty is to protect..._ = Give them a shield.
_There are too few..._ = Give them Book of Healing Prayers.
_While the enemies are focused..._ = Give them a shield.
#9# Pearlfin Aqualytes equipped |q 29903/1 |goto The Jade Forest/0 59.10,84.52
step
talk Admiral Taylor##60970
turnin A Perfect Match##29903 |goto The Jade Forest/0 58.90,81.70
accept Bigger Fish to Fry##29904 |goto The Jade Forest/0 58.90,81.70
step
kill Jeweled Macaw##61747+, Wild Stalker##56683+, Stoneskin Basilisk##56650+
Bamboo Wilds Wildlife slain |q 29904/1 |goto The Jade Forest/0 61.00,74.00
step
talk Admiral Taylor##60970
turnin Bigger Fish to Fry##29904 |goto The Jade Forest/0 58.90,81.70
accept Let Them Burn##29905 |goto The Jade Forest/0 58.90,81.70
step
kill 15 Slingtail Recruit##61760 |q 29905/1 |goto The Jade Forest/0 54.60,82.20
step
talk Elder Lusshan##54960
turnin Let Them Burn##29905 |goto The Jade Forest/0 58.90,81.50
step
use Fishy##84105
learnpet Fishy##847
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Sumprush Rodent",{
patch='51000',
source='PetBattle',
description="This guide will teach you how to acquire the Sumprush Rodent battle pet.",
pet=1128,
},[[
step
collect 2000 Domination Point Commission##91877 |next "buy"
|tip In order to get this pet, you will need to collect Domination Point Commissions.
Click here to farm commision points. |confirm
step
Kill enemies around this area
collect 2000 Domination Point Commission##91877 |goto Krasarang Wilds/0 77.40,27.80
You can find more enemies to kill around [|goto Krasarang Wilds/0 11.70,64.50]
step
label "buy"
talk Proveditor Grantley##67881
buy Rodent Crate##92532
step
use Rodent Crate##92532
|tip Capture the Sumprush Rodent using the crate.
learnpet Sumprush Rodent##1128 |goto Krasarang Wilds/0 89.50,33.50
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Air Spirit",{
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Air Spirit battle pet.",
pet=1125,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers.
confirm
step
talk Sara Finkleswitch##64572
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
|tip Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
|tip Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
|tip Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
|tip Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Sara Finkleswitch##64572
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.80,36.00
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle and defeat him. |q 32440/1 |goto The Jade Forest/0 28.80,36.00
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.80,36.00
step
use Pandaren Spirit Pet Supplies##93148
|tip Loot the Pandaren Spirit Pet Supplies you just received.
collect 1 Pandaren Air Spirit##92799
|tip You may have to repeat this daily a few times to obtain the pet.
step
use Pandaren Air Spirit##92799
learnpet Pandaren Air Spirit##1125
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Earth Spirit",{
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Earth Spirit battle pet.",
pet=1126,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers.
confirm
step
talk Sara Finkleswitch##64572
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
|tip Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
|tip Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
|tip Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
|tip Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Sara Finkleswitch##64572
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.00,93.90
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle and defeat him. |q 32441/1 |goto Kun-Lai Summit/0 65.00,93.90
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.00,93.90
step
Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93149
collect 1 Pandaren Earth Spirit##92800
|tip You may have to repeat this daily a few times to obtain the pet.
step
use Pandaren Earth Spirit##92800
learnpet Pandaren Earth Spirit##1126
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Fire Spirit",{
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Fire Spirit battle pet.",
pet=1124,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers.
confirm
step
talk Sara Finkleswitch##64572
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
|tip Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
|tip Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
|tip Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
|tip Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Sara Finkleswitch##64572
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
|tip You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.00,42.20
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle and defeat him. |q 32434/1 |goto Townlong Steppes/0 57.00,42.20
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.00,42.20
step
Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93146
collect 1 Pandaren Fire Spirit##92798
|tip You may have to repeat this daily a few times to obtain the pet.
step
use Pandaren Fire Spirit##92798
learnpet Pandaren Fire Spirit##1124
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Water Spirit",{
patch='50400',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Water Spirit battle pet.",
pet=868,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers.
confirm
step
talk Sara Finkleswitch##64572
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
|tip Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
|tip Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
|tip Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
|tip Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Sara Finkleswitch##64572
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.20,87.60
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle and defeat him. |q 32439/1 |goto Dread Wastes/0 61.20,87.60
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.20,87.60
step
Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93147
collect 1 Pandaren Water Spirit##90173
|tip You may have to repeat this daily a few times to obtain the pet.
step
use Pandaren Water Spirit##90173
learnpet Pandaren Water Spirit##868
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Chi-ji Kite",{
patch='50300',
source='Profession',
description="This guide will teach you how to acquire the Chi-ji Kite battle pet.",
pet=849,
},[[
step
|tip This pet requires you to either have level 75 Pandaria Inscription, or purchase it from the Auction House.
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
talk Catarina Stanford##30713
learn Chi-Ji Kite##127009 |goto Stormwind City/0 49.80,74.00
step
map Valley of the Four Winds
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	35.80,54.80	41.50,48.90
#include "follow_path_herbs"
You need about 15 Shadow-giving herbs total
collect Green Tea leaf##72234 |n
collect Silkweed##72235 |n
Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
collect 4 Shadow Pigment##79251
step
talk Stanly McCormick##30730
buy 1 Light Parchment##39354 |goto Stormwind City/0 49.80,74.20
step
create 1 Chi-ji Kite##89368
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670
buy 1 Chi-ji Kite##89368 |goto Stormwind City/0 61.00,71.60
step
label "done"
learnpet Chi-ji Kite##66104 |use Chi-ji Kite##89368
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Jade Crane Chick", {
patch='unknown',
source='unknown',
description="This guide will teach you how to acquire the Jade Crane Chick battle pet.",
pet=792,
},[[
step
|tip You must be a Pandaren in order to obtain this pet.
confirm
step
talk Audrey Burnhep##63596
buy Jade Crane Chick##88148 |goto Stormwind City/0 69.40,25.10
step
learnpet Jade Crane Chick##792 |use Jade Crane Chick##88148
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yu'lon Kite",{
patch='50300',
source='Profession',
description="This guide will teach you how to acquire the Yu'lon Kite battle pet.",
pet=850,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 75 Pandaria Inscription, or purchase it from the Auction House.
step
label "create"
talk Catarina Stanford##30713
learn Yu'lon Kite##127007 |goto Stormwind City/0 49.80,74.00
step
map Valley of the Four Winds
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	 35.80,54.80	41.50,48.90
#include "follow_path_herbs"
You need about 15 Shadow-giving herbs total
collect Green Tea leaf##72234 |n
collect Silkweed##72235 |n
Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
collect 4 Shadow Pigment##79251
step
talk Stanly McCormick##30730
buy 1 Light Parchment##39354 |goto Stormwind City/0 49.80,74.20
step
create 1 Yu'lon Kite##89367
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670
buy 1 Yu'lon Kite##89367 |goto Stormwind City/0 61.00,71.60
step
label "done"
use Yu'lon Kite##89367
learnpet Yu'lon Kite##850
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Mountain Panda",{
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Mountain Panda battle pet.",
pet=1198,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
#include "Alliance_Battlepet_Quests"
step
label "beasts"
#include "A_Beasts_of_Fable"
step
label "reset"
#include "A_Beasts_of_Fable_D"
step
use Fabled Pandaren Pet Supplies##94207
collect Mountain Panda##94210 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
use Mountain Panda##94210
learnpet Mountain Panda##1198
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Red Panda",{
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Red Panda battle pet.",
pet=1176,
},[[
step
Click here to proceed to the Battle Pet Questline. |confirm
Click here to proceed to the Fabled Beast hunt. |confirm |next "fable"
|tip In order to attain this pet, you will need to complete the Battle Pet Questline and defeating 10 Fabled beasts.
step
#include "Alliance_Battlepet_Quests"
step
label "fable"
#include "A_Beasts_of_Fable"
step
use Red Panda##94025
learnpet Red Panda##1176
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Snowy Panda",{
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Snowy Panda battle pet.",
pet=1197,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
#include "Alliance_Battlepet_Quests"
step
label "beasts"
#include "A_Beasts_of_Fable"
step
label "reset"
#include "A_Beasts_of_Fable_D"
step
use Fabled Pandaren Pet Supplies##94207
collect Snowy Panda##94209 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
use Snowy Panda##94209
learnpet Snowy Panda##1197
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Sunfur Panda",{
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Sunfur Panda battle pet.",
pet=1196,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
#include "Alliance_Battlepet_Quests"
step
label "beasts"
#include "A_Beasts_of_Fable"
step
label "reset"
#include "A_Beasts_of_Fable_D"
step
use Fabled Pandaren Pet Supplies##94208
collect Sunfur Panda##94208 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
use Sunfur Panda##94208
learnpet Sunfur Panda##1196
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Jade Owl",{
patch='50300',
source='Profession',
description="This guide will walk you through obtaining the Magic pet: Jade Owl",
pet=845,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 75 Pandaria Jewelcrafting, or purchase it from the Auction House.
step
label "create"
Click here for the _Golden Lotus Pre Quests_. |next "GLPQ" |confirm |tip The Pattern comes from the Treasures of the Vale given during Golden Lotus dailies.
Click here for the daily quests. |next "Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies" |only if ZGV.guidesets["DailiesAMOP"]
|tip You have to complete the Dailies for the Golden Lotus and open Treasures of the Vale (quest rewards)to get the recipe for this pet.
step
label "GLPQ"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31392 |goto Kun-Lai Summit 72,94.20
|only if not completedq(31394)
step
talk Anduin Wrynn##64540
turnin Temple of the White Tiger##31392 |only if not completedq(31394) |goto Kun-Lai Summit 68.80,43.10
accept A Celestial Experience##31394 |goto Kun-Lai Summit 68.80,43.10
step
Talk to Xuen |q 31394/1 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Violence##64656
Pass the First Test |q 31394/2 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Anger##64684
Pass the Second Test |q 31394/3 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Hatred##64744
Pass the Third Test |q 31394/4 |goto Kun-Lai Summit 68.90,42.80
step
talk Anduin Wrynn##64540
turnin A Celestial Experience##31394 |goto Kun-Lai Summit 68.80,43.10
accept A Witness to History##31512 |or |goto Kun-Lai Summit 68.80,43.10
accept A Witness to History##31511 |or |goto Kun-Lai Summit 68.80,43.10
step
talk Anduin Wrynn##64848
Tell him "Let's find out!" |q 31512/1 |only if haveq(31512) |goto Kun-Lai Summit 55.50,91.30
Tell him "Let's find out!" |q 31511/1 |only if haveq(31511) |goto Kun-Lai Summit 55.50,91.30
step
talk Matron Vi Vinh##64149
turnin A Witness to History##31511 |goto Shrine of Seven Stars/1 35.40,65.90
or
turnin A Witness to History##31512 |goto Shrine of Seven Stars/1 35.40,65.90
step
map Vale of Eternal Blossoms
path	54.60,23.70	52.80,23.10	47.00,18.70
path	42.60,15.00	41.80,17.80	36.90,18.00
path	353.50,21.30	35.00,28.70	35.60,34.50
path	42.20,29.10	45.40,29.60	47.90,26.50
path	50.80,31.50	53.60,28.60
Follow the path, mining any node you see.
Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
collect 3 Wild Jade##76139
step
create 1 Jade Owl##82774
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670
buy 1 Jade Owl##82774 |goto Stormwind City 61.00,71.60
step
label "done"
learnpet Jade Owl##845 |use Jade Owl##82774
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Clock'em",{
patch='51000',
source='Vendor',
description="This guide will walk you through obtaining the Mechanical pet: Clock'em",
pet=1142,
},[[
step
This pet will require you to reach Rank 4 in the Brawler's Guild.
confirm
step
talk Madam Goya##62943
|tip Bid on one of the Blood-Soaked Invitations and win in order to join the brawler's guild.
collect Blood Soaked Invitation##93194 |n
Use the _Blood-Soaked Invitation_ in your bags. |use Blood Soaked Invitation##93194
achieve 7947 |goto The Veiled Stair 63.80,75.80
step
WARNING:
There is an enrage timer on all Brawler's Guild fights.
|tip You have 2 minutes to kill the current opponent before it activates.
|tip If it does, a wall of unavoidable meteors sweeps across the arena, killing you. Remember this as you go through this guide!
confirm
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 1: _Bruce_
|tip Bruce is a very easy fight, meant to get you started in the Brawler's Guild. He has 1 ability:
|tip Chomp, chomp, chomp is an ability that he uses in front of him. When he begins casting, run to the side or behind him to avoid getting hit by this attack.
|tip The best strategy for this fight is to dps him as fast as you can, making sure to avoid being directly in front of him whenever he begins to cast his ability.
Defeat Bruce in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 2: _Vian the Volatile_
|tip Vian is more difficult, but still relatively easy. He has 4 abilities:
|tip Fire Line is very similar to Bruce's _Chomp Chomp Chomp.
|tip Fire Orbs will bounce around the arena, doing damage to you if they touch you, and causing an enrage effect on Vian if they touch him.
|tip Lava Burst is a normal spell, you should not worry about this one.
|tip The best strategy for this fight is to stay on him while avoiding both the orbs and the Fire Line spell, interrupting them if possible.
Defeat Vian the Volatile in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 3: _Goredome_
|tip Goredome is very similar to Bruce. He has 1 ability:
|tip Lumbering Charge is a relatively quick cast, but it's easily avoidable. He will lay a red circle on the ground as he begins casting it. Make sure to get out of the circle before he charges.
|tip If you are in the circle, you will instantly be killed.
Defeat Goredome in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 4: _Dungeon Master Vishas_
|tip Dungeon Master Vishas is the boss of this Rank. He has 2 abilities:
|tip Naughty Secrets is a 2.50-second cast debuff that inflicts damage and increases vulnerability to future shadow damage for 1 minute. This isn't a big concern, but this spell can be interrupted.
|tip Heated Pokers is a 2.50-second cast that causes Vishas' attacks to do massive damage. This spell cannot be interrupted except using a stun. If he does cast this, make sure to run away until the buff wears off.
Defeat Dungeon Master Vishas in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=1000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 5: _Dippy_
|tip Dippy is the first fight in rank 2 and has the following abilities:
|tip Slippy is a constant debuff that causes him to fall down with every direct hit. This interrupts the current cast of Peck. This will not happen if Dippy is next to a wall.
|tip Peck is a very quick casted spell that will instantly kill you. Unless you are strictly a melee class, the best option in this fight is to kite him and kill him from range.
|tip The best strategy for this fight is to keep pressue on Dippy, and never give him a chance to cast his Peck. Any direct strike will do, so don't rely on DoTs to knock him over.
Defeat Dippy in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=1250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 6: _Kirrawk_
|tip Kirrawk is the second fight in rank 2 and has the following abilities:
|tip Lightning Bolt is his basic cast spell. It does quite a bit of damage, but isn't a primary concern.
|tip Storm Cloud is an ability that summons a cloud to inflict Nature damage when Kirrawk is attacked. Interrupt this whenever possible.
|tip Tornado is an ability that summons a twister that will toss you up somewhere in the arena, and will make a straight line towards you. The only way to avoid this is to have the tornado touch Kirrawk before it touches you.
|tip Lightning Flurry is an ability that he will only cast if you are tossed up by his Tornado. This attack does considerable damage.
|tip The best strategy for this fight is to pay attention to the tornado, and make sure it hits him instead of you. Also, pay attention to his casts and interrupt Storm Cloud any way you can.
Defeat Kirrawk in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=1500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 7: _Fran_ and _Riddoh_
|tip Fran and Riddoh is the first fight where you must kill 2 enemies:
|tip Riddoh should be your primary target and has these abilities:
|tip Throw Net is his basic ability. It is a quick cast, and immobilizes you for 5 seconds.
|tip Frenzied Riddoh is an ability that will only be used if you kill Fran first. This causes Riddoh's attacks to deal 250% damage
|tip Fran_ should be your secondary Target and has the following abilities:
|tip Throw Dynamite is his basic ability. He throws a stick of dynamite in the air that can be avoided.
|tip Goblin Device is an ability that summons a a ring of bombs around you. You will have to run out of the circle before they explode.
|tip The best strategy for this fight is to kill Riddoh first to prevent him from becoming frenzied, while making sure to avoid the AoE attacks that Fran throws at you.
Defeat Fran and Riddoh in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=1750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 8: _King Kulaka_
|tip King Kulaka is the boss of this Rank. He has 1 ability:
|tip Dash is an instant cast spell that increases his movement speed by 60% for 5 seconds.
|tip The best strategy for this is to dps him before he can kill you. His melee attacks hit hard, so be sure to have some potions handy and do your best to kite him if possible.
Defeat King Kulaka in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=2000
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 9: _Blat_
|tip Blat is where the difficulty starts to raise a bit. He has 1 ability:
|tip Split is a 0.50 second cast spell that causes him to create a copy of himself. He will use this several times throughout the fight.
|tip The best strategy for this fight is to kite him away, and focus on the main version of him. If you can't kite, then just try and do as much dps as possible. All of the other versions have as much health as he does, so you will not be able to kill them fast enough to avoid the enrage timer.
Defeat Blat in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=2250
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 10: _Sanoriak_
Sanoriak is basically a more powerful version of Vian the Volatile. He has 4 abilities:
|tip Fireball and Pyroblast are both his most common moves. They do quite a bit of damage, so interrupt them every now and then if possible.
|tip Flame Buffet is a strong move that does a lot of damage and increases any fire damage taken for 15 seconds. Interrupt this as much as possible.
|tip Firewall is his most powerful move. It will not show a casting bar, but he will show the animation. This spawns a rain of fireballs down on your location. Be sure to move out of this, because it does a ton of damage.
|tip The best strategy for this fight is to keep pressure on him, avoid his AoE meteor attack, and interrupt/stun whenever possible.
Defeat Sanoriak in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=2500
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 11: _Ixx_
Ixx is very similar to _Mogu Warriors_ in Pandaria. He has 1 ability:
|tip Conal Cleave is a average cast spell that shows a large cone in front of him when he begins casting. If this hits you, you will die.
|tip The best strategy for this fight is to keep pressure on him, and run through him when he begins casting his cleave.
Defeat Ixx in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=2750
step
talk Bizmo's Brawlpub Bouncer##68408 |goto Deeprun Tram/2 39.20,34.10
Tell them you're ready to fight. |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 12: _Mazhareen_
Mazhareen is a pretty straightforward fight. She does not have any abiilities, but Mazhareen does more damage as she loses health.
|tip The best strategy for this fight is to DPS her down as quickly as possible, saving any cooldowns for the end of the fight.
Defeat Mazhareen in the Brawler's Guild |complete ZGV:GetReputation(1419).friendRep>=3000
step
talk Quackenbush##68363
buy 1 Clock'em##93025 |goto Deeprun Tram/2 54.40,29.80
step
learnpet Clock'em##1142 |use Clock'em##93025
]])
