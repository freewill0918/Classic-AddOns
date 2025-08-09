local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Anglers",{
mopready=true,
description="\nThis guide will walk you through becoming exalted with The Anglers faction.",
achieveid={6547,7614},
patch='50004',
},[[
step
Earn Exalted with "The Anglers" Reputation |complete rep("The Anglers")==Exalted
|tip Refer to the dailies guide to accomplish this.
|loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Anglers Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials",{
mopready=true,
description="\nThis guide will walk you through becoming exalted with The August Celestials faction.",
achieveid={6543},
patch='50004',
},[[
step
Earn Exalted with the "August Celestials" Reputation |complete rep("August Celestials")==Exalted
|tip Refer to the dailies guide to accomplish this.
|loadguide "Daily Guides\\Mists of Pandaria Dailies\\The August Celestials Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent",{
mopready=true,
description="\nThis guide will walk you through becoming exalted with The Order of the Cloud Serpent faction.",
achieveid={6550},
patch='50004',
},[[
step
Earn Exalted with "The Order of the Cloud Serpent" Reputation |complete rep("Order of the Cloud Serpent")==Exalted
|tip Refer to the dailies guide to accomplish this.
|loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault",{
mopready=true,
description="\nThis guide will walk you through becoming exalted with the Shado-Pan faction.",
achieveid={6366},
patch='50004',
},[[
step
Earn Exalted with the "Shado-Pan" Reputation |complete rep('Shado-Pan')==Exalted
|tip Refer to the dailies guide to accomplish this.
|loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Tillers",{
mopready=true,
description="\nThis guide will walk you through becoming exalted with The Tillers faction.",
achieveid={6544},
patch='50004',
},[[
step
Earn Exalted with "The Tillers" Reputation |complete rep("The Tillers")==Exalted
|tip Refer to the dailies guide to accomplish this.
|loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus",{
mopready=true,
description="\nThis guide will walk you through becoming exalted with The Golden Lotus faction.",
achieveid={7315, 6546},
patch='50004',
},[[
step
Earn Exalted with "The Golden Lotus " Reputation |complete rep("The Golden Lotus")==Exalted
|tip Refer to the dailies guide to accomplish this.
|loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi",{
description="\nThis guide will walk you through becoming exalted with The Klaxxi faction.",
achieveid={6545},
patch='50004',
},[[
step
Earn Exalted with "The Klaxxi" Reputation |complete rep("The Klaxxi")==Exalted
|tip Refer to the dailies guide to accomplish this.
|loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Pearlfin Jinyu",{
description="\nThis guide will walk you through becoming exalted with Pearlfin Jinyu faction.",
},[[
step
Earn Exalted with "Pearlfin Jinyu" Reputation |complete rep("Pearlfin Jinyu")==Exalted
|tip Refer to The Jade Forest leveling guide to accomplish this.
|loadguide "Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)"
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Chee Chee",{
description="\nThis guide will walk you through becoming best friends with Chee Chee.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Chee Chee after completing the Tillers prequests.
Becoming _Best Friends_ with Chee Chee rewards you with _Chee Chee's Goodie Bag_, which contains leather and cloth, and he also gives you a _Sheep_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Chee Chee##58709
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Chee Chee_ is a _Stranger_ to you |only if rep("Chee Chee")<=Stranger
_Chee Chee_ is your _Aquaintance_ |only if rep("Chee Chee")==Aquaintance
_Chee Chee_ is your _Buddy_ |only if rep("Chee Chee")==Buddy
_Chee Chee_ is your _Friend_ |only if rep("Chee Chee")==Friend
_Chee Chee_ is your _Good Friend_ |only if rep("Chee Chee")==GoodFriend
_Chee Chee_ is your _Best Friend_ |only if rep("Chee Chee")==BestFriend
|only if rep("Chee Chee")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Chee Chee")<BestFriend
|only if rep("Chee Chee")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Chee Chee")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Chee Chee")==BestFriend
|confirm |next "end" |only if rep("Chee Chee")==BestFriend
step
label "cooking"
In order to create Chee Chee's favorite meal, you must have at least 555 skill points in _Way of the Wok_ Cooking
Click here to continue |confirm |next "stir_fry"
Click here to go back to the menu |confirm |next "menu"
step
label "stir_fry"
talk Anthea Ironpaw##58713
learn Valley Stir Fry##104302 |goto Valley of the Four Winds 52.70,52.00
step
#include "auctioneer"
buy 25 Reef Octopus##74864
buy 25 Wildfowl Breast##74839
Or
Click here to farm the ingredients yourself |confirm |next "farm_stir_fry_1"
|tip You should at least have 525 fishing for this.
step
label "farm_stir_fry_1"
Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256 |goto Krasarang Wilds 67.90,49.60
Use your Fishing skill to fish in the water here
You can also look for fishing pools around the beach |cast Fishing##7620
collect 25 Reef Octopus##74864
step
Skipping farming |next "create_stir_fry" |only if itemcount(74839) >= 25
Proceeding to Valley Stir Fry |next |only if default
step
label "farm_stir_fry_2"
kill Carp Hunter##58116+
collect 25 Wildfowl Breast##74839 |goto Krasarang Wilds 64.60,29.30
|next "create_stir_fry"
step
label "create_stir_fry"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Valley Stir Fry##104302,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 30 Blue Feather##79265
|next "turnin2"
step
label "turnin1"
talk Chee Chee##58709
turnin A Dish For Chee Chee##30402 |goto Valley of the Four Winds 34.40,46.70 |or
|tip You can only turn this quest in once a day.
Click here to be taken back to the beginning of the Cooking Dailies for Chee Chee |confirm |next "cooking"
You can also find Chee Chee in Halfhill at [53.00,52.00]
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
Click here if Chee Chee is not in this location |next "turnin2"
step
label "turnin2"
talk Chee Chee##58709
turnin A Blue Feather for Chee Chee##30400  |goto Valley of the Four Winds 34.40,46.70 |or
|tip Keep turning this in until you reach the next status.
You can also find Chee Chee in Halfhill at the following location |goto Valley of the Four Winds 53.00,52.00
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
Click here if Chee Chee is not in this location. |next "turnin1"
step
label "quest1"
talk Chee Chee##58709
accept Lost Sheepie##31338 |goto Valley of the Four Winds 34.40,46.70
step
label "quest2"
talk Chee Chee##58709
accept Lost Sheepie... Again##31339 |goto Valley of the Four Winds 34.40,46.70
step
label "quest3"
talk Chee Chee##58709
accept Oh Sheepie##31340 |goto Valley of the Four Winds 34.40,46.70
step
talk Chee Chee##58709
accept A Wolf In Sheep's Clothing##31341 |goto Valley of the Four Winds 34.40,46.70
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Ella",{
description="\nThis guide will walk you through becoming best friends with Ella.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Ella after completing the Tillers prequests.
Becoming _Best Friends_ with Ella rewards you with a _Tree Seed Pack_, which contains Blossom Seeds, and she also gives you a _Cat_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Ella##58647
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Ella_ is a _Stranger_ to you |only if rep("Ella")<=Stranger
_Ella_ is your _Aquaintance_ |only if rep("Ella")==Aquaintance
_Ella_ is your _Buddy_ |only if rep("Ella")==Buddy
_Ella_ is your _Friend_ |only if rep("Ella")==Friend
_Ella_ is your _Good Friend_ |only if rep("Ella")==GoodFriend
_Ella_ is your _Best Friend_ |only if rep("Ella")==BestFriend
|only if rep("Ella")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Ella")<BestFriend
|only if rep("Ella")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Ella")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Ella")==BestFriend
|confirm |next "end" |only if rep("Ella")==BestFriend
step
label "cooking"
In order to create Ella's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "shrimp_dump"
Click here to go back to the menu |confirm |next "menu"
step
label "shrimp_dump"
talk Yan Ironpaw##58715
learn Shrimp Dumplings##104307 |goto Valley of the Four Winds 52.50,51.80
step
#include "auctioneer"
buy 25 Giant Mantis Shrimp##74857
Or
Click here to farm the ingredients yourself |confirm |next "farm_shrimp_dump_1"
|tip You should at least have 525 fishing for this.
step
label "farm_shrimp_dump_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools around the beach also |cast Fishing##7620
collect 25 Giant Mantis Shrimp##74857 |goto Krasarang Wilds 67.90,49.60
step
label "create_shrimp_dump"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Shrimp Dumpling##104307,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 30 Jade Cat##79266
|next "turnin2"
step
label "turnin1"
talk Ella##58647
turnin A Dish For Ella##30386 |goto Valley of the Four Winds 31.50,58.10
|tip You can only turn this quest in once a day
You can also find Chee Chee in Halfhill at the following location: |goto Valley of the Four Winds 53.00,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Ella |confirm |next "cooking"
|next "quest1" |only if rep("Ella")==Buddy
|next "quest2" |only if rep("Ella")==Friend
|next "quest3" |only if rep("Ella")==GoodFriend
|next "menu" |only if default
Click here if Ella is not in this location |next "turnin2"
step
label "turnin2"
talk Ella##58647
turnin A Jade Cat for Ella##30381 |goto Valley of the Four Winds 31.50,58.10
|tip Keep turning this in until you reach Buddy Status.
You can also find Chee Chee in Halfhill at the following location: |goto Valley of the Four Winds 53.00,51.60
|next "quest1" |only if rep("Ella")==Buddy
|next "quest2" |only if rep("Ella")==Friend
|next "quest3" |only if rep("Ella")==GoodFriend
|next "menu" |only if default
Click here if Ella is not in this location |next "turnin1"
step
label "quest1"
talk Ella##58647
accept The Beginner's Brew##31534 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
step
talk Farmer Fung##57298
Ask him for a Red Radish
collect 1 Red Radish##87553 |q 31534/1 |goto Valley of the Four Winds 48.20,33.90
step
talk Haohan Mudclaw##57402
Ask her for a Sweet Lakelemon
collect 1 Sweet Lakelemon##87554 |q 31534/2 |goto Valley of the Four Winds 44.60,34.00
step
talk Gina Mudclaw##58706
Ask her for a Fuzzy Peach
collect 1 Black Cherries##87555 |q 31534/3 |goto Valley of the Four Winds 53.20,51.60
step
talk Fish Fellreed##58705
Ask her for Black Cherries
collect 1 Black Cherries##87556 |q 31534/4 |goto Valley of the Four Winds 41.70,30.10
step
talk Ella##58647
turnin The Beginner's Brew##31534 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
|next "menu"
step
label "quest2"
talk Ella##58647
accept Ella's Taste Test##31537 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
step
Use _Ella's Brew_ on _Jogu the Drunk_ |use Ella's Brew##87558
Have Jogu the Drunk try Ella's Brew |q 31537/1 |goto Valley of the Four Winds 53.50,52.60
step
Use _Ella's Brew_ on _Bobo Ironpaw_ |use Ella's Brew##87558
Have Bobo Ironpaw try Ella's Brew |q 31537/2 |goto Valley of the Four Winds 53.00,52.00
step
Use _Ella's Brew_ on _Farmer Yoon_ |use Ella's Brew##87558
Have Farmer Yoon try Ella's Brew |q 31537/3 |goto Valley of the Four Winds 52.00,48.00
step
Use _Ella's Brew_ on _Nana Mudclaw_ |use Ella's Brew##87558
Have Nana Mudclaw try Ella's Brew |q 31537/4 |goto Valley of the Four Winds 54.60,47.00
step
talk Ella##58647
turnin Ella's Taste Test##31537 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
|next "menu"
step
label "quest3"
talk Ella##58647
accept A Worthy Brew##31538 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
step
Use _Ella's Brew_ on _Chen Stormstout_ |use Ella's Brew##87763
Have Chen Stormstout try Ella's Brew |q 31537/4 |goto Valley of the Four Winds/0 55.10,50.40
step
talk Ella##58647
turnin A Worthy Brew##31538 |goto Valley of the Four Winds/0 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds/0 53.00,51.60
|next "menu"
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Farmer Fung",{
description="\nThis guide will walk you through becoming best friends with Farmer Fung.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Farmer Fung after completing the Tillers prequests.
Becoming _Best Friends_ with Farmer Fung rewards you with an _Enigma Seed_, which blooms into a random plant, and _Shaggy the Prize Yak_ for your farm
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Farmer Fung_ is a _Stranger_ to you |only if rep("Farmer Fung")<=Stranger
_Farmer Fung_ is your _Aquaintance_ |only if rep("Farmer Fung")==Aquaintance
_Farmer Fung_ is your _Buddy_ |only if rep("Farmer Fung")==Buddy
_Farmer Fung_ is your _Friend_ |only if rep("Farmer Fung")==Friend
_Farmer Fung_ is your _Best Friend_ |only if rep("Farmer Fung")==BestFriend
|only if rep("Farmer Fung")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Farmer Fung")<BestFriend
|only if rep("Farmer Fung")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Farmer Fung")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Farmer Fung")==BestFriend
|confirm |next "end" |only if rep("Farmer Fung")==BestFriend
step
label "cooking"
In order to create Farmer Fung's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "wild_roast"
Click here to go back to the menu |confirm |next "menu"
step
label "wild_roast"
talk Jian Ironpaw##58716
learn Wildfowl Roast##104310 |goto Valley of the Four Winds 53.40,51.60
step
#include "auctioneer"
buy 5 Wildfowl Breast##74839
Or
Click here to farm the ingredients yourself |confirm |next "farm_wild_roast_1"
step
label "farm_wild_roast_1"
kill Carp Hunter##58116+
collect 5 Wildfowl Breast##74839 |goto Krasarang Wilds 64.60,29.30
step
label "create_wild_roast"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Wildfowl Roast##104310,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Marsh Lily##79268
|next "turnin2"
step
label "turnin1"
talk Farmer Fung##57298
turnin A Dish For Farmer Fung##30421 |goto Valley of the Four Winds 48.20,33.90
|tip You can only turn this quest in once a day
You can also find Farmer Fung in Halfhill at the following location |goto Valley of the Four Winds 52.80,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Farmer Fung |confirm |next "cooking"
step
label "turnin2"
talk Farmer Fung##57298
turnin A Marsh Lily for Farmer Fung##30420 |goto Valley of the Four Winds 48.20,33.90
|tip Keep turning this in until you reach Best Friend status.
You can also find Farmer Fung in Halfhill at the following location |goto Valley of the Four Winds 52.80,51.60
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Fish Fellreed",{
description="\nThis guide will walk you through becoming best friends with Fish Fellreed.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Fish Fellreed after completing the Tillers prequests.
Becoming _Best Friends_ with Fish Fellreed rewards you with a _Special Seed Pack_, which contains Profession Seeds.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Fish Fellreed##58705
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Fish Fellreed_ is a _Stranger_ to you |only if rep("Fish Fellreed")<=Stranger
_Fish Fellreed_ is your _Aquaintance_ |only if rep("Fish Fellreed")==Aquaintance
_Fish Fellreed_ is your _Buddy_ |only if rep("Fish Fellreed")==Buddy
_Fish Fellreed_ is your _Friend_ |only if rep("Fish Fellreed")==Friend
_Fish Fellreed_ is your _Good Friend_ |only if rep("Fish Fellreed")==GoodFriend
_Fish Fellreed_ is your _Best Friend_ |only if rep("Fish Fellreed")==BestFriend
|only if rep("Fish Fellreed")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Fish Fellreed")<BestFriend
|only if rep("Fish Fellreed")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Fish Fellreed")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Fish Fellreed")==BestFriend
|confirm |next "end" |only if rep("Fish Fellreed")==BestFriend
step
label "cooking"
In order to create Fish Fellreed's favorite meal, you must have at least 550 skill points in _Way of the Oven_ Cooking
Click here to continue |confirm |next "twin_fish"
Click here to go back to the menu |confirm |next "menu"
step
label "twin_fish"
talk Jian Ironpaw##58716
learn Twin Fish Platter##104311 |goto Valley of the Four Winds 53.40,51.60
step
#include "auctioneer"
buy 10 Krasarang Paddlefish##74865 |next "create_twin_fish" |or
Or
Click here to farm the ingredients yourself |confirm |next "farm_twin_fish_1" |or
|tip You should at least have 525 fishing for this.
step
label "farm_twin_fish_1"
map Krasarang Wilds
path loose; loop; curved
path	37.40,35.20	42.90,38.70	43.40,46.00
path	38.00,42.30	34.10,38.40	30.30,33.80
Follow this river and use your fishing ability to catch Krasarang Paddlefish
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
collect 10 Krasarang Paddlefish##74865
step
label "create_twin_fish"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Twin Fish Platter##104311,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Jade Cat##79266
|next "turnin2"
step
label "turnin1"
talk Fish Fellreed##58705
turnin A Dish For Fish##30427 |goto Valley of the Four Winds 41.70,30.10
|tip You can only turn this quest in once a day.
You can also find Fish Fellreed in Halfhill at the following location: |goto Valley of the Four Winds 53.00,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Fish Fellreed |confirm |next "cooking"
Click here if Fish Fellreed is not in this location |next "turnin2"
Click here to be taken back to the beginning of this guide |confirm |next "menu"
step
label "turnin2"
talk Fish Fellreed##58705
turnin A Jade Cat for##30424 |goto Valley of the Four Winds 41.70,30.10
|tip Keep turning this in until you reach Best Friend Status.
You can also find Fish Fellreed in Halfhill at the following location: |goto Valley of the Four Winds 52.80,51.80
Click here if Fish Fellreed is not in this location |next "turnin1"
Click here to be taken back to the beginning of this guide |confirm |next "menu"
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Gina Mudclaw",{
description="\nThis guide will walk you through becoming best friends with Gina Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Gina Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Gina Mudclaw rewards you with _Celebration Gift_, which contains fireworks, and she also gives you access to a mailbox on Halfhill.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Gina Mudclaw##58706
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Gina Mudclaw_ is a _Stranger_ to you |only if rep("Gina Mudclaw")<=Stranger
_Gina Mudclaw_ is your _Aquaintance_ |only if rep("Gina Mudclaw")==Aquaintance
_Gina Mudclaw_ is your _Buddy_ |only if rep("Gina Mudclaw")==Buddy
_Gina Mudclaw_ is your _Friend_ |only if rep("Gina Mudclaw")==Friend
_Gina Mudclaw_ is your _Good Friend_ |only if rep("Gina Mudclaw")==GoodFriend
_Gina Mudclaw_ is your _Best Friend_ |only if rep("Gina Mudclaw")==BestFriend
|only if rep("Gina Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Gina Mudclaw")<BestFriend
|only if rep("Gina Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Gina Mudclaw")<BestFriend
You have maxed out your reputation with this individual Please select a different guide. |only if rep("Gina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Gina Mudclaw")==BestFriend
step
label "cooking"
In order to create Gina Mudclaw's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "mist_soup"
Click here to go back to the menu |confirm |next "menu"
step
label "mist_soup"
talk Anthea Ironpaw##58713
learn Swirling Mist Soup##104304 |goto Valley of the Four Winds 52.70,52.00
step
#include "auctioneer"
buy 5 Jade Lungfish##74856
Or
Click here to farm the ingredients yourself |confirm |next "farm_mist_soup_1"
|tip You should at least have 525 fishing for this.
step
label "farm_mist_soup_1"
Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest 23.60,25.60
step
label "create_mist_soup"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Swirling Mist Soup##104304,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 44 Blue Feather##79268
|next "turnin2"
step
label "turnin1"
talk Gina Mudclaw##58706
turnin A Dish For Gina Mudclaw##30390 |goto Valley of the Four Winds 53.20,51.60
|tip You can only turn this quest in 5 times a day.
Click here to be taken back to the beginning of the Cooking Dailies for Gina Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Gina Mudclaw##58706
turnin A Marsh Lily for Gina Mudclaw##30389 |goto Valley of the Four Winds 53.20,51.60
|tip Keep turning this in until you reach Best Friend Status.
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Haohan Mudclaw",{
description="\nThis guide will walk you through becoming best friends with Haohan Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Haohan Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Haohan Mudclaw rewards you with three _Songbell Seeds_, and a mushan pet to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Haohan Mudclaw_ is a _Stranger_ to you |only if rep("Haohan Mudclaw")<=Stranger
_Haohan Mudclaw_ is your _Aquaintance_ |only if rep("Haohan Mudclaw")==Aquaintance
_Haohan Mudclaw_ is your _Buddy_ |only if rep("Haohan Mudclaw")==Buddy
_Haohan Mudclaw_ is your _Friend_ |only if rep("Haohan Mudclaw")==Friend
_Haohan Mudclaw_ is your _Best Friend_ |only if rep("Haohan Mudclaw")==BestFriend
|only if rep("Haohan Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Haohan Mudclaw")<BestFriend
|only if rep("Haohan Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Haohan Mudclaw")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Haohan Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Haohan Mudclaw")==BestFriend
step
label "cooking"
In order to create Haohan Mudclaw's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "tiger_steak"
Click here to go back to the menu |confirm |next "menu"
step
label "tiger_steak"
talk Kol Ironpaw##58712
learn Charbroiled Tiger Steak##104298 |goto Valley of the Four Winds 53.00,51.40
step
#include "auctioneer"
buy 5 Raw Tiger Steak##74833
Or
Click here to farm the ingredients yourself |confirm |next "farm_tiger_steak_1"
step
label "farm_tiger_steak_1"
kill Windward Tiger##63537+
collect 5 Raw Tiger Steak##74833 |goto The Jade Forest 62.50,24.30
step
label "create_tiger_steak"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Charbroiled Tiger Steak##104298,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Ruby Shard##79264
|next "turnin2"
step
label "turnin1"
talk Haohan Mudclaw##57402
turnin A Dish For Haohan##30414 |goto Valley of the Four Winds 44.60,34.00
|tip You can only turn this quest in once a day.
You can also find Haohan in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Haohan Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Haohan Mudclaw##57402
turnin A Ruby shard for Haohan##30409 |goto Valley of the Four Winds 44.60,34.10
|tip Keep turning this in until you reach Best Friend Status.
You can also find Haohan in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.60
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Jogu the Drunk",{
description="\nThis guide will walk you through becoming best friends with Jogu the Drunk.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Jogu the Drunk after completing the Tillers prequests.
Becoming _Best Friends_ with Jogu the Drunk rewards you with a _Secret Stash_, which contains alcohol, and he will no longer charge for crop predictions.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Jogu the Drunk_ is a _Stranger_ to you |only if rep("Jogu the Drunk")<=Stranger
_Jogu the Drunk_ is your _Aquaintance_ |only if rep("Jogu the Drunk")==Aquaintance
_Jogu the Drunk_ is your _Buddy_ |only if rep("Jogu the Drunk")==Buddy
_Jogu the Drunk_ is your _Friend_ |only if rep("Jogu the Drunk")==Friend
_Jogu the Drunk_ is your _Best Friend_ |only if rep("Jogu the Drunk")==BestFriend
|only if rep("Jogu the Drunk")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Jogu the Drunk")<BestFriend
|only if rep("Jogu the Drunk")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Jogu the Drunk")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Jogu the Drunk")==BestFriend
|confirm |next "end" |only if rep("Jogu the Drunk")==BestFriend
step
label "cooking"
In order to create Jogu the Drunk's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "carrots"
Click here to go back to the menu |confirm |next "menu"
step
label "carrots"
talk Anthea Ironpaw##58713
learn Sauteed Carrots##104301 |goto Valley of the Four Winds 52.80,51.80
step
#include "auctioneer"
buy 10 Juicycrunch Carrot##74841
Or
Click here to farm the ingredients yourself |confirm |next "farm_carrots_1"
step
label "farm_carrots_1"
kill Windward Tiger##63537+
collect 10 Juicycrunch Carrot##74841 |goto The Jade Forest 62.50,24.30
step
label "create_carrots"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Sauteed Carrots##104301,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 30 Lovely Apple##79267
|next "turnin2"
step
label "turnin1"
talk Jogu the Drunk##58710
turnin A Dish For Jogu##30439 |goto Valley of the Four Winds 53.50,52.60
|tip You can only turn this quest in once a day.
Click here to be taken back to the beginning of the Cooking Dailies for Jogu the Drunk |confirm |next "cooking"
|next "quest1" |only if rep("Jogu the Drunk")==Aquaintance
|next "quest2" |only if rep("Jogu the Drunk")==Buddy
|next "quest3" |only if rep("Jogu the Drunk")==Friend
|next "quest4" |only if rep("Jogu the Drunk")==GoodFriend
step
label "turnin2"
talk Jogu the Drunk##58710
turnin A Lovely Apple for Jogu##30435 |goto Valley of the Four Winds 53.50,52.60
|tip Keep turning this in until you reach the next friendship status.
|next "quest1" |only if rep("Jogu the Drunk")==Aquaintance
|next "quest2" |only if rep("Jogu the Drunk")==Buddy
|next "quest3" |only if rep("Jogu the Drunk")==Friend
|next "quest4" |only if rep("Jogu the Drunk")==GoodFriend
step
label "quest1"
talk Jogu the Drunk##58710
accept Buy A Fish A Drink?##31320 |goto Valley of the Four Winds 53.50,52.60
step
talk Den Den##64319
buy 1 Four Wind Soju##81407 |q 31320/1 |goto Valley of the Four Winds 54.80,50.60
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Drink?##31320 |goto Valley of the Four Winds 53.50,52.60 |next "menu"
step
label "quest2"
talk Jogu the Drunk##58710
accept Buy A Fish A Round?##31321 |goto Valley of the Four Winds 53.50,52.60
step
talk Den Den##64319
buy 5 Plum Wine##81415 |q 31321/1 |goto Valley of the Four Winds 54.80,50.60
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Round?##31321 |goto Valley of the Four Winds 53.50,52.60 |next "menu"
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Old Hillpaw",{
description="\nThis guide will walk you through becoming best friends with Old Hillpaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Old Hillpaw after completing the Tillers prequests.
Becoming _Best Friends_ with Old Hillpaw rewards you with a _Straw Hat_ and _Chickens_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Old Hillpaw##58707
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Old Hillpaw_ is a _Stranger_ to you |only if rep("Old Hillpaw")<=Stranger
_Old Hillpaw_ is your _Aquaintance_ |only if rep("Old Hillpaw")==Aquaintance
_Old Hillpaw_ is your _Buddy_ |only if rep("Old Hillpaw")==Buddy
_Old Hillpaw_ is your _Friend_ |only if rep("Old Hillpaw")==Friend
_Old Hillpaw_ is your _Best Friend_ |only if rep("Old Hillpaw")==BestFriend
|only if rep("Old Hillpaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Old Hillpaw")<BestFriend
|only if rep("Old Hillpaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Old Hillpaw")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Old Hillpaw")==BestFriend
|confirm |next "end" |only if rep("Old Hillpaw")==BestFriend
step
label "cooking"
In order to create Old Hillpaw's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "turtle"
Click here to go back to the menu |confirm |next "menu"
step
label "turtle"
talk Mei Mei Ironpaw##58714
learn Braised Turtle##104305 |goto Valley of the Four Winds 52.60,51.60
step
#include "auctioneer"
buy 5 Raw Turtle Meat##74837
buy 25 Juicycrunch Carrot##74841
Or
Click here to farm the ingredients yourself |confirm |next "farm_turtle_1"
step
label "farm_turtle_1"
kill Wyrmhorn Turtle##56256+
collect 5 Raw Turtle Meat##74837 |goto Valley of the Four Winds 67.30,29.40
step
label "farm_turtle_2"
kill Snagtooth Hooligan##56462+
collect 25 Juicycrunch Carrot##74841 |goto Valley of the Four Winds 86.50,28.50
step
label "create_turtle"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Braised Turtle##104305,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Bluie Feather##79268
|next "turnin2"
step
label "turnin1"
talk Old Hillpaw##58707
turnin A Dish For Old Hillpaw##30396 |goto Valley of the Four Winds 31.00,53.10
|tip You can only turn this quest in once a day
You can also find Old Hillpaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
Click here to be taken back to the beginning of the Cooking Dailies for Old Hillpaw |confirm |next "cooking"
step
label "turnin2"
talk Old Hillpaw##58707
turnin A Blue Feather for Old Hillpaw##30394 |goto Valley of the Four Winds 31.00,53.10
|tip Keep turning this in until you reach Best Friend status.
You can also find Old Hillpaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Sho",{
description="\nThis guide will walk you through becoming best friends with Sho.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Sho after completing the Tillers prequests.
Becoming _Best Friends_ with Sho rewards you with a _Red Cricket_ Battle Pet and an _Orange Tree_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Sho_ is a _Stranger_ to you |only if rep("Sho")<=Stranger
_Sho_ is your _Aquaintance_ |only if rep("Sho")==Aquaintance
_Sho_ is your _Buddy_ |only if rep("Sho")==Buddy
_Sho_ is your _Friend_ |only if rep("Sho")==Friend
_Sho_ is your _Best Friend_ |only if rep("Sho")==BestFriend
|only if rep("Sho")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Sho")<BestFriend
|only if rep("Sho")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Sho")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Sho")==BestFriend
|confirm |next "end" |only if rep("Sho")==BestFriend
step
label "cooking"
In order to create Sho's favorite meal, you must have at least 550 skill points in Cooking
Click here to continue |confirm |next "eternal_blossom"
Click here to go back to the menu |confirm |next "menu"
step
label "eternal_blossom"
talk Kol Ironpaw##58712
learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds 53.00,51.40
step
#include "auctioneer"
buy 5 Jade Lungfish##74856
buy 25 Striped Melon##74848
Or
Click here to farm the ingredients yourself |confirm |next "farm_eternal_blossom_1"
|tip You should at least have 525 fishing for this.
step
label "farm_eternal_blossom_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest 55.00,71.10
step
Skipping farming |next "create_eternal_blossom" |only if itemcount(74848) >= 25
Proceeding to Eternal Blossom Fish |next |only if default
step
label "farm_eternal_blossom_2"
kill Slingtail Treeleaper##61562+
collect 25 Striped Melon##74848 |goto The Jade Forest 53.90,81.40
step
label "create_eternal_blossom"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Eternal Blossom Fish##104299,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 43 Lovely Apple##79268
|next "turnin2"
step
label "turnin1"
talk Sho##58708
turnin A Dish For Sho##30408 |goto Valley of the Four Winds 29.50,30.60
|tip You can only turn this quest in once a day
You can also find Sho in Halfhill at the following location |goto Valley of the Four Winds 53.00,52.00
Click here to be taken back to the beginning of the Cooking Dailies for Sho |confirm |next "cooking"
step
label "turnin2"
talk Sho##58708
turnin A Lovely Apple for Sho##30404 |goto Valley of the Four Winds 29.50,30.60
|tip Keep turning this in until you reach Best Friend status.
You can also find Sho in Halfhill at the following location |goto Valley of the Four Winds 53.00,52.00
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Tina Mudclaw",{
description="\nThis guide will walk you through becoming best friends with Tina Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Tina Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Tina Mudclaw rewards you by sending _Food_ and _Furniture_ to your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "tillers_prequests"
step
label "menu"
_Tina Mudclaw_ is a _Stranger_ to you |only if rep("Tina Mudclaw")<=Stranger
_Tina Mudclaw_ is your _Aquaintance_ |only if rep("Tina Mudclaw")==Aquaintance
_Tina Mudclaw_ is your _Buddy_ |only if rep("Tina Mudclaw")==Buddy
_Tina Mudclaw_ is your _Friend_ |only if rep("Tina Mudclaw")==Friend
_Tina Mudclaw_ is your _Best Friend_ |only if rep("Tina Mudclaw")==BestFriend
|only if rep("Tina Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Tina Mudclaw")<BestFriend
|only if rep("Tina Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Tina Mudclaw")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Tina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Tina Mudclaw")==BestFriend
|modelnpc Tina Mudclaw##58761
step
label "cooking"
In order to create Tina Mudclaw's favorite meal, you must have at least 550 skill points in Cooking
Click here to continue |confirm |next "fire_spirit"
Click here to go back to the menu |confirm |next "menu"
step
label "fire_spirit"
talk Yan Ironpaw##58715
learn Fire Spirit Salmon##104308 |goto Valley of the Four Winds 52.50,51.70
step
#include "auctioneer"
buy 5 Emperor Salmon##74859
buy 25 Scallions##74843
Or
Click here to farm the ingredients yourself |confirm |next "farm_fire_spirit_1"
|tip You should at least have 525 fishing for this.
step
label "farm_fire_spirit_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools around the beach also |cast Fishing##7620
collect 5 Emperor Salmon##74859 |goto Krasarang Wilds 37.40,35.20
step
label "farm_fire_spirit_2"
kill Riverblade Raider##59714+, Riverblade Thief##64034+
collect 25 Scallions##74843 |goto Krasarang Wilds 62.00,40.60
|next "create_fire_spirit"
step
label "create_fire_spirit"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Fire Spirit Salmon##104308,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Ruby Shard##79268
|next "turnin2"
step
label "turnin1"
talk Tina Mudclaw##58761
turnin A Dish For Tina Mudclaw##30433 |goto Valley of the Four Winds 45.00,33.80
|tip You can only turn this quest in once a day.
You can also find Tina Mudclaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
Click here to be taken back to the beginning of the Cooking Dailies for Tina Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Tina Mudclaw##58761
turnin A Ruby Shard for Tina Mudclaw##30428 |goto Valley of the Four Winds 45.00,33.80
|tip Keep turning this in until you reach Best Friend status.
You can also find Tina Mudclaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Nat Pagle",{
description="\nThis guide will walk you through becoming exalted with Nat Pagle faction.",
achieveid={7274},
patch='50004',
},[[
step
label "menu"
_Nat Pagle_ is a _Stranger_ to you |only if rep("Nat Pagle")<=Stranger
_Nat Pagle_ is your _Aquaintance_ |only if rep("Nat Pagle")==Aquaintance
_Nat Pagle_ is your _Buddy_ |only if rep("Nat Pagle")==Buddy
_Nat Pagle_ is your _Friend_ |only if rep("Nat Pagle")==Friend
_Nat Pagle_ is your _Good Friend_ |only if rep("Nat Pagle")==GoodFriend
_Nat Pagle_ is your _Best Friend_ |only if rep("Nat Pagle")==BestFriend
|confirm
step
label "menu2"
In order to successfully gain rep with Nat Pagle you have to catch fish, so we recommend that you are at least 525 in Fishing.
The fish you catch in this guide are unique, meaning you can only have one of each in your bag at any given time.
|confirm
step
label "menu3"
Click here to start fishing! |confirm |next "fishrun"
Click here to turn in the fish to Nat Pagle for daily reputation gains. |confirm |next "turnin"
step
label "fishrun"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools around the beach also |cast fishing##131474
collect 1 Flying Tiger Gourami##86542 |goto Kun-Lai Summit 72.70,93.10
accept Flying Tiger Gourami##31443 |use Flying Tiger Gourami##86542 |goto Kun-Lai Summit 72.70,93.10
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools too |cast fishing##131474
collect 1 Spinefish Alpha##86544 |goto Kun-Lai Summit 70.80,84.20
accept Spinefish Alpha##31444 |use Spinefish Alpha##86544 |goto Kun-Lai Summit 70.80,84.20
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools too |cast fishing##131474.
collect 1 Mimic Octopus##86545 |goto Kun-Lai Summit 57.90,21.90
accept Mimic Octopus##31446 |use Mimic Octopus##86545 |goto Kun-Lai Summit 57.90,21.90
|next "menu3"
step
label "turnin"
talk Nat Pagle##63721
turnin Spinefish Alpha##31444 |goto Krasarang Wilds 68.40,43.50
turnin Mimic Octopus##31446 |goto Krasarang Wilds 68.40,43.50
turnin Flying Tiger Gourami##31443 |goto Krasarang Wilds 68.40,43.50
|next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Lorewalkers",{
description="\nThis guide will walk you through becoming exalted with the Lorewalkers faction.",
achieveid={6548},
patch='50004',
},[[
step
click The Emperor's Burden - Part 8##213456
achieve The Seven Burdens of Shaohao##6855/8 |goto Vale of Eternal Blossoms 68.8,44.3
step
click Always Remember##214125
achieve What is Worth Fighting For##6858/2 |goto Vale of Eternal Blossoms 52.9,68.6
step
click The Thunder King##214136
achieve The Dark Heart of the Mogu##6754/4 |goto Vale of Eternal Blossoms 40.2,77.5
step
click Together, We Are Strong##214126
achieve What is Worth Fighting For##6858/4 |goto Vale of Eternal Blossoms 26.6,21.5
step
click Trapped in a Strange Land##214120
achieve The Song of the Yaungol##6847/4 |goto Townlong Steppes 84.1,72.9
step
click Dominance##214123
achieve The Song of the Yaungol##6847/2 |goto Townlong Steppes 65.4,50.0
step
click The Emperor's Burden - Part 5##213445
achieve The Seven Burdens of Shaohao##6855/5 |goto Townlong Steppes 37.8,62.9
step
goto Dread Wastes 53.6,15.9
Enter the cave here |goto 53.6,15.9
goto 52.5,10.1
click Amber##
achieve Heart of the Mantid Swarm##6857/3
step
click The Empress##
achieve Heart of the Mantid Swarm##6857/4
step
click Cycle of the Mantid##
achieve Heart of the Mantid Swarm##6857/1
step
click Mantid Society##
achieve Heart of the Mantid Swarm##6857/2
step
goto Dread Wastes 67.4,60.8
click The Deserters##213500
achieve Between a Saurok and a Hard Place##6716/3
step
goto Valley of the Four Winds 18.8,31.7
click Pandaren Fighting Tactics##
achieve What is Worth Fighting For##6858/1
step
goto Valley of the Four Winds 20.3,55.9
click The Birthplace of Liu Lang##
achieve Ballad of Liu Lang##6856/1
step
goto Valley of the Four Winds 34.6,63.9
click The Wondering Widow##
achieve Ballad of Liu Lang##6856/3
step
goto Krasarang Wilds 32.8,29.4
click The Last Stand##213330
achieve Between a Saurok and a Hard Place##6716/4
step
goto Krasarang Wilds 30.5,38.5
click Origins##215782
achieve Fish Tales##6846/3
step
goto Krasarang Wilds 40.4,51.7
Enter the Temple here |goto 40.4,51.7
Go up the stairs |goto 41.2,55.8
goto 40.5,56.6
click The Emperor's Burden - Part 4##213422
achieve The Seven Burdens of Shaohao##6855/4
step
goto Krasarang Wilds 52.4,87.6
Enter the cave here |goto 52.2,86.3
click Hozen Maturity##211993
achieve Hozen in the Mist##6850/2
step
goto Krasarang Wilds 51.0,31.7
click The Lost Dynasty##213332
achieve The Dark Heart of the Mogu##6754/2
step
goto Krasarang Wilds 72.2,31.1
click Waiting for the Turtle##215765
achieve Ballad of Liu Lang##6856/4
step
goto Valley of the Four Winds 55.1,47.2
click A Most Famous Bill of Sale##
achieve Ballad of Liu Lang##6856/2
step
goto Valley of the Four Winds 61.2,34.7
click Waterspeakers##
achieve Fish Tales##6846/2
step
goto Valley of the Four Winds 83.2,21.2
click Embracing the Passion##
achieve Hozen in the Mist##6850/3
step
goto Krasarang Wilds 78.8,11.1
Follow the path up |goto 78.8,11.1
goto 81.4,11.5
click Quan Tou Kuo the Two Fisted##213407
achieve Legend of the Brewfathers##7230/1
step
goto The Jade Forest 66.0,87.6
click Watersmithing##215779
achieve Fish Tales##6846/1
step
goto The Jade Forest 55.9,56.8
click The Emperor's Burden - Part 3##213421
achieve The Seven Burdens of Shaohao##6855/3
step
goto The Jade Forest 47.1,45.2
click The Emperor's Burden - Part 1##215799
achieve The Seven Burdens of Shaohao##6855/1
step
goto The Jade Forest 67.7,29.4
click The Saurok##213327
achieve Between a Saurok and a Hard Place##6716/1
step
goto The Jade Forest 42.3,17.4
click Spirit Binders##213333
achieve The Dark Heart of the Mogu##6754/3
step
goto The Jade Forest 35.7,30.5
click The First Monks##213415
achieve What is Worth Fighting For##6858/3
step
goto The Jade Forest 37.3,30.1
click Xin Wo Yin the Broken Hearted##213512
achieve Legend of the Brewfathers##7230/2
step
goto The Jade Forest 26.4,28.4
click Hozen Speech##211990
achieve Hozen in the Mist##6850/1
step
goto The Veiled Stair/5 54.8,16.0
click The Defiant##
achieve Between a Saurok and a Hard Place##6716/2
step
goto Kun-Lai Summit 74.5,83.5
click Role Call##
achieve Fish Tales##6846/4
step
goto Kun-Lai Summit 71.7,63.0
click Yaungoil##
achieve The Song of the Yaungol##6847/3
step
goto Kun-Lai Summit 67.8,48.4
click The Emperor's Burden - Part 6##
achieve The Seven Burdens of Shaohao##6855/6
step
goto Kun-Lai Summit 63.0,40.8
click Victory in Kun-Lai##
achieve What is Worth Fighting For##6858/5
step
goto Kun-Lai Summit/17 58.2,70.5
Enter the Temple here |goto 52.8,46.8
click Valley of the Emperors##
achieve The Dark Heart of the Mogu##6754/1
Leave the Temple here |goto Kun-Lai Summit/17 87.8,55.4
step
goto Kun-Lai Summit 41.0,42.4
click The Emperor's Burden - Part 7##
achieve The Seven Burdens of Shaohao##6855/7
step
goto Kun-Lai Summit 43.8,51.2
click The Emperor's Burden - Part 2##
achieve The Seven Burdens of Shaohao##6855/2
step
goto Kun-Lai Summit 44.7,52.4
click Ren Yun the Blind##
achieve Legend of the Brewfathers##7230/3
step
goto Kun-Lai Summit 45.8,61.9
click The Hozen Ravage##
achieve Hozen in the Mist##6850/4
step
goto Kun-Lai Summit 50.3,79.3
click Yaungol Tactics##
achieve The Song of the Yaungol##6847/1
step
Check your in-game mailbox for items from Lorewalker Cho
collect 1 The Ballad of Liu Lang##83780 |future |q 31103
collect 1 The Dark Heart of the Mogu##83772 |future |q 31095
collect 1 The Song of the Yaungol##83777 |future |q 31100
collect 1 Hozen in the Mist##83770 |future |q 31093
collect 1 Heart of the Mantid Swarm##83773 |future |q 31097
collect 1 The Seven Burdens of Shaohao##83779 |future |q 31102
collect 1 What is Worth Fighting For##83774 |future |q 31096
collect 1 Fish Tales##83771 |future |q 31094
collect 1 Between a Saurok and a Hard Place##83076 |future |q 31055 |or
collect 1 Between a Saurok and a Hard Place##83769 |future |q 31055 |or
step
Use each item in your bags to accept the quests
accept The Ballad of Liu Lang##31103 |use The Ballad of Liu Lang##83780
accept The Dark Heart of the Mogu##31095 |use The Dark Heart of the Mogu##83772
accept The Song of the Yaungol##31100 |use The Song of the Yaungol##83777
accept Hozen in the Mist##31093 |use Hozen in the Mist##83770
accept Heart of the Mantid Swarm##31097 |use Heart of the Mantid Swarm##83773
accept The Seven Burdens of Shaohao##31102 |use The Seven Burdens of Shaohao##83779
accept What is Worth Fighting For##31096 |use What is Worth Fighting For##83774
accept Fish Tails##31094 |use Fish Tales##83771
accept Between a Saurok and a Hard Place##31055 |use Between a Saurok and a Hard Place##83076 |or
accept Between a Saurok and a Hard Place##31055 |use Between a Saurok and a Hard Place##83769 |or
step
talk Lorewalker Cho##61962
turnin What is Worth Fighting For##31096 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Song of the Yaungol##31100 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Seven Burdens of Shaohao##31102 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Dark Heart of the Mogu##31095 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Ballad of Liu Lang##31103 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Hozen in the Mist##31093 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Heart of the Mantid Swarm##31097 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Fish Tails##31094 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Between a Saurok and a Hard Place##31055 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
Congratulations, you are now Exalted with the Lorewalkers!
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren",{
description="\nThis guide will walk you through becoming exalted with the Tushui Pandaren faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Tushui Pandaren') < Exalted end,
},[[
step
talk Adherent Hanjun##69334
buy Tushui Tabard##83079 |n |goto Stormwind City 68.00,17.60
Equip your Tushui Tabard |equipped Tushui Tabard##83079 |use Tushui Tabard##83079 |future
You can run any dungeon that grants experience to gain reputation for Tushui Pandaren
Become Exalted with Tushui Pandaren |complete rep('Tushui Pandaren')==Exalted
step
Congratulations, you have reached exalted with the Tushui Pandaren!
]])
ZygorGuidesViewer:RegisterInclude("tillers_prequests",[[
step
goto Vale of Eternal Blossoms 87.00,60.80
talk Tang Ironhoe##64036
accept The Tillers##31372
step
goto Valley of the Four Winds 52.00,48.00
talk Farmer Yoon##58721
turnin The Tillers##31372
accept A Helping Hand##30252
step
goto 51.80,48.80
click Unbudging Rock
Clear 8 Unbudging Rocks |q 30252/1
step
goto 52.80,47.90
talk Farmer Yoon##58646
turnin A Helping Hand##30252
step
goto 52.30,48.80
talk Farmer Yoon##58646
accept Learn and Grow I: Seeds##30535
step
goto 52.90,52.20
talk Merchant Greenfield##58718
Tell him you're there to pick up seeds
Get a Packet of Green Cabbage Seeds |q 30535/1
step
goto 52.30,48.80
talk Farmer Yoon##58646
turnin Learn and Grow I: Seeds##30535
accept Learn and Grow II: Tilling and Planting##30254
step
goto 52.00,48.30
clicknpc Untilled Soil##59985+
Till 2 patches of Soil |q 30254/1 |goto 52.00,48.30
Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil |use EZ-Gro Green Cabbage Seeds##80302
Plant seeds in 2 patches of Tilled Soil |q 30254/2 |goto 52.00,48.30
step
goto 52.30,48.80
talk Farmer Yoon##58646
turnin Learn and Grow II: Tilling and Planting##30254
accept Learn and Grow III: Tending Crops##30255
step
goto 52.00,48.30
Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
Water 2 parched Ez-Gro Green Cabbage |q 30255/1 |goto 52.00,48.30
step
goto 52.30,48.80
talk Farmer Yoon##58646
turnin Learn and Grow III: Tending Crops##30255
accept Learn and Grow IV: Harvesting##30256
step
goto 52.00,48.30
clicknpc Ripe EZ-Gro Green Cabbage##59833
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto 52.00,48.30
step
goto 52.30,48.80
talk Farmer Yoon##58646
turnin Learn and Grow IV: Harvesting##30256
accept Learn and Grow V: Halfhill Market##30257
step
goto 52.80,48.00
click Dark Soil##210582
collect Marsh Lily##79268 |q 30257/1 |goto 52.80,48.00
step
goto 53.10,51.80
talk Gina Mudclaw##58706
turnin Learn and Grow V: Halfhill Market##30257
]])
