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
mopready=true,
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
mopready=true,
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
mopready=true,
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
|tip You can now complete further daily quests to get the other pets.
only if not completedq(32428)
step
You can now obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
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
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Air Spirit##92799
learnpet Pandaren Air Spirit##1125
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Earth Spirit",{
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Earth Spirit battle pet.",
pet=1126,
mopready=true,
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
You can now obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
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
use Pandaren Spirit Pet Supplies##93149
collect 1 Pandaren Earth Spirit##92800
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Earth Spirit##92800
learnpet Pandaren Earth Spirit##1126
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Fire Spirit",{
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Fire Spirit battle pet.",
pet=1124,
mopready=true,
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
|tip You can now obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
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
use Pandaren Spirit Pet Supplies##93146
collect 1 Pandaren Fire Spirit##92798
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Fire Spirit##92798
learnpet Pandaren Fire Spirit##1124
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Water Spirit",{
patch='50400',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Water Spirit battle pet.",
pet=868,
mopready=true,
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
)		Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Sara Finkleswitch##64572
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.60,60.00
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
You can now obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
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
use Pandaren Spirit Pet Supplies##93147
collect 1 Pandaren Water Spirit##90173
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Water Spirit##90173
learnpet Pandaren Water Spirit##868
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Chi-ji Kite",{
patch='50300',
source='Profession',
description="This guide will teach you how to acquire the Chi-ji Kite battle pet.",
pet=849,
mopready=true,
},[[
step
You can obtain this pet from a level 600 scribe |only if skill("Inscription") == 0
Reach level 600 Inscription |complete skill ("Inscription") == 600 |only if skill("Inscription") <= 599 |or
|tip Use the Inscription Leveling guide to achieve this. |only if skill("Inscription") <= 599
Click Here to Load the Inscription Leveling guide |confirm |loadguide "Profession Guides\\Inscription\\Leveling Guides\\Inscription (1-600)" |only if skill("Inscription") <= 599
|tip You can also purchase it from the auction house. |only if skill("Inscription") == 0
|confirm |or
'|complete haspet(849) or skill("Inscription") == 600
step
talk Catarina Stanford##30713
learn Chi-Ji Kite##127009 |goto Stormwind City/0 49.80,74.00 |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
Follow the path
|tip Zoom your minimap all the way out and track herbs.
|tip Gather 4 stacks of 5 Green Tea Leaves or Silkweed herbs from yellow nodes on your minimap.
map Valley of the Four Winds/0
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	35.80,54.80	41.50,48.90
confirm |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
cast Milling##51005
|tip Cast it on the herbs you collected.
collect 4 Shadow Pigment##79251 |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
talk Stanly McCormick##30730
buy 1 Light Parchment##39354 |goto Stormwind City/0 49.80,74.20 |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
create 1 Chi-ji Kite##89368 |only if skill("Inscription") == 600 |or
buy 1 Chi-ji Kite##89368 |only if skill("Inscription") == 0 |or
|tip You can get this from a scribe or purchase from the auction house. |only if skill("Inscription") == 0
'|complete itemcount(89368) == 1 |or
'|complete haspet(849) |or
step
use Chi-ji Kite##89368
|tip Obtain this from a scribe or buy it from the auction house. |only if itemcount(89368) <= 0
learnpet Chi-ji Kite##66104
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Jade Crane Chick", {
patch='unknown',
source='unknown',
description="This guide will teach you how to acquire the Jade Crane Chick battle pet.",
pet=792,
mopready=true,
},[[
step
Only a Pandaren can Purchase this Pet from the Vendor
|tip Anyone can purchase this pet from the auction house.
confirm |or
'|complete haspet(792) |or
'|only if not raceclass("Pandaren")
step
talk Audrey Burnhep##63596
buy Jade Crane Chick##88148 |goto Stormwind City/0 69.40,25.10
step
use Jade Crane Chick##88148
learnpet Jade Crane Chick##792
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yu'lon Kite",{
patch='50300',
source='Profession',
description="This guide will teach you how to acquire the Yu'lon Kite battle pet.",
pet=850,
mopready=true,
},[[
step
You can obtain this pet from a level 600 scribe |only if skill("Inscription") == 0
Reach level 600 Inscription |complete skill ("Inscription") == 600 |only if skill("Inscription") <= 599 |or
|tip Use the Inscription Leveling guide to achieve this. |only if skill("Inscription") <= 599
Click Here to Load the Inscription Leveling guide |confirm |loadguide "Profession Guides\\Inscription\\Leveling Guides\\Inscription (1-600)" |only if skill("Inscription") <= 599
|tip You can also purchase it from the auction house. |only if skill("Inscription") == 0
|confirm |only if skill("Inscription") == 0 |or
'|complete haspet(850) or skill("Inscription") == 600
step
talk Catarina Stanford##30713
learn Yu'lon Kite##127007 |goto Stormwind City/0 49.80,74.00 |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
Collect herbs to mill
|tip Open your map to see the path.
|tip Zoom your minimap all the way out and track herbs.
|tip Gather 4 stacks of 5 herbs from yellow nodes on your minimap.
map Valley of the Four Winds/0
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	35.80,54.80	41.50,48.90
confirm |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
cast Milling##51005
|tip Mill the herbs you gathered into Shadow Pigment.
collect 4 Shadow Pigment##79251 |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
talk Stanly McCormick##30730
buy 1 Light Parchment##39354 |goto Stormwind City/0 49.80,74.20 |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
buy 1 Yu'lon Kite##89367 |only if skill("Inscription") == 0 |or
create 1 Yu'lon Kite##89367 |only if skill("Inscription") == 600 |or
|tip You can get this from a scribe or purchase from the auction house. |only if skill("Inscription") == 0
'|complete itemcount(89367) == 1 |or
'|complete haspet(850) |or
step
use Yu'lon Kite##89367
|tip Obtain this from a scribe or buy it from the auction house. |only if itemcount(89367) <= 0
learnpet Yu'lon Kite##850
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Mountain Panda",{
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Mountain Panda battle pet.",
pet=1198,
mopready=true,
},[[
step
Click Here to complete the _Battle Pet Questline_. |confirm |next |only if not completedq(31951)
Click Here to complete the _Beasts of Fable_. |confirm |next "beasts" |only if completedq(31951) and not completedq(32603)
Click Here to complete the dailies |confirm |next "reset" |only if completedq(31951) and completedq(32603)
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
talk Audrey Burnhep##63596
learnspell Revive Battle Pets##125439 |goto Stormwind City/0 69.48,25.15
step
talk Audrey Burnhep##63596
learnpet Snowshoe Rabbit##7560 |goto Stormwind City/0 69.48,25.15
|tip Train it from her.
step
talk Audrey Burnhep##63596
accept Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Win a Pet Battle |q 31591/1 |goto Stormwind City/0 70.10,23.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Audrey Burnhep##63596
turnin Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
accept On The Mend##31592 |goto Stormwind City/0 69.48,25.15
step
talk Jenova Stoneshield##11069
Tell her: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31592/1 |goto Stormwind City/0 67.30,37.70
step
talk Audrey Burnhep##63596
turnin On The Mend##31592 |goto Stormwind City/0 69.48,25.15
accept Level Up!##31821 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Raise a Battle Pet to level 3 |q 31821/1 |goto Stormwind City/0 70.10,23.40
|tip Keep battling critters around this area to accomplish this.
step
_Click the quest completion box that appears_
accept Audrey Burnhep##32008
step
talk Audrey Burnhep##63596
turnin Audrey Burnhep##32008 |goto Stormwind City/0 69.48,25.15
accept Julia, The Pet Tamer##31316 |goto Stormwind City/0 69.48,25.15
step
talk Julia Stevens##64330
Defeat Julia Stevens |q 31316/1 |goto Elwynn Forest/0 41.66,83.67
|tip Julia's pet team consists of level 2 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Julia Stevens##64330
turnin Julia, The Pet Tamer##31316 |goto Elwynn Forest/0 41.66,83.67
accept Old MacDonald##31724 |goto Elwynn Forest/0 41.66,83.67
step
talk Old MacDonald##65648
Defeat Old MacDonald |q 31724/1 |goto Westfall/0 60.86,18.49
|tip MacDonald's pet team consists of level 3 Mechanical, Flying, and Critter battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Old MacDonald##65648
turnin Old MacDonald##31724 |goto Westfall/0 60.86,18.49
accept Lindsay##31725 |goto Westfall/0 60.86,18.49
step
talk Lindsay##65651
Defeat Lindsay |q 31725/1 |goto Redridge Mountains/0 33.30,52.58
|tip Lindsay's pet team consists of level 5 Critter battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Lindsay##65651
turnin Lindsay##31725 |goto Redridge Mountains/0 33.30,52.58
accept Eric Davidson##31726 |goto Redridge Mountains/0 33.30,52.58
step
talk Eric Davidson##65655
Defeat Eric Davidson |q 31726/1 |goto Duskwood/0 19.88,44.62
|tip Eric's pet team consists of level 7 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Eric Davidson##65655
turnin Eric Davidson##31726 |goto Duskwood/0 19.88,44.62
accept Steven Lisbane##31729 |goto Duskwood/0 19.88,44.62
step
talk Steven Lisbane##63194
Defeat Steven Lisbane |q 31729/1 |goto Northern Stranglethorn/0 46.01,40.45
|tip Steven's pet team consists of level 9 Beast and Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Steven Lisbane##31729 |goto Northern Stranglethorn/0 46.01,40.45
accept Bill Buckler##31728 |goto Northern Stranglethorn/0 46.01,40.45
step
talk Bill Buckler##65656
Defeat Bill Buckler |q 31728/1 |goto The Cape of Stranglethorn/0 51.46,73.38
|tip Bill's pet team consists of level 11 Humanoid and Flying battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Bill Buckler##31728 |goto The Cape of Stranglethorn/0 51.46,73.38
accept A Tamer's Homecoming##31917 |goto The Cape of Stranglethorn/0 51.46,73.38
step
talk Audrey Burnhep##63596
turnin A Tamer's Homecoming##31917 |goto Stormwind City/0 69.48,25.15
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto 69.48,25.15
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Everessa's pet team consists of level 16 Flying, Aquatic, and Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
accept Grand Master Lydia Accoste##31915 |goto Burning Steppes/0 66.96,52.42
step
talk Lydia Accoste##66522
Defeat Lydia Accoste |q 31915/1 |goto Deadwind Pass/0 40.05,76.45
|tip Lydia's pet team consists of level 19 Elemental and Undead battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Lydia Accoste##66522
turnin Grand Master Lydia Accoste##31915 |goto Deadwind Pass/0 40.05,76.45
accept The Returning Champion##31976 |goto Deadwind Pass/0 40.05,76.45 |only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
turnin The Returning Champion##31976 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Kalimdor##31889 |goto Stormwind City/0 69.48,25.15
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31889/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31889/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31889/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31889/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31889/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31889 |goto Moonglade/0 46.14,60.26
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Outland##31919 |goto Stormwind City/0 69.48,25.15
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31919/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31919/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31919/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31919/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31919 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31981 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
turnin Exceeding Expectations##31981 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Northrend##31927 |goto Stormwind City/0 69.48,25.15
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31927/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31927/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31927/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31927/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31927 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
turnin A Brief Reprieve##31984 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Cataclysm##31966 |goto Stormwind City/0 69.48,25.15
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31966/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31966/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31966/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31966 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31985 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
turnin The Triumphant Return##31985 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Pandaria##31930 |goto Stormwind City/0 69.48,25.15
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31930/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31930/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31930/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31930/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31930/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31930/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31930 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
step
talk Sara Finkleswitch##64572
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 86.60,60.00
step
label "dailies"
_No-No_
This enemy is aquatic.
It is strong against undead and weak to flying attacks.
I would suggest that you use flying pets against this enemy.
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds/0 25.30,78.50
step
_Xi'a_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds/0 36.30,37.30
step
_Gorespine_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Gorespine |q 32603/2 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes/0 72.30,79.80
step
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit/0 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit/0 67.90,84.70
step
_Ka'wi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using a team of mechanical pets against this enemy.
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest/0 48.40,71.00
step
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Nitun |q 32603/9 |goto The Jade Forest/0 57.00,29.10
step
talk Sara Finkleswitch##64572
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 86.60,60.00
talk Sara Finkleswitch##64572
accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 86.60,60.00
step
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
Defeat No-No |q 32869/2 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Lucky Yi |q 32868/2 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Greyhoof |q 32868/1 |goto Valley of the Four Winds/0 25.30,78.50
step
_Skitterer Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Xi'a |q 32868/3 |goto Krasarang Wilds/0 36.30,37.30
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if completedq(32428)
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Flowing Pandaren Spirit |q 32439/1 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
_Gorespine_
This enemy is a beast
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Gorespine |q 32869/1 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Ti'un the Wanderer |q 32869/3 |goto Townlong Steppes/0 72.30,79.80
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if completedq(32428)
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Defeat Burning Pandaren Spirit |q 32434/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Kafi |q 32604/2 |goto Kun-Lai Summit/0 35.20,56.20
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if completedq(32428)
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Defeat Thundering Pandaren Spirit |q 32441/1 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Dos-Ryga |q 32604/3 |goto Kun-Lai Summit/0 67.90,84.70
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.90,36
|only if haveq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if completedq(32428)
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Defeat Whispering Pandaren Spirit |q 32440/1 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
_Ka'wi the Gorger_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Defeat Ka'wi the Gorger |q 32604/1 |goto The Jade Forest/0 48.40,71.00
step
_Nitun_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
Use beast pets against this enemy
Defeat Nitun |q 32604/4 |goto The Jade Forest/0 57.00,29.10
step
talk Sara Finkleswitch##64572
turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 86.60,60.00
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
mopready=true,
},[[
step
Click here to proceed to the Battle Pet Questline. |confirm
Click here to proceed to the Fabled Beast hunt. |confirm |next "fable"
|tip In order to attain this pet, you will need to complete the Battle Pet Questline and defeating 10 Fabled beasts.
step
talk Audrey Burnhep##63596
learnspell Revive Battle Pets##125439 |goto Stormwind City/0 69.48,25.15
step
talk Audrey Burnhep##63596
learnpet Snowshoe Rabbit##7560 |goto Stormwind City/0 69.48,25.15
|tip Train it from her.
step
talk Audrey Burnhep##63596
accept Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Win a Pet Battle |q 31591/1 |goto Stormwind City/0 70.10,23.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Audrey Burnhep##63596
turnin Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
accept On The Mend##31592 |goto Stormwind City/0 69.48,25.15
step
talk Jenova Stoneshield##11069
Tell her: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31592/1 |goto Stormwind City/0 67.30,37.70
step
talk Audrey Burnhep##63596
turnin On The Mend##31592 |goto Stormwind City/0 69.48,25.15
accept Level Up!##31821 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Raise a Battle Pet to level 3 |q 31821/1 |goto Stormwind City/0 70.10,23.40
|tip Keep battling critters around this area to accomplish this.
step
_Click the quest completion box that appears_
accept Audrey Burnhep##32008
step
talk Audrey Burnhep##63596
turnin Audrey Burnhep##32008 |goto Stormwind City/0 69.48,25.15
accept Julia, The Pet Tamer##31316 |goto Stormwind City/0 69.48,25.15
step
talk Julia Stevens##64330
Defeat Julia Stevens |q 31316/1 |goto Elwynn Forest/0 41.66,83.67
|tip Julia's pet team consists of level 2 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Julia Stevens##64330
turnin Julia, The Pet Tamer##31316 |goto Elwynn Forest/0 41.66,83.67
accept Old MacDonald##31724 |goto Elwynn Forest/0 41.66,83.67
step
talk Old MacDonald##65648
Defeat Old MacDonald |q 31724/1 |goto Westfall/0 60.86,18.49
|tip MacDonald's pet team consists of level 3 Mechanical, Flying, and Critter battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Old MacDonald##65648
turnin Old MacDonald##31724 |goto Westfall/0 60.86,18.49
accept Lindsay##31725 |goto Westfall/0 60.86,18.49
step
talk Lindsay##65651
Defeat Lindsay |q 31725/1 |goto Redridge Mountains/0 33.30,52.58
|tip Lindsay's pet team consists of level 5 Critter battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Lindsay##65651
turnin Lindsay##31725 |goto Redridge Mountains/0 33.30,52.58
accept Eric Davidson##31726 |goto Redridge Mountains/0 33.30,52.58
step
talk Eric Davidson##65655
Defeat Eric Davidson |q 31726/1 |goto Duskwood/0 19.88,44.62
|tip Eric's pet team consists of level 7 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Eric Davidson##65655
turnin Eric Davidson##31726 |goto Duskwood/0 19.88,44.62
accept Steven Lisbane##31729 |goto Duskwood/0 19.88,44.62
step
talk Steven Lisbane##63194
Defeat Steven Lisbane |q 31729/1 |goto Northern Stranglethorn/0 46.01,40.45
|tip Steven's pet team consists of level 9 Beast and Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Steven Lisbane##31729 |goto Northern Stranglethorn/0 46.01,40.45
accept Bill Buckler##31728 |goto Northern Stranglethorn/0 46.01,40.45
step
talk Bill Buckler##65656
Defeat Bill Buckler |q 31728/1 |goto The Cape of Stranglethorn/0 51.46,73.38
|tip Bill's pet team consists of level 11 Humanoid and Flying battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Bill Buckler##31728 |goto The Cape of Stranglethorn/0 51.46,73.38
accept A Tamer's Homecoming##31917 |goto The Cape of Stranglethorn/0 51.46,73.38
step
talk Audrey Burnhep##63596
turnin A Tamer's Homecoming##31917 |goto Stormwind City/0 69.48,25.15
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto 69.48,25.15
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Everessa's pet team consists of level 16 Flying, Aquatic, and Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
accept Grand Master Lydia Accoste##31915 |goto Burning Steppes/0 66.96,52.42
step
talk Lydia Accoste##66522
Defeat Lydia Accoste |q 31915/1 |goto Deadwind Pass/0 40.05,76.45
|tip Lydia's pet team consists of level 19 Elemental and Undead battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Lydia Accoste##66522
turnin Grand Master Lydia Accoste##31915 |goto Deadwind Pass/0 40.05,76.45
accept The Returning Champion##31976 |goto Deadwind Pass/0 40.05,76.45 |only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
turnin The Returning Champion##31976 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Kalimdor##31889 |goto Stormwind City/0 69.48,25.15
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31889/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31889/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31889/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31889/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31889/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31889 |goto Moonglade/0 46.14,60.26
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Outland##31919 |goto Stormwind City/0 69.48,25.15
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31919/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31919/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31919/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31919/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31919 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31981 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
turnin Exceeding Expectations##31981 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Northrend##31927 |goto Stormwind City/0 69.48,25.15
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31927/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31927/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31927/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31927/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31927 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
turnin A Brief Reprieve##31984 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Cataclysm##31966 |goto Stormwind City/0 69.48,25.15
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31966/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31966/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31966/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31966 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31985 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
turnin The Triumphant Return##31985 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Pandaria##31930 |goto Stormwind City/0 69.48,25.15
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31930/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31930/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31930/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31930/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31930/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31930/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31930 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
step
talk Sara Finkleswitch##64572
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 86.60,60.00
step
label "dailies"
_No-No_
This enemy is aquatic.
It is strong against undead and weak to flying attacks.
I would suggest that you use flying pets against this enemy.
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds/0 25.30,78.50
step
_Xi'a_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds/0 36.30,37.30
step
_Gorespine_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Gorespine |q 32603/2 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes/0 72.30,79.80
step
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit/0 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit/0 67.90,84.70
step
_Ka'wi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using a team of mechanical pets against this enemy.
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest/0 48.40,71.00
step
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Nitun |q 32603/9 |goto The Jade Forest/0 57.00,29.10
step
talk Sara Finkleswitch##64572
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 86.60,60.00
step
use Red Panda##94025
learnpet Red Panda##1176
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Snowy Panda",{
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Snowy Panda battle pet.",
pet=1197,
mopready=true,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
talk Audrey Burnhep##63596
learnspell Revive Battle Pets##125439 |goto Stormwind City/0 69.48,25.15
step
talk Audrey Burnhep##63596
learnpet Snowshoe Rabbit##7560 |goto Stormwind City/0 69.48,25.15
|tip Train it from her.
step
talk Audrey Burnhep##63596
accept Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Win a Pet Battle |q 31591/1 |goto Stormwind City/0 70.10,23.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Audrey Burnhep##63596
turnin Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
accept On The Mend##31592 |goto Stormwind City/0 69.48,25.15
step
talk Jenova Stoneshield##11069
Tell her: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31592/1 |goto Stormwind City/0 67.30,37.70
step
talk Audrey Burnhep##63596
turnin On The Mend##31592 |goto Stormwind City/0 69.48,25.15
accept Level Up!##31821 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Raise a Battle Pet to level 3 |q 31821/1 |goto Stormwind City/0 70.10,23.40
|tip Keep battling critters around this area to accomplish this.
step
_Click the quest completion box that appears_
accept Audrey Burnhep##32008
step
talk Audrey Burnhep##63596
turnin Audrey Burnhep##32008 |goto Stormwind City/0 69.48,25.15
accept Julia, The Pet Tamer##31316 |goto Stormwind City/0 69.48,25.15
step
talk Julia Stevens##64330
Defeat Julia Stevens |q 31316/1 |goto Elwynn Forest/0 41.66,83.67
|tip Julia's pet team consists of level 2 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Julia Stevens##64330
turnin Julia, The Pet Tamer##31316 |goto Elwynn Forest/0 41.66,83.67
accept Old MacDonald##31724 |goto Elwynn Forest/0 41.66,83.67
step
talk Old MacDonald##65648
Defeat Old MacDonald |q 31724/1 |goto Westfall/0 60.86,18.49
|tip MacDonald's pet team consists of level 3 Mechanical, Flying, and Critter battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Old MacDonald##65648
turnin Old MacDonald##31724 |goto Westfall/0 60.86,18.49
accept Lindsay##31725 |goto Westfall/0 60.86,18.49
step
talk Lindsay##65651
Defeat Lindsay |q 31725/1 |goto Redridge Mountains/0 33.30,52.58
|tip Lindsay's pet team consists of level 5 Critter battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Lindsay##65651
turnin Lindsay##31725 |goto Redridge Mountains/0 33.30,52.58
accept Eric Davidson##31726 |goto Redridge Mountains/0 33.30,52.58
step
talk Eric Davidson##65655
Defeat Eric Davidson |q 31726/1 |goto Duskwood/0 19.88,44.62
|tip Eric's pet team consists of level 7 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Eric Davidson##65655
turnin Eric Davidson##31726 |goto Duskwood/0 19.88,44.62
accept Steven Lisbane##31729 |goto Duskwood/0 19.88,44.62
step
talk Steven Lisbane##63194
Defeat Steven Lisbane |q 31729/1 |goto Northern Stranglethorn/0 46.01,40.45
|tip Steven's pet team consists of level 9 Beast and Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Steven Lisbane##31729 |goto Northern Stranglethorn/0 46.01,40.45
accept Bill Buckler##31728 |goto Northern Stranglethorn/0 46.01,40.45
step
talk Bill Buckler##65656
Defeat Bill Buckler |q 31728/1 |goto The Cape of Stranglethorn/0 51.46,73.38
|tip Bill's pet team consists of level 11 Humanoid and Flying battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Bill Buckler##31728 |goto The Cape of Stranglethorn/0 51.46,73.38
accept A Tamer's Homecoming##31917 |goto The Cape of Stranglethorn/0 51.46,73.38
step
talk Audrey Burnhep##63596
turnin A Tamer's Homecoming##31917 |goto Stormwind City/0 69.48,25.15
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto 69.48,25.15
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Everessa's pet team consists of level 16 Flying, Aquatic, and Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
accept Grand Master Lydia Accoste##31915 |goto Burning Steppes/0 66.96,52.42
step
talk Lydia Accoste##66522
Defeat Lydia Accoste |q 31915/1 |goto Deadwind Pass/0 40.05,76.45
|tip Lydia's pet team consists of level 19 Elemental and Undead battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Lydia Accoste##66522
turnin Grand Master Lydia Accoste##31915 |goto Deadwind Pass/0 40.05,76.45
accept The Returning Champion##31976 |goto Deadwind Pass/0 40.05,76.45 |only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
turnin The Returning Champion##31976 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Kalimdor##31889 |goto Stormwind City/0 69.48,25.15
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31889/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31889/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31889/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31889/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31889/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31889 |goto Moonglade/0 46.14,60.26
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Outland##31919 |goto Stormwind City/0 69.48,25.15
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31919/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31919/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31919/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31919/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31919 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31981 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
turnin Exceeding Expectations##31981 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Northrend##31927 |goto Stormwind City/0 69.48,25.15
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31927/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31927/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31927/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31927/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31927 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
turnin A Brief Reprieve##31984 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Cataclysm##31966 |goto Stormwind City/0 69.48,25.15
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31966/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31966/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31966/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31966 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31985 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
turnin The Triumphant Return##31985 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Pandaria##31930 |goto Stormwind City/0 69.48,25.15
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31930/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31930/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31930/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31930/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31930/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31930/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31930 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
step
talk Sara Finkleswitch##64572
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 86.60,60.00
step
label "dailies"
_No-No_
This enemy is aquatic.
It is strong against undead and weak to flying attacks.
I would suggest that you use flying pets against this enemy.
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds/0 25.30,78.50
step
_Xi'a_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds/0 36.30,37.30
step
_Gorespine_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Gorespine |q 32603/2 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes/0 72.30,79.80
step
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit/0 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit/0 67.90,84.70
step
_Ka'wi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using a team of mechanical pets against this enemy.
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest/0 48.40,71.00
step
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Nitun |q 32603/9 |goto The Jade Forest/0 57.00,29.10
step
talk Sara Finkleswitch##64572
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 86.60,60.00
talk Sara Finkleswitch##64572
accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 86.60,60.00
step
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
Defeat No-No |q 32869/2 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Lucky Yi |q 32868/2 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Greyhoof |q 32868/1 |goto Valley of the Four Winds/0 25.30,78.50
step
_Skitterer Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Xi'a |q 32868/3 |goto Krasarang Wilds/0 36.30,37.30
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if completedq(32428)
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Flowing Pandaren Spirit |q 32439/1 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
_Gorespine_
This enemy is a beast
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Gorespine |q 32869/1 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Ti'un the Wanderer |q 32869/3 |goto Townlong Steppes/0 72.30,79.80
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if completedq(32428)
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Defeat Burning Pandaren Spirit |q 32434/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Kafi |q 32604/2 |goto Kun-Lai Summit/0 35.20,56.20
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if completedq(32428)
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Defeat Thundering Pandaren Spirit |q 32441/1 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Dos-Ryga |q 32604/3 |goto Kun-Lai Summit/0 67.90,84.70
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.90,36
|only if haveq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if completedq(32428)
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Defeat Whispering Pandaren Spirit |q 32440/1 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
_Ka'wi the Gorger_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Defeat Ka'wi the Gorger |q 32604/1 |goto The Jade Forest/0 48.40,71.00
step
_Nitun_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
Use beast pets against this enemy
Defeat Nitun |q 32604/4 |goto The Jade Forest/0 57.00,29.10
step
talk Sara Finkleswitch##64572
turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 86.60,60.00
step
use Fabled Pandaren Pet Supplies##94207
collect Mountain Panda##94210 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
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
mopready=true,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
talk Audrey Burnhep##63596
learnspell Revive Battle Pets##125439 |goto Stormwind City/0 69.48,25.15
step
talk Audrey Burnhep##63596
learnpet Snowshoe Rabbit##7560 |goto Stormwind City/0 69.48,25.15
|tip Train it from her.
step
talk Audrey Burnhep##63596
accept Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Win a Pet Battle |q 31591/1 |goto Stormwind City/0 70.10,23.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Audrey Burnhep##63596
turnin Learning the Ropes##31591 |goto Stormwind City/0 69.48,25.15
accept On The Mend##31592 |goto Stormwind City/0 69.48,25.15
step
talk Jenova Stoneshield##11069
Tell her: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31592/1 |goto Stormwind City/0 67.30,37.70
step
talk Audrey Burnhep##63596
turnin On The Mend##31592 |goto Stormwind City/0 69.48,25.15
accept Level Up!##31821 |goto Stormwind City/0 69.48,25.15
step
clicknpc Rabbit##61080
|tip It could also be a Squirrel.
Raise a Battle Pet to level 3 |q 31821/1 |goto Stormwind City/0 70.10,23.40
|tip Keep battling critters around this area to accomplish this.
step
_Click the quest completion box that appears_
accept Audrey Burnhep##32008
step
talk Audrey Burnhep##63596
turnin Audrey Burnhep##32008 |goto Stormwind City/0 69.48,25.15
accept Julia, The Pet Tamer##31316 |goto Stormwind City/0 69.48,25.15
step
talk Julia Stevens##64330
Defeat Julia Stevens |q 31316/1 |goto Elwynn Forest/0 41.66,83.67
|tip Julia's pet team consists of level 2 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Julia Stevens##64330
turnin Julia, The Pet Tamer##31316 |goto Elwynn Forest/0 41.66,83.67
accept Old MacDonald##31724 |goto Elwynn Forest/0 41.66,83.67
step
talk Old MacDonald##65648
Defeat Old MacDonald |q 31724/1 |goto Westfall/0 60.86,18.49
|tip MacDonald's pet team consists of level 3 Mechanical, Flying, and Critter battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Old MacDonald##65648
turnin Old MacDonald##31724 |goto Westfall/0 60.86,18.49
accept Lindsay##31725 |goto Westfall/0 60.86,18.49
step
talk Lindsay##65651
Defeat Lindsay |q 31725/1 |goto Redridge Mountains/0 33.30,52.58
|tip Lindsay's pet team consists of level 5 Critter battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Lindsay##65651
turnin Lindsay##31725 |goto Redridge Mountains/0 33.30,52.58
accept Eric Davidson##31726 |goto Redridge Mountains/0 33.30,52.58
step
talk Eric Davidson##65655
Defeat Eric Davidson |q 31726/1 |goto Duskwood/0 19.88,44.62
|tip Eric's pet team consists of level 7 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Eric Davidson##65655
turnin Eric Davidson##31726 |goto Duskwood/0 19.88,44.62
accept Steven Lisbane##31729 |goto Duskwood/0 19.88,44.62
step
talk Steven Lisbane##63194
Defeat Steven Lisbane |q 31729/1 |goto Northern Stranglethorn/0 46.01,40.45
|tip Steven's pet team consists of level 9 Beast and Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Steven Lisbane##31729 |goto Northern Stranglethorn/0 46.01,40.45
accept Bill Buckler##31728 |goto Northern Stranglethorn/0 46.01,40.45
step
talk Bill Buckler##65656
Defeat Bill Buckler |q 31728/1 |goto The Cape of Stranglethorn/0 51.46,73.38
|tip Bill's pet team consists of level 11 Humanoid and Flying battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Bill Buckler##31728 |goto The Cape of Stranglethorn/0 51.46,73.38
accept A Tamer's Homecoming##31917 |goto The Cape of Stranglethorn/0 51.46,73.38
step
talk Audrey Burnhep##63596
turnin A Tamer's Homecoming##31917 |goto Stormwind City/0 69.48,25.15
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto 69.48,25.15
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Everessa's pet team consists of level 16 Flying, Aquatic, and Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
accept Grand Master Lydia Accoste##31915 |goto Burning Steppes/0 66.96,52.42
step
talk Lydia Accoste##66522
Defeat Lydia Accoste |q 31915/1 |goto Deadwind Pass/0 40.05,76.45
|tip Lydia's pet team consists of level 19 Elemental and Undead battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Lydia Accoste##66522
turnin Grand Master Lydia Accoste##31915 |goto Deadwind Pass/0 40.05,76.45
accept The Returning Champion##31976 |goto Deadwind Pass/0 40.05,76.45 |only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
turnin The Returning Champion##31976 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31977) and not completedq(31976)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Kalimdor##31889 |goto Stormwind City/0 69.48,25.15
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31889/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31889/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31889/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31889/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31889/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31889 |goto Moonglade/0 46.14,60.26
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Outland##31919 |goto Stormwind City/0 69.48,25.15
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31919/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31919/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31919/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31919/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31919 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31981 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
turnin Exceeding Expectations##31981 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Northrend##31927 |goto Stormwind City/0 69.48,25.15
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31927/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31927/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31927/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31927/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31927 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
turnin A Brief Reprieve##31984 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Cataclysm##31966 |goto Stormwind City/0 69.48,25.15
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31966/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31966/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31966/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31966 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31985 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
turnin The Triumphant Return##31985 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31985) and not completedq(31986)
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Pandaria##31930 |goto Stormwind City/0 69.48,25.15
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31930/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31930/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31930/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31930/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31930/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31930/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31930 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
step
talk Sara Finkleswitch##64572
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms 86.60,60.00
step
label "dailies"
_No-No_
This enemy is aquatic.
It is strong against undead and weak to flying attacks.
I would suggest that you use flying pets against this enemy.
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms 11.00,70.90
step
_Lucky Yi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds 40.50,43.70
step
_Greyhoof_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds 25.30,78.50
step
_Xi'a_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds 36.30,37.30
step
_Gorespine_
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Gorespine |q 32603/2 |goto Dread Wastes 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes 72.30,79.80
step
This enemy is a beast.
It is strong against humanoids and weak against mechanical pets.
I would suggest using a team of mechanical pets against this enemy.
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic.
It is strong against undead and weak to flying pets.
I would suggest using flying pets against this enemy.
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit 67.90,84.70
step
_Ka'wi_
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using a team of mechanical pets against this enemy.
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest 48.40,71.00
step
This enemy is a critter.
Is is strong against Elementals and weak to beast attacks.
I would suggest using beast pets against this enemy.
Defeat Nitun |q 32603/9 |goto The Jade Forest 57.00,29.10
step
talk Sara Finkleswitch##64572
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms 86.60,60.00
talk Sara Finkleswitch##64572
accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 86.60,60.00
accept Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 86.60,60.00
step
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
Defeat No-No |q 32869/2 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Lucky Yi |q 32868/2 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Greyhoof |q 32868/1 |goto Valley of the Four Winds/0 25.30,78.50
step
_Skitterer Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Xi'a |q 32868/3 |goto Krasarang Wilds/0 36.30,37.30
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if completedq(32428)
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Flowing Pandaren Spirit |q 32439/1 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
_Gorespine_
This enemy is a beast
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Defeat Gorespine |q 32869/1 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Ti'un the Wanderer |q 32869/3 |goto Townlong Steppes/0 72.30,79.80
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if completedq(32428)
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Defeat Burning Pandaren Spirit |q 32434/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Kafi |q 32604/2 |goto Kun-Lai Summit/0 35.20,56.20
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if completedq(32428)
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Defeat Thundering Pandaren Spirit |q 32441/1 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Dos-Ryga |q 32604/3 |goto Kun-Lai Summit/0 67.90,84.70
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.90,36
|only if haveq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if completedq(32428)
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Defeat Whispering Pandaren Spirit |q 32440/1 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
_Ka'wi the Gorger_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Defeat Ka'wi the Gorger |q 32604/1 |goto The Jade Forest/0 48.40,71.00
step
_Nitun_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
Use beast pets against this enemy
Defeat Nitun |q 32604/4 |goto The Jade Forest/0 57.00,29.10
step
talk Sara Finkleswitch##64572
turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 86.60,60.00
turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 86.60,60.00
step
use Fabled Pandaren Pet Supplies##94207
collect Mountain Panda##94210 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
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
description="This guide will teach you how to acquire the Jade Owl battle pet.",
pet=845,
mopready=true,
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
