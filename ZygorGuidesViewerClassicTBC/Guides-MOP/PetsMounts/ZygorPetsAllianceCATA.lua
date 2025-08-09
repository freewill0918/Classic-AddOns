local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsACATA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Magical Crawdad",{
patch='20100',
source='Profession',
description="This battle pet has a 1 in 5 chance to drop as a reward for catching Mr. Pinchy or it can be purchased from the Auction House.",
keywords={"Aquatic","Mr.","Pinchy"},
pet=132,
mopready=true,
},[[
step
cast Fishing##7620
|tip Fish in Highland Mixed Schools.
|tip It may take some time to catch this item.
|tip You can also purchase this pet from the auction house.
collect Mr. Pinchy##27388 |goto Terokkar Forest/0 66.88,81.11
step
use the Mr. Pinchy##27388
|tip Use the item to make a wish.
|tip It has 3 uses with a 4 hour cooldown.
|tip It may take you several attempts to get this.
collect Magical Crawdad Box##27445
step
use the Magical Crawdad Box##27445
Learn the "Magical Crawdad" Battle Pet |learnpet Magical Crawdad##132
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Pengu",{
patch='30200',
source='Vendor',
description="This battle pet can be purchased from a vendor in Dragonblight after reaching Exalted reputation with the Kalu'ak.",
keywords={"Aquatic","Dragonblight"},
pet=198,
mopready=true,
},[[
step
Reach Exalted reputation with The Kalu'ak |complete rep("The Kalu'ak") >= Exalted |or
|tip You can use the The Kalu'ak Reuptation Guide to complete this.
Click here to load the The Kalu'ak Reputation Guide |confirm |loadguide "Reputation Guides\\Wrath of the Lich King Reputations\\Kalu'ak"
'|learnpet Pengu##198 |or
step
talk Sairuk##32763
buy Nurtured Penguin Egg##44723
collect Nurtured Penguin Egg##44723 |goto Dragonblight/0 48.47,75.66 |or
'|learnpet Pengu##198 |or
step
use the Nurtured Penguin Egg##44723
Learn the "Pengu" Battle Pet |learnpet Pengu##198
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sea Pony",{
patch='43000',
source='Profession',
description="This battle pet can be caught along the coastal beach of Darkmoon Island using the fishing profession.",
keywords={"Aquatic","Darkmoon","Faire"},
pet=340,
mopready=true,
},[[
step
Wait for the "Darkmoon Faire" Event |complete isevent("Darkmoon Faire")
|tip The Darkmoon Faire is only available during the first week of every month.
step
click Portal to the Darkmoon Faire
Teleport to the Darkmoon Faire |goto Elwynn Forest/0 41.80,69.22
step
cast Fishing##7620
|tip Cast out anywhere in the open water along the docks and beaches.
|tip It may take some time to catch.
collect Sea Pony##73953 |goto Darkmoon Island/0 51.70,91.50
step
use the Sea Pony##73953
Learn the "Sea Pony" Battle Pet |learnpet Sea Pony##340
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Shore Crawler",{
patch='50100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Aquatic","Auction","House"},
pet=629,
mopready=true,
},[[
step
buy Shore Crawler pet
|tip This pet is only available from a vendor to Horde Goblin players.
|tip If you do not have a Horde Goblin character you can also purchase this pet from the Auction House.
Learn the "Shore Crawler" Battle Pet |learnpet Shore Crawler##629
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Small Frog",{
patch='50100',
source='PetBattle',
description="This battle pet can be tamed in the wild around Crystal Lake in Elwynn Forest.",
keywords={"Aquatic","Elwynn","Forest"},
pet=419,
mopready=true,
},[[
step
clicknpc Small Frog##61071
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Small Frog" Battle Pet |learnpet Small Frog##419 |goto Elwynn Forest/0 49.97,63.22
step
_Congratulations!_
You Collected the "Small Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Strand Crawler",{
patch='31000',
source='Profession',
description="This battle pet can be looted from rewards given out for completing any Northrend fishing daily quest or it can be purchased from the Auction House.",
keywords={"Aquatic","Northrend"},
pet=211,
mopready=true,
},[[
step
collect Bag of Fishing Treasures##46007 |n
|tip This is given as a reward for completeing any Northrend fishing daily quest.
|tip You can use our Dalaran fishing guide to help you with the daily quests.
use the Bag of Fishing Treasures##46007
collect Strand Crawler##44983 |n
|tip This has a 1 in 100 chance to drop from the Bag of Fishing Treasures, it may take a few tries to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Strand Crawler##44983
Learn the "Strand Crawler" Battle Pet |learnpet Strand Crawler##211
step
_Congratulations!_
You Collected the "Strand Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Speedy",{
patch='111100',
source='WorldEvent',
description="This guide will walk you through obtaining the Aquatic pet: Speedy.",
pet=125,
mopready=true,
},[[
step
Wait for the Children's Week Event |complete isevent("Children's Week") |or
'|complete haspet(125)
step
Complete the Children's Week Event
|tip You can use our "Children's Week" guides to achieve this.
Click Here to Open "Children's Week Dalaran Oracles" Guide |loadguide "Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click Here to Open "Children's Week Dalaran Wolvar" Guide |loadguide "Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click Here to Open "Children's Week Shattrath" Guide |loadguide "Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click Here to Open "Children's Week Kul Tiras" Guide |loadguide "Events Guides\\Children's Week\\Children's Week Kul Tiras Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
Click Here to Open "Children's Week Stormwind" Guide |loadguide "Events Guides\\Children's Week\\Children's Week Stormwind Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
collect Turtle Box##23002 |or
'|complete haspet(125)
step
|use Turtle Box##23002
Learn the "Speedy" Battle Pet |learnpet Speedy##125
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Strand Crawler",{
patch='31000',
source='Profession',
description="This guide will walk you through obtaining the Aquatic pet: Strand Crawler.",
pet=211,
mopready=true,
},[[
step
label "select"
You must complete the Fishing Daily quests in Stormwind City or Dalaran to obtain this pet
Click here to do the Stormwind Daily Quests. |next "swfish" |confirm
Click here to do the Dalaran Daily Quests. |next "dalfish" |confirm
step
label "dalfish"
In order to earn this Achievement, you will have to complete 5 daily quests.
|tip You will only be able to accept one per day, so this may take longer than 5 days to achieve.
Click here to proceed |confirm
step
Below is a list of the 5 daily quests you will need to complete.
The Ghostfish |achieve 3217/1
Jewel Of The Sewers |achieve 3217/2
Dangerously Delicious |achieve 3217/3
Blood is Thicker |achieve 3217/4
Disarmed! |achieve 3217/5
Click to proceed |confirm
step
talk Marcia Chase##28742
|tip You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
accept Blood Is Thicker##13833 |goto Dalaran,53.10,64.90 |or
accept Dangerously Delicious##13834 |goto Dalaran,53.10,64.90 |or
accept Jewel Of The Sewers##13832 |goto Dalaran,53.10,64.90 |or
accept Disarmed!##13836 |goto Dalaran,53.10,64.90 |or
accept The Ghostfish##13830 |goto Dalaran,53.10,64.90 |or
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
Get the Animal Blood buff |havebuff Animal Blood##46221 |q 13833 |goto Borean Tundra,54.60,41.80
only if haveq (13833)
step
Walk into the water here to create a pool of blood
Fish in the pool of blood
collect 5 Bloodtooth Frenzy##45905 |q 13833/1 |goto Borean Tundra 53.70,42.90
only if haveq (13833)
step
Fish in this big lake
collect 10 Terrorfish##45904 |q 13834/1 |goto Wintergrasp,79.90,41.80
only if haveq (13834)
step
The entrance to the Dalaran sewers starts here|goto Dalaran,60.20,47.70 < 5 |c |q 13832 |walk
only if haveq (13832)
step
Fish in the water in the Dalaran sewers
collect 1 Corroded Jewelry##45903 |q 13832/1 |goto Dalaran 44.40,66.20
only if haveq (13832)
step
Leave the Dalaran sewers |goto Dalaran,60.20,47.70 < 5 |c |q 13832 |walk
only if haveq (13832)
step
Stand on the this circular platform and fish in the water here
collect Bloated Slippery Eel##45328 |n
Click the Bloated Slippery Eel in your bags |use Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q 13836/1 |goto Dalaran,64.80,60.80
only if haveq (13836)
step
Fish in the water here
collect 1 Phantom Ghostfish##45902|n
Click the Phantom Ghostfish in your bags to eat it |use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q 13830/1 |goto Sholazar Basin,49.30,61.80
only if haveq (13830)
step
talk Marcia Chase##28742
|tip You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
turnin Blood Is Thicker##13833 |goto Dalaran,53.10,64.90
turnin Dangerously Delicious##13834 |goto Dalaran,53.10,64.90
turnin Jewel Of The Sewers##13832 |goto Dalaran,53.10,64.90
turnin The Ghostfish##13830 |goto Dalaran,53.10,64.90
|next "use2"
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836 |goto Dalaran,36.60,37.30
|next "use2"
step
label "use2"
use Bag of Fishing Treasures##46007
collect 1 Strand Crawler##44983 |next "use"
Click here to go to the beginning of this daily guide. |next "select" |confirm
step
label "swfish"
In order to earn the achievement Fish or Cut Bait: Stormwind, you will need to complete 5 daily quests from the NPC Catherine Leland.
You will only be able to accept 1 of the 5 quests per day.
Click here to proceed. |confirm
step
talk Catherine Leland##5494
You will only be able to pick up one of these quests.
accept Hitting a Walleye##26414 |goto Stormwind City,55.00,69.70 |or
accept Diggin' For Worms##26420 |goto Stormwind City,55.00,69.70 |or
accept Rock Lobster##26442 |goto Stormwind City,55.00,69.70 |or
accept Big Gulp##26488 |goto Stormwind City,55.00,69.70 |or
accept Thunder Falls##26536 |goto Stormwind City,55.00,69.70 |or
step
Use your fishing ability to fish in the lake. |cast Fishing##7620
collect Hardened Walleye##58503 |q 26414 |goto Stormwind City 56.50,41.60
only if haveq (26414)
step
Look for sparkling mounds in the grass around the pond.
collect Overgrown Earthworm##58788 |q 26420 |n
Use the Overgrown Earthworm |use Overgrown Earthworm##58788
Fish in Olivia's Pond |cast Fishing##7620
collect Crystal Bass##58787 |q 26420/1 |goto Stormwind City 58.30,13.20
only if haveq (26420)
step
Swim around Stormwind Harbor and click The Stormwind Lobster Traps
collect 6 Rock Lobster##58809 |q 26442/1 |goto Stormwind City,22.40,29.00
only if haveq (26442)
step
Use your fishing skill in the moat. |cast Fishing##7620
collect Royal Monkfish##58856 |n
Click the Royal Monkfish |use Royal Monkfish##58856
collect Precious Locket##58864 |goto Stormwind City,69.10,92.20
only if haveq (26488)
step
Use your fishing skill in the water here. |cast Fishing##7620
collect 4 Violet Perch##58899 |q 26536/1 |goto Elwynn Forest,27.10,60.60
only if haveq (26536)
step
talk Catherine Leland##5494
You will only be able to pick up one of these quests.
turnin Hitting a Walleye##26414 |goto Stormwind City,55.00,69.70 |or
turnin Diggin' For Worms##26420 |goto Stormwind City,55.00,69.70 |or
turnin Rock Lobster##26442 |goto Stormwind City,55.00,69.70 |or
turnin Big Gulp##26488 |goto Stormwind City,55.00,69.70 |or
turnin Thunder Falls##26536 |goto Stormwind City,55.00,69.70 |or
step
use Bag of Shiny Things##67414
collect 1 Strand Crawler##44983 |next "use"
Click here to go to the beginning of this daily guide. |next "select" |confirm
step
label "use"
learnpet Strand Crawler##211 |use Strand Crawler##44983
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Black Kingsnake",{
patch='111100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Beast","Auction","House"},
pet=75,
mopready=true,
},[[
step
collect Black Kingsnake##10360 |n
|tip This pet can only be purchased from a vendor in Orgrimmar with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Black Kingsnake##10360
|tip It is in your inventory.
Learn the "Black Kingsnake" Battle Pet |learnpet Black Kingsnake##75
step
_Congratulations!_
You Collected the "Black Kingsnake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bombay Cat",{
patch='111100',
source='Vendor',
description="This battle pet is sold by a vendor in Elwynn Forest.",
keywords={"Beast","Elwynn","Forest"},
pet=40,
mopready=true,
},[[
step
Enter the building |goto Elwynn Forest/0 44.39,53.08 > 30 |walk
talk Donni Anthania##6367
|tip She is inside the building.
buy Cat Carrier (Bombay)##8485 |goto Elwynn Forest/0 44.22,53.43
step
collect Cat Carrier (Bombay)##8485 |n
use the Cat Carrier (Bombay)##8485
|tip It is in your inventory.
Learn the "Bombay Cat" Battle Pet |learnpet Bombay Cat##40
step
_Congratulations!_
You Collected the "Bombay Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Brown Snake",{
patch='111100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Beast","Auction","House"},
pet=77,
mopready=true,
},[[
step
collect Brown Snake##10361 |n
|tip This pet can only be purchased from a vendor in Orgrimmar with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Brown Snake##10361
|tip It is in your inventory.
Learn the "Brown Snake" Battle Pet |learnpet Brown Snake##77
step
_Congratulations!_
You Collected the "Brown Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Cornish Rex Cat",{
patch='111100',
source='Vendor',
description="This battle pet is sold by a vendor in Elwynn Forest.",
keywords={"Beast","Elwynn","Forest"},
pet=41,
mopready=true,
},[[
step
Enter the building |goto Elwynn Forest/0 44.39,53.08 > 30 |walk
talk Donni Anthania##6367
|tip She is inside the building.
buy Cat Carrier (Cornish Rex)##8486 |goto Elwynn Forest/0 44.22,53.43
step
collect Cat Carrier (Cornish Rex)##8486 |n
use the Cat Carrier (Cornish Rex)##8486
|tip It is in your inventory.
Learn the "Cornish Rex Cat" Battle Pet |learnpet Cornish Rex Cat##41
step
_Congratulations!_
You Collected the "Cornish Rex Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Crimson Snake",{
patch='111100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Beast","Auction","House"},
pet=78,
mopready=true,
},[[
step
collect Crimson Snake##10392 |n
|tip This pet can only be purchased from a vendor in Orgrimmar with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Crimson Snake##10392
|tip It is in your inventory.
Learn the "Crimson Snake" Battle Pet |learnpet Crimson Snake##78
step
_Congratulations!_
You Collected the "Crimson Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Dun Morogh Cub",{
patch='31100',
source='Vendor',
description="This battle pet is sold by a vendor in Icecrown after you champion a Dwarf character in the Argent Tournament.",
keywords={"Beast","Icecrown"},
pet=205,
mopready=true,
},[[
step
Enter the tent |goto Icecrown/0 75.90,20.00 < 30 |walk
talk Derrick Brindlebeard##33310
|tip He is inside the tent.
buy Dun Morogh Cub##44970 |goto Icecrown/0 76.54,19.41
|tip Before you can purchase this pet you must Champion a Dwarf character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Dwarf character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Dun Morogh Cub##44970 |n
use the Dun Morogh Cub##44970
|tip It is in your inventory.
Learn the "Dun Morogh Cub" Battle Pet |learnpet Dun Morogh Cub##205
step
_Congratulations!_
You Collected the "Dun Morogh Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Durotar Scorpion",{
patch='31100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Beast","Auction","House"},
pet=207,
mopready=true,
},[[
step
collect Durotar Scorpion##44973 |n
|tip This pet can only be purchased from a vendor in Northrend with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Durotar Scorpion##44973
|tip It is in your inventory.
Learn the "Durotar Scorpion" Battle Pet |learnpet Durotar Scorpion##207
step
_Congratulations!_
You Collected the "Durotar Scorpion" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Feline Familiar",{
patch='42200',
source='WorldEvent',
description="This battle pet can be purchased from a vendor during the Hollow's End world event.",
keywords={"Beast","Hollow's","End"},
pet=319,
mopready=true,
},[[
step
talk Pippi##109685
|tip She is only available to talk to during the Hollow's End event.
buy Feline Familiar##70908 |goto Elwynn Forest/0 32.00,50.20
|tip This costs 150 Tricky Treats.
|tip You can get Tricky Treats by doing dailies, use our Hollow's End daily guides to help you out.
|tip This pet cageable, meaning you can purchase it from the Auction House.
step
collect Feline Familiar##70908 |n
use the Feline Familiar##70908
|tip It is in your inventory.
Learn the "Feline Familiar" Battle Pet |learnpet Feline Familiar##319
step
_Congratulations!_
You Collected the "Feline Familiar" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Hyjal Bear Cub",{
patch='42000',
source='Vendor',
description="This battle pet can be purchased from a vendor in the Molten Front.",
keywords={"Beast","Molten","Front"},
pet=317,
mopready=true,
},[[
step
Complete the Quest _Calling the Ancients_ |complete completedq(29283)
|tip You will have to grind Firelands dailies and quests to earn 445 Marks of the World Tree.
|tip You can use the Firelands quest and dailies guides to help you.
|tip This will take about a month to grind.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Varlan Highbough##53882
buy Hyjal Bear Cub##70140 |goto Molten Front/0 44.60, 88.60
step
collect Hyjal Bear Cub##70140 |n
use the Hyjal Bear Cub##70140
|tip It is in your inventory.
Learn the "Hyjal Bear Cub" Battle Pet |learnpet Hyjal Bear Cub##317
step
_Congratulations!_
You Collected the "Hyjal Bear Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Lashtail Hatchling",{
patch='41000',
source='Quest',
description="This battle pet is rewarded to you after you have completed the quest An Old Friend.",
keywords={"Beast","An","Old","Friend"},
pet=307,
mopready=true,
},[[
step
talk Brother Nimetz##739
accept Bad Medicine##26732 |goto Northern Stranglethorn/0 47.25,11.11
step
talk Lieutenant Doren##469
accept The Fate of Kurzen##26735 |goto Northern Stranglethorn/0 47.57,10.25
stickystart "Collect_Kurzen_Compound_Officers'_Dossier"
step
click Kurzen Compound Prison Records##204826
|tip It looks like a brown scroll with red writing on it around this area.
collect Kurzen Compound Prison Records##60214 |q 26735/1 |goto Northern Stranglethorn/0 57.89,20.38
step
label "Collect_Kurzen_Compound_Officers'_Dossier"
click Kurzen Compound Officers' Dossier##204827
|tip It looks like a white scroll with writing on it around this area.
collect Kurzen Compound Officers' Dossier##60215 |q 26735/2 |goto Northern Stranglethorn/0 57.83,21.38
step
Kill Kurzen enemies around this area
collect Jungle Remedy##2633 |q 26732/1 |goto Northern Stranglethorn/0 57.85,21.58
step
Click the Quest Discovered box
accept Just Hatched##26738 |goto Northern Stranglethorn/0 56.57,19.14
step
talk Brother Nimetz##739
turnin Bad Medicine##26732 |goto Northern Stranglethorn/0 47.24,11.10
step
talk Corporal Sethman##1422
turnin Just Hatched##26738 |goto Northern Stranglethorn/0 46.99,10.84
accept I Think She's Hungry##26739 |goto Northern Stranglethorn/0 46.99,10.84
step
talk Lieutenant Doren##469
turnin The Fate of Kurzen##26735 |goto Northern Stranglethorn/0 47.58,10.25
accept Spared from Madness##26736 |goto Northern Stranglethorn/0 47.58,10.25
step
use the Lashtail Raptor Egg Fragment##58165
|tip It is in your inventory.
kill Crystal Spine Basilisk##689
|tip Make sure your Lashtail Hatchling is nearby when you kill the Basilisks around this area.
Feed #40# Bites of Basilisk Meat to Your Lashtail Hatchling |q 26739/1 |goto Northern Stranglethorn/0 62.50,21.25
step
Enter the building |goto Northern Stranglethorn/0 56.98,20.27 > 30 |walk
click Kurzen Cage
|tip It is upstairs inside the building.
Rescue Berrin Burnquill |q 26736/1 |goto Northern Stranglethorn/0 56.50,20.29
Rescue Emerine Junis |q 26736/2 |goto Northern Stranglethorn/0 56.50,20.29
Rescue Osborn Obnoticus |q 26736/3 |goto Northern Stranglethorn/0 56.50,20.29
step
talk Corporal Sethman##1422
turnin I Think She's Hungry##26739 |goto Northern Stranglethorn/0 46.99,10.84
step
talk Lieutenant Doren##469
turnin Spared from Madness##26736 |goto Northern Stranglethorn/0 47.57,10.25
step
talk Lashtail Hatchling##42736
|tip He will provide you with a quest when you bring him to the pile of skulls  around this area.
accept Favored Skull##26745 |goto Northern Stranglethorn/0 33.72,37.22
step
talk Osborn Obnoticus##43884
turnin Favored Skull##26745 |goto Northern Stranglethorn/0 47.14,10.55
accept A Nose for This Sort of Thing##26746 |goto Northern Stranglethorn/0 47.14,10.55
step
collect Tkashi Fetish##60291 |q 26746/1 |goto Northern Stranglethorn/0 39.76,27.70
|tip Follow the Lashtail Hatchling around this area, he will collect the fetishes for you.
step
talk Osborn Obnoticus##43884
turnin A Nose for This Sort of Thing##26746 |goto Northern Stranglethorn/0 47.14,10.56
accept A Physical Specimen##26747 |goto Northern Stranglethorn/0 47.14,10.56
step
kill Gan'zulah##1061
collect Gan'zulah's Body##58179 |q 26747/1 |goto Northern Stranglethorn/0 24.84,18.22
step
talk Osborn Obnoticus##43884
turnin A Physical Specimen##26747 |goto Northern Stranglethorn/0 47.14,10.57
step
talk Bloodlord Mandokir##42790
accept Bloodlord Mandokir##26748 |goto Northern Stranglethorn/0 47.19,10.63
turnin Bloodlord Mandokir##26748 |goto Northern Stranglethorn/0 47.19,10.63
step
talk Osborn Obnoticus##43884
accept Priestess Thaalia##26749 |goto Northern Stranglethorn/0 47.14,10.55
step
talk Priestess Thaalia##44017
turnin Priestess Thaalia##26749 |goto Northern Stranglethorn/0 53.46,66.75
accept Mind Vision##26772 |goto Northern Stranglethorn/0 53.46,66.75
step
talk Livingston Marshal##44019
home Fort Livingston |goto Northern Stranglethorn/0 53.21,66.93 |q 26772 |future
step
talk Robert Rhodes##43042
fpath Fort Livingston |goto Northern Stranglethorn/0 52.64,66.09
step
kill Jungle Stalker##687+
collect Jungle Stalker Feather##3863 |q 26772/1 |goto Northern Stranglethorn/0 61.98,60.88
step
talk Priestess Thaalia##44017
turnin Mind Vision##26772 |goto Northern Stranglethorn/0 53.45,66.75
accept See Raptor##26773 |goto Northern Stranglethorn/0 53.45,66.75
step
talk Priestess Thaalia##44017
Select _"I am ready for the Mind Vision ritual, Thaalia."_
Watch the dialogue
Complete the Mind Vision |q 26773/1 |goto Northern Stranglethorn/0 53.45,66.75
step
talk Priestess Thaalia##44017
turnin See Raptor##26773 |goto Northern Stranglethorn/0 53.45,66.75
accept Mind Control##26774 |goto Northern Stranglethorn/0 53.45,66.75
step
kill Braddok##42858
|tip He walks around this area.
collect Braddok's Big Brain##58225 |q 26774/1 |goto Northern Stranglethorn/0 62.97,74.57
step
talk Priestess Thaalia##44017
turnin Mind Control##26774 |goto Northern Stranglethorn/0 53.46,66.75
accept Be Raptor##26775 |goto Northern Stranglethorn/0 53.46,66.75
step
talk Priestess Thaalia##44017
Select _"I am ready for the Mind Control ritual, Thaalia."_
Take Control of the Lashtail Hatchling |invehicle |goto Northern Stranglethorn/0 53.46,66.75 |q 26775 |future
step
talk Tan'shang##42881
|tip Stay away from the trolls around this area or you will be forced to restart.
Choose _<Learn to bite through nets from the elder raptor.>_
Speak with Tan'shang |q 26775/1 |goto Northern Stranglethorn/0 89.08,46.32
step
talk Tenjiyu##42882
|tip Stay away from the trolls around this area or you will be forced to restart.
|tip Use the "Eat Through Net" ability on your action bar to chew through the nets if you get captured by a troll.
Select _"Alright, Tenjiyu. I'll go get you some food from the sleeping trolls."_
Click Here When You Agree to Steal Food for Tenjiyu |confirm |goto Northern Stranglethorn/0 86.92,44.66 |q 26775 |future
step
Enter the tent |goto Northern Stranglethorn/0 87.00,49.46 < 30 |only if walking
clicknpc Gurubashi Soldier##42871
|tip He is inside the tent.
Steal the Raptor Food Pouch |havebuff Raptor Food Pouch##80210 |goto Northern Stranglethorn/0 86.89,49.98 |q 26775 |future
step
talk Tenjiyu##42882
Select _"I've brought some food for you."_
Choose _<Learn to light fires from the elder raptor.>_
Help Tenjiyu |q 26775/2 |goto Northern Stranglethorn/0 86.93,44.65
step
click Gurubashi Brazier
|tip It looks like a square pieces of metal on the ground with a flame in the center.
collect Burning Twig##58250 |n
use the Burning Twig##58250
|tip The Burning Twig will burn out after 5 seconds so you will have to move quickly.
|tip Use the "Light Tiki Fire" ability on your action bar on the wooden tiki masks around this area.
|tip Quickly run passed the guards when they are distracted by the fire.
|tip Some masks you will have to use your "Dash" ability on your action bar to reach it before the stick burns out.
talk Chiyu##42883
Choose _<Learn to drop skulls from the elder raptor.>_
Speak with Chiyu |q 26775/3 |goto Northern Stranglethorn/0 82.82,37.53
step
click Giant Skullpile
|tip It looks like giant piles of skulls around this area.
collect Gurubashi Skull##58251 |n
use the Gurubashi Skull##58251
|tip Use the "Drop Skull" ability on your action bar to drop a skull on the bridge to trip the trolls around this area.
|tip You only have 30 seconds to place the skull after you pick it up.
|tip Use this technique to cross 2 bridges then hug the left wall to run past the next set of guards.
|tip Finally there is one last tiki mask you need to set on fire using the "Burning Twig".
|tip The Gurubashi Brazier and tiki mask are located to the right of the guards that are blocking the stairs to the exit.
Watch the dialogue
Escape from Zul'Gurub |q 26775/4 |goto Northern Stranglethorn/0 73.87,32.91
step
talk Priestess Thaalia##44017
turnin Be Raptor##26775 |goto Northern Stranglethorn/0 53.46,66.75
accept Ghaliri##26776 |goto Northern Stranglethorn/0 53.46,66.75
step
talk Ghaliri##44021
turnin Ghaliri##26776 |goto Northern Stranglethorn/0 52.66,66.82
step
Enter the Heroic Dungeon Zul'Gurub |goto Zul'Gurub/0 0.00,0.00 |q 29208 |future
step
kill Bloodlord Mandokir##52151
|tip You can use our Zul'Gurub dungeon guide if you need help getting through the dungeon.
talk Lashtail Hatchling##52877
accept An Old Friend##29208
turnin An Old Friend##29208
step
collect Lashtail Hatchling##69251 |n
use the Lashtail Hatchling##69251
|tip It is in your inventory.
Learn the "Lashtail Hatchling" Battle Pet |learnpet Lashtail Hatchling##307
step
_Congratulations!_
You Collected the "Lashtail Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Orange Tabby Cat",{
patch='111100',
source='Vendor',
description="This battle pet is sold by a vendor in Elwynn Forest.",
keywords={"Beast","Elwynn","Forest"},
pet=43,
mopready=true,
},[[
step
Enter the building |goto Elwynn Forest/0 44.39,53.08 > 30 |walk
talk Donni Anthania##6367
|tip She is inside the building.
buy Cat Carrier (Orange Tabby)##8487 |goto Elwynn Forest/0 44.22,53.43
step
collect Cat Carrier (Orange Tabby)##8487 |n
use the Cat Carrier (Orange Tabby)##8487
|tip It is in your inventory.
Learn the "Orange Tabby Cat" Battle Pet |learnpet Orange Tabby Cat##43
step
_Congratulations!_
You Collected the "Orange Tabby Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Silver Tabby Cat",{
patch='111100',
source='Vendor',
description="This battle pet is sold by a vendor in Elwynn Forest.",
keywords={"Beast","Elwynn","Forest"},
pet=45,
mopready=true,
},[[
step
Enter the building |goto Elwynn Forest/0 44.39,53.08 > 30 |walk
talk Donni Anthania##6367
|tip She is inside the building.
buy Cat Carrier (Silver Tabby)##8488 |goto Elwynn Forest/0 44.22,53.43
step
collect Cat Carrier (Silver Tabby)##8488 |n
use the Cat Carrier (Silver Tabby)##8488
|tip It is in your inventory.
Learn the "Silver Tabby Cat" Battle Pet |learnpet Silver Tabby Cat##45
step
_Congratulations!_
You Collected the "Silver Tabby Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\White Kitten",{
patch='111100',
source='Vendor',
description="This battle pet is sold by a vendor in Stormwind.",
keywords={"Beast","Stormwind"},
pet=46,
mopready=true,
},[[
step
map Stormwind City
path follow loose;loop off;
path	69.20,62.00	67.60,59.00	69.60,53.20
path	66.00,50.80	61.80,44.60	58.20,53.60
path	56.00,56.60	53.00,55.20	50.40,56.80
path	46.80,56.00	51.20,63.00	55.40,63.20
path	58.60,64.20	63.60,61.20	67.00,64.60
talk Lil Timmy##8666
|tip He is a rare spawn that shows up every 3-6 hours, follow this path around the Canal District to find him.
|tip When he sells the White Kitten it will no longer show in his inventory and will not spawn again until he despawns and respawns.
|tip This may take a while to get.
|tip This pet is cageable, meaning you can purchase one from the Auction House.
buy Cat Carrier (White Kitten)##8489
step
collect Cat Carrier (White Kitten)##8489 |n
use the Cat Carrier (White Kitten)##8489
|tip It is in your inventory.
Learn the "White Kitten" Battle Pet |learnpet White Kitten##46
step
_Congratulations!_
You Collected the "White Kitten" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Black Kingsnake",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Black Kingsnake.",
pet=75,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Black Kingsnake##10360
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Black Kingsnake##75 |use Black Kingsnake##10360
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bombay Cat",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Bombay Cat.",
pet=40,
mopready=true,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Bombay)##8485 |goto Elwynn Forest,44.20,53.20
step
learnpet Bombay Cat##40 |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Brown Snake",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Brown Snake.",
pet=77,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Brown Snake##10361
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Brown Snake##77 |use Brown Snake##10361
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Cornish Rex Cat",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Cornish Rex Cat.",
pet=41,
mopready=true,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Cornish Rex)##8486 |goto Elwynn Forest,44.20,53.20
step
learnpet Cornish Rex Cat##41 |use Cat Carrier (Cornish Rex)##8486
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Crimson Snake",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Crimson Snake.",
pet=78,
mopready=true,
},[[
step
talk Dealer Rashaad##20980
buy Crimson Snake##10392 |goto Netherstorm,43.40,35.20
step
learnpet Crimson Snake##78 |use Crimson Snake##10392
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Dun Morogh Cub",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Dun Morogh Cub.",
pet=205,
mopready=true,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Dwarf.
confirm always
step
label "pet"
talk Lana Stouthammer##33312
accept Valiant Of Ironforge##13703 |goto Icecrown,76.30,19.00
turnin Valiant Of Ironforge##13703 |goto Icecrown,76.30,19.00
accept The Valiant's Charge##13714 |goto Icecrown,76.30,19.00
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13741 |goto Icecrown,76.60,19.50 |or
accept A Worthy Weapon##13742 |goto Icecrown,76.60,19.50 |or
accept The Edge Of Winter##13743 |goto Icecrown,76.60,19.50 |or
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto Icecrown 76.70,19.40
step
talk Clara Tumblebrew##33309
accept The Grand Melee##13745 |goto Icecrown 76.60,19.60
accept At The Enemy's Gates##13851 |goto Icecrown 76.60,19.60
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13745 |goto Icecrown 76.30,20.50
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto Icecrown 75.30,18.50
step
kill 10 Converted Hero##32255 |q 13744/1 |goto Icecrown 44.30,54.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman##33438 |q 13851/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.
|tip You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13851/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.
|tip Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13851/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.
|tip Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.
|tip If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851 |goto Icecrown 49.10,71.40
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13742 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord,42.20,19.70
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13741 |goto Icecrown,76.60,19.50
turnin A Worthy Weapon##13742 |goto Icecrown,76.60,19.50
turnin The Edge Of Winter##13743 |goto Icecrown,76.60,19.50
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13714 |goto Icecrown 76.30,19.10
accept The Valiant's Challenge##13713 |goto Icecrown 76.30,19.10
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13713 |goto Icecrown 76.30,20.50
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
|tip Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13713/1 |goto Icecrown 68.60,21.00
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13713 |goto Icecrown 76.30,19.10
step
Become a Champion of Ironforge |achieve 2780
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Derrick Brindlebeard##33310
buy 1 Dun Morogh Cub##44970 |goto Icecrown,76.40,19.40
step
learnpet Dun Morogh Cub##205 |use Dun Morogh Cub##44970
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Durotar Scorpion",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Durotar Scorpion.",
pet=207,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Durotar Scorpion##44973
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Durotar Scorpion##207 |use Durotar Scorpion##44973
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Feline Familiar",{
patch='42200',
source='WorldEvent',
description="This guide will walk you through obtaining the Beast pet: Feline Familiar.",
pet=319,
mopready=true,
},[[
step
This pet can only be obtained during the Hallows End event.
collect 150 Tricky Treat##33226
step
talk Dorothy##53728
buy Feline Familiar##70908 |goto Elwynn Forest,31.80,50.00
step
learnpet Feline Familiar##319 |use Feline Familiar##70908
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Hyjal Bear Cub",{
patch='42000',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Hyjal Bear Cub.",
pet=317,
mopready=true,
},[[
step
You will have to do the _Firelands dailies_ quests to complete the quest _"Calling the Ancients"_
talk Varlan Highbough##53882
accept Calling the Ancients##29283 |goto Molten Front,44.80,89.80
step
Earn 125 Marks of the World tree to doing Firelands daily quests.
earn 125 Mark of the World Tree##416
step
talk Elderlimb##52906
turnin Calling the Ancients##29283 |goto Mount Hyjal 26.00,61.20
step
talk Varlan Highbough##53882
buy 1 Hyjal Bear Cub##70140 |goto Molten Front,44.80,89.80
step
learnpet Hyjal Bear Cub##317 |use Hyjal Bear Cub##70140
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Lashtail Hatchling",{
patch='41000',
source='Quest',
description="This guide will walk you through obtaining the Beast pet: Lashtail Hatchling.",
pet=307,
mopready=true,
},[[
step
talk James Stillair##43045
fpath Rebel Camp |goto Northern Stranglethorn,47.90,11.90
step
talk Brother Nimetz##739
accept Bad Medicine##26732 |goto Northern Stranglethorn 47.30,11.10
step
talk Corporal Kaleb##770
accept Krazek's Cookery##26740 |goto Northern Stranglethorn 47.10,10.70
step
talk Lieutenant Doren##469
turnin Rebels Without a Clue##26838 |goto Northern Stranglethorn 47.60,10.30
accept The Fate of Kurzen##26735 |goto Northern Stranglethorn 47.60,10.30
step
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto Northern Stranglethorn 44.20,22.10
step
talk Hemet Nesingwary Jr.##715
turnin Welcome to the Jungle##583 |goto Northern Stranglethorn 44.00,23.30
accept Raptor Hunting##194 |goto Northern Stranglethorn 44.00,23.30
step
talk Drizzlik##2495
accept Supply and Demand##26343 |goto Northern Stranglethorn 43.60,23.40
step
talk Krazek##773
turnin Krazek's Cookery##26740 |goto Northern Stranglethorn 43.60,23.10
accept Venture Company Mining##26763 |goto Northern Stranglethorn 43.60,23.10
step
talk Sir S. J. Erlgadin##718
accept Panther Hunting##190 |goto Northern Stranglethorn 43.70,22.30
step
talk Barnil Stonepot##716
accept The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.20,22.10
step
talk Ajeck Rouack##717
accept Tiger Hunting##185 |goto Northern Stranglethorn 44.50,22.70
step
kill River Crocolisk##1150+
collect 2 Large River Crocolisk Skin##4053 |q 26343/1 |goto Northern Stranglethorn 45.20,20.80
collect Green Hills of Stranglethorn - Page 14##2738 |q 26269/1 |goto Northern Stranglethorn 45.20,20.80
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.20,22.10
step
talk Drizzlik##2495
turnin Supply and Demand##26343 |goto Northern Stranglethorn 43.60,23.40
accept Some Assembly Required##26344 |goto Northern Stranglethorn 43.60,23.40
step
kill 10 Young Stranglethorn Tiger##681+ |q 185/1 |goto Northern Stranglethorn 42.30,24.20
You can find more Young Stranglethorn Tigers to kill around [Northern Stranglethorn,38.70,20.30]
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Hunting##185 |goto Northern Stranglethorn 42.30,24.20
accept Tiger Stalking##186 |goto Northern Stranglethorn 42.30,24.20
step
kill 10 Young Panther##683+ |q 190/1 |goto Northern Stranglethorn 52.00,23.80
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Hunting##190 |goto Northern Stranglethorn 52.00,23.80
accept Panther Stalking##191 |goto Northern Stranglethorn 52.00,23.80
step
kill Kurzen Jungle Fighter##937+, Kurzen Medicine Man##940+
collect 7 Jungle Remedy##2633 |q 26732/1 |goto Northern Stranglethorn 57.70,21.40
Once you get your 7th Jungle Remedy, you will automatically accept a quest:
accept Just Hatched##26738
These Kurzen documents can spawn in random locations all around Kurzen's Compound, so keep an eye out for them while you walk around killing Kurzen mobs.
click Kurzen Compound Officers' Dossier##204827
collect Kurzen Compound Officers' Dossier##60215 |q 26735/2 |goto Northern Stranglethorn 57.70,21.40
click Kurzen Compound Prison Records##204826
collect Kurzen Compound Prison Records##60214 |q 26735/1 |goto Northern Stranglethorn 57.70,21.40
step
kill 10 Stranglethorn Tiger##682+ |q 186/1 |goto Northern Stranglethorn 61.30,27.00
You can find more Stranglethorn Tigers around [Northern Stranglethorn,56.50,28.70]
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Stalking##186 |goto Northern Stranglethorn 61.30,27.00
accept Tiger Prowess##187 |goto Northern Stranglethorn 61.30,27.00
step
kill Snapjaw Crocolisk##1152+
collect 5 Snapjaw Crocolisk Skin##4104 |q 26344/1 |goto Northern Stranglethorn 53.50,30.30
You can find more Snapjaw Crocolisks around [Northern Stranglethorn,51.10,35.80]
step
talk Brother Nimetz##739
turnin Bad Medicine##26732 |goto Northern Stranglethorn,47.30,11.10
accept Control Sample##26733 |goto Northern Stranglethorn,47.30,11.10
step
talk Corporal Sethman##1422
turnin Just Hatched##26738 |goto Northern Stranglethorn 47.00,10.80
accept I Think She's Hungry##26739 |goto Northern Stranglethorn 47.00,10.80
step
talk Lieutenant Doren##469
turnin The Fate of Kurzen##26735 |goto Northern Stranglethorn 47.60,10.30
accept Spared from Madness##26736 |goto Northern Stranglethorn 47.60,10.30
stickystart "crybasil"
step
click Kurzen Cage##4154
Rescue Berrin Burnquill |q 26736/1 |goto Northern Stranglethorn 56.50,20.30
Rescue Emerine Junis |q 26736/2 |goto Northern Stranglethorn 56.50,20.30
Rescue Osborn Obnoticus |q 26736/3 |goto Northern Stranglethorn 56.50,20.30
step
label "crybasil"
kill Crystal Spine Basilisk##689+
collect 7 Crystal Spine Basilisk Blood##60213 |q 26733/1 |goto Northern Stranglethorn 60.70,21.50
Use your Lashtail Raptor Egg Fragment to summon your Lashtail Hatchling |use Lashtail Raptor Egg Fragment##58165
kill Crystal Spine Basilisk##689+
Let your Lashtail Hatchling eat 40 Bites of Basilisk Meat |q 26739/1 |goto Northern Stranglethorn 60.70,21.50
You can find more Crystal Spine Basilisks around [Northern Stranglethorn,62.50,26.00]
step
talk Brother Nimetz##739
turnin Control Sample##26733 |goto Northern Stranglethorn 47.30,11.10
accept The Source of the Madness##26734 |goto Northern Stranglethorn 47.30,11.10
step
talk Corporal Sethman##1422
turnin I Think She's Hungry##26739 |goto Northern Stranglethorn 47.00,10.80
accept Deep Roots##26744 |goto Northern Stranglethorn 47.00,10.80
step
talk Lieutenant Doren##469
turnin Spared from Madness##26736 |goto Northern Stranglethorn 47.60,10.30
accept Stopping Kurzen's Legacy##26737 |goto Northern Stranglethorn 47.60,10.30
stickystart "whispblue"
step
Enter the cave |goto Northern Stranglethorn 59.40,18.50 < 5 |walk
Follow the path in the cave
kill Chief Anders##43910 |q 26737/1 |goto Northern Stranglethorn 63.70,16.70
step
Follow the path in the cave
kill Chief Miranda##43913 |q 26737/3 |goto Northern Stranglethorn 65.80,17.10
step
Follow the path in the cave to the end
kill Chief Esquivel##43912 |q 26737/4 |goto Northern Stranglethorn 66.10,11.70
step
Follow the path in the cave back towards the entrance, then down the first ramp you come to
kill Chief Gaulus##43911 |q 26737/2 |goto Northern Stranglethorn 62.50,14.10
step
label "whispblue"
kill Kurzen Headshrinker##941+, Kurzen Elite##939+, Kurzen Subchief##978+, Kurzen Shadow Hunter##979+
collect Whispering Blue Stone##60263 |q 26734/1 |goto Northern Stranglethorn 64.10,14.20
step
talk Berrin Burnquill##43886
accept Bloodscalp Insight##26742 |goto Northern Stranglethorn,48.00,12.00
step
talk Brother Nimetz##739
turnin The Source of the Madness##26734 |goto Northern Stranglethorn 47.30,11.10
step
talk Lieutenant Doren##469
turnin Stopping Kurzen's Legacy##26737 |goto Northern Stranglethorn 47.60,10.30
step
talk Emerine Junis##43885
accept Water Elementals##26729 |goto Northern Stranglethorn 47.70,10.30
step
talk Drizzlik##2495
turnin Some Assembly Required##26344 |goto Northern Stranglethorn 43.60,23.40
accept Excelsior##26345 |goto Northern Stranglethorn 43.60,23.40
step
kill 5 Elder Stranglethorn Tiger##1085+ |q 187/1 |goto Northern Stranglethorn 38.10,30.10
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Prowess##187
accept Tiger Mastery##188
step
kill Sin'Dall##729
collect Paw of Sin'Dall##3879 |q 188/1 |goto Northern Stranglethorn 38.50,32.50
step
kill 10 Panther##736+ |q 191/1 |goto Northern Stranglethorn 33.80,28.20
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Stalking##191
accept Panther Prowess##192
step
kill 10 Stranglethorn Raptor##685+ |q 194/1 |goto Northern Stranglethorn 31.70,28.00
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Raptor Hunting##194
accept Raptor Stalking##195
step
click Bloodscalp Lore Tablet##57
collect Bloodscalp Lore Tablet##60295 |q 26744/1 |goto Northern Stranglethorn 33.60,36.80
step
Next to you:
talk Lashtail Hatchling##42736
accept Favored Skull##26745
step
kill Bloodscalp Shaman##697+
|tip The Bloodscalp Shamans share spawn locations with the other trolls around this area, so if you can't find any Shamans, kill the other trolls to get them to spawn.
collect Bloodscalp Totem##23679 |q 26742/1 |goto Northern Stranglethorn 34.20,36.50
step
kill Lesser Water Elemental##691+
collect 6 Water Elemental Bracers##3923 |q 26729/1 |goto Northern Stranglethorn 22.50,40.30
step
Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
talk Emerine Junis##43885
turnin Water Elementals##26729
accept You Can Take the Murloc Out of the Ocean...##26730
step
talk Berrin Burnquill##43886
turnin Bloodscalp Insight##26742 |goto Northern Stranglethorn,48.00,12.00
accept Sacred to the Bloodscalp##26743 |goto Northern Stranglethorn,48.00,12.00
step
talk Corporal Sethman##1422
turnin Deep Roots##26744 |goto Northern Stranglethorn 47.00,10.80
step
talk Osborn Obnoticus##43884
turnin Favored Skull##26745 |goto Northern Stranglethorn 47.10,10.60
accept A Nose for This Sort of Thing##26746 |goto Northern Stranglethorn 47.10,10.60
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto Northern Stranglethorn 44.50,22.70
step
Use your Lashtail Raptor Egg Fragment to summon your Lashtail Hatchling |use Lashtail Raptor Egg Fragment##58165
|tip Follow the Lashtail Hatchling around as it digs up fetishes
collect 8 Tkashi Fetish##60291 |q 26746/1 |goto Northern Stranglethorn 40.60,26.90
kill Bloodscalp Scavenger##702+
collect Icon of Tsul'Kalu##60270 |q 26743/1 |goto Northern Stranglethorn 40.60,26.90
collect Icon of Mahamba##60271 |q 26743/2 |goto Northern Stranglethorn 40.60,26.90
collect Icon of Pogeyan##60272 |q 26743/3 |goto Northern Stranglethorn 40.60,26.90
step
kill Murkgill Warrior##4461+, Murkgill Hunter##4458+, Murkgill Forager##4457+, Murkgill Oracle##4459+
collect 6 Sea Salt##60274 |q 26730/1 |goto Northern Stranglethorn 40.10,34.70
step
Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
talk Emerine Junis##43885
turnin You Can Take the Murloc Out of the Ocean...##26730
accept The Altar of Naias##26731
step
kill 10 Lashtail Raptor##686+ |q 195/1 |goto Northern Stranglethorn 45.80,43.10
You can find more Lashtail Raptors around [Northern Stranglethorn,39.30,43.90]
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Raptor Stalking##195
accept Raptor Prowess##196
step
kill Venture Co. Geologist##1096+, Venture Co. Shredder##4260+
collect 5 Tumbled Crystal##4106 |q 26763/1 |goto Northern Stranglethorn 54.80,40.50
step
kill 10 Jungle Stalker##687+ |q 196/1 |goto Northern Stranglethorn 54.30,47.20
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Raptor Prowess##196
accept Raptor Mastery##197
step
kill Elder Snapjaw Crocolisk##2635+
collect Elder Crocolisk Skin##4105 |q 26345/1 |goto Northern Stranglethorn 50.50,47.40
step
kill 5 Shadowmaw Panther##684+ |q 192/1 |goto Northern Stranglethorn 61.90,49.00
|tip They are stealthed, so keep an eye out for them.
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Prowess##192
accept Panther Mastery##193
step
kill Bhag'thera##728
|tip It's a big black panther that walks around near Shadowmaw Panthers around this area.  Bhag'thera is not stealthed, so you should should be fairly easy to find.  Be careful of the Horde town nearby.
collect Fang of Bhag'thera##3876 |q 193/1 |goto Northern Stranglethorn 66.00,43.40
Bhag'thera has three spawn points, the second one is at [61.70,50.60]
And the third at [64.40,36.60]
step
kill Tethis##730
|tip He's a blue raptor that walks around this area, so you may need to search for him.
collect Talon of Tethis##3877 |q 197/1 |goto Northern Stranglethorn 59.00,58.60
step
talk Wulfred Harrys##44018
accept The Mosh'Ogg Bounty##26782 |goto Northern Stranglethorn 53.40,66.30
accept To the Cape!##26805 |goto Northern Stranglethorn 53.40,66.30
step
talk Livingston Marshal##44019
accept The Mind's Eye##26781 |goto Northern Stranglethorn 53.20,66.90
step
talk Robert Rhodes##43042
fpath Fort Livingston |goto Northern Stranglethorn 52.60,66.10
step
talk Berrin Burnquill##43886
turnin Sacred to the Bloodscalp##26743 |goto Northern Stranglethorn 48.00,12.00
step
talk Osborn Obnoticus##43884
turnin A Nose for This Sort of Thing##26746 |goto Northern Stranglethorn 47.10,10.60
accept A Physical Specimen##26747 |goto Northern Stranglethorn 47.10,10.60
step
talk Sergeant Yohwa##733
accept Population Con-Troll##26751 |goto Northern Stranglethorn 47.50,10.80
step
talk Hemet Nesingwary Jr.##715
turnin Raptor Mastery##197 |goto Northern Stranglethorn 44.20,23.00
step
talk Drizzlik##2495
turnin Excelsior##26345 |goto Northern Stranglethorn 43.60,23.40
step
talk Krazek##773
turnin Venture Company Mining##26763 |goto Northern Stranglethorn 43.60,23.10
accept Return to Corporal Kaleb##26765 |goto Northern Stranglethorn 43.60,23.10
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto Northern Stranglethorn 43.70,22.30
step
talk Hemet Nesingwary Jr.##715
accept Big Game Hunter##208 |goto Northern Stranglethorn 44.20,23.00
stickystart "bloodmystic"
step
Enter the Ruins of Zul'Kunda |goto Northern Stranglethorn 31.40,23.10 < 5 |walk
Follow the path to the top of the ruins
kill Gan'zulah##1061
collect Gan'zulah's Body##58179 |q 26747/1 |goto Northern Stranglethorn 24.90,18.20
step
label "bloodmystic"
kill 7 Bloodscalp Mystic##701+ |q 26751/1 |goto Northern Stranglethorn 27.50,23.10
kill 7 Bloodscalp Scout##588+ |q 26751/2 |goto Northern Stranglethorn 27.50,23.10
kill 7 Bloodscalp Hunter##595+ |q 26751/3 |goto Northern Stranglethorn 27.50,23.10
kill 1 Bloodscalp Beastmaster##699 |q 26751/4 |goto Northern Stranglethorn 27.50,23.10
step
Use the Gift of Naias next to the Altar of Naias |use Gift of Naias##23680
kill Naias##17207
collect Heart of Naias##23681 |q 26731/1 |goto Northern Stranglethorn 19.10,40.70
step
Use Emerine's Telling Sphere |use Emerine's Telling Sphere##60273
talk Emerine Junis##43885
turnin The Altar of Naias##26731
step
talk Corporal Kaleb##770
turnin Return to Corporal Kaleb##26765 |goto Northern Stranglethorn,47.10,10.70
step
talk Osborn Obnoticus##43884
turnin A Physical Specimen##26747 |goto Northern Stranglethorn 47.10,10.60
step
talk Bloodlord Mandokir##42790
accept Bloodlord Mandokir##26748 |goto Northern Stranglethorn 47.20,10.60
turnin Bloodlord Mandokir##26748 |goto Northern Stranglethorn 47.20,10.60
step
talk Osborn Obnoticus##43884
accept Priestess Thaalia##26749 |goto Northern Stranglethorn 47.10,10.60
step
talk Sergeant Yohwa##733
turnin Population Con-Troll##26751 |goto Northern Stranglethorn 47.50,10.70
step
talk Priestess Thaalia##44017
turnin Priestess Thaalia##26749 |goto Northern Stranglethorn 53.50,66.80
accept Mind Vision##26772 |goto Northern Stranglethorn 53.50,66.80
step
kill King Bangalash##731
|tip He's a white tiger that walks around on this big hill.
collect Head of Bangalash##3880 |q 208/1 |goto Northern Stranglethorn 47.80,59.00
step
kill Jungle Stalker##687+
collect 5 Jungle Stalker Feather##3863 |q 26772/1 |goto Northern Stranglethorn 53.30,50.60
You can find more Jungle Stalkers around [Northern Stranglethorn,55.30,53.80]
step
Enter the cave |goto Northern Stranglethorn 66.60,49.10 < 5 |walk
kill Mai'Zoth##818
collect Mind's Eye##3616 |q 26781/1 |goto Northern Stranglethorn 70.70,48.60
step
Leave the cave |goto Northern Stranglethorn 66.60,49.10 < 5 |walk
click Mosh'Ogg Bounty##204087
collect Mosh'Ogg Bounty##58205 |q 26782/1 |goto Northern Stranglethorn 67.20,54.10
step
talk Wulfred Harrys##44018
turnin The Mosh'Ogg Bounty##26782 |goto Northern Stranglethorn 53.40,66.30
step
talk Priestess Thaalia##44017
turnin Mind Vision##26772 |goto Northern Stranglethorn 53.50,66.80
accept See Raptor##26773 |goto Northern Stranglethorn 53.50,66.80
step
talk Priestess Thaalia##44017
Tell her you are ready for the Mind Vision ritual, Hu'rala
Complete the Mind Vision |q 26773/1 |goto Northern Stranglethorn 53.50,66.80
step
talk Priestess Thaalia##44017
turnin See Raptor##26773 |goto Northern Stranglethorn 53.50,66.80
accept Mind Control##26774 |goto Northern Stranglethorn 53.50,66.80
step
talk Livingston Marshal##44019
turnin The Mind's Eye##26781 |goto Northern Stranglethorn 53.20,66.90
step
talk Livingston Marshal##44019
home Fort Livingston |goto Northern Stranglethorn 53.20,66.90
step
talk Ghaliri##44021
accept Zul'Mamwe Mambo##26779 |goto Northern Stranglethorn 52.70,66.80
step
talk Kinnel##44043
accept Nighttime in the Jungle##26780 |goto Northern Stranglethorn 53.10,66.50
stickystart "extinzul"
step
kill Braddok##42858
collect Braddok's Big Brain##58225 |q 26774/1 |goto Northern Stranglethorn 63.10,74.50
step
label "extinzul"
kill Skullsplitter Spiritchaser##672+, Skullsplitter Berserker##783+, Skullsplitter Headhunter##781+, Skullsplitter Hunter##669+, Skullsplitter Scout##782+, Skullsplitter Witch Doctor##670+
kill 16 Skullsplitter Troll##43024 |q 26779/1 |goto Northern Stranglethorn 62.70,72.40
click Zul'Mamwe Brazier##204247
Extinguish 8 Zul'Mamwe Braziers |q 26780/1 |goto Northern Stranglethorn 62.70,72.40
step
talk Priestess Thaalia##44017
turnin Mind Control##26774 |goto Northern Stranglethorn 53.50,66.80
accept Be Raptor##26775 |goto Northern Stranglethorn 53.50,66.80
step
talk Priestess Thaalia##44017
Tell her you are ready for the Mind Control ritual, Hu'rala
Become the Captured Lashtail Hatchling |invehicle |q 26775 |goto Northern Stranglethorn 53.50,66.80
step
Stay away from the trolls as you walk, or you will have to start over
talk Tan'shang##42881
<Learn to bite through nets from the elder raptor.>
Speak with Tan'shang |q 26775/1 |goto Northern Stranglethorn 89.10,46.30
step
Stay away from the trolls as you walk, or you will have to start over
talk Tenjiyu##42882 |goto Northern Stranglethorn 86.90,44.60
Tell him you'll go get him some food from the sleeping trolls
Click to proceed. |confirm
step
Stay away from the trolls as you walk, or you will have to start over
clicknpc Gurubashi Soldier##42871
|tip It's a sleeping troll inside this tent.
Steal Raptor Food |havebuff Raptor Food Pouch##80210 |q 26775 |goto Northern Stranglethorn 86.90,50.00
step
Stay away from the trolls as you walk, or you will have to start over
talk Tenjiyu##42882
Tell him you've brought some food for him, then.learnpet to light fires from the elder raptor
Help Tenjiyu |q 26775/2 |goto Northern Stranglethorn 86.90,44.60
step
click Gurubashi Brazier##2570 |goto Northern Stranglethorn 86.90,41.20
Get a Burning Twig
Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.
The guards blocking the path will run to put out the burning tiki
Run past the guards into the next area
Click to proceed. |confirm
step
click Gurubashi Brazier##2570 |goto Northern Stranglethorn 86.40,39.30
Get a Burning Twig
Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [86.10,38.00]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards into the next area
Click to proceed. |confirm
step
click Gurubashi Brazier##2570 |goto Northern Stranglethorn 85.30,37.70
Get a Burning Twig
Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [83.90,38.30]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards
Click to proceed. |confirm
step
talk Chiyu##42883
<Learn to drop skulls from the elder raptor.>
Speak with Chiyu |q 26775/3 |goto Northern Stranglethorn 82.80,37.50
step
click Giant Skullpile##293 |goto Northern Stranglethorn 82.50,33.90
Walk onto the bridge to 81.70,34.00
Use your Drop Skull ability to put the skull on the bridge
The troll will trip on the skull and fall off the bridge
Run to the other side of the bridge
Click to proceed |confirm
step
click Giant Skullpile##293 |goto Northern Stranglethorn 79.90,34.20
Walk onto the bridge to 79.00,33.50
Use your Drop Skull ability to put the skull on the bridge
The troll will trip on the skull and fall off the bridge
Run to the other side of the bridge
Click to proceed |confirm
step
click Gurubashi Brazier##2570
Get a Burning Twig
Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [74.70,32.00]
|tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
The guards blocking the path will run to put out the burning tiki
Run past the guards
Run up the big staircase
Escape from Zul'Gurub |q 26775/4 |goto Northern Stranglethorn 74.30,31.20
step
talk Priestess Thaalia##44017
turnin Be Raptor##26775 |goto Northern Stranglethorn 53.50,66.80
accept Ghaliri##26776 |goto Northern Stranglethorn 53.50,66.80
step
talk Ghaliri##44021
turnin Ghaliri##26776 |goto Northern Stranglethorn 52.70,66.80
turnin Zul'Mamwe Mambo##26779 |goto Northern Stranglethorn 52.70,66.80
step
|tip For the pet, you must kill Bloodlord Mandokir in Heroic Zul'Gurub.
Use the _Dungeon Finder_ to go to _Heroic Zul'Gurub_ |goto Zul'Gurub |noway |c
step
kill Bloodlord Mandokir##52151 |goto Zul'Gurub,60.60,80.60
step
Talk to Lashtail Hatchling
turnin An Old Friend##29208 |goto Zul'Gurub 61.20,81.60
collect 1 Lashtail Hatchling##69251 |goto Zul'Gurub 61.20,81.60
step
learnpet Lashtail Hatchling##307 |use Lashtail Hatchling##69251
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Orange Tabby Cat",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Orange Tabby Cat.",
pet=43,
mopready=true,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Orange Tabby)##8487 |goto Elwynn Forest,44.20,53.20
step
learnpet Orange Tabby Cat##43 |use Cat Carrier (Orange Tabby)##8487
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Panther Cub",{
patch='41000',
source='Quest',
description="This guide will walk you through obtaining the Beast pet: Panther Cub.",
pet=301,
mopready=true,
},[[
step
talk Bwemba##52654
accept Bwemba's Spirit##29100 |goto Stormwind City,25.90,29.30
accept To Fort Livingston##29102 |goto Stormwind City,25.90,29.30
step
talk Livingston Marshal##52281
turnin To Fort Livingston##29102 |goto Northern Stranglethorn,52.80,66.40
accept Serpents and Poison##29103 |goto Northern Stranglethorn,52.80,66.40
step
kill 10 Jungle Serpent##52224 |q 29103/1 |goto Northern Stranglethorn 52.00,61.40
Click Fort Livingston Adventurers
|tip They look like green bodies laying on the ground around this area.
Heal 10 Adventurers |q 29103/2 |goto Northern Stranglethorn 52.00,61.40
step
talk Livingston Marshal##52281
turnin Serpents and Poison##29103 |goto Northern Stranglethorn 52.80,66.40
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29104
step
Click the Bonfire
|tip It's a big pile of sticks on fire in the middle of Fort Livingston.
Watch the dialogue
Use the Bonfire in Fort Livingston |q 29104/1 |goto Northern Stranglethorn 52.90,66.50
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29104
step
talk Livingston Marshal##52281
accept Nesingwary Will Know##29105 |goto Northern Stranglethorn 52.80,66.40
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29105 |goto Northern Stranglethorn 44.10,22.90
accept Track the Tracker##29114 |goto Northern Stranglethorn 44.10,22.90
step
talk Grent Direhammer##52346
turnin Track the Tracker##29114 |goto Northern Stranglethorn 50.40,21.70
accept The Hunter's Revenge##29115 |goto Northern Stranglethorn 50.40,21.70
step
kill Mauti?##52349
Bring Grent Direhammer to the body of Mauti |q 29115/1 |goto Northern Stranglethorn 64.00,19.60
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29115
You will automatically accept a new quest:
accept Follow That Cat##29116
step
Go to this spot
Find Mauti's Lair |q 29116/1 |goto Northern Stranglethorn 77.70,68.40
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29116
accept Mauti##29120
step
kill Mauti##52372
Let Bwemba Inspect the Cat |q 29120/1 |goto Northern Stranglethorn 77.20,69.00
step
Next to you:
talk Bwemba##52234
turnin Mauti##29120
accept How's the Hunter Holding Up?##29213
step
Enter the cave |goto Northern Stranglethorn 76.50,67.50 < 5 |walk
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29213 |goto Northern Stranglethorn 76.10,66.70
accept Bury Me With Me Boots...##29121 |goto Northern Stranglethorn 76.10,66.70
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
collect Direhammer's Boots##68937 |q 29121/1 |goto Northern Stranglethorn 76.00,66.50
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29121 |goto Northern Stranglethorn 76.10,66.70
step
talk Panther Cub##52374
accept Some Good Will Come##29267 |goto Northern Stranglethorn 76.10,66.70
collect 1 Panther Cub##68833 |goto Northern Stranglethorn 76.10,66.70
step
learnpet Panther Cub##301 |use Panther Cub##68833
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Silver Tabby Cat",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Silver Tabby Cat.",
pet=45,
mopready=true,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Silver Tabby)##8488 |goto Elwynn Forest,44.20,53.20
step
learnpet Silver Tabby Cat##45 |use Cat Carrier (Silver Tabby)##8488
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Armadillo Pup",{
patch='40300',
source='Vendor',
description="This battle pet can be purchased from a guild vendor after you earn the Critter Kill Squad guild achievement.",
keywords={"Critter","Guild","Vendor"},
pet=272,
mopready=true,
},[[
step
Earn the Critter Kill Squad Guild Achievement |complete achieved(5144)
|tip You earn this by killing 50,000 critters.
step
Enter the building |goto Stormwind City/0 64.75,76.82 > 30 |walk
talk Shay Pressler##46602
|tip He is inside the building.
buy Armadillo Pup##63398 |goto Stormwind City/0 64.16,77.01
|tip You need to have revered reputation with your guild in order to purchase this.
step
collect Armadillo Pup##63398 |n
use the Armadillo Pup##63398
|tip It is in your inventory.
Learn the "Armadillo Pup" Battle Pet |learnpet Armadillo Pup##272
step
_Congratulations!_
You Collected the "Armadillo Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Brown Prairie Dog",{
patch='111100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Critter","Auction","House"},
pet=70,
mopready=true,
},[[
step
collect Prairie Dog Whistle##10394 |n
|tip This pet can only be purchased from a vendor in Thunder Bluff with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Prairie Dog Whistle##10394
|tip It is in your inventory.
Learn the "Brown Prairie Dog" Battle Pet |learnpet Brown Prairie Dog##70
step
_Congratulations!_
You Collected the "Brown Prairie Dog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Dung Beetle",{
patch='50100',
source='PetBattle',
description="This battle pet can be tamed in the wild all around Durotar.",
keywords={"Critter","Durotar"},
pet=467,
mopready=true,
},[[
step
clicknpc Dung Beetle##62115
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Dung Beetle" Battle Pet |learnpet Dung Beetle##467 |goto Durotar/0 52.51,56.41
step
_Congratulations!_
You Collected the "Dung Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Egbert",{
patch='21000',
source='WorldEvent',
description="This battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=158,
mopready=true,
},[[
step
collect Egbert's Egg##32616 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Egbert's Egg##32616
|tip It will be in your mailbox.
Learn the "Egbert" Battle Pet |learnpet Egbert##158
step
_Congratulations!_
You Collected the "Egbert" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Elwynn Lamb",{
patch='31100',
source='Vendor',
description="This battle pet is sold by a vendor in Icecrown after you champion a Human character in the Argent Tournament.",
keywords={"Critter","Icecrown"},
pet=209,
mopready=true,
},[[
step
Enter the tent |goto Icecrown/0 75.90,20.00 < 30 |walk
talk Corporal Arthur Flew##33307
|tip He is inside the tent.
buy Elwynn Lamb##44974 |goto Icecrown/0 76.45,19.20
|tip Before you can purchase this pet you must Champion a Human character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Human character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Elwynn Lamb##44974 |n
use the Elwynn Lamb##44974
|tip It is in your inventory.
Learn the "Elwynn Lamb" Battle Pet |learnpet Elwynn Lamb##209
step
_Congratulations!_
You Collected the "Elwynn Lamb" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Hare",{
patch='50100',
source='PetBattle',
description="This battle pet can be tamed in the wild all around The Hinterlands.",
keywords={"Critter","The","Hinterlands"},
pet=448,
mopready=true,
},[[
step
clicknpc Hare##61751
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Hare" Battle Pet |learnpet Hare##448 |goto The Hinterlands/0 25.57,58.54
step
_Congratulations!_
You Collected the "Hare" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Mr. Wiggles",{
patch='111100',
source='WorldEvent',
description="This battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=126,
mopready=true,
},[[
step
collect Piglet's Collar##23007 |n
|tip This pet is a reward for completing the Children's Week quests in Stormwind.
|tip You can use our Children's Week Stormwind Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Piglet's Collar##23007
|tip It will be in your mailbox.
Learn the "Mr. Wiggles" Battle Pet |learnpet Mr. Wiggles##126
step
_Congratulations!_
You Collected the "Mr. Wiggles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Mulgore Hatchling",{
patch='31100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Critter","Auction","House"},
pet=210,
mopready=true,
},[[
step
collect Mulgore Hatchling##44980 |n
|tip This pet can only be purchased from a vendor in Icecrown with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Mulgore Hatchling##44980
|tip It is in your inventory.
Learn the "Mulgore Hatchling" Battle Pet |learnpet Mulgore Hatchling##210
step
_Congratulations!_
You Collected the "Mulgore Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Peanut",{
patch='21000',
source='WorldEvent',
description="This battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=159,
mopready=true,
},[[
step
collect Elekk Training Collar##32622 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Elekk Training Collar##32622
|tip It will be in your mailbox.
Learn the "Peanut" Battle Pet |learnpet Peanut##159
step
_Congratulations!_
You Collected the "Peanut" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Pint-Sized Pink Pachyderm",{
patch='24000',
source='WorldEvent',
description="You can purchase this battle pet from a vendor in Dun Morogh during the Brewfest event.",
keywords={"Critter","Brewfest"},
pet=166,
mopready=true,
},[[
step
talk Belbi Quikswitch##23710
buy Pint-Sized Pink Pachyderm##46707 |goto Dun Morogh/0 56.44,37.64
|tip You can purchase this pet for 100 Brewfest Prize Tokens during the Brewfest event.
|tip You can use our Brewfest quest and daily guides to help you earn tokens.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Pint-Sized Pink Pachyderm##46707 |n
use the Pint-Sized Pink Pachyderm##46707
|tip It is in your inventory.
Learn the "Pint-Sized Pink Pachyderm" Battle Pet |learnpet Pint-Sized Pink Pachyderm##166
step
_Congratulations!_
You Collected the "Pint-Sized Pink Pachyderm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Porcupette",{
patch='50100',
source='Drop',
description="This battle pet has a 1 in 335 chance to drop from a Sack of Pet Supplies or you can purchase it from the Auction House.",
keywords={"Critter","Auction","House"},
pet=381,
mopready=true,
},[[
step
collect Porcupette##89587 |n
|tip This has a 1 in 335 chance to drop from a Sack of Pet Supplies, it may take a while to get this.
|tip You can earn a Sack of Pet Supplies from Battle Pet Tamer quests and Battle Pet Daily quests.
|tip You can use our Battle Pet Tamer guides as well as our Battle Pet Daily guides to help you complete quests.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Porcupette##89587
|tip It is in your inventory.
Learn the "Porcupette" Battle Pet |learnpet Porcupette##381
step
_Congratulations!_
You Collected the "Porcupette" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Scooter the Snail",{
patch='41000',
source='WorldEvent',
description="This battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=289,
mopready=true,
},[[
step
collect Snail Shell##66073 |n
|tip This pet is a reward for completing the Children's Week quests in Stormwind.
|tip You can use our Children's Week Stormwind Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Snail Shell##66073
|tip It will be in your mailbox.
Learn the "Scooter the Snail" Battle Pet |learnpet Scooter the Snail##289
step
_Congratulations!_
You Collected the "Scooter the Snail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Snowshoe Rabbit",{
patch='111100',
source='Vendor',
description="This battle pet is sold by a vendor in Dun Morogh.",
keywords={"Critter","Dun","Morogh"},
pet=72,
mopready=true,
},[[
step
talk Yarlyn Amberstill##1263
|tip She runs around this area.
buy Rabbit Crate (Snowshoe)##8497 |goto Dun Morogh/0 70.52,48.60
step
collect Rabbit Crate (Snowshoe)##8497 |n
use the Rabbit Crate (Snowshoe)##8497
|tip It is in your inventory.
Learn the "Snowshoe Rabbit" Battle Pet |learnpet Snowshoe Rabbit##72
step
_Congratulations!_
You Collected the "Snowshoe Rabbit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Undercity Cockroach",{
patch='111100',
source='Vendor',
description="This battle pet can be purchased from a vendor in Netherstorm.",
keywords={"Critter","Netherstorm"},
pet=55,
mopready=true,
},[[
step
talk Dealer Rashaad##20980
buy Undercity Cockroach##10393 |goto Netherstorm/0 43.51,35.27
step
collect Undercity Cockroach##10393 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Undercity Cockroach##10393
|tip It is inside your inventory.
Learn the "Undercity Cockroach" Battle Pet |learnpet Undercity Cockroach##55
step
_Congratulations!_
You Collected the "Undercity Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Undercity Rat",{
patch='50100',
source='PetBattle',
description="This battle pet can be tamed in the wild around the Canals in the Undercity.",
keywords={"Critter","Undercity"},
pet=454,
mopready=true,
},[[
step
clicknpc Undercity Rat##61889
|tip This pet is located in a Horde city, it will be easier and faster to try and capture it with a Horde character.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Undercity Rat" Battle Pet |learnpet Undercity Rat##454 |goto Undercity/0 59.92,38.00
step
_Congratulations!_
You Collected the "Undercity Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Whiskers the Rat",{
patch='111100',
source='WorldEvent',
description="This battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=127,
mopready=true,
},[[
step
collect Rat Cage##23015 |n
|tip This pet is a reward for completing the Children's Week quests in Stormwind.
|tip You can use our Children's Week Stormwind Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Rat Cage##23015
|tip It will be in your mailbox.
Learn the "Whiskers the Rat" Battle Pet |learnpet Whiskers the Rat##127
step
_Congratulations!_
You Collected the "Whiskers the Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Winter Reindeer",{
patch='111100',
source='WorldEvent',
description="This battle pet has a 1 in 4 chance to drop from a Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Critter","Feast","Of","Winter","Veil"},
pet=118,
mopready=true,
},[[
step
collect Jingling Bell##21308 |n
|tip This has a 1 in 4 chance to drop from a "Gaily Wrapped Present" during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present can be found under the giant Christmas tree in Ironforge.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Jingling Bell##21308
|tip It is in your inventory.
Learn the "Winter Reindeer" Battle Pet |learnpet Winter Reindeer##118
step
_Congratulations!_
You Collected the "Winter Reindeer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Wolpertinger",{
patch='22200',
source='WorldEvent',
description="This battle pet is rewarded to you after completing the quest Catch the Wild Wolpertinger! during the Brewfest event.",
keywords={"Critter","Brewfest"},
pet=153,
mopready=true,
},[[
step
talk Goldark Snipehunter##23486
Select _"What are Synthbrew Goggles?"_
Select _"I'd like a pair of Synthbrew Goggles."_
accept Catch the Wild Wolpertinger!##11117 |goto Dun Morogh/0 55.05,37.70
|tip This quest is not available on the Eu servers, you will have to purchase this pet from the Brewfest vendor Belbi Quikswitch.
step
Equip the Synthbrew Goggles |havebuff Synthebrew Goggles##65607
|tip It is in your inventory.
step
use the Wolpertinger Net##32907
|tip Use it on the Wolpertingers running around this area.
|tip You need to be wearing the Synthbrew Goggles to see them.
Catch #5# Stunned Wolpertingers |q 11117/1 |goto Dun Morogh/0 54.45,39.77
step
talk Goldark Snipehunter##23486
turnin Catch the Wild Wolpertinger!##11117 |goto Dun Morogh/0 55.05,37.71
step
collect Wolpertinger's Tankards##32233 |n
use the Wolpertinger's Tankards##32233
|tip It is in your inventory.
Learn the "Wolpertinger" Battle Pet |learnpet Wolpertinger##153
step
_Congratulations!_
You Collected the "Wolpertinger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Armadillo Pup",{
patch='40300',
source='Vendor',
description="This guide will walk you through obtaining the Critter pet: Armadillo Pup.",
pet=272,
mopready=true,
},[[
step
This pet requires your guild to have the achievement _"Critter Kill Squad"_ completed
_50,000_ critters killed |achieve 5144
step
talk Shay Pressler##46602
buy 1 Armadillo Pup##63398 |goto Stormwind City 64.60,76.80
step
learnpet Armadillo Pup##272 |use Armadillo Pup##63398
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Brown Prairie Dog",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Critter pet: Brown Prairie Dog.",
pet=70,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Prairie Dog Whistle##10394
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Brown Prairie Dog##70 |use Prairie Dog Whistle##10394
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Dung Beetle",{
patch='50100',
source='PetBattle',
description="This guide will walk you through obtaining the Critter pet: Dung Beetle.",
pet=467,
mopready=true,
},[[
step
Challenge one to a pet battle and capture it
|tip The Dung Beetle is level 1.
learnpet Dung Beetle##467 |goto Uldum 64.60,28.00
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Elwynn Lamb",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Critter pet: Elwynn Lamb.",
pet=209,
mopready=true,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Human.
confirm always
step
label "pet"
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
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
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
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.
|tip Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.
|tip Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
|tip Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13699/1 |goto Icecrown 68.60,21.00
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Challenge##13699 |goto Icecrown 76.60,19.20
step
Become a Champion of Stormwind |achieve 2781
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Corporal Arthur Flew##33307
buy 1 Elwynn Lamb##44974 |goto Icecrown,76.40,19.20
step
learnpet Elwynn Lamb##209 |use Elwynn Lamb##44974
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Hare",{
patch='50100',
source='PetBattle',
description="This guide will walk you through obtaining the Critter pet: Hare.",
pet=448,
mopready=true,
},[[
step
Challenge one to a pet battle and capture it
|tip The Hares in this area are around level 11.
learnpet Hare##448 |goto The Hinterlands 66.90,34.70
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Mulgore Hatchling",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Critter pet: Mulgore Hatchling.",
pet=210,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Mulgore Hatcling##44980
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Mulgore Hatchling##210 |use Mulgore Hatchling##44980
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Pint-Sized Pink Pachyderm",{
patch='24000',
source='WorldEvent',
description="This guide will walk you through obtaining the Critter pet: Pint-Sized Pink Pachyderm.",
pet=166,
mopready=true,
},[[
step
This pet is only availiable during the Brewfest Holiday
|tip You will need to complete the quests, then do the dailies to amass brewest tokens.
collect 100 Brewfest Prize Tokens##37829
Click here if you need to do the quests leading up to the dailies. |next "Events Guides\\Brewfest\\Brewfest Quests" |confirm |confirm |only if ZGV.guidesets["DailiesACATA"]
Click here if you have completed the quests and only need the dailies. |next "Events Guides\\Brewfest\\Brewfest Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesACATA"]
step
Go to Dun Morogh and talk to Belbi Quikswitch
talk Belbi Quikswitch##23710
buy 1 Pint-Sized Pink Pachyderm##46707
step
learnpet Pint-Sized Pink Pachyderm##166 |use Pint-Sized Pink Pachyderm##46707
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Snowshoe Rabbit",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Critter pet: Snowshoe Rabbit.",
pet=72,
mopready=true,
},[[
step
talk Yarlyn Amberstill##1263
buy 1 Rabbit Crate (Snowshoe)##8497 |goto Dun Morogh 70.60,49.00
step
learnpet Snowshoe Rabbit##72 |use Rabbit Crate (Snowshoe)##8497
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Undercity Cockroach",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Critter pet: Undercity Cockroach.",
pet=55,
mopready=true,
},[[
step
talk Dealer Rashaad##20980
buy 1 Undercity Cockroach##10393 |goto Netherstorm 43.40,35.20
step
learnpet Undercity Cockroach##55 |use Undercity Cockroach##10393
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Undercity Rat",{
patch='50100',
source='PetBattle',
description="This guide will walk you through obtaining the Critter pet: Undercity Rat.",
pet=454,
mopready=true,
},[[
step
This pet is only found inside The Undercity.
|tip You can attempt to capture it yourself, but it is suggested that you use a Horde character to capture it.
confirm
step
Challenge one to a pet battle and capture it
|tip The Undercity Rats are level 2.
learnpet Undercity Rat##454 |goto Undercity 70.90,35.40
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\White Kitten",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Critter pet: White Kitten.",
pet=46,
mopready=true,
},[[
step
map Stormwind City
path follow loose;loop off;
path	69.20,62.00	67.60,59.00	69.60,53.20
path	66.00,50.80	61.80,44.60	58.20,53.60
path	56.00,56.60	53.00,55.20	50.40,56.80
path	46.80,56.00	51.20,63.00	55.40,63.20
path	58.60,64.20	63.60,61.20	67.00,64.60
This pet is purchesed from _Lil Timmy_, who patrols around Stormwind.
Follow the path to find him.
talk Lil Timmy##8666
buy 1 Cat Carrier (White Kitten)##8489
step
learnpet White Kitten##46 |use Cat Carrier (White Kitten)##8489
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Winter Reindeer",{
patch='111100',
source='WorldEvent',
description="This guide will walk you through obtaining the Critter pet: Winter Reindeer.",
pet=118,
mopready=true,
},[[
step
These pets are only availiable during the _Winter Veil_ Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Jingling Bell##21308
step
learnpet Winter Reindeer##118 |use Jingling Bell##21308
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Wolpertinger",{
patch='22200',
source='WorldEvent',
description="This guide will walk you through obtaining the Critter pet: Wolpertinger.",
pet=153,
mopready=true,
},[[
step
You can only obtain this pet during the Brewfest event.
confirm
leechsteps "Events Guides\\Brewfest\\Brewfest Dailies"
step
Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
collect 200 Brewfest Prize Token##37829 |achieve 2796
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |n
Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420 |goto Ironforge 56.40,37.90
Buy the Wolpertinger's Tankard and click it to learn it. |achieve 1683/6 |goto Ironforge 56.40,37.90
step
learnpet Wolpertinger##153 |use Wolpertinger's Tankard##32233
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Golden Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Dragonkin","Auction","House"},
pet=142,
mopready=true,
},[[
step
collect Golden Dragonhawk Hatchling##29953 |n
|tip This pet can only be purchased from a vendor in Eversong Woods with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Golden Dragonhawk Hatchling##29953
|tip It is in your inventory.
Learn the "Golden Dragonhawk Hatchling" Battle Pet |learnpet Golden Dragonhawk Hatchling##142
step
_Congratulations!_
You Collected the "Golden Dragonhawk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Lil' Tarecgosa",{
patch='42000',
source='Vendor',
description="This battle pet can be purchased from a guild vendor after you earn the Dragonwrath, Tarecgosa's Rest- Guild Edition achievement.",
keywords={"Dragonkin","Guild","Vendor"},
pet=320,
mopready=true,
},[[
step
Earn the Dragonwrath, Tarecgosa's Rest- Guild Edition Achievement |complete achieved(5840)
|tip In order to earn this achievement someone in your guild needs to have the legendary weapon "Dragonwrath, Tarecgosa's Rest".
step
Enter the building |goto Stormwind City/0 64.75,76.82 > 30 |walk
talk Shay Pressler##46602
|tip He is inside the building.
buy Lil' Tarecgosa##71033 |goto Stormwind City/0 64.16,77.01
|tip You need exalted reputation with your guild in order to purchase this.
step
collect Lil' Tarecgosa##71033 |n
use the Lil' Tarecgosa##71033
|tip It is in your inventory.
Learn the "Lil' Tarecgosa" Battle Pet |learnpet Lil' Tarecgosa##320
step
_Congratulations!_
You Collected the "Lil' Tarecgosa" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Red Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Dragonkin","Auction","House"},
pet=143,
mopready=true,
},[[
step
collect Red Dragonhawk Hatchling##29956 |n
|tip This pet can only be purchased from a vendor in Eversong Woods with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Red Dragonhawk Hatchling##29956
|tip It is in your inventory.
Learn the "Red Dragonhawk Hatchling" Battle Pet |learnpet Red Dragonhawk Hatchling##143
step
_Congratulations!_
You Collected the "Red Dragonhawk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Silver Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Dragonkin","Auction","House"},
pet=144,
mopready=true,
},[[
step
collect Silver Dragonhawk Hatchling##29957 |n
|tip This pet can only be purchased from a vendor in Eversong Woods with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Silver Dragonhawk Hatchling##29957
|tip It is in your inventory.
Learn the "Silver Dragonhawk Hatchling" Battle Pet |learnpet Silver Dragonhawk Hatchling##144
step
_Congratulations!_
You Collected the "Silver Dragonhawk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Thundering Serpent Hatchling",{
patch='50100',
source='BlackMarket',
description="This battle pet has a chance to drop from Unclaimed Black Market Container.",
keywords={"Dragonkin","Black","Market"},
pet=802,
mopready=true,
},[[
step
talk Madam Goya##100986
buy Unclaimed Black Market Container##127995 |n
|tip There is a chance this will not be available to purchase, you may have to come back and check in from time to time.
use the Unclaimed Black Market Container##127995
|tip It is in your inventory.
collect Thundering Serpent Hatchling##85513 |n
|tip This is a very rare drop.
use the Thundering Serpent Hatchling##85513
|tip It is in your inventory.
Learn the "Thundering Serpent Hatchling" Battle Pet |learnpet Thundering Serpent Hatchling##802 |goto Dalaran/1 71.39,17.92
step
_Congratulations!_
You Collected the "Thundering Serpent Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Golden Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
description="This guide will walk you through obtaining the Dragonkin pet: Golden Dragonhawk Hatchling.",
pet=142,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Golden Dragonhawk Hatchling##29953
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Golden Dragonhawk Hatchling##142 |use Golden Dragonhawk Hatchling##29953
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Lil' Tarecgosa",{
patch='42000',
source='Vendor',
description="This guide will walk you through obtaining the Dragonkin pet: Lil' Tarecgosa.",
pet=320,
mopready=true,
},[[
step
This pet requires that your guild_ has the achievement "Dragonwrath, Tarecgosa's Rest - Guild Edition"
|tip Dragonwrath, Tarecgosa's Rest |achieve 5840
step
talk Shay Pressler##46602
buy 1 Lil' Tarecgosa##71033 |goto Stormwind City,64.60,76.80
step
learnpet Lil' Tarecgosa##320 |use Lil' Tarecgosa##71033
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Red Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
description="This guide will walk you through obtaining the Dragonkin pet: Red Dragonhawk Hatchling.",
pet=143,
mopready=true,
},[[
step
You will have to buy this from a neutral Auction House, as it is not available to Alliance characters
buy 1 Red Dragonhawk Hatchling##29956
step
learnpet Red Dragonhawk Hatchling##143 |use Red Dragonhawk Hatchling##29956
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Silver Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
description="This guide will walk you through obtaining the Dragonkin pet: Silver Dragonhawk Hatchling.",
pet=144,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Silver Dragonhawk##29957
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Silver Dragonhawk Hatchling##144 |use Silver Dragonhawk##29957
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Thundering Serpent Hatchling",{
patch='50100',
source='unknown',
description="This guide will walk you through obtaining the Dragonkin pet: Thundering Serpent Hatchling.",
pet=802,
mopready=true,
},[[
step
This pet requires you to be _Revered_ with your guild.
confirm
step
talk Shay Pressler##46602
buy 1 Thundering Serpent Hatchling##85513 |goto Stormwind City 64.60,76.80
step
learnpet Thundering Serpent Hatchling##802 |use Thundering Serpent Hatchling##85513
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Ammen Vale Lashling",{
patch='31100',
source='Vendor',
description="This battle pet is sold by a vendor in Icecrown after you champion a Draenei character in the Argent Tournament.",
keywords={"Elemental","Icecrown"},
pet=212,
mopready=true,
},[[
step
Enter the tent |goto Icecrown/0 75.90,20.00 < 30 |walk
talk Irisee##33657
|tip She is inside the tent.
buy Ammen Vale Lashling##44984 |goto Icecrown/0 76.15,19.30
|tip Before you can purchase this pet you must Champion a Draenei character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Draenei character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Ammen Vale Lashling##44984 |n
use the Ammen Vale Lashling##44984
|tip It is in your inventory.
Learn the "Ammen Vale Lashling" Battle Pet |learnpet Ammen Vale Lashling##212
step
_Congratulations!_
You Collected the "Ammen Vale Lashling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Dark Phoenix Hatchling",{
patch='40300',
source='Vendor',
description="This battle pet can be purchased from a guild vendor after you earn the United Nations guild achievement.",
keywords={"Elemental","Guild","Vendor"},
pet=270,
mopready=true,
},[[
step
Earn the United Nations Guild Achievement |complete achieved(5892)
|tip In order to earn this achievement someone in your guild must raise 55 reputations to exalted.
step
Enter the building |goto Stormwind City/0 64.75,76.82 > 30 |walk
talk Shay Pressler##46602
|tip He is inside the building.
buy Lil' Tarecgosa##71033 |goto Stormwind City/0 64.16,77.01
|tip You need exalted reputation with your guild in order to purchase this.
step
collect Dark Phoenix Hatchling##63138 |n
use the Dark Phoenix Hatchling##63138
|tip It is in your inventory.
Learn the "Dark Phoenix Hatchling" Battle Pet |learnpet Dark Phoenix Hatchling##270
step
_Congratulations!_
You Collected the "Dark Phoenix Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Elementium Geode",{
patch='40300',
source='Drop',
description="This battle pet has a chance to drop from mining Elementium Veins or you can purchase it from the Auction House.",
keywords={"Elemental","Auction","House"},
pet=293,
mopready=true,
},[[
step
collect Elementium Geode##67282 |n
|tip This has a very rare chance to drop from mining Elementium Veins, it may take you a long time to get this.
|tip If you plan on mining the Elementium Veins you can use our Elementium Mining Profession guide for the best route to farm them in the Twilight Highlands.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Elementium Geode##67282
|tip It is in your inventory.
Learn the "Elementium Geode" Battle Pet |learnpet Elementium Geode##293
step
_Congratulations!_
You Collected the "Elementium Geode" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Lumpy",{
patch='43000',
source='WorldEvent',
description="This battle pet has a chance to drop from Stolen Presents during the Feast of Winter Veil event or you can purchase it from the Auction House.",
keywords={"Elemental","Feast","Of","Winter","Veil"},
pet=337,
mopready=true,
},[[
step
collect Stolen Present##116762 |n
|tip You can earn this by completing the daily quest "You're a Mean One..." during the Feast of Winter Veil event.
|tip You can use our Feast of Winter Veil Daily Quest guides to help you complete the quest.
use the Stolen Present##116762
|tip It is in your inventory.
collect Lump of Coal##73797 |n
|tip This has a 1 in 65 chance to drop from a Stolen Present, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Lump of Coal##73797
|tip It is in your inventory.
Learn the "Lumpy" Battle Pet |learnpet Lumpy##337
step
_Congratulations!_
You Collected the "Lumpy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pebble",{
patch='40300',
source='Achievement',
description="This battle pet is a reward for completing the Rock Lover achievement.",
keywords={"Elemental","Rock","Lover"},
pet=265,
mopready=true,
},[[
step
collect Pebble##60869 |n
|tip This pet is a reward for completing the achievement "Rock Lover".
|tip To get this achievement you must complete the Therazane daily quest "Lost In The Deeps" 10 times.
|tip You can use our "Rock Lover" achievement guide to help you complete the achievement.
use the Pebble##60869
|tip It will be in your mailbox.
Learn the "Pebble" Battle Pet |learnpet Pebble##265
step
_Congratulations!_
You Collected the "Pebble" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Searing Scorchling",{
patch='24000',
source='Vendor',
description="This battle pet can be purchased from a vendor in the Molten Front.",
keywords={"Elemental","Molten","Front"},
pet=172,
mopready=true,
},[[
step
Complete the Quest _Calling the Ancients_ |complete completedq(29283)
|tip You will have to grind Firelands dailies and quests to earn 445 Marks of the World Tree.
|tip You can use the Firelands quest and dailies guides to help you.
|tip This will take about a month to grind.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Zen'Vorka##52822
buy Zen'Vorka's Cache##71631 |n
|tip This costs 30 Mark of the World Tree.
collect Zen'Vorka's Cache##71631 |n
use the Zen'Vorka's Cache##71631
|tip It is in your inventory.
collect Scorched Stone##34955 |n
|tip This has a 1 in 65 chance to drop, it may take several attempts to get this.
use the Scorched Stone##34955
|tip It is in your inventory.
Learn the "Searing Scorchling" Battle Pet |learnpet Searing Scorchling##172 |goto Molten Front/0 47.00,90.60
step
_Congratulations!_
You Collected the "Searing Scorchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Teldrassil Sproutling",{
patch='31100',
source='Vendor',
description="This battle pet is sold by a vendor in Icecrown after you champion a Night Elf character in the Argent Tournament.",
keywords={"Elemental","Icecrown"},
pet=204,
mopready=true,
},[[
step
Enter the tent |goto Icecrown/0 75.90,20.00 < 30 |walk
talk Rook Hawkfist##33653
|tip She is inside the tent.
buy Teldrassil Sproutling##44965 |goto Icecrown/0 76.27,19.14
|tip Before you can purchase this pet you must Champion a Night Elf character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Night Elf character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Teldrassil Sproutling##44965 |n
use the Teldrassil Sproutling##44965
|tip It is in your inventory.
Learn the "Teldrassil Sproutling" Battle Pet |learnpet Teldrassil Sproutling##204
step
_Congratulations!_
You Collected the "Teldrassil Sproutling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Tiny Snowman",{
patch='111100',
source='WorldEvent',
description="This battle pet has a 1 in 4 chance to drop from Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Elemental","Feast","Of","Winter","Veil"},
pet=117,
mopready=true,
},[[
step
collect Snowman Kit##21309 |n
|tip This has a 1 in 4 chance to drop from Gaily Wrapped Present during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present is found under the giant Christmas tree in Ironforge.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Snowman Kit##21309
|tip It is in your inventory.
Learn the "Tiny Snowman" Battle Pet |learnpet Tiny Snowman##117
step
_Congratulations!_
You Collected the "Tiny Snowman" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Ammen Vale Lashling",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Elemental pet: Ammen Vale Lashling.",
pet=212,
mopready=true,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.
|tip Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Draenei.
confirm always
step
label "pet"
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
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
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
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13854/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13854/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.
|tip If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
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
collect 25 Valiant's Seal##44987 |q 13716/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.
|tip Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.
|tip Stay in very close range and spam your Thrust ability.
|tip Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13724/1 |goto Icecrown 68.60,21.00
step
talk Colosos##33593
turnin The Valiant's Challenge##13724 |goto Icecrown 76.10,19.20
step
Become a Champion of Exodar |achieve 2778
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Irisee##33657
buy 1 Ammen Vale Lashling##44984 |goto Icecrown,76.20,19.20
step
learnpet Ammen Vale Lashling##212 |use Ammen Vale Lashling##44984
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Dark Phoenix Hatchling",{
patch='40300',
source='Vendor',
description="This guide will walk you through obtaining the Elemental pet: Dark Phoenix Hatchling.",
pet=270,
mopready=true,
},[[
step
#include "misc_rep_mount",rep="Guild"
Your guild needs have the achievement "United Nations"
|tip Only 1 person in your guild needs to have 55 Exalted reputations
|tip 55 Exalted Reputations |achieve 5892
step
talk Shay Pressler##46602
buy 1 Dark Phoenix Hatchling##63138 |goto Stormwind City,64.60,76.80
step
learnpet Dark Phoenix Hatchling##270 |use Dark Phoenix Hatchling##63138
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Elementium Geode",{
patch='40300',
source='Drop',
description="This guide will walk you through obtaining the Elemental pet: Elementium Geode.",
pet=293,
mopready=true,
},[[
step
You can either farm for this pet using Mining or buy it from the Auction House:
Click here to farm. |confirm
Click here if you just want to buy it. |next "buy" |confirm
step
map Twilight Highlands
path	44.50,85.30	39.80,87.00	35.90,83.40
path	39.90,80.70	37.10,76.20	33.20,71.10
path	28.70,65.30	38.00,58.00	35.90,52.40
path	30.10,47.20	28.50,38.90	26.30,36.70
path	32.20,30.50	37.90,41.30	36.20,46.00
path	37.10,55.00	38.30,61.00	39.90,73.50
path	43.20,76.20
Follow the provided path, mining _ANY_ nodes you come across.
collect 1 Elementium Geode##67282 |next "last"
step
label "buy"
talk Auctioneer Chilton##8670
collect 1 Elementium Geode##67282 |goto Stormwind City/0 60.70,70.80
step
label "last"
learnpet Elementium Geode##293 |use Elementium Geode##67282
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Lumpy",{
patch='43000',
source='WorldEvent',
description="This guide will walk you through obtaining the Elemental pet: Lumpy.",
pet=337,
mopready=true,
},[[
step
talk Strange Snowman##13636
accept You're a Mean One...##7043 |goto Hillsbrad Foothills,42.30,41.10
step
kill The Abominable Greench##54499
collect Stolen Treats##17662 |q 7043/2 |goto Hillsbrad Foothills,43.60,39.00
|tip They are the bags on the ground behind the Abominable Greench.
Free Metzen the Reindeer. |q 7043/1 |goto Hillsbrad Foothills,43.60,39.00
|tip After you defeat The Abominable Greench Metzen is freed.
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge,33.70,67.30
collect 1 Stolen Present##73792 |goto Ironforge,33.70,67.30
Open your Stolen Present |use Stolen Present##73792
collect 1 Lump of Coal##73797 |goto Ironforge,33.70,67.30
step
learnpet Lumpy##337 |use Lump of Coal##73797
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pebble",{
patch='40300',
source='Achievement',
description="This guide will walk you through obtaining the Elemental pet: Pebble.",
pet=265,
mopready=true,
},[[
step
To earn Pebble, you must do the _Rock Lover_ achievement, which means you will have to do Lost in the Deeps 10 times.
Since the daily quest isn't available every day, this pet may take a while to earn.
If you have done the Pre-Quests for Therazane, click here. |next "daily" |confirm
If you need to do the Pre-Quests, click here. |next "pre" |confirm
step
label "pre"
click Hero's Call Board##250720
accept Hero's Call: Deepholm!##27727 |goto Stormwind City,62.90,71.60
step
talk Naraat the Earthspeaker##45226
turnin Hero's Call: Deepholm!##27727 |goto Stormwind City 74.50,19.00
accept The Maelstrom##27203 |goto Stormwind City 74.50,19.00
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom,33.40,50.20
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.40,50.20
step
clicknpc Wyvern##45005 |goto The Maelstrom 32.50,52.00
You will fly into Deepholm |goto Deepholm,49.90,54.70,0.50 |noway |c
step
talk Maruut Stonebinder##43065
turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.60,53.00
accept Gunship Down##26245 |goto Deepholm,49.60,53.00
step
talk Seer Kormo##43397
accept Elemental Energy##27136 |goto Deepholm 49.70,52.90
accept The Earth Claims All##26244 |goto Deepholm 49.70,52.90
step
talk Earthcaller Yevaa##42573
accept Where's Goldmine?##26409 |goto Deepholm 49.50,53.30
step
talk Caretaker Nuunwa##45300
home Temple of Earth |goto Deepholm 49.20,51.90
step
talk Initiate Goldmine##42574
turnin Where's Goldmine?##26409 |goto Deepholm 46.50,57.30
accept Explosive Bonding Compound##26410 |goto Deepholm 46.50,57.30
accept Something that Burns##27135 |goto Deepholm 46.50,57.30
step
kill Rockslice Flayer##42606+, Rockslice Ripper##42607+
collect 5 Quartzite Resin##58501 |q 26410/1 |goto Deepholm 45.50,57.90
You can find more Rockslice Flayers around [42.50,55.60]
step
Use your Depleted Totem |use Depleted Totem##60835
kill Lodestone Elemental##43258+, Energized Geode##43254+
|tip Kill them next to your Depleted Totems.
Energize the Totem 8 Times |q 27136/1 |goto Deepholm 51.10,61.60
step
Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
kill Magmatooth##45099
collect The Burning Heart##60837 |q 27135/1 |goto Deepholm 52.00,58.90
step
talk Initiate Goldmine##42574
turnin Explosive Bonding Compound##26410 |goto Deepholm 46.50,57.30
turnin Something that Burns##27135 |goto Deepholm 46.50,57.30
accept Apply and Flash Dry##26411 |goto Deepholm 46.50,57.30
step
Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
Apply the Explosive Bonding Compound |q 26411/1 |goto Deepholm 46.60,57.20
step
talk Initiate Goldmine##42574
turnin Apply and Flash Dry##26411 |goto Deepholm 46.50,57.30
accept Take Him to the Earthcaller##26413 |goto Deepholm 46.50,57.30
step
Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto Deepholm 49.50,53.30
step
talk Earthcaller Yevaa##42573
turnin Take Him to the Earthcaller##26413 |goto Deepholm 49.50,53.30
accept To Stonehearth's Aid##26484 |goto Deepholm 49.50,53.30
step
talk Seer Kormo##43397
turnin Elemental Energy##27136 |goto Deepholm 49.70,52.90
stickystart "deepelem"
step
clicknpc Slain Cannoneer##43032
Receive the Second Clue |q 26245/2 |goto Deepholm 56.10,74.20
step
clicknpc Captain Skullshatter##43048
Receive the First Clue |q 26245/1 |goto Deepholm 53.50,73.80
step
click Captain's Log##211413
accept Captain's Log##26246 |goto Deepholm 53.60,73.80
step
clicknpc Unexploded Artillery Shell##43044
Receive the Third Clue |q 26245/3 |goto Deepholm 56.70,76.40
step
label "deepelem"
kill 5 Deepstone Elemental##43026+ |q 26244/1 |goto Deepholm 55.90,74.90
step
talk Maruut Stonebinder##43065
turnin Gunship Down##26245 |goto Deepholm 49.60,52.90
turnin Captain's Log##26246 |goto Deepholm 49.60,52.90
step
talk Seer Kormo##43397
turnin The Earth Claims All##26244 |goto Deepholm 49.70,52.90
step
talk Maruut Stonebinder##43065
accept Diplomacy First##26247 |goto Deepholm 49.60,53.00
step
talk Stormcaller Mylra##42684
turnin Diplomacy First##26247 |goto Deepholm 62.40,52.60
accept All Our Friends Are Dead##26248 |goto Deepholm 62.40,52.60
accept The Admiral's Cabin##26249 |goto Deepholm 62.40,52.60
step
All around on this air ship:
Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
Receive 6 Slain Crew Member Information |q 26248/1
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin The Admiral's Cabin##26249
accept Without a Captain or Crew##26427
step
Leave through the doorway and immediately turn right:
click Bottle of Whiskey##204280
|tip Located on the life boat.
collect Bottle of Whiskey##58798 |q 26427/1
step
All around on the deck of the air ship:
click Spool of Rope##204279
collect Spool of Rope##58806 |q 26427/2
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin Without a Captain or Crew##26427
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin All Our Friends Are Dead##26248
accept Take No Prisoners##26251
accept On Second Thought, Take One Prisoner##26250
step
Go onto the main deck of the ship and go down the stairs to the deck below:
Fight Mor'norokk the Hateful until he surrenders
|tip He's downstairs in the airship, in the very back of the first level you come to.
talk Mor'norokk the Hateful##42801
Subdue Mor'norokk the Hateful |q 26250/1
step
All around on this lower deck of the air ship:
kill 6 Twilight Saboteur##42885 |q 26251/1
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin Take No Prisoners##26251
turnin On Second Thought, Take One Prisoner##26250
accept Some Spraining to Do##26254
step
Next to Stormcaller Mylra:
clicknpc Stormbeak##42887
Interrogate Mok'norrok |q 26254/1
step
When you land on the air ship again:
talk Stormcaller Mylra##42684
turnin Some Spraining to Do##26254
accept Return to the Temple of Earth##26255
step
talk Maruut Stonebinder##43065
turnin Return to the Temple of Earth##26255 |goto Deepholm 49.60,53.00
accept Deathwing's Fall##26258 |goto Deepholm 49.60,53.00
step
talk Seer Kormo##43397
accept Blood of the Earthwarder##26259 |goto Deepholm 49.70,52.90
step
Go to this spot
Reach Deathwing's Fall |q 26258/1 |goto Deepholm 59.40,58.20
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Deathwing's Fall##26258
accept Bleed the Bloodshaper##26256
step
kill Twilight Bloodshaper##43218+
collect Twilight Orders##60264 |q 26256/1 |goto Deepholm 61.50,60.60
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Bleed the Bloodshaper##26256
accept Question the Slaves##26261
stickystart "bloodofnelth"
step
click Slavemaster's Coffer##205097
collect 1 Twilight Slaver's Key##60739 |q 26261 |goto Deepholm 62.80,59.50
step
label "bloodofnelth"
kill Living Blood##43123+
collect 5 Blood of Neltharion##133127 |q 26259/1 |goto Deepholm 61.20,60.10
step
click Ball and Chain##207079
Free 6 Enslaved Miners |q 26261/1 |goto Deepholm 64.50,65.50
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Question the Slaves##26261
accept The Forgemaster's Log##26260
step
click Forgemaster's Log##205134
turnin The Forgemaster's Log##26260 |goto Deepholm 63.70,55.40
accept Silvermarsh Rendezvous##27007 |goto Deepholm 63.70,55.40
step
Go to this spot
Reach Upper Silvermarsh |q 27007/1 |goto Deepholm 70.60,61.20
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Silvermarsh Rendezvous##27007
accept Quicksilver Submersion##27010
step
click Trogg Crate##205197
collect Trogg Crate##60809 |q 27010 |goto Deepholm 71.80,64.30
kill Murkstone Trogg##44936
collect 1 Maziel's Research##60816 |n
Click Maziel's Research in your bags |use Maziel's Research##60816
accept Twilight Research##27100
step
Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
Watch the dialogue
Uncover the World Pillar Fragment Clue |q 27010/1 |goto Deepholm 74.90,64.80
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Quicksilver Submersion##27010
accept The Twilight Overlook##27061
step
kill Mercurial Ooze##43158+
collect 4 Twilight Research Notes##60814 |q 27100/1 |goto Deepholm 72.50,65.20
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Twilight Research##27100
accept Maziel's Revelation##27101
step
click Maziel's Journal##205207
turnin Maziel's Revelation##27101 |goto Deepholm 67.20,70.20
accept Maziel's Ascendancy##27102 |goto Deepholm 67.20,70.20
step
Enter the cave |goto Deepholm 69.50,68.00 < 5 |walk
kill Maziel##44967 |q 27102/1 |goto Deepholm 72.80,62.00
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Maziel's Ascendancy##27102
step
Leave the cave |goto Deepholm 69.50,68.00 < 5 |walk
talk Stormcaller Mylra##44010
turnin The Twilight Overlook##27061 |goto Deepholm 64.50,82.10
accept Big Game, Big Bait##26766 |goto Deepholm 64.50,82.10
accept To Catch a Dragon##26768 |goto Deepholm 64.50,82.10
step
kill Jadecrest Basilisk##43981+
Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto Deepholm 58.00,84.80
kill Twilight Dragonstalker##43992+
collect Twilight Snare##60383 |q 26768/1 |goto Deepholm 58.00,84.80
step
talk Stormcaller Mylra##44010
turnin Big Game, Big Bait##26766 |goto Deepholm 64.50,82.10
turnin To Catch a Dragon##26768 |goto Deepholm 64.50,82.10
accept Testing the Trap##26771 |goto Deepholm 64.50,82.10
step
Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
kill Stonescale Matriarch##44148 |q 26771/1 |goto Deepholm 50.90,85.30
step
talk Stormcaller Mylra##44010
turnin Testing the Trap##26771 |goto Deepholm 64.50,82.10
accept Abyssion's Minions##26857 |goto Deepholm 64.50,82.10
step
talk Seer Galekk##44222
accept Block the Gates##26861 |goto Deepholm 64.60,82.20
stickystart "abyunder"
step
Use your Stormstone next to the swirling blue portal |use Stormstone##60501
Disrupt the Twilight Gate |q 26861/1 |goto Deepholm 68.70,75.00
step
Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
Disrupt the Elemental Gate |q 26861/2 |goto Deepholm 71.20,75.10
step
label "abyunder"
kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
Defeat 8 Abyssion's Underlings |q 26857/1 |goto Deepholm 69.90,76.70
step
talk Seer Galekk##44222
turnin Block the Gates##26861 |goto Deepholm 64.60,82.20
step
talk Stormcaller Mylra##44010
turnin Abyssion's Minions##26857 |goto Deepholm 64.50,82.20
accept The World Pillar Fragment##26876 |goto Deepholm 64.50,82.20
step
Use your Earthen Ring Banner |use Earthen Ring Banner##60810
kill Abyssion##44289
click The First Fragment of the World Pillar##204967
collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto Deepholm 69.90,76.90
step
talk Maruut Stonebinder##43065
turnin The World Pillar Fragment##26876 |goto Deepholm 49.60,53.00
step
talk Seer Kormo##43397
turnin Blood of the Earthwarder##26259 |goto Deepholm 49.70,52.90
step
talk Crag Rockcrusher##43071
turnin To Stonehearth's Aid##26484 |goto Deepholm 27.90,68.70
accept The Quaking Fields##27931 |goto Deepholm 27.90,68.70
step
talk Slate Quicksand##47195
turnin The Quaking Fields##27931 |goto Deepholm 30.60,77.70
accept The Axe of Earthly Sundering##27932 |goto Deepholm 30.60,77.70
accept Elemental Ore##27933 |goto Deepholm 30.60,77.70
step
Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto Deepholm 32.20,79.10
kill Jade Rager##44220+
collect 6 Elemental Ore##60487 |q 27933/1 |goto Deepholm 32.20,79.10
step
talk Slate Quicksand##47195
turnin The Axe of Earthly Sundering##27932 |goto Deepholm 30.60,77.70
turnin Elemental Ore##27933 |goto Deepholm 30.60,77.70
accept One With the Ground##27934 |goto Deepholm 30.60,77.70
step
talk Slate Quicksand##47195
Tell him you are ready for the ritual
Complete the One With the Ground Ritual |q 27934/1 |goto Deepholm 30.60,77.70
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin One With the Ground##27934
accept Bring Down the Avalanche##27935
step
kill Avalanchion##44372 |q 27935/1 |goto Deepholm 46.90,89.10
step
Leave the cave |goto Deepholm 43.40,82.00 < 5 |walk
talk Crag Rockcrusher##43071
turnin Bring Down the Avalanche##27935 |goto Deepholm 27.90,68.70
accept Stonefather's Boon##26499 |goto Deepholm 27.90,68.70
step
talk Earthbreaker Dolomite##43160
accept We're Surrounded##26500 |goto Deepholm 28.20,69.60
step
kill 12 Stone Trogg Ambusher##43134+ |q 26500/1 |goto Deepholm 29.70,68.80
Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
Grant the Stonefather's Boon 12 times |q 26499/1 |goto Deepholm 29.70,68.80
step
talk Earthbreaker Dolomite##43160
turnin We're Surrounded##26500 |goto Deepholm 28.20,69.60
accept Thunder Stones##26502 |goto Deepholm 28.20,69.60
step
talk Crag Rockcrusher##43071
turnin Stonefather's Boon##26499 |goto Deepholm 27.90,68.70
accept Sealing the Way##26501 |goto Deepholm 27.90,68.70
stickystart "thunderstone"
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Shrine |q 26501/4 |goto Deepholm 27.30,67.80
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Barracks |q 26501/3 |goto Deepholm 26.00,68.80
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Inn |q 26501/2 |goto Deepholm 26.20,69.80
step
label "thunderstone"
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Armory |q 26501/1 |goto Deepholm 27.30,70.10
click Thunder Stone##204348
collect 12 Thunder Stone##58886 |q 26502/1 |goto Deepholm 27.30,70.10
step
talk Gravel Longslab##43168
turnin Sealing the Way##26501 |goto Deepholm 24.50,62.40
accept Shatter Them!##26537 |goto Deepholm 24.50,62.40
step
talk Clay Mudaxle##43169
turnin Thunder Stones##26502 |goto Deepholm 24.80,62.20
accept Fixer Upper##26564 |goto Deepholm 24.80,62.20
step
talk Earthmender Deepvein##43319
accept Battlefront Triage##26591 |goto Deepholm 24.60,62.20
step
Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965
Patch up 10 Injured Earthen |q 26591/1 |goto Deepholm 23.90,60.30
Click Catapult Parts |tip They look kind of like big metal parts laying on the ground around this area.
collect 6 Catapult Part##58944 |q 26564/1 |goto Deepholm 23.90,60.30
kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto Deepholm 23.90,60.30
You can also look around 23.10,53.90 for more
step
talk Gravel Longslab##43168
turnin Shatter Them!##26537 |goto Deepholm 24.50,62.40
step
talk Earthmender Deepvein##43319
turnin Battlefront Triage##26591 |goto Deepholm 24.60,62.20
step
talk Clay Mudaxle##43169
turnin Fixer Upper##26564 |goto Deepholm 24.80,62.20
step
talk Gravel Longslab##43168
accept Troggzor the Earthinator##26625 |goto Deepholm 24.50,62.40
step
kill Troggzor the Earthinator##43456
collect The Earthinator's Cudgel##59144 |q 26625/1 |goto Deepholm 22.60,56.90
step
talk Gravel Longslab##43168
turnin Troggzor the Earthinator##26625 |goto Deepholm 24.50,62.40
step
talk Clay Mudaxle##43169
accept Rush Delivery##27126 |goto Deepholm 24.80,62.20
step
talk Peak Grindstone##45043
turnin Rush Delivery##27126 |goto Deepholm 20.70,61.60
accept Close Escort##26632 |goto Deepholm 20.70,61.60
step
talk Peak Grindstone##45043
Tell him you're ready to escort the catapult
|tip You need to be near the catapult or it will stop
Safely Escort the Earthen Catapult |q 26632/1 |goto Deepholm 20.70,61.60
step
talk Pyrium Lodestone##43897
turnin Close Escort##26632 |goto Deepholm 22.70,52.00
accept Keep Them off the Front##26755 |goto Deepholm 22.70,52.00
step
clicknpc Earthen Catapult##43509
Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
Bombard 30 Reinforcements |q 26755/1 |goto Deepholm 22.40,52.00
step
talk Pyrium Lodestone##43897
turnin Keep Them off the Front##26755 |goto Deepholm 22.70,52.00
accept Reactivate the Constructs##26762 |goto Deepholm 22.70,52.00
step
talk Flint Oremantle##43898
accept Mystic Masters##26770 |goto Deepholm 22.80,52.10
step
clicknpc Deactivated War Construct##43984
Reactivate 5 Deactivated War Constructs |q 26762/1 |goto Deepholm 22.60,47.60
kill 5 Needlerock Mystic##43995 |q 26770/1 |goto Deepholm 22.60,47.60
|tip Activate the golems before attacking mystics.
step
talk Flint Oremantle##43898
turnin Mystic Masters##26770 |goto Deepholm 22.80,52.10
step
talk Pyrium Lodestone##43897
turnin Reactivate the Constructs##26762 |goto Deepholm 22.70,52.00
accept Down Into the Chasm##26834 |goto Deepholm 22.70,52.00
step
talk Slate Quicksand##44143
turnin Down Into the Chasm##26834 |goto Deepholm 27.60,44.80
accept Sprout No More##26791 |goto Deepholm 27.60,44.80
accept Fungal Monstrosities##26792 |goto Deepholm 27.60,44.80
step
clicknpc War Guardian##44126
Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto Deepholm 27.60,44.70
Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto Deepholm 27.60,44.70
step
kill 5 Fungal Monstrosity##44035+ |q 26792/2 |goto Deepholm 26.80,41.80
clicknpc Giant Mushroom##44049+
Destroy 5 Giant Mushrooms |q 26791/2 |goto Deepholm 26.80,41.80
step
talk Slate Quicksand##44143
turnin Sprout No More##26791 |goto Deepholm 27.60,44.80
turnin Fungal Monstrosities##26792 |goto Deepholm 27.60,44.80
accept A Slight Problem##26835 |goto Deepholm 27.60,44.80
step
talk Pyrium Lodestone##43897
turnin A Slight Problem##26835 |goto Deepholm 22.70,52.00
accept Rescue the Stonefather... and Flint##26836 |goto Deepholm 22.70,52.00
step
kill Bouldergut##44151
Rescue Stonefather Oremantle |q 26836/1 |goto Deepholm 24.50,31.10
step
talk Pyrium Lodestone##43897
turnin Rescue the Stonefather... and Flint##26836 |goto Deepholm 22.70,52.00
accept The Hero Returns##27937 |goto Deepholm 22.70,52.00
step
talk Stonefather Oremantle##44204
turnin The Hero Returns##27937 |goto Deepholm 28.00,68.60
accept The Middle Fragment##27938 |goto Deepholm 28.00,68.60
step
click The Stonefather's Safe##206562
collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto Deepholm 28.00,68.70
step
talk Earthcaller Yevaa##42573
turnin The Middle Fragment##27938 |goto Deepholm 49.50,53.30
step
talk Maruut Stonebinder##43065
accept The Very Earth Beneath Our Feet##26326 |goto Deepholm 49.60,53.00
step
talk Earthcaller Torunscar##42730
turnin The Very Earth Beneath Our Feet##26326 |goto Deepholm 46.10,45.60
accept Crumbling Defenses##26312 |goto Deepholm 46.10,45.60
accept On Even Ground##26314 |goto Deepholm 46.10,45.60
step
talk Earthmender Norsala##42731
accept Core of Our Troubles##26313 |goto Deepholm 46.20,45.70
stickystart "irestonecore"
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Stormcaller Mylra |q 26312/2 |goto Deepholm 44.30,43.70
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Tawn Winterbluff |q 26312/1 |goto Deepholm 44.50,41.30
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Hargoth Dimblaze |q 26312/3 |goto Deepholm 47.60,42.80
step
label "irestonecore"
kill Irestone Rumbler##42780+
collect 6 Irestone Core##58168 |q 26313/1 |goto Deepholm 46.20,42.20
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Bring down 3 Servants of Therazane |q 26314/1 |goto Deepholm 46.20,42.20
step
talk Earthmender Norsala##42731
turnin Core of Our Troubles##26313 |goto Deepholm 46.20,45.70
step
talk Earthcaller Torunscar##42730
turnin Crumbling Defenses##26312 |goto Deepholm 46.10,45.60
turnin On Even Ground##26314 |goto Deepholm 46.10,45.60
step
talk Earthmender Norsala##42731
accept Imposing Confrontation##26315 |goto Deepholm 46.20,45.70
step
Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
|tip He's a huge rock giant that walks around this area.
Seek Peace with Boden the Imposing |q 26315/1 |goto Deepholm 49.20,40.10
step
talk Earthmender Norsala##42731
turnin Imposing Confrontation##26315 |goto Deepholm 46.20,45.70
accept Rocky Relations##26328 |goto Deepholm 46.20,45.70
step
talk Diamant the Patient##42467
turnin Rocky Relations##26328 |goto Deepholm 56.50,42.70
accept Hatred Runs Deep##26376 |goto Deepholm 56.50,42.70
accept Unsolid Ground##26377 |goto Deepholm 56.50,42.70
step
talk Quartz Stonetender##42899
accept Loose Stones##26375 |goto Deepholm 56.50,41.00
stickystart "quartzcluster"
stickystart "lorthgate"
step
kill Dragul Giantbutcher##42921 |q 26376/1 |goto Deepholm 60.20,39.40
step
label "quartzcluster"
click Jade Crystal Cluster##204253
collect 6 Jade Crystal Cluster##58500 |q 26377 |goto Deepholm 59.50,41.50
Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254
|tip They look like small rock giants around this area.
Release 6 Quartz Rocklings |q 26375/1 |goto Deepholm 59.50,41.50
step
Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
collect Jade Crystal Composite##58783 |q 26377
step
Use your Jade Crystal Composite |use Jade Crystal Composite##58783
Lure an Agitated Tunneler |q 26377/1 |goto Deepholm 59.60,41.40
step
label "lorthgate"
kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto Deepholm 59.30,40.60
step
talk Quartz Stonetender##42899
turnin Loose Stones##26375 |goto Deepholm 56.50,41.00
step
talk Diamant the Patient##42467
turnin Hatred Runs Deep##26376 |goto Deepholm 56.50,42.70
turnin Unsolid Ground##26377 |goto Deepholm 56.50,42.70
accept Violent Gale##26426 |goto Deepholm 56.50,42.70
step
Get next to Felsen the Enduring
Find Felsen the Enduring |q 26426/1 |goto Deepholm 51.70,31.60
step
Fly to the mouth of this cave
Find the entrance to the Crumbling Depths |q 26426/2 |goto Deepholm 58.40,25.70
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Violent Gale##26426
accept Depth of the Depths##26869
step
Follow the path |goto Deepholm 64.50,21.70 < 5 |walk
Follow the path |goto Deepholm 65.30,18.40 < 5 |walk
click Gigantic Painite Cluster##204959
turnin Depth of the Depths##26869 |goto Deepholm 66.40,20.60
accept A Rock Amongst Many##26871 |goto Deepholm 66.40,20.60
step
Follow the path to this spot, then jump down |goto Deepholm 64.30,23.50 < 5 |walk
Leave the cave |goto Deepholm 58.30,25.50 < 5 |walk
talk Diamant the Patient##42467
turnin A Rock Amongst Many##26871 |goto Deepholm 56.50,42.70
accept Entrenched##26436 |goto Deepholm 56.50,42.70
step
talk Kor the Immovable##42469
turnin Entrenched##26436 |goto Deepholm 34.30,34.30
accept Intervention##26438 |goto Deepholm 34.30,34.30
accept Making Things Crystal Clear##26437 |goto Deepholm 34.30,34.30
step
talk Berracite##43344
accept Putting the Pieces Together##26439 |goto Deepholm 34.10,35.20
step
kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
kill 12 Jaspertip flayers |q 26438/1 |goto Deepholm 30.50,46.80
click Chalky Crystal Formation##204297
collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto Deepholm 30.50,46.80
clicknpc Dormant Stonebound Elemental##43115
Reform 6 Stonebound Elementals |q 26439/1 |goto Deepholm 30.50,46.80
step
talk Kor the Immovable##42469
turnin Intervention##26438 |goto Deepholm 34.30,34.30
turnin Making Things Crystal Clear##26437 |goto Deepholm 34.30,34.30
step
talk Berracite##43344
turnin Putting the Pieces Together##26439 |goto Deepholm 34.10,35.20
step
Next to you:
talk Pebble##43116
accept Clingy##26440
step
Get next to the huge green crystals
Bring Pebble to the crystal formation |q 26440/1 |goto Deepholm 30.10,47.70
step
Next to you:
talk Pebble##43116
turnin Clingy##26440
accept So Big, So Round...##26441
step
talk Kor the Immovable##42469
turnin So Big, So Round...##26441 |goto Deepholm 34.30,34.30
accept Petrified Delicacies##26507 |goto Deepholm 34.30,34.30
accept Rock Bottom##26575 |goto Deepholm 34.30,34.30
stickystart "petrifstone"
step
kill Gorgonite##43339 |q 26575/1 |goto Deepholm 47.60,26.80
step
label "petrifstone"
clicknpc Petrified Stone Bat##43182+
collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto Deepholm 47.50,26.80
step
Next to you:
talk Pebble##43116
turnin Petrified Delicacies##26507
step
talk Kor the Immovable##42469
turnin Rock Bottom##26575 |goto Deepholm 34.30,34.30
accept Steady Hand##26576 |goto Deepholm 34.30,34.30
accept Rocky Upheaval##26577 |goto Deepholm 34.30,34.30
step
talk Terrath the Steady##42466
turnin Steady Hand##26576 |goto Deepholm 39.90,19.40
accept Don't. Stop. Moving.##26656 |goto Deepholm 39.90,19.40
step
talk Terrath the Steady##42466
Tell him you are ready to escort a group of elementals across the open.
Speak to Terrath the Steady |q 26656/1 |goto Deepholm 39.90,19.40
step
Go to this spot
Escort 5 Opalescent Guardians to safety |q 26656/2 |goto Deepholm 51.10,14.70
|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
step
talk Terrath the Steady##42466
turnin Don't. Stop. Moving.##26656 |goto Deepholm 39.90,19.40
accept Hard Falls##26657 |goto Deepholm 39.90,19.40
accept Fragile Values##26658 |goto Deepholm 39.90,19.40
step
kill Stone Trogg Beast Tamer##43598
|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
collect Stonework Mallet##59323 |q 26658/1 |goto Deepholm 35.40,22.50
step
label "stonedrake"
kill 6 Stone Drake##42522 |q 26657/1 |goto Deepholm 36.50,18.80
|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
talk Terrath the Steady##42466
turnin Hard Falls##26657 |goto Deepholm 40.00,19.40
turnin Fragile Values##26658 |goto Deepholm 40.00,19.40
accept Resonating Blow##26659 |goto Deepholm 40.00,19.40
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
Strike the Pale Resonating Crystal |q 26659/1 |goto Deepholm 32.70,24.30
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.
|tip When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.
|tip Repeat this until she surrenders.
Defeat Aeosera |q 26659/2 |goto Deepholm 32.70,24.30
step
talk Terrath the Steady##42466
turnin Resonating Blow##26659 |goto Deepholm 33.10,24.10
If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.00,19.40]
step
talk Gorsik the Tumultuous##42472
turnin Rocky Upheaval##26577 |goto Deepholm 72.20,54.00
accept Doomshrooms##26578 |goto Deepholm 72.20,54.00
accept Gone Soft##26579 |goto Deepholm 72.20,54.00
accept Familiar Intruders##26580 |goto Deepholm 72.20,54.00
step
talk Windspeaker Lorvarius##43395
turnin Familiar Intruders##26580 |goto Deepholm 71.80,47.60
accept A Head Full of Wind##26581 |goto Deepholm 71.80,47.60
step
kill 8 Fungal Behemoth##42475+ |q 26579/1 |goto Deepholm 73.60,40.80
kill Doomshroom##43388+
Destroy 10 Doomshrooms |q 26578/1 |goto Deepholm 73.60,40.80
Gather a sample of the red mist |q 26581/1 |goto Deepholm 73.60,40.80
|tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
You will be able to find more Fungal Behemoths and Doomshrooms around [76.60,44.40]
step
talk Windspeaker Lorvarius##43395
turnin A Head Full of Wind##26581 |goto Deepholm 71.80,47.60
accept Unnatural Causes##26582 |goto Deepholm 71.80,47.60
step
talk Gorsik the Tumultuous##42472
turnin Doomshrooms##26578 |goto Deepholm 72.20,54.00
turnin Gone Soft##26579 |goto Deepholm 72.20,54.00
turnin Unnatural Causes##26582 |goto Deepholm 72.20,54.00
accept Shaken and Stirred##26584 |goto Deepholm 72.20,54.00
accept Corruption Destruction##26585 |goto Deepholm 72.20,54.00
step
talk Ruberick##43442
accept Wrath of the Fungalmancer##26583 |goto Deepholm 68.50,26.40
step
Enter the cave |goto Deepholm 68.60,29.10 < 5 |walk
talk Earthmender Norsala##43503
Tell her you're ready when she is |q 26583/1 |goto Deepholm 69.80,31.90
kill Fungalmancer Glop##43372 |q 26583/2 |goto Deepholm 69.80,31.90
|tip Follow him each time he runs away.
|tip Avoid the mushrooms as you walk, they will give you a debuff.
|tip While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
step
Follow the path up |goto Deepholm 70.20,33.80 < 5 |walk
Leave the cave |goto Deepholm 68.60,29.10 < 5 |walk
talk Ruberick##43442
turnin Wrath of the Fungalmancer##26583 |goto Deepholm 68.50,26.30
step
kill 8 Verlok Pillartumbler##43513+ |q 26584/1 |goto Deepholm 69.40,24.80
click Verlok Miracle-Grow##204410
collect 8 Verlok Miracle-Grow##59123 |q 26585/1 |goto Deepholm 69.40,24.80
step
talk Gorsik the Tumultuous##42472
turnin Shaken and Stirred##26584 |goto Deepholm 72.20,54.00
turnin Corruption Destruction##26585 |goto Deepholm 72.20,54.00
accept At the Stonemother's Call##26750 |goto Deepholm 72.20,54.00
step
talk Therazane##42465
turnin At the Stonemother's Call##26750 |goto Deepholm 56.30,12.20
accept Audience with the Stonemother##26752 |goto Deepholm 56.30,12.20
step
Watch the dialogue
Attend the Stonemother's Audience |q 26752/1
step
talk Earthcaller Torunscar##43809
turnin Audience with the Stonemother##26752 |goto Deepholm 56.10,13.50
accept Rallying the Earthen Ring##26827 |goto Deepholm 56.10,13.50
step
talk Explorer Mowi##44799
accept The Twilight Plot##27004 |goto Deepholm 47.30,51.40
step
talk Prospector Brewer##44802
accept Fly Over##27006 |goto Deepholm 47.30,51.40
step
Go to this spot next to the big white portal
Investigate the Master's Gate |q 27006/1 |goto Deepholm 39.00,74.20
step
kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
collect Masters' Gate Plans##60745 |q 27004/1 |goto Deepholm 40.10,72.20
step
talk Explorer Mowi##44799
turnin The Twilight Plot##27004 |goto Deepholm 47.30,51.40
step
talk Prospector Brewer##44802
turnin Fly Over##27006 |goto Deepholm 47.30,51.40
accept Fight Fire and Water and Air with...##27042 |goto Deepholm 47.30,51.40
step
talk Explorer Mowi##44799
accept Decryption Made Easy##27040 |goto Deepholm 47.30,51.40
stickystart "decryptplans"
step
kill Bound Water Elemental##44886
Acquire the Water Ward |q 27042/2 |goto Deepholm 40.80,66.30
step
kill Bound Fire Elemental##44887
Acquire the Fire Ward |q 27042/1 |goto Deepholm 36.00,67.40
step
kill Bound Air Elemental##44885
Acquire the Air Ward |q 27042/3 |goto Deepholm 40.50,72.40
step
label "decryptplans"
click One-Time Decryption Engine##205145
Decrypt 6 Plans |q 27040/1 |goto Deepholm 40.20,67.50
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Decryption Made Easy##27040
accept The Wrong Sequence##27058
step
click the Waygate Controller##205161
Destroy the Waygate |q 27058/1 |goto Deepholm 39.10,73.90
step
kill Haethen Kaul##44835 |q 27042/4 |goto Deepholm 39.90,62.20
|tip He's up on a huge floating rock.
step
talk Explorer Mowi##44799
turnin The Wrong Sequence##27058 |goto Deepholm 47.30,51.40
accept That's No Pyramid!##28292 |goto Deepholm 47.30,51.40
step
talk Prospector Brewer##44802
turnin Fight Fire and Water and Air with...##27042 |goto Deepholm 47.30,51.40
step
Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
[48.50,50.10]
[47.40,50.90]
[48.10,49.90]
Tell them you are joining an assault on Lorthuna's Gate and they are needed.
Rally 5 Earthen Ring |q 26827/1 |goto Deepholm 48.00,53.70
step
talk Maruut Stonebinder##43065
turnin Rallying the Earthen Ring##26827 |goto Deepholm 49.60,53.00
accept Our Part of the Bargain##26828 |goto Deepholm 49.60,53.00
step
talk Therazane##44025
turnin Our Part of the Bargain##26828 |goto Deepholm 63.30,25.00
accept The Stone March##26829 |goto Deepholm 63.30,25.00
accept Therazane's Mercy##26832 |goto Deepholm 63.30,25.00
step
talk Boden the Imposing##44080
accept The Twilight Flight##26831 |goto Deepholm 62.60,26.90
stickystart "twiprecip"
step
kill High Priestess Lorthuna##42914
|tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
Defeat High Priestess Lorthuna |q 26832/2 |goto Deepholm 62.40,31.80
step
kill Boldrich Stonerender##42923
Defeat Boldrich Stonerender |q 26832/1 |goto Deepholm 58.90,32.90
step
kill Zoltrik Drakebane##42918
|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
Defeat Zoltrik Drakebane |q 26831/1 |goto Deepholm 63.10,38.10
step
talk Terrath the Steady##42614
turnin The Twilight Flight##26831 |goto Deepholm 64.10,36.90
step
label "twiprecip"
kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
kill 15 Twilight Precipice Cultists |q 26829/1 |goto Deepholm 60.30,33.20
step
talk Therazane##44025
turnin The Stone March##26829 |goto Deepholm 63.30,25.00
turnin Therazane's Mercy##26832 |goto Deepholm 63.30,25.00
accept Word In Stone##26833 |goto Deepholm 63.30,25.00
step
talk Maruut Stonebinder##43818
turnin Word In Stone##26833 |goto Deepholm 49.60,53.00
accept Undying Twilight##26875 |goto Deepholm 49.60,53.00
step
kill 12 Twilight Invaders |q 26875/1 |goto Deepholm 50.70,49.60
kill Desecrated Earthrager##44683 |q 26875/2 |goto Deepholm 50.70,49.60
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Undying Twilight##26875
accept The Binding##26971
step
kill High Priestess Lorthuna##43837 |q 26971/1 |goto Deepholm 49.60,52.90
step
talk Earthcaller Torunscar##43835
turnin The Binding##26971 |goto Deepholm 49.60,52.90
step
talk Therazane##43792
accept The Stone Throne##26709 |goto Deepholm 49.80,53.40
step
talk Therazane##42465
turnin The Stone Throne##26709 |goto Deepholm 56.40,12.10
step
label "daily"
talk Pyrite Stonetender##44945
accept Lost In The Deeps##26710 |goto Deepholm 55.40,14.20
|tip This quest can be offered at random and may not be offered everyday.
step
Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
Bring Pebble to safety |q 26710/1 |goto Deepholm 58.30,25.60
step
talk Pyrite Stonetender##44945
turnin Lost In The Deeps##26710 |goto Deepholm 55.40,14.20
Click here to restart the daily. |next "daily" |confirm always
Once you've done the daily 10 times, click here. |next "buy" |confirm always
step
label "buy"
Check your _mailbox_ for your _prize_!
collect 1 Pebble##60869
step
learnpet Pebble##265 |use Pebble##60869
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Searing Scorchling",{
patch='24000',
source='Vendor',
description="This guide will walk you through obtaining the Elemental pet: Searing Scorchling.",
pet=172,
mopready=true,
},[[
step
This _pet_ requires you to have done the _Firelands Pre-quests_ and dailies to enter the _Molten Front_
Routing to proper section |next "prequests" |only if not completedq(25611)
Routing to proper section |next "buy" |only if completedq(25611)
step
Go to the _Molten Front_ |goto Molten Front |noway |c
earn 30 Mark of the World Tree##416
step
label "prequests"
#include "A_Firelands_PreQuests"
step
label "buy"
talk Zen'Vorka##52822
buy 1 Zen'Vorka's Cache##71631 |goto Molten Front 47.00,90.80
step
use Zen'Vorka's Cache##71631
collect 1 Scorched Stone##34955
|tip If you don't get this the first time you will have to earn 30 more Marks of the World Tree to try again
step
learnpet Searing Scorchling##172 |use Scorched Stone##34955
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Teldrassil Sproutling",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Elemental pet: Teldrassil Sproutling.",
pet=204,
mopready=true,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Night Elf.
confirm always
step
label "pet"
talk Jaelyne Evensong##33592
accept Valiant Of Darnassus##13706 |goto Icecrown,76.30,19.00
turnin Valiant Of Darnassus##13706 |goto Icecrown,76.30,19.00
accept The Valiant's Charge##13717 |goto Icecrown,76.30,19.00
step
talk Jaelyne Evensong##33592
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
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
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
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
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
|tip Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto Icecrown 75.30,18.50
step
talk Jaelyne Evensong##33592
|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
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
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.
|tip Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
|tip Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13725/1 |goto Icecrown 68.60,21.00
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13725 |goto Icecrown 76.30,19.10
step
Become a Champion of Darnassus |achieve 2777
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Rook Hawkfist##33653
buy 1 Teldrassil Sproutling##44965 |goto Icecrown,76.20,19.20
step
learnpet Teldrassil Sproutling##204 |use Teldrassil Sproutling##44965
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Tiny Snowman",{
patch='111100',
source='WorldEvent',
description="This guide will walk you through obtaining the Elemental pet: Tiny Snowman.",
pet=117,
mopready=true,
},[[
step
These pets are only availiable during the _Winter Veil_ Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Snowman Kit##21309
step
learnpet Tiny Snowman##117 |use Snowman Kit##21309
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Withers",{
patch='40100',
source='Quest',
description="This guide will walk you through obtaining the Elemental pet: Withers.",
pet=220,
mopready=true,
},[[
step
talk Dentaria Silverglade##32973
turnin Hero's Call: Darkshore!##28490 |goto Darkshore,51.80,18.00 |only Dwarf,Gnome,Human
turnin Breaking Waves of Change##26383 |goto Darkshore,51.80,18.00 |only NightElf,Draenei
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
accept The Boon of the Seas##13520 |goto Darkshore 51.80,18.10
step
talk Wizbang Cranktoggle##32977
accept Buzzbox 413##13521 |goto Darkshore 51.10,19.70
stickystart "corrupttide"
step
click Encrusted Clam##194107
collect 16 Encrusted Clam Muscle##44864 |q 13520/1 |goto Darkshore 52.40,18.80
step
label "corrupttide"
kill Corrupted Tide Crawler##32935+
collect 4 Corrupted Tide Crawler Flesh##44863 |q 13521/1 |goto Darkshore 53.40,19.50
step
click Buzzbox 413##194105
turnin Buzzbox 413##13521 |goto Darkshore 53.30,19.60
accept No Accounting for Taste##13527 |goto Darkshore 53.30,19.60
step
clicknpc Decomposing Thistle Bear##32975
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
click Buzzbox 723##194122
turnin Buzzbox 723##13528 |goto Darkshore 54.20,29.30
accept A Cure In The Dark##13554 |goto Darkshore 54.20,29.30
step
talk Tharnariun Treetender##32978
accept The Corruption's Source##13529 |goto Darkshore 51.20,19.60
step
Follow the path up |goto Darkshore 56.20,27.20 < 5 |only if walking
Enter the cave |goto Darkshore 56.90,31.30 < 5 |walk
Go to the lower level of the cave
kill Zenn Foulhoof##33020 |q 13529/1 |goto Darkshore 58.20,33.00
collect Corruptor's Master Key##44927 |n
Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927
accept Bearer of Good Fortune##13557
step
click Secure Bear Cage##194124
Free 8 animals |q 13557/1 |goto Darkshore 57.40,33.80
click Disgusting Workbench##194714
accept A Troubling Prescription##13831
step
kill Vile Corruptor##33022+, Vile Grell##33021+
collect 6 Foul Ichor##44966 |q 13554/1 |goto Darkshore 57.00,33.20
kill 8 Vile Grell##33021+ |q 13529/2 |goto Darkshore 57.00,33.20
click Secure Bear Cage##194124
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
stickystart "cursedhigh"
step
click The Final Flame of Bashal'Aran##194179
Extinguish the Final Flame of Bashal'Aran |q 13562/1 |goto Darkshore 45.90,34.20
step
kill Anaya Dawnrunner##33181 |q 13563/1 |goto Darkshore 48.50,36.60
collect Anaya's Pendant##5382 |q 13563/2 |goto Darkshore 48.50,36.60
step
label "cursedhigh"
kill 6 Cursed Highborne##33179 |q 13561/1 |goto Darkshore 48.20,36.40
kill 6 Writhing Highborne##33180 |q 13561/2 |goto Darkshore 48.20,36.40
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
stickystart "darkscout"
step
clicknpc Moonstalker##33127+
|tip Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
collect 3 Moonstalker Whisker##44969 |q 13566/1 |goto Darkshore 42.40,39.80
step
clicknpc Mottled Doe##33313
collect 3 Tuft of Mottled Doe Hair##45027 |q 13566/2 |goto Darkshore 44.10,40.80
step
clicknpc Hungry Thistle Bear##33978+
|tip Only click them when they are neutral, or they will attack you.
collect 3 Thistle Bear Fur##45885 |q 13566/3 |goto Darkshore 46.60,38.90
step
kill Lady Janira##33207 |q 13565/1 |goto Darkshore 48.60,40.40
step
label "darkscout"
kill Darkscale Scout##33206+
Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
Call 6 Withered Ents |q 13565/2 |goto Darkshore 47.70,39.70
click Fuming Toadstool##194209
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
Click the Grovekeeper's Incense##8683
Entice Visions of the Great Animal Spirits |havebuff Grovekeeper's Trance##64198 |q 13569 |goto Darkshore 42.90,39.00
step
talk Great Stag Spirit##33133
|tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.
|tip We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.
|tip If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.
|tip You can only choose one, so pick whichever one you'd like.
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
click Decoy Bot Control Console##195006
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
click Highborne Relic##194090
collect 8 Highborne Relic##5360 |q 13505/1 |goto Darkshore 60.50,21.30
kill Shatterspear Overseer##32863
collect Overseer's Orders##44979 |n
Click the Overseer's Orders in your bags |use Overseer's Orders##44979
accept Reason to Worry##13506
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
kill 6 Horde Enforcer##32859+ |q 13507/1 |goto Darkshore 61.60,11.60
kill 6 Shatterspear Mystic##34248+ |q 13507/2 |goto Darkshore 61.60,11.60
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
click Shatterspear Cage##206830
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
|tip She's floating above the water in this pit in a blue smokey cyclone.
|tip Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.
|tip Keep alternating between throwing your spear at her and hiding.
kill Sheya Stormweaver##32869 |q 13512/2 |goto Darkshore 61.20,20.40
step
kill Teegan Holloway##34033 |q 13844/1 |goto Darkshore 58.20,23.90
step
click Charred Book##194787
collect Narassin's Tome##45944 |q 13844/2 |goto Darkshore 58.30,24.00
step
Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995
|tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.
|tip Keep using your Dryad spear on him and moving to avoid his spell.
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
Follow the path up |goto Darkshore 63.60,20.00 < 5 |walk
Enter the tunnel |goto Darkshore 67.50,18.70 < 5 |walk
talk Kerlonian Evershade##33176
accept The Ancients' Ire##13514 |goto Darkshore 69.10,19.30
step
clicknpc the Vengeful Protector##32851 |invehicle |q 13514 |goto Darkshore 69.50,18.80
|tip It looks like a big purple tree ent.
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
accept Disturbing Connections##13591
step
talk Huntress Sandrya Moonfall##33178
turnin Ending the Threat##13515 |goto Darkshore 72.40,18.80
step
talk Ranger Glynda Nal'Shea##32971
turnin Disturbing Connections##13591 |goto Darkshore 50.70,19.70
step
talk Cerellean Whiteclaw##32959
accept Remembrance of Auberdine##13570 |goto Darkshore 50.10,19.50
collect 1 Withers##46325 |goto Darkshore 50.10,19.50
step
learnpet Withers##220 |use Withers##46325
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Alliance Balloon",{
patch='42000',
source='Quest',
description="This battle pet is rewarded to you after completing the quest Blown Away.",
keywords={"Flying","Blown","Away"},
pet=331,
mopready=true,
},[[
step
talk Vin##54117
accept Blown Away##29412 |goto Stormwind City/0 58.91,52.73
step
click Windswept Balloon##209242+
|tip They look like blue balloons floating in the air around this area.
|tip You can find them all around Stormwind.
collect Windswept Balloon##71034 |q 29412/1 |goto Stormwind City/0 61.79,54.53
step
talk Vin##54117
turnin Blown Away##29412 |goto Stormwind City/0 58.90,52.72
step
collect Alliance Balloon##72042 |n
use the Alliance Balloon##72042
|tip It is in your inventory.
Learn the "Alliance Balloon" Battle Pet |learnpet Alliance Balloon##331
step
_Congratulations!_
You Collected the "Alliance Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blue Mini Jouster",{
patch='40300',
source='Quest',
description="This battle pet can be chosen as a reward when you complete the achievement Beware of the 'Unbeatable?' Pterodactyl or complete the achievement The 'Unbeatable?' Pterodactyl: BEATEN.",
keywords={"Flying","Beware","The","Unbeatable","Pterodactyl","Beaten"},
pet=259,
mopready=true,
},[[
step
Earn the Beware of the 'Unbeatable?' Pterodactyl Achievement |complete achieved(4959)
|tip You can use our achievement guide to help you earn this.
step
collect Blue Mini Jouster##65661 |n
|tip This is one of two rewards you can choose from after completing the achievement "Beware of the 'Unbeatable?' Pterodactyl".
|tip The pet you did not choose can be earned as a reward by getting the achievement "The 'Unbeatable?' Pterodacyl: BEATEN".
use the Blue Mini Jouster##65661
|tip It is in your inventory.
Learn the "Blue Mini Jouster" Battle Pet |learnpet Blue Mini Jouster##259
step
_Congratulations!_
You Collected the "Blue Mini Jouster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blue Moth",{
patch='20100',
source='Vendor',
description="This battle pet is sold by a vendor in The Exodar.",
keywords={"Flying","The","Exodar"},
pet=138,
mopready=true,
},[[
step
talk Sixx##21019
buy Blue Moth Egg##29901 |goto The Exodar/0 30.11,33.81
step
collect Blue Moth Egg##29901 |n
use the Blue Moth Egg##29901
|tip It is in your inventory.
Learn the "Blue Moth" Battle Pet |learnpet Blue Moth##138
step
_Congratulations!_
You Collected the "Blue Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Darkmoon Balloon",{
patch='43000',
source='Vendor',
description="This battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Flying","Darkmoon","Faire"},
pet=336,
mopready=true,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Balloon##73762 |goto Darkmoon Island/0 48.25,69.52
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Darkmoon Balloon##73762 |n
use the Darkmoon Balloon##73762
|tip It is in your inventory.
Learn the "Darkmoon Balloon" Battle Pet |learnpet Darkmoon Balloon##336
step
_Congratulations!_
You Collected the "Darkmoon Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Gilnean Raven",{
patch='50100',
source='Vendor',
description="This battle pet is obtainable through a battle pet trainer in Darkshore.",
keywords={"Flying","Auction","House"},
pet=630,
mopready=true,
},[[
step
talk Will Larsons##63083
buy Gilnean Raven##63098 |n
|tip This pet can only be obtained with a Worgen character through a battle pet trainer in Darkshore.
|tip If you do not have a Worgen character you can purchase it from the Auction House.
|tip It will be in your mailbox after you purchase it from the Auction House.
Learn the "Gilnean Raven" Battle Pet |learnpet Gilnean Raven##630 |goto Darkshore/0 50.13,20.17
step
_Congratulations!_
You Collected the "Gilnean Raven" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Gold Mini Jouster",{
patch='40300',
source='Quest',
description="This battle pet can be chosen as a reward when you complete the achievement Beware of the 'Unbeatable?' Pterodactyl or complete the achievement The 'Unbeatable?' Pterodactyl: BEATEN.",
keywords={"Flying","Beware","The","Unbeatable","Pterodactyl","Beaten"},
pet=260,
mopready=true,
},[[
step
Earn the Beware of the 'Unbeatable?' Pterodactyl Achievement |complete achieved(4959)
|tip You can use our achievement guide to help you earn this.
step
collect Gold Mini Jouster##65662 |n
|tip This is one of two rewards you can choose from after completing the achievement "Beware of the 'Unbeatable?' Pterodactyl".
|tip The pet you did not choose can be earned as a reward by getting the achievement "The 'Unbeatable?' Pterodacyl: BEATEN".
use the Gold Mini Jouster##65662
|tip It is in your inventory.
Learn the "Gold Mini Jouster" Battle Pet |learnpet Gold Mini Jouster##260
step
_Congratulations!_
You Collected the "Gold Mini Jouster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Plump Turkey",{
patch='32200',
source='WorldEvent',
description="This battle pet is given as a reward when you complete the Pilgrim achievement during the Pilgrim's Bounty world event.",
keywords={"Flying","Pilgrim's","Bounty"},
pet=201,
mopready=true,
},[[
step
collect Turkey Cage##44810 |n
|tip This is a reward for completing the achievement "Pilgrim" during the Pilgrim's Bounty world event.
|tip You can use our "Pilgrim" achievement guide to help you complete the achievement.
use the Turkey Cage##44810
|tip It will be in your mailbox after you complete the achievement.
Learn the "Plump Turkey" Battle Pet |learnpet Plump Turkey##201
step
_Congratulations!_
You Collected the "Plump Turkey" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Pterrordax Hatchling",{
patch='41000',
source='Profession',
description="This battle pet is obtained by finding and solving the Pterrordax Hatchling rare Archaeology Fossil artifact.",
keywords={"Flying","Archaeology"},
pet=309,
mopready=true,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Pterrordax Hatchling##69821 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Pterrordax Hatchling artifact.
|tip When you discover the Pterrordax Hatchling artifact it will show up in the fossils tab in your archaeology book.
|tip This is a rare artifact that takes 120 Fossil Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Pterrordax Hatchling##69821
|tip It is in your inventory.
Learn the "Pterrordax Hatchling" Battle Pet |learnpet Pterrordax Hatchling##309
step
_Congratulations!_
You Collected the "Pterrordax Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Rustberg Gull",{
patch='40100',
source='Vendor',
description="This battle pet can be purchased from a vendor in Tol Barad Peninsula.",
keywords={"Flying","Tol","Barad","Peninsula"},
pet=271,
mopready=true,
},[[
step
talk Quartermaster Brazie##47328
buy Rustberg Gull##64996 |goto Tol Barad Peninsula/0 72.34,63.17
|tip This pet costs 50 Tol Barad Commendation Badges.
|tip You must have reputation level Honor with Baradin's Wardens in order to purchase this from the vendor.
|tip You must complete PVP dailies to earn the badges and increase your rep.
|tip You can use our Tol Barad Dailies guide to help you earn badges and increase your rep.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
step
collect Rustberg Gull##64996 |n
use the Rustberg Gull##64996
|tip It is in your inventory.
Learn the "Rustberg Gull" Battle Pet |learnpet Rustberg Gull##271
step
_Congratulations!_
You Collected the "Rustberg Gull" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Tirisfal Batling",{
patch='31100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Flying","Icecrown"},
pet=206,
mopready=true,
},[[
step
collect Tirisfal Batling##44971 |n
|tip This pet can only be purchased from a vendor in Icecrown with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Tirisfal Batling##44971
|tip It is in your inventory.
Learn the "Tirisfal Batling" Battle Pet |learnpet Tirisfal Batling##44971
step
_Congratulations!_
You Collected the "Tirisfal Batling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Westfall Chicken",{
patch='30200',
source='Quest',
description="This battle pet is rewarded to you after you complete the quest CLUCK!.",
keywords={"Flying","CLUCK"},
pet=84,
mopready=true,
},[[
step
step
talk William Saldean##33996
buy Special Chicken Feed##11109 |goto Westfall/0 56.04,31.23
step
click Chicken##620
|tip Spam the "Chicken" emote on a chicken walking around this area.
|tip The chicken will eventually give you a quizzical look and offer you a quest.
|tip It may take a while to get the quest.
accept CLUCK!##3861
turnin CLUCK!##3861
step
click Farm Chicken Egg##161513
|tip It looks like a brown egg underneath the chicken you are speaking to.
collect Chicken Egg##11110
step
use the Chicken Egg##11110
|tip It is in your inventory.
Learn the "Westfall Chicken" Battle Pet |learnpet Westfall Chicken##84
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\White Moth",{
patch='20100',
source='Vendor',
description="This battle pet is sold by a vendor in The Exodar.",
keywords={"Flying","The","Exodar"},
pet=141,
mopready=true,
},[[
step
talk Sixx##21019
buy White Moth Egg##29904 |goto The Exodar/0 30.11,33.81
step
collect White Moth Egg##29904 |n
use the White Moth Egg##29904
|tip It is in your inventory.
Learn the "White Moth" Battle Pet |learnpet White Moth##141
step
_Congratulations!_
You Collected the "White Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yellow Moth",{
patch='20100',
source='Vendor',
description="This battle pet is sold by a vendor in The Exodar.",
keywords={"Flying","The","Exodar"},
pet=140,
mopready=true,
},[[
step
talk Sixx##21019
buy Yellow Moth Egg##29903 |goto The Exodar/0 30.11,33.81
step
collect Yellow Moth Egg##29903 |n
|tip You can only purchase this pet from a vendor in Kalimdor with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Yellow Moth Egg##29903
|tip It is in your inventory.
Learn the "Yellow Moth" Battle Pet |learnpet Yellow Moth##140
step
_Congratulations!_
You Collected the "Yellow Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Alliance Balloon",{
patch='42000',
source='Quest',
description="This guide will walk you through obtaining the Flying pet: Alliance Balloon.",
pet=331,
mopready=true,
},[[
step
talk Vin##54117
accept Blown Away##29412 |goto Stormwind City,58.80,52.80
step
Click on the _Windswept Balloon_
|tip They look like blue balloons all over Stormwind City.
collect 5 Windswept Balloon##71034 |q 29412/1 |goto Stormwind City 61.80,51.50
step
talk Vin##54117
accept Blown Away##29412 |goto Stormwind City,58.80,52.80
collect 1 Alliance Balloon##72042 |goto Stormwind City,58.80,52.80
step
learnpet Alliance Balloon##331 |use Alliance Balloon##72042
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blue Mini Jouster",{
patch='40300',
source='Quest',
description="This guide will walk you through obtaining the Flying pet: Blue Mini Jouster.",
pet=259,
mopready=true,
},[[
step
Going to _Egg Wave_ |only if not completedq(25560) |next "eggwave"
Going to _The 'Unbeatable?' Pterodactyl: BEATEN._ |next "beaten" |only if completedq(25560)
step
label "eggwave"
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City,62.90,71.60
step
talk Cenarion Emissary Jademoon##15187 |goto Stormwind City 82.60,28.20
Ask her to send you to Moonglade
Teleport to Moonglade |goto Moonglade |noway |c
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade,45.50,44.90
accept As Hyjal Burns##25316 |goto Moonglade,45.50,44.90
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal,63.10,24.10
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto Mount Hyjal 62.00,24.90
accept Protect the World Tree##25317 |goto Mount Hyjal 62.00,24.90
step
talk Fayran Elthas##41861
fpath Nordrassil |goto Mount Hyjal 62.10,21.60
step
talk Fayran Elthas##41861
fpath Nordrassil |goto Mount Hyjal 62.10,21.60
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto Mount Hyjal 64.00,22.70
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto Mount Hyjal 64.10,22.50
step
kill 8 Scalding Rock Elemental##40229+ |q 25460/1 |goto Mount Hyjal 67.10,22.60
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
|tip They look like small blue flying dragons around this area.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926+ |q 25370/1 |goto Mount Hyjal 67.10,22.60
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto Mount Hyjal 64.10,22.50
accept Flames from Above##25574 |goto Mount Hyjal 64.10,22.50
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto Mount Hyjal 64.00,22.70
step
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto Mount Hyjal 55.80,15.40
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto Mount Hyjal 64.10,22.50
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto Mount Hyjal 47.70,35.50
accept War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.70,35.50
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto Mount Hyjal 47.60,35.50
stickystart "twiflame"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto Mount Hyjal 43.30,27.40
step
label "twiflame"
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto Mount Hyjal 47.20,25.60
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto Mount Hyjal 47.20,25.60
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.70,35.50
turnin The Flameseer's Staff##25472 |goto Mount Hyjal 47.70,35.50
accept Flamebreaker##25323 |goto Mount Hyjal 47.70,35.50
step
Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit##40080 |q 25323/1 |goto Mount Hyjal 48.50,29.20
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto Mount Hyjal 47.70,35.50
accept The Return of Baron Geddon##25464 |goto Mount Hyjal 47.70,35.50
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto Mount Hyjal 44.10,26.80
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto Mount Hyjal 47.70,35.50
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto Mount Hyjal 47.60,35.50
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto Mount Hyjal 48.40,18.90
accept The Captured Scout##25320 |goto Mount Hyjal 48.40,18.90
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto Mount Hyjal 44.50,18.90
accept Twilight Captivity##25321 |goto Mount Hyjal 44.50,18.90
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto Mount Hyjal 44.50,21.50
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto Mount Hyjal 44.50,18.90
accept Return to Alysra##25424 |goto Mount Hyjal 44.50,18.90
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto Mount Hyjal 48.40,18.90
accept A Prisoner of Interest##25324 |goto Mount Hyjal 48.40,18.90
step
Enter the cave |goto Mount Hyjal 52.50,17.30 < 5 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto Mount Hyjal 56.80,18.80
accept Through the Dream##25325 |goto Mount Hyjal 56.80,18.80
step
Leave the cave |goto Mount Hyjal 52.50,17.30 < 5 |walk
|tip Follow the path up.
talk Alysra##40178
turnin Through the Dream##25325 |goto Mount Hyjal 52.20,17.40
accept Return to Nordrassil##25578 |goto Mount Hyjal 52.20,17.40
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto Mount Hyjal 62.00,24.90
accept The Return of the Ancients##25584 |goto Mount Hyjal 62.00,24.90
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto Mount Hyjal 35.70,19.40
accept Harrying the Hunters##25255 |goto Mount Hyjal 35.70,19.40
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto Mount Hyjal 35.70,19.70
accept In the Rear With the Gear##25234 |goto Mount Hyjal 35.70,19.70
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto Mount Hyjal 38.10,23.00
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto Mount Hyjal 38.10,23.00
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
click Twilight Supplies##202652
collect 36 Twilight Supplies##52568 |q 25234/1 |goto Mount Hyjal 38.10,23.00
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto Mount Hyjal 35.70,19.70
turnin In the Rear With the Gear##25234 |goto Mount Hyjal 35.70,19.70
accept The Voice of Goldrinn##25268 |goto Mount Hyjal 35.70,19.70
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto Mount Hyjal 35.70,19.40
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto Mount Hyjal 30.10,31.30
accept Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.10,31.30
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto Mount Hyjal 29.30,30.30
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.10,31.30
accept Lycanthoth the Corruptor##25273 |goto Mount Hyjal 30.10,31.30
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto Mount Hyjal 32.40,37.30
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto Mount Hyjal 32.30,37.00
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto Mount Hyjal 29.60,29.30
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto Mount Hyjal 28.20,29.80
accept Cleaning House##25278 |goto Mount Hyjal 28.20,29.80
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto Mount Hyjal 28.20,29.90
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto Mount Hyjal 28.60,30.20
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto Mount Hyjal 28.90,32.20
step
click a Stonebloom##9386
collect Stonebloom##52726 |q 25297/1 |goto Mount Hyjal 27.60,34.20
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto Mount Hyjal 27.20,35.20
accept Mastering Puppets##25301 |goto Mount Hyjal 27.20,35.20
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto Mount Hyjal 28.40,35.80
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto Mount Hyjal 28.40,36.40
accept Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.40,36.40
step
Enter the cave |goto Mount Hyjal 27.00,36.00 < 5 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.20,40.80
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto Mount Hyjal 26.50,38.50
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto Mount Hyjal 25.80,41.70
accept Elementary!##25303 |goto Mount Hyjal 25.80,41.70
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto Mount Hyjal 26.00,41.80
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto Mount Hyjal 25.70,41.70
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto Mount Hyjal 25.80,41.90
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto Mount Hyjal 26.00,41.60
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto Mount Hyjal 25.80,41.70
accept Return to Duskwhisper##25312 |goto Mount Hyjal 25.80,41.70
step
While inside the cave do the following:
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay 8 Minion of Gar'gol |q 25278/1
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.20,40.80
accept Get Me Outta Here!##25332 |goto Mount Hyjal 27.20,40.80
step
Leave the cave |goto Mount Hyjal 27.10,36.00 < 5 |walk
Escort Kristoff Out |q 25332/1
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto Mount Hyjal 28.60,30.20
turnin Get Me Outta Here!##25332 |goto Mount Hyjal 28.60,30.20
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto Mount Hyjal 28.20,29.80
accept Sweeping the Shelf##25352 |goto Mount Hyjal 28.20,29.80
accept Lightning in a Bottle##25353 |goto Mount Hyjal 28.20,29.80
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.20,29.90
step
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto Mount Hyjal 27.40,39.20
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto Mount Hyjal 27.40,39.20
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25353/1 |goto Mount Hyjal 27.40,39.20
step
Use your Totem of Goldrinn |use Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Go inside the blue portal |goto Mount Hyjal 26.20,41.00 < 5 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25618 |goto Mount Hyjal 26.30,41.90
accept Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.30,41.90
accept Crushing the Cores##25577 |goto Mount Hyjal 26.30,41.90
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.30,42.00
step
Do the following in the Firelands Forgeworks
kill 12 Dark Iron Laborer##40838+ |q 25576/1
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1
Click Twilight Arms Crates
|tip They look like wooden boxes sitting on the ground around this area.
Destroy 10 Twilight Arms Crates |q 25575/1
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.30,42.00
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.30,41.90
turnin Crushing the Cores##25577 |goto Mount Hyjal 26.30,41.90
accept Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.30,41.90
step
kill Cindermaul##40844 |q 25599/1 |goto Mount Hyjal 30.70,41.70
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto Mount Hyjal 30.70,41.70
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.30,41.90
accept Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.30,41.90
step
Click the Portal Runes
|tip They are brown metal plates on the ground on this small circular island in the lava.
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto Mount Hyjal 31.60,46.00
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.30,41.90
accept Return from the Firelands##25611 |goto Mount Hyjal 26.30,41.90
step
Go inside the blue portal |goto Mount Hyjal 25.90,40.90 < 5 |walk
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto Mount Hyjal 28.20,29.80
turnin Return from the Firelands##25611 |goto Mount Hyjal 28.20,29.80
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal,28.30,29.70
|tip Skip if you have completed Wings Over Mount Hyjal
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 28.20,29.90
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 19.00,40.90
accept Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.00,40.90
accept Disrupting the Rituals##25382 |goto Mount Hyjal 19.00,40.90
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto Mount Hyjal 19.20,37.90
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto Mount Hyjal 19.00,37.00
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto Mount Hyjal 19.60,36.40
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto Mount Hyjal 19.60,36.40
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto Mount Hyjal 22.30,44.90
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto Mount Hyjal 22.30,44.90
accept Seeds of Their Demise##25408 |goto Mount Hyjal 22.30,44.90
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto Mount Hyjal 21.80,43.70
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto Mount Hyjal 22.30,44.90
accept A New Master##25411 |goto Mount Hyjal 22.30,44.90
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto Mount Hyjal 14.40,45.40
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto Mount Hyjal 14.40,45.40
accept The Name Never Spoken##25412 |goto Mount Hyjal 14.40,45.40
stickystart "frightanimal"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto Mount Hyjal 14.30,45.40
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto Mount Hyjal 11.60,41.50
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto Mount Hyjal 9.60,36.50
step
label "frightanimal"
kill 10 Raging Firestorm##39939+ |q 25381/1 |goto Mount Hyjal 13.30,41.40
kill 6 Twilight Inferno Lord##39974+ |q 25382/1 |goto Mount Hyjal 13.30,41.40
Click Panicked Bunnies and Terrified Squirrels
|tip They are small and run around this area.
collect 10 Frightened Animal##53060 |q 25385/1 |goto Mount Hyjal 13.30,41.40
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.00,40.90
turnin Disrupting the Rituals##25382 |goto Mount Hyjal 19.00,40.90
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto Mount Hyjal 19.20,37.90
accept Oh, Deer!##25392 |goto Mount Hyjal 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto Mount Hyjal 22.30,44.90
accept Black Heart of Flame##25428 |goto Mount Hyjal 22.30,44.90
stickystart "injfawns"
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto Mount Hyjal 12.90,41.40
step
label "injfawns"
click 3 Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.20,37.90]
Escort 3 Injured Fawns Home |q 25392/1 |goto Mount Hyjal 14.50,40.80
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto Mount Hyjal 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto Mount Hyjal 22.30,44.90
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto Mount Hyjal 19.00,40.90
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto Mount Hyjal 13.60,32.80
accept The Bears Up There##25462 |goto Mount Hyjal 13.60,32.80
step
clicknpc Climbing Tree##40190
clicknpc Hyjal Bear Cub##40240+
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto Mount Hyjal 14.20,32.10
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto Mount Hyjal 13.60,32.80
accept Smashing Through Ashes##25490 |goto Mount Hyjal 13.60,32.80
step
kill 8 Charbringer##40336+ |q 25490/1 |goto Mount Hyjal 21.60,59.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto Mount Hyjal 27.10,62.60
accept Durable Seeds##25491 |goto Mount Hyjal 27.10,62.60
accept Fresh Bait##25493 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto Mount Hyjal 27.10,63.00
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto Mount Hyjal 36.20,58.60
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto Mount Hyjal 36.20,58.60
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto Mount Hyjal 36.20,58.60
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto Mount Hyjal 27.10,62.60
turnin Fresh Bait##25493 |goto Mount Hyjal 27.10,62.60
accept Hell's Shells##25507 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto Mount Hyjal 27.10,63.00
accept Prepping the Soil##25502 |goto Mount Hyjal 27.10,63.00
step
click Flameward##40460
Activate the Flameward |q 25502/1 |goto Mount Hyjal 33.00,64.60
Defend the Flameward |q 25502/2 |goto Mount Hyjal 33.00,64.60
step
Use your Heap of Incendosaur Innards near Nemesis |use Heap of Incendosaur Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##52383
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto Mount Hyjal 39.30,54.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto Mount Hyjal 27.10,62.60
accept Tortolla Speaks##25510 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto Mount Hyjal 27.10,63.00
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto Mount Hyjal 24.70,55.70
accept Breaking the Bonds##25514 |goto Mount Hyjal 24.70,55.70
accept Children of Tortolla##25519 |goto Mount Hyjal 24.70,55.70
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 1 |q 25514/1 |goto Mount Hyjal 23.80,56.00
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 2 |q 25514/2 |goto Mount Hyjal 25.30,54.80
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto Mount Hyjal 24.70,55.70
step
kill Deep Corruptor##40561+
|tip They are found underwater
Save 6 Tortolla's Eggs |q 25519/1 |goto Mount Hyjal 24.40,57.40
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto Mount Hyjal 24.70,55.70
accept An Ancient Awakens##25520 |goto Mount Hyjal 24.70,55.70
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto Mount Hyjal 27.10,62.60
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto Mount Hyjal 44.40,46.20
accept An Offering for Aviana##25663 |goto Mount Hyjal 44.40,46.20
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto Mount Hyjal 42.20,45.50
accept Scrambling for Eggs##25656 |goto Mount Hyjal 42.20,45.50
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto Mount Hyjal 41.20,42.60
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto Mount Hyjal 41.20,42.60
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto Mount Hyjal 40.30,44.30
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto Mount Hyjal 40.30,44.30
accept A Plea From Beyond##25665 |goto Mount Hyjal 40.30,44.30
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Kill 10 Wormwing Harpies |q 25655/1 |goto Mount Hyjal 38.50,43.00
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto Mount Hyjal 38.50,43.00
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto Mount Hyjal 42.20,45.50
turnin Scrambling for Eggs##25656 |goto Mount Hyjal 42.20,45.50
accept A Bird in Hand##25731 |goto Mount Hyjal 42.20,45.50
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto Mount Hyjal 44.40,46.20
accept A Prayer and a Wing##25664 |goto Mount Hyjal 44.40,46.20
step
Click the Harpy Signal Fire
|tip It's a brazier with red fire in it.
Fight Marion Wormwing until she gets captured |q 25731/1 |goto Mount Hyjal 38.30,44.20
talk Marion Wormwing##41112
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2 |goto Mount Hyjal 38.30,44.20
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto Mount Hyjal 35.70,42.30
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto Mount Hyjal 42.20,45.50
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto Mount Hyjal 44.40,46.20
step
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto Mount Hyjal 43.50,45.90
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto Mount Hyjal 32.80,70.80
accept Sethria's Brood##25746 |goto Mount Hyjal 32.80,70.80
accept A Gap in Their Armor##25758 |goto Mount Hyjal 32.80,70.80
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto Mount Hyjal 31.30,77.10
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto Mount Hyjal 30.90,76.90
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto Mount Hyjal 30.90,76.90
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto Mount Hyjal 32.80,70.80
turnin A Gap in Their Armor##25758 |goto Mount Hyjal 32.80,70.80
accept Disassembly##25761 |goto Mount Hyjal 32.80,70.80
turnin The Codex of Shadows##25763 |goto Mount Hyjal 32.80,70.80
accept Egg Hunt##25764 |goto Mount Hyjal 32.80,70.80
step
Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883
|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031+ |q 25761/1 |goto Mount Hyjal 31.60,75.80
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto Mount Hyjal 31.60,75.80
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto Mount Hyjal 32.80,70.80
turnin Egg Hunt##25764 |goto Mount Hyjal 32.80,70.80
accept Sethria's Demise##25776 |goto Mount Hyjal 32.80,70.80
step
Fight Sethria
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto Mount Hyjal 35.50,98.00
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto Mount Hyjal 32.80,70.80
accept Return to the Shrine##25795 |goto Mount Hyjal 32.80,70.80
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto Mount Hyjal 44.40,46.20
accept An Ancient Reborn##25807 |goto Mount Hyjal 44.40,46.20
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto Mount Hyjal 44.30,48.00
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto Mount Hyjal 44.20,47.80
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto Mount Hyjal 44.10,45.90
step
talk Vision of Ysera##47002
accept The Last Living Lorekeeper##25830 |goto Mount Hyjal 43.80,46.00
If you cannot pick up the quest, go here to get it: [62.00,24.90]
step
|goto Mount Hyjal 39.10,58.30 |n
Go inside the blue portal |goto Mount Hyjal 38.77,58.01 < 3 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto Mount Hyjal 37.20,56.20
accept Flight in the Firelands##25523 |goto Mount Hyjal 37.20,56.20
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto Mount Hyjal 37.20,56.10
step
Equip the Twilight Firelance |use Twilight Firelance##52716
Click Aviana's Guardian to ride it |goto Mount Hyjal 37.40,56.00 |invehicle
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Land next to the Guardian Flag
|tip It's a green flag on this small floating island.
Visit the Guardian Flag |q 25523/1 |goto Mount Hyjal 36.60,53.40
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto Mount Hyjal 37.20,56.20
accept Wave One##25525 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto Mount Hyjal 35.40,51.70
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto Mount Hyjal 37.20,56.20
accept Wave Two##25544 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660 |q 25544/1 |goto Mount Hyjal 35.40,51.70
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto Mount Hyjal 37.20,56.20
accept Egg Wave##25560 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto Mount Hyjal 36.60,53.30
You can find more Firelands Eggs at [39.30,54.10]
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto Mount Hyjal 37.20,56.20
step
label "beaten"
|goto Mount Hyjal,39.10,58.30 |n
Go inside the blue portal |goto Mount Hyjal 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
accept Vigilance on Wings##29177 |goto Mount Hyjal 37.20,56.20
step
click the Twilight Weapon Rack##130
collect 1 Twilight Firelance##52716 |q 29177 |goto Mount Hyjal 37.20,56.10
step
Equip the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40723 |invehicle |goto Mount Hyjal 37.40,56.00
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly around this area
kill 10 Twilight Lancer##40660+ |q 29177/1 |goto Mount Hyjal 36.60,53.40
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto Mount Hyjal 37.20,56.20
|tip You may choose only one Jouster.
collect Blue Mini Jouster##65661 |goto Mount Hyjal 37.20,56.20 |or
collect Gold Mini Jouster##65662 |goto Mount Hyjal 37.20,56.20 |or
step
learnpet Blue Mini Jouster##259 |use Blue Mini Jouster##65661 |or
learnpet Gold Mini Jouster##260 |use Gold Mini Jouster##65662 |or
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blue Moth",{
patch='20100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Blue Moth.",
pet=138,
mopready=true,
},[[
step
talk Sixx##21019
buy 1 Blue Moth Egg##29901 |goto The Exodar 30.80,34.60
step
learnpet Blue Moth##138 |use Blue Moth Egg##29901
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Darkmoon Balloon",{
patch='43000',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Darkmoon Balloon.",
pet=336,
mopready=true,
},[[
step
This pet requires Darkmoon Island to be accessible.
earn 90 Darkmoon Prize Ticket##515 |goto Darkmoon Island,56.00,52.90
Click here to buy the pet |confirm |next "buy"
step
label "buy"
talk Lhara##148465
buy 1 Darkmoon Balloon##73762 |goto Darkmoon Island,48.20,69.60
step
learnpet Darkmoon Balloon##336 |use Darkmoon Balloon##73762
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Gilnean Raven",{
patch='50100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Gilnean Raven.",
pet=630,
mopready=true,
},[[
step
talk Will Larsons##63083
Tell him you are interested in capturing rare pets.
learnpet Gilnean Raven##630 |goto Darkshore 50.20,20.10
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Gold Mini Jouster",{
patch='40300',
source='Quest',
description="This guide will walk you through obtaining the Flying pet: Gold Mini Jouster.",
pet=260,
mopready=true,
},[[
step
Going to _Egg Wave_ |only if not completedq(25560) |next "eggwave"
Going to _The 'Unbeatable?' Pterodactyl: BEATEN._ |next "beaten" |only if completedq(25560)
step
label "eggwave"
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City,62.90,71.60
step
talk Cenarion Emissary Jademoon##15187 |goto Stormwind City 82.60,28.20
Ask her to send you to Moonglade
Teleport to Moonglade |goto Moonglade |noway |c
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade,45.50,44.90
accept As Hyjal Burns##25316 |goto Moonglade,45.50,44.90
step
talk Sebelia##40843
home Nordrassil |goto Moonglade 63.10,24.10
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto Mount Hyjal,62.00,24.90
accept Protect the World Tree##25317 |goto Mount Hyjal,62.00,24.90
step
talk Fayran Elthas##41861
fpath Nordrassil |goto Mount Hyjal 62.10,21.60
step
talk Fayran Elthas##41861
fpath Nordrassil |goto Mount Hyjal 62.10,21.60
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto Mount Hyjal 64.00,22.70
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto Mount Hyjal 64.10,22.50
step
kill 8 Scalding Rock Elemental##40229+ |q 25460/1 |goto Mount Hyjal 67.10,22.60
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
|tip They look like small blue flying dragons around this area.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926+ |q 25370/1 |goto Mount Hyjal 67.10,22.60
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto Mount Hyjal 64.10,22.50
accept Flames from Above##25574 |goto Mount Hyjal 64.10,22.50
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto Mount Hyjal 64.00,22.70
step
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto Mount Hyjal 55.80,15.40
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto Mount Hyjal 64.10,22.50
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto Mount Hyjal 47.70,35.50
accept War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.70,35.50
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto Mount Hyjal 47.60,35.50
stickystart "twiflame2"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto Mount Hyjal 43.30,27.40
step
label "twiflame2"
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto Mount Hyjal 47.20,25.60
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto Mount Hyjal 47.20,25.60
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.70,35.50
turnin The Flameseer's Staff##25472 |goto Mount Hyjal 47.70,35.50
accept Flamebreaker##25323 |goto Mount Hyjal 47.70,35.50
step
Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit##40080 |q 25323/1 |goto Mount Hyjal 48.50,29.20
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto Mount Hyjal 47.70,35.50
accept The Return of Baron Geddon##25464 |goto Mount Hyjal 47.70,35.50
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto Mount Hyjal 44.10,26.80
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto Mount Hyjal 47.70,35.50
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto Mount Hyjal 47.60,35.50
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto Mount Hyjal 48.40,18.90
accept The Captured Scout##25320 |goto Mount Hyjal 48.40,18.90
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto Mount Hyjal 44.50,18.90
accept Twilight Captivity##25321 |goto Mount Hyjal 44.50,18.90
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto Mount Hyjal 44.50,21.50
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto Mount Hyjal 44.50,18.90
accept Return to Alysra##25424 |goto Mount Hyjal 44.50,18.90
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto Mount Hyjal 48.40,18.90
accept A Prisoner of Interest##25324 |goto Mount Hyjal 48.40,18.90
step
Enter the cave |goto Mount Hyjal 52.50,17.30 < 5 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto Mount Hyjal 56.80,18.80
accept Through the Dream##25325 |goto Mount Hyjal 56.80,18.80
step
Leave the cave |goto Mount Hyjal 52.50,17.30 < 5 |walk
|tip Follow the path up.
talk Alysra##40178
turnin Through the Dream##25325 |goto Mount Hyjal 52.20,17.40
accept Return to Nordrassil##25578 |goto Mount Hyjal 52.20,17.40
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto Mount Hyjal 62.00,24.90
accept The Return of the Ancients##25584 |goto Mount Hyjal 62.00,24.90
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto Mount Hyjal 35.70,19.40
accept Harrying the Hunters##25255 |goto Mount Hyjal 35.70,19.40
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto Mount Hyjal 35.70,19.70
accept In the Rear With the Gear##25234 |goto Mount Hyjal 35.70,19.70
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto Mount Hyjal 38.10,23.00
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto Mount Hyjal 38.10,23.00
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
click Twilight Supplies##202652
collect 36 Twilight Supplies##52568 |q 25234/1 |goto Mount Hyjal 38.10,23.00
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto Mount Hyjal 35.70,19.70
turnin In the Rear With the Gear##25234 |goto Mount Hyjal 35.70,19.70
accept The Voice of Goldrinn##25268 |goto Mount Hyjal 35.70,19.70
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto Mount Hyjal 35.70,19.40
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto Mount Hyjal 30.10,31.30
accept Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.10,31.30
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto Mount Hyjal 29.30,30.30
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.10,31.30
accept Lycanthoth the Corruptor##25273 |goto Mount Hyjal 30.10,31.30
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto Mount Hyjal 32.40,37.30
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto Mount Hyjal 32.30,37.00
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto Mount Hyjal 29.60,29.30
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto Mount Hyjal 28.20,29.80
accept Cleaning House##25278 |goto Mount Hyjal 28.20,29.80
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto Mount Hyjal 28.20,29.90
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto Mount Hyjal 28.60,30.20
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto Mount Hyjal 28.90,32.20
step
click a Stonebloom##9386
collect Stonebloom##52726 |q 25297/1 |goto Mount Hyjal 27.60,34.20
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto Mount Hyjal 27.20,35.20
accept Mastering Puppets##25301 |goto Mount Hyjal 27.20,35.20
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto Mount Hyjal 28.40,35.80
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto Mount Hyjal 28.40,36.40
accept Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.40,36.40
stickystart "twiserv"
step
Enter the cave |goto Mount Hyjal 27.00,36.00 < 10 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.20,40.80
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto Mount Hyjal 26.50,38.50
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto Mount Hyjal 25.80,41.70
accept Elementary!##25303 |goto Mount Hyjal 25.80,41.70
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto Mount Hyjal 26.00,41.80
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto Mount Hyjal 25.70,41.70
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto Mount Hyjal 25.80,41.90
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto Mount Hyjal 26.00,41.60
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto Mount Hyjal 25.80,41.70
accept Return to Duskwhisper##25312 |goto Mount Hyjal 25.80,41.70
step
label "twiserv"
While inside the cave do the following:
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay 8 Minion of Gar'gol |q 25278/1
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.20,40.80
accept Get Me Outta Here!##25332 |goto Mount Hyjal 27.20,40.80
step
Leave the cave |goto Mount Hyjal 27.10,36.00 < 5 |walk
Escort Kristoff Out |q 25332/1
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto Mount Hyjal 28.60,30.20
turnin Get Me Outta Here!##25332 |goto Mount Hyjal 28.60,30.20
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto Mount Hyjal 28.20,29.80
accept Sweeping the Shelf##25352 |goto Mount Hyjal 28.20,29.80
accept Lightning in a Bottle##25353 |goto Mount Hyjal 28.20,29.80
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.20,29.90
step
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto Mount Hyjal 27.40,39.20
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto Mount Hyjal 27.40,39.20
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25353/1 |goto Mount Hyjal 27.40,39.20
step
Use your Totem of Goldrinn |use Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Go inside the blue portal |goto Mount Hyjal 26.20,41.00 < 5 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25618 |goto Mount Hyjal 26.30,41.90
accept Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.30,41.90
accept Crushing the Cores##25577 |goto Mount Hyjal 26.30,41.90
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.30,42.00
step
Do the following in the Firelands Forgeworks
kill 12 Dark Iron Laborer##40838+ |q 25576/1
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1
Click Twilight Arms Crates
|tip They look like wooden boxes sitting on the ground around this area.
Destroy 10 Twilight Arms Crates |q 25575/1
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.30,42.00
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.30,41.90
turnin Crushing the Cores##25577 |goto Mount Hyjal 26.30,41.90
accept Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.30,41.90
step
kill Cindermaul##40844 |q 25599/1 |goto Mount Hyjal 30.70,41.70
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto Mount Hyjal 30.70,41.70
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.30,41.90
accept Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.30,41.90
step
Click the Portal Runes
|tip They are brown metal plates on the ground on this small circular island in the lava.
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto Mount Hyjal 31.60,46.00
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.30,41.90
accept Return from the Firelands##25611 |goto Mount Hyjal 26.30,41.90
step
Go inside the blue portal |goto Mount Hyjal 25.90,40.90 < 5 |walk
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto Mount Hyjal 28.20,29.80
turnin Return from the Firelands##25611 |goto Mount Hyjal 28.20,29.80
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal,28.30,29.70
|tip Skip if you have completed Wings Over Mount Hyjal
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 28.20,29.90
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 19.00,40.90
accept Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.00,40.90
accept Disrupting the Rituals##25382 |goto Mount Hyjal 19.00,40.90
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto Mount Hyjal 19.20,37.90
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto Mount Hyjal 19.00,37.00
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto Mount Hyjal 19.60,36.40
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto Mount Hyjal 19.60,36.40
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto Mount Hyjal 22.30,44.90
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto Mount Hyjal 22.30,44.90
accept Seeds of Their Demise##25408 |goto Mount Hyjal 22.30,44.90
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto Mount Hyjal 21.80,43.70
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto Mount Hyjal 22.30,44.90
accept A New Master##25411 |goto Mount Hyjal 22.30,44.90
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto Mount Hyjal 14.40,45.40
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto Mount Hyjal 14.40,45.40
accept The Name Never Spoken##25412 |goto Mount Hyjal 14.40,45.40
stickystart "twilord"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto Mount Hyjal 14.30,45.40
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto Mount Hyjal 11.60,41.50
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto Mount Hyjal 9.60,36.50
step
label "twilord"
kill 10 Raging Firestorm##39939+ |q 25381/1 |goto Mount Hyjal 13.30,41.40
kill 6 Twilight Inferno Lord##39974+ |q 25382/1 |goto Mount Hyjal 13.30,41.40
Click Panicked Bunnies and Terrified Squirrels
|tip They are small and run around this area.
collect 10 Frightened Animal##53060 |q 25385/1 |goto Mount Hyjal 13.30,41.40
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.00,40.90
turnin Disrupting the Rituals##25382 |goto Mount Hyjal 19.00,40.90
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto Mount Hyjal 19.20,37.90
accept Oh, Deer!##25392 |goto Mount Hyjal 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto Mount Hyjal 22.30,44.90
accept Black Heart of Flame##25428 |goto Mount Hyjal 22.30,44.90
stickystart "fawnmylune"
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto Mount Hyjal 12.90,41.40
step
label "fawnmylune"
click 3 Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.20,37.90]
Escort 3 Injured Fawns Home |q 25392/1 |goto Mount Hyjal 14.50,40.80
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto Mount Hyjal 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto Mount Hyjal 22.30,44.90
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto Mount Hyjal 19.00,40.90
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto Mount Hyjal 13.60,32.80
accept The Bears Up There##25462 |goto Mount Hyjal 13.60,32.80
step
clicknpc Climbing Tree##40190
clicknpc Hyjal Bear Cub##40240+
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto Mount Hyjal 14.20,32.10
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto Mount Hyjal 13.60,32.80
accept Smashing Through Ashes##25490 |goto Mount Hyjal 13.60,32.80
step
kill 8 Charbringer##40336+ |q 25490/1 |goto Mount Hyjal 21.60,59.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto Mount Hyjal 27.10,62.60
accept Durable Seeds##25491 |goto Mount Hyjal 27.10,62.60
accept Fresh Bait##25493 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto Mount Hyjal 27.10,63.00
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto Mount Hyjal 36.20,58.60
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto Mount Hyjal 36.20,58.60
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto Mount Hyjal 36.20,58.60
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto Mount Hyjal 27.10,62.60
turnin Fresh Bait##25493 |goto Mount Hyjal 27.10,62.60
accept Hell's Shells##25507 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto Mount Hyjal 27.10,63.00
accept Prepping the Soil##25502 |goto Mount Hyjal 27.10,63.00
step
click Flameward##40460
Activate the Flameward |q 25502/1 |goto Mount Hyjal 33.00,64.60
Defend the Flameward |q 25502/2 |goto Mount Hyjal 33.00,64.60
step
Use your Heap of Incendosaur Innards near Nemesis |use Heap of Incendosaur Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##52383
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto Mount Hyjal 39.30,54.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto Mount Hyjal 27.10,62.60
accept Tortolla Speaks##25510 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto Mount Hyjal 27.10,63.00
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto Mount Hyjal 24.70,55.70
accept Breaking the Bonds##25514 |goto Mount Hyjal 24.70,55.70
accept Children of Tortolla##25519 |goto Mount Hyjal 24.70,55.70
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 1 |q 25514/1 |goto Mount Hyjal 23.80,56.00
step
Click the Rod of Subjugation
|tip It's a huge metal rod with an orange spinning ball on top of it.
Disable Rod of Subjugation 2 |q 25514/2 |goto Mount Hyjal 25.30,54.80
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto Mount Hyjal 24.70,55.70
step
kill Deep Corruptor##40561+
|tip They are found underwater
Save 6 Tortolla's Eggs |q 25519/1 |goto Mount Hyjal 24.40,57.40
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto Mount Hyjal 24.70,55.70
accept An Ancient Awakens##25520 |goto Mount Hyjal 24.70,55.70
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto Mount Hyjal 27.10,62.60
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto Mount Hyjal 44.40,46.20
accept An Offering for Aviana##25663 |goto Mount Hyjal 44.40,46.20
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto Mount Hyjal 42.20,45.50
accept Scrambling for Eggs##25656 |goto Mount Hyjal 42.20,45.50
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto Mount Hyjal 41.20,42.60
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto Mount Hyjal 41.20,42.60
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto Mount Hyjal 40.30,44.30
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto Mount Hyjal 40.30,44.30
accept A Plea From Beyond##25665 |goto Mount Hyjal 40.30,44.30
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Kill 10 Wormwing Harpies |q 25655/1 |goto Mount Hyjal 38.50,43.00
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto Mount Hyjal 38.50,43.00
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto Mount Hyjal 42.20,45.50
turnin Scrambling for Eggs##25656 |goto Mount Hyjal 42.20,45.50
accept A Bird in Hand##25731 |goto Mount Hyjal 42.20,45.50
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto Mount Hyjal 44.40,46.20
accept A Prayer and a Wing##25664 |goto Mount Hyjal 44.40,46.20
step
Click the Harpy Signal Fire
|tip It's a brazier with red fire in it.
Fight Marion Wormwing until she gets captured |q 25731/1 |goto Mount Hyjal 38.30,44.20
talk Marion Wormwing##41112
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2 |goto Mount Hyjal 38.30,44.20
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto Mount Hyjal 35.70,42.30
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto Mount Hyjal 42.20,45.50
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto Mount Hyjal 44.40,46.20
step
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto Mount Hyjal 43.50,45.90
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto Mount Hyjal 32.80,70.80
accept Sethria's Brood##25746 |goto Mount Hyjal 32.80,70.80
accept A Gap in Their Armor##25758 |goto Mount Hyjal 32.80,70.80
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto Mount Hyjal 31.30,77.10
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto Mount Hyjal 30.90,76.90
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto Mount Hyjal 30.90,76.90
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto Mount Hyjal 32.80,70.80
turnin A Gap in Their Armor##25758 |goto Mount Hyjal 32.80,70.80
accept Disassembly##25761 |goto Mount Hyjal 32.80,70.80
turnin The Codex of Shadows##25763 |goto Mount Hyjal 32.80,70.80
accept Egg Hunt##25764 |goto Mount Hyjal 32.80,70.80
step
Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883  |goto Mount Hyjal 31.60,75.80
|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031+ |q 25761/1 |goto Mount Hyjal 32.80,70.80
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto Mount Hyjal 32.80,70.80
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto Mount Hyjal 32.80,70.80
turnin Egg Hunt##25764 |goto Mount Hyjal 32.80,70.80
accept Sethria's Demise##25776 |goto Mount Hyjal 32.80,70.80
step
Fight Sethria
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto Mount Hyjal 35.50,98.00
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto Mount Hyjal 32.80,70.80
accept Return to the Shrine##25795 |goto Mount Hyjal 32.80,70.80
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto Mount Hyjal 44.40,46.20
accept An Ancient Reborn##25807 |goto Mount Hyjal 44.40,46.20
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto Mount Hyjal 44.30,48.00
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto Mount Hyjal 44.20,47.80
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto Mount Hyjal 44.10,45.90
step
talk Vision of Ysera##47002
accept The Last Living Lorekeeper##25830 |goto Mount Hyjal 43.80,46.00
If you cannot pick up the quest, go here to get it: [62.00,24.90]
step
|goto Mount Hyjal 39.10,58.30 |n
Go inside the blue portal |goto Mount Hyjal 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto Mount Hyjal 37.20,56.20
accept Flight in the Firelands##25523 |goto Mount Hyjal 37.20,56.20
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto Mount Hyjal 37.20,56.10
step
Equip the Twilight Firelance |use Twilight Firelance##52716
Click Aviana's Guardian to ride it |invehicle |goto Mount Hyjal 37.40,56.00
|tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Land next to the Guardian Flag
|tip It's a green flag on this small floating island.
Visit the Guardian Flag |q 25523/1 |goto Mount Hyjal 36.60,53.40
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto Mount Hyjal 37.20,56.20
accept Wave One##25525 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto Mount Hyjal 35.40,51.70
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto Mount Hyjal 37.20,56.20
accept Wave Two##25544 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660 |q 25544/1 |goto Mount Hyjal 35.40,51.70
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto Mount Hyjal 37.20,56.20
accept Egg Wave##25560 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto Mount Hyjal 36.60,53.30
You can find more Firelands Eggs at [39.30,54.10]
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto Mount Hyjal 37.20,56.20
step
label "beaten"
|goto Mount Hyjal,39.10,58.30 |n
Go inside the blue portal |goto Mount Hyjal 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
accept Vigilance on Wings##29177 |goto Mount Hyjal 37.20,56.20
step
click the Twilight Weapon Rack##130
collect 1 Twilight Firelance##52716 |q 29177 |goto Mount Hyjal 37.20,56.10
step
Equip the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40723 |invehicle |goto Mount Hyjal 37.40,56.00 |tip They are hippogryphs.
step
Use your Flap ability on your hotbar repeatedly to fly around this area
kill 10 Twilight Lancer##40660+ |q 29177/1 |goto Mount Hyjal 36.60,53.40
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto Mount Hyjal 37.20,56.20
|tip You may choose only one Jouster.
collect Blue Mini Jouster##65661 |goto Mount Hyjal 37.20,56.20 |or
collect Gold Mini Jouster##65662 |goto Mount Hyjal 37.20,56.20 |or
step
learnpet Blue Mini Jouster##259 |use Blue Mini Jouster##65661 |or
learnpet Gold Mini Jouster##260 |use Gold Mini Jouster##65662 |or
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Great Horned Owl",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Great Horned Owl.",
pet=68,
mopready=true,
},[[
step
talk Shylenai##8665
buy 1 Great Horned Owl##8500 |goto Darnassus/0 64.05,53.56
step
use Great Horned Owl##8500
Learn the "Great Horned Owl" Battle Pet |learnpet Great Horned Owl##68
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Hawk Owl",{
patch='111100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Hawk Owl.",
pet=67,
mopready=true,
},[[
step
talk Shylenai##8665
buy 1 Hawk Owl##8501 |goto Darnassus/0 64.05,53.56
step
use Hawk Owl##8501
Learn the "Hawk Owl" Battle Pet |learnpet Hawk Owl##67
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Plump Turkey",{
patch='32200',
source='WorldEvent',
description="This guide will walk you through obtaining the Flying pet: Plump Turkey.",
pet=201,
mopready=true,
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim"
step
Check your mailbox for your Turkey Cage.
collect Turkey Cage##44810
step
learnpet Plump Turkey##201 |use Turkey Cage##44810
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Pterrordax Hatchling",{
patch='41000',
source='Profession',
description="This guide will walk you through obtaining the Flying pet: Pterrordax Hatchling.",
pet=309,
mopready=true,
},[[
step
This pet is a rare Archaeology "Fossil" solve
talk Harrison Jones##44238 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |goto Stormwind City,85.80,25.90 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Pterrordax Hatchling"_. Solve this Archaeology puzzle
collect 1 Pterrordax Hatchling##69821
step
learnpet Pterrordax Hatchling##309 |use Pterrordax Hatchling##69821
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Rustberg Gull",{
patch='40100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Rustberg Gull.",
pet=271,
mopready=true,
},[[
step
This will require that you be Honored with the Baradin's Wardens.
Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
You will need 40 Tol Barad Commendations.
earn 40 Tol Barad Commendation##391
_Honored_ with Baradin's Wardens |complete rep("Baradin's Wardens")>=Honored
Click here to move on to the daillies. |confirm
If you have 40 Tol Barad Commendations and are Honored with Baradin's Wardens, click here. |next "buy" |confirm
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
stickystart "cannonstack2"
step
Follow the path up |goto Tol Barad Peninsula 74.30,42.80 < 5 |walk
kill Commander Largo##47304 |q 27991/1 |goto Tol Barad Peninsula 78.60,42.00
|tip He's at the top of the tower.
step
label "cannonstack2"
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
stickystart "tortsoul"
step
kill First Lieutenant Connor##46571 |q 27967/1 |goto Tol Barad Peninsula 38.40,77.60
step
label "tortsoul"
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
Click here to proceed to the daillies. |confirm
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
stickystart "cursedshack"
step
Enter the underground jail |goto Tol Barad 42.70,39.10 < 5 |walk
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28185/1 |goto Tol Barad 48.30,30.70
step
label "cursedshack"
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
collect 12 Cellblock Ration##63315 |q 28232/1 |goto Tol Barad 40.90,78.20
step
Enter the underground jail |goto Tol Barad 60.80,50.10,0.50 |c
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28118/1 |goto Tol Barad 56.80,54.80
step
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
earn 40 Tol Barad Commendation##391 |goto Tol Barad 51.50,49.60 |next "buy"
step
This will require you to be _honored_ with _Baradin's Wardens_
Honored with Baradin's Wardens |complete rep("Baradin's Wardens")>=Honored
earn 40 Tol Barad Commendation##391
step
label "buy"
talk Quartermaster Brazie##47328
buy 1 Rustberg Gull##63355 |goto Tol Barad Peninsula,72.60,62.60
step
learnpet Rustberg Gull##271 |use Rustberg Gull##63355
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Tiny Flamefly",{
patch='40300',
source='Quest',
description="This guide will walk you through obtaining the Flying pet: Tiny Flamefly.",
pet=287,
mopready=true,
},[[
step
talk John J. Keeshan##47811
You will only be able to accept 1 of these 2 quests
|tip Which quest is offered to you depends on whether or not you completed a quest line in Redridge Mountains at a lower level.
accept Burning Vengeance##28416 |goto Burning Steppes 17.30,52.10 |or
accept Burning Vengeance##28174 |goto Burning Steppes 17.30,52.10 |or
step
talk Mouton Flamestar##47779
turnin Mouton Flamestar##28514 |goto Burning Steppes 17.00,51.30
accept Done Nothing Wrong##28172 |goto Burning Steppes 17.00,51.30
stickystart "blackwhelp"
stickystart "blackflame"
step
clicknpc Fettered Green Whelpling##47820
Free a Green Whelpling |q 28172/2 |goto Burning Steppes 17.50,60.50
step
clicknpc Fettered Blue Whelpling##47821
Free a Blue Whelpling |q 28172/3 |goto Burning Steppes 19.20,61.60
step
Follow the path up |goto Burning Steppes 17.80,61.40 < 5 |only if walking
clicknpc Fettered Bronze Whelpling##47822
Free a Bronze Whelpling |q 28172/4 |goto Burning Steppes 15.10,69.70
step
clicknpc Fettered Red Whelpling##47814
Free a Red Whelpling |q 28172/1 |goto Burning Steppes 14.20,66.80
step
label "blackwhelp"
kill 5 Blackrock Whelper##47782+ |q 28416/1 |goto Burning Steppes 16.00,66.00
kill 5 Flamescale Broodling##7049+ |q 28416/2 |goto Burning Steppes 16.00,66.00
only if haveq(28416)
step
label "blackflame"
kill 5 Blackrock Whelper##47782+ |q 28174/1 |goto Burning Steppes 16.00,66.00
kill 5 Flamescale Broodling##7049+ |q 28174/2 |goto Burning Steppes 16.00,66.00
only if haveq(28174)
step
talk John J. Keeshan##47811
You will only be able to turn in 1 of the 2 Burning Vengeance quests, depending on which one he gave you
turnin Burning Vengeance##28416 |goto Burning Steppes 17.30,52.10
turnin Burning Vengeance##28174 |goto Burning Steppes 17.30,52.10
accept Stocking Up##28177 |goto Burning Steppes 17.30,52.10
accept A Future Project##28178 |goto Burning Steppes 17.30,52.10
accept Mud Hunter##28179 |goto Burning Steppes 17.30,52.10
step
talk Mouton Flamestar##47779
turnin Done Nothing Wrong##28172 |goto Burning Steppes 17.00,51.30
step
click Obsidian-Flecked Mud##206853
collect 9 Obsidian-Flecked Mud##63124 |q 28179/1 |goto Burning Steppes 15.50,45.00
step
kill Ember Worg##9690+
collect 11 Ember Worg Hide##63136 |q 28178/1 |goto Burning Steppes 11.80,47.70
kill Venomtip Scorpid##9691+
collect 5 Razor-Sharp Scorpid Barb##63135 |q 28177/1 |goto Burning Steppes 11.80,47.70
step
talk John J. Keeshan##47811
turnin Stocking Up##28177 |goto Burning Steppes 17.30,52.10
turnin A Future Project##28178 |goto Burning Steppes 17.30,52.10
turnin Mud Hunter##28179 |goto Burning Steppes 17.30,52.10
accept The Sand, the Cider, and the Orb##28180 |goto Burning Steppes 17.30,52.10
step
talk Gorzeeki Wildeyes##14437
turnin The Sand, the Cider, and the Orb##28180 |goto Burning Steppes 8.40,35.80
accept Warlocks Have the Neatest Stuff##28181 |goto Burning Steppes 8.40,35.80
accept Shadow Boxing##28182 |goto Burning Steppes 8.40,35.80
step
kill Ner'gosh the Shadow##47805 |q 28182/1 |goto Burning Steppes 9.90,29.70
step
click Slumber Sand##206881
collect Slumber Sand##3434 |q 28181/2 |goto Burning Steppes 5.40,32.00
step
click Fel Slider Cider##206882
collect Fel Slider Cider##63133 |q 28181/3 |goto Burning Steppes 5.20,30.90
step
kill Blackrock Warlock##7028+
collect Clear Glass Orb##63134 |q 28181/1 |goto Burning Steppes 6.80,31.80
step
talk Gorzeeki Wildeyes##14437
turnin Warlocks Have the Neatest Stuff##28181 |goto Burning Steppes 8.40,35.80
turnin Shadow Boxing##28182 |goto Burning Steppes 8.40,35.80
accept Return to Keeshan##28183 |goto Burning Steppes 8.40,35.80
step
ding 50
step
talk John J. Keeshan##47811
turnin Return to Keeshan##28183 |goto Burning Steppes 17.30,52.10
accept Chiselgrip, the Heart of the Steppes##28184 |goto Burning Steppes 17.30,52.10
step
kill Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+ |q 28184/1 |goto Burning Steppes 31.50,52.10
step
talk Stebben Oreknuckle##48033
turnin Chiselgrip, the Heart of the Steppes##28184 |goto Burning Steppes 46.80,44.10
accept Prove Yer Allegiance##28225 |goto Burning Steppes 46.80,44.10
accept Scrapped Golems##28226 |goto Burning Steppes 46.80,44.10
step
talk John J. Keeshan##48109
accept A Needle in a Hellhole##28254 |goto Burning Steppes 46.40,46.00
step
talk Thelaron Direneedle##48001
turnin A Needle in a Hellhole##28254 |goto Burning Steppes 45.50,46.40
accept A Perfect Costume##28202 |goto Burning Steppes 45.50,46.40 |or
accept A Perfect Costume##28203 |goto Burning Steppes 45.50,46.40 |or
accept A Perfect Costume##28204 |goto Burning Steppes 45.50,46.40 |or
accept A Perfect Costume##28205 |goto Burning Steppes 45.50,46.40 |or
step
click Tailor's Table##206947 |goto Burning Steppes 45.60,46.30
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
Click to proceed. |confirm
only Human
step
click Tailor's Table##206947 |goto Burning Steppes 45.60,46.30
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
Click to proceed. |confirm
only Dwarf
step
click Tailor's Table##206947 |goto Burning Steppes 45.60,46.30
Investigate the hides.
Take 1 Hide
Take 3 Handfuls of Mud
Take 4 Spools of Thread
Click to proceed. |confirm
only Gnome
step
click Tailor's Table##206947 |goto Burning Steppes 45.60,46.30
Investigate the hides.
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
Click to proceed. |confirm
only Draenei
step
click Tailor's Table##206947 |goto Burning Steppes 45.60,46.30
Investigate the hides.
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
Click to proceed. |confirm
only Worgen
step
click Tailor's Table##206947 |goto Burning Steppes 45.60,46.30
Investigate the hides.
Take 3 Hides
Take 2 Handfuls of Mud
Take 1 Spool of Thread
Click to proceed. |confirm
only NightElf
step
talk Thelaron Direneedle##48001
Tell him you brought him some hides, mud, and thread
Create the Perfect Costume |q 28202/1 |goto Burning Steppes 45.50,46.40
Create the Perfect Costume |q 28203/1 |goto Burning Steppes 45.50,46.40
Create the Perfect Costume |q 28204/1 |goto Burning Steppes 45.50,46.40
Create the Perfect Costume |q 28205/1 |goto Burning Steppes 45.50,46.40
step
talk John J. Keeshan##48109
turnin A Perfect Costume##28202 |goto Burning Steppes 46.40,46.00
turnin A Perfect Costume##28203 |goto Burning Steppes 46.40,46.00
turnin A Perfect Costume##28204 |goto Burning Steppes 46.40,46.00
turnin A Perfect Costume##28205 |goto Burning Steppes 46.40,46.00
accept Into the Black Tooth Hovel##28239 |goto Burning Steppes 46.40,46.00
step
Use your Blackrock Disguise |use Blackrock Disguise##63357
You will get a different disguise, depending on the costume you had to make:
Wear your Blackrock Disguise |havebuff Blackrock Orc Disguise##89253 |q 28239 |or
Wear your Blackrock Disguise |havebuff Blackrock Orc Disguise##89254 |q 28239 |or
step
talk Quartermaster Kaoshin##48085
turnin Into the Black Tooth Hovel##28239 |goto Burning Steppes 45.30,51.70
accept Grunt Work##28245 |goto Burning Steppes 45.30,51.70
step
Click the Quest Accept box that displays on the right side of the screen under your minimap
accept Strategic Cuts##28246
|tip You can also accept this from Colonel Troteman at 46.20,45.80
step
Go to the very top of the tower
Use your Razor-Sharp Scorpid Barb on Voodooist Timan |use Razor-Sharp Scorpid Barb##63350
kill Voodooist Timan##48100 |q 28246/3 |goto Burning Steppes 45.00,52.50
step
Use your Razor-Sharp Scorpid Barb on Worgmistress Othana |use Razor-Sharp Scorpid Barb##63350
kill Worgmistress Othana##48099 |q 28246/2 |goto Burning Steppes 39.20,56.10
step
Use your Razor-Sharp Scorpid Barb on Gorlop |use Razor-Sharp Scorpid Barb##63350
kill Gorlop##9176 |q 28246/1 |goto Burning Steppes 42.10,60.10
|tip He's an ogre that runs back and forth between the two lava pools here, so you may need to search for him.
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Strategic Cuts##28246
step
click Blackrock Boot##10182+
|tip They look like brown pairs of boots sitting on the outside of the huts and buildings all around this area.
Polish 7 Pairs of Blackrock Boots |q 28245/1 |goto Burning Steppes 39.70,55.70
step
talk Quartermaster Kaoshin##48085
turnin Grunt Work##28245 |goto Burning Steppes 45.30,51.70
accept The Kodocaller's Horn##28252 |goto Burning Steppes 45.30,51.70
step
Use your Horn of the Callers next to Blackrock War Kodos |use Horn of the Callers##63356
kill Blackrock War Kodo##48111+
Summon 7 Blackrock War Kodos back to camp |q 28252/1 |goto Burning Steppes 44.90,58.80
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Kodocaller's Horn##28252
accept Taking the Horn For Ourselves##28253
step
talk Colonel Troteman##48110
turnin Taking the Horn For Ourselves##28253 |goto Burning Steppes 46.30,46.00
step
kill Thaurissan Agent##7038+, Thaurissan Firewalker##7037+, Thaurissan Spy##7036+ |q 28225/1
kill War Reaver##7039+
click War Reaver Part##449+
You are given a choice on what to salvage from the War Reaver Parts.
|tip Choose to Salvage a Stone Power Core the first chance you get, because you only need one and they are rare.  Otherwise, just salvage the parts you need most.
collect 3 Obsidian Piston##63333 |q 28226/1 |goto Burning Steppes 45.70,39.10
collect 3 Flux Exhaust Sieve##63336 |q 28226/2 |goto Burning Steppes 45.70,39.10
collect 3 Thorium Gearshaft##63335 |q 28226/3 |goto Burning Steppes 45.70,39.10
collect Stone Power Core##63334 |q 28226/4 |goto Burning Steppes 45.70,39.10
step
talk Stebben Oreknuckle##48033
turnin Prove Yer Allegiance##28225 |goto Burning Steppes 46.80,44.10
turnin Scrapped Golems##28226 |goto Burning Steppes 46.80,44.10
accept Golem Training##28227 |goto Burning Steppes 46.80,44.10
step
talk Chiseled Golem##48037
Tell them you are here to help them with their combat training, golem
kill Chiseled Golem##48037s
|tip You will have to beat them 3 times in a row to train them.
Train 4 Chiseled Golems |q 28227/1 |goto Burning Steppes 46.40,45.20
step
talk Stebben Oreknuckle##48033
turnin Golem Training##28227 |goto Burning Steppes 46.80,44.10
step
talk John J. Keeshan##48109
accept General Thorg'izog##28265 |goto Burning Steppes 46.40,46.00
step
Use your Blackrock Disguise |use Blackrock Disguise##63357
You will get a different disguise, depending on the costume you had to make:
Wear your Blackrock Orc Disguise |havebuff Blackrock Orc Disguise##89253 |q 28265 |or
Wear your Blackrock Orc Disguise |havebuff Blackrock Orc Disguise##89254 |q 28265 |or
step
talk General Thorg'izog##48133
turnin General Thorg'izog##28265 |goto Burning Steppes 30.70,33.70
accept Trial by Magma##28266 |goto Burning Steppes 30.70,33.70
step
talk Wyrtle Spreelthonket##48159
Tell him you'd like to challenge his magma lord to a fight
kill Magma Lord Kolob##48156 |q 28266/1 |goto Burning Steppes 30.80,33.40
step
talk General Thorg'izog##48133
turnin Trial by Magma##28266 |goto Burning Steppes 30.70,33.70
accept I Am the Law and I Am the Lash##28278 |goto Burning Steppes 30.70,33.70
accept Abuse of Power##28279 |goto Burning Steppes 30.70,33.70
step
Use your Blackrock Cudgel of Discipline on Smolderthorn Assassins, Firegut Flamespeakers, and Blackrock Soldiers |use Blackrock Cudgel of Discipline##63390
|tip If they discover you are wearing a mask, spam use the Blackrock Cudgel of Discipline on them to kill them.
Cudgel 20 Blackrock Minions |q 28278/1 |goto Burning Steppes 33.60,36.30
Use your Blackrock Cudgel of Discipline repeatedly on Blackrock Sergeants |use Blackrock Cudgel of Discipline##63390
|tip Spam use the Blackrock Cudgel of Discipline, so you kill them quickly.
kill 5 Blackrock Sergeant##48201+ |q 28279/1 |goto Burning Steppes 33.60,36.30
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Abuse of Power##28279
accept Enough Damage For One Day##28286
step
talk General Thorg'izog##48133
turnin I Am the Law and I Am the Lash##28278 |goto Burning Steppes 30.70,33.70
step
ding 51
step
talk Colonel Troteman##48110
turnin Enough Damage For One Day##28286 |goto Burning Steppes 46.30,46.00
accept Morgan's Vigil##28310 |goto Burning Steppes 46.30,46.00
step
talk Oralius##9177
turnin Morgan's Vigil##28310 |goto Burning Steppes 71.90,68.00
accept SEVEN! YUP!##28415 |goto Burning Steppes 71.90,68.00
step
clicknpc Flamefly##48671
collect 7 Flamefly##64409 |q 28415/1
collect 1 Tiny Flamefly##66080
step
learnpet Tiny Flamefly##287 |use Tiny Flamefly##66080
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Tirisfal Batling",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Tirisfal Batling.",
pet=206,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Tirisfal Batling##44971
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Tirisfal Batling##206 |use Tirisfal Batling##44971
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\White Moth",{
patch='20100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: White Moth.",
pet=141,
mopready=true,
},[[
step
talk Sixx##21019
buy 1 White Moth Egg##29904 |goto The Exodar 30.80,34.60
step
learnpet White Moth##141 |use White Moth Egg##29904
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yellow Moth",{
patch='20100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Yellow Moth.",
pet=140,
mopready=true,
},[[
step
talk Sixx##21019
buy 1 Yellow Moth Egg##29903 |goto The Exodar 30.80,34.60
step
learnpet Yellow Moth##140 |use Yellow Moth Egg##29903
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Argent Squire",{
patch='31000',
source='Quest',
description="This battle pet is rewarded to you after you complete the quest A Champion Rises.",
keywords={"Humanoid","Argent","Tournament"},
pet=214,
mopready=true,
},[[
step
collect Argent Squire##44998 |n
|tip This pet will be rewarded to you after you complete the quest "A Champion Rises" at the Argent Tournament.
|tip You will have to do several quests and champion a race at the Argent Tournament in order to get the quest "A Champion Rises".
|tip You can use our Argent Tournament Daily Guides to help you complete the quests and earn the battle pet.
use the Argent Squire##44998
|tip It is in your inventory.
Learn the "Argent Squire" Battle Pet |learnpet Argent Squire##214
step
_Congratulations!_
You Collected the "Argent Squire" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Argent Gruntling",{
patch='31000',
source='Quest',
description="This battle pet is rewarded to you after you complete the quest A Champion Rises and can only be earned with a Horde character.",
keywords={"Humanoid","Argent","Tournament"},
pet=216,
mopready=true,
},[[
step
collect Argent Gruntling##45022 |n
|tip This pet can only be obtained with a Horde character after you complete the quest "A Champion Rises".
|tip You can use our Argent Tournament Daily Guides to help you complete the quests and earn the Champion title for your character's race.
use the Argent Gruntling##45022
|tip It is in your inventory.
Learn the "Argent Gruntling" Battle Pet |learnpet Argent Gruntling##216
step
_Congratulations!_
You Collected the "Argent Gruntling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Curious Oracle Hatchling",{
patch='32000',
source='WorldEvent',
description="This battle pet is given as a reward after completing Children's Week Quests.",
keywords={"Humanoid","Children's","Week"},
pet=225,
mopready=true,
},[[
step
collect Curious Oracle Hatchling##46545 |n
|tip This pet is a reward for completing the Children's Week quests in Northrend.
|tip You can use our Children's Week Dalaran Oracles Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
use the Curious Oracle Hatchling##46545
|tip It will be in your mailbox.
Learn the "Curious Oracle Hatchling" Battle Pet |learnpet Curious Oracle Hatchling##225
step
_Congratulations!_
You Collected the "Curious Oracle Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Father Winter's Helper",{
patch='111100',
source='WorldEvent',
description="This battle pet has a 1 in 4 chance to drop from a Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Flying","Feast","Of","Winter","Veil"},
pet=119,
mopready=true,
},[[
step
collect Green Helper Box##21301 |n
|tip This has a 1 in 4 chance to drop from a "Gaily Wrapped Present" during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present can be found under the giant Christmas tree in Ironforge.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Green Helper Box##21301
|tip It is in your inventory.
Learn the "Father Winter's Helper" Battle Pet |learnpet Father Winter's Helper##119
step
_Congratulations!_
You Collected the "Father Winter's Helper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Herald (Horde)",{
patch='40300',
source='Vendor',
description="This battle pet can only be obtained with a Horde character.",
keywords={"Humanoid","Guild","Vendor"},
pet=283,
mopready=true,
},[[
step
collect Guild Herald##65364 |n
|tip This battle pet can only be obtained with a Horde character.
use the Guild Herald##65364
|tip It is in your inventory.
Learn the "Guild Herald" Battle Pet |learnpet Guild Herald##283
step
_Congratulations!_
You Collected the "Guild Herald" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Herald (Alliance)",{
patch='40300',
source='Vendor',
description="This battle pet can be purchased from a guild vendor after you earn the Profit Sharing guild achievement.",
keywords={"Humanoid","Guild","Vendor"},
pet=280,
mopready=true,
},[[
step
Earn the Profit Sharing Guild Achievement |complete achieved(5201)
|tip In order to earn this achievement you must loot 100,000 gold from creatures.
step
Enter the building |goto Stormwind City/0 64.75,76.82 > 30 |walk
talk Shay Pressler##46602
|tip He is inside the building.
buy Guild Herald##65363 |goto Stormwind City/0 64.16,77.01
|tip You need Revered reputation with your guild in order to purchase this.
step
collect Guild Herald##65363 |n
use the Guild Herald##65363
|tip It is in your inventory.
Learn the "Guild Herald" Battle Pet |learnpet Guild Herald##282
step
_Congratulations!_
You Collected the "Guild Herald" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Page (Horde)",{
patch='40300',
source='Vendor',
description="This battle pet can only be obtained with a Horde character.",
keywords={"Humanoid","Guild","Vendor"},
pet=283,
mopready=true,
},[[
step
collect Guild Page##65362 |n
|tip This battle pet can only be obtained with a Horde character.
use the Guild Page##65362
|tip It is in your inventory.
Learn the "Guild Page" Battle Pet |learnpet Guild Page##281
step
_Congratulations!_
You Collected the "Guild Page" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Page (Alliance)",{
patch='40300',
source='Vendor',
description="This battle pet can be purchased from a guild vendor after you earn the Horde Slayer guild achievement.",
keywords={"Humanoid","Guild","Vendor"},
pet=282,
mopready=true,
},[[
step
Earn the Horde Slayer Guild Achievement |complete achieved(5031)
|tip In order to earn this achievement you must earn an honorable kill on a level 35+ Horde character of each race and class.
step
Enter the building |goto Stormwind City/0 64.75,76.82 > 30 |walk
talk Shay Pressler##46602
|tip He is inside the building.
buy Guild Page##65361 |goto Stormwind City/0 64.16,77.01
|tip You need Honored reputation with your guild in order to purchase this.
step
collect Guild Page##65361 |n
use the Guild Page##65361
|tip It is in your inventory.
Learn the "Guild Page" Battle Pet |learnpet Guild Page##280
step
_Congratulations!_
You Collected the "Guild Page" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Horde)",{
patch='40300',
source='In-GameShop',
description="This battle pet used to be available to purchase from the Bizzard store.",
keywords={"Humanoid","Blizzard","Store"},
pet=298,
mopready=true,
},[[
step
collect Moonkin Hatchling##68619 |n
|tip This battle pet could only be purchased and used on an Alliance account.
|tip This pet is no longer available to purchase.
use the Moonkin Hatchling##68619
Learn the "Moonkin Hatchling" Battle Pet |learnpet Moonkin Hatchling##298
step
_Congratulations!_
You Collected the "Moonkin Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Alliance)",{
patch='40300',
source='In-GameShop',
description="This battle pet used to be available to purchase from the Blizzard store.",
keywords={"Humanoid","Blizzard","Store"},
pet=296,
mopready=true,
},[[
step
collect Moonkin Hatchling##68618 |n
|tip This pet used to be available to purchase from the Blizzard store but is no longer available.
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Moonkin Hatchling##68618
Learn the "Moonkin Hatchling" Battle Pet |learnpet Moonkin Hatchling##296
step
_Congratulations!_
You Collected the "Moonkin Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Peddlefeet",{
patch='111100',
source='WorldEvent',
description="You can purchase this battle pet from a vendor in Stormwind City during the Love is in the Air event.",
keywords={"Humanoid","Love","is","In","The","Air"},
pet=122,
mopready=true,
},[[
step
talk Lovely Merchant##37674
buy Truesilver Shafted Arrow##22235 |goto Stormwind City/0 62.40,75.00
|tip This costs 40 Love Tokens, you can earn tokens by completing daily quests during the Love is in the Air event.
|tip You can use our Love is in the Air guides to help you complete the dailies.
step
collect Truesilver Shafted Arrow##22235 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Truesilver Shafted Arrow##22235
|tip It is in your inventory.
Learn the "Peddlefeet" Battle Pet |learnpet Peddlefeet##122
step
_Congratulations!_
You Collected the "Peddlefeet" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Rotten Little Helper",{
patch='54000',
source='Quest',
description="This battle pet has a chance to drop from a Stolen Present during the Feast of Winter Veil event.",
keywords={"Humanoid","Feast","Of","Winter","Veil"},
pet=1349,
mopready=true,
},[[
step
collect Stolen Present##116762 |n
|tip This is a reward given to you after completing the daily quest "You're A Mean One..." during the Feast of Winter Veil event.
|tip You can use our Feast of Winter Veil Daily Guides to help you complete this quest.
use the Stolen Present##116762
|tip It is in your inventory.
collect Rotten Helper Box##104317 |n
|tip This has a 1 in 65 chance to drop from the "Stolen Present", it may take a few tries to get this.
use the Rotten Helper Box##104317
|tip It is in your inventory.
Learn the "Rotten Little Helper" Battle Pet |learnpet Rotten Little Helper##1349
step
_Congratulations!_
You Collected the "Rotten Little Helper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Winter's Little Helper",{
patch='111100',
source='WorldEvent',
description="This battle pet has a 1 in 4 chance to drop from a Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Humanoid","Feast","Of","Winter","Veil"},
pet=120,
mopready=true,
},[[
step
collect Red Helper Box##21305 |n
|tip This has a 1 in 4 chance to drop from a "Gaily Wrapped Present" during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present can be found under the giant Christmas tree in Ironforge.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Red Helper Box##21305
|tip It is in your inventory.
Learn the "Winter's Little Helper" Battle Pet |learnpet Winter's Little Helper##120
step
_Congratulations!_
You Collected the "Winter's Little Helper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Argent Squire",{
patch='31000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Argent Squire.",
pet=214,
mopready=true,
},[[
step
In order to attain this pet, you will need to do Argent Tournament Daily quests.
Click here to proceed to the Pre-Quests. |confirm
Click here if you have completed the Pre-Quests. |next "done" |confirm
#include "ArgentT_Quests"
step
label "done"
Use the _Argent Tournament_ _Valiant_ section of our daily guides to complete the quest _A Champion Rises_ to receive your _Argent Squire_
collect 1 Argent Gruntling##44998
step
learnpet Argent Squire##214 |use Argent Squire##44998
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Argent Gruntling",{
patch='31000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Argent Gruntling.",
pet=216,
mopready=true,
},[[
step
This pet is only available to Horde Characters
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Curious Wolvar Pup",{
patch='32000',
source='WorldEvent',
description="This guide will walk you through obtaining the Humanoid pet: Curious Wolvar Pup.",
pet=226,
mopready=true,
},[[
step
You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Alliance_, and _Back to the Orphanage (Dalaran)_
confirm
step
collect 1 Curious Wolvar Pup##46544
|tip Back to the Orphanage (Dalaran)
step
learnpet Curious Wolvar Pup##226 |use Curious Wolvar Pup##46544 |tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Father Winter's Helper",{
patch='111100',
source='WorldEvent',
description="This guide will walk you through obtaining the Humanoid pet: Father Winter's Helper.",
pet=119,
mopready=true,
},[[
step
These pets are only availiable during the Winter Veil Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Green Helper Box##21301
step
learnpet Father Winter's Helper##119 |use Green Helper Box##21301
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Herald (Alliance)",{
patch='40300',
source='Vendor',
description="This guide will walk you through obtaining the Humanoid pet: Guild Herald.",
pet=282,
mopready=true,
},[[
step
Your guild needs have the achievement "Profit Sharing"
|tip Loot 100,000 gold from creatures |achieve 5201
step
talk Shay Pressler##46602
buy 1 Guild Herald##65363 |goto Stormwind City,64.60,76.80
step
learnpet Guild Herald##282 |use Guild Herald##65363
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Herald (Horde)",{
patch='40300',
source='Vendor',
description="This guide will walk you through obtaining the Humanoid pet: Guild Herald.",
pet=283,
mopready=true,
},[[
step
This pet model is only available to Horde characters.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Page (Alliance)",{
patch='40300',
source='Vendor',
description="This guide will walk you through obtaining the Humanoid pet: Guild Page.",
pet=280,
mopready=true,
},[[
step
Your _guild_ needs have the achievement _"Horde Slayer"_
Complete the Slayer guild achievements |achieve 5031
step
talk Shay Pressler##46602
buy 1 Guild Page##65361 |goto Stormwind City,64.60,76.80
step
learnpet Guild Page##280 |use Guild Page##65361
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Guild Page (Horde)",{
patch='40300',
source='Vendor',
description="This guide will walk you through obtaining the Humanoid pet: Guild Page.",
pet=281,
mopready=true,
},[[
step
This pet model is only available to Horde Characters.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Alliance)",{
patch='40300',
source='In-GameShop',
description="This guide will walk you through obtaining the Humanoid pet: Moonkin Hatchling.",
pet=296,
mopready=true,
},[[
step
This pet can be purchased for $10.00 on the official Blizzard Store.
|tip After purchasing, check your in-game mailbox
collect Moonkin Egg##68384
Open the Moonkin Egg |use Moonkin Egg##68384
collect Moonkin Hatchling##68618
step
learnpet Moonkin Hatchling##296 |use Moonkin Hatchling##68618
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Horde)",{
patch='40300',
source='In-GameShop',
description="This guide will walk you through obtaining the Humanoid pet: Moonkin Hatchling.",
pet=298,
mopready=true,
},[[
step
This pet model is only available to Horde characters.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Rotten Little Helper",{
patch='54000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Rotten Little Helper.",
pet=1349,
mopready=true,
},[[
step
These pets are only availiable during the Winter Veil Holiday
|tip Receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Rotten Helper Box##104317
step
learnpet Rotten Little Helper##1349 |use Rotten Helper Box##104317
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Winter's Little Helper",{
patch='111100',
source='WorldEvent',
description="This guide will walk you through obtaining the Humanoid pet: Winter's Little Helper.",
pet=120,
mopready=true,
},[[
step
These pets are only availiable during the _Winter Veil_ Holiday
|tip You receive Gaily Wrapped Presents by clicking the presents underneath the Christmas Tree in Ironforge.
use Gaily Wrapped Present##21310
collect 1 Red Helper Box##21305
step
learnpet Winter's Little Helper##120 |use Red Helper Box##21305
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Enchanted Broom",{
patch='31100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Magic","Icecrown"},
pet=213,
mopready=true,
},[[
step
collect Enchanted Broom##44982 |n
|tip This pet can only be purchased from a vendor in Icecrown with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Enchanted Broom##44982
|tip It is in your inventory.
Learn the "Enchanted Broom" Battle Pet |learnpet Enchanted Broom##213
step
_Congratulations!_
You Collected the "Enchanted Broom" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Enchanted Lantern",{
patch='40300',
source='Profession',
description="This battle pet can only be created with a Horde Enchanting recipe or purchased at the Auction House if you are Alliance.",
keywords={"Magic","Auction","House"},
pet=267,
mopready=true,
},[[
step
collect Enchanted Lantern##67274 |n
|tip This pet can only be created with a Horde Enchanting recipe.
|tip If you do not have an Horde character you can purchase this from the Auction House.
use the Enchanted Lantern##67274
|tip It is in your inventory.
Learn the "Enchanted Lantern" Battle Pet |learnpet Enchanted Lantern##267
step
_Congratulations!_
You Collected the "Enchanted Lantern" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Festival Lantern",{
patch='43000',
source='WorldEvent',
description="This battle pet can be only be purchased with a Horde character during the Lunar Festival event.",
keywords={"Magic","Lunar","Festival"},
pet=342,
mopready=true,
},[[
step
collect Festival Lantern##74611 |n
|tip This battle pet can be purchased from a vendor with a Horde character during the Lunar Festival event.
|tip If you do not have a Horde character you can purchase this pet from the Auction House.
use the Festival Lantern##74611
|tip It is in your inventory.
Learn the "Festival Lantern" Battle Pet |learnpet Festival Lantern##342
step
_Congratulations!_
You Collected the "Festival Lantern" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Legs",{
patch='41000',
source='WorldEvent',
description="This battle pet is a reward for completing Children's Week Quests.",
keywords={"Magic","Children's","Week"},
pet=308,
mopready=true,
},[[
step
collect Legs##69648 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Legs##69648
|tip It will be in your mailbox.
Learn the "Legs" Battle Pet |learnpet Legs##308
step
_Congratulations!_
You Collected the "Legs" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Lunar Lantern",{
patch='43000',
source='WorldEvent',
description="This battle pet can be purchased from a vendor in Moonglade during the Lunar Festival event.",
keywords={"Magic","Lunar","Festival"},
pet=341,
mopready=true,
},[[
step
talk Valadar Starsong##15864
buy Lunar Lantern##74610 |goto Moonglade/0 54.00,35.00
|tip This costs 50 "Coin of Ancestry", which you can earn by completing quests during the Lunar Festival event.
|tip You can use our Lunar Festival guides to help you complete quests.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Lunar Lantern##74610 |n
use the Lunar Lantern##74610
|tip It is in your inventory.
Learn the "Lunar Lantern" Battle Pet |learnpet Lunar Lantern##341
step
_Congratulations!_
You Collected the "Lunar Lantern" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Magic Lamp",{
patch='40300',
source='Profession',
description="This battle pet can be created if you have a Cataclysm Enchanting level of 75 or purchased from the Auction House.",
keywords={"Magic","Auction","House"},
pet=292,
mopready=true,
},[[
step
collect Magic Lamp##67275 |n
|tip You can create this pet if you have a Cataclysm Enchanting level of 75 or you can purchase it from the Auction House.
|tip You can purchase the formula to create this pet for 20 Hypnotic Dust from any Enchanting vendor in all of the major Alliance cities.
use the Magic Lamp##67275
|tip It is in your inventory.
Learn the "Magic Lamp" Battle Pet |learnpet Magic Lamp##292
step
_Congratulations!_
You Collected the "Magic Lamp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Shimmering Wyrmling",{
patch='32000',
source='Vendor',
description="This battle pet can be purchased from a vendor in Icecrown.",
keywords={"Magic","Icecrown"},
pet=229,
mopready=true,
},[[
step
You Must Have Exalted Reputation With the Silver Covenant in Order to Purchase This Pet |complete rep("The Silver Covenant")>=Exalted
|tip You can use our Silver Covenant Daily Guide to help you gain Exalted rep.
|tip If you do not want to grind rep you can purchase this pet from the Auction House.
step
Enter the tent |goto Icecrown/0 75.90,20.00 < 30 |walk
talk Hiren Loresong##34881
|Tip He is inside the tent.
buy Shimmering Wyrmling##46821 |goto Icecrown/0 76.14,19.58
|tip This costs 40 Champion's Seals.
step
collect Shimmering Wyrmling##46821 |n
use the Shimmering Wyrmling##46821
|tip It is in your inventory.
Learn the "Shimmering Wyrmling" Battle Pet |learnpet Shimmering Wyrmling##229
step
_Congratulations!_
You Collected the "Shimmering Wyrmling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Willy",{
patch='21000',
source='WorldEvent',
description="This battle pet is a reward for completing Children's Week Quests.",
keywords={"Magic","Children's","Week"},
pet=157,
mopready=true,
},[[
step
collect Sleepy Willy##32617 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Sleepy Willy##32617
|tip It will be in your mailbox.
Learn the "Willy" Battle Pet |learnpet Willy##157
step
_Congratulations!_
You Collected the "Willy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Enchanted Broom",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Magic pet: Enchanted Broom.",
pet=213,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Enchanted Broom##44982
|tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Enchanted Broom##213 |use Enchanted Broom##44982
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Enchanted Lantern",{
patch='40300',
source='Profession',
description="This guide will walk you through obtaining the Magic pet: Enchanted Lantern.",
pet=267,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Enchanted Lantern##67274
|tip This pet must be bought with a Horde character or through the Auction House.
step
label "bought"
learnpet Enchanted Lantern##267 |use Enchanted Lantern##67274
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Festival Lantern",{
patch='43000',
source='WorldEvent',
description="This guide will walk you through obtaining the Magic pet: Festival Lantern.",
pet=342,
mopready=true,
},[[
step
This pet can only be obtained during the Lunar Festival event.
collect 50 Coin of Ancestry##21100
Click here for directions to the vendor |confirm |next "vendor"
Click here for our guide on getting the Coins of Ancestry |confirm |next "coins"
step
label "coins"
Continuing...
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Main Questline"
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path"
step
label "vendor"
talk Valadar Starsong##15864
buy Festival Lantern##74611 |goto Moonglade,54.00,35.00
step
learnpet Festival Lantern##342 |use Festival Lantern##74611
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Lunar Lantern",{
patch='43000',
source='WorldEvent',
description="This guide will walk you through obtaining the Magic pet: Lunar Lantern.",
pet=341,
mopready=true,
},[[
step
This pet can only be obtained during the Lunar Festival event.
collect 50 Coin of Ancestry##21100
Click here for directions to the vendor |confirm |next "vendor"
Click here for our guide on getting the Coins of Ancestry |confirm |next "coins"
step
label "coins"
Continuing...
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Main Questline"
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path"
step
label "vendor"
talk Valadar Starsong##15864
buy Lunar Lantern##74610 |goto Moonglade,54.00,35.00
step
learnpet Lunar Lantern##341 |use Lunar Lantern##74610
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Magic Lamp",{
patch='40300',
source='Profession',
description="This guide will walk you through obtaining the Magic pet: Magic Lamp.",
pet=292,
mopready=true,
},[[
step
Skipping to the next step |next |only if skill("Enchanting")<525
talk Jessara Cordell##1318 |only if skill("Enchanting")>=525
buy 1 Formula: Magic Lamp##67312 |goto Stormwind City,53.00,74.20 |only if skill("Enchanting")>=525
Click here if you do not wish to make this pet yourself |confirm |only if skill("Enchanting")>=525
step
You can either _buy_ this _pet_ from the _Auction House_ or make it:
buy 1 Magic Lamp##67275 |next "bought"
Click here to make this pet |confirm
step
You can either _buy_ these _materials_ from the _ Auction House_ or _disenchant gear_ to obtain them:
collect 8 Heavenly Shard##52721+
collect 4 Greater Celestial Essence##52719+
collect 1 Maelstrom Crystal##52722
Click here if you have the means to farm these materials yourself. |confirm
|next "farmed" |only if default
step
Farm Maelstrom Crystals from the dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
Breaking down Maelstrom Crystals will net you 2 Heavenly Shards.
Use _Maelstrom Shatter_ on Maelstrom Crystals to attain Heavenly Shards. |cast Maelstorm Shatter##104698
collect 8 Heavenly Shard##52721+
step
Farm Maelstrom Crystals from the dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
collect 1 Maelstrom Crystal##52722
step
Cataclysm ranked green _Weapons_ will net you Greater Celestial Essences.
Farm Greater Celestial Essence from the normal enemies in dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
collect 4 Greater Celestial Essence##52719+
step
label "farmed"
Have an _Enchanter make this pet_ for you
|tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(93843)==false
create Magic Lamp##93843,Enchanting,1 total |only if _G.IsSpellKnown(93843)==true
collect 1 Magic Lamp##67275
step
label "bought"
learnpet Magic Lamp##292 |use Magic Lamp##67275
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Shimmering Wyrmling",{
patch='32000',
source='Vendor',
description="This guide will walk you through obtaining the Magic pet: Shimmering Wyrmling.",
pet=229,
mopready=true,
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds_ and _The Silver Covenant pre-quests_ and _dailies_.
_Exalted_ with _The Silver Covenant_ |complete rep("The Silver Covenant")>=Exalted
earn 50 Champion's Seal##241
confirm
step
label "buy"
talk Hiren Loresong##34881
buy 1 Shimmering Wyrmling##46821 |goto Icecrown,76.20,19.60
step
learnpet Shimmering Wyrmling##229 |use Shimmering Wyrmling##46821
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Clockwork Gnome",{
patch='40100',
source='Profession',
description="This battle pet is obtained by finding and solving the Clockwork Gnome rare Archaeology Dwarf artifact.",
keywords={"Mechanical","Archaeology"},
pet=277,
mopready=true,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Clockwork Gnome##64372 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Clockwork Gnome artifact.
|tip When you discover the Clockwork Gnome artifact it will show up in the Drawf artifacts tab in your archaeology book.
|tip This is a rare artifact that takes 100 Dwarf Archaeology Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Clockwork Gnome##64372
|tip It is in your inventory.
Learn the "Clockwork Gnome" Battle Pet |learnpet Clockwork Gnome##277
step
_Congratulations!_
You Collected the "Clockwork Gnome" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Clockwork Rocket Bot",{
patch='23000',
source='WorldEvent',
description="This battle pet has a chance to drop from a Stolen Present during the Feast of Winter Veil event.",
keywords={"Mechanical","Feast","Of","Winter","Veil"},
pet=191,
mopready=true,
},[[
step
collect Stolen Present##116762 |n
|tip This is a reward given to you after completing the daily quest "You're A Mean One..." during the Feast of Winter Veil event.
|tip You can use our Feast of Winter Veil Daily Guides to help you complete this quest.
use the Stolen Present##116762
|tip It is in your inventory.
collect Clockwork Rocket Bot##34425 |n
|tip This has a 1 in 65 chance to drop from the "Stolen Present", it may take a few tries to get this.
use the Clockwork Rocket Bot##34425
|tip It is in your inventory.
Learn the "Clockwork Rocket Bot" Battle Pet |learnpet Clockwork Rocket Bot##191
step
_Congratulations!_
You Collected the "Clockwork Rocket Bot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Mechanopeep",{
patch='31100',
source='Vendor',
description="This battle pet is sold by a vendor in Icecrown.",
keywords={"Mechanical","icecrown"},
pet=215,
mopready=true,
},[[
step
Enter the tent |goto Icecrown/0 75.90,20.00 < 30 |walk
talk Rillie Spindlenut##33650
|tip She is inside the tent.
collect Mechanopeep##45002 |goto Icecrown/0 76.51,19.65
|tip Before you can purchase this pet you must Champion a Gnome character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Gnome character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Mechanopeep##45002 |n
use the Mechanopeep##45002
|tip It is in your inventory.
Learn the "Mechanopeep" Battle Pet |learnpet Mechanopeep##215
step
_Congratulations!_
You Collected the "Mechanopeep" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Clockwork Gnome",{
patch='40100',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: Clockwork Gnome.",
pet=277,
mopready=true,
},[[
step
This pet is a rare Archaeology "Dwarf" solve
talk Harrison Jones##44238 |goto Stormwind City,85.80,25.90 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your world map, find dig sites in Eastern Kingdoms, and go to them .
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Dwarf"_ tab called _"Clockwork Gnome"_. Solve this Archaeology puzzle
collect 1 Clockwork Gnome##64372
step
learnpet Clockwork Gnome##277 |use Clockwork Gnome##64372
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Clockwork Rocket Bot",{
patch='23000',
source='WorldEvent',
description="This guide will walk you through obtaining the Mechanical pet: Clockwork Rocket Bot.",
pet=191,
mopready=true,
},[[
step
This pet can only be obtained during the Feast of Winter Veil Event.
confirm always
step
talk Strange Snowman##13636
accept You're a Mean One...##7043 |goto Hillsbrad Foothills,42.30,41.10
step
kill The Abominable Greench##54499
collect Stolen Treats##17662 |q 7043/2 |goto Hillsbrad Foothills,43.60,39.00
|tip They are the bags on the ground behind the Abominable Greench.
Free Metzen the Reindeer. |q 7043/1 |goto Hillsbrad Foothills,43.60,39.00
|tip After you defeat The Abominable Greench Metzen is freed.
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge,33.70,67.30
accept A Smokywood Pastures' Thank You!##7045 |goto Ironforge,33.70,67.30
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto Ironforge 33.10,65.50
step
learnpet Clockwork Rocket Bot##191
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\De-Weaponized Mechanical Companion",{
patch='40300',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: De-Weaponized Mechanical Companion.",
pet=262,
mopready=true,
},[[
step
Skipping to the next step |next "aa" |only if skill("Engineering")<475
Click here if you do not wish to learn this schematic |next |only if skill("Engineering")>=475
step
talk Oglethorpe Obnoticus##7406 |only if skill("Engineering")>=475
learn De-Weaponized Mechanical Companion##84413 |goto The Cape of Stranglethorn,43.00,72.00 |only if skill("Engineering")>=475
step
label "bb"
You can either buy this from the Auction House or farm for it:
collect 1 De-Weaponized Mechanical Companion##60216 |next "bought"
_Click here_ to _farm_ for this _pet_ |confirm
step
You can either buy these from the Auction House or farm for them:
collect 12 Obsidium Bar##54849
collect 4 Handful of Obsidium Bolts##60224
collect 8 Electrified Ether##67749
collect 2 Jasper##52182
step
map Deepholm
path	59.00,26.50	61.60,20.40	64.30,14.90
path	67.60,20.80	68.90,23.10	65.90,23.50
path	62.50,23.70	62.00,29.60
collect 34 Obsidium Ore##53038
collect 2 Jasper##52182
|tip These can be very hard to come by.
collect 8 Volatile Air##52328
|tip These can be very hard to come by.
Click here to continue by just buying the Jasper and/or Volatile Air.|confirm
step
create Obsidium Bar##54849,Mining,17 total |goto Stormwind City/0 63.00,37.00
confirm
step
create Handful of Obsidium Bolts##60216,Engineering,2 total
step
talk Auctioneer Chilton##8670
buy 2 Jasper##52182 |goto Stormwind City/0 60.70,70.80 |or 2
buy 8 Volatile Air##52328 |goto Stormwind City/0 60.70,70.80 |or 2
buy 8 Electrified Ether##67749 |goto Stormwind City/0 60.70,70.80 |or 2 |next "aa"
|next |only if default
step
create Electrified Ether##94748,Engineering,4 total
step
label "aa"
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(84413)==false
create De-Weaponized Mechanical Companion##84413,Engineering,1 total |only if knowspell(84413)==true
collect 1 De-Weaponized Mechanical Companion##60216
step
label "bought"
learnpet De-Weaponized Mechanical Companion##262 |use De-Weaponized Mechanical Companion##60216
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Lifelike Toad",{
patch='111100',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: Lifelike Toad.",
pet=95,
mopready=true,
},[[
step
_Skipping_ to the next _step_ |next |only if skill("Engineering")<265
This is a _very difficult_ _schematic_ to obtain, but it is _doable_  |next "a" |only if skill("Engineering")>265 |next
step
You will have to go to _Blackwing Lair_ and farm _Nefarian_ every week
|tip He has a .8% chance to drop this item so you may be farming for a while |only if skill("Engineering")>265
kill Nefarian##11583 |only if skill("Engineering")>265
collect 1 Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
use Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
step
label "a"
You can either buy this from the Auction House or farm for it:
collect 1 Lifelike Mechanical Toad##15996 |next "bought"
Click here to _farm_ for this _pet_ |confirm
step
You can either buy these items from the Auction House or farm for them:
collect 1 Living Essence##12803
collect 4 Thorium Widget##15994
collect 1 Gold Power Core##10558
collect 1 Rugged Leather##8170
Click here to farm your own materials. |confirm
|next "b"
step
map Swamp of Sorrows
path	10.20,34.00	15.20,30.60	22.30,38.50
path	24.80,57.30	21.80,63.00	18.10,70.90
path	15.50,65.30	16.70,56.60	17.10,49.60
Follow the provided path, mining _Truesilver_ and _Thorium_ ore.
collect 12 Thorium Ore##10620
step
map Burning Steppes
path	67.50,63.50	69.60,62.00	77.80,58.00
path	80.10,49.20	80.10,41.00	81.60,30.30
path	72.40,24.60	65.70,26.60	64.20,40.20
path	62.40,60.20
Follow the provided path, mining _Gold_ ore.
collect 1 Gold Ore##2776
step
talk Auctioneer Chilton##8670
buy 4 Runecloth##14047 |goto Stormwind City/0 60.70,70.80
step
label "b"
Have an _Engineer_ make this _pet_ for you
|tip Ask in your guild or in trade chat |only if knowspell(19793)==false
create Lifelike Mechanical Toad##19793,Engineering,1 total |only if knowspell(19793)==true
collect 1 Lifelike Mechanical Toad##15996
step
label "bought"
learnpet Lifelike Toad##95 |use Lifelike Mechanical Toad##15996
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Lil' Smoky",{
patch='111100',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: Lil' Smoky.",
pet=86,
mopready=true,
},[[
step
Skipping to the next step |next "lazy" |only if skill("Engineering")<205
Click here if you would like to farm the pattern. |confirm |only if skill("Engineering")>=205
Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=205
step
kill Peacekeeper Security Suit##6230+,Arcane Nullifier X-21##6232+,Crowd Pummeler 9-60##6229+
collect 1 Schematic: Lil' Smoky##11827 |n
learn Lil' Smoky##15633 |goto Gnomeregan,30.20,84.40  |use Schematic: Lil' Smoky##11827
only if skill("Engineering")>=205
step
label "lazy"
You can either buy this from the Auction House or farm for it:
collect 1 Lil' Smoky##11826 |next "bought"
Click here to farm the materials for this pet. |confirm
step
You can either buy these from the Auction House or farm for them:
collect 1 Core of Earth##7075
collect 2 Gyrochronatom##4389
collect 1 Fused Wiring##7191
collect 2 Mithril Bar##3860
collect 1 Truesilver Bar##6037
|next "makeit"
Click here for the raw materials needed to create the above items. |confirm
step
Use your mining ability inside of the cave here.
collect 6 Copper Ore##2770 |goto Elwynn Forest 39.00,78.30
step
Mine inside of the cave and collect the ore needed.
collect 1 Gold Ore##2776 |goto The Cape of Stranglethorn/0 65.00,29.60
collect 2 Iron Ore##2772 |goto The Cape of Stranglethorn/0 65.00,29.60
step
map Burning Steppes
path	69.60,62.00	74.60,60.10	80.50,59.30
path	79.20,46.50	73.70,43.50	72.20,50.10
path	66.90,49.50
Follow the path provided and collect _Mithril Ore_.
collect 2 Mithril Ore##3858
step
map Swamp of Sorrows
path	10.20,34.00	15.20,30.60	22.30,38.50
path	24.80,57.30	21.80,63.00	18.10,70.90
path	15.50,65.30	16.70,56.60	17.10,49.60
Follow the provided path, mining _Truesiler Ore_.
collect 1 Truesilver Ore##7911
step
create Truesilver Bar##10098,Mining,1 total |goto Stormwind City/0 62.90,37.00
step
create Gold Bar##3308,Mining,1 total
step
create Mithril Bar##10097,Mining,2 total
step
create Copper Bar##2657,Mining,6 total
step
talk Auctioneer Chilton##8670
buy 1 Core of Earth##7075 |goto Stormwind City/0 61.00,70.80
buy 2 Essence of Fire##7078 |goto Stormwind City/0 61.00,70.80
step
label "makeit"
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(15633)==false
create Lil' Smoky##15633,Engineering,1 total |only if knowspell(15633)==true
collect 1 Lil' Smoky##11826
step
label "bought"
learnpet Lil' Smoky##86 |use Lil' Smoky##11826
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Mechanical Squirrel",{
patch='111100',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: Mechanical Squirrel.",
pet=39,
mopready=true,
},[[
step
Routing to the proper section. |next |only if skill("Engineering")>=75
Rouoting to the proper section. |next "buy" |only if skill("Engineering")<=75
step
To get this _recipe_ you can fish in _Orgrimmar, Stormwind City, Elwynn Forest, Ironforge, Durotar, Northern Barrens, and Wailing Caverns_, or you can kill any mob in the world _under level 16_ |only if skill("Engineering")>=75
collect 1 Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
use Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
Click here if _you don't want to get the recipe_ yourself |confirm
only if skill("Engineering")>=75
step
label "buy"
You can either buy this item from the Auction House or farm for it:
buy 1 Mechanical Squirrel Box##4401 |next "bought"
Click here to _make_ the _Mechanical Squirrel_ |confirm
step
You can either buy these items from the Auction House or farm for them:
collect 1 Handful of Copper Bolts##4359
collect 1 Copper Bar##2840
collect 2 Malachite##774
Click here if you want to farm the materials needed for the above items. |confirm
|next "make"
step
Use your mining ability inside of the cave here.
collect 2 Copper Ore##2770 |goto Elwynn Forest 39.00,78.30
collect 2 Malachite##774 |goto Elwynn Forest 39.00,78.30
step
create Handful of Copper Bolts##3922,Engineering,1 total |goto Stormwind City/0 63.00,37.00
step
create Copper Bar##2657,Mining,1 total
step
label "make"
Have an _Engineer_ make this pet for you
|tip Ask in your guild or in trade chat |only if knowspell(3928)==false
create Mechanical Squirrel Box##3928,Engineering,1 total |only if knowspell(3928)==true
collect 1 Mechanical Squirrel Box##4401
step
label "bought"
learnpet Mechanical Squirrel##39 |use Mechanical Squirrel Box##4401
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Mechanopeep",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Mechanical pet: Mechanopeep.",
pet=215,
mopready=true,
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
|tip After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
|tip You cannot complete this section if you are a Gnome.
confirm always
step
label "pet"
talk Ambrose Boltspark##33335
accept Valiant Of Gnomeregan##13704 |goto Icecrown,76.50,19.80
turnin Valiant Of Gnomeregan##13704 |goto Icecrown,76.50,19.80
accept The Valiant's Charge##13715 |goto Icecrown,76.50,19.80
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
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
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13747 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13748/1 |goto Howling Fjord,42.20,19.70
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13852 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman##33438 |q 13852/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout##33550 |q 13852/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant##33429 |q 13852/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.
|tip Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13749/1 |goto Icecrown 44.30,54.20
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto Icecrown 76.20,20.50
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
|tip If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto Icecrown 75.30,18.50
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
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
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.
|tip It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Ambrose Boltspark##33335
turnin The Valiant's Charge##13715 |goto Icecrown 76.50,19.80
accept The Valiant's Challenge##13723 |goto Icecrown 76.50,19.80
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto Icecrown 71.90,22.50
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.
|tip Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.
|tip Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.
|tip When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.
|tip Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13723/1 |goto Icecrown 68.60,21.00
step
talk Ambrose Boltspark##33335
turnin The Valiant's Challenge##13723 |goto Icecrown 76.50,19.80
step
Become a Champion of Gnomeregan |achieve 2779
earn 40 Champion's Seal##241+
If you don't meet both of these requirements go back to step 1 of the guide.
step
talk Rillie Spindlenut##33650
buy 1 Mechanopeep##45002 |goto Icecrown,76.40,19.60
step
learnpet Mechanopeep##215 |use Mechanopeep##45002
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Personal World Destroyer",{
patch='40300',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: Personal World Destroyer.",
pet=261,
mopready=true,
},[[
step
Routing you to the proper section. |next |only if skill("Engineering")<475 |next
Routing you to the proper section. |only if skill("Engineering")>=475
step
talk Nixx Sprocketspring##8126 |only if skill("Engineering")>=475
learn Personal World Destroyer##84412 |goto Tanaris,52.20,28.20 |only if skill("Engineering")>=475
step
label "lazy"
You can either buy this from the Auction House or farm for it:
collect 1 Personal World Destroyer##59597 |next "bought"
Click here to gather the materials for this pet. |confirm
step
You can either buy these from the Auction House or farm for them:
collect 10 Obsidium Bar##54849
collect 8 Handful of Obsidium Bolts##60224
collect 8 Electrified Ether##67749
step
map Mount Hyjal
path	47.80,53.50	54.60,52.30	58.60,55.00
path	64.50,50.90	60.00,60.50	52.30,56.70
Follow the provided path and mine Obsidium Ore.
collect 36 Obsidium Ore##53038
step
buy 8 Volatile Air##52328
step
create Obsidium Bar##84038,Mining,18 total |goto Stormwind City/0 63.00,37.00
step
create Handful of Obsidium Bolts##84403,Engineering,4 total
step
create Electrified Ether##94748,Engineering,4 total
step
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(84412)==false
create Personal World Destroyer##84412,Engineering,1 total |only if knowspell(84412)==true
collect 1 Personal World Destroyer##59597
step
label "bought"
learnpet Personal World Destroyer##261 |use Personal World Destroyer##59597
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Pet Bombling",{
patch='111100',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: Pet Bombling.",
pet=85,
mopready=true,
},[[
step
Click here if you want to farm the schematic for this pet. |only if skill("Engineering")<205 |next
Click here if you do not want to get this schematic |next "bluh" |confirm |only if skill("Engineering")>=205
step
Kill Mekgineer Thermaplugg |only if skill("Engineering")>=205
collect 1 Schematic: Pet Bombling##11828 |n |only if skill("Engineering")>=205
learn Pet Bombling##15628 |goto Gnomeregan,31.20,31.00 |use Schematic: Pet Bombling##11828 |only if skill("Engineering")>=205
step
label "bluh"
You can either buy this from the Auction House or farm for it:
collect 1 Pet Bombling##11825 |next "bought"
Click here to make this pet |confirm
step
You can either buy these from the Auction House or farm for them:
collect 1 Big Iron Bomb##4394
collect 1 Heart of Fire##7077
collect 1 Fused Wiring##7191
collect 6 Mithril Bar##3860
|next |only if default
Click here if you're going to farm your own materials |confirm
step
map Burning Steppes
path	69.60,62.00	74.60,60.10	80.50,59.30
path	79.20,46.50	73.70,43.50	72.20,50.10
path	66.90,49.50
Follow the path provided and collect _Mithril Ore_.
collect 6 Mithril Ore##3858
step
collect 6 Copper Ore##2770 |goto Elwynn Forest 39.00,81.20
step
Use your _Mining ability_ inside the Crystalvein Mine.
collect 3 Iron Ore##2772 |goto The Cape of Stranglethorn 65.10,27.70
collect 3 Heavy Stone##2838 |goto The Cape of Stranglethorn 65.10,27.70
collect 1 Silver Ore##2775 |goto The Cape of Stranglethorn 65.10,27.70
step
create Mithril Bar##10097,Mining,6 total |goto Stormwind City/0 62.90,37.00
step
create Iron Bar##3307,Mining,3 total
step
create Silver Bar##2658,Mining,1 total
step
create Copper Bar##2657,Mining,6 total
step
Have an _Engineer create this pet_ for you
|tip Ask in your guild or in Trade Chat |only if knowspell(15628)==false
create Pet Bombling##15628,Engineering,1 total |only if knowspell(15628)==true
collect 1 Pet Bombling##11825
step
label "bought"
learnpet Pet Bombling##85 |use Pet Bombling##11825
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Tranquil Mechanical Yeti",{
patch='111100',
source='Profession',
description="This guide will walk you through obtaining the Mechanical pet: Tranquil Mechanical Yeti.",
pet=116,
mopready=true,
},[[
step
The recipe to make this was removed with the quest line back in 2014.
Old Engineers may still have this recipe you can either find one of these or purchase it from the AH.
confirm
step
Click here to _buy_ the _Tranquil Mechanical Yeti_ from the AH |next "AH Yeti"
Click here to _make_ the _Tranquil Mechanical Yeti_ |next "make"
|confirm
step
label "AH Yeti"
Go to one of your main cities and talk to an Auctioneer
|tip These may be somewhat expensive as the recipe has been removed from the game.
buy 1 Tranquil Mechanical Yeti##21277 |n
learnpet Tranquil Mechanical Yeti##116 |use Tranquil Mechanical Yeti##21277
|next "Tranquil Yeti"
step
label "make"
You can buy these items from the Auction House
collect 1 Cured Rugged Hide##15407
collect 4 Thorium Widget##15994
collect 2 Globe of Water##7079
collect 2 Truesilver Transformer##18631
collect 1 Gold Power Core##10558
step
Have an Engineer make this pet for you
|tip Ask in your guild or in trade chat |only if knowspell(26011)==false
create Tranquil Mechanical Yeti##26011,Engineering,1 total |only if knowspell(26011)==true
collect 1 Tranquil Mechanical Yeti##21277 |n
learnpet Tranquil Mechanical Yeti##116 |use Tranquil Mechanical Yeti##21277
|next "Tranquil Yeti"
step
label "Tranquil Yeti"
Congratulations you are now the proud owner of a _Tranquil Mechanical Yeti_
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Crawling Claw",{
patch='40300',
source='Profession',
description="This battle pet is obtained by finding and solving the Crawling Claw rare Archaeology Tol'vir artifact.",
keywords={"Undead","Archaeology"},
pet=264,
mopready=true,
},[[
step
talk Zidormi##141489
Select _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the past |complete ZGV.InPhase("Old Uldum") |goto Uldum/0 56.02,35.14
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in Uldum.
|tip You must have an Archaeology skill level of 450 in order for dig sites to appear in Uldum.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Crawling Claw##60847 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Crawling Claw artifact.
|tip When you discover the Crawling Claw artifact it will show up in the Tol'Vir tab in your archaeology book.
|tip This is a rare artifact that takes 150 Tol'vir Archaeology Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Crawling Claw##60847
|tip It is in your inventory.
Learn the "Crawling Claw" Battle Pet |learnpet Crawling Claw##264
step
_Congratulations!_
You Collected the "Crawling Claw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Creepy Crate",{
patch='42200',
source='WorldEvent',
description="This battle pet is a reward for completing the quest The Creepy Crate during the Hallow's End event.",
keywords={"Undead","Hallow's","End"},
pet=321,
mopready=true,
},[[
step
collect Creepy Crate##71076 |n
|tip This pet is rewarded to you after you complete the quest "The Creepy Crate" during the Hallow's End event.
|tip You can use our Hallow's End Quest guide to help you complete the quest chain.
use the Creepy Crate##71076
|tip It is in your inventory.
Learn the "Creepy Crate" Battle Pet |learnpet Creepy Crate##321
step
_Congratulations!_
You Collected the "Creepy Crate" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Fossilized Hatchling",{
patch='40100',
source='Profession',
description="This battle pet is obtained by finding and solving the Fossilized Hatchling rare Archaeology Fossil artifact.",
keywords={"Undead","Archaeology"},
pet=266,
mopready=true,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Fossilized Hatchling##60955 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Fossilized Hatchling artifact.
|tip When you discover the Fossilized Hatchling artifact it will show up in the fossils tab in your archaeology book.
|tip This is a rare artifact that takes 85 Fossil Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Fossilized Hatchling##60955
|tip It is in your inventory.
Learn the "Fossilized Hatchling" Battle Pet |learnpet Fossilized Hatchling##266
step
_Congratulations!_
You Collected the "Fossilized Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Sen'jin Fetish",{
patch='31100',
source='Vendor',
description="This battle pet is Horde exclusive but Alliance characters can purchase it from the Auction House.",
keywords={"Undead","Icecrown"},
pet=218,
mopready=true,
},[[
step
collect Sen'jin Fetish##45606 |n
|tip This pet can only be purchased from a vendor in Icecrown with a Horde character.
|tip You will have to purchase this from the Auction House if you are Alliance.
use the Sen'jin Fetish##45606
|tip It is in your inventory.
Learn the "Sen'jin Fetish" Battle Pet |learnpet Sen'jin Fetish##218
step
_Congratulations!_
You Collected the "Sen'jin Fetish" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Voodoo Figurine",{
patch='41000',
source='Profession',
description="This battle pet is obtained by finding and solving the Voodoo Figurine rare Archaeology Troll artifact.",
keywords={"Undead","Archaeology"},
pet=310,
mopready=true,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Voodoo Figurine##69824 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Voodoo Figurine artifact.
|tip When you discover the Voodoo Figurine artifact it will show up in the Troll tab in your archaeology book.
|tip This is a rare artifact that takes 100 Troll Archaeology Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Voodoo Figurine##69824
|tip It is in your inventory.
Learn the "Voodoo Figurine" Battle Pet |learnpet Voodoo Figurine##310
step
_Congratulations!_
You Collected the "Voodoo Figurine" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Crawling Claw",{
patch='40300',
source='Profession',
description="This guide will walk you through obtaining the Undead pet: Crawling Claw.",
pet=264,
mopready=true,
},[[
step
This pet is a rare Archaeology "Tol'vir" solve
talk Harrison Jones##44238 |goto Stormwind City,85.80,25.90 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
Reach 525 Archaeology Skill |skil Archaeology,525
step
Open your world map, find dig sites in Kalimdor, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Crawling Claw"_. Solve this Archaeology puzzle
collect 1 Crawling Claw##60847
step
learnpet Crawling Claw##264 |use Crawling Claw##60847
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Creepy Crate",{
patch='42200',
source='WorldEvent',
description="The Undead pet: Creepy Crate can be obtained by completing the Creepy Crate questline during the Hallow's End event.",
condition_suggested=function() return isevent("Hallow's End") end,
pet=321,
mopready=true,
},[[
step
Wait for the Hallow's End Event to Start |complete isevent("Hallow's End")
|tip Hallow's End runs from October 18th to November 1st.
leechsteps "Events Guides\\Hallow's End\\Hallow's End Quests"
step
use the Creepy Crate##71076
learnpet Creepy Crate##321
step
_Congratulations!_
You Collected the "Creepy Crate" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Fossilized Hatchling",{
patch='40100',
source='Profession',
description="This guide will walk you through obtaining the Undead pet: Fossilized Hatchling.",
pet=266,
mopready=true,
},[[
step
This pet is a rare Archaeology "Fossil" solve
talk Harrison Jones##44238 |goto Stormwind City,85.80,25.90 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
confirm |only if default
step
Open your world map, find dig sites in Kalimdor and Eastern Kingdoms, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Fossilized Hatchling"_. Solve this Archaeology puzzle
collect 1 Fossilized Hatchling##60955
step
learnpet Fossilized Hatchling##266 |use Fossilized Hatchling##60955
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Macabre Marionette",{
patch='32200',
source='WorldEvent',
description="This guide will walk you through obtaining the Undead pet: Macabre Marionette.",
pet=1351,
mopready=true,
},[[
step
You can only obtain this pet during the Day of the Dead event, which only runs for one weekend a year.
confirm
step
talk Innkeeper Allison##6740
buy Ice Cold Milk##1179 |goto Stormwind City 60.40,75.20
step
talk Erika Tate##5483
buy Simple Flour##30817 |goto Stormwind City 77.60,53.10
step
talk Chapman##34382
buy Orange Marigold##46718 |goto Dalaran/1 34.70,39.10
|tip You may want to buy a few of these due to their short duration.
buy Recipe: Bread of the Dead##46710 |goto Dalaran/1 34.70,39.10
step
Use the recipe in your bags to learn the Bread of the Dead. |use Recipe: Bread of the Dead##46710
learn Bread of the Dead##65454
step
#include "cooking_fire"
create 1 Bread of the Dead##65454,Cooking,1 total
step
talk Cheerful Dalaran Spirit##35256
accept The Grateful Dead##14166 |goto Dalaran/1 34.50,38.50
turnin The Grateful Dead##14166 |goto Dalaran/1 34.50,38.50
step
Use the Macabre Marionette in your bags. |use Macabre Marionette##46831
learnpet Macabre Marionette##1351
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Sen'jin Fetish",{
patch='31100',
source='Vendor',
description="This guide will walk you through obtaining the Undead pet: Sen'jin Fetish.",
pet=218,
mopready=true,
},[[
step
#include "auctioneer"
buy 1 Sen'jin Fetish##45606
tip This pet must be bought with a Horde character or through the Auction House.
step
learnpet Sen'jin Fetish##218 |use Sen'jin Fetish##45606
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Voodoo Figurine",{
patch='41000',
source='Profession',
description="This guide will walk you through obtaining the Undead pet: Voodoo Figurine.",
pet=310,
mopready=true,
},[[
step
This pet is a _rare Archaeology "Troll"_ solve
talk Harrison Jones##44238 |goto Stormwind City,85.80,25.90 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your _world map_, find dig sites in _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
|tip Click the Archaeology Fragments that spawn on the ground
|tip You're looking for a rare artifact in the "Troll" tab called "Voodoo Figurine". Solve this Archaeology puzzle
collect 1 Voodoo Figurine##69824
step
learnpet Voodoo Figurine##310 |use Voodoo Figurine##69824
]])
