local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("EventsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return completedq(12491) end,
description="This guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Dwarf Commoner##19148
accept Brewfest!##11441 |goto Ironforge/0 30.82,62.83
step
talk Ipfelkofer Ironkeg##24710
turnin Brewfest!##11441 |goto Dun Morogh/0 55.12,38.08
accept Welcome to Brewfest!##11442 |goto Dun Morogh/0 55.12,38.08
step
talk Boxey Boltspinner##27215
accept Chug and Chuck!##12022 |goto Dun Morogh/0 54.67,38.09
step
click Alcohol-Free Brewfest Sampler##186189+
|tip They look like mugs of beer on the small tables inside this tent.
collect Alcohol-Free Brewfest Sampler##33096 |n
use the Alcohol-Free Brewfest Sampler##33096
|tip Face yourself towards the Self-Turning and Oscillating Utility Target behind the tent.
Hit the S.T.O.U.T. #5# Times |q 12022/1 |goto Dun Morogh/0 54.74,37.92
step
talk Boxey Boltspinner##27215
turnin Chug and Chuck!##12022 |goto Dun Morogh/0 54.67,38.09
step
talk Neill Ramstein##23558
accept Now This is Ram Racing... Almost.##11318 |goto Dun Morogh/0 53.68,38.55
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Giddyup! ability every 2 seconds or so.
Maintain a Trot for 8 seconds |q 11318/1
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the ram Trot.
Maintain a Canter for 8 seconds |q 11318/2
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Ram Racing Reins.
Maintain a Gallop for 8 seconds |q 11318/3
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883 |q 11318
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin Now This is Ram Racing... Almost.##11318 |goto Dun Morogh/0 53.68,38.55
accept There and Back Again##11122 |goto Dun Morogh/0 53.68,38.55
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 20
path	53.55,38.69	53.66,40.23	54.59,43.32	54.57,47.45	53.93,49.28
path	53.12,50.78
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver 3 Kegs in Under 4 Minutes |q 11122/1
|tip If you lose your ram, return to Neill Ramstein to acquire another.
step
Stop Riding the Ram |nobuff Ramstein's Swift Work Ram##43880 |q 11122
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin There and Back Again##11122 |goto Dun Morogh/0 53.68,38.55
step
talk Pol Amberstill##24468
accept Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto Dun Morogh/0 53.54,38.57 |or
|tip This quest is not always available.
Click Here if this Quest Is Not Offered |confirm |or
step
talk Belbi Quikswitch##23710
turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto Dun Morogh/0 56.39,37.84
|only if haveq(12193) or completedq(12193)
step
talk Pol Amberstill##24468
accept A New Supplier of Souvenirs##29397 |goto Dun Morogh/0 53.54,38.57
step
talk Goldark Snipehunter##23486
accept Catch the Wild Wolpertinger!##11117 |goto Dun Morogh/0 55.13,37.72
|only if GetCurrentRegion() ~= 3
step
talk Goldark Snipehunter##23486
Select _"What are Synthebrew Goggles?"_ |gossip 92304
Select _"I'd like a pair of Synthebrew Goggles."_ |gossip 94708
collect Synthebrew Goggles##46735 |goto Dun Morogh/0 55.13,37.72 |q 11117
|only if haveq(11117) or completedq(11117)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11117
|only if haveq(11117) or completedq(11117)
step
clicknpc Wild Wolpertinger##23487+
use the Wolpertinger Net##32907
|tip Use it on Wild Wolpertingers.
|tip They look like small rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11117/1 |goto Dun Morogh/0 53.22,39.84
|only if haveq(11117) or completedq(11117)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11117
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11117) or completedq(11117)
step
talk Goldark Snipehunter##23486
turnin Catch the Wild Wolpertinger!##11117 |goto Dun Morogh/0 55.13,37.72 |only if haveq(11117) or completedq(11117)
accept Pink Elekks On Parade##11118 |goto Dun Morogh/0 55.13,37.72 |only if completedq(11117)
|only if haveq(11117) or completedq(11117)
step
talk Belbi Quikswitch##23710
turnin A New Supplier of Souvenirs##29397 |goto Dun Morogh/0 56.39,37.84
step
Go to Elwynn Forest |goto Elwynn Forest/0 33.59,51.44 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
|only if haveq(11118) or completedq(11118)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
|only if haveq(11118) or completedq(11118)
step
use the Elekk Dispersion Ray##32960
|tip Use it on Elwynn Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Elwynn Pink Elekk##23507 |q 11118/2 |goto Elwynn Forest/0 33.59,51.44
|only if haveq(11118) or completedq(11118)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11118) or completedq(11118)
step
Go to Darnassus |goto Darnassus/0 67.12,35.28 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
|only if haveq(11118) or completedq(11118)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
|only if haveq(11118) or completedq(11118)
step
use the Elekk Dispersion Ray##32960
|tip Use it on Teldrassil Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Teldrassil Pink Elekk##23527 |q 11118/3 |goto Darnassus/0 67.12,35.28
|only if haveq(11118) or completedq(11118)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11118) or completedq(11118)
step
Go to The Exodar |goto The Exodar/0 79.18,57.47 < 100 |c |q 11118
|tip Go to this spot at the entrance to The Exodar before you equip the goggles.
|only if haveq(11118) or completedq(11118)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
|only if haveq(11118) or completedq(11118)
step
use the Elekk Dispersion Ray##32960
|tip Use it on Azuremyst Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Azuremyst Pink Elekk##23528 |q 11118/1 |goto The Exodar/0 79.18,57.47
|only if haveq(11118) or completedq(11118)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11118) or completedq(11118)
step
talk Goldark Snipehunter##23486
turnin Pink Elekks On Parade##11118 |goto Dun Morogh/0 55.13,37.72
|only if haveq(11118) or completedq(11118)
step
Reach Level 80 |ding 80
|tip Coren Direbrew is level 87 elite.
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto Dun Morogh/0 52.96,51.01
|tip This quest is elite and will require a group.
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
turnin Save Brewfest!##12318
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
accept Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
|confirm
step
talk Ipfelkofer Ironkeg##24710
turnin Direbrew's Dire Brew##12491 |goto Dun Morogh/0 55.12,38.08
|only if haveq(12491)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
description="This guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(11122)
step
label "Begin_Dailies"
talk Neill Ramstein##23558
Select _"Do you still need some help shipping kegs from Kharanos?"_
Begin the Keg Run |havebuff Ramstein's Swift Work Ram##43880 |goto Dun Morogh/0 53.68,38.55
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 20
path	53.55,38.69	53.66,40.23	54.59,43.32	54.57,47.45	53.93,49.28
path	53.12,50.78
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can 4 Minutes |nobuff Ramstein's Swift Work Ram##43880
|tip If you lose your ram, return to Neill Ramstein to acquire another.
step
talk Becan Barleybrew##23627
accept Bark for the Barleybrews!##11293 |goto Dun Morogh/0 56.13,38.06 |or
talk Daran Thunderbrew##23628
accept Bark for the Thunderbrews!##11294 |goto Dun Morogh/0 56.58,36.91 |or
|tip You will only be able to accept one of these quests per day.
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Ironforge/0 21.83,77.49 < 30 |c |q 11293
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Ironforge/0 21.83,77.49 |noway |c |q 11294
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11293/1 |goto Ironforge/0 32.03,64.97
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11294/1 |goto Ironforge/0 32.03,64.97
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11293/2 |goto Ironforge/0 64.18,78.08 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11293/3 |goto Ironforge/0 64.56,24.49 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11293/4 |goto Ironforge/0 28.61,15.12 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11294/2 |goto Ironforge/0 64.18,78.08 |notravel
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11294/3 |goto Ironforge/0 64.56,24.49 |notravel
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11294/4 |goto Ironforge/0 28.61,15.12 |notravel
|only if haveq(11294)
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Becan Barleybrew##23627
turnin Bark for the Barleybrews!##11293 |goto Dun Morogh/0 56.13,38.06
|only if haveq(11293)
step
talk Daran Thunderbrew##23628
turnin Bark for the Thunderbrews!##11294 |goto Dun Morogh/0 56.58,36.91
|only if haveq(11294)
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 48.69,39.13 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 54.67,38.09
step
Reach Level 75 |ding 75 |or
|tip Coren Direbrew is level 82 elite.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto Dun Morogh/0 52.96,51.01 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
Enter the Blackrock Depths Dungeon with your Group |goto Blackrock Depths/1 0,0 |q 12062 |future |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
turnin Save Brewfest!##12318 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
accept Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
Click Here to Continue |confirm |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Ipfelkofer Ironkeg##24710
turnin Direbrew's Dire Brew##12491 |goto Dun Morogh/0 55.12,38.08 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
|only if haveq(12491)
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Month",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(2796) end,
description="Join the Brew of the Month club.",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(2796) |or
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |goto Dun Morogh/0 56.39,37.84 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420
step
Enter the building |goto Ironforge/0 20.65,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto Ironforge/0 18.80,53.11
step
Earn the "Brew of the Month" Achievement |achieve 2796
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Year",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1183) end,
description="Sample the following beers featured in the Brew of the Month club:\n\nBinary Brew\nAutumnal Acorn Ale\n"..
"Bartlett's Bitter Brew\nLord of Frost's Private Label\nWild Winter Pilsner\nIzzard's Ever Flavor\nAromatic Honey Brew\n"..
"Metok's Bubble Bock\nSpringtime Stout\nBlackrock Lager\nStranglethorn Brew\nDraenic Pale Ale",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(2796) |or
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |goto Dun Morogh/0 56.39,37.84 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420
step
Enter the building |goto Ironforge/0 20.65,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto Ironforge/0 18.80,53.11
step
collect Binary Brew##37496 |or
|tip This brew will be in your mailbox for the month of September.
'|complete achieved(1183,5) |or
step
use the Binary Brew##37496
Drink September's Brew |achieve 1183/5
step
collect Autumnal Acorn Ale##37497 |or
|tip This brew will be in your mailbox for the month of October.
'|complete achieved(1183,4) |or
step
use the Autumnal Acorn Ale##37497
Drink October's Brew |achieve 1183/4
step
collect Bartlett's Bitter Brew##37498 |or
|tip This brew will be in your mailbox for the month of November.
'|complete achieved(1183,3) |or
step
use Bartlett's Bitter Brew##37498
Drink November's Brew |achieve 1183/3
step
collect Lord of Frost's Private Label##37499 |or
|tip This brew will be in your mailbox for the month of December.
'|complete achieved(1183,2) |or
step
use Lord of Frost's Private Label##37499
Drink December's Brew |achieve 1183/2
step
collect Wild Winter Pilsner##37488 |or
|tip This brew will be in your mailbox for the month of January.
'|complete achieved(1183,1) |or
step
use the Wild Winter Pilsner##37488
Drink January's Brew |achieve 1183/1
step
collect Izzard's Ever Flavor##37489 |or
|tip This brew will be in your mailbox for the month of February.
'|complete achieved(1183,8) |or
step
use the Izzard's Ever Flavor##37489
Drink February's Brew |achieve 1183/8
step
collect Aromatic Honey Brew##37490 |or
|tip This brew will be in your mailbox for the month of March.
'|complete achieved(1183,11) |or
step
use the Aromatic Honey Brew##37490
Drink March's Brew |achieve 1183/11
step
collect Metok's Bubble Bock##37491 |or
|tip This brew will be in your mailbox for the month of April.
'|complete achieved(1183,12) |or
step
use Metok's Bubble Bock##37491
Drink April's Brew |achieve 1183/12
step
collect Springtime Stout##37492 |or
|tip This brew will be in your mailbox for the month of May.
'|complete achieved(1183,9) |or
step
use the Springtime Stout##37492
Drink May's Brew |achieve 1183/9
step
collect Blackrock Lager##37493 |or
|tip This brew will be in your mailbox for the month of June.
'|complete achieved(1183,6) |or
step
use the Blackrock Lager##37493
Drink June's Brew |achieve 1183/6
step
collect Stranglethorn Brew##37494 |or
|tip This brew will be in your mailbox for the month of July.
'|complete achieved(1183,10) |or
step
use the Stranglethorn Brew##37494
Drink July's Brew |achieve 1183/10
step
collect Draenic Pale Ale##37495 |or
|tip This brew will be in your mailbox for the month of August.
'|complete achieved(1183,7) |or
step
use the Draenic Pale Ale##37495
Drink August's Brew |achieve 1183/7
step
Earn the "Brew of the Year" Achievement |achieve 1183
|tip This achievment requires you to drink a new brew every month for a year.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Direbrewfest",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(295) end,
description="Kill Coren Direbrew.",
},[[
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto Dun Morogh/0 52.96,51.01 |or
|tip This quest is elite and will require a group.
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
turnin Save Brewfest!##12318 |goto Blackrock Depths/1 0.00,0.00
accept Insult Coren Direbrew##12062 |goto Blackrock Depths/1 0.00,0.00 |or
'|complete achieved(295) |or
step
talk Coren Direbrew##23872
|tip Coren Direbrew is located in the bar.
|tip He will attack you after turnin this quest in.
turnin Insult Coren Direbrew##12062 |or
'|complete achieved(295) |or
step
kill Coren Direbrew##23872
Earn the "Direbrewfest" Achievement |achieve 295
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Disturbing the Peace",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(293) end,
description="While wearing 3 pieces of Brewfest clothing, get completely smashed and dance in Dalaran.",
},[[
step
collect 350 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Blue Brewfest Hat##33968 |goto Dun Morogh/0 56.39,37.84 |or
collect Purple Brewfest Hat##33969 |goto Dun Morogh/0 56.39,37.84 |or
collect Green Brewfest Hat##33967 |goto Dun Morogh/0 56.39,37.84 |or
collect Brown Brewfest Hat##33864 |goto Dun Morogh/0 56.39,37.84 |or
|tip Purchase one of these from the vendor.
|tip It will require 50 Brewfest Coins.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Brewfest Dress##33863 |goto Dun Morogh/0 56.39,37.84 |or
collect Brewfest Regalia##33862 |goto Dun Morogh/0 56.39,37.84 |or
|tip Purchase one of these from the vendor.
|tip It will require 200 Brewfest Coins.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Brewfest Boots##33868 |goto Dun Morogh/0 56.39,37.84 |or
collect Brewfest Slippers##33966 |goto Dun Morogh/0 56.39,37.84 |or
|tip Purchase one of these from the vendor.
|tip It will require 100 Brewfest Coins.
'|complete achieved(293) |or
step
talk Arille Azuregaze##29049
|tip Inside the building.
buy 5 Caraway Burnwine##40042 |goto Dalaran/1 48.54,37.44 |or
'|complete achieved(293) |or
step
Equip the Blue Brewfest Hat |equipped Blue Brewfest Hat##33968 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Purple Brewfest Hat |equipped Purple Brewfest Hat##33969 |goto Dalaran/1 50.58,48.36 |only if itemcount(33969) >= 1 |or
Equip the Green Brewfest Hat |equipped Green Brewfest Hat##33967 |goto Dalaran/1 50.58,48.36 |only if itemcount(33967) >= 1 |or
Equip the Brown Brewfest Hat |equipped Brown Brewfest Hat##33864 |goto Dalaran/1 50.58,48.36 |only if itemcount(33864) >= 1 |or
'|complete achieved(293) |or
step
Equip the Brewfest Dress |equipped Brewfest Dress##33863 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Brewfest Regalia |equipped Brewfest Regalia##33862 |goto Dalaran/1 50.58,48.36 |only if itemcount(33862) >= 1 |or
'|complete achieved(293) |or
step
Equip the Brewfest Boots |equipped Brewfest Boots##33868 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Brewfest Slippers |equipped Brewfest Slippers##33966 |goto Dalaran/1 50.58,48.36 |only if itemcount(33966) >= 1 |or
'|complete achieved(293) |or
step
use the Caraway Burnwine##40042
|tip Use them all until you are "Completely Smashed."
Dance in Dalaran |script DoEmote("Dance")
Earn the "Disturbing the Peace" Achievement |achieve 293 |goto Dalaran/1 50.58,48.36
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Does Your Wolpertinger Linger?",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1936) end,
description="Obtain a Wolpertinger pet.",
},[[
step
talk Belbi Quikswitch##23710
buy Wolpertinger's Tankard##32233 |goto Dun Morogh/0 56.39,37.84 |or
'|complete achieved(1936) |or
step
use the Wolpertinger's Tankard##32233
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Down With The Dark Iron",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1186) end,
description="Defend the Brewfest camp from the Dark Iron attack and complete the quest, \"This One Time, When I Was Drunk...\"",
},[[
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 55.94,37.33
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 48.69,39.13 |or
'|complete achieved(1186) |or
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto Dun Morogh/0 54.67,38.09 |or
'|complete achieved(1186) |or
step
Earn the "Down With The Dark Iron" Achievement |achieve 1186
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Drunken Stupor",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1260) end,
description="Fall 65 yards without dying while completely smashed during the Brewfest Holiday.",
},[[
step
talk Kylene##19186
|tip Walking around the building.
buy 5 Flagon of Dwarven Honeymead##2594 |goto Shattrath City/0 75.11,32.27 |or
'|complete achieved(1260) |or
step
use Flagon of Dwarven Honeymead##2594
|tip Use them until you are "Completely Smashed" before jumping.
Earn the "Drunken Stupor" Achievement |achieve 1260 |goto Shattrath City/0 50.22,62.42
|tip You must fall at least 65 yards and not die to receive this achievement.
|tip From this point, run off the edge and miss the platform below, landing on the ground.
|tip You must do this while "Completely Smashed" drunk.
|tip Paladin "Divine Shield" and Mage "Ice Block" allow you to earn this without risk of fall damage.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Have Keg, Will Travel",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(303) end,
description="Obtain a Brewfest mount, or transform yours into one using Brewfest Hops.",
},[[
step
collect 2 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(303) |or
step
Reach Level 20 |ding 20
|tip You must be level 20 to complete this achievement.
|tip Use the leveling guides to accomplish this.
step
talk Belbi Quikswitch##23710
buy Fresh Brewfest Hops##37750 |goto Dun Morogh/0 56.39,37.84 |or
|tip You will need 2 Brewfest Prize Tokens to purchase this.
'|complete achieved(303) |or
step
use the Fresh Brewfest Hops##37750
|tip Mount up and use the hops to make your mount festive.
Earn the "Have Keg, Will Travel" Achievement |achieve 303
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Strange Brew",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1184) end,
description="Drink the following Brewfest beers:\n\nThunderbrew Stout\nThunderbrew Ale\nThunder 45\n"..
"Barleybrew Dark\nBarleybrew Light\nBarleybrew Clear\nOgre Mead\nMudder's Milk\nGordok Grog",
},[[
step
talk Thunderbrew Apprentice##23510
buy Thunderbrew Stout##33033 |goto Dun Morogh/0 56.59,37.00 |achieve 1184
buy Thunderbrew Ale##33032 |goto Dun Morogh/0 56.59,37.00 |achieve 1184
buy Thunder 45##33031 |goto Dun Morogh/0 56.59,37.00 |achieve 1184
step
talk Barleybrew Apprentice##23482
buy Barleybrew Dark##33029 |goto Dun Morogh/0 56.06,38.09 |achieve 1184
buy Barleybrew Light##33028 |goto Dun Morogh/0 56.06,38.09 |achieve 1184
buy Barleybrew Clear##33030 |goto Dun Morogh/0 56.06,38.09 |achieve 1184
step
talk Gordok Brew Apprentice##23511
buy Ogre Mead##33035 |goto Dun Morogh/0 55.47,36.68 |achieve 1184
buy Mudder's Milk##33036 |goto Dun Morogh/0 55.47,36.68 |achieve 1184
buy Gordok Grog##33034 |goto Dun Morogh/0 55.47,36.68 |achieve 1184
step
use the Thunderbrew Stout##33033
Drink Some Thunderbrew Stout |achieve 1184/2
step
use the Thunderbrew Ale##33032
Drink Some Thunderbrew Ale |achieve 1184/4
step
use the Thunder 45##33031
Drink Some Thunder 45 |achieve 1184/9
step
use the Barleybrew Dark##33029
Drink Some Barleybrew Dark |achieve 1184/1
step
use the Barleybrew Light##33028
Drink Some Barleybrew Light |achieve 1184/8
step
use the Barleybrew Clear##33030
Drink Some Barleybrew Clear |achieve 1184/3
step
use the Ogre Mead##33035
Drink Some Ogre Mead |achieve 1184/5
step
use the Mudder's Milk##33036
Drink Some Mudder's Milk |achieve 1184/6
step
use the Gordok Grog##33034
Drink Some Gordok Grog |achieve 1184/7
step
Earn the "Strange Brew" Achievement |achieve 1184
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\The Brewfest Diet",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1185) end,
description="Eat all 8 of the following Brewfest foods:\n\nSucculent Sausage\nDried Sausage\nPickled Sausage\n"..
"Savory Sausage\nSpiced Onion Cheese\nSpicy Smoked Sausage\nThe Essential Brewfest Pretzel\nThe Golden Link",
},[[
step
talk Keiran Donoghue##23481
buy Succulent Sausage##34064 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Dried Sausage##34063 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Pickled Sausage##33024 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Savory Sausage##33023 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy Spicy Smoked Sausage##33025 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
buy The Golden Link##33026 |goto Dun Morogh/0 56.02,36.39 |achieve 1185
step
talk Anne Summers##23521
buy Spiced Onion Cheese##34065 |goto Dun Morogh/0 56.46,37.71 |achieve 1185
step
talk Arlen Lochlan##23522
buy The Essential Brewfest Pretzel##33043 |goto Dun Morogh/0 55.57,38.21 |achieve 1185
step
use The Essential Brewfest Pretzel##33043
Eat The Essential Brewfest Pretzel |achieve 1185/2
step
use the Spiced Onion Cheese##34065
Eat Some Spiced Onion Cheese |achieve 1185/4
step
use the Dried Sausage##34063
Eat Some Dried Sausage |achieve 1185/7
step
use the Succulent Sausage##34064
Eat Some Succulent Sausage |achieve 1185/8
step
use the Savory Sausage##33023
Eat Some Savory Sausage |achieve 1185/5
step
use the Pickled Sausage##33024
Eat Some Pickled Sausage |achieve 1185/6
step
use the Spicy Smoked Sausage##33025
Eat Some Spicy Smoked Sausage |achieve 1185/3
step
use the The Golden Link##33026
Eat The Golden Link |achieve 1185/1
step
Earn "The Brewfest Diet" Achievement |achieve 1185
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Stormwind Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Shattrath Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Dalaran Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Bad Example")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Daily Chores")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Home Alone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Veteran Nanny")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests",{
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="This guide will help you navigate through the Darkmoon Faire Event",
},[[
step
You can Ride the Roller Coaster or Carousel for a Reputation and Experience Buff
|tip You can purchase a Ride Ticket Book from an NPC near either ride.
|tip Ride the either ride to gain a 10% bonus to your experience and reputation gained for 1 hour.
|tip Leaving the ride before it is finished will diminish the duration of your buff.
|tip You can also get a Darkmoon Top hat from Darkmoon Game Prizes that grants the same buff.
|tip Use these wisely as need to improve your level or faction standing.
confirm
step
talk Darkmoon Faire Mystic Mage##54334
accept The Darkmoon Faire##7905 |goto Stormwind City/0 62.26,72.96
|tip After accepting the quest, you can ask her to teleport you to the Darkmoon Faire.
step
talk Innkeeper Farley##295
|tip Inside the building.
buy 5 Moonberry Juice##1645 |goto Elwynn Forest/0 43.77,65.81 |q 29506 |future
|only if skill("Alchemy") >= 1
step
talk Tharynn Bouden##66
buy 5 Light Parchment##39354 |goto Elwynn Forest/0 41.89,67.08 |q 29515 |future
|only if skill("Inscription") >= 1
step
talk Tharynn Bouden##66
buy 1 Coarse Thread##2320 |goto Elwynn Forest/0 41.89,67.08 |q 29520 |future
buy 1 Blue Dye##6260 |goto Elwynn Forest/0 41.89,67.08 |q 29520 |future
buy 1 Red Dye##2604 |goto Elwynn Forest/0 41.89,67.08 |q 29520 |future
|only if skill("Tailoring") >= 1
step
talk Tharynn Bouden##66
buy 5 Coarse Thread##2320 |goto Elwynn Forest/0 41.89,67.08 |q 29517 |future
buy 5 Blue Dye##6260 |goto Elwynn Forest/0 41.89,67.08 |q 29517 |future
buy 10 Shiny Bauble##6529 |goto Elwynn Forest/0 41.89,67.08 |q 29517 |future
|only if skill("Leatherworking") >= 1
step
talk Tharynn Bouden##66
buy 5 Simple Flour##30817 |goto Elwynn Forest/0 41.89,67.08 |q 29509 |future
|only if skill("Cooking") >= 1
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff Darkmoon Strider##134931 |goto Darkmoon Island/0 51.64,24.67
|only if level < 20
step
talk Zina Sharpworth##55266
buy 1 Sack o' Tokens##78910 |goto Darkmoon Island/0 54.34,53.15 |q 29433 |future |or
use the Sack o' Tokens##78910
collect 20 Darkmoon Faire Game Token##71083 |goto Darkmoon Island/0 54.34,53.15 |q 7905 |or
|tip This will let you play all the games at the faire. You can skip this step if you know you need less tokens.
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7905 |goto Darkmoon Island/0 47.90,64.74
step
talk Selina Dourman##10445
accept Banners, Banners Everywhere!##29520 |goto Darkmoon Island/0 55.56,55.00
|only if skill("Tailoring") >= 1
step
talk Professor Thaddeus Paleo##14847
accept Fun for the Little Ones##29507 |goto Darkmoon Island/0 51.89,60.93
|only if skill("Archaeology") >= 1
step
talk Rinling##14841
accept Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Mining") >= 1
step
talk Rinling##14841
accept Talkin' Tonks##29511 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Engineering") >= 1
step
talk Rinling##14841
accept Eyes on the Prizes##29517 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Leatherworking") >= 1
step
talk Stamp Thunderhorn##14845
accept Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Cooking") >= 1
step
talk Stamp Thunderhorn##14845
accept Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Fishing") >= 1
step
talk Sayge##14822
accept Writing the Future##29515 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Inscription") >= 1
step
talk Chronos##14833
accept Tan My Hide##29519 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Skinning") >= 1
step
talk Chronos##14833
accept Herbs for Healing##29514 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Herbalism") >= 1
step
talk Sylannia##14844
accept A Fizzy Fusion##29506 |goto Darkmoon Island/0 50.53,69.57
|only if skill("Alchemy") >= 1
step
talk Chronos##14833
accept Keeping the Faire Sparkling##29516 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Jewelcrafting") >= 1
step
talk Sayge##14822
accept Putting Trash to Good Use##29510 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Enchanting") >= 1
step
talk Yebb Neblegear##14829
accept Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.10,82.04
|only if skill("Blacksmithing") >= 1
step
use the Plump Frogs##72056
collect 5 Breaded Frog##72057 |q 29509
|only if skill("Cooking") >= 1
step
use the Breaded Frog##72057
|tip Use it five times.
Prepare #5# Crunchy Frogs |q 29509/1 |goto Darkmoon Island/0 52.70,68.10
|only if skill("Cooking") >= 1
step
cast Fishing##7620
|tip Equip a fishing pole if you have one.
collect 5 Great Sea Herring##73269 |q 29513/1 |goto Darkmoon Island/0 51.74,91.31
|only if skill("Fishing") >= 1
step
click Discarded Weapon##209283+
|tip They look like sparkling piles of rubble on the ground around this area.
collect 6 Discarded Weapon##72018 |goto Darkmoon Island/0 49.47,71.33 |q 29510
|only if skill("Enchanting") >= 1
step
use the Discarded Weapon##72018
|tip Use it six times.
collect 6 Soothsayer's Dust##71979 |q 29510/1
|only if skill("Enchanting") >= 1
step
click Tonk Scrap##209275
|tip They look like random pieces of metal on the ground around this area.
collect 6 Tonk Scrap##71968 |q 29518/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Mining") >= 1
step
click Bit of Glass##209287+
|tip They look like small green pieces of broken glass on the ground around this area.
|tip You can find these all over the island.
collect 5 Bits of Glass##72052 |goto Darkmoon Island/0 49.47,71.33 |q 29516
|only if skill("Jewelcrafting") >= 1
step
use the Bit of Glass##72052
|tip Use it five times.
collect 5 Sparkling 'Gemstone'##72050 |q 29516/1
|only if skill("Jewelcrafting") >= 1
step
clicknpc Damaged Tonk##54504+
|tip They look like broken Tonk toys on the ground around this area.
use the Battered Wrench##72110
|tip Use it on Damaged Tonks.
Repair #5# Damaged Tonk's |q 29511/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Engineering") >= 1
step
click Darkblossom##209284+
|tip They look like small purple flowers on the ground around this area.
|tip You can find these all over the island.
collect 6 Darkblossom##72046 |q 29514/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Herbalism") >= 1
step
click Staked Skin##209276+
|tip They look like wooden frames with a hide stretched tight inside on the ground around this area.
|tip You can find these all over the island.
Scrape #4# Staked Skins |q 29519/1 |goto Darkmoon Island/0 49.47,71.33
|only if skill("Skinning") >= 1
step
talk Sylannia##14844
buy 5 Fizzy Faire Drink##19299 |q 29506 |goto Darkmoon Island/0 50.53,69.57
|only if skill("Alchemy") >= 1
step
use the Cocktail Shaker##72043
|tip Use it five times.
Create #5# Servings of Moonberry Fizz |q 29506/1
|only if skill("Alchemy") >= 1
step
cast Survey##80451
|tip Use this ability at Fossil Digsites across Kalimdor.
|tip You can find them in Desolace, Dustwallow Marsh, Stonetalon Mountains, Southern Barrens, Tanaris, and Un'Goro Crater.
earn 15 Fossil Fragments##393 |q 29507
|only if skill("Archaeology") >= 1
step
use the Darkmoon Banner Kit##72048
Plant a Darkmoon Banner |q 29520/1 |goto Darkmoon Island/0 48.65,72.75
|only if skill("Tailoring") >= 1
step
use the Iron Stock##71964
|tip Use it next to the Forge.
collect 4 Horseshoes##71967 |q 29508 |goto Darkmoon Island/0 55.12,71.56
|only if skill("Blacksmithing") >= 1
step
use Horseshoe##71967
Put New Horshoes On Baby |q 29508/1 |goto Darkmoon Island/0 51.30,81.80
|only if skill("Blacksmithing") >= 1
step
use the Bundle of Exotic Herbs##71971
collect Prophetic Ink##71972 |q 29515
|only if skill("Inscription") >= 1
step
use Prophetic Ink##71972
|tip Each Fortune requires 1 Light Parchment to create.
|tip Use it five times.
collect 5 Fortune##71974 |q 29515/1
|only if skill("Inscription") >= 1
step
use the Darkmoon Craftsman's Kit##71977
|tip Use it five times.
collect 5 Darkmoon Prize##71976 |q 29517/1
|only if skill("Leatherworking") >= 1
step
talk Stamp Thunderhorn##14845
turnin Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Cooking") >= 1
step
talk Professor Thaddeus Paleo##14847
turnin Fun for the Little Ones##29507 |goto Darkmoon Island/0 51.89,60.93
|only if skill("Archaeology") >= 1
step
talk Stamp Thunderhorn##14845
turnin Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.89,67.94
|only if skill("Fishing") >= 1
step
talk Selina Dourman##10445
turnin Banners, Banners Everywhere!##29520 |goto Darkmoon Island/0 55.56,55.00
|only if skill("Tailoring") >= 1
step
talk Sayge##14822
turnin Writing the Future##29515 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Inscription") >= 1
step
talk Chronos##14833
turnin Tan My Hide##29519 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Skinning") >= 1
step
talk Chronos##14833
turnin Keeping the Faire Sparkling##29516 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Jewelcrafting") >= 1
step
talk Rinling##14841
turnin Eyes on the Prizes##29517 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Leatherworking") >= 1
step
talk Rinling##14841
turnin Talkin' Tonks##29511 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Engineering") >= 1
step
talk Chronos##14833
turnin Herbs for Healing##29514 |goto Darkmoon Island/0 54.99,70.77
|only if skill("Herbalism") >= 1
step
talk Sylannia##14844
turnin A Fizzy Fusion##29506 |goto Darkmoon Island/0 50.53,69.57
|only if skill("Alchemy") >= 1
step
talk Rinling##14841
turnin Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78
|only if skill("Mining") >= 1
step
talk Sayge##14822
turnin Putting Trash to Good Use##29510 |goto Darkmoon Island/0 53.23,75.84
|only if skill("Enchanting") >= 1
step
talk Yebb Neblegear##14829
turnin Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.10,82.04
|only if skill("Blacksmithing") >= 1
step
talk Kerri Hicks##14832
accept Test Your Strength##29433 |goto Darkmoon Island/0 47.90,67.12
step
talk Selina Dourman##10445
Select _"Darkmoon Adventurer's Guide?"_
collect 1 Darkmoon Adventurer's Guide##71634 |goto Darkmoon Island/0 55.56,55.00 |q 29433
|only if haveq(29433)
step
Kill enemies or players anywhere
|tip Only enemies and players that yield experience or honor will award Grisly Trophies.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
|tip You can kill these anywhere you choose.
|tip We recommend passively completeing this quest while doing other activities in the game.
collect 250 Grisly Trophy##71096 |q 29433/1
|only if haveq(29433)
step
talk Kerri Hicks##14832
turnin Test Your Strength##29433 |goto Darkmoon Island/0 47.90,67.12
step
Kill enemies in dungeons
|tip Darkmoon dungeon items can be dropped by trash mobs and bosses from appropriate level dungeons.
|tip Appropriate dungeons are those that still yield experience or those that are max level.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
Collect the Five Darkmoon Dungeon Items |complete completedq(29445) and completedq(29444) and completedq(29451) and completedq(29446) and completedq(29443)
|tip You still need to collect the following items: |only if not completedq(29445) and not completedq(29444) and not completedq(29451) and not completedq(29446) and not completedq(29443)
|tip Mysterious Grimoire |only if not completedq(29445)
|tip Monstrous Egg |only if not completedq(29444)
|tip A Treatise on Strategy |only if not completedq(29451)
|tip Ornate Weapon |only if not completedq(29446)
|tip Imbued Crystal |only if not completedq(29443)
step
use the Mysterious Grimoire##71637
accept An Inriguing Grimoire##29445
step
talk Sayge##14822
turnin An Intriguing Grimoire##29445 |goto Darkmoon Island/0 53.23,75.84
step
use the Monstrous Egg##71636
accept An Exotic Egg##29444
step
talk Yebb Neblegear##14829
turnin An Exotic Egg##29444 |goto Darkmoon Island/0 51.10,82.04
step
use A Treatise on Strategy##71715
accept The Master Strategist##29451
step
use the Ornate Weapon##71638
accept A Wondrous Weapon##29446
step
use the Imbued Crystal##71635
accept A Curious Crystal##29443
step
talk Professor Thaddeus Paleo##14847
turnin The Master Strategist##29451 |goto Darkmoon Island/0 51.89,60.93
turnin A Wondrous Weapon##29446 |goto Darkmoon Island/0 51.89,60.93
turnin A Curious Crystal##29443 |goto Darkmoon Island/0 51.89,60.93
step
Kill enemies in raids
|tip This item can be dropped by trash mobs and bosses from appropriate level raids.
|tip Appropriate raids are those that still yield experience or those that are max level.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
collect Soothsayer's Runes##71716 |q 29464 |future
step
use the Soothsayer's Runes##71716
accept Tools of Divination##29464
step
talk Professor Thaddeus Paleo##14847
turnin Tools of Divination##29464 |goto Darkmoon Island/0 51.89,60.93
step
Kill enemies in Battlegrounds
|tip Darkmoon Battleground items can be dropped by trash mobs and enemy players from PvP Battlegrounds.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
|tip Loot the bodies for a chance to pick up a Darkmoon Faire quest item.
Collect the Three Darkmoon Battleground Items |complete completedq(29458) and completedq(29456) and completedq(29457)
|tip You still need to collect the following items: |only if not completedq(29458) and not completedq(29456) and not completedq(29457)
|tip Fallen Adventurer's Journal |only if not completedq(29458)
|tip Banner of the Fallen |only if not completedq(29456)
|tip Captured Insignia |only if not completedq(29457)
step
use the Adventurer's Journal##71953
accept The Captured Journal##29458
step
use the Banner of the Fallen##71951
accept A Captured Banner##29456
step
use the Captured Insignia##71952
accept The Enemy's Insignia##29457
step
talk Professor Thaddeus Paleo##14847
turnin The Captured Journal##29458 |goto Darkmoon Island/0 51.89,60.93
turnin A Captured Banner##29456 |goto Darkmoon Island/0 51.89,60.93
turnin The Enemy's Insignia##29457 |goto Darkmoon Island/0 51.89,60.93
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Taking the Show on the Road")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Fairegoer's Feast")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Come One, Come All!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Blastenheimer Bullseye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Defender")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Dungeoneer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Darkmoon Despoiler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Faire Favors")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Taking this Show on the Road")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\I Was Promised a Pony")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Quick Shot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Achievements\\Step Right Up")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Quests",{
mopready=true,
condition_end=function() return completedq(8373) end,
description="Complete the quests for the Hallow's End event.",
patch='40405',
},[[
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to be able to accept these quests.
|tip Use the Leveling guides to accomplish this.
step
talk Human Commoner##18927
accept A Season for Celebration##29074 |goto Stormwind City/0 61.68,74.18
accept Costumed Orphan Matron##11356 |goto Stormwind City/0 61.68,74.18
step
talk Celestine of the Harvest##51665
turnin A Season for Celebration##29074 |goto Elwynn Forest/0 32.04,50.51
step
talk Jesper##15310
accept Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest/0 32.03,50.39
step
talk Gretchen Fenlow##51934
accept A Friend in Need##29430 |goto Elwynn Forest/0 32.35,50.88
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12336 |goto Stormwind City/0 60.51,75.33
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Innkeeper Allison##6740
|tip Inside the building.
accept Flexing for Nougat##8356 |goto Stormwind City/0 60.39,75.28 |complete completedq(8311) or completedq(8356)
step
clicknpc Innkeeper Allison##6740
|tip Inside the building.
|tip Target Innkeeper Allison and type "/flex" into your chat to perform the Flex emote.
Flex for Inkeeper Allison |q 8356/1 |goto Stormwind City/0 60.39,75.28 |complete completedq(8311) or completedq("8356/1")
'|script DoEmote("FLEX")
step
talk Innkeeper Allison##6740
|tip Inside the building.
turnin Flexing for Nougat##8356 |goto Stormwind City/0 60.39,75.28 |complete completedq(8311) or completedq(8356)
step
collect Stormwind Nougat##20492 |q 8311/1
|tip Save this, you will need it later.
step
talk Anson Hastings##53949
|tip Inside the building.
turnin A Friend in Need##29430 |goto Stormwind City/0 60.04,75.13
accept Missing Heirlooms##29392 |goto Stormwind City/0 60.04,75.13
step
Search the Courier's Cabin |q 29392/1 |goto Stormwind City/0 24.03,44.81
|tip Downstairs inside the middle deck of the ship.
step
talk Hired Courier##53950
|tip Downstairs inside the middle deck of the ship.
turnin Missing Heirlooms##29392 |goto Stormwind City/0 24.04,44.82
accept Fencing the Goods##29398 |goto Stormwind City/0 24.04,44.82
step
talk Auctioneer Fitch##8719
Select _"Has anyone suspicious tried to list a crate of goods recently?"_ |gossip 113772
Watch the dialogue
Follow the Thief's Trail |q 29398/1 |goto Stormwind City/0 61.11,70.62
step
talk Auctioneer Fitch##8719
turnin Fencing the Goods##29398 |goto Stormwind City/0 61.11,70.62
accept Shopping Around##29399 |goto Stormwind City/0 61.11,70.62
step
Watch the dialogue
|tip Inside the building.
Investigate the Shady Lady |q 29399/1 |goto Stormwind City/0 64.17,46.29
step
talk Hudson Barnes##54021
turnin Shopping Around##29399 |goto Stormwind City/0 64.17,46.29
accept Taking Precautions##29402 |goto Stormwind City/0 64.17,46.29
step
click Blood Nettle##209059+
|tip They look like red and white plants on the ground around this area.
|tip They appear on you minimap as yellow dots.
collect 5 Blood Nettle##71035 |q 29402/3 |goto Stormwind City/0 54.32,14.82
step
talk Keldric Boucher##1257
|tip Inside the building.
Select _"I want to browse your goods."_ |gossip 87621
buy 5 Crystal Vial##3371 |q 29402/1 |goto Stormwind City/0 62.79,75.05
buy 5 Arcane Powder##17020 |q 29402/2 |goto Stormwind City/0 62.79,75.05
step
talk Hudson Barnes##54021
|tip Inside the building.
turnin Taking Precautions##29402 |goto Stormwind City/0 64.17,46.29
accept The Collector's Agent##29403 |goto Stormwind City/0 64.17,46.29
step
Enter the building |goto Stormwind City/0 52.93,50.96 < 7 |walk
Run down the ramp |goto Stormwind City/0 51.24,44.20 < 7 |walk
|tip Follow the little purple spiders downstairs and to the left.
Watch the dialogue
kill Unleashed Void##54114
|tip It will spawn after the dialogue down in the lowest part of the cathedral catacombs.
Disrupt the Meeting |q 29403/1 |goto Stormwind City/0 55.48,43.30
step
click Stolen Crate##209072
|tip In the lowest part of the cathedral catacombs.
turnin The Collector's Agent##29403 |goto Stormwind City/0 55.39,43.41
accept What Now?##29411 |goto Stormwind City/0 55.39,43.41
step
talk Hudson Barnes##54118
|tip Inside the building.
turnin What Now?##29411 |goto Stormwind City/0 65.17,33.47
step
click Anson's Crate##209076
|tip Inside the building.
accept The Creepy Crate##29413 |goto Stormwind City/0 65.07,33.52
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest/0 42.62,64.39
accept Fire Brigade Practice##11360 |goto Elwynn Forest/0 42.62,64.39
step
click Water Barrel |goto Elwynn Forest/0 42.51,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
|tip You may have to wait a short amount of time for the Horseman to attack.
Put Out #5# Fires |q 11360/1 |goto Elwynn Forest/0 42.43,65.63
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
|only if not completedq(8311)
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12286 |goto Elwynn Forest/0 43.74,65.89
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Costumed Orphan Matron##24519
turnin Fire Brigade Practice##11360 |goto Elwynn Forest/0 42.62,64.39
turnin Smash the Pumpkin##12133 |goto Elwynn Forest/0 42.62,64.39 |only if haveq(12133) or completedq(12133)
step
Enter the building |goto Ironforge/0 20.57,53.22 < 5 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
accept Chicken Clucking for a Mint##8353 |goto Ironforge/0 18.16,51.44 |complete completedq(8311) or completedq(8353)
step
clicknpc Innkeeper Firebrew##5111
|tip Inside the building.
|tip Target Innkeeper Firebrew and type "/chicken" into your chat to perform the Chicken emote.
Cluck Like a Chicken for Innkeeper Firebrew |q 8353/1 |goto Ironforge/0 18.16,51.44 |complete completedq(8311) or completedq("8353/1")
'|script DoEmote("CHICKEN")
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
turnin Chicken Clucking for a Mint##8353 |goto Ironforge/0 18.16,51.44 |complete completedq(8311) or completedq(8353)
step
collect Ironforge Mint##20490 |q 8311/3
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12335 |goto Ironforge/0 18.36,50.94
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Talvash del Kissel##6826
accept Incoming Gumdrop##8355 |goto Ironforge/0 36.38,3.62 |complete completedq(8311) or completedq(8355)
step
clicknpc Talvash del Kissel##6826
|tip Target Talvash del Kissel and type "/train" into your chat to perform the Train emote.
Do the "Train" for Talvash |q 8355/1 |goto Ironforge/0 36.38,3.62 |complete completedq(8311) or completedq("8355/1")
'|script DoEmote("TRAIN")
step
talk Talvash del Kissel##6826
turnin Incoming Gumdrop##8355 |goto Ironforge/0 36.38,3.62 |complete completedq(8311) or completedq(8355)
step
collect Gnomeregan Gumdrop##20494 |q 8311/2
|tip Save this, you will need it later.
step
talk Innkeeper Saelienne##6735
accept Dancing for Marzipan##8357 |goto Darnassus/0 62.52,32.79 |complete completedq(8311) or completedq(8357)
step
clicknpc Innkeeper Saelienne##6735
|tip Target Innkeeper Saelienne and type "/dance" into your chat to perform the Dance emote.
Dance for Inkeeper Saelienne |q 8357/1 |goto Darnassus/0 62.52,32.79 |complete completedq(8311) or completedq("8357/1")
'|script DoEmote("DANCE")
step
talk Innkeeper Saelienne##6735
turnin Dancing for Marzipan##8357 |goto Darnassus/0 62.52,32.79 |complete completedq(8311) or completedq(8357)
step
collect Darnassus Marzipan##20496 |q 8311/4
|tip Save this, you will need it later.
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12334 |goto Darnassus/0 62.27,33.15
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Jesper##15310
|tip Inside the building.
turnin Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest/0 32.03,50.39
|next "Events Guides\\Hallow's End\\Hallow's End Daily Quests"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Candy Buckets")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Mask Task")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Trick or Treat!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Out With It")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\A Mask for All Occasions")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Check Your Head")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Masquerade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Sinister Calling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Harvest Festival\\Harvest Festival Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\BB King")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Crashin' & Thrashin'")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Lunar Festival\\Achievements\\Elders of Cataclysm")
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
