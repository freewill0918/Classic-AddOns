local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DailiesCWOTLK") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\The Burning Crusade\\Ogri'la\\Ogri'la Daily Quests",{
cataready=true,
condition_suggested=function() return completedq(11065) and rep("Ogri'la") < Exalted end,
},[[
step
Complete the Ogri'la Questline |complete completedq(11065)
|tip Use the "Ogri'la" reputation guide to accomplish this.
|tip You must complete at least part of this guide to unlock one or more dailies.
|tip The opening quest chain unlocks the first three daily quests.
|tip An additional daily quest is unlocked at Honored reputation.
|tip To unlock it, complete the "Banish the Demons" quest in the "Ogri'la" reputation guide.
step
label "Begin_Ogri'la_Dailies"
talk Chu'a'lor##23233
accept The Relic's Emanation##11080 |goto Blade's Edge Mountains/0 28.76,57.37
|only if completedq(11058)
step
talk Sky Sergeant Vanderlip##23120
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.57,52.91
|only if completedq(11010,11102)
step
talk Skyguard Khatie##23335
accept Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains/0 27.95,51.45
|only if completedq(11065)
step
talk Kronk##23253
accept Banish More Demons##11051 |goto Blade's Edge Mountains/0 28.89,57.92
|only if completedq(11026)
step
kill Apexis Flayer##22175+
click Apexis Shard Formation##185911+
|tip They look like large clusters of crystals on the ground around this area.
|only if haveq(11080) or completedq(11080)
step
click Apexis Relic
|tip It looks like a small floating crystal hovering over a white orb on the ground.
Choose: _<Insert an Apexis Shard, and begin!>_
Repeat the color patterns that are shown
|tip Ignore the floating crystal and focus on the crystals on the ground.
|tip Observe the color sequence and then click the stones on the ground in the same order.
|tip It's random every time, and you'll have to repeat 8 sequences.
Attain the Apexis Vibrations |q 11080/1 |goto Blade's Edge Mountains/0 32.06,63.35
|tip If you fail, you will need to farm another shard.
Additional Shards can be farmed at [29.85,64.49]
|only if haveq(11080) or completedq(11080)
step
use the Skyguard Bombs##32456
|tip Use them on Fel Cannonball Stacks.
|tip They look like piles of gray stones on the ground around this area.
|tip They can only be used while on a flying mount.
|tip Fel Cannons will try to shoot you down while flying.
|tip Mount up on the ground near a Fel Cannonball Stack and immediately use the bombs on the stack.
|tip This will dismount you quickly before a cannon can fire at you.
Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto Blade's Edge Mountains/0 33.30,44.00
|only if haveq(11023) or completedq(11023)
step
kill Aether Ray##22181+
use the Wrangling Rope##32698
|tip Use it on weakened Aether Rays around this area.
|tip Reduce their health until you see a message indicating they can be wrangled.
|tip If you are well-geared, you may need to unequip some of your gear to avoid killing them.
Wrangle #5# Aether Rays |q 11066/1 |goto Blade's Edge Mountains/0 31.60,56.40
|only if haveq(11066) or completedq(11066)
step
use the Banishing Crystal##32696
Kill enemies around this area
|tip Kill Fear Fiends and Abyssal Flamebringers that spawn near the portal that opens.
Banish #15# Demons |q 11051/1 |goto Blade's Edge Mountains/0 29.10,79.30
|only if haveq(11051) or completedq(11051)
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains/0 28.76,57.37
|only if haveq(11080) or completedq(11080)
step
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.57,52.91
|only if haveq(11023) or completedq(11023)
step
talk Skyguard Khatie##23335
turnin Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains/0 27.95,51.45
|only if haveq(11066) or completedq(11066)
step
talk Kronk##23253
turnin Banish More Demons##11051 |goto Blade's Edge Mountains/0 28.89,57.92
|only if haveq(11051) or completedq(11051)
step
You have completed all Ogri'la daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11080,11023,11066,11051) |next "Begin_Ogri'la_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\The Burning Crusade\\Sha'tari Skyguard\\Sha'tari Skyguard Daily Quests",{
cataready=true,
description="\nThis guide section will walk you through completing the Sha'tari Skyguard daily quests.",
condition_suggested=function() return completedq(11098) and rep("Sha'tari Skyguard") < Exalted end,
},[[
step
Complete the "To Skettis!" Quest |complete completedq(11098)
|tip Use the "Sha'tari Skyguard" reputation guide to accomplish this.
|tip This will unlock the first two of four possible daily quests.
step
label "Begin_Daily_Quests"
talk Sky Sergeant Doryn##23048
accept Fires Over Skettis##11008 |goto Terokkar Forest 64.50,66.70
step
use the Skyguard Blasting Charges##32406
|tip Use it at the top of the trees on Monstrous Kaliri Eggs.
Destroy #20# Monstrous Kaliri Eggs |q 11008/1 |goto Terokkar Forest 63.10,80.00
You can find more around:
[61.30,79.90]
[67.50,79.30]
[68.00,85.60]
[70.30,84.50]
step
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.50,66.70
step
talk Skyguard Prisoner##23383
|tip If they're not around, someone may be doing the escort.
accept Escape from Skettis##11085 |goto Terokkar Forest 61.00,75.60
He can also be found at:
[68.40,74.00]
[75.00,86.50]
step
Escort the Skyguard Prisoner
|tip Follow the Skyguard Prisoner.
|tip Kill mobs that attack on the way to the bottom of the bridge.
Rescue the Skyguard Prisoner |q 11085/1
step
talk Sky Sergeant Doryn##23048
turnin Escape from Skettis##11085 |goto Terokkar Forest 64.50,66.70
step
Complete the "Wrangle Some Aether Rays!" and "Bombing Run" Quests |complete completedq(11010,11102) and completedq(11065) |or
|tip Use the "Sha'tari Skyguard" reputation guide to accomplish this.
|tip This will unlock the last two of four possible daily quests.
'|complete not completedq(11008,11085,11023,11066) |next "Begin_Daily_Quests" |or
step
talk Sky Sergeant Vanderlip##23120
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.57,52.91
step
talk Skyguard Khatie##23335
accept Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains/0 27.95,51.45
step
use the Skyguard Bombs##32456
|tip Use them on Fel Cannonball Stacks.
|tip They look like piles of gray stones on the ground around this area.
|tip They can only be used while on a flying mount.
|tip Fel Cannons will try to shoot you down while flying.
|tip Mount up on the ground near a Fel Cannonball Stack and immediately use the bombs on the stack.
|tip This will dismount you quickly before a cannon can fire at you.
Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto Blade's Edge Mountains/0 33.30,44.00
step
kill Aether Ray##22181+
use the Wrangling Rope##32698
|tip Use it on weakened Aether Rays around this area.
|tip Reduce their health until you see a message indicating they can be wrangled.
|tip If you are well-geared, you may need to unequip some of your gear to avoid killing them.
Wrangle #5# Aether Rays |q 11066/1 |goto Blade's Edge Mountains/0 31.60,56.40
step
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains/0 27.57,52.91
step
talk Skyguard Khatie##23335
turnin Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains/0 27.95,51.45
step
You have completed the available Sha'tari Skyguard daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11008,11085,11023,11066) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\The Burning Crusade\\Sha'tari Skyguard\\Sha'tari Skyguard Terokk Farming",{
cataready=true,
description="\nThis guide section will walk you through farming materials to summon and kill Terokk for repeatable reputation.",
condition_suggested=function() return completedq(11073) and rep("Sha'tari Skyguard") < Exalted end,
},[[
step
Complete the "Terokk's Downfall" Quest |complete completedq(11073)
|tip Use the "Sha'tari Skyguard" reputation guide to accomplish this.
step
label "Collect_Shadow_Dust"
Kill Skettis enemies around this area
collect 6 Shadow Dust##32388 |goto Terokkar Forest/0 61.60,75.30
You can find more around:
[69.50,85.50]
[73.20,87.90]
[75.20,81.30]
[69.20,74.10]
step
talk Severin##23042
accept More Shadow Dust##11006 |goto Terokkar Forest/0 64.00,66.90
step
collect 1 Elixir of Shadows##32446
step
use the Elixir of Shadows##32446
Gain the Elixir of Shadows Buff |havebuff Elixir of Shadows##37678
step
Kill Time-Lost Skettis enemies around this area
collect 40 Time-Lost Scroll##32620 |goto Terokkar Forest 61.60,75.30 |or
You can find more around:
[69.50,85.50]
[73.20,87.90]
[75.20,81.30]
[69.20,74.10]
'|complete not hasbuff(37678) and itemcount(32620) < 40 |next "Collect_Shadow_Dust" |or
step
click Skull Pile##185913
|tip This will consume 10 Time-Lost Scrolls.
Choose _<Call forth Gezzarak the Huntress.>_
kill Gezzarak the Huntress##23163
|tip This enemy is elite and may require a group.
collect Gezzarak's Claws##32716 |goto Terokkar Forest 69.70,74.70
You can find more around:
[70.10,79.50]
[73.50,80.70]
[70.20,83.30]
step
click Skull Pile##185913
|tip This will consume 10 Time-Lost Scrolls.
Choose _<Call forth Darkscreecher Akkarai.>_
kill Darkscreecher Akkarai##23161
|tip This enemy is elite and may require a group.
collect Akkarai's Talons##32715 |goto Terokkar Forest 69.70,74.70
You can find more around:
[70.10,79.50]
[73.50,80.70]
[70.20,83.30]
step
click Skull Pile##185913
|tip This will consume 10 Time-Lost Scrolls.
Choose _<Call forth Karrog.>_
kill Karrog##23165
|tip This enemy is elite and may require a group.
collect Karrog's Spine##32717 |goto Terokkar Forest 69.70,74.70
You can find more around:
[70.10,79.50]
[73.50,80.70]
[70.20,83.30]
step
click Skull Pile##185913
|tip This will consume 10 Time-Lost Scrolls.
Choose _<Call forth Vakkiz the Windrager.>_
kill Vakkiz the Windrager##23204
collect Vakkiz's Scale##32718 |goto Terokkar Forest 69.70,74.70
|tip This enemy is elite and may require a group.
You can find more around:
[70.10,79.50]
[73.50,80.70]
[70.20,83.30]
step
talk Hazzik##23306
accept Tokens of the Descendants##11074 |goto Terokkar Forest 64.30,66.90
step
collect Time-Lost Offering##32720
step
click Skull Pile##185913
|tip This will consume 1 Time-Lost Offering.
Choose _<Call forth Terokk.>_
kill Terokk##21838 |goto Terokkar Forest 66.20,77.50
|tip This enemy is elite and may require a group.
|tip When he becomes immune, walk him over the blue smoke.
|tip A meteor will come down and break his shield.
|tip Killing Terokk will gain you 500 reputation with Ska'tari Skyguard.
Click Here to Farm Another Time-Lost Offering |confirm |next "Collect_Shadow_Dust"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\The Burning Crusade\\Shattrath Cooking Dailies",{
cataready=true,
description="\nThis guide will walk you through completing the Cooking daily quests "..
"in Shattrath city for Barrels of Fish and Crates of Meat.",
condition_suggested=function() return skill("Cooking") >= 275 and not completedq(11381,11379,11380,11377) end,
},[[
step
Reach 275 Cooking |complete skill("Cooking") >= 275
|tip Use the "Cooking (1-300)" profession guide to accomplish this.
step
label "Accept_Daily_Quest"
talk The Rokk##24393
You will only be able to accept one of these daily quests per day
accept Soup for the Soul##11381 |goto Shattrath City/0 61.66,15.63 |next "Soup_for_the_Soul" |or
accept Super Hot Stew##11379 |goto Shattrath City/0 61.66,15.63 |next "Super_Hot_Stew" |or
accept Manalicious##11380 |goto Shattrath City/0 61.66,15.63 |next "Manalicious" |or
accept Revenge is Tasty##11377 |goto Shattrath City/0 61.66,15.63 |next "Revenge_is_Tasty" |or
Accept the Daily Quest |complete false |or
step
label "Soup_for_the_Soul"
talk Uriku##20096
buy Recipe: Roasted Clefthoof##27691 |goto Nagrand 56.20,73.30 |q 11381 |or
'|learn Roasted Clefthoof##33287 |or
|only if haveq(11381) or completedq(11381)
step
use the Recipe: Roasted Clefthoof##27691
Learn the "Roasted Clefthoof" Recipe |learn Roasted Clefthoof##33287 |goto Nagrand 56.20,73.30 |q 11381
|only if haveq(11381) or completedq(11381)
step
Kill Clefthoof enemies around this area
collect 4 Clefthoof Meat##27678 |q 11381 |goto Nagrand 58.50,46.80
You can find more around [45.50,72.70]
|only if haveq(11381) or completedq(11381)
step
cast Basic Campfire##818
create Roasted Clefthoof##33287,Cooking,4 total |goto Nagrand 25.90,59.40 |q 11381
|tip Stand next to your campfire.
|only if haveq(11381) or completedq(11381)
step
use the Cooking Pot##33851
|tip Stand next to your campfire.
Cook a Spiritual Soup |q 11381/1 |goto Nagrand 25.90,59.40
|only if haveq(11381) or completedq(11381)
step
label "Super_Hot_Stew"
talk Xerintha Ravenoak##20916
buy Recipe: Mok'Nathal Shortribs##31675 |goto Blade's Edge Mountains 62.50,40.30 |or
'|learn Mok'Nathal Shortribs##31672 |or
|only if haveq(11379) or completedq(11379)
step
use the Recipe: Mok'Nathal Shortribs##31675
Learn the "Mok'Nathal Shortribs" Recipe |learn Mok'Nathal Shortribs##31672 |goto Blade's Edge Mountains 62.50,40.30 |q 11379
|only if haveq(11379) or completedq(11379)
step
talk Xerintha Ravenoak##20916
buy Recipe: Crunchy Serpent##31674 |goto Blade's Edge Mountains 62.50,40.30 |q 11379 |or
'|learn Crunchy Serpent##31673 |or
|only if haveq(11379) or completedq(11379)
step
use the Recipe: Crunchy Serpent##31674
Learn the "Crunchy Serpent" Recipe |learn Crunchy Serpent##31673 |goto Blade's Edge Mountains 62.50,40.30 |q 11379
|only if haveq(11379) or completedq(11379)
step
Kill enemies around this area
|tip Daggermaw Blackhides and Bladespire Raptors drop ribs.
collect 4 Raptor Ribs##31670 |goto Blade's Edge Mountains 49.60,46.20 |q 11379
|only if haveq(11379) or completedq(11379)
step
Kill Scalewing enemies around this area
collect 1 Serpent Flesh##31671 |goto Blade's Edge Mountains 68.20,63.20 |q 11379
|only if haveq(11379) or completedq(11379)
step
cast Basic Campfire##818
create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
|tip Stand next to your campfire.
|only if haveq(11379) or completedq(11379)
step
cast Basic Campfire##818
create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
|tip Stand next to your campfire.
|only if haveq(11379) or completedq(11379)
step
kill Abyssal Flamebringer##19973
use the Cooking Pot##33852
|tip Use it next to the Abyssal Flamebringer corpse.
collect Demon Broiled Surprise##33848 |q 11379/1 |goto Blade's Edge Mountains 29.00,84.50
|only if haveq(11379) or completedq(11379)
step
label "Manalicious"
click Mana Berry Bush##186729+
|tip They look like green bushes with small red berries on the ground around this area.
collect 15 Mana Berry##33849 |q 11380/1 |goto Netherstorm 45.60,54.20
|only if haveq(11380) or completedq(11380)
step
label "Revenge_is_Tasty"
talk Innkeeper Grika##18957
buy Recipe: Warp Burger##27692 |goto Terokkar Forest 48.80,45.00 |q 11377 |or
'|learn Warp Burger##33288 |or
step
use the Recipe: Warp Burger##27692
Learn the "Warp Burger" Recipe |learn Warp Burger##33288 |q 11377 |goto Terokkar Forest 48.80,45.00
|only if haveq(11377) or completedq(11377)
step
kill Blackwind Warp Chaser##23219+
collect 3 Warped Flesh##27681 |goto Terokkar Forest 64.00,83.50 |q 11377
|only if haveq(11377) or completedq(11377)
step
kill Monstrous Kaliri##23051+
|tip They fly close to tree outposts and bridges.
collect Giant Kaliri Wing##33838 |goto Terokkar Forest 67.60,74.70 |q 11377
|only if haveq(11377) or completedq(11377)
step
cast Basic Campfire##818
create Warp Burger##33288,Cooking,3 total |q 11377 |goto Terokkar Forest 25.90,59.50
|tip Stand next to your campfire.
step
use the Cooking Pot##33837
|tip Stand next to your campfire.
create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto Terokkar Forest 25.90,59.50
|only if haveq(11377) or completedq(11377)
step
talk The Rokk##24393
turnin Soup for the Soul##11381 |goto Shattrath City 61.80,15.60 |only if haveq(11381) or completedq(11381)
turnin Super Hot Stew##11379 |goto Shattrath City 61.80,15.60 |only if haveq(11379) or completedq(11379)
turnin Manalicious##11380 |goto Shattrath City 61.80,15.60 |only if haveq(11380) or completedq(11380)
turnin Revenge is Tasty##11377 |goto Shattrath City 61.80,15.60 |only if haveq(11377) or completedq(11377)
|only if haveq(11381,11379,11380,11377) or completedq(11381,11379,11380,11377)
step
You have completed the Shattrath Cooking daily quest.
|tip This guide will reset when another becomes available.
'|complete not completedq(11381,11379,11380,11377) |next "Accept_Daily_Quest"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\The Burning Crusade\\Netherwing\\Netherwing Daily Quests", {
cataready=true,
startlevel=70,
description="\nThis guide will walk you through completing the various daily quests for Netherwing reputation.",
condition_end=function() return rep("Netherwing") >= Exalted end,
},[[
step
Become an Ally of the Netherwing |complete completedq(11019)
|tip Complete the "Your Friend On The Inside" quest in Shadowmoon Valley.
|tip Use the "Netherwing" reputation guide to accomplish this.
step
label "Begin_Daily_Quests"
Proceeding |complete true |only if default
Complete the "Overseeing and You: Making the Right Choices" Quest |complete completedq(11054) |only if rep("Netherwing") >= Friendly and not completedq(11054)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Friendly and not completedq(11054)
Complete the "Stand Tall, Captain!" Quest |complete completedq(11084) |only if rep("Netherwing") >= Honored and not completedq(11084)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Honored and not completedq(11084)
Complete the "Commander Hobb" Quest |complete completedq(11095) |only if rep("Netherwing") >= Revered and rep("The Scryers") >= Friendly and not completedq(11095)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Revered and rep("The Scryers") >= Friendly and not completedq(11095)
Complete the "Commander Arcus" Quest |complete completedq(11100) |only if rep("Netherwing") >= Revered and rep("The Aldor") >= Friendly and not completedq(11100)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Revered and rep("The Aldor") >= Friendly and not completedq(11100)
step
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley 66.00,86.50
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley 66.00,86.50
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley 66.10,86.40
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley 66.10,86.40 |only if skill("Skinning") >= 350 |noautoaccept
accept Nethercite Ore##11018 |goto Shadowmoon Valley 66.10,86.40 |only if skill("Mining") >= 350 |noautoaccept
accept Netherdust Pollen##11017 |goto Shadowmoon Valley 66.10,86.40 |only if skill("Herbalism") >= 350 |noautoaccept
|tip You can always accept the "Netherwing Crystals" quest
|tip An additional quest is available if you have 350+ skill in Mining, Skinning, or Herbalism.
|tip You can only accept one additional quest, if you have multiple eligible professions.
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley 66.80,86.10
|only if rep("Netherwing") >= Friendly
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley 66.20,85.70
|only if rep("Netherwing") >= Honored
step
Kill Fel enemies around this area
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley 60.40,45.20
|only if haveq(11020) or completedq(11020)
stickystart "Collect_Netherwing_Relics"
stickystart "Discipline_Dragonmaw_Peons"
step
use Yarzill's Mutton##32503
|tip Use it next to groups of Dragonmaw Peons.
Poison #12# Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley 73.60,80.00
|only if haveq(11020) or completedq(11020)
step
label "Discipline_Dragonmaw_Peons"
use the Booterang##32680
|tip Use it on Disobedient Dragonmaw Peons.
Discipline #20# Dragonmaw Peons |q 11055/1 |goto Shadowmoon Valley 73.60,80.00
|only if haveq(11055) or completedq(11055)
step
label "Collect_Netherwing_Relics"
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley 72.10,75.20
|only if haveq(11035) or completedq(11035)
step
talk Commander Hobb##23434
accept The Deadliest Trap Ever Laid##11097
|only if rep("The Scryers") >= Friendly and rep("Netherwing") >= Revered
step
Follow Commander Hobb and protect him
|tip Hobb must survive to receive quest credit.
Defeat the Dragonmaw Forces |q 11097/1 |goto Shadowmoon Valley 56.50,58.70
|only if haveq(11097) or completedq(11097)
step
talk Commander Arcus##23452
accept The Deadliest Trap Ever Laid##11101
|only if rep("The Aldor") >= Friendly and rep("Netherwing") >= Revered
step
Follow Commander Arcus and protect him
|tip Arcus must survive to receive quest credit.
Defeat the Dragonmaw Forces |q 11101/1 |goto Shadowmoon Valley 62.40,29.30
|only if haveq(11101) or completedq(11101)
step
click Netherdust Bushs+
|tip They look like small sparkling green bushes on the ground around Netherwing Ledge.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley 62.60,86.20
|only if haveq(11017) or completedq(11017)
step
click Nethercite Deposit+
|tip They look like dark blue ore deposits with light blue crystals on them on the ground around Netherwing Ledge.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley 70.00,91.40
|only if haveq(11018) or completedq(11018)
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto Shadowmoon Valley 65.40,90.20
|only if rep("Netherwing") >= Friendly
step
talk Dragonmaw Foreman##23376
|tip Inside the mine.
accept Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley 65.10,87.50
|only if rep("Netherwing") >= Friendly
stickystart "Kill_Nethermine_Flayers"
stickystart "Kill_Nethermine_Ravagers"
stickystart "Collect_Netherwing_Crystal"
stickystart "Collect_Nethermine_Flayer_Hides"
step
click Nethermine Cargo+
|tip They look like carts full of ore and crystals inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto Shadowmoon Valley 66.90,84.00
|only if haveq(11076) or completedq(11076)
step
label "Kill_Nethermine_Flayers"
kill 15 Nethermine Flayer##23169 |q 11077/1 |goto Shadowmoon Valley 71.50,83.90
|tip Inside the mine.
|only if haveq(11077) or completedq(11077)
step
label "Kill_Nethermine_Ravagers"
kill 5 Nethermine Ravager##23326 |q 11077/2 |goto Shadowmoon Valley 71.50,83.90
|tip Inside the mine.
|only if haveq(11077) or completedq(11077)
step
label "Collect_Netherwing_Crystal"
Kill enemies around this area
|tip Inside the mine.
|tip They can drop from Netherwing flayers, oozes, and Netherwing Rays.
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley 71.50,83.90
|only if haveq(11015) or completedq(11015)
step
label "Collect_Nethermine_Flayer_Hides"
kill Nethermine Flayer##23169+
|tip Inside the mine.
|tip Skin their corpses.
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley 71.50,83.90
|only if haveq(11016) or completedq(11016)
step
talk Dragonmaw Foreman##23376
|tip Inside the mine.
turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley 65.10,87.50
|only if haveq(11077) or completedq(11077)
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto Shadowmoon Valley 65.40,90.20
|only if haveq(11076) or completedq(11076)
step
Kill Deathshadow enemies around this area
kill 20 Deathshadow Agent##23393 |q 11086/1 |goto Nagrand 12.70,38.90
|only if haveq(11086) or completedq(11086)
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley 66.00,86.50 |only if haveq(11020) or completedq(11020)
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley 66.00,86.50 |only if haveq(11035) or completedq(11035)
|only if haveq(11020,11035) or completedq(11020,11035)
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley 66.10,86.40 |only if haveq(11015) or completedq(11015)
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley 66.10,86.40 |only if haveq(11016) or completedq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley 66.10,86.40 |only if haveq(11018) or completedq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley 66.10,86.40 |only if haveq(11017) or completedq(11017)
|only if haveq(11015,11016,11018,11017) or completedq(11015,11016,11018,11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley 66.80,86.10
|only if haveq(11055) or completedq(11055)
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley 66.20,85.70 |only if haveq(11086) or completedq(11086)
turnin The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley 66.20,85.70 |only if haveq(11097) or completedq(11097)
turnin The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley 66.20,85.70 |only if haveq(11101) or completedq(11101)
|only if haveq(11086,11097,11101) or completedq(11086,11097,11101)
step
You have completed all available Netherwing daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11077,11076,11086,11020,11035,11015,11016,11018,11017,11055,11086,11097,11101) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\The Burning Crusade\\Netherwing\\Netherwing Eggs", {
cataready=true,
description="\nThis guide section will walk you through an optimized path of collecting Netherwing Eggs, which you can turn in for 250 Netherwing rep each. "..
"You must have completed the \"The Great Netherwing Egg Hunt\" quest to be able to collect and turn in the Netherwing Eggs.",
condition_end=function() return rep("Netherwing") >= Exalted end,
startlevel=70,
},[[
step
Complete the "The Great Netherwing Egg Hunt" Quest |complete completedq(11049)
|tip Use the "Netherwing" reputation guide to accomplish this.
step
label "Begin_Path"
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.40,63.60 < 5 |c
|tip At the top of the stairs inside this tower.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.10,62.00 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.40,60.70 < 5 |c
|tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.90,62.60 < 5 |c
|tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.30,62.60 < 5 |c
|tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.40,60.80 < 5 |c
|tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.00,60.30 < 5  |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.70,58.50 < 5 |c
|tip Sitting on the ground in this pen area among the baby netherdrakes.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.10,59.70 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.30,59.80 < 5 |c
|tip Sitting on the ground in this corner.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.50,61.20 < 5 |c
|tip Sitting on the ground in this stall inside the stable.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 67.20,61.30 < 5 |c
|tip Sitting in this wooden wagon.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 67.20,62.30 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.90,62.50 < 5 |c
|tip Sitting on the ground inside this half burned down hut.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 76.00,81.20 < 5 |c
|tip Sitting on the corner edge of this wooden landing dock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 75.20,82.30 < 5 |c
|tip Sitting on the ground next to this big bunch of blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 73.70,82.30 < 5 |c
|tip Sitting on top of this small mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 73.00,84.00 < 5 |c
|tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.00,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.20,81.70 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 66.20,83.80 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.70,84.20 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.30,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.40,76.50 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.20,75.60 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.20,74.20 < 5 |c
|tip Sitting on this small floating rock.  You have to fly down to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 61.70,73.30 < 5 |c
|tip Sitting on this big floating rock.  You have to fly down to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.00,71.60 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 61.30,70.70 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 60.60,73.40 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 59.30,74.10 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 60.00,76.70 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 59.60,78.30 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 61.20,77.30 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.20,77.80 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.30,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.00,83.70 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.50,84.80 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.50,84.90 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
talk Yarzill the Merc##23141
Turn in Your Netherwing Eggs |complete itemcount(32506) == 0 |goto Shadowmoon Valley 66.00,86.50
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 64.00,86.10 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
|tip This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.50,84.90 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 60.20,87.10 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.10,89.50 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 64.90,90.80 < 5 |c
|tip Sitting on the ground near this bunch of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 64.80,87.20 < 5 |c
|tip Inside the Netherwing Mine.
|tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
Jump Down Here |goto Shadowmoon Valley 68.30,84.00 < 5 |c
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.80,86.10 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 72.30,87.30 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.90,85.80 < 5 |c
|tip Go back to the mine cart track and follow the track on the right side.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 73.60,85.20 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 73.00,89.30 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 73.60,85.20 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 68.50,81.60 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 64.80,83.00 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Jump Down Here |goto Shadowmoon Valley 65.20,84.20 < 5 |c
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Leave the Cave |goto Shadowmoon Valley 65.30,90.20 < 5 |c
|tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.50,94.20 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.00,94.90 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.60,91.80 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.90,89.20 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.40,86.60 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 72.20,87.10 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 73.40,90.30 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 75.80,91.60 < 5 |c
|tip Sitting on this small floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 77.60,92.60 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 77.40,95.70 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 77.30,85.90 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 76.50,83.30 < 5 |c
|tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 78.90,83.30 < 5 |c
|tip Sitting right next to this bunch of big blue crystals on the side of this cliff.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 78.10,81.20 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 78.80,79.60 < 5 |c |next "Begin_Path"
|tip Sitting at the very tip of this huge crystal.
]])
