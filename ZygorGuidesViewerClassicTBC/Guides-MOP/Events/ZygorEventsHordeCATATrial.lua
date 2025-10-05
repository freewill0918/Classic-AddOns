local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return completedq(12492) end,
description="This guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Orc Commoner##19175
accept Brewfest!##11446 |goto Orgrimmar/1 51.55,75.17
step
talk Tapper Swindlekeg##24711
turnin Brewfest!##11446 |goto Durotar/0 41.58,18.45
accept Welcome to Brewfest!##11447 |goto Durotar/0 41.58,18.45
step
talk Ram Master Ray##24497
accept Now This is Ram Racing... Almost.##11409 |goto Durotar/0 42.62,17.84
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so.
Maintain a Trot for 8 seconds |q 11409/1
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the ram Trot.
Maintain a Canter for 8 seconds |q 11409/2
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Ram Racing Reins.
Maintain a Gallop for 8 seconds |q 11409/3
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883 |q 11409
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin Now This is Ram Racing... Almost.##11409 |goto Durotar/0 42.62,17.84
accept There and Back Again##11412 |goto Durotar/0 42.62,17.84
step
map Durotar/0
path follow strictbounce; loop off; ants curved; dist 20
path	42.98,17.74	44.16,17.87	44.85,16.90	47.44,16.31	49.09,13.59
path	50.79,13.90
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Bok Dropcertain will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver #3# Kegs in Under 4 Minutes |q 11412/1 |or
|tip If you lose your ram, return to Ram Master Ray to acquire another.
step
Stop Riding the Ram |nobuff Ramstein's Swift Work Ram##43880 |q 11412
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin There and Back Again##11412 |goto Durotar/0 42.62,17.84
step
talk Driz Tumblequick##24510
accept A New Supplier of Souvenirs##29396 |goto Durotar/0 42.69,17.72
step
talk Bizzle Quicklift##27216
accept Chug and Chuck!##12191 |goto Durotar/0 41.53,17.60
step
click Alcohol-Free Brewfest Sampler##186189
|tip They looks like mugs of beer on the small tables on either side of you.
use the Alcohol-Free Brewfest Sampler##33096
Hit the S.T.O.U.T. #5# Times |q 12191/1 |goto Durotar/0 41.54,17.52
step
talk Bizzle Quicklift##27216
turnin Chug and Chuck!##12191 |goto Durotar/0 41.53,17.60
step
talk Blix Fixwidget##24495
turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12194 |goto Durotar/0 44.07,17.98
|only if haveq(12194) or completedq(12194)
step
talk Glodrak Huntsniper##11431
accept Catch the Wild Wolpertinger!##11431 |goto Durotar/0 41.23,18.53
|only if GetCurrentRegion() ~= 3
step
talk Glodrak Huntsniper##11431
Select _"What if I don't like drinking... is there another way I can help out?"_
Select _"I'd like a pair of Synthebrew Goggles."_
collect Synthebrew Goggles##46735 |goto Durotar/0 41.23,18.53 |q 11431
|only if haveq(11431) or completedq(11431)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11431
|only if haveq(11431) or completedq(11431)
step
clicknpc Wild Wolpertinger##23487
use the Wolpertinger Net##32907
|tip They look like rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11431/1 |goto Durotar/0 42.25,16.84
You can find more around here [goto Durotar/0 45.30,18.58]
|only if haveq(11431) or completedq(11431)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11431
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11431) or completedq(11431)
step
talk Glodrak Huntsniper##11431
turnin Catch the Wild Wolpertinger!##11431 |goto Durotar/0 41.23,18.53 |only if haveq(11431) or completedq(11431)
accept Pink Elekks On Parade##11120 |goto Durotar/0 41.23,18.53 |only if completedq(11431)
|only if haveq(11431) or completedq(11431)
step
talk Blix Fixwidget##24495
turnin A New Supplier of Souvenirs##29396 |goto Durotar/0 40.32,17.89
step
Go to Tirisfal Glades |goto Undercity/0 66.12,13.46 < 50 |c |q 11120
|tip Upstairs in the ruins of Lordaeron.
|tip Go to this spot before you equip the goggles.
|only if haveq(11120) or completedq(11120)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
|only if haveq(11120) or completedq(11120)
step
use the Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
|tip They are found above Undercity, in Tirisfal Glades.
kill 3 Tirisfal Pink Elekk##23530 |q 11120/3 |goto Undercity/0 66.12,13.46
|only if haveq(11120) or completedq(11120)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11120
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11120) or completedq(11120)
step
Go to Eversong Woods |goto Eversong Woods/0 56.97,53.14 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
|only if haveq(11120) or completedq(11120)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
|only if haveq(11120) or completedq(11120)
step
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Eversong Pink Elekk##23531 |q 11120/1 |goto Eversong Woods/0 56.97,53.14
|only if haveq(11120) or completedq(11120)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11120
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11120) or completedq(11120)
step
Go to Thunder Bluff |goto Thunder Bluff/0 32.33,70.85 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
|only if haveq(11120) or completedq(11120)
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
|only if haveq(11120) or completedq(11120)
step
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Mulgore Pink Elekk##23529 |q 11120/2 |goto Thunder Bluff/0 32.33,70.85
|only if haveq(11120) or completedq(11120)
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11120
|tip Remove the Synthebrew Goggles and re-equip your helm.
|only if haveq(11120) or completedq(11120)
step
talk Glodrak Huntsniper##11431
turnin Pink Elekks On Parade##11120 |goto Durotar/0 41.23,18.53
|only if haveq(11120) or completedq(11120)
step
Reach Level 80 |ding 80
|tip Coren Direbrew is level 87 elite.
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
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
description="This guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(12191)
step
label "Begin_Dailies"
talk Ram Master Ray##24497
Select _"Do you still need some help moving kegs from the crash site near Razor Hill?"_
Begin the Keg Run |havebuff Ramstein's Swift Work Ram##43880 |goto Durotar/0 42.62,17.84
step
map Durotar/0
path follow strictbounce; loop off; ants curved; dist 20
path	42.98,17.74	44.16,17.87	44.85,16.90	47.44,16.31	49.09,13.59
path	50.79,13.90
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Bok Dropcertain will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can 4 Minutes |nobuff Ramstein's Swift Work Ram##43880
step
talk Cort Gorestein##24498
accept Bark for Drohn's Distillery!##11407 |goto Durotar/0 40.56,18.18 |or
talk Ja'ron##24499
accept Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar/0 40.20,17.08 |or
|tip You will only be able to accept one of these quests per day.
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Ride your ram into Orgrimmar |goto Orgrimmar/1 52.24,84.44 |c |q 11407
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Ride your ram into Orgrimmar |goto Orgrimmar/1 52.24,84.44 |c |q 11408
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark Outside the Auction House |q 11407/1 |goto Orgrimmar/1 52.32,75.81
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Honor |q 11407/2 |goto Orgrimmar/1 67.78,47.81
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Wisdom |q 11407/3 |goto Orgrimmar/1 43.79,48.55
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Spirits |q 11407/4 |goto Orgrimmar/1 34.31,65.32
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark Outside the Auction House |q 11408/1 |goto Orgrimmar/1 52.32,75.81
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Honor |q 11408/2 |goto Orgrimmar/1 67.78,47.81
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Wisdom |q 11408/3 |goto Orgrimmar/1 43.79,48.55
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Spirits |q 11408/4 |goto Orgrimmar/1 34.31,65.32
|only if haveq(11408)
step
talk Cort Gorestein##24498
turnin Bark for Drohn's Distillery!##11407 |goto Durotar/0 40.56,18.18
|only if haveq(11407)
step
talk Ja'ron##24499
turnin Bark for T'chali's Voodoo Brewery!##11408 |goto Durotar/0 40.20,17.08
|only if haveq(11408)
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto Durotar/0 40.91,17.65 |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Bizzle Quicklift##27216
turnin This One Time, When I Was Drunk...##12020 |goto Durotar/0 41.53,17.60
step
Reach Level 75 |ding 75 |or
|tip Coren Direbrew is level 82 elite.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Queue for Coren Direbrew.
accept Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
Click Here to Continue |confirm |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Tapper Swindlekeg##24711
turnin Direbrew's Dire Brew##12492 |goto Durotar/0 41.58,18.45
|only if haveq(12492)
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies"
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
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37737 |goto Durotar/0 44.07,17.98 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37737
accept Brew of the Month Club##12306
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.48
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
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37737 |goto Durotar/0 44.07,17.98 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37737
accept Brew of the Month Club##12306
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.48
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
talk Brewfest Spy##26719
|tip Inside the dungeon to the right of the entrance, a Mole Machine console will take you to the bar.
|tip The Brewfewst Spy is located in the bar.
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
talk Blix Fixwidget##24495
collect Blue Brewfest Hat##33968 |goto Durotar/0 40.32,17.89 |or
collect Purple Brewfest Hat##33969 |goto Durotar/0 40.32,17.89 |or
collect Green Brewfest Hat##33967 |goto Durotar/0 40.32,17.89 |or
collect Brown Brewfest Hat##33864 |goto Durotar/0 40.32,17.89 |or
|tip Purchase one of these from the vendor.
|tip It will require 50 Brewfest Coins.
'|complete achieved(293) |or
step
talk Blix Fixwidget##24495
collect Brewfest Dress##33863 |goto Durotar/0 40.32,17.89 |or
collect Brewfest Regalia##33862 |goto Durotar/0 40.32,17.89 |or
|tip Purchase one of these from the vendor.
|tip It will require 200 Brewfest Coins.
'|complete achieved(293) |or
step
talk Blix Fixwidget##24495
collect Brewfest Boots##33868 |goto Durotar/0 40.32,17.89 |or
collect Brewfest Slippers##33966 |goto Durotar/0 40.32,17.89 |or
|tip Purchase one of these from the vendor.
|tip It will require 100 Brewfest Coins.
'|complete achieved(293) |or
step
talk Arille Azuregaze##29049
|tip Inside the building.
buy 5 Caraway Burnwine##40042 |goto Durotar/0 48.54,37.44 |or
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
talk Blix Fixwidget##24495
buy Wolpertinger's Tankard##32233 |goto Durotar/0 44.07,17.98 |or
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
|tip You have to defend the three kegs at these locations in order to complete it.
Click the Complimentary Brewfest Sampler
use the Complimentary Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12192 |goto Durotar/0 40.91,17.65 |or
'|complete achieved(1186) |or
step
talk Bizzle Quicklift##27216
turnin This One Time, When I Was Drunk...##12192 |goto Durotar/0 41.53,17.60 |or
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
talk Blix Fixwidget##24495
buy Fresh Brewfest Hops##37750 |goto Durotar/0 40.32,17.89 |or
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
condition_end=function() return achieved(1203) end,
description="Drink the following Brewfest beers:\n\nStout Shrunken Head\nBrewdoo Magic\nJungle River Water\n"..
"Path of Brew\nLong Stride Brew\nSmall Step Brew\nOgre Mead\nMudder's Milk\nGordok Grog",
},[[
step
talk T'chali's Voodoo Brewery Apprentice##23533
buy Stout Shrunken Head##34022 |goto Durotar/0 40.26,17.00 |achieve 1203
buy Brewdoo Magic##34021 |goto Durotar/0 40.26,17.00 |achieve 1203
buy Jungle River Water##34020 |goto Durotar/0 40.26,17.00 |achieve 1203
step
talk Drohn's Distillery Apprentice##24501
buy Path of Brew##34019 |goto Durotar/0 40.49,18.15 |achieve 1203
buy Long Stride Brew##34018 |goto Durotar/0 40.49,18.15 |achieve 1203
buy Small Step Brew##34017 |goto Durotar/0 40.49,18.15 |achieve 1203
step
talk Gordok Brew Apprentice##23511
buy Ogre Mead##33035 |goto Durotar/0 40.93,16.89 |achieve 1203
buy Mudder's Milk##33036 |goto Durotar/0 40.93,16.89 |achieve 1203
buy Gordok Grog##33034 |goto Durotar/0 40.93,16.89 |achieve 1203
step
use the Stout Shrunken Head##34022
Drink Some Stout Shrunken Head |achieve 1203/4
step
use the Brewdoo Magic##34021
Drink Some Brewdoo Magic |achieve 1203/3
step
use the Jungle River Water##34020
Drink Some Jungle River Water |achieve 1203/9
step
use the Path of Brew##34019
Drink Some Path of Brew |achieve 1203/6
step
use the Long Stride Brew##34018
Drink Some Long Stride Brew |achieve 1203/8
step
use the Small Step Brew##34017
Drink Some Small Step Brew |achieve 1203/5
step
use the Ogre Mead##33035
Drink Some Ogre Mead |achieve 1203/7
step
use the Mudder's Milk##33036
Drink Some Mudder's Milk |achieve 1203/1
step
use the Gordok Grog##33034
Drink Some Gordok Grog |achieve 1203/2
step
Earn the "Strange Brew" Achievement |achieve 1203
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\The Brewfest Diet",{
mopready=true,
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1185) end,
description="Eat all 8 of the following Brewfest foods:\n\nSucculent Sausage\nDried Sausage\nPickled Sausage\n"..
"Savory Sausage\nSpiced Onion Cheese\nSpicy Smoked Sausage\nThe Essential Brewfest Pretzel\nThe Golden Link",
},[[
step
Reach Level 65 |ding 65
|tip You must be level 644
step
talk Bron##23605
buy Succulent Sausage##34064 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Dried Sausage##34063 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Pickled Sausage##33024 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Savory Sausage##33023 |goto Durotar/0 41.24,17.32 |achieve 1185
buy Spicy Smoked Sausage##33025 |goto Durotar/0 41.24,17.32 |achieve 1185
buy The Golden Link##33026 |goto Durotar/0 41.24,17.32 |achieve 1185
step
talk Uta Roughdough##23603
buy The Essential Brewfest Pretzel##33043 |goto Durotar/0 41.05,18.35 |achieve 1185
step
talk Agnes Farwithers##23604
buy Spiced Onion Cheese##34065 |goto Durotar/0 40.23,17.66 |achieve 1185
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
mopready=true,
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
accept A Season for Celebration##29400 |goto Orgrimmar/1 51.55,75.16
accept Masked Orphan Matron##11357 |goto Orgrimmar/1 51.44,69.54
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
accept Flexing for Nougat##8359 |goto Orgrimmar/1 53.65,78.77
step
clicknpc Innkeeper Gryshka##6929
|tip Inside the building.
|tip Target Innkeeper Gryshka and type "/flex" into your chat to perform the Flex emote.
'|script DoEmote("FLEX")
Flex for Inkeeper Gryshka |q 8359/1 |goto Orgrimmar/1 53.65,78.77
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Flexing for Nougat##8359 |goto Orgrimmar/1 53.65,78.77
step
collect Orgrimmar Nougat##20493 |q 8312/1
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12366 |goto Orgrimmar/1 53.94,78.95
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Edgar Goodwin##54141
|tip Inside the building.
turnin A Friend in Need##29431 |goto Orgrimmar/1 54.40,77.58
accept Missing Heirlooms##29415 |goto Orgrimmar/1 54.40,77.58
step
talk Kali Remik##11814
|tip She patrols around inside this building.
accept Incoming Gumdrop##8358 |goto Orgrimmar/1 32.82,65.15
step
clicknpc Kali Remik##11814
|tip Target Kali Remik and type "/train" into your chat to perform the Train emote.
'|script DoEmote("TRAIN")
Do the "Train" for Kali Remik |q 8358/1 |goto Orgrimmar/1 32.82,65.15
step
talk Kali Remik##11814
turnin Incoming Gumdrop##8358 |goto Orgrimmar/1 32.82,65.15
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
Follow Thief's Trail |q 29416/1 |goto Orgrimmar/1 54.08,73.35
step
talk Auctioneer Drezmit##44866
turnin Fencing the Goods##29416 |goto Orgrimmar/1 54.08,73.35
accept Shopping Around##29425 |goto Orgrimmar/1 54.08,73.35
step
talk Delian Sunshade##54146
Watch the Dialogue
Investigate Droffers and Son |q 29425/1 |goto Orgrimmar/1 58.05,48.39
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Shopping Around##29425 |goto Orgrimmar/1 58.05,48.39
accept Taking Precautions##29426 |goto Orgrimmar/1 58.05,48.39
step
talk Kor'geld##3348
|tip Inside the building.
collect 5 Crystal Vial##3371 |q 29426/1 |goto Orgrimmar/1 55.23,45.82
step
click Blood Nettle##209059+
|tip They are only found in the Valley of Wisdom.
collect 5 Blood Nettle##71035 |q 29426/3 |goto Orgrimmar/1 45.88,49.16
step
talk Hagrus##3335
|tip Inside the building.
buy 5 Arcane Powder##17020 |q 29426/2 |goto Orgrimmar/2 44.17,35.66
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Taking Precautions##29426 |goto Orgrimmar/1 58.05,48.39
accept The Collector's Agent##29427 |goto Orgrimmar/1 58.05,48.39
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
turnin What Now?##29428 |goto Orgrimmar/1 54.40,77.58
step
click Edgar's Crate##209095
accept The Creepy Crate##29429 |goto Orgrimmar/1 54.47,77.55
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
