local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsA") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Warhorse",{
keywords={"paladin","warhorse","ground","mount"},
mounts={13819},
patch='20003',
mounttype='unknown',
model={8469},
description="This guide will help you acquire the Warhorse (Paladin only) mount.",
},[[
step
This mount is only available to Human/Dwarven Paladins
|only if not Paladin
step
To obtain this mount you must level a Human/Dwarven Paladin to level 10
|tip Once your character is level 10, this mount will be rewarded automatically.
learnmount Warhorse##13819
|only Paladin
step
_Congratulations!_
You are now the proud owner of a Warhorse.
|only Paladin
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Charger",{
keywords={"paladin","Charger","ground","mount"},
mounts={23214},
patch='20003',
mounttype='unknown',
model={14584},
description="This guide will help you acquire the Charger (Paladin only) mount.",
},[[
step
This mount is only available to Human/Dwarven Paladins
|only if not Paladin
step
To obtain this mount you must level a Human/Dwarven Paladin to level 20
|tip Once your character is level 20, this mount will be rewarded automatically.
learnmount Charger##23214
|only Paladin
step
_Congratulations!_
You are now the proud owner of a Charger.
|only Paladin
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Exarch's Elekk",{
keywords={"paladin","Exarch's","Elekk","ground","mount"},
mounts={73629},
patch='unknown',
mounttype='unknown',
model={31367},
description="This guide will help you acquire the Exarch's Elekk (Paladin only) mount.",
},[[
step
This mount is only available to Draenei Paladins
|only if not Paladin
step
To obtain this mount you must level a Draenei Paladin to level 10
|tip Once your character is level 10, this mount will be rewarded automatically.
learnmount Exarch's Elekk##73629
|only Paladin
step
_Congratulations!_
You are now the proud owner of a Exarch's Elekk.
|only Paladin
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Great Exarch's Elekk",{
keywords={"paladin","Great","Exarch's","Elekk","ground","mount"},
mounts={73630},
patch='unknown',
mounttype='unknown',
model={31368},
description="This guide will help you acquire the Great Exarch's Elekk (Paladin only) mount.",
},[[
step
This mount is only available to Draenei Paladins
|only if not Paladin
step
To obtain this mount you must level a Draenei Paladin to level 20
|tip Once your character is level 20, this mount will be rewarded automatically.
learnmount Great Exarch's Elekk##73630
|only Paladin
step
_Congratulations!_
You are now the proud owner of a Great Exarch's Elekk.
|only Paladin
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Warlock\\Felsteed",{
keywords={"warlock","Felsteed","ground","mount"},
mounts={5784},
patch='20003',
mounttype='unknown',
model={2346},
description="This guide will help you acquire the Felsteed (Warlock only) mount.",
},[[
step
This mount is only available to Warlocks
|only if not Warlock
step
To obtain this mount you must level a Warlock to level 10
|tip Once your character is level 10, this mount will be rewarded automatically.
learnmount Felsteed##5784
|only Warlock
step
_Congratulations!_
You are now the proud owner of a Felsteed.
|only Warlock
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Warlock\\Dreadsteed",{
keywords={"warlock","Dreadsteed","ground","mount"},
mounts={23161},
patch='20001',
mounttype='unknown',
model={14554},
description="This guide will help you acquire the Dreadsteed (Warlock only) mount.",
},[[
step
This mount is only available to Warlocks
|only if not Warlock
step
To obtain this mount you must level a Warlock to level 20
|tip Once your character is level 20, this mount will be rewarded automatically.
learnmount Dreadsteed##23161
|only Warlock
step
_Congratulations!_
You are now the proud owner of a Dreadsteed.
|only Warlock
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Argent Warhorse",{
keywords={"argent","warhorse","charger","tournament","ground","mount"},
mounts={67466},
patch='30305',
mounttype='Ground',
model={28918,28919},
description="This guide will help you acquire the Argent Warhorse and Argent Charger (Paladin only) mounts.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _ArgentTournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
_Earn_ the title _"Crusader"_ |achieve 2816
|tip To do this you must become a Champion and have exalted reputation for all of the factions of the Alliance.
earn 100 Champion's Seal##241 |only if default
earn 200 Champion's Seal##241 |only Paladin
step
talk Dame Evniki Kapsalis##34885
buy 1 Argent Charger##47179 |goto Icecrown,69.40,23.20 |only Paladin
buy 1 Argent Warhorse##47180 |goto Icecrown,69.40,23.20
step
learnmount Argent Charger##66906 |use Argent Charger##47179 |only Paladin
learnmount Argent Warhorse##67466 |use Argent Warhorse##47180
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Darnassus Mounts",{
keywords={"darnassus","darnassian","nightsaber","swift","moonsaber","argent","tournament","ground","mount"},
mounts={63637,65638},
patch='30103',
mounttype='Ground',
model={29256,14333},
description="This guide will help you acquire the Darnassian Nightsaber and Swift Moonsaber mounts.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
|tip Be sure to choose to represent Darnassus in the Argent Tournament
Become a _Champion of Darnassus_ |achieve 2777
earn 105 Champion's Seal##241
step
talk Rook Hawkfist##33653
buy 1 Darnassian Nightsaber##45591 |goto Icecrown,76.20,19.20
buy 1 Swift Moonsaber##46744 |goto Icecrown,76.20,19.20
step
learnmount Darnassian Nightsaber##63637 |use Darnassian Nightsaber##45591
learnmount Swift Moonsaber##65638 |use Swift Moonsaber##46744
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Exodar Mounts",{
keywords={"exodar","elekk","great","red","argent","tournament","ground","mount"},
mounts={63639,65637},
patch='30103',
mounttype='Ground',
model={29255,28606},
description="This guide will help you acquire the Exodar Elekk and Great Red Elekk mounts.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
|tip Be sure to choose to represent Exodar in the Argent Tournament
Become a _Champion of Exodar_ |achieve 2778
earn 105 Champion's Seal##241
step
talk Irisee##33657
buy 1 Exodar Elekk##45590 |goto Icecrown,76.20,19.20
buy 1 Great Red Elekk##46745 |goto Icecrown,76.20,19.20
step
learnmount Exodar Elekk##63639 |use Exodar Elekk##45590
learnmount Great Red Elekk##65637 |use Great Red Elekk##46745
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Gnomeregan Mounts",{
keywords={"gnomeregan","mechanostrider","turbostrider","argent","tournament","ground","mount"},
mounts={63638,65642},
patch='40003',
mounttype='Ground',
model={14375,28571},
description="This guide will help you acquire the Gnomeregan Mechanostrider and Turbostrider mounts.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
|tip Be sure to choose to represent Gnomeregan in the Argent Tournament
Become a _Champion of Gnomeregan_ |achieve 2779
earn 105 Champion's Seal##241
step
talk Rillie Spindlenut##33650
buy 1 Gnomeregan Mechanostrider##45589 |goto Icecrown,76.40,19.60
buy 1 Turbostrider##46747 |goto Icecrown,76.40,19.60
step
learnmount Gnomeregan Mechanostrider##63638 |use Gnomeregan Mechanostrider##45589
learnmount Turbostrider##65642 |use Turbostrider##46747
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Ironforge Mounts",{
keywords={"ironforge","swift","violet","ram","argent","tournament","ground","mount"},
mounts={63636,65643},
patch='30103',
mounttype='Ground',
model={29258,28612},
description="This guide will help you acquire the Ironforge Ram and Swift violet Ram mounts.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
|tip Be sure to choose to represent Ironforge in the Argent Tournament
Become a _Champion of Ironforge_ |achieve 2780
earn 105 Champion's Seal##241
step
talk Derrick Brindlebeard##33310
buy 1 Ironforge Ram##45586 |goto Icecrown,76.40,19.40
buy 1 Swift Violet Ram##46748 |goto Icecrown,76.40,19.40
step
learnmount Ironforge Ram##63636 |use Ironforge Ram##45586
learnmount Swift Violet Ram##65643 |use Swift Violet Ram##46748
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Quel'dorei Steed",{
keywords={"quel'dorei","steed","argent","tournament","ground","mount"},
mounts={66090},
patch='30200',
mounttype='Ground',
model={28888},
description="This guide will help you acquire the Quel'dorei Steed mount.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _ArgentTournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
_Exalted_ with _The Silver Covenant_ |complete rep("The Silver Covenant")>=Exalted
earn 100 Champion's Seal##241
step
talk Hiren Loresong##34881
buy 1 Quel'dorei Steed##46815 |goto Icecrown,76.20,19.60
step
learnmount Quel'dorei Steed##66090 |use Quel'dorei Steed##46815
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Stormwind Mounts",{
keywords={"stormwind","steed","swift","gray","argent","tournament","ground","mount"},
mounts={63232,65640},
patch='30103',
mounttype='Ground',
model={29043,28912},
description="This guide will help you acquire the Stormwind Steed and Swift Gray Steed mounts.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
|tip Be sure to choose to represent Stormwind in the Argent Tournament
Become a _Champion of Stormwind_ |achieve 2781
earn 105 Champion's Seal##241
step
talk Corporal Arthur Flew##33307
buy 1 Stormwind Steed##45125 |goto Icecrown,76.40,19.20
buy 1 Swift Gray Steed##46752 |goto Icecrown,76.40,19.20
step
learnmount Stormwind Steed##63232 |use Stormwind Steed##45125
learnmount Swift Gray Steed##65640 |use Swift Gray Steed##46752
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dailies Mounts\\White Polar Bear",{
keywords={"white","polar","bear","ground","mount"},
mounts={54753},
patch='30001',
mounttype='Ground',
model={28428},
description="This guide will help you acquire the White Polar Bear mount.",
},[[
step
label "start"
This mount _requires_ you to have _The Sons of Hodir_ pre-quests completed
confirm
|next "dailies" |only if completedq(13007)
|next |only if default
step
#include "Hodir_Quests"
step
label "dailies"
talk Gretta the Arbiter##29796
accept Back to the Pit##13424 |goto The Storm Peaks,50.90,65.60 |or
accept Defending Your Title##13423 |goto The Storm Peaks,50.90,65.60 |or
accept Maintaining Discipline##13422 |goto The Storm Peaks,50.90,65.60 |or
accept The Aberrations Must Die##13425 |goto The Storm Peaks,50.90,65.60 |or
step
Use the Reins of the Warbear Matriarch in your bags |use Reins of the Warbear Matriarch##42499
Use the _abilities_ on your _hotbar_ to kill the _Hyldsmeet Warbears_
kill 6 Hyldsmeet Warbear##30174 |q 13424/1 |goto The Storm Peaks 49.40,67.60
only if haveq(13424)
step
talk Victorious Challenger##30012s
_Challenge_ them to a fight
kill 6 Victorious Challenger##30012 |q 13423/1 |goto The Storm Peaks 48.20,70.10
only if haveq(13423)
step
kill Valkyrion Apirant##29569
collect Vial of Frost Oil##41612 |n
Use the _Vial of Frost Oils_ to destroy the _Plauged Proto-Drake Eggs_ |use Vial of Frost Oil##41612
Destroy Plagued Proto-Drake Egg |q 13425/1 |goto The Storm Peaks 25.00,60.00
only if haveq(13425)
step
Use your _Disciplining Rod_ on the _Exhausted Vrykuls_ |use Disciplining Rod##42837
|tip They are located all throughout this mine
Exhausted Vrykul Disciplined |q 13422/1 |goto The Storm Peaks 46.50,68.30
only if haveq(13422)
step
talk Gretta the Arbiter##29796
turnin Back to the Pit##13424 |goto The Storm Peaks,50.90,65.60
turnin Defending Your Title##13423 |goto The Storm Peaks,50.90,65.60
turnin Maintaining Discipline##13422 |goto The Storm Peaks,50.90,65.60
turnin The Arberrations Must Die##13425 |goto The Storm Peaks,50.90,65.60
collect 1 Hyldinr Spoils##44751 |goto The Storm Peaks,50.90,65.60
step
use Hyldinr Spoils##44751
collect 1 Reins of the White Polar Bear##43962
|tip This has a 2% drop rate from these bags. Do these dailies every day to have a higher chance of obtaining it!
_Click here_ to return to the _beginning_ of the _daily quests_ |next "dailies" |confirm
step
learnmount White Polar Bear##54753 |use Reins of the White Polar Bear##43962
Click here to return to the beginning of this guide. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dailies Mounts\\Winterspring Frostsaber",{
keywords={"winterspring","frostsaber","ground","mount"},
mounts={17229},
patch='30008',
mounttype='Ground',
model={10426},
description="This guide will help you acquire the Winterspring Frostsaber mount.",
},[[
step
This mount will take _20 days_ to earn.
Click Here to Continue |confirm
step
talk Rivern Frostwind##10618
accept Get Them While They're Young##29032 |goto Winterspring/0 46.68,17.71
step
clicknpc Frostsaber Cub##51681
collect 8 Frostsaber Cub##68638 |q 29032/1 |goto Winterspring/0 48.91,18.72
step
talk Rivern Frostwind##10618
turnin Get Them While They're Young##29032 |goto Winterspring/0 46.68,17.71
accept They Grow Up So Fast##29034 |goto Winterspring/0 46.68,17.71
step
label "dailies"
Go to _Winterspring_ |goto Winterspring/0 46.45,17.67 < 100 |c
step
use Winterspring Cub##68646
talk Winterspring Cub##51677
accept Cub's First Toy##29040 |or |only if NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
accept Cub's First Toy##29051 |or |only if Dwarf or Worgen
accept A Cub's Craving##29035 |or |only if NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
accept A Cub's Cravings##29052 |or |only if Dwarf or Worgen
accept Hunting Practice##29038 |or |only if NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
accept Hunting Practice##29039 |or |only if Dwarf or Worgen
accept 'Borrowing' From the Winterfall##29037 |or |only if NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
accept 'Borrowing' From the Winterfall##29053 |or |only if Dwarf or Worgen
|tip You will only be able to accept one of these quests a day.
step
kill Ice Thistle Yeti##7458+
collect 1 Tough Yeti Hide##68663 |goto Winterspring/0 66.17,55.99 |q 29040
|only if haveq(29040)
step
kill Owlbeast enemies around this area
collect 5 Wildkin Feather##68662 |goto Winterspring/0 64.85,28.98 |q 29040
You can find more around [65.22,39.59]
|only if haveq(29040)
step
use Winterspring Cub##68646
use Tough Yeti Hide##68663
|tip Use the Tough Yeti Hide to create the Winterspring Cat Toy.
collect Winterspring Cat Toy##68668 |q 29040
|only if haveq(29040)
step
use Winterspring Cub##68646
use Winterspring Cat Toy##68668
|tip Use the Winterspring Cat Toy to play with your Winterspring Cub.
Try out Winterspring Cat Toy |q 29040/1
|only if haveq(29040)
step
kill Ice Thistle Yeti##7458+
collect Tough Yeti Hide##68663 |goto Winterspring/0 66.17,55.99 |q 29051
|only if haveq(29051)
step
kill Owlbeast enemies around this area
collect 5 Wildkin Feather##68662 |goto Winterspring/0 64.85,28.98 |q 29051
You can find more around [65.22,39.59]
|only if haveq(29051)
step
use Tough Yeti Hide##68663
|tip Create the Winterspring Cat Toy.
collect Winterspring Cat Toy##68668 |q 29051
|only if haveq(29051)
step
use Winterspring Cub##68646
use Winterspring Cat Toy##68668
|tip Use the Winterspring Cat Toy to play with your Winterspring Cub.
Try out Winterspring Cat Toy |q 29051/1
|only if haveq(29051)
step
kill Shardtooth Mauler##7443+
collect 6 Shardtooth Meat##12622 |goto Winterspring/0 57.24,38.61 |q 29035
|only if haveq(29035)
step
use Winterspring Cub##68646
|use Shardtooth Meat##12622
Feed Shardtooth Meat to Cub |q 29035/1
|only if haveq(29035)
step
kill Shardtooth Mauler##7443+
collect 6 Shardtooth Meat##12622 |goto Winterspring/0 57.24,38.61 |q 29052
|only if haveq(29052)
step
use Winterspring Cub##68646
use Shardtooth Meat##12622
Feed Shardtooth Meat to Cub |q 29052/1
|only if haveq(29052)
step
use Winterspring Cub##68646
|tip Bring your Winterspring Cub to the snow mounds around this area.
|tip They look like tiny piles of snow that are glittering.
Hunting Practice |q 29038/1 |goto Winterspring/0 53.46,27.61
|only if haveq(29038)
step
use Winterspring Cub##68646
|tip Bring your Winterspring Cub to the snow mounds around this area.
|tip They look like tiny piles of snow that are glittering.
Hunting Practice |q 29039/1 |goto Winterspring/0 53.46,27.61
|only if haveq(29039)
step
click Smoked Meat##208189
|tip They are cooking on little, square, barbeque stands around the Winterfall camps.
collect 6 Smoked Meat##68645 |goto Winterspring/0 66.63,47.81 |q 29037
You can find more around:
[36.87,55.65]
[35.21,56.57]
[23.95,47.76]
|only if haveq(29037)
step
use Winterspring Cub##68646
use Smoked Meat##68645
|tip Feed them to your Winterspring Cub.
Feed Your Winterspring Cub the Smoked Meat |q 29037/1
|only if haveq(29037)
step
click Smoked Meat##208189
|tip They are cooking on little, square, barbeque stands around the Winterfall camps.
collect 6 Smoked Meat##68645 |goto Winterspring/0 66.63,47.81 |q 29053
You can find more around:
[36.87,55.65]
[35.21,56.57]
[23.95,47.76]
|only if haveq(29053)
step
use Winterspring Cub##68646
use Smoked Meat##68645
|tip Feed them to your Winterspring Cub.
Feed Your Winterspring Cub the Smoked Meat |q 29053/1
|only if haveq(29053)
step
use Winterspring Cub##68646
talk Winterspring Cub##51677
turnin Cub's First Toy##29040 |or |only if haveq(29040) and NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
turnin Cub's First Toy##29051 |or |only if haveq(29051) and Dwarf or Worgen
turnin A Cub's Craving##29035 |or |only if haveq(29035) and NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
turnin A Cub's Cravings##29052 |or |only if haveq(29052) and Dwarf or Worgen
turnin Hunting Practice##29038 |or |only if haveq(29038) and NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
turnin Hunting Practice##29039 |or |only  if haveq(29039) and Dwarf or Worgen
turnin 'Borrowing' From the Winterfall##29037 |or |only if haveq(29037) and NightElf or Gnome or Draenei or KulTiran or VoidElf or Pandaren or DarkIronDwarf or LightforgedDraenei or Mechagnome
turnin 'Borrowing' From the Winterfall##29053 |or |only if haveq(29053) and Dwarf or Worgen
_Click here_ to return to the _beginning_ of the _daily quests_. |confirm |next "dailies"
|tip You can only do one of these quests per day.
collect 20 Cub Whisker##68644 |q 29034/1
step
You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
collect 20 Runecloth##14047
collect 20 Rugged Leather##8170
step
talk Rivern Frostwind##10618
turnin They Grow Up So Fast##29034 |goto Winterspring/0 46.68,17.71
collect 1 Reins of the Winterspring Frostsaber##13086 |goto Winterspring/0 46.68,17.71
step
|use Reins of the Winterspring Frostsaber##13086
Learn the "Winterspring Frostsaber" Mount |learnmount Winterspring Frostsaber##17229
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Grey Riding Camel",{
keywords={"grey","riding","camel","ground","mount"},
mounts={88750},
patch='unknown',
mounttype='Ground',
model={35135},
description="This guide will help you acquire the Grey Riding Camel mount.",
},[[
step
talk Zidormi##162419
Time Travel to Old Uldum |complete ZGV.InPhase("Old Uldum") |goto Uldum/0 56.02,35.14
|only if not ZGV.InPhase("Old Uldum")
label "start"
step
Begin the Search
|tip This mount drops off a rare spawn called Dormus the Camel-Hoarder.
|tip You get to him by clicking the Mysterious Camel Figurines around Uldum.
|tip They have a chance to teleport you to his area and you get a debuff giving you 20 minutes to kill him.
|tip Check all the waypoints in each step for a chance to find the Camel Figurine.
Click Here to Continue |confirm
step
Next to this table in the inn.
confirm |goto Uldum/0 22.00,64.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Under the this tent, next to some boxes.
confirm |goto Uldum/0 22.20,64.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
In between the wagon and the stone rock.
confirm |goto Uldum/0 24.20,59.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Behind this wagon.
confirm |goto Uldum/0 24.60,60.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tall wooden post.
confirm |goto Uldum/0 25.40,65.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the boxes with nets over them.
confirm |goto Uldum/0 25.60,65.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this wagon with the back down.
confirm |goto Uldum/0 26.20,64.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this light colored log in the sand.
confirm |goto Uldum/0 26.20,65.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the stairs at this wall.
confirm |goto Uldum/0 28.60,63.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the corner of this wall.
confirm |goto Uldum/0 30.20,62.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tall and wide pillar.
confirm |goto Uldum/0 30.40,60.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of these stairs.
confirm |goto Uldum/0 30.80,67.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the top of these stairs, next to the stone ramp and pillar.
confirm |goto Uldum/0 31.00,66.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this pillar, near the stairs going down.
confirm |goto Uldum/0 31.60,69.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tall wide pillar.
confirm |goto Uldum/0 33.00,59.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the top of these stairs.
confirm |goto Uldum/0 33.00,67.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
On this platform in the water.
confirm |goto Uldum/0 33.00,71.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this door and small stairway.
confirm |goto Uldum/0 33.20,62.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this pillar and ledge.
confirm |goto Uldum/0 37.00,64.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of these stairs.
confirm |goto Uldum/0 38.20,60.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the edge of this small cliff.
confirm |goto Uldum/0 38.60,54.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this bench.
confirm |goto Uldum/0 47.20,76.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the top of these stairs.
confirm |goto Uldum/0 49.00,75.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tree.
confirm |goto Uldum/0 49.20,75.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these carts with items inside.
confirm |goto Uldum/0 50.20,73.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these tables with weapons on them.
confirm |goto Uldum/0 50.40,73.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these tables with weapons on them.
confirm |goto Uldum/0 50.40,72.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these tables with weapons on them.
confirm |goto Uldum/0 50.60,72.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these wagons and this table with weapons.
confirm |goto Uldum/0 51.00,79.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these square stones.
confirm |goto Uldum/0 51.80,70.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Inside this room, check all 4 corners.
confirm |goto Uldum/0 73.40,73.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Look around both sets of stairs here.
confirm |goto Uldum/0 70.00,58.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this little stone house.
confirm |goto Uldum/0 72.00,44.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
In this corner with piles of sand.
confirm |goto Uldum/0 64.60,30.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
On the edge of this tile in a star formation.
confirm |goto Uldum/0 52.40,28.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this pillar and rocks on the ground.
confirm |goto Uldum/0 52.20,27.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tropical tree.
confirm |goto Uldum/0 50.60,31.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this buried pillar.
confirm |goto Uldum/0 45.20,15.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tent with a bonfire nearby.
confirm |goto Uldum/0 34.20,21.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this wall.
confirm |goto Uldum/0 34.20,19.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this group of tents.
confirm |goto Uldum/0 33.80,25.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
On top of this pillar.
confirm |goto Uldum/0 33.20,28.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
In this rubble, next to the building.
confirm |goto Uldum/0 33.20,28.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
In between these two trees with shrubbery.
confirm |goto Uldum/0 29.80,25.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this Rock and Tree.
confirm |goto Uldum/0 29.80,20.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this group of trees.
confirm |goto Uldum/0 51.80,49.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
In this middle area of these houses.
confirm |goto Uldum/0 52.00,51.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this small building.
confirm |goto Uldum/0 51.40,51.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of this ramp.
confirm |goto Uldum/0 50.60,50.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this group of trees, on this cliff.
confirm |goto Uldum/0 48.00,46.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these group of trees.
confirm |goto Uldum/0 46.20,44.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this rock formation.
confirm |goto Uldum/0 40.80,49.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
In the middle of this rubble.
confirm |goto Uldum/0 40.20,43.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this very little doorway with a triangle on it.
confirm |goto Uldum/0 40.00,44.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this large pillar and wall with birds on it.
confirm |goto Uldum/0 40.00,38.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of these stairs.
confirm |goto Uldum/0 32.60,47.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the Pile of bones and this small cliff.
confirm |goto Uldum/0 32.00,45.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this wagon with items inside it.
confirm |goto Uldum/0 25.40,51.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
If you still have not found the figurine, click here to start over. Remember, this has a low chance of spawning.
confirm |next "start"
step
label "camel"
kill Dormus the Camel-Hoarder##50245 |n
collect 1 Reins of the Grey Riding Camel##63046
step
|use Reins of the Grey Riding Camel##63046
Learn the "Grey Riding Camel" Mount |learnmount Grey Riding Camel##88750
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Amani Battle Bear",{
keywords={"amani","battle","bear","ground","mount"},
mounts={98204},
patch='unknown',
mounttype='Ground',
model={38261},
description="This guide will help you acquire the Amani Battle Bear mount.",
},[[
step
label "start"
In order to get the Amani Battle Bear you will need to _save all 4 sacrifices_, in this dungeon, _within 15 minutes_. |goto Ghostlands 82.00,64.30
In order to do this, kill the bosses in the following order: _Akil'zon_, _Nalorakk_, _Jan'alai_, and finally _Halazzi_.
Both Akil'zon and Nalorakk grant you _5 minutes of extra time_ to complete your task, giving you a _total of 25 minutes_ at most to kill all 4 bosses.
Click here for the locations of each boss. |confirm
step
kill Akil'zon##23574 |goto Zul'Aman 34,22
confirm
step
kill Nalorakk##23576 |goto Zul'Aman 41,75
confirm
step
kill Jan'alai##23578 |goto Zul'Aman 55,70
confirm
step
kill Halazzi##23577 |goto Zul'Aman 57,23
Once Halazzi has died free Kasha from her cage and wait for her to blow up pots around the room, the final pot will hold Kasha's bag.
confirm
step
click Kasha's Bag##186672
collect 1 Amani Battle Bear##69747 |tip As long as you saved all 4 sacrifices this is a guaranteed drop.
step
learnmount Amani Battle Bear##98204 |use Amani Battle Bear##69747
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Raven Lord",{
keywords={"raven","lord","ground","mount"},
mounts={41252},
patch='30008',
mounttype='Ground',
model={21427},
description="This guide will help you acquire the Raven Lord mount.",
},[[
step
Enter the "Sethekk Halls" Dungeon goto Terokkar Forest/0 44.90,65.61 < 20 |c |or
'|complete hasmount(41252)
step
kill Anzu##23035
collect 1 Reins of the Raven Lord##32768
'|complete hasmount(41252) |or
step
use Reins of the Raven Lord##32768
Learn the "Raven Lord" Mount |learnmount Raven Lord##41252
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Rivendare's Deathcharger",{
keywords={"rivendare's","deathcharger","skeletal","warhorse","ground","mount"},
mounts={17481},
patch='30003',
mounttype='Ground',
model={16937},
description="This guide will help you acquire the Rivendare's Deathcharger mount.",
},[[
step
This mount is an _Extremely Rare_ drop from the final part of Stratholme.
It will likely take several runs to attain this mount.
To reset an instance after you have cleared it, leave via the portal.
Once outside of the instance, right click your character portrait and select the _Reset all instances_ option.
You should be able to run the instance several times before it locks out.
confirm
step
kill the bosses at these locations, including the Acolyte's behind them, to open the gate to Lord Aurius.
kill Baroness Anastari##10436
kill Thuzadin Acolyte##10399+
_
kill Maleki the Pallid##10438
kill Thuzadin Acolyte##10399+
_
kill Nerub'enkan##10437
kill Thuzadin Acolyte##10399+
confirm
step
kill Lord Aurius Rivendare##45412
collect 1 Deathcharger's Reins##13335
|tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
|tip If you want, you can go outside the instance and reset it. To reset an instance, right click your portrait and click "Reset all instances". You can then kill this boss again for another chance at the mount.
step
learnmount Rivendare's Deathcharger##17481 |use Deathcharger's Reins##13335
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift White Hawkstrider",{
keywords={"swift","white","hawkstrider","ground","mount"},
mounts={46628},
patch='20400',
mounttype='Ground',
model={19483},
description="This guide will help you acquire the Swift White Hawkstrider mount.",
},[[
step
Traverse through Magisters' Terrace |goto Magisters' Terrace,84.30,46.00
Go down the ramp here |goto Magisters' Terrace,84.30,46.00,0.50 |noway |c
step
kill Kael'thas Sunstrider##24664
collect 1 Reins of the Swift White Hawkstrider##35513 |goto Magisters' Terrace 6.90,51.00
|tip This has a 4% drop rate, do this everyday to have a higher chance of obtaining it!
Note that if it doesn't drop, you will have to wait until tomorrow for a chance to get it again.
step
learnmount Swift White Hawkstrider##46628 |use Reins of the Swift White Hawkstrider##35513
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift Zulian Panther and Armored Razzashi Raptor",{
keywords={"swift","zulian","panther","armored","razzashi","raptor","ground","mount"},
mounts={96499,96491},
patch='unknown',
mounttype='Ground',
model={37799},
description="This guide will help you acquire the Swift Zulian Panther and Armored Razzashi Raptor mount.",
},[[
step
label "start0"
You can either use the Dungeon Finder or get a group of friends to complete Heroic Difficulty Zul'Gurub.
Click here for the Swift Zulian Panther |next "panther0" |confirm
Click here for the Armored Razzashi Raptor |next "raptor0" |confirm
step
label "panther0"
Enter the Temple of Bethekk here: |goto Zul'Gurub/0 47.50,21.70,0.50
step
Traverse Zul'Gurub and kill High Priestess Kilnara
collect 1 Swift Zulian Panther##68824 |goto Zul'Gurub/0 47.80,20.30
|tip This has an incredibly low chance of dropping. (Less than 1%)
Click here to return to the beginning |next "start0" |confirm
Click here if you have both mounts |next "end0" |confirm
step
label "raptor0"
collect 1 Armored Razzashi Raptor##68823 |goto Zul'Gurub/0 60.00,80.80
|tip This has an incredibly low chance of dropping. (Less than 1%)
Click here to return to the beginning |next "start0" |confirm
Click here if you have both mounts |next "end0" |confirm
step
label "end0"
learnmount Swift Zulian Panther##96499 |use Swift Zulian Panther##68824
learnmount Armored Razzashi Raptor##96491 |use Armored Razzashi Raptor##68823
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Wooly Mammoth",{
keywords={"wooly","mammoth","ground","mount"},
mounts={59791},
patch='unknown',
mounttype='Ground',
model={26424},
description="This guide will help you acquire the Wooly Mammoth mount.",
},[[
step
talk Mei Francis##32216
buy Reins of the Wooly Mammoth##44231 |goto Dalaran/1 58.11,42.09 |or
'|complete hasmount(59793) |or
step
use the Reins of the Wooly Mammoth##44231
Learn the "Wooly Mammoth" Mount |learnmount Wooly Mammoth##59793
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Brewfest\\Brewfest Rams",{
keywords={"brewfest","ram","swift","ground","mount"},
mounts={24368},
patch='40304',
mounttype='unknown',
model={22350},
description="This guide will help you acquire the Swift Brewfest Ram mount.",
},[[
step
This pet can only be obtained during the Brewfest event
It can be purchased for 100g
confirm
step
talk Pol Amberstill##24468
buy Swift Brewfest Ram##33977 |goto Dun Morogh 53.60,38.60
buy Brewfest Ram##33976 |goto Dun Morogh 53.60,38.60
step
learnmount Swift Brewfest Ram##24368 |use Swift Brewfest Ram##33977
learnmount Brewfest Ram##23588 |use Swift Brewfest Ram##33976
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Brewfest\\Great Brewfest Kodo",{
keywords={"great","brewfest","kodo","ground","mount"},
mounts={49379},
patch='20403',
mounttype='Ground',
model={24757},
description="This guide will help you acquire the Swift Brewfest Kodo mount.",
},[[
step
This pet can only be obtained during the Brewfest event
Use the _Dungeon Finder_ to go to the _World Event Dungeon - Coren Direbrew_ |goto Blackrock Depths |noway |c
step
kill Coren Direwbrew##23872
collect 1 Keg-Shaped Treasure Chest##54535
|tip This will appear in your bags once you kill Coren Direbrew and can only be won once a day
use Keg-Shaped Treasure Chest##54535
collect 1 Great Brewfest Kodo##37828
|tip This mount has a low chance of dropping. (4%)
step
learnmount Great Brewfest Kodo##49379 |use Great Brewfest Kodo##37828
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Darkmoon Faire\\Moonfang",{
keywords={"moonfang","darkmoon","faire","ground","mount"},
model={49249},
mounts={145133},
patch='54000',
mounttype='unknown',
description="This guide will help you acquire the Shimmering Moonstone mount.",
},[[
step
You can only obtain this mount when the Darkmoon Faire is in town.
This pet drops from a _Rare Spawn_ on the Darkmoon Island.
confirm
step
kill Moonfang##71992+
collect Shimmering Moonstone##101675 |goto Darkmoon Island/0 40.00,45.50
step
Use the _Shimmering Moonstone_ in your bags |use Shimmering Moonstone##101675
learnmount Moonfang##145133
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Love is in the Air\\Swift Lovebird",{
keywords={"swift","lovebird","tallstrider","ground","mount"},
mounts={102350},
patch='43000',
mounttype='Ground',
model={6476},
description="This guide will help you acquire the Swift Lovebird mount.",
},[[
step
This pet can only be obtained during the Love is in the Air event
It can be purchased for 270 Love Tokens
|tip See Love is in the Air Events guide
Click here to continue. |confirm
step
talk Lovely Merchant##37674
buy Swift Lovebird##72146 |goto Stormwind City,62.50,75.30
step
learnmount Swift Lovebird##102350 |use Swift Lovebird##72146
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Noblegarden\\Swift Springstrider",{
keywords={"swift","springstrider","tallstrider","ground","mount"},
mounts={102349},
patch='43000',
mounttype='Ground',
model={1221},
description="This guide will help you acquire the Swift Springstrider mount.",
},[[
step
Thie pet can only be obtained during the Noblegarden event
It can be purchased for 500 Noblegarden Chocolate or found in a Brightly Colored Egg
|tip See Noblegarden Events guide
confirm
step
talk Noblegarden Vendor##32836
buy 1 Swift Springstrider##72145 |goto Teldrassil 55.70,51.30
step
learnmount Swift Springstrider##102349 |use Swift Springstrider##72145
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Elekk Mounts",{
keywords={"elekk","great","blue","green","purple","gray","brown","ground","mount"},
mounts={35711,35710,35714,34406,35712,35713},
patch='60204',
mounttype='Ground',
model={19873},
description="This guide will help you acquire the Great Blue Elekk, Great Green Elekk, Great Purple Elekk, Brown Elekk, Gray Elekk, and Purple Elekk mounts. These mounts are Alliance only.",
},[[
step
#include main_rep_mount,rep="Exodar",tabard="ExTabard"
only Dwarf,Human,Gnome,NightElf,Worgen
step
Go to The Exodar |goto The Exodar |noway |c
step
talk Torallius the Pack Handler##17584
buy 1 Great Blue Elekk##29745 |goto The Exodar 81.60,51.80
buy 1 Great Green Elekk##29746 |goto The Exodar 81.60,51.80
buy 1 Great Purple Elekk##29747 |goto The Exodar 81.60,51.80
buy 1 Brown Elekk##28481 |goto The Exodar 81.60,51.80
buy 1 Gray Elekk##29744 |goto The Exodar 81.60,51.80
buy 1 Purple Elekk##29743 |goto The Exodar 81.60,51.80
step
learnmount Great Blue Elekk##35713 |use Great Blue Elekk##29745
learnmount Great Green Elekk##35712 |use Great Green Elekk##29746
learnmount Great Purple Elekk##35714 |use Great Purple Elekk##29747
learnmount Brown Elekk##34406 |use Brown Elekk##28481
learnmount Gray Elekk##35710 |use Gray Elekk##29744
learnmount Purple Elekk##35711 |use Purple Elekk##29743
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Horse Mounts",{
keywords={"swift","brown","steed","palomino","stallion","horse","mare","pinto","chestnut","ground","mount"},
mounts={23229,23227,23228,458,6648,472},
patch='unknown',
mounttype='Ground',
model={14338},
description="This guide will help you acquire the Swift Brown Steed, Swift Palomino, Swift White steed, Black Stallion, Brown Horse, Chestnut Mare, and Pinto mounts. These mounts are Alliance only.",
},[[
step
#include main_rep_mount,rep="Stormwind",tabard="SWTabard"
only Dwarf,NightElf,Gnome,Draenei,Worgen
step
Go to Stormwind City |goto Stormwind City |noway |c
step
talk Katie Stokx##43694 |goto Stormwind City 77.00,67.80
buy 1 Swift Brown Steed##18777 |goto Stormwind City 77.00,67.80
buy 1 Swift Palomino##18776 |goto Stormwind City 77.00,67.80
buy 1 Swift White Steed##18778 |goto Stormwind City 77.00,67.80
buy 1 Black Stallion Bridle##2411 |goto Stormwind City 77.00,67.80
buy 1 Brown Horse Bridle##5656 |goto Stormwind City 77.00,67.80
buy 1 Chestnut Mare Bridle##5655 |goto Stormwind City 77.00,67.80
buy 1 Pinto Bridle##2414 |goto Stormwind City 77.00,67.80
step
learnmount Swift Brown Steed##23229 |use Swift Brown Steed##18777
learnmount Swift Palomino##23227 |use Swift Palomino##18776
learnmount Swift White Steed##23228 |use Swift White Steed##18778
learnmount Black Stallion##470 |use Black Stallion Bridle##2411
learnmount Brown Horse##458 |use Brown Horse Bridle##5656
learnmount Chestnut Mare##6648 |use Chestnut Mare Bridle##5655
learnmount Pinto##472 |use Pinto Bridle##2414
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Mechanostrider Mounts",{
keywords={"swift green mechanostrider white yellow blue red unpainted ground mount"},
mounts={23225,23223,23222,10969,17453,10873,17454},
patch='30305',
mounttype='Ground',
model={31670},
description="This guide will help you acquire the Swift Green Mechanostrider, Swift White Mechanostrider, Swift Yellow Mechanostrider, Blue Mechanostrider, Green Mechanostrider, Red Mechanostrider, and Unpainted Mechanostrider mounts. These mounts are Alliance only.",
},[[
step
#include main_rep_mount,rep="Gnomeregan",tabard="GnomTabard"
only NightElf,Human,Dwarf,Draenei,Worgen
step
talk Milli Featherwhistle##7955
buy 1 Swift Green Mechanostrider##18772 |goto Dun Morogh 56.24,46.25
buy 1 Swift White Mechanostrider##18773 |goto Dun Morogh 56.24,46.25
buy 1 Swift Yellow Mechanostrider##18774 |goto Dun Morogh 56.24,46.25
buy 1 Blue Mechanostrider##8595 |goto Dun Morogh 56.24,46.25
buy 1 Green Mechanostrider##13321 |goto Dun Morogh 56.24,46.25
buy 1 Red Mechanostrider##8563 |goto Dun Morogh 56.24,46.25
buy 1 Unpainted Mechanostrider##13322 |goto Dun Morogh 56.24,46.25
step
learnmount Swift Green Mechanostrider##23225 |use Swift Green Mechanostrider##18772
learnmount Swift White Mechanostrider##23223 |use Swift White Mechanostrider##18773
learnmount Swift Yellow Mechanostrider##23222 |use Swift Yellow Mechanostrider##18774
learnmount Blue Mechanostrider##10969 |use Blue Mechanostrider##8595
learnmount Green Mechanostrider##17453 |use Green Mechanostrider##13321
learnmount Red Mechanostrider##10873 |use Red Mechanostrider##8563
learnmount Unpainted Mechanostrider##17454 |use Unpainted Mechanostrider##13322
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Ram Mounts",{
keywords={"swift","brown","ram","gray","white","ground","mount"},
mounts={6898,6777,6899,23240,23239,23238},
patch='40100',
mounttype='Ground',
model={14347},
description="This guide will help you acquire the Swift Brown Ram, Swift Gray Ram, Swift White Ram, Brown Ram, Gray Ram, and White Ram mounts. These mounts are Alliance only.",
},[[
step
#include main_rep_mount,rep="Ironforge",tabard="IFTabard"
only NightElf,Human,Gnome,Draenei,Worgen
step
talk Veron Amberstill##1261
buy 1 Swift Brown Ram##18786 |goto Dun Morogh 70.66,48.87
buy 1 Swift Gray Ram##18787 |goto Dun Morogh 70.66,48.87
buy 1 Swift White Ram##18785 |goto Dun Morogh 70.66,48.87
buy 1 Brown Ram##5872 |goto Dun Morogh 70.66,48.87
buy 1 Gray Ram##5864 |goto Dun Morogh 70.66,48.87
buy 1 White Ram##5873 |goto Dun Morogh 70.66,48.87
step
learnmount Swift Brown Ram##23238 |use Swift Brown Ram##18786
learnmount Swift Gray Ram##23239 |use Swift Gray Ram##18787
learnmount Swift White Ram##23240 |use Swift White Ram##18785
learnmount Brown Ram##6899 |use Brown Ram##5872
learnmount Gray Ram##6777 |use Gray Ram##5864
learnmount White Ram##6898 |use White Ram##5873
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Tiger Mounts",{
keywords={"swift","frostsaber","mistsaber","stormsaber","dawnsaber","spotted","striped","ground","mount"},
mounts={23221,23219,23338,10789,66847,8394,10793},
patch='30200',
mounttype='Ground',
model={14332},
description="This guide will help you acquire the Swift Frostsaber, Swift Mistsaber, Swift Stormsaber, Spotted Frostsaber, Striped Dawnsaber, Striped Frostsaber, and Striped Nightsaber mounts. These mounts are Alliance only.",
},[[
step
talk Moon Priestess Lasara##50305
buy Darnassus Tabard##45579 |goto Darnassus/0 36.21,48.48 |or
|tip These mounts are Alliance only.
|tip Run dungeons wearing the Darnassus tabard.
|tip You can also create and level a Night Elf character to obtain these mounts.
|only if not raceclass("NightElf")
step
talk Lelanai##4730
buy Reins of the Swift Frostsaber##18766 |goto Darnassus/0 42.49,32.59 |complete hasmount(23221)
buy Reins of the Swift Mistsaber##18767 |goto Darnassus/0 42.49,32.59 |complete hasmount(23219)
buy Reins of the Swift Stormsaber##18902 |goto Darnassus/0 42.49,32.59 |complete hasmount(23338)
buy Reins of the Spotted Frostsaber##8632 |goto Darnassus/0 42.49,32.59 |complete hasmount(10789)
buy Reins of the Striped Dawnsaber##47100 |goto Darnassus/0 42.49,32.59 |complete hasmount(66847)
buy Reins of the Striped Frostsaber##8631 |goto Darnassus/0 42.49,32.59 |complete hasmount(8394)
buy Reins of the Striped Nightsaber##8629 |goto Darnassus/0 42.49,32.59 |complete hasmount(10793)
step
use Reins of the Swift Frostsaber##18766
use Reins of the Swift Mistsaber##18767
use Reins of the Swift Stormsaber##18902
use Reins of the Spotted Frostsaber##8632
use Reins of the Striped Dawnsaber##47100
use Reins of the Striped Frostsaber##8631
use Reins of the Striped Nightsaber##8629
Learn the "Swift Frostsaber" Mount |learnmount Swift Frostsaber##23221
Learn the "Swift Mistsaber" Mount |learnmount Swift Mistsaber##23219
Learn the "Swift Stormsaber" Mount |learnmount Swift Stormsaber##23338
Learn the "Spotted Frostsaber" Mount |learnmount Spotted Frostsaber##10789
Learn the "Striped Dawnsaber" Mount |learnmount Striped Dawnsaber##66847
Learn the "Striped Frostsaber" Mount |learnmount Striped Frostsaber##8394
Learn the "Striped Nightsaber" Mount |learnmount Striped Nightsaber##10793
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black Battlestrider",{
keywords={"black","battlestrider","ground","mount"},
mounts={22719},
patch='60201',
mounttype='Ground',
model={14372},
description="This guide will help you acquire the Black Battlestrider mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Lieutenant Karter##12783
buy 1 Black Battlestrider##29465 |n |goto Stormwind City,76.20,65.60
learnmount Black Battlestrider##22719 |use Black Battlestrider##29465
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Bear",{
keywords={"black","war","bear","ground","mount"},
mounts={60119},
patch='30002',
mounttype='Ground',
model={27819},
description="This guide will help you acquire the Black War Bear mount.",
},[[
step
Earn the _"For the Horde"_ achievement |achieve 614
|tip This mount is a reward for completing the "For the Alliance!" achievement.
step
collect 1 Black War Bear##44224
|tip When you complete the achievement check your in-game mailbox for the mount.
step
use Black War Bear##44224
Learn the "Black War Bear" Mount |learnmount Black War Bear##60119
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Elekk",{
keywords={"black","war","elekk","ground","mount"},
mounts={48027},
patch='40200',
mounttype='Ground',
model={23928},
description="This guide will help you acquire the Black War Elekk.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Lieutenant Karter##12783
buy 1 Reins of the Black War Elekk##35906 |n |goto Stormwind City,76.20,65.60
learnmount Black War Elekk##48027 |use Reins of the Black War Elekk##35906
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Mammoth",{
keywords={"black","war","mammoth","ground","mount"},
mounts={59785},
patch='30305',
mounttype='Ground',
model={25450},
description="This guide will help you acquire the Black War Mammoth mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Knight Dameron##32294
buy 1 Reins of the Black War Mammoth##43956 |n |goto Wintergrasp 51.60,17.60
|tip You cannot buy this mount unless your faction controls Wintergrasp.
learnmount Black War Mammoth##59785 |use Reins of the Black War Mammoth##43956
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Ram",{
keywords={"black","war","ram","ground","mount"},
mounts={22720},
patch='50004',
mounttype='Ground',
model={14577},
description="This guide will help you acquire the Black War Ram mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Lieutenant Karter##12783
buy 1 Black War Ram##29467 |n |goto Stormwind City,76.20,65.60
learnmount Black War Ram##22720 |use Black War Ram##29467
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Steed",{
keywords={"black","war","steed","ground","mount"},
mounts={22717},
patch='60201',
mounttype='Ground',
model={14337},
description="This guide will help you acquire the Black War Steed mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Lieutenant Karter##12783
buy 1 Black War Steed Bridle##29468 |n |goto Stormwind City,76.20,65.60
learnmount Black War Steed##22717 |use Black War Steed Bridle##29468
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Tiger",{
keywords={"black","war","tiger","ground","mount"},
mounts={22723},
patch='30200',
mounttype='Ground',
model={14330},
description="This guide will help you acquire the Black War Tiger mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Lieutenant Karter##12783
buy 1 Reins of the Black War Tiger##29471 |n |goto Stormwind City,76.20,65.60
learnmount Black War Tiger##22723 |use Reins of the Black War Tiger##29471
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Dark War Talbuk",{
keywords={"dark","war","talbuk","ground","mount"},
mounts={34790},
patch='50300',
mounttype='Ground',
model={19303},
description="This guide will help you acquire the Dark War Talbuk mount.",
},[[
step
In order to obtain these mounts you must participate in PvP at Halaa in Nagrand
confirm
step
talk Chief Researcher Amereldine##18816
accept Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
turnin Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
collect 20 Halaa Research Token##26044 |goto Nagrand/0 41.20,44.20
|tip Gather Oshu'Gun Crystal Powder Samples from any hostile mob in Nagrand. You will need 200 total but can only have 100 at a time.
|tip When you get 100 Samples complete the quest "Oshu'gun Crystal Powder" until you have 20 Halaa Research Tokens.
step
collect 100 Halaa Battle Token##26045 |goto Nagrand/0 42.40,43.91
|tip In order to obtain Halaa Battle Tokens, you will need to defeat enemy players within or around Halaa.
step
talk Aldraan##21485
buy 1 Reins of the Dark War Talbuk##29228 |n |goto Nagrand/0 42.80,42.60
learnmount Dark War Talbuk##34790 |use Reins of the Dark War Talbuk##29228
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Dark Riding Talbuk",{
keywords={"dark","riding","talbuk","ground","mount"},
mounts={39316},
patch='50300',
mounttype='Ground',
model={21074},
description="This guide will help you acquire the Dark War Talbuk and Dark Riding Talbuk mounts.",
},[[
step
In order to obtain these mounts you must participate in PvP at Halaa in Nagrand
confirm
step
|tip Gather Oshu'Gun Crystal Powder Samples from any hostile mob in Nagrand. You will need 150 total but can only have 100 at a time.
|tip When you get 100 Samples complete the quest "Oshu'gun Crystal Powder" until you have 15 Halaa Research Tokens.
confirm
step
talk Chief Researcher Amereldine##18816
accept Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
turnin Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
collect 15 Halaa Research Token##26044 |goto Nagrand/0 41.20,44.20
step
collect 70 Halaa Battle Token##26045 |goto Nagrand/0 42.40,43.91
|tip In order to obtain Halaa Battle Tokens you will need to defeat enemy players within or around Halaa.
step
talk Aldraan##21485
buy 1 Reins of the Dark Riding Talbuk##28915 |n |goto Nagrand/0 42.80,42.60
learnmount Dark Riding Talbuk##39316 |use Reins of the Dark Riding Talbuk##28915
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Stormpike Battle Charger",{
keywords={"stormpike","battle","charger","ram","ground","mount"},
mounts={23510},
patch='50200',
mounttype='Ground',
model={14777},
description="This guide will help you acquire the Stormpike Battle Charger mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Thanthaldis Snowgleam##13217
buy 1 Stormpike Battle Charger##19030 |n |goto Hillsbrad Foothills,44.60,46.60
learnmount Stormpike Battle Charger##23510 |use Stormpike Battle Charger##19030
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Profession Mounts\\Archaeology\\Fossilized Raptor",{
keywords={"fossilized","raptor","archaeology","ground","mount"},
mounts={84751},
patch='unknown',
mounttype='Ground',
model={34410},
description="This guide will help you acquire the Fossilized Raptor mount.",
},[[
step
This mount is a _rare Archaeology "Fossil"_ solve
talk Harrison Jones##44238 |goto Stormwind City,85.80,25.90 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
confirm |only if default
step
Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Fossilized Raptor"_. Solve this Archaeology puzzle.
collect 1 Fossilized Raptor##60954
step
learnmount Fossilized Raptor##84751 |use Fossilized Raptor##60954
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Profession Mounts\\Archaeology\\Ultramarine Qiraji Battle Tank",{
keywords={"silithid","bug","ground","mount"},
mounts={92155},
patch='unknown',
mounttype='Ground',
model={15678},
description="This guide will help you acquire the Ultramarine Qiraji Battle Tank mount.",
},[[
step
This mount is a _rare Archaeology "Tol'vir"_ solve
talk Harrison Jones##44238 |goto Stormwind City,85.80,25.90 |only if skillmax("Archaeology")<1
Use the _Archaeology profession_ section of this guide to reach _450 Archaeology_ |only if skill("Archaeology")<450
skill Archaeology,450
step
Open your _world map_, find dig sites in _Kalimdor_ and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Scepter of Azj'Aqir"_. _Solve_ this Archaeology puzzle
|tip This is a very rare Archaeology solve. You might be doing archeology for a while.
collect 1 Scepter of Azj'Aqir##64883
step
learnmount Ultramarine Qiraji Battle Tank##92155 |use Scepter of Azj'Aqir##64883
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Profession Mounts\\Engineering\\Mekgineer's Chopper",{
keywords={"chopper","motorcycle","mekengineer's","mekgineer's","ground","mount"},
mounts={60424},
patch='30002',
mounttype='Ground',
model={25870},
description="This guide will help you acquire the Mekgineer's Chopper mount.",
},[[
step
You will need at least _12,500 gold_ to obtain this _mount_
|tip This will cost more gold if you do not farm for the required materials
confirm
|next "engineer" |only if skill("Engineering")>=450
|next "levelengineer" |only if skill("Engineering")<450 and skill("Engineering")>1
|next "auctionhouse" |only if skill("Engineering")<1
step
label "levelengineer"
Use the _Engineering Profession_ section of this guide to level your _Engineering_ skill to _450_
skill Engineering,450
Click here if you do not wish to make this mount yourself |next "auctionhouse" |confirm
step
label "engineer"
This will require you to be _exalted_ with _Alliance Expedition_
_Exalted_ with _Alliance Vanguard_ |complete rep("Alliance Vanguard")>=Exalted
|tip To get to exalted with this faction: make sure you don't have a Wrath of the Lich King faction tabard on and then complete heroic and normal dungeons in Northrend (this is much easier to do with friends).
Click here if you do not wish to make this mount yourself |next "auctionhouse" |confirm
step
talk Logistics Officer Silverstone##32564
buy 1 Schematic: Mekgineer's Chopper##44503 |goto Borean Tundra,57.60,66.20
_
learnmount Mekgineer's Chopper##60867 |use Schematic: Mekgineer's Chopper##44503
step
label "auctionhouse"
You can either _buy_ these _items_ from the _Auction House_ or _farm_ them:
collect 40 Handful of Cobalt Bolts##39681
Click here to farm the ingredients |confirm |next "farm_cobalt" |only if skill("Mining")>=350
|next "auctionhouse_2"
step
label "farm_cobalt"
map Borean Tundra
path 29.60,20.60	24.70,22.20	24.10,26.20
path 28.60,26.30	29.40,21.90	32.50,25.80
path 36.60,29.70	42.70,35.40	43.10,39.10
path 39.50,42.90	34.50,48.20	30.20,54.80
path 33.10,57.30	35.20,65.90	39.40,68.20
path 44.10,66.00	46.30,62.00	50.00,62.40
path 50.80,71.70	53.60,72.00	60.50,59.20
path 67.20,47.40	83.00,44.80	91.80,39.70
path 73.90,20.60	63.90,12.60	59.90,19.00
path 42.50,14.80	46.80,40.40
Follow the provided path and gather all materials needed.
collect 40 Cobalt Ore##36909
step
label "auctionhouse_2"
You can either _buy_ these _items_ from the _Auction House_ or _farm_ them:
collect 12 Titansteel Bar##37663
Click here to get the ingredients without mining |confirm |next "farm_no_mine"
Click here to farm the ingredients |confirm |next "farm_titan" |only if skill("Mining")>=450
|next "arctic"
step
label "farm_no_mine"
kill Raging Flame##30847+
collect Crystallized Fire##37702 |goto Wintergrasp/0 83.80,71.90 |n
collect 12 Eternal Fire##36860 |goto Wintergrasp/0 83.80,71.90
step
kill Brittle Revenant##30160+
collect Crystallized Earth##37701 |goto The Storm Peaks/0 70.10,60.00 |n
collect 12 Eternal Earth##35624 |goto The Storm Peaks/0 70.10,60.00
step
kill Wandering Shadow##30842+
collect Crystallized Shadow##37703 |goto Wintergrasp/0 19.50,51.70 |n
collect 12 Eternal Shadow##35627 |goto Wintergrasp/0 19.50,51.70
step
#include auctioneer
buy 36 Titanium Bar##41163
|next "arctic"
step
label "farm_titan"
map Icecrown
path 81.20,67.20	77.70,64.70	77.60,56.30
path 77.20,49.90	76.60,45.50	73.80,38.00
path 69.70,37.80	64.00,33.10	62.00,37.30
path 58.90,43.60	57.10,44.80	56.50,33.30
path 55.50,23.30	53.60,27.80	50.60,45.60
path 48.60,36.40	48.80,30.50	44.90,26.80
path 41.30,36.90	37.80,40.10	38.50,27.20
path 31.00,31.80	30.30,41.20	33.80,47.20
path 39.90,48.30	38.80,54.90	28.90,64.30
path 36.70,65.40	40.90,64.40	47.10,70.50
path 49.50,82.00	50.80,85.70	56.30,83.30
path 54.80,79.50	60.10,74.00	65.70,64.80
path 67.10,71.30	70.70,69.00	72.10,63.30
path 75.90,66.20	78.20,70.50
Follow the provided path and gather all materials needed.
collect 36 Titanium Bar##41163
|tip Mine Saronite, Cobalt and Titanium to get Crystallized Fire, Shadow and Earth
collect Crystallized Shadow##37703 |n
collect 12 Eternal Shadow##35627
collect Crystallized Earth##37701 |n
collect 12 Eternal Earth##35624
collect Crystallized Fire##37702 |n
collect 12 Eternal Fire##36860
click Titanium Vein##191133
step
label "arctic"
You can either _buy_ this _item_ from the _Auction House_ or _farm_ them:
collect 2 Arctic Fur##44128
Click here to farm the ingredients yourself |confirm |next "skin" |only if skill("Skinning")>=335
|next "create"
step
label "skin"
kill Wooly Rhino Calf##25488+
kill Wooly Rhino Bull##25489+
collect 2 Arctic Fur##44128 |goto Borean Tundra/0 44.50,43.00
step
label "create"
Have an _Engineer friend_, or find an _Engineer_, to _purchase_ these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")<450
Purchase these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")>=450
talk Roxi Ramrocket##31247
buy 8 Goblin-Machined Piston##44501 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")>=450
buy 1 Salvaged Iron Golem Parts##44499 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")>=450
buy 1 Elementium-Plated Exhaust Pipe##44500 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")>=450
collect 8 Goblin-Machined Piston##44501 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")<450
collect 1 Salvaged Iron Golem Parts##44499 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")<450
collect 1 Elementium-Plated Exhaust Pipe##44500 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")<450
|tip Remember these items cost 12500 gold all together
step
Have the _Engineer_ create the _Mekgineer's Chopper_ for you |only if skill("Engineering")<450
create Mekgineer's Chopper##60867,Engineering,1 total |only if skill("Engineering")>=450
collect 1 Mekgineer's Chopper##44413
step
learnmount Mekgineer's Chopper##60424 |use Mekgineer's Chopper##44413
|tip Get to the Choppa!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Flametalon of Alysrazor",{
keywords={"Flametalon","of","Alysrazor","mount","ground"},
mounts={101542},
patch='42000',
mounttype='Ground',
model={38783},
description="This guide will help you acquire the Pureblood Fire Hawk.",
},[[
step
This mount is drops of the boss Alysrazor within the Firelands raid.
|tip Kill the trash and the boss will come out.
kill Alysrazor##52530
collect 1 Flametalon of Alysrazor##71665 |goto Firelands/1 63.10,49.30
step
learnmount Flametalon of Alysrazor##101542 |use Flametalon of Alysrazor##71665
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Fiery Warhorse",{
keywords={"fiery","warhorse","horse","karazhan","ground","mount"},
mounts={36702},
patch='30300',
mounttype='Ground',
model={19640},
description="This guide will help you acquire the Fiery Warhorse mount.",
},[[
step
kill Attumen the Huntsman##16152
|tip Be sure to kill any enemy you come across before the encounter or they will all aggro.
collect 1 Fiery Warhorse's Reins##30480 |goto Karazhan 45.70,83.30
|tip This has a .9% drop rate, be sure to come back here every week to have a better chance of obtaining it!
step
learnmount Fiery Warhorse##36702 |use Fiery Warhorse's Reins##30480
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Grand Black War Mammoth",{
keywords={"grand","black","war","mammoth","vault","archavon","ground","mount"},
mounts={61467},
patch='30003',
mounttype='Ground',
model={27241},
description="This guide will help you acquire the Grand Black War Mammoth mount.",
},[[
step
_Traverse_ through _Vault of Archavon_
kill Archavon the Stone Watcher##31125
kill Toravon the Ice Watcher##38433
kill Emalon the Storm Watcher##33993
kill Koralon the Flame Watcher##35013
collect 1 Reins of the Grand Black War Mammoth##44083 |goto Vault of Archavon 50.00,39.00
|tip This has an extremely low drop rate off each boss (Less than 1%)
step
learnmount Grand Black War Mammoth##61467 |use Reins of the Grand Black War Mammoth##44083
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Qiraji Mounts",{
keywords={"blue","green","red","yellow","qiraji","resonating","crystal","battle","tank","ahn'qiraj","fallen","kingdom","ground","mount"},
mounts={25953,26056,26054,26055},
patch='30300',
mounttype='Ground',
model={15681},
description="This guide will help you acquire the Blue Qiraji Battle Tank, Green Qiraji Battle Tank, Red Qiraji Battle Tank, and Yellow Qiraji Battle Tank mounts.",
},[[
step
Go to the Temple of Ahn'Qiraj |goto Ahn'Qiraj: The Fallen Kingdom 46.90,7.70 |n
Enter _Temple of Ahn'Qiraj_
step
Traverse through Temple of Ahn'Qiraj
Kill any and all mobs in the instance
collect 1 Blue Qiraji Resonating Crystal##21218
collect 1 Green Qiraji Resonating Crystal##21323
collect 1 Red Qiraji Resonating Crystal##21321
|tip Why? Because It's Red! Achievement.
collect 1 Yellow Qiraji Resonating Crystal##21324
step
learnmount Blue Qiraji Battle Tank##25953 |use Blue Qiraji Resonating Crystal##21218
learnmount Green Qiraji Battle Tank##26056 |use Green Qiraji Resonating Crystal##21323
learnmount Red Qiraji Battle Tank##26054 |use Red Qiraji Resonating Crystal##21321
learnmount Yellow Qiraji Battle Tank##26055 |use Yellow Qiraji Resonating Crystal##21324
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Camel Mounts",{
keywords={"camel","brown","riding","tan","ramkahen","exalted","ground","mount"},
mounts={88748,88749},
patch='unknown',
mounttype='Ground',
model={37492},
description="This guide will help you acquire the Brown Riding Camel and Tan Riding Camel mounts.",
},[[
step
step
You can use our _dailies guide_ to earn reputation, or use our _leveling guide_ to get the prequests done for this faction.
Lastly, you can run dungeons with the _Ramkahen Tabard_ and continue to earn rep this way.
step
label "dailies"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum,60.30,38.30
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash 30 Thieving Pluckers |q 28250/1 |goto Uldum 59.10,38.40
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto Uldum 60.30,38.30
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum,41.40,5.50
step
Click the Confiscated Artillery
|tip It looks like a war catapult car machine.
Use the Designate Target ability on your hotbar on the Infantrymen
Slay 100 Infantrymen |q 28736/1 |goto Uldum 41.40,5.50
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto Uldum 41.40,5.50
step
You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
step
talk Blacksmith Abasi##48617
buy 1 Reins of the Brown Riding Camel##63044 |n
buy 1 Reins of the Tan Riding Camel##63045 |n
_
learnmount Brown Riding Camel##88748 |goto Uldum,54.00,33.30 |use Reins of the Brown Riding Camel##63044
learnmount Tan Riding Camel##88749 |goto Uldum,54.00,33.30 |use Reins of the Tan Riding Camel##63045
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden King",{
keywords={"golden","king","lion","guild","exalted","ground","mount"},
mounts={90621},
patch='unknown',
mounttype='Ground',
model={36213},
description="This guide will help you acquire the Golden King mount.",
},[[
step
#include "misc_rep_mount",rep="Guild"
Your _guild_ needs to be _level 25_
_Guild Level 25_ |achieve 4912
step
talk Shay Pressler##46602
buy 1 Reins of the Golden Lion King##62298 |goto Stormwind City,64.60,76.80
step
learnmount Golden King##90621 |use Reins of the Golden Lion King##62298
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Ice Mammoth & Grand Ice Mammoth",{
keywords={"grand","ice","mammoth","the","sons","of","hodir","exalted","ground","mount"},
achieveid={2082,2083},
patch='30008',
mounts={59799},
patch='unknown',
mounttype='Ground',
model={27242},
description="This guide will help you acquire the Ice Mammoth and Grand Ice Mammoth mounts.",
},[[
step
Proceeding to next step |next |only if rep("The Sons of Hodir") <= Neutral
Proceeding to Friendly |next "friendly" |only if rep("The Sons of Hodir") == Friendly
Proceeding to Honored |next "honored" |only if rep("The Sons of Hodir") == Honored
Proceeding to Revered |next "revered" |only if rep("The Sons of Hodir") == Revered
Proceeding to Buy Mount |next "BuyMount" |only if rep("The Sons of Hodir") == Exalted
step
#include "Hodir_Quests"
step
label "hub"
Proceeding to Friendly Dailies |next "friendly" |only if rep("The Sons of Hodir") <= Friendly
Proceeding to Honored Dailies |next "honored" |only if rep("The Sons of Hodir") == Honored
Proceeding to Revered Dailies |next "revered" |only if rep("The Sons of Hodir") >= Revered
step
label "friendly"
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks/0 64.21,59.31
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks/0 63.14,62.94
step
click Hodir's Horn##192078
|tip You may have to wait a minute for this to spawn.
accept Hodir's Call##12977 |goto The Storm Peaks/0 64.21,65.03
step
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks/0 55.60,63.40
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks/0 64.21,59.31
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks/0 69.70,60.20
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
click Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks/0 75.30,62.80
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks/0 72.10,51.80
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks/0 72.10,51.80
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto The Storm Peaks/0 67.00,45.10
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n
|tip You turn these in in multiples of 10.
confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks/0 63.14,62.94
step
Click Hodir's Horn##7352
|tip You may have to wait a minute for this to spawn.
turnin Hodir's Call##12977 |goto The Storm Peaks/0 64.21,65.03
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks/0 66.15,61.42
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next "hub"
step
label "honored"
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto The Storm Peaks/0 64.84,59.06
step
kill Stoic Mammoth##30260+
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto The Storm Peaks/0 59.00,61.20
step
The entrance to the cave starts here |goto The Storm Peaks/0 55.90,64.20 < 5 |c |q 13001 |walk
click Everfrost Shard##192191
collect 3 Everfrost Shard##42541 |q 13001/1 |goto The Storm Peaks/0 54.70,60.80
step
Leave the cave |goto The Storm Peaks/0 55.90,64.20 < 5 |c |q 13001 |walk
talk Lorekeeper Randvir##30252
turnin Forging Hodir's Spear##13001 |goto The Storm Peaks/0 64.84,59.06
|tip This quest will unlock the How to Slay Your Dragon daily quest.
step
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks/0 63.49,59.73
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept A Viscious Cleaning##13006 |goto The Storm Peaks/0 64.21,59.31
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept How to Slay Your Dragon##13003 |goto The Storm Peaks/0 65.10,60.80
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto The Storm Peaks/0 63.14,62.94
step
Click Hodir's Horn
|tip You may have to wait a minute for this to spawn.
accept Hodir's Call##12977 |goto The Storm Peaks/0 64.10,65.10
stickystart "visoil"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto The Storm Peaks/0 57.20,64.00
step
label "visoil"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks/0 55.60,63.40
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto The Storm Peaks/0 56.60,64.30
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto The Storm Peaks/0 63.50,59.80
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin A Viscious Cleaning##13006 |goto The Storm Peaks/0 64.21,59.31
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin How to Slay Your Dragon##13003 |goto The Storm Peaks/0 65.10,60.80
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks/0 69.70,60.20
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks/0 75.30,62.80
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks/0 72.10,51.80
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks/0 72.10,51.80
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |goto The Storm Peaks/0 67.00,45.10 |n
|tip You turn these in in multiples of 10.
confirm
step
Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto The Storm Peaks/0 63.14,62.94
step
Click Hodir's Horn
|tip You may have to wait a minute for this to spawn.
turnin Hodir's Call##12977 |goto The Storm Peaks/0 64.10,65.10
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks/0 66.15,61.42
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next "hub"
step
label "revered"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks/0 63.50,59.80
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept A Viscious Cleaning##13006 |goto The Storm Peaks/0 64.21,59.31
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept How to Slay Your Dragon##13003 |goto The Storm Peaks/0 65.10,60.80
step
Click Arngrim the Insatiable
accept Feeding Arngrim##13046 |goto The Storm Peaks/0 67.60,59.90
step
Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto The Storm Peaks/0 63.14,62.94
step
Click Hodir's Horn
|tip You may have to wait a minute for this to spawn.
accept Hodir's Call##12977 |goto The Storm Peaks/0 64.10,65.10
stickystart "viscousoil"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto The Storm Peaks/0 57.20,64.00
step
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto The Storm Peaks/0 56.40,65.00
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto The Storm Peaks/0 56.60,64.30
step
label "viscousoil"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks/0 55.60,63.40
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto The Storm Peaks/0 63.50,59.80
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin A Viscious Cleaning##13006 |goto The Storm Peaks/0 64.21,59.31
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin How to Slay Your Dragon##13003 |goto The Storm Peaks/0 65.10,60.80
step
Click Arngrim the Insatiable
turnin Feeding Arngrim##13046 |goto The Storm Peaks/0 67.60,59.90
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks/0 69.70,60.20
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks/0 75.30,62.80
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks/0 72.10,51.80
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks/0 72.10,51.80
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |goto The Storm Peaks/0 67.00,45.10 |n
|tip You turn these in in multiples of 10.
confirm
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto The Storm Peaks/0 63.14,62.94
step
Click Hodir's Horn
|tip You may have to wait a minute for this to spawn.
turnin Hodir's Call##12977 |goto The Storm Peaks/0 64.10,65.10
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks/0 66.15,61.42 |n
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
Click here to Continue |confirm
|next "hub" |only if rep("The Sons of Hodir") < Exalted
|next "BuyMount" |only if rep("The Sons of Hodir") == Exalted
step
label "BuyMount"
talk Lillehoff##32540
buy 1 Reins of the Ice Mammoth##44080 |goto The Storm Peaks/0 66.00,61.40
buy 1 Reins of the Grand Ice Mammoth##43961 |goto The Storm Peaks/0 66.00,61.40
step
learnmount Ice Mammoth##59799 |use Reins of the Ice Mammoth##43958
learnmount Grand Ice Mammoth##61470 |use Reins of the Grand Ice Mammoth##43961
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Mountain Horse Mounts",{
keywords={"swift","mountain","horse","gilneas","exalted","ground","mount"},
mounts={103196,103195},
patch='43000',
mounttype='Ground',
model={65},
description="This guide will help you acquire the Mountain Horse and Swift Mountain Horse mounts. These mounts are Alliance only.",
},[[
step
#include main_rep_mount,rep="Gilneas",tabard="GilTabard"
_
talk Lord Candren##50307
buy 1 Gilneas Tabard##64882 |goto Darnassus 37.20,47.00
only Dwarf,Human,Gnome,NightElf,Worgen
|tip These mounts are Alliance only.
step
talk Astrid Langstrump##55285
buy 1 Swift Mountain Horse##73839 |goto Darnassus 48.10,21.80
buy 1 Mountain Horse##73838 |goto Darnassus 48.10,21.80
|tip These mounts are Alliance only.
step
learnmount Swift Mountain Horse##103196 |use Swift Mountain Horse##73839
learnmount Mountain Horse##103195 |use Mountain Horse##73838
|tip These mounts are Alliance only.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Spectral Steed",{
keywords={"spectral","steed","exalted","the","baradin","wardens","tol","barad","ground","mount"},
mounts={92231},
patch='unknown',
mounttype='Ground',
model={37259},
description="This guide will help you acquire the Spectral Steed mount.",
},[[
step
label "start"
This will require that you be exalted with the Baradin Wardens.
|tip The Spectral Steed costs 165 Tol Barad Commendations.
earn 165 Tol Barad Commendation##391
_Exalted_ with Baradin's Wardens |complete rep("Baradin's Wardens")==Exalted
Click here to move on to the dailies. |confirm |next
|next "buy"
step
You will only be able to accept a total of 6 quests in the following guide steps.
Click here to continue |confirm
step
talk Sergeant Gray##48254
accept Bomb's Away!##28275 |goto Tol Barad Peninsula,72.90,60.90
accept Cannonball!##27987 |goto Tol Barad Peninsula,72.90,60.90
accept Ghostbuster##27978 |goto Tol Barad Peninsula,72.90,60.90
accept Taking the Overlook Back##27991 |goto Tol Barad Peninsula,72.90,60.90
accept WANTED: Foreman Wellson##27975 |goto Tol Barad Peninsula,72.90,60.90
accept Watch Out For Splinters!##27973 |goto Tol Barad Peninsula,72.90,60.90
step
talk Commander Marcus Johnson##47240
accept Claiming The Keep##28059 |goto Tol Barad Peninsula 73.40,59.20
accept Leave No Weapon Behind##28063 |goto Tol Barad Peninsula 73.40,59.20
accept Not The Friendliest Town##28130 |goto Tol Barad Peninsula 73.40,59.20
accept Teach A Man To Fish.... Or Steal##28137 |goto Tol Barad Peninsula 73.40,59.20
accept Walk A Mile In Their Shoes##28065 |goto Tol Barad Peninsula 73.40,59.20
step
talk Camp Coordinator Brack##48255
accept A Sticky Task##27948 |goto Tol Barad Peninsula 73.70,57.60
accept Boosting Morale##27972 |goto Tol Barad Peninsula 73.70,57.60
accept Captain P. Harris##27970 |goto Tol Barad Peninsula 73.70,57.60
accept Rattling Their Cages##27971 |goto Tol Barad Peninsula 73.70,57.60
accept Shark Tank##28050 |goto Tol Barad Peninsula 73.70,57.60
accept Thinning the Brood##27944 |goto Tol Barad Peninsula 73.70,57.60
step
talk Lieutenant Farnsworth##48250
accept Finish The Job##28046 |goto Tol Barad Peninsula 74.80,59.60
accept First Lieutenant Connor##27967 |goto Tol Barad Peninsula 74.80,59.60
accept Magnets, How Do They Work?##27992 |goto Tol Barad Peninsula 74.80,59.60
accept Salvaging the Remains##27966 |goto Tol Barad Peninsula 74.80,59.60
accept The Forgotten##27949 |goto Tol Barad Peninsula 74.80,59.60
step
Follow the path up |goto Tol Barad Peninsula 74.30,42.80,0.50 |c
stickystart "stackcannon"
step
kill Commander Largo##47304 |q 27991/1 |goto Tol Barad Peninsula 78.60,42.00
|tip He's at the top of the tower.
step
label "stackcannon"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
Slay 14 Largo's Overlook Ghosts |q 27978/1 |goto Tol Barad Peninsula 78.20,49.00
click Cannonball Stack##176215
collect 4 Stack of Cannonballs##62818 |q 27987/1 |goto Tol Barad Peninsula 78.20,49.00
step
click String of Fish##206754
collect 22 Rustberg Seabass##63047 |q 28137/1 |goto Tol Barad Peninsula 69.30,23.10
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28130/1 |goto Tol Barad Peninsula 67.60,37.10
step
kill 12 Darkwood Lurker##46508+ |q 27944/1 |goto Tol Barad Peninsula 54.20,47.00
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 27948/1 |goto Tol Barad Peninsula 54.20,47.00
step
kill Captain P. Harris##47287 |q 27970/1 |goto Tol Barad Peninsula 47.90,8.10
|tip He's walking around on this broken boat.
step
kill Tank##46608 |q 28050/1 |goto Tol Barad Peninsula 49.40,19.80
|tip He's an elite shark that swims in the water around this area. This is a group quest, so you will probably need help.
click Barrel of Southsea Rum##206580
collect 6 Barrel of Southsea Rum##62810 |q 27972/1 |goto Tol Barad Peninsula 49.40,19.80
step
kill 8 Shipwrecked Sailor##46605+ |q 27971/1 |goto Tol Barad Peninsula 49.00,29.40
step
kill Keep Lord Farson##47447 |q 28059/1 |goto Tol Barad Peninsula 36.10,27.30
|tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28065/1 |goto Tol Barad Peninsula 37.80,29.10
|tip Follow the Farson Hold Prisoner and protect him.
step
click Rack of Rifles##206664
collect 12 Rusty Rifle##62921 |q 28063/1 |goto Tol Barad Peninsula 41.20,35.80
step
kill Foreman Wellson##46648 |q 27975/1 |goto Tol Barad Peninsula 27.20,47.70
step
clicknpc Wellson Cannon##48283
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28275/1 |goto Tol Barad Peninsula 22.20,36.30
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 27973/1 |goto Tol Barad Peninsula 30.10,43.90
step
kill 5 Restless Infantry##46823 |q 28046/1 |goto Tol Barad Peninsula 40.20,57.90
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
click Siege Scrap##206652
collect 7 Siege Engine Scrap##52285 |q 27992/1 |goto Tol Barad Peninsula 40.20,57.90
stickystart "wandersoul"
step
kill First Lieutenant Connor##46571 |q 27967/1 |goto Tol Barad Peninsula 38.40,77.60
step
label "wandersoul"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 27966/1 |goto Tol Barad Peninsula 38.10,71.50
click Forgotten Soldier's Tombstone##206570
Release 6 Tortured Souls |q 27949/1 |goto Tol Barad Peninsula 38.10,71.50
step
talk Sergeant Gray##48254
turnin Bomb's Away!##28275 |goto Tol Barad Peninsula 72.90,60.90
turnin Cannonball!##27987 |goto Tol Barad Peninsula 72.90,60.90
turnin Ghostbuster##27978 |goto Tol Barad Peninsula 72.90,60.90
turnin Taking the Overlook Back##27991 |goto Tol Barad Peninsula 72.90,60.90
turnin WANTED: Foreman Wellson##27975 |goto Tol Barad Peninsula 72.90,60.90
turnin Watch Out For Splinters!##27973 |goto Tol Barad Peninsula 72.90,60.90
step
talk Commander Marcus Johnson##47240
turnin Claiming The Keep##28059 |goto Tol Barad Peninsula 73.40,59.20
turnin Leave No Weapon Behind##28063 |goto Tol Barad Peninsula 73.40,59.20
turnin Not The Friendliest Town##28130 |goto Tol Barad Peninsula 73.40,59.20
turnin Teach A Man To Fish.... Or Steal##28137 |goto Tol Barad Peninsula 73.40,59.20
turnin Walk A Mile In Their Shoes##28065 |goto Tol Barad Peninsula 73.40,59.20
step
talk Camp Coordinator Brack##48255
turnin A Sticky Task##27948 |goto Tol Barad Peninsula 73.70,57.60
turnin Boosting Morale##27972 |goto Tol Barad Peninsula 73.70,57.60
turnin Captain P. Harris##27970 |goto Tol Barad Peninsula 73.70,57.60
turnin Rattling Their Cages##27971 |goto Tol Barad Peninsula 73.70,57.60
turnin Shark Tank##28050 |goto Tol Barad Peninsula 73.70,57.60
turnin Thinning the Brood##27944 |goto Tol Barad Peninsula 73.70,57.60
step
talk Lieutenant Farnsworth##48250
turnin Finish The Job##28046 |goto Tol Barad Peninsula 74.80,59.60
turnin First Lieutenant Connor##27967 |goto Tol Barad Peninsula 74.80,59.60
turnin Magnets, How Do They Work?##27992 |goto Tol Barad Peninsula 74.80,59.60
turnin Salvaging the Remains##27966 |goto Tol Barad Peninsula 74.80,59.60
turnin The Forgotten##27949 |goto Tol Barad Peninsula 74.80,59.60
step
The quests below will only be able to be done if your faction currently controls Tol Barad.
Click here to proceed to the dailies. |confirm
Click here if your faction does not control Tol Barad. |confirm |next "dailyend"
step
You will only be able to accept a total of 6 quests in the following guide steps.
Click here to proceed. |confirm
step
talk Sergeant Parker##48066
accept A Huge Problem##28122 |goto Tol Barad,50.90,49.70
accept Swamp Bait##28162 |goto Tol Barad,50.90,49.70
accept The Leftovers##28163 |goto Tol Barad,50.90,49.70
step
talk 2nd Lieutenant Wansworth##48061
accept D-Block##28165 |goto Tol Barad 51.40,49.60
accept Svarnos##28185 |goto Tol Barad 51.40,49.60
accept Cursed Shackles##28186 |goto Tol Barad 51.40,49.60
step
talk Commander Stevens##48039
accept Clearing the Depths##28117 |goto Tol Barad 51.50,49.50
accept Learning From The Past##28120 |goto Tol Barad 51.50,49.50
accept The Imprisoned Archmage##28118 |goto Tol Barad 51.50,49.50
step
talk Marshal Fallows##48074
accept Food From Below##28232 |goto Tol Barad 51.50,49.60
accept Prison Revolt##28188 |goto Tol Barad 51.50,49.60
accept The Warden##28223 |goto Tol Barad 51.50,49.60
stickystart "prisonshackle"
step
Enter the underground jail |goto Tol Barad 42.70,39.10 < 5 |walk
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28185/1 |goto Tol Barad 48.30,30.70
step
label "prisonshackle"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
Slay 10 Demons |q 28165/1 |goto Tol Barad 44.40,30.50
click Cursed Shackle##181
collect 8 Cursed Shackles##63149 |q 28186/1 |goto Tol Barad 44.40,30.50
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28162/1 |goto Tol Barad 42.10,41.80
step
Enter the underground jail |goto Tol Barad 44.00,69.20 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28223/1 |goto Tol Barad 37.50,71.70
step
kill Imprisoned Worker##47550+, Exiled Mage##47552+
Slay 10 Prisoners |q 28188/1 |goto Tol Barad 40.90,78.20
click Crate of Cellblock Rations##206996
collect 12 Cellblock Ration##63315 |q 28232/1 |goto Tol Barad 40.90,78.20
step
Enter the underground jail |goto Tol Barad 60.80,50.10,0.50 |c
stickystart "dustyjourn"
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28118/1 |goto Tol Barad 56.80,54.80
step
label "dustyjourn"
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay 9 Ghosts |q 28117/1 |goto Tol Barad 51.40,49.50
click Dusty Prison Journal##206890
collect 4 Dusty Prison Journal##63034 |q 28120/1 |goto Tol Barad 51.40,49.50
step
kill Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
kill 12 Horde Infantry |q 28163/1 |goto Tol Barad 51.10,29.70
step
kill Problim##47593 |q 28122/1 |goto Tol Barad 52.80,36.70
|tip He patrols around Baradin Hold.  Some searching may be required.
step
talk Sergeant Parker##48066
turnin A Huge Problem##28122 |goto Tol Barad,50.90,49.70
turnin Swamp Bait##28162 |goto Tol Barad,50.90,49.70
turnin The Leftovers##28163 |goto Tol Barad,50.90,49.70
step
talk 2nd Lieutenant Wansworth##48061
turnin D-Block##28165 |goto Tol Barad 51.40,49.60
turnin Svarnos##28185 |goto Tol Barad 51.40,49.60
turnin Cursed Shackles##28186 |goto Tol Barad 51.40,49.60
step
talk Commander Stevens##48039
turnin Clearing the Depths##28117 |goto Tol Barad 51.50,49.50
turnin Learning From The Past##28120 |goto Tol Barad 51.50,49.50
turnin The Imprisoned Archmage##28118 |goto Tol Barad 51.50,49.50
step
talk Marshal Fallows##48074
turnin Food From Below##28232 |goto Tol Barad 51.50,49.60
turnin Prison Revolt##28188 |goto Tol Barad 51.50,49.60
turnin The Warden##28223 |goto Tol Barad 51.50,49.60
step
label "dailyend"
Congratulations, you have reached the end of the dailies for today.
You will have to come back again tomorrow in order to continue gaining rep for this faction.
Click here to go back to the beginning of the dailies portion of this guide. |confirm |next "start"
step
label "buy"
earn 165 Tol Barad Commendation##391
Click here if you need more tokens. |next "start" |confirm
talk Quartermaster Brazie##47328
buy 1 Reins of the Spectral Steed##64998 |n
learnmount Spectral Steed##92231 |goto Tol Barad Peninsula,72.60,62.60 |use Reins of the Spectral Steed##64998
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Talbuk Mounts",{
keywords={"talbuk","cobalt","war","silver","riding","tan","white","the","kurenai","exalted","ground","mount"},
mounts={39315,34896,39317,34898,39318,34899,39319,34897},
patch='40200',
mounttype='Ground',
model={19377},
description="This guide will help you acquire the Cobalt Riding Talbuk, Cobalt War Talbuk, Silver Riding Talbuk, Silver War Talbuk, Tan Riding Talbuk, Tan War Talbuk, White Riding Talbuk, and White War Talbuk mounts.",
},[[
step
#include "misc_rep_mount",rep="Kurenai"
Click here to continue to earn reputation with the Kurenai |confirm always |only if rep("Kurenai")<=Revered
|next "quest" |only if rep("Kurenai")<=Revered
|next "buy" |only if rep("Kurenai")==Exalted
step
label "quest"
Routing to proper section |next |only if default
Routing to proper section |next "bead_grind" |only if completedq(10011)
step
talk Ikuti##18008
accept Ango'rosh Encroachment##9835 |goto Zangarmarsh,41.90,27.20
accept Daggerfen Deviance##10115 |goto Zangarmarsh,41.90,27.20
step
Click the Wanted Poster
|tip On a pink crystal post.
accept Wanted: Chieftain Mummaki##10116 |goto Zangarmarsh 41.70,27.30
stickystart "daggermuck"
step
Click the Daggerfen Poison Vial
|tip Little clear bottle with white liquid in it, sitting on the ground next to a hut.
collect Daggerfen Poison Vial##24500 |q 9848/2 |goto Zangarmarsh 26.40,22.80
It can also be at [25.40,25.00]
step
Click the Daggerfen Poison Manual
|tip At the top of the big tower, to the right as you reach the top, on the floor.
collect Daggerfen Poison Manual##24499 |q 9848/1 |goto Zangarmarsh 24.40,27
step
kill Chieftain Mummaki##19174
collect Chieftain Mummaki's Totem##27943 |q 10116/1 |goto Zangarmarsh 23.80,26.80
step
label "daggermuck"
kill 3 Daggerfen Assassin##18116 |q 10115/1 |goto Zangarmarsh 28.20,22.10
kill 15 Daggerfen Muckdweller##18115 |q 10115/2 |goto Zangarmarsh 28.20,22.10
step
kill 5 Ango'rosh Shaman slain |q 9835/1 |goto Zangarmarsh 34.60,29.70
kill 10 Ango'rosh Ogre slain |q 9835/2 |goto Zangarmarsh 34.60,29.70
step
talk Ikuti##18008
turnin Wanted: Chieftain Mummaki##10116 |goto Zangarmarsh 42.00,27.20
turnin Ango'rosh Encroachment##9835 |goto Zangarmarsh 42.00,27.20
turnin Ango'rosh Encroachment##9835 |goto Zangarmarsh 42.00,27.20
turnin Daggerfen Deviance##10115 |goto Zangarmarsh 42.00,27.20
accept Overlord Gorefist##9839 |goto Zangarmarsh 42.00,27.20
step
talk Puluu##18009
accept Stinger Venom##9830 |goto Zangarmarsh 40.80,28.70
accept Lines of Communication##9833 |goto Zangarmarsh 40.80,28.70
accept The Terror of Marshlight Lake##9902 |goto Zangarmarsh 40.80,28.70
step
talk Maktu##18010
accept Natural Armor##9834 |goto Zangarmarsh 41.60,27.30
step
kill Fenclaw Thrasher##18214s|n
collect 8 Fenclaw Hide##24486 |q 9834/1 |goto Zangarmarsh 48.10,38.40
step
Locate the drain in Serpent Lake |q 9731/1 |goto Zangarmarsh 50.40,40.80
|tip Swim straight down at this spot.
step
kill 12 Marshfang Slicer##18131 |q 9833/1 |goto Zangarmarsh 35.90,58.60
step
kill Terrorclaw##20477 |q 9902/1 |goto Zangarmarsh 22.40,46.10
|tip On a little island.
step
kill Marshlight Bleeders |n
|tip They are all around this area on the land, to the north and south.
collect 6 Marshlight Bleeder Venom##24485 |q 9830/1 |goto Zangarmarsh 17.30,38.40
You'll be able to find more around [Zangarmarsh,19.60,33.30]
stickystart "angomaul"
step
kill 1 Overlord Gorefist##18160 |q 9839/1 |goto Zangarmarsh 18.30,7.70
|tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
step
label "angomaul"
kill 10 Ango'rosh Mauler##18120 |q 9839/2 |goto Zangarmarsh 17.30,10.20
Click the brown crates and kill ogres around this area
step
talk Puluu##18009
turnin Stinger Venom##9830 |goto Zangarmarsh 40.80,28.70
turnin Lines of Communication##9833 |goto Zangarmarsh 40.80,28.70
turnin The Terror of Marshlight Lake##9902 |goto Zangarmarsh 40.80,28.70
step
talk Maktu##18010
turnin Natural Armor##9834 |goto Zangarmarsh 41.60,27.30
accept Maktu's Revenge##9905 |goto Zangarmarsh 41.60,27.30
step
kill Mragesh##18286 |q 9905/1 |goto Zangarmarsh 42.20,41.40
|tip He is a big brown hydra underwater.
step
talk Maktu##18010
turnin Maktu's Revenge##9905 |goto Zangarmarsh 41.60,27.30
step
talk Huntress Kima##18416
accept The Ravaged Caravan##9956 |goto Nagrand 54.20,70
step
talk Elementalist Ioki##18233
accept The Throne of the Elements##9869 |goto Nagrand 55.50,68.80
step
talk Huntress Bintook##18353
accept Do My Eyes Deceive Me##9917 |goto Nagrand 55,70.50
step
Click the Telaar Bulletin Board
|tip To the left of a big tree in a little circle island section in the road.
accept Wanted: Giselda the Crone##9936 |goto Nagrand 54.60,70.70
accept Wanted: Zorbo the Advisor##9940 |goto Nagrand 54.60,70.70
step
talk Warden Moi'bff Jill##18408
accept Fierce Enemies##10476 |goto Nagrand 54.70,70.90
step
talk Otonbu the Sage##18222
accept Stopping the Spread##9874 |goto Nagrand 54.50,72.10
step
talk Poli'lukluk the Wiser##18224
accept Solving the Problem##9878 |goto Nagrand 54.50,72.30
stickystart "kilsorrow"
step
Kill Boulderfist Hunters
collect Boulderfist Plans##25468 |q 9917/1 |goto Nagrand 63.10,73.20
step
label "kilsorrow"
kill 10 Kil'sorrow Agent##21276 |q 9936/2 |goto Nagrand 67.90,79.30
step
kill Giselda the Crone##18391  |goto Nagrand 71.10,82.40 |q 9936/1
step
talk Corki##18369
accept HELP!##9923 |goto Nagrand 72.60,70.70
Kill Boulderfist ogres
collect Boulderfist Key##25490 |q 9923 |goto Nagrand 72.60,70.70 |sticky
Free Corki |q 9923/1 |goto Nagrand 72.60,70.70
|tip Click his cage to free him.
step
talk Elementalist Sharvak##18072
turnin The Throne of the Elements##9869 |goto Nagrand 60.70,22.10
stickystart "obsidwar"
step
kill Zorbo the Advisor##18413 |q 9940/1 |goto Nagrand 46.50,18.20
step
label "obsidwar"
kill 5 Warmaul Shaman##18064 |q 9940/2 |goto Nagrand 48.30,21.50
kill 5 Warmaul Reaver##17138 |q 9940/3 |goto Nagrand 48.30,21.50
Kill Warmaul mobs
collect 10 Obsidian Warbeads##25433 |q 10476/1 |goto Nagrand 48.30,21.50
step
collect 10 Telaar Supply Crate##25647 |q 9956/1 |goto Nagrand 27.90,29.70
|tip They look like little grey boxes on the ground.
step
kill 10 Murkblood Scavenger##18207 |q 9878/1 |goto Nagrand 29.50,43.50
kill 5 Murkblood Raider##18203 |q 9878/2 |goto Nagrand 29.50,43.50
step
Use the Torch of Liquid Fire on Sunspring Villager Corpses in the water|use Torch of Liquid Fire##24560
Burn 10 Sunspring Villager Corpses |q 9874/1 |goto Nagrand 33.20,47.70
step
talk Poli'lukluk the Wiser##18224
turnin Solving the Problem##9878 |goto Nagrand 54.50,72.30
step
talk Otonbu the Sage##18222
turnin Stopping the Spread##9874 |goto Nagrand 54.50,72.10
step
talk Huntress Kima##18416
turnin The Ravaged Caravan##9956 |goto Nagrand 54.20,70
step
talk Arechron##18183
turnin HELP!##9923 |goto Nagrand 55.50,68.80
accept Corki's Gone Missing Again!##9924 |goto Nagrand 55.50,68.80
step
talk Huntress Bintook##18353
turnin Do My Eyes Deceive Me##9917 |goto Nagrand 55,70.50
accept Not On My Watch!##9918 |goto Nagrand 55,70.50
step
talk Warden Moi'bff Jill##18408
turnin Wanted: Giselda the Crone##9936 |goto Nagrand 54.80,71
turnin Wanted: Zorbo the Advisor##9940 |goto Nagrand 54.80,71
turnin Fierce Enemies##10476 |goto Nagrand 54.80,71
step
Fight Lump until he's almost dead|tip Sleeping on the hill.
Talk to Lump to interrogate him |q 9918/1 |goto Nagrand 62.70,71.40
step
talk Huntress Bintook##18353
turnin Not On My Watch!##9918 |goto Nagrand 55,70.50
accept Mo'mor the Breaker##9920 |goto Nagrand 55,70.50
step
talk Mo'mor the Breaker##18223
turnin Mo'mor the Breaker##9920 |goto Nagrand 54.60,72.20
accept The Ruins of Burning Blade##9921 |goto Nagrand 54.60,72.20
step
kill 8 Boulderfist Crusher##17134 |q 9921/1 |goto Nagrand 72.90,69.80
kill 8 Boulderfist Mystic##17135 |q 9921/2 |goto Nagrand 72.90,69.80
step
talk Mo'mor the Breaker##18223
turnin The Ruins of Burning Blade##9921 |goto Nagrand 54.60,72.20
accept The Twin Clefts of Nagrand##9922 |goto Nagrand 54.60,72.20
step
kill 10 Boulderfist Warrior##17136 |q 9922/1 |goto Nagrand 40.70,35.60
kill 10 Boulderfist Mage##17137 |q 9922/2 |goto Nagrand 40.70,35.60
collect 1 Northwind Cleft Key##25509 |q 9924 |goto Nagrand 40.70,35.60 |sticky
step
Free Corki inside the cave |q 9924/1 |goto Nagrand 39.30,27.50
|tip Inside the cave, way in the back, in a yellow cage again.
step
talk Mo'mor the Breaker##18223
turnin The Twin Clefts of Nagrand##9922 |goto Nagrand 54.60,72.20
accept Diplomatic Measures##10108 |goto Nagrand 54.60,72.20
step
talk Arechron##18183
turnin Corki's Gone Missing Again!##9924 |goto Nagrand 55.50,68.80
step
The path up to Lantresor of the Blade starts here |goto Nagrand,73.80,68.10,0.50 |c
step
talk Lantresor of the Blade##18261
Listen to his story
turnin Diplomatic Measures##10108 |goto Nagrand 73.80,62.60
accept Armaments for Deception##9928 |goto Nagrand 73.80,62.60
accept Ruthless Cunning##9927 |goto Nagrand 73.80,62.60
step
Click the Kil'sorrow Armaments on the ground
|tip The Kil'sorrow Armaments look like skinny, square, tan boxes with a red axe logo on them.
collect 10 Kil'sorrow Armaments##25554 |q 9928/1 |goto Nagrand 71.40,79.40
Kill Kil'sorrow mobs
Use your Warmaul Ogre Banners on their corpses|use Warmaul Ogre Banner##25552
Plant 10 Warmaul Ogre Banners |q 9927/1 |goto Nagrand 71.40,79.40
step
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto Nagrand 73.80,62.60
turnin Ruthless Cunning##9927 |goto Nagrand 73.80,62.60
accept Returning the Favor##9931 |goto Nagrand 73.80,62.60
accept Body of Evidence##9932 |goto Nagrand 73.80,62.60
step
kill 10 Warmaul ogres |n
Use your Kil'sorrow Banners on their corpses|use Kil'sorrow Banner##25555
Plant 10 Kil'sorrow Banners |q 9931/1 |goto Nagrand 46.50,24.30
Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
Defend the 2 ogres that appear until they are done placing the corpse |q 9932/1 |goto Nagrand 46.50,24.30
step
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto Nagrand 73.80,62.60
turnin Body of Evidence##9932 |goto Nagrand 73.80,62.60
accept Message to Telaar##9933 |goto Nagrand 73.80,62.60
step
talk Arechron##18183
turnin Message to Telaar##9933 |goto Nagrand 55.50,68.80
step
talk Arechron##18183
accept Corki's Ransom##9954 |goto Nagrand 55.50,68.70
step
talk Warden Moi'bff Jill##18408
accept Wanted: Durn the Hungerer##9938 |goto Nagrand 54.70,70.90
step
talk Huntress Kima##18416
accept He Called Himself Altruis...##9982 |goto Nagrand,54.80,70.50
step
The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
Click here to proceed |confirm
step
map Nagrand
path follow loose;loop;ants curved
path	46.70,63.70	40.80,63.50	37.40,62.10
path	34.00,62.70	31.70,65.40	30.50,71.30
path	32.00,75.90	35.50,78.50	39.80,78.70
path	42.40,75.50	46.00,70.20
Follow the path around this are to look for _Durn the Hungerer_
kill Durn the Hungerer##18411 |q 9938/1
step
talk Altruis the Sufferer##18417
turnin He Called Himself Altruis...##9982 |goto Nagrand 27.30,43.10
accept Survey the Land##9991 |goto Nagrand 27.30,43.10
|tip You will fly around on a drake to view The Twilight Ridge.
turnin Survey the Land##9991 |goto Nagrand 27.30,43.10
accept Buying Time##9999 |goto Nagrand 27.30,43.10
step
kill 2 Felguard Legionnaire##17152 |q 9999/1 |goto Nagrand 24.50,37.90
kill 3 Mo'arg Engineer##16945 |q 9999/2 |goto Nagrand 24.50,37.90
kill 8 Gan'arg Tinkerer##17151 |q 9999/3 |goto Nagrand 24.50,37.90
step
talk Altruis the Sufferer##18417
turnin Buying Time##9999 |goto Nagrand 27.30,43.10
accept The Master Planner##10001 |goto Nagrand 27.30,43.10
step
kill Mo'arg Master Planner##18567
collect The Master Planner's Blueprints##25751 |q 10001/1 |goto Nagrand,17.50,50.30
You can also find the Mater Planner around [23.30,35.40]
step
talk Altruis the Sufferer##18417
turnin The Master Planner##10001 |goto Nagrand 27.30,43.10
accept Patience and Understanding##10004 |goto Nagrand 27.30,43.10
step
Enter the Cave here |goto Nagrand 27.00,23.70 < 5 |walk
talk Corki##18445
tip You may have to fight the _65 Elite_ standing next to the cage.
turnin Corki's Ransom##9954 |goto Nagrand 29.50,26.10
accept Cho'war the Pillager##9955 |goto Nagrand 29.50,26.10
step
Leave the cave |goto Nagrand 27.00,23.70 < 5 |c |walk
step
Enter the Cave here |goto Nagrand 27.20,18.70 < 5 |walk
Follow the path up and around
kill Cho'war the Pillager##18423+
collect Cho'war's Key##25648 |q 9955 |goto Nagrand,25.80,13.80
step
Leave the Cave here |goto Nagrand 27.20,18.70 < 5 |c
step
Enter the cave |goto Nagrand 27.00,23.70 < 5 |walk
Click _Corki's_ cage to unlock it
Free Corki |q 9955/1 |goto Nagrand 29.50,26.10
|tip You may have to fight the _65 Elite_ standing next to the cage.
step
Leave the cave |goto Nagrand 27.00,23.70 < 5 |walk
talk Warden Moi'bff Jill##18408
turnin Wanted: Durn the Hungerer##9938 |goto Nagrand 54.70,70.90
step
talk Arechron##18183
turnin Cho'war the Pillager##9955 |goto Nagrand 55.50,68.70
step
talk Sal'salabim##18584
Tell him "Altruis sent me. He said that you could help me."
|tip He will immediately start attacking you!
Persuad Sal'salabim |q 10004/1 |goto Shattrath City,77.30,34.90
step
talk Sal'salabim##18584
turnin Patience and Understanding##10004 |goto Shattrath City,77.30,34.90
accept Crackin' Some Skulls##10009 |goto Shattrath City,77.30,34.90
step
talk Raliq the Drunk##18585
Tell him you are here to collect a dept, pay up or you're going to have to hurt him.
|tip He will immediately start attacking you!
Collect Raliq's Debt |q 10009/1 |goto Shattrath City 75.00,31.50
step
talk Coosh'coosh##18586
Tell him you are here to collect a dept, pay up or you're going to have to hurt him.
|tip He will immediately start attacking you!
Collect Coosh'coosh's Debt |q 10009/2 |goto Zangarmarsh,80.90,91.10
step
talk Floon##18588
Tell him you are here to collect a dept, pay up or you're going to have to hurt him.
|tip He will immediately start attacking you!
Collect Floon's Debt |q 10009/3 |goto Terokkar Forest,27.20,58.10
step
talk Sal'salabim##18584
turnin Crackin' Some Skulls##10009 |goto Shattrath City 77.30,34.90
accept It's Just That Easy?##10010 |goto Shattrath City 77.30,34.90
step
talk Altruis the Sufferer##18417
turnin It's Just That Easy?##10010 |goto Nagrand,27.30,43.10
accept Forge Camp: Annihilated##10011 |goto Nagrand,27.30,43.10
step
kill Demos Overseer of Hate##18535
collect Fel Cannon Activator##25770 |n
Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
Destroy Forge Camp: Hate |q 10011/1 |goto Nagrand,25.00,36.10
step
kill Xirkos Overseer of Fear##18536
collect Fel Cannon Activator##25771 |n
Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
Destoy Forge Camp: Fear |q 10011/2 |goto Nagrand 19.60,51.10
step
talk Altruis the Sufferer##18417
turnin Forge Camp: Annihilated##10011 |goto Nagrand 27.30,43.10
step
Once you have completed the above quests, you will have to grind your way to exalted.
Click to proceed. |confirm
step
label "bead_grind"
kill Warmaul Reaver##17138+, Warmaul Shaman##18064+
collect Obsidian Warbeads##25433 |goto Nagrand,48.90,22.70 |n
If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
Collect beads in sets of 10.
Click here when you're ready to turn in. |confirm
step
label "turn_in"
talk Warden Moi'bff Jill##18408
accept More Warbeads##10477 |goto Nagrand,54.70,70.90 |repeatable
Click here to go back to farming. |next "bead_grind" |confirm |only if rep("Kurenai")<=Revered
Congratulations, you are now Exalted with The Kurenai! |complete rep("Kurenai")>=Exalted |only if rep("Kurenai")>=Exalted
step
label "buy"
talk Trader Narasu##20240
buy 1 Reins of the Cobalt Riding Talbuk##31830 |goto Nagrand,54.60,75.00
buy 1 Reins of the Cobalt War Talbuk##29227 |goto Nagrand,54.60,75.00
buy 1 Reins of the Silver Riding Talbuk##31832 |goto Nagrand,54.60,75.00
buy 1 Reins of the Silver War Talbuk##29229 |goto Nagrand,54.60,75.00
buy 1 Reins of the Tan Riding Talbuk##31834 |goto Nagrand,54.60,75.00
buy 1 Reins of the Tan War Talbuk##29230 |goto Nagrand,54.60,75.00
buy 1 Reins of the White Riding Talbuk##31836 |goto Nagrand,54.60,75.00
buy 1 Reins of the White War Talbuk##29231 |goto Nagrand,54.60,75.00
step
learnmount Cobalt Riding Talbuk##39315 |use Reins of the Cobalt Riding Talbuk##31830
learnmount Cobalt War Talbuk##34896 |use Reins of the Cobalt War Talbuk##29227
learnmount Silver Riding Talbuk##39317 |use Reins of the Silver Riding Talbuk##31832
learnmount Silver War Talbuk##34898 |use Reins of the Silver War Talbuk##29229
learnmount Tan Riding Talbuk##39318 |use Reins of the Tan Riding Talbuk##31834
learnmount Tan War Talbuk##34899 |use Reins of the Tan War Talbuk##29230
learnmount White Riding Talbuk##39319 |use Reins of the White Riding Talbuk##31836
learnmount White War Talbuk##34897 |use Reins of the White War Talbuk##29231
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Big Battle Bear",{
keywords={"trading","card","game","big","battle","bear","ground","mount"},
mounts={51412},
patch='20403',
mounttype='Ground',
model={25335},
description="This guide will help you acquire the Big Battle Bear mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Magic Rooster",{
keywords={"trading","card","game","magic","rooster","ground","mount"},
mounts={65917},
patch='30103',
mounttype='Ground',
model={29344},
description="This guide will help you acquire the Magic Rooster mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Savage Raptor",{
keywords={"trading","card","game","savage","raptor","ground","mount"},
mounts={97581},
patch='unknown',
mounttype='Ground',
model={38048},
description="This guide will help you acquire the Savage Raptor mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Spectral Tiger",{
keywords={"trading","card","game","spectral","tiger","ground","mount"},
mounts={42777},
patch='20403',
mounttype='Ground',
model={21974},
description="This guide will help you acquire the Spectral Tiger mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Swift Shorestrider",{
keywords={"trading","card","game","swift","shorestrider","tallstrider","ground","mount"},
mounts={101573},
patch='43000',
mounttype='Ground',
model={17011},
description="This guide will help you acquire the Swift Shorestrider mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\White Riding Camel",{
keywords={"trading","card","game","white","riding","camel","ground","mount"},
mounts={102488},
patch='43000',
mounttype='Ground',
model={35899},
description="This guide will help you acquire the White Riding Camel mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Wooly White Rhino",{
keywords={"trading","card","game","wooly","white","rhino","ground","mount"},
mounts={74918},
patch='unknown',
mounttype='Ground',
model={31721},
description="This guide will help you acquire the Wooly White Rhino mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Amani War Bear",{
keywords={"amani","war","bear","zul","aman","zul'aman"},
mounts={43688},
patch='30100',
mounttype='Ground',
model={22464},
description="This mount has been removed from the game.",
},[[
step
The Amani War Bear was the reward for completing the timed event in the original version of Zul'Aman
This mount was retired from service in patch 3.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Ancient Frostsaber",{
keywords={"acient","frost","saber","frostsaber"},
mounts={16056},
patch='30002',
mounttype='Ground',
model={9695},
description="This mount has been removed from the game.",
},[[
step
The Ancient Frostsaber was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Black Nightsaber",{
keywords={"black","night","saber","nightsaber"},
mounts={16055},
patch='30001',
mounttype='Ground',
model={9991},
description="This mount has been removed from the game.",
},[[
step
The Black Nightsaber was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Black Qiraji Battle Tank",{
keywords={"black","qiraji","battle","tank","bug"},
mounts={26656},
patch='30008',
mounttype='Ground',
model={15676},
description="This mount has been removed from the game.",
},[[
step
The Black Qiraji Battle Tank was awarded to anyone who rang the gong within 10 hours on each server to complete the questline required to open the Temple of An'Qiraj
This mount was retired from service in patch 4.0.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Black Ram",{
keywords={"black","ram"},
mounts={17461},
patch='40100',
mounttype='Ground',
model={2784},
description="This mount has been removed from the game.",
},[[
step
The Black Ram was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Brewfest Ram",{
keywords={"brewfest","brew","fest","ram"},
mounts={43899},
patch='30300',
mounttype='Ground',
model={22265},
description="This mount has been removed from the game.",
},[[
step
The Brewfest Ram was the original reward for the 2007 Brewfest in-game event.
This mount is only available if you completed the Brewfest event in 2007, in which case it can be purchased from the mount vendor in Amberstill Ranch.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Crusader's White Warhorse",{
keywords={"crusaders","crusader's","white","war","horse","warhorse"},
mounts={68187},
patch='30200',
mounttype='Ground',
model={29937},
description="This mount has been removed from the game.",
},[[
step
The Crusader's White Warhorse was the reward for completing the achievement "A Tribute to Immortality"
This mount was retired from service in patch 4.0.3 along with the Tribute Chest in Trial of the Grand Crusader
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Frost Ram",{
keywords={"frost","ram"},
mounts={17460},
patch='30002',
mounttype='Ground',
model={2787},
description="This mount has been removed from the game.",
},[[
step
The Frost Ram was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Icy Blue Mechanostrider Mod A",{
keywords={"icy","blue","mechano","strider","mod","a","mechanostrider"},
mounts={17459},
patch='50407',
mounttype='Ground',
model={10666},
description="This mount has been removed from the game.",
},[[
step
The Icy Blue Mechanostrider Mod A was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Palomino",{
keywords={"palomino","palamino"},
mounts={16082},
patch='30302',
mounttype='Ground',
model={2408},
description="This mount has been removed from the game.",
},[[
step
The Palomino was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Swift Alliance Steed",{
keywords={"swift","alliance","steed"},
mounts={68057},
patch='30202',
mounttype='Ground',
model={29284},
description="This mount has been removed from the game.",
},[[
step
The Swift Alliance Steed dropped from the Argent Crusader Tribute Chest in Trial of the Grand Crusader (10H) with all 50 attempts left
This mount was retired from service in patch 4.0.3 along with the Tribute Chest in Trial of the Grand Crusader
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Swift Razzashi Raptor",{
keywords={"swift","razzashi","raptor"},
mounts={24242},
patch='40300',
mounttype='Ground',
model={15289},
description="This mount has been removed from the game.",
},[[
step
The Swift Razzashi Raptor dropped from the original Zul'Gurub 10 man raid instance
This mount was removed from the drop table when the Cataclsym expansion released and Zul'Gurub was remade.
|tip This mount will sometimes be on the BMAH to bid on.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Swift Zulian Tiger",{
keywords={"swift","zulian","tigar"},
mounts={24252},
patch='30300',
mounttype='Ground',
model={15290},
description="This mount has been removed from the game.",
},[[
step
The Swift Zulian Tiger dropped from the original Zul'Gurub 10 man raid instance
This mount was removed from the drop table when the Cataclsym expansion released and Zul'Gurub was remade.
|tip This mount will sometimes be on the BMAH to bid on.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\White Mechanostrider Mod B",{
keywords={"white","mechano","strider","mod","b","mechanostrider"},
mounts={15779},
patch='30300',
mounttype='Ground',
model={9474},
description="This mount has been removed from the game.",
},[[
step
The White Mechanostrider Mod B was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\White Stallion",{
keywords={"white","stallion"},
mounts={16083},
patch='30302',
mounttype='Ground',
model={2410},
description="This mount has been removed from the game.",
},[[
step
The White Stallion was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Armored Brown Bear",{
keywords={"armored","brown","bear","ground","mount"},
mounts={60114},
patch='30200',
mounttype='Ground',
model={27821},
description="This guide will help you acquire the Armored Brown Bear mount.",
},[[
step
talk Mei Francis##32216
buy Reins of the Armored Brown Bear##44226 |goto Dalaran/1 58.11,42.09 |or
'|complete hasmount(60116) |or
step
use the Reins of the Armored Brown Bear##44226
Learn the "Armored Brown Bear" Mount |learnmount Armored Brown Bear##60116
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Traveler's Tundra Mammoth",{
keywords={"traveler's","tundra","mammoth","vendor","mount","ground"},
mounts={61425},
patch='30002',
mounttype='Ground',
model={25451},
description="This guide will help you acquire the Traveler's Tundra Mammoth mount.",
},[[
step
talk Mei Francis##32216
buy Reins of the Traveler's Tundra Mammoth##44235 |goto Dalaran/1 58.11,42.09 |or
'|complete hasmount(61425) |or
step
use Reins of the Traveler's Tundra Mammoth##44235
Learn the "Traveler's Tundra Mammoth" Mount |learnmount Traveler's Tundra Mammoth##61425
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Albino Drake",{
keywords={"albino","drake","flying","mount"},
mounts={60025},
patch='30002',
mounttype='Flying',
model={6372},
description="This guide will help you acquire the Albino Drake mount.",
},[[
step
Obtain _50 mounts_, you can use our guide to achieve these |achieve 2143
Check your _mailbox_ for your _prize_!
collect 1 Reins of the Albino Drake##44178
step
learnmount Albino Drake##60025 |use Reins of the Albino Drake##44178
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Bloodbathed Frostbrood Vanquisher",{
keywords={"bloodbathed","frostbrood","vanquisher","flying","mount"},
mounts={72808},
patch='30302',
mounttype='Flying',
model={31156},
description="This guide will help you acquire the Bloodbathed Frostbrood Vanquisher mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Icecrown Raider (10 player)"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Bloodbathed Frostbrood Vanquisher##51954
step
learnmount Bloodbathed Frostbrood Vanquisher##72808 |use Reins of the Bloodbathed Frostbrood Vanquisher##51954
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Blue Dragonhawk",{
keywords={"blue","dragonhawk","flying","mount"},
mounts={61996},
patch='30008',
mounttype='Flying',
model={27525},
description="This guide will help you acquire the Blue Dragonhawk mount.",
},[[
step
Obtain _100 mounts_ you can use our guide to achieve this |achieve 2536
Check your _mailbox_ for your _prize_!
collect 1 Blue Dragonhawk##44843
step
learnmount Blue Dragonhawk##61996 |use Blue Dragonhawk##44843
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Corrupted Fire Hawk",{
keywords={"corrupted","fire","hawk","firehawk","flying","mount"},
mounts={97560},
patch='unknown',
mounttype='Flying',
model={38046},
description="This guide will help you acquire the Corrupted Fire Hawk mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Firelands Raider"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Corrupted Egg of Millagazor##69230
step
learnmount Corrupted Fire Hawk##97560 |use Corrupted Egg of Millagazor##69230
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Drake of the East Wind",{
keywords={"drake","of","the","east","wind","flying","mount"},
mounts={88335},
patch='unknown',
mounttype='Flying',
model={35757},
description="This guide will help you acquire the Drake of the East Wind mount.",
},[[
step
This achievement requires that you complete 24 achievements based off of Cataclysm Heroic Raids.
confirm
step
_Heroic: Magmaw and Parasite Evening_
For Parasite Evening, you will need to defeat Magmaw without anyone getting infected with a parasite.
In order to do this, you will need a lot of ranged DPS.
Magmaw will cast _Pillar of Flame_, which will mark the ground with a large red circle.
Move out of it as quickly as you can, as the Parasites will spawn out of it.
If a parasite touches you, you will become infected and fail the achievement.
_You will need to range AoE the Lava Parasites down._
Slow effects will help you kite them around.
kill Magmaw##41570
achieve 4853/1 |goto Blackwing Descent/1 25.00,54.40
achieve 4853/13 |goto Blackwing Descent/1 25.00,54.40
step
_Heroic: Omnotron Defense System and Achieve-a-tron_
For this achievement, there will 4 enemies each with their own ability that you will have to avoid.
_Electron's_ ability is _Static Shock_.
When he reaches 50 energy, he will begin to cast _Unstable Shield_.
_YOU MUST STOP DPS_ at this time, make sure there are no DoTs or pets even.
_Toxitron_ will use an ability called _Poison Protocol_.
He will spawn 3 _Poison Bombs_ that target 3 random raid members.
People who aren't selected will need to DPS the 3 Bombs down before they reach their target.
_Arcanotron will use an ability called _Arcane Annihilator_
You _WILL_ need 2 interrupters for this part. He casts Arcane Annihilator more often than a single person can interrupt.
A shaman with _Reverberation_ as a talent will be able to solo interrupt.
_Magmatron_ will use an ability called _Acquiring Target_ which will be aimed at a random raid member.
For this, you will want the raid group spread out as much as possible.
The person who is the target is allowed to be hit by the flame, _NO ONE ELSE_.
kill Magmatron##42178, Toxitron##42180, Electron##42179, Arcanotron##42166
achieve 4853/2 |goto Blackwing Descent/1 67.60,56.60
achieve 4853/14 |goto Blackwing Descent/1 67.60,56.60
step
_Heroic: Maloriak and Aberrant Behavior_
The _Abberations_ spawn during the _Red Vail_ phase.
You will need to gather 12 _Abberations_ and kill them within 10 seconds.
If you're a high level, an easier way to handle this achievement is to just force him to 20% health, forcing all 18 Abberations to spawn.
Otherwise it will be a lengthy process.
kill Maloriak##41378
achieve 4853/3 |goto Blackwing Descent/1 70.60,69.80
achieve 4853/17 |goto Blackwing Descent/1 70.60,69.80
step
_Heroic: Atramedes and Silence is Golden_
In order to earn this achievement, a raid member's sound bar _must not_ go over 50%.
Hitting the gongs will help him take more damage, though they should be saved for _Searing Flame_.
The faster you end this fight the better. Basically, avoid _ALL_ his AoE attacks.
kill Atramedes##41442
achieve 4853/4 |goto Blackwing Descent/1 48.00,21.40
achieve 4853/15 |goto Blackwing Descent/1 48.00,21.40
step
_Heroic: Chimaeron and Full of Sound and Fury_
You will need hard hitting DPS for this achievement, as well as at least one healer.
Regardless of your level, you will absolutely need to release the _Bile-O-Tron 800_ at the back of the room otherwise you will wipe.
kill Chimaeron##43296
achieve 4853/5 |goto Blackwing Descent/1 22.20,68.80
achieve 4853/16 |goto Blackwing Descent/1 22.20,68.80
step
_Heroic: Nefarian and Keeping it in the Family_
For this achievement, you will need heavy dps.
Kill Onyxia before the 3rd Crackle.
There will be a phase where platforms raise and you will need to kill adds.
Quickly kill the adds, then burn Nefarion down to 50%.
You will need to kill him to get the achievement.
kill Nefarian##41376
achieve 4853/6 |goto Blackwing Descent/1 48.00,70.80
achieve 4853/18 |goto Blackwing Descent/1 48.00,70.80
step
_Heroic: Halfus Wyrmbreaker and The Only Escape_
In order to earn this achievement, you will need to kill 2 drakes 10 seconds apart.
Kill one of the 3 drakes, then dps two down to 10% health.
Dps one down then quickly do the other, then pop all cooldowns to take Halfus down.
kill Halfus Wyrmbreaker##44600
achieve 4853/7 |goto The Bastion of Twilight/1 55.80,16.20
achieve 4853/19 |goto The Bastion of Twilight/1 55.80,16.20
step
Heroic: Valiona and Theralion and Double Dragon_
This achievement takes place during the Airborne phase of the fight.
Two abilities that will take you into the Twilight Realm are _Valiona's Deep Breath_ and _Theralion's Dazzling Destruction_.
When you are in the Twilight Realm, kill 6 Twilight Fiends.
They spawn every 15 seconds.
After 6, dps the boss down for the achievement.
kill Valiona##45992, Theralion##45993
achieve 4853/8 |goto The Bastion of Twilight/1 53.60,77.60
achieve 4853/20 |goto The Bastion of Twilight/1 53.60,77.60
step
_Heroic: Ascendant Council and Elementary_
The achievement Elementary takes place during stage 3 of the fight.
You must defeat the _Elemental Monstrosity_ while only creating a single Liquid Ice.
Once the four Council members have reached 25% health, stage 3 starts.
To earn this achievement, tank the Elementium Monstronsity where he spawns and _DO NO MOVE HIM_.
He will use an ability called _Cryogenic Aura_ that will cause a circle of ice to appear.
If you move him, more than one will appear.
DPS him down as fast as you can.
kill Feludius##43687, Ignacious##43686, Arion##43688, Terrastra##43689
achieve 4853/9 |goto The Bastion of Twilight/2 41.40,44.60
achieve 4853/21 |goto The Bastion of Twilight/2 41.40,44.60
step
_Heroic: Cho'gall and The Abyss Will Gaze Back Into You_
This achievement requires that you defeat Cho'gall without a raid member gaining more than 30% Corrupted Blood.
Basically, you will need to avoid being hit be _ANY_ ability during the encounter.
To avoid stacking corruption, interrupt _Depravity_ at all costs when an _Adherent_ starts to cast it.
Range AoE _Blood of the Old Gods_, which spawn from the spell _Fester Blood_ cast by Cho'gall. They must be dealt with quickly.
When phase 2 starts, you will need to dps down tentacles while maintaining powerful dps on Cho'gall.
kill Cho'gall##43324
achieve 4853/10 |goto The Bastion of Twilight/2 74.60,76.20
achieve 4853/22 |goto The Bastion of Twilight/2 74.60,76.20
step
Heroic: Conclave of Wind and Stay Chill_
For this achievement, you will need to defeat the Conclave of Wind with 7 stacks of Wind Chill.
This achievement is fairly simple with a full group.
Have a tank and healer at [Throne of the Four Winds 48.00,26.60].
Have the rest out the group spread out at the coordinates below:
Anshal is at [Throne of the Four Winds 31.80,50.60]
Rohash is at [Throne of the Four Winds 63.80,50.00]
Kill Anshal and Rohash as quickly as possible.
Converge with the Tank and hearler at Nezir.
Watch for your stacks of _Wind Chill_ to reach 7, and DPS the boss down hard.
kill Nezir##45871, Anshal##45870, Rohash##45872
achieve 4853/11
achieve 4853/23
step
Heroic: Al'akir and Four Play_
For this achievement, you will need to kill Al'Akir while he is affected by Feedback.
There are 3 stages to the fight.
During _Stage 2_, Stormlings will spawn.
You will need to keep one alive for phase 3.
DPS Al'akir down as low as possible without killing him.
Kill the Stormling, then Al'akir for the achievement.
kill Al'Akir##46753
achieve 4853/12 |goto The Bastion of Twilight/2 47.20,50.80
achieve 4853/24 |goto The Bastion of Twilight/2 47.20,50.80
step
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Drake of the East Wind##62901
step
learnmount Drake of the East Wind##88335 |use Reins of the Drake of the East Wind##62901
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Flameward Hippogryph",{
keywords={"flameward","hippogryph","flying","mount"},
mounts={97359},
patch='unknown',
mounttype='Flying',
model={38018},
description="This guide will help you acquire the Flameward Hippogryph mount.",
},[[
step
This mount is a reward for completing the _"The Molten Front Offensive"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Flameward Hippogryph##69213
step
learnmount Flameward Hippogryph##97359 |use Flameward Hippogryph##69213
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Green Proto-Drake",{
keywords={"green","proto","drake","proto-drake","the","oracles","exalted","flying","mount"},
mounts={61294},
patch='30002',
mounttype='Flying',
model={28053},
description="This guide will help you acquire the Green Proto-Drake mount.",
},[[
step
To get the Green Proto-Drake, you must first become Exalted with The Oracles.
Earn Exalted with The Oracles |complete rep("The Oracles")==Exalted
confirm
|next |only if default
|next "mount" |only if rep("The Oracles")==Exalted
step
Proceeding to Prequests |next |complete rep('The Oracles')<=Friendly |only if rep('The Oracles')<=Friendly
Proceeding to Dailies |next "daily" |complete rep('The Oracles')>=Friendly |only if rep('The Oracles')>=Friendly
step
#include "Oracles_PreQuests"
step
label "daily"
#include "Oracles_Dailies"
step
After you complete the dailies above, you will need to repeat them in order to attain Exalted.
Click here to go back to the start of the dailies guide. |confirm |next "daily"
step
talk Geen##31910
buy Mysterious Egg##39878 |goto Sholazar Basin 54.60,56.20
step
label "mount"
You will have to wait a week for the egg to hatch
Click the Cracked Egg in your bags |use Cracked Egg##39883
collect Reins of the Green Proto-Drake##44707 |n
_
learnmount Green Proto-Drake##61294 |use Reins of the Green Proto-Drake##44707
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Icebound Frostbrood Vanquisher",{
keywords={"icebound","frostbrood","vanquisher","flying","mount"},
mounts={72807},
patch='30300',
mounttype='Flying',
model={31154},
description="This guide will help you acquire the Icebound Frostbrood Vanquisher mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Icecrown Raider (25 player)"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Icebound Frostbrood Vanquisher##51955
step
learnmount Icebound Frostbrood Vanquisher##72807 |use Reins of the Icebound Frostbrood Vanquisher##51955
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Ironbound Proto-Drake",{
keywords={"ironbound","proto-drake","proto","drake","flying","mount"},
mounts={63956},
patch='30100',
mounttype='Flying',
model={28953},
description="This guide will help you acquire the Ironbound Proto-Drake mount.",
},[[
step
kill Flame Leviathan##33113
Click here to load the "Orbit-uary" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbit-uary"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Orbit-uary_ achievement |achieve 12401/1 |goto Ulduar/1 49,40
step
kill Ignis the Furnace Master##33118
Click here to load the "Stokin' the Furnace" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Stokin' the Furnace"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Stokin' the Furnace_ achievement |achieve 12401/2 |goto Ulduar/1 37.50,26.50
step
kill Razorscale##33186
Click here to load the "Iron Dwarf, Medium Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Iron Dwarf, Medium Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Iron Dwarf, Medium Rare_ achievement |achieve 12401/3 |goto Ulduar/1 54.10,26.30
step
kill XT-002 Deconstructor##33293
Click here to load the "Heartbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heartbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Heartbreaker_ achievement |achieve 12401/4 |goto Ulduar/1 48.50,13.90
step
Kill the Assembly of Iron
Click here to load the "I Choose You, Steelbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Steelbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Choose You, Steelbreaker_ achievement |achieve 12401/5 |goto Ulduar/2 15,56
step
kill Kologarn##32930
Click here to load the "Disarmed" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Disarmed"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Disarmed_ achievement |achieve 12401/6 |goto Ulduar/2 37.30,14.00
step
kill Auriaya##33515
Click here to load the "Crazy Cat Lady" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Crazy Cat Lady"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Crazy Cat Lady_ achievement |achieve 12401/7 |goto Ulduar/3 52.90,74.15
step
kill Hodir##32845
Click here to load the "I Could Say That This Cache Was Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Could Say That This Cache Was Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Could Say That This Cache Was Rare_ achievement |achieve 12401/8 |goto Ulduar/3 66.00,63.70
step
kill Thorim##32865
Click here to load the "Lose Your Illusion" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lose Your Illusion"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Lose Your Illusion_ achievement |achieve 12401/9 |goto Ulduar/3 70.32,48.82
step
kill Freya##32906
Click here to load the "Knock, Knock, Knock on Wood" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock, Knock, Knock on Wood"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Knock, Knock, Knock on Wood_ achievement |achieve 12401/10 |goto Ulduar/3 53,23
step
kill Mimiron##33350
Click here to load the "Firefighter" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Firefighter"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Firefighter_ achievement |achieve 12401/11 |goto Ulduar/5 43.60,41.10
step
kill General Vezax##33271
Click here to load the "I Love the Smell of Saronite in the Morning" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Love the Smell of Saronite in the Morning"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Love the Smell of Saronite in the Morning_ achievement |achieve 12401/12 |goto Ulduar/4 52.60,57.10
step
kill Yogg-Saron##33288
Click here to load the "One Light in the Darkness" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\One Light in the Darkness"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _One Light in the Darkness_ achievement |achieve 12401/13 |goto Ulduar/4 68,40.80
step
Go to any mail box.
collect Reins of the Ironbound Proto-Drake##45801
step
learnmount Ironbound Proto-Drake##63956 |use Reins of the Ironbound Proto-Drake##45801
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Red Proto-Drake",{
keywords={"red","proto-drake","flying","mount"},
mounts={59961},
patch='30002',
mounttype='Flying',
model={28044},
description="This guide will help you acquire the Red Proto-Drake mount.",
},[[
step
In order to earn this achievement, you will need complete 38 parts to the achievement _Glory to the Hero_.
These parts take place in _Heroic Wrath of the Lich King Dungeons_, so keep in mind that all parts in this guide will take place in _HEROIC MODE ONLY_.
confirm
step
_On The Rocks_
In order to earn this achievement, you will need at least one other party member.
Prince Keleseth will cast _Frost Tomb_ on one of the party members.
_DO NOT BREAK THEM OUT!_ It will cause you to fail the achievement.
kill Prince Keleseth##23953
achieve 2136/1 |goto Utgarde Keep/1 30.60,65.60
step
_Split Personality_
In order to earn this achievement, you will need to kill Grand magus Telestra's Mirror Images within 5 seconds of killing the first.
The easiest way to do this will be to lower the Image's health to 10%.
Once all 3 are at 10%, kill them all.
kill Grand Magus Telestra##26731
achieve 2136/2 |goto The Nexus/0 27.60,41.60
step
_Chaos Theory_
In order to earn this achievement, you will need to defeat Anomalus without destroying any _Chaotic Rifts_.
At 75%, 50% and 25% he will enter a _Rift Phase_, each lasting about 25 seconds.
The easiest way to do this is to kite him around, spreading out each rift by at least 20 yards.
achieve 2136/4
step
_Intense Cold_
kill Keristrasza##26723
For this achievement, you will need someone who can dispel, or escape movement impairing effects.
She will cast _Crystal Chains_, which binds you to the ground for 10 seconds.
In order to earn this achievement, you will need to be moving around every 3 seconds to avoid _Intense Cold_ from stacking.
achieve 2136/3 |goto The Nexus/0 37.00,68.40
step
_Watch Him Die_
To earn this achievement, you will need to kill Krik'thir the Gatewatcher before you kill _Watcher Silthik, Watcher Narjil and Watcher Gashra_.
The watchers cannot be CC'd, but they can  be stunned.
achieve 2136/5
step
_Hadronox Denied_
kill Hadronox##28921
This achievement can be tricky. You will have to kill _Hadronox_ before he comes up the tunnel.
There are several ways to do this.
If you're a rogue, you can aggro an enemy in the main chamber and vanish, which will reset the boss.
Have the group move to the bottom of the tunnel, but not jump.
After a bit Hadronox will respawn.
or
You could just run down the tunnel, kill all of the adds then him.
achieve 2136/6 |goto Azjol-Nerub/2 40.40,30.60
step
_Gotta Go!_
For this achievement, you will need to maximize your dps on the boss.
When he reaches 75%, 50% and 25% health, he will use an ability called _Submerge_ which will clear any status affect he's currently under and become immune to damage.
At this point adds will spawn, just kill them as fast as you can.
kill Anub'arak##29120
achieve 2136/7 |goto Azjol-Nerub/1 61.80,48.60
step
_Respect Your Elders_
In order to earn this achievement, you will need to kill Nadox without killing Ahn'kahet Guardians that spawn.
When the Guardian does spawn, have a DPS pull it away and continue to kill Nadox.
kill Elder Nadox##29309
achieve 2136/9
step
_Volunteer Work_
kill Jedoga Shadowseeker##29310
In order to get this achievement, you simply have to not kill any Twilight Volunteers.
Letting a Twilight Volunteer sacrifice himself for Jedoga will dramatically increase her damage output.
If possible, disarm her to mitigate damage.
achieve 2136/10 |goto Azjol-Nerub/1 49.20,71.80
step
_Volazj's Quick Demise_
For this achievemnt you will need heavy AoE damage for the Insanity phase.
_Insanity_ is cast randomly throughout the fight. It will cause mirror images of each party member to spawn
You must kill all of the mirror images, then help each player kill their set before being able to attack Volazj again.
Once the phase is over you'll be back to dpsing Volazj down.
If you're a warrior, you willbe able to spell reflect _Mind Flay_ and _Shadow Bolt Volley_ for instant damage.
kill Herald Volazj##29311
achieve 2136/8
step
_Consumption Junction_
In order to earn this achievement, you must prevent Trollgore from gaining 10 stacks of Consume.
He will use the _Consume_ ability every 10 seconds.
Moving out of his line of sight will prevent him from gaining a stack of consume.
He will gain 1 stack of consumer per party member that he can see.
a good strategy is to have the tank fight him at the top of the stairs, and the dps at the bottom.
DPS for 10 seconds, then move behind the stairwell on the left to LoS.
kill Trollgore##26630
achieve 2136/11 |goto Drak'Tharon Keep/1 56.80,20.40
step
_Oh Novos!_
kill Novos the Summoner##26631
For this achievement, you must not allow any of his undead minions to reach the main area.
Basically, have a DPS camp out at [79.60,46.90] near the top of the steps.
Who ever is designated to do so must pick up the undead as the spawn.
Use AoE to pick them up, because if you miss one you fail the achievement.
achieve 2136/13 |goto Drak'Tharon Keep/1 71.00,47.60
step
_Better Off Dread_
In order to earn this achievement, you must kill 6 raptors whil fighting King Dred.
kill the Raptors before you kill King Dred!_
kill King Dred##27483
achieve 2136/12 |goto Drak'Tharon Keep/1 63.20,87.40
step
_Defenseless_
This achievement requires that you don't let the prison seal be damaged.
In order to do this, you must pick up all adds before they reach the entrance to the instance and kill them.
Failing to pick up an add immidiately will cost the the achievements for this dungeon.
Click here to proceed to the rest of the achievements. |confirm
achieve 2136/14
step
_Dehydration_
For this achievement, you will need to defeat _Ichor Globule_ before the reach the boss.
The Ichor Globule spawn after you destroy the 35 charges of _Protective Bubble_.
There will be 3 phases where this happens.
The easiest way to take care of this is to hit the Activation Crystals found randomly throughout the room.
Activation Crystals can be found at the provided locations below:
[The Violet Hold/1 55.30,79.80]
[The Violet Hold/1 46.90,39.20]
[The Violet Hold/1 30.70,74.70]
kill Ichoron##29313
Click here if this boss wasn't available. |confirm
achieve 2136/16
step
_A Void Dance_
For this achievement, you simply have to defeat _Zuramat the Obliterator_ without defeating the void sentries he summons.
To avoid taking damage from the sentries, simply kite him around the room.
Click here if this boss wasn't available. |confirm
achieve 2136/17
step
_Lockdown!_
This achievement requires that you kill all the bosses inside of Violet Hold.
This will take several runs.
confirm
achieve 1865/1
achieve 1865/2
achieve 1865/3
achieve 1865/4
achieve 1865/5
achieve 1865/6
achieve 2136/15
step
achieve 2136/14
Click here if you did not earn the achievement. |confirm
step
_Snakes, Why'd It Have To Be Snakes?_
For this achievement, you will need to defeat Slad'ran without getting snake wrapped.
Pull the boss himself to the bottom of the stairwell
Have all ranged DPS and the Healer stand at the top of the stairwell.
DPS any snake that comes towards the group. The faster you damage him the more snakes spawn.
kill Slad'ran##29304
achieve 2136/21
step
_Less-rabi_
In order to get this achievmeent, you must defeat Moorabi while preventing him from transforming into a mammoth at any point during the fight.
To do this, you will need dedicated interrupts.
Each time he attempts to cast _Transformation_ unsuccesfully, the cast time required to do it will be shorter.
To avoid having to interrupt a lot, you should have high dps for this fight.
kill Moorabi##29305
achieve 2136/20
step
_What the Eck?_
For this achievement, you must defeat Gal'darah in Heroic difficulty while under the effects of _Eck Residue_
Eck the Ferocious uses an ability called _Eck Spit_ which will give you the debuff.
_You need to be in front of Eck in order to get the debuff!_
kill Eck the Ferocious##29932
confirm
step
_What the Eck?_
Kill Gal'darah while you have the _Eck Spit_ debuff to complete this achievement.
Note that you shouldn't dps the boss too fast or you could miss the achievement.
kill Gal'darah##29306
achieve 2136/18
step
_Share the Love_
For this achievement, you absolutely requires you to have 5 party  memebrs.
To earn it, you will need 5 party members to be impaled during the fight.
This achievement is a bit tricky to earn, as  Moorabi randomly casts the spell on a group member, meaning it can take a while before he gets everyone at least once.
Just slow dps on him until you earn the achievement. This fight is more heal intensive than anything else.
kill Gal'darah##29306
achieve 2136/19
step
_Good Grief_
This achievement requires that you defeat the Maiden of Grief in a minute.
You will need to be on the lookout for _Shock of Sorrow_.
When she begins casting, move into the _Storm of Grief_, which is the big black circle on the ground.
It will cancel the effects of Shock of Sorrow so that you can continue DPSing.
kill Maiden of Grief##27975
achieve 2136/22 |goto Halls of Stone 50.00,86.60
step
_Brann Spankin' New_
In order to earn this achievement, you will need to complete the Brann Bronzebeard event without Brann taking damage.
In order to do this, have the group stand at the entrance to the room.
Simply AoE any mob that spawns at least once to take the attention off of Brann.
achieve 2136/23 |goto Halls of Stone 84.90,76.10
step
_Abuse the Ooze_
For this achievement, you will need to kill 5 Iron Sludges during the fight with Sjonnir the Ironshaper.
In order to start, you will need to DPS him down to 50% of his health.
_You must not take him any lower!_ No dots, no DPS at this point.
If you are able to handle the extra adds, allow more than 2 sludges to converge at the center of the room.
After 2 slimes meet, _Iron Sludge_ will spawn. Kill 5 of them, then defeat Sjonnir for the achievement.
kill Sjonnir the Ironshaper##27978
achieve 2136/24 |goto Halls of Stone 49.80,14.20
step
_Lightning Struck_
Defeat General Bjarngrim while he is under the affects of _Temporary Electrical Charge_.
To do this achievement, you will have to engage him _AFTER_ he stops at one of 3 platforms listed below to gain the _Temporary Electrical Charge_ buff.
Once he does that, you will need to engage him asap.
Kill his guards and them him.
[Halls of Lightning/1 43.20,37.00]
[Halls of Lightning/1 54.40,52.40]
[Halls of Lightning/1 54.50,72.00]
kill General Bjarngrim##28586
achieve 2136/26
step
_Shatter Resistant_
In order to get this achievement, you basically have to defeat Volkhan before he shatters more than 4 Brittle Golems.
This achievement is fairly easy and straight forward, just dps the boss down as fast as you can, ignoring the adds that spawn.
kill Volkhan##28587
achieve 2136/27
step
_Timely Death_
For this achievement, you will n eed to defeat Loken in 2 minutes or less.
This achievement is simple, simply avoid the _Lightning Nova_ that he casts.
kill Loken##28923
achieve 2136/25 |goto Halls of Stone 19.20,52.00
step
_Zombiefest!_
This achievement is tricky to pull off.
There are only 85 to 90 zombies in the first area before entering the building.
In order to have them spawn after _Salramm the Fleshcrafter_, pull away
After killing him, make sure you don't leave the building. Wait for Arthas to come to you. _DO NOT KILL_ any zombies spawning back in the first area.
Proceed through the instance as normal, killing the 3rd boss.
For this achievement, you will need to gather _ALL_ zombies in the first area, along with 20 or more from the area after the 3rd boss.
Once you have them all gathered, kill them as quickly as possible. _You do not have to pull the packs together._
You can track this achievement in game to see how much time you've got left.
achieve 2136/29
step
_The Culling of Time_
This achievement requires that you defeat the _Infinite Corruptor_ in the Culling of Stratholme.
You have to clear all other bosses before you can fight him.
When you start the instance, a timer will start.
When that timer ends, you fail the achievement.
You will need to fight up to the last boss before the timer runs out.
kill Infinite Corruptor##32273
achieve 2136/28
step
_The Incredible Hulk_
For this achievement, you will need to have _Svala Sorrow Grave_ kill a _Scourge Hulk_.
Before engaging Svala, pull a Scourge Hulk, which can be found at this spot or [Utgarde Pinnacle/1 24.00,69.30].
Beat the Hulk down to 10k Health.
Now, engage Svala. If you are soloing, take her to the top of the steps. This will give you time for the Scourge Hulk to walk to you and not know you out of range of the sword while stunned.
If you are in a group, just have the tank pull the abomination to the alter. When the sword lands, it will either kill the Hulk, or massively damage it, leaving a dot that will kill him afterwards.
kill Svala Sorrowgrave##26668, Scourge Hulk##26555
achieve 2136/30 |goto Utgarde Pinnacle/1 35.80,85.60
step
_Lodi Dodi We Loves the Skadi_
This achievement requires that you defeat Skadi the Ruthelss within 3 minutes of starting his gauntlet event.
The event starts as soon as you arrive
Kill all enemies that you have gathered, picking up 3 harpoons.
When the message _Skadi is now in range of the harpoons_ appears, click theharpoon launchers to bring him down.
Dps him as fast as you can and the achievement is yours.
kill Skadi the Ruthless##26693
achieve 2136/31
Following the above directions will net you the _My Girl Loves to Skadi All the Time_ achievement as well, which is to kill Grauf in one passing.
achieve 2136/32
step
_King's Bane_
This can be a difficult achievement to attain.
It requires that you don't trigger _Bane_ during the King Ymiron encounter.
During the fight, you will see Ymiron cast _Bane_.
It is important to _STOP ALL DPS_ when this happens. The buff lasts for 5 seconds.
You can use _Spellsteal_ and Warlock pets can _Devour Magic_ to get rid of it. It can be dispelled.
kill King Ymiron##26861
achieve 2136/33
step
_Experienced Drake Rider_
For this, it will take at least 3 days to complete.
Defeat Eregos using all 3 of the drake mounts provided inside of the instance.
Here is your progress.
achieve 1871/1
achieve 1871/2
achieve 1871/3
achieve 2136/34
confirm
step
_Ruby Void, Emerald Void and Amber Void_
It is possible to earn all 3 of these achievements in one run.
For melee users, it might be a little tougher, but if you run around the top platform, Eregos will eventually drop down to melee range.
Alternatively, you can fly around until he is low enough for you to melee.
achieve 2136/36
achieve 2136/37
achieve 2136/38
step
_Make It Count_
This achievement requires that you defeat Ley-Guardian Eregos within 20 minutes of defeating Drakos the Interrogator.
This will basically mean a speed run for the instance.
achieve 2136/35
step
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Red Proto-Drake##44160
step
learnmount Red Proto-Drake##59961 |use Reins of the Red Proto-Drake##44160
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Rusted Proto-Drake",{
keywords={"rusted","proto-drake","proto","drake","flying","mount"},
mounts={63963},
patch='30100',
mounttype='Flying',
model={28954},
description="This guide will help you acquire the Rusted Proto-Drake mount.",
},[[
step
kill Flame Leviathan##33113
Click here to load the "Orbit-uary" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbit-uary"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Orbit-uary_ achievement |achieve 12401/1 |goto Ulduar/1 49,40
step
kill Ignis the Furnace Master##33118
Click here to load the "Stokin' the Furnace" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Stokin' the Furnace"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Stokin' the Furnace_ achievement |achieve 12401/2 |goto Ulduar/1 37.50,26.50
step
kill Razorscale##33186
Click here to load the "Iron Dwarf, Medium Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Iron Dwarf, Medium Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Iron Dwarf, Medium Rare_ achievement |achieve 12401/3 |goto Ulduar/1 54.10,26.30
step
kill XT-002 Deconstructor##33293
Click here to load the "Heartbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heartbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Heartbreaker_ achievement |achieve 12401/4 |goto Ulduar/1 48.50,13.90
step
Kill the Assembly of Iron
Click here to load the "I Choose You, Steelbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Steelbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Choose You, Steelbreaker_ achievement |achieve 12401/5 |goto Ulduar/2 15,56
step
kill Kologarn##32930
Click here to load the "Disarmed" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Disarmed"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Disarmed_ achievement |achieve 12401/6 |goto Ulduar/2 37.30,14.00
step
kill Auriaya##33515
Click here to load the "Crazy Cat Lady" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Crazy Cat Lady"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Crazy Cat Lady_ achievement |achieve 12401/7 |goto Ulduar/3 52.90,74.15
step
kill Hodir##32845
Click here to load the "I Could Say That This Cache Was Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Could Say That This Cache Was Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Could Say That This Cache Was Rare_ achievement |achieve 12401/8 |goto Ulduar/3 66.00,63.70
step
kill Thorim##32865
Click here to load the "Lose Your Illusion" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lose Your Illusion"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Lose Your Illusion_ achievement |achieve 12401/9 |goto Ulduar/3 70.32,48.82
step
kill Freya##32906
Click here to load the "Knock, Knock, Knock on Wood" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock, Knock, Knock on Wood"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Knock, Knock, Knock on Wood_ achievement |achieve 12401/10 |goto Ulduar/3 53,23
step
kill Mimiron##33350
Click here to load the "Firefighter" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Firefighter"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Firefighter_ achievement |achieve 12401/11 |goto Ulduar/5 43.60,41.10
step
kill General Vezax##33271
Click here to load the "I Love the Smell of Saronite in the Morning" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Love the Smell of Saronite in the Morning"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Love the Smell of Saronite in the Morning_ achievement |achieve 12401/12 |goto Ulduar/4 52.60,57.10
step
kill Yogg-Saron##33288
Click here to load the "One Light in the Darkness" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\One Light in the Darkness"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _One Light in the Darkness_ achievement |achieve 12401/13 |goto Ulduar/4 68,40.80
step
Go to any mail box.
collect Reins of the Rusted Proto-Drake##45802
step
learnmount Rusted Proto-Drake##63963 |use Reins of the Rusted Proto-Drake##45802
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Twilight Harbinger",{
keywords={"twilight","harbinger","flying","mount"},
mounts={107844},
patch='43000',
mounttype='Flying',
model={39562},
description="This guide will help you acquire the Twilight Harbinger mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Dragon Soul Raider"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Twilight Harbinger##77068
step
learnmount Twilight Harbinger##107844 |use Reins of the Twilight Harbinger##77068
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Volcanic Stone Drake",{
keywords={"volcanic","stone","drake","flying","mount"},
mounts={88331},
patch='unknown',
mounttype='Flying',
model={35551},
description="This guide will help you acquire the Volcanic Stone Drake mount.",
},[[
step
In order to earn this achievement, you will need complete 28 parts to the achievement _Glory to the Cataclysm Hero_.
These parts take place in _Heroic Cataclysm Dungeons_, so keep in mind that all parts in this guide will take place in _HEROIC MODE ONLY_.
confirm
step
_Crushing Bones and Cracking Skulls_
kill Rom'ogg Bonecrusher##39665
kill Angered Earth##50376
While fighting _Rom'ogg Bonecrusher_, you will need to look out for an ability called _Quake_.
After he uses _Quake_, he will spawn an _Angered Earth_ per player in the instance.
_Do not kill_ them!
At _66% and 33% Health_, he will use an ability called _Chains of Woe_.
Destroy the chains and leave the radius of the attack, _but keep the angered earth in the affected area_.
You must kill 10 Angered Earth with The Skullcracker.
achieve 4845/2 |goto Blackrock Caverns/1 50.00,70.20
step
_Arrested Development_
kill Corla, Herald of Twilight##39679
Before fighting Corla, clear this entire room of trash. You will be using the space to drag away one Evolved Zealot.
She will have 3 Zealots with her before engaging.
You will still want to block two of the beams hitting the zealots after engaging her.
Once one evolves, drag it to the opposite end of the room, that way it won't have the haste aura that she gives.
Repeat this for the other two, then kill her.
achieve 4845/3 |goto Blackrock Caverns/1 28.60,16.60
step
_Too Hot to Handle_
kill Karsh Steelbender##39698
Save all your damage cooldowns for the last part of the fight.
Do the fight normally until Karsh reaches 200,000 Health.
At this point, _Stop all DPS!_
Have the tank or whoever has aggro drag him through the _Molten Metal_ at the center of the room until he has 15  stacks of _Superheated Quicksilver Armor_.
You will have 17 seconds to kill him after.
achieve 4845/4 |goto Blackrock Caverns/1 46.60,64.80
step
_Ascendant Descending_
kill Ascendant Lord Obsidius##39705
At the start of the fight, he will spawn 3 Shadows.
_All of these shadows need to be kited!_
Being hit by the shadows will give you a stack of _Crepuscular Veil_.
In order to earn this achievement, you will need to defeat Ascendant Lord Obsidius without getting 4 stacks of Crespuscular Veil.
achieve 4845/5 |goto Blackrock Caverns/1 69.60,53.40
step
_Old Faithful_
The easiest way to attain this achievement is to have some form of _Crowd Control_ (Sheep Excluded).
DPS the Naz'tar Tempest Witch down to 50% health, CC it, then have the party stand on top of it.
Once you see the cursor on the ground indicating that a Geyser is about to hit, move and let it kill the mob.
kill Lady Naz'jar##40640
achieve 4845/6
step
_Prince of Tides_
kill Ozumat##44566
15 seconds after the event starts, an _Unyielding Behemoth_ will spawn.
You _MUST NOT_ kill this behemoth, so mark it with whatever you want and let your group know not to kill it.
Otherwise, proceed with the event as normal.
Once you defeat the Faceless Sappers at phase 2, you must kill the Unyielding Behemoth before the boss.
achieve 4845/7 |goto Blackrock Caverns/1 32.60,22.60
step
_Rotten to the Core_
This achievement requires that you kill 60 disciples within a 10 second time frame.
You will need high AoE DPS.
Simply pull them, bunch them together, then blow them up.
achieve 4845/8 |goto The Stonecore 55.60,38.60
step
_No Static at All_
kill Asaad##43875
In order to get this achievement, you must avoid being hit by _Static Cling._
To avoid being hit by this, simply jump right before the cast is finished.
An easy way to check for the boss casting this, set him as your focus and have enemy casting shown on portraits.
He will continue to cast this spell as long as he is alive, so faster dps is best.
achieve 4845/9 |goto The Vortex Pinnacle 29.80,39.60
step
_Extra Credit Bonus Stage_
This achievement requires you to collect 5 _Golden Orbs_ in Vortex Pinnacle.
Check the provided coordinates for orbs:
[The Vortex Pinnacle/1 63.50,35.50]
[The Vortex Pinnacle/1 51.60,47.10]
[The Vortex Pinnacle/1 58.20,70.50]
[The Vortex Pinnacle/1 56.40,70.60]
This is only obtainable through the second boss using the tornados to jump up. [The Vortex Pinnacle/1 50.20,82.90]
This is only obtainable through the second boss using the tornados to jump up. [The Vortex Pinnacle/1 51.10,80.20]
[The Vortex Pinnacle/1 33.20,67.30]
[The Vortex Pinnacle/1 33.20,69.90]
[The Vortex Pinnacle/1 33.50,48.80]
achieve 4845/10
step
_Acrocalypse Now_
kill Augh##49045, Lockmaw##43614
For this achievement, you will likely need heavy  heals.
DPS the enemies slowly, as you will need 5 waves of adds to spawn.
_DO NOT KILL_ any of the crocalisk adds that spawn as it will ruin the achievement.
Once the 5th group has spawned, there will be 20 Frenzied Crocolisks to kill.
Use your AoE to kill them. _Note that you will only have 10 seconds to kill them all!_
achieve 4845/12
step
kill It With Fire!_
kill High Prophet Barim##43612
DPS him down to 50% and enter the shadow zone.
Once there, Soul Fragments will spawn.
Let 3 of them spawn, then drag them through the fires left behind by the Dark Hatchling, turning them into Burning Souls.
Kill the 3 burning souls, then finish the boss off.
achieve 4845/11
step
_Headed South_
kill Siamat##44819
For this achievement, you will need to gather 3 _Servant of Siamat_ as them spawn.
You must not kill them yet.
Continue fighting the boss down to 75% health.
Once at this point, gather your group up, and kill one of the servants.
You will get a buff.
Continue the fight until the buff starts to wear off.
At this point, you will kill both of the other servants, causing the bosses shield to fall off.
You should have 3 stacks of the needed buff, and it will be time to kill the boss.
It will be a DPS race at this point.
achieve 4845/13 |goto The Vortex Pinnacle 40.00,56.00
step
_I Hate That Song_
kill Temple Guardian Anhuur##39425
At 66% and 33% health, he will enter phase 2.
During Phase 2 you have to pull a level that is in the pit on the right and left side of the boss platform.
Have a player drop down on one side to pull aggro of the snakes at the bottom.
Have a second player drop shortly after, pulling the level.
Meanwhile, have the first player run to the other switch, aggroing the snakes over there.
Have another player hit that switch.
Note that it is _EXTREMELY IMPORTANT_ to have a character who can interrupt.
Have that class stay up top with the boss and as soon as the levers are pulled, interrupt his channeling.
You will have to do this twice
achieve 4845/14 |goto Halls of Origination/1 57.60,63.00
step
_Straw That Broke the Camel's Back_
clicknpc Camel##39443
There are more camels around [Halls of Origination/2 34.80,58.80]
For this achievement you simply have to kill the boss while mounted atop a camel.
Avoid spikes that erupt from the ground and you will easily get this achievement.
Earthrager Ptah is located here [Halls of Origination/2 43.60,49.60]
achieve 4845/15 |goto Halls of Origination/2 35.80,38.60
step
_Faster Than the Speed of Light_
[Halls of Origination/1 49.60,32.60]
[Halls of Origination/1 62.60,32.60]
[Halls of Origination/1 62.90,21.50]
[Halls of Origination/1 48.80,21.50]
The above coordinates are to the 4 bosses you need to kill within 5 minutes.
The timer starts as soon as you enter the Vault of Lights.
achieve 4845/17
step
_Sun of a...._
For this achievement, you will need interrupt abilities.
The most useful ones for this fight are _Counterspell, Shield Bash and Spell Lock_, which will lock him out of using focus for 8 seconds each.
The goal is to get him to 50% health with 40 Focus or higher.
If he below 40 focus, reset and try again.
achieve 4845/16
step
_Umbrage for Umbriss_
For this boss, you will want to crowd control the _Malignant Trogg_ that spawns at the start of the fight before it gets near anyone.
Kill the other 3 troggs and proceed with the fight as normal.
Fight Umbriss down to 15% health then stop dps.
Kill the Malignant Trogg, then kill Umbriss. _You will have 20 seconds_.
kill General Umbriss##39625
achieve 4845/18
step
_Ready for Raiding_
During the fight, there will be a "Wheel of Flames" that appears on the ground underneath the boss.
Simply run along with it, or out of range of it.
_DO NOT_ try and jump over it.
kill Glubtok##47162
achieve 4845/19 |goto The Deadmines/1 36.80,61.60
step
_Rat Pack_
kill Helix Gearbreaker##47296
This achievement takes place during stage one of the fight.
_Do not_ kill the Lumbering Oaf yet.
He will use an ability called _Oaf Smash_ on a random player, which will cause 4 _Helix' Crew_ goblins to spawn on top of the log.
Kill the 4 of them, then wait for the Lumbering Oaf to use _Oaf Smash_ again.
Repeat this process 5 times.
achieve 4845/20 |goto The Deadmines/1 50.20,88.40
step
_Prototype Prodigy_
This achievement requires that the prototype provided for the fight barely gets damaged.
Keep the Prototype away from the boss at all costs!
When the first _Molten Slag_ spawns, use this combination to kill it: _1-1-2_
For the rest of the Molten Slag spawns, use a _2-1-1_ rotation.
kill Foe Reaper 5000##43778
achieve 4845/21 |goto The Deadmines/1 9.60,82.00
step
_It's Frost Damage_
For this achievement, you will need to fight Ripsnarl down to 75%,50% or 25%.
At this point, he will enter a phase where _Vapors_ spawn.
Take a sing Vapor away from the group and tank it to the side. _Be sure not to kill it!_
The Goal is to get the vapor to grow and cast _Coalesce_.
Once it starts casting the spell, run into the cabin to avoid any damage from _Coalesce_.
achieve 4845/22 |goto The Deadmines/1 63.60,39.60
step
_I'm on a Diet_
After Ripsnarl is defeated, enter the cabin start to "Captain" Cookie event.
In order to get this achievement, you _must not_ click any food that has a green aura around it.
achieve 4845/23
step
_Vigorous Vancleef Vindicator_
Once the event with Vanessa Vancleef is started, you will be tied up above a lava cauldron.
There will be four valves you have to click before you are released.
At this point, you will have _5 Minutes_ to reach Vanessa Vancleef again.
Follow the path provided. At each point there will be an event where you  have to kill all enemies.
The first coordinate has two events that take place.
Upon reaching Vanessa, you will gain the achievement granted you get there in time.
map The Deadmines/1
path	12.40,72.40	29.30,50.20	41.00,49.00
path	50.40,18.40	51.80,44.40	60.70,42.20
achieve 4845/24
step
_Pardon Denied_
During the fight, Ashbury will cast an ability called _Asphyxiate_.
Immidiately after, he will cast a spell called _Stay of Execution_.
_Stay of Execution MUST_ be interrupted in order to earn this achievement.
kill Baron Ashbury##46962
achieve 4845/25 |goto Shadowfang Keep/1 67.70,72.90
step
_To the Ground!_
kill Commander Springvale##4278
In order to earn this achievement, you must prevent _Wailing Guardsmen_ and _Tormented Officers_ from casting _Unholy Empowerement_ on Springvale.
When you see them casting, interrupt, or you won't get the achievement.
Kill the boss without the adds casting the spell.
achieve 4845/26 |goto Shadowfang Keep/1 28.20,61.30
step
_Bullet Time_
Pull Godfrey to the provided coordinates and have the tank face away from the steps.
Have ranged dps and heals stand at the top of the stairs.
Godfrey will summon a pack of Bloodthirsty Ghouls, then immidiately cast _Pistol Barrage_.
The object of the achievement is to kill 12 Ghouls with the _Pistol Barrage_ ability.
kill Lord Godfrey##46964
achieve 4845/27 |goto Shadowfang Keep/6 73.80,51.30
step
After Erudax uses channel _Shadow Gale_ 2 _Faceless Corruptors_ will spawn at [85.40,59.40]
You will need to kill them as fast as you can.
Once they enter the room and reach the eggs they will start to hatch them, causing you to fail this achievement.
achieve 4845/28 |goto Grim Batol 86.20,82.80
step
achieve 4845
step
Go to any mailbox.
collect Reins of the Volcanic Stone Drake##62900
step
learnmount Volcanic Stone Drake##88331 |use Reins of the Volcanic Stone Drake##62900
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Argent Tournament Mounts\\Argent Hippogryph",{
keywords={"argent","tournament","hippogryph","flying","mount"},
mounts={63844},
patch='30103',
mounttype='Flying',
model={31714},
description="This guide will help you acquire the Argent Hippogryph mount.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
earn 150 Champion's Seal##241
step
talk Corporal Arthur Flew##33307 |goto Icecrown,76.40,19.20 |only Human
talk Rook Hawkfist##33653 |goto Icecrown,76.20,19.20 |only NightElf,Worgen
talk Derrick Brindlebeard##33310 |goto Icecrown,76.40,19.40 |only Dwarf
talk Irisee##33657 |goto Icecrown,76.20,19.20 |only Draenei
talk Rillie Spindlenut##33650 |goto Icecrown,76.40,19.60 |only Gnome
buy 1 Argent Hippogryph##45725
step
learnmount Argent Hippogryph##63844 |use Argent Hippogryph##45725
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Argent Tournament Mounts\\Silver Covenant Hippogryph",{
keywords={"silver","covenant","hippogryph","argent","tournament","flying","mount"},
mounts={66087},
patch='30200',
mounttype='Flying',
model={27561},
description="This guide will help you acquire the Silver Covenant Hippogryph mount.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent_ _Tournament_ _Grounds_ and _The Silver Covenant pre-quests_ and _dailies_.
_Exalted_ with _The Silver Covenant_ |complete rep("The Silver Covenant")>=Exalted
earn 150 Champion's Seal##241 |tip This mount is Alliance-only. You can earn the Sunreaver Dragonhawk for the Horde version.
step
talk Hiren Loresong##34881
buy 1 Silver Covenant Hippogryph##46813 |goto Icecrown,76.20,19.60
step
learnmount Silver Covenant Hippogryph##66087 |use Silver Covenant Hippogryph##46813
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Celestial Steed",{
keywords={"blizzard","store","celestial","steed","flying","mount"},
mounts={75614},
patch='unknown',
mounttype='Flying',
model={31958},
description="This guide will help you acquire the Celestial Steed mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Celestial Steed##54811
step
learnmount Celestial Steed##75614 |use Celestial Steed##54811
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Heart of the Aspects",{
keywords={"blizzard","store","heart","of","the","aspects","flying","mount"},
mounts={110051},
patch='43000',
mounttype='Flying',
model={40029},
description="This guide will help you acquire the Heart of the Aspects mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Heart of the Aspects##78924
step
learnmount Heart of the Aspects##110051 |use Heart of the Aspects##78924
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Iron Skyreaver",{
keywords={"blizzard","store","iron","sky","reaver","flying","mount"},
mounts={153489},
patch='54200',
mounttype='Flying',
model={53038},
description="This guide will help you acquire the Iron Skyreaver mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Iron Skyreaver##107951
step
learnmount Iron Skyreaver##153489 |use Iron Skyreaver##107951
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Swift Windsteed",{
keywords={"blizzard","store","swift","wind","steed","flying","mount"},
mounts={110051},
patch='43000',
mounttype='Flying',
model={46729},
description="This guide will help you acquire the Swift Windsteed mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Swift Windsteed##78924
step
learnmount Swift Windsteed##134573 |use Swift Windsteed##92724
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Winged Guardian",{
keywords={"blizzard","store","winged","guardian","flying","mount"},
mounts={98727},
patch='unknown',
mounttype='Flying',
model={38260},
description="This guide will help you acquire the Winged Guardian mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Winged Guardian##69846
step
learnmount Winged Guardian##98727 |use Winged Guardian##69846
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Phosphorescent Stone Drake",{
keywords={"phosphorescent","stone","drake","aeonaxx","flying","mount"},
mounts={88718},
patch='unknown',
mounttype='Flying',
model={35740},
description="This guide will help you acquire the Phosphorescent Stone Drake mount.",
},[[
step
Follow the Path to Find Aeonaxx at One of the Spawn Points
map Deepholm/0
path	49.12,55.60	50.50,63.50	55.05,54.11
path	53.72,39.71	42.00,43.60	43.00,50.79
kill Aeonaxx##50062
|tip After a few seconds, Aeonaxx's name will turn red and become hostile. You have a limited time to kill him before he overwhelms you. Every few seconds he will spawn young drake adds to attack you, these should be killed.
collect 1 Reins of the Phosphorescent Stone Drake##63042 |or
'|complete hasmount(88718) |or
step
|use Reins of the Phosphorescent Stone Drake##63042
Learn the "Phosphorescent Stone Drake" Mount |learnmount Phosphorescent Stone Drake##88718
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Time-Lost Proto-Drake",{
keywords={"time","lost","proto","drake","flying","mount"},
mounts={60002},
patch='30002',
mounttype='Flying',
model={26711},
description="This guide will help you acquire the Time-Lost Proto-Drake mount.",
},[[
step
map The Storm Peaks
path follow loose;loop;ants straight
path	28.00,38.20	49.80,30.20	45.20,59.60
path	50.40,70.00	40.40,65.20	45.20,83.40
path	38.20,83.80	35.80,65.20	30.00,67.80
path	26.00,61.40
kill Time-Lost Proto Drake##32491
|tip This mob is an extremely rare spawn, so you may be searching for a while.
collect 1 Reins of the Time-Lost Proto-Drake##44168
step
learnmount Time-Lost Proto Drake##60002 |use Reins of the Time-Lost Proto-Drake##44168
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Drake",{
keywords={"blue","drake","cache","of","eregos","flying","mount"},
mounts={59568},
patch='30008',
mounttype='Flying',
model={25256},
description="This guide will help you acquire the Blue Drake mount.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip You must use the LFG tool and complete this on Heroic difficulty.
|tip You will have to fight all bosses up until this point.
click Cache of Eregos##193603
collect Cache of the Ley-Guardian##52676 |goto The Oculus/0 75.30,26.40
Open up the Cache of the Ley-Guardian in your bags |use Cache of the Ley-Guardian##52676
|tip This has a very low chance of dropping the mount. (About 1.40%)
collect 1 Reins of the Blue Drake##43953 |n
learnmount Blue Drake##59568 |use Reins of the Blue Drake##43953 |goto The Oculus/0 75.30,26.40
step
Congratulations!
You have collected the _Blue Drake_ mount
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Proto-Drake",{
keywords={"blue","proto","drake","skadi","the","ruthless","flying","mount"},
mounts={59996},
patch='30002',
mounttype='Flying',
model={28041},
description="This guide will help you acquire the Blue Proto-Drake mount.",
},[[
step
Fly to the Utgarde Pinnacle portal |goto Howling Fjord,57.30,46.60 |n
Enter _Heroic Utgarde Pinnacle_ here |goto Utgarde Pinnacle |noway |c
|tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
kill Skadi the Ruthless##26693
collect 1 Reins of the Blue Protodrake##44151 |n
|tip This has a 1.20% drop rate, do this everyday to have a higher chance of obtaining it!
learnmount Blue Protodrake##59996 |goto Utgarde Pinnacle,68.30,35.50 |use Reins of the Blue Protodrake##44151
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Bronze Drake",{
keywords={"bronze","drake","flying","mount"},
mounts={59569},
patch='30002',
mounttype='Flying',
model={27812},
description="This guide will help you acquire the Bronze Drake mount.",
},[[
step
Enter The Culling of Stratholme Dungeon |goto The Culling of Stratholme/1 87.50,71.30 < 100 |c |or
|tip You must do the Heroic version.
'|complete hasmount(59569) |or
step
kill Infinite Corruptor##32273
|tip You must do the Heroic version.
|tip Use "The Culling of Stratholme" dungeon guide to accomplish this.
Click Here to Open the "The Culling of Stratholme Dungeon" Guide |confirm |loadguide "Dungeon Guides\\Northrend Dungeons\\Caverns of Time: The Culling of Stratholme"
collect 1 Reins of the Bronze Drake##43951 |complete hasmount(59569) |or
'|complete hasmount(59569) |or
step
use the Reins of the Bronze Drake##43951
Learn the "Bronze Drake" Mount |learnmount Bronze Drake##59569
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Drake of the North Wind",{
keywords={"drake","of","the","north","wind","flying","mount"},
mounts={88742},
patch='unknown',
mounttype='Flying',
model={35755},
description="This guide will help you acquire the Drake of the North Wind mount.",
},[[
step
Enter The Vortex Pinnacle Dungeon |goto Uldum/0 76.69,84.33 < 20 |c |or
'|complete hasmount(88742) |or
step
kill Altairus##43873
|tip You can use "The Vortex Pinnacle" Dungeon Guide to accomplish this.
Click Here to Open "The Vortex Pinnacle" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Cataclysm Dungeons\\Vortex Pinnacle"
collect 1 Reins of the Drake of the North Wind##63040 |complete hasmount(88742) |or
'|complete hasmount(88742) |or
step
use the Reins of the Drake of the North Wind##63040
Learn the "Drake of the North Wind" Mount |learnmount Drake of the North Wind##88742
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Vitreous Stone Drake",{
keywords={"vitreous","stone","drake","slabhide","flying","mount"},
mounts={88746},
patch='unknown',
mounttype='Flying',
model={35751},
description="This mount is a very rare drop from Slabhide in The Stonecore dungeon.",
},[[
step
kill Slabhide##43214
|tip Use "The Stonecore" Dungeon Guide to accomplish this.
Click Here to Open the "The Stonecore" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Cataclysm Dungeons\\The Stonecore"
collect 1 Reins of the Vitreous Stone Drake##63043 |or
'|complete hasmount(88746) |or
step
use the Reins of the Vitreous Stone Drake##63043
Learn the "Vitreous Stone Drake" Mount |learnmount Vitreous Stone Drake##88746
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Event Mounts\\Love is in the Air\\X-45 Heartbreaker",{
keywords={"big","love","rocket","love","is","in","the","air","flying","mount"},
mounts={38207},
patch='unknown',
mounttype='unknown',
model={30989},
description="This guide will help you acquire the X-45 Heartbreaker mount.",
},[[
step
Wait for the "Love is in the Air" Event |complete isevent("Love is in the Air")
step
Queue for the Holiday Dungeon "The Crown Chemical Co." Dungeon |goto Shadowfang Keep |noway |c |or
|tip You must be at least level 10 to obtain this mount.
'|complete hasmount(71342) |or
step
kill Apothecary Hummel##36296
collect Heart-Shaped Box##54537 |or
|tip This can only be won once a day.
'|complete hasmount(71342) |or
step
use Heart-Shaped Box##54537
collect X-45 Heartbreaker##50250 |or
'|complete hasmount(71342) |or
step
|use X-45 Heartbreaker##50250
Learn the "X-45 Heartbreaker" Mount |learnmount X-45 Heartbreaker##71342
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Event Mounts\\Hallow's End\\Headless Horseman's Mount",{
condition_suggested=function() return isevent("Hallow's End") end,
keywords={"Flying","Mount","Hallow's","End","Event"},
mounts={48025},
patch='30002',
mounttype='Flying',
model={25159},
description="This mount has a very low chance to drop from the Headless Horseman during the Hallow's End event.",
},[[
step
label "Start"
Wait for the Hallow's End Event to Start |complete isevent("Hallow's End")
|tip Hallow's End runs from October 18th to November 1st.
step
Enter "The Headless Horseman" Dungeon |goto Scarlet Monastery |noway |c
|tip Use the Dungeon Finder tool to queue for "The Headless Horseman."
step
kill Headless Horseman##23682
collect 1 Loot-Filled Pumpkin##117392
|tip This will appear in your bags after killing the Headless Horseman.
|tip It can only be looted once per day.
step
use the Loot-Filled Pumpkin##54516
collect The Horseman's Reins##37012 |next "Mount_Dropped" |or
|tip The mount has a very low chance to drop.
'|complete itemcount(54516) == 0 |next "Mount_Did_Not_Drop" |or
step
label "Mount_Did_Not_Drop"
You can try again tomorrow for another chance
|tip The mount has a very low chance to drop.
Click Here to Start Again |confirm |next "Start"
step
label "Mount_Dropped"
use The Horseman's Reins##37012
learnmount Headless Horseman's Mount##48025
step
_Congratulations!_
You Collected the "Headless Horseman's Mount."
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Event Mounts\\Hallow's End\\Magic Broom",{
description="This mount can be purchased from Dorothy in Elwynn Forest for 150 Tricky Treats.",
condition_suggested=function() return isevent("Hallow's End") end,
keywords={"Flying","Mount","Hallow's","End","Event"},
mounts={47977},
patch='40100',
mounttype='unknown',
model={21939},
},[[
step
Wait for the Hallow's End Event to Start |complete isevent("Hallow's End")
|tip Hallow's End runs from October 18th to November 1st.
step
collect 150 Tricky Treat##33226
|tip These can be obtained from the various candy bucket quests around WoW zones.
|tip Use the "Tricks and Treats" guide to find their locations.
step
talk Dorothy##53728
buy 1 Magic Broom##37011 |goto Elwynn Forest/0 31.81,50.11
step
use the Magic Broom##37011
learnmount Magic Broom##47977
step
_Congratulations!_
You Collected the "Magic Broom" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Obsidian Nightwing",{
keywords={"recruit","a","friend","recruit-a-friend","flying","mount"},
model={42498},
mounts={121820},
patch='43400',
mounttype='Flying',
description="This guide will help you acquire the Obsidian Nightwing mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect 1 Heart of the Nightwing##83086
step
learnmount Obsidian Nightwing##121820 |use Heart of the Nightwing##83086
step
_Congratulations!_
You collected the _Obsidian Nightwing_ mount
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-53 Touring Rocket",{
keywords={"x","53","touring","rocket","recruit","a","friend","recruit-a-friend","flying","mount"},
mounts={75973},
patch='unknown',
mounttype='Flying',
model={31992},
description="This guide will help you acquire the X-53 Touring Rocket mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect X-53 Touring Rocket##54860
step
learnmount X-53 Touring Rocket##75973 |use X-53 Touring Rocket##54860
step
_Congratulations!_
You collected the _X-53 Touring Rocket_ mount
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Swift Zhevra",{
keywords={"swift","zhevra","recruit","a","friend","recruit-a-friend","ground","mount"},
mounts={49322},
patch='20403',
mounttype='Ground',
model={24745},
description="This guide will help you acquire the Swift Zhevra mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzard's Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect Swift Zhevra##37719
step
learnmount Swift Zhevra##49322 |use Swift Zhevra##37719
step
_Congratulations!_
You collected the _Swift Zhevra_ mount
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Emerald Hippogryph",{
keywords={"emerald","hippogryph","recruit","a","friend","recruit-a-friend","flying","mount"},
mounts={149801},
patch='54100',
mounttype='Flying',
model={51993},
description="This guide will help you acquire the Emerald Hippogryph mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzard's Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect Emerald Hippogryph##106246
step
learnmount Emerald Hippogryph##149801 |use Emerald Hippogryph##106246
step
_Congratulations!_
You collected the _Emerald Hippogryph_ mount
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Flying Machine",{
keywords={"engineering","flying","mount"},
mounts={44153},
patch='20300',
mounttype='Flying',
model={22719},
description="This guide will help you acquire the Flying Machine mount.",
},[[
step
Use the _Engineering profession_ section of this guide to _level_ to _300 Engineering_ skill. |only if skill("Engineering")>1 and skill("Engineering")<425
Use the _Engineering profession_ section of this guide to _level_ to _300 Engineering_ skill. |only if skill("Engineering")<1
talk Lilliam Sparkspindle##5518
learn Flying Machine##44155 |goto Stormwind City 62.80,32.00
step
You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
collect 2 Fel Iron Casing##23782
collect 20 Elemental Blasting Powder##23781
collect 20 Handful of Fel Iron Bolts##23783
|next "a" |only if default
Click here to farm these materials. |confirm
step
map Hellfire Peninsula
path	69.30,47.50	74.50,38.70	68.20,37.70
path	62.00,31.00	58.00,32.80	54.00,26.70
path	46.00,29.30	34.10,29.10	32.00,34.50
path	38.50,38.20	35.70,40.70	33.40,49.80
path	30.30,48.60	32.50,43.30	28.50,39.30
path	26.50,45.50	22.60,45.10	18.00,38.30
path	12.50,36.10	17.90,46.30	11.80,41.90
path	12.00,47.00	06.20,49.50	15.40,62.40
path	20.30,52.90	24.00,61.10	21.20,62.70
path	28.10,80.80	27.70,69.50	30.50,72.80
path	30.30,59.90	34.80,66.60	37.70,53.30
path	46.90,46.30	49.30,49.50	60.30,48.60
path	60.80,52.80	52.10,52.70	47.20,57.70
path	45.90,75.50	33.50,89.60	33.10,92.60
path	49.10,77.50	44.60,86.20	55.50,82.80
path	58.70,78.80	56.50,72.30	65.80,63.60
path	67.10,71.70	63.00,73.30	65.80,77.90
path	68.70,77.60	71.00,71.70	70.10,68.60
path	65.00,59.80	65.60,56.00	75.00,63.90
path	78.40,80.20	80.70,77.50	77.30,63.70
path	72.70,60.20	71.50,53.10	68.30,52.00
collect 52 Fel Iron Ore##23424
collect 5 Mote of Fire##22574
collect 10 Mote of Earth##22573
step
label "a"
talk Jessara Cordell##1318
buy 8 Star Wood##11291 |goto Stormwind City 52.80,74.30
step
create Flying Machine##44155,Engineering,1 total
collect 1 Flying Machine##34060
step
learnmount Flying Machine##44153 |use Flying Machine##34060
_Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Turbo-Charged Flying Machine",{
keywords={"turbo","charged","flying","machine","engineering","mount"},
mounts={44151},
patch='20300',
mounttype='Flying',
model={22720},
description="This guide will help you acquire the Turbo-Charged Flying Machine mount.",
},[[
step
Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")>1 and skill("Engineering")<425
Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")<1
talk Lilliam Sparkspindle##5518
learn Turbo-Charged Flying Machine##44157 |goto Stormwind City 62.80,32.00
step
You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
collect 4 Adamantite Frame##23784
collect 8 Khorium Power Core##23786
collect 8 Felsteel Stabilizer##23787
|next "a" |only if default
Click here if you wish to farm this yourself. |confirm
step
map Nagrand
path	72.70,64.70	74.30,60.50	69.10,48.60
path	72.30,43.10	66.10,32.30	57.70,30.80
path	59.50,27.30	49.30,24.10	47.10,20.20
path	39.60,20.40	28.20,12.10	25.70,16.50
path	26.80,23.60	30.90,21.90	27.90,25.30
path	27.50,32.10	23.20,27.80	7.10,39.90
path	25.20,61.10	31.90,81.90	41.80,81.80
path	43.50,73.70	57.40,78.30	43.00,62.20
path	32.20,60.30	29.20,54.10	34.00,52.60
path	29.70,45.70	34.10,44.30	35.50,47.30
path	38.80,36.90	45.50,43.90	42.40,50.90
path	48.00,57.50	51.50,55.60	60.50,56.90
path	56.70,64.00	70.10,83.30	69.80,72.50
collect 32 Adamantite Ore##23425
collect 16 Khorium Ore##23426
collect 80 Mote of Fire##22574
collect 60 Fel Iron Ore##23424
collect 40 Eternium Ore##23427
step
label "a"
talk Griftah##19227
buy 1 Hula Girl Doll##34249 |goto Shattrath City 65.60,68.80
step
create Turbo-Charged Flying Machine##44157,Engineering,1 total
collect 1 Turbo-Charged Flying Machine##34061
step
learnmount Turbo-Charged Flying Machine##44151 |use Turbo-Charged Flying Machine##34061
_Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Tailoring\\Flying Carpet",{
keywords={"tailoring","flying","carpet","mount","flying"},
mounts={61451},
patch='30008',
mounttype='Flying',
model={28060},
description="This guide will help you acquire the Flying Carpet mount.",
},[[
step
Click here to use the _Tailoring profession_ section of this guide to _level_ to _300 Tailoring_ skill. |only if  skill("Tailoring")<300
talk Georgio Bolero##1346
learn Flying Carpet##60969 |goto Stormwind City,53.10,81.30
step
You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
collect 6 Bolt of Netherweave##21840 |next "golden"
Click here to farm this ingredient |confirm |next "farm_netherweave"
step
label "farm_netherweave"
kill Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
collect 30 Netherweave Cloth##21877 |n
create 6 Bolt of Netherweave##21840,Tailoring,6 total |goto Netherstorm,26.30,68.10
step
label "golden"
You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
collect 4 Golden Draenite##23112 |next "arcane"
Click here to farm this ingredient |confirm |next "farm_golden"
step
label "farm_golden"
map Howling Fjord
path 83.00,44.80	78.10,39.40	72.70,38.30
path 71.00,31.80	75.30,22.90	70.20,8.30
path 63.20,13.70
path 61.40,23.60	57.70,18.30	51.40,14.20
path 45.50,13.30	38.10,18.90	31.10,10.90
path 28.90,10.30	21.70,12.80	19.40,23.50
path 24.20,27.40	27.60,22.60	27.30,30.80
path 38.10,29.00	47.60,32.70	53.00,31.90
path 63.50,37.10	65.50,48.70	66.90,62.70
path 64.40,67.80	64.40,72.40	67.90,76.50
path 71.30,73.60	72.50,67.90	77.30,67.20
path 77.20,60.80	74.90,55.30	79.10,50.40
Follow the provided path and gather all materials needed.
collect 4 Golden Draenite##23112
step
label "arcane"
You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
collect 4 Arcane Dust##22445 |goto Stormwind City/0 61.20,70.60 |next "a"
Click here to farm Arcane Dust from dungeons. |confirm |only if skill("Enchanting")>=325
step
Kill any enemy inside of the instance, disenchanting any green  item that they might drop.
Note that armors have a higher chance of yielding _Arcane Dust_
collect 4 Arcane Dust##22445 |goto Utgarde Keep 69.30,73.00
|only if skill("Enchanting")>=325
step
label "a"
talk Alexandra Bolero##1347
buy 5 Heavy Silken Thread##8343 |goto Stormwind City 53.10,81.80
step
create Flying Carpet##60969,Tailoring,1 total
collect 1 Flying Carpet##44554 |n
learnmount Flying Carpet##61451 |use Flying Carpet##44554
_Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Tailoring\\Magnificent Flying Carpet",{
keywords={"tailoring","magnificent","flying","carpet","mount"},
mounts={61309},
patch='30002',
mounttype='Flying',
model={28064},
description="This guide will help you acquire the Magnificent Flying Carpet mount.",
},[[
step
Reach Level 27 |ding 27 |or
|tip Reach Level 27 to be able to learn this mount.
'|complete hasmount(61309) |or
step
Learn Tailoring to Craft and Learn this Mount
talk Charles Worth##28699
|tip This mount can only be crafted and learned with the Tailoring Profession.
Learn the "Tailoring" Profession |goto Dalaran/1 36.14,33.55 |complete hasprof("Tailoring",1,300) |or
'|complete hasmount(61309) |or
step
Level your Northrend Tailoring Profession to Level 50
|tip Use the "Northrend Tailoring 1-75" to accomplish this.
Click Here to Open the "Northrend Tailoring 1-75" Profession Guide |confirm |loadguide "Profession Guides\\Tailoring\\Leveling Guides\\Northrend Tailoring 1-75"
Learn "Northrend Tailoring" Level 50 |complete hasprof("Northrend Tailoring",50,75) |or
'|complete hasmount(61309) |or
step
talk Charles Worth##28699
|tip You must have Northrend Tailoring Level 50 to craft or use this pattern.
learn Magnificent Flying Carpet##60971 |goto Dalaran/1 36.14,33.55 |or
'|complete hasmount(61309) |or
step
Kill Crystalweb Spiders
|tip Inside the cave.
|tip You can also purchase these from the auction house.
collect 4 Iceweb Spider Silk##42253 |goto The Storm Peaks/0 40.40,78.27 |or
'|complete hasmount(61309) |or
step
kill Chosen Zealot##32175+
|tip Inside the building.
|tip You can also purchase these from the auction house.
collect 120 Frostweave Cloth##33470 |goto Icecrown/0 44.37,77.68 |or
'|complete hasmount(61309) |or
step
collect 24 Infinite Dust##34054 |or
|tip You can disenchant Northrend gear and weapons with the Enchanting profession to obtain these, or purchase these from the auction house.
'|complete hasmount(61309) |or
step
collect 4 Monarch Topaz##36930 |or
|tip You can prospect Northrend ores using the Jewelcrafting profession to obtain these, or purchase these from the auction house.
'|complete hasmount(61309) |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 4 Red Dye##2604 |goto Dalaran/1 35.62,34.41 |or
'|complete hasmount(61309) |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 2 Yellow Dye##4341 |goto Dalaran/1 35.62,34.41 |or
'|complete hasmount(61309) |or
step
Create 24 Bolts of Frostweave Cloth
|tip Create these using your Northrend Tailoring Profession.
|tip You can also purchase these from the auction house.
collect 24 Bolt of Frostweave##41510 |or
'|complete hasmount(61309) |or
step
Create 12 Bolts of Imbued Netherweave
|tip You can also purchase these from the auction house.
collect 12 Bolt of Imbued Frosteweave##41511 |or
'|complete hasmount(61309) |or
step
Create Magnificent Flying Carpet |only if hasprof ("Northrend Tailoring",50,75)
collect Magnificent Flying Carpet##44558 |or
'|complete hasmount(61309) |or
step
|use Magnificent Flying Carpet##44558
Learn the "Magnificent Flying Carpet" Mount |learnmount Magnificent Flying Carpet##61309
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Ashes of Al'ar",{
keywords={"mount","ashes","of","al'ar","alar","flying"},
mounts={40192},
patch='20100',
mounttype='Flying',
model={17890},
description="This guide will help you acquire the Ashes of Al'ar mount.",
},[[
step
talk Zidormi##88206
Select _"Show me the Blasted Lands before the invasion."_
Time Travel to Old Blasted Lands |complete ZGV.InPhase("Old Blasted Lands") |goto Blasted Lands/0 48.16,7.28 |or
|tip In the correct time period, The Dark Portal should be green, not red.
|only if not ZGV.InPhase("Old Blasted Lands")
'|complete hasmount(40192) |or
step
Enter the "The Eye" Raid |goto Netherstorm/0 73.64,63.73 < 20 |c |or
'|complete hasmount(40192) |or
step
kill Kael'thas Sunstrider##19622
|tip You can use the "The Eye" Raid Guide to accomplish this.
Click Here to Open the "The Eye" Raid Guide |confirm |loadguide "Dungeon Guides\\Outland Raids\\The Eye"
collect Ashes of Al'ar##32458 |or
|tip It may take several attempts to obtain this.
'|complete hasmount(40192) |or
step
|use Ashes of Al'ar##32458
Learn the "Ashes of Al'ar" Mount |learnmount Ashes of Al'ar##40192
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Azure Drake",{
keywords={"azure","drake","mount","flying"},
mounts={59567},
patch='30002',
mounttype='Flying',
model={24743},
description="This guide will help you acquire the Azure Drake mount.",
},[[
step
Enter "The Eye of Eternity" Raid Portal |goto Borean Tundra/0 27.53,26.74 < 20 |c |or
|tip It's the very top floor portal.
'|complete hasmount(59567) |or
step
kill Malygos##28859
|tip Use "The Eye of Eternity" Raid Guide to accomplish this.
Click Here to Open "The Eye of Eternity" Raid Guide |confirm |loadguide "Dungeon Guides\\Northrend Raids\\The Eye of Eternity"
click Alexstrasza's Gift##193967
collect 1 Reins of the Azure Drake##43952 |or
'|complete hasmount(59567) |or
step
use the Reins of the Azure Drake##43952
Learn the "Azure Drake" Mount |learnmount Azure Drake##59567
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Black Drake",{
keywords={"black","drake","mount","flying"},
mounts={59650},
patch='30002',
mounttype='Flying',
model={25831},
description="This guide will help you acquire the Black Drake mount.",
},[[
step
This mount is dropped by Sartharion in The Obsidian Sanctum 10-Man raid.
kill Sartharion##28860 |n
collect Reins of the Black Drake##43986 |goto The Obsidian Sanctum/0 52.90,48.00
step
learnmount Black Drake##59650 |use Reins of the Black Drake##43986
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Blazing Drake",{
keywords={"blazing","drake","mount","flying"},
mounts={107842},
patch='43000',
mounttype='Flying',
model={39561},
description="This guide will help you acquire the Blazing Drake mount.",
},[[
step
This mount is found in the Elementium Fragment within the Dragon Soul raid. It can drop from both Heroic and Normal difficulties.
kill Deathwing##56173
click Elementium Fragment##210220
collect 1 Reins of the Blazing Drake##77067 |goto Dragon Soul/6 33.50,79.60
|tip This has a very low drop chance.
step
learnmount Blazing Drake##107842 |use Reins of the Blazing Drake##77067
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Experiment 12-B",{
keywords={"experiment","12","b","12-b","flying","mount"},
mounts={110039},
patch='43000',
mounttype='Flying',
model={39229},
description="This guide will help you acquire the Experiment 12-B mount.",
},[[
step
This mount is found in the Lesser Cache of the Aspects within the Dragon Soul raid.
kill Ultraxion##55294
click Lesser Cache of the Aspects##210221
collect 1 Experiment 12-B##78919 |goto Dragon Soul/1 50.10,57.30
|tip This has a very low drop chance.
step
learnmount Experiment 12-B##110039 |use Experiment 12-B##78919
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Invincible",{
keywords={"invincible","lich","king","mount","flying"},
mounts={72286},
patch='30300',
mounttype='Flying',
model={31248},
description="This guide will help you acquire the Invincible mount.",
},[[
step
Enter the "Icecrown Citadel" Raid |goto Icecrown/0 53.79,87.02 < 20 |c |or
|tip Raid difficulty must be set to 25 man Heroic.
'|complete hasmount(72286) |or
step
kill The Lich King##36597
|tip You can use the "Icecrown Citadel" Raid Guide to accomplish this.
Click Here to Open the "Icecrown Citadel" Raid Guide |confirm |loadguide "Dungeon Guides\\Northrend Raids\\Icecrown Citadel"
collect Invincible's Reins##50818 |or
|tip It may take several attempts to obtain this.
'|complete hasmount(72286) |or
step
|use Invincible's Reins##50818
Learn the "Invincible" Mount |learnmount Invincible##72286
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Life-Binder's Handmaiden",{
keywords={"life","binder's","binders","handmaiden","mount","flying"},
mounts={107845},
patch='43000',
mounttype='Flying',
model={39563},
description="This guide will help you acquire the Life-Binder's Handmaiden mount.",
},[[
step
Reach Level 35 |ding 35 |or
|tip This is the minimum level to enter the instance.
|tip If you plan to solo this instance, it is much easier at level 50+.
'|complete hasmount(107845) |or
step
Enter the Dragon Soul Raid
|tip Go down the spiral tunnel and enter the first passageway on the right at the bottom.
|tip Set the Raid Difficulty to Heroic.
|tip Open your map to help you locate the raid.
Enter the Heroic Dragon Soul Raid |goto Tanaris/0 61.84,26.61 < 20 |c |or
'|complete hasmount(107845) |or
step
kill Deathwing
|tip You will have to kill all the other bosses in this raid before you can kill Deathwing.
|tip Use the "Dragon Soul" Guide to accomplish this.
Click Here to Open the "Dragon Soul" Raid Guide |confirm |loadguide "Dungeon Guides\\Cataclysm Raids\\Dragon Soul"
step
click Elementium Fragment##210220
collect Life-Binder's Handmaiden##77069 |or
|tip You may have to complete the raid several times to collect the mount.
|tip This raid can be completed once a week.
'|complete hasmount(107845) |or
step
use Life-Binder's Handmaiden##77069
Learn the "Life-Binder's Handmaiden" Mount |learnmount Life-Binder's Handmaiden##107845
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Mimiron's Head",{
keywords={"mimirons","head","mount","flying"},
mounts={63796},
patch='30100',
mounttype='Flying',
model={28890},
description="This guide will help you acquire the Mimiron's Head mount.",
},[[
step
This mount is dropped by Yogg-Saron in the Ulduar raid. It can also drop from Unclaimed Black Market Containers which can be purchased from the Black Market Auction House in Pandaria.
Click here to kill Yogg-Saron |next "raid" |confirm
Click here to buy Black Market Containers |next "bmc" |confirm
step
label "raid"
This mount is dropped by Yogg-Saron in the Ulduar raid.
kill Yogg-Saron##33288 |n
collect 1 Mimiron's Head##45693 |goto Ulduar/4 68,40.80 |next "end"
|tip This has a very low drop chance.
step
label "bmc"
talk Madam Goya##62943
Buy any Unclaimed Black Market Container(s) you wish.
collect 1 Unclaimed Black Market Container##97565 |goto Dalaran/1 71.25,18.16
step
Open the Black Market Container |use Unclaimed Black Market Container##97565
collect 1 Mimiron's Head##45693 |next "end"
step
label "end"
learnmount Mimiron's Head##63796 |use Mimiron's Head##45693
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Onyxian Drake",{
keywords={"onyxia","onyxian","drake","mount","flying"},
mounts={69395},
patch='30202',
mounttype='Flying',
model={30346},
description="This guide will help you acquire the Onyxian Drake mount.",
},[[
step
This mount is dropped by Onyxia in the Onyxia's Lair raid.
kill Onyxia##10184 |n
collect 1 Reins of the Onyxian Drake##49636 |goto Onyxia's Lair 68.00,31.40
|tip This has a droprate of about 0.30%
step
learnmount Onyxian Drake##69395 |use Reins of the Onyxian Drake##49636
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Pureblood Fire Hawk",{
keywords={"pureblood","pure","blood","fire","hawk","firehawk","mount","flying"},
mounts={97493},
patch='unknown',
mounttype='Flying',
model={38031},
description="This guide will help you acquire the Pureblood Fire Hawk.",
},[[
step
This mount is found in the Cache of the Fire Lord within the Firelands raid.
|tip In order to access the heroic version of this cache, you must have downed all bosses on heroic. Switching between normal and heroic difficulties has been known to cause issues with this boss.
kill Ragnaros##41634
click Cache of the Fire Lord##208967
collect 1 Smoldering Egg of Millagazor##69224 |goto Firelands/2 50.40,15.40
|tip This has a very low drop chance.
step
learnmount Pureblood Fire Hawk##97493 |use Smoldering Egg of Millagazor##69224
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Twilight Drake",{
keywords={"twilight","drake","mount","flying"},
mounts={59571},
patch='30002',
mounttype='Flying',
model={27796},
description="This guide will help you acquire the Twilight Drake mount.",
},[[
step
Enter "The Obsidian Sanctum" Raid |goto Dragonblight/0 60.01,56.89 < 20 |c |or
'|complete hasmount(59571) |or
step
kill Sartharion##28860
|tip Kill him first before killing any of the Twilight Drakes in the raid instance.
|tip When you attack Sartharion, every mob in the instance attacks you.
click the Obsidian Cache
collect Reins of the Twilight Drake##43954 |or
'|complete hasmount(59571) |or
step
|use Reins of the Twilight Drake##43954
Learn the "Twilight Drake" Mount |learnmount Twilight Drake##59571
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Drake of the South Wind",{
keywords={"south","wind","drake","mount","flying"},
mounts={88744},
patch='unknown',
mounttype='Flying',
model={35755},
description="This guide will help you acquire the Drake of the South Wind mount.",
},[[
step
This mount is dropped by Al'Akir in The Throne of the Four Winds on any difficulty.
kill Al'Akir##46753
click Heart of Wind##207894
|tip It's a blue crystal that appears after Al'Akir is killed.
collect Reins of the Drake of the South Wind##63041 |goto Throne of the Four Winds 47.20,44.50
|tip This has a very low drop chance.
step
learnmount Drake of the South Wind##88744 |use Reins of the Drake of the South Wind##63041
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Cenarion War Hippogryph",{
keywords={"cenarion","war","hippogryph","mount","expedition","exalted","flying"},
achieveid={893},
patch='30002',
mounts={43927},
patch='20400',
mounttype='Flying',
model={31542},
description="This guide will help you acquire the Cenarion War Hippogryph mount.",
},[[
step
Reach Exalted Reputation with The Cenarion Expedition |complete rep("Cenarion Expedition") == Exalted |or
|tip Use the "Cenarion Expedition" Reputation Guide to achieve this.
Click Here to Open the "Cenarion Expedition" Reputation Guide |confirm |loadguide "Reputation Guides\\Burning Crusade Reputations\\Cenarion Expedition"
'|complete hasmount(43927) |or
step
talk Fedryen Swiftspear##17904
buy Cenarion War Hippogryph##33999 |goto Zangarmarsh/0 79.25,63.66 |or
'|complete hasmount(43927) |or
step
use Cenarion War Hippogryph##33999
Learn the "Cenarion War Hippogryph" Mount |learnmount Cenarion War Hippogryph##43927
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Dark Phoenix",{
keywords={"dark","phoenix","pheonix","mount","guild","exalted","flying"},
mounts={88990},
patch='unknown',
mounttype='Flying',
model={37145},
description="This guide will help you acquire the Dark Phoenix mount.",
},[[
step
#include "misc_rep_mount",rep="Guild"
Your _guild_ needs to have the achievement _"Guild Glory of the Cataclysm Raider"_ completed
_Guild Glory of the Cataclysm Raider_ |achieve 4988
step
talk Shay Pressler##46602
buy 1 Reins of the Dark Phoenix##63125 |goto Stormwind City,64.60,76.80
step
learnmount Dark Pheonix##88990 |use Reins of the Dark Phoenix##63125
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Drake of the West Wind",{
keywords={"drake","of","the","west","wind","mount","tol","barad","baradin's","baradins","warens","exalted","flying"},
mounts={88741},
patch='unknown',
mounttype='Flying',
model={35754},
description="This guide will help you acquire the Drake of the West Wind mount.",
},[[
step
label "start"
This will require that you be exalted with the Baradin Wardens.
Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
Drake of the West Wind costs 200 Tol Barad Commendations.
_Exalted_ with Baradin's Wardens |complete rep("Baradin's Wardens")==Exalted
Click here to move on to the dailies. |confirm
|next |only if default
|next "exalted" |only if rep("Baradin's Wardens")==Exalted
step
label "dailies"
You will only be able to accept a total of 6 quests in the following guide steps.
Click here to continue |confirm
step
talk Sergeant Gray##48254
accept Bomb's Away!##28275 |goto Tol Barad Peninsula,72.90,60.90
accept Cannonball!##27987 |goto Tol Barad Peninsula,72.90,60.90
accept Ghostbuster##27978 |goto Tol Barad Peninsula,72.90,60.90
accept Taking the Overlook Back##27991 |goto Tol Barad Peninsula,72.90,60.90
accept WANTED: Foreman Wellson##27975 |goto Tol Barad Peninsula,72.90,60.90
accept Watch Out For Splinters!##27973 |goto Tol Barad Peninsula,72.90,60.90
step
talk Commander Marcus Johnson##47240
accept Claiming The Keep##28059 |goto Tol Barad Peninsula 73.40,59.20
accept Leave No Weapon Behind##28063 |goto Tol Barad Peninsula 73.40,59.20
accept Not The Friendliest Town##28130 |goto Tol Barad Peninsula 73.40,59.20
accept Teach A Man To Fish.... Or Steal##28137 |goto Tol Barad Peninsula 73.40,59.20
accept Walk A Mile In Their Shoes##28065 |goto Tol Barad Peninsula 73.40,59.20
step
talk Camp Coordinator Brack##48255
accept A Sticky Task##27948 |goto Tol Barad Peninsula 73.70,57.60
accept Boosting Morale##27972 |goto Tol Barad Peninsula 73.70,57.60
accept Captain P. Harris##27970 |goto Tol Barad Peninsula 73.70,57.60
accept Rattling Their Cages##27971 |goto Tol Barad Peninsula 73.70,57.60
accept Shark Tank##28050 |goto Tol Barad Peninsula 73.70,57.60
accept Thinning the Brood##27944 |goto Tol Barad Peninsula 73.70,57.60
step
talk Lieutenant Farnsworth##48250
accept Finish The Job##28046 |goto Tol Barad Peninsula 74.80,59.60
accept First Lieutenant Connor##27967 |goto Tol Barad Peninsula 74.80,59.60
accept Magnets, How Do They Work?##27992 |goto Tol Barad Peninsula 74.80,59.60
accept Salvaging the Remains##27966 |goto Tol Barad Peninsula 74.80,59.60
accept The Forgotten##27949 |goto Tol Barad Peninsula 74.80,59.60
step
Follow the path up |goto Tol Barad Peninsula 74.30,42.80,0.50 |c
stickystart "largoover"
step
kill Commander Largo##47304 |q 27991/1 |goto Tol Barad Peninsula 78.60,42.00
|tip He's at the top of the tower.
step
label "largoover"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
Slay 14 Largo's Overlook Ghosts |q 27978/1 |goto Tol Barad Peninsula 78.20,49.00
click Cannonball Stack##176215
collect 4 Stack of Cannonballs##62818 |q 27987/1 |goto Tol Barad Peninsula 78.20,49.00
step
click String of Fish##206754
collect 22 Rustberg Seabass##63047 |q 28137/1 |goto Tol Barad Peninsula 69.30,23.10
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28130/1 |goto Tol Barad Peninsula 67.60,37.10
step
kill 12 Darkwood Lurker##46508+ |q 27944/1 |goto Tol Barad Peninsula 54.20,47.00
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 27948/1 |goto Tol Barad Peninsula 54.20,47.00
step
kill Captain P. Harris##47287 |q 27970/1 |goto Tol Barad Peninsula 47.90,8.10
|tip He's walking around on this broken boat.
step
kill Tank##46608 |q 28050/1 |goto Tol Barad Peninsula 49.40,19.80
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
click Barrel of Southsea Rum##206580
collect 6 Barrel of Southsea Rum##62810 |q 27972/1 |goto Tol Barad Peninsula 49.40,19.80
step
kill 8 Shipwrecked Sailor##46605+ |q 27971/1 |goto Tol Barad Peninsula 49.00,29.40
step
kill Keep Lord Farson##47447 |q 28059/1 |goto Tol Barad Peninsula 36.10,27.30
|tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell him you're here to help him escape
Escort the Farson Prisoner |q 28065/1 |goto Tol Barad Peninsula 37.80,29.10
|tip Follow the Farson Hold Prisoner and protect him.
step
click Rack of Rifles##206664
collect 12 Rusty Rifle##62921 |q 28063/1 |goto Tol Barad Peninsula 41.20,35.80
step
kill Foreman Wellson##46648 |q 27975/1 |goto Tol Barad Peninsula 27.20,47.70
step
clicknpc Wellson Cannon##48283
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28275/1 |goto Tol Barad Peninsula 22.20,36.30
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 27973/1 |goto Tol Barad Peninsula 30.10,43.90
step
kill 5 Restless Infantry##46823 |q 28046/1 |goto Tol Barad Peninsula 40.20,57.90
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
click Siege Scrap##206652
collect 7 Siege Engine Scrap##52285 |q 27992/1 |goto Tol Barad Peninsula 40.20,57.90
stickystart "cursedfemur"
step
kill First Lieutenant Connor##46571 |q 27967/1 |goto Tol Barad Peninsula 38.40,77.60
step
label "cursedfemur"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 27966/1 |goto Tol Barad Peninsula 38.10,71.50
click Forgotten Soldier's Tombstone##206570
Release 6 Tortured Souls |q 27949/1 |goto Tol Barad Peninsula 38.10,71.50
step
talk Sergeant Gray##48254
turnin Bomb's Away!##28275 |goto Tol Barad Peninsula 72.90,60.90
turnin Cannonball!##27987 |goto Tol Barad Peninsula 72.90,60.90
turnin Ghostbuster##27978 |goto Tol Barad Peninsula 72.90,60.90
turnin Taking the Overlook Back##27991 |goto Tol Barad Peninsula 72.90,60.90
turnin WANTED: Foreman Wellson##27975 |goto Tol Barad Peninsula 72.90,60.90
turnin Watch Out For Splinters!##27973 |goto Tol Barad Peninsula 72.90,60.90
step
talk Commander Marcus Johnson##47240
turnin Claiming The Keep##28059 |goto Tol Barad Peninsula 73.40,59.20
turnin Leave No Weapon Behind##28063 |goto Tol Barad Peninsula 73.40,59.20
turnin Not The Friendliest Town##28130 |goto Tol Barad Peninsula 73.40,59.20
turnin Teach A Man To Fish.... Or Steal##28137 |goto Tol Barad Peninsula 73.40,59.20
turnin Walk A Mile In Their Shoes##28065 |goto Tol Barad Peninsula 73.40,59.20
step
talk Camp Coordinator Brack##48255
turnin A Sticky Task##27948 |goto Tol Barad Peninsula 73.70,57.60
turnin Boosting Morale##27972 |goto Tol Barad Peninsula 73.70,57.60
turnin Captain P. Harris##27970 |goto Tol Barad Peninsula 73.70,57.60
turnin Rattling Their Cages##27971 |goto Tol Barad Peninsula 73.70,57.60
turnin Shark Tank##28050 |goto Tol Barad Peninsula 73.70,57.60
turnin Thinning the Brood##27944 |goto Tol Barad Peninsula 73.70,57.60
step
talk Lieutenant Farnsworth##48250
turnin Finish The Job##28046 |goto Tol Barad Peninsula 74.80,59.60
turnin First Lieutenant Connor##27967 |goto Tol Barad Peninsula 74.80,59.60
turnin Magnets, How Do They Work?##27992 |goto Tol Barad Peninsula 74.80,59.60
turnin Salvaging the Remains##27966 |goto Tol Barad Peninsula 74.80,59.60
turnin The Forgotten##27949 |goto Tol Barad Peninsula 74.80,59.60
step
The quests below will only be able to be done if your faction currently controls Tol Barad.
Click here to proceed to the dailies. |confirm
step
You will only be able to accept a total of 6 quests in the following guide steps.
Click here to proceed. |confirm
step
talk Sergeant Parker##48066
accept A Huge Problem##28122 |goto Tol Barad,50.90,49.70
accept Swamp Bait##28162 |goto Tol Barad,50.90,49.70
accept The Leftovers##28163 |goto Tol Barad,50.90,49.70
step
talk 2nd Lieutenant Wansworth##48061
accept D-Block##28165 |goto Tol Barad 51.40,49.60
accept Svarnos##28185 |goto Tol Barad 51.40,49.60
accept Cursed Shackles##28186 |goto Tol Barad 51.40,49.60
step
talk Commander Stevens##48039
accept Clearing the Depths##28117 |goto Tol Barad 51.50,49.50
accept Learning From The Past##28120 |goto Tol Barad 51.50,49.50
accept The Imprisoned Archmage##28118 |goto Tol Barad 51.50,49.50
step
talk Marshal Fallows##48074
accept Food From Below##28232 |goto Tol Barad 51.50,49.60
accept Prison Revolt##28188 |goto Tol Barad 51.50,49.60
accept The Warden##28223 |goto Tol Barad 51.50,49.60
stickystart "curshackle"
step
Enter the underground jail |goto Tol Barad 42.70,39.10 < 5 |walk
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28185/1 |goto Tol Barad 48.30,30.70
step
label "curshackle"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
Slay 10 Demons |q 28165/1 |goto Tol Barad 44.40,30.50
click Cursed Shackle##181
collect 8 Cursed Shackles##63149 |q 28186/1 |goto Tol Barad 44.40,30.50
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28162/1 |goto Tol Barad 42.10,41.80
stickystart "cellration"
step
Enter the underground jail |goto Tol Barad 44.00,69.20 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28223/1 |goto Tol Barad 37.50,71.70
step
label "cellration"
kill Imprisoned Worker##47550+, Exiled Mage##47552+
Slay 10 Prisoners |q 28188/1 |goto Tol Barad 40.90,78.20
click Crate of Cellblock Rations##206996
collect 12 Cellblock Ration |q 28232/1 |goto Tol Barad 40.90,78.20
stickystart "dustjour"
step
Enter the underground jail |goto Tol Barad 60.80,50.10 < 5 |walk
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28118/1 |goto Tol Barad 56.80,54.80
step
label "dustjour"
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay 9 Ghosts |q 28117/1 |goto Tol Barad 51.40,49.50
click Dusty Prison Journal##206890
collect 4 Dusty Prison Journal##63034 |q 28120/1 |goto Tol Barad 51.40,49.50
step
kill Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
kill 12 Horde Infantry |q 28163/1 |goto Tol Barad 51.10,29.70
step
kill Problim##47593 |q 28122/1 |goto Tol Barad 52.80,36.70
|tip He patrols around Baradin Hold.  Some searching may be required.
step
talk Sergeant Parker##48066
turnin A Huge Problem##28122 |goto Tol Barad,50.90,49.70
turnin Swamp Bait##28162 |goto Tol Barad,50.90,49.70
turnin The Leftovers##28163 |goto Tol Barad,50.90,49.70
step
talk 2nd Lieutenant Wansworth##48061
turnin D-Block##28165 |goto Tol Barad 51.40,49.60
turnin Svarnos##28185 |goto Tol Barad 51.40,49.60
turnin Cursed Shackles##28186 |goto Tol Barad 51.40,49.60
step
talk Commander Stevens##48039
turnin Clearing the Depths##28117 |goto Tol Barad 51.50,49.50
turnin Learning From The Past##28120 |goto Tol Barad 51.50,49.50
turnin The Imprisoned Archmage##28118 |goto Tol Barad 51.50,49.50
step
talk Marshal Fallows##48074
turnin Food From Below##28232 |goto Tol Barad 51.50,49.60
turnin Prison Revolt##28188 |goto Tol Barad 51.50,49.60
turnin The Warden##28223 |goto Tol Barad 51.50,49.60
step
You have completed all the dailies today.
Click here to return to the start of the guide. |confirm |next "start"
only if rep("Baradin's Wardens")<=Revered
step
label "exalted"
You must earn 200 Commendations to purchase the Drake of the West Wind.
earn 200 Tol Barad Commendation##391
Click here to do more dailies |confirm |next "dailies"
step
talk Quartermaster Brazie##47328
buy 1 Reins of the Drake of the West Wind##63039 |n
_
learnmount Drake of the West Wind##88741 |goto Tol Barad Peninsula,72.60,62.60 |use Reins of the Drake of the West Wind##63039
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Quests & Dailies",{
keywords={"Azure","netherwing","drake","cobalt","violet","purple","veridan","onyx","mount","flying"},
condition_end=function() return hasmount(41514) and hasmount(41515) and hasmount(41513) and hasmount(41516) and hasmount(41517) and hasmount(41518) end,
mounts={41516,41514,41515,41513,41517,41518},
model={21524},
description="This guide will help you acquire the Azure Netherwing Drake, Cobalt Netherwing Drake, Violet Netherwing Drake, Purple Netherwing Drake, Veridan Netherwing Drake, and Onyx Netherwing Drake mounts.",
},[[
step
talk Mordenai##22113
|tip He a blood elf with a bow that walks around here.
|tip He often runs off the path to kill the flayers.
accept Kindness##10804 |goto Shadowmoon Valley/0 61.37,59.09
You can find him somewhere between:
[59.11,58.71]
[63.19,60.34]
step
kill Rocknail enemies around this area
|tip The Rocknail Flayers will drop Rocknail Flayer Carcasses.
|tip The Rocknail Rippers will drop Rocknail Giblets.
|tip When you've collected 5 Rocknail Giblets, right-click them to turn them into a Rocknail Flayer Carcass.
|tip You can only carry 5 Rocknail Giblets at a time.
|tip Do not destroy any excess Rocknail Giblets until you have turned in the quest.
collect 8 Rocknail Flayer Carcass##31372 |q 10804 |goto Shadowmoon Valley/0 61.31,54.79
step
|use Rocknail Flayer Carcass##31372
Feed 8 Netherwing Drakes |q 10804/1 |goto Shadowmoon Valley/0 60.50,57.70
step
talk Mordenai##22113
turnin Kindness##10804 |goto Shadowmoon Valley/0 61.37,59.09
accept Seek Out Neltharaku##10811 |goto Shadowmoon Valley/0 61.37,59.09
You can find him somewhere between:
[59.11,58.71]
[63.19,60.34]
step
talk Neltharaku##21657
|tip He looks like a large, semi-transparent green drake that flies slowly in the air around this area.
turnin Seek Out Neltharaku##10811 |goto Shadowmoon Valley/0 63.19,60.34
accept Neltharaku's Tale##10814 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
talk Neltharaku##21657
Listen to the Tale of Neltharaku |q 10814/1 |goto Shadowmoon Valley/0 63.19,60.34
turnin Neltharaku's Tale##10814 |goto Shadowmoon Valley/0 63.19,60.34
accept Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
kill Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
kill 15 Dragonmaw Orc##22197 |q 10836/1 |goto Shadowmoon Valley/0 67.86,60.92
step
talk Neltharaku##21657
turnin Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley/0 63.19,60.34
accept To Netherwing Ledge!##10837 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
Click the Nethervine Crystals
|tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
collect 12 Nethervine Crystal##31504 |q 10837/1 |goto Shadowmoon Valley/0 64.08,80.64
step
talk Neltharaku##21657
turnin To Netherwing Ledge!##10837 |goto Shadowmoon Valley/0 63.19,60.34
accept The Force of Neltharaku##10854 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
use Enchanted Nethervine Crystal##31652
|tip Use it on the Netherwing Drakes inside the camp.
|tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugators after you free them.
Free Enslaved Netherwing Drakes |q 10854/1 |goto Shadowmoon Valley/0 67.20,60.13
step
talk Neltharaku##21657
turnin The Force of Neltharaku##10854 |goto Shadowmoon Valley/0 63.19,60.34
accept Karynaku##10858 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
talk Karynaku##22112
turnin Karynaku##10858 |goto Shadowmoon Valley/0 69.85,61.43
accept Zuluhed the Whacked##10866 |goto Shadowmoon Valley/0 69.85,61.43
step
kill Zuluhed the Whacked##11980
collect Zuluhed's Key##31664 |q 10866/2 |goto Shadowmoon Valley/0 70.89,61.45
step
Click Zuluhed's Chains
|tip It looks like a big metal ball and chain.
Free Karynaku |q 10866/1 |goto Shadowmoon Valley/0 69.83,61.29
step
talk Karynaku##22112
turnin Zuluhed the Whacked##10866 |goto Shadowmoon Valley/0 69.83,61.29
accept Ally of the Netherwing##10870 |goto Shadowmoon Valley/0 69.83,61.29
|tip She will fly you to Mordenai.
step
talk Mordenai##22113
turnin Ally of the Netherwing##10870 |goto Shadowmoon Valley/0 59.32,58.69
accept Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley/0 59.32,58.69
accept In Service of the Illidari##11013 |goto Shadowmoon Valley/0 59.32,58.69
step
talk Overlord Mor'ghor##23139
turnin In Service of the Illidari##11013 |goto Shadowmoon Valley/0 66.22,85.66
accept Enter the Taskmaster##11014 |goto Shadowmoon Valley/0 66.22,85.66
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Enter the Taskmaster##11014 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Yarzill the Merc##23141
accept Your Friend on the Inside##11019 |goto Shadowmoon Valley/0 66.00,86.46
accept The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley/0 66.00,86.46
step
Click a Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
collect 1 Netherwing Egg##32506 |q 11049/1 |goto Shadowmoon Valley/0 68.50,61.20
step
talk Yarzill the Merc##23141
turnin The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley/0 66.00,86.46
step
label "Daily"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
kill Dragonmaw Transporter##23188+
|tip Kill them when they fly low over these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 71.42,75.16
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 58.88,41.37
You can find more around:
[57.31,51.87]
[47.06,60.63]
[56.41,70.04]
step
use Yarzill's Mutton##32503
|tip Use it next to the working peons.
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 71.98,88.52
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 71.98,88.52
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 71.98,88.52
step
Enter the Mine |goto Shadowmoon Valley/0 65.30,90.03 < 5 |walk
kill Nethermine Flayer##23169+
kill Black Blood of Draenor##23286
kill Nethermine Burster##23285+
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 68.19,83.71
Skin Nethermine Flayers |only if haveq(11016)
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 65.06,82.89 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
Click here tomorrow to go back to the first daily |confirm |next "Daily"
Become Friendly with the Netherwing. |complete rep('Netherwing')>=Friendly |next "F_PreQuest"
step
label "F_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Rise, Overseer!##11053 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Overlord Mor'ghor##23139
turnin Rise, Overseer!##11053 |goto Shadowmoon Valley/0 66.22,85.66
step
talk Taskmaster Varkule Dragonbreath##23140
accept The Netherwing Mines##11075 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Chief Overseer Mudlump##23291
accept Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Mistress of the Mines##23149
turnin The Netherwing Mines##11075 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine
talk Ronag the Slave Driver##23166
accept Crazed and Confused##11083 |goto Shadowmoon Valley/0 71.60,87.60
step
kill 1 Crazed Murkblood Foreman##23305 |q 11083/1 |goto Shadowmoon Valley/0 73.70,88.10
kill 5 Crazed Murkblood Miner##23324 |q 11083/2 |goto Shadowmoon Valley/0 73.70,88.10
step
talk Ronag the Slave Driver##23166
turnin Crazed and Confused##11083 |goto Shadowmoon Valley/0 71.60,87.60
step
kill Black Blood of Draenor##23286+
collect Sludge-covered Object##32724+ |n
Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
collect Murkblood Escape Plans##32726 |n
Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
accept The Great Murkblood Revolt##11081 |goto Shadowmoon Valley/0 64.80,85.60
step
talk Mistress of the Mines##23149
turnin The Great Murkblood Revolt##11081 |goto Shadowmoon Valley/0 65.40,90.20
accept Seeker of Truth##11082 |goto Shadowmoon Valley/0 65.40,90.20
step
Enter the Mine |goto Shadowmoon Valley/0 65.31,90.02 |walk
talk Murkblood Overseer##23309
|tip Inside the mine.
|tip These will spawn and despawn randomly in a few places.
Tell him you are here for him
Gather Murkblood Information |q 11082/1 |goto Shadowmoon Valley/0 68.30,79.45
collect Hand of the Overseer##32734 |q 11082/2
You can find more around:
[69.33,80.47]
[71.09,80.71]
[72.98,82.18]
[73.88,82.69]
step
talk Mistress of the Mines##23149
turnin Seeker of Truth##11082 |goto Shadowmoon Valley/0 65.40,90.20
step
collect 10 Knothide Leather##21887 |q 11054/1
|tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
If you want to get the 10 Knothide Leather by skinning, kill the mobs around Shadowmoon Valley/0 60.40,45.20
step
kill Tyrantus##20931
collect Hardened Hide of Tyrantus##32666 |q 11054/2 |goto Netherstorm/0 46.40,10.80
step
talk Chief Overseer Mudlump##23291
turnin Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley/0 66.80,86.10
step
label "Daily2"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 72.10,75.20
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 60.40,45.20
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 73.60,80.00
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto Shadowmoon Valley/0 73.60,80.00
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 62.60,86.20
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 70.00,91.40
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine to |goto Shadowmoon Valley/0 65.10,87.50 |walk
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto Shadowmoon Valley/0 66.90,84.00
step
kill 15 Nethermine Flayer##23169 |q 11077/1 |goto Shadowmoon Valley/0 71.50,83.90
kill 5 Nethermine Ravager##23326 |q 11077/2 |goto Shadowmoon Valley/0 71.50,83.90
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 71.50,83.90
Skin Nethermine Flayers |only if haveq(11016)
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 65.06,82.89 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
Click here tomorrow to go back to the dailies |confirm |next "Daily2"
Become Honored with the Netherwing. |complete rep('Netherwing')>=Honored |next "H_PreQuest"
step
label "H_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley/0 66.10,86.40
step
talk Overlord Mor'ghor##23139
turnin Stand Tall, Captain!##11084 |goto Shadowmoon Valley/0 66.10,86.40
step
talk Ja'y Nosliw##22433
accept Earning Your Wings...##11063 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Murg "Oldie" Muckjaw##23340
accept Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley/0 65.20,85.70
Follow Murg "Oldie" Muckjaw as he flies
|tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
Defeat Murg "Oldie" Muckjaw |q 11064/1 |goto Shadowmoon Valley/0 65.20,85.70
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Trope the Filth-Belcher##23342
accept Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley/0 65.20,85.50
Follow Trope the Filth-Belcher as he flies
|tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
Defeat Trope the Filth-Belcher |q 11067/1 |goto Shadowmoon Valley/0 65.20,85.50
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Corlok the Vet##23344
accept Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley/0 65.20,85.20
Follow Corlok the Vet as he flies
|tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
Defeat Corlok the Vet |q 11068/1 |goto Shadowmoon Valley/0 65.20,85.20
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Wing Commander Ichman##13437
accept Dragonmaw Race: Wing Commander Ichman##11069 |goto Shadowmoon Valley/0 65.20,85.00
Follow Wing Commander Ichman as he flies
|tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
Defeat Wing Commander Ichman |q 11069/1 |goto Shadowmoon Valley/0 65.20,85.00
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Ichman##11069 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Wing Commander Mulverick##13181
accept Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley/0 65.20,84.90
step
Follow Wing Commander Mulverick as he flies
|tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
Defeat Wing Commander Mulverick |q 11070/1 |goto Shadowmoon Valley/0 65.20,84.90
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Captain Skyshatter##23348
accept Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley/0 65.50,85.30
Follow Captain Skyshatter as he flies
|tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
Defeat Captain Skyshatter |q 11071/1 |goto Shadowmoon Valley/0 65.50,85.30
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley/0 65.90,87.20
step
label "Daily3"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.20,85.70
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 72.10,75.20
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 60.40,45.20
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 73.60,80.00
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto Shadowmoon Valley/0 73.60,80.00
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 62.60,86.20
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 70.00,91.40
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto Shadowmoon Valley/0 66.90,84.00
step
kill 15 Nethermine Flayer##23169 |q 11077/1 |goto Shadowmoon Valley/0 71.50,83.90
kill 5 Nethermine Ravager##23326 |q 11077/2 |goto Shadowmoon Valley/0 71.50,83.90
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 71.50,83.90
Skin Nethermine Flayers |only if haveq(11016)
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 65.06,82.89 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
kill Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
kill 20 Deathshadow Agent##23393 |q 11086/1 |goto Nagrand,12.70,38.90
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.20,85.70
step
Click here tomorrow to go back to the dailies. |confirm |next "Daily3"
Become Revered with the Netherwing. |complete rep('Netherwing')>=Revered |next "R_PreQuest"
step
label "R_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Hail, Commander!##11092 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Overlord Mor'ghor##23139
turnin Hail, Commander!##11092 |goto Shadowmoon Valley/0 66.20,85.70
accept Kill Them All!##11094 |goto Shadowmoon Valley/0 66.20,85.70 |only if rep ('The Scryers') >= Friendly
accept Kill Them All!##11099 |goto Shadowmoon Valley/0 66.20,85.70 |only if rep ('The Aldor') >= Friendly
step
kill Arvoar the Rapacious##23267+
|tip He looks like a big Flayer mob that walks in a circle in this spot.
collect Partially Digested Hand##32621 |n
Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
accept A Job Unfinished...##11041 |goto Shadowmoon Valley/0 74.50,86.30
stickystart "overmineflayer"
step
kill Barash the Den Mother##23269 |q 11041/2 |goto Shadowmoon Valley/0 70.20,84.30
|tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
label "overmineflayer"
kill 10 Overmine Flayer##23264 |q 11041/1 |goto Shadowmoon Valley/0 71.30,85.80
step
talk Overlord Mor'ghor##23139
turnin A Job Unfinished...##11041 |goto Shadowmoon Valley/0 66.20,85.70
step
talk Arcanist Thelis##21955
turnin Kill Them All!##11094 |goto Shadowmoon Valley/0 56.30,59.60
accept Commander Hobb##11095 |goto Shadowmoon Valley/0 56.30,59.60
only if rep ('The Scryers') >= Friendly
step
talk Commander Hobb##23434
turnin Commander Hobb##11095 |goto Shadowmoon Valley/0 56.50,58.70
only if rep ('The Scryers') >= Friendly
step
talk Anchorite Ceyla##21402
turnin Kill Them All!##11099 |goto Shadowmoon Valley/0 62.60,28.40
accept Commander Arcus##11100 |goto Shadowmoon Valley/0 62.60,28.40
only if rep ('The Aldor') >= Friendly
step
talk Commander Arcus##23452
turnin Commander Arcus##11100 |goto Shadowmoon Valley/0 62.40,29.30
only if rep ('The Aldor') >= Friendly
step
label "Daily4"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.20,85.70
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 72.10,75.20
step
talk Commander Hobb##23434
accept The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley/0 56.50,58.70
Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
Protect Commander Hobb, he must survive
Defeat the Dragonmaw Forces |q 11097/1 |goto Shadowmoon Valley/0 56.50,58.70
only if rep ('The Scryers') >= Friendly
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 60.40,45.20
step
talk Commander Arcus##23452
accept The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley/0 62.40,29.30
Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
Protect Commander Arcus, he must survive
Defeat the Dragonmaw Forces |q 11101/1 |goto Shadowmoon Valley/0 62.40,29.30
only if rep ('The Aldor') >= Friendly
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 73.60,80.00
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto Shadowmoon Valley/0 73.60,80.00
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 62.60,86.20
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 70.00,91.40
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto Shadowmoon Valley/0 66.90,84.00
step
kill 15 Nethermine Flayer##23169 |q 11077/1 |goto Shadowmoon Valley/0 71.50,83.90
kill 5 Nethermine Ravager##23326 |q 11077/2 |goto Shadowmoon Valley/0 71.50,83.90
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 71.50,83.90
Skin Nethermine Flayers |only if skill ("Skinning") >= 350
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 71.50,83.90 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350.
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
kill Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
kill 20 Deathshadow Agent##23393 |q 11086/1 |goto Nagrand,12.70,38.90
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.80,86.10
turnin The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley/0 66.80,86.10 |only if rep ('The Scryers') >= Friendly
turnin The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley/0 66.80,86.10 |only if rep ('The Aldor') >= Friendly
step
Click here tomorrow to go back to the dailies |confirm |next "Daily4"
Become Exalted with the Netherwing. |complete rep('Netherwing')==Exalted |next "E_PreQuest"
step
label "E_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Bow to the Highlord##11107 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Overlord Mor'ghor##23139
turnin Bow to the Highlord##11107 |goto Shadowmoon Valley/0 66.20,85.70
accept Lord Illidan Stormrage##11108 |goto Shadowmoon Valley/0 66.20,85.70
Watch the cut scene
You will be taken to Shattrath City |goto Shattrath City/0 65.80,18.60,0.50 |noway |c
step
talk Barthamus##23433
turnin Lord Illidan Stormrage##11108 |goto Shattrath City/0 66.60,16.40
step
Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
accept Voranaku the Violet Netherwing Drake##11113 |goto Shattrath City/0 66.80,17.60 |or
accept Zoya the Veridian Netherwing Drake##11114 |goto Shattrath City/0 66.80,17.60 |or
accept Suraku the Azure Netherwing Drake##11112 |goto Shattrath City/0 66.80,17.60 |or
accept Onyxien the Onyx Netherwing Drake##11111 |goto Shattrath City/0 66.80,17.60 |or
accept Malfas the Purple Netherwing Drake##11110 |goto Shattrath City/0 66.80,17.60 |or
accept Jorus the Cobalt Netherwing Drake##11109 |goto Shattrath City/0 66.80,17.60 |or
step
talk Drake Dealer Hurlunk##23489
buy 1 Reins of the Azure Netherwing Drake##32858 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Cobalt Netherwing Drake##32859 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Violet Netherwing Drake##32862 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Purple Netherwing Drake##32860 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Veridian Netherwing Drake##32861 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Onyx Netherwing Drake##32857 |goto Shadowmoon Valley/0 65.70,86.00
step
use Reins of the Azure Netherwing Drake##32858
use Reins of the Cobalt Netherwing Drake##32859
use Reins of the Violet Netherwing Drake##32862
use Reins of the Purple Netherwing Drake##32860
use Reins of the Veridian Netherwing Drake##32861
use Reins of the Onyx Netherwing Drake##32857
Learn the "Azure Netherwing Drake" Mount |learnmount Azure Netherwing Drake##41514
Learn the "Cobalt Netherwing Drake" Mount |learnmount Cobalt Netherwing Drake##41515
Learn the "Violet Netherwing Drake" Mount |learnmount Violet Drake##41518
Learn the "Purple Netherwing Drake" Mount |learnmount Purple Netherwing Drake##41516
Learn the "Veridian Netherwing Drake" Mount |learnmount Veridian Netherwing Drake##41517
Learn the "Oynx Netherwing Drake" Mount |learnmount Oynx Netherwing Drake##41513
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Netherwing Egg Hunting - Optimized Path",{
keywords={"Azure","netherwing","drake","cobalt","violet","purple","veridan","onyx","mount","flying"},
condition_end=function() return hasmount(41514) and hasmount(41515) and hasmount(41513) and hasmount(41516) and hasmount(41517) and hasmount(41518) end,
mounts={41516,41514,41515,41513,41517,41518},
model={21524},
description="This guide will help you acquire the Azure Netherwing Drake, Cobalt Netherwing Drake, Violet Netherwing Drake, Purple Netherwing Drake, Veridan Netherwing Drake, and Onyx Netherwing Drake mounts.",
},[[
step
label "Begin_Path"
There can be an egg here |goto Shadowmoon Valley,69.40,63.60 < 5 |c
|tip At the top of the stairs inside this tower.
step
There can be an egg here |goto Shadowmoon Valley,70.10,62.00 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.40,60.70 < 5 |c
|tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,70.90,62.60 < 5 |c
|tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.30,62.60 < 5 |c
|tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.40,60.80 < 5 |c
|tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,70.00,60.30 < 5  |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,69.70,58.50 < 5 |c
|tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
There can be an egg here |goto Shadowmoon Valley,68.10,59.70 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,68.30,59.80 < 5 |c
|tip Sitting on the ground in this corner.
step
There can be an egg here |goto Shadowmoon Valley,68.50,61.20 < 5 |c
|tip Sitting on the ground in this stall inside the stable.
step
There can be an egg here |goto Shadowmoon Valley,67.20,61.30 < 5 |c
|tip Sitting in this wooden wagon.
step
There can be an egg here |goto Shadowmoon Valley,67.20,62.30 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,68.90,62.50 < 5 |c
|tip Sitting on the ground inside this half burned down hut.
step
There can be an egg here |goto Shadowmoon Valley,76.00,81.20 < 5 |c
|tip Sitting on the corner edge of this wooden landing dock.
step
There can be an egg here |goto Shadowmoon Valley,75.20,82.30 < 5 |c
|tip Sitting on the ground next to this big bunch of blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,73.70,82.30 < 5 |c
|tip Sitting on top of this small mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,73.00,84.00 < 5 |c
|tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,71.00,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,68.20,81.70 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,66.20,83.80 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.70,84.20 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
There can be an egg here |goto Shadowmoon Valley,63.30,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.40,76.50 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,63.20,75.60 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,62.20,74.20 < 5 |c
|tip Sitting on this small floating rock.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,61.70,73.30 < 5 |c
|tip Sitting on this big floating rock.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,63.00,71.60 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,61.30,70.70 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,60.60,73.40 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,59.30,74.10 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,60.00,76.70 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,59.60,78.30 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,61.20,77.30 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,62.20,77.80 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,63.30,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,63.00,83.70 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,63.50,84.80 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.50,84.90 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
talk Yarzill the Merc##23141
Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506 |goto Shadowmoon Valley 66.00,86.50
step
There can be an egg here |goto Shadowmoon Valley,64.00,86.10 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
There can be an egg here |goto Shadowmoon Valley,62.50,84.90 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,60.20,87.10 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,62.10,89.50 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,64.90,90.80 < 5 |c
|tip Sitting on the ground near this bunch of big blue crystals.
step
Go inside the mine
There can be an egg here |goto Shadowmoon Valley,64.80,87.20 < 5 |c
|tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
Jump down off the mine cart track here |goto Shadowmoon Valley,68.30,84.00 < 5 |c
step
There can be an egg here |goto Shadowmoon Valley,68.80,86.10 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
There can be an egg here |goto Shadowmoon Valley,72.30,87.30 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
There can be an egg here |goto Shadowmoon Valley,69.90,85.80 < 5 |c
|tip Go back to the mine cart track and follow the track on the right side.
step
There can be an egg here |goto Shadowmoon Valley,73.60,85.20 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,73.00,89.30 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,73.60,85.20 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,68.50,81.60 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,64.80,83.00 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.20,84.20 < 5 |c
step
Leave the cave |goto Shadowmoon Valley,65.30,90.20 < 5 |c
|tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
There can be an egg here |goto Shadowmoon Valley,65.50,94.20 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,68.00,94.90 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,69.60,91.80 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,70.90,89.20 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,71.40,86.60 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
There can be an egg here |goto Shadowmoon Valley,72.20,87.10 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,73.40,90.30 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,75.80,91.60 < 5 |c
|tip Sitting on this small floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.60,92.60 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.40,95.70 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.30,85.90 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,76.50,83.30 < 5 |c
|tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
There can be an egg here |goto Shadowmoon Valley,78.90,83.30 < 5 |c
|tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,78.10,81.20 < 5 |c
|tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,78.80,79.60 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
This is the end of the path.
Click here to go back to the beginning of the path. |confirm |next "Begin_Path"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Riding Nether Ray\\Skyguard Faction Dailies with Pre-Quests",{
keywords={"green","red","purple","blue","silver","riding","nether","ray","skyguard","exalted","mount","flying"},
condition_end=function() return hasmount(39803) and hasmount(39798) and hasmount(39801) and hasmount(39800) and hasmount(39802) end,
description="This guide will help you acquire the Green Riding Nether Ray, Red Riding Nether Ray, Blue Riding Nether Ray, Purple Riding Nether Ray, and Silver Riding Nether Ray mounts.",
mounts={39803,39798,39801,39800,39802},
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "menu" |only if completedq(11073)
step
talk Yuula##23449
accept Threat from Above##11096 |goto Shattrath City,64.30,42.30
step
kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.80,16.10
You can find more around here [24.40,8.90]
step
talk Yuula##23449
turnin Threat from Above##11096 |goto Shattrath City,64.30,42.30
accept To Skettis!##11098 |goto Shattrath City,64.30,42.30
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest,64.50,66.70
step
talk Skyguard Handler Deesak##23415
accept Hungry Nether Rays##11093 |goto Terokkar Forest 63.50,65.80
step
talk Severin##23042
accept World of Shadows##11004 |goto Terokkar Forest 64.00,66.90
stickystart "shadowdust"
step
Use your Nether Ray Cage |use Nether Ray Cage##32834
|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
kill Blackwind Warp Chaser##23219+
You can find more Warp Chasers here [64.50,84.40]
Provide Nether Ray Meals |q 11093/1 |goto Terokkar Forest 61.40,81.80
step
label "shadowdust"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 6 Shadow Dust##32388 |q 11004/1 |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here[73.20,87.90]
Here[75.20,81.30]
And here [69.20,74.10]
step
talk Severin##23042
turnin World of Shadows##11004 |goto Terokkar Forest,64.00,66.90
step
talk Skyguard Handler Deesak##23415
turnin Hungry Nether Rays##11093 |goto Terokkar Forest 63.50,65.80
step
talk Sky Commander Adaris##23038
accept Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.10,66.90
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |goto Terokkar Forest 69.70,74.70 |havebuff Elixir of Shadows##37678
step
kill Talonpriest Zellek##23068 |q 11005/3 |goto Terokkar Forest 70.10,74.50
step
kill Talonpriest Ishaal##23066+ |q 11005/1 |goto Terokkar Forest 69.30,78.10
collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
accept Ishaal's Almanac##11021 |goto Terokkar Forest 69.30,78.10
step
kill Talonpriest Skizzik##23067+ |q 11005/2 |goto Terokkar Forest 69.80,81.80
step
talk Sky Commander Adaris##23038
turnin Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.10,66.90
turnin Ishaal's Almanac##11021 |goto Terokkar Forest 64.10,66.90
accept An Ally in Lower City##11024 |goto Terokkar Forest 64.10,66.90
step
talk Rilak the Redeemed##22292
turnin An Ally in Lower City##11024 |goto Shattrath City 52.50,21.00
accept Countdown to Doom##11028 |goto Shattrath City 52.50,21.00
step
talk Nutral##18940
turnin Countdown to Doom##11028 |goto Terokkar Forest,64.10,66.90
step
talk Hazzik##23306
accept Hazzik's Bargain##11056 |goto Terokkar Forest 64.20,66.90
step
click Hazzik's Package##185954
collect Hazzik's Package##32687 |q 11056/1 |goto Terokkar Forest 74.80,80.10
step
talk Hazzik##23306
turnin Hazzik's Bargain##11056 |goto Terokkar Forest 64.30,66.90
accept A Shabby Disguise##11029 |goto Terokkar Forest 64.30,66.90
step
Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
Wear the Shabby Arakkoa Disguise |goto Terokkar Forest 66.20,77.50 |havebuff Shabby Arakkoa Disguise##41181
step
talk Sahaak##23363
buy Adversarial Bloodlines##32742 |q 11029 |goto Terokkar Forest 67.00,79.70
step
talk Hazzik##23306
turnin A Shabby Disguise##11029 |goto Terokkar Forest 64.30,66.90
accept Adversarial Blood##11885 |goto Terokkar Forest 64.30,66.90
step
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388 |q 11885 |goto Terokkar Forest,61.60,75.30 |future
You can find more here [69.50,85.50]
Here[73.20,87.90]
Here[75.20,81.30]
And here [69.20,74.10]
step
talk Severin##23042
accept More Shadow Dust##11006 |goto Terokkar Forest 64.00,66.90
collect 2 Elixir of Shadows##32446+ |q 11885 |goto Terokkar Forest 64.00,66.90 |future
step
This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
confirm always
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |havebuff Elixir of Shadows##37678
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here[73.20,87.90]
Here[75.20,81.30]
And here [69.20,74.10]
step
click Skull Pile##185913 |tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161 |q 11885/1 |goto Terokkar Forest 69.70,74.70
collect Akkarai's Talons##32715 |goto Terokkar Forest 69.70,74.70
kill Karrog##23165 |q 11885/2 |goto Terokkar Forest 69.70,74.70
collect Karrog's Spine##32717 |goto Terokkar Forest 69.70,74.70
kill Gezzarak the Huntress##23163 |q 11885/3 |goto Terokkar Forest 69.70,74.70
collect Gezzarak's Claws##32716 |goto Terokkar Forest 69.70,74.70
kill Vakkiz the Windrager##23204 |q 11885/4 |goto Terokkar Forest 69.70,74.70
collect Vakkiz's Scale##32718 |goto Terokkar Forest 69.70,74.70
You can find more skull piles here: [70.10,79.50]
Here [73.50,80.70]
Here [70.20,83.30]
step
talk Hazzik##23306
turnin Adversarial Blood##11885 |goto Terokkar Forest 64.20,66.90
accept Tokens of the Descendants##11074 |goto Terokkar Forest 64.20,66.90
step
talk Sky Commander Adaris##23038
accept Terokk's Downfall##11073 |goto Terokkar Forest 64.10,66.90
step
click Skull Pile##185913
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838 |goto Terokkar Forest 66.20,77.50
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
confirm always
step
talk Sky Commander Adaris##23038
turnin Terokk's Downfall##11073 |goto Terokkar Forest 64.10,66.90
step
label "menu"
You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
Click here to do the Dailys and then grind |confirm always |next "dailies" |or
or
Click here to grind for reputation |confirm always |next "grind" |or
step
label "dailies"
talk Sky Sergeant Doryn##23048
accept Fires Over Skettis##11008 |goto Terokkar Forest,64.50,66.70
step
Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto Terokkar Forest 63.10,80.00
You can find more eggs here: [61.30,79.90]
Here [67.50,79.30]
Here [68.00,85.60]
And here [70.30,84.50]
step
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.50,66.70
step
talk Skyguard Prisoner##23383
accept Escape from Skettis##11085 |goto Terokkar Forest 61.00,75.60
He can also be found here: [68.40,74.00]
And here: [75.00,86.50]
step
Escort the Skyguard Prisoner to the bottom of the bridge
|tip Help him kill any mobs on the way down.
Rescue the Skyguard Prisoner. |q 11085/1
step
talk Sky Sergeant Doryn##23048
turnin Escape from Skettis##11085 |goto Terokkar Forest 64.50,66.70
step
label "grind"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388 |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here[73.20,87.90]
Here[75.20,81.30]
And here [69.20,74.10]
step
talk Severin##23042
accept More Shadow Dust##11006 |goto Terokkar Forest 64.00,66.90 |n
collect 2 Elixir of Shadows##32446 |goto Terokkar Forest 64.00,66.90
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |havebuff Elixir of Shadows##37678
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here[73.20,87.90]
Here[75.20,81.30]
And here [69.20,74.10]
step
click Skull Pile##185913 |tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161
collect Akkarai's Talons##32715 |goto Terokkar Forest 69.70,74.70
kill Karrog##23165
collect Karrog's Spine##32717 |goto Terokkar Forest 69.70,74.70
kill Gezzarak the Huntress##23163
collect Gezzarak's Claws##32716 |goto Terokkar Forest 69.70,74.70
kill Vakkiz the Windrager##23204
collect Vakkiz's Scale##32718 |goto Terokkar Forest 69.70,74.70
You can find more skull piles here: [70.10,79.50]
Here [73.50,80.70]
Here [70.20,83.30]
step
talk Hazzik##23306
accept Tokens of the Descendants##11074 |goto Terokkar Forest,64.30,66.90 |n
collect Time-Lost Offering##32720 |goto Terokkar Forest,64.30,66.90
step
click Skull Pile##185913
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838 |goto Terokkar Forest 66.20,77.50
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
confirm always
|next "menu" |only if rep("Sha'tari Skyguard")<=Revered
|next |only if rep("Sha'tari Skyguard")==Exalted
step
talk Grella##23367
buy Green Riding Nether Ray##32314 |goto Terokkar Forest 64.30,66.20
buy Red Riding Nether Ray##32317 |goto Terokkar Forest 64.30,66.20
buy Blue Riding Nether Ray##32319 |goto Terokkar Forest 64.30,66.20
buy Purple Riding Nether Ray##32316 |goto Terokkar Forest 64.30,66.20
buy Silver Riding Nether Ray##32318 |goto Terokkar Forest 64.30,66.20
step
learnmount Green Riding Nether Ray##39798 |use Green Riding Nether Ray##32314
learnmount Red Riding Nether Ray##39800 |use Red Riding Nether Ray##32317
learnmount Blue Riding Nether Ray##39803 |use Blue Riding Nether Ray##32319
learnmount Purple Riding Nether Ray##39801 |use Purple Riding Nether Ray##32316
learnmount Silver Riding Nether Ray##39802 |use Silver Riding Nether Ray##32318
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Amani Dragonhawk",{
keywords={"trading","card","game","amani","dragonhawk","mount","flying"},
mounts={96503},
patch='unknown',
mounttype='Flying',
model={37800},
description="This guide will help you acquire the Amani Dragonhawk mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Mottled Drake",{
keywords={"trading","card","game","mottled","drake","mount","flying"},
mounts={93623},
patch='unknown',
mounttype='Flying',
model={37231},
description="This guide will help you acquire the Mottled Drake mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Blazing Hippogryph",{
keywords={"blazing","hippogryph","mount","trading","card","game","flying"},
mounts={74856},
patch='unknown',
mounttype='Flying',
model={31803},
description="This guide will help you acquire the Blazing Hippogryph mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Corrupted Hippogryph",{
keywords={"trading","card","game","corrupted","hippogryph","mount","flying"},
mounts={102514},
patch='43000',
mounttype='Flying',
model={38972},
description="This guide will help you acquire the Corrupted Hippogryph mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\X-51 Nether-Rocket",{
keywords={"x","51","X-51","nether","rocket","nether-rocket","trading","card","game","mount","flying"},
mounts={46197},
patch='20400',
mounttype='Flying',
model={23656},
description="This guide will help you acquire the X-51 Nether-Rocket mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\X-51 Nether-Rocket X-TREME",{
keywords={"x-51","x","51","nether","rocket","nether-rocket","x-treme","treme","trading","card","game","mount","flying"},
mounts={46199},
patch='20400',
mounttype='Flying',
model={23647},
description="This guide will help you acquire the X-51 Nether-Rocket X-TREME mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Feldrake",{
keywords={"Feldrake","trading","card","game","mount","flying"},
mounts={113120},
patch='43200',
mounttype='Flying',
model={40568},
description="This guide will help you acquire the Feldrake mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Black Proto-Drake",{
keywords={"black","proto","drake","proto-drake"},
mounts={59976},
patch='30002',
mounttype='Flying',
model={28040},
description="This mount has been removed from the game.",
},[[
step
The Black Proto-Drake was the reward for completing the achievement "Glory of the Raider (25 Player)"
This mount was retired from service in patch 3.1
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Brutal Nether Drake",{
keywords={"brutal","nether","drake","arena"},
mounts={58615},
patch='30002',
mounttype='Flying',
model={27507},
description="This mount has been removed from the game.",
},[[
step
The Brutal Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 4
This mount was retired from service at the conclusion of Arena Season 4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Cataclysmic Gladiator's Twilight Drake",{
keywords={"cataclysmic","gladiators","gladiator's","twilight","drake","arena"},
mounts={124550},
patch='50400',
mounttype='Flying',
model={38757},
description="This mount has been removed from the game.",
},[[
step
The Cataclysmic Gladiator's Twilight Drake was the reward for top ranking arena teams at the conclusion of Arena Season 11
This mount was retired from service at the conclusion of Arena Season 11
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Deadly Gladiator's Frost Wyrm",{
keywords={"deadly","gladiators","gladiator's","frost","wyrm","arena"},
mounts={64927},
patch='30100',
mounttype='Flying',
model={25511},
description="This mount has been removed from the game.",
},[[
step
The Deadly Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 5
This mount was retired from service at the conclusion of Arena Season 5
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Furious Gladiator's Frost Wyrm",{
keywords={"furious","gladiators","gladiator's","frost","wyrm","arena"},
mounts={65439},
patch='30200',
mounttype='Flying',
model={25593},
description="This mount has been removed from the game.",
},[[
step
The Furious Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 6
This mount was retired from service at the conclusion of Arena Season 6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Merciless Nether Drake",{
keywords={"merciless","nether","drake","arena"},
mounts={44744},
patch='20300',
mounttype='Flying',
model={22620},
description="This mount has been removed from the game.",
},[[
step
The Merciless Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 2
This mount was retired from service at the conclusion of Arena Season 2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Relentless Gladiator's Frost Wyrm",{
keywords={"relentless","gladiators","gladiator's","frost","wyrm","arena"},
mounts={67336},
patch='30200',
mounttype='Flying',
model={29794},
description="This mount has been removed from the game.",
},[[
step
The Relentless Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 7
This mount was retired from service at the conclusion of Arena Season 7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Ruthless Gladiator's Twilight Drake",{
keywords={"ruthless","gladiators","gladiator's","twilight","drake","arena"},
mounts={101821},
patch='43000',
mounttype='Flying',
model={38755},
description="This mount has been removed from the game.",
},[[
step
The Ruthless Gladiator's Twilight Drake was the reward for top ranking arena teams at the conclusion of Arena Season 10
This mount was retired from service at the conclusion of Arena Season 10
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Spectral Gryphon",{
keywords={"spectral","gryphon"},
mounts={107516},
patch='43000',
mounttype='Flying',
model={39546},
description="This mount has been removed from the game.",
},[[
step
The Spectral Gryphon was the Alliance version of the Scroll of Resurrection reward
This mount was retired from service in patch 5.4.7 with the Scroll of Resurrection program
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Swift Nether Drake",{
keywords={"swift","nether","drake","arena"},
mounts={37015},
patch='20100',
mounttype='Flying',
model={20344},
description="This mount has been removed from the game.",
},[[
step
The Swift Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 1
This mount was retired from service at the conclusion of Arena Season 1
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Tyrael's Charger",{
keywords={"tyraels","tyrael's","charger","annual","pass"},
mounts={107203},
patch='43000',
mounttype='Flying',
model={39530},
description="This mount has been removed from the game.",
},[[
step
Tyrael's Charger was a reward for subscribing to Blizzard's Annual Pass promotion.
This mount was retired from service in patch 5.4.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Vengeful Nether Drake",{
keywords={"vengeful","nether","drake","arena"},
mounts={49193},
patch='20403',
mounttype='Flying',
model={24725},
description="This mount has been removed from the game.",
},[[
step
The Vengeful Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 3
This mount was retired from service at the conclusion of Arena Season 3
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Vicious Gladiator's Twilight Drake",{
keywords={"vicious","gladiators","gladiator's","twilight","drake","arena"},
mounts={101282},
patch='42000',
mounttype='Flying',
model={38756},
description="This mount has been removed from the game.",
},[[
step
The Vicious Gladiator's Twilight Drake was the reward for top ranking arena teams at the conclusion of Arena Season 9
This mount was retired from service at the conclusion of Arena Season 9
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Wrathful Gladiator's Frost Wyrm",{
keywords={"wrathful","gladiators","gladiator's","frost","wyrm","arena"},
mounts={71810},
patch='30300',
mounttype='Flying',
model={31047},
description="This mount has been removed from the game.",
},[[
step
The Wrathful Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 8
This mount was retired from service at the conclusion of Arena Season 8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Armored Snowy Gryphon",{
keywords={"armored","snowy","gryphon","mount","flying"},
mounts={61229},
patch='30003',
mounttype='Flying',
model={34889},
description="This guide will help you acquire the Armored Snowy Gryphon mount.",
},[[
step
This _mount_ costs _2,000_ gold.
|tip It could be cheaper based on your reputation with the Kirin Tor.
confirm
step
talk Mei Francis##32216
buy 1 Armored Snowy Gryphon##44689 |goto Dalaran 58.10,42.10
step
learnmount Armored Snowy Gryphon##61229 |use Armored Snowy Gryphon##44689
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Gryphons",{
keywords={"swift","blue","green","purple","red","ebon","golden","snowy","gryphon","mount","flying"},
condition_end=function() return hasmount(32240) and hasmount(32235) and hasmount(32239) and hasmount(32289) and hasmount(32292) and hasmount(32290) and hasmount(32242) end,
model={35521,36787,35534,35548,34878,34879,35358},
description="This guide will help you acquire the Swift Blue Gryphon, Swift Green Gryphon, Swift Purple Gryphon, Swift Red Gryphon, Ebon Gryphon, Snowy Gryphon, and Golden Gryphon mounts.",
},[[
step
talk Tannec Stonebeak##43768
buy 1 Swift Blue Gryphon##25473 |goto Stormwind City,71.40,72.20
buy 1 Swift Green Gryphon##25528 |goto Stormwind City,71.40,72.20
buy 1 Swift Purple Gryphon##25529 |goto Stormwind City,71.40,72.20
buy 1 Swift Red Gryphon##25527 |goto Stormwind City,71.40,72.20
buy 1 Ebon Gryphon##25471 |goto Stormwind City,71.40,72.20
buy 1 Golden Gryphon##25470 |goto Stormwind City,71.40,72.20
buy 1 Snowy Gryphon##25472 |goto Stormwind City,71.40,72.20
step
learnmount Swift Blue Gryphon##32242 |use Swift Blue Gryphon##25473
learnmount Swift Green Gryphon##32290 |use Swift Green Gryphon##25528
learnmount Swift Purple Gryphon##32292 |use Swift Purple Gryphon##25529
learnmount Swift Red Gryphon##32289 |use Swift Red Gryphon##25527
learnmount Ebon Gryphon##32239 |use Ebon Gryphon##25471
learnmount Golden Gryphon##32235 |use Golden Gryphon##25470
learnmount Snowy Gryphon##32240 |use Snowy Gryphon##25472
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Sandstone Drake",{
keywords={"vial","of","the","sands","sandstone","drake","mount","flying"},
mounts={93326},
patch='unknown',
mounttype='Flying',
model={35750},
description="This guide will help you acquire the Sandstone Drake flying mount.",
},[[
step
You will need at least 29,000 gold to obtain this mount
confirm
|next "AlchemistVialoftheSandsLearn" |only if skill("Alchemy")>=525
|next "AHVialoftheSands" |only if skill("Alchemy")<525
step
label "AlchemistVialoftheSandsLearn"
Since you're an Alchemist you can make this item yourself:
Make sure your Archaeology is at least level 450 |only if skill("Archaeology")<450
Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
collect Canopic Jar##64657 |n
Click the Canopic Jars |use Canopic Jar##64657
collect 1 Recipe: Vial of the Sands##67538
Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
only if skill("Alchemy")==525
step
Use your Recipe: Vial of the Sands |use Recipe: Vial of the Sands##67538
learn Vial of the Sands##93328
|next "FarmVialoftheSands" |only if skill("Alchemy")==525
only if skill("Alchemy")==525
step
label "AHVialoftheSands"
talk Auctioneer Fitch##8719
buy 1 Vial of the Sands##65891 |goto Stormwind City,61.10,70.60 |next "learn"
Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label "FarmVialoftheSands"
talk Auctioneer Fitch##8719
buy 12 Truegold##58480 |goto Stormwind City 61.10,70.60
buy 8 Flask of the Winds##58087 |goto Stormwind City 61.10,70.60
buy 8 Flask of Titanic Strength##58088 |goto Stormwind City 61.10,70.60
buy 8 Deepstone Oil##56850 |goto Stormwind City 61.10,70.60
If you don't have enough gold or these items are not on the Auction House you will have to farm for these items.
step
talk Yasmin##49406
buy 8 Sands of Time##65893 |goto Uldum,26.60,7.20
buy 1 Pyrium-Laced Crystalline Vial##65892 |goto Uldum,26.60,7.20
step
create Vial of the Sands##93328,Alchemy,1 total |only if skill("Alchemy")>=525
Find an Alchemist to make your Vial of the Sands
|tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly. |only if default
collect 1 Vial of the Sands##65891
step
label "learn"
learnmount Sandstone Drake##93326 |use Vial of the Sands##65891
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Winged Steed of the Ebon Blade",{
keywords={"death","knight","winged","steed","of","the","ebon","blade","flying","mount"},
mounts={54729},
patch='30001',
mounttype='Flying',
model={28108},
description="This guide will help you acquire the Winged Steed of the Ebon Blade mount.",
},[[
step
_Only Death Knights_ can buy this mount!
It costs about 1000 gold.
confirm
step
talk Dread Commander Thalanor##29587
buy 1 Winged Steed of the Ebon Blade##40775 |goto Eastern Plaguelands 84,49.80
collect 1 Winged Steed of the Ebon Blade##40775 |goto Eastern Plaguelands 84,49.80
step
learnmount Winged Steed of the Ebon Blade##54729 |use Winged Steed of the Ebon Blade##40775
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Sea Turtle",{
keywords={"sea","turtle","aquatic","water","mount"},
mounts={64731},
patch='30100',
mounttype='Aquatic',
model={29161},
description="This guide will help you acquire the Sea Turtle mount.",
},[[
step
Acquiring _this mount requires _ you to have _fishing_
confirm
step
Go to either _Twilight Highlands_, _Uldum_, _Tol Barad Peninsula_, _Howling Fjord_, _Borean Tundra_, _Deepholm_, _Grizzly Hills_, _Mount Hyjal_, _Crystalsong Forest_, _Sholazar Basin_, or _Dragonblight_.
Find _any_ and all _schools of fish_ that you can and _fish_ from them.
|tip The more you fish, the better chances you have of obtaining this mount. It has an average of .01% drop rate, so you're going to be fishing for a while.
collect 1 Sea Turtle##46109
step
learnmount Sea Turtle##64731 |use Sea Turtle##46109
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Subdued Seahorse",{
keywords={"subdued","seahorse","aquatic","water","mount"},
mounts={98718},
patch='unknown',
mounttype='Aquatic',
model={34955},
description="This guide will help you acquire the Subdued Seahorse mount.",
},[[
step
The Following Steps Will Unlock the Portal to Vashj'ir
talk Recruiter Burns##36799
accept Call of Duty##14482 |goto Stormwind City/0 27.36,24.15 |or
'|complete completedq(14482) |or
step
Wait for the Ship at the Docks
Watch the dialogue
|tip It takes about 3 minutes for the dialogue and ship's journey.
Ride the mercenary ship to Vashj'ir |q 14482/1 |goto Stormwind City/0 18.34,25.76 |or
'|complete completedq(14482) |or
step
talk Erunak Stonespeaker##41618
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 38.75,31.70 |or
'|complete completedq(14482) |or
step
_Poseidus_ has a 72-120 hour spawn timer.
|tip This is another extremely rare mount but you can realm hop to other servers to increases your chances of finding him spawned.
|tip This mount is also BOE which means it can be sold on the AH.
|tip It is subject to server restarts, meaning it may spawn right after weekly maintenance.
Search for it at the provided locations below:
[Shimmering Expanse 65.40,41.40]
[Shimmering Expanse 38.80,68.80]
[Shimmering Expanse 58.40,82.20]
[Shimmering Expanse 46.00,50.10]
[Abyssal Depths 40.00,74.20]
kill Poseidus##50005##50005s
collect Reins of Poseidus##67151
step
|use Reins of Poseidus##67151
Learn the "Subdued Seahorse" Mount |learnmount Subdued Seahorse##98718
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Vashj'ir Seahorse",{
keywords={"vashj'ir","seahorse","aquatic","water","mount"},
mounts={75207},
patch='unknown',
mounttype='Aquatic',
model={34956},
description="This guide will help you acquire the Vashj'ir Seahorse mount.",
},[[
step
The Following Steps Will Unlock the Portal to Vashj'ir
talk Recruiter Burns##36799
accept Call of Duty##14482 |goto Stormwind City/0 27.36,24.15 |or
'|complete completedq(14482) |or
step
Wait for the Ship at the Docks
Watch the dialogue
|tip It takes about 3 minutes for the dialogue and ship's journey.
Ride the mercenary ship to Vashj'ir |q 14482/1 |goto Stormwind City/0 18.34,25.76 |or
'|complete completedq(14482) |or
step
talk Erunak Stonespeaker##41618
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 38.75,31.70 |or
'|complete completedq(14482) |or
step
talk Erunak Stonespeaker##36915
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.20,23.40
step
click Saltwater Stars##205989
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto Kelp'thar Forest/0 44.50,25.00
click Conch Shell##202560
collect Conch Shell##52504 |q 24432/2 |goto Kelp'thar Forest/0 44.50,25.00
step
talk Erunak Stonespeaker##36915
turnin Sea Legs##24432 |goto Kelp'thar Forest/0 45.20,23.40
accept Pay It Forward##25281 |goto Kelp'thar Forest/0 45.20,23.40
step
Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##52710
Rescue 6 Drowning Soldiers |q 25281/1 |goto Kelp'thar Forest/0 44.30,27.60
step
talk Erunak Stonespeaker##36915
turnin Pay It Forward##25281 |goto Kelp'thar Forest/0 45.20,23.40
accept Rest For the Weary##25405 |goto Kelp'thar Forest/0 45.20,23.40
step
talk Erunak Stonespeaker##36915
home The Briny Cutter |goto Kelp'thar Forest/0 45.20,23.40
step
talk Captain Taylor##39887
turnin Rest For the Weary##25405 |goto Kelp'thar Forest/0 44.70,22.60
accept Buy Us Some Time##25357 |goto Kelp'thar Forest/0 44.70,22.60
accept Traveling on Our Stomachs##25546 |goto Kelp'thar Forest/0 44.70,22.60
stickystart "zinraid"
step
kill Splitclaw Skitterer##40685+
collect 10 Succulent Crab Meat##54845 |q 25546/1 |goto Kelp'thar Forest/0 43.70,25.60
step
label "zinraid"
kill 8 Zin'jatar Raider##39313+ |q 25357/1 |goto Kelp'thar Forest/0 48.70,27.40
step
talk Captain Taylor##39887
turnin Buy Us Some Time##25357 |goto Kelp'thar Forest/0 44.70,22.60
turnin Traveling on Our Stomachs##25546 |goto Kelp'thar Forest/0 44.70,22.60
accept To Arms!##25545 |goto Kelp'thar Forest/0 44.70,22.60
accept Stormwind Elite Aquatic and Land Forces##25564 |goto Kelp'thar Forest/0 44.70,22.60
step
kill Slitherfin Eel##40855
accept Once More, With Eeling##27729 |goto Kelp'thar Forest/0 49.10,21.40
|tip This quest will automatically be accepted after you kill an eel.
step
click Stormwind Breastplates##203016
collect 5 Stormwind Breastplate##54843 |q 25545/1 |goto Kelp'thar Forest/0 48.00,20.90
click Stormwind Helm##203015
collect 5 Stormwind Helm##117406 |q 25545/2 |goto Kelp'thar Forest/0 48.00,20.90
click Stormwind Spear##203014
collect 5 Stormwind Spear##54958 |q 25545/3 |goto Kelp'thar Forest/0 48.00,20.90
kill Gilblin Scavenger##40811+
collect 5 Stormwind Shield##117413 |q 25545/4 |goto Kelp'thar Forest/0 48.00,20.90
click the Stormwind S.E.A.L. Equipment##9280
collect 6 Stormwind S.E.A.L. Equipment##54957 |q 25564/1 |goto Kelp'thar Forest/0 48.00,20.90
kill Slitherfin Eel##40855+
Justifiably Slay 8 Disgusting Eels |q 27729/1 |goto Kelp'thar Forest/0 48.00,20.90
step
Click the Quest Completion box that pops up
turnin Once More, With Eeling##27729
step
talk Captain Taylor##39887
turnin To Arms!##25545 |goto Kelp'thar Forest/0 44.70,22.60
turnin Stormwind Elite Aquatic and Land Forces##25564 |goto Kelp'thar Forest/0 44.70,22.60
accept On Our Own Terms##25547 |goto Kelp'thar Forest/0 44.70,22.60
step
talk Captain Taylor##40690
turnin On Our Own Terms##25547 |goto Kelp'thar Forest/0 45.00,23.50
accept All or Nothing##25558 |goto Kelp'thar Forest/0 45.00,23.50
step
Follow the troops out and help them defend the Briny Cutter from the waves of nagas
Swim over to [46.40,46.50] after you get kidnapped
Defense of The Briny Gutter Complete |q 25558/1 |goto Kelp'thar Forest/0 44.40,24.60
step
talk Erunak Stonespeaker##40105
turnin All or Nothing##25558 |goto Kelp'thar Forest/0 46.30,46.90
step
talk Moanah Stormhoof##41248
accept Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.00,46.90
step
Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462
Start swimming back to Moanah Stormhoof at [46.00,46.90]
Mount the Sea Turtle |q 25477/1 |goto Kelp'thar Forest/0 54.20,53.00
step
talk Moanah Stormhoof##41248
turnin Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.00,46.90
accept The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.00,46.90
step
click Braided Rope##202766
Tie your lure off and let it loose
Tie off the Seahorse lure |q 25371/1 |goto Kelp'thar Forest/0 45.40,46.60
clicknpc Abyssal Seahorse##39629 |invehicle
step
Use the abilities on your action bar and follow the on screen instructions to hold onto the seahorse
Subdue an Vashj'ir Seahorse |q 25371/2
step
talk Moanah Stormhoof##41248
turnin The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.00,46.90
collect 1 Vashj'ir Seahorse##54465 |goto Kelp'thar Forest/0 46.00,46.90
step
|use Vashj'ir Seahorse##54465
Learn the "Vashj'ir Seahorse" Mount |learnmount Vashj'ir Seahorse##75207
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title Guide\\Draenei Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Draenei.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Draenei.
step
talk Colosos##33593
accept Valiant Of The Exodar##13705 |goto Icecrown,76.10,19.10
turnin Valiant Of The Exodar##13705 |goto Icecrown,76.10,19.10
accept The Valiant's Charge##13716 |goto Icecrown,76.10,19.10
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13752 |goto Icecrown 76.10,19.10 |or
accept A Worthy Weapon##13753 |goto Icecrown 76.10,19.10 |or
accept The Edge Of Winter##13754 |goto Icecrown 76.10,19.10 |or
step
talk Saandos##33655
accept A Valiant's Field Training##13755 |goto Icecrown 76.10,19.20
step
talk Ranii##33656
accept The Grand Melee##13756 |goto Icecrown 76.20,19.10
accept At The Enemy's Gates##13854 |goto Icecrown 76.20,19.10
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13752/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13753 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13753/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13754 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord,42.20,19.70
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13854 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman##33438 |q 13854/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13854/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13854/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13755/1 |goto Icecrown 44.30,54.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13756 |goto Icecrown 76.40,20.50
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13756/1 |goto Icecrown 75.30,18.50
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13752 |goto Icecrown 76.10,19.10
turnin A Worthy Weapon##13753 |goto Icecrown 76.10,19.10
turnin The Edge Of Winter##13754 |goto Icecrown 76.10,19.10
step
talk Saandos##33655
turnin A Valiant's Field Training##13755 |goto Icecrown 76.10,19.20
step
talk Ranii##33656
turnin The Grand Melee##13756 |goto Icecrown 76.20,19.10
turnin At The Enemy's Gates##13854 |goto Icecrown 76.20,19.10
step
Make sure you have 25 Valiant Seals:
Get 25 Valiant's Seal |q 13716/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Colosos##33593
turnin The Valiant's Charge##13716 |goto Icecrown 76.10,19.20
accept The Valiant's Challenge##13724 |goto Icecrown 76.10,19.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13724 |goto Icecrown 71.70,22.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13724/1 |goto Icecrown 68.60,21.00
step
talk Colosos##33593
turnin The Valiant's Challenge##13724 |goto Icecrown 76.10,19.20
step
Congratulations, you are now a Champion of The Exodar!
|tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title Guide\\Dwarf Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Dwarf.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction. Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Dwarf.
step
talk Lana Stouthammer##33312
accept Valiant Of Ironforge##13703 |goto Icecrown 76.30,19.00
turnin Valiant Of Ironforge##13703 |goto Icecrown 76.30,19.00
accept The Valiant's Charge##13714 |goto Icecrown 76.30,19.00
step
talk Lana Stouthammer##33312
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day.
accept A Blade Fit For A Champion##13741 |goto Icecrown 76.60,19.50 |or
accept A Worthy Weapon##13742 |goto Icecrown 76.60,19.50 |or
accept The Edge Of Winter##13743 |goto Icecrown 76.60,19.50 |or
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto Icecrown 76.70,19.40
step
talk Clara Tumblebrew##33309
accept The Grand Melee##13745 |goto Icecrown 76.60,19.60
accept At The Enemy's Gates##13851 |goto Icecrown 76.60,19.60
step
Equip the Alliance Lance |use Alliance Lance##46069
clicknpc Stabled Ironforge Ram##33795
Mount the Stabled Ironforge Ram |invehicle |q 13745 |goto Icecrown 76.30,20.50
step
Talk to the riders on mounts of other Alliance races
Select _"I am ready to fight!"_
Fight and defeat them
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto Icecrown 75.30,18.50
step
kill 10 Converted Hero##32255+ |q 13744/1 |goto Icecrown 44.30,54.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto Icecrown 48.90,71.40
step
kill 15 Boneguard Footman##33438+ |q 13851/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout## |q 13851/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant## |q 13851/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them. Also, keep your shield maxed at 3 by using your Defend ability. If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your bar to leave the horse |outvehicle |q 13851 |goto Icecrown 49.10,71.40
step
clicknpc Lake Frog##33224
Use the emote /kiss on the Lake Frogs |script DoEmote("KISS")
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills 61.20,50.30
step
click Winter Hyacinth##194213
collect 4 Winter Hyacinth##45000 |q 13742 |goto Icecrown 69.10,76.20
step
Use Winter Hyacinths in the water |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
click Blade of Drak'Mar##194238
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight 93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest 54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord 42.20,19.70
step
talk Lana Stouthammer##33312
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day.
turnin A Blade Fit For A Champion##13741 |goto Icecrown 76.60,19.50
turnin A Worthy Weapon##13742 |goto Icecrown 76.60,19.50
turnin The Edge Of Winter##13743 |goto Icecrown 76.60,19.50
step
talk Rollo Sureshot##33315
turnin A Valiant's Field Training##13744 |goto Icecrown 76.70,19.40
step
talk Clara Tumblebrew##33309
turnin The Grand Melee##13745 |goto Icecrown 76.60,19.60
turnin At The Enemy's Gates##13851 |goto Icecrown 76.60,19.60
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13717/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13714 |goto Icecrown 76.30,19.10
accept The Valiant's Challenge##13713 |goto Icecrown 76.30,19.10
step
Equip the Alliance Lance |use Alliance Lance##46069
clicknpc Stabled Ironforge Ram##33795
Mount the Stabled Ironforge Ram |invehicle |q 13713 |goto Icecrown 76.30,20.50
step
talk Squire Danny##33518
Select _"I am ready to fight!"_
Use the abilities on your hotbar to defeat the Argent Champion
Defeat the Argent Valiant |q 13713/1 |goto Icecrown 68.60,21.00
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13713 |goto Icecrown 76.30,19.10
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title Guide\\Gnome Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Gnome.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction. Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Gnome.
step
talk Ambrose Boltspark##33335
accept Valiant Of Gnomeregan##13704 |goto Icecrown 76.50,19.80
turnin Valiant Of Gnomeregan##13704 |goto Icecrown 76.50,19.80
accept The Valiant's Charge##13715 |goto Icecrown 76.50,19.80
step
talk Ambrose Boltspark##33335
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day.
accept A Blade Fit For A Champion##13746 |goto Icecrown 76.50,19.80 |or
accept A Worthy Weapon##13747 |goto Icecrown 76.50,19.80 |or
accept The Edge Of Winter##13748 |goto Icecrown 76.50,19.80 |or
step
talk Tickin Gearspanner##33648
accept A Valiant's Field Training##13749 |goto Icecrown 76.60,19.80
step
talk Flickin Gearspanner##33649
accept The Grand Melee##13750 |goto Icecrown 76.50,19.90
accept At The Enemy's Gates##13852 |goto Icecrown 76.50,19.90
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
clicknpc Lake Frog##33224
Use the emote /kiss on the Lake Frogs |script DoEmote("KISS")
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills 61.20,50.30
step
click Winter Hyacinth##194213
collect 4 Winter Hyacinth##45000 |q 13747 |goto Icecrown 69.10,76.20
step
Use Winter Hyacinths in the water |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
click Blade of Drak'Mar##194238
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight 93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest 54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13748/1 |goto Howling Fjord 42.20,19.70
step
Equip the Alliance Lance |use Alliance Lance##46069
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |q 13852 |goto Icecrown 48.90,71.40
step
kill 15 Boneguard Footman##33438+ |q 13852/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550+ |q 13852/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429+ |q 13852/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them. Also, keep your shield maxed at 3 by using your Defend ability. If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle bar to leave the horse |outvehicle |q 13852 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255+ |q 13749/1 |goto Icecrown 44.30,54.20
step
Equip the Alliance Lance |use Alliance Lance##46069
clicknpc Stabled Gnomeregan Mechanostrider##33793
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto Icecrown 76.20,20.50
step
Talk to the riders on mounts of other Alliance races:
Select _"I am ready to fight!"_
Fight and defeat them
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto Icecrown 75.30,18.50
step
talk Ambrose Boltspark##33335
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day.
turnin A Blade Fit For A Champion##13746 |goto Icecrown 76.50,19.80
turnin A Worthy Weapon##13747 |goto Icecrown 76.50,19.80
turnin The Edge Of Winter##13748 |goto Icecrown 76.50,19.80
step
talk Tickin Gearspanner##33648
turnin A Valiant's Field Training##13749 |goto Icecrown 76.60,19.80
step
talk Flickin Gearspanner##33649
turnin The Grand Melee##13750 |goto Icecrown 76.50,19.90
turnin At The Enemy's Gates##13852 |goto Icecrown 76.50,19.90
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13715/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Ambrose Boltspark##33335
turnin The Valiant's Charge##13715 |goto Icecrown 76.50,19.80
accept The Valiant's Challenge##13723 |goto Icecrown 76.50,19.80
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
clicknpc Stabled Gnomeregan Mechanostrider##33793
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto Icecrown 71.90,22.50
step
talk Squire Danny##33518
Select _"I am ready to fight!"_
Use the abilities on your hotbar to defeat the Argent Champion
Defeat the Argent Valiant |q 13723/1 |goto Icecrown 68.60,21.00
step
talk Ambrose Boltspark##33335
turnin The Valiant's Challenge##13723 |goto Icecrown 76.50,19.80
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title Guide\\Human Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Human.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Human.
step
talk Marshal Jacob Alerius##33225
accept Valiant Of Stormwind##13593 |goto Icecrown,76.60,19.10
turnin Valiant Of Stormwind##13593 |goto Icecrown,76.60,19.10
accept The Valiant's Charge##13718 |goto Icecrown,76.60,19.10
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13603 |goto Icecrown,76.60,19.10 |or
accept A Worthy Weapon##13600 |goto Icecrown,76.60,19.10 |or
accept The Edge Of Winter##13616 |goto Icecrown,76.60,19.10 |or
step
talk Sir Marcus Barlowe##33222
accept A Valiant's Field Training##13592 |goto Icecrown 76.50,19.10
step
talk Captain Joseph Holley##33223
accept The Grand Melee##13665 |goto Icecrown 76.60,19.20
accept At The Enemy's Gates##13847 |goto Icecrown 76.60,19.20
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13600 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13616/1 |goto Howling Fjord,42.20,19.70
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13847 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman##33438 |q 13847/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13847/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13847/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13592/1 |goto Icecrown 44.30,54.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13665 |goto Icecrown 76.10,20.50
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13665/1 |goto Icecrown 75.30,18.50
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13603 |goto Icecrown 76.60,19.10
turnin A Worthy Weapon##13600 |goto Icecrown 76.60,19.10
turnin The Edge Of Winter##13616 |goto Icecrown 76.60,19.10
step
talk Sir Marcus Barlowe##33222
turnin A Valiant's Field Training##13592 |goto Icecrown 76.50,19.10
step
talk Captain Joseph Holley##33223
turnin The Grand Melee##13665 |goto Icecrown 76.60,19.20
turnin At The Enemy's Gates##13847 |goto Icecrown 76.60,19.20
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13718/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Charge##13718 |goto Icecrown 76.60,19.20
accept The Valiant's Challenge##13699 |goto Icecrown 76.60,19.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13699 |goto Icecrown 76.00,20.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13699/1 |goto Icecrown 68.60,21.00
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Challenge##13699 |goto Icecrown 76.60,19.20
step
Congratulations, you are now a Champion of Stormwind!
|tip This is the end of the Human Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title Guide\\Night Elf Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are a Night Elf.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Night Elf.
step
talk Jaelyne Evensong##33592
accept Valiant Of Darnassus##13706 |goto Icecrown,76.30,19.00
turnin Valiant Of Darnassus##13706 |goto Icecrown,76.30,19.00
accept The Valiant's Charge##13717 |goto Icecrown,76.30,19.00
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13757 |goto Icecrown,76.30,19.00 |or
accept A Worthy Weapon##13758 |goto Icecrown,76.30,19.00 |or
accept The Edge Of Winter##13759 |goto Icecrown,76.30,19.00 |or
step
talk Illestria Bladesinger##33652
accept A Valiant's Field Training##13760 |goto Icecrown 76.30,19.00
step
talk Airae Starseeker##33654
accept The Grand Melee##13761 |goto Icecrown 76.40,19.00
accept At The Enemy's Gates##13855 |goto Icecrown 76.40,19.00
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13757/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13758 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13758/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13759 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13759/1 |goto Howling Fjord,42.20,19.70
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13855 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman##33438 |q 13855/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13855/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13855/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13760/1 |goto Icecrown 44.30,54.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13761 |goto Icecrown 76.00,20.40
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto Icecrown 75.30,18.50
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13757 |goto Icecrown 76.30,19.00
turnin A Worthy Weapon##13758 |goto Icecrown 76.30,19.00
turnin The Edge Of Winter##13759 |goto Icecrown 76.30,19.00
step
talk Illestria Bladesinger##33652
turnin A Valiant's Field Training##13760 |goto Icecrown 76.30,19.00
step
talk Airae Starseeker##33654
turnin The Grand Melee##13761 |goto Icecrown 76.40,19.00
turnin At The Enemy's Gates##13855 |goto Icecrown 76.40,19.00
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13717/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13717 |goto Icecrown 76.30,19.10
accept The Valiant's Challenge##13725 |goto Icecrown 76.30,19.10
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13725 |goto Icecrown 76.00,20.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13725/1 |goto Icecrown 68.60,21.00
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13725 |goto Icecrown 76.30,19.10
step
Congratulations, you are now a Champion of Darnassus!
|tip This is the end of the Night Elf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Home Cities Reputation\\The Exodar\\Draenei",{
description="This guide will help you to get Exalted reputation with the Exodar faction. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={34406,35711,35710,35713,35712,35714},
},[[
step
You will not be able to do some of the quests in this section if you are not a Draenei.
confirm
step
talk Megelon##16475
accept You Survived!##9279 |goto Azuremyst Isle/0 84.20,43.00
step
talk Proenitus##16477
turnin You Survived!##9279 |goto Azuremyst Isle/0 80.40,45.90
accept Replenishing the Healing Crystals##9280 |goto Azuremyst Isle/0 80.40,45.90
step
kill Vale Moth##16520+
collect 6 Vial of Moth Blood##22889 |q 9280/1 |goto Azuremyst Isle/0 78.60,45.40
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |goto Azuremyst Isle/0 80.40,45.90
accept Urgent Delivery!##9409 |goto Azuremyst Isle/0 80.40,45.90
step
talk Zalduun##16502
turnin Urgent Delivery!##9409 |goto Azuremyst Isle/0 80.10,48.80
accept Rescue the Survivors!##9283 |goto Azuremyst Isle/0 80.10,48.80
step
talk Proenitus##16477
accept Botanist Taerix##9371 |goto Azuremyst Isle/0 80.40,45.90
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto Azuremyst Isle/0 79.10,46.50
step
talk Botanist Taerix##16514
accept Volatile Mutations##10302 |goto Azuremyst Isle/0 79.10,46.50
step
kill 8 Volatile Mutation##16516 |q 10302/1 |goto Azuremyst Isle/0 78.40,43.50
step
Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru
|tip They are Draeneis that are laying on the ground around this area.  They spawn in random locations, so you may have to search for one.
Save a Draenei Survivor |q 9283/1 |goto Azuremyst Isle/0 79.80,39.20
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto Azuremyst Isle/0 79.10,46.50
accept What Must Be Done...##9293 |goto Azuremyst Isle/0 79.10,46.50
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto Azuremyst Isle/0 79.10,46.60
step
talk Zalduun##16502
turnin Rescue the Survivors!##9283 |goto Azuremyst Isle/0 80.10,48.80
step
talk Technician Zhanaa##17071
accept Spare Parts##9305 |goto Azuremyst Isle/0 79.40,51.20
step
talk Vindicator Aldar##16535
accept Inoculation##9303 |goto Azuremyst Isle/0 79.50,51.60
step
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample##22934 |q 9293/1 |goto Azuremyst Isle/0 74.90,50.40
Click the Corrupted Flowers
|tip The Corrupted Flowers are tall red flowers around this area.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto Azuremyst Isle/0 74.90,50.40
step
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto Azuremyst Isle/0 79.10,46.60
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto Azuremyst Isle/0 79.10,46.50
accept Healing the Lake##9294 |goto Azuremyst Isle/0 79.10,46.50
stickystart "inoculate"
step
Click the Irradiated Power Crystal
|tip It's a huge purple crystal sitting in the lake.
Disperse the Neutralizing Agent |q 9294/1 |goto Azuremyst Isle/0 77.30,58.70
step
Go through the tunnel into the small clearing
Click the Emitter Spare Parts
|tip They look like purple crystal guns sitting on the ground.
collect 4 Emitter Spare Part##22978 |q 9305/1 |goto Azuremyst Isle/0 84.70,65.60
step
label "inoculate"
Use your Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
Inoculate 6 Nestlewood Owlkins |q 9303/1 |goto Azuremyst Isle/0 78.40,60.40
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto Azuremyst Isle/0 79.10,46.50
step
talk Technician Zhanaa##17071
turnin Spare Parts##9305 |goto Azuremyst Isle/0 79.40,51.20
step
talk Vindicator Aldar##16535
turnin Inoculation##9303 |goto Azuremyst Isle/0 79.50,51.60
accept The Missing Scout##9309 |goto Azuremyst Isle/0 79.50,51.60
step
talk Tolaan##16546
turnin The Missing Scout##9309 |goto Azuremyst Isle/0 72,60.80
accept The Blood Elves##10303 |goto Azuremyst Isle/0 72,60.80
step
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto Azuremyst Isle/0 71.30,60.70
step
talk Tolaan##16546
turnin The Blood Elves##10303 |goto Azuremyst Isle/0 72,60.80
accept Blood Elf Spy##9311 |goto Azuremyst Isle/0 72,60.80
step
kill Surveyor Candress##16522 |q 9311/1 |goto Azuremyst Isle/0 69.30,65.70
collect Blood Elf Plans##24414 |n
Click the Blood Elf Plans in your bags |use Blood Elf Plans##24414
accept Blood Elf Plans##9798 |goto Azuremyst Isle/0 69.30,65.70
step
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto Azuremyst Isle/0 79.50,51.60
turnin Blood Elf Plans##9798 |goto Azuremyst Isle/0 79.50,51.60
accept The Emitter##9312 |goto Azuremyst Isle/0 79.50,51.60
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto Azuremyst Isle/0 79.40,51.20
accept Travel to Azure Watch##9313 |goto Azuremyst Isle/0 79.40,51.20
step
The path through the mountains starts here |goto Azuremyst Isle/0 68.30,53.90 < 5 |walk
talk Aeun##16554
accept Word from Azure Watch##9314 |goto Azuremyst Isle/0 64.50,54
step
talk Diktynna##17101
accept Red Snapper - Very Tasty!##9452 |goto Azuremyst Isle/0 61.10,54.20
step
Use your Draenei Fishing Net next to Schools of Red Snapper |use Draenei Fishing Net##23654
|tip They look like little round schools of fish in the water.
collect 10 Red Snapper##23614 |q 9452/1 |goto Azuremyst Isle/0 61.90,51.60
step
talk Diktynna##17101
turnin Red Snapper - Very Tasty!##9452 |goto Azuremyst Isle/0 61.10,54.20
accept Find Acteon!##9453 |goto Azuremyst Isle/0 61.10,54.20
step
talk Acteon##17110
turnin Find Acteon!##9453 |goto Azuremyst Isle/0 49.80,51.90
accept The Great Moongraze Hunt##9454 |goto Azuremyst Isle/0 49.80,51.90
step
talk Anchorite Fateema##17214
accept Medicinal Purpose##9463 |goto Azuremyst Isle/0 48.40,51.80
step
talk Technician Dyvuun##16551
turnin Travel to Azure Watch##9313 |goto Azuremyst Isle/0 48.70,50.30
step
talk Caregiver Chellan##16553
turnin Word from Azure Watch##9314 |goto Azuremyst Isle/0 48.30,49.20
home Azure Watch |goto Azuremyst Isle/0 48.30,49.20
step
talk Zaldaan##43991
fpath Azure Watch |goto Azuremyst Isle/0 49.70,49.10
step
kill Moongraze Stag##17200+
collect 6 Moongraze Stag Tenderloin##23676|q 9454/1 |goto Azuremyst Isle/0 50.30,56.60
kill Root Trapper##17196+
collect 8 Root Trapper Vine##23685|q 9463/1 |goto Azuremyst Isle/0 50.30,56.60
step
talk Admiral Odesyus##17240
accept A Small Start##9506 |goto Azuremyst Isle/0 47,70.20
step
talk "Cookie" McWeaksauce##17246
accept Cookie's Jumbo Gumbo##9512 |goto Azuremyst Isle/0 46.70,70.50
step
kill Skittering Crawler##17216+
collect 6 Skittering Crawler Meat##23757 |q 9512/1 |goto Azuremyst Isle/0 47.60,73
step
talk "Cookie" McWeaksauce##17246
turnin Cookie's Jumbo Gumbo##9512 |goto Azuremyst Isle/0 46.70,70.50
step
talk Priestess Kyleen Il'dinare##17241
accept Reclaiming the Ruins##9513 |goto Azuremyst Isle/0 47,70.20
step
talk Archaeologist Adamant Ironheart##17242
accept Precious and Fragile Things Need Special Handling##9523 |goto Azuremyst Isle/0 47.20,70
step
Click the Nautical Map
|tip It's sitting on a box under a green canopy.
collect Nautical Map##23739 |q 9506/2 |goto Azuremyst Isle/0 58.60,66.40
step
Click the Nautical Compass
|tip It's sitting on a box under the blue canopy with a green stripe on it
collect Nautical Compass##23738 |q 9506/1 |goto Azuremyst Isle/0 59.60,67.60
step
talk Admiral Odesyus##17240
turnin A Small Start##9506 |goto Azuremyst Isle/0 47,70.20
accept I've Got a Plant##9530 |goto Azuremyst Isle/0 47,70.20
step
Click a Hollowed Out Tree
|tip They look like tall, skinny tree stumps around this area.
collect Hollowed Out Tree##23790 |q 9530/1 |goto Azuremyst Isle/0 45.90,65.70
Click Piles of Leaves
|tip They look like small piles of purple leaves on the ground around this area.
collect 5 Pile of Leaves##23791 |q 9530/2 |goto Azuremyst Isle/0 45.90,65.70
step
talk Admiral Odesyus##17240
turnin I've Got a Plant##9530 |goto Azuremyst Isle/0 47,70.20
accept Tree's Company##9531 |goto Azuremyst Isle/0 47,70.20
step
Click Ancient Relics
|tip They look like white glowing orbs on small stands around this area.
collect 8 Ancient Relic##23779 |q 9523/1 |goto Azuremyst Isle/0 36.10,77
kill 5 Wrathscale Myrmidon##17194 |q 9513/1 |goto Azuremyst Isle/0 36.10,77
kill 5 Wrathscale Naga##17193 |q 9513/2 |goto Azuremyst Isle/0 36.10,77
kill 5 Wrathscale Siren##17195 |q 9513/3 |goto Azuremyst Isle/0 36.10,77
kill Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
collect Rune Covered Tablet##23759 |n
Click the Rune Covered Tablet in your bags |use Rune Covered Tablet##23759
accept Rune Covered Tablet##9514 |goto Azuremyst Isle/0 36.10,77
step
Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792
|tip It's a red flag on a metal pole on the beach.
Watch the conversation
Uncover the Traitor |q 9531/1 |goto Azuremyst Isle/0 18.50,84.30
step
talk Anchorite Fateema##17214
turnin Medicinal Purpose##9463 |goto Azuremyst Isle/0 48.40,51.80
step
talk Daedal##17215
accept An Alternative Alternative##9473 |goto Azuremyst Isle/0 48.40,51.50
step
talk Acteon##17110
turnin The Great Moongraze Hunt##9454 |goto Azuremyst Isle/0 49.80,51.90
accept The Great Moongraze Hunt##10324 |goto Azuremyst Isle/0 49.80,51.90
step
kill Moongraze Buck##17201+
collect 6 Moongraze Buck Hide##23677 |q 10324/1 |goto Azuremyst Isle/0 50.60,46.20
kill Infected Nightstalker Runt##17202+
collect Faintly Glowing Crystal##23678 |n
Click the Faintly Glowing Crystal in your bags |use Faintly Glowing Crystal##23678
accept Strange Findings##9455 |goto Azuremyst Isle/0 50.60,46.20
step
Click Azure Snapdragons
|tip They are tall flowers with big bulbs that puff smoke at the base of trees.
collect 5 Azure Snapdragon Bulb##23692 |q 9473/1 |goto Azuremyst Isle/0 50.40,37.10
step
talk Acteon##17110
turnin The Great Moongraze Hunt##10324 |goto Azuremyst Isle/0 49.80,51.90
step
talk Daedal##17215
turnin An Alternative Alternative##9473 |goto Azuremyst Isle/0 48.40,51.80
step
talk Exarch Menelaous##17116
turnin Strange Findings##9455 |goto Azuremyst Isle/0 47.10,50.60
accept Nightstalker Clean Up, Isle 2...##9456 |goto Azuremyst Isle/0 47.10,50.60
step
talk Dulvi##17488
accept The Missing Fisherman##10428 |goto Azuremyst Isle/0 49,51.10
step
talk Caregiver Chellan##16553
accept Beds, Bandages, and Beyond##9603 |goto Azuremyst Isle/0 48.30,49.20
step
talk Zaldaan##43991
turnin Beds, Bandages, and Beyond##9603 |goto Azuremyst Isle/0 49.70,49.10
accept On the Wings of a Hippogryph##9604 |goto Azuremyst Isle/0 49.70,49.10
step
talk Nurguni##16768
turnin On the Wings of a Hippogryph##9604 |goto Azuremyst Isle/0 57.00,50.10
accept Hippogryph Master Stephanos##9605 |goto Azuremyst Isle/0 57.00,50.10
step
talk Stephanos##17555
turnin Hippogryph Master Stephanos##9605 |goto Azuremyst Isle/0 54.50,36.30
accept Return to Caregiver Chellan##9606 |goto Azuremyst Isle/0 54.50,36.30
step
talk Caregiver Chellan##16553
turnin Return to Caregiver Chellan##9606 |goto Azuremyst Isle/0 48.30,49.20
step
kill 8 Infected Nightstalker Runt##17202 |q 9456/1 |goto Azuremyst Isle/0 45.70,43.90
step
talk Exarch Menelaous##17116
turnin Nightstalker Clean Up, Isle 2...##9456 |goto Azuremyst Isle/0 47.10,50.60
step
talk Admiral Odesyus##17240
turnin Tree's Company##9531 |goto Azuremyst Isle/0 47.00,70.20
accept Show Gnomercy##9537 |goto Azuremyst Isle/0 47.00,70.20
step
talk Priestess Kyleen Il'dinare##17241
turnin Reclaiming the Ruins##9513 |goto Azuremyst Isle/0 47.10,70.30
turnin Rune Covered Tablet##9514 |goto Azuremyst Isle/0 47.10,70.30
step
talk Archaeologist Adamant Ironheart##17242
turnin Precious and Fragile Things Need Special Handling##9523 |goto Azuremyst Isle/0 47.20,70
step
talk Priestess Kyleen Il'dinare##17241
accept Warlord Sriss'tiz##9515 |goto Azuremyst Isle/0 47.10,70.30
step
talk Engineer "Spark" Overgrind##17243
Tell him it's over
kill Engineer "Spark" Overgrind##17243
collect Traitor's Communication##23899 |q 9537/1 |goto Azuremyst Isle/0 48.20,72.50
step
talk Admiral Odesyus##17240
turnin Show Gnomercy##9537 |goto Azuremyst Isle/0 47,70.20
accept Deliver Them From Evil...##9602 |goto Azuremyst Isle/0 47,70.20
step
talk Exarch Menelaous##17116
turnin Deliver Them From Evil...##9602 |goto Azuremyst Isle/0 47.10,50.60
step
talk Cryptographer Aurren##17232
accept Learning the Language##9538
Click the Stillpine Furbolg Language Primer in your bags |use Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1 |goto Azuremyst Isle/0 49.40,51.00
step
Click the Totem of Akida
|tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
turnin Learning the Language##9538 |goto Azuremyst Isle/0 49.40,51.00
step
Click the Totem of Akida
|tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
accept Totem of Coo##9539 |goto Azuremyst Isle/0 49.40,51.00
step
Follow the ghost furbolg as he runs up the hill
Click the Totem of Coo
turnin Totem of Coo##9539 |goto Azuremyst Isle/0 55.20,41.70
accept Totem of Tikti##9540 |goto Azuremyst Isle/0 55.20,41.70
step
Follow the ghost furbolg to the edge of the cliff
He will give you wings |havebuff Ghost Walk##30424 |q 9540 |goto Azuremyst Isle/0 55.60,41.60
step
Click the Totem of Tikti
turnin Totem of Tikti##9540 |goto Azuremyst Isle/0 64.50,39.80
accept Totem of Yor##9541 |goto Azuremyst Isle/0 64.50,39.80
step
Follow the ghost furbolg to the river
He will give you a swim speed buff |havebuff Embrace of the Serpent##30430 |q 9541 |goto Azuremyst Isle/0 63.80,40.20
step
Click the Totem of Yor underwater
turnin Totem of Yor##9541 |goto Azuremyst Isle/0 63,67.90
accept Totem of Vark##9542 |goto Azuremyst Isle/0 63,67.90
step
Follow the ghost furbolg out of the water
He will turn you into a ghost panther |havebuff Shadow of the Forest##30448 |q 9542 |goto Azuremyst Isle/0 61.00,69.50
step
Follow the panther as he runs
Click the Totem of Vark
turnin Totem of Vark##9542 |goto Azuremyst Isle/0 28.10,62.40
accept The Prophecy of Akida##9544 |goto Azuremyst Isle/0 28.10,62.40
step
kill Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
collect Bristlelimb Key##23801 |n
Click Bristlelimb Cages
|tip They look like yellow cages around this area.
Free 8 Stillpine Captives |q 9544/1 |goto Azuremyst Isle/0 28.50,66.40
step
Enter the cave |goto Azuremyst Isle/0 27.00,76.70 < 5 |walk
Follow the path to the bottom of the cave
kill Warlord Sriss'tiz##17298 |q 9515/1 |goto Azuremyst Isle/0 25.20,74.20
step
Leave the cave |goto Azuremyst Isle/0 27.00,76.70 < 5 |walk
talk Cowlen##17311
turnin The Missing Fisherman##10428 |goto Azuremyst Isle/0 16.60,94.50
accept All That Remains##9527 |goto Azuremyst Isle/0 16.60,94.50
step
kill Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
collect Remains of Cowlen's Family##23789 |q 9527/1 |goto Azuremyst Isle/0 14.80,92
step
talk Cowlen##17311
turnin All That Remains##9527 |goto Azuremyst Isle/0 16.60,94.50
step
talk Arugoo the Stillpine##17114
turnin The Prophecy of Akida##9544 |goto Azuremyst Isle/0 49.41,51.00
accept Stillpine Hold##9559 |goto Azuremyst Isle/0 49.41,51.00
step
talk Priestess Kyleen Il'dinare##17241
turnin Warlord Sriss'tiz##9515 |goto Azuremyst Isle/0 47,70.20
step
talk Gurf##17441
accept Murlocs... Why Here? Why Now?##9562 |goto Azuremyst Isle/0 44.70,23.60
step
talk Moordo##17442
accept Beasts of the Apocalypse!##9560 |goto Azuremyst Isle/0 44.80,23.90
step
talk High Chief Stillpine##17440
turnin Stillpine Hold##9559 |goto Azuremyst Isle/0 46.70,20.60
step
kill Ravager Specimen##17199+
collect 8 Ravager Hide##23845 |q 9560/1 |goto Azuremyst Isle/0 53.10,20.80
step
Follow the road around
kill Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
Click Stillpine Grain
|tip They look like bags near the murloc huts along the beach.
collect 5 Stillpine Grain##23849 |q 9562/1 |goto Azuremyst Isle/0 33.80,25.70
kill Murgurgala##17475
collect Gurf's Dignity##23850 |n
Click Gurf's Dignity in your bags |use Gurf's Dignity##23850
accept Gurf's Dignity##9564 |goto Azuremyst Isle/0 33.80,25.70
step
kill Blood Elf Bandit##17591+
collect Blood Elf Communication##23910
Click the Blood Elf Communication in your bags |use Blood Elf Communication##23910
accept Bandits!##9616 |goto Azuremyst Isle/0 34.00,26.50
step
talk Gurf##17441
turnin Murlocs... Why Here? Why Now?##9562 |goto Azuremyst Isle/0 44.70,23.60
turnin Gurf's Dignity##9564 |goto Azuremyst Isle/0 44.70,23.60
step
talk Moordo##17442
turnin Beasts of the Apocalypse!##9560 |goto Azuremyst Isle/0 44.80,23.90
step
talk High Chief Stillpine##17440
accept Search Stillpine Hold##9565 |goto Azuremyst Isle/0 46.70,20.60
step
talk Stillpine the Younger##17445
accept Chieftain Oomooroo##9573 |goto Azuremyst Isle/0 46.90,21.20
step
Enter the cave |goto Azuremyst Isle/0 45.40,19.10 < 5 |walk
Go to the upper level of the cave
kill Chieftain Oomooroo##17448 |q 9573/1 |goto Azuremyst Isle/0 47.40,14.10
step
Click the Blood Crystal
|tip It's a huge red crystal on a little dirt island in the water.
turnin Search Stillpine Hold##9565 |goto Azuremyst Isle/0 50.50,11.50
accept Blood Crystals##9566 |goto Azuremyst Isle/0 50.50,11.50
step
kill 9 Crazed Wildkin##17189 |q 9573/2 |goto Azuremyst Isle/0 47.40,16.00
step
Leave the cave |goto Azuremyst Isle/0 45.40,19.10 < 5 |walk
talk High Chief Stillpine##17440
turnin Blood Crystals##9566 |goto Azuremyst Isle/0 46.70,20.60
step
talk Stillpine the Younger##17445
turnin Chieftain Oomooroo##9573 |goto Azuremyst Isle/0 46.90,21.20
step
talk Kurz the Revelator##17443
accept The Kurken is Lurkin'##9570 |goto Azuremyst Isle/0 47.00,22.30
step
Enter the cave |goto Azuremyst Isle/0 45.40,19.10 < 5 |walk
kill The Kurken##17447
collect The Kurken's Hide##23860 |q 9570/1 |goto Azuremyst Isle/0 49.90,13.00
step
Leave the cave |goto Azuremyst Isle/0 45.40,19.10 < 5 |walk
talk Kurz the Revelator##17443
turnin The Kurken is Lurkin'##9570 |goto Azuremyst Isle/0 47.00,22.30
accept The Kurken's Hide##9571 |goto Azuremyst Isle/0 47.00,22.30
step
talk High Chief Stillpine##17440
accept Warn Your People##9622 |goto Azuremyst Isle/0 46.70,20.60
turnin Bandits!##9616 |goto Azuremyst Isle/0 46.70,20.60
step
talk Moordo##17442
turnin The Kurken's Hide##9571 |goto Azuremyst Isle/0 44.80,23.90
step
talk Exarch Menelaous##17116
turnin Warn Your People##9622 |goto Azuremyst Isle/0 47.10,50.60
accept Coming of Age##9623 |goto Azuremyst Isle/0 47.10,50.60
step
Follow the ramp up and outside The Exodar
talk Torallius the Pack Handler##17584
turnin Coming of Age##9623 |goto Azuremyst Isle/0 35.10,43.40
accept Elekks Are Serious Business##9625 |goto Azuremyst Isle/0 35.10,43.40
step
talk Vorkhan the Elekk Herder##17586
turnin Elekks Are Serious Business##9625 |goto Bloodmyst Isle/0 63.00,87.90
accept Alien Predators##9634 |goto Bloodmyst Isle/0 63.00,87.90
step
talk Kessel##17649
accept The Kessel Run##9663 |goto Bloodmyst Isle/0 63.00,87.50
step
talk High Chief Stillpine##17440
Warn High Chief Stillpine |q 9663/1 |goto Azuremyst Isle/0 46.70,20.60
step
talk Exarch Menelaous##17116
Warn Exarch Menelaous |q 9663/2 |goto Azuremyst Isle/0 47.10,50.60
step
talk Admiral Odesyus##17240
Warn Admiral Odesyus |q 9663/3 |goto Azuremyst Isle/0 47,70.20
step
talk Kessel##17649
turnin The Kessel Run##9663 |goto Bloodmyst Isle/0 63.00,87.50
accept Declaration of Power##9666 |goto Bloodmyst Isle/0 63.00,87.50
step
talk Aonar##17599
accept A Favorite Treat##9624 |goto Bloodmyst Isle/0 63.40,88.80
step
kill 10 Bloodmyst Hatchling##17525 |q 9634/1 |goto Bloodmyst Isle/0 57.40,89.80
Click Sand Pears
|tip They look like light brown pears at the base of trees around this area.
collect 10 Sand Pear##23927 |q 9624/1 |goto Bloodmyst Isle/0 57.40,89.80
step
talk Vorkhan the Elekk Herder##17586
turnin Alien Predators##9634 |goto Bloodmyst Isle/0 63.00,87.90
step
talk Aonar##17599
turnin A Favorite Treat##9624 |goto Bloodmyst Isle/0 63.40,88.80
step
talk Princess Stillpine##17682
accept Saving Princess Stillpine##9667 |goto Bloodmyst Isle/0 68.30,81.10
step
Kill furbolgs in this camp until High Chief Bristlelimb appears
kill High Chief Bristlelimb##17702
collect The High Chief's Key##24099 |q 9667 |goto Bloodmyst Isle/0 64.50,77.70
step
kill Lord Xiz##17701 |q 9666/2 |goto Bloodmyst Isle/0 68.80,68.10
Use the Draenei Banner on Lord Xiz's corpse |use Draenei Banner##24084
Declare your Power |q 9666/1 |goto Bloodmyst Isle/0 68.80,68.10
step
Click Princess Stillpine's Cage
Save Princess Stillpine |q 9667/1 |goto Bloodmyst Isle/0 68.20,81.10
step
talk Kessel##17649
turnin Declaration of Power##9666 |goto Bloodmyst Isle/0 63.00,87.50
accept Report to Exarch Admetius##9668 |goto Bloodmyst Isle/0 63.00,87.50
step
talk Stillpine Ambassador Frasaboo##18803
turnin Saving Princess Stillpine##9667 |goto Bloodmyst Isle/0 55.20,56.00
step
Click the Wanted Poster
accept WANTED: Deathclaw##9646 |goto Bloodmyst Isle/0 55.20,59.10
step
talk Caregiver Topher Loaal##17553
home Blood Watch |goto Bloodmyst Isle/0 55.90,59.80
step
talk Morae##17434
accept Catch and Release##9629 |goto Bloodmyst Isle/0 53.30,57.80
step
talk Jessera of Eredath##17663
accept Eredath Mushroom Menagerie##9648 |goto Bloodmyst Isle/0 56.40,56.80
step
talk Laando##17554
fpath Bloodmyst Isle |goto Bloodmyst Isle/0 57.70,53.90
step
talk Exarch Admetius##17658
turnin Report to Exarch Admetius##9668 |goto Bloodmyst Isle/0 52.70,53.20
accept What Argus Means to Me##9693 |goto Bloodmyst Isle/0 52.70,53.20
step
talk Harbinger Mikolaas##17423
accept Learning from the Crystals##9581 |goto Bloodmyst Isle/0 52.60,53.20
step
talk Vindicator Boros##17684
turnin What Argus Means to Me##9693 |goto Bloodmyst Isle/0 55.40,55.30
accept Blood Watch##9694 |goto Bloodmyst Isle/0 55.40,55.30
step
Click a Blood Mushroom
|tip They can be found at the base of trees in this area.
collect Blood Mushroom##24040 |q 9648/2 |goto Bloodmyst Isle/0 62.30,53.00
step
kill Stinkhorn Striker##17673
collect Aquatic Stinkhorn##24041 |q 9648/1 |goto Bloodmyst Isle/0 59.70,71.00
step
Click a Ruinous Polyspore
collect Ruinous Polyspore##24042 |q 9648/3 |goto Bloodmyst Isle/0 60.70,42.00
step
Use the Crystal Mining Pick on Impact Site Crystal|use Crystal Mining Pick##23875
collect Impact Site Crystal Sample##23878 |q 9581/1 |goto Bloodmyst Isle/0 58.10,83.30
step
Use the Murloc Tagger on Blacksilt Scout |use Murloc Tagger##23995
Tag 6 Blacksilt Scouts |q 9629/1 |goto Bloodmyst Isle/0 47.80,94.40
step
Click a Fel Cone Fungus
collect Fel Cone Fungus##24043 |q 9648/4 |goto Bloodmyst Isle/0 44.40,82.40
step
talk Morae##17434
turnin Catch and Release##9629 |goto Bloodmyst Isle/0 53.30,57.80
accept Victims of Corruption##9574 |goto Bloodmyst Isle/0 53.30,57.80
step
talk Jessera of Eredath##17663
turnin Eredath Mushroom Menagerie##9648 |goto Bloodmyst Isle/0 56.40,56.80
step
talk Harbinger Mikolaas##17423
turnin Learning from the Crystals##9581 |goto Bloodmyst Isle/0 52.60,53.20
accept The Missing Survey Team##9620 |goto Bloodmyst Isle/0 52.60,53.20
step
talk Vindicator Boros##17684
accept Irradiated Crystal Shards##9641 |goto Bloodmyst Isle/0 55.40,55.30
step
talk Vindicator Aalesia##17433
accept Know Thine Enemy##9567 |goto Bloodmyst Isle/0 55.10,58.00
step
kill 10 Sunhawk Spy##17604 |q 9694/1 |goto Bloodmyst Isle/0 49.50,47.40
step
talk Vindicator Boros##17684
turnin Blood Watch##9694 |goto Bloodmyst Isle/0 55.40,55.30
step
Click the Draenei Cartographer lying on the ground
turnin The Missing Survey Team##9620 |goto Bloodmyst Isle/0 61.30,48.40
accept Salvaging the Data##9628 |goto Bloodmyst Isle/0 61.30,48.40
step
kill Wrathscale Marauder##17334, Wrathscale Sorceress##17336
collect Survey Data Crystal##23932 |q 9628/1 |goto Bloodmyst Isle/0 61.60,43.60
stickystart "crystallizedbark"
stickystart "irradiatedcry"
step
Click the Nazzivus Monument Glyphs
collect Nazzivus Monument Glyph##23859 |q 9567/1 |goto Bloodmyst Isle/0 36.50,71.50
kill Tzerak##17528
collect Tzerak's Armor Plate##23900 |n
accept Signs of the Legion##9594 |goto Bloodmyst Isle/0 36.50,71.50
step
label "crystallizedbark"
kill Corrupted Treant##17352
collect 6 Crystallized Bark##23869 |q 9574/1 |goto Bloodmyst Isle/0 36.40,74.60
step
label "irradiatedcry"
kill 8 Nazzivus Satyr##17337 |q 9594/1 |goto Bloodmyst Isle/0 37.70,76.70
kill 8 Nazzivus Felsworn##17339 |q 9594/2 |goto Bloodmyst Isle/0 37.70,76.70
collect 10 Irradiated Crystal Shard##23984 |q 9641/1 |goto Bloodmyst Isle/0 37.70,76.70
step
talk Vindicator Aalesia##17433
turnin Signs of the Legion##9594 |goto Bloodmyst Isle/0 55.10,58.00
turnin Know Thine Enemy##9567 |goto Bloodmyst Isle/0 55.10,58.00
accept Containing the Threat##9569 |goto Bloodmyst Isle/0 55.10,58.00
step
talk Morae##17434
turnin Catch and Release##9629 |goto Bloodmyst Isle/0 53.20,57.80
turnin Victims of Corruption##9574 |goto Bloodmyst Isle/0 53.20,57.80
step
talk Tracker Lyceon##17642
accept Constrictor Vines##9643 |goto Bloodmyst Isle/0 55.90,57.00
accept The Bear Necessities##9580 |goto Bloodmyst Isle/0 55.90,57.00
step
talk Vindicator Boros##17684
turnin Irradiated Crystal Shards##9641 |goto Bloodmyst Isle/0 55.40,55.30
accept Intercepting the Message##9779 |goto Bloodmyst Isle/0 55.40,55.30
step
talk Prospector Nachlan##18804
accept Explorers' League, Is That Something for Gnomes?##10063 |goto Bloodmyst Isle/0 56.30,54.20
step
talk Harbinger Mikolaas##17423
turnin Salvaging the Data##9628 |goto Bloodmyst Isle/0 52.60,53.20
accept The Second Sample##9584 |goto Bloodmyst Isle/0 52.60,53.20
step
kill Sunhawk Spy##17604+
collect Sunhawk Missive##24399 |q 9779/1 |goto Bloodmyst Isle/0 48.80,45.90
step
Use the Crystal Mining Pick on Altered Bloodmyst Crystal|use Crystal Mining Pick##23876
collect Altered Crystal Sample##23879 |q 9584/1 |goto Bloodmyst Isle/0 45.70,47.70
step
kill Elder Brown Bear##17348
collect 8 Elder Brown Bear Flank##24026 |q 9580/1 |goto Bloodmyst Isle/0 46.60,35.20
kill Mutated Constrictor##17344
collect 6 Thorny Constrictor Vine##23994 |q 9643/1 |goto Bloodmyst Isle/0 46.60,35.20
More can be found at [46.60,35.20]
step
talk Vindicator Boros##17684
turnin Intercepting the Message##9779 |goto Bloodmyst Isle/0 55.40,55.30
accept Translations...##9696 |goto Bloodmyst Isle/0 55.40,55.30
step
talk Tracker Lyceon##17642
turnin Constrictor Vines##9643 |goto Bloodmyst Isle/0 55.90,57.00
turnin The Bear Necessities##9580 |goto Bloodmyst Isle/0 55.90,57.00
accept Culling the Flutterers##9647 |goto Bloodmyst Isle/0 55.90,57.00
step
talk Interrogator Elysis##17825
turnin Translations...##9696 |goto Bloodmyst Isle/0 54.40,54.50
accept Audience with the Prophet##9698 |goto Bloodmyst Isle/0 54.40,54.50
step
talk Harbinger Mikolaas##17423
turnin The Second Sample##9584 |goto Bloodmyst Isle/0 52.60,53.20
accept The Final Sample##9585 |goto Bloodmyst Isle/0 52.60,53.20
step
kill 10 Royal Blue Flutterer##17350 |q 9647/1 |goto Bloodmyst Isle/0 44.50,50.40
More can be found:
Around [47.30,32.20]
Around [44.60,38.00]
Around [44.90,56.00]
step
talk Clopper Wizbang##17421
turnin Explorers' League, Is That Something for Gnomes?##10063 |goto Bloodmyst Isle/0 42.10,21.20
accept Pilfered Equipment##9548 |goto Bloodmyst Isle/0 42.10,21.20
accept Artifacts of the Blacksilt##9549 |goto Bloodmyst Isle/0 42.10,21.20
stickystart "crudemurloc"
step
collect Clopper's Equipment##23830 |goto Bloodmyst Isle/0 40.40,20.10
Copper's Equipment spawns around the murloc buildings.
step
label "crudemurloc"
kill Blacksilt Seer##17330+
collect 3 Crude Murloc Idol##23834 |q 9549/1 |goto Bloodmyst Isle/0 38.70,21.20
kill Blacksilt Warrior##17329+, Blacksilt Shorestriker##17328+,
collect 6 Crude Murloc Knife##23833 |q 9549/2 |goto Bloodmyst Isle/0 38.70,21.20
step
kill Deathclaw##17661
collect Deathclaw's Paw##24025 |q 9646/1 |goto Bloodmyst Isle/0 37.10,30.30
step
talk Clopper Wizbang##17421
turnin Pilfered Equipment##9548 |goto Bloodmyst Isle/0 42.10,21.20
turnin Artifacts of the Blacksilt##9549 |goto Bloodmyst Isle/0 42.10,21.20
Click the Weathered Teasure Map |use Weathered Treasure Map##23837
accept A Map to Where?##9550 |goto Bloodmyst Isle/0 42.10,21.20
step
kill 5 Axxarien Shadowstalker##17340 |q 9569/2 |goto Bloodmyst Isle/0 38.20,37.40
kill 5 Axxarien Helcaller |q 9569/3 |goto Bloodmyst Isle/0 38.20,37.40
Click the Corrupted Crystals around Axxarien
collect 5 Corrupted Crystal##23863 |q 9569/4 |goto Bloodmyst Isle/0 38.20,37.40
step
kill Zevrax##17494 |q 9569/1 |goto Bloodmyst Isle/0 41.90,29.50
step
Use the Crystal Mining Pick on the Axxarien Crystal |use Crystal Mining Pick##23877
collect Axxarien Crystal Sample##23880 |q 9585/1 |goto Bloodmyst Isle/0 41.30,30.90
step
Click Battered Ancient Book
turnin A Map to Where?##9550 |goto Bloodmyst Isle/0 61.20,41.90
accept Deciphering the Book##9557 |goto Bloodmyst Isle/0 61.20,41.90
step
talk Anchorite Paetheus##17424
turnin Deciphering the Book##9557 |goto Bloodmyst Isle/0 54.70,53.90
accept Nolkai's Words##9561 |goto Bloodmyst Isle/0 54.70,53.90
step
talk Harbinger Mikolaas##17423
turnin WANTED: Deathclaw##9646 |goto Bloodmyst Isle/0 52.60,53.20
turnin The Final Sample##9585 |goto Bloodmyst Isle/0 52.60,53.20
step
talk Jessera of Eredath##17663
accept Ysera's Tears##9649 |goto Bloodmyst Isle/0 56.40,56.80
step
talk Tracker Lyceon##17642
turnin Culling the Flutterers##9647 |goto Bloodmyst Isle/0 55.90,57.00
step
talk Messenger Hermesius##17703 |tip He patrols around camp.
accept Urgent Delivery##9671 |goto Bloodmyst Isle/0 56.00,56.50
step
talk Vindicator Aalesia##17433
turnin Containing the Threat##9569 |goto Bloodmyst Isle/0 55.10,58.00
step
Go to your mailbox and retrieve the letter from Admiral Odesyus
collect A Letter from the Admiral##24132 |n
Click the Leter from the Admiral in your bags |use A Letter from the Admiral##24132
accept The Bloodcurse Legacy##9672 |goto Bloodmyst Isle/0 55.20,59.20
step
talk Morae##17434
accept Searching for Galaen##9578 |goto Bloodmyst Isle/0 53.30,57.70
step
Click the Mound of Dirt
turnin Nolkai's Words##9561 |goto Bloodmyst Isle/0 61.10,49.70
step
talk Prince Toreth##17674
He Patrols along the bottom of the island
accept Restoring Sanctity##9687 |goto Bloodmyst Isle/0 74.20,33.50
step
Click the Dragon Bones around Ragefeather Ridge
collect 8 Dragon Bone##24185 |q 9687/1 |goto Bloodmyst Isle/0 56.80,34.00
step
talk Prince Toreth##17674
turnin Restoring Sanctity##9687 |goto Bloodmyst Isle/0 74.20,33.50
accept Into the Dream##9688 |goto Bloodmyst Isle/0 74.20,33.50
step
kill 5 Veridian Whelp##17588 |q 9688/1 |goto Bloodmyst Isle/0 75.40,29.60
kill 5 Veridian Broodling##17589 |q 9688/2 |goto Bloodmyst Isle/0 75.40,29.60
step
talk Prince Toreth##17674
turnin Into the Dream##9688 |goto Bloodmyst Isle/0 74.20,33.50
step
Click Ysera's Tears around Wyrmscar Island
collect 2 Ysera's Tear##24049 |q 9649/1 |goto Bloodmyst Isle/0 75.70,28.50
step
talk Captain Edward Hanes##17712
turnin The Bloodcurse Legacy##9672 |goto Bloodmyst Isle/0 79.20,22.60
accept The Bloodcursed Naga##9674 |goto Bloodmyst Isle/0 79.20,22.60
step
kill 10 Bloodcursed Naga##17713 |q 9674/1 |goto Bloodmyst Isle/0 82.40,26.20
step
talk Captain Edward Hanes##17712
turnin The Bloodcursed Naga##9674 |goto Bloodmyst Isle/0 79.10,22.60
accept The Hopeless Ones...##9682 |goto Bloodmyst Isle/0 79.10,22.60
step
kill Bloodcursed Voyager##17714
collect 4 Bloodcursed Soul##24153 |q 9682/1 |goto Bloodmyst Isle/0 85.70,14.30
step
talk Captain Edward Hanes##17712
turnin The Hopeless Ones...##9682 |goto Bloodmyst Isle/0 79.10,22.60
accept Ending the Bloodcurse##9683 |goto Bloodmyst Isle/0 79.10,22.60
step
Click the Statue of Queen Azshara
kill Atoph the Bloodcursed##17715 |q 9683/1 |goto Bloodmyst Isle/0 85.90,54.30
step
talk Captain Edward Hanes##17712
turnin Ending the Bloodcurse##9683 |goto Bloodmyst Isle/0 79.10,22.60
step
talk Jessera of Eredath##17663
turnin Ysera's Tears##9649 |goto Bloodmyst Isle/0 56.40,56.80
step
Click Galaen's Corpse
turnin Searching for Galaen##9578 |goto Bloodmyst Isle/0 37.50,61.20
accept Galaen's Fate##9579 |goto Bloodmyst Isle/0 37.50,61.20
Click Galaen's Journal
accept Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto Bloodmyst Isle/0 37.50,61.20
step
kill Sunhawk Reclaimer##17606
collect Galaen's Amulet##23873 |q 9579/1 |goto Bloodmyst Isle/0 39.60,58.90
The Reclaimers spawn all around the Cryo-Core
step
talk Morae##17434
turnin Galaen's Fate##9579 |goto Bloodmyst Isle/0 53.30,57.70
step
talk Achelus##17676
accept The Missing Expedition##9669 |goto Bloodmyst Isle/0 53.30,57.00
step
talk Harbinger Mikolaas##17423
accept Talk to the Hand##10064 |goto Bloodmyst Isle/0 52.60,53.20
step
talk Vindicator Kuros##17843
turnin Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto Bloodmyst Isle/0 55.60,55.20
step
talk Vindicator Corin##17986
accept Fouled Water Spirits##10067 |goto Bloodmyst Isle/0 30.80,46.90
accept Oh, the Tangled Webs They Weave##10066 |goto Bloodmyst Isle/0 30.80,46.90
step
talk Scout Jorli##17927
turnin Talk to the Hand##10064 |goto Bloodmyst Isle/0 30.20,45.90
accept Cutting a Path##10065 |goto Bloodmyst Isle/0 30.20,45.90
step
talk Scout Loryi##17926
accept Critters of the Void##9741 |goto Bloodmyst Isle/0 30.30,45.90
step
kill 8 Mutated Tangler##17346 |q 10066/1 |goto Bloodmyst Isle/0 31.50,55.80
kill 10 Enraged Ravager##17527 |q 10065/1 |goto Bloodmyst Isle/0 31.50,55.80
There are more around [31.40,61.70]
step
kill 12 Void Critter##17887 |q 9741/1 |goto Bloodmyst Isle/0 20.40,63.30
step
talk Vindicator Aesom##17844
turnin Critters of the Void##9741 |goto Bloodmyst Isle/0 55.50,55.40
step
talk Vindicator Corin##17986
turnin Oh, the Tangled Webs They Weave##10066 |goto Bloodmyst Isle/0 30.80,46.90
step
talk Scout Jorli##17927
turnin Cutting a Path##10065 |goto Bloodmyst Isle/0 30.30,45.90
step
kill 6 Fouled Water Spirit##17358+ |q 10067/1 |goto Bloodmyst Isle/0 30.70,40.30
step
talk Vindicator Corin##17986
turnin Fouled Water Spirits##10067 |goto Bloodmyst Isle/0 30.80,46.90
step
talk Researcher Cornelius##17686
accept They're Alive! Maybe...##9670 |goto Bloodmyst Isle/0 24.90,34.40
step
kill 8 Myst Leecher##17523 |q 9669/1 |goto Bloodmyst Isle/0 18.10,36.20
kill 8 Myst Spinner##17522 |q 9669/2 |goto Bloodmyst Isle/0 18.10,36.20
kill Zarakh##17683 |q 9669/3 |goto Bloodmyst Isle/0 18.10,36.20
Free #5# Expedition Researchers |q 9670/1 |goto Bloodmyst Isle/0 18.10,36.20
|tip There will be webbed creatures along the mountainside.
step
talk Researcher Cornelius##17686
turnin They're Alive! Maybe...##9670 |goto Bloodmyst Isle/0 24.90,34.40
step
talk Achelus##17676
turnin The Missing Expedition##9669 |goto Bloodmyst Isle/0 53.20,57.00
step
talk Anchorite Paetheus##17424
accept New Found Allies##9632 |goto Bloodmyst Isle/0 54.60,53.90
step
talk Prophet Velen##17468
turnin Audience with the Prophet##9698 |goto The Exodar/0 32.90,54.40
accept Truth or Fiction##9699 |goto The Exodar/0 32.90,54.40
step
talk Huntress Kella Nightbow##17614
turnin Newfound Allies##9632 |goto Azuremyst Isle/0 24.20,54.30
step
map The Exodar
To continue gaining reputation with the Exodar faction:
You can buy an Exodar Tabard from Kadu at [The Exodar/0 69.60,61.70]
|tip Wear the Exodar Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf",{
next="Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome",
description="This guide will help you to get Exalted reputation with the Ironforge and Gnomeregan factions. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={6777,6899,6898,23240,23238,23239},
},[[
step
You will not be able to do some of the quests in this section if you are not a Dwarf.
confirm
step
talk Joren Ironstock##37081
accept Hold the Line!##24469 |goto Dun Morogh 67.10,41.30
step
kill 6 Rockjaw Invader##37070 |q 24469/1 |goto Dun Morogh 63.60,50.70
step
talk Joren Ironstock##37081
turnin Hold the Line!##24469 |goto Dun Morogh 67.10,41.30
accept Give 'em What-For##24470 |goto Dun Morogh 67.10,41.30
step
talk Sten Stoutarm##658
|tip He paces back and forth.
accept Aid for the Wounded##24471 |goto Dun Morogh 65.55,41.99
stickystart "Rockjaw_Goons"
step
Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
|tip They look like dwarves kneeling in the snow around this area.
Aid #4# Wounded Coldridge Mountaineers |q 24471/1 |goto Dun Morogh 69.30,55.20
step
label "Rockjaw_Goons"
kill 3 Rockjaw Goon##37073 |q 24470/1 |goto Dun Morogh 63.29,57.04
step
talk Joren Ironstock##37081
turnin Give 'em What-For##24470 |goto Dun Morogh 67.10,41.30
step
talk Sten Stoutarm##658
|tip He paces back and forth.
turnin Aid for the Wounded##24471 |goto Dun Morogh 65.55,41.99
step
talk Joren Ironstock##37081
accept Lockdown in Anvilmar##24473 |goto Dun Morogh 67.10,41.30
step
Follow the path up |goto Dun Morogh 64.78,40.19 < 15 |only if walking
Enter the building |goto Dun Morogh 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin Lockdown in Anvilmar##24473 |goto Dun Morogh 60.60,21.00
accept First Things First: We're Gonna Need Some Beer##24474
step
talk Grundel Harkin##1104
accept Dwarven Artifacts##24477 |goto Dun Morogh 61.70,22.10
step
Follow the path |goto Dun Morogh 60.75,24.98 < 10 |walk
Leave the building |goto Dun Morogh 61.71,31.13 < 15 |only if walking
click Keg of Gnomenbrau##201611
collect Cask of Gnomenbrau##49746 |q 24474/3 |goto Dun Morogh 68.20,27.90
step
Follow the path |goto Dun Morogh 63.84,32.68 < 20 |only if walking
click Keg of Stormhammer Stout##201610
collect Cask of Stormhammer Stout##49744 |q 24474/1 |goto Dun Morogh 56.70,28.30
step
Follow the path |goto Dun Morogh 49.86,31.86 < 20 |only if walking
click Keg of Theramore Pale Ale##201609
collect Cask of Theramore Pale Ale##49745 |q 24474/2 |goto Dun Morogh 39.82,29.36
step
click Forgotten Dwarven Artifacts##201608
|tip They look like stone tablet pieces on the ground around this area.
collect 5 Forgotten Dwarven Artifact##49749 |q 24477/1 |goto Dun Morogh 32.11,31.98
step
Follow the path |goto Dun Morogh 43.92,34.22 < 20 |only if walking
Enter the building |goto Dun Morogh 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Dwarven Artifacts##24477 |goto Dun Morogh 61.70,22.10
accept Make Hay While the Sun Shine##24486 |goto Dun Morogh 61.70,22.10
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin First Things First: We're Gonna Need Some Beer##24474 |goto Dun Morogh 61.80,22.50
accept All the Other Stuff##24475 |goto Dun Morogh 61.80,22.50
stickystart "Raggedyoungwolf"
stickystart "Boarhaunch"
step
Follow the path |goto Dun Morogh 60.75,24.98 < 10 |walk
Leave the building |goto Dun Morogh 61.71,31.13 < 15 |only if walking
kill Rockjaw Scavenger##37105+
collect 5 Priceless Rockjaw Artifact##49751 |q 24486/1 |goto Dun Morogh 51.60,47.60
step
label "Raggedyoungwolf"
kill Ragged Young Wolf##705+
collect 4 Ragged Wolf Hide##49748 |q 24475/2 |goto Dun Morogh 49.50,57.70
step
label "Boarhaunch"
kill Small Crag Boar##708+
collect 3 Boar Haunch##49747 |q 24475/1 |goto Dun Morogh 33.89,65.23
step
Enter the building |goto Dun Morogh 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Make Hay While the Sun Shine##24486 |goto Dun Morogh 61.70,22.10
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin All the Other Stuff##24475 |goto Dun Morogh 61.80,22.50
accept Whitebeard Needs Ye##24487 |goto Dun Morogh 61.80,22.50
step
Follow the path |goto Dun Morogh 60.75,24.98 < 10 |walk
Leave the building |goto Dun Morogh 61.71,31.13 < 15 |only if walking
talk Grelin Whitebeard##786
turnin Whitebeard Needs Ye##24487 |goto Dun Morogh 42.70,62.20
accept The Troll Menace##182 |goto Dun Morogh 42.70,62.20
step
talk Apprentice Soren##1354
accept Trolling for Information##24489 |goto Dun Morogh 43.20,63.10
step
talk Felix Whindlebolt##8416
accept A Refugee's Quandary##3361 |goto Dun Morogh 41.90,63.50
stickystart "Frostmane_Troll_Whelps"
step
click Felix's Box##148499
collect Felix Box##10438 |q 3361/1 |goto Dun Morogh 21.40,64.10
step
Watch the dialogue
Scout Soothsayer Mirim'koa |q 24489/3 |goto Dun Morogh 21.23,66.03
step
click Felix's Chest##178084
collect Felix Chest##16313 |q 3361/2 |goto Dun Morogh 30.97,84.02
step
Watch the dialogue
Scout Soothsayer Rikkari |q 24489/2 |goto Dun Morogh 30.61,84.75
step
click Felix's Bucket of Bolt##4991
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto Dun Morogh 49.14,80.37
step
Watch the dialogue
Scout Soothsayer Shi'kala |q 24489/1 |goto Dun Morogh 49.14,80.37
step
label "Frostmane_Troll_Whelps"
kill 10 Frostmane Troll Whelp##706+ |q 182/1 |goto Dun Morogh 49.14,80.37
step
talk Apprentice Soren##1354
turnin Trolling for Information##24489 |goto Dun Morogh 43.20,63.10
step
talk Grelin Whitebeard##786
turnin The Troll Menace##182 |goto Dun Morogh 42.70,62.20
accept Ice and Fire##218 |goto Dun Morogh 42.70,62.20
step
talk Felix Whindlebolt##8416
turnin A Refugee's Quandary##3361 |goto Dun Morogh 41.90,63.50
stickystart "Frostmane_Blades"
stickystart "Frostmane_Novices"
step
kill Wayward Fire Elemental##37112 |q 218/2 |goto Dun Morogh/0 66.70,29.20
|tip It paces around on the frozen pond inside the cave.
step
kill Grik'nir the Cold##808 |q 218/1 |goto Dun Morogh/0 76.10,30.80
step
label "Frostmane_Blades"
kill 6 Frostmane Blade##37507 |q 218/4 |goto Dun Morogh/0 76.12,24.16
|tip They are all around this cave.
step
label "Frostmane_Novices"
kill 3 Frostmane Novice##946 |q 218/3 |goto Dun Morogh/0 76.12,24.16
|tip They are all around this cave.
step
Follow the path up |goto Dun Morogh/0 73.60,21.74 < 15 |walk
Continue following the path up |goto Dun Morogh/0 49.29,11.61 < 15 |walk
Follow the path |goto Dun Morogh/0 25.76,46.85 < 15 |walk
talk Grelin Whitebeard##786
turnin Ice and Fire##218 |goto Dun Morogh/0 42.70,62.20
accept A Trip to Ironforge##24490 |goto Dun Morogh/0 42.70,62.20
step
Follow the road up |goto Dun Morogh/0 69.27,45.64 < 20 |only if walking
talk Hands Springsprocket##6782
turnin A Trip to Ironforge##24490 |goto Dun Morogh/0 87.53,44.47
accept Follow that Gyro-Copter!##24491 |goto Dun Morogh/0 87.53,44.47
step
talk Milo Geartwinge##37113
turnin Follow that Gyro-Copter##24491 |goto Dun Morogh/0 69.90,44.21
accept Pack Your Bags##24492 |goto Dun Morogh/0 69.90,44.21
step
Follow the path up |goto Dun Morogh/0 64.78,40.19 < 15 |only if walking
Enter the building |goto Dun Morogh/0 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
accept Don't Forget About Us##24493 |goto Dun Morogh/0 61.80,22.50
step
click Leftover Boar Meat##201704
|tip On the table.
collect Leftover Boar Meat##49756 |q 24492/3 |goto Dun Morogh/0 62.14,23.58
step
click Beer Barrel##201706
collect Coldridge Beer Flagon##49754 |q 24492/1 |goto Dun Morogh/0 62.45,23.47
step
click Wolf-Hide Cloaks##201705
collect Ragged Wolf-Hide Cloak##57541 |q 24492/2 | goto Dun Morogh/0 62.21,23.98
step
Follow the path |goto Dun Morogh/0 60.75,24.98 < 10 |walk
Leave the building |goto Dun Morogh/0 61.71,31.13 < 15 |only if walking
talk Milo Geartwinge##37113
turnin Pack Your Bags##24492 |goto Dun Morogh/0 69.90,44.21
step
Fly to Kharanos |goto Dun Morogh/0 53.30,49.80 < 50 |noway |c |q 24493
step
talk Tharek Blackstone##1872
turnin Don't Forget About Us##24493 |goto Dun Morogh/0 53.10,50.00
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome",{
description="This guide will help you to get Exalted reputation with the Ironforge and Gnomeregan factions. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={10873,10969,17453,17454,23225,23223,23222,6777,6899,6898,23240,23238,23239},
},[[
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto Dun Morogh 53.90,50.70
step
talk Innkeeper Belm##1247
turnin Bound for Kharanos##26380 |goto Dun Morogh 54.50,50.80
only Gnome
step
talk Innkeeper Belm##1247
buy Rhapsody Malt##2894 |q 384/2 |goto Dun Morogh 54.50,50.80
step
talk Innkeeper Belm##1247
home Kharanos |goto Dun Morogh 54.50,50.80
step
talk Rejold Barleybrew##1374
accept The Perfect Stout##315 |goto Dun Morogh 54.20,51.20
step
talk Captain Tharran##40950
turnin On to Kharanos##26373 |goto Dun Morogh 53.70,52.20 |only Gnome
accept Frostmane Aggression##25724 |goto Dun Morogh 53.70,52.20
step
talk Brolan Galebeard##43701
fpath Kharanos |goto Dun Morogh 53.80,52.80
step
Follow the path |goto Dun Morogh/0 53.62,50.27 < 10 |only if walking
kill Crag Boar##1125+
collect 4 Tender Boar Rib##60496 |q 384/1 |goto Dun Morogh/0 56.00,48.40
step
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto Dun Morogh/0 53.90,50.70
step
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto Dun Morogh/0 49.90,45.00
only Dwarf
stickystart "Frostmane_Snowstriders"
stickystart "Shimmerweed_Baskets"
step
Follow the path up |goto Dun Morogh/0 51.50,40.70 < 5 |only if walking
kill 5 Frostmane Seer##41121 |q 25724/1 |goto Dun Morogh/0 48.60,38.00
step
label "Frostmane_Snowstriders"
kill 7 Frostmane Snowstrider##41122 |q 25724/2 |goto Dun Morogh/0 48.60,38.00
step
label "Shimmerweed_Baskets"
Click Shimmerweed Baskets
|tip They look like small wooden woven baskets on the ground around this area.
collect 7 Shimmerweed##2676 |q 315/1 |goto Dun Morogh/0 48.60,38.00
step
talk Innkeeper Belm##1247
|tip Inside the building.
turnin Bound for Kharanos##26380 |goto Dun Morogh/0 54.50,50.90
only Dwarf
step
talk Rejold Barleybrew##1374
|tip Outside the building.
turnin The Perfect Stout##315 |goto Dun Morogh/0 54.20,51.20
step
talk Captain Tharran##40950
turnin Frostmane Aggression##25724 |goto Dun Morogh/0 53.70,52.20
accept Culling the Wendigos##25667 |goto Dun Morogh/0 53.70,52.20
accept Forced to Watch from Afar##313 |goto Dun Morogh/0 53.70,52.20
step
talk Quartermaster Glynna##40951
accept Pilfered Supplies##25668 |goto Dun Morogh/0 53.70,52.10
stickystart "Wendigos"
stickystart "Pilfered_Supplies"
step
Follow the path |goto Dun Morogh/0 52.66,51.80 < 20 |only if walking
Follow the path down |goto Dun Morogh/0 51.15,51.44 < 20 |only if walking
Follow the path |goto Dun Morogh/0 61.51,86.26 < 15 |walk
Continue following the path |goto Dun Morogh/0 58.55,75.55 < 15 |walk
Follow the path |goto Dun Morogh/0 50.73,65.67 < 15 |walk
talk Mountaineer Dunstan##40991
Select _"Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos."_
Convey Orders to Mountaineer Dunstand |q 313/1 |goto Dun Morogh/0 51.88,48.43
step
Follow the path |goto Dun Morogh/0 58.03,53.50 < 10 |walk
talk Mountaineer Lewin##40994
Select _"Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos."_
Convey Orders to Mountaineer Lewin |q 313/2 |goto Dun Morogh/0 60.25,56.14
step
Follow the path |goto Dun Morogh/0 57.10,51.78 < 10 |walk
Follow the path up |goto Dun Morogh/0 60.43,37.00 < 15 |walk
talk Mountaineer Valgrum##41056
Select _"Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos."_
Convey Orders to Mountaineer Valgrum |q 313/3 |goto Dun Morogh/0 61.51,22.23
step
label "Wendigos"
Kill Wendigo enemies around this area
Slay #10# Wendigos |q 25667/1 |goto Dun Morogh/0 48.30,47.00
step
label "Pilfered_Supplies"
click Pilfered Supplies##203130
|tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
collect 6 Pilfered Supplies##55151 |q 25668/1 |goto Dun Morogh/0 48.30,47.00
step
Follow the path |goto Dun Morogh/0 54.41,47.39 < 10 |walk
Follow the path up |goto Dun Morogh/0 50.42,62.08 < 15 |walk
Follow the path |goto Dun Morogh/0 61.06,77.80 < 15 |walk
Follow the path up |goto Dun Morogh/0 50.28,53.11 < 20 |only if walking
Follow the path |goto Dun Morogh/0 51.52,51.20 < 20 |only if walking
talk Quartermaster Glynna##40951
turnin Pilfered Supplies##25668 |goto Dun Morogh/0 53.70,52.10
step
talk Captain Tharran##40950
turnin Culling the Wendigos##25667 |goto Dun Morogh/0 53.70,52.20
turnin Forced to Watch from Afar##313 |goto Dun Morogh/0 53.70,52.20
accept Pushing Forward##25792 |goto Dun Morogh/0 53.70,52.20
step
talk Razzle Sprysprocket##1269
|tip He walks around this small area.
accept Operation Recombobulation##412 |goto Dun Morogh/0 53.30,51.90
stickystart "Burn_Constriction_Totems"
stickystart "Gyromechanic_Gears"
step
label "Burn_Constriction_Totems"
Follow the path |goto Dun Morogh/0 54.83,54.32 < 20 |only if walking
Follow the path |goto Dun Morogh/0 55.61,56.24 < 20 |only if walking
Use the Rune of Fire next to Constriction Totems |use Rune of Fire##56009
|tip They look like wooden spiked rods with green orbs at the top of them around this area.
Burn #4# Constriction Totems |q 25792/1 |goto Dun Morogh/0 57.30,56.80
step
label "Gyromechanic_Gears"
kill Frostmane Scavenger##41146+
collect 8 Gyromechanic Gear##3084 |q 412/1 |goto Dun Morogh/0 57.30,56.80
step
Follow the path |goto Dun Morogh/0 55.60,56.22 < 20 |only if walking
Follow the path |goto Dun Morogh/0 54.72,54.32 < 20 |only if walking
talk Captain Tharran##40950
turnin Pushing Forward##25792 |goto Dun Morogh/0 53.70,52.20
step
talk Razzle Sprysprocket##1269
|tip He walks around this small area.
turnin Operation Recombobulation##412 |goto Dun Morogh/0 53.30,51.90
step
talk Captain Tharran##40950
accept Help from Steelgrill's Depot##25838 |goto Dun Morogh/0 53.70,52.20
step
Follow the path |goto Dun Morogh/0 53.62,49.79 < 20 |only if walking
talk Delber Cranktoggle##41363
turnin Help from Steelgrill's Depot##25838 |goto Dun Morogh/0 56.80,47.10
accept The Ultrasafe Personnel Launcher##25839 |goto Dun Morogh/0 56.80,47.10
step
clicknpc Ultrasafe Personnel Launcher##41398
|tip They look like balls of lightning on a metal machine.
Use the Ultrasafe Personnel Launcher to Deploy to Frostmane Retreat |q 25839/1 |goto Dun Morogh/0 56.70,46.50
step
talk Slamp Wobblecog##41298
turnin The Ultrasafe Personnel Launcher##25839 |goto Dun Morogh/0 62.50,53.70
accept Eliminate the Resistance##25840 |goto Dun Morogh/0 62.50,53.70
accept Strike From Above##25841 |goto Dun Morogh/0 62.50,53.70
step
talk Snevik the Blade##50601
accept The View from Down Here##28868 |goto Dun Morogh/0 62.50,53.80
stickystart "Shrink_Frostmane_Builders"
stickystart "Frostmane_Warriors"
step
Follow the path |goto Dun Morogh/0 63.20,53.16 < 15 |only if walking
Use the Signal Flare |use Signal Flare##56048
|tip Stand in the circle of stones on the ground.
Attack the Northern Frostmane Retreat |q 25841/1 |goto Dun Morogh/0 64.49,54.37
step
kill Battok the Berserker##41284 |q 25840/1 |goto Dun Morogh/0 63.80,55.70
step
Use your Signal Flare |use Signal Flare##56048
Attack the Southern Frostmane Retreat |q 25841/2 |goto Dun Morogh/0 63.30,57.30
step
label "Shrink_Frostmane_Builders"
Use the Viewpoint Equalizer on Frostmane Builders |use Viewpoint Equalizer##67249
|tip They look like trolls hammering and tinkering on things around this area.
Shrink #5# Frostmane Builders |q 28868/1 |goto Dun Morogh/0 62.70,55.10
step
label "Frostmane_Warriors"
kill 5 Frostmane Warrior##41258 |q 25840/2 |goto Dun Morogh/0 62.70,55.10
step
talk Snevik the Blade##50601
turnin The View from Down Here##28868 |goto Dun Morogh/0 62.50,53.80
step
talk Slamp Wobblecog##41298
turnin Eliminate the Resistance##25840 |goto Dun Morogh/0 62.50,53.70
turnin Strike From Above##25841 |goto Dun Morogh/0 62.50,53.70
accept A Hand at the Ranch##25882 |goto Dun Morogh/0 62.50,53.70
step
Follow the path |goto Dun Morogh/0 63.22,53.15 < 20 |only if walking
Continue following the path |goto Dun Morogh/0 64.69,53.25 < 15 |only if walking
Follow the path |goto Dun Morogh/0 67.27,52.69 < 20 |only if walking
Follow the path up |goto Dun Morogh/0 69.17,51.01 < 15 |only if walking
talk Sergeant Flinthammer##41578
turnin A Hand at the Ranch##25882 |goto Dun Morogh/0 70.40,48.90 |only if haveq(25882) or completedq(25882)
accept It's Raid Night Every Night##25932 |goto Dun Morogh/0 70.40,48.90
step
Watch the dialogue
kill Frostmane Raider##41603+
Defend Amberstill Ranch |q 25932/1 |goto Dun Morogh/0 70.22,49.34
step
talk Sergeant Flinthammer##41578
turnin It's Raid Night Every Night##25932 |goto Dun Morogh/0 70.40,48.90
step
talk Veron Amberstill##1261
|tip He walks back and forth in this small area.
accept Rams on the Lam##25905 |goto Dun Morogh/0 70.70,48.90
step
talk Rudra Amberstill##1265
accept Protecting the Herd##314 |goto Dun Morogh/0 70.30,48.10
step
Follow the path |goto Dun Morogh/0 70.20,49.49 < 20 |only if walking
Follow the path up |goto Dun Morogh/0 69.30,49.60 < 15 |only if walking
Follow the path |goto Dun Morogh/0 69.53,46.69 < 15 |only if walking
kill Vagash##1388
|tip He looks like a yeti that walks in and out of this small cave.
collect Fang of Vagash##3627 |q 314/1 |goto Dun Morogh/0 69.70,44.40
step
talk Rudra Amberstill##1265
turnin Protecting the Herd##314 |goto Dun Morogh/0 70.30,48.10
step
Follow the path |goto Dun Morogh/0 69.57,50.05 < 20 |only if walking
clicknpc Stolen Ram##41539
Whistle next to Stolen Rams |script DoEmote("WHISTLE")
|tip They look like different colored rams around this area.
Recover #6# Stolen Rams |q 25905/1 |goto Dun Morogh/0 67.60,55.00
step
Follow the path |goto Dun Morogh/0 68.25,53.47 < 20 |only if walking
Follow the path |goto Dun Morogh/0 69.56,50.14 < 20 |only if walking
talk Veron Amberstill##1261
|tip He walks back and forth in this small area.
turnin Rams on the Lam##25905 |goto Dun Morogh/0 70.70,48.90
step
talk Sergeant Flinthammer##41578
accept Help for the Quarry##25933 |goto Dun Morogh/0 70.40,48.90
step
Follow the path |goto Dun Morogh/0 69.48,50.20 < 20 |only if walking
Follow the road |goto Dun Morogh/0 69.95,53.23 < 20 |only if walking
Follow the path down |goto Dun Morogh/0 74.63,52.68 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto Dun Morogh/0 75.90,54.30
step
talk Dominic Galebeard##43702
fpath Gol'Bolar Quarry |goto Dun Morogh/0 75.90,54.50
step
talk Foreman Stonebrow##1254
turnin Help for the Quarry##25933 |goto Dun Morogh/0 76.30,54.70
accept Those Blasted Troggs!##432 |goto Dun Morogh/0 76.30,54.70
step
talk Prospector Gehn##1255
accept Priceless Treasures##25937 |goto Dun Morogh/0 76.20,53.00
stickystart "Rockjaw_Skullthumpers"
stickystart "Rescue_Trapped_Miners"
stickystart "Rockjaw_Bonesnappers"
step
Follow the path down |goto Dun Morogh/0 75.31,54.61 < 15 |only if walking
Follow the path |goto Dun Morogh/0 75.16,56.63 < 20 |only if walking
click Frozen Artifact##203385
|tip They look like crystals made of ice, generally along the walls of the cave.
collect 8 Frozen Artifact##56225 |q 25937/1 |goto Dun Morogh/0 45.62,72.94
step
label "Rockjaw_Skullthumpers"
kill 8 Rockjaw Skullthumper##1115 |q 432/1 |goto Dun Morogh/0 78.20,53.30
|tip You can find more outside the cave.
step
label "Rescue_Trapped_Miners"
Use Runes of Return on Trapped Miners |use Runes of Return##56222
|tip They look like scared dwarves along the walls inside the cave.
Rescue #7# Trapped Miners |q 433/1 |goto Dun Morogh/0 78.20,53.30
step
label "Rockjaw_Bonesnappers"
kill 8 Rockjaw Bonesnapper##1117 |q 432/2 |goto Dun Morogh/0 78.20,53.30
|tip You can find more outside the cave.
step
Follow the path up |goto Dun Morogh/0 75.03,56.14 < 15 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto Dun Morogh/0 75.90,54.30
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto Dun Morogh/0 76.30,54.70
step
talk Prospector Gehn##1255
turnin Priceless Treasures##25937 |goto Dun Morogh/0 76.20,53.00
step
talk Senator Mehr Stonehallow##1977
accept Trouble at the Lake##25986 |goto Dun Morogh/0 75.90,54.30
step
Follow the path up |goto Dun Morogh/0 75.28,54.00 < 15 |only if walking
Follow the road |goto Dun Morogh/0 74.46,51.33 <20 |only if walking
Continue following the road |goto Dun Morogh/0 78.61,48.21 < 20 |only if walking
talk Khurgorn Singefeather##41804
accept Dealing with the Surge##25979 |goto Dun Morogh/0 82.64,48.30
step
talk Sergeant Bahrum##41786
turnin Trouble at the Lake##25986 |goto Dun Morogh/0 82.85,48.41
accept Entombed in Ice##25978 |goto Dun Morogh/0 82.85,48.41
stickystart "Free_Frozen_Mountaineers"
step
kill 6 Helm's Bed Surger##41762 |q 25979/1 |goto Dun Morogh/0 83.00,51.50
step
label "Free_Frozen_Mountaineers"
kill Icy Tomb##41768+
|tip They look like big green blocks of ice around this area.
Free #6# Frozen Mountaineers |q 25978/1 |goto Dun Morogh/0 83.00,51.50
step
talk Sergeant Bahrum##41786
turnin Entombed in Ice##25978 |goto Dun Morogh/0 82.85,48.41
step
talk Khurgorn Singefeather##41804
turnin Dealing with the Surge##25979 |goto Dun Morogh/0 82.64,48.30
step
talk Sergeant Bahrum##41786
accept Dark Iron Scheming##25997 |goto Dun Morogh/0 82.85,48.41
stickystart "Dark_iron_Spies"
step
Follow the path |goto Dun Morogh/0 84.13,55.93 < 20 |only if walking
kill Captain Beld##6124
|tip Downstairs inside the building.
collect Dark Iron Attack Plans##56264 |q 25997/2 |goto Dun Morogh/0 85.20,60.60
step
label "Dark_iron_Spies"
kill 5 Dark Iron Spy##6123 |q 25997/1 |goto Dun Morogh/0 84.00,58.10
step
Follow the path |goto Dun Morogh/0 84.13,55.93 < 20 |only if walking
talk Sergeant Bahrum##41786
turnin Dark Iron Scheming##25997 |goto Dun Morogh/0 82.86,48.41
accept Get to the Airfield##25998 |goto Dun Morogh/0 82.86,48.41
step
Follow the road |goto Dun Morogh/0 78.89,48.10 < 20 |only if walking |n
Continue following the road |goto Dun Morogh/0 75.38,49.76 < 20 |only if walking |n
Jump down here |goto Dun Morogh/0 75.25,51.95 < 15 |only if walking |n
Locate Mathel's Flying Machine |goto Dun Morogh/0 75.23,52.76 < 20 |c |q 25998
step
clicknpc Mathel's Flying Machine##41848 |goto Dun Morogh/0 75.23,52.76 |n
Fly to the Ironforge Airfield |goto Dun Morogh/0 76.01,16.80 < 20 |noway |c |q 25998
step
talk Commander Stonebreaker##41853
turnin Get to the Airfield##25998 |goto Dun Morogh/0 78.25,20.51
accept Extinguish the Fires##26078 |goto Dun Morogh/0 78.25,20.51
step
Use the Firefighting Gear on fires around this area |use Firefighting Gear##56803
Extinguish #6# Fires |q 26078/1 |goto Dun Morogh/0 78.30,24.60
step
talk Commander Stonebreaker##41853
turnin Extinguish the Fires##26078 |goto Dun Morogh/0 78.25,20.51
accept Rallying the Defenders##26085 |goto Dun Morogh/0 78.25,20.51
step
Follow the path |goto Dun Morogh/0 78.14,26.79 < 20 |only if walking
Use the Ironforge Banner next to Loose Snow |use Ironforge Banner##56809
|tip They look like piles of white snow on the ground around this area.
Plant #8# Ironforge Banners |q 26085/1 |goto Dun Morogh/0 77.70,30.10
step
Follow the path |goto Dun Morogh/0 78.14,26.79 < 20 |only if walking
talk Commander Stonebreaker##41853
turnin Rallying the Defenders##26085 |goto Dun Morogh/0 78.25,20.51
accept Striking Back##26094 |goto Dun Morogh/0 78.25,20.51
step
clicknpc Repaired Bomber##42092
_As you fly:_
Use the Iron Hammer Bomb on Dark Iron enemies below |use Iron Hammer Bomb##56814
Slay #30# Dark Iron Attackers |q 26094/1 |goto Dun Morogh/0 77.10,18.50
step
talk Commander Stonebreaker##41853
turnin Striking Back##26094 |goto Dun Morogh/0 78.25,20.51
accept Grimaxe's Demise##26102 |goto Dun Morogh/0 78.25,20.51
step
Follow the path |goto Dun Morogh/0 78.14,26.79 < 20 |only if walking
Follow the path |goto Dun Morogh/0 78.46,30.55 < 20 |only if walking
kill Dark Iron Golem##42008
kill General Grimaxe##42010 |q 26102/1 |goto Dun Morogh/0 78.50,34.40
|tip He's standing on top of the golem.
step
Follow the path |goto Dun Morogh/0 78.46,30.55 < 20 |only if walking
Follow the path |goto Dun Morogh/0 78.14,26.79 < 20 |only if walking
talk Commander Stonebreaker##41853
turnin Grimaxe's Demise##26102 |goto Dun Morogh/0 78.25,20.51
accept Demanding Answers##26112 |goto Dun Morogh/0 78.25,20.51
step
Follow the path |goto Ironforge 44.50,49.65 < 15 |walk
talk Mountaineer Barleybrew##1959
accept Reinforcements for Loch Modan##26131 |goto Ironforge 41.40,52.30
step
talk Moira Thaurissan##26131
turnin Demanding Answers##26112 |goto Ironforge 39.80,57.40
accept Seize the Ambassador##26118 |goto Ironforge 39.80,57.40
step
Follow the path |goto Ironforge 44.54,49.46 < 15 |walk
Follow the path |goto Ironforge 43.92,45.77 < 15 |walk
Use the Sturdy Manacles on Ambassador Slaghammer |use Sturdy Manacles##56837
|tip Upstairs inside the building.
Click Here After You Arrest Ambassador Slaghammer |confirm |c |goto Ironforge 36.60,43.20 |q 26118
step
Follow the path |goto Ironforge 43.92,45.77 < 15 |walk
Follow the path |goto Ironforge 44.54,49.46 < 15 |walk
Watch the dialogue
Arrest Ambassador Slaghammer and Bring Him to the High Seat |q 26118/1 |goto Ironforge 40.87,52.89
step
talk Moira Thaurissan##42129
turnin Seize the Ambassador##26118 |goto Ironforge 39.78,57.27
step
talk Gryth Thurden##1573 |goto Ironforge 55.50,47.70
Select _"Mountaineer Barleybrew said you could help me get to Loch Modan."_
Fly to Thelsamar |goto Loch Modan/0 13.92,56.66 < 10 |noway |q 26131
step
talk Pilot Hammerfoot##1960
turnin Reinforcements for Loch Modan##26131 |goto Loch Modan 14.00,56.50
accept The Lost Pilot##26854 |goto Loch Modan 14.00,56.50
step
Enter the tunnel |goto Loch Modan 12.70,58.50 < 5 |only if walking
click Dwarven Corpse
turnin The Lost Pilot##26854 |goto Dun Morogh 87.64,50.14
accept A Pilot's Revenge##26855 |goto Dun Morogh 87.64,50.14
step
kill Mangeclaw##1961
collect Mangy Claw##3183 |q 26855/1 |goto Dun Morogh 87.50,50.20
step
Enter the tunnel |goto Dun Morogh 89.60,51.80 < 5 |only if walking
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##26855 |goto Loch Modan 14.00,56.50
accept South Gate Status Report##13635 |goto Loch Modan 14.00,56.50
step
Enter the tunnel |goto Loch Modan 16.40,58.50 < 5 |only if walking
talk Captain Rugelfuss##1092
turnin South Gate Status Report##13635 |goto Loch Modan 23.40,75.00
accept In Defense of the King's Lands##26146 |goto Loch Modan 23.40,75.00
step
talk Mountaineer Cobbleflint##1089
accept The Trogg Threat##26145 |goto Loch Modan 23.30,74.90
step
Follow this path southeast |goto Loch Modan 29.30,66.70 < 5 |only if walking
kill 12 Stonesplinter Trogg##1161 |q 26146/1 |goto Loch Modan 31.50,74.60
collect 8 Trogg Stone Tooth##2536 |q 26145/1 |goto Loch Modan 31.50,74.60
step
Go back to the road |goto Loch Modan 30.50,69.70 < 5 |only if walking
talk Captain Rugelfuss##1092
turnin In Defense of the King's Lands##26146 |goto Loch Modan 23.40,75.00
accept A Decisive Strike##26148 |goto Loch Modan 23.40,75.00
step
talk Mountaineer Cobbleflint##1089
turnin The Trogg Threat##26145 |goto Loch Modan 23.30,74.90
step
talk Mountaineer Wallbang##1090
accept Bigger and Uglier##26147 |goto Loch Modan 23.30,75.10
stickystart "stonebone"
step
Follow this path southeast |goto Loch Modan 29.30,66.70 < 5 |only if walking
Enter the cave |goto Loch Modan 33.10,69.30 < 5 |walk
Jump down here |goto Loch Modan 35.26,65.30 < 5 |walk
Go up the path |goto Loch Modan 34.77,59.33 < 5 |walk
|tip Follow the path in the cave down, around, and then up again.
kill Grawmug##42230 |q 26148/1 |goto Loch Modan 34.30,61.00
step
label "stonebone"
kill 8 Stonesplinter Shaman##1197 |q 26147/1 |goto Loch Modan 35.50,64.90
kill 8 Stonesplinter Bonesnapper##1164 |q 26147/2 |goto Loch Modan 35.50,64.90
step
Leave the cave |goto Loch Modan/0 33.02,69.22 < 5 |walk
Go back to the road |goto Loch Modan/0 30.50,69.70 < 5 |only if walking
talk Captain Rugelfuss##1092
turnin A Decisive Strike##26148 |goto Loch Modan/0 23.40,75.00
accept Onward to Thelsamar##26176 |goto Loch Modan/0 23.40,75.00
step
talk Mountaineer Wallbang##1090
turnin Bigger and Uglier##26147 |goto Loch Modan/0 23.30,75.10
step
Follow the path |goto Loch Modan/0 23.18,70.53 < 5 |only if walking
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto Loch Modan/0 33.90,51.00
step
talk Mountaineer Kadrell##1340
turnin Onward to Thelsamar##26176 |goto Loch Modan/0 35.10,46.60
accept Out of Gnoll-Where##26842 |goto Loch Modan/0 35.10,46.60
accept Stormpike's Order##13636 |goto Loch Modan/0 35.10,46.60
step
talk Innkeeper Hearthstove##6734
home Stoutlager Inn |goto Loch Modan/0 35.50,48.40
step
talk Vidra Hearthstove##1963
accept Thelsamar Blood Sausages##26860 |goto Loch Modan/0 34.80,49.30
step
Go up the path |goto Loch Modan/0 35.33,45.25 < 5 |only if walking
talk Dakk Blunderblast##1777
|tip He walks around this area.
accept Looking for Lurkers##25118 |goto Loch Modan/0 35.87,43.63
step
click Wanted! Poster##17
|tip It looks like a wooden sign with pictures on it next to a well.
accept Wanted: The Dark Iron Spy##13648 |goto Loch Modan/0 37.30,46.50
step
click Stolen Explorers' League Document##194390
|tip It looks like a rolled up scroll on the ground under this small wooden platform.
accept Explorers' League Document (2 of 6)##13655 |goto Loch Modan/0 41.40,39.00
stickystart "Bear_Rumps"
stickystart "Forest_Lurkers"
step
Go up the hill |goto Loch Modan/0 39.94,38.11 < 10 |only if walking
Follow the path |goto Loch Modan/0 38.28,47.77 < 20 |only if walking
Follow the path up |goto Loch Modan/0 40.70,58.40 < 15 |only if walking
Continue up the path |goto Loch Modan/0 40.25,61.32 < 15 |only if walking
Continue up the path |goto Loch Modan/0 39.13,62.14 < 15 |only if walking
kill Gorick Guzzledraught##33456 |q 13648/1 |goto Loch Modan/0 36.71,61.12
|tip Inside the small cave.
step
click Stolen Explorers' League Document##194390
|tip Inside the small cave.
accept Explorers' League Document (1 of 6)##13656 |goto Loch Modan/0 36.75,61.11
step
Follow the path down |goto Loch Modan/0 38.53,62.21 < 15 |only if walking
Continue down the path |goto Loch Modan/0 39.68,62.11 < 15 |only if walking
Continue down the path |goto Loch Modan/0 40.49,60.34 < 15 |only if walking
Follow the path |goto Loch Modan/0 40.63,57.09 < 20 |only if walking
Follow the path |goto Loch Modan/0 39.27,53.35 < 20 |only if walking
Follow the path |goto Loch Modan/0 35.92,53.04 < 20 |only if walking
Kill Mosshide enemies around this area
collect 12 Mosshide Ear##60402 |q 26842/1 |goto Loch Modan/0 27.61,49.94
step
label "Bear_Rumps"
kill Black Bear##1186+
collect 8 Bear Rump##60497 |q 26860/1 |goto Loch Modan/0 32.39,35.87
step
label "Forest_Lurkers"
kill 8 Forest Lurker##1195 |q 25118/1 |goto Loch Modan/0 32.39,35.87
step
Follow the path down |goto Loch Modan/0 38.72,35.87 < 20 |only if walking
click Stolen Explorers' League Document##194390
|tip Under the dock.
accept Explorers' League Document (2 of 6)##13655 |goto Loch Modan/0 41.37,38.98
step
Follow the path up |goto Loch Modan/0 39.67,38.18 < 15 |only if walking
Follow the path |goto Loch Modan/0 38.29,38.60 < 20 |only if walking
talk Torren Squarejaw##1153
|tip He may be standing outside the building.
turnin Explorers' League Document (1 of 6)##13656 |goto Loch Modan/0 37.23,47.79
turnin Explorers' League Document (2 of 6)##13655 |goto Loch Modan/0 37.23,47.79
step
talk Mountaineer Kadrell##1340
turnin Out of Gnoll-Where##26842 |goto Loch Modan/0 35.07,46.58
step
talk Vidra Hearthstove##1963
|tip Inside the building.
turnin Thelsamar Blood Sausages##26860 |goto Loch Modan/0 34.83,49.28
step
talk Magistrate Bluntnose##1139
turnin Wanted: The Dark Iron Spy##13648 |goto Loch Modan/0 34.60,44.46
step
Follow the path up |goto Loch Modan/0 35.25,45.33 < 15 |only if walking
talk Dakk Blunderblast##1777
|tip He walks around this area.
turnin Looking for Lurkers##25118 |goto Loch Modan/0 35.42,42.87
step
talk Mountaineer Stormpike##1343
turnin Stormpike's Order##13636 |goto Loch Modan/0 25.40,18.00
accept A Tiny, Clever Commander##26843 |goto Loch Modan/0 25.40,18.00
step
Enter the cave |goto Loch Modan/0 25.34,30.53 < 10 |walk
kill "Commander" Nazrim##44197 |q 26843/1 |goto Loch Modan/0 26.20,31.80
step
talk Mountaineer Stormpike##1343
turnin A Tiny, Clever Commander##26843 |goto Loch Modan/0 25.40,18.00
accept Kobold and Kobolder##26844 |goto Loch Modan/0 25.40,18.00
step
kill 5 Tunnel Rat Surveyor##1177 |q 26844/1 |goto Loch Modan/0 35.50,12.50
kill 5 Tunnel Rat Forager##1176 |q 26844/2 |goto Loch Modan/0 35.50,12.50
step
talk Mountaineer Stormpike##1343
turnin Kobold and Kobolder##26844 |goto Loch Modan/0 25.40,18.00
accept Who's In Charge Here?##26845 |goto Loch Modan/0 25.40,18.00
accept Filthy Paws##26863 |goto Loch Modan/0 25.40,18.00
step
talk Scout Dorli##44200
accept A Nasty Exploit##26846 |goto Loch Modan/0 25.40,17.80
stickystart "tunnelrat"
stickystart "Miners_Gear"
step
Enter the cave |goto Loch Modan/0 35.40,18.60 < 5 |walk
kill Foreman Sharpsneer##44198
collect Foreman Sharpsneer's Head##60404 |q 26845/1 |goto Loch Modan/0 34.70,27.20
step
label "tunnelrat"
kill 5 Tunnel Rat Geomancer##1174 |q 26846/1 |goto Loch Modan/0 35.50,27.80
step
label "Miners_Gear"
click Miner's League Crates
|tip They look like piles of wooden boxes inside the cave.
collect 6 Miners' Gear##2640 |q 26863/1 |goto Loch Modan/0 35.50,27.80
step
Leave the cave |goto Loch Modan/0 35.40,18.60 < 5 |walk
talk Mountaineer Stormpike##1343
turnin Who's In Charge Here?##26845 |goto Loch Modan/0 25.40,18.00
accept The Bearer of Gnoll-edge##26864 |goto Loch Modan/0 25.40,18.00
turnin Filthy Paws##26863 |goto Loch Modan/0 25.40,18.00
step
talk Scout Dorli##44200
turnin A Nasty Exploit##26846 |goto Loch Modan/0 25.40,17.80
step
talk Mountaineer Kadrell##1340
turnin The Bearer of Gnoll-edge##26864 |goto Loch Modan/0 35.10,46.60
accept Suddenly, Murlocs!##26927 |goto Loch Modan/0 35.10,46.60
step
map Ironforge
To continue gaining reputation with the Ironforge faction:
You can buy an Ironforge Tabard from Captain Stonehelm at [Ironforge 55.90,47.90]
|tip Wear the Ironforge Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
_
To continue gaining reputation with the Gnomeregan faction:
You can buy a Gnomeregan Tabard from Master Tinker Trini at [Ironforge 56.20,48.50]
|tip Wear the Gnomeregan Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Home Cities Reputation\\Ironforge & Gnomeregan\\Gnome",{
description="This guide will help you to get Exalted reputation with the Ironforge and Gnomeregan factions. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={10873,10969,17453,17454,23225,23223,23222},
},[[
step
You will not be able to do some of the quests in this section if you are not a Gnome.
confirm
step
talk Nevin Twistwrench##45966
accept Pinned Down##27670 |goto Dun Morogh/0 34.00,32.20
step
kill 6 Crazed Leper Gnome##46391+ |q 27670/1 |goto Dun Morogh/0 43.89,32.84
step
talk Nevin Twistwrench##45966
turnin Pinned Down##27670 |goto Dun Morogh/0 34.00,32.20
accept Report to Carvo Blastbolt##28167 |goto Dun Morogh/0 34.00,32.20
step
Run up the ramp |goto Dun Morogh/0 47.32,32.39 < 15 |walk
talk Carvo Blastbolt##47250
turnin Report to Carvo Blastbolt##28167 |goto Dun Morogh/0 50.90,31.90
accept See to the Survivors##27671 |goto Dun Morogh/0 50.90,31.90
step
Use your Teleport Beacon on Survivors |use Teleport Beacon##62057
|tip They look like cowering, unclothed gnomes around this area.
Rescue #6# Survivors |q 27671/1 |goto Dun Morogh/0 61.30,34.80
step
Run up the ramp |goto Dun Morogh/0 58.77,33.89 < 15 |walk
talk Carvo Blastbolt##47250
turnin See to the Survivors##27671 |goto Dun Morogh/0 50.90,31.90
accept Withdraw to the Loading Room!##28169 |goto Dun Morogh/0 50.90,31.90
step
Follow the path |goto Dun Morogh/0 52.63,37.08 < 15 |walk
Run up the stairs |goto Dun Morogh/0 52.14,63.97 < 15 |walk
Follow the path |goto Dun Morogh/0 54.00,74.87 < 15 |walk
talk Gaffer Coilspring##46274
turnin Withdraw to the Loading Room!##28169 |goto Dun Morogh/0 53.10,82.20
accept Decontamination##27635 |goto Dun Morogh/0 53.10,82.20
step
clicknpc Sanitron 500##46185
Start the Decontamination Process |q 27635/1 |goto Dun Morogh/0 58.80,81.70
step
talk Technician Braggle##46255
turnin Decontamination##27635 |goto Dun Morogh/0 66.30,81.60
accept To the Surface##27674 |goto Dun Morogh/0 66.30,81.60
step
talk Torben Zapblast##46293
Select _"Send me to the surface, Torben."_
Speak to Torben Zapblast |q 27674/1 |goto Dun Morogh/0 67.20,84.00
step
talk Nevin Twistwrench##42396
turnin To the Surface##27674
accept The Future of Gnomeregan##26202 |only Gnome Warlock
accept The Future of Gnomeregan##26197 |only Gnome Mage
accept The Future of Gnomeregan##26203 |only Gnome Warrior
accept The Future of Gnomeregan##26206 |only Gnome Rogue
accept The Future of Gnomeregan##26199 |only Gnome Priest
accept The Future of Gnomeregan##31135 |only Gnome Monk
accept The Future of Gnomeregan##41217 |only Gnome Hunter
step
talk "Doc" Cogspin##42323
turnin The Future of Gnomeregan##26199 |goto Dun Morogh/0 39.40,28.40
accept Meet the High Tinker##26422 |goto Dun Morogh/0 39.40,28.40
|only Gnome Priest
step
talk Kelsey Steelspark##42366
turnin The Future of Gnomeregan##26206 |goto Dun Morogh/0 38.00,33.60
accept Meet the High Tinker##26423 |goto Dun Morogh/0 38.00,33.60
|only Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
turnin The Future of Gnomeregan##26203 |goto Dun Morogh/0 40.60,35.40
accept Meet the High Tinker##26425 |goto Dun Morogh/0 40.60,35.40
|only Gnome Warrior
step
talk Bipsi Frostflinger##42331
turnin he Future of Gnomeregan##26197 |goto Dun Morogh/0 41.10,29.10
accept Meet the High Tinker##26421 |goto Dun Morogh/0 41.10,29.10
|only Gnome Mage
step
Leave the building |goto Dun Morogh/0 39.58,37.35 < 10 |only if walking
talk Alamar Grimm##460
turnin The Future of Gnomeregan##26202 |goto Dun Morogh/0 37.70,38.00
accept Meet the High Tinker##26424 |goto Dun Morogh/0 37.70,38.00
|only Gnome Warlock
step
talk Xi, Friend to the Small##63238
turnin The Future of Gnomeregan##31135 |goto Dun Morogh/0 40.10,35.60
accept Meet the High Tinker##31137 |goto Dun Morogh/0 40.10,35.60
|only Gnome Monk
step
talk Muffinus Chromebrew##103614
turnin The Future of Gnomeregan##41217 |goto Dun Morogh/0 41.90,31.60
accept Meet the High Tinker##41218 |goto Dun Morogh/0 41.90,31.60
|only Gnome Hunter
step
talk High Tinker Mekkatorque##42317
turnin Meet the High Tinker##31137 |goto Dun Morogh/0 38.70,32.80 |only Gnome Monk
turnin Meet the High Tinker##26424 |goto Dun Morogh/0 38.70,32.80 |only Gnome Warlock
turnin Meet the High Tinker##26421 |goto Dun Morogh/0 38.70,32.80 |only Gnome Mage
turnin Meet the High Tinker##26425 |goto Dun Morogh/0 38.70,32.80 |only Gnome Warrior
turnin Meet the High Tinker##26423 |goto Dun Morogh/0 38.70,32.80 |only Gnome Rogue
turnin Meet the High Tinker##26422 |goto Dun Morogh/0 38.70,32.80 |only Gnome Priest
turnin Meet the High Tinker##41218 |goto Dun Morogh/0 38.70,32.80 |only Gnome Hunter
accept The Fight Continues##26208 |goto Dun Morogh/0 38.70,32.80
step
Watch the dialogue
Learn about Operation: Gnomeregan |q 26208/1 |goto Dun Morogh/0 38.64,32.90
step
talk High Tinker Mekkatorque##42317
turnin The Fight Continues##26208 |goto Dun Morogh/0 38.64,32.90
accept A Triumph of Gnomish Ingenuity##26566 |goto Dun Morogh/0 38.64,32.90
step
talk Engineer Grindspark##42553
turnin A Triumph of Gnomish Ingenuity##26566 |goto Dun Morogh/0 40.60,28.10
accept Scrounging for Parts##26222 |goto Dun Morogh/0 40.60,28.10
step
click Spare Part##203964
|tip They look like metal machine parts on the ground all around this area, and inside buildings.
collect 7 Spare Part##57764 |q 26222/1 |goto Dun Morogh/0 39.74,30.27
step
talk Engineer Grindspark##42553
turnin Scrounging for Parts##26222 |goto Dun Morogh/0 40.60,28.10
accept A Job for the Multi-Bot##26205 |goto Dun Morogh/0 40.60,28.10
step
talk Tock Sprysprocket##42611
accept What's Left Behind##26264 |goto Dun Morogh/0 39.20,26.60
step
talk Corporal Fizzwhistle##42630
|tip He's outside, behind the building.
accept Dealing with the Fallout##26265 |goto Dun Morogh/0 38.20,40.20
stickystart "Kill_Living_Contaminants"
stickystart "Collect_Recovered_Possessions"
step
Stand Next to Toxic Geysers
|tip They look like green spots that spew up green liquid in the green pools around this area.
Clean Up #5# Toxic Geysers |q 26205/1 |goto Dun Morogh/0 37.10,50.60
step
label "Kill_Living_Contaminants"
kill 6 Living Contamination##42185+ |q 26265/1 |goto Dun Morogh/0 37.10,50.60
step
label "Collect_Recovered_Possessions"
kill Toxic Sludge##42184+
collect 6 Recovered Possession##57987 |q 26264/1 |goto Dun Morogh/0 37.10,50.60
step
talk Corporal Fizzwhistle##42630
turnin Dealing with the Fallout##26265 |goto Dun Morogh/0 38.20,40.20
step
talk Engineer Grindspark##42553
turnin A Job for the Multi-Bot##26205 |goto Dun Morogh/0 40.60,28.10
step
talk Tock Sprysprocket##42611
turnin What's Left Behind##26264 |goto Dun Morogh/0 39.20,26.60
step
talk Captain Tread Sparknozzle##42489
accept What's Keeping Kharmarn?##26316 |goto Dun Morogh/0 38.40,33.50
step
talk Kharmarn Palegrip##42708
turnin What's Keeping Kharmarn?##26316 |goto Dun Morogh/0 37.30,65.20
accept Get Me Explosives Back!##26285 |goto Dun Morogh/0 37.30,65.20
accept Missing in Action##26284 |goto Dun Morogh/0 37.30,65.20
stickystart "Stolen_Powder_Kegs"
step
click Makeshift Cages
|tip They look like bone cages with brown animal hides laying on them around this area.
Rescue #6# Captured Demolitionists |q 26284/1 |goto Dun Morogh/0 36.80,68.40
step
label "Stolen_Powder_Kegs"
Kill enemies around this area
collect 7 Stolen Powder Keg##58202 |q 26285/1 |goto Dun Morogh/0 36.80,68.40
step
talk Kharmarn Palegrip##42708
turnin Get Me Explosives Back!##26285 |goto Dun Morogh/0 37.30,65.20
turnin Missing in Action##26284 |goto Dun Morogh/0 37.30,65.20
accept Finishin' the Job##26318 |goto Dun Morogh/0 37.30,65.20
step
kill Boss Bruggor##42773 |q 26318/2
|tip He paces in the back of the cave.
step
click Detonator##240525
Detonate the Trogg Tunnel |q 26318/1 |goto Dun Morogh/0 35.40,40.90
step
Follow the path up |goto Dun Morogh/0 33.13,70.69 < 15 |walk
Continue up the path |goto Dun Morogh/0 63.44,71.08 < 15 |walk
Follow the path |goto Dun Morogh/0 77.85,36.62 < 15 |walk
talk Kharmarn Palegrip##42708
turnin Finishin' the Job##26318
accept One More Thing##26329
step
talk High Tinker Mekkatorque##42317
turnin One More Thing##26329 |goto Dun Morogh/0 38.80,32.70
accept Crushcog's Minions##26331 |goto Dun Morogh/0 38.80,32.70
step
talk Hinkles Fastblast##42491
accept No Tanks!##26333 |goto Dun Morogh/0 38.20,33.70
stickystart "Kill_Crushcogs_Minions"
step
Follow the road |goto Dun Morogh/0 44.15,32.43 < 20 |only if walking
Use the Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200
|tip They look like yellow crab machines around this area.
Destroy #5# Repaired Mechano-Tanks |q 26333/1 |goto Dun Morogh/0 53.20,24.00
step
label "Kill_Crushcogs_Minions"
Kill enemies around this area
Kill #8# Crushcog's Minions |q 26331/1 |goto Dun Morogh/0 53.20,24.00
step
Follow the road |goto Dun Morogh/0 47.22,31.77 < 20 |only if walking
talk High Tinker Mekkatorque##42317
turnin Crushcog's Minions##26331 |goto Dun Morogh/0 38.80,32.70
step
talk Hinkles Fastblast##42491
turnin No Tanks!##26333 |goto Dun Morogh/0 38.20,33.70
step
talk Kelsey Steelspark##42366
accept Staging in Brewnall##26339 |goto Dun Morogh/0 38.00,33.60
step
talk Jarvi Shadowstep##42353
turnin Staging in Brewnall##26339 |goto Dun Morogh/0 48.70,52.90
accept Paint it Black##26342 |goto Dun Morogh/0 48.70,52.90
step
Use the Paintinator on Crushcog Sentry-Bots |use Paintinator##58203
Blind #5# Crushcog's Sentry-Bots |q 26342/1 |goto Dun Morogh/0 53.50,45.80
step
talk Jarvi Shadowstep##42353
turnin Paint it Black##26342 |goto Dun Morogh/0 48.70,52.90
accept Down with Crushcog!##26364 |goto Dun Morogh/0 48.70,52.90
step
talk High Tinker Mekkatorque##42849
Talk to High Tinker Mekkatorque |q 26364/1 |goto Dun Morogh/0 57.20,47.50
step
talk High Tinker Mekkatorque##42849
Select _"I'm ready to start the assault."_
|tip Follow your allies into battle.
Use the Orbital Targeting Device on Razlo Crushcog |use Orbital Targeting Device##58253
Defeat Razlo Crushcog |q 26364/2 |goto Dun Morogh/0 57.20,47.50
step
talk Jarvi Shadowstep##42353
turnin Down with Crushcog!##26364 |goto Dun Morogh/0 48.70,52.90
accept On to Kharanos##26373 |goto Dun Morogh/0 48.70,52.90
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Home Cities Reputation\\Stormwind\\Human",{
description="This guide will help you to get Exalted reputation with the Stormwind faction. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
endlevel=10
},[[
step
You will not be able to do some of the quests in this section if you are not a Human.
confirm
step
talk Marshal McBride##197
accept Beating them Back!##28757 |goto Elwynn Forest/0 33.60,53.00 |only Human Mage
accept Beating them Back!##28762 |goto Elwynn Forest/0 33.60,53.00 |only Human Paladin
accept Beating them Back!##28763 |goto Elwynn Forest/0 33.60,53.00 |only Human Priest
accept Beating them Back!##28764 |goto Elwynn Forest/0 33.60,53.00 |only Human Rogue
accept Beating them Back!##28765 |goto Elwynn Forest/0 33.60,53.00 |only Human Warlock
accept Beating them Back!##28766 |goto Elwynn Forest/0 33.60,53.00 |only Human Warrior
accept Beating them Back!##28767 |goto Elwynn Forest/0 33.60,53.00 |only Human Hunter
accept Beating Them Back!##31139 |goto Elwynn Forest/0 33.60,53.00 |only Human Monk
step
kill 6 Blackrock Battle Worg##49871+ |q 28757/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Mage
kill 6 Blackrock Battle Worg##49871+ |q 28762/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Paladin
kill 6 Blackrock Battle Worg##49871+ |q 28763/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Priest
kill 6 Blackrock Battle Worg##49871+ |q 28764/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Rogue
kill 6 Blackrock Battle Worg##49871+ |q 28765/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Warlock
kill 6 Blackrock Battle Worg##49871+ |q 28766/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Warrior
kill 6 Blackrock Battle Worg##49871+ |q 28767/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Hunter
kill 6 Blackrock Battle Worg##49871+ |q 31139/1 |goto Elwynn Forest/0 29.00,42.90 |only Human Monk
step
talk Marshal McBride##197
turnin Beating them Back!##28757 |goto Elwynn Forest/0 33.60,53.00 |only Human Mage
accept Lions for Lambs##28769 |goto Elwynn Forest/0 33.60,53.00 |only Human Mage
turnin Beating them Back!##28762 |goto Elwynn Forest/0 33.60,53.00 |only Human Paladin
accept Lions for Lambs##28770 |goto Elwynn Forest/0 33.60,53.00 |only Human Paladin
turnin Beating them Back!##28763 |goto Elwynn Forest/0 33.60,53.00 |only Human Priest
accept Lions for Lambs##28771 |goto Elwynn Forest/0 33.60,53.00 |only Human Priest
turnin Beating them Back!##28764 |goto Elwynn Forest/0 33.60,53.00 |only Human Rogue
accept Lions for Lambs##28772 |goto Elwynn Forest/0 33.60,53.00 |only Human Rogue
turnin Beating them Back!##28765 |goto Elwynn Forest/0 33.60,53.00 |only Human Warlock
accept Lions for Lambs##28773 |goto Elwynn Forest/0 33.60,53.00 |only Human Warlock
turnin Beating them Back!##28766 |goto Elwynn Forest/0 33.60,53.00 |only Human Warrior
accept Lions for Lambs##28774 |goto Elwynn Forest/0 33.60,53.00 |only Human Warrior
turnin Beating them Back!##28767 |goto Elwynn Forest/0 33.60,53.00 |only Human Hunter
accept Lions for Lambs##28759 |goto Elwynn Forest/0 33.60,53.00 |only Human Hunter
turnin Beating Them Back!##31139 |goto Elwynn Forest/0 33.60,53.00 |only Human Monk
accept Lions for Lambs##31140 |goto Elwynn Forest/0 33.60,53.00 |only Human Monk
step
kill 8 Blackrock Spy##49874+ |q 28769/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Mage
kill 8 Blackrock Spy##49874+ |q 28770/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Paladin
kill 8 Blackrock Spy##49874+ |q 28771/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Priest
kill 8 Blackrock Spy##49874+ |q 28772/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Rogue
kill 8 Blackrock Spy##49874+ |q 28773/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Warlock
kill 8 Blackrock Spy##49874+ |q 28774/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Warrior
kill 8 Blackrock Spy##49874+ |q 28759/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Hunter
kill 8 Blackrock Spy##49874+ |q 31140/1 |goto Elwynn Forest/0 25.40,41.10 |only Human Monk
|tip They creep around near the trees around this area.
step
talk Marshal McBride##197
turnin Lions for Lambs##28769 |goto Elwynn Forest/0 33.60,53.00 |only Human Mage
turnin Lions for Lambs##28770 |goto Elwynn Forest/0 33.60,53.00 |only Human Paladin
turnin Lions for Lambs##28771 |goto Elwynn Forest/0 33.60,53.00 |only Human Priest
turnin Lions for Lambs##28772 |goto Elwynn Forest/0 33.60,53.00 |only Human Rogue
turnin Lions for Lambs##28773 |goto Elwynn Forest/0 33.60,53.00 |only Human Warlock
turnin Lions for Lambs##28774 |goto Elwynn Forest/0 33.60,53.00 |only Human Warrior
turnin Lions for Lambs##28759 |goto Elwynn Forest/0 33.60,53.00 |only Human Hunter
turnin Lions for Lambs##31140 |goto Elwynn Forest/0 33.60,53.00 |only Human Monk
step
talk Khelden Bremen##198
accept Join the Battle!##28784 |goto Elwynn Forest/0 38.80,43.50
only Human Mage
step
talk Jorik Kerridan##915
accept Join the Battle!##28787 |goto Elwynn Forest/0 41.20,45.40
only Human Rogue
step
talk Drusilla La Salle##459
accept Join the Battle!##28788 |goto Elwynn Forest/0 39.60,55.10
only Human Warlock
step
talk Ashley Blank##43278
accept Join the Battle!##28780 |goto Elwynn Forest/0 34.80,54.80
only Human Hunter
step
talk Priestess Anetta##375
accept Joining the Battle!##28786 |goto Elwynn Forest/0 39.30,43.80
only Human Priest
step
talk Brother Sammuel##925
accept Join the Battle!##28785 |goto Elwynn Forest/0 41.50,53.20
only Human Paladin
step
talk Llane Beshere##911
accept Join the Battle!##28789 |goto Elwynn Forest/0 40.90,53.80
only Human Warrior
step
talk Bao##63258
accept Join the Battle!##31143 |goto Elwynn Forest/0 41.20,52.10
only Human Monk
step
talk Sergeant Willem##823
turnin Join the Battle!##28789 |goto Elwynn Forest/0 35.70,39.80 |only Human Warrior
accept They Sent Assassins##28797 |goto Elwynn Forest/0 35.70,39.80 |only Human Warrior
turnin Join the Battle!##28785 |goto Elwynn Forest/0 35.70,39.80 |only Human Paladin
accept They Sent Assassins##28793 |goto Elwynn Forest/0 35.70,39.80 |only Human Paladin
turnin Join the Battle!##28780 |goto Elwynn Forest/0 35.70,39.80 |only Human Hunter
accept They Sent Assassins##28791 |goto Elwynn Forest/0 35.70,39.80 |only Human Hunter
turnin Join the Battle!##28786 |goto Elwynn Forest/0 35.70,39.80 |only Human Priest
accept They Sent Assassins##28794 |goto Elwynn Forest/0 35.70,39.80 |only Human Priest
turnin Join the Battle!##28788 |goto Elwynn Forest/0 35.70,39.80 |only Human Warlock
accept They Sent Assassins##28796 |goto Elwynn Forest/0 35.70,39.80 |only Human Warlock
turnin Join the Battle!##28784 |goto Elwynn Forest/0 35.70,39.80 |only Human Mage
accept They Sent Assassins##28792 |goto Elwynn Forest/0 35.70,39.80 |only Human Mage
turnin Join the Battle!##28787 |goto Elwynn Forest/0 35.70,39.80 |only Human Rogue
accept They Sent Assassins##28795 |goto Elwynn Forest/0 35.70,39.80 |only Human Rogue
turnin Join the Battle!##31143 |goto Elwynn Forest/0 35.70,39.80 |only Human Monk
accept They Sent Assassins##31144 |goto Elwynn Forest/0 35.70,39.80 |only Human Monk
step
talk Brother Paxton##951
accept Fear No Evil##28813 |goto Elwynn Forest/0 34.70,38.80 |only Human Warrior
accept Fear No Evil##28809 |goto Elwynn Forest/0 34.70,38.80 |only Human Paladin
accept Fear No Evil##28806 |goto Elwynn Forest/0 34.70,38.80 |only Human Hunter
accept Fear No Evil##28810 |goto Elwynn Forest/0 34.70,38.80 |only Human Priest
accept Fear No Evil##28812 |goto Elwynn Forest/0 34.70,38.80 |only Human Warlock
accept Fear No Evil##28808 |goto Elwynn Forest/0 34.70,38.80 |only Human Mage
accept Fear No Evil##28811 |goto Elwynn Forest/0 34.70,38.80 |only Human Rogue
step
kill 8 Goblin Assassin##50039+ |q 28797/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Warrior
kill 8 Goblin Assassin##50039+ |q 28793/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Paladin
kill 8 Goblin Assassin##50039+ |q 28791/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Hunter
kill 8 Goblin Assassin##50039+ |q 28794/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Priest
kill 8 Goblin Assassin##50039+ |q 28796/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Warlock
kill 8 Goblin Assassin##50039+ |q 28792/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Mage
kill 8 Goblin Assassin##50039+ |q 28795/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Rogue
kill 8 Goblin Assassin##50039+ |q 31144/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Monk
clicknpc Injured Stormwind Infantry##50047
Revive 4 Injured Soldiers |q 28813/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Warrior
Revive 4 Injured Soldiers |q 28809/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Paladin
Revive 4 Injured Soldiers |q 28806/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Hunter
Revive 4 Injured Soldiers |q 28810/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Priest
Revive 4 Injured Soldiers |q 28812/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Warlock
Revive 4 Injured Soldiers |q 28808/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Mage
Revive 4 Injured Soldiers |q 28811/1 |goto Elwynn Forest/0 30.70,29.10 |only Human Rogue
step
talk Brother Paxton##951
turnin Fear No Evil##28813 |goto Elwynn Forest/0 34.70,38.80 |only Human Warrior
turnin Fear No Evil##28809 |goto Elwynn Forest/0 34.70,38.80 |only Human Paladin
turnin Fear No Evil##28806 |goto Elwynn Forest/0 34.70,38.80 |only Human Hunter
turnin Fear No Evil##28810 |goto Elwynn Forest/0 34.70,38.80 |only Human Priest
turnin Fear No Evil##28812 |goto Elwynn Forest/0 34.70,38.80 |only Human Warlock
turnin Fear No Evil##28808 |goto Elwynn Forest/0 34.70,38.80 |only Human Mage
turnin Fear No Evil##28811 |goto Elwynn Forest/0 34.70,38.80 |only Human Rogue
step
talk Sergeant Willem##823
turnin They Sent Assassins##28797 |goto Elwynn Forest/0 35.70,39.80 |only Human Warrior
turnin They Sent Assassins##28793 |goto Elwynn Forest/0 35.70,39.80 |only Human Paladin
turnin They Sent Assassins##28791 |goto Elwynn Forest/0 35.70,39.80 |only Human Hunter
turnin They Sent Assassins##28794 |goto Elwynn Forest/0 35.70,39.80 |only Human Priest
turnin They Sent Assassins##28796 |goto Elwynn Forest/0 35.70,39.80 |only Human Warlock
turnin They Sent Assassins##28792 |goto Elwynn Forest/0 35.70,39.80 |only Human Mage
turnin They Sent Assassins##28795 |goto Elwynn Forest/0 35.70,39.80 |only Human Rogue
turnin They Sent Assassins##31144 |goto Elwynn Forest/0 35.70,39.80 |only Human Monk
accept The Rear is Clear##28823 |goto Elwynn Forest/0 35.70,39.80 |only Human Warrior
accept The Rear is Clear##28819 |goto Elwynn Forest/0 35.70,39.80 |only Human Paladin
accept The Rear is Clear##28817 |goto Elwynn Forest/0 35.70,39.80 |only Human Hunter
accept The Rear is Clear##28820 |goto Elwynn Forest/0 35.70,39.80 |only Human Priest
accept The Rear is Clear##28822 |goto Elwynn Forest/0 35.70,39.80 |only Human Warlock
accept The Rear is Clear##28818 |goto Elwynn Forest/0 35.70,39.80 |only Human Mage
accept The Rear is Clear##28821 |goto Elwynn Forest/0 35.70,39.80 |only Human Rogue
accept The Rear is Clear##31145 |goto Elwynn Forest/0 35.70,39.80 |only Human Monk
step
talk Marshal McBride##197
turnin The Rear is Clear##28823 |goto Elwynn Forest/0 33.60,53.00 |only Human Warrior
turnin The Rear is Clear##28819 |goto Elwynn Forest/0 33.60,53.00 |only Human Paladin
turnin The Rear is Clear##28817 |goto Elwynn Forest/0 33.60,53.00 |only Human Hunter
turnin The Rear is Clear##28820 |goto Elwynn Forest/0 33.60,53.00 |only Human Priest
turnin The Rear is Clear##28822 |goto Elwynn Forest/0 33.60,53.00 |only Human Warlock
turnin The Rear is Clear##28818 |goto Elwynn Forest/0 33.60,53.00 |only Human Mage
turnin The Rear is Clear##28821 |goto Elwynn Forest/0 33.60,53.00 |only Human Rogue
turnin The Rear is Clear##31145 |goto Elwynn Forest/0 33.60,53.00 |only Human Monk
accept Blackrock Invasion##26389 |goto Elwynn Forest/0 33.60,53.00
step
talk Milly Osworth##9296
accept Extinguishing Hope##26391 |goto Elwynn Forest/0 33.40,54.70
step
kill Blackrock Invader##42937+
collect 8 Blackrock Orc Weapon##58361 |q 26389/1 |goto Elwynn Forest/0 54.40,78.60
Use Milly's Fire Extinguisher on the fires in the area |use Milly's Fire Extinguisher##58362
Extinguish 8 Vineyard fires |q 26391/1 |goto Elwynn Forest/0 54.40,78.60
step
talk Milly Osworth##9296
turnin Extinguishing Hope##26391 |goto Elwynn Forest/0 33.40,54.70
step
talk Marshal McBride##197
turnin Blackrock Invasion##26389 |goto Elwynn Forest/0 33.60,53.00
accept Ending the Invasion!##26390 |goto Elwynn Forest/0 33.60,53.00
step
kill Kurtok the Slayer##42938 |q 26390/1 |goto Elwynn Forest/0 65.10,48.10
step
talk Marshal McBride##197
turnin Ending the Invasion!##26390 |goto Elwynn Forest/0 33.60,53.00
accept Report to Goldshire##54 |goto Elwynn Forest/0 33.60,53.00
step
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##2158 |goto Elwynn Forest/0 45.37,49.00
step
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto Elwynn Forest/0 42.10,65.90
accept The Fargodeep Mine##62 |goto Elwynn Forest/0 42.10,65.90
step
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto Elwynn Forest/0 42.10,67.30
step
talk William Pestle##253
accept Kobold Candles##60 |goto Elwynn Forest/0 43.30,65.70
step
talk Innkeeper Farley##295
turnin Rest and Relaxation##2158 |goto Elwynn Forest/0 43.80,65.80
step
talk Innkeeper Farley##295
home Lion's Pride Inn |goto Elwynn Forest/0 43.80,65.80
step
talk Smith Argus##514
accept A Swift Message##26393 |goto Elwynn Forest/0 41.70,65.50
only Human
step
talk Bartlett the Brave##42983
turnin A Swift Message##26393 |goto Elwynn Forest/0 41.70,64.60
accept Continue to Stormwind##26394 |goto Elwynn Forest/0 41.70,64.60
only Human
step
talk Osric Strang##1323
turnin Continue to Stormwind##26394 |goto Stormwind City/0 77.20,61.00
accept Dungar Longdrink##26395 |goto Stormwind City/0 77.20,61.00
only Human
step
talk Dungar Longdrink##352
turnin Dungar Longdrink##26395 |goto Stormwind City/0 70.90,72.50
accept Return to Argus##26396 |goto Stormwind City/0 70.90,72.50
only Human
step
talk Smith Argus##514
turnin Return to Argus##26396 |goto Elwynn Forest/0 41.70,65.50
only Human
stickystart "largecandle"
step
Go to this spot inside the mine
Explore the Fargodeep Mine |q 62/1 |goto Elwynn Forest/0 49.90,61.50
step
label "largecandle"
kill Kobold Tunneler##475+, Kobold Miner##40+
collect 10 Gold Dust##773 |q 47/1 |goto Elwynn Forest/0 53.80,60.10
collect 8 Large Candle##772 |q 60/1 |goto Elwynn Forest/0 53.80,60.10
step
talk William Pestle##253
turnin Kobold Candles##60 |goto Elwynn Forest/0 43.30,65.70
accept A Visit With Maybell##26150 |goto Elwynn Forest/0 43.30,65.70
step
talk Marshal Dughan##240
turnin The Fargodeep Mine##62 |goto Elwynn Forest/0 42.10,65.90
accept The Jasperlode Mine##76 |goto Elwynn Forest/0 42.10,65.90
step
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto Elwynn Forest/0 42.10,67.30
step
talk Maybell Maclure##251
turnin A Visit With Maybell##26150 |goto Elwynn Forest/0 43.10,89.60
accept Young Lovers##106 |goto Elwynn Forest/0 43.10,89.60
step
talk "Auntie" Bernice Stonefield##246
accept Lost Necklace##85 |goto Elwynn Forest/0 34.50,84.30
step
talk Tommy Joe Stonefield##252
turnin Young Lovers##106 |goto Elwynn Forest/0 29.80,86.00
accept Speak with Gramma##111 |goto Elwynn Forest/0 29.80,86.00
step
talk Gramma Stonefield##248
turnin Speak with Gramma##111 |goto Elwynn Forest/0 34.90,83.90
accept Note to William##107 |goto Elwynn Forest/0 34.90,83.90
step
talk Billy Maclure##247
turnin Lost Necklace##85 |goto Elwynn Forest/0 43.10,85.70
accept Pie for Billy##86 |goto Elwynn Forest/0 43.10,85.70
step
kill Stonetusk Boar##113+
collect 4 Chunk of Boar Meat##769 |q 86/1 |goto Elwynn Forest/0 42.10,86.60
step
talk "Auntie" Bernice Stonefield##246
turnin Pie for Billy##86 |goto Elwynn Forest/0 34.50,84.30
accept Back to Billy##84 |goto Elwynn Forest/0 34.50,84.30
step
talk Billy Maclure##247
turnin Back to Billy##84 |goto Elwynn Forest/0 43.10,85.70
accept Goldtooth##87 |goto Elwynn Forest/0 43.10,85.70
step
kill Goldtooth##327
collect Bernice's Necklace##981 |q 87/1 |goto Elwynn Forest/0 40.10,80.60
step
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto Elwynn Forest/0 34.50,84.30
step
talk Ma Stonefield##244
accept Princess Must Die!##88 |goto Elwynn Forest/0 34.70,84.50
step
kill Princess##330
collect Brass Collar##1006 |q 88/1 |goto Elwynn Forest/0 33.00,84.70
step
talk Ma Stonefield##244
turnin Princess Must Die!##88 |goto Elwynn Forest/0 34.70,84.50
step
talk Remy "Two Times"##241
accept A Fishy Peril##40 |goto Elwynn Forest/0 42.10,67.30
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto Elwynn Forest/0 42.10,65.90
accept Further Concerns##35 |goto Elwynn Forest/0 42.10,65.90
step
talk William Pestle##253
turnin Note to William##107 |goto Elwynn Forest/0 43.30,65.70
accept Collecting Kelp##112 |goto Elwynn Forest/0 43.30,65.70
step
kill Murloc##285+, Murloc Streamrunner##735+
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto Elwynn Forest/0 49.50,66.30
step
talk William Pestle##253
turnin Collecting Kelp##112 |goto Elwynn Forest/0 43.30,65.70
accept The Escape##114 |goto Elwynn Forest/0 43.30,65.70
step
talk Maybell Maclure##251
turnin The Escape##114 |goto Elwynn Forest/0 43.10,89.60
step
talk Marshal Dughan##240 |goto Elwynn Forest/0 42.10,65.90
Tell him you wish to ride the Stormwind charger
Ride the horse to the east side of Elwynn Forest/0 |goto Elwynn Forest/0 73.90,72.50,0.50 |noway |c
step
talk Guard Thomas##261
turnin Further Concerns##35 |goto Elwynn Forest/0 74.00,72.20 |only if haveq(35)
accept Find the Lost Guards##37 |goto Elwynn Forest/0 74.00,72.20 |only if completedq(35)
accept Protect the Frontier##52 |goto Elwynn Forest/0 74.00,72.20
step
click Bounty Board##232398
accept Bounty on Murlocs##46 |goto Elwynn Forest/0 74.00,72.30
accept Wanted: James Clark##26152 |goto Elwynn Forest/0 74.00,72.30
step
talk Sara Timberlain##278
accept Fine Linen Goods##83 |goto Elwynn Forest/0 79.50,68.70
step
kill James Clark##13159 |q 26152/1 |goto Elwynn Forest/0 78.70,67.10
collect Gold Pickup Schedule##1307 |n
Click the Gold Pickup Schedule in your bags |use Gold Pickup Schedule##1307
accept The Collector##123 |goto Elwynn Forest/0 78.70,67.10
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto Elwynn Forest/0 81.40,66.10
step
talk Marshal Patterson##42256
turnin Wanted: James Clark##26152 |goto Elwynn Forest/0 81.80,66.00
turnin The Collector##123 |goto Elwynn Forest/0 81.80,66.00
accept Manhunt##147 |goto Elwynn Forest/0 81.80,66.00
step
click Half-Eaten body##14
turnin Find the Lost Guards##37 |goto Elwynn Forest/0 72.70,60.30
accept Discover Rolf's Fate##45 |goto Elwynn Forest/0 72.70,60.30
only if completedq(35)
step
kill Rogue Wizard##474+
collect 6 Linen Scrap##1019 |q 83/1 |goto Elwynn Forest/0 75.10,56.30
step
click Rolf's Corpse##14
turnin Discover Rolf's Fate##45 |goto Elwynn Forest/0 79.80,55.50
accept Report to Thomas##71 |goto Elwynn Forest/0 79.80,55.50
only if completedq(35)
stickystart "prowlerbear"
step
kill Murloc Lurker##732+, Murloc Forager##46+
collect 8 Torn Murloc Fin##780 |q 46/1 |goto Elwynn Forest/0 77.60,59.00
step
label "prowlerbear"
kill 8 Prowler or Forest Wolf |q 52/1 |goto Elwynn Forest/0 80.90,61.50
kill 5 Young Forest Bear##822 |q 52/2 |goto Elwynn Forest/0 80.90,61.50
click Bundles of Wood##1248+
collect 8 Bundle of Wood##13872 |q 5545/1 |goto Elwynn Forest/0 80.90,61.50
You can find more Prowlers and Young Forest Bears around [Elwynn Forest/0 87.80,64.70]
kill Gray Forest Wolf##1922, Greypaw##44256, Gonzalez##43294
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto Elwynn Forest/0 81.40,66.10
step
talk Sara Timberlain##278
turnin Fine Linen Goods##83 |goto Elwynn Forest/0 79.50,68.70
step
talk Guard Thomas##261
turnin Report to Thomas##71 |goto Elwynn Forest/0 74.00,72.20 |only if completedq(35)
accept Cloth and Leather Armor##59 |goto Elwynn Forest/0 74.00,72.20 |only if completedq(35)
turnin Protect the Frontier##52 |goto Elwynn Forest/0 74.00,72.20
turnin Bounty on Murlocs##46 |goto Elwynn Forest/0 74.00,72.20
step
kill Morgan the Collector##473
collect The Collector's Ring##2239 |q 147/1 |goto Elwynn Forest/0 71.00,80.80
step
talk Sara Timberlain##278
turnin Cloth and Leather Armor##59 |goto Elwynn Forest/0 79.50,68.70
only if completedq(35)
step
talk Marshal Patterson##42256
turnin Manhunt##147 |goto Elwynn Forest/0 81.80,66.00
accept Hero's Call: Westfall##26378 |goto Elwynn Forest/0 81.80,66.00
step
Go to this spot inside the mine
Explore the Jasperlode Mine |q 76/1 |goto Elwynn Forest/0 37.70,52.50
step
talk Marshal Dughan##240
turnin The Jasperlode Mine##76 |goto Elwynn Forest/0 42.10,65.90
accept Westbrook Garrison Needs Help!##239 |goto Elwynn Forest/0 42.10,65.90
step
click Wanted Poster##184945
accept Wanted: "Hogger"##176 |goto Elwynn Forest/0 24.60,78.20
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto Elwynn Forest/0 24.20,74.50
accept Riverpaw Gnoll Bounty##11 |goto Elwynn Forest/0 24.20,74.50
stickystart "paintedband"
step
kill Hogger##448
|tip Don't worry that he's elite, he is pretty easy to kill.
Deal with "The Hogger Situation" |q 176/1 |goto Elwynn Forest/0 24.90,95.00
step
click the Westfall Deed##203734
|tip It's a rolled up scroll in the hand of a dead body on the ground.
accept Furlbrow's Deed##184 |goto Elwynn Forest/0 24.80,95.30
step
label "paintedband"
kill Riverpaw Outrunner##478+, Riverpaw Runt##97+
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto Elwynn Forest/0 25.20,92.90
step
talk Marshal Dughan##240
turnin Wanted: "Hogger"##176 |goto Elwynn Forest/0 42.10,65.90
step
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto Elwynn Forest/0 24.20,74.50
step
talk Lieutenant Horatio Laine##42308
turnin Hero's Call: Westfall##26378 |goto Westfall,60.10,19.30
accept Murder Was The Case That They Gave Me##26209 |goto Westfall,60.10,19.30
turnin Furlbrow's Deed##184 |goto Westfall,60.10,19.30
step
talk Homeless Stormwind Citizen##42384
talk West Plains Drifter##42391
Offer them a couple copper and ask them who killed the Furbrowls
Obtain Clue #1 |q 26209/1 |goto Westfall 59.00,18.20
Obtain Clue #2 |q 26209/2 |goto Westfall 59.00,18.20
Obtain Clue #3 |q 26209/3 |goto Westfall 59.00,18.20
Obtain Clue #4 |q 26209/4 |goto Westfall 59.00,18.20
step
talk Lieutenant Horatio Laine##42308
turnin Murder Was The Case That They Gave Me##26209 |goto Westfall 60.10,19.30
accept Hot On the Trail: The Riverpaw Clan##26213 |goto Westfall 60.10,19.30
accept Hot On the Trail: Murlocs##26214 |goto Westfall 60.10,19.30
stickystart "murclue"
step
kill Riverpaw Gnoll##725+, Riverpaw Scout##500+
collect Riverpaw Gnoll Clue##57755 |q 26213/1 |goto Westfall 56.50,15.40
step
label "murclue"
kill Murloc Raider##515+, Murloc Coastrunner##126+
collect Murloc Clue##57756 |q 26214/1 |goto Westfall 54.50,11.60
step
talk Lieutenant Horatio Laine##42308
turnin Hot On the Trail: The Riverpaw Clan##26213 |goto Westfall 60.10,19.30
turnin Hot On the Trail: Murlocs##26214 |goto Westfall 60.10,19.30
accept Meet Two-Shoed Lou##26215 |goto Westfall 60.10,19.30
step
talk Hoboair##42406
fpath Furlbrow's Pumpkin Farm |goto Westfall 49.80,18.70
step
talk Two-Shoed Lou##42405
turnin Meet Two-Shoed Lou##26215 |goto Westfall 49.60,19.40
accept Livin' the Life##26228 |goto Westfall 49.60,19.40
step
talk Jimb "Candles" McHannigan##42498
accept "I TAKE Candle!"##26229 |goto Westfall 49.60,19.60
step
talk Mama Celeste##42497
accept Feast or Famine##26230 |goto Westfall 49.50,19.10
step
kill Coyote##834+
collect 6 Coyote Tail##57787 |q 26230/1 |goto Westfall 50.40,21.10
Click Fresh Dirt
|tip They look like mounds of dirt on the ground around this area.
collect 5 Fresh Dirt##57789 |q 26230/2 |goto Westfall 50.40,21.10
stickystart "kobdig"
step
Enter the mine |goto Westfall 44.50,25.00 < 5 |walk
Use Two-Shoed Lou's Old House at the back of Jangolode Mine |use Two-Shoed Lou's Old House##57761
Learn about Livin' the Life |q 26228/1 |goto Westfall 46.30,19.00
step
label "kobdig"
Leave the mine |goto Westfall 44.50,25.00 < 5 |walk
kill 12 Kobold Digger |q 26229/1 |goto Westfall 44.80,25.80
step
talk Jimb "Candles" McHannigan##42498
turnin "I TAKE Candle!"##26229 |goto Westfall 49.60,19.60
step
talk Two-Shoed Lou##42405
turnin Livin' the Life##26228 |goto Westfall 49.60,19.40
accept Lou Parting Thoughts##26232 |goto Westfall 49.60,19.40
step
talk Mama Celeste##42497
turnin Feast or Famine##26230 |goto Westfall 49.50,19.10
step
Stand next to the 4 Thugs behind the barn
kill Thug##42387+
Eavesdrop on Thugs |q 26232/1 |goto Westfall 48.20,19.60
step
talk Lieutenant Horatio Laine##42558
turnin Lou Parting Thoughts##26232 |goto Westfall 49.70,19.50
accept Shakedown at the Saldean's##26236 |goto Westfall 49.70,19.50
step
talk Farmer Saldean##233
turnin Shakedown at the Saldean's##26236 |goto Westfall 56.00,31.20
accept Times are Tough##26237 |goto Westfall 56.00,31.20
step
talk Salma Saldean##235
accept Westfall Stew##26241 |goto Westfall 56.40,30.50
step
kill Goretusk##157+, Young Goretusk##454+
collect 6 Goretusk Flank##57788 |q 26241/2 |goto Westfall 50.60,35.70
kill Fleshripper##1109+
|tip They are spread out and rare around this area, so you will need to search a little for them.
collect 6 Stringy Fleshripper Meat##57786 |q 26241/3 |goto Westfall 50.60,35.70
You can find more Fleshrippers around [59.10,32.50]
step
kill 10 Harvest Watcher##114+ |q 26237/1 |goto Westfall 55.50,32.00
collect Harvest Watcher Heart##57935 |n
Click the Harvest Watcher Heart in your bags |use Harvest Watcher Heart##57935
accept Heart of the Watcher##26252 |goto Westfall 55.50,32.00
Click Okra
|tip They look like big blue and green bushes on the ground around this area.
collect 6 Okra##57911 |q 26241/1 |goto Westfall 55.50,32.00
step
talk Farmer Saldean##233
turnin Times are Tough##26237 |goto Westfall 56.00,31.20
turnin Heart of the Watcher##26252 |goto Westfall 56.00,31.20
accept It's Alive!##26257 |goto Westfall 56.00,31.20
step
talk Salma Saldean##235
turnin Westfall Stew##26241 |goto Westfall 56.40,30.50
step
talk Farmer Saldean##233
accept You Have Our Thanks##26270 |goto Westfall 56.00,31.20
step
talk Salma Saldean##235
turnin You Have Our Thanks##26270 |goto Westfall 56.40,30.50
accept Hope for the People##26266 |goto Westfall 56.40,30.50
step
Use Harvest Watcher Heart on an Overloaded Harvest Golem |use Harvest Watcher Heart##57954
Enable an Overloaded Harvest Golem |q 26257/1 |goto Westfall 49.80,34.40
step
Use the abilities on your action bar to do the following:
kill 25 Energized Harvest Reaper##42342 |q 26257/2 |goto Westfall 47.50,35.00
step
Click the red arrow on your hotbar to stop controlling the Harvest Watcher |outvehicle |q 26257 |goto Westfall 50.10,33.80
step
talk Farmer Saldean##233
turnin It's Alive!##26257 |goto Westfall 56.00,31.20
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.60,49.40
step
talk Hope Saldean##42575
turnin Hope for the People##26266 |goto Westfall 57.00,47.10
accept Feeding the Hungry and the Hopeless##26271 |goto Westfall 57.00,47.10
step
talk Marshal Gryan Stoutmantle##234
accept In Defense of Westfall##26286 |goto Westfall 56.30,47.50
step
talk Captain Danuvin##821
accept The Westfall Brigade##26287 |goto Westfall 56.50,47.60
step
talk Innkeeper Heather##8931
home Sentinel Hill |goto Westfall 52.90,53.70
step
kill Riverpaw Brute##124+, Riverpaw Herbalist##501+, Riverpaw Bandit##452+
Slay 12 attacking Riverpaw Gnolls |q 26287/1 |goto Westfall 53.90,50.00
collect Gnoll Attack Orders##58111 |q 26286/1 |goto Westfall 53.90,50.00
step
Use Westfall Stew next to Homeless Stormwind Citizens, West Plains Drifters, and Transients |use Westfall Stew##57991
Feed 20 Westfall Homeless |q 26271/1 |goto Westfall 56.90,57.60
You can find more at [58.20,40.20]
step
talk Marshal Gryan Stoutmantle##234
turnin In Defense of Westfall##26286 |goto Westfall 56.30,47.50
step
talk Captain Danuvin##821
turnin The Westfall Brigade##26287 |goto Westfall 56.50,47.60
accept Jango Spothide##26288 |goto Westfall 56.50,47.60
step
talk Hope Saldean##42575
turnin Feeding the Hungry and the Hopeless##26271 |goto Westfall 57.00,47.10
step
talk Marshal Gryan Stoutmantle##234
accept Find Agent Kearnen##26289 |goto Westfall 56.30,47.50
stickystart "riverpawmystic"
step
kill Jango Spothide##42653  |q 26288/3 |goto Westfall 62.30,76.40
step
label "riverpawmystic"
kill 5 Riverpaw Mystic##453 |q 26288/1 |goto Westfall 63.40,76.20
kill 5 Riverpaw Taskmaster##98 |q 26288/2 |goto Westfall 63.40,76.20
step
talk Agent Kearnen##7024
turnin Find Agent Kearnen##26289 |goto Westfall 68.30,70.40
accept Secrets of the Tower##26290 |goto Westfall 68.30,70.40
step
You can safely attack the elite mobs, Agent Kearnen will kill them for you.
Use your Potion of Shrouding inside the tower |use Potion of Shrouding##58112
Become Invisible |havebuff Potion of Shrouding##79528 |q 26290 |goto Westfall 70.50,74.50
step
Go to the top of the tower
Reveal Helix's Secret |q 26290/1 |goto Westfall 70.60,74.10
step
talk Agent Kearnen##7024
turnin Secrets of the Tower##26290 |goto Westfall 68.30,70.40
accept Big Trouble in Moonbrook##26291 |goto Westfall 68.30,70.40
step
talk Marshal Gryan Stoutmantle##234
turnin Big Trouble in Moonbrook##26291 |goto Westfall 56.30,47.50
accept To Moonbrook!##26292 |goto Westfall 56.30,47.50
step
talk Captain Danuvin##821
turnin Jango Spothide##26288 |goto Westfall 56.50,47.60
step
talk Scout Galiaan##878
accept The Legend of Captain Grayson##26371 |goto Westfall 56.40,47.30
step
talk Captain Alpert##42425
turnin To Moonbrook!##26292 |goto Westfall 42.10,64.10
accept Propaganda##26295 |goto Westfall 42.10,64.10
step
talk Tina Skyden##42426
fpath Moonbrook |goto Westfall 42.10,63.30
step
kill Moonbrook Thug##42677
collect Red Bandana##58117 |n
Click the Red Bandana in your bags |use Red Bandana##58117
accept Evidence Collection##26296 |goto Westfall 41.50,67.50
stickystart "moondana"
step
Click the Informational Pamphlet
|tip It looks like a small brown book sitting on a busted barrel.
collect Informational Pamphlet##58113 |q 26295/1 |goto Westfall 41.60,66.40
step
Click the Mysterious Propaganda
|tip It looks like a crumbled scroll nailed to the wall.
collect Mysterious Propaganda##58116 |q 26295/4 |goto Westfall 41.30,66.50
step
Click The Moonbrook Times
|tip It looks like a long scroll laying flat on the ground next to the big fountain in the middle of Moonbrook.
collect Issue of the Moonbrook Times##58114 |q 26295/2 |goto Westfall 43.30,69.90
step
Click the Secret Journal
|tip It looks like a small blue book laying on the floor, upstairs in the very back room, in the building that looks like an inn.
collect Secret Journal##58115 |q 26295/3 |goto Westfall 43.50,66.60
step
label "moondana"
kill Moonbrook Thug##42677+
|tip They are found inside the buildings around Moonbrook.
collect 6 Red Bandana##58117 |q 26296/1 |goto Westfall 42.50,69.50
step
talk Captain Alpert##42425
turnin Propaganda##26295 |goto Westfall 42.10,64.10
accept The Dawning of a New Day##26297 |goto Westfall 42.10,64.10
turnin Evidence Collection##26296 |goto Westfall 42.10,64.10
step
Stand in the crowd
Gather information from the Moonbrook Rally |q 26297/1 |goto Westfall 43.60,69.50
step
talk Captain Alpert##42425
turnin The Dawning of a New Day##26297 |goto Westfall 42.10,64.10
accept Secrets Revealed##26319 |goto Westfall 42.10,64.10
step
talk Thoralius the Wise##42651
turnin Secrets Revealed##26319 |goto Westfall 43.00,65.00
accept A Vision of the Past##26320 |goto Westfall 43.00,65.00
step
Enter the Defias Hideout and follow the trail of homeless people to this spot |goto Westfall,38.30,77.50
Go through the swirling portal into the Deadmines
confirm
step
Inside the Deadmines, right at the entrance, do the following:
Use your Incense Burner |use Incense Burner##58147
Uncover a vision of the past |q 26320/1
step
Go back through the dungeon portal out of the Deadmines dungeon
confirm
step
Follow the trail of homeless people to leave The Deadmines |goto Westfall,42.60,71.70
confirm
step
talk Captain Grayson##392
turnin The Legend of Captain Grayson##26371 |goto Westfall 30.50,85.60
accept The Coast Isn't Clear##26348 |goto Westfall 30.50,85.60
accept Keeper of the Flame##26347 |goto Westfall 30.50,85.60
accept The Coastal Menace##26349 |goto Westfall 30.50,85.60
step
kill Old Murk-Eye##391
|tip He's a gray murloc that walks along this beach, so you may need to search for him.
collect Scale of Old Murk-Eye##3636 |q 26349/1 |goto Westfall 32.80,82.60
kill 7 Murloc Tidehunter##127 |q 26348/1 |goto Westfall 32.80,82.60
kill 7 Murloc Oracle##517 |q 26348/2 |goto Westfall 32.80,82.60
collect Captain Sanders' Treasure Map##1357 |n
Click Captain Sanders' Treasure Map in your bags |use Captain Sanders' Treasure Map##1357
accept Captain Sanders' Hidden Treasure##26353 |goto Westfall 32.80,82.60
You can find more Murloc Tidehunters and Murloc Oracles at [28.90,73.90]
step
Click the Captain's Footlocker
|tip It's a rectangle wooden box half-buried in the sand.
turnin Captain Sanders' Hidden Treasure##26353 |goto Westfall 25.90,47.80
accept Captain Sanders' Hidden Treasure##26354 |goto Westfall 25.90,47.80
stickystart "chasmooze"
step
Click the Broken Barrel
|tip It looks like a busted barrel sitting on the ground.
turnin Captain Sanders' Hidden Treasure##26354 |goto Westfall 40.50,47.80
accept Captain Sanders' Hidden Treasure##26355 |goto Westfall 40.50,47.80
step
label "chasmooze"
kill Chasm Slime##42669+
collect 5 Chasm Ooze##58204 |q 26347/1 |goto Westfall 40.20,45.80
step
Click the Old Jug
|tip It looks like a blue bottle sitting on the ground next to a log and a wooden windmill.
turnin Captain Sanders' Hidden Treasure##26355 |goto Westfall 40.60,17.00
accept Captain Sanders' Hidden Treasure##26356 |goto Westfall 40.60,17.00
step
Click the Locked Chest
|tip It looks like a brown treasure chest sitting next to a small wooden shack on this tiny island.
turnin Captain Sanders' Hidden Treasure##26356 |goto Westfall 26.00,16.90
step
talk Marshal Gryan Stoutmantle##234
turnin A Vision of the Past##26320 |goto Westfall 56.30,47.50
accept Rise of the Brotherhood##26322 |goto Westfall 56.30,47.50
step
Watch the dialogue
Witness the Rise of the Brotherhood |q 26322/1 |goto Westfall 56.30,47.50
step
talk Captain Grayson##392
turnin The Coast Isn't Clear##26348 |goto Westfall 30.50,85.60
turnin Keeper of the Flame##26347 |goto Westfall 30.50,85.60
turnin The Coastal Menace##26349 |goto Westfall 30.50,85.60
step
talk Grand Admiral Jes-Tereth##1750
turnin Rise of the Brotherhood##26322 |goto Westfall 85.86,32.80
accept Return to Sentinel Hill##26370 |goto Westfall 85.86,32.80
step
talk Marshal Gryan Stoutmantle##234
turnin Return to Sentinel Hill##26370 |goto Westfall,56.40,49.60
accept Threat to the Kingdom##26761 |goto Westfall,56.40,49.60 |only Human
step
talk Captain Danuvin##821
accept Hero's Call: Redridge Mountains##26365 |goto Westfall 56.40,49.50
only Human
step
Click the Wanted Poster
|tip It looks like a wooden sign with a tan scroll in it, next to the tower entrance.
accept Wanted: Redridge Gnolls##26504 |goto Redridge Mountains,16.10,64.60
step
talk Darcy Parker##379
accept Franks and Beans##26506 |goto Redridge Mountains 15.60,65.30
step
talk Watch Captain Parker##464
turnin Hero's Call: Redridge Mountains##26365 |goto Redridge Mountains 15.30,64.60
accept Still Assessing the Threat##26503 |goto Redridge Mountains 15.30,64.60
step
kill Tarantula##442+
collect 4 Tarantula Eye##58891 |q 26506/1 |goto Redridge Mountains 17.40,65.10
kill Dire Condor##428+
|tip You can find them resting on rocks and flying around in the sky.
collect 4 Condor Giblet##58892 |q 26506/2 |goto Redridge Mountains 17.40,65.10
step
Click the Gnoll Battle Plan
|tip It's a big scroll laying flat on the ground next to a campfire.
collect Gnoll Battle Plans##58887 |q 26503/1 |goto Redridge Mountains 16.20,55.30
stickystart "gorekidney"
step
Click the Gnoll Strategy Guide
|tip It's a big scroll laying flat on the ground next to a campfire.
collect Gnoll Strategy Guide##58889 |q 26503/3 |goto Redridge Mountains 30.60,62.70
step
label "gorekidney"
kill Great Goretusk##547
collect 4 Goretusk Kidney##58893 |q 26506/3 |goto Redridge Mountains 31.00,63.20
stickystart "redgnoll"
step
Click the Gnoll Orders
|tip It's a small scroll laying flat on top of a small barrel, next to a small tent.
collect Gnoll Orders##58888 |q 26503/2 |goto Redridge Mountains 28.00,74.90
step
label "redgnoll"
kill Redridge Mongrel##423+, Redridge Thrasher##712+, Redridge Brute##426+
kill 15 Redridge Gnoll |q 26504/1 |goto Redridge Mountains 28.30,73.20
step
talk Darcy Parker##379
turnin Franks and Beans##26506 |goto Redridge Mountains 15.60,65.30
step
talk Watch Captain Parker##464
turnin Wanted: Redridge Gnolls##26504 |goto Redridge Mountains 15.30,64.60
turnin Still Assessing the Threat##26503 |goto Redridge Mountains 15.30,64.60
accept Parker's Report##26505 |goto Redridge Mountains 15.30,64.60
step
talk Ariena Stormfeather##931
fpath Lakeshire |goto Redridge Mountains 29.40,53.80
step
talk Bailiff Conacher##900
accept Lake Everstill Clean Up##26511 |goto Redridge Mountains 28.70,41.00
step
talk Magistrate Solomon##344
turnin Parker's Report##26505 |goto Redridge Mountains 28.90,41.10
accept We Must Prepare##26510 |goto Redridge Mountains 28.90,41.10
turnin Threat to the Kingdom##26761 |goto Redridge Mountains 28.90,41.10 |only Human
step
talk Innkeeper Brianna##6727
home Lakeshire |goto Redridge Mountains 26.40,41.40
step
talk Martie Jainrose##342
accept An Unwelcome Guest##26509 |goto Redridge Mountains 22.10,42.70
step
kill Bellygrub##345
collect Bellygrub's Tusk##3631 |q 26509/1 |goto Redridge Mountains 17.20,45.00
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##26509 |goto Redridge Mountains 22.10,42.70
step
talk Shawn##8965
accept Nida's Necklace##26508 |goto Redridge Mountains 28.40,48.90
stickystart "gnomemurl"
step
Click the Glinting Mud
|tip It looks like a mound of dirt on the ground underwater.  It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
collect Nida's Necklace##10958 |q 26508/1 |goto Redridge Mountains 32.10,50.30
step
label "gnomemurl"
Click the Gnomecorder
|tip It looks like a metal control console with some levers and a tan scroll on it, on this tiny island.
collect Gnomecorder##58894 |q 26510/1 |goto Redridge Mountains 37.80,42.10
kill Murloc Scout##578+, Murloc Flesheater##422+
kill 10 Lake Everstill Murloc |q 26511/1 |goto Redridge Mountains 37.80,42.10
step
talk Nida##8962
turnin Nida's Necklace##26508 |goto Redridge Mountains 28.30,48.90
step
talk Bailiff Conacher##900
turnin Lake Everstill Clean Up##26511 |goto Redridge Mountains 28.70,41.00
step
talk Magistrate Solomon##344
turnin We Must Prepare##26510 |goto Redridge Mountains 28.90,41.10
accept Tuning the Gnomecorder##26512 |goto Redridge Mountains 28.90,41.10
step
talk Marshal Marris##382
accept Like a Fart in the Wind##26513 |goto Redridge Mountains 31.90,44.90
step
Go to this spot
Test the Gnomecorder at the Lakeshire Graveyard |q 26512/1 |goto Redridge Mountains 32.30,39.50
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tuning the Gnomecorder##26512 |goto Redridge Mountains 32.30,39.50
accept Canyon Romp##26514 |goto Redridge Mountains 32.30,39.50
step
kill Redridge Basher##446+, Redridge Alpha##445+, Redridge Mystic##430+
collect 10 Redridge Gnoll Collar##58897 |q 26514/1 |goto Redridge Mountains 30.80,38.40
More Redridge Gnolls can be found around [22.70,33.90]
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Canyon Romp##26514 |goto Redridge Mountains 30.80,38.40
accept They've Wised Up...##26544 |goto Redridge Mountains 30.80,38.40
collect Dirt-Stained Scroll##58898 |n
Click the Dirt-Stained Scroll in your bags |use Dirt-Stained Scroll##58898
accept He Who Controls the Ettins##26519 |goto Redridge Mountains 30.80,38.40
Click Redridge Supply Crates
|tip They look like tan wooden boxes on the ground around this area.
collect 8 Redridge Supply Crate##58896 |q 26513/1 |goto Redridge Mountains 30.80,38.40
You can find more crates around [36.50,27.70]
step
Enter the cave |goto Redridge Mountains 21.00,27.30 < 5 |walk
kill Blackrock Overseer##43185
collect Blackrock Orc Missive##58936 |q 26544/1 |goto Redridge Mountains 20.20,26.00
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin They've Wised Up...##26544 |goto Redridge Mountains 20.20,26.00
accept Yowler Must Die!##26545 |goto Redridge Mountains 20.20,26.00
step
kill Ardo Dirtpaw##711 |q 26519/1 |goto Redridge Mountains 18.00,18.60
|tip Follow the path in the cave to the left.  He's at the very back of the cave on top of a rock platform.
step
Click the Ettin Control Orb
|tip It looks like a green glowing orb in a metal stand with 2 wings on it, next to Ardo Dirtpaw.
turnin He Who Controls the Ettins##26519 |goto Redridge Mountains 17.90,18.60
accept Saving Foreman Oslow##26520 |goto Redridge Mountains 17.90,18.60
step
Leave the cave |goto Redridge Mountains 21.00,27.30 < 5 |walk
Use your Ettin Control Orb on a Canyon Ettin |use Ettin Control Orb##58895
|tip The Canyon Ettin is a big brown two-headed monster that patrols around this area carrying a big log.
While controlling the Subdued Canyon Ettin, go to 31.50,44.30
Use your Ettin Control Orb to make the Ettin pick up the Huge Boulder |use Ettin Control Orb##58895
Save Foreman Oslow |q 26520/1 |goto Redridge Mountains 24.10,32.20
step
talk Marshal Marris##382
turnin Life a Fart in the Wind##26513 |goto Redridge Mountains 31.90,44.90
step
The path to Yowler starts here |goto Redridge Mountains 39.50,34.30 < 5 |only if walking
kill Yowler##518 |q 26545/1 |goto Redridge Mountains 26.90,21.90
|tip It is level 7-30, depending on your level.
collect Blackrock Invasion Plans##58937 |q 26545/2 |goto Redridge Mountains 26.90,21.90
step
talk Magistrate Solomon##344
turnin Saving Foreman Oslow##26520 |goto Redridge Mountains 28.90,41.10
turnin Yowler Must Die!##26545 |goto Redridge Mountains 28.90,41.10
step
talk Colonel Troteman##43221
accept John J. Keeshan##26567 |goto Redridge Mountains 28.90,40.90
step
talk John J. Keeshan##43184
turnin John J. Keeshan##26567 |goto Redridge Mountains 26.30,40.10
accept This Ain't My War##26568 |goto Redridge Mountains 26.30,40.10
step
talk Colonel Troteman##43221
turnin This Ain't My War##26568 |goto Redridge Mountains 28.60,40.70
accept Weapons of War##26571 |goto Redridge Mountains 28.60,40.70
accept In Search of Bravo Company##26586 |goto Redridge Mountains 28.60,40.70
step
talk Foreman Oslow##43194
accept Surveying Equipment##26569 |goto Redridge Mountains 29.70,44.50
step
talk Marshal Marris##382
accept Render's Army##26570 |goto Redridge Mountains 29.70,44.50
step
talk Messner##43270
turnin In Search of Bravo Company##26586 |goto Redridge Mountains 47.50,41.90
accept Breaking Out is Hard to Do##26587 |goto Redridge Mountains 47.50,41.90
step
The path to the Blackrock Key Pouch starts here |goto Redridge Mountains 50.40,39.90 < 5 |walk
Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs
|tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
Click the Blackrock Key Pouch
|tip It looks like a light brown bag hanging on the side of this small stump.
collect Messner's Cage Key##58950 |q 26587/1 |goto Redridge Mountains 49.20,38.00
step
kill Murduck##43327
collect Keeshan's Bow##60727 |q 26571/1 |goto Redridge Mountains 51.50,41.30
kill Homurk##43329
collect Keeshan's Survival Knife##58954 |q 26571/2 |goto Redridge Mountains 51.50,41.30
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Weapons of War##26571 |goto Redridge Mountains 51.50,41.30
accept His Heart Must Be In It##26573 |goto Redridge Mountains 51.50,41.30
step
talk Messner##43270
turnin Breaking Out is Hard to Do##26587 |goto Redridge Mountains 47.50,41.90
step
Next to you:
talk Messner##43300
accept Jorgensen##26560
step
kill Utroka the Keymistress##43350
collect Jorgensen's Cage Key##58969 |q 26560/1 |goto Redridge Mountains 43.50,10.90
step
The path to Jorgensen starts here |goto Redridge Mountains 38.00,16.20 < 5 |walk
talk Jorgensen##43272
turnin Jorgensen##26560 |goto Redridge Mountains 33.60,11.80
step
Next to you:
talk Jorgensen##43305
accept Krakauer##26561
step
Enter the cave |goto Redridge Mountains 31.70,9.40 < 5 |walk
kill Ritualist Tarak##43363 |q 26561/1 |goto Redridge Mountains 26.00,10.50
step
Click the Blackrock Coffer
|tip It looks like a big gray metal chest sitting on the ground inside the cave.
collect Keeshan's Red Headband##58956 |q 26573/1 |goto Redridge Mountains 26.60,10.50
collect Keeshan's Jade Amulet##58957 |q 26573/2 |goto Redridge Mountains 26.60,10.50
step
talk Krakauer##43274
turnin Krakauer##26561 |goto Redridge Mountains 25.90,10.50
step
Next to you:
talk Krakauer##43303
accept And Last But Not Least...Danforth##26562
step
Follow the path back and around inside the cave.
kill Overlord Barbarius##43369 |q 26562/1 |goto Redridge Mountains 27.70,18.10
collect Blackrock Lever Key##59033 |q 26562/2 |goto Redridge Mountains 27.70,18.10
step
Click the Chain Lever |goto Redridge Mountains 27.80,17.90
|tip It looks like a small lever on the ground with a tiny skull at the top of it.
Swim out to Danforth in middle of the pool of water at [28.30,17.00]
talk Danforth##43275
turnin And Last But Not Least...Danforth##26562
step
Next to you:
talk Danforth##43302
accept Return of the Bravo Company##26563
step
Leave the cave |goto Redridge Mountains 31.70,9.40 < 5 |walk
kill Blackrock Tracker##615+, Blackrock Summoner##4463+
kill 25 Blackrock Orcs of Alther's Mill or Render's Camp |q 26570/1 |goto Redridge Mountains 32.80,9.90
collect 5 Blackrock Spyglass##58952 |q 26569/1 |goto Redridge Mountains 32.80,9.90
step
talk Colonel Troteman##43221
turnin His Heart Must Be In It##26573 |goto Redridge Mountains 28.70,40.70
turnin Return of the Bravo Company##26563 |goto Redridge Mountains 28.70,40.70
accept They Drew First Blood##26607 |goto Redridge Mountains 28.70,40.70
step
talk John J. Keeshan##43184
turnin They Drew First Blood##26607 |goto Redridge Mountains 26.30,40.10
accept It's Never Over##26616 |goto Redridge Mountains 26.30,40.10
step
talk Foreman Oslow##43194
turnin Surveying Equipment##26569 |goto Redridge Mountains 29.60,44.50
step
talk Marshal Marris##382
turnin Render's Army##26570 |goto Redridge Mountains 29.70,44.50
step
Click Keeshan's Riverboat
|tip It looks like a small wooden boat with a few people sitting in it, next to the shore.
Complete Keeshan's Riverboat Ride |q 26616/1 |goto Redridge Mountains 34.40,46.00
step
talk Arlen Marsters##43371
fpath Camp Everstill |goto Redridge Mountains 52.90,54.60
step
talk John J. Keeshan##43458
turnin It's Never Over##26616 |goto Redridge Mountains 52.50,55.40
accept Point of Contact: Brubaker##26639 |goto Redridge Mountains 52.50,55.40
step
talk Danforth##43462
accept Hunting the Hunters##26638 |goto Redridge Mountains 52.50,55.60
step
talk Messner##43459
accept Bravo Company Field Kit: Chloroform##26637 |goto Redridge Mountains 52.40,55.50
step
talk Krakauer##43461
accept Bravo Company Field Kit: Camouflage##26636 |goto Redridge Mountains 52.40,55.40
step
kill Muckdweller##43532+
|tip They are underwater and found throughout the entire lake.
collect 8 Muckdweller Gland##59156 |q 26637/1 |goto Redridge Mountains 48.90,58.40
step
talk Messner##43459
turnin Bravo Company Field Kit: Chloroform##26637 |goto Redridge Mountains,52.40,55.50
step
talk Brubaker##43508
turnin Point of Contact: Brubaker##26639 |goto Redridge Mountains 53.10,67.80
accept Unspeakable Atrocities##26640 |goto Redridge Mountains 53.10,67.80
step
kill 8 Blackrock Hunter##4462 |q 26638/1 |goto Redridge Mountains 49.80,66.80
Click Piles of Leaves
|tip They look like piles of orange leaves on the ground around this area.
collect 5 Pile of Leaves##23791 |q 26636/1 |goto Redridge Mountains 49.80,66.80
Click Fox Poop
|tip They look like dark mounds on the ground around this area.
collect 5 Fox Poop##59153 |q 26636/2 |goto Redridge Mountains 49.80,66.80
step
talk Danforth##43462
turnin Hunting the Hunters##26638 |goto Redridge Mountains 52.50,55.60
step
talk John J. Keeshan##43458
turnin Unspeakable Atrocities##26640 |goto Redridge Mountains 52.50,55.40
step
talk Krakauer##43461
turnin Bravo Company Field Kit: Camouflage##26636 |goto Redridge Mountains 52.40,55.40
step
talk John J. Keeshan##43458
accept Prisoners of War##26646 |goto Redridge Mountains 52.50,55.40
step
use Bravo Company Field Kit##60384
Activate your Bravo Company Field Kit |havebuff Bravo Company Field Kit##82580 |q 26646 |goto Redridge Mountains 53.90,57.70
step
Use the Camouflage ability on your hotbar
Hide your party from sight |havebuff texture:136074 |q 26646
step
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
Click the Blackrock Key Pouch
|tip It looks like a small tan bag hanging on the wall in the back of this small cave.
collect Blackrock Holding Pen Key##59261 |q 26646 |goto Redridge Mountains 69.50,76.30
step
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
Click a Blackrock Holding Pen
|tip They look like 3 huge round cages.
Free the Prisoners of War |q 26646/1 |goto Redridge Mountains 69.30,59.40
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Prisoners of War##26646 |goto Redridge Mountains 69.30,59.40
accept To Win a War, You Gotta Become War##26651 |goto Redridge Mountains 69.30,59.40
step
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
Use your Plant Seaforium ability in the small room at the top of the tower
Plant Seaforium at the Blackrock Tower |q 26651/2 |goto Redridge Mountains 66.40,71.40
step
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
Use your Plant Seaforium ability inside this hut, next to all the Blackrock Explosive Devices
Plant Seaforium at the Munitions Hut |q 26651/1 |goto Redridge Mountains 63.80,70.40
step
The path up to John J. Keeshan starts here |goto Redridge Mountains 72.70,64.40 < 5 |walk
talk John J. Keeshan##43611
turnin To Win a War, You Gotta Become War##26651 |goto Redridge Mountains 77.70,65.50
step
map Stormwind City
To continue gaining reputation with the Stormwind faction:
You can buy a Stormwind Tabard from Captain Lancy Revshon at [Stormwind City 67.70,72.80]
|tip Wear the Stormwind Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Home Cities Reputation\\Darnassus\\Night Elf",{
description="This guide will help you to get Exalted reputation with the Darnassus faction. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={10793,8394,10789,66847,23221,23219,23338},
},[[
step
talk Ilthalaine##2079
accept The Balance of Nature##28713 |goto Teldrassil,58.00,39.20
step
kill 6 Young Nightsaber##2031 |q 28713/1 |goto Teldrassil 57.90,40.70
step
talk Ilthalaine##2079
turnin The Balance of Nature##28713 |goto Teldrassil 58.00,39.20
accept Fel Moss Corruption##28714 |goto Teldrassil 58.00,39.20
step
talk Melithar Staghelm##2077
accept Demonic Thieves##28715 |goto Teldrassil 58.00,38.80
step
kill Grell##1988+
collect 6 Fel Moss##3297 |q 28714/1 |goto Teldrassil 55.80,40.10
Click Melithar's Stolen Bags
|tip They look like tan sacks sitting on the ground around this area.
collect 5 Melithar's Stolen Bags##46700 |q 28715/1 |goto Teldrassil 55.80,40.10
You can find more around [54.60,38.70]
step
talk Ilthalaine##2079
turnin Fel Moss Corruption##28714 |goto Teldrassil 58.10,39.00
accept A Favor for Melithar##28734 |goto Teldrassil 58.10,39.00
step
talk Melithar Staghelm##2077
turnin A Favor for Melithar##28734 |goto Teldrassil 58.00,38.80
turnin Demonic Thieves##28715 |goto Teldrassil 58.00,38.80
step
talk Rhyanda##43006
accept Priestess of the Moon##28723 |goto Teldrassil 58.40,35.50
only NightElf Mage
step
talk Alyissia##3593
accept Priestess of the Moon##28723 |goto Teldrassil 58.90,33.70
only NightElf Warrior
step
talk Ayanna Everstride##3596
accept Priestess of the Moon##28723 |goto Teldrassil 58.90,35.70
only NightElf Hunter
step
talk Frahun Shadewhisper##3594
accept Priestess of the Moon##28723 |goto Teldrassil 58.90,33.90
only NightElf Rogue
step
talk Shanda##3595
accept Priestess of the Moon##28723 |goto Teldrassil 58.50,35.50
only NightElf Priest
step
talk Mardant Strongoak##3597
accept A Healer's Touch##26948 |goto Teldrassil,58.20,34.80
only NightElf Druid
step
talk Mardant Strongoak##3597
Learn Healing Touch |q 26948/2 |goto Teldrassil,58.20,34.80
only NightElf Druid
step
Use Healing Touch on Wounded Sentinels
Practice Healing Touch 5 times |q 26948/1 |goto Teldrassil 58.70,36.50
only NightElf Druid
step
talk Wounded Sentinel##44617
turnin A Healer's Touch##26948 |goto Teldrassil 58.20,34.80
accept Priestess of the Moon##28723 |goto Teldrassil 58.20,34.80
only NightElf Druid
step
talk Dentaria Silverglade##49479
turnin Priestess of the Moon##28723 |goto Teldrassil 57.20,33.30
accept Iverron's Antidote##28724 |goto Teldrassil 57.20,33.30
step
Click Moonpetal Lilies
|tip They look like pink flowers along the edge of the ponds around this area.
collect 7 Moonpetal Lily##10641 |q 28724/1 |goto Teldrassil 56.60,33.80
step
talk Dentaria Silverglade##49479
turnin Iverron's Antidote##28724 |goto Teldrassil 57.20,33.30
accept The Woodland Protector##28725 |goto Teldrassil 57.20,33.30
step
kill Webwood Spider##1986
|tip Killing a spider will make Tarindrella appear.
talk Tarindrella##49480
turnin The Woodland Protector##28725 |goto Teldrassil 56.30,28.10
accept Webwood Corruption##28726 |goto Teldrassil 56.30,28.10
step
kill 12 Webwood Spider##1986 |q 28726/1 |goto Teldrassil 56.50,24.40
step
Next to you:
talk Tarindrella##49480
turnin Webwood Corruption##28726
accept Vile Touch##28727
step
kill Githyiss the Vile##1994 |q 28727/1 |goto Teldrassil 56.30,23.10
step
Next to you:
talk Tarindrella##49480
turnin Vile Touch##28727
accept Signs of Things to Come##28728
step
talk Dentaria Silverglade##49479
turnin Signs of Things to Come##28728 |goto Teldrassil 57.20,33.30
accept Teldrassil: Crown of Azeroth##28729 |goto Teldrassil 57.20,33.30
step
Use your Crystal Phial while standing in the water |use Crystal Phial##5185
collect Filled Crystal Phial##5184 |q 28729/1 |goto Teldrassil 59.10,29.10
step
talk Dentaria Silverglade##49479
turnin Teldrassil: Crown of Azeroth##28729 |goto Teldrassil 57.20,33.30
accept Precious Waters##28730 |goto Teldrassil 57.20,33.30
step
Follow the ramp up |goto Teldrassil 57.10,36.50 < 5 |only if walking
talk Tenaron Stormgrip##3514
turnin Precious Waters##28730 |goto Teldrassil 58.40,34.60
accept Teldrassil: Passing Awareness##28731 |goto Teldrassil 58.40,34.60
step
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto Teldrassil 60.20,41.70
step
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto Teldrassil 59.40,49.20
step
kill Nightsaber##2042+
collect 2 Nightsaber Fang##3409 |q 488/1 |goto Teldrassil 60.50,52.50
kill Strigid Owl##1995+
collect 2 Strigid Owl Feather##3411 |q 488/2 |goto Teldrassil 60.50,52.50
kill Webwood Lurker##1998+
collect 2 Webwood Spider Silk##3412 |q 488/3 |goto Teldrassil 60.50,52.50
There are more around [57.70,52.50]
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto Teldrassil 59.50,49.20
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto Teldrassil 55.80,50.40
step
talk Fidelio##40553
fpath Dolanaar |goto Teldrassil 55.50,50.40
step
talk Tallonkai Swiftroot##3567
accept The Emerald Dreamcatcher##2438 |goto Teldrassil 55.50,50.00
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto Teldrassil 55.70,52.00
step
talk Innkeeper Keldamyr##6736
turnin Dolanaar Delivery##2159 |goto Teldrassil 55.40,52.20
step
talk Innkeeper Keldamyr##6736
home Dolanaar |goto Teldrassil 55.40,52.20
step
talk Corithras Moonrage##3515
turnin Teldrassil: Passing Awareness##28731 |goto Teldrassil 55.80,53.90
accept Teldrassil: The Refusal of the Aspects##929 |goto Teldrassil 55.80,53.90
step
Click Fel Cones
|tip They look like brown pine cones with green smoke coming out of them on the ground around this area.
collect 3 Fel Cone##3418 |q 489/1 |goto Teldrassil 53.90,57.00
step
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto Teldrassil 59.50,49.20
step
Use your Jade Phial while standing in the water |use Jade Phial##5619
collect Filled Jade Phial##5639 |q 929/1 |goto Teldrassil 62.10,50.80
step
Go upstairs in the house
talk Gaerolas Talvethren##2107
turnin A Troubling Breeze##475 |goto Teldrassil 64.60,51.20
accept Gnarlpine Corruption##476 |goto Teldrassil 64.60,51.20
step
Click Tallonkai's Dresser
|tip It's a wooden piece of furniture with 2 doors on it inside this small house.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto Teldrassil 66.10,52.10
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto Teldrassil 55.70,52.00
accept The Relics of Wakening##483 |goto Teldrassil 55.70,52.00
step
talk Sentinel Kyra Starsong##2081
accept Resident Danger##13945 |goto Teldrassil,55.60,52.00
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Refusal of the Aspects##929 |goto Teldrassil 55.80,53.90
step
talk Syral Bladeleaf##2083
accept Nature's Reprisal##13946 |goto Teldrassil 55.80,50.40
step
talk Tallonkai Swiftroot##3567
turnin The Emerald Dreamcatcher##2438 |goto Teldrassil 55.50,50.00
accept Ferocitas the Dream Eater##2459 |goto Teldrassil 55.50,50.00
accept Twisted Hatred##932 |goto Teldrassil 55.50,50.00
step
kill Ferocitas the Dream Eater##7234
collect Tallonkai's Jewel##8050 |q 2459/2 |goto Teldrassil 66.90,46.60
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto Teldrassil 66.90,46.60
step
talk Tallonkai Swiftroot##3567
turnin Ferocitas the Dream Eater##2459 |goto Teldrassil 55.50,50.00
step
Follow this small path to the cave |goto Teldrassil 53.60,47.20 < 5 |only if walking
Enter the cave |goto Teldrassil 54.50,46.00 < 5 |walk
Take the path to the right side of the cave
Use your Ireroot Seeds on Shadow Sprites |use Ireroot Seeds##46716
Kill 12 Fel Rock Grellkin with Ireroot Seeds |q 13946/1 |goto Teldrassil 52.90,43.90
kill Lord Melenas##2038
collect Melenas' Head##5221 |q 932/1 |goto Teldrassil 52.90,43.90
step
Leave the cave |goto Teldrassil 54.50,46.00 < 5 |walk
talk Syral Bladeleaf##2083
turnin Nature's Reprisal##13946 |goto Teldrassil 55.80,50.50
step
talk Tallonkai Swiftroot##3567
turnin Twisted Hatred##932 |goto Teldrassil 55.50,50.00
step
Enter the Den |goto Teldrassil,45.60,50.60 < 5 |walk
talk Oben Rageclaw##7317
accept The Sleeping Druid##2541 |goto Teldrassil 45.00,53.50
stickystart "gnarlpinedefend"
step
Next to you:
talk Sentinel Huntress##34249
Ask her where the Rune of Nesting is
|tip You can ask her as many times as you need.
Follow the green mist
Click the Chest of Nesting
|tip It's a small gray chest.
collect Rune of Nesting##3408 |q 483/4
kill Gnarlpine Shaman##2009+
Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
Next to you:
talk Sentinel Huntress##34249
Ask her where the Black Feather Quill is
|tip You can ask her as many times as you need.
Follow the green mist
Click the Chest of the Black Feather
|tip It's a small gray chest.
collect Black Feather Quill##3406 |q 483/2
kill Gnarlpine Shaman##2009+
Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
Next to you:
talk Sentinel Huntress##34249
Ask her where the Sapphire of Sky is
|tip You can ask her as many times as you need.
Follow the green mist
Click the Chest of the Sky
|tip It's a small gray chest.
collect Sapphire of Sky##3407 |q 483/3
kill Gnarlpine Shaman##2009+
Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
Next to you:
talk Sentinel Huntress##34249
Ask her where the Raven Claw Talisman is
|tip You can ask her as many times as you need.
Follow the green mist
Click the Chest of the Raven Claw
|tip It's a small gray chest.
collect Raven Claw Talisman##3405 |q 483/1
kill Gnarlpine Shaman##2009+
collect Shaman Voodoo Charm##8363 |q 2541/1
step
Next to you:
talk Sentinel Huntress##34249
Ask her where the exit is
|tip You can ask her as many times as you need.
Follow the green mist until you see an area with 2 bridges |tip Don't actually leave the cave.
talk Oben Rageclaw##7317
turnin The Sleeping Druid##2541
accept Druid of the Claw##2561
step
kill Rageclaw##7318
|tip He's through the doors in the room immediately next to you and Oben Rageclaw.  Just walk up to the door, even though it is locked, it will automatically open for you.
Use your Voodoo Charm on Rageclaw's corpse |use Voodoo Charm##8149
Release Oben Rageclaw's Spirit |q 2561/1 |goto Teldrassil 45.70,52.80
step
talk Oben Rageclaw##7317
turnin Druid of the Claw##2561 |goto Teldrassil 45.00,53.50
step
label "gnarlpinedefend"
Inside of the Den:
kill Gnarlpine Defender##2010+, Gnarlpine Shaman##009+, Gnarlpine Shaman##2009+, Gnarlpine Augur##2011+,
kill 20 Ban'ethil Gnarlpine |q 13945/1
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483 |goto Teldrassil 55.70,52.00
accept Ursal the Mauler##486 |goto Teldrassil 55.70,52.00
step
talk Sentinel Kyra Starsong##2081
turnin Resident Danger##13945 |goto Teldrassil 55.60,52.00
step
talk Nyoma##4265
accept Reminders of Home##6344 |goto Teldrassil 56.70,53.50
step
talk Fidelio##40553
turnin Reminders of Home##6344 |goto Teldrassil 55.50,50.40
accept To Darnassus##6341 |goto Teldrassil 55.50,50.40
step
talk Sister Aquinne##7316
turnin To Darnassus##6341 |goto Darnassus,36.10,53.50
accept An Unexpected Gift##6342 |goto Darnassus,36.10,53.50
step
talk Leora##40552
turnin An Unexpected Gift##6342 |goto Darnassus 36.60,47.90
accept Return to Nyoma##6343 |goto Darnassus 36.60,47.90
step
talk Nyoma##4265
turnin Return to Nyoma##6343 |goto Teldrassil,56.70,53.50
step
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487 |goto Teldrassil 49.40,44.70
step
Follow the path up |goto Teldrassil 49.40,43.20 < 5 |walk
Take the first path to the right that you come to
kill Ursal the Mauler##2039 |q 486/1 |goto Teldrassil 51.70,39.40
kill 8 Gnarlpine Ambusher##2152 |q 487/1 |goto Teldrassil 51.70,39.40
step
talk Moon Priestess Amara##2151
turnin The Road to Darnassus##487 |goto Teldrassil 49.40,44.60
step
talk Athridas Bearmantle##2078
turnin Ursal the Mauler##486 |goto Teldrassil 55.70,52.00
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto Teldrassil 55.80,50.50
step
talk Denalan##2080
turnin Denalan's Earth##997 |goto Teldrassil 60.00,59.80
accept Timberling Seeds##918 |goto Teldrassil 60.00,59.80
accept Timberling Sprouts##919 |goto Teldrassil 60.00,59.80
step
Click the Strange Fruited Plant
|tip It's a big pink-glowing plants.
accept The Glowing Fruit##930 |goto Teldrassil 57.60,62.90
step
kill Timberling##2022+
collect 6 Timberling Seed##5168 |q 918/1 |goto Teldrassil 59.70,60.40
Click Timberling Sprouts
|tip They look like green plant bulbs sitting on the ground around this area.
collect 10 Timberling Sprout##5169 |q 919/1 |goto Teldrassil 59.70,60.40
step
talk Denalan##2080
turnin Timberling Seeds##918 |goto Teldrassil 59.90,59.80
accept Rellian Greenspyre##922 |goto Teldrassil 59.90,59.80
turnin Timberling Sprouts##919 |goto Teldrassil 59.90,59.80
turnin The Glowing Fruit##930 |goto Teldrassil 59.90,59.80
step
talk Corithras Moonrage##3515
accept Teldrassil: The Burden of the Kaldorei##7383 |goto Teldrassil 55.80,53.90
step
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto Teldrassil 44.00,44.20
accept Mossy Tumors##923 |goto Teldrassil 44.00,44.20
step
Follow the river north
kill Timberling Trampler##+, Timberling Mire Beast##+
|tip Follow the water north.
collect 5 Mossy Tumor##5170 |q 923/1 |goto Teldrassil 43.60,37.40
step
Use your Amethyst Phial while standing in the water|use Amethyst Phial##18152
collect Filled Amerthyst Phial##18151 |q 7383/1 |goto Teldrassil 40.50,29.90
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto Teldrassil 39.50,29.90
step
talk Priestess A'moora##7313
accept Tears of the Moon##2518 |goto Teldrassil 39.20,29.80
step
Click the Strange Fronded Plant
|tip It's a big pink-glowing plants.
accept The Shimmering Frond##931 |goto Teldrassil 37.30,25.50
step
kill Lady Sathrah##7319
collect Silvery Spinnerets##8344 |q 2518/1 |goto Teldrassil 40.70,22.10
step
kill Bloodfeather Fury##2019+, Bloodfeather Matriarch##2021+, Bloodfeather Wind Witch##2020+
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto Teldrassil 37.20,29.90
step
talk Priestess A'moora##7313
turnin Tears of the Moon##2518 |goto Teldrassil 39.30,29.70
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto Teldrassil 39.50,29.90
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Burden of the Kaldorei##7383 |goto Teldrassil 40.90,45.70
accept Teldrassil: The Coming Dawn##933 |goto Teldrassil 40.90,45.70
step
talk Denalan##2080
turnin The Shimmering Frond##931 |goto Teldrassil 43.90,44.20
step
talk Rellian Greenspyre##3517
turnin Mossy Tumors##923 |goto Teldrassil 44.00,44.20
step
talk Denalan##2080
accept Oakenscowl##2499 |goto Teldrassil 43.90,44.20
step
Click a Sprouted Frond
|tip They are 3 bushes in a long wooden planter.
accept The Sprouted Fronds##2399 |goto Teldrassil 43.90,44.10
step
Use your Tourmaline Phial while standing in the water |use Tourmaline Phial##5621
collect Filled Tourmaline Phial##5645 |q 933/1 |goto Teldrassil 43.90,58.50
step
talk Tarindrella##1992
turnin Teldrassil: The Coming Dawn##933 |goto Teldrassil 42.50,58.20
accept The Vengeance of Elune##14005 |goto Teldrassil 42.50,58.20
step
Use the abilities on your hotbar to fight Bough of Corruption
kill Bough of Corruption##34521 |q 14005/1 |goto Teldrassil 40.70,69.30
step
talk Tarindrella##1992
turnin The Vengeance of Elune##14005 |goto Teldrassil 42.50,58.20
accept The Waters of Teldrassil##935 |goto Teldrassil 42.50,58.20
step
talk Corithras Moonrage##3515
turnin The Waters of Teldrassil##935 |goto Teldrassil 41.00,45.60
accept Home of the Kaldorei##14039 |goto Teldrassil 41.00,45.60
step
kill Oakenscowl##2166
|tip He's a red and green elemental that walks around this area.
collect Gargantuan Tumor##8136 |q 2499/1 |goto Teldrassil 47.40,35.20
step
talk Denalan##2080
turnin Oakenscowl##2499 |goto Teldrassil 43.90,44.20
step
Click the Hero's Call Board
|tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
accept Hero's Call: Darkshore!##28490 |goto Darnassus,45.00,49.90
only Draenei,Dwarf,Gnome Human
step
talk Sentinel Cordressa Briarbow##42936
accept Breaking Waves of Change##26383 |goto Darnassus 43.90,76.10
only NightElf
step
talk Genn Greymane##48736
accept Breaking Waves of Change##26385 |goto Darnassus 48.20,14.70
only Worgen
step
talk Tyrande Whisperwind##7999
turnin Home of the Kaldorei##14039 |goto Darnassus 43.00,78.10
step
Go inside the pink portal |goto Teldrassil,36.90,50.50
talk Vesprystus##3838
fpath Rut'theran Village |goto Teldrassil,55.40,88.40
step
talk Dentaria Silverglade##32973
turnin Hero's Call: Darkshore!##28490 |goto Darkshore,51.80,18.00 |only Draenei,Dwarf,Gnome Human
turnin Breaking Waves of Change##26383 |goto Darkshore,51.80,18.00 |only NightElf
turnin Breaking Waves of Change##26385 |goto Darkshore,51.80,18.00 |only Worgen
accept The Last Wave of Survivors##13518 |goto Darkshore,51.80,18.00
step
talk Innkeeper Kyteran##43420
home Lor'danel |goto Darkshore 51.00,18.60
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept Threat from the Water##13522 |goto Darkshore 50.20,19.80
stickystart "vilespray"
step
talk Volcor##33094
Rescue Volcor |q 13518/4 |goto Darkshore 45.00,18.20
step
talk Gershala Nightwhisper##32911
Rescue Gershala Nightwhisper |q 13518/2 |goto Darkshore 44.10,17.80
step
talk Cerellean Whiteclaw##33093
Rescue Cerellean Whiteclaw |q 13518/1 |goto Darkshore 44.60,19.90
step
talk Shaldyn##33095
Rescue Shaldyn |q 13518/3 |goto Darkshore 42.90,21.50
step
label "vilespray"
kill 8 Vile Spray##32928 |q 13522/1 |goto Darkshore 43.10,20.60
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin Threat from the Water##13522 |goto Darkshore 50.20,19.80
step
talk Dentaria Silverglade##32973
turnin The Last Wave of Survivors##13518 |goto Darkshore 51.80,18.00
step
talk Serendia Oakwhisper##32972
accept The Boon of the Seas##13520 |goto Darkshore 50.90,18.10
step
talk Wizbang Cranktoggle##32977
accept Buzzbox 413##13521 |goto Darkshore 51.10,19.70
stickystart "corruptcrawl"
step
Click Encrusted Clams
|tip They looks like clams underwater around this area.
collect 16 Encrusted Clam Muscle##44864 |q 13520/1 |goto Darkshore 52.40,18.80
step
label "corruptcrawl"
kill Corrupted Tide Crawler##32935+
collect 4 Corrupted Tide Crawler Flesh##44863 |q 13521/1 |goto Darkshore 53.40,19.50
step
Click Buzzbox 413
|tip It's a metal box with gears on it, sitting on the beach next to a hill.
turnin Buzzbox 413##13521 |goto Darkshore 53.30,19.60
accept No Accounting for Taste##13527 |goto Darkshore 53.30,19.60
step
Click the Decomposing Thistle Bear
|tip It looks like a dead bear laying on the ground.
collect Foul Bear Carcass Sample##44911 |q 13527/1 |goto Darkshore 55.10,21.00
step
talk Wizbang Cranktoggle##32977
turnin No Accounting for Taste##13527 |goto Darkshore 51.10,19.70
accept Buzzbox 723##13528 |goto Darkshore 51.10,19.70
step
talk Serendia Oakwhisper##32972
turnin The Boon of the Seas##13520 |goto Darkshore 50.80,18.10
step
kill Corrupted Thistle Bear##33009+, Corrupted Thistle Bear Matriarch##33905+
|tip The green ones won't drop loot.
collect 6 Corrupted Thistle Bear Guts##44913 |q 13528/1 |goto Darkshore 55.00,24.10
step
Click Buzzbox 723
|tip It's a metal box with gears on it, sitting on a hill.
turnin Buzzbox 723##13528 |goto Darkshore 54.20,29.30
accept A Cure In The Dark##13554 |goto Darkshore 54.20,29.30
step
Follow the path up |goto Darkshore 56.20,27.20 < 5 |only if walking
talk Tharnariun Treetender##32978
accept The Corruption's Source##13529 |goto Darkshore 56.80,30.10
stickystart "uncorrpt"
step
Enter the cave |goto Darkshore 56.90,31.30 < 5 |walk
Go to the lower level of the cave
kill Zenn Foulhoof |q 13529/1 |goto Darkshore 58.20,33.00
collect Corruptor's Master Key##44927 |n
Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927
accept Bearer of Good Fortune##13557 |goto Darkshore 58.20,33.00
step
Click Secure Bear Cages and Secure Duskrat Cages as you walk to free the animals
|tip They look like metal cages all around inside the cave.
Click the Disgusting Workbench
|tip It looks like a wooden table with chemistry equipment on it.
accept A Troubling Prescription##13831 |goto Darkshore 57.40,33.80
step
label "uncorrpt"
kill Vile Corruptor##33022+, Vile Grell##33021+
collect 6 Foul Ichor##44966 |q 13554/1 |goto Darkshore 57.00,33.20
kill 8 Vile Grell##33021 |q 13529/2 |goto Darkshore 57.00,33.20
Click Secure Bear Cages and Secure Duskrat Cages
|tip They look like metal cages all around inside the cave.
Free 8 Uncorrupted Animals |q 13557/1 |goto Darkshore 57.00,33.20
step
talk Wizbang Cranktoggle##32977
turnin A Cure In The Dark##13554 |goto Darkshore 51.10,19.70
step
talk Tharnariun Treetender##32978
turnin The Corruption's Source##13529 |goto Darkshore 51.10,19.70
turnin Bearer of Good Fortune##13557 |goto Darkshore 51.10,19.70
turnin A Troubling Prescription##13831 |goto Darkshore 51.10,19.70
step
talk Volcor##32960
accept A Lost Companion##13564 |goto Darkshore 50.90,18.00
step
talk Cerellean Whiteclaw##32959
accept A Love Eternal##13563 |goto Darkshore 50.80,17.90
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept The Final Flame of Bashal'Aran##13562 |goto Darkshore 50.20,19.80
step
talk Arya Autumnlight##33177
accept Solace for the Highborne##13561 |goto Darkshore 46.80,33.30
step
Click The Final Flame of Bashal'Aran
|tip It looks like a brazier with fire in it, up on a hill in blue light.
Extinguish the Final Flame of Bashal'Aran |q 13562/1 |goto Darkshore 45.90,34.20
stickystart "cursedhigh"
step
kill Anaya Dawnrunner |q 13563/1 |goto Darkshore 48.50,36.60
collect Anaya's Pendant##5382 |q 13563/2 |goto Darkshore 48.50,36.60
step
label "cursedhigh"
kill 6 Cursed Highborne |q 13561/1 |goto Darkshore 48.20,36.40
kill 6 Writhing Highborne |q 13561/2 |goto Darkshore 48.20,36.40
step
talk Arya Autumnlight##33177
turnin Solace for the Highborne##13561 |goto Darkshore 46.80,33.30
step
Go to this spot
Locate Grimclaw |q 13564/1 |goto Darkshore 42.90,39.00
|tip He's a dead white bear laying on the ground.
step
talk Keeper Karithus##33048
turnin A Lost Companion##13564 |goto Darkshore 43.00,39.00
accept Unsavory Remedies##13598 |goto Darkshore 43.00,39.00
accept Ritual Materials##13566 |goto Darkshore 43.00,39.00
step
talk Seraphine##33126
accept Twice Removed##13565 |goto Darkshore 42.90,39.00
stickystart "fumingtoad"
step
Click Moonstalkers
|tip They look like blue tigers laying on the ground.  Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
collect 3 Moonstalker Whisker##44969 |q 13566/1 |goto Darkshore 42.40,39.80
step
Click Mottled Does
|tip They look like small deer around this area.
collect 3 Tuft of Mottled Doe Hair##45027 |q 13566/2 |goto Darkshore 44.10,40.80
step
Click Hungry Thistle Bears
|tip Only click them when they are neutral, or they will attack you.
collect 3 Thistle Bear Fur##45885 |q 13566/3 |goto Darkshore 46.60,38.90
step
kill Lady Janira##33207 |q 13565/1 |goto Darkshore 48.60,40.40
step
label "fumingtoad"
kill Darkscale Scout##33206+
Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
Call 6 Withered Ents |q 13565/2 |goto Darkshore 47.70,39.70
Click Fuming Toadstools
|tip They look like yellow mushrooms on the ground around this area.
collect 6 Fuming Toadstool##44976 |q 13598/1 |goto Darkshore 47.70,39.70
step
talk Keeper Karithus##33048
turnin Unsavory Remedies##13598 |goto Darkshore 43.00,39.00
turnin Ritual Materials##13566 |goto Darkshore 43.00,39.00
step
talk Seraphine##33126
turnin Twice Removed##13565 |goto Darkshore 42.90,39.00
step
talk Keeper Karithus##33048
accept The Ritual Bond##13569 |goto Darkshore 43.00,39.00
step
Click the Grovekeeper's Incense
|tip It's a small bowl on the ground in front of Keeper Karithus with red smoke coming out of it.
Entice Visions of the Great Animal Spirits |havebuff Grovekeeper's Trance##64198 |q 13569 |goto Darkshore 42.90,39.00
step
talk Great Stag Spirit##33133
|tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.  We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.  If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.  You can only choose one, so pick whichever one you'd like.
accept Spirit of the Stag##13567 |goto Darkshore 43.80,40.20
step
talk Keeper Karithus##33048
turnin The Ritual Bond##13569 |goto Darkshore 43.00,39.00
accept Grimclaw's Return##13599 |goto Darkshore 43.00,39.00
step
talk Serendia Oakwhisper##32972
turnin Grimclaw's Return##13599 |goto Darkshore 50.90,18.20
step
talk Cerellean Whiteclaw##32959
turnin A Love Eternal##13563 |goto Darkshore 50.80,17.90
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin The Final Flame of Bashal'Aran##13562 |goto Darkshore 50.70,19.40
accept The Shatterspear Invaders##13589 |goto Darkshore 50.70,19.40
step
talk Gorbold Steelhand##32979
accept An Ocean Not So Deep##13560 |goto Darkshore 51.00,19.20
step
Click the Decoy Bot Control Console
|tip It looks like a silver and yellow rectangular metal box sitting on a very tiny island.
As the robot, walk north underwater to get near a group of murlocs
Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
kill 50 Scavenging Greymist Murlocs |q 13560/1 |goto Darkshore 53.00,11.00
step
talk Gorbold Steelhand##32979
turnin An Ocean Not So Deep##13560 |goto Darkshore 51.00,19.20
step
talk Lieutenant Morra Starbreeze##32963
turnin The Shatterspear Invaders##13589 |goto Darkshore 58.90,19.40
step
talk Sentinel Tysha Moonblade##32965
accept Shatterspear Laborers##13504 |goto Darkshore 58.90,19.40
step
talk Balthule Shadowstrike##32966
accept Remnants of the Highborne##13505 |goto Darkshore 58.90,19.50
step
kill 10 Shatterspear Laborer##32861 |q 13504/1 |goto Darkshore 60.50,21.30
Click Highborne Relics
|tip They look like small white objects on the ground around this area.
collect 8 Highborne Relic##5360 |q 13505/1 |goto Darkshore 60.50,21.30
kill Shatterspear Overseer##32863
collect Overseer's Orders##44979 |n
Click the Overseer's Orders in your bags |use Overseer's Orders##44979
accept Reason to Worry##13506 |goto Darkshore 60.50,21.30
step
talk Sentinel Tysha Moonblade##32965
turnin Shatterspear Laborers##13504 |goto Darkshore 58.90,19.40
step
talk Balthule Shadowstrike##32966
turnin Remnants of the Highborne##13505 |goto Darkshore 58.90,19.50
step
talk Lieutenant Morra Starbreeze##32963
turnin Reason to Worry##13506 |goto Darkshore 58.90,19.40
accept Swift Response##13508 |goto Darkshore 58.90,19.40
accept War Supplies##13509 |goto Darkshore 58.90,19.40
step
talk Sentinel Tysha Moonblade##32965
accept Denying Manpower##13507 |goto Darkshore 58.90,19.40
step
kill 6 Horde Enforcer##32859 |q 13507/1 |goto Darkshore 61.60,11.60
kill 6 Shatterspear Mystic##34248 |q 13507/2 |goto Darkshore 61.60,11.60
Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999
|tip They look like brown wooden crates around this area.
Burn 12 Shatterspear Armaments |q 13509/1 |goto Darkshore 61.60,11.60
step
talk Alanndarian Nightsong##33055
turnin Swift Response##13508 |goto Darkshore 63.80,6.00
accept One Bitter Wish##13511 |goto Darkshore 63.80,6.00
step
kill Rit'ko##32970 |q 13511/1 |goto Darkshore 64.10,5.30
collect Shatterspear Torturer's Cage Key##45040 |q 13510 |goto Darkshore 64.10,5.30 |future
step
Click the Shatterspear Cage
|tip It looks like a yellow cage with a night elf kneeling inside it.
talk Sentinel Aynasha##32964
accept Timely Arrival##13510 |goto Darkshore 64.50,5.50
step
Follow Sentinel Aynasha as she runs
|tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
Escort Sentinel Aynasha to the Dock |q 13510/1 |goto Darkshore 60.20,7.00
step
talk Sentinel Tysha Moonblade##32965
turnin Denying Manpower##13507 |goto Darkshore 58.90,19.40
step
talk Lieutenant Morra Starbreeze##32963
turnin One Bitter Wish##13511 |goto Darkshore 58.90,19.40
turnin War Supplies##13509 |goto Darkshore 58.90,19.40
turnin Timely Arrival##13510 |goto Darkshore 58.90,19.40
accept Strategic Strikes##13512 |goto Darkshore 58.90,19.40
step
talk Balthule Shadowstrike##32966
accept On the Brink##13513 |goto Darkshore 58.90,19.50
step
talk Mathas Wildwood##34041
accept The Looting of Althalaxx##13844 |goto Darkshore 59.10,19.60
stickystart "shatteramul"
step
Use your Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995
|tip She's floating above the water in this pit in a blue smokey cyclone.  Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.  Keep alternating between throwing your spear at her and hiding.
kill Sheya Stormweaver##32869 |q 13512/2 |goto Darkshore 61.20,20.40
step
kill Teegan Holloway##34033 |q 13844/1 |goto Darkshore 58.20,23.90
|tip He's an undead that walks around in this broken tower.
step
Click the Charred Book
|tip It looks like a small black book laying on the floor upstairs in this broken tower.
collect Narassin's Tome##45944 |q 13844/2 |goto Darkshore 58.30,24.00
step
Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995
|tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.  Keep using your Dryad spear on him and moving to avoid his spell.
kill Lorenth Thundercall##32868 |q 13512/1 |goto Darkshore 56.80,25.90
step
label "shatteramul"
kill Shatterspear Shaman##32860+
collect 6 Shatterspear Amulet##44942 |q 13513/1 |goto Darkshore 57.20,25.10
step
talk Lieutenant Morra Starbreeze##32963
turnin Strategic Strikes##13512 |goto Darkshore 58.90,19.40
step
talk Balthule Shadowstrike##32966
turnin On the Brink##13513 |goto Darkshore 58.90,19.50
step
talk Lieutenant Morra Starbreeze##32963
accept The Front Line##13590 |goto Darkshore 58.90,19.40
step
talk Mathas Wildwood##34041
turnin The Looting of Althalaxx##13844 |goto Darkshore 59.10,19.60
step
Follow the path up |goto Darkshore 63.60,20.00 < 5 |only if walking
Enter the tunnel |goto Darkshore 67.50,18.70 < 5 |walk
talk Kerlonian Evershade##33176
accept The Ancients' Ire##13514 |goto Darkshore 69.10,19.30
step
Click the Vengeful Protector to ride on it |invehicle |q 13514 |goto Darkshore 69.50,18.80
|tip it looks like a big purple tree ent.
step
Use the abilities on your hotbar near the trolls and next to the troll buildings around this area
Kill 30 Shatterspear Vale Trolls |q 13514/1 |goto Darkshore 70.30,20.10
Destroy 6 Shatterspear Structures |q 13514/2 |goto Darkshore 70.30,20.10
step
Click the red arrow on your hotbar to stop riding on the Vengeful Protector |outvehicle |q 13514 |goto Darkshore 69.50,18.80
step
talk Kerlonian Evershade##33176
turnin The Ancients' Ire##13514 |goto Darkshore 69.10,19.30
step
talk Huntress Sandrya Moonfall##33178
turnin The Front Line##13590 |goto Darkshore 72.30,19.10
accept Ending the Threat##13515 |goto Darkshore 72.30,19.10
step
talk Huntress Sandrya Moonfall##33178
Tell you are ready, begin the attack
kill Jor'kil the Soulripper##32862 |q 13515/1 |goto Darkshore 72.30,19.10
|tip Make sure to loot his corpse.
collect Hellscream's Missive##46318 |n
Click Hellscream's Missive in your bags |use Hellscream's Missive##46318
accept Disturbing Connections##13591 |goto Darkshore 72.30,19.10
step
talk Huntress Sandrya Moonfall##33178
turnin Ending the Threat##13515 |goto Darkshore 72.40,18.80
step
talk Ranger Glynda Nal'Shea##32971
turnin Disturbing Connections##13591 |goto Darkshore 50.70,19.70
step
talk Cerellean Whiteclaw##32959
accept Remembrance of Auberdine##13570 |goto Darkshore 50.10,19.50
step
talk Sentinel Lendra##32912
accept The Twilight's Hammer##13519 |goto Darkshore 50.30,20.40
accept Twilight Plans##13596 |goto Darkshore 50.30,20.40
step
talk Moon Priestess Tharill##32932
accept Power Over the Tides##13523 |goto Darkshore 44.60,30.80
stickystart "soothspirits"
step
kill High Cultist Azerynn##32899 |q 13519/1 |goto Darkshore 43.70,31.40
step
label "soothspirits"
kill Enraged Tidal Spirit##32890+
Use your Orb of Elune on Enraged Tidal Spirit corpses |use Orb of Elune##44975
Sooth 6 Tidal Spirits |q 13523/1 |goto Darkshore 44.30,30.10
step
talk Moon Priestess Tharill##32932
turnin Power Over the Tides##13523 |goto Darkshore 44.60,30.80
step
kill 10 Twilight Fanatic##32888 |q 13519/2 |goto Darkshore 44.70,31.10
Click Twilight Plans
|tip They look like small scrolls on the ground around this area.
collect 6 Twilight Plans##44968 |q 13596/1 |goto Darkshore 44.70,31.10
You can find more around [43.90,32.50]
step
talk Sentinel Lendra##32912
turnin The Twilight's Hammer##13519 |goto Darkshore 50.30,20.40
turnin Twilight Plans##13596 |goto Darkshore 50.30,20.40
accept In Aid of the Refugees##13601 |goto Darkshore 50.30,20.40
step
talk Priestess Alinya##33107
turnin In Aid of the Refugees##13601 |goto Darkshore 42.50,45.00
step
talk Sentinel Selarin##3694
accept Against the Wind##13542 |goto Darkshore 42.50,45.20
step
talk Corvine Moonrise##32987
accept Three Hammers to Break##13543 |goto Darkshore 42.70,45.10
accept Malfurion's Return##13573 |goto Darkshore 42.70,45.10
step
talk Yalda##6887
accept Coaxing the Spirits##13547 |goto Darkshore 39.10,43.20
stickystart "frenzcycl"
step
talk Caylais Moonfeather##33037
|tip She's laying on the dock.
Coax the spirit out of Caylais Moonfeather's still corpse
Coax Caylais Moonfeather's spirit |q 13547/4 |goto Darkshore 38.10,44.00
step
kill Windmaster Tzu-Tzu##32989 |q 13543/2 |goto Darkshore 37.80,42.80
step
talk Taldan##33035
Coax Taldan's corpse to give up its spirit
Coax Taldan's spirit |q 13547/3 |goto Darkshore 38.50,41.90
step
talk Sentinel Elissa Starbreeze##33033
|tip She's laying on the ground on the bottom floor of this building.
Coax the spirit out of Sentinel Elissa Stareeze's corpse
Coax Sentinel Elissa Starbreeze's spirit |q 13547/2 |goto Darkshore 41.00,41.40
step
kill Cloudtamer Wildmane##32988 |q 13543/1 |goto Darkshore 40.80,41.50
step
talk Thundris Windweaver##33001
|tip He's laying on the ground inside this building.
Coax Thundris Windweaver's spirit
Coax Thundris Windweaver's spirit |q 13547/1 |goto Darkshore 39.30,38.90
step
kill Skylord Braax##32990 |q 13543/3 |goto Darkshore 39.10,38.30
step
label "frenzcycl"
kill Frenzied Cyclone##32985+
collect 8 Frenzied Cyclone Bracers##44868 |q 13542 |goto Darkshore 40.10,41.60
step
Use your Frenzied Cyclone Bracers while standing in the moonwell |use Frenzied Cyclone Bracers##44868
Destroy 8 Frenzied Cyclone Bracers |q 13542/1 |goto Darkshore 39.50,42.10
step
talk Yalda##6887
turnin Coaxing the Spirits##13547 |goto Darkshore 39.10,43.20
accept Call Down the Thunder##13558 |goto Darkshore 39.10,43.20
step
Click the Aetherion Ritual Orb
|tip It looks like a floating purple ball with pink and blue electricity coming off of it on the docks.
kill Aetherion##33041
collect Aetherion's Essence##44929 |q 13558/2 |goto Darkshore 36.60,41.00
step
talk Archaeologist Hollee##33232
accept The Last Refugee##13605 |goto Darkshore 38.60,42.50
Follow her around and protect her
Escort Archaeologist Hollee to safety |q 13605/1 |goto Darkshore 38.60,42.50
step
talk Sentinel Selarin##3694
turnin Against the Wind##13542 |goto Darkshore 42.50,45.10
step
talk Elisa Steelhand##33231
turnin The Last Refugee##13605 |goto Darkshore 42.60,45.30
step
talk Corvine Moonrise##32987
turnin Three Hammers to Break##13543 |goto Darkshore 42.70,45.10
turnin Call Down the Thunder##13558 |goto Darkshore 42.70,45.10
step
Follow the path up |goto Darkshore 43.50,51.50 < 5 |only if walking
talk Malfurion Stormrage##33091
turnin Malfurion's Return##13573 |goto Darkshore 43.70,53.40
accept The Land Is in Their Blood##13575 |goto Darkshore 43.70,53.40
accept The Last Wildkin##13577 |goto Darkshore 43.70,53.40
accept Protector of Ameth'Aran##13579 |goto Darkshore 43.70,53.40
step
Enter the cave |goto Darkshore 45.10,48.60 < 5 |walk
talk Aroom##33119
turnin The Last Wildkin##13577 |goto Darkshore 45.60,48.50
accept Aroom's Farewell##13578 |goto Darkshore 45.60,48.50
step
Click Slain Wildkin Feathers
|tip They look like small brown and white feathers on the ground around this area.
collect 8 Slain Wildkin Feather##44960 |q 13578/1 |goto Darkshore 44.10,48.50
step
Enter the cave |goto Darkshore 45.10,48.60 < 5 |walk
talk Aroom##33119
turnin Aroom's Farewell##13578 |goto Darkshore 45.60,48.50
accept Elune's Fire##13582 |goto Darkshore 45.60,48.50
step
kill Horoo the Flamekeeper##34385
|tip He's a white owlkin spirit that walks around this area.
collect Elune's Torch##46692 |q 13582/1 |goto Darkshore 46.60,50.70
step
Enter the cave |goto Darkshore 45.10,48.60 < 5 |walk
talk Aroom##33119
turnin Elune's Fire##13582 |goto Darkshore 45.60,48.50
accept The Wildkin's Oath##13583 |goto Darkshore 45.60,48.50
step
talk Elder Brownpaw##33117
turnin The Land Is in Their Blood##13575 |goto Darkshore 41.00,56.50
accept Mutual Aid##13576 |goto Darkshore 41.00,56.50
step
kill Unbound Fire Elemental##32999+
Use your Soothing Totem on their corpses |use Soothing Totem##44959
Absorb 8 Unbound Fire Elemental |q 13576/1 |goto Darkshore 40.60,59.20
step
talk Elder Brownpaw##33117
turnin Mutual Aid##13576 |goto Darkshore 40.90,56.50
accept Soothing the Elements##13580 |goto Darkshore 40.90,56.50
step
Use your Energized Soothing Totem in this spot |use Energized Soothing Totem##46546
Defend the Energized Soothing Totem
Complete the Ritual of Soothing |q 13580/1 |goto Darkshore 39.70,62.40
step
talk Elder Brownpaw##33117
turnin Soothing the Elements##13580 |goto Darkshore 40.90,56.50
accept The Blackwood Pledge##13581 |goto Darkshore 40.90,56.50
step
talk Selenn##33112
turnin Protector of Ameth'Aran##13579 |goto Darkshore 44.40,56.80
accept Calming the Earth##13584 |goto Darkshore 44.40,56.80
step
kill 8 Enraged Earth Elemental##33083 |q 13584/1 |goto Darkshore 44.30,55.80
step
talk Selenn##33112
turnin Calming the Earth##13584 |goto Darkshore 44.40,56.80
accept Sworn to Protect##13585 |goto Darkshore 44.40,56.80
step
Follow the path up |goto Darkshore 43.60,55.10 < 5 |walk
talk Malfurion Stormrage##33091
turnin The Blackwood Pledge##13581 |goto Darkshore 43.60,53.40
turnin The Wildkin's Oath##13583 |goto Darkshore 43.60,53.40
turnin Sworn to Protect##13585 |goto Darkshore 43.60,53.40
accept The Emerald Dream##13586 |goto Darkshore 43.60,53.40
step
Follow the path up |goto Darkshore 46.50,54.30 < 5 |only if walking
Enter the cave |goto Darkshore 47.20,56.00 < 5 |walk
Follow the path to the end of the cave
Click the Nightmare Portal
|tip It's a swirling purple, green and black portal in the cave.
Enter the Nightmare World |havebuff Into the Nightmare##65409 |q 13586 |goto Darkshore 49.00,57.10
step
talk Thessera##33166
turnin The Emerald Dream##13586 |goto Darkshore 49.20,56.90
accept The Waking Nightmare##13587 |goto Darkshore 49.20,56.90
step
kill Nightmare Guardian##34398
|tip The Nightmare Guardian walks along this path.
collect Emerald Scroll##46695 |q 13587/1 |goto Darkshore 49.60,55.30
step
talk Thessera##33166
turnin The Waking Nightmare##13587 |goto Darkshore 49.20,56.90
accept Leaving the Dream##13940 |goto Darkshore 49.20,56.90
step
talk Malfurion Stormrage##33091
turnin Leaving the Dream##13940 |goto Darkshore 43.70,53.50
accept The Eye of All Storms##13588 |goto Darkshore 43.70,53.50
step
Click Thessera to ride on her
|tip She's a big green dragon.
While flying, use the Emerald Barrage ability on your hotbar to do the following:
kill Twilight Portal |q 13588/1 |goto Darkshore 43.50,53.70
kill 12 Twilight Rider##34282 |q 13588/2 |goto Darkshore 43.50,53.70
step
Use the Land Thessera ability on your hotbar
Thessera will take you back to the ground |outvehicle |q 13588
step
talk Malfurion Stormrage##33091
turnin The Eye of All Storms##13588 |goto Darkshore 43.70,53.50
accept Mounting the Offensive##13902 |goto Darkshore 43.70,53.50
step
talk Delanea##33253
fpath Grove of the Ancients |goto Darkshore 44.40,75.50
step
talk Foriel Broadleaf##33250
accept What's Happening to the Blackwood Furbolg?##13525 |goto Darkshore 45.10,75.20
step
talk Balren of the Claw##34402
turnin Mounting the Offensive##13902 |goto Darkshore 45.30,75.10
accept Leave No Tracks##13892 |goto Darkshore 45.30,75.10
step
talk Kathrena Winterwisp##34301
accept Consumed##13881 |goto Darkshore 45.20,74.60
stickystart "consumedbear"
step
Go to this spot underwater
Investigate the Watering Hole |q 13881/1 |goto Darkshore 45.00,79.20
step
label "consumedbear"
kill 6 Consumed Thistle Bear##34302 |q 13881/2 |goto Darkshore 44.70,79.40
step
talk Elder Brolg##32967
turnin What's Happening to the Blackwood Furbolg?##13525 |goto Darkshore 43.50,81.00
accept The Bear's Paw##13526 |goto Darkshore 43.50,81.00
step
Click Bear's Paws
|tip They look like green leafy plants on the ground around this area.
collect 8 Bear's Paw##44850 |q 13526/1 |goto Darkshore 44.00,81.60
step
talk Elder Brolg##32967
turnin The Bear's Paw##13526 |goto Darkshore 43.50,81.00
accept The Bear's Blessing##13544 |goto Darkshore 43.50,81.00
step
kill Fleetfoot##32997
|tip He's a plainstrider that walks around this pond area.
collect Fleetfoot's Tailfeathers##44886 |q 13544 |goto Darkshore 44.80,78.50
step
Use your Bear's Paw Bundle in front of the Ancient Bear Statue |use Bear's Paw Bundle##44888
|tip It's a stone bear head statue in the middle of a bunch of broken stone pillars.
collect Blessed Herb Bundle##44887 |q 13544/1 |goto Darkshore 45.30,76.80
step
talk Kathrena Winterwisp##34301
turnin Consumed##13881 |goto Darkshore 45.20,74.60
accept The Seeds of Life##13882 |goto Darkshore 45.20,74.60
step
talk Onu##33072
Ask him where you may find a Seed of the Earth
collect Seed of the Earth##46354 |q 13882/1 |goto Darkshore 45.40,74.80
step
Click the Darkshore Wisp
|tip It's a blue-ish floating ball of light.  Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
collect Seed of the Sky##46355 |q 13882/3 |goto Darkshore 42.10,79.00
step
talk Elder Brolg##32967
turnin The Bear's Blessing##13544 |goto Darkshore 43.50,81.00
accept Cleansing the Afflicted##13545 |goto Darkshore 43.50,81.00
step
talk Gren Tornfur##32968
accept Jadefire Braziers##13572 |goto Darkshore 43.60,81.00
step
Use your Blessed Herb Bundle on a Blackwood furlbogs |use Blessed Herb Bundle##44889
kill Spirit of Corruption##33000+
Cleanse 7 Blackwood Furbolg Cleansed |q 13545/1 |goto Darkshore 44.10,82.50
|tip You don't have to kill the furbolgs, they will become friendly and disappear after you cleanse them.
Click Jadefire Brazier to destroy them
|tip They look like bowls with green flames in them on the ground around this area.
Destroy 8 Jadefire Brazier |q 13572/1 |goto Darkshore 44.10,82.50
step
talk Elder Brolg##32967
turnin Cleansing the Afflicted##13545 |goto Darkshore 43.50,81.00
accept The Defiler##13546 |goto Darkshore 43.50,81.00
step
talk Gren Tornfur##32968
turnin Jadefire Braziers##13572 |goto Darkshore 43.60,81.00
step
Enter the cave |goto Darkshore 46.30,83.70,0.50 |c
step
kill Sharax the Defiler##32996 |q 13546/1 |goto Darkshore 46.80,84.00
step
talk Elder Brolg##32967
turnin The Defiler##13546 |goto Darkshore 43.50,81.00
step
Use your Panther Figurine in this spot |use Panther Figurine##46696
|tip If you have a pet, dismiss it.
Transform into a panther |havebuff On the Prowl##65426 |q 13892 |goto Darkshore 42.40,82.30
step
Avoid the Faceless Ones, they can see through your panther disguise stealth
Stand in this spot and listen to Foreman Balsoth
Complete the Twilight's Hammer surveillance |q 13892/1 |goto Darkshore 40.60,84.50
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Leave No Tracks##13892 |goto Darkshore 40.60,84.50
accept Stepping Up Surveillance##13948 |goto Darkshore 40.60,84.50
step
Click a Glittering Shell
|tip They look like white clam shells along the beach around this area.
collect Seed of the Sea##46356 |q 13882/2 |goto Darkshore 38.60,78.20
step
Use your Panther Figurine in this spot |use Panther Figurine##46696
|tip If you have a pet, dismiss it.
Transform into a panther |havebuff On the Prowl##65426 |q 13948 |goto Darkshore 39.20,85.10
step
Avoid the Faceless Ones, they can see through your panther disguise stealth |goto Darkshore 39.80,86.40
Follow the path up |goto Darkshore 39.80,86.40,0.50 |noway |c
step
Avoid the Faceless Ones, they can see through your panther disguise stealth |goto Darkshore 41.10,85.40
Follow the path up |goto Darkshore 41.10,85.40,0.50 |noway |c
step
Go to this spot
Watch the dialogue
Complete the Master's Glaive Surveillance |q 13948/1 |goto Darkshore 39.90,84.80
step
talk Kathrena Winterwisp##34301
turnin The Seeds of Life##13882 |goto Darkshore 45.20,74.60
accept An Ounce of Prevention##13925 |goto Darkshore 45.20,74.60
step
talk Balren of the Claw##34402
turnin Stepping Up Surveillance##13948 |goto Darkshore 45.30,75.10
step
talk Larien##34404
accept Unearthed Knowledge##13896 |goto Darkshore 45.30,75.10
step
Use Lifebringer Sapling on a Grizzled Thistle Bear |use Lifebringer Sapling##46363
Test the Lifebringer Sapling |q 13925/1 |goto Darkshore 42.30,76.70
step
talk Kathrena Winterwisp##34301
turnin An Ounce of Prevention##13925 |goto Darkshore 45.20,74.60
accept In Defense of Darkshore##13885 |goto Darkshore 45.20,74.60
step
talk Orseus##34392
Tell him Kathrena sent you to borrow one of his Hippogryphs
From the air, use the Protect Wildlife ability on your hotbar on animals on the ground to do the following:
Protect 8 Grizzled Thistle Bears |q 13885/1 |goto Darkshore 44.50,75.30
Protect 8 Moonstalkers |q 13885/2 |goto Darkshore 44.50,75.30
Protect 8 Whitetail Deers |q 13885/3 |goto Darkshore 44.50,75.30
step
talk Kathrena Winterwisp##34301
turnin In Defense of Darkshore##13885 |goto Darkshore 45.20,74.60
accept The Devourer of Darkshore##13891 |goto Darkshore 45.20,74.60
step
Use your Lifebringer Sapling while standing next to the lake |use Lifebringer Sapling##46370
kill Yoth'al the Devourer##34331
Destroy the Devouring Artifact |q 13891/1 |goto Darkshore 45.10,78.70
step
talk Kathrena Winterwisp##34301
turnin The Devourer of Darkshore##13891 |goto Darkshore 45.20,74.60
step
map Darnassus
To continue gaining reputation with the Darnassus faction:
You can buy a Darnassus Tabard from Moon Priestess Lasara at [Darnassus 36.50,48.50]
|tip Wear the Darnassus Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Argent Tournament Grounds Aspirant Rank Dailies",{
description="This guide section will walk you through completing your race's Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant Rank with your own race.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
talk Arcanist Taelis##33625
accept Up To The Challenge##13672 |goto Icecrown,76.50,19.40
step
talk Arcanist Taelis##33625
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13666 |goto Icecrown 76.50,19.40 |or
accept A Worthy Weapon##13669 |goto Icecrown 76.50,19.40 |or
accept The Edge of Winter##13670 |goto Icecrown 76.50,19.40 |or
step
talk Avareth Swiftstrike##33646
accept Training in the Field##13671 |goto Icecrown 76.50,19.40
step
talk Scout Shalyndria##33647
accept Learning the Reins##13625 |goto Icecrown,76.50,19.50
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13666/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13669 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13669/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13670 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13670/1 |goto Howling Fjord,42.20,19.70
step
kill Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
kill 8 Icecrown Scourge Proxy##33192 |q 13671/1 |goto Icecrown,71.30,37.50
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |invehicle |q 13625 |goto Icecrown,75.90,20.40
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13625/1 |goto Icecrown 72.60,19.70
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13625/3 |goto Icecrown 72.90,18.80
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13625/2 |goto Icecrown 73.10,19.00
step
talk Arcanist Taelis##33625
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13666 |goto Icecrown 76.50,19.40
turnin A Worthy Weapon##13669 |goto Icecrown 76.50,19.40
turnin The Edge of Winter##13670 |goto Icecrown 76.50,19.40
step
talk Avareth Swiftstrike##33646
turnin Training in the Field##13671 |goto Icecrown 76.50,19.40
step
talk Scout Shalyndria##33647
turnin Learning the Reins##13625 |goto Icecrown,76.50,19.50
step
talk Arcanist Taelis##33625
turnin Up To The Challenge##13672 |goto Icecrown 76.50,19.40
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Argent Tournament Grounds Champion Rank Dailies - Death Knight Only",{
description="You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
talk Zor'be the Bloodletter##33769
accept Taking Battle To The Enemy##13791 |goto Icecrown,73.80,19.40
only DeathKnight
step
talk Crok Scourgebane##33762
accept Threat From Above##13788 |goto Icecrown 73.80,20.10
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13864 |goto Icecrown 73.80,20.10
only DeathKnight
step
talk Illyrie Nightfall##33770
accept Among the Champions##13793 |goto Icecrown 73.60,20.10
only DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13793 |goto Icecrown 71.70,22.40
only Draenei DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13793 |goto Icecrown 71.80,22.50
only Dwarf DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13793 |goto Icecrown 71.60,22.40
only Human DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793 |goto Icecrown 71.60,22.50
only NightElf DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793 |goto Icecrown 71.90,22.50
only Gnome DeathKnight
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
collect 4 Mark of the Champion##23206 |q 13793/1 |goto Icecrown 71.60,23.80
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13793
only DeathKnight
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13791/1 |goto Icecrown 64.30,21.40
only DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13864 |goto Icecrown,48.90,71.40
only DeathKnight
step
kill 3 Boneguard Commander##34127 |q 13864/1 |goto Icecrown 50.10,74.80
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13864 |goto Icecrown 48.90,71.40
only DeathKnight
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw##33687 |q 13788/1 |goto Icecrown 44.10,32.60
|tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier##33695 |q 13788/2 |goto Icecrown 44.10,32.60
only DeathKnight
step
talk Zor'be the Bloodletter##33769
turnin Taking Battle To The Enemy##13791 |goto Icecrown 73.80,19.40
only DeathKnight
step
talk Crok Scourgebane##33762
turnin Threat From Above##13788 |goto Icecrown 73.80,20.10
turnin Battle Before The Citadel##13864 |goto Icecrown 73.80,20.10
only DeathKnight
step
talk Illyrie Nightfall##33770
turnin Among the Champions##13793 |goto Icecrown 73.60,20.10
only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Argent Tournament Grounds Champion Rank Dailies - Non-Death Knight Only",{
description="You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
talk Luuri##33771
accept Among the Champions##13790 |goto Icecrown,69.90,23.30
only if not DeathKnight
step
talk Eadric the Pure##33759
accept Threat From Above##13682 |goto Icecrown 70.00,23.40
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13861 |goto Icecrown 70.00,23.40
only if not DeathKnight
step
talk Cellian Daybreak##33763
accept Taking Battle To The Enemy##13789 |goto Icecrown 69.90,23.50
only if not DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13790 |goto Icecrown 71.70,22.40
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13790 |goto Icecrown 71.80,22.50
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13790 |goto Icecrown 71.60,22.40
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790 |goto Icecrown 71.60,22.50
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790 |goto Icecrown 71.90,22.50
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
collect 4 Mark of the Champion##23206 |q 13790/1 |goto Icecrown 71.60,23.80
only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only if not DeathKnight
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13789/1 |goto Icecrown 64.30,21.40
only if not DeathKnight
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only if not DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw##33687 |q 13682/1 |goto Icecrown 44.10,32.60
|tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier##33695 |q 13682/2 |goto Icecrown 44.10,32.60
only if not DeathKnight
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13861 |goto Icecrown,48.90,71.40
only if not DeathKnight
step
kill 3 Boneguard Commander##34127 |q 13861/1 |goto Icecrown 50.10,74.80
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13861 |goto Icecrown 48.90,71.40
only if not DeathKnight
step
talk Luuri##33771
turnin Among the Champions##13790 |goto Icecrown 69.90,23.30
only if not DeathKnight
step
talk Eadric the Pure##33759
turnin Threat From Above##13682 |goto Icecrown 70.00,23.40
turnin Battle Before The Citadel##13861 |goto Icecrown 70.00,23.40
only if not DeathKnight
step
talk Cellian Daybreak##33763
turnin Taking Battle To The Enemy##13789 |goto Icecrown 69.90,23.50
only if not DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Argent Tournament Grounds Crusader Dailies",{
description="In order to be able to complete the quests in this guide section, you must already be Exalted with the Ironforge, Stormwind City, Exodar, Darnassus and Gnomeregan. Also, you must have already become a Champion with each of those factions, using the Crusader Title Guide in the Icecrown section of the Dailies guide.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept Deathspeaker Kharos##14105 |goto Icecrown,69.50,23.10 |or
accept Drottinn Hrothgar##14101 |goto Icecrown,69.50,23.10 |or
accept Mistcaller Yngvar##14102 |goto Icecrown,69.50,23.10 |or
accept Ornolf The Scarred##14104 |goto Icecrown,69.50,23.10 |or
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
accept Get Kraken!##14108 |goto Icecrown 69.50,23.10 |or
accept The Fate Of The Fallen##14107 |goto Icecrown 69.50,23.10 |or
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown 64.20,21.40
|tip He's standing in a small pit area.
step
Click Discarded Soul Crystals
|tip They look like small blue-glowing crystals laying on the ground around this area.
collect 6 Discarded Soul Crystal##47035 |n
Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
Bless 6 Fallen Hero's Spirits |q 14107/1 |goto Icecrown 51.10,38.40
step
Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing,43.90,24.30
step
Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
kill Drottinn Hrothgar##34980 |q 14101/1 |goto Hrothgar's Landing,50.70,15.40
step
Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto Hrothgar's Landing,58.50,31.60
step
Click a Stabled Argent Hippogryph to ride it
Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto Icecrown,69.80,22.20
Hurl Spears at 6 North Sea Kraken |q 14108/1 |goto Icecrown,69.80,22.20
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin Deathspeaker Kharos##14105 |goto Icecrown 69.50,23.10
turnin Drottinn Hrothgar##14101 |goto Icecrown 69.50,23.10
turnin Mistcaller Yngvar##14102 |goto Icecrown 69.50,23.10
turnin Ornolf The Scarred##14104 |goto Icecrown 69.50,23.10
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
turnin Get Kraken!##14108 |goto Icecrown 69.50,23.10
turnin The Fate Of The Fallen##14107 |goto Icecrown 69.50,23.10
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Argent Tournament Grounds Valiant Rank Dailies",{
description="This guide section will walk you through completing your race's Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion Rank with your own race. You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section in order to have access to the quests in this guide section.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
talk Arcanist Taelis##33625
accept The Aspirant's Challenge##13679 |goto Icecrown,76.50,19.40
|tip You must turn in the Up To The Challenge quest before you can accept this quest. The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |invehicle |q 13679 |goto Icecrown 71.80,20.00
step
talk Squire David##33447
Tell him you are ready to fight!
|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
An Argent Valiant runs up on a horse
Use the abilities on your hotbar to defeat the Argent Valiant
|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13679/1 |goto Icecrown 71.40,19.60
step
talk Arcanist Taelis##33625
turnin The Aspirant's Challenge##13679 |goto Icecrown 76.50,19.40
accept A Valiant Of Stormwind##13684 |goto Icecrown 76.50,19.40 |only Human
accept A Valiant Of Darnassus##13689 |goto Icecrown 76.50,19.40 |only NightElf
accept A Valiant Of Ironforge##13685 |goto Icecrown 76.50,19.40 |only Dwarf
accept A Valiant Of Gnomeregan##13688 |goto Icecrown 76.50,19.40 |only Gnome
accept A Valiant Of The Exodar##13690 |goto Icecrown 76.50,19.40 |only Draenei
step
talk Marshal Jacob Alerius##33225
turnin A Valiant Of Stormwind##13684 |goto Icecrown 76.60,19.20
accept The Valiant's Charge##13718 |goto Icecrown 76.60,19.20
only Human
step
talk Jaelyne Evensong##33592
turnin A Valiant Of Darnassus##13689 |goto Icecrown 76.30,19.10
accept The Valiant's Charge##13717 |goto Icecrown 76.30,19.10
only NightElf
step
talk Lana Stouthammer##33312
turnin A Valiant Of Ironforge##13685 |goto Icecrown 76.60,19.50
accept The Valiant's Charge##13714 |goto Icecrown 76.60,19.50
only Dwarf
step
talk Ambrose Boltspark##33335
turnin A Valiant Of Gnomeregan##13688 |goto Icecrown 76.50,19.80
accept The Valiant's Charge##13715 |goto Icecrown 76.50,19.80
only Gnome
step
talk Colosos##33593
turnin A Valiant Of The Exodar##13690 |goto Icecrown 76.10,19.20
accept The Valiant's Charge##13716 |goto Icecrown 76.10,19.20
only Draenei
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13752 |goto Icecrown 76.10,19.10 |or
accept A Worthy Weapon##13753 |goto Icecrown 76.10,19.10 |or
accept The Edge Of Winter##13754 |goto Icecrown 76.10,19.10 |or
only Draenei
step
talk Saandos##33655
accept A Valiant's Field Training##13755 |goto Icecrown 76.10,19.20
only Draenei
step
talk Ranii##33656
accept The Grand Melee##13756 |goto Icecrown 76.20,19.10
accept At The Enemy's Gates##13854 |goto Icecrown 76.20,19.10
only Draenei
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13752/1 |goto Grizzly Hills,61.20,50.30
only Draenei
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13753 |goto Icecrown,69.10,76.20
only Draenei
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13753/1 |goto Dragonblight,93.20,26.10
only Draenei
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13754 |goto Crystalsong Forest,54.50,74.90
only Draenei
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord,42.20,19.70
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13854 |goto Icecrown,48.90,71.40
only Draenei
step
kill 15 Boneguard Footman##33438 |q 13854/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13854/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13854/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Draenei
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854 |goto Icecrown 49.10,71.40
only Draenei
step
kill 10 Converted Hero##32255 |q 13755/1 |goto Icecrown 44.30,54.20
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13756 |goto Icecrown 76.40,20.50
only Draenei
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13756/1 |goto Icecrown 75.30,18.50
only Draenei
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13752 |goto Icecrown 76.10,19.10
turnin A Worthy Weapon##13753 |goto Icecrown 76.10,19.10
turnin The Edge Of Winter##13754 |goto Icecrown 76.10,19.10
only Draenei
step
talk Saandos##33655
turnin A Valiant's Field Training##13755 |goto Icecrown 76.10,19.20
only Draenei
step
talk Ranii##33656
turnin The Grand Melee##13756 |goto Icecrown 76.20,19.10
turnin At The Enemy's Gates##13854 |goto Icecrown 76.20,19.10
only Draenei
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13741 |goto Icecrown 76.60,19.50 |or
accept A Worthy Weapon##13742 |goto Icecrown 76.60,19.50 |or
accept The Edge Of Winter##13743 |goto Icecrown 76.60,19.50 |or
only Dwarf
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto Icecrown 76.70,19.40
only Dwarf
step
talk Clara Tumblebrew##33309
accept The Grand Melee##13745 |goto Icecrown 76.60,19.60
accept At The Enemy's Gates##13851 |goto Icecrown 76.60,19.60
only Dwarf
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills,61.20,50.30
only Dwarf
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13742 |goto Icecrown,69.10,76.20
only Dwarf
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight,93.20,26.10
only Dwarf
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest,54.50,74.90
only Dwarf
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord,42.20,19.70
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto Icecrown,48.90,71.40
only Dwarf
step
kill 15 Boneguard Footman##33438 |q 13851/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13851/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13851/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Dwarf
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851 |goto Icecrown 49.10,71.40
only Dwarf
step
kill 10 Converted Hero##32255 |q 13744/1 |goto Icecrown 44.30,54.20
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13745 |goto Icecrown 76.30,20.50
only Dwarf
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto Icecrown 75.30,18.50
only Dwarf
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13741 |goto Icecrown 76.60,19.50
turnin A Worthy Weapon##13742 |goto Icecrown 76.60,19.50
turnin The Edge Of Winter##13743 |goto Icecrown 76.60,19.50
only Dwarf
step
talk Rollo Sureshot##33315
turnin A Valiant's Field Training##13744 |goto Icecrown 76.70,19.40
only Dwarf
step
talk Clara Tumblebrew##33309
turnin The Grand Melee##13745 |goto Icecrown 76.60,19.60
turnin At The Enemy's Gates##13851 |goto Icecrown 76.60,19.60
only Dwarf
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13603 |goto Icecrown 76.60,19.10 |or
accept A Worthy Weapon##13600 |goto Icecrown 76.60,19.10 |or
accept The Edge Of Winter##13616 |goto Icecrown 76.60,19.10 |or
only Human
step
talk Sir Marcus Barlowe##33222
accept A Valiant's Field Training##13592 |goto Icecrown 76.50,19.10
only Human
step
talk Captain Joseph Holley##33223
accept The Grand Melee##13665 |goto Icecrown 76.60,19.20
accept At The Enemy's Gates##13847 |goto Icecrown 76.60,19.20
only Human
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills,61.20,50.30
only Human
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13600 |goto Icecrown,69.10,76.20
only Human
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight,93.20,26.10
only Human
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest,54.50,74.90
only Human
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13616/1 |goto Howling Fjord,42.20,19.70
only Human
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13847 |goto Icecrown,48.90,71.40
only Human
step
kill 15 Boneguard Footman##33438 |q 13847/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13847/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13847/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Human
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847 |goto Icecrown 49.10,71.40
only Human
step
kill 10 Converted Hero##32255 |q 13592/1 |goto Icecrown 44.30,54.20
only Human
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13665 |goto Icecrown 76.10,20.50
only Human
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13665/1 |goto Icecrown 75.30,18.50
only Human
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13603 |goto Icecrown 76.60,19.10
turnin A Worthy Weapon##13600 |goto Icecrown 76.60,19.10
turnin The Edge Of Winter##13616 |goto Icecrown 76.60,19.10
only Human
step
talk Sir Marcus Barlowe##33222
turnin A Valiant's Field Training##13592 |goto Icecrown 76.50,19.10
only Human
step
talk Captain Joseph Holley##33223
turnin The Grand Melee##13665 |goto Icecrown 76.60,19.20
turnin At The Enemy's Gates##13847 |goto Icecrown 76.60,19.20
only Human
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13757 |goto Icecrown 76.30,19.00 |or
accept A Worthy Weapon##13758 |goto Icecrown 76.30,19.00 |or
accept The Edge Of Winter##13759 |goto Icecrown 76.30,19.00 |or
only NightElf
step
talk Illestria Bladesinger##33652
accept A Valiant's Field Training##13760 |goto Icecrown 76.30,19.00
only NightElf
step
talk Airae Starseeker##33654
accept The Grand Melee##13761 |goto Icecrown 76.40,19.00
accept At The Enemy's Gates##13855 |goto Icecrown 76.40,19.00
only NightElf
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13757/1 |goto Grizzly Hills,61.20,50.30
only NightElf
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13758 |goto Icecrown,69.10,76.20
only NightElf
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13758/1 |goto Dragonblight,93.20,26.10
only NightElf
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13759 |goto Crystalsong Forest,54.50,74.90
only NightElf
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13759/1 |goto Howling Fjord,42.20,19.70
only NightElf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13855 |goto Icecrown,48.90,71.40
only NightElf
step
kill 15 Boneguard Footman##33438 |q 13855/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13855/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13855/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855 |goto Icecrown 49.10,71.40
only NightElf
step
kill 10 Converted Hero##32255 |q 13760/1 |goto Icecrown 44.30,54.20
only NightElf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13761 |goto Icecrown 76.00,20.40
only NightElf
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto Icecrown 75.30,18.50
only NightElf
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13757 |goto Icecrown 76.30,19.00
turnin A Worthy Weapon##13758 |goto Icecrown 76.30,19.00
turnin The Edge Of Winter##13759 |goto Icecrown 76.30,19.00
only NightElf
step
talk Illestria Bladesinger##33652
turnin A Valiant's Field Training##13760 |goto Icecrown 76.30,19.00
only NightElf
step
talk Airae Starseeker##33654
turnin The Grand Melee##13761 |goto Icecrown 76.40,19.00
turnin At The Enemy's Gates##13855 |goto Icecrown 76.40,19.00
only NightElf
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13746 |goto Icecrown 76.50,19.80 |or
accept A Worthy Weapon##13747 |goto Icecrown 76.50,19.80 |or
accept The Edge Of Winter##13748 |goto Icecrown 76.50,19.80 |or
only Gnome
step
talk Tickin Gearspanner##33648
accept A Valiant's Field Training##13749 |goto Icecrown 76.60,19.80
only Gnome
step
talk Flickin Gearspanner##33649
accept The Grand Melee##13750 |goto Icecrown 76.50,19.90
accept At The Enemy's Gates##13852 |goto Icecrown 76.50,19.90
only Gnome
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills,61.20,50.30
only Gnome
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13747 |goto Icecrown,69.10,76.20
only Gnome
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight,93.20,26.10
only Gnome
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest,54.50,74.90
only Gnome
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13748/1 |goto Howling Fjord,42.20,19.70
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13852 |goto Icecrown,48.90,71.40
only Gnome
step
kill 15 Boneguard Footman##33438 |q 13852/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13852/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13852/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Gnome
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852 |goto Icecrown 49.10,71.40
only Gnome
step
kill 10 Converted Hero##32255 |q 13749/1 |goto Icecrown 44.30,54.20
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto Icecrown 76.20,20.50
only Gnome
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them |tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto Icecrown 75.30,18.50
only Gnome
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13746 |goto Icecrown 76.50,19.80
turnin A Worthy Weapon##13747 |goto Icecrown 76.50,19.80
turnin The Edge Of Winter##13748 |goto Icecrown 76.50,19.80
only Gnome
step
talk Tickin Gearspanner##33648
turnin A Valiant's Field Training##13749 |goto Icecrown 76.60,19.80
only Gnome
step
talk Flickin Gearspanner##33649
turnin The Grand Melee##13750 |goto Icecrown 76.50,19.90
turnin At The Enemy's Gates##13852 |goto Icecrown 76.50,19.90
only Gnome
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13718/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human
collect 25 Valiant's Seal##44987 |q 13714/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
collect 25 Valiant's Seal##44987 |q 13717/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf
collect 25 Valiant's Seal##44987 |q 13715/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
collect 25 Valiant's Seal##44987 |q 13716/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Charge##13718 |goto Icecrown 76.60,19.20
accept The Valiant's Challenge##13699 |goto Icecrown 76.60,19.20
only Human
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13717 |goto Icecrown 76.30,19.10
accept The Valiant's Challenge##13725 |goto Icecrown 76.30,19.10
only NightElf
step
talk Lana Stouthammer##33312
turnin The Valiant's Charge##13714 |goto Icecrown 76.60,19.50
accept The Valiant's Challenge##13713 |goto Icecrown 76.60,19.50
only Dwarf
step
talk Ambrose Boltspark##33335
turnin The Valiant's Charge##13715 |goto Icecrown 76.50,19.80
accept The Valiant's Challenge##13723 |goto Icecrown 76.50,19.80
only Gnome
step
talk Colosos##33593
turnin The Valiant's Charge##13716 |goto Icecrown 76.10,19.20
accept The Valiant's Challenge##13724 |goto Icecrown 76.10,19.20
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13699 |goto Icecrown 71.60,22.40
only Human
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13725 |goto Icecrown 71.60,22.50
only NightElf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13713 |goto Icecrown 71.80,22.50
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto Icecrown 71.90,22.50
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13724 |goto Icecrown 71.70,22.40
only Draenei
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13699/1 |goto Icecrown 68.60,21.00 |only Human
Defeat the Argent Valiant |q 13725/1 |goto Icecrown 68.60,21.00 |only NightElf
Defeat the Argent Valiant |q 13713/1 |goto Icecrown 68.60,21.00 |only Dwarf
Defeat the Argent Valiant |q 13723/1 |goto Icecrown 68.60,21.00 |only Gnome
Defeat the Argent Valiant |q 13724/1 |goto Icecrown 68.60,21.00 |only Draenei
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Challenge##13699 |goto Icecrown 76.60,19.20
accept A Champion Rises##13702 |goto Icecrown 76.60,19.20
only Human
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13725 |goto Icecrown 76.30,19.10
accept A Champion Rises##13735 |goto Icecrown 76.30,19.10
only NightElf
step
talk Lana Stouthammer##33312
turnin The Valiant's Challenge##13713 |goto Icecrown 76.60,19.50
accept A Champion Rises##13732 |goto Icecrown 76.60,19.50
only Dwarf
step
talk Ambrose Boltspark##33335
turnin The Valiant's Challenge##13723 |goto Icecrown 76.50,19.80
accept A Champion Rises##13733 |goto Icecrown 76.50,19.80
only Gnome
step
talk Colosos##33593
turnin The Valiant's Challenge##13724 |goto Icecrown 76.10,19.20
accept A Champion Rises##13734 |goto Icecrown 76.10,19.20
only Draenei
step
talk Justicar Mariel Trueheart##33817
turnin A Champion Rises##13702 |goto Icecrown 69.70,22.90 |only Human
turnin A Champion Rises##13735 |goto Icecrown 69.70,22.90 |only NightElf
turnin A Champion Rises##13732 |goto Icecrown 69.70,22.90 |only Dwarf
turnin A Champion Rises##13733 |goto Icecrown 69.70,22.90 |only Gnome
turnin A Champion Rises##13734 |goto Icecrown 69.70,22.90 |only Draenei
accept The Scourgebane##13795 |goto Icecrown 69.70,22.90 |only DeathKnight
accept Eadric the Pure##13794 |goto Icecrown 69.70,22.90 |only if not DeathKnight
step
talk Crok Scourgebane##33762
turnin The Scourgebane##13795 |goto Icecrown 73.80,20.10
only DeathKnight
step
talk Eadric the Pure##33759
turnin Eadric the Pure##13794 |goto Icecrown 70.00,23.40
only if not DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Pre-Quests",{
description="This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown. You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section, to unlock more daily quests.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232,66090,66087},
},[[
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.60,22.60
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13667 |goto Icecrown 69.70,22.90
step
talk Arcanist Taelis##33625
turnin The Argent Tournament##13667 |goto Icecrown,76.50,19.40
accept Mastery Of Melee##13828 |goto Icecrown,76.50,19.40
step
talk Avareth Swiftstrike##33646
accept Mastery Of The Charge##13837 |goto Icecrown 76.50,19.40
step
talk Scout Shalyndria##33647
accept Mastery Of The Shield-Breaker##13835 |goto Icecrown,76.50,19.50
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |q 13828 |goto Icecrown,75.90,20.40 |invehicle
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13835/1 |goto Icecrown 73.20,19.20
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13837/1 |goto Icecrown 72.70,18.90
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13828/1 |goto Icecrown 72.50,19.30
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13828/2 |goto Icecrown 72.60,19.70
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13837/2 |goto Icecrown 72.90,18.80
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13835/2 |goto Icecrown 73.10,19.00
step
Click the red arrow on your hotbar to stop riding the steed mount |outvehicle |q 13828
step
talk Arcanist Taelis##33625
turnin Mastery Of Melee##13828 |goto Icecrown,76.50,19.40
step
talk Avareth Swiftstrike##33646
turnin Mastery Of The Charge##13837 |goto Icecrown 76.50,19.40
step
talk Scout Shalyndria##33647
turnin Mastery Of The Shield-Breaker##13835 |goto Icecrown,76.50,19.50
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mount Training",{
condition_end=function() return knowspell(115913) end,
},[[
step
ding 20
step
talk Bralla Cloudwing##43769
Train Apprentice Riding |complete knowspell(33388) or knowspell(33391) or knowspell(34090) or knowspell(34091) or knowspell(90265) |goto Stormwind City/0 70.23,73.33
step
ding 40
step
talk Bralla Cloudwing##43769
Train Journeyman Riding |complete knowspell(33391) or knowspell(34090) or knowspell(34091) or knowspell(90265) |goto Stormwind City/0 70.23,73.33
step
ding 60
step
accept I Believe You Can Fly##32675
|tip You will accept this quest automatically.
step
talk Bralla Cloudwing##43769
turnin I Believe You Can Fly##32675 |goto Stormwind City/0 70.23,73.33
step
talk Bralla Cloudwing##43769
Train Expert Riding |complete knowspell(34090) or knowspell(34091) or knowspell(90265) |goto Stormwind City/0 70.23,73.33
step
talk Bralla Cloudwing##43769
Train Flight Master's License |complete knowspell(90267) |goto Stormwind City/0 70.23,73.33
step
ding 68
step
talk Bralla Cloudwing##43769
Train Cold Weather Flying |complete knowspell(54197) |goto Stormwind City/0 70.23,73.33
step
ding 70
step
talk Bralla Cloudwing##43769
Train Artisan Riding |complete knowspell(34091) or knowspell(90265) |goto Stormwind City/0 70.23,73.33
step
ding 80
step
talk Bralla Cloudwing##43769
Train Master Riding |complete knowspell(90265) |goto Stormwind City/0 70.23,73.33
step
ding 90
step
talk Cloudrunner Leng##60166
|tip Up on the platform.
Train Wisdom of the Four Winds |complete knowspell(115913) |goto Vale of Eternal Blossoms/0 84.17,61.42
]])
