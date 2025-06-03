local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Brew of the Month")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Brew of the Year")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Direbrewfest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Disturbing the Peace")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Does Your Wolpertinger Linger?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Down With The Dark Iron")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Drunken Stupor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Have Keg, Will Travel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Strange Brew")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\The Brewfest Diet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Orgrimmar Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Shattrath Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Dalaran Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Bad Example")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Daily Chores")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Home Alone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Veteran Nanny")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Taking the Show on the Road")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Fairegoer's Feast")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Come One, Come All!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Blastenheimer Bullseye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Defender")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Dungeoneer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Despoiler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Faire Favors")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\I Was Promised a Pony")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Quick Shot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Step Right Up")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Quests",{
cataready=true,
author="support@zygorguides.com",
condition_end=function() return completedq(8409) end,
description="Complete the Hallow's End event quests.",
patch='40405',
},[[
step
Reach Level 25 |ding 25
|tip You must be at least level 25 to be able to accept this quest.
|tip Use the Leveling guides to accomplish this.
step
talk Spoops##15309
accept Hallow's End Treats for Spoops!##8312 |goto Tirisfal Glades/0 62.13,66.44
step
talk Candace Fenlow##53763
accept Stink Bombs Away!##29374 |goto Tirisfal Glades/0 62.42,66.72
accept Clean Up in Undercity##29375 |goto Tirisfal Glades/0 62.42,66.72
accept A Friend in Need##29431 |goto Tirisfal Glades/0 62.42,66.72
step
talk Darkcaller Yanka##15197
accept A Time to Build Up##29376 |goto Tirisfal Glades/0 62.12,67.83
accept A Time to Break Down##29377 |goto Tirisfal Glades/0 62.12,67.83
step
click Bonfire
Use the Bonfire |q 29376/1 |goto Tirisfal Glades/0 62.21,67.96
step
click Wickerman Ashes
Use the Wickerman Ashes: 1/1 |q 29376/2 |goto Tirisfal Glades/0 62.15,68.22
step
talk Darkcaller Yanka##15197
turnin A Time to Build Up##29376 |goto Tirisfal Glades/0 62.12,67.83
step
talk Crina Fenlow##53764
Select _"I'm ready to attack Stormwind!"_ |gossip 113766
Ride a Broom to Stormwind |invehicle |q 29374 |goto Tirisfal Glades/0 62.13,67.03
step
Drop #25# Stink Bombs in Stormwind |q 29374/1 |goto Stormwind City/0 66.88,78.41
|tip You'll fly around automatically.
|tip Target NPCs or Players for credit.
step
Click the Return Button on Your Action Bar |outvehicle |q 29374
step
use Arcane Cleanser##70727
|tip Use them on the orange clouds within the Undercity.
|tip You will need to search around to find them.
Remove #10# Stink Bombs |q 29375/1 |goto Undercity/0 70.07,50.42
step
talk Candace Fenlow##53763
turnin Stink Bombs Away!##29374 |goto Tirisfal Glades/0 62.42,66.72
turnin Clean Up in Undercity##29375 |goto Tirisfal Glades/0 62.42,66.72
step
talk Orc Commoner##19175
accept A Season for Celebration##29400 |goto Orgrimmar/0 51.55,75.16
accept Masked Orphan Matron##11357 |goto Orgrimmar/0 51.44,69.54
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
accept Flexing for Nougat##8359 |goto Orgrimmar/0 53.65,78.77
step
clicknpc Innkeeper Gryshka##6929
|tip Inside the building.
|tip Target Innkeeper Gryshka and type "/flex" into your chat to perform the Flex emote.
'|script DoEmote("FLEX")
Flex for Inkeeper Gryshka |q 8359/1 |goto Orgrimmar/0 53.65,78.77
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Flexing for Nougat##8359 |goto Orgrimmar/0 53.65,78.77
step
collect Orgrimmar Nougat##20493 |q 8312/1
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12366 |goto Orgrimmar/0 53.94,78.95
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Edgar Goodwin##54141
|tip Inside the building.
turnin A Friend in Need##29431 |goto Orgrimmar/0 54.40,77.58
accept Missing Heirlooms##29415 |goto Orgrimmar/0 54.40,77.58
step
talk Kali Remik##11814
|tip She patrols around inside this building.
accept Incoming Gumdrop##8358 |goto Orgrimmar/0 32.82,65.15
step
clicknpc Kali Remik##11814
|tip Target Kali Remik and type "/train" into your chat to perform the Train emote.
'|script DoEmote("TRAIN")
Do the "Train" for Kali Remik |q 8358/1 |goto Orgrimmar/0 32.82,65.15
step
talk Kali Remik##11814
turnin Incoming Gumdrop##8358 |goto Orgrimmar/0 32.82,65.15
step
Search the Courier's Cabin |q 29415/1 |goto Durotar/0 57.50,8.99
step
talk Hired Courier##54142
turnin Missing Heirlooms##29415 |goto Durotar/0 57.33,9.01
accept Fencing the Goods##29416 |goto Durotar/0 57.33,9.01
step
talk Auctioneer Drezmit##44866
Select _"Have you seen anyone suspicious trying to sell a crate of objects recently?"_ |gossip 113776
Watch the Dialogue
Follow Thief's Trail |q 29416/1 |goto Orgrimmar/0 54.08,73.35
step
talk Auctioneer Drezmit##44866
turnin Fencing the Goods##29416 |goto Orgrimmar/0 54.08,73.35
accept Shopping Around##29425 |goto Orgrimmar/0 54.08,73.35
step
talk Delian Sunshade##54146
Watch the Dialogue
Investigate Droffers and Son |q 29425/1 |goto Orgrimmar/0 58.05,48.39
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Shopping Around##29425 |goto Orgrimmar/0 58.05,48.39
accept Taking Precautions##29426 |goto Orgrimmar/0 58.05,48.39
step
talk Kor'geld##3348
|tip Inside the building.
collect 5 Crystal Vial##3371 |q 29426/1 |goto Orgrimmar/0 55.23,45.82
step
click Blood Nettle##209059+
|tip They are only found in the Valley of Wisdom.
collect 5 Blood Nettle##71035 |q 29426/3 |goto Orgrimmar/0 45.88,49.16
step
talk Hagrus##3335
|tip Inside the building.
buy 5 Arcane Powder##17020 |q 29426/2 |goto Orgrimmar/1 44.17,35.66
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Taking Precautions##29426 |goto Orgrimmar/0 58.05,48.39
accept The Collector's Agent##29427 |goto Orgrimmar/0 58.05,48.39
step
Watch the Dialogue
Disrupt the Meeting |q 29427/1 |goto Tirisfal Glades/0 65.77,74.79
step
click Stolen Crate##209094
turnin The Collector's Agent##29427 |goto Tirisfal Glades/0 65.77,74.81
accept What Now?##29428 |goto Tirisfal Glades/0 65.77,74.81
step
talk Edgar Goodwin##54141
|tip Inside the building.
turnin What Now?##29428 |goto Orgrimmar/0 54.40,77.58
step
click Edgar's Crate##209095
accept The Creepy Crate##29429 |goto Orgrimmar/0 54.47,77.55
step
talk Masked Orphan Matron##23973
turnin Masked Orphan Matron##11357 |goto Durotar/0 52.57,41.20
step
talk Masked Orphan Matron##23973
accept Let the Fires Come!##12139 |goto Durotar/0 52.57,41.20
accept Fire Training##11361 |goto Durotar/0 52.57,41.20
step
click Water Barrel |goto Durotar/0 52.54,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out #5# Fires |q 11361/1 |goto Durotar/0 52.39,42.48 |only if haveq(11361)
Put Out #5# Fires |q 12139/1 |goto Durotar/0 52.39,42.48 |only if haveq(12139)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12155 |goto Durotar/0 52.64,42.41
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Masked Orphan Matron##23973
turnin Let the Fires Come!##12139 |goto Durotar/0 52.57,41.20
turnin Fire Training##11361 |goto Durotar/0 52.57,41.20
turnin Smash the Pumpkin##12155 |goto Durotar/0 52.57,41.20 |only if haveq(12155) or completedq(12155)
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12361 |goto Durotar/0 51.54,41.58
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
collect Darkspear Gumdrop##20495 |q 8312/2
|tip Save this, you will need it later.
step
talk Innkeeper Pala##6746
|tip Inside the building.
accept Dancing for Marzipan##8360 |goto Thunder Bluff/0 45.81,64.71
step
clicknpc Innkeeper Pala##6746
|tip Inside the building.
|tip Target Innkeeper Pala and type "/dance" into your chat to perform the Dance emote.
'|script DoEmote("DANCE")
Dance for Inkeeper Pala |q 8360/1 |goto Thunder Bluff/0 45.81,64.71
step
talk Innkeeper Pala##6746
|tip Inside the building.
turnin Dancing for Marzipan##8360 |goto Thunder Bluff/0 45.81,64.71
step
collect Thunder Bluff Marzipan##20497 |q 8312/4
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12367 |goto Thunder Bluff/0 45.60,64.94
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Innkeeper Norman##6741
accept Chicken Clucking for a Mint##8354 |goto Undercity/0 67.73,37.88
step
clicknpc Innkeeper Norman##6741
|tip Target Innkeeper Norman and type "/chicken" into your chat to perform the Chicken emote.
'|script DoEmote("CHICKEN")
Cluck Like a Chicken for Innkeeper Norman |q 8354/1 |goto Undercity/0 67.73,37.88
step
talk Innkeeper Norman##6741
turnin Chicken Clucking for a Mint##8354 |goto Undercity/0 67.73,37.88
step
collect Undercity Mint##20491 |q 8312/3
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12368 |goto Undercity/0 67.75,37.41
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Spoops##15309
turnin Hallow's End Treats for Spoops!##8312 |goto Tirisfal Glades/0 62.13,66.44
step
use Dousing Agent##68647
Douse the Alliance's Wickerman |q 29377/1 |goto Elwynn Forest/0 33.38,47.85
|tip You will be flagged for PVP.
step
talk Darkcaller Yanka##15197
turnin A Time to Break Down##29377 |goto Tirisfal Glades/0 62.12,67.83
turnin A Season for Celebration##29400 |goto Tirisfal Glades/0 62.12,67.83
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Candy Buckets")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Check Your Head")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\A Mask for All Occasions")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Mask Task")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Masquerade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Out With It")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Sinister Calling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Trick or Treat!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Tricks and Treats of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Harvest Festival\\Harvest Festival Quest")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not completedq(6984) end,
description="This guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
Reach Level 40 |ding 40
|tip You can skip this step and proceed, but several quests require level 30 to level 40.
|tip All quests in this guide require a minimum of level 10 to accept.
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Orgrimmar/0 53.65,78.77 |q 6962 |future
step
talk Kaymard Copperpinch##13418
accept Great-father Winter is Here!##6961 |goto Orgrimmar/0 52.54,77.04
step
talk Great-father Winter##13445
turnin Great-father Winter is Here!##6961 |goto Orgrimmar/0 49.63,78.00
accept Treats for Great-father Winter##6962 |goto Orgrimmar/0 49.63,78.00
step
talk Furmund##9550
accept The Reason for the Season##6964 |goto Orgrimmar/0 51.03,71.00
step
talk Arugi##46709
|tip She walks around inside the building.
Train Cooking |skillmax Cooking,1 |goto Orgrimmar/0 56.17,61.67
step
talk Sagorne Creststrider##13417
turnin The Reason for the Season##6964 |goto Orgrimmar/0 39.54,47.32
accept The Feast of Winter Veil##7061 |goto Orgrimmar/0 39.54,47.32
step
talk Penney Copperpinch##13420
buy 1 Recipe: Gingerbread Cookie##17200 |goto Orgrimmar/0 52.69,77.28 |q 6962 |only if not knowsrecipe(21143)
buy 5 Holiday Spices##17194 |goto Orgrimmar/0 52.69,77.28 |q 6962
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 5 Small Egg##6889 |goto Orgrimmar/0 54.08,73.34 |next "Cook_Gingerbread_Cookies" |q 6962 |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
step
label "Farm_Small_Eggs"
Kill Dragonhawk enemies around this area
collect 5 Small Egg##6889 |goto Eversong Woods/0 43.41,56.60 |q 6962
step
label "Cook_Gingerbread_Cookies"
cast Basic Campfire##818
|tip Stand next to your fire or a Bonfire in Orgrimmar.
create 5 Gingerbread Cookie##21143,Cooking,5 total |q 6962/1 |goto Orgrimmar/0 49.88,77.99
step
talk Great-father Winter##13445
turnin Treats for Great-father Winter##6962 |goto Orgrimmar/0 49.63,78.00
step
talk Baine Bloodhoof##36648
|tip Inside the building.
turnin The Feast of Winter Veil##7061 |goto Thunder Bluff/0 60.25,51.67
step
ding 80
|tip You will also need 300 cooking skill for one quest.
|tip It will not be shown if you do not meet the skill requirement.
step
talk Strange Snowman##13636
accept You're a Mean One...##6983 |goto Hillsbrad Foothills/0 42.35,41.14
step
kill The Abominable Greench##54499
|tip This is a boss and will require a group.
collect Stolen Treats##17662 |q 6983/2 |goto Hillsbrad Foothills/0 43.56,39.13
step
Free Metzen the Reindeer |q 6983/1 |goto Hillsbrad Foothills/0 44.12,38.56
|tip Metzen will run free shortly after killing the Greench.
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/0 52.54,77.04
step
talk Kaymard Copperpinch##13418
|tip These should be available after completing You're a Mean One...
accept A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/0 52.54,77.04
accept The Hero of the Day##8799 |goto Orgrimmar/0 52.54,77.04 |only if skill("Cooking") >= 300
step
talk Great-father Winter##13445
turnin A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/0 49.63,78.00
stickystart "Collect_5_Gold"
step
kill Lesser Rock Elemental##2735+
collect 1 Deeprock Salt##8150 |q 8799/1 |goto Badlands/0 17.08,31.80
|tip You can also purchase this item from the auction house.
You can find more around [Badlands/0 41.00,69.12]
|only if haveq(8799) or completedq(8799)
step
label "Collect_5_Gold"
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 8799 |future
|only if haveq(8799) or completedq(8799)
step
click Holly Preserver##180715
turnin The Hero of the Day##8799 |goto Orgrimmar/0 53.02,76.92
|only if haveq(8799) or completedq(8799)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(277) end,
achieveid={277},
patch='30002',
description="During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake.",
},[[
step
Complete the "Feast of Winter Veil Quests" guide |complete completedq(6984) |only if level >= 15
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7061) |only if default
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 1 Red Winter Clothes##44958 |goto Orgrimmar/0 54.08,73.34 |next "Collect_Winter_Boots" |or
buy 1 Green Winter Clothes##34087 |goto Orgrimmar/0 54.08,73.34 |next "Collect_Winter_Boots" |or
|tip You only need one of these.
_Or_ |only if skill("Tailoring") >= 250
Click Here to Craft Clothes with Tailoring |confirm |next "Craft_Winter_Clothes" |only if skill("Tailoring") >= 250 |or
'|complete achieved(277) |or
step
label "Craft_Winter_Clothes"
talk Penney Copperpinch##13420
buy 1 Pattern: Green Winter Clothes##34261 |goto Orgrimmar/0 52.68,77.29 |or
'|complete achieved(277) |or
step
use the Pattern: Green Winter Clothes##34261
learn Green Winter Clothes##44950 |or
'|complete achieved(277) |or
step
collect 16 Runecloth##14047 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
collect 3 Wool Cloth##2592 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
talk Shimra##5817
|tip Inside the building.
buy 1 Rune Thread##14341 |goto Orgrimmar/0 47.90,80.36
buy 2 Green Dye##2605 |goto Orgrimmar/0 47.90,80.36
'|complete achieved(277) |or
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total |or
'|complete achieved(277) |or
step
create 4 Bolt of Runecloth##18401,Tailoring,4 total |or
'|complete achieved(277) |or
step
create 1 Green Winter Clothes##44950,Tailoring,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Boots"
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 1 Winter Boots##34086 |goto Orgrimmar/0 54.08,73.34 |next "Collect_Winter_Hat" |or |achieve 277 |future
_Or_ |only if skill("Leatherworking") >= 285
Click Here to Craft Boots with Leatherworking |confirm |next "Create_Winter_Boots" |only if skill("Leatherworking") >= 285
step
label "Create_Winter_Boots"
talk Penney Copperpinch##13420
buy Pattern: Winter Boots##34262 |goto Orgrimmar/0 52.68,77.29 |or
'|complete achieved(277) |or
step
use the Pattern: Winter Boots##34262
learn Winter Boots##44953 |or
'|complete achieved(277) |or
step
collect 1 Copper Bar##2840 |or
|tip Farm and Smelt it with Mining or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 1 Bolt of Woolen Cloth##2997 |or
|tip Farm the cloth from humanoid mobs and create it with Tailoring or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 4 Rugged Leather##8170 |or
|tip Farm it with Skinning or purchase it from the Auction House.
'|complete achieved(277) |or
step
create 1 Winter Boots##44953,Leatherworking,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Hat"
kill Grand Magus Telestra##26731
|tip Inside "The Nexus" dungeon.
|tip It's the bottom portal.
|tip The hat will only drop on Heroic difficulty.
Collect a Winter Hat |complete itemcount(21525) >=1 or itemcount(21524) >= 1 |goto The Nexus/0 |or
'|complete achieved(277) |or
step
collect Smokywood Pastures Sampler##17685 |or
|tip You should have this from completing "Treats for Greatfather Winter" in the quest guide.
|tip It can take a while for this to appear in your mailbox.
'|complete achieved(277) |or
step
use the Smokywood Pastures Sampler##17685
use Smokywood Pastures Extra-Special Gift##21216
|tip You may also receive this later in the mail.
collect 1 Graccu's Mince Meat Fruitcake##21215 |or
'|complete achieved(277) |or
step
use the Red Winter Clothes##44958
Equip the Red Winter Clothes |equipped Red Winter Clothes##44958
|only if itemcount(44958) >= 1
step
use the Green Winter Clothes##34087
Equip the Green Winter Clothes |equipped Green Winter Clothes##34087
|only if itemcount(34087) >= 1
step
use the Winter Boots##34086
Equip the Winter Boots |equipped Winter Boots##34086
step
use the Green Winter Hat##21525
Equip the Green Winter Hat |equipped Green Winter Hat##21525
|only if itemcount(21525) >= 1
step
use the Red Winter Hat##21524
Equip the Red Winter Hat |equipped Red Winter Hat##21524
|only if itemcount(21524) >= 1
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1690) end,
achieveid={1691},
patch='30003',
description="During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a "..
"snowman and then dance with another snowman in Dalaran.",
},[[
step
Reach Level 80 |ding 80
step
Complete the "Feast of Winter Veil Quests" Guide |complete completedq(6984)
step
collect 1 Winter Veil Disguise Kit##17712 |or
|tip This should appear in your mailbox within 24 hours of completing the quest guide.
'|complete achieved(1690) |or
step
talk Penney Copperpinch##13420
buy 1 Snowball##17202 |goto Orgrimmar/0 52.68,77.29 |or
'|complete achieved(1690) |or
step
use the Winter Veil Disguise Kit##17712
|tip Use it near another snowman because it will root you.
|tip You may have to search around Dalaran.
Become a Snowman |complete hasbuff(21848) or achieved(1690) |goto Dalaran/1 49.59,29.04
step
|script DoEmote("DANCE")
Dance with Another Snowman |achieve 1690
|tip Target another snowman player.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\BB King",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(4437) end,
achieveid={4437},
patch='30300',
description="Pelt the following enemy leaders:\n\nAnduin Wrynn\nKing Magni Bronzebeard\n"..
"Prophet Velen\nTyrande Whisperwind\nHigh Tinker Mekkatorque",
},[[
step
click A Winter Veil Gift
|tip You can only open a present from December 25 to January 2.
accept A Winter Veil Gift##13966 |goto Orgrimmar/0 52.12,69.09
step
use Winter Veil Gift##46740
collect 1 Red Rider Air Rifle##46725 |or
|tip You can only open a present from December 25 to January 2.
'|complete achieved(4437) |or
step
Enter the building |goto Stormwind City/0 80.66,37.92 < 10 |walk
clicknpc King Varian Wrynn##29611
use the Red Rider Air Rifle##46725
|tip Use it on Varian Wrynn inside the building.
Use your Red Rider Air Rifle on Varian Wrynn |achieve 4437/4 |goto Stormwind City/0 85.77,31.72
step
Enter the building |goto Ironforge/0 44.38,49.72 < 10 |walk
clicknpc Muradin Bronzebeard##42928
use the Red Rider Air Rifle##46725
|tip Use it on Muradin Bronzebeard inside the building.
Use your Red Rider Air Rifle on Muradin Bronzebeard |achieve 4437/3 |goto Ironforge/0 39.18,56.07
step
Enter the building |goto Darnassus/0 43.02,74.76 < 10 |walk
clicknpc Tyrande Whisperwind##7999
use the Red Rider Air Rifle##46725
|tip Use it on Tyrande Whisperwind upstairs inside the building.
Use your Red Rider Air Rifle on Tyrande Whisperwind |achieve 4437/2 |goto Darnassus/0 43.01,78.08
step
clicknpc Prophet Velen##17468
use the Red Rider Air Rifle##46725
|tip Use it on Prophet Velen in The Vault of the Lights in The Exodar.
Use your Red Rider Air Rifle on Prophet Velen |achieve 4437/1 |goto The Exodar/0 32.84,54.48
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Crashin' & Thrashin'",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1295) end,
achieveid={1295},
patch='30002',
description="Gain 25 crashes with your Crashin' Thrashin' Racer during the Feast of Winter Veil.",
},[[
step
Enter the building |goto Dalaran/1 43.15,45.13 < 5
talk Jepetto Joybuzz##29478
buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |goto Dalaran/1 48.93,30.04 |or
'|complete achieved(1295) |or
step
use the Blue Crashin' Thrashin' Racer Controller##54343
|tip Use the "Racer Rocket Slam" ability on other players' race controllers.
|tip You will likely need to search for them.
|tip Having a friend to do this with helps.
Gain #25# Crashes with your Racer |achieve 1295 |goto Orgrimmar/0 51.34,78.74
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1282) end,
achieveid={1282},
patch='30001',
description="Complete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil.",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
Collect a Fresh Holly or Preserved Holly |complete itemcount(21212) >= 1 or itemcount(21212) >= 1 |achieve 1282 |future
step
Routing to proper section |next "Complete_Achievement_Quest" |only if completedq(11010)
Routing to proper section |next "Unlock_Ogri'la_Dailies" |only if not completedq(11010)
step
label "Unlock_Ogri'la_Dailies"
talk Chu'a'lor##23233
accept The Trouble Below##11057 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Crystals##11025 |goto Blade's Edge Mountains/0 28.75,57.38
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 6 Apexis Shard##32569 |goto Blade's Edge Mountains/0 29.23,53.70 |q 11025
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto Blade's Edge Mountains/0 28.75,57.38
accept An Apexis Relic##11058 |goto Blade's Edge Mountains/0 28.75,57.38
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains/0 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Emanations |q 11058/1 |goto Blade's Edge Mountains/0 29.05,47.00
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 11 Apexis Shard##32569 |goto Blade's Edge Mountains/0 29.23,53.70 |q 11030
step
Click the Fel Crystalforge
|tip It looks like a big metal machine with green smoke coming out of it.
Choose _"Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards"_
collect 1 Unstable Flask of the Beast##32598 |q 11030/1 |goto Blade's Edge Mountains/0 32.79,40.49
step
talk Chu'a'lor##23233
turnin An Apexis Relic##11058 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Relic's Emanation##11080 |goto Blade's Edge Mountains/0 28.75,57.38
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains/0 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Vibrations |q 11080/1 |goto Blade's Edge Mountains/0 31.49,63.35
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains/0 28.75,57.38
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains/0 27.40,52.69
step
label "Complete_Achievement_Quest"
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |goto Blade's Edge Mountains/0 27.58,52.91
step
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11010/1 |goto Blade's Edge Mountains/0 34.49,40.99 |achieve 1282 |future
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |goto Blade's Edge Mountains/0 27.58,52.91
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.58,52.91
step
_You must be on a flying mount!_
use the Preserved Holly##21213 |only if itemcount(21213) >= 1
use the Fresh Holly##21212 |only if itemcount(21212) >= 1
Use Holly While Riding your Flying Mount |havebuff Festive Holiday Mount##62061 |achieve 1282 |future
step
_You must be on a flying reindeer mount!_
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto Blade's Edge Mountains/0 34.49,40.99 |achieve 1282 |future
step
_You must be on a flying reindeer mount!_
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.58,52.91
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1689) end,
achieveid={1689},
patch='30002',
description="Open one of the presents underneath the Winter Veil tree once they are available.",
},[[
step
Click a present under the tree
|tip You can only open a present from December 25 to January 2.
|tip No peeking!
|achieve 1689 |goto Orgrimmar/0 52.12,69.09
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1685) end,
achieveid={1685},
patch='30002',
description="Use Mistletoe on the three Horde \"Brothers\" during the Feast of Winter Veil.",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 8 Mistletoe##21519 |achieve 1685 |future
step
use the Mistletoe##21519
|tip Use it on Brother Malach.
|tip He is located in the War Quarter of Undercity.
Use Mistletoe on Brother Malach |achieve 1685/1 |goto Undercity/0 50.87,21.70 |achieve 1685 |future
step
use the Mistletoe##21519
|tip Use it on Durkot Wolfbrother.
|tip Downstairs in the stables of Warsong Hold.
Use Mistletoe on Durkot Wolfbrother |achieve 1685/2 |goto Borean Tundra/0 40.25,55.05 |achieve 1685 |future
step
_Find Orgrim's Hammer flying around in the sky_
|tip On your world map, it looks like a ship icon with 2 long reddish ballons on either side of it.
use the Mistletoe##21519
|tip Use it on Brother Keltan.
|tip He is a Blood Elf with gray hair walking around Orgrim's Hammer.
Use Mistletoe on Brother Keltan |achieve 1685/3 |goto Icecrown/0 61.98,45.38 |achieve 1685 |future
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1687) end,
achieveid={1687},
patch='30002',
description="During the Feast of Winter Veil, use a Handful of Snowflakes on the following "..
"race/class combinations:\n\nBlood Elf Warlock\nDraenei Priest\nDwarf Paladin\n"..
"Gnome Mage\nHuman Warrior\nNight Elf Druid\nOrc Death Knight\nTauren Shaman\n"..
"Troll Hunter\nUndead Rogue",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Inside the building.
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 10 Handful of Snowflakes##34191 |goto Orgrimmar/0 54.55,77.89 |or
'|complete achieved(1687) |or
step
Use a Handful of Snowflakes on the following race/class combinations:
use the Handful of Snowflakes##34191
|tip Use one on each of the races below.
Blood Elf Warlock |achieve 1687/10 |goto Orgrimmar/0 51.12,78.52
Draenei Priest |achieve 1687/1 |goto Orgrimmar/0 51.12,78.52
Dwarf Paladin |achieve 1687/6 |goto Orgrimmar/0 51.12,78.52
Gnome Mage |achieve 1687/7 |goto Orgrimmar/0 51.12,78.52
Human Warrior |achieve 1687/3 |goto Orgrimmar/0 51.12,78.52
Night Elf Druid |achieve 1687/8 |goto Orgrimmar/0 51.12,78.52
Orc Death Knight |achieve 1687/4 |goto Orgrimmar/0 51.12,78.52
Tauren Shaman |achieve 1687/9 |goto Orgrimmar/0 51.12,78.52
Troll Hunter |achieve 1687/2 |goto Orgrimmar/0 51.12,78.52
Undead Rogue |achieve 1687/5 |goto Orgrimmar/0 51.12,78.52
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(273) end,
achieveid={273},
patch='30008',
description="Save Metzen the Reindeer.",
},[[
step
Reach Level 80 |ding 80
step
talk Kaymard Copperpinch##13418
accept Metzen the Reindeer##8746 |goto Orgrimmar/0 52.54,77.04
step
use the Smokywood Satchel##21315
Open the Smokywood Satchel |complete itemcount(21315) == 0
|only if haveq(8746) or completedq(8746)
step
clicknpc Metzen the Reindeer##15664
Choose _"Sprinkle some of the reindeer dust onto Metzen."_
Free Metzen the Reindeer |q 8746/1 |goto Searing Gorge/0 68.76,34.23
|only if haveq(8746) or completedq(8746)
step
talk Kaymard Copperpinch##13418
turnin Metzen the Reindeer##8746 |goto Orgrimmar/0 52.54,77.04
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(259) end,
achieveid={259},
patch='30001',
description="Throw a snowball at Baine Bloodhoof during the Feast of Winter Veil.",
},[[
step
talk Penney Copperpinch##13420
buy 1 Snowball##17202 |goto Orgrimmar/0 52.68,77.29 |or
'|complete achieved(259) |or
step
clicknpc Baine Bloodhoof##36648
use the Snowball##17202
|tip Use it on Baine Bloodhoof.
Throw a Snowball at Baine Bloodhoof |achieve 259 |goto Thunder Bluff/0 60.25,51.67
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(279) end,
achieveid={279},
patch='30008',
description="Complete the quest to retrieve Smokywood Pastures' stolen treats and receive a Smokywood Pastures' Thank You.",
},[[
step
ding 80
|tip You will also need 300 cooking skill for one quest.
|tip It will not be shown if you do not meet the skill requirement.
step
talk Strange Snowman##13636
accept You're a Mean One...##6983 |goto Hillsbrad Foothills/0 42.35,41.14
step
kill The Abominable Greench##54499
|tip This is a boss and will require a group.
collect Stolen Treats##17662 |q 6983/2 |goto Hillsbrad Foothills/0 43.56,39.13
step
Free Metzen the Reindeer |q 6983/1 |goto Hillsbrad Foothills/0 44.12,38.56
|tip Metzen will run free shortly after killing the Greench.
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/0 52.54,77.04
step
talk Kaymard Copperpinch##13418
accept A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/0 52.54,77.04
|tip This should be available after completing You're a Mean One...
step
talk Great-father Winter##13445
turnin A Smokywood Pastures' Thank You!##6984 |goto Orgrimmar/0 49.63,78.00
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1688) end,
achieveid={1688},
patch='30003',
description="During the Feast of Winter Veil, use your culinary expertise to produce a Gingerbread "..
"Cookie, Winter Veil Egg Nog and Hot Apple Cider.",
},[[
step
Reach 325 Cooking Skill |complete skill("Cooking") >= 325 or achieved(1688)
|tip Use the "Cooking 1-525" Profession guide.
|loadguide "Profession Guides\\Cooking\\Cooking (1-525)"
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Orgrimmar/0 53.65,78.77 |or
'|complete achieved(1688) |or
step
talk Kaymard Copperpinch##13418
buy 1 Sparkling Apple Cider##34412 |goto Orgrimmar/0 52.54,77.04 |achieve 1688
step
talk Penney Copperpinch##13420
buy 1 Recipe: Winter Veil Egg Nog##17201 |goto Orgrimmar/0 52.68,77.29
buy 1 Recipe: Hot Apple Cider##34413 |goto Orgrimmar/0 52.68,77.29
buy 1 Recipe: Gingerbread Cookie##17200 |goto Orgrimmar/0 52.68,77.29
buy 3 Holiday Spices##17194 |goto Orgrimmar/0 52.68,77.29
buy 2 Holiday Spirits##17196 |goto Orgrimmar/0 52.68,77.29
'|complete achieved(1688) |or
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy 2 Small Egg##6889 |goto Orgrimmar/0 54.08,73.34 |next "Learn_Hot_Apple_Cider" |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
'|complete achieved(1688) |or
step
label "Farm_Small_Eggs"
Kill Dragonhawk enemies around this area
collect 2 Small Egg##6889 |goto Eversong Woods/0 43.41,56.60 |or
'|complete achieved(1688) |or
step
label "Learn_Hot_Apple_Cider"
use the Recipe: Hot Apple Cider##34413
learn Hot Apple Cider##45022 |or
'|complete achieved(1688) |or
step
use the Recipe: Egg Nog##17201
learn Egg Nog##21144 |or
'|complete achieved(1688) |or
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143 |or
'|complete achieved(1688) |or
step
cast Basic Campfire##818
|tip Stand next to your fire or a brazier in Orgrimmar.
create 1 Gingerbread Cookie##21143,Cooking,1 total |achieve 1688/1 |goto Orgrimmar/0 51.36,78.30
step
cast Basic Campfire##818
|tip Stand next to your fire or a brazier in Orgrimmar.
create 1 Egg Nog##21144,Cooking,1 total |achieve 1688/2 |goto Orgrimmar/0 51.36,78.30
step
cast Basic Campfire##818
|tip Stand next to your fire or a brazier in Orgrimmar.
create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |goto Orgrimmar/0 51.36,78.30
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(252) end,
achieveid={252},
patch='30001',
description="Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine.",
},[[
step
label "Become_A_Little_Helper"
Become a Little Helper |havebuff texture:135849 |goto Orgrimmar/0 50.25,62.15 |or
|tip Step on the blue pad.
'|complete achieved(252) |or
step
Kill enemies in PvP combat
|tip Queue up for PvP Battlegrounds and kill enemy players.
Earn #50# PvP Kills as a Little Helper |achieve 252 |or
'|nobuff texture:135849 |next "Become_A_Little_Helper" |or |only if not achieved(252)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1691) end,
achieveid={1691},
patch='30003',
description="Complete the following Winter Veil achievements:\n\nOn Metzen!\nScrooge\n"..
"'Tis the Season\nLet It Snow\nThe Winter Veil Gourmet\nA Frosty Shake\n"..
"With a Little Helper from My Friends\nFa-la-la-la-Ogri'la\nSimply Abominable\n"..
"Bros. Before Ho Ho Ho's\nHe Knows If You've Been Naughty",
},[[
step
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go",{
cataready=true,
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(5854) end,
achieveid={5854},
patch='40001',
description="Use your Gaudy Winter Veil Sweater to carol in enemy capital cities during the Feast of Winter Veil.",
},[[
step
collect Gaudy Winter Veil Sweater##70923
|tip Gifts under the tree on or after December 25th award this item.
|tip You will need it to carol in capital cities.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Darnassus |achieve 5854/4 |goto Darnassus/0 32.72,49.24
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in The Exodar |achieve 5854/2 |goto The Exodar/0 73.34,36.51
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Ironforge |achieve 5854/1 |goto Ironforge/0 29.83,82.21
|tip This is an enemy capital city and has hostile NPCs and players.
step
use the Gaudy Winter Veil Sweater##70923
Carol in Stormwind City |achieve 5854/3 |goto Stormwind City/0 67.77,80.07
|tip This is an enemy capital city and has hostile NPCs and players.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Love is in the Air Main Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Love is in the Air Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Be Mine!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Charming")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Dangerous Love")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Fistful of Love")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\I Pitied The Fool")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Lonely?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Lovely Luck Is On Your Side")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\My Love is Like a Red, Red Rose")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Nation of Adoration")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Perma-Peddle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Shafted!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\Sweet Tooth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Love is in the Air\\Achievements\\The Rocket's Pink Glare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Lunar Festival Main Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\A Coin of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\5 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\10 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\25 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\50 Coins of Ancestry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Eastern Kingdoms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Northrend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of the Dungeons")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of the Alliance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\To Honor One's Elders")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Burning Hot Pole Dance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Torch Juggler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Now We're Cookin'")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Progress")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Noblegarden Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Noblegarden Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Blushing Bride")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Chocoholic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Chocolate Lover")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Desert Rose")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Dressed for the Occasion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Hard Boiled")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\I Found One!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Noble Garden")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Spring Fling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Sunday's Finest")
