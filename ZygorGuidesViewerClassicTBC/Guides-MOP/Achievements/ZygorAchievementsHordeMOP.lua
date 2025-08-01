local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Celestial Family",{
achieveid={8519},
patch='50400',
description="Complete the Celestial Tournament Scenario",
},[[
step
label "start"
This achievement requires you to obtain all 4 of the celesital pets on the Timeless Isle.
In order to do so, you must complete the _Celestial Tournament_ every week to earn _Celestial Coins_. These are used to purchase the 4 pets.
|confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have _3 Celestial Coins_ in order to obtain each pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Yu'la, Broodling of Yu'lon##102147 |next "yulal" |only if not achieved(8519,3) |or |goto Timeless Isle/0 34.80,59.70
buy 1 Xu-Fu, Cub of Xuen##101771 |next "xuful" |only if not achieved(8519,1) |or |goto Timeless Isle/0 34.80,59.70
buy 1 Zao, Calfling of Niuzao##102146 |next "zaol" |only if not achieved(8519,4) |or |goto Timeless Isle/0 34.80,59.70
buy 1 Chi-Chi, Hatchling of Chi-Ji##102145 |next "chichil" |only if not achieved(8519,2) |or |goto Timeless Isle/0 34.80,59.70
step
label "yulal"
Use the _Yu'la, Broodling of Yu'lon_ in your bags. |use Yu'la, Broodling of Yu'lon##102147
learnpet Yu'la, Broodling of Yu'lon##72463
|next "check"
|only if not achieved(8519,3)
step
label "chichil"
Use the _Chi-Chi, Hatchling of Chi-Ji_ in your bags. |use Chi-Chi, Hatchling of Chi-Ji##102145
learnpet Chi-Chi, Hatchling of Chi-Ji##72462
|next "check"
|only if not achieved(8519,2)
step
label "zaol"
Use the _Zao, Calfling of Niuzao_ in your bags. |use Zao, Calfling of Niuzao##102146
learnpet Zao, Calfling of Niuzao##72464
|next "check"
|only if not achieved(8519,4)
step
label "xuful"
Use the _Xu-Fu, Cub of Xuen_ in your bags. |use Xu-Fu, Cub of Xuen##101771
learnpet Xu-Fu, Cub of Xuen##71942
|next "check"
|only if not achieved(8519,1)
step
label "check"
This will display your progress up to this point:
Yu'la obtained |achieve 8519/3
Xu-Fu obtained |achieve 8519/1
Zao obtained |achieve 8519/4
Chi-Chi obtained |achieve 8519/2
|confirm |next "start"
step
Congratulations, you have obtained the _Celestial Family_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Crazy for Cats",{
achieveid={8397},
patch='50400',
description="Obtain 20 of the cats listed below.",
},[[
step
This guide will help you obtain 20 different cat pets for the achievement and title.
All of the pets in this guide are in-game, and do not require the Blizzard Store or TCG to obtain.
|confirm
step
label "menu"
Click here to obtain the Black Tabby Cat |confirm |next "blacktabby" |only if not achieved(8397,1)
Click here to obtain the Bombay Cat |confirm |next "bombay" |only if not achieved(8397,2)
Click here to obtain the Calico Cat |confirm |next "calico" |only if not achieved(8397,3)
Click here to obtain the Cat |confirm |next "normal" |only if not achieved(8397,4)
Click here to obtain the Cheetah Cub |confirm |next "cheetah" |only if not achieved(8397,5)
Click here to obtain the Cornish Rex |confirm |next "cornish" |only if not achieved(8397,7)
Click here to obtain the Darkmoon Cub |confirm |next "darkmoon" |only if not achieved(8397,8)
Click here to obtain the Feline Familiar |confirm |next "felinefam" |only if not achieved(8397,9)
Click here to obtain the Fluxfire Feline |confirm |next "fluxfire" |only if not achieved(8397,10)
Click here to obtain the Mr. Bigglesworth |confirm |next "bigglesworth" |only if not achieved(8397,12)
Click here to obtain the Orange Tabby Cat |confirm |next "orangetabby" |only if not achieved(8397,14)
Click here to obtain the Panther Cub |confirm |next "panthercub" |only if not achieved(8397,15)
Click here to obtain the Sand Kitten |confirm |next "sandkitten" |only if not achieved(8397,16)
Click here to obtain the Sapphire Cub |confirm |next "sapphire" |only if not achieved(8397,17)
Click here to obtain the Siamese Cat |confirm |next "siamese" |only if not achieved(8397,18)
Click here to obtain the Silver Tabby Cat |confirm |next "silvertabby" |only if not achieved(8397,19)
Click here to obtain the Snow Cub |confirm |next "snowcub" |only if not achieved(8397,20)
Click here to obtain the White Kitten |confirm |next "whitekitten" |only if not achieved(8397,23)
Click here to obtain the Winterspring Cub |confirm |next "winterspring" |only if not achieved(8397,24)
Click here to obtain Xu-Fu, Cub of Xuen |confirm |next "xufu" |only if not achieved(8397,25)
step
label "blacktabby"
_Kill_ any and all mobs in _Hillsbrad Foothills_
|tip Every mob here has a chance to drop the Black Tabby Cat's carrier
collect 1 Cat Carrier (Black Tabby)##8491 |goto Hillsbrad Foothills 58.80,74.60
step
learnpet Black Tabby Cat##7383 |use Cat Carrier (Black Tabby)##8491
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "bombay"
talk Rickle Goldgrubber##8123
buy 1 Cat Carrier (Bombay)##8485 |goto The Cape of Stranglethorn/0 40.10,72.40
These pets aren't available to the Horde by normal means.
Alternatively, you can purchase this from the Horde Auctioneers in the home cities, although it may not be available.
step
learnpet Bombay Cat##7385  |use Cat Carrier (Bombay)##8485
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "calico"
talk Breanni##28951
buy 1 Calico Cat##46398 |goto Dalaran 58.60,39.60
step
learnpet Calico Cat##34364 |use Calico Cat##46398
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "normal"
The _Cat_ is level 1. Challenge one to a pet battle and capture it.
learnpet Cat##62019 |goto Elwynn Forest 44.60,53.40
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "cheetah"
The _Cheetah Cubs_ are level 3. Challenge one to a pet battle and capture it.
learnpet Cheetah Cub##62129 |goto Northern Barrens 66.50,71.30
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "cornish"
talk Rickle Goldgrubber##8123
buy 1 Cat Carrier (Cornish Rex)##8486 |goto The Cape of Stranglethorn/0 40.10,72.40
These pets aren't available to the Horde by normal means.
Alternatively, you can purchase this from the Horde Auctioneers in the home cities, although it may not be available.
step
learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "darkmoon"
This pet requires Darkmoon Island to be accessible.
|confirm
step
|goto Darkmoon Island/0,56.00,52.90 |n
Follow the Path to the Darkmoon Faire |goto Darkmoon Island/0,56.00,52.90,1 |noway |c
step
Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
earn 90 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy 1 Darkmoon Cub##74981 |goto Darkmoon Island/0,48.20,69.60
step
learnpet Darkmoon Cub##56031 |use Darkmoon Cub##74981
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "fluxfire"
The _Fluxfire Felines_ in the area are around level 1.
learnpet Fluxfire Feline##68838 |goto New Tinkertown 36.60,52.70
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "orangetabby"
talk Rickle Goldgrubber##8123
buy 1 Cat Carrier (Orange Tabby)##8487 |goto The Cape of Stranglethorn/0 40.10,72.40
These pets aren't available to the Horde by normal means.
Alternatively, you can purchase this from the Horde Auctioneers in the home cities, although it may not be available.
step
learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "panthercub"
talk Bwemba##53081
accept Bwemba's Spirit##29219 |goto Orgrimmar,32.60,68.10
accept To Bambala##29220 |goto Orgrimmar,32.60,68.10
step
talk Kil'karil##52980
turnin To Bambala##29220 |goto Northern Stranglethorn,64.60,40.00
accept Serpents and Poison##29221 |goto Northern Stranglethorn,64.60,40.00
step
kill 10 Jungle Serpent |q 29221/1 |goto Northern Stranglethorn 61.20,39.80
Click Injured Bambala Headhunters
|tip They look like green bodies laying on the ground around this area.
Heal 10 Headhunters |q 29221/2 |goto Northern Stranglethorn 61.20,39.80
step
talk Kil'karil##52980
turnin Serpents and Poison##29221 |goto Northern Stranglethorn 64.60,40.00
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29222
step
Click the Bonfire
|tip It looks like a big pile of burning sticks.
Watch the dialogue
Use the Bonfire near Bambala |q 29222/1 |goto Northern Stranglethorn 65.10,39.90
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29222
step
talk Kil'karil##52980
accept Nesingwary Will Know##29223 |goto Northern Stranglethorn 64.60,40.00
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29223 |goto Northern Stranglethorn 44.10,22.90
accept Track the Tracker##29226 |goto Northern Stranglethorn 44.10,22.90
step
talk Grent Direhammer##52346
turnin Track the Tracker##29226 |goto Northern Stranglethorn 50.40,21.70
accept The Hunter's Revenge##29227 |goto Northern Stranglethorn 50.40,21.70
step
kill Mauti?##52349
Bring Grent Direhammer to the body of Mauti |q 29227/1 |goto Northern Stranglethorn 64.00,19.60
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29227
You will automatically accept a new quest:
accept Follow That Cat##29228
step
Go to this spot
Find Mauti's Lair |q 29228/1 |goto Northern Stranglethorn 77.70,68.40
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29228
accept Mauti##29230
step
kill Mauti##52372
Let Bwemba Inspect the Cat |q 29230/1 |goto Northern Stranglethorn 77.20,69.00
step
Next to you:
talk Bwemba##52234
turnin Mauti##29230
accept How's the Hunter Holding Up?##29231
step
goto Northern Stranglethorn 76.50,67.50 |n
Enter the cave |goto Northern Stranglethorn 76.50,67.50,0.50 |noway |c
step
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29231 |goto Northern Stranglethorn 76.10,66.70
accept Bury Me With Me Boots...##29232 |goto Northern Stranglethorn 76.10,66.70
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
collect Direhammer's Boots##68937 |q 29232/1 |goto Northern Stranglethorn 76.00,66.50
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29232 |goto Northern Stranglethorn 76.10,66.70
step
Talk to Panther Cub
accept Some Good Will Come##29268 |goto Northern Stranglethorn 76.10,66.70
collect 1 Panther Cub##68833 |goto Northern Stranglethorn 76.10,66.70
step
learnpet Panther Cub##52226 |use Panther Cub##68833
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "sandkitten"
The _Sand Kittens_ are level 13. Challenge one to a pet battle and capture it.
learnpet Sand Kitten##62257 |goto Tanaris 33.10,71.00
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "sapphire"
This pet requires you to either have level 75 Pandaria Jewelcrafting, or purchase it from the Auction House.
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
You must complete Dailies for the _Golden Lotus_ to get the recipe for this pet.
|confirm
step
map Vale of Eternal Blossoms
path	54.60,23.70	52.80,23.10	47.00,18.70
path	42.60,15.00	41.80,17.80	36.90,18.00
path	353.50,21.30	35.00,28.70	35.60,34.50
path	42.20,29.10	45.40,29.60	47.90,26.50
path	50.80,31.50	53.60,28.60
Follow the path, mining any node you see.
Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
collect 3 Wild Jade##76138
step
create 1 Sapphire Cub##82775,Pandaria Jewelcrafting,75
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866
buy 1 Sapphire Cub##82775 |goto Orgrimmar 54.10,73.40
step
label "done"
learnpet Sapphire Cub##61883 |use Sapphire Cub##82775
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "siamese"
talk Dealer Rashaad##20980
buy 1 Cat Carrier (Siamese)##8490 |goto Netherstorm 43.40,35.20
step
learnpet Siamese Cat##7380 |use Cat Carrier (Siamese)##8490
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "silvertabby"
talk Rickle Goldgrubber##8123
buy 1 Cat Carrier (Silver Tabby)##8488 |goto The Cape of Stranglethorn/0 40.10,72.40
These pets aren't available to the Horde by normal means.
Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
step
learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "snowcub"
The _Snow Cubs_ are level 1. Challenge one to a pet battle and capture it.
learnpet Snow Cub##61689 |goto Dun Morogh 51.10,44.60
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "whitekitten"
talk Rickle Goldgrubber##8123
buy 1 Cat Carrier (White Kitten)##8489 |goto The Cape of Stranglethorn/0 40.10,72.40
These pets aren't available to the Horde by normal means.
Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
step
learnpet White Kitten##7386 |use Cat Carrier (White Kitten)##8489
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "winterspring"
talk Michelle De Rum##52830
buy 1 Winterspring Cub##69239 |goto Winterspring 59.80,51.60
step
learnpet Winterspring Cub##52831 |use Winterspring Cub##69239
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "felinefam"
This pet can only be obtained during the Hallows End event.
collect 150 Tricky Treat##33226
step
talk Chub##53757
buy Feline Familiar##70908 |goto Undercity,67.80,6.80
step
learnpet Feline Familiar##53884 |use Feline Familiar##70908
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "bigglesworth"
This pet is obtained through getting the Raiding with Leases Achievement.
|confirm
step
Capture a Mini Mindslayer |achieve 7934/1
Capture an Anubisath Idol |achieve 7934/2
Capture a Giant Bone Spider |achieve 7934/3
Capture a Fungal Abomination |achieve 7934/4
Capture a Stitched Pup |achieve 7934/5
Capture a Harbinger of Flame |achieve 7934/6
Capture a Corefire Imp |achieve 7934/7
Capture an Ashstone Core |achieve 7934/8
Capture an Untamed Hatchling |achieve 7934/9
Capture a Chrominius |achieve 7934/10
Capture a Death Talon Whelpguard |achieve 7934/11
Capture a Viscidus Globule |achieve 7934/12
step
Check your in-game mailbox for your new pet!
collect 1 Mr. Bigglesworth##93031
step
learnpet Mr. Bigglesworth##68655 |use Mr. Bigglesworth##93031
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "xufu"
You can only obtain this pet by purchasing it using _Celestial Coins_
You get Celestial Coins from completing the weekly quest, _The Celestial Tournament_.
|confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have _3 Celestial Coins_ in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "xufu"
step
talk Master Li##73082
buy 1 Xu-Fu, Cub of Xuen##101771 |goto Timeless Isle/0 34.80,59.70
step
Use the _Xu-Fu, Cub of Xuen_ in your bags. |use Xu-Fu, Cub of Xuen##101771
learnpet Xu-Fu, Cub of Xuen##71942
|next "menu" |only if not achieved(8397)
|next "end" |only if achieved(8397)
step
label "end"
Congratulations, you have obtained the _Crazy for Cats_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Going to Need More Traps",{
achieveid={6556},
patch='50004',
description="Capture 50 battle pets.",
},[[
step
For this achievement, you will need to _capture 50 pets in Pet Battles_.
Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
Earn the _Going to Need More Traps_ achievement |achieve 6556
step
Congratulations, you have earned the _Going to Need More Traps_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\He's Mine!",{
achieveid={6554},
patch='50004',
description="Capture 10 battle pets.",
},[[
step
For this achievement, you will need to _capture 10 pets in Pet Battles_.
Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
Earn the _He's Mine!_ achievement |achieve 6554
step
Congratulations, you have earned the _He's Mine!_ Achievement! |achieve 6554
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Master Pet Hunter",{
achieveid={6557},
patch='50004',
description="Capture 100 battle pets.",
},[[
step
For this achievement, you will need to _capture 100 pets in Pet Battles_.
Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
Earn the _Master Pet Hunter_ achievement |achieve 6557
step
Congratulations, you have earned the _Master Pet Hunter_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Pandaria Safari",{
achieveid={6589},
patch='50004',
description="Catch every battle pet in Pandaria.",
},[[
step
Capturing pets in Pandaria will require level 25 pets so train up!
confirm
step
Capture Sifang Otter Pup
learnpet Sifang Otter Pup##63358 |achieve 6589/43 |goto The Jade Forest 38.80,87.40
step
Capture Silkbead Snail |tip They are level 23-24.
learnpet Silkbead Snail##63001 |achieve 6589/45 |goto The Jade Forest 49.40,92.60
step
Capture Bucktooth Flapper |tip They are level 23-24.
learnpet Bucktooth Flapper##62992 |achieve 6589/7 |goto The Jade Forest 42.60,91.60
step
Capture Jungle Darter |tip They are level 23-24.
learnpet Jungle Darter##62997 |achieve 6589/18 |goto The Jade Forest 56.80,86.20
step
Capture Emerald Turtle |tip They are level 23-24.
learnpet Emerald Turtle##62994 |achieve 6589/10 |goto The Jade Forest 48.60,93.60
step
Capture Garden Frog |tip They are level 23-24.
learnpet Garden Frog##63002 |achieve 6589/13 |goto The Jade Forest 55.80,45.40
step
Capture Garden Moth |tip They are level 23-24.
learnpet Garden Moth##65215 |achieve 6589/14 |goto The Jade Forest 56.10,42.30
step
Capture Temple Snake |tip They are level 23-24.
learnpet Temple Snake##62999 |achieve 6589/51 |goto The Jade Forest 55.60,52.20
step
Capture Grove Viper |tip They are level 23-24.
learnpet Grove Viper##63004 |achieve 6589/16 |goto The Jade Forest 54.20,33.40
step
Capture Jumping Spider |tip They are level 23-24.
learnpet Jumping Spider##63715 |achieve 6589/17 |goto The Jade Forest 54.20,33.40
step
Capture Leopard Tree Frog |tip They are level 23-24.
learnpet Leopard Tree Frog##63919 |achieve 6589/21 |goto The Jade Forest 48.80,49.00
step
Capture Masked Tanuki |tip They are level 23-24.
learnpet Masked Tanuki##63003 |achieve 6589/26 |goto The Jade Forest 41.80,72.80
step
Capture Masked Tanuki Pup |tip They are level 23-24.
learnpet Masked Tanuki Pup##63716 |achieve 6589/27 |goto The Jade Forest 41.80,72.80
step
Capture Mirror Strider |tip They are level 23-24.
learnpet Mirror Strider##62998 |achieve 6589/29 |goto The Jade Forest 31.00,46.40
step
Capture Sandy Petrel |tip They are level 23-24.
learnpet Sandy Petrel##63006 |achieve 6589/36 |goto The Jade Forest 68.40,25.80
step
Capture Spirebound Crab |tip They are level 23-24.
learnpet Spirebound Crab##63005 |achieve 6589/48 |goto The Jade Forest 68.40,25.80
step
Capture Shrine Fly |tip They are level 23-24.
learnpet Shrine Fly##65216 |achieve 6589/40 |goto The Jade Forest 36.00,58.00
step
Capture Zooey Snake |tip They are level 23-24.
learnpet Zooey Snake##63555 |achieve 6589/55 |goto Kun-Lai Summit 66.60,85.60
step
Capture Szechuan Chicken |tip They are level 23-24.
learnpet Szechuan Chicken##63585 |achieve 6589/50 |goto Kun-Lai Summit 61.00,87.60
step
Capture Prairie Mouse |tip They are level 23-24.
learnpet Prairie Mouse##59702 |achieve 6589/33 |goto Kun-Lai Summit 66.60,77.60
step
Capture Plains Monitor |tip They are level 23-24.
learnpet Plains Monitor##63547 |achieve 6589/32 |goto Kun-Lai Summit 64.40,70.60
step
Capture Alpine Foxling |tip They are level 23-24.
learnpet Alpine Foxling##63550 |achieve 6589/1 |goto Kun-Lai Summit 44.60,65.80
step
Capture Alpine Foxling Kit |tip They are level 23-24.
learnpet Alpine Foxling Kit##64791 |achieve 6589/2 |goto Kun-Lai Summit 39.60,51.40
step
Capture Summit Kid |tip They are level 23-24.
learnpet Summit Kid##64248 |achieve 6589/49 |goto Kun-Lai Summit 41.40,69.60
step
Capture Tolai Hare |tip They are level 23-24.
learnpet Tolai Hare##63557 |achieve 6589/52 |goto Kun-Lai Summit 42.60,77.00
step
Capture Tolai Hare Pup |tip They are level 23-24.
learnpet Tolai Hare Pup##63558 |achieve 6589/53 |goto Kun-Lai Summit 42.60,77.00
step
Capture Grassland Hopper |tip They are level 23-24.
learnpet Grassland Hopper##63549 |achieve 6589/15 |goto Townlong Steppes 61.60,54.60
step
Capture Amber Moth |tip They are level 23-24.
learnpet Amber Moth##65187 |achieve 6589/3 |goto Townlong Steppes 48.20,78.00
step
Capture Kuitan Mongoose |tip They are level 23-24.
learnpet Kuitan Mongoose##63953 |achieve 6589/20 |goto Townlong Steppes 55.60,80.20
step
Capture Mongoose |tip They are level 23-24.
learnpet Mongoose##65190 |achieve 6589/30 |goto Townlong Steppes 57.20,75.40
step
Capture Mongoose Pup |tip They are level 23-24.
learnpet Mongoose Pup##63954 |achieve 6589/31 |goto Townlong Steppes 57.20,75.40
step
Capture Yakrat |tip They are level 23-24.
learnpet Yakrat##63957 |achieve 6589/54 |goto Townlong Steppes 77.60,83.60
step
Capture Crunchy Scorpion |tip They are level 23-24.
learnpet Crunchy Scorpion##63548 |achieve 6589/9 |goto Townlong Steppes 77.00,88.80
step
Capture Clouded Hedgehog |tip They are level 23-24.
learnpet Clouded Hedgehog##64242 |achieve 6589/8 |goto Townlong Steppes 54.80,85.60
step
Capture Resilient Roach |tip They are level 23-24.
learnpet Resilient Roach##64238 |achieve 6589/35 |goto Dread Wastes 44.80,27.00
step
Capture Emperor Crab |tip They are level 23-24.
learnpet Emperor Crab##65203 |achieve 6589/11 |goto Dread Wastes 45.00,77.00
step
Capture Rapana Whelk |tip They are level 23-24.
learnpet Rapana Whelk##64352 |achieve 6589/34 |goto Dread Wastes 37.80,61.60
step
Capture Silent Hedgehog |tip They are level 23-24.
learnpet Silent Hedgehog##64804 |achieve 6589/44 |goto Dread Wastes 63.40,69.40
step
Capture Shy Bandicoon |tip They are level 23-24.
learnpet Shy Bandicoon##64246 |achieve 6589/41 |goto Valley of the Four Winds 26.80,53.80
step
Capture Bandicoon |tip They are level 23-24.
learnpet Bandicoon##63062 |achieve 6589/5 |goto Valley of the Four Winds 23.40,45.60
step
Capture Bandicoon Kit |tip They are level 23-24.
learnpet Bandicoon Kit##63064 |achieve 6589/6 |goto Valley of the Four Winds 50.80,44.80
step
Capture Malayan Quillrat |tip They are level 23-24.
learnpet Malayan Quillrat##63094 |achieve 6589/23 |goto Valley of the Four Winds 39.20,28.80
step
Capture Malayan Quillrat Pup |tip They are level 23-24.
learnpet Malayan Quillrat Pup##63095 |achieve 6589/24 |goto Valley of the Four Winds 39.20,28.80
step
Capture Marsh Fiddler |tip They are level 23-24.
learnpet Marsh Fiddler##63096 |achieve 6589/25 |goto Valley of the Four Winds 47.80,42.00
step
Capture Softshell Snapling |tip They are level 23-24.
learnpet Softshell Snapling##63060 |achieve 6589/46 |goto Valley of the Four Winds 70.00,57.60
step
Capture Sifang Otter |tip They are level 23-24.
learnpet Sifang Otter##63057 |achieve 6589/42 |goto Valley of the Four Winds 71.00,54.60
step
Capture Amethyst Spiderling |tip They are level 23-24.
learnpet Amethyst Spiderling##63288 |achieve 6589/4 |goto Krasarang Wilds 77.20,16.00
step
Capture Jungle Grub |tip They are level 23-24.
learnpet Jungle Grub##63304 |achieve 6589/19 |goto Krasarang Wilds 67.60,21.80
step
Capture Luyu Moth |tip They are level 23-24.
learnpet Luyu Moth##65124 |achieve 6589/22 |goto Krasarang Wilds 67.60,26.00
step
Capture Savory Beetle |tip They are level 23-24.
learnpet Savory Beetle##63291 |achieve 6589/37 |goto Krasarang Wilds 80.40,18.20
step
Capture Sea Gull |tip They are level 23-24. Must be caught as a secondary pet in the area.
learnpet Sea Gull##62953 |achieve 6589/38 |goto Krasarang Wilds 80.40,18.20
step
Capture Shore Crab |tip They are level 23-24. Must be caught as a secondary pet in the area.
learnpet Shore Crab##61158 |achieve 6589/39 |goto Krasarang Wilds 80.40,18.20
step
Capture Spiny Terrapin |tip They are level 23-24.
learnpet Spiny Terrapin##63293 |achieve 6589/47 |goto Krasarang Wilds 82.60,26.60
step
Capture Mei Li Sparkler |tip They are level 23-24.
learnpet Mei Li Sparkler##65185 |achieve 6589/28 |goto Krasarang Wilds 45.60,53.80
step
Capture Feverbite Hatchling |tip They are level 23-24.
learnpet Feverbite Hatchling##65054 |achieve 6589/12 |goto Krasarang Wilds 19.60,46.60
step
Congratulations, you have earned the Pandaria Safari achievement! |only if achieved(6589)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes",{
achieveid={7934},
patch='50100',
description="This guide will walk you through several old world raids in order to attain 12 rare pets and an achievement.",
},[[
step
label "Leashes 1"
In order to attain these pets, we suggest you are level 80
All of the pets required are going to be _rare drops_, so you will have to go back through certain raids to get the pet to drop.
|tip These pets can also be bought from the AH, and once learned will count toward this achievement.
Click here if you would like to run the raids yourself |next "Leashes Raids 1" |confirm |or
Click here if you would like to purchase these from the AH |next "Leashes Pets 1" |confirm |or
step
label "Leashes Pets 1"
talk Auctioneer Drezmit##44866
Purchase Mini Mindslayer
Use Mini Mindslayer |use Mini Mindslayer##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Mini Mindslayer##68658 |achieve 7934/1
step
talk Auctioneer Drezmit##44866
Purchase Viscidus Globule
Use Viscidus Globule |use Viscidus Globule##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Viscidus Globule##68660 |achieve 7934/12
step
talk Auctioneer Drezmit##44866
Purchase Anubisath Idol
Use Anubisath Idol |use Anubisath Idol##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Anubisath Idol##68659 |achieve 7934/2
step
talk Auctioneer Drezmit##44866
Purchase Untamed Hatchling
Use Untamed Hatchling |use Untamed Hatchling##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Untamed Hatchling##68661  |achieve 7934/9
step
talk Auctioneer Drezmit##44866
Purchase Death Talon Whelpguard
Use Death Talon Whelpguard |use Death Talon Whelpguard##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Death Talon Whelpguard##68663 |achieve 7934/11
step
talk Auctioneer Drezmit##44866
Purchase Chrominius
Use Chrominius |use Chrominius##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Chrominius##68662 |achieve 7934/10
step
talk Auctioneer Drezmit##44866
Purchase Giant Bone Spider
Use Giant Bone Spider |use Giant Bone Spider##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Giant Bone Spider##68656 |achieve 7934/3
step
talk Auctioneer Drezmit##44866
Purchase Stitched Pup
Use Stitched Pup |use Stitched Pup##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Stitched Pup##68654 |achieve 7934/5
step
talk Auctioneer Drezmit##44866
Purchase Fungal Abomination
use the Fungal Abomination##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Fungal Abomination##68657 |achieve 7934/4
step
talk Auctioneer Drezmit##44866
Purchase Corefire Imp
Use Corefire Imp |use Corefire Imp##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Corefire Imp##68664 |achieve 7934/7
step
talk Auctioneer Drezmit##44866
Purchase Ashstone Core
Use Ashstone Core |use Ashstone Core##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Ashstone Core##68666 |achieve 7934/8
step
talk Auctioneer Drezmit##44866
Purchase Harbinger of Flame
Use Harbinger of Flame |use Harbinger of Flame##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Harbinger of Flame##68654 |achieve 7934/6
step
If you were unable to get all of the pets listed you can check back later to see if they are up on the AH |only if not achieved(7934)
Click here to return to the start of the guide |next "Leashes 1" |confirm |only if not achieved(7934)
Click here to finish the guide |next "Leashes 1 Congratz" |confirm |only if achieved(7934)
step
label "Leashes Raids 1"
Enter the Temple of Ahn'Qiraj |goto Ahn'Qiraj/2 51.40,26.50 < 1000
step
map Ahn'Qiraj/2
path loop off
path	41.80,19.80	39.10,26.20
Follow the path, clearing trash as you go until you get to the first boss, The Prophet Skeram. |goto Ahn'Qiraj/2 39.10,26.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Prophet Skeram##15263
collect Jewel of Maddening Whispers##93041 |n |goto Ahn'Qiraj/2 43.40,41.50
Use the Jewel of Maddening Whispers |use Jewel of Maddening Whispers##93041
learnpet Mini Mindslayer##68658 |achieve 7934/1
Click here if the pet did not drop |confirm
step
map Ahn'Qiraj/2
path follow loose;loop off;ants straight
path	43.60,41.40	46.90,41.40	48.40,46.70
path	49.10,57.00	52.80,64.10	52.80,64.10
path	49.60,64.70
Go down the ramp.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ahn'Qiraj/3
path follow loose;loop off;ants straight
path	42.80,29.60	42.90,40.80	45.70,49.20
path	45.70,62.30
Follow the ramp down.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	32.70,44.60	32.30,41.00	35.00,39.40
path	37.70,38.50	40.60,36.80	42.80,35.00
path	43.80,32.20	44.70,28.30	45.50,21.80
path	47.30,19.00	50.40,15.60	52.70,14.00
path	54.90,13.90	57.30,15.70	59.40,18.20
path	61.50,21.40	64.30,21.90	66.90,21.80
path	67.20,20.10	65.70,19.40	65.90,17.70
path	67.70,18.00	68.90,18.20
Follow the path |goto Ahn'Qiraj/1 68.90,18.20 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Viscidus##15299
In order to defeat this boss, you will need to Freeze him.
For melee, the enchant _Elemental Force_ paired with a fast weapon will be your friend.
When he gets frozen, unleash all of your attacks until he breaks.
The first time he should split into multiple tiny blobs. Kill all that you can to prevent massive health regeneration.
Repeat this, and the second time he shatters he should die.
collect Viscidus Globule##93039 |n |goto Ahn'Qiraj/1 70.40,18.80
Use your Viscidus Globule. |use Viscidus Globule##93039
learnpet Viscidus Globule##68660 |achieve 7934/12
Click here if the pet did not drop |confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	68.90,18.20	67.70,18.00	65.90,17.70
path	65.70,19.40
Go down the ramp |goto Ahn'Qiraj/1 65.70,19.40 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	61.90,24.60	56.60,33.60
path	56.00,43.90	54.60,49.50	52.10,51.20
path	49.10,51.20	45.90,52.60	45.00,54.70
path	46.10,59.50	47.30,61.00	50.30,65.60
path	56.00,67.80
Go into the open area here. |goto Ahn'Qiraj/1 57.10,70.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Emperor Vek'lor##15276
kill Emperor Vek'nilash##15275
collect Anubisath Idol##93040 |n |goto Ahn'Qiraj/1 57.70,70.70
Use your Anubisath Idol. |use Anubisath Idol##93040
learnpet Anubisath Idol##68659 |achieve 7934/2
Click here if the pet did not drop |confirm
step
Enter the doorway here |goto Burning Steppes/14 63.45,44.15
Click the Orb of Command to teleport to Blackwing Lair. |goto Burning Steppes/14 64.30,70.90 |n
Enter the Blackwing Lair |goto Blackwing Lair/1 51.70,81.80 < 5 |noway |c
step
kill Razorgore the Untamed##12435 |goto Blackwing Lair/1 35.70,67.20
|tip The objective of this fight is to destroy all the eggs in the room by controlling Razorgore the Untamed before killing him.
|tip When controlling Razorgore, he has the following abilities:
|tip Destroy Egg destroys a nearby egg. This is an instant cast.
|tip Calm Dragonkin puts the target Dragonkin to sleep for 30 seconds.
|tip Fireball Volley inflicts 1000 Fire damage to all enearby enemies. 2 second cast.
|tip When fighting Razorgore, he also has these abilities:
|tip Conglagration inflicts 3000 Fire damage over 10 seconds to the target, also hitting nearby enemies for 150 damage.
|tip Summon Player teleports the targeted player to Razorgore's location.
collect Unscathed Egg##93036 |n |goto Blackwing Lair/1 35.40,67.20
Use your Unscathed Egg |use Unscathed Egg##93036
learnpet Untamed Hatchling##68661  |achieve 7934/9
Click here if the pet did not drop |confirm
step
Enter the doorway. |goto Blackwing Lair 33.90,43.30 |c
step
talk Vaelastrasz the Corrupt##13020
Tell them that you can't.
You will fight after a short speech.
Click here when you have won. |confirm |goto Blackwing Lair 34.30,28.60
step
map Blackwing Lair/1
path loop off
path	Blackwing Lair/1 41.10,28.40	Blackwing Lair/1 44.90,28.30	Blackwing Lair/2 41.60,44.00
path	Blackwing Lair/2 25.00,61.10	Blackwing Lair/2 33.50,62.70	Blackwing Lair/2 49.30,80.30
path	Blackwing Lair/3 53.10,67.90
Follow the path, clearing trash and clicking Supression Devices as you make your way to the next boss, Broodlord Lashlayer |goto Blackwing Lair/3 53.10,67.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Broodlord Lashlayer##12017
|tip This is pretty much a basic fight.
He will have several abilities that knock you back.
collect Blackwing Banner##93037 |n |goto Blackwing Lair/3 50.60,61.40
Use your Blackwing Banner. |use Blackwing Banner##93037
learnpet Death Talon Whelpguard##68663 |achieve 7934/11
Click here if the pet did not drop |confirm
step
Clear the room and wait for _Firemaw_ to come down the ramp.
kill Firemaw##11983 |goto Blackwing Lair/3 40.40,32.80
|confirm
step
path loop off
path	Blackwing Lair/3 41.70,35.40	Blackwing Lair/3 32.00,39.10	Blackwing Lair/4 22.10,56.90
path	Blackwing Lair/4 28.30,48.40
Follow the path, clearing trash as you make your way to the next boss, Ebonroc. |goto Blackwing Lair/4 28.30,48.40 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ebonroc##14601 |goto Blackwing Lair/4 35,37
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Shadow of Ebonroc is a 8 second debuff that is cast on the main tank. It restores Ebonroc's health by 25,000 every time he hits the target.
confirm
step
kill Flamegor##11981 |goto Blackwing Lair/4 37.50,42.70
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Fire Nova deals 550 Fire damage to all raid members. This occurs every 5 seconds but only when enraged.
confirm
step
Click this Lever to start the next boss fight with Chromaggus. |goto Blackwing Lair/4 49.90,70.50
confirm
step
kill Chromaggus##14020 |goto Blackwing Lair/4 43.00,69.00
|tip Chromaggus uses breath attacks that hits the entire raid, within line of sight. There are 5 possible types.
|tip Incinerate: Red deals 3600-4300 Fire damage.
|tip Corrosive Acid: Green deals 875-1125 Nature damage every 3 seconds for 15 seconds. Also reduces armor by 4000-5000.
|tip Frost Burn: Blue reduces attack speed by 80% and deals 1000-1500 Frost damage.
|tip Ignight Flesh: Black deals 650-850 Fire damage every 3 seconds for 60 seconds. This can stack if used again before the original 60 seconds are up.
|tip Time Lapse: Bronze is a 6 second stun and reduces maximum health to half. Will also heal when the stun wears off.
|tip Chromaggus also used Brood Afflictions which debuff everyone in the zone.
_Red:_
|tip deals 50 Fire damage every 3 seconds. Will heal Chromaggus if an affected player dies.
_Green:_
|tip reduces healing by 50% and deals 50 Nature damage every 5 seconds.
_Blue:_
|tip slows movement speed by 70% and cast speed by 50%. Also drains 50 mana and 1 health every second.
_Black:_
|tip increases Fire damage taken by 100%.
_Bronze:_
|tip This is a 4 second stun that occurs randomly for 10 minutes. Can be removed with Hourglass Sand. |use Hourglass Sand##19183
collect Whistle of Chromatic Bone##93038 |n |goto Blackwing Lair/4 49.80,70.30
Use your Whistle of Chromatic Bone. |use Whistle of Chromatic Bone##93038
learnpet Chrominius##68662 |achieve 7934/10
Click here if the pet did not drop |confirm
step
Enter Naxxramas |goto Naxxramas/5 54.10,49.80 < 1000
|tip The entrance is in the building up in the air.
step
map Naxxramas/5
path loop off
path	55.10,47.10	Naxxramas/2 33.20,74.60	Naxxramas/2 33.10,65.10
path	Naxxramas/2 30.70,56.70
Follow the path, clearing trash as you make your way to the first arachnid boss, Anub'Rekhan. |goto Naxxramas/2 30.70,56.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Anub'Rekhan##15956 |goto Naxxramas/2 30.70,44.70
Note that a _slow fall_ mechanic will be useful here, as he knocks you into the air and will take significant fall damage depending on your class.
|confirm
step
map Naxxramas/2
path follow loose;loop off;ants straight
path	39.50,64.80	46.30,54.60	50.20,48.80
path	50.80,39.10
Clear the room of _Naxxramas Cultists_ once you get to the room.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grand Widow Faerlina##15953 |goto Naxxramas/2 44.40,35.80
|tip Killing the adds will help mitigate damage.
confirm
step
map Naxxramas/2
path loop off
path	52.10,41.70	53.70,50.00	59.30,54.80
path	59.50,67.20	64.30,70.60	67.70,60.60
path	67.90,51.90	64.00,35.90	62.70,29.50
path	64.70,25.10
Follow the path, clearing trash as you make your way to the next boss, Maexxna. |goto Naxxramas/2 64.70,25.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maexxna##15952
collect Dusty Clutch of Eggs##93030 |n |goto Naxxramas/2 70.60,16.80
Use the Dusty Clutch of Eggs. |use Dusty Clutch of Eggs##93030
learnpet Giant Bone Spider##68656 |achieve 7934/3
Click here if the pet did not drop |confirm
step
Enter the construct quarter. |goto Naxxramas/5 51.50,46.80 < 15 |c
step
Clear all the mobs across the river of poison. |goto Naxxramas/1 41.80,72.40
kill Patchwerk##16028
|tip Keep an eye out for him, as he patrols the path where the slimes are moving.
If you don't have a friend with you, this fight may be a little tough.
You will need to DPS him down quickly, as he'll deal more damage over time.
|confirm
step
map Naxxramas/1
path loop off
path	55.00,40.70	59.70,46.50
Follow the path, clearing trash as you make your way to the next boss,. |goto Naxxramas/1 59.70,46.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grobbulus##15931 |goto Naxxramas/1 60.60,48.60
This is a basic fight.
|confirm
step
map Naxxramas/1
path loop off
path	66.90,53.00	60.90,57.50	60.00,60.80
path	58.00,61.40	55.20,57.10	50.30,49.80
Follow the path, clearing trash as you make your way to the next boss, Gluth. He will aggro as soon as you enter the room. |goto Naxxramas/1 50.30,49.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Gluth is sort of a tough fight, not recommended for anyone solo but DPS.
You will need to have significantly decent dps in order to out do the heals he will be getting from his summoned minions.
If you have a partner, have them kill the adds.
kill Gluth##15932
collect Gluth's Bone##93029 |n |goto Naxxramas/1 48.10,46.80
Use Gloth's Bone. |use Gluth's Bone##93029
learnpet Stitched Pup##68654 |achieve 7934/5
Click here if the pet did not drop |confirm
step
map Naxxramas/5
path loop off
path	54.90,52.20	Naxxramas/4 33.00,22.80	Naxxramas/4 35.60,28.60
path	Naxxramas/4 33.50,37.60	Naxxramas/4 33.50,50.00
Follow the path, clearing trash as you make your way to the first boss, Noth the Plaguebringer. |goto Naxxramas/4 33.50,50.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Noth the Plaguebringer##15954 |goto Naxxramas/4 34.80,56.40
This is a basic tank and spank fight.
confirm
step
map Naxxramas/4
path loop off
path	39.30,56.80	43.60,35.70	50.00,35.60
Follow the path, clearing trash as you make your way to the next boss, Heigan the Unclean. |goto Naxxramas/4 50.00,35.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Heigan the Unclean##15936 |goto Naxxramas/4 49.40,44.20
Pay attention to the ground and avoid the poison.
confirm
step
map Naxxramas/4
path follow loose;loop off;ants straight
path	55.10,45.20	55.30,41.90	55.00,37.90
path	55.10,33.70	55.20,28.70	60.60,28.40
Follow the path into the Outer Ring hallway. |goto Naxxramas/4 60.60,28.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Loatheb##16011
During the fight, there will be spores that spawn.
Killing them while in melee range will give you a buff that increases your critical strike chance by 50%.
Get the buff to help you dps him down.
Throughout the duration of the fight, he will likely debuff you so that you can receive no healing.
That said, try and keep yourself shielded at all times if possible.
collect Blighted Spore##93032 |n |goto Naxxramas/4 75.90,29.60
use your Blighted Spore. |use Blighted Spore##93032
learnpet Fungal Abomination##68657 |achieve 7934/4
Click here if the pet did not drop |confirm
step
talk Lothos Riftwaker##14387 |goto Burning Steppes/16 54.30,83.40
Tell him "Transport me to the Molten Core." |goto Molten Core/1 27.90,26.50 |c
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
map Molten Core/1
path follow loose;loop off;ants straight
path	31.20,22.80	36.20,17.30	43.80,15.80
path	47.30,20.40	49.10,29.20	53.10,30.10
path	56.50,32.40	62.50,40.20
Follow the path, clearing trash as you make your way to the first boss, Lucifron. |goto Molten Core/1 62.50,40.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magmadar##11982
collect Blazing Rune##93034 |n |goto Molten Core/1 69.80,21.60
Use the Blazing Rune. |use Blazing Rune##93034
learnpet Corefire Imp##68664 |achieve 7934/7
Click here if the pet did not drop |confirm
step
Follow the path into the Molten Core. |goto Molten Core/1 42.70,13.60 |c
step
map Molten Core/1
path follow loose;loop off;ants straight
path	42.80,31.00	39.60,38.60	37.40,45.60
path	34.10,55.80	34.20,63.50	35.60,69.20
path	43.10,71.80	47.20,72.30	54.00,75.00
path	61.10,70.80	66.10,65.90	69.80,66.10
path	72.30,72.30	74.50,71.90	75.30,65.50
path	76.50,61.30	78.10,58.10	78.00,54.30
path	75.40,50.90	72.20,51.20	69.70,53.40
path	68.50,56.60
Follow the path to _Golemagg the Incinerator_. |goto Molten Core/1 68.49,57.00
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Golemagg the Incinerator##11988
collect Core of the Hardened Ash##93035 |n |goto Molten Core/1 68.50,57.00
Use the Core of Hardened Ash. |use Core of Hardened Ash##93035
learnpet Ashstone Core##68666 |achieve 7934/8
Click here if the pet did not drop |confirm
step
map Molten Core/1
path follow loose;loop off;ants straight
path	68.50,56.60	69.70,53.40	72.20,51.20
path	75.40,50.90	78.00,54.30	78.10,58.10
path	76.50,61.30	75.30,65.50	75.00,72.00
path	75.00,76.00	77.00,79.00
Follow the path to _Sulfuron Harbinger_. |goto Molten Core/1 83.00,83.20 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Sulfuron Harbinger##12098
collect Mark of Flame##93033 |n |goto Molten Core/1 83.00,83.20
Use your Mark of Flame. |use Mark of Flame##93033
learnpet Harbinger of Flame##68654 |achieve 7934/6
Click here if the pet did not drop |confirm
step
If you were unable to get all of the pets listed you can try again next week or attempt it on another character
Click here to return to the start of the guide |next "Leashes 1" |confirm
|only if not achieved(7934)
step
label "Leashes 1 Congratz"
Congratulations, you have obtained the _Raiding with Leashes_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes II: Attunement Edition",{
achieveid={8293},
patch='50300',
description="This guide will walk you through several old world raids in order to attain 10 rare pets and an achievement.",
},[[
step
label "Leashes 2"
In order to attain these pets, we suggest you are level 90
All of the pets required are going to be _rare drops_, so you will have to go back through certain raids to get the pet to drop.
|tip These pets can also be bought from the AH, and once learned will count toward this achievement.
Click here if you would like to run the raids yourself |next "Leashes Raids 2" |confirm |or
Click here if you would like to purchase these from the AH |next "Leashes Pets 2" |confirm |or
step
label "Leashes Pets 2"
talk Auctioneer Drezmit##44866
Purchase Lil' Bad Wolf
Use Lil' Bad Wolf |use Lil' Bad Wolf##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Lil' Bad Wolf##71014 |achieve 8293/1
step
talk Auctioneer Drezmit##44866
Purchase Menagerie Custodian
Use Menagerie Custodian |use Menagerie Custodian##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Menagerie Custodian##71015 |achieve 8293/2
step
talk Auctioneer Drezmit##44866
Purchase Fiendish Imp
Use Fiendish Imp |use Fiendish Imp##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Fiendish Imp##71033 |achieve 8293/4
step
talk Auctioneer Drezmit##44866
Purchase Netherspace Abyssal
Use Netherspace Abyssal |use Netherspace Abyssal##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Netherspace Abyssal##71016 |achieve 8293/3
step
talk Auctioneer Drezmit##44866
Purchase Tainted Waveling
Use Tainted Waveling |use Tainted Waveling##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Tainted Waveling##71018 |achieve 8293/6
step
talk Auctioneer Drezmit##44866
Purchase Tideskipper
Use Tideskipper |use Tideskipper##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Tideskipper##71017 |achieve 8293/5
step
talk Auctioneer Drezmit##44866
Purchase Coilfang Stalker
Use Coilfang Stalker |use Coilfang Stalker##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Coilfang Stalker##71019 |achieve 8293/7
step
talk Auctioneer Drezmit##44866
Purchase Phoenix Hawk Hatchling
Use Phoenix Hawk Hatchling |use Phoenix Hawk Hatchling##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Phoenix Hawk Hatchling##71022 |achieve 8293/10
step
talk Auctioneer Drezmit##44866
Purchase Pocket Reaver
Use Pocket Reaver |use Pocket Reaver##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Pocket Reaver##71020 |achieve 8293/8
step
talk Auctioneer Drezmit##44866
Purchase Lesser Voidcaller
Use Lesser Voidcaller |use Lesser Voidcaller##82800 |goto Orgrimmar/1 54.04,73.31
learnpet Lesser Voidcaller##71021 |achieve 8293/9
step
If you were unable to get all of the pets listed you can check back later to see if they are up on the AH |only if not achieved(8293)
Click here to return to the start of the guide |next "Leashes 2" |confirm |only if not achieved(8293)
Click here to finish the guide |next "Leashes 2 Congratz" |confirm |only if achieved(8293)
step
label "Leashes Raids 2"
Enter Karazhan |goto Karazhan/1 58.76,76.11 < 1000
step
map Karazhan/1
path loop off
path	53.00,64.10	Karazhan/3 54.50,65.90	Karazhan/3 45.20,54.50
path	Karazhan/3 36.80,65.40
Follow the path, clearing trash as you make your way to the next boss, Moroes. |goto Karazhan/3 36.80,65.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Moroes##15687 |goto Karazhan/3 29.90,64.40
confirm
step
map Karazhan/3
path loop off
path	46.40,55		66.60,49.80	71.20,42.80
path	Karazhan/4 63.40,42.10	Karazhan/4 56.20,37.60	Karazhan/4 66.20,33.10
path	Karazhan/4 76.60,41.50
Follow the path, clearing trash as you make your way to the next boss, the Maiden of Virtue. |goto Karazhan/4 76.60,41.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maiden of Virtue##16457 |goto Karazhan/4 81.40,47.70
|confirm
step
map Karazhan/4
path loop off
path	77.10,42.10	65.90,32.50	56.20,37.10
path	48.60,39.70	41.10,38.50	28.00,23.10
path	24.20,24.50	19.90,40.30	11.00,41.30
path	12.30,25.30
Follow the path, clearing trash as you make your way to the next boss, the Opera Event. |goto Karazhan/4 12.30,25.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Barnes##16812 |goto Karazhan/4 20.80,27.00
Tell him "I'm not an actor." and "Ok, I'll give it a try."
|tip This will start the Opera boss event, make sure you are ready.
confirm
step
You'll get one of three events: |goto Karazhan/4 21.00,35.30
The Big Bad Wolf |next "wolf" |confirm
Wizard of Oz |next "oz" |confirm
Romulo & Julianne |next "raj" |confirm
step
label "wolf"
talk Grandmother##17603 |goto Karazhan/4 17.00,34.70
Tell her "Oh, grandmother, what big ears you have."
|tip This will start the boss fight, make sure you are ready.
confirm
step
kill The Big Bad Wolf##17521 |goto Karazhan/4 18.40,34.90
|tip Terrifying Howl is cast every 25-35 seconds, fearing nearby enemies for 3 seconds.
|tip Little Red Riding Hood changes the target into Little Red Riding Hood, reducing their armor and resistances to 0, and increasing speed by 50%. Also pacifies and silences the target.
|tip This raid member will need to run away until this effect ends.
|tip Wide Swipe is cast every 25-35 seconds and stuns the target for 4 seconds.
collect Spiky Collar##97548 |n |goto Karazhan/4 18.00,34.40
Use your Spiky Collar. |use Spiky Collar##97548
learnpet Lil' Bad Wolf##71014 |achieve 8293/1
Click here if the pet did not drop |next "operaend" |confirm
step
label "oz"
kill The Crone##18168 |goto Karazhan/4 18.40,34.90
|tip Kill order: Dorothee, Roar, Strawman, Tinhead. Killing these spawn The Crone. Killing him ends the event.
_Abilities:_
|tip Dorothee: Water bolt hits for 2000 Frost damage. Frightened Scream AoE, fearing 3 raid members for 2 seconds.
|tip Roar: Frightened Scream AoE, fearing 3 raid members for 2 seconds.
|tip Strawman: Burning Straw chance to be disoriented for 6 seconds when hit by a Fire spell. Brain Bash stuns target for 4 seconds.
|tip Tinhead: Cleave make sure that the main tank is the only one that is in front of the boss when this occurs. Rust slows Tinhead's speed by 10%, stacking up to 8 times.
|tip The Crone: Cyclone knocks the targeted player up into the air, dealing fall damage. Chain Lightning deals 2800 damage, jumping to nearby targets and dealing increased damage after every jump. Hits up to 5 players.
collect Spiky Collar##97548 |n |goto Karazhan/4 18.00,34.40
Use your Spiky Collar. |use Spiky Collar##97548
learnpet Lil' Bad Wolf##71014 |achieve 8293/1
Click here if the pet did not drop |next "operaend" |confirm
step
label "raj"
kill Romulo##17533 |goto Karazhan/4 18.40,34.90
|tip Backward Lunge strikes an enemmy behind the Romulo, dealing weapon damage plus 300 and knocking the target back.
|tip Deadly Swathe strikes nearby enemies in front of Romulo, dealing weapon damage plus 300 and hitting up to 3 targets.
|tip Poisoned Thrust is a stacking debuff that reduces all stats by 10%, stacking up to 8 times.
|tip Daring inceases Romulo's attack speed and Physical damage dealt by 50% for 8 seconds.
kill Julianne##17534
|tip Eternal Affection heals one of Julianne's allies for about 50,000.
|tip Powerful Attraction stuns Julianne's target for 6 seconds.
|tip Blinding Passion deals 4500 Holy damage over 4 seconds.
|tip Devotion increases Julianne's spell casting speed and damage by 50% for 10 seconds.
collect Spiky Collar##97548 |n |goto Karazhan/4 18.00,34.40
Use your Spiky Collar. |use Spiky Collar##97548
learnpet Lil' Bad Wolf##71014 |achieve 8293/1
Click here if the pet did not drop |next "operaend" |confirm
step
label "operaend"
map Karazhan
path loop off
path	Karazhan/4 20.00,41.20	Karazhan/5 47.00,83.90	Karazhan/5 78.10,58.40
path	Karazhan/5 65.00,25.70	Karazhan/6 40.90,16.20	Karazhan/6 41.80,34.50
path	Karazhan/6 48.60,46.50	Karazhan/6 52.80,53.90	Karazhan/6 58.10,62.10
path	Karazhan/6 55.90,73.90	Karazhan/6 62.50,75.40	Karazhan/6 65.30,68.80
path	Karazhan/7 57.30,27.00	Karazhan/7 47.80,62.50	Karazhan/7 53.90,54.90
path	Karazhan/7 51.00,67.90	Karazhan/8 60.50,51.90	Karazhan/8 44.20,39.90
path	Karazhan/8 29.80,57.70	Karazhan/8 45.70,74.50	Karazhan/9 61.10,21.30
path	Karazhan/9 59.90,17.60	Karazhan/9 56.00,14.50	Karazhan/9 45.60,14.10
path	Karazhan/9 40.50,19.90
Follow the path, clearing trash as you make your way to the next boss, The Curator. |goto Karazhan/9 40.50,19.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Curator##15691
collect Instant Arcane Sanctum Security Kit##97549 |n |goto Karazhan/9 41.00,22.00
Use your _Instant Arcane Sanctum Security Kit_. |use Instant Arcane Sanctum Security Kit##97549
learnpet Menagerie Custodian##71015 |achieve 8293/2
If the pet didn't drop, click here. |confirm
step
map Karazhan/9
path loop off
path	52.20,42.80	49.10,46.10	49.70,51.40
path	49.90,59.30	40.90,59.20	33.80,62.20
path	41.90,67.40	44.40,79.70	40.00,83.00
path	32.10,68.20	Karazhan/10 28.70,55.90	Karazhan/10 27.70,43.50
path	Karazhan/10 36.50,33.30	Karazhan/10 36.80,22.30
Follow the path, clearing trash as you make your way to the next boss, Terestian Illhoof. |goto Karazhan/10 36.80,22.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Perplexing Bookshelf to gain access to the secret room.
confirm
step
kill Terestian Illhoof##15688
collect Satyr Charm##97551 |n |goto Karazhan/11 55.80,76.60
Use the _Satyr Charm_. |use Satyr Charm##97551
learnpet Fiendish Imp##71033 |achieve 8293/4
Click here if the pet didn't drop. |confirm
step
map Karazhan/10
path loop off
path	38.30,25.60	48.30,45.20	55.20,46.80
path	60.20,58.50	Karazhan/12 48.40,57.20	Karazhan/12 54.60,49.60
path	Karazhan/12 52.80,70.90	Karazhan/12 44.50,80.80	Karazhan/12 36.30,78.00
path	Karazhan/12 27.10,61.50	Karazhan/12 27.00,57.60	Karazhan/12 21.30,47.60
path	Karazhan/12 22.10,44.10	Karazhan/12 23.80,41.60	Karazhan/12 26.70,38.20
path	Karazhan/12 30.10,33.90	Karazhan/12 34.40,26.70	Karazhan/12 39.90,18.60
Follow the path, clearing trash as you make your way to the next boss |goto Karazhan/12 39.90,18.60
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Gamesman's Hall Door to enter the Gamesman's Hall
|confirm
step
talk King Llane##21684 |goto Karazhan/14 40.90,68.90
"Control King Llane"
|tip This will start the boss fight, make sure you are ready.
confirm
step
kill Warchief Blackhand##21752 |goto Karazhan/14 39.40,67.60
|tip The goal of this fight is to kill Warchief Blackhand by using your "chess" pieces, without letting them kill King Llane. Each piece has their own abilities.
_King Llane_
|tip Sweep deals 4000 damage to 3 frontal adjacent enemies.
|tip Heroism grants 50% increased damage to all allies on 8 adjacent squares.
_Human Conjurer_
|tip Elemental Blast deals 4000 damage to any single enemy piece.
|tip Rain of Fire deals 6000 damage to any enemy chess piece and all adjacent enemy pieces.
_Human Cleric_
|tip Healing heals a friendly piece for 12,000.
|tip Holy Lance deals 2000 damage to enemy pieces standing in front in a straight line of 3.
_Human Charger_
|tip Smash deals 3000 damage to a target 1 square in front.
|tip Stomp reduces damage dealt by all adjacent enemy pieces by 50%. Lasts 10 seconds.
_Conjured Water Elemental_
|tip Geyser deals 3000 damage to all adjacent enemy pieces.
|tip Water Shield reduces damage taken by 50% for 5 seconds.
_Human Footman_
|tip Heroic Blow deals 1000 damage to a target 1 square in front.
|tip Shield Block absorbs 500 damage and lasts 5 seconds.
_Medivh cheats:_
|tip Healing Cheat heals Warchief Blackhand and all other enemy pieces to full health.
|tip Damage Cheat places a fire AoE on a random player controlled piece.
|tip Berserking Cheat grants one of Medivh's pieces increased size, speed, and damage.
confirm
step
map Karazhan/14
path loop off
path	52.00,61.60	56.00,56.80	50.10,46.20
path	50.10,46.20	68.30,46.20	77.20,58.00
Follow the path, clearing trash as you go. Climb these stairs all the way to the top. |goto Karazhan/17 48.20,85.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Karazhan/17
path loop off
path	40.90,81.60	39.70,72.30	44.70,64.10
Follow this path to the final boss, Prince Malchezaar. |goto Karazhan/17 44.70,64.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Prince Malchezaar##15690
collect Netherspace Portal-Stone##97550 |n |goto Karazhan/17 48.60,53.60
Use your Netherspace Portal-Stone. |use Netherspace Portal-Stone##97550
learnpet Netherspace Abyssal##71016 |achieve 8293/3
If the pet did not drop, click here. |confirm
step
Enter the Serpentshrine Cavern |indoors Coilfang Reservoir |goto Zangarmarsh/0 51.90,32.99
confirm
step
Take the elevator down |goto Serpentshrine Cavern 13.50,58.90 < 5 |c
step
map Serpentshrine Cavern
path loop off
path	15.40,58.00	17.30,66.40	19.00,69.20
path	19.70,68.00
Follow the path to the second elevator, and then take it up. |goto Serpentshrine Cavern 19.70,68.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Serpentshrine Cavern
path loop off
path	21.40,72.90	25.80,73.70	28.10,80.10
path	32.20,82.60
Follow this path, clearing trash as you make your way to the first boss, Hydross the Unstable. |goto Serpentshrine Cavern 32.20,82.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hydross the Unstable##21216
collect Tainted Core##97553 |n |goto Serpentshrine Cavern 36.80,84.80
Use your _Tainted Core_. |use Tainted Core##97553
learnpet Tainted Waveling##71018 |achieve 8293/6
Click here if the pet didn't drop. |confirm
step
map Serpentshrine Cavern
path loop off
path	36.50,69.30	33.20,58.20	36.00,48.70
path	40.80,48.40	48.10,40.90	53.30,41.90
Follow the provided path. |goto Serpentshrine Cavern 53.30,41.90
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Morogrim Tidewalker##21213
collect Shell of Tide-Calling##97552 |n |goto Serpentshrine Cavern 59.40,27.40
Use your _Shell of Tide-Calling_. |use Shell of Tide-Calling##97552
learnpet Tideskipper##71017 |achieve 8293/5
Click here if the pet didn't drop. |confirm
step
map Serpentshrine Cavern
path loop off
path	53.30,41.90	48.10,40.90	40.80,48.40
path	46.60,48.00	48.50,57.60
Follow the provided path. |goto Serpentshrine Cavern 48.50,57.60
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Bridge Control here. |goto Serpentshrine Cavern/1 50.60,58.30
confirm
step
kill Lady Vashj##21212
collect Dripping Strider Egg##97554 |n |goto Serpentshrine Cavern 71.60,59.00
Use your _Dripiping Strider Egg_. |use Dripping Strider Egg##97554
learnpet Coilfang Stalker##71019 |achieve 8293/7
Click here ifthe pet didn't drop. |confirm
step
Enter The Eye |goto Tempest Keep/1 50.06,91.93 < 1000
step
map Tempest Keep
path loop off
path	50.00,87.60	50.10,75.60	50.10,65.50
path	50.00,62.70	47.70,64.40
Follow the path, clearing trash as you make your way to the first boss, Al'ar. |goto Tempest Keep 47.70,64.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Al'ar##19514
collect Brilliant Phoenix Hawk Feather##97557 |n |goto Tempest Keep/1 49.60,58.40
Use your _Brilliant Phoenix Hawk Feather_. |use Brilliant Phoenix Hawk Feather##97557
learnpet Phoenix Hawk Hatchling##71022 |achieve 8293/10
Click here if the pet didn't drop. |confirm
step
map Tempest Keep
path loop off
path	45.10,58.80	47.10,51.00	40.50,41.50
path	31.80,44.60
Follow the path, clearing trash as you make your way to the next boss, the Void Reaver. |goto Tempest Keep 31.80,44.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Void Reaver##19516
collect Tiny Fel Engine Key##97555 |n |goto Tempest Keep/1 25.30,49.50
Use your _Tiny Fel Engine Key_. |use Tiny Fel Engine Key##97555
learnpet Pocket Reaver##71020 |achieve 8293/8
Click here if the pet didn't drop. |confirm
step
map Tempest Keep
path loop off
path	32.10,44.40	40.50,41.50	46.90,50.80
path	53.00,51.10	59.60,41.60	68.20,44.50
Follow the path, clearing trash as you make your way to the next boss, High Astromancer Solarian. |goto Tempest Keep 68.20,44.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Astromancer Solarian##18805
collect Crystal of the Void##97556 |n |goto Tempest Keep/1 73.80,49.20
Use your _Crystal of the Void_. |use Crystal of the Void##97556
learnpet Lesser Voidcaller##71021 |achieve 8293/9
Click here if the pet didn't drop. |confirm
step
If you were unable to get all of the pets listed you can try again next week or attempt it on another character
Click here to return to the start of the guide |next "Leashes 2" |confirm
|only if not achieved(8293)
step
label "Leashes 2 Congratz"
Congratulations, you have earned the _Raiding with Leashes II: Attunement Edition_ achievement.
|achieve 8293
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes III: Drinkin' From the Sunwell",{
achieveid={9824},
patch='60100',
description="This guide will walk you through several old world raids in order to attain 12 rare pets and an achievement.",
},[[
step
label "Leashes 3"
In order to attain these pets, we suggest you be at least level 90
|tip All of the pets required are going to be rare drops, so you will have to go back through certain raids to get them.
|tip These pets can also be bought from the AH.
Click here if you would like to run the raids yourself |next "Leashes Raids 3" |confirm |or
Click here if you would like to purchase these from the AH |next "Leashes Pets 3" |confirm |or
step
label "Leashes Pets 3"
talk Auctioneer Drezmit##44866
|tip Purchase Leviathan Hatchling.
Use Leviathan Hatchling |use Leviathan Hatchling##82800
learnpet Leviathan Hatchling##90201 |achieve 9824/2 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Abyssius.
Use Abyssius |use Abyssius##82800
learnpet Abyssius##90202 |achieve 9824/3 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Fragment of Anger.
Use Fragment of Anger |use Fragment of Anger##82800
learnpet Fragment of Anger##90203 |achieve 9824/4 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Fragment of Desire.
Use Fragment of Desire |use Fragment of Desire##82800
learnpet Fragment of Desire##90205 |achieve 9824/6 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Fragment of Suffering.
Use Fragment of Suffering |use Fragment of Suffering##82800
learnpet Fragment of Suffering##90204 |achieve 9824/5 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Sister of Temptation.
Use Sister of Temptation |use Sister of Temptation##82800
learnpet Sister of Temptation##90206 |achieve 9824/7 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Stinkrot.
Use Stinkrot |use Stinkrot##82800
learnpet Stinkrot##90207 |achieve 9824/8 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Grotesque.
Use Grotesque |use Grotesque##82800
learnpet Grotesque##90200 |achieve 9824/1 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Hyjal Wisp.
Use Hyjal Wisp |use Hyjal Wisp##82800
learnpet Hyjal Wisp##90208 |achieve 9824/9 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Sunblade Micro-Defender.
Use Sunblade Micro-Defender |use Sunblade Micro-Defender##82800
learnpet Sunblade Micro-Defender##90212 |achieve 9824/10 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Wretched Servant.
Use Wretched Servant |use Wretched Servant##82800
learnpet Wretched Servant##90214 |achieve 9824/12 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Chaos Pup.
Use Chaos Pup |use Chaos Pup##82800
learnpet Chaos Pup##90213 |achieve 9824/11 |goto Orgrimmar/1 54.04,73.31
step
You can check back later to see if the remaining pets are up on the AH |only if not achieved(9824)
Click here to return to the start of the guide |next "Leashes 3" |confirm |only if not achieved(9824)
Proceeding |next "Leashes 3 Congratz" |only if achieved(9824)
step
label "Leashes Raids 3"
Enter Black Temple |goto Black Temple/2 21.89,59.54 < 1000 |c
step
map Black Temple/2
path loop off; dist 15
path	23.00,46.70	24.80,41.10	32.70,41.40
path	37.10,38.40	37.40,21.70
Follow the path, clearing trash as you make your way to the first boss, High Warlord Naj'entus. |goto Black Temple/2 37.40,21.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Warlord Naj'entus##22887
|tip Needle Spine deals 2,900-3,900 damage and an additional 2,500 Frost damage to 3 random targets.
|tip Impaling Spine hits a random raid member for 4,500-4,900 damage, stunning the target and applying a DoT that deals 2,750 damage every 3 seconds for 30 seconds.
|tip Tidal Shield makes Naj'entus immune to all damage and regenerates health. It can be broken by a player throwing Naj'entus' Spine at him. The raid takes 8,500 frost damage once the shield is broken. |use Najentus Spine##32408
|tip Enrage occurs after 8 minutes of combat, wiping the raid.
collect Leviathan Egg##122104 |n
Use your Leviathan Egg |use Leviathan Egg##122104
learnpet Leviathan Hatchling##90201 |achieve 9824/2 |goto Black Temple/2 43.60,19.40
Click here if the pet did not drop |confirm
step
map Black Temple/2
path loop off; dist 15
path	33.40,19.20	29.20,19.70	27.40,14.70
path	27.50,6.60
Follow the path, clearing trash as you make your way to the next boss, Supremus. |goto Black Temple/2 27.50,6.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Black Temple/1
path loop off; dist 15
path	28.10,67.80	31.90,51.90	42.10,50.00
Follow the path, clearing trash as you make your way to the next boss, Supremus. |goto Black Temple/1 42.10,50.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Supremus##22898
_Phase 1_
|tip Molten Flame is a blue fire trail coming from Supremus, spreading along the ground towards a random target. The flames deal 3,325-3,675 fire damage per second.
|tip Hateful Strike is a melee attack that deals 27,500-32,200 damage to the target with the most health within melee range.
_Phase 2_
|tip Gaze fixes aggro on a target and Supremus moves towards them at 90% normal speed.
|tip Molten Punch affects the target if they are affected by Gaze. It knocks the target back and deals 5,200 damage if they are within 40 yards of Supremus.
|tip Volcanic Geyser randomly summons small volcanoes which deal 4,100-4,800 fire damage to targets within 15 yards.
collect Shard of Supremus##122106 |n
Use your Shard of Supremus |use Shard of Supremus##122106
learnpet Abyssius##90202 |achieve 9824/3 |goto Black Temple/1 61.10,47.60
Click here if the pet did not drop |confirm
step
path loop off; dist 15
path	Black Temple/1 64.00,47.60	Black Temple/3 17.20,50.60	Black Temple/3 24.90,51.20
path	Black Temple/3 29.50,56.60	Black Temple/1 83.50,53.60	Black Temple/3 33.70,51.40
path	Black Temple/3 39.70,59.90	Black Temple/3 40.80,67.80	Black Temple/3 40.80,79.80
Follow the path, clearing trash as you make your way to the next boss, Shade of Akama. |goto Black Temple/3 40.80,79.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Akama##23191 |goto Black Temple/3 40.90,74.50
Tell him "I'm with you, Akama."
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill Shade of Akama##22841 |goto Black Temple/3 40.80,88.90
_Phase 1_
|tip You must kill the Channelers around Shade of Akama, as well as the adds he spawns during this time.
|tip Ashtongue Defenders use Debilitating Shot, which applies a debuff to the target that reduces all melee damage done by 75% for 5 seconds.
|tip Ashtongue Elementalists use Rain of Fire, an AoE which does 3,500 Fire damage every 2 seconds for 8 seconds.
|tip Ashtongue Rogues use Debilitating Poison, which slows attack and casting speed of the target by 50% along with a DoT that does 1,800 Nature damage every 2 seconds for 8 seconds.
|tip Ashtongue Spiritbinders use Spirit Mend, which heals another Ashtongue for 2,500 every 2 seconds for 10 seconds. Chain Heal heals up to 5 Ashtongue for 7,000 each.
_Phase 2_
|tip This phase starts when the Channelers are killed and the Shade becomes attackable.
|tip During this phase all raid members (even most healers) need to attack and kill the Shade of Akama as quickly as possible.
|confirm
step
path loop off; dist 15
path	Black Temple/3 40.90,80.10	Black Temple/3 40.90,67.60	Black Temple/3 53.00,66.10
path	Black Temple/3 60.30,66.30	Black Temple/3 67.90,66.60	Black Temple/3 70.10,75.90
path	Black Temple/3 57.90,91.40	Black Temple/5 75.50,67.50	Black Temple/5 55.20,68.50
path	Black Temple/5 34.60,56.50
Follow the path, clearing trash as you make your way to the next boss, Teron Gorefiend. |goto Black Temple/5 34.60,56.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Teron Gorefiend##22871 |goto Black Temple/5 39,19
|tip Incinerate is cast on a random raid member, dealing 3,000 fire damage and applying a debuff which does an additional 8,000 fire damage over 3 seconds.
|tip Doom Blossom summons a dark cloud which lasts for 2 minutes and casts Shadow Bolts at random raid members, dealing 1,500 shadow damage.
|tip Crushing Shadows is cast on 5 random raid members, applying a 15 second debuff which increases shadow damage taken by 60%.
|tip Shadow of Death is cast every 30 seconds on a random raid member, giving a debuff that kills the target after 55 seconds. Upon their death, 4 Shadowy Constructs spawn and the player turns into a ghost for 60 seconds.
_Shadowy Constructs_
|tip Shadow Strike hits melee targets for about 2,500 shadow damage.
|tip Atrophy is a 60 second debuff applied on a melee attack. It decreases attack speed by 5% and stacks up to 10 times.
|tip While Immune, no damage is taken from normal players, only by players in ghost form.
|confirm
step
path loop off; dist 15
path	Black Temple/5 34.50,59.10	Black Temple/5 76.40,68.80	Black Temple/3 70.40,76.50
path	Black Temple/3 59.50,66.20	Black Temple/3 52.70,62.80	Black Temple/3 54.20,50.00
path	Black Temple/3 52.80,37.80	Black Temple/3 59.60,35.10	Black Temple/3 62.60,34.70
path	Black Temple/4 73.40,35.40	Black Temple/4 72.70,21.60	Black Temple/4 65.70,21.30
path	Black Temple/4 53.20,30.10	Black Temple/4 53.40,39.10
Follow the path, clearing trash as you make your way to the next boss, Gurtogg Bloodboil. |goto Black Temple/4 53.40,39.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gurtogg Bloodboil##22948 |goto Black Temple/4 53,46
|tip Fel Acid Breath is a 10 yard AoE, hitting in a frontal cone and applying a DoT that deals 2,750 nature damage every 5 seconds for 20 seconds.
|tip Arcing Smash deals 5,000 damage in a 5 yard frontal cone.
_Phase 1 Abilities_
|tip Bloodboil is a debuff cast every 10 seconds on the 5 raid members farthest away from Gurtogg. It deals 600 damage per stack every second for 24 seconds.
|tip Acidic Wound is a stacking debuff applied on melee every 2 seconds and lasts 60 seconds. It reduces armor by 500 and ticks for 250 damage.
|tip Eject knockbacks the target, reducing their threat.
|tip Bewildering Strike disorients the target for 5 seconds.
_Phase 2 Abilities_
|tip Arcing Smash damage is increased to 12,000 and leaves a debuff that reduces healing received by 50%.
|tip Fel Rage (Player) is a 30 second debuff that increases armor, health, healing, damage, and size. Gurtogg will only attack the player that has this.
|tip Fel Rage (Self) is a stacking buff which increases Gurtogg's damage and forces him to only attack the player with Fel Rage.
|tip Acidic Geyser deals 5,000 nature damage in a 5 yard AoE on and around the Fel Rage target.
|tip Fel Acid Breath is only cast on the raid member with Fel Rage.
|tip Insignificance makes it impossible to gain threat.
|tip Berserk occurs after 10 minutes of combat. This is a hard enrage designed to wipe the raid.
|confirm
step
map Black Temple/4
path loop off; dist 15
path	58.40,47.50	65.10,47.40	74.20,53.30
path	73.70,69.80	73.30,84.80	70.60,85.80
Follow the path, clearing trash as you make your way to the next boss, the Reliquary of Souls. |goto Black Temple/4 70.60,85.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Warning!_
This next boss has a chance to drop one of 3 of the pets required in this achievement
|tip This means that this boss will need to be killed several times to get all 3 pets.
confirm
step
kill Reliquary of Souls##22856
_Essence of Suffering_
|tip Aura of Suffering reduces the raid's healing, regeneration, and armor by 100% and defense by 500.
|tip Essence of Suffering locks aggro on the closest target for 5 seconds during Fixate.
|tip Enrage occurs every 45 seconds, increasing damage and attack speed.
|tip Soul Drain is a debuff applied to 3 random targets, dealing 2,600-3,300 damage plus draining 2,600-3,300 mana every 3 seconds.
_Essence of Desire_
|tip Aura of Desire is applied to the whole raid. 50% of damage dealt also reflects to the player. Healing is increased by 100% and max mana is reduced by 5% every 8 seconds.
|tip Deaden is a debuff that increases damage taken by 100% and lasts 10 seconds.
|tip Spirit Shock deals 10,000 Arcane damage and confuses players for 5 seconds.
|tip Rune Shield lasts 15 seconds and absorbs 50,000 damage, also granting immunity to interrupts and increasing attack and casting speeds.
_Essence of Anger_
|tip Aura of Anger deals raid-wide shadow damage which increases by 100 every 3 seconds and increases damage taken by 5% each tick.
|tip Seethe gives Essence of Anger a 10 second buff that increases its attack speed and cast speed by 100%.
|tip Soul Scream hits 5 raid members in a 10 yard frontal cone for 3,000 shadow damage and drains 5,000 mana/rage.
|tip Spite affects 3 random raid members, applying a debuff that gives 2 seconds of immunity. After, it deals 7,500 nature damage, followed by another 2 seconds immunity.
collect Fragment of Anger##122107 |n
collect Fragment of Desire##122109 |n
collect Fragment of Suffering##122108 |n
Use the Fragment of Anger |use Fragment of Anger##122107
learnpet Fragment of Anger##90203 |achieve 9824/4 |goto Black Temple/4 65,85
Use the Fragment of Desire |use Fragment of Desire##122109
learnpet Fragment of Desire##90205 |achieve 9824/6 |goto Black Temple/4 65,85
Use the Fragment of Suffering |use Fragment of Suffering##122108
learnpet Fragment of Suffering##90204 |achieve 9824/5 |goto Black Temple/4 65,85
Click here to continue |confirm
step
map Black Temple/4
path loop off; dist 15
path	Black Temple/4 73.30,86.20	Black Temple/4 73.40,62.30	Black Temple/4 73.50,52.00
path	Black Temple/4 66.70,39.50	Black Temple/4 63.10,39.30	Black Temple/3 41.60,34.10
path	Black Temple/3 41.60,24.70	Black Temple/3 34.30,17.10	Black Temple/3 26.20,21.30
path	Black Temple/6 12.70,66.60	Black Temple/6 26.90,53.80	Black Temple/6 32.30,36.70
path	Black Temple/6 39.10,37.10	Black Temple/6 50.10,37.10	Black Temple/6 56.50,37.10
Follow the path, clearing trash as you make your way to the next boss, Mother Shahraz
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mother Shahraz##22947
|tip Saber Lash is a frontal cleave, dealing 30,000 damage divided up among 3 targets.
|tip Fatal Attraction teleports 3 random raid members to one location and applies the Demonic Energy debuff.
|tip Demonic Energy lasts 30 seconds, causing the affected players release a 15 yard AoE that deals 3,000 shadow damage per second. It is removed if all 3 are 25 yards away from each other.
|tip Silencing Shriek is an 18 yard AoE silence.
_Beams_
|tip A beam is cast every 9 seconds and hits 10 random raid members. There are multiple types of beams.
|tip Sinful Beam: deals 7,000-8,000 shadow damage.
|tip Sinister Beam: deals 2,000 shadow damage and knocks those affected into the air, dealing 50% fall damage.
|tip Vile Beam: deals 2,500 shadow damage every second for 8 seconds.
|tip Wicked Beam: deals 4,000 shadow damage plus drains 1,000 mana.
_Prismatic Aura_
|tip This occurs every 15 seconds, choosing a random aura which reduces damage of one spell type and increases another.
|tip Arcane: Arcane damage reduced by 25%. Nature damage increased by 25%.
|tip Nature: Nature damage reduced by 25%. Arcane damage increased by 25%.
|tip Holy: Holy damage reduced by 25%. Shadow damage increased by 25%.
|tip Shadow: Shadow damage reduced by 25%. Holy damage increased by 25%.
|tip Fire: Fire damage reduced by 25%. Frost damage increased by 25%.
|tip Frost: Frost damage reduced by 25%. Fire damage increased by 25%.
|tip Enrage occurs at 10%, increasing her damage and attack speed slightly. Kill her as quickly as possible to avoid death.
|tip Hard Enrage occurs after 10 minutes of combat.
collect Sultry Grimoire##122110 |n
Use the Sultry Grimoire |use Sultry Grimoire##122110
learnpet Sister of Temptation##90206 |achieve 9824/7 |goto Black Temple/4 66.60,37
Click here if the pet did not drop |confirm
step
Enter Hyjal Summit |goto Tanaris/18 35.90,15.68 < 5 |c
step
Enter the first portal on the left
confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.50,63.80
Tell her "My companions and I are with you."
|tip This will start the first boss fight, so make sure you are ready.
|confirm
step
Defeat the 8 waves of enemies. |goto Hyjal Summit 7.60,69.50
|confirm
step
kill Rage Winterchill##17767 |goto Hyjal Summit 7.60,69.50
|tip Frost Armor increases Rage Winterchill's armor by 3,000, slows melee attackers' movement speed by 50%, and increases the time between their attacks by 25%.
|tip Icebolt stuns the player for 4 seconds and deals about 5,000 damage.
|tip Death and Decay is an AoE spell that ticks for 15% of max health as damage per second to each player in the targeted area. Move out of it as quickly as possible.
|tip Frost Nova is an AoE spell that roots all players around Rage Winterchill for up to 10 seconds.
|tip Enrage occurs after 10 minutes of combat.
|confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.60,63.80
Tell her "I am ready."
|tip |tip This will start the first boss fight. Make sure you are ready.
|confirm
step
Defeat the 8 waves of enemies. |goto Hyjal Summit 7.60,69.50
|confirm
step
kill Anetheron##17808
|tip Vampiric Aura causes melee attacks to heal Anetheron for 300% of the damage.
|tip Carrion Swarm is a random one-direction cone attack that does 3,000-6,000 shadow damage and leaves a 15 second debuff that reduces healing done by 75%. He casts this about every 15 seconds.
|tip Sleep is a 10 second stun that affects 3 targets.
|tip Inferno is cast every 60 seconds and targets a random raid member. An elite Towering Inferno is summoned on them and they are stunned for 2 seconds.
|tip Berserk occurs after 10 minutes of combat.
collect Smelly Gravestone##122111 |n
Use the Smelly Gravestone |use Smelly Gravestone##122111
learnpet Stinkrot##90207 |achieve 9824/8 |goto Hyjal Summit 7.60,69.50
Click here if the pet did not drop |confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.50,63.80
Tell her "Until we meet again."
|tip This will start the transition to the next phase of the raid. Make sure you are ready to move out.
|confirm
step
map  Hyjal Summit
path loop off
path	15.20,64.00	16.60,60.40	19.00,56.30
path	22.40,62.20	25.50,63.90	28.50,63.70
path	33.20,62.80	35.50,59.00	35.60,55.60
path	32.20,48.30	32.60,41.40	37.60,36.40
path	41.10,35.60
Follow this road east to the Horde Camp.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Thrall##17852 |goto Hyjal Summit 48.00,41.50
Tell him "I am with you."
|tip This will start the next boss fight. Make sure you are ready.
|confirm
step
Defeat the first wave of enemies |goto Hyjal Summit 43.10,36.00
|confirm
step
Defeat the second wave of enemies |goto Hyjal Summit 51.90,33.10
|confirm
step
Defeat the third wave of enemies |goto Hyjal Summit 43.80,35.80
|confirm
step
Defeat the fourth wave of enemies |goto Hyjal Summit 43.80,35.80
There are also flying enemys here |goto Hyjal Summit 51.90,33.10
|confirm
step
Defeat 5th wave of enemies |goto Hyjal Summit 43.80,35.80
|confirm
step
Defeat any remaining enemies around here |goto Hyjal Summit 47.40,37.50
|tip This wave usually has a flying Frost Wyrm. Make sure to look up in the sky.
|confirm
step
Defeat the seventh wave of enemies here |goto Hyjal Summit 43.80,35.80
|tip This wave usually has a flying Frost Wyrm. Make sure to look up in the sky.
|confirm
step
Defeat the last wave of enemies here |goto Hyjal Summit 43.80,35.80
|confirm
step
kill Kaz'rogal##17888 |goto Hyjal Summit 43.50,36.00
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss.
|tip War Stomp is a 15 yard AoE melee attack, dealing 1,700-2,500 damage and stunning for 5 seconds.
|tip Cripple is a debuff is given to a raid member that increases the time between attacks by 75%, movement speed by 75% and reduces their strength by 75%.
|tip Mark of Kaz'rogal is a debuff that affects all mana users in the raid. It drains 600 mana per second for 5 seconds. If mana is reduced to 0 by the debuff, the debuff is removed and the target and nearby allies take 10,000-11,000 shadow damage.
|confirm
step
talk Thrall##17852 |goto Hyjal Summit 48.00,41.50
Tell him "We have nothing to fear."
|tip |tip This will start the first boss fight. Make sure you are ready.
|confirm
step
Defeat the first wave of enemies in this area |goto Hyjal Summit 44.00,36.20
|confirm
step
Defeat the second wave of enemies in this area |goto Hyjal Summit 44.80,38.10
|tip This wave usually has a flying Frost Wyrm, make sure to look up in the sky.
|confirm
step
Defeat the third wave of enemies in this area |goto Hyjal Summit 45.20,38.20
|tip This wave will have Giant Infernals in the Horde camp.
|confirm
step
Defeat the rest of the enemies here |goto Hyjal Summit 43.70,36.10
|confirm
step
Defeat the Giant Infernals and Fel Stalkers attacking the camp |goto Hyjal Summit 47.90,37.
|confirm
step
Defeat the enemies in this area |goto Hyjal Summit 43.70,36.10
|confirm
step
Defeat the Giant Infernals, Ghouls, Crypt Fiends, and Fel Stalkers attacking in this area |goto Hyjal Summit 47.40,38.40
|confirm
step
Defeat the last wave of enemies here |goto Hyjal Summit 43.70,36.10
|confirm
step
kill Azgalor##17842
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss.
|tip Rain of Fire is a 15 yard AoE cast on a random target, lasting 30 seconds and dealing 1,700 fire damage every 2 seconds. Party members inside the AoE for more than 2 seconds will also be hit for 1,200 damage every second for 5 seconds.
|tip Howl of Azgalor is a 5 second zone-wide AoE silence.
|tip Doom is cast on a random party member every 45 seconds. The target dies after 20 seconds and spawns an elite add. Cannot be resisted or removed.
|tip Enrage occurs after 10 minutes of combat.
collect Grotesque Statue##122105 |n
Use the Grotesque Statue |use Grotesque Statue##122105
learnpet Grotesque##90200 |achieve 9824/1 |goto Hyjal Summit 43.70,36.10
Click here if the pet did not drop |confirm
step
talk Thrall##17852 |goto Hyjal Summit 48.00,41.50
Select _"Until we meet again."_
|tip This will start the transition to the final phase of the raid. Make sure you are ready to move out.
|confirm
step
map  Hyjal Summit
path loop off
path	56.20,45.60	60.30,53.50	67.20,48.30
path	73.40,44.40	75.20,46.30	74.40,50.10
path	74.50,56.60
Follow the road east to Nordrassil
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Tyrande Whisperwind##17948 |goto Hyjal Summit 74.30,57.60
Select _"I would be grateful to any aid you can provide."_
|tip This will start the next boss fight, so make sure you are ready.
|confirm
step
Jump off the cliff here |goto Hyjal Summit 75.30,45.60
Click the Tears of the Goddess in your bag to slow your fall |use Tears of the Goddess##24494
|tip The slow effect only lasts 2 seconds, so wait until the last second to use it.
|confirm
step
kill Archimonde##17968
|tip Air Burst is a 15 yard AoE spell that deals 1,500 nature damage centered on a random target. All affected players are tossed into the air and take fatal fall damage. Avoid at all costs.
|tip Fear is an 8 second AoE Fear. Affects entire raid.
|tip Grip of the Legion deals 2,500 damage every 2 seconds for 5 minutes. This is dispellable.
|tip Doomfire leaves a trail of fire on the ground. Anyone touched by it gets a debuff that deals 2,400 fire damage every 3 seconds, reduced by 150 every tick.
|tip Finger of Death deals 30,000 shadow damage to a single target. It is only used if no targets are in melee range.
|tip Soul Charge is cast whenever a raid member dies. Achimonde gains a Soul Charge which he can use at a random time. The type of affect it has depends on the character class that made it. The following effects apply to the whole raid:
|tip Priest, Mage, Warlock: 4,500 Fire damage and a 4 second silence.
|tip Warrior, Rogue, Paladin: 4,500 Physical damage and damage taken increased by 50% for 4 seconds.
|tip Druid, Shaman, Hunter: 4,500 Nature damage over 8 seconds plus 2,250 mana burn.
|tip After 9 minutes, the Enrage will wipe the raid.
collect Hyjal Wisp##122112 |n
Use the Hyjal Wisp |use Hyjal Wisp##122112
learnpet Hyjal Wisp##90208 |achieve 9824/9 |goto Hyjal Summit 76.90,36.70
Click here if the pet did not drop |confirm
step
Enter Sunwell Plateau |goto Sunwell Plateau/1 30.94,36.41 < 1000 |c
step
map Sunwell Plateau/1
path loop off
path	33.90,43.30	36.60,51.50	33.70,58.30
path	25.10,59.80	17.60,55.50	16.90,45.70
path	23.60,39.70	31.50,33.80	40.00,35.30
path	40.50,65.30	21.30,66.50	15.60,66.00
path	12.20,54.00	21.30,50.80
Follow the path, clearing trash as you make your way to the first boss, Kalecgos. |goto Sunwell Plateau/1 21.30,50.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "dragon"
kill Kalecgos##24850 |goto Sunwell Plateau/1 29,50
This fight takes place in two realms at the same time
_Normal Realm_
|tip Players must face and subdue Kalecgos the dragon.
|tip Arcane Buffet deals 500 arcane damage plus a stacking debuff that increases arcane damage taken by 500 for 40 seconds. Hits all players in the normal realm.
|tip Frost Breath is a 30 yard frontal AoE spell that slows attack speed by 75% to all raid members affected.
|tip Tail Lash deals 1,500 damage and a 2 second stun to raid members behind Kalecgos.
|tip Spectral Blast is cast every 20 seconds and Kalecgos targets a random raid member. After 2 seconds they take 5000 arcane damage. They are also teleported to the spectral realm and, for about 10 seconds, a portal is opened allowing other raid members to go there too.
|tip Wild Magic gives a random target a random buff/debuff.
_Green:_
|tip Increases healing by 100%.
_Purple:_
|tip Increases cast time by 100%.
_Red:_
|tip Reduces chance to hit with melee and ranged attacks by 50%.
_White:_
|tip Increases damage done by critical hits by 100%.
_Black:_
|tip Increases threat generation by 100%.
_Blue:_
|tip Reduces spell and ability costs by 50%.
|tip Enrage occurs when either Kalecgos or Sathrovarr reach 10% health. Both enrage, greatly increasing their damage.
Click here to see mechanics for the spectral realm and Sathrovarr the Corruptor |next "kalec" |confirm
Click here when the fight is over |next "kalecgosend" |confirm
step
label "kalec"
kill Sathrovarr the Corruptor##24892 |goto Sunwell Plateau/1 29,50
This fight takes place in two realms at the same time
_Spectral Realm_
|tip Spectral Realm is a debuff applied to players upon entering. It lasts 60 seconds and they are teleported back to the normal realm once it expires.
_Sathrovarr_
|tip Corrupting Strike stuns, dealing 9,000 shadow damage and an additional 1,000 damage over 3 seconds.
|tip Curse of Boundless Agony is a 30 second shadow DoT that deals increasing damage every tick, starting at 100 damage and doubling every 5 seconds. If this kills the target or if it is removed it jumps to the next target.
|tip Shadow Bolt Volley deals 5,000 shadow damage to a random raid member and up to two nearby members.
|tip Enrage occurs when either Kalecgos or Sathrovarr reach 10% health. Both enrage, greatly increasing their damage.
_Kalec_
|tip Revitalize is a random buff applied to nearby raid members, restoring 450 health and mana every 3 seconds for 10 seconds and stacking up to two times.
Click here to see mechanics for the normal realm and Kalecgos |next "dragon" |confirm
Click here when the fight is over |next "kalecgosend" |confirm
step
label "kalecgosend"
map Sunwell Plateau/1
path loop off
path	50.40,51.50	51.90,60.30	59.50,71.10
path	62.40,73.70
Follow the path, clearing trash as you make your way to the next boss, Brutallus. |goto Sunwell Plateau/1 62.40,73.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brutallus##24882
|tip Meteor Slash deals 20,000 fire damage split between enemy targets in a cone in front of Brutallus. Also increases Fire damage taken by 75%. Stacks up to 100 and lasts 40 seconds.
|tip Burn is a 60 second debuff and spreads to nearby raid members. The debuff deals fire damage every second and slowly increases.
|tip Stomp is an AoE that deals 20,000 damage and reduces the armor of those hit by 50% for 10 seconds. Removes Burn if the target has it.
|tip Enrage occurs after 6 minutes of combat.
collect Sunblade Rune of Activation##122113 |n
Use the Sunblade Rune of Activation |use Sunblade Rune of Activation##122113
learnpet Sunblade Micro-Defender##90212 |achieve 9824/10 |goto Sunwell Plateau/1 65,84
Click here if the pet did not drop |confirm
step
kill Felmyst##25038 |goto Sunwell Plateau/1 67.00,90.00
|tip Cleave deals damage to anyone in front of Felmyst.
|tip Corrosion deals 10,000 nature damage and increases physical damage taken by 100%. Lasts 10 seconds.
|tip Gas Nova is an AoE spell that deals 2,000 nature damage and drains 3,000 health and 1,000 mana every 2 seconds for 30 seconds.
|tip Noxious Fumes deal 1,000 nature damage every 3 seconds to all raid members within 100 yards of Felmyst.
|tip Encapsulate lifts a random raid member into the air and does 5 ticks, dealing 3,500 arcane damage to them and everyone within 20 yards.
|tip Demonic Vapor is a breath ability used when Felmyst is in the air. It deals 4,000 nature damage and summons skeletal adds. Stepping in the trail left by this also deals 2,000 nature damage per second for 10 seconds and summons additional skeletal adds.
|tip Fog Corruption is an AoE spell that mind controls raid members inside of it for the duration of the battle. Players affected by this should be killed.
|tip Enrage occurs after 10 minutes of combat.
|confirm
step
map Sunwell Plateau/1
path loop off
path	76.80,69.80	69.40,74.60	76.60,57.90
path	67.50,68.20	73.50,54.80	74.90,50.20
path	78.10,38.00	68.60,35.00
Follow the path, clearing trash as you make your way to the next boss, the Eredar Twins. |goto Sunwell Plateau/1 68.60,35.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Eredar Twins
kill Lady Sacrolash##25165
|tip Confounding Blow confounds the target for 6 seconds, dealing 7,500-10,000 shadow damage. Temporarily drops target's threat.
|tip Dark Touched is a stacking debuff that reduces healing effects by 5%, stacking up to 20 times. Lasts 3 minutes and can only be removed by being hit with fire damage from either boss.
|tip Shadow Blades deals 2,500-3,500 physical damage and also applies Dark Strike, which deals 450 shadow damage every 2 seconds and slows the target by 10% for 10 seconds. Stacks up to 5 times.
|tip Shadow Nova deals 3,500 shadow damage to every raid member in a 10 yard radius of Sacrolash's target.
|tip Shadow Images die after a short amount of time. These adds cannot be targeted and can deal melee or AoE damage.
|tip Enrage occurs after 6 minutes of combat.
kill Grand Warlock Alythess##25166
|tip Pyrogenics is a buff that increases Alythess' fire damage by 35%.
|tip Flame Touched is a stackable debuff that deals 300 fire damage every 2 seconds. Stacks up to 20 times and can only be removed by being hit with shadow damage.
|tip Conflagration is a debuff that deals 1,600 fire damage to everyone within 8 yards of Alythess' target. It also confounds the target and deals 1,600 fire damage every second in the targeted area.
|tip Blaze deals 5,500-7,500 fire damage and leaves an AoE on the ground which burns for 2,500 fire damage.
|tip Flame Sear is a debuff that affects 3-5 random raid members and deals 650 fire damage every half-second for 6 seconds.
|tip Enrage occurs after 6 minutes of combat.
collect Servant's Bell##122115 |n
Use the Servant's Bell |use Servant's Bell##122115
learnpet Wretched Servant##90214 |achieve 9824/12 |goto Sunwell Plateau/1 64,32
Click here if the pet did not drop |confirm
step
map Sunwell Plateau/1
path loop off
path	58.30,29.50	66.90,22.60	71.60,27.20
path	79.90,20.80	72.80,16.80	67.30,26.70
Follow the path, clearing trash as you make your way to the next boss, M'uru. |goto Sunwell Plateau/1 67.30,26.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill M'uru##25741
|tip Negative Energy hits 4-5 random raid members, dealing 1,000 shadow damage. This lasts the entire fight.
|tip Darkness creates a large AoE Void Zone that deals 3,000 shadow damage every second to all raid members inside it and cannot be healed. This also spawns 8 Dark Fiend adds.
|tip Shadowsword Berserkers deal high melee damage and have a buff that increases their attack speed and movement by 100%.
|tip Shadowsword Fury Mages cast Fel Fireball, which deal 5,000 fire damage. They can also melee for 3,000-4,000 damage. They have a buff, Spell Fury, which causes spells to cast instantly, increases magic damage by 50% and makes them unable to move.
|tip Void Sentinels spawn a Voidwalker that hits for 9,000-10,000 with melee attacks. It also uses Shadow Pulse, an AoE that deals 4,000 shadow damage every 3 seconds. And Void Blast, which deals 10,000-11,000 damage as well as a debuff slowing attack speed by 35%.
|tip Enrage occurs after 10 minutes of combat.
kill Entropius##25840
|tip Negative Energy deals 2,000 shadow damage to Entropius' target, jumping to a nearby target and hitting for half the previous damage. The number of maximum targets this can hit increases every 12-15 seconds.
|tip Darkness spawns a Void Zone under a raid member, dealing 3,000 shadow damage every second. This also spawns a Dark Fiend that must be dispelled.
|tip Singularity spawns over a raid member After a few seconds it will move around and toss any nearby raid members into the air, interrupting them and dealing 500 damage.
|tip Enrage occurs after 10 minutes of combat.
collect Void Collar##122114 |n
Use the Void Collar |use Void Collar##122114
learnpet Chaos Pup##90213 |achieve 9824/11 |goto Sunwell Plateau/2 46,24
Click here if the pet did not drop |confirm
step
If you were unable to get all of the pets listed you can try again next week or attempt it on another character
Click here to return to the start of the guide |next "Leashes 3" |confirm
|only if not achieved(9824)
step
label "Leashes 3 Congratz"
Congratulations!
You have earned the _Raiding with Leashes III: Drinkin' From the Sunwell_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes IV: Wrath of the Lich King",{
achieveid={11320},
patch='70200',
description="This guide will walk you through several old world raids in order to attain 16 rare pets and an achievement.",
},[[
step
label "Leashes 4"
In order to attain these pets, we suggest you be at least level 60
|tip All of the pets required are going to be rare drops, so you will have to go back through certain raids to get them.
|tip These pets can also be bought from the AH.
Click here if you would like to run the raids yourself |next "Leashes Raids 4" |confirm |or
Click here if you would like to purchase these from the AH |next "Leashes Pets 4" |confirm |or
step
label "Leashes Pets 4"
talk Auctioneer Drezmit##44866
|tip Purchase Dreadmaw.
Use Dreadmaw |use Dreadmaw##82800
learnpet Dreadmaw##115135 |achieve 11320/1 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Nerubian Swarmer.
Use the Nerubian Swarmer |use Nerubian Swarmer##82800
learnpet Nerubian Swarmer##115137 |achieve 11320/2 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Boneshard.
Use the Boneshard |use Boneshard##82800
learnpet Boneshard##115146 |achieve 11320/11 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Blood Boil.
Use the Blood Boil |use Blood Boil##82800
learnpet Blood Boil##115147 |achieve 11320/12 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Blightbreath.
Use the Blightbreath |use Blightbreath##82800
learnpet Blightbreath##115148 |achieve 11320/13 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Soulbroken Whelpling.
Use the Soulbroken Whelpling |use Soulbroken Whelpling##82800
learnpet Soulbroken Whelpling##115149 |achieve 11320/14 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Wicked Soul.
Use the Wicked Soul |use Wicked Soul##82800
learnpet Wicked Soul##115152 |achieve 11320/16 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Drudge Ghoul.
Use the Drudge Ghoul |use Drudge Ghoul##82800
learnpet Drudge Ghoul##115150 |achieve 11320/15 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Magma Rageling.
Use the Magma Rageling |use Magma Rageling##82800
learnpet Magma Rageling##115138 |achieve 11320/3 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Ironbound Proto-Whelp.
Use the Ironbound Proto-Whelp |use Ironbound Proto-Whelp##82800
learnpet Ironbound Proto-Whelp##115139 |achieve 11320/4 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Runeforged Servitor.
Use the Runeforged Servitor |use Runeforged Servitor##82800
learnpet Runeforged Servitor##115140 |achieve 11320/5 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Sanctum Cub.
Use the Sanctum Cub |use Sanctum Cub##82800
learnpet Sanctum Cub##115141 |achieve 11320/6 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Snaplasher.
Use the Snaplasher |use Snaplasher##82800
learnpet Snaplasher##115143 |achieve 11320/8 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Winter Rageling.
Use the Winter Rageling |use Winter Rageling##82800
learnpet Winter Rageling##115142 |achieve 11320/7 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase G0-R41-0N Ultratonk.
Use the G0-R41-0N Ultratonk |use G0-R41-0N Ultratonk##82800
learnpet G0-R41-0N Ultratonk##115144 |achieve 11320/9 |goto Orgrimmar/1 54.04,73.31
step
talk Auctioneer Drezmit##44866
|tip Purchase Creeping Tentacle.
Use the Creeping Tentacle |use Creeping Tentacle##82800
learnpet Creeping Tentacle##115145 |achieve 11320/10 |goto Orgrimmar/1 54.04,73.31
step
You can check back later to see if the remaining pets are up on the AH |only if not achieved(11320)
Click here to return to the start of the guide |next "Leashes 4" |confirm |only if not achieved(11320)
Proceeding |next "Leashes 4 Congratz" |only if achieved(11320)
step
label "Leashes Raids 4"
Enter the Trial of the Crusader |goto Trial of the Crusader/1 64.50,52.60 < 1000 |c
step
talk Barrett Ramsey##34816 |goto Trial of the Crusader/1 64.80,54.10
Select _"Yes. We are prepared for the challenges ahead of us."_
|tip This will start the first boss fight. Make sure you are ready.
|confirm
step
Click here for an explanation of each phase of Yogg-Saron |next "Phases Beasts" |confirm |or
Click here if you a high enough level where mechanics dont make a difference |next "Beasts Nope" |confirm |or
step
label "Phases Beasts"
_Phase 1_
kill Gormok the Impaler##34796 |goto Trial of the Crusader/1 51.30,52.50
|tip Staggering Stomp deals 8,000 physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 100% weapon damage to the target and applies a bleed that deals 1,400-1,800 damage every 2 seconds for 30 seconds. This stacks.
_Snobold Vassals_
|tip Four Vassals jump from Gormok's back.
|tip Fire Bomb deals 4,800-6,200 fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to advance to _Phase 2_ |confirm
step
_Phase 2_
kill Acidmaw##35144 |goto Trial of the Crusader/1 51.30,52.50
|tip Paralytic Bite deals 7,800-9,200 nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that deals increasing nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5,000-6,000 nature damage to players within the targeted area.
|tip Sweep deals 6,800-8,000 physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bile deals 7,800-9,000 fire damage. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 2,750-3,225 fire damage every 0.25 seconds for 2.50 seconds to players in front of Dreadscale.
|tip Slime Pool deals 5,000-6,000 nature damage to players within the targeted area.
|tip Burning Spray does 7,000-8,000 fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep deals 7,000-8,000 physical damage to players within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_ |confirm
step
label "Beasts Nope"
_Phase 3_
kill Icehowl##34797
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 15,000 frost damage over 5 seconds.
|tip Ferocious Butt deals 41,600-48,300 physical damage and stuns for 3 seconds.
|tip Massive Crash deals 7,400-8,600 physical damage to the raid, stunning them and knocking them back.
|tip Whirl deals 7,000-8,000 physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's physical damage and attack speed by 50%.
collect Giant Worm Egg##142083 |n
Use the Giant Worm Egg |use Giant Worm Egg##142083
learnpet Dreadmaw##115135 |achieve 11320/1 |goto Trial of the Crusader/1 51.30,52.50 |or
Click here if the pet did not drop |confirm |or
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Select _"What new challenge awaits us?"_
|tip This will start the first boss fight. Make sure you are ready.
|confirm
step
kill Lord Jaraxxus##34780 |goto Trial of the Crusader/1 51.20,52.40
|tip Nether Power increases Jaraxxus' magic damage by 20% per stack. It starts at 10 stacks but can be Spellstolen or dispelled.
|tip Fel Fireball inflicts 15,100-15,800 damage and an additional 6,000 fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame deals 3,000 fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 30,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a Burning Inferno.
|tip Burning Inferno deals 4,000 fire damage to the raid every second for 5 seconds.
|tip Nether Portals inflict 9,000 shadow damage to players in a 10 yard radius of the portal and summon a Mistress of Pain.
|tip Infernal Eruption summons an Infernal Volcano which deals 9,500 fire damage to nearby players and summons 3 Felflame Infernal adds.
_Mistress of Pain_
|tip Spinning Pain Spike fixates a random target, dealing 50% of their maximum health in physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5,000 fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6,500 fire damage to the primary target.
|confirm
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Select _"Of course!"_
|tip This will start the first boss fight. Make sure you are ready.
|confirm
step
_The Faction Champions_ |goto Trial of the Crusader/1 51.20,52.40
|tip The AI of the enemy NPCs behave a lot like players in PvP.
|tip Healer NPCs switch to spam heals on DPS members.
|tip Damage-dealing NPCs gang up on a single raid member, especially those with low health.
|tip All members, even the healers, use crowd control abilities such as Polymorph, Fear, Hex, and Banish.
|tip Their AI uses proximity, health, and damage to determine who they attack. Try to avoid being in the center of their group; they are likely to all turn and one shot you. If you're AoE'ing, be ready to get aggro.
|tip A general strategy is to use all cooldowns as soon as the fight starts (Bloodlust/Heroism, trinkets, etc.) and try and kill the healers first. The fight gets immensely easier after each kill.
|confirm
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Select _"That tough, huh?"_
|tip This will start the first boss fight. Make sure you are ready.
|confirm
step
_The Twin Val'kyr_
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the twin with the same Essence.
kill Fjola Lightbane##34497 |goto Trial of the Crusader/1 51.20,52.40
|tip Shield of Light absorbs 175,000 damage and prevents spell interruption for 15 seconds.
|tip Light Vortex is channeled for 5 seconds and deals 6,000 damage every second.
|tip Surge of Light deals 1,500 damage every 2 seconds to non-light players.
|tip Touch of Light deals 6,000 light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
kill Eydis Darkbane##34496 |goto Trial of the Crusader/1 51.20,52.40
|tip Shield of Darkness absorbs 175,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6,000 damage every second.
|tip Surge of Darkness deals 1,500 damage every 2 seconds to non-dark players.
|tip Touch of Darkness inflicts 6,000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 20% of their maximum health.
|tip Power of the Twins occurs when one twin begins casting Twin's Pact. The other gains this buff, increasing that twin's damage by 20% and enabling her to dual-wield. Each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding twin.
|confirm
step
talk Barrett Ramsey##35035 |goto Trial of the Crusader/1 64.70,54.20
Select _"Your words of praise are appreciated."_
|tip This will start the final boss fight. Make sure you are ready.
|confirm
step
|goto Trial of the Crusader/1 51.20,52.40 |n
The Lich King will appear and then destroy the floor, sending the raid falling down below |goto Trial of the Crusader/2 |noway |c
step
kill Anub'arak##34564
_Phase 1:_ Anub'arak on the ground
|tip Freezing Slash deals 25% Froststrike weapon damage (frost or physical damage, whichever deals more to the target), and freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 2 random raid members, dealing 3,500 frost damage every 3 seconds for 18 seconds. When this expires on its targets, it is automatically applied to 2 new targets.
|tip When Anub'arak submerges underground phase 2 starts.
_Phase 2:_ Anub'arak underground
|tip Anub'arak will randomly pursue a raid member.
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage.
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2,800-3,200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground.
_Phase 3:_ The leeching swarm
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the current health every second. The health leeched heals Anub'arak for the same amount.
collect Nerubian Relic##142085 |n
Use the Nerubian Relic |use Nerubian Relic##142085
learnpet Nerubian Swarmer##115137 |achieve 11320/2 |goto Trial of the Crusader/2 53.50,34.00 |or
Click here if this pet did not drop |confirm |or
step
Enter Icecrown Citadel |goto Icecrown Citadel/1 39.00,7.80 < 1000
step
map Icecrown Citadel/1
path loop off
path	38.90,29.20	38.90,36.30	39.00,52.40
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar |goto Icecrown Citadel/1 39.00,52.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Lord Marrowgar##36612
|tip Bone Storm is an AoE that hits players around Marrowgar, dealing less damage the further away you are.
|tip Bone Spike Graveyard deals 10% of each the target's maximum health as damage every second until killed by other raid members. It will automatically end after 5 mintues.
|tip Coldflame summons a line of frost that hits players in the way, dealing 9,000 frost damage every second for 8 seconds.
|tip Bone Slice deals 200% normal damage, split between Marrowgar's target and a nearby ally.
|tip Enrage occurs after 10 minutes of combat, wiping the raid.
collect Fragment of Frozen Bone##142094 |n
Use the Fragment of Frozen Bone |use Fragment of Frozen Bone##142094
learnpet Boneshard##115146 |achieve 11320/11 |goto Icecrown Citadel 38.90,59.80 |or
Click here if the pet did not drop |confirm |or
step
map Icecrown Citadel/1
path loop off
path	34.20,58.80	34.30,66.70	38.90,72.40
path	39.00,80.50
Follow the path, clearing trash as you make your way to the next boss, Lady Deathwhisper |goto Icecrown Citadel/1 39.00,80.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Lady Deathwhisper##36855 |goto Icecrown Citadel/1 39.10,86.70
_Phase 1_
|tip Animate Dead reanimates a Cult Adherent or Cult Fanatic.
|tip Dark Empowerment is a buff applied to Deathwhisper's allies. It increases their spell damage and make them immune to interrupts.
|tip Dark Transformation transforms a random Cult Fanatic into an Undead Behemoth, increasing its damage by 100%.
|tip Mana Barrier is a buff that heals the target in exchange for their mana.
|tip Shadow Bolt deals 9,000-11,800 shadow damage to the target.
|tip Death and Decay is an AoE that inflicts 4,500 shadow damage every second to all players in the targeted area for 10 seconds.
_Phase 2_
|tip Frostbolt deals 37,000 frost damage to a raid member and reduces their movement speed by 50% for 4 seconds. Interruptable.
|tip Frostbolt Volley inflicts 10,800-13,200 frost damage to nearby raid members, also reducing their movement speed by 50% for 4 seconds.
|tip Summon Vengeful Shade spawns a Vengeful Shade that cannot be attacked. It chases a player for a short time, casting Vengeful Blast on them.
|tip Touch of Insignificance reduces the target's threat generation by 20%. Stacks up to 5 times.
|tip Death and Decay is an AoE that inflicts 4,500 shadow damage every second to all players in the targeted area for 10 seconds.
|confirm
step
Take the elevator up to the next level |goto Icecrown Citadel/1 39.00,85.50 < 5 |c
step
map Icecrown Citadel/2
path loop off
path	45.70,77.10	51.00,71.80	58.60,55.50
path	66.40,55.40
Follow the path towards the next boss encounter, the Gunship Battle |goto Icecrown Citadel/2 24.10,55.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
talk Zafod Boombox##37184 |goto Icecrown Citadel/2 74.70,61.90
Tell him to give you a jetpack!
Equip the jetpack |use Goblin Rocket Pack##49278
|confirm
step
talk High Overlord Saurfang##36939 |goto Icecrown Citadel/2 73.30,61.40
Select _"My companions are all accounted for, Saurfang. Let's go!"_
|tip This will start the boss fight, make sure you are ready.
|confirm
step
_Gunship Battle_
|tip The raid will need to be split into an offensive and defensive team.
|tip Defensive Team: consists of the majority of the raid. Their job is to keep the players' gunship free of enemy boarding parties and kill ranged attackers.
|tip Offensive Team: consists of melee attackers, tank and healer(s). Their job is to use the guns to attack the enemy ship and board it using the jetpacks..
|tip Use the jetpack to get to the enemy ship. |use Goblin Rocket Pack##49278
_High Overlord Saurfang_
|tip Battle Fury increases damage dealt by 5%.
|tip Cleave inflicts 120% weapon damage to the target and up to 3 nearby alliles. Make sure the tank is the only one in front of him when this occurs.
|tip Rending Throw deals 3,000-4,000 weapon damage and an additional 2,000 physical damage ever 3 seconds for 18 seconds.
_Kor'kron Battle-Mage_
|tip Below Zero freezes the target in ice, stunning them.
_Kor'kron Rocketeer_
|tip Rocket Artillery launches a rocket that deals 6,300-7,700 fire damage to players in the targeted area.
_Kor'kron Sergeant_
|tip Bladestorm lasts 6 seconds and hits up to 4 nearby players every second.
|tip Wounding Strike deals 200% weapon damage and applies a debuff that reduces healing by 25% for 10 seconds.
|tip Desperate Resolve increases their attack speed and armor by 60%.
_Kor'kron Reaver_
|tip Desperate Resolve increases their attack speed and armor by 60%.
_Kor'kron Axethrower_
|tip Shoot deals 4,000 physical damage.
|tip Hurl Axe deals 4,000 physical damage.
confirm
step
talk High Overlord Saurfang##37187 |goto Icecrown Citadel/2 45.60,72.30
Select _"We're ready, Saurfang."_
|tip This will start the first boss fight. Make sure you are ready.
|confirm
step
kill Deathbringer Saurfang##37813
|tip Blood Link is a stacking buff that gives Saurfang Blood Power, increasing his size and damage dealt by 1% per stack.
|tip Blood Nova is an AoE that deals 10,000 physical damage to players nearby the target.
|tip Boiling Blood does 9,500 physical damage every 3 seconds for 24 seconds.
|tip Call Blood Beast summons a Blood Beast add every 40 seconds.
|tip Frenzy increases Saurfang's attack speed by 30%.
|tip Mark of the Fallen Champion causes Saurfang's attacks to splash to his target, dealing 5,700-6,300 additional damage. If the target dies while affected by this, Saurfang is healed for 5% of his total health.
|tip Rune of Blood is a debuff used on a raid member. Saurfang's attacks leech 5,100-6,800 additional health from players affected by this, healing him for 10 times the amount of health leeched.
collect Remains of a Blood Beast##142095 |n
Use the Remains of a Blood Beast |use Remains of a Blood Beast##142095
learnpet Blood Boil##115147 |achieve 11320/12 |goto Icecrown Citadel/2 45.60,65.50 |or
Click here if the pet did not drop |confirm |or
step
|goto Icecrown Citadel/3 51.50,16.50 |n
Go through the doorway here to go up to the next level of Icecrown Citadel. |goto Icecrown Citadel/5 51.80,83.40 < 10 |noway |c
step
map Icecrown Citadel/5
path loop off
path	51.80,80.50	47.70,76.80	51.90,71.40
path	45.80,62.90	41.70,53.70	38.10,58.60
path	32.70,53.70	28.80,65.40	24.50,65.40
Follow the path, clearing trash as you make your way to the next boss, Festergut |goto Icecrown Citadel/5 24.50,65.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Festergut##36626 |goto Icecrown Citadel/5 19.80,65.40
|tip Gas Spore inflicts 2 random raid members with a gaseous spore. The spore explodes after 12 seconds, dealing 2,000 damage to all nearby raid members and giving them 25% resistance to the blight. Stacks up to 3 times.
|tip Inhale Blight draws in the Gaseous Blight in the room, increasing damage dealt and attack speed by 25%.
|tip Pungent Blight occurs after Inhale Blight. Deals 48,750-51,250 damage to the raid and releases the blight back into the room.
|tip Vile Gas inflicts a plague in the targeted area, inflicting 5,000 damage every 2 seconds for 6 seconds. Being hit by this causes a player to vomit, dealing an additional 4,000 damage to nearby allies.
|tip Gastric Bloat inflicts 10,000 nature damage to the target and applies a stacking debuff. At 10 stacks, Gastric Explosion occurs, killing the player and dealing 30,000 shadow damage to nearby raid members within 10 yards.
|confirm
step
Make sure to click the Gas Release Valve before leaving the room. This, along with another valve, must be used to access Professor Putricide |goto Icecrown Citadel/5 23.50,63.60
|confirm
step
map Icecrown Citadel/5
path loop off
path	29.60,54.10	29.20,42.30	24.70,42.10
Follow the path, clearing trash as you make your way to the next boss, Rotface |goto Icecrown Citadel/5 24.70,42.10 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Rotface##36627 |goto Icecrown Citadel/5 19.80,41.90
|tip Ooze Flood inflicts 5,400-5,700 damage every second and also reduces the target's movement speed by 25% for 5 seconds.
|tip Slime Spray summons a green ooze rain, dealing 5,500 nature damage every second for 5 seconds to players in a cone in front of Rotface.
|tip Mutated Infection inflicts 4,000 shadow damage every second and reduces healing received by 50% for 12 seconds. Upon expiration, a small ooze is created at the target's location.
_Little Ooze_
|tip Sticky Ooze deals 3,000 damage every second and reduces movement speed by 50%.
|tip Weak Radiating Ooze deals 3,500 damage every 2 seconds to players within the targeted area. Also causes Little Ooze to merge together, creating a Big Ooze.
_Big Ooze_
|tip Sticky Ooze deals 3,000 damage every second and reduces movement speed by 50%.
|tip Radiating Ooze deals 4,500 damage every 2 seconds to players within the targeted area. Also causes Big Oozes to merge together, applying a buff that increases their damage dealt by 20% and stacking up to 10 times.
|tip Unstable Ooze Explosion occurs when a Big Ooze merges with 5 other oozes.
|confirm
step
Make sure to click the Ooze Release Valve before leaving the room. This opens the door to Professor Putricide |goto Icecrown Citadel/5 23.50,43.90
|confirm
step
map Icecrown Citadel/5
path loop off
path	24.40,53.40	18.40,53.70	17.30,53.70
Kill the Flesh-eating Insects in this hallway until the door opens to the next boss, Professor Putricide |goto Icecrown Citadel/5 17.30,53.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Professor Putricide##36678
|tip Mutated Slime is thrown at a target, creating a puddle that deals 4,500 damage every second until it is consumed by another Mutated creature.
|tip Unstable Experiment spawns a Volitile Ooze or a Gas Cloud. The Ooze should be killed and the Cloud should be kited.
|tip Choking Gas Bomb is an AoE around Putricide, dealing 5,500 damage every second and then explodes for 16,000 damage after 20 seconds.
|tip Malleable Goo bounces at his target, inflicting 14,500-15,300 damage and reducing their attack and cast speed by 200% for 15 seconds.
|tip Mutated Plague occurs during Phase 3. This is applied to Putricide's target every 10 seconds, dealing increased shadow damage to the raid. Kill him as fast as possible to avoid death.
collect Putricide's Alchemy Supplies##142096 |n
Use the Putricide's Alchemy Supplies |use Putricide's Alchemy Supplies##142096
learnpet Blightbreath##115148 |achieve 11320/13 |goto Icecrown Citadel/5 13.30,53.70 |or
Click here if the pet did not drop |confirm |or
step
map Icecrown Citadel/5
path loop off
path	32.50,53.70	37.50,58.60	41.70,53.80
path	51.90,38.50	51.80,20.00
Follow the path, clearing trash as you make your way to the next boss, the Blood Prince Council |goto Icecrown Citadel/5 51.80,20.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
Blood Prince Council |goto Icecrown Citadel/5 51.80,14.50
kill Prince Valanar##37970
|tip Shock Vortex creates an AoE vortex that deals 8,000 damage to players within 12 yards and knocks them back.
|tip Kinetic Bomb drifts toward the ground, exploding on impact and dealing 10,800-13,200 damage to players and knocking them back.
|tip Empowered Shock Vortex creates vortexes under players near Valanar, dealing 5,000 damage and knocking them back.
kill Prince Taldaram##37973
|tip Conjure Flame creates a ball of flames that flies through the air, growing in size and dealing at least 7,500 fire damage to players near the impact. Deals increased damage based on size.
|tip Conjure Empowered Flame creates an empowered ball of flame that flies towards the target and explodes on impact, dealing at least 7,500 fire damage. Also inflicts 1,000 fire damage to nearby players.
|tip Glittering Sparks shoot from Taldaram in a cone, burning players for 13,000 fire damage over 8 seconds and reducing their movement speed by 20%.
kill Prince Keleseth##37972
|tip Shadow Lance deals 16,000 shadow damage to the target.
|tip Shadow Resonance affects the nearest target, dealing 1,000 damage and reducing shadow damage taken from all sources by 35%.
|tip Empowered Shadow Lance deals 78,000-82,000 damage to the target.
|confirm
step
map Icecrown Citadel/6
path loop off
path	Icecrown Citadel/5 46.70,14.10	Icecrown Citadel/5 42.70,17.00	Icecrown Citadel/6 30.70,59.80
path	51.10,73.60	51.10,59.80
Follow the path, clearing trash as you make your way to the next boss, Blood-Queen Lana'thel |goto Icecrown Citadel/6 51.10,59.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Blood-Queen Lana'thel##37955 |goto Icecrown Citadel/6 51.10,43.80
_Ground Phase_
|tip Blood Mirror is a debuff that inflicts 100% of the damage the target takes to the linked player.
|tip Delirious Slash inflicts 50% of weapon damage and applies a bleed DoT that inflicts 5,500-6,500 every 3 seconds for 15 seconds.
|tip Vampiric Bite deals 12,000-14,000 damage to the target, also applying Essence of the Blood Queen.
|tip Essence of the Blood Queen infuses the target with the blood of the Vampyr Queen, increasing damage by 100% and healing them for 10% of damage inflicted.
|tip Pact of the Darkfallen deals 5,000 shadow damage every 2 seconds to the target and nearby players. Expires when all linked players are within 5 yards.
|tip Shroud of Sorrow deals 4,500 shadow damage every 3 seconds to players within 40 yards of Lana'thel.
|tip Swarming Shadow is a mass of shadows that appear under the target, dealing 2,500 shadow damage every 2 seconds.
|tip Twilight Blootbolt deals 9,200-10,750 damage to the target and surrounding players.
_Air Phase_
|tip Incite Terror is a 4 second fear on the entire raid.
|tip Bloodbolt Whirl summons a maelstrom of Bloodbolts every 2 seconds for 6 seconds that deal 10,000 damage to the targeted player and their surrounding allies.
|confirm
step
|goto Icecrown Citadel/6 51.10,69.70 |n
Jump down the hole here |goto Icecrown Citadel/5 51.90,33.60 < 10 |noway |c
step
map Icecrown Citadel/5
path loop off
path	51.80,38.50	61.70,53.80	69.30,53.80
path	74.40,53.70	76.60,58.40	76.60,62.70
Follow the path, clearing trash as you make your way to the next boss, Valithria Dreamwalker |goto Icecrown Citadel/5 76.60,62.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
You can either skip or Defeat Valithria Dreamwalker
|tip To defeat Valithria you must have at least one ability to heal her. Use it on her until she is at fuil HP.
|tip If you do not have a healing ability you can sneak past the enemies and go directly to the elevator.
|confirm
step
|goto Icecrown Citadel/5 76.70,92.90 |n
Ride this elevator down |goto Icecrown Citadel/4 36.60,88.70 < 10 |noway |c
step
Clear the waves of adds that spawn in this room until the northern gate at [36.50,50.10] opens |goto Icecrown Citadel/4 36.60,67.50
|confirm
step
Clear the two groups of trash here, leaving Spinestalker and Rimefang alive. Once you kill those two the boss will spawn |goto Icecrown Citadel/4 36.50,35.50
|confirm
step
kill Sindragosa##36853
_Ground Phase_
|tip Cleave hits Sindragosa's target and up to 10 additional nearby players. Make sure the tank is the only one in front of her when this occurs.
|tip Frost Aura deals 3,000 frost damage every 3 seconds to all players near Sindragosa.
|tip Frost Breath inflicts 27,750-32,250 frost damage to raid members in a 60 yard cone in front of Sindragosa. Also reduces their attack speed by 50% and movement speed by 15% for 90 seconds.
|tip Ice Grip pulls nearby players to the caster and then uses Blistering Cold.
|tip Blistering Cold deals 30,000 frost damage to players within 25 yards.
|tip Chilled to the Bone deals 1,000 frost damage every 2 seconds per stack.
|tip Permeating Chill affects players attacking Sindragosa with physical attacks. They receive this debuff, dealing 1,000 frost damage every 2 seconds per stack.
|tip Tail Smash deals 11,250-18,750 damage to players behind Sindragosa.
_Air Phase_
|tip Frost Beacon marks the targeted player for imprisonment in an Ice Tomb, dealing 8% of their maximum health in damage every second if not freed by other players.
|tip Frost Bomb deals 23,500-26,400 frost damage to all nearby raid members.
_Final Phase_
|tip Mystic Buffet buffets all players near Sindragosa with Arcane energy, increasing all magic damage taken by 20% for stack.
collect Skull of a Frozen Whelp##142097 |n
Use the Skull of a Frozen Whelp |use Skull of a Frozen Whelp##142097
learnpet Soulbroken Whelpling##115149 |achieve 11320/14 |goto Icecrown Citadel/4 36.60,23.40 |or
Click here if the pet did not drop |confirm |or
step
map Icecrown Citadel/4
path loop off
path	39.40,44.10	46.90,33.40	51.70,33.30
Follow this path to the elevator and take it up to the next level |goto Icecrown Citadel/5 86.00,53.80 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
map Icecrown Citadel/5
path loop off
path	80.70,53.80	67.70,53.70	59.20,53.70
path	52.00,53.70
Follow the path to the teleporter and step through it, taking you to the final boss, the Lich King |goto Icecrown Citadel/7 49.40,39.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
talk Highlord Tirion Fordring##38995 |goto Icecrown Citadel/7 49.80,50.40
Select _"We are prepared, Highlord..."_
This will start the final battle with the Lich King. Make sure you are ready
|confirm
step
_Warning!_
This next boss has a chance to drop one of 2 of the pets required in this achievement. This means that this boss will need to be killed several times to get both pets
Click here if you would like to see an explanation on each phase of this fight |next "LK fight" |confirm |or
Click here if you are high enough level where mechanics don't make a difference |next "LK no fight" |confirm |or
step
label "LK fight"
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 1_
|tip Adds in this Phase should be tanked away from the group and killed using Necrotic Plague. This is a DoT that is used on players, but when dispelled (or the player dies) it jumps to a nearby unit, hopefully the summoned adds.
|tip Summon Drudge Ghouls spawns 3 Drudge Ghouls to attack the raid.
|tip Summon Shambling Horror spawns a Shambling Horror to attack the raid. These have a frontal cone attack and enrage.
|tip Nectrotic Plague is a DoT the Lich King uses on a player, dealing 50,000 damage over 5 seconds for 15 seconds. If the player dies, or if it is dispelled, it jumps up to 10 yards to a nearby unit. You want it to jump to the summoned adds.
|tip Infest deals 6,500-7,500 shadow damage to the raid, also increasing their shadow damage taken.
|tip Summon Shadow Trap spawns a Shadow Trap under the targeted player's feet. Stepping within 5 yards of the trap causes it to explode, dealing 23,500-26,500 shadow damage to players within 10 yards and knocking them back.
|tip Phase 1.50 starts when the Lich King reaches 70% health.
Click here to move to _Phase 1.50_ |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 1.50_
|tip Remorseless Winter creates a large winter storm that deals 7,000-8,000 frost damage every second to all raid members within 45 yards.
|tip Pain and Suffering deals 2,800-3,200 shadow damage and an additional 500 shadow damage every second for 3 seconds in a frontal cone.
|tip Summon Ice Sphere spawns an Ice Sphere that moves towards its target. If it reaches them, it deals 9,400-10,600 frost damage to all players within 10 yards, also knocking them back.
|tip Raging Spirit rips out a piece of the target's spirit, spawning a Raging Spirit that deals 20,000 shadow damage to all players in a 15 yard frontal cone and silencing them for 5 seconds.
|tip Quake occurs at the end of the phase. The Lich King sends out shockwaves, causing the edge of the platform to crumble.
Click here to move to _Phase 2_ |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 2_
|tip Infest deals 6,500-7,500 shadow damage to the raid, also increasing their shadow damage taken.
|tip Soul Reaper hits the target for 50% weapon damage and applies Soul Reaper, which deals 50,000 shadow damage after 5 seconds. Also increases the Lich King's haste by 100% for 5 seconds.
|tip Defile creates a defiled area under a player's feet, dealing damage to anyone inside it and growing in size whenever it deals damage.
|tip Summon Val'kyr spawns a Val'kyr Shadowguard, which picks up a random player and tries to throw them off the edge of the platform if not killed in time.
|tip Phase 2.50 starts when the Lich King falls below 40% health.
Click here to advance to _Phase 2.50_ |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 2.50_
|tip Remorseless Winter creates a large winter storm that deals 7,000-8,000 frost damage every second to all raid members within 45 yards.
|tip Pain and Suffering deals 2,800-3,200 shadow damage and an additional 500 shadow damage every second for 3 seconds in a frontal cone.
|tip Summon Ice Sphere spawns an Ice Sphere that moves towards its target. If it reaches them it deals 9,400-10,600 frost damage to all players within 10 yards, also knocking them back.
|tip Raging Spirit rips out a piece of the target's spirit, spawning a Raging Spirit that deals 20,000 shadow damage to all players in a 15 yard frontal cone and silencing them for 5 seconds.
|tip Quake occurs at the end of the phase. The Lich King sends out shockwaves, causing the edge of the platform to crumble.
Click here to proceed to _Phase 3_ |confirm
step
The Lich King |goto Icecrown Citadel/7 49.80,50.40
_Phase 3_
|tip Soul Reaper hits the target for 50% weapon damage and applies Soul Reaper, which deals 50,000 shadow damage after 5 seconds. Also increases the Lich King's haste by 100% for 5 seconds.
|tip Defile creates a defiled area under a player's feet, dealing damage to anyone inside it and growing in size whenever it deals damage.
|tip Vile Spirits spawns 10 Vile Spirit adds which attack the raid after 30 seconds. They can explode when near players, dealing 20,000 shadow damage to players within 5 yards.
|tip Harvest Souls deals 7,500 shadow damage every second for 6 seconds. If the targets are still alive when this expires, they are sent into Frostmourne.
_Inside Frostmourne_
|tip There is an NPC and a mob inside. A tank can pick up the mob, who will also need to be interrupted. Healers can heal the NPC and all DPS have 60 seconds to kill the mob. Failure to kill the mob in time results in all players' deaths.
|tip Phase 4 starts when the Lich King reaches 10% health.
Click here to advance to _Phase 4_ |confirm
step
kill The Lich King##36597 |goto Icecrown Citadel/7 49.80,50.40
_Phase 4_
|tip Fury of Frostmourne occurs at the beginning of Phase 4, dealing shadow damage to the entire raid.
|tip Raise Dead raises the dead back to life to fight again for the Lich King.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
label "LK no fight"
Defeat The Lich King
collect Call of the Frozen Blade##142099 |n
Use the Call of the Frozen Blade |use Call of the Frozen Blade##142099
learnpet Wicked Soul##115152 |achieve 11320/16 |goto Icecrown Citadel/7 49.80,50.40 |or
collect Drudge Remains##142098 |n |goto Icecrown Citadel/7 49.80,50.40
Use the Drudge Remains |use Drudge Remains##142098
learnpet Drudge Ghoul##115150 |achieve 11320/15 |goto Icecrown Citadel/7 49.80,50.40 |or
Click here if the pets did not drop |confirm
step
Enter Ulduar |goto Ulduar/1 52.80,94.10 < 1000
step
Clearing these adds will cause the boss, the Flame Leviathan to spawn |goto Ulduar/1 49,40
|tip It is a good idea to shoot down as many Mechanolift 304-A as possible. These drop pyrite, which replenish your ammo and is used for some vehicle abilities.
|confirm
step
kill Flame Leviathan##33113 |goto Ulduar/1 49,40
|tip Flame Vents has a 50 yard range and inflicts 3,000 fire damage every second to enemies around Flame Leviathan, lasting 10 seconds.
|tip Battering Ram deals damage and knocks the target backward, increasing damage taken by 50% for 20 seconds.
|tip Gathering Speed increases Flame Leviathan's speed by 5%, stacking up to 20 times.
|tip Missle Barrage fires missles into the air that hit random raid members and deal 3,700-4,200 damage.
|tip The Life Tower will increase the boss' health and periodically summon many plant adds which need to be killed asap.
|tip The Fire Tower will increase his health and damage.
|tip The Frost Tower will increase his health and summon a blue beam which will follow vehicles around, once it reaches one it will summon a orb from the top of the beam. When it reaches the bottom, anyone within a short range will get frozen.
|tip The Storms Tower will increase his health and damage.
|confirm
step
map Ulduar/1
path loop off
path	48.50,35.10	48.60,26.50	40.60,26.50
Follow the path, clearing trash as you make your way to the next boss, Ignis the Furnace Master |goto Ulduar/1 40.60,26.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Ignis the Furnace Master##33118
|tip Scorch is a cleave, dealing 4,000 fire damage every half second to all raid members in front of Ignis and lasting 3 seconds.
|tip Ignis stomps on the ground, causing geysers of flame to erupt under all raid members. These deal 8,500-11,200 fire damage, knocking players into the air for 8 seconds and dealing an additional 2,600 fire damage every second.
|tip A random raid member is thrown into Ignis' Slag Pot, dealing 5,000 fire damage every second for 10 seconds. If they survive, their haste is increased by 100% for 10 seconds.
|tip Ignis activates an Iron Construct add. These adds must be dragged through his Scorch ability, turning them Molten after 10 stacks. Once Molten, it must be run into water to turn it Brittle. This stuns the Construct, increasing its chance of being critically hit and causing it to shatter if hit for more than 5,000 damage in one attack.
|tip Strength of the Creator is a stacking buff applied to Ignis when an Iron Construct is alive. It increases his damage by 20% for every Iron Construct summoned.
collect Red-Hot Coal##142086 |n
Use the Red-Hot Coal |use Red-Hot Coal##142086
learnpet Magma Rageling##115138 |achieve 11320/3 |goto Ulduar/1 37.50,26.50 |or
Click here if the pet did not drop |confirm
step
map Ulduar/1
path loop off
path	49.10,26.60	51.30,26.60
Follow the path to the next boss, Razorscale |goto Ulduar/1 51.30,26.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
talk Expedition Commander##33210 |goto Ulduar/1 51.30,26.60
Select _"We are ready to help!"_
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill Razorscale##33186
|tip Phase 1 starts with Razorscale in the air, spawning adds and attacking the raid.
|tip Avoid her attacks and kill the adds until the Harpoon Turrets are ready. These will pull her to the ground so you can attack her.
|tip Fireball deals 11,000-12,000 fire damage.
|tip Wing Buffet occurs when Razorscale breaks her chains. It knocks back players within 35 yards of her.
|tip Flame Buffet is a debuff that increases the target's fire damage taken by 1,000 for 1 minute.
|tip Flame Breath deals 13,000-16,700 fire damage to players in a cone in front of Razorscale. Make sure the tank is the only one in front of her when this occurs.
|tip Razorscale spits a Lava Bombs at players, inflicting 6,000-7,000 fire damage to them and an additional 6,000-7,000 fire damage every second to anyone standing within 6 yards of the explosion, lasting 25 seconds.
|tip Fuse Armor is a debuff that reduces the armor, attack speed, and movement speed by 20%, stacking up to 5 times.
|tip Berserk occurs after 8 minutes.
collect Ironbound Collar##142087 |n
Use the Ironbound Collar |use Ironbound Collar##142087
learnpet Ironbound Proto-Whelp##115139 |achieve 11320/4 |goto Ulduar/1 54.10,26.30 |or
|confirm
step
map Ulduar/1
path loop off
path	48.60,25.30	48.60,19.00	48.50,17.30
Follow the path, clearing trash as you make your way to the next boss, XT-002 Deconstructor |goto Ulduar/1 48.50,17.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill XT-002 Deconstructor##33293 |goto Ulduar/1 48.50,13.90
|tip After 9 seconds, a Gravity Bomb spawns at the targeted player's location, pulling raid members within 12 yards into the gravity well that deals 12,000 damage.
|tip Light Bomb is a DoT that deals 2,700 AoE damage every tick.
|tip Heartbreak XT reveals his heart, lowering it to the ground and becoming invulnerable. Destroy the heart. This will increase his health by 60% and damage by 15%. This will activate hard mode, healing him to full.
|tip Tympanic Tantrum deals damage equal to 10% of the player's maximum health every second for 8 seconds. Nearby raid members are stunned for this duration.
|tip Enrage occurs after 10 minutes of combat.
|confirm
step
|goto Ulduar/1 48.50,11.10 |n
Click the Ulduar Teleporter and teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,75.30 < 10 |noway |c
step
map Ulduar/2
path loop off
path	37.20,70.60	37.10,47.60	28.90,30.20
path	15.30,36.70
Follow the path, clearing trash as you make your way to the next boss, the Assembly of Iron |goto Ulduar/2 15.30,36.70 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
_Assembly of Iron_
|tip When one of the bosses dies, the other ones will gain another ability and be restored to full health.
kill Steelbreaker##32867
|tip Fusion Punch deals 18,800-21,100 nature damage and an additional 15,000 nature damage every second for 4 seconds. Only hits the tanks.
|tip High Voltage inflicts 1,500 nature damage to the whole raid every 3 seconds.
|tip If Steelbreaker is left in the last two he will gain the ability Static disruption, which increases nature damage taken by 75 percent per stack. This will be cast on a random ranged player.
|tip If Steelbreaker is the last one alive he will gain the ability Overwhelming Power, which puts a debuff on the tank with aggro on him which will cause this tank to explode and die after 60 seconds.
kill Runemaster Molgeim##32927
|tip Rune of Power is a ground-targeted AoE that buffs anyone, enemy of friendly, standing on it with increased damage by 50%.
|tip Shield of Runes a shield that absorbs 20,000 damage. If the shield absorbs this much damage, Molgeim is buffed with 50% increased damage. This should be purged, dispelled, or spellstolen.
|tip If Molgeim is left in the last two he will gain the ability Rune of Death, which puts a huge green rune on the ground. Anyone standing in this will take 2,500 damage per second and be slowed.
|tip If Molgeim is the last one alive he will gain the ability Rune of Summoning. This will summon a purple rune under a random player and summon adds which fixate players. If they reach a player they will explode, dealing damage to the raid.
kill Stormcaller Brundir##32857
|tip Chain Lightning deals 4,100-4,800 nature damage to the target and can jump to 5 additional targets within 10 yards.
|tip Overload deals 20,000 nature damage to all raid members within 20 yards of Brundir. While casting this, he deals 250 nature damage and is immune to stuns.
|tip Stormcaller will gain the ability Lightning Whirl, which deals damage to random raid members.
collect Stormforged Rune##142088 |n
Use the Stormforged Rune |use Stormforged Rune##142088
learnpet Runeforged Servitor##115140 |achieve 11320/5 |goto Ulduar/2 15,56 |or
Click here if the pet did not drop |confirm |or
step
map Ulduar/2
path loop off
path	15.40,37.10	26.80,30.50	35.70,36.50
path	36.10,25.00	37.20,21.80
Follow the path, clearing trash as you make your way to the next boss, Kologarn. |goto Ulduar/2 37.20,21.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Kologarn##32930 |goto Ulduar/2 37.30,14.00
|tip Overhead Smash applies a debuff that reduces armor by 20% for 6 seconds and interrupts casting for 8 seconds in melee range.
|tip Petrifying Breath occurs when no one is in melee range and deals 14,000-16,000 damage every second for 4 seconds, also increasing damage taken by 20% for 8 seconds.
|tip Focused Eyebeam deals 2,700-3,200 nature damage to players within 3 yards.
_Left Arm_
|tip Shockwave sweeps the entire raid, dealing 8,800-10,200 nature damage.
_Right Arm_
|tip Stone Grip grabs a random raid member and stuns them, dealing 3,200-3,700 damage per second until the player is dead or the arm takes 150,000 damage.
|confirm
step
kill Auriaya##33515
|tip Terrifying Screech is an AoE Fear, causing players near Auriaya to flee for 5 seconds.
|tip Sentinel Blast inflicts 5,500 shadow damage and increases their shadow damage taken by 100% for 5 seconds. Stacks 5 times.
|tip Sonic Screech is an AoE that deals 74,000-86,000 shadow damage to all enemies in its path. The damage is split between targets.
|tip Summon Swarming Guardian summons a swarm of smaller panther adds.
collect Glittering Ball of Yarn##142089 |n
Use the Glittering Ball of Yarn |use Glittering Ball of Yarn##142089
learnpet Sanctum Cub##115141 |achieve 11320/6 |goto Ulduar/2 56.70,65.50 |or
Click here if the pet did not drop |confirm |or
step
map Ulduar/3
path loop off
path	51.00,55.90	51.30,43.20	52.10,33.40
Follow the path, clearing trash on your way to the next boss, Freya |goto Ulduar/3 52.10,33.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Freya##32906
|tip As you engage Freya, she will cast a heal on herself and a buff that increases her healing by 4% per stack, starting with 150 stacks, making her basically invincible at the start of the fight. These buffs are removed by killing adds.
|tip Touch of Eonar is a permanent buff on Freya that heals her for 6,000 health every second.
|tip Sunbeam deals 5,000-6,000 nature damage to enemies within 8 yards of the targeted area.
|tip Nature Bombs explode after 10 seconds, dealing 6,000 nature damage to raid members within 10 yards of the bomb, also knocking them back.
|tip If Brightleaf is left alive, Freya will gain a buff increasing Nature damage by 50 percent.
|tip If Ironbranch is left alive, Freya will gain a buff increasing her ally's physical damage by 50 percent.
|tip If Stonebark is left alive, Freya will gain a buff increasing her physical damage by 50 percent.
collect Blessed Seed##142091 |n
Use the Blessed Seed |use Blessed Seed##142091
learnpet Snaplasher##115143 |achieve 11320/8 |goto Ulduar/3 53,23 |or
Click here if the pet did not drop |confirm |or
step
map Ulduar/3
path loop off
path	51.10,51.30	52.20,57.70	56.30,56.90
path	60.60,49.30	65.80,48.60
Follow the path, clearing trash as you make your way to the next boss, Thorim |goto Ulduar/3 65.80,48.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Thorim##32865 |goto Ulduar/3 67.60,48.70
|tip The raid group must be split in two. One group down the hallway to reach Thorim and the other to stay and fight the waves of adds.
_Phase 1_
|tip Charge Orb fires a Lightning Shock every second, inflicting 3,000 nature damage to raid members within 30 yards.
|tip Stormhammer deals 2,500 damage to a raid member, knocking them down and stunning them for 2 seconds. Causes a Deafening Thunder.
|tip Defeaning Thunder deals 5,000 nature damage to players in close proximity to a Stormhammer strike.
|tip Summon Lightning Orb spawns an orb that lays waste to all in its path. This occurs if no one is in the room below Thorim or if no one reaches him within 5 minute.
_Phase 2_
|tip Chain Lightning hits a player for 3,700-4,300 nature damage, jumping to nearby players and dealing an additional 50% damage every jump.
|tip Lightning Charge deals 14,000-16,100 damage in a cone. Make sure the tank is the only one in front of Thorim when this occurs.
|tip Unbalancing Strike inflicts 200% weapon damage and applies a debuff that lowers their defense by 200 for 15 seconds.
_Hard Mode_
|tip This is activated if the hallway group gets through the gauntlet within 3 minutes.
|tip This will bring Sara into the fight. Sara will cast Frostbolt on random players.
|tip She will cause blizzards to fall on random parts of the room causing damage and slowing anyone standing in them.
|tip She will also periodically teleport onto players and cast Frost Nova, rooting anyone in range.
|confirm
step
map Ulduar/3
path loop off
path	56.40,56.80	56.50,64.40	57.80,72.40
path	64.30,77.60	72.80,79.10	75.90,74.70
path	73.60,64.40	71.80,63.90
Follow the path, clearing trash as you make your way to the next boss, Hodir |goto Ulduar/3 71.80,63.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill Hodir##32845
|tip Biting Cold is an aura that stacks a DoT that deals frost damage. Move to dispel it.
|tip Freeze inflicts 5,500-6,500 frost damage to nearby players, immobilizing them for 10 seconds.
|tip Flash Freeze freezes the raid in ice blocks. Other raid members must attack and kill the ice block to free the encased player. Being hit by a second Flash Freeze before being freed is an instant kill. Avoid this by hiding in Snowdrifts that spawn.
|tip Icicles fall from the ceiling, dealing 12,000 frost damage to any players underneath. This spawns the Snowdrifts that players hide in to avoid Flash Freeze.
|tip Frozen Blows is a self buff that adds 31,000 frost damage to all melee attacks but reduces physical damage by 70%. Also hits the raid for 4,000 frost damage every 2 seconds. Lasts 20 seconds.
collect Ominous Pile of Snow##142090 |n
Use the Ominous Pile of Snow |use Ominous Pile of Snow##142090
learnpet Winter Rageling##115142 |achieve 11320/7 |goto Ulduar/3 66.00,63.70 |or
Click here if the pet did not drop |confirm |or
step
map Ulduar/3
path loop off
path	59.50,64.10	56.20,62.40	51.00,54.50
Follow the path to the Ulduar Teleporter |goto Ulduar/3 51.00,54.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
|goto Ulduar/3 51.00,54.50 |n
Click the Ulduar Teleporter and teleport to the Spark of Imagination |goto Ulduar/5 43.60,61.90 < 10 |noway |c
step
Click here for an explanation of each phase for Mimiron |next "Phases Mim" |confirm |or
Click here if you are a high enough level where mechanics dont make a difference |next "No Phases" |confirm |or
step
label "Phases Mim"
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 1 Leviathan MKII_
|tip Napalm Shell deals 8,000 fire damage to players within 5 yards of the targeted area, also applying a DoT that deals 4,000 fire damage every second for 8 seconds.
|tip Plasma Blast is a 3 second cast, dealing 17,000 damage every second.
|tip Proximity Mines are dropped 15 yards from Leviathan. They explode and deal 9,000 fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 nature damage to targets within 15 yards.
Click here for _Phase 2_ |confirm
step
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 2 VX-001_
|tip Heat Wave deals 10,000 fire damage to the entire raid and an additional 2,000 damage every second for 5 seconds.
|tip Rapid Burst is a cone that deals 2,500-2,800 damage to all targets in front of VK-001. Make sure the tank is the only one in front of him when this occurs.
|tip Rocket Strike deals 5,000,000 damage at the targeted area.
|tip VX-001 starts spinning for 4 seconds, then casts P3Wx2 Laser Barrage, which deals 20,000 arcane damage to targets within 80 yards in front of VX-001. Make sure the tank is the only one in front of him when this occurs.
Click here to move to _Phase 3_ |confirm
step
_Mimiron_ |goto Ulduar/5 43.60,41.10
_Phase 3 Aerial Command Unit_
|tip Plasma Ball is used on the player with highest threat, dealing 9,500-10,500 damage.
|tip Assault Bot uses Magnetic Field, which roots the target and increases their damage taken by 30% for 6 seconds.
|tip Bomb Bot explodes, dealing 23,500-26,500 fire damage in a 5 yard radius.
Click here to advance to _Phase 4_ |confirm
step
kill Mimiron##33350 |goto Ulduar/5 43.60,41.10
_Phase 4 V-07-TR-0N_
|tip Proximity Mines are dropped 15 yards from Leviathan. They explode and deal 9,000 fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 nature damage to targets within 15 yards.
|tip Rocket Strike deals 5,000,000 damage at the targeted area.
|tip P3Wx2 Laser Barrage deals 20,000 arcane damage to targets within 80 yards in front of VX-001.
|tip Hand Pulse deals 4,700-5,300 damage to the raid.
|tip Plasma Ball is used on the player with highest threat, dealing 9,500-10,500 damage.
|tip You must destroy all 4 parts within 20 seconds.
|confirm
step
label "No Phases"
kill Mimiron##33350
collect Overcomplicated Controller##142092 |n
Use the Overcomplicated Controller |use Overcomplicated Controller##142092
learnpet G0-R41-0N Ultratonk##115144 |achieve 11320/9 |goto Ulduar/5 43.60,41.10 |next "Continue Uld" |or
Click here if the pet did not drop |next "Continue Uld" |confirm |or
step
label "Continue Uld"
|goto Ulduar/5 43.70,62.00 |n
Click on the Ulduar Teleporter and teleport to the Conservatory of Life |goto Ulduar/3 50.90,54.30 < 10 |noway |c
step
map Ulduar/3
path loop off
path	43.90,72.40	38.00,74.60	30.00,74.60
Follow the path, clearing trash as you make your way to the next boss, General Vezax |goto Ulduar/3 30.00,74.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
map Ulduar/4
path loop off
path	31.40,51.50	27.90,56.70	30.10,63.50
path	34.90,68.40	42.80,65.50
Follow the path as you make your way to the next boss, General Vezax |goto Ulduar/4 42.80,65.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
kill General Vezax##33271 |goto Ulduar/4 52.60,57.10
|tip Shadow Crash deals 5,600-6,300 shadow damage and knocks back all raid members near the impact area. After impact, it leaves a field that lingers for 20 seconds, increasing magic damage dealt and cast speed by 100% and reducing healing done and mana costs by 75%.
|tip Searing Flames deals 13,800-16,100 fire damage to all raid members within 100 yards, also reducing their armor by 75% for 10 seconds.
|tip Surge of Darkness buffs Vezax, increasing his physical damage by 100% and reducing movement speed by 55%. Lasts 10 seconds.
|tip Mark of the Faceless siphons 5,000 health every second from players near the target. Lasts 10 seconds.
|tip Aura of Despair is a debuff applied to mana-users. It prevents mana regeneration and reduces melee attack speed by 20%.
|tip Corrupted Rage affects Shamans with Shamanistic Rage, increasing mana restored by 100% per proc, but reducing healing by 90%.
|tip Corrupted Wisdom affects Paladins with Judgments of the Wise, corrupting it to reduce healing.
|tip Saronite Vapors spawn green crystals with 12,600 hit points. Destroying these leave a green puddle on the ground. Standing in them causes players to take stacking shadow damage but they regenerate mana.
_Hard Mode_
|tip Hard mode is activated when 8 Saronite Vapors are not soaked. This will summon a Saronite Animus.
|tip Once this is spawned it will need to be killed before you can damage the boss again.
|confirm
step
map Ulduar/4
path loop off
path	62.00,60.20	68.00,56.50
Follow the path to the final boss, Yogg-Saron |goto Ulduar/4 68.00,56.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
|confirm
step
Click here for an explanation of each phase of Yogg-Saron |next "Phases Yogg" |confirm |or
Click here if you a high enough level where mechanics dont make a difference |next "Phases Nope" |confirm |or
step
label "Phases Yogg"
_Yogg-Saron_ |goto Ulduar/4 68,40.80
_Phase 1 Sara_
|tip Sara stands in the center of the room. The only way to damage her is the AoE damage from dying Guardian adds.
|tip Sara's Fervor increases one of her allies' damage by 20% and their damage taken by 100%, lasting 15 seconds.
|tip Sara's Blessing heals one of her allies' for 27,000-33,000 and causes 60,000 shadow damage over 20 seconds.
|tip Sara's Anger deals 12,500 shadow damage over 3 seconds and increases physical damage dealt by 12,000, lasting 12 seconds.
|tip Sanity buff indicates overall level of Sanity. If Sanity reaches 0, the player becomes Insane.
|tip Insane is a 60 second debuff. Yogg-Saron mind controls the target, increasing their damage by 100% and health by 300%. The raid must kill the player.
Click here to move to _Phase 2_ |confirm
step
_Yogg-Saron_ |goto Ulduar/4 68,40.80
_Phase 2_
|tip There are now two areas: outside and inside the Mind's Eye. During this phase, portals are opened to the Mind's Eye. This phase ends when the Mind's Eye is at 30% health.
_Crusher Tentacle_
|tip Diminish Power weakens all members of the raid, reducing their damage by 20%. Stacks up to 4 times. Hitting the tentacle with by a melee attack disrupts the cast.
|tip Focused Anger enrages the tentacle, increasing its attack speed and damage by 3% per stack, stacking up to 99 times.
_Corruptor Tentacle_
|tip Curse of Doom is a debuff that inflicts 2,000 shadow damage after 12 seconds.
|tip Apathy is a 20 second debuff which reduces attack, casting, and movement speeds by 60%.
|tip Black Plague is a 24 second debuff which periodically stuns the target for 2 seconds.
|tip Draining Poison is an 18 second debuff that deals 3,500 nature damage and drains 1,400 mana every 3 seconds.
_Constrictor Tentacle_
|tip Squeeze grabs a nearby raid member, inflicting 7,500 physical damage every second.
_Sara_
|tip Psychosis deals 5,000 shadow damage and reduces Sanity by 12.
|tip Brain Link connects two random raid members with a beam, which deals 3,000 shadow damage and reduces Sanity by 2 to both players while they are more than 20 yards apart.
|tip Malady of the Mind is a 4 second debuff. The target takes 5,000 shadow damage, loses 3 Sanity and gets feared. The debuff jumps to another target within 10 yards upon expiration.
|tip Death Ray spawns slow moving green beams which kill any player they touch.
_The Mind's Eye (Inside)_
|tip Laughing Skulls use Lunatic Gaze. Looking into the Laughing Skull inflicts 1,750 shadow damage and reduces Sanity by 2% every second.
|tip Influence Tentacles use Grim Reprisal, which reflects 60% of damage taken back to the attacker.
|tip Brain of Yogg-Saron: drives all nearby players insane, reducing Sanity to 0. 60 second cast time.
Click here to move to _Phase 3_ |confirm
step
kill Yogg-Saron##33288 |goto Ulduar/4 68,40.80
_Phase 3_
The Head of the Beast
|tip Lunatic Gaze inflicts 5,700-6,300 shadow damage and reduces Sanity by 4% every second.
|tip Empowering Shadows empowers Yogg-Saron's friendly units within 20 yards, causing them to regenerate 750,000 health over 20 seconds.
|tip Shadowy Barrier protects Yogg-Saron from all attacks and spells.
|tip Extinguish All Life wipes the raid. Occurs after 15 minutes of combat.
|tip If you recruited the help of 3 Keepers or less, he also uses Deafening Roar, which deals 7,600-8,400 physical damage and silences for 4 seconds.
|confirm
step
label "Phases Nope"
kill Yogg-Saron##33288
collect Wriggling Darkness##142093 |n
Use the Wriggling Darkness |use Wriggling Darkness##142093
learnpet Creeping Tentacle##115145 |achieve 11320/10 |goto Ulduar/4 68,40.80 |next "End Leashes 4" |or
Click here if the pet did not drop |next "End Leashes 4" |or |confirm
step
label "End Leashes 4"
If you were unable to get all of the pets listed, you can try again next week or attempt it on another character
Click here to return to the start of the guide |next "Leashes 4" |confirm
|only if not achieved(11320)
step
label "Leashes 4 Congratz"
Congratulations!
You have earned the _Raiding with Leashes II: Attunement Edition_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\That was Close!",{
achieveid={6571},
patch='50004',
description="Capture a battle pet below 5% health.",
},[[
step
For this Achievement, you will need to _Capture a Battle Pet below 5% Health_.
|confirm
step
The _Adders_ in this area are level 1. Challenge one to a pet battle and capture it.
Run around this area challenging pets to a Pet Battle. Fight until it is below 5% health and capture it.
|tip If all your pets are too high level for this, you will have to capture one first, and battle against the others.
Capture a Battle Pet below 5% health. |achieve 6571 |goto Durotar 45.40,25.70
step
Congratulations, you have earned the _That was Close!_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\World Safari",{
achieveid={6590},
patch='50004',
description="Complete the Safari achievements listed below.",
},[[
step
Complete the Eastern Kingdoms Safari achievement
Click here to check out our guide for Eastern Kingdoms Safari |confirm |next "Achievement Guides\\Pet Battles\\Collect\\Eastern Kingdoms Safari" |or
|achieve 6587/1 |or
step
Complete the Kalimdor Safari achievement
Click here to check out our guide for Kalimdor Safari |confirm |next "Achievement Guides\\Pet Battles\\Collect\\Kalimdor Safari" |or
|achieve 6587/2 |or
step
Complete the Northrend Safari achievement
Click here to check out our guide for Northrend Safari |confirm |next "Achievement Guides\\Pet Battles\\Collect\\Northrend Safari" |or
|achieve 6587/4 |or
step
Complete the Outland Safari achievement
Click here to check out our guide for Outland Safari |confirm |next "Achievement Guides\\Pet Battles\\Collect\\Outland Safari" |or
|achieve 6587/3 |or
step
Complete the Pandaria Safari achievement
Click here to check out our guide for Pandaria Safari |confirm |next "Achievement Guides\\Pet Battles\\Collect\\Pandaria Safari" |or
|achieve 6587/5 |or
step
_Congratulations!_
You have earned the _World Safari_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Zen Pet Hunter",{
achieveid={7436},
patch='50004',
description="Capture 200 battle pets.",
},[[
step
For this achievement, you will need to _capture 200 pets in Pet Battles_.
Go to any area where there are different pets, challenge them to pet battles, and capture them when they are below 35% health.
Earn the _Zen Pet Hunter_ achievement |achieve 7436
step
Congratulations, you have earned the _Zen Pet Hunter_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawler",{
achieveid={6622},
patch='50004',
description="Win a pet battle in every Alliance and Horde capital city.",
},[[
step
In order to earn this achievement, you will need to complete the following tasks:
Big City Pet Brawlin' - Alliance |achieve 6584
Big City Pet Brawlin' - Horde |achieve 6621
|confirm
leechsteps "Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawlin' - Alliance"
leechsteps "Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawlin' - Horde"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawlin' - Alliance",{
achieveid={6584},
patch='50004',
description="Win a pet battle in every Alliance capital city.",
},[[
step
For this achievement, you will have to win a battle in each of the Alliance capitals.
Since this achievement is account bound, we recommend creating a alliance character and fight each of the pets below to make it easier for you.
|confirm
step
_Stormwind Pet Battle_: |achieve 6584/1 |goto Stormwind City 54.90,92.00
You can find Squirrels around this area.
step
_Ironforge Pet Battle_: |achieve 6584/2 |goto Ironforge 61.40,15.30
You can find Long-tailed Moles around this area.
step
_Darnassus Pet Battle_:  |achieve 6584/3 |goto Darnassus 32.60,42.00
You can find Red-Tailed Chipmunks around this area.
step
_Exodar Pet Battle_: |achieve 6584/4 |goto The Exodar 73.10,35.30
There are several spots to find critters in the Exodar.
[46.40,29.60]
[41.90,71.40]
[55.30,82.30]
step
Earn the _Big City Pet Brawlin' - Alliance_ achievement |achieve 6584
step
Congratulations, you have earned the Big City Pet Brawlin' - Alliance Achievement! |achieve 6584
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawlin' - Horde",{
achieveid={6621},
patch='50004',
description="Win a pet battle in every Horde capital city.",
},[[
step
For this achievement, you will have to face either a player or a random critter in the Capitals of the Horde.
|confirm
step
_Orgrimmar Pet Battle_: |achieve 6621/1 |goto Orgrimmar 44.90,35.60
You can find critters near the wall here.
step
_Thunder Bluff Pet Battle_: |achieve 6621/2 |goto Thunder Bluff 24.60,12.50
You can find critters near the ledge here.
step
_Undercity_: |achieve 6621/3 |goto Undercity 59.70,36.60
You can find maggots in the canals.
step
_Silvermoon City_ |achieve 6621/4 |goto Silvermoon City 78.50,77.30
Earn the _Big City Pet Brawlin' - Horde_ achievement |achieve 6621
step
Congratulations, you have earned the Big City Pet Brawlin' - Horde Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Cat Fight!",{
achieveid={6594},
patch='50004',
description="Win 10 pet battles.",
},[[
step
This achievement simply requires that you _win 10 pet battles_.
You can either play against Players or NPCs.
Earn the _Cat Fight!_ achievement |achieve 6594
step
Congratulations, you have earned the Cat Fight! Achievement! |achieve 6594
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\The Celestial Tournament",{
achieveid={8410},
patch='50400',
description="Complete the Celestial Tournament Scenario",
},[[
step
label "start"
This achievement requires you to complete the _Celestial Tournament_ scenario.
In order to do so, you must have at least 30 different battle pets at level 25.
|confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
|achieve 8410
step
Congratulations, you have obtained _The Celestial Tournament_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Deadly Pet Brawler",{
condition_end=function() return achieved(8301) end,
achieveid={8297,8298,8300,8301,8301},
patch='50300',
description="This guide will walk you through earning the Trainer title.",
},[[
step
This guide consists of 4 achievements in total, all of which are related to using the _Find Battle_ feature using only level 25 pets.
To see your current overall progress, click here. |confirm
step
Here is your current progress on the _Merciless Pet Brawler_ achievement.
|achieve 8297/1
Remember, you need to _use a full team of level 25 pets and use the Find Battle queue_ in order to get credit towards a win.
Win _10_ PvP pet battles. |achieve 8297
step
Here is your current progress on the _Vengeful Pet Brawler_ achievement.
|achieve 8298/1
Remember, you need to _use a full team of level 25 pets and use the Find Battle queue_ in order to get credit towards a win.
Win _50_ PvP pet battles. |achieve 8298
step
Here is your current progress on the _Brutal Pet Brawler_ achievement.
|achieve 8300/1
Remember, you need to _use a full team of level 25 pets and use the Find Battle queue_ in order to get credit towards a win.
Win _250_ PvP pet battles.  |achieve 8300
step
Here is your current progress on the _Deadly Pet Brawler_ achievement.
|achieve 8301/1
Remember, you need to _use a full team of level 25 pets and use the Find Battle queue_ in order to get credit towards a win.
Win _1000_ Pvp pet battles. |achieve 8301
step
Congatulations, you have earned the _Merciless, Vengeful, Brutal and Deadly Pet Brawler_ achievements.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Experienced Pet Battler",{
achieveid={6593},
patch='50004',
description="Win 50 pet battles.",
},[[
step
This achievement will require that you _win 50 pet battles_.
PVP, NPC and Critter battles count towards this achievement.
Earn the _Experienced Pet Battler_ achievement |achieve 6593
step
Congratulations, you have earned the Experienced Pet Battler Achievement! |achieve 6593
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Experienced Pet Brawler",{
achieveid={6596},
patch='50004',
description="Win 50 PvP pet battles.",
},[[
step
For this achievement, you will need to win 50 battles against _Another Player_.
Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge.
|tip If you have a friend willing to help, that will make this much easier.
Earn the _Experienced Pet Brawler_ achievement |achieve 6596
step
Congratulations, you have earned the Experienced Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Grand Master Pet Battler",{
achieveid={6591},
patch='50004',
description="Win 1000 pet battles.",
},[[
step
This achievement simply requires that you _win 1000 pet battles_.
You can either play against Players or NPCs.
Earn the _Grand Master Pet Battler_ achievement |achieve 6591
step
Congratulations, you have earned the Grand Master Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Grand Master Pet Brawler",{
achieveid={6598},
patch='50004',
description="Win 1000 PvP pet battles.",
},[[
step
For this achievement, you will need to win 1000 battles against _Another Player_.
Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge.
|tip If you have a friend willing to help, that will make this much easier.
Earn the _Grand Master Pet Brawler_ achievement |achieve 6598
step
Congratulations, you have earned the Grand Master Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Legendary Pet Battler",{
achieveid={6592},
patch='50004',
description="Win 5000 pet battles.",
},[[
step
This achievement simply requires that you _win 5000 pet battles_.
You can either play against Players or NPCs.
Earn the _Cat Fight!_ achievement |achieve 6592
step
Congratulations, you have earned the Legendary Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Legendary Pet Brawler",{
achieveid={6599},
patch='50004',
description="Win 5000 PvP pet battles.",
},[[
step
For this achievement, you will need to win 5000 battles against _Another Player_.
Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge.
|tip If you have a friend willing to help, that will make this much easier.
Earn the _Legendary Pet Brawler_ achievement |achieve 6599
step
Congratulations, you have earned the Legendary Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Local Pet Mauler",{
achieveid={6558},
patch='50004',
},[[
step
Battle in Durotar |achieve 6558/1 |goto Durotar 36.90,26.20
Enemies in the area are level 1-3.
step
Battle in Azshara |achieve 6558/7 |goto Azshara 29.80,77.20
step
Battle in Ashenvale |achieve 6558/9 |goto Ashenvale 72.50,80.70
There are level 5 roaches in the area.
step
Battle in the Northern Barrens |achieve 6558/6 |goto Northern Barrens 33.60,39.60
There are level 3 adders in the area.
step
Battle in Stonetalon Mountains |achieve 6558/10 |goto Stonetalon Mountains 66.30,84.40
There are level 6 alpine chipmunks around rabbits around the area.
step
Battle in the Southern Barrens |achieve 6558/14 |goto Southern Barrens 41.00,54.40
There are level 9 prarie dogs around this area.
step
Battle in Mulgore |achieve 6558/4 |goto Mulgore 62.30,66.50
Mice, adders and prarie dogs around this area.
step
Battle in Dustwallow Marsh |achieve 6558/17 |goto Dustwallow Marsh 32.80,46.60
There are level 12 Toads and Snakes around this area.
step
Battle in Thousand Needles |achieve 6558/12 |goto Thousand Needles 9.10,26.40
There are level 13 Scorpids in the area.
step
Battle in Feralas |achieve 6558/11 |goto Feralas 80.80,44.40
There are level 11 animals around this area.
step
Earn the _Local Pet Mauler_ achievement |achieve 6558
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Master of the Masters",{
achieveid={8518},
patch='50400',
description="Complete the Celestial Tournament Scenario",
},[[
step
label "start"
This achievement requires you to complete the _Celestial Tournament_ scenario on _three different weeks_.
In order to do so, you must have at least 30 different battle pets at level 25.
|confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la, Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu, Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao, Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi, Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
step
You can check your progress for this achievement here.
|achieve 8518
step
Congratulations, you have obtained _The Celestial Tournament_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Master Pet Battler",{
achieveid={6462},
patch='50004',
description="Win 250 pet battles.",
},[[
step
This achievement simply requires that you _win 250 pet battles_.
You can either play against Players or NPCs.
Earn the _Master Pet Battler_ achievement |achieve 6462
step
Congratulations, you have earned the Master Pet Battler Achievement! |achieve 6462
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Master Pet Brawler",{
achieveid={6597},
patch='50004',
description="Win 250 PvP pet battles.",
},[[
step
For this achievement, you will need to win 250 battles against _Another Player_.
Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge.
|tip If you have a friend willing to help, that will make this much easier.
Earn the _Master Pet Brawler_ achievement |achieve 6597
step
Congratulations, you have earned the Master Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\No Time To Heal",{
achieveid={6620},
patch='50004',
description="Win 5 consecutive PvP battles without any pets dying.",
},[[
step
This achievement requires that you face players in the new _Pet Battle System_.
To earn this achievement, you will need to _win 5 times in a row without having a pet die in battle_.
To up your chances, try and use pets that have healing abilities and switch them out when they are low on health.
It also helps to have higher level pets than another player.
Earn the _No Time To Heal_ achievement |achieve 6620
step
Congratulations, you have earned the No Time to Heal Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Pet Brawler",{
achieveid={6595},
patch='50004',
description="Win 10 PvP pet battles.",
},[[
step
For this achievement, you will need to win 10 battles against _Another Player_.
Open the Pet Battle Menu, and click Find Battle, or you can find another player in the world to challenge.
|tip If you have a friend willing to help, that will make this much easier.
Earn the _Pet Brawler_ achievement |achieve 6595
step
Congratulations, you have earned the Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Take 'Em All On!",{
achieveid={6851},
patch='50004',
description="battle",
},[[
step
In order to earn this achievement, you will have to fight one of each type of battle pet
confirm
step
Challenge a _Cat_ and a _Black Lamb_, _Squirrel_ or _Fawn_ to battle and defeat it |goto Durotar 57.10,17.70
achieve 6851/2
achieve 6851/3
step
Challenge a _Hapry Youngling_ to battle and defeat it |achieve 6851/7 |goto Northern Barrens 30.40,35.60
step
Challenge a _Small Frog_ to battle and defeat it |achieve 6851/1 |goto Northern Barrens 36.60,44.00
step
Challenge a _Minfernal_ to battle and defeat it |achieve 6851/8 |goto Felwood 43.20,39.40
step
Challenge a _Tainted Moth_ to battle and defeat it |achieve 6851/6 |goto Felwood 55.80,87.80
step
Challenge a _Anodized Robo Cub_ to battle and defeat it |achieve 6851/9 |goto Winterspring 59.60,50.60
step
Challenge a _Spawn of Onyxia_ to battle and defeat it |achieve 6851/4 |goto Dustwallow Marsh 50.60,83.80
step
Challenge a _Lost of Lordaeron_ to battle and defeat it |achieve 6851/10 |goto Tirisfal Glades 77.80,61.80
step
Challenge a _Tiny Bog Beasts_ to battle and defeat it |achieve 6851/5 |goto Wetlands 53.00,29.20
step
Congratulations, you have earned the Take 'Em All On! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Win Streak",{
achieveid={6619},
patch='50004',
description="Win 25 consecutive pet battles.",
},[[
step
Win 25 pet battles in a row.
It can be against anyone and anything.
I suggest that you take a high levle pet and battle against level 1's in starter / low level zones to get it done the fastest.
Earn the _Win Streak_ achievement |achieve 6619
step
Congratulations, you have earned the Win Streak Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Level\\All Growns Up!",{
achieveid={7433},
patch='50004',
description="Raise a pet to level 25.",
},[[
step
For this Achievement, you will need to _Raise a Battle Pet to Level 25_.
Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 25.
Earn the _All Growns Up!_ achievement |achieve 6570
step
Congratulations, you have earned the _All Growns Up!_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Level\\Growing Up",{
achieveid={7433},
patch='50004',
description="Raise a pet to level 10.",
},[[
step
For this Achievement, you will need to _Raise a Battle Pet to Level 10_.
Challenge NPCs to _Growing Up_ and win, gaining XP for your battle pet, until it reaches level 10.
Earn the _Growing Up_ achievement |achieve 6567
step
Congratulations, you have earned the _Growing Up_ Achievement! |achieve 6567
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Level\\Just a Pup",{
achieveid={6566},
patch='50004',
description="Raise a pet to level 5.",
},[[
step
For this Achievement, you will need to _Raise a Battle Pet to Level 5_.
Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 5.
Earn the _Just a Pup_ achievement |achieve 6566
step
Congratulations, you have earned the _Just a Pup_ Achievement! |achieve 6566
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Level\\Newbie",{
achieveid={7433},
patch='50004',
description="Raise a pet to level 3.",
},[[
step
For this Achievement, you will need to _Raise a Battle Pet to Level 3_.
Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 3.
Earn the _Newbie_ achievement |achieve 7433
step
Congratulations, you have earned the _Newbie_ Achievement! |achieve 7433
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Level\\Old Timer",{
achieveid={7433},
patch='50004',
description="Raise a pet to level 20.",
},[[
step
For this Achievement, you will need to _Raise a Battle Pet to Level 20_.
Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 20.
Earn the _Old Timer_ achievement |achieve 6569
step
Congratulations, you have earned the _Old Timer_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Level\\Time for a Leash",{
achieveid={7433},
patch='50004',
description="Raise a pet to level 15.",
},[[
step
For this Achievement, you will need to _Raise a Battle Pet to Level 15_.
Challenge NPCs to _Pet Battles_ and win, gaining XP for your battle pet, until it reaches level 15.
Earn the _Time for a Leash_ achievement |achieve 6568
step
Congratulations, you have earned the _Time for a Leash_ Achievement! |achieve 6568
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle Master",{
achieveid={7483},
patch='50004',
description="Earn 200 pet battle achievement points.",
},[[
step
For this achievement, you will need to _earn 200 Pet Battle Achievement Points_.
Complete any of the other Achievement Guides in this section to gain achievement points.
Earn the _Battle Master_ achievement |achieve 7483
step
Congratulations, you have earned the _Battle Master_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Fabled Pandaren Tamer",{
achieveid={8080},
patch='50200',
description="Complete the Beasts of Fable questline",
},[[
step
In order to attain this pet, you will need to complete the Battle Pet Questline and defeat the 10 Fabled beasts.
Click here to proceed. |confirm |next |only if not completedq(31951)
Click here to proceed. |confirm |next "fable" |only if completedq(31951)
step
#include "H_Battlepet_quests"
step
label "fable"
#include "H_Beasts_of_Fable"
step
Obtain the Fabled Pandaren Tamer achievement |achieve 8080
step
Congratulations, you have obtained the _Fabled Pandaria Tamer_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\I Choose You",{
achieveid={7908},
patch='50100',
description="Defeat Grand Master Aki",
},[[
step
In order to attain this pet, you will need to complete the Battle Pet Questline.
|confirm
step
#include "H_Battlepet_quests"
step
Congratulations, you have obtained the _I Choose You_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\The Longest Day",{
achieveid={8348},
patch='50300',
description="This achievement requires that you complete all of the pet battle daily quests in a single day. This achievement requires that you complete the Battle Pet Questline before attempting this achievement.",
},[[
step
In order to complete this achievement, you must have level 25 pets, and you must have already completed the Battle Pet Questline.
This achievement requires you to complete all of the pet battle daily quests in a single day.
|tip This will take anywhere from 4-6 hours.
|confirm
step
talk Zunta##66126
accept Zunta##31818 |goto Durotar 43.90,28.70
step
talk Zunta##66126
Let's fight!
Defeat Zunta |q 31818/1 |goto Durotar 43.90,28.70
step
talk Zunta##66126
turnin Zunta##31818 |goto Durotar 43.90,28.70
|achieve 8348/31 |goto Durotar 43.90,28.70
step
talk Dagra the Fierce##66135
accept Dagra the Fierce##31819
|goto Northern Barrens 58.60,53.00
step
talk Dagra the Fierce##66135
Let's fight!
Defeat Dagra the Fierce |q 31819/1 |goto Northern Barrens 58.60,53.00
step
talk Dagra the Fierce##66135
turnin Dagra the Fierce##31819 |goto Northern Barrens 58.60,53.00
|achieve 8348/32
step
talk  Brok##66819
accept Brok##31972 |goto Mount Hyjal 61.40,32.70
|only if completedq(31970)
step
talk  Brok##66819
|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Brok |q 31972/1 |goto Mount Hyjal 61.40,32.70
|only if completedq(31970)
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal 61.40,32.70
|achieve 8348/13 |goto Mount Hyjal 61.40,32.70
|only if completedq(31970)
step
talk Stone Cold Trixxy##66466
accept Grand Master Trixxy##31909 |goto Winterspring 65.60,64.40
step
talk Stone Cold Trixxy##66466
Tell her you want to fight!
She uses level 19 Flying, Beast and Dragonkin pets.
Defeat Stone Cold Trixxy |q 31909/1 |goto Winterspring 65.60,64.40
step
talk Stone Cold Trixxy##66466
turnin Grand Master Trixxy##31909 |goto Winterspring 65.60,64.40
|achieve 8348/7
step
talk Elena Flutterfly##66412
accept Elena Flutterfly##31908 |goto Moonglade 46.10,60.30
step
talk Elena Flutterfly##66412
|tip You will not be able to challenge Elena if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Elena Flutterfly |q 31908/1 |goto Moonglade 46.10,60.30
step
talk Elena Flutterfly##66412
turnin Elena Flutterfly##31908 |goto Moonglade 46.10,60.30
|achieve 8348/40
step
talk Zoltan##66442
accept Zoltan##31907 |goto Felwood 40.00,56.60
step
talk Zoltan##66442
|tip You will not be able to challenge Zoltan if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's do it!
Defeat Zoltan |q 31907/1 |goto Felwood 40.00,56.60
step
talk Zoltan##66442
turnin Zoltan##31907 |goto Felwood 40.00,56.60
|achieve 8348/38
step
talk Analynn##66136
accept Analynn##31854 |goto Ashenvale 20.20,29.50
step
talk Analynn##66136
|tip You will not be able to challenge Analynn if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Analynn |q 31854/1 |goto Ashenvale 20.20,29.50
step
talk Analynn##66136
turnin Analynn##31854 |goto Ashenvale 20.20,29.50
|achieve 8348/41
step
talk Zonya the Sadist##66137
accept Zonya the Sadist##31862 |goto Stonetalon Mountains 59.70,71.50
step
talk Zonya the Sadist##66137
|tip You will not be able to challenge Zonya if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Zonya the Sadist |q 31862/1
step
talk Zonya the Sadist##66137
turnin Zonya the Sadist##31862 |goto Stonetalon Mountains 59.70,71.50
|achieve 8348/33
step
talk Merda Stronghoof##66372
accept Merda Stronghoof##31872 |goto Desolace 57.10,45.70
step
talk Merda Stronghoof##66372
Let's fight!
Defeat Merda Stronghoof |q 31872/1 |goto Desolace 57.10,45.70
step
talk Merda Stronghoof##66372
turnin Merda Stronghoof##31872 |goto Desolace 57.10,45.70
|achieve 8348/34
step
talk Traitor Gluk##66352
accept Traitor Gluk##31871 |goto Feralas 59.70,49.60
step
talk Traitor Gluk##66352
|tip You will not be able to challenge Traitor Gluk if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Traitor Gluk |q 31871/1 |goto Feralas 59.70,49.60
step
talk Traitor Gluk##66352
turnin Traitor Gluk##31871 |goto Feralas 59.70,49.60
|achieve 8348/39
step
talk Obalis##66824
accept Grand Master Obalis##31971 |goto Uldum 56.50,42.00
|only if completedq(31970)
step
talk Obalis##66824
|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Obalis |q 31971/1 |goto Uldum 56.50,42.00
|only if completedq(31970)
step
talk Obalis##66824
turnin Grand Master Obalis##31971 |goto Uldum 56.50,42.00
|achieve 8348/16
|only if completedq(31970)
step
talk Kela Grimtotem##66452
accept Kela Grimtotem##31906 |goto Thousand Needles 31.90,33.00
step
talk Kela Grimtotem##66452
|tip You will not be able to challenge Kela Grimtotem if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Kela Grimtotem |q 31906/1 |goto Thousand Needles 31.90,33.00
step
talk Kela Grimtotem##66452
turnin Kela Grimtotem##31906 |goto Thousand Needles 31.90,33.00
|achieve 8348/37
step
talk Cassandra Kaboom##66422
accept Cassandra Kaboom##31904 |goto Southern Barrens 39.60,79.10
step
talk Cassandra Kaboom##66422
Let's fight!
Defeat Cassandra Kaboom |q 31904/1 |goto Southern Barrens 39.60,79.10
step
talk Cassandra Kaboom##66422
turnin Cassandra Kaboom##31904 |goto Southern Barrens 39.60,79.10
|achieve 8348/35
step
talk Grazzle the Great##66436
accept Grazzle the Great##31905 |goto Dustwallow Marsh 53.90,74.80
step
talk Grazzle the Great##66436
|tip You will not be able to challenge Grazzle the Great if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Grazzle the Great |q 31905/1 |goto Dustwallow Marsh 53.90,74.80
step
talk Grazzle the Great##66436
turnin Grazzle the Great##31905 |goto Dustwallow Marsh 53.90,74.80
|achieve 8348/36
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands 56.60,56.80
|only if completedq(31970)
step
talk Goz Banefury##66822
|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Goz Banefury |q 31974/1 |goto Twilight Highlands 56.60,56.80
|only if completedq(31970)
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands 56.60,56.80
|achieve 8348/15
|only if completedq(31970)
step
talk Lydia Accoste##66522
accept Grand Master Lydia Accost##31916 |goto Deadwind Pass 40.10,76.40
|only if completedq(31915)
step
talk Lydia Accoste##66522
|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Lydia Accoste |q 31916/1 |goto Deadwind Pass 40.10,76.40
|only if completedq(31915)
step
talk Lydia Accoste##66522
turnin Grand Master Lydia Accoste##31916 |goto Deadwind Pass 65.70,64.50
|achieve 8348/6
|only if completedq(31915)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm 49.90,57.00
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Bordin Steadyfist |q 31973/1 |goto Deepholm 49.90,57.00
|only if completedq(31970)
step
goto Deepholm 49.90,57.00
.talk Bordin Steadyfist##66815
..turnin Bordin Steadyfist##31973
|achieve 8348/14
|only if completedq(31970)
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula 64.30,49.30
|only if completedq(31920)
step
talk Nicki Tinytech##66550
|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Nicki Tinytech |q 31922/1 |goto Hellfire Peninsula 64.30,49.30
|only if completedq(31920)
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula 64.30,49.30
|achieve 8348/1
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh 17.20,50.50
|only if completedq(31920)
step
talk Ras'an##66551
|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Ras'an |q 31923/1 |goto Zangarmarsh 17.20,50.50
|only if completedq(31920)
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh 17.20,50.50
|achieve 8348/2
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand 61.00,49.40
|only if completedq(31920)
step
talk Narrok##66552
|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Narrok |q 31924/1 |goto Nagrand 61.00,49.40
|only if completedq(31920)
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand 61.00,49.40
|achieve 8348/3
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City 58.80,70.10
|only if completedq(31920)
step
talk Morulu The Elder##66553
|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Morulu The Elder |q 31925/1 |goto Shattrath City 58.80,70.10
|only if completedq(31920)
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City 58.80,70.10
|achieve 8348/4
|only if completedq(31920)
step
talk Bloodknight Antari##66557
accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.60,42.00
|only if completedq(31920)
step
talk Bloodknight Antari##66557
|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.60,42.00
|only if completedq(31920)
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.60,42.00
|achieve 8348/5
|only if completedq(31920)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord 28.60,33.90
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Beegle Blastfuse |q 31931/1 |goto Howling Fjord 28.60,33.90
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord 28.60,33.90
|achieve 8348/8
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak 13.20,66.80
|only if completedq(31928)
step
talk Gutretch##66639
|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Gutretch |q 31934/1 |goto Zul'Drak 13.20,66.80
|only if completedq(31928)
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak 13.20,66.80
|achieve 8348/11
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight 59.00,77.00
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Okrut Dragonwaste |q 31933/1 |goto Dragonblight 59.00,77.00
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight 59.00,77.00
|achieve 8348/10
|only if completedq(31928)
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.10,59.00
|only if completedq(31928)
step
talk Nearly Headless Jacob##66636
|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Nearly Headless Jacob |q 31932/1 |goto Crystalsong Forest 50.10,59.00
|only if completedq(31928)
step
talk Nearly Headless Jacob##66636
turnin Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.10,59.00
|achieve 8348/9
|only if completedq(31928)
step
talk Major Payne##66675
accept Grand Master Payne##31935 |goto Icecrown 77.40,19.60
|only if completedq(31928)
step
talk Major Payne##66675
|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off.
Let's fight!
Defeat Major Payne |q 31935/1 |goto Icecrown 77.40,19.60
|only if completedq(31928)
step
talk Major Payne##66675
accept Grand Master Payne##31935 |goto Icecrown 77.40,19.60
|achieve 8348/12
|only if completedq(31928)
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest 48.00,54.20
|only if completedq(31970)
step
talk Hyuna of the Shrines##66730
Tell her let's do this!
Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.00,54.20
|only if completedq(31970)
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.00,54.20
|achieve 8348/17
|only if completedq(31970)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.80,36
step
Defeat the Whispering Pandaren Spirit. |q 32440/1
It uses level 25 pets.
The pets are classified as Critter, Dragonkin and Elemental.
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.80,36
|achieve 8348/27
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.00,43.70
|only if completedq(31970)
step
talk Farmer Nishi##66734
Tell her let's do this!
Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.00,43.70
|only if completedq(31970)
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.00,43.70
|achieve 8348/18
|only if completedq(31970)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds 62.20,45.90
|only if completedq(31970)
step
talk Mo'ruk##66733
Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.20,45.90
|only if completedq(31970)
step
talk Mo'ruk##66733
turnin Mo'ruk##31954 |goto Krasarang Wilds 62.20,45.90
|achieve 8348/19
|only if completedq(31970)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit 64.80,93.60
step
Defeat the Thundering Pandaren Spirit. |q 32441/1
It uses level 25 pets.
The pets are classified as Elemental, Critter and a Beast.
step
goto Kun-Lai Summit 64.80,93.60
.talk Thundering Pandaren Spirit##68465
..turnin Thundering Pandaren Spirit##32441
|achieve 8348/26
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.80,73.80
|only if completedq(31970)
step
talk Courageous Yon##66738
Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.80,73.80
He can also be found at [44.70,52.40]
|only if completedq(31970)
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.80,73.80
|achieve 8348/20
|only if completedq(31970)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.30,52.20
|only if completedq(31970)
step
talk Seeker Zusshi##66918
Defeat Seeker Zusshi |q 31991/1 |goto Townlong Steppes 36.30,52.20
|only if completedq(31970)
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.30,52.20
|achieve 8348/21
|only if completedq(31970)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes 57,42.20
step
Defeat the Burning Pandaren Spirit. |q 32434/1
It uses level 25 pets.
The pets are classified as Elemental, Dragonkin and Flying.
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes 57,42.20
|achieve 8348/25
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.20,87.40
step
Defeat the Flowing Pandaren Spirit. |q 32439/1
It uses level 25 pets.
The pets are classified as Elemental, Aquatic and Critters.
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.20,87.40
|achieve 8348/24
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes 55.10,37.60
|only if completedq(31970)
step
talk Wastewalker Shu##66739
Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.10,37.60
|only if completedq(31970)
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes 55.10,37.60
|achieve 8348/22
|only if completedq(31970)
step
talk Aki the Chosen##66741
accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.30,74.10
|only if completedq(31970)
step
talk Aki the Chosen##66741
Tell her let's go!
Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.30,74.10
|only if completedq(31970)
step
talk Aki the Chosen##66741
turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.30,74.10
|achieve 8348/23
|only if completedq(31970)
step
#include "H_Beasts_of_Fable_D"
step
|achieve 8348
step
Congratulations, you have obtained _The Longest Day_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Time to Open a Pet Store",{
achieveid={7521},
patch='50004',
description="Earn 400 pet battle achievement points.",
},[[
step
For this achievement, you will need to _earn 400 Pet Battle Achievement Points_.
Complete any of the other Achievement Guides in this section to gain achievement points.
Earn the _Time to Open a Pet Store_ achievement |achieve 7521
step
Congratulations, you have earned the _Time to Open a Pet Store_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Trainer Extraordinaire",{
achieveid={7482},
patch='50004',
description="Earn 100 pet battle achievement points.",
},[[
step
For this achievement, you will need to _earn 100 Pet Battle Achievement Points_.
Complete any of the other Achievement Guides in this section to gain achievement points.
|confirm
|next "earn" |only if achieved(7482)
leechsteps "Achievement Guides\\Pet Battles\\Level\\Newbie"
leechsteps "Achievement Guides\\Pet Battles\\Level\\Just a Pup"
leechsteps "Achievement Guides\\Pet Battles\\Level\\Growing Up"
leechsteps "Achievement Guides\\Pet Battles\\Level\\Time for a Leash"
leechsteps "Achievement Guides\\Pet Battles\\Battle\\Local Pet Mauler"
leechsteps "Achievement Guides\\Pet Battles\\Collect\\He's Mine!"
leechsteps "Achievement Guides\\Pet Battles\\Battle\\Cat Fight!"
leechsteps "Achievement Guides\\Pet Battles\\Battle\\Experienced Pet Battler"
leechsteps "Achievement Guides\\Pet Battles\\Battle\\Master Pet Battler"
leechsteps "Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawlin' - Horde"
step
label "earn"
Earn the _Trainer Extraordinaire_ achievement |achieve 7482
step
Congratulations, you have earned the _Trainer Extraordinaire_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Ultimate Trainer",{
achieveid={6600},
patch='50004',
description="Earn 300 pet battle achievement points.",
},[[
step
For this achievement, you will need to _earn 300 Pet Battle Achievement Points_.
Complete any of the other Achievement Guides in this section to gain achievement points.
Earn the _Ultimate Trainer_ achievement |achieve 6600
step
Congratulations, you have earned the _Ultimate Trainer_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Going to Need More Leashes",{
achieveid={7500},
patch='50004',
description="Obtain a companion pet.",
},[[
step
The _Adders_ in this area are level 1. Challenge one to a pet battle and capture it.
Obtain a Battle Pet. |achieve 1017 |goto Durotar 45.40,25.70
step
If you would like to earn the other achievements that deal with pets, check out our Pets and Mounts guide!
The next step will show you your progress with pet related achievements.
Click here to proceed. |confirm
step
Earn the Plenty Of Pets Achievement |achieve 15
Earn the Plethora Of Pets Achievement |achieve 1248
Earn the Shop Smart, Shop Pet...Smart Achievement |achieve 1250
Earn the Lil' Game Hunter Achievement |achieve 2516
Earn the Petting Zoo Achievement |achieve 5876
Earn the Menagerie Achievement |achieve 5877
Earn the Littlest Pet Shop Achievement |achieve 5875
Earn the Going to Need More Leashes Achievement |achieve 7500
Earn the That's a Lot of Pet Food Achievement |achieve 7501
step
Congratulations!  You've earned:
Can I Keep Him? Achievement
Plenty Of Pets Achievement
Plethora Of Pets Achievement
Shop Smart, Shop Pet...Smart Achievement
Lil' Game Hunter Achievement
Petting Zoo Achievement
Menagerie Achievement
Littlest Pet Shop Achievement
Going to Need More Leashes Achievement
That's a Lot of Pet Food Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\That's a Lot of Pet Food",{
achieveid={7501},
patch='50004',
description="Obtain a companion pet.",
},[[
step
The _Adders_ in this area are level 1. Challenge one to a pet battle and capture it.
Obtain a Battle Pet. |achieve 1017 |goto Durotar 45.40,25.70
step
If you would like to earn the other achievements that deal with pets, check out our Pets and Mounts guide!
The next step will show you your progress with pet related achievements.
Click here to proceed. |confirm
step
Earn the Plenty Of Pets Achievement |achieve 15
Earn the Plethora Of Pets Achievement |achieve 1248
Earn the Shop Smart, Shop Pet...Smart Achievement |achieve 1250
Earn the Lil' Game Hunter Achievement |achieve 2516
Earn the Petting Zoo Achievement |achieve 5876
Earn the Menagerie Achievement |achieve 5877
Earn the Littlest Pet Shop Achievement |achieve 5875
Earn the Going to Need More Leashes Achievement |achieve 7500
Earn the That's a Lot of Pet Food Achievement |achieve 7501
step
Congratulations!  You've earned:
Can I Keep Him? Achievement
Plenty Of Pets Achievement
Plethora Of Pets Achievement
Shop Smart, Shop Pet...Smart Achievement
Lil' Game Hunter Achievement
Petting Zoo Achievement
Menagerie Achievement
Littlest Pet Shop Achievement
Going to Need More Leashes Achievement
That's a Lot of Pet Food Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Player vs. Player\\The Timeless Isle\\Emissary of Ordos",{
achieveid={8716},
patch='50400',
description="Use the Censer of Eternal Agony obtained from Speaker Gulan on the Timeless Isle.",
},[[
step
label "start"
This achievement requires you to purchase and use a _Censer of Eternal Agony_ on the Timeless Isle.
In order to do so, you must gather _2500 Timeless Coins_ from mobs and chests on the Timeless Isle.
confirm
step
kill Brilliant Windfeather##72762+, Windfeather Chick##71143+, Ironfur Herdling##72842+, Ironfur Grazer##72843+
earn 2500 Timeless Coin##777 |goto Timeless Isle/0 31.00,50.50
step
talk Speaker Gulan##73307
buy 1 Censer of Eternal Agony##102467 |goto Timeless Isle/0 74.90,44.90
step
Use the _Censer of Eternal Agony_ in your bags |use Censer of Eternal Agony##102467
achieve 8716
step
Congratulations, you have obtained the _Emissary of Ordos_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Player vs. Player\\The Timeless Isle\\Kilnmaster",{
achieveid={8720},
patch='50400',
description="This guide will instruct you on how to get the Kilnmaster Achievement, which takes place in the Timeless Isle.",
},[[
step
Be warned that this mount may require that you do some PVP combat.
|confirm
step
In order to earn this mount you will need to acquire the _Censer of Eternal Agony_, which costs 2500 _Timeless Coin_ to obtain.
There are several caches found throughout the entire isle.
Each enemy drops between 1 and 80 Timeless Coins.
earn 2500 Timeless Coin##777
step
talk Speaker Gulan##73307
buy Censer of Eternal Agony##102467 |goto Timeless Isle 74.90,44.90
step
Note that using this will sacrifice your health by 90%, however this buff is needed to earn Bloody Coins.
You will be hostile with _BOTH_ factions once you activate this item.
Use your Censer of Eternal Agony. |use Censer of Eternal Agony##102467
Kiling players will net you _Bloody Coins_.
earn 1000 Bloody Coin##789
You could get more than one _Bloody Coin_ per kill.
|achieve 8720
step
Congratulations, you have earned the _Kilnmaster_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Ironpaw Chef",{
condition_end=function() return achieved(7328) end,
achieveid={1795,1796,1797,1798,1799,5471,7328},
patch='50004',
description="This guide will show you how to learn 240 cooking recipes.",
},[[
step
There are 47 Recipes here to help complete your Ironpaw Chef Achievement.
|confirm
If you need the previous 200 Recipes, click here to load the Iron Chef Guide |confirm |next "Achievement Guides\\Professions\\Cooking\\Iron Chef"
step
#include "trainer_Cooking_MoP"
learn Perfectly Cooked Instant Noodles##125067
learn Toasted Fish Jerky##124225
learn Pounded Rice Cake##124223
learn Yak Cheese Curds##124224
learn Dried Peaches##124226
learn Boiled Silkworm Pupa##124228
learn Roasted Barley Tea##125078
learn Blanched Needle Mushrooms##124233
learn Red Bean Bun##124229
learn Skewered Peanut Chicken##124234
learn Green Curry Fish##124231
learn Peach Pie##124232
learn Tangy Yogurt##124230
learn Pearl Milk Tea##125080
learn Wildfowl Ginseng Soup##125121
learn Rice Pudding##125122
step
talk Nat Pagle##63721
buy Recipe: Krasarang Fritters##85505 |n |goto Krasarang Wilds 68.40,43.40
buy Recipe: Viseclaw Soup##85502 |n |goto Krasarang Wilds 68.40,43.40
learn Krasarang Fritters##124032 |use Recipe: Krasarang Fritters##85505 |goto Krasarang Wilds 68.40,43.40
learn Viseclaw Soup##124029 |use Recipe: Viseclaw Soup##85502 |goto Krasarang Wilds 68.40,43.40
step
talk Kol Ironpaw##58712
learn Charbroiled Tiger Steak##104298 |goto Valley of the Four Winds 53.00,51.40
learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds 53.00,51.40
learn Banquet of the Grill##125141 |goto Valley of the Four Winds 53.00,51.40
learn Great Banquet of the Grill##125142 |goto Valley of the Four Winds 53.00,51.40
learn Black Pepper Ribs and Shrimp##104300 |goto Valley of the Four Winds 53.00,51.40
step
talk Bobo Ironpaw##58717
learn Ginseng Tea##124052 |goto Valley of the Four Winds/0 53.20,52.20
learn Jade Witch Brew##124053 |goto Valley of the Four Winds/0 53.20,52.20
learn Banquet of the Brew##125602 |goto Valley of the Four Winds/0 53.20,52.20
learn Great Banquet of the Brew##125603 |goto Valley of the Four Winds/0 53.20,52.20
step
talk Anthea Ironpaw##58713
learn Sauteed Carrots##104301 |goto Valley of the Four Winds/0 52.70,52.00
learn Valley Stir Fry##104302 |goto Valley of the Four Winds/0 52.70,52.00
learn Banquet of the Wok##125594 |goto Valley of the Four Winds/0 52.70,52.00
learn Great Banquet of the Wok##125595 |goto Valley of the Four Winds/0 52.70,52.00
step
talk Yan Ironpaw##58715
learn Shrimp Dumplings##104307 |goto Valley of the Four Winds/0 52.50,51.70
learn Fire Spirit Salmon##104308 |goto Valley of the Four Winds/0 52.50,51.70
learn Banquet of the Steamer##125598 |goto Valley of the Four Winds/0 52.50,51.70
learn Great Banquet of the Steamer##125599 |goto Valley of the Four Winds/0 52.50,51.70
step
talk Mei Mei Ironpaw##58714
learn Braised Turtle##104305 |goto Valley of the Four Winds/0 52.60,51.50
learn Swirling Mist Soup##104304 |goto Valley of the Four Winds/0 52.60,51.50
learn Banquet of the Pot##125596 |goto Valley of the Four Winds/0 52.60,51.50
learn Great Banquet of the Pot##125597 |goto Valley of the Four Winds/0 52.60,51.50
step
talk Jian Ironpaw##58716
learn Wildfowl Roast##104310 |goto Valley of the Four Winds/0 53.30,51.80
learn Twin Fish Platter##104311 |goto Valley of the Four Winds/0 53.30,51.80
learn Banquet of the Oven##125600 |goto Valley of the Four Winds/0 53.30,51.80
learn Great Banquet of the Oven##125601 |goto Valley of the Four Winds/0 53.30,51.80
learn Chun Tian Spring Rolls##104312 |goto Valley of the Four Winds/0 53.30,51.80
step
click Barrel of Banana Infused Rum##214439
collect Recipe: Banana Infused Rum##87266 |n |goto Krasarang Wilds 52.30,88.70
learn Banana Infused Rum##126655 |use Recipe: Banana Infused Rum##87266 |goto Krasarang Wilds 52.30,88.70
step
click Tablet of Ren Yun##213843
collect Tablet of Ren Yun##86393 |n |goto Kun-Lai Summit 44.70,52.30
learn Four Senses Brew##126654 |goto Kun-Lai Summit 44.70,52.30
step
talk Gina Mudclaw##58706
buy Recipe: Spicy Salmon##74657 |n |goto Valley of the Four Winds 53.20,51.60
buy Recipe: Spicy Vegetable Chips##74658 |n |goto Valley of the Four Winds 53.20,51.60
learn Spicy Salmon##125120 |goto Valley of the Four Winds 53.20,51.60
learn Spicy Vegetable Chips##125123 |use Recipe: Spicy Vegetable Chips##74658 |goto Valley of the Four Winds 53.20,51.60
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Master of the Brew",{
achieveid={7305},
patch='50004',
keywords={"Cooking","Master","of","the","Brew"},
description="This guide will walk you through completing the \"Master of the Brew\" Achievement.",
},[[
step
For this achievement, you will need to reach level 75 Way of the Brew cooking on a single character
Click here to load the Way of the Brew guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Brew 1-75"
Earn the Master of the Brew Achievement |achieve 7305
step
_Congratulations!_
You have earned the _Master of the Brew_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Master of the Grill",{
achieveid={7300},
patch='50004',
keywords={"Cooking","Master","of","the","Grill"},
description="This guide will walk you through completing the \"Master of the Grill\" Achievement.",
},[[
step
For this achievement, you will need to reach level 75 Way of the Grill cooking on a single character
Click here to load the Way of the Grill guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Grill 1-75"
Earn the Master of the Grill Achievement |achieve 7300
step
_Congratulations!_
You have earned the _Master of the Grill_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Master of the Oven",{
achieveid={7304},
patch='50004',
keywords={"Cooking","Master","of","the","Oven"},
description="This guide will walk you through completing the \"Master of the Oven\" Achievement.",
},[[
step
For this achievement, you will need to reach level 75 Way of the Oven cooking on a single character
Click here to load the Way of the Oven guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Oven 1-75"
Earn the Master of the Oven Achievement |achieve 7304
step
_Congratulations!_
You have earned the _Master of the Oven_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Master of Pandaren Cooking",{
achieveid={7306},
patch='50004',
description="This guide will walk you through becoming the Master of Pandaren Cooking.",
},[[
step
In order to earn this achievement, you will have to level your cooking skill.
This achievement requires that you are leveled in all ways of Pandaren Cooking.
|confirm |next "mopc"
step
label "mopc"
|next "520_up" |only if skill("Cooking")>525
|next "520_down" |only if skill("Cooking")<525
step
label "520_down"
#include "Pandarian_Cooking_1-520"
step
label "520_up"
#include "Cooking_PreMasteries"
#include "Cooking_520-600"
step
|next "520_up" |only if not achieved(7306)
|next "end" |only if achieved(7306)
step
label "end"
Earn the Master of Pandaren Cooking achievement |achieve 7306
step
Congratulations, you have earned the Master of Pandaren Cooking Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Master of the Pot",{
achieveid={7302},
patch='50004',
keywords={"Cooking","Master","of","the","Pot"},
description="This guide will walk you through completing the \"Master of the Pot\" Achievement.",
},[[
step
For this achievement, you will need to reach level 75 Way of the Pot cooking on a single character
Click here to load the Way of the Pot guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Pot 1-75"
Earn the Master of the Pot Achievement |achieve 7302
step
_Congratulations!_
You have earned the _Master of the Pot_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Master of the Steamer",{
achieveid={7303},
patch='50004',
keywords={"Cooking","Master","of","the","Steamer"},
description="This guide will walk you through completing the \"Master of the Steamer\" Achievement.",
},[[
step
For this achievement, you will need to reach level 75 Way of the Steamer cooking on a single character
Click here to load the Way of the Steamer guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Steamer 1-75"
Earn the Master of the Steamer Achievement |achieve 7303
step
_Congratulations!_
You have earned the _Master of the Steamer_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Master of the Wok",{
achieveid={7301},
patch='50004',
keywords={"Cooking","Master","of","the","Wok"},
description="This guide will walk you through completing the \"Master of the Wok\" Achievement.",
},[[
step
For this achievement, you will need to reach level 75 Way of the Wok cooking on a single character
Click here to load the Way of the Wok guide |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Wok 1-75"
Earn the Master of the Wok Achievement |achieve 7301
step
_Congratulations!_
You have earned the _Master of the Wok_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Now I Am the Master",{
achieveid={7325},
patch='50004',
description="This guide will walk you through the achievement Now I Am the Master.",
},[[
step
For this achievement, you will need to complete the Master of Pandaren Cooking achievement.
|complete completedq(31521) |next "daily" |only if completedq(31521)
|complete not completedq(31521) |next "cooking" |only if not completedq(31521)
step
label "cooking"
You will need to level your cooking to 600 with each of the 6 styles that have been introduced in Mists of Pandaria.
confirm
step
Proceed to the 520-600 Cooking guide. |next "520_up" |only if skill("Cooking")>525
Proceed to the 1-520 Cooking guide. |next "520_down" |only if skill("Cooking")<525
step
label "520_down"
#include "Pandarian_Cooking_1-520"
step
label "520_up"
#include "Cooking_PreMasteries"
#include "Cooking_520-600"
step
|next "520_up" |only if not achieved(7306)
|next "daily" |only if completedq(31521)
step
label "daily"
You will need to complete daily quests and collect _50 Ironpaw Tokens_.
earn 50 Ironpaw Token##402 |next "school_bell"
|complete default |next "dailyq"
step
label "dailyq"
#include "MoP_Cooking_Dailies"
step
You have reached the end of the cooking dailies guide for today.
confirm |complete curcount(402)>=50  |next "school_bell" |only if curcount(402)>=100
confirm |complete curcount(402)<=50 |next "dailyq" |only if curcount(402)<=100
step
label "school_bell"
talk Nam Ironpaw##64395
buy 1 Cooking School Bell##86425 |complete itemcount(86425) >= 1 |goto Valley of the Four Winds 53.50,51.30
step
label "nomi"
#include "Nomi_Dailies"
step
You have reached the end of the dailies for today. |only if not achieved(7306)
Click here to go back to the beginning of the dailies. |confirm |next "nomi" |only if not achieved(7306)
Congratulations, you have achieved the _Now I Am the Master_ achievement! |only if achieved(7306)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\The Pandaren Gourmet",{
achieveid={7326},
patch='50004',
description="This guide will walk you through the Pandaren Gourmet achievement. This guide consists of 2 achievements.",
},[[
step
For this achievement, you will have to create 30 brand new foods introduced with the Mists of Pandaria. It is recommended that you are already level 75 in Pandaria cooking.
|confirm
step
label "create"
You will need to farm _Ironpaw Tokens_ to trade for most of these items.
The NPC to purchase all of these items is _Nam Ironpaw_ in Valley of the Four Winds.
|confirm
step
He sells Green Cabbage, Jade Squash, Juciycrunch Carrots, Mogu Pumpkin, Pink Turnips, Red Blossom Leeks, Striped Melons, White Turnips and Witchberries in stacks of 25 per 1 Ironpaw Token.
The Rest of the materials, excluding Black Pepper, Ginseng, Rice, Rice Flour, Scallions and Yak Milk, he sells in stacks of 5 per 1 Ironpaw Token.
|confirm
step
label "token_start"
You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
You can farm any cooking ingredient and turn it into _Bundle of Groceries_
|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice
For a good location to farm vegetables for tokens, click here |confirm |next "farm_veggie"
Or
For a good location to farm meat for tokens, click here |confirm |next "farm_meat"
Or
If you have ingredients to turn in for tokens, click here |confirm |next "token_end"
Or
Click here to turn in _Spirit of Harmony's_ for Cooking Tokens. |confirm |next "spirit"
step
label "spirit"
talk Danky##66685
buy Ironpaw Token##402+ |n |goto Vale of Eternal Blossoms 61.70,21.70
You have _{curcount(402)} Tokens_
You need _{_G.ceil(_G.max(0,  ((15-itemcount(74839))/37)-curcount(402)))} Tokens_ to buy the ingredients you need.
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next "buy"
step
label "farm_veggie"
kill Slingtail Treeleaper##61562+
These won't give you all vegetables, but you can gain a lot of Striped Melon and Jade Squash to turn in for tokens.
You will need 100 of a vegetable to turn in for one token
You have enough Squash to turn in for _{_G.floor(_G.max(0, itemcount(74847)/20))} Tokens_
You have enough Melon to turn in for _{_G.floor(_G.max(0, itemcount(74848)/20))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
collect Jade Squash##74847 |n |goto The Jade Forest 53.90,81.40
collect Striped Melon##74848 |n |goto The Jade Forest 53.90,81.40
|confirm |next "token_end"
step
label "farm_meat"
kill Coldbite Crocolisk##62023
You will need stacks of 20 meat to turn in for one token
You have enough meat to turn in for _{_G.floor(_G.max(0, (itemcount(75014)/20)))} Tokens_
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
collect Raw Crocolisk Belly##75014 |n |goto Dread Wastes 65.60,58.20
|confirm |next "token_end"
step
label "token_end"
talk Merchant Cheng##64940 |goto Valley of the Four Winds 53.00,52.40
Buy Empty containers and fill with any ingredients you have.
Once you are ready to turn in for tokens, click here |confirm |next "repeat"
step
label "repeat"
talk Nam Ironpaw##64395
accept Replenishing the Pantry##31535 |repeatable |goto Valley of the Four Winds 53.50,51.20
step
talk Nam Ironpaw##64395
turnin Replenishing the Pantry##31535 |repeatable |next "repeat" |goto Valley of the Four Winds 53.50,51.20
|next |only if default
step
label "buy"
talk Sungshin Ironpaw##64231
buy 2 Ginseng##74845 |complete itemcount(74845) >= 2 |goto Valley of the Four Winds 53.60,51.20
buy 3 Rice##74851 |complete itemcount(74851) >= 3 |goto Valley of the Four Winds 53.60,51.20
buy 5 Yak Milk##74852 |complete itemcount(74852) >= 5 |goto Valley of the Four Winds 53.60,51.20
buy 1 Barley##74832 |complete itemcount(74832) >= 1 |goto Valley of the Four Winds 53.60,51.20
buy 1 Farm Chicken##74659 |complete itemcount(74659) >= 1 |goto Valley of the Four Winds 53.60,51.20
buy 1 Instant Noodles##74854 |complete itemcount(74854) >= 1 |goto Valley of the Four Winds 53.60,51.20
buy 3 Needle Mushrooms##85583 |complete itemcount(85583) >= 3 |goto Valley of the Four Winds 53.60,51.20
buy 5 Pandaren Peach##74660 |complete itemcount(74660) >= 5 |goto Valley of the Four Winds 53.60,51.20
buy 1 Red Beans##85585 |complete itemcount(85585) >= 1 |goto Valley of the Four Winds 53.60,51.20
buy 1 Silkworm Pupa##85584 |complete itemcount(85584) >= 1 |goto Valley of the Four Winds 53.60,51.20
step
talk Nam Ironpaw##64395
buy 2 Black Pepper##74661 |complete itemcount(74661) >= 2 |goto Valley of the Four Winds 53.50,51.20
buy 2 Rice Flour##74662 |complete itemcount(74662) >= 2 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Jade Squash##87713 |complete itemcount(87713) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Juicycrunch Carrots##87707 |complete itemcount(87707) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 2 Sack of Pink Turnips##87715 |complete itemcount(87715) >= 2 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Striped Melon##74848 |complete itemcount(74848) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Witchberries##87712 |complete itemcount(87712) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Raw Tiger Steaks##87701 |complete itemcount(87701) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Wildfowl Breasts##87705 |complete itemcount(87705) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Jade Lungfish##87721 |complete itemcount(87721) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Giant Mantis Shrimp##87722 |complete itemcount(87722) >= 1 |goto Valley of the Four Winds 53.50,51.20
buy 2 Sack of Golden Carp##87729 |complete itemcount(87729) >= 2 |goto Valley of the Four Winds 53.50,51.20
buy 1 Sack of Reef Octopus##87727 |complete itemcount(87727) >= 1 |goto Valley of the Four Winds 53.50,51.20
step
label "create"
create 1 Blanched Needle Mushrooms##124233,Cooking,1 total
achieve 7327/15
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Boiled Silkworm Pupa##124228,Cooking,1 total
achieve 7327/10
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Dried Needle Mushrooms##124227,Cooking,1 total
achieve 7327/6
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Dried Peaches##124226,Cooking,1 total
achieve 7327/9
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Green Curry Fish##124231,Cooking,1 total
achieve 7327/14
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Peach Pie##124232,Cooking,1 total
achieve 7327/18
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Pearl Milk Tea##125080,Cooking,1 total
achieve 7327/20
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Perfectly Cooked Instant Noodles##125067,Cooking,1 total
achieve 7327/4
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Pounded Rice Cake##124223,Cooking,1 total
achieve 7327/7
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Red Bean Bun##124229,Cooking,1 total
achieve 7327/16
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Roasted Barley Tea##125078,Cooking,1 total
achieve 7327/11
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Skewered Peanut Chicken##124234,Cooking,1 total
achieve 7327/19
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Sliced Peaches##125117,Cooking,1 total
achieve 7327/1
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Tangy Yogurt##124230,Cooking,1 total
achieve 7327/17
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Toasted Fish Jerky##124225,Cooking,1 total
achieve 7327/5
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create Yak Cheese Curds##124224,Cooking,1 total
achieve 7327/8
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Fish Cake##104297,Cooking,1 total
achieve 7327/13
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Golden Carp Consomme##104237,Cooking,1 total
achieve 7327/12
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Rice Pudding##125122,Cooking,1 total
achieve 7327/21
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Wildfowl Ginseng Soup##125121,Cooking,1 total
achieve 7327/22
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Ginseng Tea##124052,Cooking,1 total
achieve 7327/28
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create	1 Jade Witch Brew##124053,Cooking,1 total
achieve 7327/29
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Mad Brewer's Breakfast##124054,Cooking,1 total
achieve 7327/30
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Charbroiled Tiger Steak##104298,Cooking,1 total
achieve 7327/40
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Eternal Blossom Fish##104299,Cooking,1 total
achieve 7327/41
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Wildfowl Roast##104310,Cooking,1 total
achieve 7327/37
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Swirling Mist Soup##104304,Cooking,1 total
achieve 7327/31
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Shrimp Dumplings##104307,Cooking,1 total
achieve 7327/34
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Sauteed Carrots##104301,Cooking,1 total
achieve 7327/25
|next "end" |only if achieved(7327)
|next |only if not achieved(7327)
step
create 1 Valley Stir Fry##104302,Cooking,1 total
achieve 7327/26
|next "end"
step
label "end"
Congratulations, you have achieved the _Pandaren Gourmet_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Fishing\\The Pandarian Angler",{
achieveid={7611},
patch='50004',
description="This guide will walk you through The Pandarian Angler",
},[[
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here.  |cast Fishing##131474
collect 1 Golden Carp##74866 |achieve 7611/4 |goto Krasarang Wilds 37.40,35.20
collect 1 Emperor Salmon##74859 |achieve 7611/1 |goto Krasarang Wilds 37.40,35.20
step
map Krasarang Wilds
path loose; loop; curved
path	37.40,35.20	42.90,38.70	43.40,46.00
path	38.00,42.30	34.10,38.40	30.30,33.80
Follow this river and use your fishing ability to catch Krasarang Paddlefish
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the fishing schools you find |cast Fishing##131474
collect 1 Krasarang Paddlefish##74865 |achieve 7611/7
collect 1 Flying Tiger Gourami##86542 |achieve 7611/2
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here.  |cast Fishing##131474
You can find schools of fish all along the beach.
collect 1 Giant Mantis Shrimp##74857 |goto Krasarang Wilds 46.80,58.10
|tip Fish in the Giant Mantis Shrimp Schools to catch this.
collect 1 Reef Octopus##74864 |goto Krasarang Wilds 46.80,58.10
|tip You do not have to fish in schools to catch this.
collect 1 Mimic Octopus##86545 |goto Krasarang Wilds 46.80,58.10
|tip You do not have to fish in schools to catch this.
step
Fish in the little streams in this area.
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here.  |cast Fishing##131474
collect Redbelly Mandarin##74860 |goto The Jade Forest/0 55.80,71.50
|tip Fish outside the schools of fish to catch this.
collect Jade Lungfish##74856 |goto The Jade Forest/0 55.80,71.50
|tip Fish in the Jade Lungfish Schools to catch this.
step
Fish along the river in this cave.
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here.  |cast Fishing##131474
collect Tiger Gourami##74861 |goto The Veiled Stair/5 45.50,46.80
|tip Fish in the Tiger Gourami Schools to catch this.
collect Flying Tiger Gourami##86542 |tip Fish in the Tiger Gourami Schools to catch this.
step
You will find lots of Spinefish Schools around this area.
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here.  |cast Fishing##131474
collect Spinefish##83064 |goto Kun-Lai Summit/0 73.00,84.90
|tip Fish in the Sha-Touched Spinefish Schools to catch this.
collect Spinefish Alpha##86544 |goto Kun-Lai Summit/0 73.00,84.90
|tip Fish in the Sha-Touched Spinefish Schools to catch this.
step
You can find Jewel Fish in any body of water here.
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here.  |cast Fishing##131474
collect Jewel Danio##74863 |goto Vale of Eternal Blossoms/0 20.30,17.60
|tip Fish in the Jewel Danio Schools to catch this.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\A Taste of History",{
achieveid={7318},
patch='50004',
description="This guide will walk you through completing the \"A Taste of History\" achievement.",
},[[
step
label "start"
For this, you will need to kill mobs in Guo-Lai Halls for _"Ancient Guo-Lai Cache Key"_
collect Ancient Guo-Lai Cache Key##87779 |n
Click here to continue |confirm
step
Enter the tomb |goto Vale of Eternal Blossoms/0 22.44,26.89
click Ancient Guo-Lai Cache##221243
Find a Guo-Lai Vault Key and open an Ancient Guo-Lai Cache |achieve 7318 |goto Vale of Eternal Blossoms/1 65,72
Click here if there is no cache at this spot |confirm
|tip Make sure you FULLY LOOT the Cache for credit.
step
click Ancient Guo-Lai Cache##221243
Find a Guo-Lai Vault Key and open an Ancient Guo-Lai Cache |achieve 7318 |goto Vale of Eternal Blossoms/1 54,17
Click here if there is no cache at this spot |confirm
|tip Make sure you FULLY LOOT the Cache for credit.
step
click Ancient Guo-Lai Cache##221243
Find a Guo-Lai Vault Key and open an Ancient Guo-Lai Cache |achieve 7318 |goto Vale of Eternal Blossoms/1 59,13
Click here if there is no cache at this spot |confirm
|tip Make sure you FULLY LOOT the Cache for credit.
step
click Ancient Guo-Lai Cache##221243
Find a Guo-Lai Vault Key and open an Ancient Guo-Lai Cache |achieve 7318 |goto Vale of Eternal Blossoms/1 58,6
Click here if there is no cache at this spot |confirm
|tip Make sure you FULLY LOOT the Cache for credit.
step
click Ancient Guo-Lai Cache##221243
Find a Guo-Lai Vault Key and open an Ancient Guo-Lai Cache |achieve 7318 |goto Vale of Eternal Blossoms/1 71,27
Click here if there is no cache at this spot |confirm
|tip Make sure you FULLY LOOT the Cache for credit.
step
click Ancient Guo-Lai Cache##221243
Find a Guo-Lai Vault Key and open an Ancient Guo-Lai Cache |achieve 7318 |goto Vale of Eternal Blossoms/1 50,62
Click here if there is no cache at this spot |confirm
|tip Make sure you FULLY LOOT the Cache for credit.
step
Earn the _"A Taste of History"_ Achievement|achieve 7318
Click here to go back to the start if you haven't earned the achievement yet |confirm |next "start"
step
_Congratulations!_
You have earned the _Rally the Valley_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\A Taste of Things to Come",{
achieveid={7294},
patch='50004',
description="Successfully harvest your first special crop",
},[[
step
In order to earn this achievement, you will need to be revered with the Tillers faction.
confirm
step
Routing to proper section |next "preq" |only if rep('The Tillers')<Revered and not completedq(30257)
Routing to proper section |next "revered" |only if rep('The Tillers')<Revered and completedq(30257)
Routing to proper section |next "garden" |only if rep('The Tillers')>=Revered
step
label "preq"
#include "Tillers_Quests"
step
label "revered"
Once the prequests are completed, refer to our Tillers daily guide to work your reputation up to _Revered_.
Click here to go to the Reputations guide to gain reputation with _The Tillers_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Tillers_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies" |only if ZGV.guidesets['DailiesHMOP']
You will need to continue through the dailies with _The Tillers_ to get your reputation to _Revered_. |only if default
confirm |next |only if default
step
label "garden"
talk Merchant Greenfield##58718
buy Enigma Seed##85216 |complete itemcount(85216) >= 1 |or |goto Valley of the Four Winds 52.80,52.00
buy Magebulb Seed##85217 |complete itemcount(85217) >= 1 |or |goto Valley of the Four Winds 52.80,52.00
buy Raptorleaf Seed##89202 |complete itemcount(89202) >= 1 |or |goto Valley of the Four Winds 52.80,52.00
buy Snakeroot Seed##85215 |complete itemcount(85215) >= 1 |or |goto Valley of the Four Winds 52.80,52.00
buy Songbell Seed##89233 |complete itemcount(89233) >= 1 |or |goto Valley of the Four Winds 52.80,52.00
buy Windshear Cactus Seed##89197 |complete itemcount(89197) >= 1 |or |goto Valley of the Four Winds 52.80,52.00
step
clicknpc Untilled Soil##58562
Use whatever seed you bought and plant it in the _Tilled Soil_. |use
Plant an Enigma Seed |use Enigma Seed##85216 |or |goto Valley of the Four Winds 52.00,48.40
Plant a Magebulb Seed |use Magebulb Seed##85217 |or |goto Valley of the Four Winds 52.00,48.40
Plant a Raptorleaf Seed |use Raptorleaf Seed##89202 |or |goto Valley of the Four Winds 52.00,48.40
Plant a Snakeroot Seed |use Snakeroot Seed##85215 |or |goto Valley of the Four Winds 52.00,48.40
Plant a Songbell Seed |use Songbell Seed##89233 |or |goto Valley of the Four Winds 52.00,48.40
step
Wait a day and harvest whatever you planted.
achieve 7294
step
Congratulations, you have earned the _A Taste of Things to Come_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Ain't Lost No More",{
achieveid={7296},
patch='50004',
description="This guide will walk you through obtaining the Ain't Lost No More Achievement.",
},[[
step
For this achievement you must be _Exalted_ with _The Tillers_, and _Best Friends_ with all of the _Tillers NPCs_.
|confirm |next "route" |only if rep('The Tillers')<Exalted
|confirm |next "done" |only if rep('The Tillers')==Exalted
step
label "route"
Routing to proper section |next "prequests" |only if not completedq(30257)
Routing to proper section |next "route2" |only if completedq(30257)
step
label "prequests"
#include "Tillers_Quests"
|next "route2"
step
label "route2"
Routing to proper section |next "clickroute" |only if ZGV.guidesets['ReputationsHMOP'] or ZGV.guidesets['DailiesHMOP']
Routing to proper section |next "done" |only if default
step
label "clickroute"
Click here to be taken to the Reputation guide to help you become _Exalted_ with _The Tillers_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies" |only if ZGV.guidesets['DailiesHMOP']
Click here to be taken to the Dailies guide to help you become _Exalted_ with _The Tillers_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
step
label "done"
kill Enormous Cattail Grouper
|tip These mobs will only give you the drop if you are Exalted with the Tillers and Best Friends with the Tillers NPCs.
collect 1 Old Map##86404 |goto Valley of the Four Winds 44.60,29.00
step
Click the _Old Map_ in your bags. |use Old Map##86404
accept The Old Map##31312
step
talk Fish Fellreed##58705
turnin The Old Map##31312 |goto Valley of the Four Winds 41.60,30.00
accept Just a Folk Story##31313 |goto Valley of the Four Winds 41.60,30.00
step
talk Grainsorter Pei##64312
Speak to Grainsorter Pei |q 31313/1 |goto Valley of the Four Winds 54.20,44.40
step
talk Stonecarver Mac##64315
Speak to Stonecarver Mac |q 31313/2 |goto Valley of the Four Winds 55.20,47.40
step
talk Mama Min##64313
Speak to Mama Min |q 31313/3 |goto Valley of the Four Winds 56.20,45.20
step
talk Old Man Whitewhiskers##64327
Speak to Old Man Whitewhiskers |q 31313/4 |goto Valley of the Four Winds 54.60,47.00
step
talk Fish Fellreed##58705
turnin Just a Folk Story##31313 |goto Valley of the Four Winds 41.60,30.00
accept Old Man Thistle's Treasure##31314 |goto Valley of the Four Winds 41.60,30.00
step
Enter the cave here |goto Valley of the Four Winds 37.40,24.20 |walk
click Hidden Treasure##213767
turnin Old Man Thistle's Treasure##31314 |goto Valley of the Four Winds 34.90,19.20
accept The Heartland Legacy##31315 |goto Valley of the Four Winds 34.90,19.20
step
The cave entrance becomes blocked after you accept _The Heartland Legacy_. You will have to use your hearthstone or teleport to continue.
|confirm
step
talk Seedkeeper Shing Sing##64314
turnin The Heartland Legacy##31315 |goto Valley of the Four Winds 53.80,47.40
|achieve 7296
step
Congratulations, you have earned the Ain't Lost No More achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Amber is the Color of My Energy",{
achieveid={7312},
patch='50004',
description="This guide will walk you through obtaining the Amber is the Color of My Energy Achievement.",
},[[
step
For this achievement you must be at least _Revered_ with _The Klaxxi_ and completed all of the Dread Wastes Leveling/Loremaster quests.
Click here to go to the Reputations guide to gain reputation with _The Klaxxi_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Klaxxi_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies" |only if ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
|only if rep("The Klaxxi")<Revered
step
talk Kil'ruk the Wind-Reaver##62202
accept The Klaxxi Council##31006 |goto Dread Wastes 70.20,25.70
|only if not completedq(31006)
step
talk Kil'ruk the Wind-Reaver##62413
Tell him to take you to Klaxxi'vess
Travel to Klaxxi Hub |q 31006/1 |goto Dread Wastes 70.20,25.70
|only if not completedq(31006)
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Klaxxi Council##31006 |goto Dread Wastes 55.00,34.00
|achieve 7312/1
step
talk Kor'ik##64815
accept Dead Zone##31009 |goto Dread Wastes 54.80,34.10
|only if not completedq(31010)
step
talk Kil'ruk the Wind-Reaver##62538 |goto Dread Wastes 55.00,34.00
Ask him to fly you to the Clutches of Shek'zeer. |goto Dread Wastes 39.00,40.50 <5 |noway |c
|only if not completedq(31010)
step
Use the Klaxxi Resonating Crystal on the Inactive Sonic Relay. |use Klaxxi Resonating Crystal##83276
Sonic Relay activated |q 31009/1 |goto Dread Wastes 40.00,39.00
|only if not completedq(31010)
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Dead Zone##31009
accept In Her Clutch##31010
|only if not completedq(31010)
step
click Ancient Amber Chunk##212980
Hold off the swarm while Malik awakens.
Paragon Wakened |q 31010/1 |goto Dread Wastes 44.90,41.50
|only if not completedq(31010)
step
talk Malik the Unscathed##62774
turnin In Her Clutch##31010 |goto Dread Wastes 55.00,34.10
|achieve 7312/2
step
talk Lya of Ten Songs##62667
accept Fires and Fears of Old##31085 |goto Dread Wastes 38.30,17.10
|only if not completedq(31085)
step
click Enormous Landslide |goto Dread Wastes 30.00,31.10
Enter the building once the landslide is gone. |goto Dread Wastes 30.20,31.70 <8 |noway |c
|only if not completedq(31010)
step
Use the Ruining Fork in your bags |use Ruining Fork##84771
Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1 |goto Dread Wastes 32.40,33.70
kill Adjunct G'kkal##63103, Adjunct Okzyk##63102, Adjunct Pivvika##63104
Protect Iyyokuk the Lucid until he escapes |q 31085/2 |goto Dread Wastes 32.40,33.70
|only if not completedq(31010)
step
Leave the building. |goto Dread Wastes 30.50,32.00 < 5 |c
|only if not completedq(31010)
step
talk Lya of Ten Songs##62667
turnin Fires and Fears of Old##31085 |goto Dread Wastes 50.30,12.10
|achieve 7312/3
step
click Glowing Amber##214062
accept Falling to Pieces##31398 |goto Dread Wastes 41.90,63.70
|only if not completedq(31398)
step
talk Kaz'tik the Manipulator##63758
turnin Falling to Pieces##31398 |goto Dread Wastes 54.40,35.60
|achieve 7312/4
step
Next to you:
talk Korven the Prime##62232
accept The Root of the Problem##31026
|only if not completedq(31026)
step
Enter the tunnel here. |goto Dread Wastes 58.70,59.50 <5 |c
|only if not completedq(31026)
step
kill Coldbite Matriarch##62008 |q 31026/1 |goto Dread Wastes 57.30,57.80
|only if not completedq(31026)
step
Next to you:
talk Korven the Prime##62232
turnin The Root of the Problem##31026
|achieve 7312/5
step
talk Deck Boss Arie##63349
accept Mazu's Bounty##31354 |goto Dread Wastes 56.60,75.80
|only if not completedq(31354)
step
talk Master Angler Ju Lien##64259
turnin Mazu's Bounty##31354 |goto Dread Wastes 54.90,72.80
|achieve 7312/6
step
talk Skeer the Bloodseeker##63071
accept The Scent of Blood##31179 |goto Dread Wastes 25.70,50.30
|only if not completedq(31179)
step
Fight off the waves of Muckscale.
kill 12 Muckscale Flesheater##63465+ |q 31179/1 |goto Dread Wastes 25.70,50.30
kill Muckscale Serpentus##63466 |q 31179/2 |goto Dread Wastes 25.70,50.30
|only if not completedq(31179)
step
Leave the cave |goto Dread Wastes 25.70,53.90 < 5 |c
|only if not completedq(31179)
step
talk Rik'kal the Dissector##65253
accept The Dissector Wakens##31606 |goto Dread Wastes 31.80,88.90
|only if not completedq(31606)
step
Kill the Zan'thik while Rik'kal recovers.
kill Zan'thik Impaler##65273+, Zan'thik Manipulator##65274+
Paragon Wakened |q 31606/1
|only if not completedq(31606)
step
talk Rik'kal the Dissector##65253
turnin The Dissector Wakens##31606 |goto Dread Wastes 31.80,88.90
|achieve 7312/7
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Scent of Blood##31179 |goto Dread Wastes 55.00,35.90
|achieve 7312/8
step
talk Xaril the Poisoned Mind##62151
accept The Poisoned Mind##31211 |goto Dread Wastes 28.60,42.10
|only if not completedq(31211)
step
talk Xaril the Poisoned Mind##62151
Tell him:
<I am ready to fly, Xaril.> |invehicle |q 31211 |goto Dread Wastes 28.60,42.10
|only if not completedq(31211)
step
Use the _Venom Syrum_ to kill the small enemies.
Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies.
Speak to Xaril the Poisoned Mind |q 31211/1
kill 200 Mantid |q 31211/2
kill 3 Kunchong |q 31211/3
|only if not completedq(31211)
step
talk Xaril the Poisoned Mind##62151
turnin The Poisoned Mind##31211 |goto Dread Wastes 54.90,36.20
|achieve 7312/10
step
talk Kor'ik##64815
accept Dropping Our Signal##31439 |goto Dread Wastes 54.80,34.10
|only if not completedq(31439)
step
Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
Awaken Hisek the Swarmkeeper |q 31439/1 |goto Dread Wastes 56.30,58.20
|only if not completedq(31439)
step
talk Hisek the Swarmkeeper##64672
turnin Dropping Our Signal##31439 |goto Dread Wastes 56.30,58.20
|achieve 7312/9
step
Congratulations, you have earned the _Amber is the Color of My Energy_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Blue Response",{
achieveid={8112},
patch='50200',
description="Scare away the rare blue Hatchling Sycreamer",
},[[
step
Run next to Hatchlings to scare them away until you find the rare blue one.
|tip It spawns in random locations along this cliff, so some searching may be necessary.
Run over the Blue Hatchling to scare it away. |achieve 8112 |goto Isle of Thunder/0 30.90,76.60
step
Congratulations, you have obtained the Blue Response achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Boop",{
achieveid={8118},
patch='50200',
description="Knock a Zandalari Beastcaller from his flying mount",
},[[
step
For this achievement, you will need to attack a _Zandalari Beastcaller_ while he is riding on his flying mount in order to knock him off.
If you attack his flying mount first, it will not count for this achievement.
|confirm
step
kill Zandalari Beastcaller##69379+ |goto Isle of Thunder/0 32.60,80.70
|achieve 8118
step
Congratulations, you have obtained the _Boop_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Champion of Chi-Ji",{
achieveid={7287},
patch='50004',
description="Defeat every challenger at the cradle of Chi-ji.",
},[[
step
label "startaug"
This achievement requires you to defeat every challenger at the _Cradle of Chi-Ji_.
In order to obtain this, you must complete the August Celestials dailies every time they are offered by Chi-Ji.
|tip If any other spirit needs your help, you can skip it for the day and it won't hinder your progress.
|confirm
step
talk Sage Lotusbloom##64001
The following quest will only be available the first time you are sent to Chi-Ji's area
accept Challenge At The Temple of the Red Crane##31378 |goto Vale of Eternal Blossoms/0 62.79,23.39 |or |next "crane" |only if not completedq(31378)
Ask her how you can help the August Celestials today
Then click on whichever spirit needs you today
Chi-Ji the Red Crane |confirm |next "crane"
step
label "crane"
talk Thelonius##60506
turnin Challenge At The Temple of the Red Crane##31378 |goto Krasarang Wilds 31.30,63.40
only if not completedq(31378)
step
talk Thelonius##60506
accept Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
accept Champion of Chi-Ji##30740 |only if achieved(7287) |goto Krasarang Wilds 31.30,63.40
step
talk Yan Quillpaw##60529
accept Gifts of the Great Crane##30717 |goto Krasarang Wilds 31.30,63.60
step
talk Kuo-Na Quillpaw##60528
accept Chasing Hope##30716 |goto Krasarang Wilds 31.30,63.60
step
talk Champion of Chi-Ji##60546
Let's fight!
Defeat a Champion of Chi-Ji |q 30740/1 |goto Krasarang Wilds 34.60,82.00
|only if haveq(30740)
step
kill 10 Student of Chi-Ji##60601+
Duel 10 Students of Chi-Ji |q 30718/1 |goto Krasarang Wilds 31.20,73.90
click Cerulean Gift of the Crane##211451
click Crimson Gift of the Crane##211453
click Bronze Gift of the Crane##211452
|tip The Gifts look like feathers laying around on the ground.
collect 10 Gift of the Great Crane##80938+ |q 30717/1 |goto Krasarang Wilds 31.20,73.90
Find 3 Spirits of the Crane |q 30716/1 |goto Krasarang Wilds 31.20,73.90
|tip They look like stealthed birds roaming around the isle in set paths. Run into them.
step
talk Kuo-Na Quillpaw##60528
turnin Chasing Hope##30716 |goto Krasarang Wilds 31.30,63.60
step
talk Yan Quillpaw##60529
turnin Gifts of the Great Crane##30717 |goto Krasarang Wilds 31.30,63.60
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
accept Ellia Ravenmane##30725 |or |goto Krasarang Wilds 31.30,63.40
accept Minh Do-Tan##30726 |or |goto Krasarang Wilds 31.30,63.40
accept Ellia Ravenmane: Rematch##30727 |or |goto Krasarang Wilds 31.30,63.40
accept Fat Long-Fat##30728 |or |goto Krasarang Wilds 31.30,63.40
accept Julia Bates##30729 |or |goto Krasarang Wilds 31.30,63.40
accept Dextrous Izissha##30730 |or |goto Krasarang Wilds 31.30,63.40
accept Kuo-Na Quillpaw##30731 |or |goto Krasarang Wilds 31.30,63.40
accept Ellia Ravenmane: Revenge##30732 |or |goto Krasarang Wilds 31.30,63.40
accept Tukka-Tuk##30733 |or |goto Krasarang Wilds 31.30,63.40
accept Huck Wheelbarrow##30734 |or |goto Krasarang Wilds 31.30,63.40
accept Mindel Sunspeaker##30735 |or |goto Krasarang Wilds 31.30,63.40
accept Yan Quillpaw##30736 |or |goto Krasarang Wilds 31.30,63.40
accept Fat Long-Fat: Rematch##30737 |or |goto Krasarang Wilds 31.30,63.40
accept Thelonius##30738 |or |goto Krasarang Wilds 31.30,63.40
accept Ellia Ravenmane: Redemption##30739 |or |goto Krasarang Wilds 31.30,63.40
|only if not achieved(7287)
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
turnin Champion of Chi-Ji##30740 |goto Krasarang Wilds 31.30,63.40
|only if achieved(7287)
|next "end"
step
talk Fat Long-Fat##60534
|tip He is on the very top of this building.
Let's fight!
Defeat Fat Long-Fat |q 30728/1 |goto Krasarang Wilds 32.00,70.70
step
talk Ellia Ravenmane##60530
Let's fight!
Defeat Ellia Ravenmane |q 30725/1 |goto Krasarang Wilds 31.80,71.20
step
talk Mindel Sunspeaker##60541
Let's fight!
Defeat Mindel Sunspeaker |q 30735/1 |goto Krasarang Wilds 32.10,69.90
step
talk Minh Do-Tan##60532
Let's fight!
Defeat Minh Do-Tan |q 30726/1 |goto Krasarang Wilds 32.00,76.50
step
talk Tukka-Tuk##60539
Let's fight!
Defeat Tukka-Tuk |q 30733/1 |goto Krasarang Wilds 34.10,75.10
step
talk Ellia Ravenmane##60545
Let's fight!
Defeat Ellia Ravenmane |q 30739/1 |goto Krasarang Wilds 36.40,75.60
step
talk Dextrous Izissha##60536
Let's fight!
Defeat Dextrous Izissha |q 30730/1 |goto Krasarang Wilds 31.70,80.30
step
talk Fat Long-Fat##60543
Let's fight!
Defeat Fat Long-Fat |q 30737/1 |goto Krasarang Wilds 34.80,82.60
step
talk Kuo-Na Quillpaw##60537
Let's fight!
Defeat Kuo-Na Quillpaw |q 30731/1 |goto Krasarang Wilds 36.60,74.80
step
talk Ellia Ravenmane##60533
Let's fight!
Defeat Ellia Ravenmane |q 30727/1 |goto Krasarang Wilds 35.20,75.10
step
talk Julia Bates##60535
Let's fight!
Defeat Julia Bates |q 30729/1 |goto Krasarang Wilds 28.90,75.50
step
talk Huck Wheelbarrow##60540
Let's fight!
Defeat Huck Wheelbarrow |q 30734/1 |goto Krasarang Wilds 27.90,70.30
step
talk Yan Quillpaw##60542
Let's fight!
Defeat Yan Quillpaw |q 30736/1 |goto Krasarang Wilds 36.50,76.20
step
talk Ellia Ravenmane##60538
Let's fight!
Defeat Ellia Ravenmane |q 30732/1 |goto Krasarang Wilds 34.50,83.30
step
talk Thelonius##60544
Let's fight!
Defeat Thelonius |q 30738/1 |goto Krasarang Wilds 28.80,72.40
step
talk Thelonius##60506
turnin Ellia Ravenmane##30725 |or |goto Krasarang Wilds 31.30,63.40
turnin Minh Do-Tan##30726 |or |goto Krasarang Wilds 31.30,63.40
turnin Ellia Ravenmane: Rematch##30727 |or |goto Krasarang Wilds 31.30,63.40
turnin Fat Long-Fat##30728 |or |goto Krasarang Wilds 31.30,63.40
turnin Julia Bates##30729 |or |goto Krasarang Wilds 31.30,63.40
turnin Dextrous Izissha##30730 |or |goto Krasarang Wilds 31.30,63.40
turnin Kuo-Na Quillpaw##30731 |or |goto Krasarang Wilds 31.30,63.40
turnin Ellia Ravenmane: Revenge##30732 |or |goto Krasarang Wilds 31.30,63.40
turnin Tukka-Tuk##30733 |or |goto Krasarang Wilds 31.30,63.40
turnin Huck Wheelbarrow##30734 |or |goto Krasarang Wilds 31.30,63.40
turnin Mindel Sunspeaker##30735 |or |goto Krasarang Wilds 31.30,63.40
turnin Yan Quillpaw##30736 |or |goto Krasarang Wilds 31.30,63.40
turnin Fat Long-Fat: Rematch##30737 |or |goto Krasarang Wilds 31.30,63.40
turnin Thelonius##30738 |or |goto Krasarang Wilds 31.30,63.40
turnin Ellia Ravenmane: Redemption##30739 |or |goto Krasarang Wilds 31.30,63.40
|only if not achieved(7287)
|next "end"
step
label "end"
You have reached the end of the guide today, you will have to continue through this guide daily until you have defeated all challengers.
Click here to go back to the beginning of this guide. |confirm |next "startaug"
|achieve 7287 |next "achieve"
step
label "achieve"
Congratulations, you have obtained the _Champion of Chi-Ji_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Collateral Damage",{
achieveid={7323},
patch='50004',
description="Use a Mogu Statue's Crushing Slam to kill another opponent.",
},[[
step
For this achievement, you will need to have a _Mogu Statue_ defeat another another opponent using the ability _Crushing Slam_.
|confirm
step
For this, you will want to pick up a _Mogu Statue_ as well as another enemy.
Fight the enemy you intend on killing down to _10% Health_.
Wait for the Mogu Statue to use the ability _Crushing Slam_ and be sure that the enemy you beat down to _10% Health_ was within the radius of the attack.
Be sure that the Mogu Statue that is with you doesn't use _Crushing Stomp_ to kill the weakened enemy, or you won't get credit for the achievement.
|achieve 7323 |goto Vale of Eternal Blossoms 25.60,26.60
step
Congratulations, you have earned the _Collateral Damage_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\The Crumble Bundle",{
achieveid={8105},
patch='50200',
description="This guide will walk you through completing the \"The Crumble Bundle\" achievement.",
},[[
step
label "start"
You will need to unlock the _"Isle of Thunder"_ daily zone
You will also need to have progressed enough to have learned the Saurok Jump ability
Click here to load the Kirin Tor Offensive Guide |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies"
Click here to continue |confirm
step
You will have _10 Minutes_ to collect all of the pieces to the Chamberlain
|tip If you don't collect them WITHIN 10 mintues, you won't earn the achievement.
|tip If you fail to collect them within 10 minutes, you MUST wait for the 10 minutes to complete before attempting again!
To start, type _"/timer 600"_
|tip Hit the start button on the timer that popped up upon accepting the quest.
accept The Crumbled Chamberlain##32505 |goto Isle of Thunder/0 35.00,47.52
Click here if it's not at this spot |confirm
step
click Head of the Chamberlain##218072
accept The Crumbled Chamberlain##32505 |goto Isle of Thunder/0 38.77,59.27
Click here if it's not at this spot |confirm
step
click Head of the Chamberlain##218072
accept The Crumbled Chamberlain##32505 |goto Isle of Thunder/0 39.11, 56.01
Click here if it's not at this spot |confirm
step
click Head of the Chamberlain##218072
accept The Crumbled Chamberlain##32505 |goto Isle of Thunder/0 40.66, 71.43
Click here if it's not at this spot |confirm
step
click Head of the Chamberlain##218072
accept The Crumbled Chamberlain##32505 |goto Isle of Thunder/0 50.18, 85.91
Click here if it's not at this spot |confirm
step
click Head of the Chamberlain##218072
accept The Crumbled Chamberlain##32505 |goto Isle of Thunder/0 57.45, 46.13
Click here if it's not at this spot |confirm
step
click Torso of the Chamberlain##218076
collect Torso of the Chamberlain##93796 |q 32505/4 |goto Isle of Thunder/0 34,49.80
Click here if it's not at this spot |confirm
step
click Torso of the Chamberlain##218076
collect Torso of the Chamberlain##93796 |q 32505/4 |goto Isle of Thunder/0 36.30,48.90
Click here if it's not at this spot |confirm
step
click Torso of the Chamberlain##218076
collect Torso of the Chamberlain##93796 |q 32505/4 |goto Isle of Thunder/0 37.80,53.80
Click here if it's not at this spot |confirm
step
Go up the stairs |goto Isle of Thunder/0 34.04,58.09
click Torso of the Chamberlain##218076
collect Torso of the Chamberlain##93796 |q 32505/4 |goto Isle of Thunder/0 33.60,59.90
Click here if it's not at this spot |confirm
step
Enter the building |goto Isle of Thunder/0 35.11,62.20 < 25
Go up the stairs |goto Isle of Thunder/0 34.26,63.18 < 25
Follow the path |goto Isle of Thunder/0 34.58,65.24 < 20
Go up the stairs |goto Isle of Thunder/0 35.12,65.25 < 15
Go through the broken wall |goto Isle of Thunder/0 34.47,62.22 < 15
click Torso of the Chamberlain##218076
collect Torso of the Chamberlain##93796 |q 32505/4 |goto Isle of Thunder/0 34.29,61.30
|tip It's on the roof of the Hall of the Grand Imperion building.
Click here if it's not at this spot |confirm
step
click Torso of the Chamberlain##218076
collect Torso of the Chamberlain##93796 |q 32505/4 |goto Isle of Thunder/0 36.80,59.90
step
Follow the path |goto Isle of Thunder/0 37.62,65.00 < 25
Follow the path |goto Isle of Thunder/0 38.03,67.30 < 25
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 41.40,67.70
Click here if the staff isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 39.72,66.78 < 25
Follow the path |goto Isle of Thunder/0 37.65,67.31 < 25
Follow the path |goto Isle of Thunder/0 35.63,67.67 < 25
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 33.60,67.00
Click here if the staff isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 34.16,70.68 < 25
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 34.00,72.20
|tip It will be on the roof of the tent if it is here.
Click here if the staff isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 33.76,73.87 < 25
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 31.50,75.30
Click here if the staff isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 32.37,79.19 < 25
Follow the path |goto Isle of Thunder/0 33.80,79.25 < 25
Follow the path |goto Isle of Thunder/0 35.13,76.78 < 25
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 35.90,75.10
Click here if the staff isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 36.64,72.99 < 25
Follow the path |goto Isle of Thunder/0 38.68,72.25 < 25
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 39.10,73.50
|tip Check inside of the tent.
Click here if the staff isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 39.45,74.87 < 25
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 36.90,75.60
|tip Check the ledge, be careful not to fall.
Click here if the staff isn't at this location |confirm
step
Jump down here |goto Isle of Thunder/0 38.02,78.52 < 15
click Staff of the Chamberlain##218074
collect Staff of the Chamberlain##93794 |q 32505/3 |goto Isle of Thunder/0 37.80,79.10
Click here if the staff isn't at this location |confirm
step
Jump down |goto Isle of Thunder/0 41.33,72.68 < 25
Follow the path |goto Isle of Thunder/0 43.60,74.76 < 20
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 47.50,75.20
|tip You will need to have access to the Saurok Jumping Ability to reach this.
|tip Jump to the mountain peak.
Click here if the shoulder isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 45.29,75.38 < 20
Follow the path |goto Isle of Thunder/0 45.85,77.64 < 20
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 45.50,79.20
|tip You will need to have access to the Saurok Jumping Ability to reach this.
|tip Jump to the mountain peak.
Click here if the shoulder isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 45.15,83.04 < 20
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 44.50,86.10
|tip You will need to have access to the Saurok Jumping Ability to reach this.
|tip Jump to the mountain peak.
Click here if the shoulder isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 45.04,83.42
Follow the path |goto Isle of Thunder/0 46.91,80.51
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 47.90,83.00
|tip You will need to have access to the Saurok Jumping Ability to reach this.
|tip Jump to the mountain peak.
Click here if the shoulder isn't at this location |confirm
step
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 50.90,85.50
|tip You will need to have access to the Saurok Jumping Ability to reach this.
|tip Jump to the mountain peak.
Click here if the shoulder isn't at this location |confirm
step
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 53.40,83.50
|tip You will need to have access to the Saurok Jumping Ability to reach this.
|tip Jump to the mountain peak.
Click here if the shoulder isn't at this location |confirm
step
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 57.50,81.60
|tip You will need to have access to the Saurok Jumping Ability to reach this.
|tip Jump to the mountain peak.
Click here if the shoulder isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 55.86,82.07 < 20
Follow the path |goto Isle of Thunder/0 54.36,78.81 < 20
Follow the path |goto Isle of Thunder/0 55.34,74.51 < 20
click Shoulder of the Chamberlain##218073
collect Shoulder of the Chamberlain##93793 |q 32505/2 |goto Isle of Thunder/0 56.60,72.90
Click here if the shoulder isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 58.98,59.32 < 25
Follow the path |goto Isle of Thunder/0 56.71,57.58 < 25
Follow the path |goto Isle of Thunder/0 56.27,55.49 < 25
Follow the path |goto Isle of Thunder/0 57.81,55.47 < 25
Follow the path |goto Isle of Thunder/0 59.40,55.66 < 25
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 59.50,56.70
|tip It's inside of the tent.
Click here if the hair isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 58.76,54.03 < 25
Follow the path |goto Isle of Thunder/0 57.67,51.80 < 25
Follow the path |goto Isle of Thunder/0 56.38,49.23 < 24
Enter the tent |goto Isle of Thunder/0 56.48,46.74 < 15
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 56.50,45.80
Click here if the hair isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 55.85,47.72 < 15
Follow the path |goto Isle of Thunder/0 54.15,49.40 < 15
Follow the path |goto Isle of Thunder/0 53.62,47.45 < 15
Follow the path |goto Isle of Thunder/0 54.80,47.58 < 15
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 54.20,48.60
|tip It will be on the ledge.
Click here if the hair isn't at this location |confirm
step
Jump to the ledge |goto Isle of Thunder/0 53.41,45.63 < 5
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 53.00,45.60
|tip It will be on top of the tent, on the edge.
|tip You will be able to reach it by walking close the edge of the wall.
Click here if the hair isn't at this location |confirm
step
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 53.30,43.10
Click here if the hair isn't at this location |confirm
step
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 50.10,40.80
Click here if the hair isn't at this location |confirm
step
Follow the path |goto Isle of Thunder/0 50.30,38.60 < 25
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 52.50,37.10
Click here if the hair isn't at this location |confirm
step
click Hair of the Chamberlain##218075
collect Hair of the Chamberlain##93795 |q 32505/1 |goto Isle of Thunder/0 51.10,31.20
Click here if the hair isn't at this location |confirm
step
If you didn't make it in time, wait for the 10 minutes on the timer to end
Once you have done so, click here |confirm |next "start"
Earn the Crumble Bundle |achieve 8105
step
_Congratulations!_
You have earned the _The Crumble Bundle_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Defender of Gods",{
achieveid={7310},
patch='50004',
description="This guide will walk you through obtaining the Defender of Gods Achievement.",
},[[
step
For this achievement you must be at least _Revered_ with _The Shado-Pan_.
Click here to go to the Reputations guide to gain reputation with _The Shado-Pan_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Shado-Pan_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
|only if rep("Shado-Pan")<Revered
step
label "quest"
This quest might not be available every day, so you will have to check back every day if it's not available.
|confirm
step
talk Master Snowdrift##63009
accept Mogu Incursions##31266 |goto Townlong Steppes 49.50,70.50
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto Townlong Steppes 48.80,58.60
step
talk Master Snowdrift##63009
turnin Mogu Incursions##31266 |goto Townlong Steppes 49.50,70.50
accept Surprise Attack!##31277 |goto Townlong Steppes 49.50,70.50
step
talk Ban Bearheart##62304 |goto Townlong Steppes 42.60,63.90
Tell him you're ready to go.
|confirm
step
At this point you will fight throught waves of mobs for a few minutes. When Hei Fang lands, you will need to assist the Shado-Pan in defeating him.
|confirm
step
kill Hei Feng##62309
Put a stop to the Mogu Invasion of Niuzao Temple |q 31277/1 |goto Townlong Steppes 41.60,62.00
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto Townlong Steppes 49.00,70.60
step
Congratulations, you have obtained the _Defender of Gods_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Direhorn in a China Shop",{
achieveid={8120},
patch='50200',
description="Destroy the Priceless Zandalari Vase using the Loa-Infused Bloodhorn's charge attack.",
},[[
step
kill Loa-Infused Bloodhorn##69193+
While fighting the Bloodhorn, lure it away from the tent then immediately run into the tent at [52.40,36.80] to get it to charge. Move out of the way once it begins charging and you will get the achievement.
|achieve 8120 |goto Isle of Thunder/0 52.30,37.00
step
Congratulations, you have obtained the _Direhorn in a China Shop_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Dog Pile",{
achieveid={7320},
patch='50004',
description="This guide will walk you through obtaining the Dog Pile Achievement.",
},[[
step
For this achievement you must be at least _Honored_ with _The Golden Lotus_.
Click here to go to the Reputations guide to gain reputation with _The Golden Lotus_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Golden Lotus_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies" |only if ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
|only if rep("Golden Lotus")<Honored
step
label "quest"
This quest might not be available every day, so you will have to check back every day if it's not available.
|confirm
step
label "quest"
talk Anji Autumnlight##58919
|tip You may have to work through all of the dailies for the Golden Lotus to get this to open.
accept The Battle Ring##30306 |goto Vale of Eternal Blossoms 21.40,71.60
step
kill Shado-Pan Trainee##58992+ |goto Vale of Eternal Blossoms 19.70,74.20
Defeat 10 Shado-Pan Trainees within 10 seconds |achieve 7320 |goto Vale of Eternal Blossoms 19.70,74.20
|tip If you fail to successfully obtain the achievement, you may drop this quest and pick it back up to try again.
step
Congratulations, you have obtained the _Dog Pile_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Dread Haste Makes Dread Waste",{
achieveid={6540},
patch='50004',
description="This guide will walk you through completing the \"Dread Haste Makes Dread Waste\" achievement.",
},[[
step
To earn this achievement, you will need to _complete the 4 storylines in The Dread Wastes_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Dread Wastes (89-90)" guide |confirm |next "Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)"
Here is a look at your current progress:
The First Paragons |achieve 6540/1
The Might of the Klaxxi |achieve 6540/2
Taste of Amber |achieve 6540/3
Like a Deck Boss |achieve 6540/4
step
_Congratulations!_
You have earned the _Dread Haste Makes Dread Waste_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Every Day I'm Pand-a-ren",{
achieveid={7285},
patch='50004',
description="Complete 25 daily quests in pandaria in a single daily reset period.",
},[[
step
In order to earn this achievement, you will need to have unlocked several daily hubs.
|confirm
step
label "golden"
Routing to Proper Section |next "golden2" |only if not completedq(30638)
Routing to proper Section |next "tillers" |only if completedq(30638)
step
label "golden2"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.00,94.20
step
talk Sunwalker Dezco##64542
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.70,43.00
accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
step
Talk to Xuen |q 31395/1
kill Spirit of Violence##64656
Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Hatred##64742
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.90,42.80
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
accept A Witness to History##31511 |goto Kun-Lai Summit 68.70,43.00
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.00,91.40
step
talk Madam Vee Luo##62996
accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.30,48.90
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.10,91.60
step
talk Madam Vee Luo##62996
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.20,49.00
step
label "tillers"
Routing to Proper Section |next "tillers2" |only if not completedq(31945)
Routing to proper Section |next "cloud" |only if completedq(31945)
step
label "tillers2"
#include "Tillers_Quests"
step
label "cloud"
Routing to Proper Section |next "cloud2" |only if not completedq(30142)
Routing to proper Section |next "shieldwall" |only if completedq(30142)
step
label "cloud2"
#include "CS_PreQuests"
step
label "shieldwall"
Routing to Proper Section |next "shieldwall2" |only if not completedq(32109)
Routing to proper Section |next "info" |only if completedq(32109)
step
label "shieldwall2"
Click the auto-accept quest box at the top right of your screen:
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 84.80,62.30
|tip This will be available upon entering Vale of Eternal Blossoms.
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds 85.30,29.10
step
talk King Varian Wrynn##61796
accept A King Among Men##32247 |goto Krasarang Wilds 85.30,29.10
step
talk Marshal Troteman##68331
Marshal Troteman found |q 32247/2 |goto Krasarang Wilds 79.60,25.00
step
talk Hilda Hornswaggle##68312
Hilda Hornswaggle found |q 32247/3 |goto Krasarang Wilds 80.40,17.50
step
kill Horde Raider##68332+, Horde Hunter##68334+, Horde Priest##67904+
kill 25 Horde |q 32247/1 |goto Krasarang Wilds 84.60,22.00
step
talk King Varian Wrynn##61796
|tip He is standing next to you.
turnin A King Among Men##32247
accept Lion's Landing##32109
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds 85.60,29.10
step
label "info"
Once the prequests are completed, you can refer to our daily guides to go through and complete _25 Daily Quests_.
|achieve 7285/1
step
Congratulations, you have earned the _Every Day I'm Pand-a-ren_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Finish Them!",{
achieveid={7286},
patch='50004',
description="Defeat Brewmaster Chani, The Streetfighter, Clever Ashyo, Ken-Ken Kang Bramblestaff, The Wrestler, Master Boom Boom, Master Windfur Hackiss, Healiss and Tankiss at the Temple of the White Tiger.",
},[[
step
label "rev"
This achievement is mostly luck based, as the quest hub may not always be available.
Even when the quest hub is available, the NPCs you need may not be.
Refer to our _August Celestial_ Daily guide and look for the _Temple of the White Tiger_ hub to be available.
Click here to go to the Reputations guide to gain reputation with _The August Celestials_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The August Celestials_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The August Celestials Dailies" |only if ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
step
label "tiger"
Here is your current progress on the achievement.
Opponents defeated:
Brewmaster Chani |achieve 7286/1
Lun-Chi |achieve 7286/2
Clever Ashyo |achieve 7286/3
Ken-Ken |achieve 7286/4
Kang Bramblestaff |achieve 7286/5
The Wrestler |achieve 7286/6
Master Boom Boom |achieve 7286/7
Master Windfur |achieve 7286/8
Hackiss |achieve 7286/9
Healiss |achieve 7286/10
Tankiss |achieve 7286/11
|confirm
step
talk Xuen##60968
turnin Trial At The Temple of the White Tiger##31381 |goto Kun-Lai Summit 67.20,55.90
|only if haveq(31381)
step
talk Xuen##60968
accept Round 1: Brewmaster Chani##30879 |or |goto Kun-Lai Summit 67.20,55.90
accept Round 1: The Streetfighter##30880 |or |goto Kun-Lai Summit 67.20,55.90
accept Contending With Bullies##31517 |goto Kun-Lai Summit 67.20,55.90
|tip This quest may not be available.
|confirm
step
kill Shonuf##64757 |q 31517/1 |goto Kun-Lai Summit 71.10,55.80
|only if haveq(31517)
step
talk Brewmaster Chani##60996
Challenge her.
|tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
Defeat Brewmaster Chani |q 30879/1 |goto Kun-Lai Summit 71.00,51.80
|only if haveq(30879)
step
talk Lun-Chi##60994
Challenge her.
Defeat The Streetfighter |q 30880/1 |goto Kun-Lai Summit 71.00,51.80
|only if haveq(30880)
step
talk Xuen##60968
turnin Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit 70.30,51.30
turnin Round 1: The Streetfighter##30880 |goto Kun-Lai Summit 70.30,51.30
turnin Contending With Bullies##31517 |goto Kun-Lai Summit 70.30,51.30
accept Round 2: Clever Ashyo & Ken-Ken##30881 |or |goto Kun-Lai Summit 70.30,51.30
accept Round 2: Kang Bramblestaff##30882 |or |goto Kun-Lai Summit 70.30,51.30
step
talk Kang Bramblestaff##60978
Challenge him.
Defeat Kang Bramblestaff |q 30882/1 |goto Kun-Lai Summit 71.70,45.40
|only if haveq(30882)
step
talk Clever Ashyo##60980
Challenge him.
|tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The Spheres are top priority and the Spouts are easily avoidable.
Defeat Clever Ashyo |q 30881/1 |goto Kun-Lai Summit 71.70,45.40
Defeat Ken-Ken |q 30881/2 |goto Kun-Lai Summit 71.70,45.40
|only if haveq(30881)
step
talk Xuen##60968
turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit 71.80,44.90
turnin Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit 71.80,44.90
accept Round 3: The Wrestler##30883 |or |goto Kun-Lai Summit 71.80,44.90
accept Round 3: Master Boom Boom##30885 |or |goto Kun-Lai Summit 71.80,44.90
step
talk Master Boom Boom##61013
Challenge him.
|tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
Defeat Master Boom Boom |q 30885/1 |goto Kun-Lai Summit 66.70,46.50
|only if haveq(30885)
step
talk The Wrestler##60997
Challenge him.
|tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
Defeat The Wrestler |q 30883/1 |goto Kun-Lai Summit 66.70,46.50
|only if haveq(30883)
step
talk Xuen##60968
turnin Round 3: The Wrestler##30883 |goto Kun-Lai Summit 66.40,46.30
turnin Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit 66.40,46.30
accept Round 4: The P.U.G.##30907 |or |goto Kun-Lai Summit 66.40,46.30
accept Round 4: Master Windfur##30902 |or |goto Kun-Lai Summit 66.40,46.30
step
talk Master Windfur##61012
Challenge him.
Defeat Master Windfur. |q 30902/1 |goto Kun-Lai Summit 68.80,43.80
|only if haveq(30902)
step
Enter the building and go to [69.00,43.70]
talk Healiss##61004
Challenge him.
|tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
Defeat Hackiss |q 30907/1
Defeat Healiss |q 30907/2
Defeat Tankiss |q 30907/3
|only if haveq(30907)
step
talk Xuen##60968
turnin Round 4: The P.U.G.##30907 |goto Kun-Lai Summit 68.50,44.60
turnin Round 4: Master Windfur##30902 |goto Kun-Lai Summit 68.50,44.60
step
talk Lin Tenderpaw##60981
accept The Torch of Strength##31492 |goto Kun-Lai Summit 68.50,56.50
Click here if this quest is unavailable |confirm |next
step
For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over.
|confirm
step
Enter the first temple here. |goto Kun-Lai Summit 69.60,53.00 |only if walking
Enter the second temple here. |goto Kun-Lai Summit 66.90,51.20 |only if walking
Click _The Strong Brazier_ to light it.
Light the Strong Brazier |q 31492/1 |goto Kun-Lai Summit 68.60,46.60
step
talk Lin Tenderpaw##60981
turnin The Torch of Strength##31492 |goto Kun-Lai Summit 68.50,56.50
|next "tiger" |only if not achieved(7286)
|next |only if default
step
Congratulations, you have earned the _Finish Them!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Fire in the Yaung-hole!",{
achieveid={7309},
patch='50004',
description="kill 15 or more Gai-Cho combatants with a single Highly Explosive Oil Barrel",
},[[
step
This achievement requires you to do a daily for the Shado-Pan.
This quest will not be available every day, so be sure to check back periodically.
|confirm
step
label "fire_d"
talk Master Snowdrift##63009
|tip You will only be able to accept 4 of the following dailies.
accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto Townlong Steppes 49.40,70.60
|tip Note that this daily may not be available every day.
step
click Highly Explosive Yaungol Oil Barrel##212877 |only if haveq(31119)
collect Highly Explosive Yaungol Oil##84762 |n |goto Townlong Steppes 63.40,43.30
|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if haveq(31119)
You will likely need 3 for this achievement.
step
Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
To help with earning this achievement, you may want to put the _Highly Explosive Yaungol Oil_ on your Hotbar so you can spam it as soon as it becomes available again.
kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto Townlong Steppes 60.20,48.60
If you run out of oil, you can find more here [63.40,43.30]
|achieve 7309
|only if haveq(31119)
step
Congratulations, you have achieved the _Fire in the Yaung-hole_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\For the Ward!",{
achieveid={8117},
patch='50200',
description="Finish off an opposing player with a Sunreaver or Kirin Tor ward.",
},[[
step
For this achievement, you must battle an opposing player near your base on the Isle of the Thunder King. Once they are close to death, activate a ward nearby to cause a killing blow.
|confirm
step
Use a Sunreaver or Kirin Tor perimeter ward to finish off an opponent. |achieve 8117
step
Congratulations, you have achieved the _For the Ward!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Getting Around with the Shado-Pan",{
achieveid={7298},
patch='50004',
description="Complete 15 Shado-Pan daily quests with each of the Shadow-Pan Heroes.",
},[[
step
For this achievement you must be at least _Revered_ with _The Shado-Pan_.
Click here to go to the Reputations guide to gain reputation with _The Shado-Pan_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Shado-Pan_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if ZGV.guidesets['DailiesHMOP']
confirm |next |only if default
only if rep("Shado-Pan")<Revered
step
Here is a look at your current progress with the achievement:
Complete daily quests with Fei Li |achieve 7298/1
Complete daily quests with Taoshi |achieve 7298/2
Complete daily quests with Protector Yi |achieve 7298/3
Complete daily quests with Snow Blossom |achieve 7298/4
Complete daily quests with Hawkmaster Nurong |achieve 7298/5
Complete daily quests with Chao the Voice |achieve 7298/6
Complete daily quests with Yalia Sagewhisper |achieve 7298/7
Complete daily quests with Tenwu of the Red Smoke |achieve 7298/8
Complete daily quests with Lao-Chin the Iron Belly |achieve 7298/9
You will need to refer to our Shado-Pan Daily guide to gain rep with them.
Click here to go to the Reputations guide to work toward this achievement with _The Shado-Pan_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to work toward this achievement with _The Shado-Pan_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if ZGV.guidesets['DailiesHMOP']
Note that when you turn in quests, be sure to dismount first.
achieve 7298
step
Congratulations, you have earned the _Getting Around with the Shado-Pan_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Green Acres",{
achieveid={7292},
patch='50004',
description="This guide will walk you through obtaining the Green Acres Achievement.",
},[[
step
#include "Tillers_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\How to Strain Your Dragon",{
achieveid={7290},
patch='50004',
description="This guide will walk you through obtaining the How to Strain Your Dragon Achievement.",
},[[
step
For this achievement you must be at least _Revered_ with _The Order of the Cloud Serpent_.
Click here to go to the Reputations guide to gain reputation with _The Order of the Cloud Serpent_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Order of the Cloud Serpent_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies" |only if ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
|only if rep("Order of the Cloud Serpent")<Revered
step
label "quest"
This quest might not be available every day, so you will have to check back every day if it's not available.
|confirm
step
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest 58.60,43.70
step
talk Instructor Windblade##58420 |goto The Jade Forest 58.60,43.70
Tell her you are ready to start the Sky Race.
Ride your Dragon! |invehicle
|only if haveq(30152)
step
path	60.60,39.40	59.70,31.50	61.30,25.20
path	66.30,36.00	66.20,42.40	66.80,51.40
path	64.00,51.00	60.40,52.90	61.80,54.50
path	58.70,46.80	58.40,46.40	58.10,46.00
Follow this path and collect the checked flags hanging off of the Checkpoint balloons. As you fly, gain speed by flying through cloud rings
Pass 10 Checkpoints. |q 30152/1
Pass underneath the Finish Line |q 30152/2
|only if haveq(30152)
step
|achieve 7290 |or
|confirm |next "quest" |only if not achieved(7290) |or
step
Congratulations, you have obtained the _How to Strain Your Dragon_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\In a Trail of Smoke",{
achieveid={7291},
patch='50004',
description="This guide will walk you through obtaining the In a Trail of Smoke Achievement.",
},[[
step
For this achievement you must be at least _Revered_ with _The Order of the Cloud Serpent_.
Click here to go to the Reputations guide to gain reputation with _The Order of the Cloud Serpent_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Order of the Cloud Serpent_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies" |only if ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
|only if rep("Order of the Cloud Serpent")<Revered
step
label "quest"
This quest might not be available every day, so you will have to check back every day if it's not available.
|confirm
step
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest 58.60,43.70
step
label "quest"
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest 58.60,43.70
step
talk Instructor Windblade##58420 |goto The Jade Forest 58.60,43.70
Tell her you are ready to start the Sky Race.
Ride your Dragon! |invehicle
|only if haveq(30152)
step
path	60.60,39.40	59.70,31.50	61.30,25.20
path	66.30,36.00	66.20,42.40	66.80,51.40
path	64.00,51.00	60.40,52.90	61.80,54.50
path	58.70,46.80	58.40,46.40	58.10,46.00
Follow this path and collect the checked flags hanging off of the Checkpoint balloons. As you fly, gain speed by flying through cloud rings, and be sure to keep 10 stacks of the speed buff on at all times.
Pass underneath the Finish Linewith 10 stacks of the speed buff |achieve 7291
|only if haveq(30152)
step
|achieve 7291 |only if default
|confirm |next "quest" |only if not achieved(7291)
step
Congratulations, you have obtained the _In a Trail of Smoke_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Isle of Thunder",{
achieveid={8028},
patch='50200',
description="Defeat Nalak, the Storm Lord, on the Isle of Thunder. In order to get this achievement, you must have access to all areas of the _Isle of Thunder_. They are unlocked in stages on a server-wide basis, through completion of daily quests taking place on the Isle. As soon as the realm has made enough concerted progress, this achievement's solo scenarios will be unlocked.",
},[[
step
label "start"
Moving to the Sunreaver Onslaught prequests. |next |only if not completedq(32681)
Moving to the First Scenario |next "scenario1" |only if thunderstage()>=2 and not completedq(32644)
Moving to the Second Scenario |next "scenario2" |only if thunderstage()>=3 and not completedq(32654)
Moving to the Third Scenario |next "scenario3" |only if thunderstage()>=4 and not completedq(32652)
Moving to the Fourth Scenario |next "scenario4" |only if thunderstage()>=5 and not completedq(32655)
Moving to the Fifth Scenario |next "scenario5" |only if thunderstage()>5 and not achieved(8099)
Achievement complete |next "end" |only if achieved(8099)
You are currently {thunderprogress()}% into Stage {thunderstage()}
If a quest is not offered today, your realm has not unlocked the next stage yet.
Go to the Isle of Thunder and complete any dailies you can do today. For more information, please refer to Zygor's Dailies or Zygor's Reputations guides. |only if not ZGV.guidesets.DailiesHMOP
Click here to complete Sunreaver Onslaught dailies to help your realm move into the next stage. |next "Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies" |confirm |only if ZGV.guidesets.DailiesHMOP
If you have already completed the Sunreaver Onslaught dailies today, you'll have to wait until tomorrow to proceed.
step
label "prequest"
Click the quest discovered box under your minimap.
accept Thunder Calls##32678 |goto Vale of Eternal Blossoms 61.50,19.80
step
talk Scout Captain Elsia##70358
turnin Thunder Calls##32678 |goto Townlong Steppes 50.80,73.40
accept The Storm Gathers##32680 |goto Townlong Steppes 50.80,73.40
step
talk Scout Captain Elsia##70358
Tell her you're ready to go. |q 32680/1 |goto Townlong Steppes 50.80,73.40
Discover the Isle of Thunder |q 32680/2 |goto Townlong Steppes 50.80,73.40
step
talk Lor'themar Theron##67990
turnin The Storm Gathers##32680 |goto Isle of Thunder 28.40,52.40
|achieve 8099/1
|next "start"
step
label "scenario1"
talk Lor'themar Theron##67990
accept The Assault on Zeb'tula##32212 |goto Isle of Thunder 28.40,52.30
step
talk Lor'themar Theron##67990
Tell him you're ready to go. |q 32212/1 |goto Isle of Thunder 28.40,52.30
step
clicknpc Sunreaver Bloodhawk##69487 |goto Isle of Thunder Scenario 28.50,52.30
Ride the Sunreaver Bloodhawk.
scenariogoal 22673
step
scenariostage 1
step
kill Zeb'tula Raptor##69658+, from Zeb'tula Beastcaller##69657+ |goto Isle of Thunder Scenario 42.70,50.50
|scenariogoal 22655
step
scenariostage 2
step
kill Zeb'tula Stoneshield##69517+ |goto Isle of Thunder Scenario 39.00,43.90
kill Zandalari Barricade##69516+ |goto Isle of Thunder Scenario 39.00,43.90
kill Zeb'tula Spearanger##69518+ |goto Isle of Thunder Scenario 39.00,43.90
scenariogoal 22656
step
scenariostage 3
step
kill Kresh the Ripper##69474+ |goto Isle of Thunder 38.80,38.70
scenariogoal 22657
step
scenariostage 4
step
kill Arcanital Tula'chek##69475+ |goto Isle of Thunder Scenario 32.80,35.20
scenariogoal 22659
scenariogoal 22660
step
scenariostage 5
step
talk Lor'themar Theron##67990
turnin The Assault on Zeb'tula##32212 |goto Isle of Thunder 32.50,35.50
|achieve 8099/2
|next "start"
step
label "scenario2"
talk Lady Jaina Proudmoore##67992
accept Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.20,72.20
step
talk Lady Jaina Proudmoore##67992
Tell her you're ready to tear down the wall! |q 32654/1 |goto Isle of Thunder/0 63.20,72.20
Enter the _Tear Down This Wall!_ Scenario |goto Isle of Thunder Scenario |noway|c
step
Click the _Heavy Explosive_ |goto Isle of Thunder Scenario 48.40,50.90
Acquire the Heavy Explosives.
scenariogoal 22696
step
scenariostage 1
step
talk Vereesa Windrunner##69949 |goto Isle of Thunder Scenario 55.80,57.70
Deliver the explosive to Vereesa
scenariogoal 22700
step
scenariostage 2
step
Click the Heavy Explosives to detonate them. |goto Isle of Thunder Scenario 56.30,56.10
scenariogoal 22702
step
scenariostage 3
step
Follow Vereesa Windrunner along the path.
kill War-God Al'chukla##69755+ |scenariogoal 23004
Secure the lower city |q 32654/2 |goto Isle of Thunder Scenario 54.70,45.80
step
goto Isle of Thunder Scenario 54.10,46.20
Click the Portal to the Isle of Thunder |goto Isle of Thunder/0 64.10,72.50 |noway |c
step
scenariostage 4
step
talk Lady Jaina Proudmoore##67992
turnin Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.20,72.20
|achieve 8099/3
|next "start"
step
label "scenario3"
talk Lor'themar Theron##67990
accept To the Skies!##32277 |goto Isle of Thunder 32.60,35.60
step
talk Lor'themar Theron##67990
Tell him you're ready to go! |q 32277/1 |goto Isle of Thunder 32.60,35.60
step
clicknpc Thunderwing##69509 |goto Isle of Thunder Scenario 32.30,34.40
scenariogoal 22666
scenariogoal 22667
step
scenariostage 1
step
Use the Jump! ability on your toolbar to fight the Zandalari Attackers
|tip After you defeat the first one, you will automatically jump to each other one until this stage is complete.
kill Zandalari Beastcaller##69521+
scenariogoal 22668
step
scenariostage 2
step
kill Beastmaster Horaki##69559+ |goto Isle of Thunder Scenario 48.70,25.50
scenariogoal 22669
step
scenariostage 3
step
talk Taoshi##69810 |goto Isle of Thunder Scenario 49.30,26.00
Tell her lets go.
scenariogoal 22738
step
scenariostage 4
step
Wait here while Taoshi sets up the bomb. |goto Isle of Thunder Scenario 48.80,25.60
scenariogoal 22740
step
goto Isle of Thunder Scenario/0 49.30,25.60 |n
Enter the cave here |goto Isle of Thunder/0 49.30,25.60 |noway |c
step
goto Isle of Thunder Scenario/1 32.90,57.90
scenariogoal 22741
step
scenariostage 5
step
kill Slavemaster Shiaxu##69923+ |scenariogoal 22672 |goto Isle of Thunder Scenario/1 31.40,71.30
scenariogoal 22672
step
scenariostage 6
step
goto Isle of Thunder Scenario/1 31.40,77.20
Click the portal to the Isle of Thunder |goto Isle of Thunder/0 33.30,32.40 |noway |c
step
talk Lor'themar Theron##67990
turnin To the Skies!##32277 |goto Isle of Thunder/0 32.50,35.50
|achieve 8099/4
|next "start"
step
label "scenario4"
talk Taoshi##70297
accept Decisive Action##32278 |goto Isle of Thunder/0 32.90,32.70
step
talk Taoshi##70297 |goto Isle of Thunder/0 32.90,32.70
Tell her you're with her!
You will queue for the solo scenario, click accept when the box pups up on your screen. |goto Isle of Thunder Scenario 62.50,54.60 |noway |c
step
goto Isle of Thunder Scenario/0 63.20,54.40
.clicknpc Thunderwing##69458
scenariogoal 22661
step
scenariostage 1
step
Use the _Smoke Bomb_ ability on your hotbar to cloud the vision of the Zandalari patrols.
scenariogoal 23007
step
scenariostage 2
step
Follow _Taoshi_ around the ship and sneak up behind the _Veteran Wingriders_ she marks for you.
When the enemies are inside your red circle, use the _Knock Out_ ability that pops up on your screen.
scenariogoal 23003
scenariogoal 22663
step
scenariostage 3
step
kill Captain Halu'kal##69482+ |goto Isle of Thunder Scenario/0 67.20,47.30
|tip He's on the lower deck of the ship.
scenariogoal 22664
step
scenariostage 4
step
Sneak your way around the totems and guards to Hu'seng the Gatekeeper. |goto Isle of Thunder Scenario/0 59.40,44.20
scenariogoal 22665
step
scenariostage 5
step
kill Hu'seng the Gatekeeper##69483+ |scenariogoal 22667
collect 1 Gatekeeper's Orb##94918 |scenariogoal 22810 |goto Isle of Thunder Scenario/0 59.10,44.10
step
scenariostage 6
step
click Deactivated Access Generator##219094 |goto Isle of Thunder Scenario/0 58.40,42.80
scenariogoal 22809
step
scenariostage 7
step
|goto Isle of Thunder/0 57.80,41.90
Click the Portal to Dawnseeker Promontory |goto Isle of Thunder/0 33.30,32.40 |noway |c
step
talk Lor'themar Theron##67990
turnin Decisive Action##32278 |goto Isle of Thunder/0 32.50,35.50
|achieve 8099/5
|next "start"
step
label "scenario5"
talk Lor'themar Theron##67990
accept The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.60,35.50
step
talk Scout Captain Elsia##69620 |goto Isle of Thunder/0 56.10,39.10
Tell her you are ready to go. |scenariogoal 22742
step
kill Zandalari Stoneshield##69527+ |scenariogoal 22675 |goto Isle of Thunder Scenario 57.50,40.80
step
scenariostage 1
step
kill Palace Gatekeeper##69510+ |scenariogoal 22685 |goto Isle of Thunder Scenario 57.90,40.80
step
scenariostage 2
step
kill Quilen Guardian##69506+, Shan'ze Electrocutioner##69525+, Zandalari Stoneshield##69865+ |scenariogoal 22734 |goto Isle of Thunder Scenario 59.80,38.00
step
scenariostage 3
step
kill Shan Bu##69534+ |scenariogoal 22683 |goto Isle of Thunder Scenario 60.00,37.80
step
scenariostage 4
step
Follow Taran Zhu to this spot and watch the conflict. |goto Isle of Thunder Scenario 57.90,40.90
|confirm
step
|goto Isle of Thunder/0 56.90,40.50
Click the portal to the Isle of Thunder |goto Isle of Thunder/0 33.20,32.40 |noway |c
step
talk Lor'themar Theron##67990
turnin The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.50,35.50
|achieve 8099/6
|next "start"
step
label "end"
Congratulations, you have achieved the _Isle of Thunder_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\It Was Worth Every Ritual Stone",{
achieveid={8101},
patch='50200',
description="This guide will walk you through completing the \"It Was Worth Every Ritual Stone\" achievement.",
},[[
step
For this, you will need to defeat all of the Isle of Thunder summonable bosses
|tip You will need to complete the achievement "Pay to Slay" in order for this achievement to become available.
step
kill Spirit of Warlord Teng##69471 |achieve 8101/1 |goto Isle of Thunder/0 55.20,87.70
step
kill Kor'dok and Tinzo the Emberkeeper##69633 |achieve 8101/2 |goto Isle of Thunder/0 30.80,58.60
step
kill Echo of Kros##69341 |achieve 8101/3 |goto Isle of Thunder/0 55.20,87.70
step
kill Electromancer Ju'le##69339 |achieve 8101/4 |goto Isle of Thunder/0 44.80,60.40
step
kill Qi'nor##69749 |achieve 8101/5 |goto Isle of Thunder/0 47.80,25.60
step
kill Ancient Mogu Guardian##69767 |achieve 8101/6 |goto Isle of Thunder/0 53.20,47.80
step
kill Windweaver Akil'amon##70080 |achieve 8101/7 |goto Isle of Thunder/0 69.60,39.00
step
kill Cera##69396 |achieve 8101/8 |goto Isle of Thunder/0 57.90,79.20
step
kill Incomplete Drakkari Colossus##69347 |achieve 8101/9 |goto Isle of Thunder/0 49.80,20.40
step
_Congratulations!_
You have earned the _It Was Worth Every Ritual Stone_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Know Your Role",{
achieveid={7308},
patch='50004',
description="Complete each of the Shado-Pan Blackguard daily quests without taking any damage from monsters.",
},[[
step
In order to earn the achievement _Know Your Role_ you will need to complete Complete each of the Shado-Pan Blackguard daily quests without taking any damage from monsters.
Naturally, the easiest way to get this achievement completed is to have a friend join you and let him do all of the quests while you stay away.
Another way will be to use _Highly Explosive Yaungol Oil_ from the The Enemy of My Enemy... Is Still My Enemy! quest.
|confirm
step
Here is your progress with the achievement:
Assault Fire Camp Gai-Cho |achieve 7308/1
Assault Deadtalker's Plateau |achieve 7308/2
The Deadtalker Cipher |achieve 7308/3
Spirit Dust |achieve 7308/4
The Enemy of My Enemy... Is Still My Enemy! |achieve 7308/5
Uruk! |achieve 7308/6
Cheng Bo! |achieve 7308/7
|confirm
step
In order to earn this part of the achievement, you will need to have the quest _The Enemy of My Enemy... IS Still My Enemy!_, but it needs to not be completed.
Pick up the _Highly Explosive Yaungol Oil Barrels_ around [Townlong Steppes 63.80,41.90]
While on your flying mount, use the Highly Explosive Yaungol Oil Barrels on the quest mobs. _Be sure not to leave the battlefield_.
Assault Fire Camp Gai-Cho |achieve 7308/1
step
For this quest, the absolute easiest way to get it done is by completed the quest with another player.
Assault Deadtalker's Plateau |achieve 7308/2
step
For this achievement, you will want to kill the enemies without looting them.
Find the _Chiphered Scroll_ but _DO NOT LOOT IT_!
Abandon the quest, the go pick it back up from _Master Snowdrift_ at the Garrison.
Fly back to the enemy who dropped the scroll, loot it and turn it in.
The Deadtalker Cipher |achieve 7308/3
step
Similar to the previous daily, you will want to kill the enemies that drop their remains.
_DO NOT LOOT_ any of them. Once you've found 8 on enemy corpses, abandon the quest and go back to pick it up.
Return to the corpses and loot the quest items.
Spirit Dust |achieve 7308/4
step
Pick up the _Highly Explosive Yaungol Oil Barrels_ around [Townlong Steppes 63.80,41.90]
While on your flying mount, use the Highly Explosive Yaungol Oil Barrels on the quest mobs. _Be sure not to leave the battlefield_.
The Enemy of My Enemy... Is Still My Enemy! |achieve 7308/5
step
Be sure to interrupt _Shadow Bolt_ whenever you can, as well as avoiding his other abilities which leave markers on the ground as to where they are going to hit.
Uruk! |achieve 7308/6
step
This is a tricky achievement to earn.
In order to receive credit for this, you mus also not take damage from _The Enemy of My Enemy... Is Still My Enemy!_ and _Assault Fire Camp Gai-Cho_.
Once that is established, you will need a companion, player or npc to pick up aggro on him.
He will use _Earthquake_ soon after you aggro him so be very aware of that.
Cheng Bo! |achieve 7308/7
step
Congratulations, you have earned the _Know Your Role_ achievmeent.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Listen to the Drunk Fish",{
achieveid={7295},
patch='50004',
description="Harvest every vegetable on a high-forecast day.",
},[[
step
In order to earn this achievement, you will need to be revered with the Tillers faction.
confirm
step
Routing to proper section |next "preq" |only if rep('The Tillers')<Revered and not completedq(30257)
Routing to proper section |next "revered" |only if rep('The Tillers')<Revered and completedq(30257)
Routing to proper section |next "garden" |only if rep('The Tillers')>=Revered
step
label "preq"
#include "Tillers_Quests"
step
label "revered"
Once the prequests are completed, refer to our Tillers daily guide to work your reputation up to _Revered_.
Click here to go to the Reputations guide to gain reputation with _The Tillers_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Tillers_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies" |only if ZGV.guidesets['DailiesHMOP']
You will need to continue through the dailies with _The Tillers_ to get your reputation to _Revered_. |only if default
confirm |next |only if default
step
step
label "garden"
talk Jogu the Drunk##58710
Speak with Jogu to check the forecast of which crop has the highest chance to grow for the day.
|tip Note that he will chare you 25g if you're a stranger or it can be free if you're his best friend.
Choose whatever he says to plant and harvest the next day.
Harvest Plump Juicycrunch Carrot |achieve 7295/1 |goto Valley of the Four Winds 53.60,52.60
Harvest Plump Green Cabbage |achieve 7295/2 |goto Valley of the Four Winds 53.60,52.60
Harvest Plump Scallions |achieve 7295/3 |goto Valley of the Four Winds 53.60,52.60
Harvest Plump Mogu Pumpkin |achieve 7295/4 |goto Valley of the Four Winds 53.60,52.60
Harvest Plump Red Blossom Leek |achieve 7295/5 |goto Valley of the Four Winds 53.60,52.60
Harvest Pink Turnip |achieve 7295/6 |goto Valley of the Four Winds 53.60,52.60
Harvest Plump White Turnip |achieve 7295/7 |goto Valley of the Four Winds 53.60,52.60
step
Congratulations, you have earned the _Listen to the Drunk Fish_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Loner and a Rebel",{
achieveid={7299},
patch='50004',
description="Complete each set of the Shado-Pan daily quests without a Shado-Pan companion of leaving the Townlong Steppes.",
},[[
step
In order to earn this achievement you will need to complete every set of Shado-Pan daily quests without a companion and without leaving Townlong.
While going through the dailies guides to complete the requirements for this achievement be sure you _Do Not_ pick up a companion.
confirm
step
Click here to go to the Reputations guide to gain reputation with _The Shado-Pan_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Shado-Pan_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if ZGV.guidesets['DailiesHMOP']
confirm |next |only if default
step
label "golden2"
Keep in mind that you must complete the _Shado-Pan_ dailies without a companion and without leaving Townlong Steppes.
Omnia Mystics |achieve 7299/1
Wu Kao Assassins |achieve 7299/2
Blackguard Defenders |achieve 7299/3
achieve 7299
step
Congratulations, you have earned the _Loner and a Rebel_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Mighty Roamin' Krasaranger",{
achieveid={6536},
patch='50004',
description="This guide will walk you through completing the \"Mighty Roamin' Krasaranger\" achievement.",
},[[
step
To earn this achievement, you will need to _complete the 10 storylines in Kun-Lai Summit_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Krasarang Wilds (87)" guide |confirm |next "Leveling Guides\\Pandaria (10-70)\\Krasarang Wilds (15-70)"
Here is a look at your current progress:
Zhu's Watch |achieve 6536/1
Thunder Cleft |achieve 6536/2
Nayell Lagoon |achieve 6536/3
Temple of the Red Crane |achieve 6536/4
Dawnchaser Retreat |achieve 6536/5
step
_Congratulations!_
You have earned the _Mighty Roamin' Krasaranger_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\The Mogu Have Gotta Go-gu",{
achieveid={8110},
patch='50200',
keywords={"Gogu"},
description="This guide will walk you through completing the \"The Mogu Have Gotta Go-gu\" achievement.",
},[[
step
kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+, Shan'ze Soulripper##0, Shan'ze Gravekeeper##69235+, Risen Ancestor##69237, Ancient Stone Conqueror##69238+
|tip Kill them around the Court of Bones area.
collect Incantation of Haqin##94130 |n
Use the Incantation of Haqin |use Incantation of Haqin##94130
kill Haqin of the Hundred Spears##69800 |achieve 8110/1 |goto Isle of Thunder/0 38.90,59.30
step
kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+, Shan'ze Soulripper##0, Shan'ze Gravekeeper##69235+, Risen Ancestor##69237, Ancient Stone Conqueror##69238+
|tip Kill them around the Court of Bones area.
collect Incantation of Vu##95350 |n
Use the Incantation of Vu |use Incantation of Vu##95350
kill Sparkmancer Vu##69961 |achieve 8110/2 |goto Isle of Thunder/0 38.50,54.80
step
kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+, Shan'ze Soulripper##0, Shan'ze Gravekeeper##69235+, Risen Ancestor##69237, Ancient Stone Conqueror##69238+
|tip Kill them around the Court of Bones area.
collect Incantation of Deng##94233 |n
Use the Incantation of Deng |use Incantation of Deng##94233
kill Forgemaster Deng##69809 |achieve 8110/3 |goto Isle of Thunder/0 38.70,58.10
step
_Congratulations!_
You have earned the _The Mogu Have Gotta Go-gu_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\One Many Army",{
achieveid={7317},
patch='50004',
description="Defeat the following powerful enemies within the vale of eternal blossoms.",
},[[
step
For this achievement, you will need to kill 16 unique enemies.
Keep in mind that every beast you will need to encounter may not be available at all times.
|confirm
step
Here is your progress with the achievement:
Cracklefang |achieve 7317/1
Vicejaw |achieve 7317/2
General Temuja |achieve 7317/3
Shadowmaster Sydow |achieve 7317/4
Aetha |achieve 7317/5
Quid |achieve 7317/6
Spirit of Lao-fe |achieve 7317/7
Baolai the Immolator |achieve 7317/8
Gaohun the Soul-Severer |achieve 7317/9
Bloodtip |achieve 7317/10
Wulon |achieve 7317/11
Gochao the ironfist |achieve 7317/12
Huo-Shuang |achieve 7317/13
Bai-Jin the Butcher |achieve 7317/14
Krii'chon |achieve 7317/15
Vyraxxis |achieve 7317/16
Please note that the NPC's may not always be available.
|confirm
step
kill Cracklefang##58768 |achieve 7317/1 |goto Vale of Eternal Blossoms 46.60,59.00
step
kill Vicejaw##58769 |achieve 7317/2 |goto Vale of Eternal Blossoms 37.60,51.00
step
kill General Temuja##63101 |achieve 7317/3 |goto Vale of Eternal Blossoms 29.60,57.80
step
kill Shadowmaster Sydow##63240 |achieve 7317/4 |goto Vale of Eternal Blossoms 30.80,78.20
step
kill Aetha##58778 |achieve 7317/5 |goto Vale of Eternal Blossoms 35.00,89.60
step
kill Quid##58771 |achieve 7317/6 |goto Vale of Eternal Blossoms 66.60,39.60
step
kill Spirit of Lao-fe##58817 |achieve 7317/7 |goto Vale of Eternal Blossoms 47.40,66.00
step
kill Baolai the Immolator##63695 |achieve 7317/8 |goto Vale of Eternal Blossoms 37.60,81.20
step
kill Gaohun the Soul-Severer##62881 |achieve 7317/9 |goto Vale of Eternal Blossoms 21.80,17.40
step
kill Bloodtip##58474 |achieve 7317/10 |goto Vale of Eternal Blossoms 27.00,14.60
step
kill Wulon##63510 |achieve 7317/11 |goto Vale of Eternal Blossoms 45.00,76.20
step
kill Gochao the Ironfist##62880 |achieve 7317/12 |goto Vale of Eternal Blossoms 27.00,13.60
step
kill Huo-Shuang##63691 |achieve 7317/13 |goto Vale of Eternal Blossoms 26.80,15.80
step
kill Bai-Jin the Butcher##58949 |achieve 7317/14 |goto Vale of Eternal Blossoms 16.40,48.80
step
kill Krii'chon##63978 |achieve 7317/15 |goto Vale of Eternal Blossoms 6.40,58.60
step
kill Vyraxxis##63977 |achieve 7317/16 |goto Vale of Eternal Blossoms 8.00,33.40
step
Congratulations, you have earned the _One Many Army_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\One Step at a Time",{
achieveid={7324},
patch='50004',
description="This guide will walk you through completing the \"One Step at a Time\" achievement.",
},[[
step
label "start"
This achievement takes place during two quests:
_"The Crumbling Hall"_ and _"The Thunder Below"_
|tip Only one will be offered at a time.
|tip You will need to complete these quests without taking damage.
_"This requirement takes effect as soon as you accept the quest!"_
The easiest way to do this is to have a friend run ahead of you and clear all of the enemies
Complete The Crumbling Hall without taking any damage |achieve 7324/1
Complete The Thunder Below without taking any damage |achieve 7324/2
Click here to continue |confirm
step
talk Bartender Tomro##58691
home The Golden Rose |goto Vale of Eternal Blossoms/0 35.35,77.65
|tip Set your hearth here so you can use it to port out of the ruins after you reach the goal.
|tip This will help prevent you from taking damage on your way out.
step
talk Anji Autumnlight##58919
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.40,71.60 |or
accept The Thunder Below##30280 |next "Thunder" |goto Vale of Eternal Blossoms/0 21.40,71.60 |or
|achieve 30280 |next "end" |or
step
map Vale of Eternal Blossoms/0
path loop off; dist 20
path 22.29,26.54
map Vale of Eternal Blossoms/1
path loop off; dist 20
path	53.33,87.33	47.46,81.40	51.13,67.67
path	46.13,56.05	41.56,53.17	31.52,47.29
path	27.62,41.74	31.03,28.40	34.68,22.02
Follow the path
|tip Be on the look out for the Red Statues, as they will aggro when you are close to them.
|tip They will be invulnerable until they aggro as well.
Click here to continue |confirm
step
map Vale of Eternal Blossoms/1
path loop off; dist 5
path	38.97,24.64	38.37,26.81	37.60,29.43
path	39.48,30.79	41.29,32.17	44.16,33.64
path	44.84,31.14	45.71,28.07	46.92,22.95
path	44.67,21.33	41.65,19.60	40.70,22.17
path	42.87,23.50	41.97,27.26
Follow the path
click Deactivate Final Spirit Wall##214477
Deactivate the Spirit Wall |q 7324/1
step
map Vale of Eternal Blossoms/1
path loop off; dist 5
path	40.92,22.12	41.43,19.67	43.60,21.05
path	46.62,22.98	45.73,28.40	49.52,30.64
Follow the path
click Ancient Guo-Lai Artifact##214394
Get the Ancient Guo-Lai Artifact |q 7324/2
step
talk Anji Autumnlight##58919
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.40,71.60 |or
turnin The Thunder Below##30280 |next "Thunder" |goto Vale of Eternal Blossoms/0 21.40,71.60 |or
|next "start"
step
label "Thunder"
Second Part
map Vale of Eternal Blossoms/0
path loop off; dist 20
path 22.29,26.54
map Vale of Eternal Blossoms/1
path loop off; dist 20
path	52.43,86.40	47.97,80.26	52.56,62.79
path	56.68,47.10	57.46,44.55	58.41,44.64
path	58.22,42.24
Follow the path
|tip Watch for the tile at the end, it switches and will damage you.
|tip Try to jump over it.
Click here to contiue |confirm
step
map Vale of Eternal Blossoms/1
path loop off; dist 5
path	58.57,37.64	56.33,36.14	57.43,32.05
path	60.92,34.24	60.70,35.50	62.27,36.60
path	63.83,32.07	64.79,28.12	63.13,27.12
path	62.54,24.60
Follow the path
click Ancient Guo-Lai Door
|tip Go through the gate.
Click here to continue |confirm
step
map Vale of Eternal Blossoms/1
path loop off; dist 5
path	68.32,24.62	69.83,17.36	64.37,17.14
map Vale of Eternal Blossoms/2
path loop off; dist 5
path	65.47,22.00	62.19,34.62	60.42,47.21
path	65.72,67.54	63.83,74.25	57.92,76.54
kill Milau##64965 |q 30280/1
|tip For this, avoid the black clouds with 3 blue electric balls that appear.
|tip DPS him as fast as you can to avoid the large AoE that he does.
step
talk Anji Autumnlight##58919
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.40,71.60 |or
turnin The Thunder Below##30280 |next "Thunder" |goto Vale of Eternal Blossoms/0 21.40,71.60 |or
step
Complete The Crumbling Hall without taking any damage |achieve 7324/1
Complete The Thunder Below without taking any damage |achieve 7324/2
Click here to return to the start |confirm |next "start"
step
Earn the _"One Step at a Time"_ Achievement |achieve 7324
Click here to go back to the start if you haven't earned the achievement yet |confirm |next "start"
step
label "end"
_Congratulations!_
You have earned the _One Step at a Time_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\One Steppe Forward, Two Steppes Back",{
achieveid={6539},
patch='50004',
description="This guide will walk you through completing the \"One Steppe Forward, Two Steppes Back\" achievement.",
},[[
step
To earn this achievement, you will need to _complete the 5 storylines in Townlong Steppes_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Townlong Steppes (88-89)" guide |confirm |next "Leveling Guides\\Pandaria (10-70)\\Townlong Steppes (25-70)"
Here is a look at your current progress:
Fire Camp Osul |achieve 6539/1
Mistlurkers in the Sumprushes |achieve 6539/2
On Hatred's Path |achieve 6539/3
The Sha of Hatred |achieve 6539/4
Tal Ho's Investigation |achieve 6539/5
step
_Congratulations!_
You have earned the _One Steppe Forward, Two Steppes Back_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Our Powers Combined",{
achieveid={8119},
patch='50200',
description="In the Court of Bones, summon and defeat all of the ancient mogu listed below.",
},[[
step
We suggest you are in a group of at least 2-3 people for this achievement.
You also must have access to Stage 2 or higher on the Isle of Thunder.
|confirm
step
kill Guardian Tak'u##69336
|tip In order to get the first part of this achievement, you will have to attack one of the 4 priests surrounding Guardian Tak'u, but DO NOT kill them.
|achieve 8119/1 |goto Isle of Thunder 60.20,54.00
step
kill Guardian Tak'u##69336
|tip This part of the achievement requires that you kill all 4 priests surrounding Guardian Tak'u. You have 30 seconds from the first attack, so you will need to be quick.
|achieve 8119/2 |goto Isle of Thunder 60.20,54.00
step
Congratulations, you have obtained the _Our Powers Combined_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Over Their Heads",{
achieveid={7316},
patch='50004',
description="Bomb the following targets during the daily quest 'Dark Skies'.",
},[[
step
This achievement requires the quest "Dark Skies" and bombing several NPCs that spawn randomly.
This achievement will likely take at the very least several days to complete.
|confirm
step
talk Xaril the Poisoned Mind##62151
accept Dark Skies##31216 |goto Dread Wastes 54.90,36.20
step
Here is your progress for bombed targets:
Garalon |achieve 7316/1
Wind Lord Mel'Jarak |achieve 7316/2
Blade Lord Ta'yak |achieve 7316/3
Amber Shaper Un'sok |achieve 7316/4
Imperial Vizier Zor'lok |achieve 7316/5
Amber Earthshaker |achieve 7316/6
Amber Rocktunneler |achieve 7316/7
Amber Venomlancer |achieve 7316/8
Dread Ambercrusher |achieve 7316/9
Dread Fearbringer |achieve 7316/10
Essence of Dread |achieve 7316/11
Essence of Fear |achieve 7316/12
Essence of Horror |achieve 7316/13
Essence of Panic |achieve 7316/14
Essence of Terror |achieve 7316/15
|confirm
step
talk Xaril the Poisoned Mind##62151
Talk to Xaril and tell him:  |q 31216/1 |goto Dread Wastes 54.90,36.20
<I am ready to fly, Xaril.> |invehicle
step
At this location, Garalon, Wind Lord Mel'jarak, Blade Lord Ta'yak, Amber-Shaper Un'sok and Imperial Vizier Zor'lok have a chance to spawn.
Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies.
Garalon |achieve 7316/1 |goto Dread Wastes 39.20,34.90
Wind Lord Mel'Jarak |achieve 7316/2 |goto Dread Wastes 39.20,34.90
Blade Lord Ta'yak |achieve 7316/3 |goto Dread Wastes 39.20,34.90
Amber Shaper Un'sok |achieve 7316/4 |goto Dread Wastes 39.20,34.90
Imperial Vizier Zor'lok |achieve 7316/5 |goto Dread Wastes 39.20,34.90
Click here if non are available. |confirm
step
Note that the enemies aren't always available at the nodes provided.
It will likely take
map Dread Wastes
path	39.20,34.90	56.20,45.60	59.10,42.50
path	18.40,38.60	44.70,42.30	61.20,45.60
path	56.10,13.20	51.00,48.40	50.90,20.70
Amber Earthshaker |achieve 7316/6
Amber Rocktunneler |achieve 7316/7
Amber Venomlancer |achieve 7316/8
Dread Ambercrusher |achieve 7316/9
Dread Fearbringer |achieve 7316/10
Essence of Dread |achieve 7316/11
Essence of Fear |achieve 7316/12
Essence of Horror |achieve 7316/13
Essence of Panic |achieve 7316/14
Essence of Terror |achieve 7316/15
|achieve 7316
step
Congratulations, you have earned the _Over Their Heads_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Pay to Slay",{
achieveid={8100},
patch='50200',
description="This guide will walk you through completing the \"Pay to Slay\" achievement.",
},[[
step
For this, you will need to farm _"Shan'ze Ritual Stones"_
They can be obtained from Rare Elites and treasure chests across the Isle of Thunder
These can also be contiained in _"Arcane Troves"_, which are bought from Hiren Loresong with Elder Charm of Good Fortune
|tip You will need 20 Lesser Charm of Good Fortune per Elder Charm of Good Fortune if you are trading.
There are 13 Rare Spawns in the Isle of Thunder to farm for these as well
talk Hiren Loresong##68000
buy Arcane Trove##94219 |goto Isle of Thunder/0 64.70,74.55 |n
collect 3 Shan'ze Ritual Stone##94221| only if itemcount(94221)>=3
step
kill Spirit of Warlord Teng##69471 |achieve 8101/1 |goto Isle of Thunder/0 55.20,87.70
step
_Congratulations!_
You have earned the _Pay to Slay_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Platform Hero",{
achieveid={8114},
patch='50200',
description="Survive for 90 seconds on the pillars in the Swollen Vault.",
},[[
step
goto Isle of Thunder/0 62.30,40.30
Enter the Swollen Vault here |goto Isle of Thunder/0 62.30,40.30 |noway |c
step
Start on this platform, and wait for the safe platforms to get to you.
|tip These platforms have no specific pattern, so you will have to just look at the next open space.
Jump on the safe platforms around this grid for 90 consecutive seconds. |achieve 8114 |goto Isle of Thunder/2 52.80,57.50
step
Congratulations, you have obtained the _Platform Hero_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Proven Strength",{
achieveid={7297},
patch='50004',
description="This guide will walk you through obtaining the Proven Strength Achievement.",
},[[
step
For this achievement you must be at least _Revered_ with _The Shado-Pan_.
Click here to go to the Reputations guide to gain reputation with _The Shado-Pan_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Shado-Pan_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if ZGV.guidesets['DailiesHMOP']
|confirm |next |only if default
|only if rep("Shado-Pan")<Revered
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
Click here if this quest is unavailable today |confirm
step
talk Chao the Voice##62550
Tell her you're here to challenge her! |q 31127/1 |goto Townlong Steppes 49.70,70.50
|only if haveq(31127)
step
talk Chao the Voice##63125
Let's do this.
Defeat Chao the Voice |q 31127/2 |goto Townlong Steppes 50.10,68.30
|only if haveq(31127)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
|only if haveq(31127)
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.40,70.60
Click here if this quest is unavailable today |confirm
step
talk Lao-Chin the Iron Belly##62978
I'm here to challenge you! |q 31128/1 |goto Townlong Steppes 49.30,72.00
step
talk Lao-Chin the Iron Belly##63135
All right, let's do this!
Defeat Lao-Chin the Iron Belly |q 31128/2 |goto Townlong Steppes 50.60,67.80
|only if haveq(31128)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.60,70.50
|only if haveq(31128)
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
|only if rep('Shado-Pan')>=Honored
Click here if this quest is unavailable today |confirm
step
talk Snow Blossom##62380
Ask her to meet in the Challenger's Ring. |q 31038/1 |goto Townlong Steppes 48.90,70.10
|only if haveq(31038)
step
talk Snow Blossom##62834
I challenge you!
Defeat Snow Blossom |q 31038/2 |goto Townlong Steppes 50.20,67.90
|only if haveq(31038)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
|only if haveq(31038)
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
|only if rep('Shado-Pan')>=Revered
Click here if this quest is unavailable today |confirm
step
talk Yalia Sagewhisper##62303
Ask her to meet you in the Challenger's Ring. |q 31104/1 |goto Townlong Steppes 48.90,70.00
|only if haveq(31104)
step
talk Yalia Sagewhisper##62850
I challenge you!
Defeat Yalia Sagewhisper |q 31104/2 |goto Townlong Steppes 50.40,67.70
|only if haveq(31104)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
|only if haveq(31104)
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
|only if rep('Shado-Pan')>=Revered
Click here if this quest is unavailable today |confirm
step
talk Tenwu of the Red Smoke##63616
Ask him to meet you in the Challenger's Ring. |q 31221/1 |goto Townlong Steppes 48.90,71.20
|only if haveq(31221)
step
talk Tenwu of the Red Smoke##64471
Let's see if you can back that talk up.
Defeat Temwu of the Red Smoke |q 31221/2 |goto Townlong Steppes 50.60,68.50
|only if haveq(31221)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
|only if haveq(31221)
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
|only if rep('Shado-Pan')>=Honored
Click here if this quest is unavailable today |confirm
step
talk Hawkmaster Nurong##63618
Ask him to meet you in the Challenger's Ring. |q 31220/1 |goto Townlong Steppes 49.00,70.90
|only if haveq(31220)
step
talk Hawkmaster Nurong##64470
Let's go!
Defeat Hawkmaster Nurong |q 31220/2 |goto Townlong Steppes 50.70,68.20
|only if haveq(31220)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
|only if haveq(31220)
step
|achieve 7297
step
Congratulations, you have earned the Proven Strength achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Rally the Valley",{
achieveid={6301},
patch='50004',
description="This guide will walk you through completing the \"Rally the Valley\" achievement.",
},[[
step
To earn this achievement, you will need to _complete the 10 storylines in Valley of the Four Winds_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Krasarang Wilds (86-87)" guide |confirm |next "Leveling Guides\\Pandaria (10-70)\\Valley of the Four Winds (15-70)"
Here is a look at your current progress:
Thunderfoot Fields |achieve 6301/1
Mudmug's Place |achieve 6301/2
Chen's Masterpiece |achieve 6301/3
The Stormstout Brewery |achieve 6301/4
The Hidden Master |achieve 6301/5
Nesingwary's Safari |achieve 6301/6
step
_Congratulations!_
You have earned the _Rally the Valley_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Ready for RAAAAIIIIDDD?!?ing",{
achieveid={8107},
patch='50200',
description="Crush 200 Ihgaluk Roaches within 1 minute",
},[[
step
For this achievement, you must run over 200 roaches in Ihgaluk within 1 minute. It is recommended that you have multiple people with you when attempting this achievement
|confirm
step
Start from here, and run over any cockroaches on the ground. Be sure to avoid enemies so you don't get killed while attempting this!
You can also start from [52.10,81.40]
Crush 200 Ihgaluk Roaches within 1 minute |achieve 8107/1 |goto Isle of Thunder/0 51.70,78.80
step
Congratulations, you have achieved the _Ready for RAAAAIIIIDDD?!?ing_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Ready for Raiding III",{
achieveid={7319},
patch='50004',
description="Complete the following survival ring challenges without taking any damage.",
},[[
step
For this achievement you will need to survive both the _Survival Ring: Blades_ and Survival Ring: Flame_ daily quests for 90 seconds without taking damage.
This achievement requires that you be _Revered_ with the _Golden Lotus_ faction.
Click here to do the PreQuests or if you've completed the PreQuests, move on to the achievement. |confirm
step
Routing to Proper Section |next "golden2" |only if not completedq(30638)
Routing to proper Section |next "achieve" |only if completedq(30638)
step
label "golden2"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.00,94.20
step
talk Sunwalker Dezco##64542
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.70,43.00
accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
step
Talk to Xuen |q 31395/1
kill Spirit of Violence##64656
Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Hatred##64742
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.90,42.80
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
accept A Witness to History##31511 |goto Kun-Lai Summit 68.70,43.00
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.00,91.40
step
talk Madam Vee Luo##62996
accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.30,48.90
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.10,91.60
step
talk Madam Vee Luo##62996
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.20,49.00
step
label "achieve"
You will have two people coming from the sides as well as two coming straight ahead of you.
Simply side step with the forward guys come at you and step forward when the guys from the side are coming at you.
Use our _Golden Lotus_ Daily guide to see if _Survival Ring: Blades_ and Survival Ring: Flame_ are available.
|achieve 7319 |goto Vale of Eternal Blossoms 19.80,68.00
step
Congratulations, you have earned the _Ready For Raiding 3_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Roll Club",{
achieveid={7322},
patch='50004',
description="Complete the Serpent Spine roll course in 70 seconds or less.",
},[[
step
This achievement requires that you be _Revered_ with the _Golden Lotus_ faction.
Also, it's important to keep in mind that completing this daily once will give you the ability to try multiple times.
|confirm
step
Routing to Proper Section |next "golden2" |only if not completedq(30638)
Routing to proper Section |next "achieve" |only if completedq(30638)
step
label "golden2"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.00,94.20
step
talk Sunwalker Dezco##64542
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.70,43.00
accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
step
Talk to Xuen |q 31395/1
kill Spirit of Violence##64656
Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Hatred##64742
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.90,42.80
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
accept A Witness to History##31511 |goto Kun-Lai Summit 68.70,43.00
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.00,91.40
step
talk Madam Vee Luo##62996
accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.30,48.90
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.10,91.60
step
talk Madam Vee Luo##62996
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.20,49.00
step
label "achieve"
talk Kelari Featherfoot##58704 |goto Vale of Eternal Blossoms 18.20,63.60
Select _Let's roll_ to initiate.
You will need to memorize the track as best as you can for this achievement.
You will want to utilize your ability to jump whenever you need to and hit the _first 10 Speed Boosts_ you come across.
Avoid all oil slicks if when possible.
|achieve 7322
step
Congratulations, you have earned the _Roll Club_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Savior of Stoneplow",{
achieveid={7502},
patch='50004',
description="Defeat the Ik'Thik Colossus.",
},[[
#include "Marista_Hub"
step
Earn the Savior of Stoneplow achievement. |achieve 7502
step
Congratulations, you have earned the _Savior of Stoneplow_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Shadow Hopper",{
achieveid={7289},
patch='50004',
description="This guide will walk you through obtaining the Shadow Hopper achievement.",
},[[
step
In order to complete this achievement, you must be at least _Revered_ with the _Order of the Cloud Serpent_
step
Routing to proper section |next "dailies" |only if completedq(30142)
Routing to proper section |next "pre" |only if not completedq(30142)
step
label "pre"
#include "CS_PreQuests"
step
label "dailies"
This achievement requires you to be _Revered_ with _The Order of the Cloud Serpent_
In order to become Revered with the Order of the Cloud Serpent, refer to the Zygor Guides Reputation section
confirm |next |only if rep("Order of the Cloud Serpent")<Revered and not ZGV.guidesets['ReputationsHMOP']
confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent" |only if rep("Order of the Cloud Serpent")<Revered and ZGV.guidesets['ReputationsHMOP']
only if rep("Order of the Cloud Serpent")<Revered
step
talk Elder Anli##58564
Tell her you want to practice playing catch with a baby serpent
collect 1 Bouncy Ball##79043 |goto The Jade Forest 57.70,44.90
step
Go to the open area provided |goto The Jade Forest 57.30,43.90
Click the Bouncy Ball in your bags |use Bouncy Ball##79043
Run to the shadows that the ball creates as you juggle it. It will take a while to get 25 catches in a row
|tip The bounces from the baby serpent don't count for you.
Juggle a bouncy ball with a baby serpent 25 consecutive times |achieve 7289
step
Congratulations, you have earned the Shadow Hopper achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Silent Assassin",{
achieveid={7307},
patch='50004',
description="Complete a full set of Shado-Pan Wu Kao daily quests while only killing the exact number of mantid required.",
},[[
step
In order to earn this achievement, you will need to kill an exact number of enemies that a quest tells you to, and then turn in the quest.
Click here in order to be directed to prequests or the achievement. |confirm
step
label "achieve"
In order to earn this achievement, you will need to complete a set of Wu Kao Shado-Pan dailies without killing more than the required amount of enemies.
The following quests count torwards the achievement:
_A Morale Victory_
_The Bigger They Come..._
_Sra'vess Wetwork_
_Fumigation_
_Target of Opportunity: Sra'thik Swarmlord_
_Friends, Not Food!_
Once you complete the quest _REMEMBER TO DISMOUNT_ before turning either of the quests in.
Click here to go to the Reputations guide to attempt this achievement. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to attempt this achievement. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies" |only if ZGV.guidesets['DailiesHMOP']
|achieve 7307
step
Congratulations, you have earned the _Silent Assassin_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Slum It in the Summit",{
achieveid={6538},
patch='50004',
description="This guide will walk you through completing the \"Slum It in the Summit\" achievement.",
},[[
step
To earn this achievement, you will need to _complete the 10 storylines in Kun-Lai Summit_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Kun-Lai Summit (87-88)" guide |confirm |next "Leveling Guides\\Pandaria (10-70)\\Kun-Lai Summit (20-70)"
Here is a look at your current progress:
Eastwind Rest |achieve 6538/1
The Yaungol Invasion |achieve 6538/2
Inkgill Mere |achieve 6538/3
The Yak Wash |achieve 6538/4
The Burlap Trail |achieve 6538/5
Kota Peak |achieve 6538/6
The Thunder King |achieve 6538/7
Temple of the White Tiger |achieve 6538/8
Zouchin Village |achieve 6538/9
The Shado-Pan |achieve 6538/10
step
_Congratulations!_
You have earned the _Slum It in the Summit_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Speed Metal",{
achieveid={8115},
patch='50200',
description="Defeat Metal Lord Mono-Han with 10 stacks of Power Surge.",
},[[
step
In order to get this achievement, you must have access to stage 4 of the _Isle of Thunder_.
Your realm is currently {thunderprogress()}% into Stage {thunderstage()}
This achievement will require you to be in a group of at least 2-3 players, as you must kill the mobs required very quickly.
|confirm
step
kill Shan'ze Electrocutioner##69216+
Obtain 10 stacks of _Power Surge_.
kill Metal Lord Mono-Han##69326 |goto Isle of Thunder 53.60,30.80
|tip You may have to refresh the buff during the fight by killing another _Shan'ze Electrocutioner_ before the 2 minute buff is gone.
|achieve 8115
step
Congratulations, you have achieved the _Speed Metal_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Spreading the Warmth!",{
achieveid={7321},
patch='50004',
description="Kill 60 Krik'Thik hivlings with a single Shadow Pan touch.",
},[[
step
Routing to proper section |next "achieve" |only if rep("Golden Lotus")>=Revered
Routing to proper section |next "revered" |only if rep("Golden Lotus")<Revered and completedq(30638)
Routing to proper section |next "golden2" |only if rep("Golden Lotus")<Revered and not completedq(30638)
step
label "golden2"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.00,94.20
step
talk Sunwalker Dezco##64542
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.70,43.00
accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
step
Talk to Xuen |q 31395/1
kill Spirit of Violence##64656
Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Hatred##64742
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.90,42.80
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
accept A Witness to History##31511 |goto Kun-Lai Summit 68.70,43.00
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.00,91.40
step
talk Madam Vee Luo##62996
accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.30,48.90
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.10,91.60
step
talk Madam Vee Luo##62996
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.20,49.00
step
label "revered"
For this achievement you must be at least _Revered_ with _The Golden Lotus_.
Click here to go to the Reputations guide to gain reputation with _The Golden Lotus_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Golden Lotus_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies" |only if ZGV.guidesets['DailiesHMOP']
You will need to continue through the dailies with _Golden Lotus_ to get your reputation to _Revered_. |only if default
|confirm |next |only if default
step
label "achieve"
You will be looking for a quest called _Mantid Under Fire_ in our _Golden Lotus Daily_ guide.
If it's not available, you will need to try again another day.
|confirm
step
talk Kun Autumnlight##58920
accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms 21.40,71.50
step
clicknpc Hot Oil Cauldron##64369 |goto Vale of Eternal Blossoms 3.90,51.70
To earn this achievement, use your skill attatched to the number 1 key to coat the Krik'thik Hivelings in oil.
Use this ability on several groups.
Once you have done so, use your skill attatched to the number 2 key to ignite them.
|achieve 7321
Kill 80 Krik'thik Hivelings |q 30243/1 |goto Vale of Eternal Blossoms 3.90,51.70
step
Congratulations, you have earned the _Spreading the Warmth_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Stay Klaxxi",{
achieveid={7313},
patch='50004',
description="Complete 5 Klaxxi daily quests with each of the following buffs.",
},[[
step
In order to earn this achievement, you will need to have unlocked the _Klaxxi Dailies_ via The Dread Wastes leveling guide.
|confirm
step
Here is your current progress with the achievement:
Angel of Death, from Kil'ruk the Wind-Reaver |achieve 7313/1
Master of Puppets, from Kaz'tik the Manipulator |achieve 7313/2
Painkiller, from Korven the Prime |achieve 7313/3
Seek and Destroy, from Hisek the Swarmkeeper  |achieve 7313/4
Raining Blood, from Xaril the Poisoned Mind |achieve 7313/5
Iron Mantid, from Malik the Unscathed |achieve 7313/6
Silent Lucidity, from Iyyokuk the Lucid |achieve 7313/7
Speed King, from Ka'roz the Locust  |achieve 7313/8
Children of the Grave, Rik'kal the Dissector |achieve 7313/9
Battle Hymn, from Skeer The Bloodseeker |achieve 7313/10
You will need to complete 5 dailies while having several different offensive and defensive buffs.
map Dread Wastes
path	54.30,36.10	54.80,36.20	54.90,36.20
path	54.60,36.00	54.40,35.80	54.40,36.20
path	54.20,35.80	55.00,35.80
Use the provided coordinates to find the cooresponding NPCs.
Click here to go to the Reputations guide to gain reputation with _The Klaxxi_. |confirm |next "Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
Click here to go to the Dailies guide to gain reputation with _The Klaxxi_. |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies" |only if ZGV.guidesets['DailiesHMOP']
Complete 5 dailies with one buff.
step
Congratulations, you have earned the _Stay Klaxxi_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Stormbreaker",{
achieveid={8121},
patch='50200',
keywords={"Stormbreaker"},
description="This guide will walk you through completing the \"Stormbreaker\" achievement.",
},[[
step
Reference our _"Isle of Thunder"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Isle of Thunder"
Isle of Thunder |achieve 8121/1
step
Reference our _"It Was Worth Every Ritual Stone"_ guide to earn this achievement |confirm |next
Earn the "It Was Worth Every Ritual Stone" Achievement |achieve 8121/2
step
Reference our _"Thunder Plunder"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Thunder Plunder"
Thunder Plunder |achieve 8121/3
step
Reference our _"The Crumble Bundle"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\The Crumble Bundle"
The Crumble Bundle |achieve 8121/4
step
Reference our _"Ready for RAAAAIIIIDDD?!ing"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Ready for RAAAAIIIIDDD?!?ing"
Ready for RAAAAIIIIDDD?!ing |achieve 8121/5
step
Reference our _"When in Ihgaluk, Do as the Skumblade Do"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\When in Ihgaluk, Do as the Skumblade Do"
When in Ihgaluk, Do as the Skumblade Do |achieve 8121/6
step
Reference our _"The Mogu Have Gotta Go-gu"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\The Mogu Have Gotta Go-gu"
Earn the "The Mogu Have Gotta Go-gu" Achievement |achieve 8121/7
step
Reference our _"This Isn't Even My Final Form"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\This Isn't Even My Final Form"
Earn the "This Isn't Even My Final Form" Achievement |achieve 8121/8
step
Reference our _"Blue Response"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Blue Response"
Earn the "Blue Response" Achievement |achieve 8121/9
step
Reference our _"Platform Hero"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Platform Hero"
Earn the "Platform Hero" Achievement |achieve 8121/10
step
Reference our _"Speed Metal"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Speed Metal"
Earn the "Speed Metal" Achievement |achieve 8121/11
step
Reference our _"You Made Me Bleed My Own Blood"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\You Made Me Bleed My Own Blood"
Earn the "You Made Me Bleed My Own Blood" Achievement |achieve 8121/12
step
Reference our _"For the Ward!"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\For the Ward!"
Earn the "For the Ward!" Achievement |achieve 8121/13
step
Reference our _"Boop"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Boop"
Earn the "Boop" Achievement |achieve 8121/14
step
Reference the _"Our Powers Combined"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Our Powers Combined"
Earn the "Our Powers Combined" Achievement |achieve 8121/15
step
Reference our _"Direhorn in a China Shop"_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Direhorn in a China Shop"
Earn the "Direhorn in a China Shop" Achievement |achieve 8121/16
step
Reference our _"Zandalari Library Card "_ guide to earn this achievement |confirm |next "Achievement Guides\\Quests\\Mists of Pandaria\\Zandalari Library Card"
Earn the "Zandalari Library Card" Achievement |achieve 8121/17
step
_Congratulations!_
You have earned the _One Step at a Time_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Test Drive",{
achieveid={7314},
patch='50004',
description="Grow a Kunchong to full size and take it on a rampage.",
},[[
step
In order to unlock the dailies required for this achievement, you will need to complete the _Dread Wastes_ Leveling guide.
Click here to be taken to the Dread Wastes leveling guide to work on this achievement. |confirm |next "Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)" |only if ZGV.guidesets['LevelingAMOP']
|confirm
|only if not completedq(31359)
step
talk Kaz'tik the Manipulator##63758
accept Rampage Against the Machine##31808 |goto Dread Wastes 54.30,35.80
step
clicknpc Kovok##63765
Locate Kovok |q 31808/1 |goto Dread Wastes 50.80,41.30
Use the abilities on your hotbar to complete your task.
kill Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
Kill 200 Mantid |q 31808/2 |goto Dread Wastes 50.80,41.30
|only if haveq(31808)
step
talk Kaz'tik the Manipulator##63758
turnin Rampage Against the Machine##31808 |goto Dread Wastes 54.30,35.80
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\These Mogu Have Gotta Go-gu",{
condition_end=function() return achieved(8109) end,
achieveid={8110,8109},
patch='50200',
description="In the Court of Bones, summon and defeat all of the ancient mogu listed below.",
},[[
step
We suggest you are in a group of at least 2 people for this achievement.
|confirm
step
kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+, Risen Ancestor##69237+
collect Incantation of Vu##95350 |goto Isle of Thunder 35.50,52.30
step
Use the Incantation of Vu in your bags |use Incantation of Vu##95350
kill Sparkmancer Vu##69961+ |goto Isle of Thunder/0 38.50,54.90
step
kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+, Risen Ancestor##69237+
collect Incantation of Deng##94233 |goto Isle of Thunder 35.50,52.30
step
Use the Incantation of Deng in your bags |use Incantation of Deng##94233
kill Forgemaster Deng##69809+ |goto Isle of Thunder/0 38.70,58.20
step
kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+, Risen Ancestor##69237+
collect Incantation of Haqin##94130 |goto Isle of Thunder 35.50,52.30
step
Use the Incantation of Haqin in your bags |use Incantation of Haqin##94130
kill Haqin of the Hundred Spears##69800+ |goto Isle of Thunder/0 38.80,59.30
step
Congratulations, you have achieved the _These Mogu Have Gotta Go-gu_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\This Isn't Even My Final Form",{
achieveid={8111},
patch='50200',
description="Enjoy the effects of a Zandalari Potion and the Mighty Loa buff at the same time.",
},[[
step
kill Drakkari God-Hulk##69200+
Immediately after killing the _Drakkari God-Hulk_, drink the _Zandalari Potion_ next to you on the table.
|achieve 8111 |goto Isle of Thunder/0 35.00,70.00
step
Congratulations, you have obtained the _This Isn't Even My Final Form_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Thunder Plunder",{
achieveid={8104},
patch='50200',
description="Find a Trove of the Thunder King",
},[[
step
click Trove of the Thunder King##218593
Loot from a Trove of the Thunder King |achieve 8104 |goto Isle of Thunder/0 48.00,82.20
step
Congratulations, you have achieved the _Thunder Plunder_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Till the Break of Dawn",{
achieveid={7293},
patch='50004',
description="This guide will walk you through obtaining the Green Acres Achievement.",
},[[
step
#include "Tillers_Quests"
step
label "cheevo"
From here you will have to continue planting and harvesting crops daily to work up to 100
Start each day out by harvesting the crops from the previous day
confirm
step
talk Merchant Greenfield##58718
Buy any seeds you wish to plant today |goto Valley of the Four Winds 52.90,52.10
Plant as many crops as your farm can hold. Each crop harvest will work toward this achievement, so be sure to do this daily
Successfully harvest 100 crops |achieve 7293/1
Click here to go back to the beginning of the crop section. |next "cheevo" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Upjade Complete",{
achieveid={6534},
patch='50004',
description="This guide will walk you through completing the \"Upjade Complete\" achievement.",
},[[
step
To earn this achievement, you will need to _complete the 12 storylines in the Jade Forest_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Jade Forest (85-86)" guide |confirm |next "Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)"
Here is a look at your current progress:
The Remains of Hellscream's Flat |achieve 6534/1
First Contact |achieve 6534/2
Strange Bedfellows |achieve 6534/3
Grookin Hill |achieve 6534/4
Dawn's Blossom |achieve 6534/5
Greenstone Quarry |achieve 6534/6
The Temple of the Jade Serpent|achieve 6534/7
Tian Monastery |achieve 6534/8
Terrace of Ten Thunders |achieve 6534/9
Nectarbreeze Orcahrd |achieve 6534/10
The Battle for the Forest |achieve 6534/11
Overcoming Doubt |achieve 6534/12
step
_Congratulations!_
You have earned the _Upjade Complete_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\When in Ihgaluk, Do as the Skumblade Do",{
achieveid={8108},
patch='50200',
description="/bow before the following forms of Kroshik.",
},[[
step
This achievement requires that you visit _Ihgaluk Crag_ multiple times over several days, as the phases of _Kroshik_ change at certain increments.
|confirm
step
Kroshik is a level 90 Elite egg. /bow before him. |goto Isle of Thunder/0 51.30,71.10
|tip The egg is in the mouth of a skull at the top of the mountain.
|achieve 8108/1
Click here if he is not currently in this form. |confirm
step
Kroshik is a level 90 Elite baby dinosaur that wanders around this area. /bow before him.
|achieve 8108/2 |goto Isle of Thunder/0 50.90,74.60
Click here if he is not currently in this form. |confirm
step
Kroshik is a level 90 Elite dinosaur that wanders around this area. /bow before him.
|achieve 8108/3 |goto Isle of Thunder/0 49.70,82.50
Click here if he is not currently in this form. |confirm
step
Kroshik is a level 90 Elite dinosaur. /bow before him.
|tip He will be dead during this phase, so don't worry when you see him.
|achieve 8108/4 |goto Isle of Thunder/0 54.90,88.00
Click here if he is not currently in this form. |confirm
step
Obtain the When in Ihgaluk Crag, Do as the Skumblade Do achievement |achieve 8108
Click here to go back to the beginning of this guide. |only if not achieved(8108)
step
Congratulations, you have obtained the _When in Ihgaluk Crag, Do as the Skumblade Do_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Yak Attack",{
achieveid={7288},
patch='50004',
description="This guide will walk you through obtaining the Yak Attack achievement.",
},[[
step
To earn this achievement, you will need to do dailies for the _August Celestials_.
While going through the dailies, you will want to look for a specific phase of Niuzao to complete the achievement.
|tip If you go to the location and he's not running around, you will have to come back again tomorrow.
The daily quest _The Siege Swells_ will be available and there will be more invaders than usual.
Please note that if the dailies at Niuzao Temple aren't offered, you won't be able to complete this achievement.
confirm
step
Round up as many mobs as you can, and tag them all by damaging each at least once.
Hold out as long as you can untill Niuzao rushed through them, killing them all
Kill 15 Sra'thik Attackers in 5 seconds |achieve 7288 |goto Townlong Steppes 41.80,58.10
step
Congratulations, you have earned the Yak Attack achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\You Made Me Bleed My Own Blood",{
achieveid={8116},
patch='50200',
description="Kill Fleshcrafter Hoku without killing any of the Possessed Blood that spawns during the fight.",
},[[
step
For this achievement, you will likely need to have at least 2 people who have _Heroic Level Dungeon Gear_.
|confirm
step
kill Fleshcrafter Hoku##69435+ |goto Isle of Thunder/0 55.50,38.50
|tip Do not kill any of the Possessed Blood that spawn throughout this fight. Avoid AoE spells to make sure you don't kill them.
step
Kill Fleshcrafter Hoku withouth killing any Possessed Blood |achieve 8116
step
Congratulations, you have obtained the _You Made Me Bleed My Own Blood_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Zandalari Library Card",{
achieveid={8212},
patch='50200',
description="Loot the rare books listed from Zandalari trolls on the Isle of Thunder",
},[[
step
In order to attain thi, you will need to grind mobs in Zu'Tual on the Isle of Thunder.
|confirm
step
kill Zandalari Stoneshield##69223+, Zandalari Jaguar Warrior##69171+, Zandalari Commoner##69170+, Zandalari Beastcaller##69065+
collect 1 Iron-Bound Zandalari Journal##95409 |achieve 8212/1 |goto Isle of Thunder/0 35.00,73.30
collect 1 Blood-Spattered Zandalari Journal##95410 |achieve 8212/2 |goto Isle of Thunder/0 35.00,73.30
collect 1 Torn Zandalari Journal##95411 |achieve 8212/3 |goto Isle of Thunder/0 35.00,73.30
collect 1 Frayed Zandalari Journal##95412 |achieve 8212/4 |goto Isle of Thunder/0 35.00,73.30
collect 1 Waterlogged Zandalari Journal##95408 |achieve 8212/5 |goto Isle of Thunder/0 35.00,73.30
step
Obtain the Zandalari Library Card achievement |achieve 8212
step
Congratulations, you have obtained the _Zandalari Library Card_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Loremaster of Pandaria",{
achieveid={6541},
patch='50004',
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Pandaria Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Jade Forest Quests |achieve 6534 |loadguide "Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)"
Valley of the Four Winds Quests |achieve 6301 |loadguide "Leveling Guides\\Pandaria (10-70)\\Valley of the Four Winds (15-70)"
Townlong Steppes Quests |achieve 6539 |loadguide "Leveling Guides\\Pandaria (10-70)\\Townlong Steppes (25-70)"
Dread Wastes Quests |achieve 6540 |loadguide "Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)"
Krasarang Wilds Quests |achieve 6536 |loadguide "Leveling Guides\\Pandaria (10-70)\\Krasarang Wilds (15-70)"
Kun-Lai Summit Quests |achieve 6538 |loadguide "Leveling Guides\\Pandaria (10-70)\\Kun-Lai Summit (20-70)"
step
Congratulations, you have _earned_ the _Loremaster of Pandaria_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Mists of Pandaria\\Dominance Offensive",{
achieveid={8206},
patch='50200',
description="Become exalted with the Dominance Offensive",
},[[
step
For this achievement, you must become _Exalted_ with the _Dominance Offensive_.
|confirm
step
Click the quest discovered box under your minimap.
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms 61.50,19.80
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds 8.70,64.40
step
talk Garrosh Hellscream##62092
accept The Might of the Warchief##32250 |goto Krasarang Wilds 8.70,64.40
step
kill Alliance Sentinel##67900+, Alliance Footman##+, Alliance Priest##+
Kill 25 Alliance troops |q 32250/1 |goto Krasarang Wilds 10.00,64.10
step
talk Blood Guard Gro'tash##67927
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds 10.70,53.20
step
talk Grizzle Gearslip##67926
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds 15.70,57.80
step
Next to you
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250
accept Domination Point##32108
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds 8.50,63.80
step
From this point, you will have to do dailies and other quests in Domination Point to achieve _Exalted_.
|tip You can use Zygor's Reputations or Dailies guides for assistance with these quests.
|confirm
step
Reach Exalted with Dominance Offensive |achieve 8206
step
Congratulations, you have obtained the _Dominance Offensive_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Mists of Pandaria\\Sunreaver Onslaught",{
achieveid={8209},
patch='50200',
description="Become exalted with the Sunreaver Onslaught",
},[[
step
'For this achievement, you must become _Exalted_ with the _Sunreaver Onslaught_.
|confirm
step
Click the quest discovered box under your minimap.
accept Thunder Calls##32678 |goto Vale of Eternal Blossoms 61.50,19.80
step
talk Scout Captain Elsia##70358
turnin Thunder Calls##32678 |goto Townlong Steppes 50.80,73.40
accept The Storm Gathers##32680 |goto Townlong Steppes 50.80,73.40
step
talk Scout Captain Elsia##70358
Tell her you're ready to go. |q 32680/1 |goto Townlong Steppes 50.80,73.40
Discover the Isle of Thunder |q 32680/2 |goto Townlong Steppes 50.80,73.40
step
talk Lor'themar Theron##67990
turnin The Storm Gathers##32680 |goto Isle of Thunder 28.40,52.40
accept Allies in the Shadows##32709 |goto Isle of Thunder 28.40,52.40
step
talk Taran Zhu##70160
turnin Allies in the Shadows##32709 |goto Isle of Thunder 51.40,46.20
step
From this point, you will have to do dailies and other quests on the Isle of Thunder to achieve _Exalted_.
|tip You can use Zygor's Reputations or Dailies guides for assistance with these quests.
|confirm
step
Reach Exalted with Sunreaver Onslaught |achieve 8209
step
Congratulations, you have obtained the _Sunreaver Onslaught_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\A Brewing Storm",{
achieveid={7252},
patch='50004',
description="This guide will walk you through the A Brewing Storm Achievement.",
},[[
step
Use the _Dungeon Finder_, and click the _Scenarios_ tab to queue for _A Brewing Storm_.
|confirm
step
talk Brewmaster Blanche##58740
Let's get this lightning party started, Blanche.
Defend the Brewing Process
|tip Click on the Brewkegs when they light on fire to extinguish them. Avoid standing near the lightning rods when they light up.
clicknpc Brewkeg##58916 |goto A Brewing Storm 55.30,45.00
|confirm
step
talk Brewmaster Blanche##58740 |goto A Brewing Storm 55.30,44.90 |n
Escort Blanche to [49.90,32.60] |goto A Brewing Storm 49.90,32.60 <5 |c
step
talk Brewmaster Blanche##58740
Let's kill some lizards, Blanche!
kill Borokhula the Destroyer##58739 |goto A Brewing Storm 30.20,68.30
|tip Borokhula will start to cast Swamp Smash in front of him, do not stand in it. When he begins to channel Earth Shattering, watch the ground and avoid the red circles, large spikes will come out of them. Designate one party member to add control. The adds can be quickly dispatched using the Boomer Brew Strike button on the screen, target an add and click it twice to instantly kill it.
|achieve 7252
step
Congratulations, you have earned the A Brewing Storm Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Accelerated Archaeology",{
dungeon=937,
achieveid={8319},
patch='50300',
description="Pick up 3 special artifacts in the Dark Heart scenario.",
},[[
step
talk Grizzle Gearslip##70956 |goto Dark Heart of Pandaria 53.20,67.50
scenariogoal 23071 |or
scenariostage 1 |or
step
kill Earthborn Hatred##70822+ |goto Dark Heart of Pandaria/0 50.10,53.30
kill Fiery Anger##70824+ |goto Dark Heart of Pandaria/0 50.10,53.30
Kill these enemies until the tan bar disappears and Urtharges' shield breaks.
kill Urtharges the Destroyer##70959+ |goto Dark Heart of Pandaria/0 50.10,53.30
scenariogoal 23236 |or
scenariostage 2 |or
step
In the work zone area with the Elementals:
Run around collecting artifacts until you collect 3 gold artifacts.
|tip They are boxes and items marked with a small beam of light. The gold ones are more valuable and can create a combo making the gathering go by faster.
|achieve 8319
step
Congratulations, you have completed the _Accelerated Archaeology_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Arena of Annihilation",{
achieveid={7271},
patch='50004',
description="This guide will help you earn the Arena of Annihilation Achievement. You must be level 90 for this achievement.",
},[[
step
talk Gurgthock##63315
accept The Arena of Annihilation##31207 |goto Proving Grounds 46.60,16.10
step
click Tiger Temple Gong
kill Scar-Shell##63311 |goto Proving Grounds 48.90,17.10
|tip Crushing Bite reduces the armor of whomever it hits by 50%. Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
|confirm
step
click Tiger Temple Gong
kill Jol'Grum##63312 |goto Proving Grounds 48.90,17.10
|tip Whoever is holding the attention of Jol'Grum should remain still. The tank moving causes his rage bar to build. If the bar reaches 100, he will become Angry. This is a light enrage. He will cast Headbutt on the tank which knocks them back. He will also jump to the middle and use Smash, knocking all players back.
|confirm
step
click Tiger Temple Gong
kill Little Liuyang##63313 |goto Proving Grounds 48.90,17.10
|tip Liuyang will constantly shoot off Fireballs and paths of fire. Avoid stand in fire. At around 40%, Firewall will be cast. Run counter-clockwise while killing the Flmecoaxig Spirits. Kill them will cause a section of the firewall to vanish. There are three of them.
kill Flamecoaxing Spirit##63539 |goto Proving Grounds 48.90,17.10
|confirm
step
click Tiger Temple Gong
kill Chagan Firehoof##63318 |goto Proving Grounds 48.90,17.10
|tip He will use Trailblaze on a random player, this leaves fire on the ground. Hammertime does damage to whomever is tanking.
kill Batu##63872 |goto Proving Grounds 48.90,17.10
|tip There is no real benefit to killing Batu, just ignore him until and kill Chagan.
|confirm
step
click Tiger Temple Gong
kill Satay Byu##64281 |goto Proving Grounds 48.90,17.10
|tip Satay Byu will apply Slowing Poison with his basic attacks. If Slowing Poison reaches 20 stacks it will root the target in place. Speed of the Jinja will rapidly strike in front of Satay, run away from this.
step
talk Wodin the Troll-Servant##63314
turnin The Arena of Annihilation##31207 |goto Proving Grounds 50.10,18.10
|achieve 7271
step
Congratulations, you have earned the Arena of Annihilation Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Beat the Heat",{
achieveid={7273},
patch='50004',
description="This guide will walk you through defeating Little Liuyang without anyone taking damage from a Flame Wall in the Arena of Annihilation scenario.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Arena of Annihilation._"
Enter the A Little Patience scenario |goto Proving Grounds/1 46.00,51.30 |noway |c
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Scar-Shell##63311 |c
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Jol'Grum##63312 |c
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Little Liuyang##63313
Avoid his flame wall at all costs during this fight |achieve 7273
step
Congratulations, you have earned the Beat the Heat achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Binan Village All-Star",{
dungeon=884,
achieveid={6931},
patch='50004',
description="This achievement takes place entirely in the scenario Brewmoon Festival.",
},[[
step
label "start"
_Starting in Stage 2_, you will be able to earn each one of these achievements.
There are 6 defenses in this area for you to activate. Once you have activated each defense, you will complete this achievment.
Click on the defense below that is available.
|tip You can only activate one defense per run.
talk Briaw Shan##63922 |goto Brewmoon Festival 44.90,65.80
Click here if you see _Briaw Shan_ in this spot|confirm |next "briaw"
talk Vale Marksman##63952 |goto Brewmoon Festival 43.60,62.60
Click here if you see sleeping _Vale Marksman_ in this spot |confirm |next "vale"
|clicknpc Krasarang Wild Brew##63929 |goto Brewmoon Festival 43.90,71.40
Click here if you see a keg of _Wild Brew_ in this spot |confirm |next "wild"
talk Derpa Derpa##64017 |goto Brewmoon Festival 44.00,68.70
Click here if you see _Derpa Derpa_ in this spot |confirm |next "derpa"
|clicknpc Fireworks Barrel##63931 |goto Brewmoon Festival 44.00,68.70
Click here if you see sleep a _Barrel of Fireworks_ in this spot|confirm |next "fireworks"
step
label "briaw"
talk Briaw Shan##63922 |goto Brewmoon Festival 44.90,65.80
He will give you an ability to throw Brew Kegs. These will deal a lot of damage after a short period of time. |achieve 6931/1
|next "achieve"
step
label "vale"
talk Vale Marksman##63952 |goto Brewmoon Festival 43.60,62.60
After talking with the Marksman, you can fight as normal. They will shoot mortars at enemies while you fight. |achieve 6931/3
|next "achieve"
step
label "wild"
clicknpc Krasarang Wild Brew##63929 |goto Brewmoon Festival 43.90,71.40
Pick up these Wild Brew Barrels and place them in groups of enemies for continued AoE fire damage. |achieve 6931/4
|next "achieve"
step
label "derpa"
talk Derpa Derpa##64017 |goto Brewmoon Festival 44.00,68.70
You will receive an ability to put down a Pluse Wave Emitter that does damage and stuns every 5 seconds for the rest of the Scenario. |achieve 6931/6
|next "achieve"
step
label "fireworks"
clicknpc Fireworks Barrel##63931 |goto Brewmoon Festival 44.00,68.70
You will be able to lay down the fireworks near your enemies, then click again to detonate it. It will respawn every 30 seconds. |achieve 6931/2
|next "achieve"
step
label "achieve"
Achieve Briaw Shan |achieve 6931/1
Achieve Setup Barrel of Fireworks |achieve 6931/2
Achieve Vale Marksman |achieve 6931/3
Achieve Setup Krasarang Wild Brew |achieve 6931/4
Achieve Tian Disciple |achieve 6931/5
Achieve Place Pulse Wave Emitter |achieve 6931/6
Click here to return to the start of the guide. |confirm
|next "start" |only if default
|next |only if achieved(6931)
step
Congratulations! You have achieved _Binan Village All-Star_!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Bubbletrapped!",{
achieveid={7989},
patch='50100',
description="This guide will walk you through aiding the construction of the Jinyu defenses in the scenario, 'A Little Patience'.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of how Varian and Tyrande learned a Little Patience._"
Enter the A Little Patience scenario |goto A Little Patience/0 41.30,15.80 |noway |c
step
talk Elder Adler##67569 |goto A Little Patience/0 22.60,32.60<5
|tip If Adler is not available simply leave the scenario and re-que.
Tell him "_By order of King Varian Wrynn we must prepare your defenses, Jinyu._"
Then move to the first camp |goto A Little Patience/0 46.20,55.00 |c
step
Defend the camp while the defenses are constructed |achieve 7989 |goto A Little Patience/0 46.20,55.00
step
Congratulations, you have earned the Bubbletrapped! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Cannonballer",{
achieveid={7990},
patch='50100',
description="This guide will walk you through aiding in the construction of the Dwarf defenses in the scenario, 'A Little Patience'.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of how Varian and Tyrande learned a Little Patience._"
Enter the A Little Patience scenario |goto A Little Patience/0 41.30,15.80 |noway |c
step
talk Duff McStrum##68057 |goto A Little Patience/0 39.00,23.10<5
|tip If Duff is not available simply leave the scenario and re-que.
Tell him "_Lead on, friend. It's time to set up your defenses!_"
Then move to the first camp |goto A Little Patience/0 61.70,45.00 |c
step
Defend the camp while the defenses are constructed |achieve 7990 |goto A Little Patience/0 61.70,45.00
step
Congratulations, you have earned the Cannonballer achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Don't Shake the Keg",{
achieveid={7257},
patch='50004',
description="This guide will walk you through defeating Borokhula the Destroyer in A Brewing Storm without getting hit by his Swamp Smash.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me the tale of a Brewing Storm._"
Enter the A Brewing Storm scenario |goto A Brewing Storm/0 53.30,44.70 |noway |c
step
map A Brewing Storm
path loop off; follow strict; ants curved; dist 5
path	50.30,48.80	54.00,55.40	64.40,55.40
path	70.10,43.40	59.10,32.20	49.50,33.30
path	43.90,42.80	42.40,68.00	34.60,71.60
path	30.20,63.90
Complete the scenario up to the final stage to attempt this achievement |goto A Brewing Storm 30.20,63.90 |noway |c
step
talk Brewmaster Blanche##58740
Tell her "_Let's kill some lizards, Blanche!_"
kill Borokhula the Destroyer##58739 |n
When he begins using the Swamp Smash ability quickly move out of the ground area indicator to avoid the move
Defeat him without being hit by Swamp Smash at all |achieve 7257
step
Congratulations, you have earned the Don't Shake the Keg achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Fancy Footwork",{
achieveid={7276},
patch='50004',
description="This guide will walk you through defeating the Abomination of Anger in the Crypt of Forgotten Kings scenario without anyone taking damage from the red clouds.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Crypt of the Forgotten Kings._"
Enter the Crypt of the Forgotten Kings |goto Crypt of Forgotten Kings/1 64.10,16.50 |noway |c
step
map Crypt of Forgotten Kings/1
path loop off; follow strict; ants curved; dist 5
path	64.10,31.90	58.20,38.70	44.20,39.70
Defeat the first boss |goto Crypt of Forgotten Kings/1 44.20,39.70 |noway |c
step
kill Jin Ironfist##61814 |goto Crypt of Forgotten Kings/1 44.20,39.70
scenariostage 1
step
kill Essence of Hate##65581+
Cleanse the pool of life |goto Crypt of Forgotten Kings/1 46.50,59.30
scenariostage 2
step
map Crypt of Forgotten Kings/1
path loop off; follow strict; ants curved; dist 5
path	46.80,47.00	50.60,39.20	57.40,40.20
path	64.00,49.10	64.00,78.70	58.80,79.30
path	58.60,87.40	63.90,87.70	Crypt of Forgotten Kings/2 48.80,76.50
Discover the source of the darkness |goto Crypt of Forgotten Kings/2 48.80,76.50 |noway |c
step
kill Abomination of Anger##61707
Defeat the Abomination without taking damage from the red clouds that spawn |achieve 7276 |goto Crypt of Forgotten Kings/2 48.80,35.20
step
Congratulations, you have earned the Fancy Footwork achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\The Few, the Proud, the Gob Squad",{
achieveid={8295},
patch='50300',
description="This guide will walk you through completing the Secrets of Ragefire scenario without any member of the Gob Squad taking damage.",
},[[
step
You will need to run this instance multiple times in order to earn this achievement
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Secrets of Ragefire._"
Enter the Secrets of Ragefire scenario |goto The Secrets of Ragefire/1 75.50,57.30 |noway |c
step
clicknpc Detonator##70662
scenariogoal 23213 |goto The Secrets of Ragefire/1 63.90,50.70
step
kill Kor'kron Dark Shaman##71245+, Kor'kron Shadowblade##71244+, Kor'kron Emberguard##70798+, Dark Shaman Xorenth##70683
scenariogoal 23216 |or |goto The Secrets of Ragefire/1 36.80,45.60
scenariostage 1 |or
step
clicknpc Pandaria Artifacts##71209
|tip A stockpile of books and scrolls.
scenariogoal 23256 |goto The Secrets of Ragefire/1 27.70,41.30
step
clicknpc Proto-Drake Eggs##71208
|tip Large spike-shelled eggs.
scenariogoal 23254 |goto The Secrets of Ragefire/1 30.60,52.70
step
clicknpc Supply Crates##71203
|tip Large wooden crates.
scenariogoal 23255 |or |goto The Secrets of Ragefire/1 40.10,59.20
scenariostage 2 |or
step
clicknpc Battery##71195 |goto The Secrets of Ragefire/1 39.70,60.10<5
Deliver the batteries to Grit and Ticker at [38.50,31.40]
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23310
step
clicknpc Pool Pony##71175 |goto The Secrets of Ragefire/1 37.80,59.70<5
Deliver the pool pony to Grit and Ticker at [38.50,31.40]
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23308
step
clicknpc Broken Proto-Drake Egg##71197 |goto The Secrets of Ragefire/1 29.70,52.00<5
Deliver the pool pony to Grit and Ticker at [38.50,31.40]
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23309
step
clicknpc Cannon Balls##71176 |goto The Secrets of Ragefire/1 27.20,42.80<5
Deliver the pool pony to Grit and Ticker at [38.50,31.40]
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23307 |or
scenariostage 3 |or
step
Pull all the enemies in the next stage away from the Gob Squad
kill Kor'kron Dire Soldier##70665+, Kor'kron Dark Shaman##71245+, Kor'kron Emberguard##70798+
|tip You will fight these in several waves until Overseer Elaglo spawns. Make sure to keep them away from the Gob Squad!
kill Overseer Elaglo##71030
achieve 8295 |goto The Secrets of Ragefire/1 36.90,46.20
step
Congratulations, you have completed the The Few, the Proud, the Gob Squad achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Fight Anger with Anger",{
achieveid={8368},
patch='50300',
description="This guide will walk you through defeating the Abomination of Anger in the Crypt of Forgotten Kings scenario with 20 stacks of Uncontrolled Anger.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Crypt of the Forgotten Kings._"
Enter the Crypt of the Forgotten Kings |goto Crypt of Forgotten Kings/1 64.10,16.50 |noway |c
step
map Crypt of Forgotten Kings/1
path loop off; follow strict; ants curved; dist 5
path	64.10,31.90	58.20,38.70	44.20,39.70
Defeat the first boss |goto Crypt of Forgotten Kings/1 44.20,39.70 |noway |c
step
kill Jin Ironfist##61814 |goto Crypt of Forgotten Kings/1 44.20,39.70
scenariostage 1
step
kill Essence of Hate##65581+
Cleanse the pool of life |goto Crypt of Forgotten Kings/1 46.50,59.30
scenariostage 2
step
map Crypt of Forgotten Kings/1
path loop off; follow strict; ants curved; dist 5
path	46.80,47.00	50.60,39.20	57.40,40.20
path	64.00,49.10	64.00,78.70	58.80,79.30
path	58.60,87.40	63.90,87.70	Crypt of Forgotten Kings/2 48.80,76.50
Discover the source of the darkness |goto Crypt of Forgotten Kings/2 48.80,76.50 |noway |c
step
kill Abomination of Anger##61707
Defeat the Abomination with 20 Stacks of Controlled Anger |achieve 8368 |goto Crypt of Forgotten Kings/2 48.80,35.20
step
_Congratulations!_
You Earned the "Fight Anger with Anger" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\For the Swarm",{
achieveid={8017},
patch='50100',
description="Defeat Commander Tel'vrak without killing any Zan'thik Swarmers in the Assault on Zan'vess scenario. You must be level 90 for this achievement.",
},[[
step
Use the _Dungeon Finder_, and click the _Scenarios_ tab to queue for _Assault on Zan'vess_.
|confirm
step
kill Commander Tel'vrak##67879+ |goto Assault on Zan'vess 38.70,56.50
You cannot kill any of the mobs he summons during this fight to get the achievement.
|achieve 8017
step
Congratulations, you have earned the Arena of Annihilation Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Heed the Weed",{
dungeon=939,
achieveid={8329},
patch='50300',
description="Use every basket of Shimmerweed in a single Blood in the Snow scenario run.",
},[[
step
You will have a chance to get these as you go through the scenario, so make sure you pay attention to them.
|confirm
step
talk Mountaineer Grimbolt##70801 |goto Blood in the Snow 53.20,67.50
scenariogoal 23249 |or
scenariostage 1 |or
step
Run over the basket of Shimmerweed to activate it. |goto Blood in the Snow 47.00,58.90
|confirm
step
clicknpc Roasting Spit##70597 |goto Blood in the Snow 49.90,60.90
scenariogoal 23260 |or
scenariostage 2 |or
step
Run over the basket of Shimmerweed to activate it. |goto Blood in the Snow 44.10,79.90
|tip It's in the tent here.
|confirm
step
kill Frostmane Berserker##70471+, Frostmane Flesh-Eater##70746+, Frostmane Prowler##70595+, Frostmane Headhunter##70473+, Frostmane Snowstalker##70463+ |goto Blood in the Snow 44.90,76.40
scenariogoal 23261 |or
scenariostage 3 |or
step
Run over the basket of Shimmerweed to activate it. |goto Blood in the Snow 30.70,66.90
|confirm
step
kill Bonechiller Barafu##70468 |goto Blood in the Snow 33.50,65.70
scenariogoal 23262 |or
scenariostage 4 |or
step
Run over the basket of Shimmerweed to activate it. |goto Blood in the Snow 47.90,27.10
|confirm
step
kill Farastu##70474+ |goto Blood in the Snow 44.50,23.40
scenariogoal 23263 |or
scenariostage 5 |or
step
Run over the basket of Shimmerweed to activate it. |goto Blood in the Snow 47.00,58.90
|tip It's inside the circular building here.
|confirm
step
kill Hekima the Wise##70544+ |scenariogoal 23264 |or |goto Blood in the Snow 49.40,44.50
|tip Make sure you kill any rage banners that spawn during this fight.
scenariogoal 23265 |or
scenariostage 6 |or
achieve 8329 |or
step
Congratulations, you have completed the _Blood in the Snow_ scenario!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Hekima's Heal-Halter",{
dungeon=939,
achieveid={8330},
patch='50300',
description="Don't let Hekima cast Hekima's Wisdom during the Blood in the Snow scenario.",
},[[
step
For this achievement, you must have a stun/interrupt ability or be with someoone who does.
Use the dungeon finder to queue for the _Blood in the Snow_ scenario.
|confirm
step
talk Mountaineer Grimbolt##70801 |goto Blood in the Snow 53.20,67.50
scenariogoal 23249 |or
scenariostage 1 |or
step
clicknpc Roasting Spit##70597 |goto Blood in the Snow 49.90,60.90
scenariogoal 23260 |or
scenariostage 2 |or
step
kill Frostmane Berserker##70471+, Frostmane Flesh-Eater##70746+, Frostmane Prowler##70595+, Frostmane Headhunter##70473+, Frostmane Snowstalker##70463+ |goto Blood in the Snow 44.90,76.40
scenariogoal 23261 |or
scenariostage 3 |or
step
kill Bonechiller Barafu##70468 |goto Blood in the Snow 33.50,65.70
scenariogoal 23262 |or
scenariostage 4 |or
step
kill Farastu##70474+ |goto Blood in the Snow 44.50,23.40
scenariogoal 23263 |or
scenariostage 5 |or
step
kill Hekima the Wise##70544+ |scenariogoal 23264 |goto Blood in the Snow 47.80,48.90
|tip Make sure you kill any rage banners that spawn during this fight.
At a couple points throughout the fight, he will begin to cast _Hekima's Wisdom_. You must interrupt this every time in order to get the achievement.
achieve 8330
step
Congratulations, you have completed the _Hekima's Heal-Halter_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\I Used To Love Them",{
achieveid={7992},
patch='50100',
description="This guide will walk you through aiding in the construction of the Night Elf defenses in the scenario, 'A Little Patience'.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of how Varian and Tyrande learned a Little Patience._"
Enter the A Little Patience scenario |goto A Little Patience/0 41.30,15.80 |noway |c
step
talk Ferra Pearl##68599 |goto A Little Patience/0 36.70,16.20<5
|tip If Ferra is not available simply leave the scenario and re-que.
Tell her "_We are to surround the temple with defenses. Can your druids help?_"
Then move to the first camp |goto A Little Patience/0 31.10,58.90 |c
step
Defend the camp while the defenses are constructed |achieve 7992 |goto A Little Patience/0 31.10,58.90
step
Congratulations, you have earned the I Used To Love Them achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\In the Eye of the Tiger",{
achieveid={7272},
patch='50004',
description="This guide will walk you through defeating all final bosses - Cloudbender Kobo, Maki Waterblade, and Satay Byu - in the Arena of Annihilation scenario.",
},[[
step
You will need to run this instance multiple times in order to earn this achievement
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Arena of Annihilation._"
Enter the A Little Patience scenario |goto Proving Grounds/1 46.00,51.30 |noway |c
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Scar-Shell##63311
scenariostage 1
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Jol'Grum##63312
scenariostage 2
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Little Liuyang##63313
scenariostage 3
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Chagan Firehoof##63318
scenariostage 4
step
Click the Tiger Temple Gong |goto Proving Grounds/1 48.80,17.60
|tip The golden gong resting on the wooden archway against the wall.
kill Cloudbender Kobo##63316 |or |achieve 7272/1
kill Maki Waterblade##64280 |or |achieve 7272/2
kill Satay Byu##64281 |or |achieve 7272/3
scenariostage 5
step
Congratulations, you have earned the In the Eye of the Tiger achievement! |only if achieved(7272)
You'll need to re-que again for the other bosses. |only if not achieved(7272)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\It's a Trap!",{
description="This guide will walk you through steping on a floor trap in the Crypt of Forgotten Kings scenario.",
achieveid={7275},
patch='50004',
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Crypt of the Forgotten Kings._"
Enter the Crypt of the Forgotten Kings |goto Crypt of Forgotten Kings/1 64.10,16.50 |noway |c
step
Step on the blue tile here |goto Crypt of Forgotten Kings/1 66.60,34.40
achieve 7275
step
Congratulations, you have earned the It's a Trap! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Keep those Bombs Away! (From Me)",{
dungeon=938,
achieveid={8347},
patch='50300',
description="Complete the Battle on the High Seas Scenario without any member of your party getting hit by cannon fire at any point.",
},[[
step
During the entire _Battle on the High Seas_ Scenario, there will be red circles that spawn underneath you and your party.
These cannon targets have a 3 second cast and a 10 yard range.
Your objective is to _avoid taking any damage from the cannonballs_.
Use any movement enhancing abilities to run away from him when they appear under you!
|achieve 8347
step
Congratulations, you have completed the _Keep those Bombs Away! from me..._ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\The Keg Runner",{
achieveid={7232},
patch='50004',
description="This achievement takes place entirely in the scenario Theramore's Fall.",
},[[
step
Queue for Unga Ingoo Scenario
Enter the Scenario |goto Unga Ingoo |c
step
Once you enter Scenario _DO NOT TALK TO BREWMASTER BO_.
This will allow you time to clear the trash mobs and collect barrels of brew.
When you have cleared most of the mobs, click here to continue. |confirm
step
talk Brewmaster Bo##62467 |goto Unga Ingoo 51.80,86.30 |n
Let's get going!
Escort Brewmaster Bo to [50.10,61.90]
scenariogoal 19210
step
kill Unga Totem##62469
click Bigga Unga Keg##215165 |goto Unga Ingoo/0 60.60,71.80
Have one person bring the brew back to Brewmaster Bo, then meet back up with you as you move forward.
|confirm
step
kill Grooka Grooka##62488 |goto Unga Ingoo/0 79.50,53.50
After you kill Grooka, click the Keg and you and your partner need to use the zipline here [Unga Ingoo/0 73.60,54.70]
Click the Zip Line to travel down to the beach |goto Unga Ingoo/0 77.50,27.60,0.50 |noway |c
|click Zip Line##212272
step
Run into this cave and kill the hozen. |goto Unga Ingoo/0 79.40,44.90
Have the 2nd person with your grab this Keg and both of you can mount and ride back to the Brewmaster Bo
Take the Brew back to Brewmaster Bo |goto Unga Ingoo/0 50.80,62.10,0.50 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Kite Fight",{
achieveid={7529},
patch='50004',
description="This achievement takes place entirely in the scenario Theramore's Fall.",
},[[
step
This achievement takes place during _Stage 3_ of _Theramore's Fall_.
It requires that you defeat Baldruc without destroying any of his totems.
|confirm
step
As the achiement suggests, you will be _kiting Baldruc_ around.
You will need to clear trash around him before engaging.
Once you engage, Baldruc will occasionally put down _Storm Totems_.
Move away from the totem, towards the docks as the fight progresses so you dont take unwanted damage during the encounter.
|achieve 7529
step
Congratulations, you have earned the _Kite Fight_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Monkey in the Middle",{
achieveid={7239},
patch='50004',
description="This achievement takes place entirely in the scenario Unga Ingoo.",
},[[
step
In order to earn this achievement, you will need to prevent Captain Ook from picking up an orange during your encounter with him.
This achievement requires that you be in _Stage 3_ of the _Unga Ingoo Scenario_.
|confirm
step
The point of the achievement is to keep Captain Ook away from an orange on the ground during the scenario.
This can be done by either having someone in the group pick the orange up and run away from the fight, _OR_ by having high dps and killing him before he has the chance to reach the orange.
Defeat Captain Ook without him getting an orange.  |achieve 7239
step
Congratulations, you have earned the _Monkey in the Middle_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Monkey See, Monkey Kill",{
achieveid={7248},
patch='50004',
description="This achievement takes place entirely in the scenario Unga Ingoo.",
},[[
step
This achievement takes place during the Scenario _Unga Ingoo_.
It will likely take several runs to earn this achievement, as enemeies appear at random.
|confirm
step
The Ship [Unga Ingoo 77,54]
|tip Note that there is a zipline at Bo's Cauldron that will take you there.
The Cave at [Unga Ingoo 78,42]
The Sandbar at [Unga Ingoo 30,25]
The Wreck at [Unga Ingoo 77,54]
Defeat _Captain Ook_ |achieve 7248/1
Defeat _Ba-Bam_ |achieve 7248/2
Defeat _Ookie_ |achieve 7248/3
Defeat _Chihozen Binono_ |achieve 7248/4
Defeat _Grooka Grooka_ |achieve 7248/5
Defeat _Rik Rik_ |achieve 7248/6
Protect the _Unga Keg_ |achieve 7248/7
step
Congratulations, you have earned the _Monkey See,Monkey Kill_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\No Egg Left Behind",{
achieveid={7987},
patch='50100',
description="This guide will walk you through destroying all remaining eggs before Broodmaster Noshi reaches 20% health in the Dagger in the Dark Scenario.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Dagger in the Dark that felled Vol'jin._"
Enter the Dagger in the Dark scenario |goto Dagger in the Dark/0 56.00,76.20 |noway |c
step
talk Vol'jin##67414
Tell him "I'm ready. Let's go." |goto Dagger in the Dark/0 56.10,75.20
scenariostage 1
step
map Dagger in the Dark
path loop off; follow strict; ants curved; dist 5
path	56.30,69.10	52.50,63.60	51.20,59.40
path	52.40,50.80
Follow Vol'jin to the caves |goto Dagger in the Dark/0 52.40,50.80 |noway |c
step
kill Darkhatched Skinflayer##67258+, Darkhatched Shaman##67255+, Darkhatched Skulker##67257+
kill Darkhatched Lizard-Lord##67263 |goto Dagger in the Dark/0 52.10,44.50
scenariostage 3
step
clicknpc The Spring Saurok-Slayer##67706 |goto Dagger in the Dark/0 51.80,43.10
scenariostage 4
step
map Dagger in the Dark/1
path loop off; follow strict; ants curved; dist 5
path	54.90,44.30	59.00,38.20	57.70,33.80
Go further into the caves |goto Dagger in the Dark/1 54.90,44.30 |noway |c
step
kill Broodmaster Noshi##67264
Kite Noshi around when he fixates on you to destroy all his eggs |achieve 7987 |goto Dagger in the Dark/1 52.30,23.80
|tip Do not damage him below 20% or you'll have to start over.
step
Congratulations, you have earned the No Egg Left Behind achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\No Tank You",{
achieveid={7530},
patch='50004',
description="This achievement takes place entirely in the scenario Theramore's Fall.",
},[[
step
This achievement takes place during _Stage 3_ of _Theramore's Fall_.
It requires that you defeat Big Bessa without taking any damage.
|confirm
step
Before engaging _Big Bessa_, you will need to clear all trash around it.
Being hit by the trash will cause you not to receive the achievement.
Big Bessa has 3 abilities that it will use, _Big Bessa's Cannon_, _War Engine_ and _War Engine's Sights_.
Big Bessa will mark the ground with a red circle when _Big Bessa's Cannon_ is being used. Move away from the area.
When it uses _War Engine's Sight_ it will fixate on a party member. That person should run away from the war engine while the ability is active.
|achieve 7530
step
Congratulations, you have earned the _No Tank You_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Party of Six",{
achieveid={7258},
patch='50004',
description="This guide will walk you through finishing A Brewing Storm with all six Thunderpaw Guardians still alive.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me the tale of a Brewing Storm._"
Enter the A Brewing Storm scenario |goto A Brewing Storm/0 53.30,44.70 |noway |c
step
map A Brewing Storm
path loop off; follow strict; ants curved; dist 5
path	50.30,48.80	54.00,55.40	64.40,55.40
path	70.10,43.40	59.10,32.20	49.50,33.30
path	43.90,42.80	42.40,68.00	34.60,71.60
path	30.20,63.90
Complete the scenario up to the final stage to attempt this achievement |goto A Brewing Storm 30.20,63.90 |noway |c
step
Kill all the adds inside the gates before you talk to Blanche
talk Brewmaster Blanche##58740
Tell her "_Let's kill some lizards, Blanche!_"
kill Borokhula the Destroyer##58739 |n
Save all six Thunderpaw Guardians |achieve 7258
step
Congratulations, you have earned the Party of Six achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Perfect Delivery",{
achieveid={7267},
patch='50004',
description="This achievement takes place entirely in the scenario Greenstone Village.",
},[[
step
This achievement takes place during _Stage 3_ of the Greenstone Village scenario.
|confirm
step
When you enter stage 3 of Greenstone Village, you will be prompted to locate and return kegs.
Find the kegs and _KILL EVERYTHING_ remotely close to them.
_DO NOT_ pick the kegs up until you have killed everything between it and the return spot.
Being hit while carrying the keg will cause you to fail this achievement.
|achieve 7267
step
Congratulation, you have earned the _Perfect Delivery_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\The Perfect Pour",{
achieveid={7261},
patch='50004',
description="This guide will walk you through brewing the Boomer Brew without anyone in your party being hit by lightning during A Brewing Storm.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me the tale of a Brewing Storm._"
Enter the A Brewing Storm scenario |goto A Brewing Storm/0 53.30,44.70 |noway |c
step
talk Brewmaster Blanche##58740 |goto A Brewing Storm/0 55.40,45.00
Tell her "_Let's get this lightning party started, Blanche._"
Avoid the blue circles that appear on the ground
|tip These show where lightning will strike about three seconds later.
Complete the brewing process without being hit by lightning |achieve 7261
step
Congratulations, you have earned The Perfect Pour achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Queuing Spree",{
achieveid={6943},
patch='50004',
description="This guide will walk you through completing 100 scenarios.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Pick any dialogue options to que for various scenarios offered
|tip Try getting some scenario achievements with our guides while working on this!
Complete #100# scenarios |achieve 6943
step
Congratulations, you have earned the Queuing Spree achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Save it for Later",{
achieveid={7266},
patch='50004',
description="This achievement takes place entirely in the scenario Greenstone Village.",
},[[
step
This achievement takes place after _Stage 3_ of the Greenstone Village scenario.
|confirm
step
When you transition to _Stage 4_ of this achievement, you will gain an ability at the center of your screen called _Volatile Greenstone Brew_.
To earn this achievement, you and your group _CAN NOT_ use this ability at all for the rest of the scenario.
|achieve 7266
step
Congratulations, you have earned the _Save it for Later_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Spill No Evil",{
achieveid={7231},
patch='50004',
description="This achievement takes place entirely in the scenario Unga Ingoo.",
},[[
step
This achievement takes place during _Stage 2_ of the scenario _Unga Ingoo_.
An easy way to earn this achievement is to have _2 group members_ should defend while one member runs the beer.
This method will take a little longer, but is safer for people with lower gearscores.
|achieve 7231
step
Congratulations, you have earned the _Spill No Evil_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Waste Not, Want Not",{
achieveid={8015},
patch='50100',
description="This achievement takes place entirely in the scenario Lion's Landing.",
},[[
step
This achievement takes place at the final stage, or after the scenario _Lion's Landing_ is completed.
|confirm
step
map Domination Point
path loose; loop; curved
path	26.90,28.60	27.30,25.60	28.10,38.40
path	29.30,38.30	31.80,38.60	33.90,38.60
path	34.00,37.20	34.90,31.30	35.60,32.80
path	38.30,33.60	38.80,37.50	45.00,29.00
Follow the path provided to find powerups throughout the instance.
There may be 4 available at any given time.
Level-Action Boomstick |achieve 8015/1
Reaver Bomb |achieve 8015/2
Rocket Launcher |achieve 8015/3
Armor Power-Up |achieve 8015/4
Berserk Power-Up |achieve 8015/5
Restoration Power-Up |achieve 8015/6
Speed Power-Up |achieve 8015/7
step
Congratulations, you have earned the _Waste Not, Want Not_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Watery Grave",{
achieveid={7984},
patch='50100',
description="This guide will walk you through killing 3 of the Darkhatched Lizard-Lord's reinforcements using his Water Jets ability in the Dagger in the Dark Scenario.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Dagger in the Dark that felled Vol'jin._"
Enter the Dagger in the Dark scenario |goto Dagger in the Dark/0 56.00,76.20 |noway |c
step
talk Vol'jin##67414
Tell him "I'm ready. Let's go." |goto Dagger in the Dark/0 56.10,75.20
scenariostage 1
step
map Dagger in the Dark
path loop off; follow strict; ants curved; dist 5
path	56.30,69.10	52.50,63.60	51.20,59.40
path	52.40,50.80
Follow Vol'jin to the caves |goto Dagger in the Dark/0 52.40,50.80 |noway |c
step
kill Darkhatched Skinflayer##67258+, Darkhatched Shaman##67255+, Darkhatched Skulker##67257+
kill Darkhatched Lizard-Lord##67263 |goto Dagger in the Dark/0 52.10,44.50
scenariostage 3
step
clicknpc The Spring Saurok-Slayer##67706 |goto Dagger in the Dark/0 51.80,43.10
scenariostage 4
step
map Dagger in the Dark/1
path loop off; follow strict; ants curved; dist 5
path	54.90,44.30	59.00,38.20	57.70,33.80
Go further into the caves |goto Dagger in the Dark/1 54.90,44.30 |noway |c
step
kill Broodmaster Noshi##67264
During the encounter Darkhatched Lizard-Lord will spawn
|tip Beat the Darkhatched Lizards to 40% of their health.
Noshi will place a very visible cone on the ground. Drag the Hatched Lizards into the affected area and have Noshi kill them
Repeat the process 3 times |achieve 7984 |goto Dagger in the Dark/1 52.30,23.80
step
Congratulations, you have earned the Watery Grave achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\We've Been Dancin'",{
achieveid={7993},
patch='50100',
description="This guide will walk you through aiding Master Brownstone in the construction of the Pandaren defenses in the scenario, 'A Little Patience'.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of how Varian and Tyrande learned a Little Patience._"
Enter the A Little Patience scenario |goto A Little Patience/0 41.30,15.80 |noway |c
step
talk Master Brownstone##68240 |goto A Little Patience/0 48.40,22.20<5
|tip If Brownstone is not available simply leave the scenario and re-que.
Tell him "_Wake up! The Horde is near - we must prepare defenses!_"
Then move to the first camp |goto A Little Patience/0 56.20,29.40 |c
step
Defend the camp while the defenses are constructed |achieve 7993 |goto A Little Patience/0 56.20,29.40
step
Congratulations, you have earned the We've Been Dancin' achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Which Came First?",{
achieveid={7991},
patch='50100',
description="This guide will walk you through aiding in the construction of the Gnome defenses in the scenario, 'A Little Patience'.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of how Varian and Tyrande learned a Little Patience._"
Enter the A Little Patience scenario |goto A Little Patience/0 41.30,15.80 |noway |c
step
talk Rosey Axlerod##67883 |goto A Little Patience/0 42.40,24.10<5
|tip If Rosey is not available simply leave the scenario and re-que.
Tell her "_We must let no Horde escape this place. Any ideas?_"
Then move to the first camp |goto A Little Patience/0 41.10,49.90 |c
step
Defend the camp while the defenses are constructed |achieve 7991 |goto A Little Patience/0 41.10,49.90
step
Congratulations, you have earned the Which Came First? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\Yaungolian Barbecue",{
achieveid={6930},
patch='50004',
description="This guide will walk you through completing the Brewmoon Festival scenario without any Bataari invaders setting the village on fire.",
},[[
step
talk Lorewalker Fu##78709 |goto Vale of Eternal Blossoms 83.00,30.60
Tell him "_Tell me of the Brewmoon Festival._"
Enter the  Brewmoon Festival |goto Brewmoon Festival/0 45.90,74.10 |noway |c
step
Spawns will come from the southern cave, the eastern bridge and the western gateway
You MUST NOT let the adds from these locations enter town because they will set buildings on fire
If you have Fireworks Barrels, place them at the spawning points to help control the oncoming enemies
Face Warbringer Qobi away from the city during the final phase as he uses Fire Line, which will set the buildings on fire
achieve 6930
step
Congratulations, you have earned the Yaungolian Barbecue achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\You Mean That Wasn't a Void Zone?",{
achieveid={7986},
patch='50100',
description="This achievement takes place entirely in the scenario Dagger in the Dark.",
},[[
step
This achievement takes place during _Stage 8_ in the Dagger in the Dark Scenario.
|confirm
step
During your encounter with Rak'gor Bloodrazor there will be _Blue Totems_.
You _CAN NOT_ use them if you want this achievement.
You will need to DPS him down as fast as possible to counter not having the help from the totems.
If there are any blue runes in the hallway left, you can use them in order to heal and grant haste.
|achieve 7986
step
Congratulations, you have earned the _You Mean That Wasn't a Void Zone?_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Mists of Pandaria\\You're Doing it Wrong",{
achieveid={9590},
patch='60001',
keywords={"Scenario"},
description="This guide will walk you through completing the \"You're Doing it Wrong\" Achievement.",
},[[
step
To earn this achievement, you will need to complete a Proving Grounds scenario while using the wrong specialization
|tip If you are a Tank, you need to complete the Healer or DPS Scenario.
|tip If you are a DPS, you need to complete the Healer or Tank Scenario.
|tip If you are a Healer, you need to complete the DPS or Tank Scenario.
|tip It is usually easier for Healers and DPS classes with pets attempt the Tank Scenario.
|tip It is usually easier for Tanks attempt the DPS Scenario.
|tip You will need to complete a Silver Trial, requiring that you complete a Bronze first.
talk Trial Master Rotun##72536
Tell him: _"Enter the Proving Grounds"_ |goto Kun-Lai Summit/0 69.02,44.83
Enter the Proving Grounds |goto Proving Grounds/1 51.51,78.73 |noway |c
step
talk Trial Master Rotun##61636
Choose a trial specialization
|tip Make sure it's not your current specialization.
Start the Proving Ground trial |scenariogoal Speak to Rotun##1/23899 |goto Proving Grounds/1 50.33,82.47
step
Refer to our Silver proving grounds guides for strategies appropriate to your chosen role
Earn the _You're Doing it Wrong_ achievement |achieve 9590 |goto Proving Grounds/1 45.62,55.22
step
_Congratulations!_
You have earned the _You're Doing it Wrong_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\Bottle Service",{
achieveid={7944},
patch='50100',
description="Hit an angry spectator in the head with an Expired Blackout Brew.",
},[[
step
talk Esme Sunshadow##68794
buy 1 Expired Blackout Brew##93158 |complete itemcount(93158) >= 1 |goto Brawl'gar Arena/1 62.40,74.50
step
Wait for one of the Brawl Enthusiasts in the arena to get angry, begin yelling, and turn hostile.
Use the Expired Blackout Brew on a hostile Brawl Enthusiast |use Expired Blackout Brew##93158 |goto Brawl'gar Arena/1 64.30,44.80
achieve 7943
step
Congratulations, you have earned _Bottle Servive_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\Collect Your Deck",{
achieveid={8342},
patch='50300',
description="Reach rank 10 with the Brawler's Guild.",
},[[
step
In order to obtain this achievement, you must gather all of the Challenge Cards for the Brawler's Guild
The cards are each obtained in very different ways, so you will need to be a 'Jack-of-all-trades' type character, or have plenty of help
|tip Some will also be very time consuming, and will take days/weeks to complete, depending on luck.
confirm
step
label "menu"
Click here to obtain the item for Challenge Card: Grandpa Grumplefloot |achieve 8342/1 |confirm |next "grumple"
Click here to obtain the item for Challenge Card: Ty'thar |achieve 8342/2 |confirm |next "tythar"
Click here to obtain the item for Challenge Card: Master Boom Boom |achieve 8342/3 |confirm |next "boomboom"
Click here to obtain the item for Challenge Card: Razorgrin |achieve 8342/4 |confirm |next "razor"
Click here to obtain the item for Challenge Card: Splat |achieve 8342/5 |confirm |next "splat"
Click here to obtain the item for Challenge Card: Mecha-Bruce |achieve 8342/6 |confirm |next "mecha"
Click here to obtain the item for Challenge Card: Dippy & Doopy |achieve 8342/7 |confirm |next "dipdoop"
Click here to obtain the item for Challenge Card: Blingtron 3000 |achieve 8342/8 |confirm |next "bling"
Click here to obtain the item for Challenge Card: Ro-Shambo |achieve 8342/9 |confirm |next "shambo"
Click here to obtain the item for Challenge Card: The Bear and the Lady Fair |achieve 8342/10 |confirm |next "bearlady"
Click here to obtain the item for Challenge Card: Mingus Diggs |achieve 8342/11 |confirm |next "mingus"
Click here to obtain the item for Challenge Card: Blind Hero |achieve 8342/12 |confirm |next "blind"
|next "end" |only if achieved(8339)
step
label "grumple"
goto Kun-Lai Summit 65.00,60.10
talk Grandpa Grumplefloot##71082
Dance with Grandpa Grumplefloot |script DoEmote("DANCE")
collect Knockoff Grumplefloot##97978
|next "menu"
step
label "boomboom"
talk Nephew Burrberry##60679
accept The Burlap Grind##30747 |goto Kun-Lai Summit 42.50,69.40
step
talk Kota Kon##60587 |goto Kun-Lai Summit 42.60,69.20
Unscrew the flask and offer it to her |invehicle |c
step
Use the abilities on your hotbar to kill Hozen
kill Silverback Piker##60746+, Ookin Marauder##60753+, Broketooth Leaper##60742+, Ookin Shaman##60752+, Silverback Smasher##60749+, Broketooth Ravager##60743+, Broketooth Charger##60744+
collect 1 Hozen-Fur Fuse##97980 |goto Kun-Lai Summit 49.50,68.50
|tip This will take you a long time. Don't turn in the quest until you get this item.
step
|goto Kun-Lai Summit 42.50,69.30
Click the Leave Vehicle button |outvehicle |c
|next "menu"
step
label "razor"
Fish in the water here
|tip This is a rare item, so you may be here a while.
collect 1 Impeccably Sharp Tooth##97981 |goto Vale of Eternal Blossoms 70.00,37.50
|next "menu"
step
label "dipdoop"
For this part of the achievement, you must have at least 3 _Level 25 Battle Pets_
confirm
step
clicknpc Doopy##71438
|tip He's a rare spawn, so you may have to wait a bit for him to come back.
Challenge him to a pet battle and defeat him.
collect 1 Frost-Tipped Eggshell##97984 |goto Icecrown 47.70,14.60
|next "menu"
step
label "bearlady"
Open up your Dungeon Finder [I], and queue up for a random Scenario
Do random scenarios to obtain _Greater Cache of Treasures_
Open the _Greater Cache of Treasures_ to obtain the two items listed below |use Greater Cache of Treasures##92813
collect 1 The Bear and the Lady Fair##97979
|next "menu"
step
label "splat"
Open up your Dungeon Finder [I], and queue up for a random Scenario
Do random scenarios to obtain _Greater Cache of Treasures_
Open the _Greater Cache of Treasures_ |use Greater Cache of Treasures##92813
collect 1 Vial of Reddish Ooze##97982
|next "menu"
step
label "bling"
This next part will require an _Engineer_ to make. It's suggested you pick up Engineering on an alternate character in order to obtain this item, as it comes from the _Blingtron 4000_ daily
You may be able to run into the _Blingtron 4000_ yourself, or ask around in your guild or in Trade Chat if you can use it, but the item needed is an extremely rare spawn from him
confirm
step
#include "trainer_Engineering"
learn Blingtron 4000##127129
only if skill("Engineering")>=600
step
create 1 Blingtron 4000##127129, Engineering,1 total
only if skill("Engineering")>=600
step
Call the Blingtron 4000 to you |use Blingtron 4000##87214 |only if skill("Engineering")>=600
Ask around in trade chat or in your guild and see if anyone will summon Blingtron 4000 for you |only if skill("Engineering")<600
talk Blingtron 4000##43929
accept Blingtron 4000##31752
collect 1 Blingtron 4000 Gift Package##86623
step
Open the Blingtron 4000 Gift Package in your bags |use Blingtron 4000 Gift Package##86623
collect 1 Dusty Old Robot##97985
Click here if you didn't receive the Dusty Old Robot today |confirm
|next "menu"
step
label "mecha"
goto Brawl'gar Arena 55.90,20.10 |n
talk Brawl'gar Arena Grunt##67267
Tell them you're ready to fight |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 1: _Bruce_
Bruce is a very easy fight, meant to get you started in the Brawler's Guild. He has 1 ability:
_Chomp, chomp, chomp_ is an ability that he uses in front of him. When he begins casting, run to the side or behind him to avoid getting hit by this attack
|tip The best strategy for this fight is to dps him as fast as you can, making sure to avoid being directly in front of him whenever he begins to cast his ability.
Defeat Bruce in the Brawler's Guild |complete ZGV:GetReputation(1690).friendRep>=250
step
talk Card Trader Ami##70751
buy 1 Challenge Card: Bruce##93823 |complete itemcount(93823) >= 1 |goto Brawl'gar Arena 59.90,77.00
step
goto Brawl'gar Arena 55.90,20.10 |n
talk Brawl'gar Arena Grunt##67267
Tell them you want to use your challenge card! |goto Deeprun Tram/2 50.80,47.40 |noway |c
step
Fight 1: _Bruce_
Bruce is a very easy fight, meant to get you started in the Brawler's Guild. He has 1 ability:
_Chomp, chomp, chomp_ is an ability that he uses in front of him. When he begins casting, run to the side or behind him to avoid getting hit by this attack
|tip The best strategy for this fight is to dps him as fast as you can, making sure to avoid being directly in front of him whenever he begins to cast his ability.
collect 1 Modified Chomping Apparatus##97983
|next "menu"
step
label "shambo"
This next challenge card requires that you go through _The Tillers_ questline until you can plant seeds
confirm
step
Routing to proper section |next "preq" |only if not completedq(30257)
Routing to proper section |next "plant" |only if completedq(30257)
step
label "preq"
#include "Tillers_Quests"
step
label "plant"
Start each day out by harvesting the crops from the previous day.
collect 1 Paper-Covered Rock##97988 |next "menu" |goto Valley of the Four Winds 51.90,48.30
Click here if it didn't drop today. |confirm
step
talk Merchant Greenfield##58718 |goto Valley of the Four Winds 52.90,52.00
Buy any seeds you wish to plant for today
step
Plant any seeds you bought in the previous step |goto Valley of the Four Winds 51.90,48.10
|tip You will have to wait until tomorrow for the plants to bloom.
confirm |next "menu"
step
label "mingus"
You will need _Archaeology_ in order to attempt to get this Challenge Card.
Click here to go to the Archaeology guide to begin Archaeology. You will need to be around level 500 in this skill. |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600"
only if skill("Archaeology")<1
step
Open your world map, find dig sites in Eastern Kingdoms then go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area
_You are primarily looking for artifacts in Uldum_
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
collect 1 Digmaster's Earthblade##97986
only if skill("Archaeology")>=1
|next "menu"
step
label "tythar"
kill Kor'kron Butcher##71012+, Kor'kron Outrider##73590+
collect 1 Raptorhide Boxing Gloves##97990 |goto Northern Barrens/0 44.50,47.50
|next "menu"
step
label "blind"
This part can only be done if the Darkmoon Faire is in town
confirm
OR
Click here to go back to the menu if the Darkmoon Faire isn't in town |confirm |next "menu"
leechsteps "Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies"
step
Open up the Darkmoon Game Prizes you received from the games |use Darkmoon Game Prize##93724
collect 1 Well-Worn Blindfold##97987 |next "menu"
Click here if you did not receive this prize from the dailies today |confirm |next "menu"
step
label "end"
Congratulations, you have obtained the _Collect Your Deck_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\Deck Your Collection (Season 1)",{
achieveid={8343},
patch='50300',
description="Reach rank 10 with the Brawler's Guild during Mists of Pandaria.",
},[[
step
This achievement was gained by defeating the Brawler's Guild bosses during Mists of Pandaria
It is no longer obtainable
Please refer to the Collect Your Deck achievement guide for the current Collect Your Deck achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\Haters Gonna Hate",{
achieveid={7945},
patch='50100',
description="Reach rank 10 with the Brawler's Guild.",
},[[
step
You will need another player to help you with this.
If you haven't done so, we suggest you get an invitation with the Brawler's Guild and at least get through your first brawl.
Click here to be taken to the Brawler's Guild guide to do so. |confirm |next "Achievement Guides\\World Events\\Brawler's Guild\\Now You're Just Showing Off" |only if ZGV:GetReputation(1374).friendRep<250
confirm
step
talk Esme Sunshadow##68794
buy 10 Rotten Apple##93043 |complete itemcount(93043) >= 10 |goto Brawl'gar Arena 62.30,73.80
|tip Make sure your friend buys these as well, or you can just trade them to him/her.
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10 |n
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
While you're fighting the current opponent, your friend must throw 10 rotten fruit onto you. This will cause a debuff that stacks 10 times. Once the last one hits, finish off the boss and the achievement is yours!
achieve 7945
step
Congratulations, you have obtained the _Haters Gonna Hate_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\I'm Your Number One Fan",{
achieveid={7943},
patch='50100',
description="Cheer a player on after they have won a brawl.",
},[[
step
Wait for someone else to enter in a brawl. As soon as the winner has been declared, cheer for them
|tip We suggest creating a macro that uses /cheer and just spamming it on the player that won.
Cheer on the winner of a brawl |achieve 7943 |goto Brawl'gar Arena/1 47.20,31.60
step
Congratulations, you have earned the _I'm Your Number One Fan_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\I've Got the Biggest Brawls of Them All",{
condition_end=function() return achieved(8338) end,
achieveid={7948,8020,7939,7942,8337,8338},
patch='50300',
description="Reach rank 10 with the Brawler's Guild.",
},[[
This achievement can _no longer be earned_
|tip This achievement was earned by reaching Rank 10 with Bizmo's Brawlpub during the Pandaria campaign.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\Now You're Just Showing Off",{
achieveid={8022},
patch='50100',
description="Reach rank 10 with the Brawler's Guild.",
},[[
step
For this achievement, you will need to complete the entire Brawler's Guild questline through rank 8.
|confirm
step
talk Card Trader Ami##70751
buy 1 Challenge Card: Epicus Maximus##94182 |complete itemcount(94182) >= 1 |goto Brawl'gar Arena/1 60.00,75.90
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10 |n
Tell them you want to use your challenge card! |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Challenge Fight: _Epicus Maximus_
Epicus Maximus is one of the four "rare" bosses that you must face. He has 3 abilities:
_Destructolaser_ is a channeled spell that generates a beam that will follow you around the arena. If it touches you it will deal close to 250k damage, so avoid this throughout the fight.
_Blue Crush_ is a 2-second cast that will most likely kill you if you don't interrupt it, or outrange it.
_Pure Rock'n'Roll_ creates orbs that will deal AoE damage that will instantly kill you. Be sure to look out for these throughout the fight.
_The best strategy for this fight is to dps him down quickly. be sure to focus on avoiding the orbs and energy beam, while interrupting the Blue Crush._
|achieve 8022/1
step
talk Card Trader Ami##70751
buy 1 Challenge Card: Disruption##94187 |complete itemcount(94187) >= 1 |goto Brawl'gar Arena/1 60.00,75.90
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10 |n
Tell them you want to use your challenge card! |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Challenge Fight: _Disruption_
Disruption is known as one of the most difficult Brawler's Guild fights in the entire game. He has 2 abilities:
_Static Charge_ is a 3-second cast that will stun you, ending the fight. Stun this or avoid it at all costs.
_Pasics_ are cannons that, along with Disruption itself, spawn lasers around the arena. Touching one of these will come close to instantly killing you if it doesn't kill you.
_The best strategy for this fight is to pay attention to everything around you the best you can. You will have to jump over all the lasers in the arena, while interruping any stun casts. This fight will test all of your abilities, so be prepared for a little frustration._
|achieve 8022/2
step
talk Card Trader Ami##70751
buy 1 Challenge Card: Millhouse Manastorm##94188 |goto Brawl'gar Arena/1 60.00,75.90
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10 |n
Tell them you want to use your challenge card! |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Challenge Fight: _Millhouse Manastorm_
Millhouse Manastorm is one of the easier fights for this achievement. He has 3 abilities:
_Frostbolt_ is a filler spell that does minor damage and slows you. Ignore this for the most part.
_Shadowbolt_ is a filler spell that does minor damage. Ignore this for the most part.
_Get Off!_ is an instant cast that he will use if you're next to him attacking for too long. It will knock you back and deal arcane damage to you.
_Power Crystals will summon around the room, and shoot a beam of light at Millhouse. Your goal here is to try and block the path between the crystal and Millhouse. They cause 2 buffs:
_Power Overwhelming_ is a buff that can affect either you or Millhouse. This will stack and continuously make you stronger. The power tops out at 500%, but you must still try and steal the buffs from Millhouse.
_Dooooooom!_ will only occur if Millhouse gets 100 stacks of the Power Overwhelming buff. This attack will instantly kill you, and is unavoidable.
_The best strategy for this fight is to move between as many lasers as you can, stealing all the buffs, and saving your cooldowns for when you get 100 stacks of Power._
|achieve 8022/3
step
talk Card Trader Ami##70751
buy 1 Challenge Card: Zen'shar##94189 |goto Brawl'gar Arena/1 60.00,75.90
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10 |n
Tell them you want to use your challenge card! |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Challenge Fight: _Zen'shar_
Zen'shar is the easiest rare boss, and at this point you shouldn't have any trouble with him. He has 2 phases:
_Phase 1_ will have adds circling around Zen'shar, while Zen'shar himself is immune to all damage. Your goal here is to AoE his adds down as quickly as possible to move into phase 2.
_Phase 2_ is similar to Disruption's fight, but not as bad. You will have to be constantly moving and dodging lasers, all while focusing on the boss and dps'ing him.
_Evil Glare_ is an ability he uses during phase 2 that will mark an area for an instant kill. As long as you stay moving and avoiding everything, you shouldn't have a problem moving away from this as well.
_The best strategy for this fight is to stay moving, avoid everything in the arena, and kill the boss as quickly as possible.._
|achieve 8022/4
step
Congratulations, you have obtained the _Now You're Just Showing Off_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\World Events\\Brawler's Guild\\Rabble Rabble Rabble",{
achieveid={7950},
patch='50100',
description="Reach rank 10 with the Brawler's Guild.",
},[[
step
For this achievement, you will either need to come to the Brawler's Guild during peak hours on your server, or get help from friends and guildmates
Have at least 21 people queue up for the Brawler's Guild, which will cause the portal to come up
confirm
step
talk Kergil Sparkwrench##70790 |goto Brawl'gar Arena/1 41.30,77.00
Teleport to Stormwind |goto Stormwind City |noway |c
achieve 7950
step
Congratulations, you have obtained the _Rabble Rabble Rabble_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Glory of the Pandaria Raider",{
description="This guide will walk you through earning the Glory of the Pandaria Raider.",
achieveid={6932},
patch='50004',
keywords={"Mists, of, Pandaria, Heroic, Mogu'shan, Vaults, Heart, of, Fear, Terrace, of, Endless, Springs"},
},[[
step
Earn the "Must Love Dogs" Achievement |achieve 6823
|tip Refer to the "Must Love Dogs" achievement guide to accomplish this.
step
Earn the "Anything You Can Do, I Can Do Better..." Achievement |achieve 6674
|tip Refer to the "Anything You Can Do, I Can Do Better..." achievement guide to accomplish this.
step
Earn the "Sorry, Were You Looking for This?" Achievement |achieve 7056
|tip Refer to the "Sorry, Were You Looking for This?" achievement guide to accomplish this.
step
Earn the "Straight Six" Achievement |achieve 6686
|tip Refer to the "Straight Six" achievement guide to accomplish this.
step
Earn the "Overzealous" Achievement |achieve 6937
|tip Refer to the "Overzealous" achievement guide to accomplish this.
step
Earn the "Candle in the Wind" Achievement |achieve 6936
|tip Refer to the "Candle in the Wind" achievement guide to accomplish this.
step
Earn the "Like an Arrow to the Face" Achievement |achieve 6553
|tip Refer to the "Like an Arrow to the Face" achievement guide to accomplish this.
step
Earn the "Less Than Three" Achievement |achieve 6683
|tip Refer to the "Less Than Three" achievement guide to accomplish this.
step
Earn the "I Heard You Like Amber..." Achievement |achieve 6518
|tip Refer to the "I Heard You Like Amber..." achievement guide to accomplish this.
step
Earn the "Timing is Everything" Achievement |achieve 6922
|tip Refer to the "Timing is Everything" achievement guide to accomplish this.
step
Earn the "Power Overwhelming" Achievement |achieve 6717
|tip Refer to the "Power Overwhelming" achievement guide to accomplish this.
step
Earn the "Who's Got Two Green Thumbs?" Achievement |achieve 6933
|tip Refer to the "Who's Got Two Green Thumbs?" achievement guide to accomplish this.
step
Earn the "Face Clutchers" Achievement |achieve 6824
|tip Refer to the "Face Clutchers" achievement guide to accomplish this.
step
Earn the "The Mind-Killer" Achievement |achieve 6825
|tip Refer to the "The Mind-Killer" achievement guide to accomplish this.
step
kill Amethyst Guardian##60047
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Stone Guard" Achievement |achieve 6719
step
kill Feng the Accursed##60009
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Feng the Accursed" Achievement |achieve 6720
step
kill Gara'jal the Spiritbinder##60143
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Gara'jal the Spiritbinder" Achievement |achieve 6721
step
Defeat The Spirit Kings
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Four Kings" Achievement |achieve 6722
step
kill Elegon##60410
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Elegon" Achievement |achieve 6723
step
Defeat the Will of the Emperor
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Will of the Emperor" Achievement |achieve 6724
step
kill Imperial Vizier Zor'lok##62980
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Imperial Vizier Zor'lok" |achieve 6725
step
kill Blade Lord Ta'yak##62543
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Blade Lord Ta'yak" Achievement |achieve 6726
step
kill Garalon##62164
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Garalon" Achievement |achieve 6727
step
kill Wind Lord Mel'jara##62397
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Wind Lord Mel'jarak" Achievement |achieve 6728
step
kill Amber-Shaper Un'sok##62511
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Amber-Shaper Un'sok" Achievement |achieve 6729
step
kill Grand Empress Shek'zeer##62837
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Grand Empress Shek'zeer" Achievement |achieve 6730
step
Defeat the Protectors of the Endless
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Protectors of the Endless" Achievement |achieve 6731
step
kill Tsulong##62442
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Tsulong" Achievement |achieve 6732
step
kill Lei Shi##62983
|tip Right click your character portrait.
|tip Under the "Instance Options", under "Raid Difficulty", set the difficulty to Heroic.
Earn the "Heroic: Lei Shi" Achievement |achieve 6733
step
_Congratulations!_
You Earned the "Glory of the Pandaria Raider" Achievement.
]])
