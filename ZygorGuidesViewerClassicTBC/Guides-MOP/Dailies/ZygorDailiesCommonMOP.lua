local ZGV=ZygorGuidesViewer
if not ZGV then return end
if ZGV:DoMutex("DailiesMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Anglers Dailies",{
startlevel=90,
description="This guide will take you through The Anglers dailies Becoming Exalted with The Anglers allows you to purchase a companion pet, fishing poles, and water mounts.",
patch='50100'
},[[
step
talk Arnold Leland##5493 |only if Alliance
|tip Fishing is required to accept daily quests from this faction. |only if Alliance
Train Apprentice Fishing |skillmax Fishing,75 |goto Stormwind City/0 54.99,69.64 |only if Alliance
|tip You'll likely want higher for some of the dailies requiring fishing to accomplish. |only if Alliance
talk Lumak##3332 |only if Horde
|tip Fishing is required to accept daily quests from this faction. |only if Horde
|tip You'll likely want higher for some of the dailies requiring fishing to accomplish. |only if Horde
Train Apprentice Fishing  |skillmax Fishing,75 |goto Orgrimmar/1 66.44,41.93 |only if Horde
step
label "dailies"
talk Fisherman Haito##59584
accept Shocking!##30584 |goto Krasarang Wilds/0 67.93,45.23 |or
accept Jagged Abalone##30586 |goto Krasarang Wilds/0 67.93,45.23 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(59584) |or
|tip If no quests are offered, this step will advance.
step
talk Angler Shen##59586
accept Snapclaw##30700 |goto Krasarang Wilds/0 67.56,43.50 |or
accept Fishing for a Bruising##30588 |goto Krasarang Wilds/0 67.56,43.50 |or
|tip Accept what you can and then skip this step.
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(59586) |or
|confirm
step
talk John "Big Hook" Marsock##60674
accept Bright Bait##30754 |goto Krasarang Wilds/0 68.33,43.50 |or
accept Jumping the Shark##30753 |goto Krasarang Wilds/0 68.33,43.50 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60674) |or
|confirm
step
talk Trawler Yotimo##60135
accept Armored Carp##30613 |goto Krasarang Wilds/0 67.62,42.50 |or
accept Huff & Puff##30658 |goto Krasarang Wilds/0 67.62,42.50 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60135) |or
|confirm
step
talk Elder Fisherman Rassan##60673
accept What Lurks Below##30585 |goto Krasarang Wilds/0 68.34,42.08 |or
accept Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds/0 68.34,42.08 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60673) |or
|confirm
step
talk Fo Fook##60675
accept Piranha!##30763 |goto Krasarang Wilds/0 67.21,41.15 |or
accept Viseclaw Soup##30701 |goto Krasarang Wilds/0 67.21,41.15 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60675) |or
|confirm
step
talk Fiznix##60136
accept Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds/0 67.48,44.59
accept Scavenger Hunt##30698 |goto Krasarang Wilds/0 67.48,44.59
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60136) |or
|confirm
step
Ride a Goblin Fishing Raft |havebuff spell:116032 |goto Krasarang Wilds/0 67.50,44.80
|only if haveq(30698) or completedq(30698)
step
Fish From Shipwreck Debris
|tip Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
collect #15# Rusty Shipwreck Debris##80830 |q 30698/1 |goto Krasarang Wilds/0 64.30,50.70
You can find more Debris at [64.30,50.60]
|only if haveq(30698) or completedq(30698)
step
clicknpc Frenzied Reef Shark##60408
Ride the Shark |invehicle Frenzied Reef Shark##60408 |goto Krasarang Wilds/0 68.40,43.10 |q 30753
|only if haveq(30753) or completedq(30753)
step
kill Frenzied Reef Shark##60408 |q 30753/1
|tip Use the abilities on your hotbar to kill the shark.
|tip Spam abilities, making sure each are on cooldown.
|only if haveq(30753) or completedq(30753)
step
click Jagged Abalone##211118
collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto Krasarang Wilds/0 67.43,44.78
|tip Underwater around this area.
|only if haveq(30586) or completedq(30586)
step
Enter the underwater cave |goto Krasarang Wilds/0 71.30,38.50 < 5
kill Snapclaw##60401
collect Snapclaw's Claw##80831 |q 30700/1 |goto Krasarang Wilds/0 73.90,38.40
|only if haveq(30700) or completedq(30700)
step
Fish in the Open Water
collect 7 Dojani Eel##80260 |q 30584/1 |goto Krasarang Wilds/0 65.60,30.50
|only if haveq(30584) or completedq(30584)
stickystart "Collect_16_Viseclaw_Fisher_Eyes"
step
kill 8 Riverblade Raider##59714+ |q 30588/1 |goto Krasarang Wilds/0 62.40,40.90
|only if haveq(30588) or completedq(30588)
step
label "Collect_16_Viseclaw_Fisher_Eyes"
Kill Viseclaw enemies around this area |kill Viseclaw Fry##61090, Viseclaw Fisher##58880
collect 16 Viseclaw Fisher Eye##80832 |q 30701/1 |goto Krasarang Wilds/0 55.10,45.70
|only if haveq(30701) or completedq(30701)
step
click Suncrawler##211474
|tip It looks like a red and orange bug on threes around this area.
collect 7 Suncrawler##81116 |q 30754/1 |goto Krasarang Wilds/0 59.80,38.80
|only if haveq(30754) or completedq(30754)
step
use the Goblin Fishing Bomb##80599
kill Sting Ray##60278+
collect 3 Stinger##80600 |q 30678/1 |goto Krasarang Wilds/0 59.30,46.30
|only if haveq(30678) or completedq(30678)
step
Fish in the Open Water
collect 5 Wolf Piranha##81122 |q 30763/1 |goto Krasarang Wilds/0 36.80,43.30
|only if haveq(30763) or completedq(30763)
stickystart "Collect_Beloved_Ring"
step
Fish in the Open Water
|tip Fish in the Mysterious Whirlpool until Narjon the Gulper appears.
|tip When Narjon spawns, make sure to equip your weapon quickly.
kill Narjon the Gulper##59689 |q 30585/1 |goto Krasarang Wilds/0 34.40,31.40
|only if haveq(30585) or completedq(30585)
step
label "Collect_Beloved_Ring"
kill Narjon the Gulper##59689 |notinsticky
collect Beloved Ring##80262 |q 30585/2 |goto Krasarang Wilds/0 34.40,31.40
|only if haveq(30585) or completedq(30585)
step
use the Anglers Fishing Spear##80403
|tip Use it near Prickly Puffers.
|tip The closer you are the easier it is to hit the fish.
kill Prickly Puffer##60037
|tip Underwater around this area.
collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto Krasarang Wilds/0 51.40,62.20
|only if haveq(30658) or completedq(30658)
step
click Pristine Crane Egg##211160
collect Pristine Crane Egg##80303 |q 30598/1 |goto Krasarang Wilds/0 65.20,47.50
|only if haveq(30598) or completedq(30598)
step
use the Anglers Fishing Spear##80403
|tip Use your Anglers Fishing Spear near an Armored Carp.
|tip The closer you are the easier it is to hit the fish.
kill Armored Carp##59936+
|tip Underwater around this area.
collect 5 Armored Carp##80437 |q 30613/1 |goto Krasarang Wilds/0 70.10,51.20
|only if haveq(30613) or completedq(30613)
step
use the Pristine Crane Egg##80303
|tip Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
Fish in the Open Water
collect Silver Goby##80310 |q 30598/2 |goto Krasarang Wilds/0 68.20,42.70
|only if haveq(30598) or completedq(30598)
step
talk Elder Fisherman Rassan##60673
turnin What Lurks Below##30585 |goto Krasarang Wilds/0 68.34,42.08 |only if haveq(30585) or completedq(30585)
turnin Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds/0 68.34,42.08 |only if haveq(30598) or completedq(30598)
|only if haveq(30585,30598) or completedq(30585,30598)
step
talk Fiznix##60136
turnin Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds/0 67.48,44.59 |only if haveq(30678) or completedq(30678)
turnin Scavenger Hunt##30698 |goto Krasarang Wilds/0 67.48,44.59 |only if haveq(30698) or completedq(30698)
|only if haveq(30678,30698) or completedq(30678,30698)
step
talk Angler Shen##59586
turnin Snapclaw##30700 |goto Krasarang Wilds/0 67.56,43.50 |only if haveq(30700) or completedq(30700)
turnin Fishing for a Bruising##30588 |goto Krasarang Wilds/0 67.56,43.50 |only if haveq(30588) or completedq(30588)
|only if haveq(30700,30588) or completedq(30700,30588)
step
talk Trawler Yotimo##60135
turnin Armored Carp##30613 |goto Krasarang Wilds/0 67.62,42.50 |only if haveq(30613) or completedq(30613)
turnin Huff & Puff##30658 |goto Krasarang Wilds/0 67.62,42.50 |only if haveq(30658) or completedq(30658)
|only if haveq(30613,30658) or completedq(30613,30658)
step
talk Fisherman Haito##59584
turnin Shocking!##30584 |goto Krasarang Wilds/0 67.93,45.23 |only if haveq(30584) or completedq(30584)
turnin Jagged Abalone##30586 |goto Krasarang Wilds/0 67.93,45.23 |only if haveq(30586) or completedq(30586)
|only if haveq(30584,30586) or completedq(30584,30586)
step
talk John "Big Hook" Marsock##60674
turnin Bright Bait##30754 |goto Krasarang Wilds/0 68.33,43.50 |only if haveq(30754) or completedq(30754)
turnin Jumping the Shark##30753 |goto Krasarang Wilds/0 68.33,43.50 |only if haveq(30753) or completedq(30753)
|only if haveq(30754,30753) or completedq(30754,30753)
step
talk Fo Fook##60675
turnin Piranha!##30763 |goto Krasarang Wilds/0 67.21,41.15 |only if haveq(30763) or completedq(30763)
turnin Viseclaw Soup##30701 |goto Krasarang Wilds/0 67.21,41.15 |only if haveq(30701) or completedq(30701)
|only if haveq(30763,30701) or completedq(30763,30701)
step
You have completed the available daily quests |complete false or not completedq(30585,30598,30678,30698,30700,30588,30613,30658,30584,30586,30754,30753,30763,30701) |next "dailies"
|tip New quests will become available with the next daily server reset.
'|talk Nat Pagle##63721 |goto Krasarang Wilds/0 68.40,43.40 |only if rep("The Anglers")>=Revered
|tip Purchase Grand Commendation of the Angler from Nat Pagle if possible. |only if rep("The Anglers")>=Revered
|tip You won't be able to purchase it if you have used it already. |only if rep("The Anglers")>=Revered
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The August Celestials Dailies",{
completion={"quests"},
startlevel=90,
description="This guide will take you through The August Celestials dailies Becoming Exalted with The August Celestials allows you to purchase flying mounts and armor for your character.",
patch='50100'
},[[
step
label "dailies"
talk Sage Whiteheart##64032
|tip The following quests will only be available the first time you are sent to a new area. |only if not completedq(31378,31376,31382,31380)
|tip They are random and Sage Lotusbloom will only have one at a time. |only if not completedq(31378,31376,31382,31380)
|tip If no quest is available, ask her how you can help the August Celestials today. |only if completedq(31378,31376,31382,31380)
|tip Then click on whichever spirit needs you today. |only if completedq(31378,31376,31382,31380)
accept Challenge At The Temple of the Red Crane##31378 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Cradle_of_Chi-Ji" |only if not completedq(31378) |or
accept Attack At The Temple of the Jade Serpent##31376 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Temple_of_the_Jade_Serpent" |only if not completedq(31377) |or
accept Defense At Niuzao Temple##31382 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Temple_of_the_Black_Ox" |only if not completedq(31382) |or
accept Trial At The Temple of the White Tiger##31380 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Temple_of_the_White_Tiger" |only if not completedq(31380) |or
Click Here to Complete "Niuzao the Black Ox" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Temple_of_the_Black_Ox" |only if completedq(31378,31376,31382,31380)
Click Here to Complete "Yu'lon the Jade Serpent" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Temple_of_the_Jade_Serpent" |only if completedq(31378,31376,31382,31380)
Click Here to Complete "Xuen the White Tiger" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Temple_of_the_White_Tiger" |only if completedq(31378,31376,31382,31380)
Click Here to Complete "Chi-Ji the Red Crane" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Cradle_of_Chi-Ji" |only if completedq(31378,31376,31382,31380)
|only if Alliance
step
label "dailies"
talk Sage Lotusbloom##64001
|tip The following quests will only be available the first time you are sent to a new area. |only if not completedq(31379,31377,31383,31381)
|tip They are random and Sage Lotusbloom will only have one at a time. |only if not completedq(31379,31377,31383,31381)
|tip If no quest is available, ask her how you can help the August Celestials today. |only if completedq(31379,31377,31383,31381)
|tip Then click on whichever spirit needs you today. |only if completedq(31379,31377,31383,31381)
accept Challenge At The Temple of the Red Crane##31379 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Cradle_of_Chi-Ji" |only if not completedq(31379) |or
accept Attack At The Temple of the Jade Serpent##31377 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Temple_of_the_Jade_Serpent" |only if not completedq(31377) |or
accept Defense At Niuzao Temple##31383 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Temple_of_the_Black_Ox" |only if not completedq(31383) |or
accept Trial At The Temple of the White Tiger##31381 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Temple_of_the_White_Tiger" |only if not completedq(31381) |or
Click Here to Complete "Niuzao the Black Ox" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Temple_of_the_Black_Ox" |only if completedq(31379,31377,31383,31381)
Click Here to Complete "Yu'lon the Jade Serpent" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Temple_of_the_Jade_Serpent" |only if completedq(31379,31377,31383,31381)
Click Here to Complete "Xuen the White Tiger" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Temple_of_the_White_Tiger" |only if completedq(31379,31377,31383,31381)
Click Here to Complete "Chi-Ji the Red Crane" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Cradle_of_Chi-Ji" |only if completedq(31379,31377,31383,31381)
|only if Horde
step
label "Cradle_of_Chi-Ji"
talk Thelonius##60506
turnin Challenge At The Temple of the Red Crane##31378 |goto Krasarang Wilds/0 31.30,63.40 |only if Alliance
turnin Challenge At The Temple of the Red Crane##31379 |goto Krasarang Wilds/0 31.30,63.40 |only if Horde
|only if haveq(31378,31379) or completedq(31378,31379)
step
talk Thelonius##60506
accept Students of Chi-Ji##30718 |goto Krasarang Wilds/0 31.30,63.40
accept Champion of Chi-Ji##30740 |goto Krasarang Wilds/0 31.30,63.40 |only if achieved(7287)
|tip If quests are offered, you will not be able to accept all of these quests. |only if achieved(7287)
Check for Quests |complete nodailies(60506) |or
|tip If no quests are offered, this step will advance.
step
talk Yan Quillpaw##60529
accept Gifts of the Great Crane##30717 |goto Krasarang Wilds/0 31.30,63.60
Check for Quests |complete nodailies(60529) |or
|tip If no quests are offered, this step will advance.
step
talk Kuo-Na Quillpaw##60528
accept Chasing Hope##30716 |goto Krasarang Wilds/0 31.30,63.60
Check for Quests |complete nodailies(60528) |or
|tip If no quests are offered, this step will advance.
step
talk Champion of Chi-Ji##60546
Let's fight!
Defeat a Champion of Chi-Ji |q 30740/1 |goto Krasarang Wilds/0 34.60,82.00
|only if haveq(30740)
stickystart "Duel_10_Students_of_Chiji"
stickystart "Collect_10_Gift_of_the_Great_Crane"
step
Find #3# Spirits of the Crane |q 30716/1 |goto Krasarang Wilds/0 31.20,73.90
|tip They are stealthed and you need to run into them.
step
label "Duel_10_Students_of_Chiji"
kill Student of Chi-Ji##60601+
Duel #10# Students of Chi-Ji |q 30718/1 |goto Krasarang Wilds/0 31.20,73.90
step
label "Collect_10_Gift_of_the_Great_Crane"
click Cerulean Gift of the Crane##211451
click Crimson Gift of the Crane##211453
click Bronze Gift of the Crane##211452
|tip The Gifts look like feathers laying around on the ground.
collect #10# Gift of the Great Crane##80938+ |q 30717/1 |goto Krasarang Wilds/0 31.20,73.90
step
talk Kuo-Na Quillpaw##60528
turnin Chasing Hope##30716 |goto Krasarang Wilds/0 31.30,63.60
step
talk Yan Quillpaw##60529
turnin Gifts of the Great Crane##30717 |goto Krasarang Wilds/0 31.30,63.60
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds/0 31.30,63.40
accept Ellia Ravenmane##30725 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30725)
accept Minh Do-Tan##30726 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30726)
accept Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds/0 31.30,63.40 |or		|only if questonmap({418},30727)
accept Fat Long-Fat##30728 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30728)
accept Julia Bates##30729 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30729)
accept Dextrous Izissha##30730 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30730)
accept Kuo-Na Quillpaw##30731 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30731)
accept Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds/0 31.30,63.40 |or		|only if questonmap({418},30732)
accept Tukka-Tuk##30733 |goto Krasarang Wilds/0 31.30,63.40 |or				|only if questonmap({418},30733)
accept Huck Wheelbarrow##30734 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30734)
accept Mindel Sunspeaker##30735 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30735)
accept Yan Quillpaw##30736 |goto Krasarang Wilds/0 31.30,63.40 |or			|only if questonmap({418},30736)
accept Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds/0 31.30,63.40 |or		|only if questonmap({418},30737)
accept Thelonius##30738 |goto Krasarang Wilds/0 31.30,63.40 |or				|only if questonmap({418},30738)
accept Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds/0 31.30,63.40 |or	|only if questonmap({418},30739)
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60506) |or
|tip If no quests are offered, this step will advance.
|only if not achieved(7287)
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds/0 31.30,63.40 |only if haveq(30718) or completedq(30718)
turnin Champion of Chi-Ji##30740 |goto Krasarang Wilds/0 31.30,63.40 |only if haveq(30740) or completedq(30740)
|only if achieved(7287)
|next "end"
step
talk Fat Long-Fat##60534
|tip He is on the very top of this building.
Let's fight!
Defeat Fat Long-Fat |q 30728/1 |goto Krasarang Wilds/0 32.00,70.70
|only if haveq(30728) or completedq(30728)
step
talk Ellia Ravenmane##60530
Let's fight!
Defeat Ellia Ravenmane |q 30725/1 |goto Krasarang Wilds/0 31.80,71.20
|only if haveq(30725) or completedq(30725)
step
talk Mindel Sunspeaker##60541
Let's fight!
Defeat Mindel Sunspeaker |q 30735/1 |goto Krasarang Wilds/0 32.10,69.90
|only if haveq(30735) or completedq(30735)
step
talk Minh Do-Tan##60532
Let's fight!
Defeat Minh Do-Tan |q 30726/1 |goto Krasarang Wilds/0 32.00,76.50
|only if haveq(30726) or completedq(30726)
step
talk Tukka-Tuk##60539
Let's fight!
Defeat Tukka-Tuk |q 30733/1 |goto Krasarang Wilds/0 34.10,75.10
|only if haveq(30733) or completedq(30733)
step
talk Ellia Ravenmane##60545
Let's fight!
Defeat Ellia Ravenmane |q 30739/1 |goto Krasarang Wilds/0 36.40,75.60
|only if haveq(30739) or completedq(30739)
step
talk Dextrous Izissha##60536
Let's fight!
Defeat Dextrous Izissha |q 30730/1 |goto Krasarang Wilds/0 31.70,80.30
|only if haveq(30730) or completedq(30730)
step
talk Fat Long-Fat##60543
Let's fight!
Defeat Fat Long-Fat |q 30737/1 |goto Krasarang Wilds/0 34.80,82.60
|only if haveq(30737) or completedq(30737)
step
talk Kuo-Na Quillpaw##60537
Let's fight!
Defeat Kuo-Na Quillpaw |q 30731/1 |goto Krasarang Wilds/0 36.60,74.80
|only if haveq(30731) or completedq(30731)
step
talk Ellia Ravenmane##60533
Let's fight!
Defeat Ellia Ravenmane |q 30727/1 |goto Krasarang Wilds/0 35.20,75.10
|only if haveq(30727) or completedq(30727)
step
talk Julia Bates##60535
Let's fight!
Defeat Julia Bates |q 30729/1 |goto Krasarang Wilds/0 28.90,75.50
|only if haveq(30729) or completedq(30729)
step
talk Huck Wheelbarrow##60540
Let's fight!
Defeat Huck Wheelbarrow |q 30734/1 |goto Krasarang Wilds/0 27.90,70.30
|only if haveq(30734) or completedq(30734)
step
talk Yan Quillpaw##60542
Let's fight!
Defeat Yan Quillpaw |q 30736/1 |goto Krasarang Wilds/0 36.50,76.20
|only if haveq(30736) or completedq(30736)
step
talk Ellia Ravenmane##60538
Let's fight!
Defeat Ellia Ravenmane |q 30732/1 |goto Krasarang Wilds/0 34.50,83.30
|only if haveq(30732) or completedq(30732)
step
talk Thelonius##60544
Let's fight!
Defeat Thelonius |q 30738/1 |goto Krasarang Wilds/0 28.80,72.40
|only if haveq(30738) or completedq(30738)
step
talk Thelonius##60506
turnin Ellia Ravenmane##30725 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30725) or completedq(30725)
turnin Minh Do-Tan##30726 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30726) or completedq(30726)
turnin Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30727) or completedq(30727)
turnin Fat Long-Fat##30728 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30728) or completedq(30728)
turnin Julia Bates##30729 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30729) or completedq(30729)
turnin Dextrous Izissha##30730 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30730) or completedq(30730)
turnin Kuo-Na Quillpaw##30731 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30731) or completedq(30731)
turnin Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30732) or completedq(30732)
turnin Tukka-Tuk##30733 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30733) or completedq(30733)
turnin Huck Wheelbarrow##30734 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30734) or completedq(30734)
turnin Mindel Sunspeaker##30735 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30735) or completedq(30735)
turnin Yan Quillpaw##30736 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30736) or completedq(30736)
turnin Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30737) or completedq(30737)
turnin Thelonius##30738 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30738) or completedq(30738)
turnin Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds/0 31.30,63.40 |or |only if haveq(30739) or completedq(30739)
|only if not achieved(7287)
|next "end"
step
label "Temple_of_the_Jade_Serpent"
talk Elder Sage Tai-Feng##57324
|tip Inside the building.
turnin Attack At The Temple of the Jade Serpent##31376 |goto The Jade Forest/0 53.91,61.95 |only if haveq(31376) or completedq(31376) |only if Alliance
turnin Attack At The Temple of the Jade Serpent##31377 |goto The Jade Forest/0 53.91,61.95 |only if haveq(31377) or completedq(31377) |only if Horde
accept Arrows of Fortune##30065 |goto The Jade Forest/0 53.91,61.95
accept Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95
accept The Darkness Around Us##30006 |goto The Jade Forest/0 53.91,61.95
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(57324) |or |next
|tip If no quests are offered, this step will advance.
step
talk Elder Sage Storm-Sing##57319
accept Behind the Masks##30063 |goto The Jade Forest/0 53.88,61.91
accept Saving the Sutras##30064 |goto The Jade Forest/0 53.88,61.91
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(57319) |or
|tip If no quests are offered, this step will advance.
stickystart "Collect_10_Defenders_Arrow"
stickystart "Collect_8_Mask_of_Doubt"
stickystart "Collect_6_Ancient_Mantras"
stickystart "Slay_15_Sha_Invaders"
step
click Ancient Sutra##210086
collect 6 Ancient Sutra##77432 |q 30064/1 |goto The Jade Forest/0 56.39,50.99
|only if haveq(30064) or completedq(30064)
step
label "Collect_10_Defenders_Arrow"
click Defender's Arrow##210087
collect 10 Defender's Arrow##77452+ |q 30065/1 |goto The Jade Forest/0 56.10,53.04
|only if haveq(30065) or completedq(30065)
step
label "Collect_6_Ancient_Mantras"
clicknpc Yu'lon Guardian##57400,57326,58186
clicknpc Yu'lon Adept##57316
use the Stack of Mantras##77475
|tip They look like books with red bindings on the ground around this area.
Deliver #6# Ancient Mantras |q 30066/1 |goto The Jade Forest/0 56.52,52.43
|only if haveq(30066) or completedq(30066)
step
label "Collect_8_Mask_of_Doubt"
Kill Lingering enemies around this area |kill Lingering Doubt##57396, Lingering Doubt##57327
collect 8 Mask of Doubt##77419+ |q 30063/1 |goto The Jade Forest/0 54.50,54.10
|only if haveq(30063) or completedq(30063)
step
label "Slay_15_Sha_Invaders"
Kill enemies around this area |kill Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
Slay #15# Sha Invaders |q 30006/1 |goto The Jade Forest/0 56.31,51.03
[The Jade Forest/0 52.36,56.82]
[The Jade Forest/0 54.39,53.94]
|only if haveq(30006) or completedq(30006)
step
talk Elder Sage Storm-Sing##57319
turnin Behind the Masks##30063 |goto The Jade Forest/0 53.88,61.91 |only if haveq(30063) or completedq(30063)
turnin Saving the Sutras##30064 |goto The Jade Forest/0 53.88,61.91 |only if haveq(30064) or completedq(30064)
|only if haveq(30063,30064) or completedq(30063,30064)
step
talk Elder Sage Tai-Feng##57324
turnin Arrows of Fortune##30065 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30065) or completedq(30065)
turnin Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30066) or completedq(30066)
turnin The Darkness Around Us##30006 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30006) or completedq(30006)
accept Flames of the Void##30068 |goto The Jade Forest/0 53.91,61.95 |or
accept The Shadow of Doubt##30067 |goto The Jade Forest/0 53.91,61.95 |or
accept Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(57324) |or
|tip If no quests are offered, this step will advance.
step
label "Collect_6_Ancient_Mantras"
clicknpc Yu'lon Guardian##57400,57326,58186
clicknpc Yu'lon Adept##57316
use the Stack of Mantras##77475
Deliver #6# Ancient Mantras |q 30066/1 |goto The Jade Forest/0 55.30,57.40
|only if haveq(30066) or completedq(30066)
step
kill Shadow of Doubt##57389 |q 30067/1 |goto The Jade Forest/0 57.50,62.30
|only if haveq(30067) or completedq(30067)
step
clicknpc War Serpent##57871
Ride the War Serpent |invehicle |goto The Jade Forest/0 54.10,60.90 |q 30068
|only if haveq(30068) or completedq(30068)
step
click Void Flame
|tip They look like swirling black fire.
|tip If you run out of water you can refill it in the river.
River Location [goto The Jade Forest/0 53.90,58.00]
|tip Look for small light-blue patches of swirling water and then fly over them.
Douse #6# Void Flames |q 30068/1
|only if haveq(30068) or completedq(30068)
step
Click the Leave Vehicle button |outvehicle |goto The Jade Forest/0 53.91,61.95
|only if haveq(30068) or completedq(30068)
step
talk Elder Sage Tai-Feng##57324
turnin The Shadow of Doubt##30067 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30067) or completedq(30067)
turnin Flames of the Void##30068 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30068) or completedq(30068)
turnin Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30066) or completedq(30066)
accept The Shadow of Doubt##30067 |goto The Jade Forest/0 53.90,61.95
accept Flames of the Void##30068 |goto The Jade Forest/0 53.90,61.95
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(57324) |next |or
|tip If no quests are offered, this step will advance.
step
kill Shadow of Doubt##57389
Shadow of Doubt slain |q 30067/1 |goto The Jade Forest/0 57.52,62.25
|only if haveq(30067) or completedq(30067)
step
clicknpc War Serpent##57871
Ride the War Serpent |invehicle |goto The Jade Forest/0 54.10,60.90 |q 30068
|only if haveq(30068) or completedq(30068)
step
River Location [The Jade Forest/0 53.90,58.00]
|tip Look for small light-blue patches of swirling water and then fly over them.
Douse #6# Void Flames |q 30068/1 |goto The Jade Forest/0 53.79,54.09
|tip They look like swirling black fire all around this area.
|tip If you run out of water you can refill it in the river.
|only if haveq(30068) or completedq(30068)
step
Click the Leave Vehicle button |outvehicle |goto The Jade Forest/0 53.91,61.95
|only if haveq(30068) or completedq(30068)
step
talk Elder Sage Tai-Feng##57324
turnin The Shadow of Doubt##30067 |goto The Jade Forest/0 53.96,61.88 |only if haveq(30067) or completedq(30067)
turnin Flames of the Void##30068 |goto The Jade Forest/0 53.90,61.95 |only if haveq(30068) or completedq(30068)
|next "end"
step
label "Temple_of_the_White_Tiger"
talk Xuen##60968
turnin Trial At The Temple of the White Tiger##31380 |goto Kun-Lai Summit/0 67.26,55.89 |only if Alliance
turnin Trial At The Temple of the White Tiger##31381 |goto Kun-Lai Summit/0 67.26,55.89 |only if Horde
|only if haveq(31380,31381) or completedq(31380,31381)
step
talk Xuen##60968
accept Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit/0 67.26,55.89 |or
accept Round 1: The Streetfighter##30880 |goto Kun-Lai Summit/0 67.26,55.89 |or
accept Contending With Bullies##31517 |goto Kun-Lai Summit/0 67.26,55.89
|tip This quest may not be available.
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60968) |next |or
|tip If no quests are offered, this step will advance.
step
kill Shonuf##64757 |q 31517/1 |goto Kun-Lai Summit/0 71.10,55.80
|only if haveq(31517) or completedq(31517)
step
talk Brewmaster Chani##60996
|tip Challenge her.
|tip Pull her out of {o}Bitter Brew{}.
|tip Interrupt or move away from {o}The Steamer{} when she channels it.
Defeat Brewmaster Chani |q 30879/1 |goto Kun-Lai Summit/0 71.00,51.80
|only if haveq(30879) or completedq(30879)
step
talk Lun-Chi##60994
Select _"I challenge you."_ |gossip 32996
Defeat The Streetfighter |q 30880/1 |goto Kun-Lai Summit/0 70.95,51.81
|only if haveq(30880) or completedq(30880)
step
talk Xuen##60968
turnin Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit/0 70.29,51.28 |only if haveq(30879) or completedq(30879)
turnin Round 1: The Streetfighter##30880 |goto Kun-Lai Summit/0 70.29,51.28 |only if haveq(30880) or completedq(30880)
turnin Contending With Bullies##31517 |goto Kun-Lai Summit/0 70.29,51.28 |only if haveq(31517) or completedq(31517)
accept Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit/0 70.29,51.28 |or
accept Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit/0 70.29,51.28 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60968) |or
|tip If no quests are offered, this step will advance.
step
talk Kang Bramblestaff##60978
|tip Inside the building.
Select _"I challenge you."_ |gossip 36791
Defeat Kang Bramblestaff |q 30882/1 |goto Kun-Lai Summit/0 71.68,45.27
|only if haveq(30882) or completedq(30882)
step
talk Clever Ashyo##60980
|tip Challenge him.
|tip Focus down Ken-Ken first.
|tip Swap to Ashyo when Ken-Ken uses {o}Ken-Ken Rampage{} until it ends.
|tip Ashyo will summon Water Spouts and Healing Spheres.
|tip Damage down {o}Healing Spheres{} and avoid Water Spouts.
Defeat Clever Ashyo |q 30881/1 |goto Kun-Lai Summit/0 71.70,45.40
Defeat Ken-Ken |q 30881/2 |goto Kun-Lai Summit/0 71.70,45.40
|only if haveq(30881) or completedq(30881)
step
talk Xuen##60968
|tip Inside the building.
turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit/0 71.77,44.87 |only if haveq(30881) or completedq(30881)
turnin Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit/0 71.77,44.87 |only if haveq(30882) or completedq(30882)
accept Round 3: The Wrestler##30883 |goto Kun-Lai Summit/0 71.77,44.87 |or
accept Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit/0 71.77,44.87 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60968) |or
|tip If no quests are offered, this step will advance.
|only if haveq(30882,30881) or completedq(30882,30881)
step
talk Master Boom Boom##61013
|tip Inside the building.
Select _"I challenge you."_ |gossip 35012
Defeat Master Boom Boom |q 30885/1 |goto Kun-Lai Summit/0 66.69,46.49
|tip Avoid {o}Dynamite{} that appears on the ground during the encounter.
|tip Move out of the center of the arena when the fuse to the Boom Box is lit.
|only if haveq(30885) or completedq(30885)
step
talk The Wrestler##60997
|tip Challenge him.
|tip Click chairs around to room to boost your damage for 10 seconds.
|tip Avoid standing in {o}Sling Sweat{} puddles.
Defeat The Wrestler |q 30883/1 |goto Kun-Lai Summit/0 66.70,46.50
|only if haveq(30883) or completedq(30883)
step
talk Xuen##60968
|tip Inside the building.
turnin Round 3: The Wrestler##30883 |goto Kun-Lai Summit/0 66.40,46.34 |only if haveq(30883) or completedq(30883)
turnin Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit/0 66.40,46.34 |only if haveq(30885) or completedq(30885)
accept Round 4: The P.U.G.##30907 |goto Kun-Lai Summit/0 66.40,46.34 |or
accept Round 4: Master Windfur##30902 |goto Kun-Lai Summit/0 66.40,46.34 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60968) |or
|tip If no quests are offered, this step will advance.
step
talk Master Windfur##61012
Select _"I challenge you."_ |gossip 39269
Defeat Master Windfur |q 30902/1 |goto Kun-Lai Summit/0 68.80,43.69
|only if haveq(30902) or completedq(30902)
step
Enter the building |goto Kun-Lai Summit/0 69.00,43.70 < 15
talk Healiss##61004
|tip Challenge him.
|tip Focus down Healiss first.
|tip Save interrupts/stuns for {g}Jungle Remedy{}.
|tip Focus down Tankiss before Hackiss.
Defeat Hackiss |q 30907/1
Defeat Healiss |q 30907/2
Defeat Tankiss |q 30907/3
|only if haveq(30907) or completedq(30907)
step
talk Xuen##60968
|tip Inside the building.
turnin Round 4: The P.U.G.##30907 |goto Kun-Lai Summit/0 68.48,44.59 |only if haveq(30907) or completedq(30907)
turnin Round 4: Master Windfur##30902 |goto Kun-Lai Summit/0 68.48,44.59 |only if haveq(30902) or completedq(30902)
|only if haveq(30907,30902) or completedq(30907,30902)
step
talk Lin Tenderpaw##60981
|tip Walking around this area.
accept The Torch of Strength##31492 |goto Kun-Lai Summit/0 68.50,56.50
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(60981) |or |next "end"
|tip If no quests are offered, this step will advance.
step
Enter the first temple |goto Kun-Lai Summit/0 69.60,53.00 < 25 |walk
Enter the second temple |goto Kun-Lai Summit/0 66.90,51.20 < 25 |walk
|tip Avoid the roaming tornadoes.
|tip Mounting or touching the tornadoes will send you back to the start of the quest.
click The Strong Brazier##214628
Light the Strong Brazier |q 31492/1 |goto Kun-Lai Summit/0 68.60,46.60
|only if haveq(31492) or completedq(31492)
step
talk Lin Tenderpaw##60981
|tip Walking around this area.
turnin The Torch of Strength##31492 |goto Kun-Lai Summit/0 68.50,56.50 |next "end"
|only if haveq(31492) or completedq(31492)
step
Routing to the End |next "end"
step
label "Temple_of_the_Black_Ox"
talk Ogo the Elder##61580
turnin Defense At Niuzao Temple##31382 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(31382) or completedq(31382) |only if Alliance
turnin Defense At Niuzao Temple##31383 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(31383) or completedq(31383) |only if Horde
accept The Siege Swells##30956 |goto Townlong Steppes/0 39.35,62.30 |or
accept The Unending Siege##30952 |goto Townlong Steppes/0 39.35,62.30 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(61580) |or
|tip If no quests are offered, this step will advance.
step
talk Ogo the Younger##61581
accept The Big Guns##30959 |goto Townlong Steppes/0 39.34,62.21 |or
accept A Blade is a Blade##30954 |goto Townlong Steppes/0 39.34,62.21 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(61581) |or
|tip If no quests are offered, this step will advance.
step
talk Yak-Keeper Kyana##61585
accept Fallen Sentinels##30953 |goto Townlong Steppes/0 39.15,62.07
Check for Quests |complete nodailies(61585) |or
|tip If no quests are offered, this step will advance.
step
talk Sentinel Commander Qipan##61584
accept The Overwhelming Swarm##30957 |goto Townlong Steppes/0 39.41,61.96
Check for Quests |complete nodailies(61584) |or
|tip If no quests are offered, this step will advance.
step
talk High Adept Paosha##61583
accept In Battle's Shadow##30958 |goto Townlong Steppes/0 38.95,62.44 |or
accept Paying Tribute##30955 |goto Townlong Steppes/0 38.95,62.44 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(61583) |or
|tip If no quests are offered, this step will advance.
stickystart "Throw_10_Loose_Stones"
stickystart "Heal_8_Niuzao_Sentinels"
stickystart "Collect_6_Food_for_Niuzao"
stickystart "Collect_10_Sra'thik_Weapons"
stickystart "Kill_4_Sra'thik_Attackers"
stickystart "Kill_12_Sra'thik_Attackers"
stickystart "Kill_25_Sra'thik_Attackers"
step
use the Pot of Fire##82346
Cause #3# Sri'thik War Wagons to Explode |q 30959/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30957) or completedq(30957)
step
label "Throw_10_Loose_Stones"
click Loose Brick##211752
Throw #10# Loose Stones up to Niuzao Stonemasons |q 30958/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30958) or completedq(30958)
step
label "Heal_8_Niuzao_Sentinels"
use the Yak's Milk Flask##82381
|tip Use them on Wounded Niuzao Sentinels.
clicknpc Wounded Niuzao Sentinel##61570
|tip Normal healing spells will also work.
Heal #8# Niuzao Sentinels |q 30953/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30953) or completedq(30953)
step
label "Collect_6_Food_for_Niuzao"
click Niuzao Food Supply##212133
Gather #6# Food for Niuzao |q 30955/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30955) or completedq(30955)
step
label "Collect_10_Sra'thik_Weapons"
click Sra'thik Weapon##211766
|tip After you kill a Sra'thik, a weapon may drop.
collect 10 Sra'thik Weapon##82353 |q 30954/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30954) or completedq(30954)
step
label "Kill_4_Sra'thik_Attackers"
kill 4 Sra'thik Kunchong##61509+ |q 30957/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30957) or completedq(30957)
step
label "Kill_12_Sra'thik_Attackers"
kill Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+
Slay #12# Sra'thik attackers |q 30952/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30952) or completedq(30952)
step
label "Kill_25_Sra'thik_Attackers"
kill Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+
Slay #25# Sri'thik attackers |q 30956/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30956) or completedq(30956)
step
talk Ogo the Elder##61580
turnin The Siege Swells##30956 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(30956) or completedq(30956)
turnin The Unending Siege##30952 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(30952) or completedq(30952)
|only if haveq(30956,30952) or completedq(30956,30952)
step
talk Ogo the Younger##61581
turnin The Big Guns##30959 |goto Townlong Steppes/0 39.34,62.21 |only if haveq(30959) or completedq(30959)
turnin A Blade is a Blade##30954 |goto Townlong Steppes/0 39.34,62.21 |only if haveq(30954) or completedq(30954)
|only if haveq(30959,30954) or completedq(30959,30954)
step
talk Yak-Keeper Kyana##61585
turnin Fallen Sentinels##30953 |goto Townlong Steppes/0 39.15,62.07 |only if haveq(30953) or completedq(30953)
turnin In Battle's Shadow##30958 |goto Townlong Steppes/0 39.15,62.07 |only if haveq(30958) or completedq(30958)
|only if haveq(30953,30958) or completedq(30953,30958)
step
talk Sentinel Commander Qipan##61584
turnin The Overwhelming Swarm##30957 |goto Townlong Steppes/0 39.41,61.96
|only if haveq(30957) or completedq(30957)
step
talk High Adept Paosha##61583
turnin Paying Tribute##30955 |goto Townlong Steppes/0 38.95,62.44
|only if haveq(30955) or completedq(30955)
step
label "end"
You have completed the available daily quests |complete false or not completedq(30006,30063,30064,30065,30066,30067,30068,30716,30717,30718,30726,30727,30728,30729,30730,30731,30732,30733,30734,30735,30736,30737,30738,30739,30740,30956,30952,30959,30954,30953,30957,30958,30955,30879,30880,31517,30881,30882,30883,30885,30907,30902,31492) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
'|talk Sage Whiteheart##64032 |goto Vale of Eternal Blossoms/0 84.60,63.70  |only if rep("August Celestials")>=Revered
|tip Purchase the Grand Commendation of the August Celestials from Sage Whiteheart if possible. |only if rep("August Celestials")>=Revered
|tip You won't be able to purchase it if you have used it already. |only if rep("August Celestials")>=Revered
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies",{
completion={"quests",10,11,18},
patch='50001',
startlevel=90,
description="This guide will take you through the Order of the Cloud Serpent dailies Becoming Exalted with The Order of the Cloud Serpent allows you to purchase flying mounts and designs for companion pets.",
},[[
step
label "start"
Proceeding to Order of the Cloud Serpent Dailies |complete completedq(30142) |next "dailies" |only if completedq(30142)
Moving to the Order of the Cloud Serpent prequests. |next |complete not completedq(30142) |only if not completedq(30142)
step
talk Elder Anli##58564
|tip She walks around this area.
accept Wild Things##30134 |goto The Jade Forest/0 57.74,44.95
step
talk Instructor Tong##58225
turnin Wild Things##30134 |goto The Jade Forest/0 65.33,31.64
accept Beating the Odds##30135 |goto The Jade Forest/0 65.33,31.64
accept Empty Nests##30136 |goto The Jade Forest/0 65.33,31.64
accept Egg Collection##30137 |goto The Jade Forest/0 65.33,31.64
stickystart "Slay_8_Slitherscale_Saurok"
stickystart "Collect_6_Serpent_Eggs"
step
use the Silken Rope##78947
|tip Use it on Windward Hatchlings.
click Windward Hatchling##58243
|tip Gather all 6 at once.
|tip There are multiple nests around the area, so if one is closer than the marked, use it.
Return #6# Windward Hatchlings to their nests |q 30136/1 |goto The Jade Forest/0 65.80,31.20
Search For Hatchlings Around Here [The Jade Forest/0 64.58,29.54]
step
label "Slay_8_Slitherscale_Saurok"
kill Slitherscale Ripper##58212, Slitherscale Eggdrinker##63532
Slay #8# Slitherscale Saurok |q 30135/1 |goto The Jade Forest/0 68.10,31.20
step
label "Collect_6_Serpent_Eggs"
click Serpent Egg##215392
collect 6 Serpent Egg##78959 |q 30137/1 |goto The Jade Forest/0 68.10,31.20
step
talk Instructor Tong##58225
turnin Beating the Odds##30135 |goto The Jade Forest/0 65.33,31.64
turnin Empty Nests##30136 |goto The Jade Forest/0 65.33,31.64
turnin Egg Collection##30137 |goto The Jade Forest/0 65.33,31.64
accept Choosing the One##30138 |goto The Jade Forest/0 65.33,31.64
step
Choose You Egg
|tip Pick your favorite color between the selection.
talk Instructor Tong##58225
turnin Choosing the One##30138 |goto The Jade Forest/0 65.33,31.64
step
talk Instructor Tong##58225
|tip You will only accept one of the following quests.
accept The Rider's Journey##30139 |goto The Jade Forest/0 65.33,31.64 |or
accept The Rider's Journey##30140 |goto The Jade Forest/0 65.33,31.64 |or
accept The Rider's Journey##30141 |goto The Jade Forest/0 65.33,31.64 |or
step
talk Instructor Skythorn##58228
turnin The Rider's Journey##30139 |goto The Jade Forest/0 57.56,45.11 |only if haveq(30139) or completedq(30139)
turnin The Rider's Journey##30140 |goto The Jade Forest/0 57.56,45.11 |only if haveq(30140) or completedq(30140)
turnin The Rider's Journey##30141 |goto The Jade Forest/0 57.56,45.11 |only if haveq(30141) or completedq(30141)
accept It's A...##30142 |goto The Jade Forest/0 57.56,45.11
step
Watch the Cutscene
Watch Your Egg Hatch |q 30142/1 |goto The Jade Forest/0 57.56,45.11
step
talk Instructor Skythorn##58228
turnin It's A...##30142 |goto The Jade Forest/0 57.56,45.11
step
label "dailies"
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
|tip It moves around this area.
accept Catch!##30151 |goto The Jade Forest/0 57.52,45.36
accept Pooped##31704 |goto The Jade Forest/0 57.52,45.36
accept Pooped##31716 |goto The Jade Forest/0 57.52,45.36
accept Feeding Time##30156 |only if questonmap({418},30156)
accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest/0 57.52,45.36
accept Sweet as Honey##30150 |goto The Jade Forest/0 57.52,45.36
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(65669,65670,65671) |next |or
step
talk Instructor Skythorn##58228
accept Restoring the Balance##30155 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Disarming the Enemy##30158 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Thinning The Pack##31698 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Weeping Widows##31706 |goto The Jade Forest/0 57.56,45.11 |or 2
accept A Tangled Web##31707 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Monkey Mischief##31712 |goto The Jade Forest/0 57.56,45.11 |or 2
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58228) |or
|tip If no quests are offered, this step will advance.
step
talk Jenova Longeye##58413
|tip Walking around the area.
accept Just a Flesh Wound##30148 |goto The Jade Forest/0 57.50,44.70
accept A Feast for the Senses##30149 |goto The Jade Forest/0 57.50,44.70
accept Fragments of the Past##30147 |goto The Jade Forest/0 57.50,44.70
|tip You may be able to accept Fragments of the Past, but you need 525 Archaeology to complete it.
accept Snack Time##30146 |goto The Jade Forest/0 57.50,44.70
|tip If your fishing skill is low, fish from pools.
She can also be here [The Jade Forest/0 57.32,45.34]
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58413) |or
|tip If no quests are offered, this step will advance.
step
talk Elder Anli##58564
|tip Walking around this area.
accept Slitherscale Suppression##31194 |goto The Jade Forest/0 57.63,44.95 |or 2
accept Madcap Mayhem##31703 |goto The Jade Forest/0 57.63,44.95 |or 2
accept Dark Huntress##31701 |goto The Jade Forest/0 57.63,44.95 |or 2
accept On The Prowl##31702 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Seed of Doubt##31711 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Big Kah-Oona##31715 |goto The Jade Forest/0 57.63,44.95 |or 2
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58564) |or
|tip If no quests are offered, this step will advance.
step
talk Ningna Darkwheel##58509
accept Sprite Fright##31699 |goto The Jade Forest/0 58.26,45.05 |or
accept The Shoe Is On The Other Foot##31700 |goto The Jade Forest/0 58.26,45.05 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58509) |or
|tip If no quests are offered, this step will advance.
step
talk Suchi the Sweet##58510
accept Preservation##30159 |goto The Jade Forest/0 58.47,44.70 |or
accept Emptier Nests##30157 |goto The Jade Forest/0 58.47,44.70 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58510) |or
|tip If no quests are offered, this step will advance.
step
talk Big Bao##58508
accept Lingering Doubt##31709 |goto The Jade Forest/0 57.49,44.02 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58508) |or
|tip If no quests are offered, this step will advance.
step
talk Qua-Ro Whitebrow##58511
accept Serpent's Scale##31708 |goto The Jade Forest/0 57.29,43.47 |or
accept Saving the Serpents##31714 |goto The Jade Forest/0 57.29,43.47 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58511) |or
|tip If no quests are offered, this step will advance.
step
talk Ace Longpaw##58506
accept The Big Brew-haha##31713 |goto The Jade Forest/0 58.02,43.70 |or
Check for Quests |complete nodailies(58506) |or
|tip If no quests are offered, this step will advance.
step
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest/0 58.61,43.65 |or
Check for Quests |complete nodailies(58420) |or
|tip If no quests are offered, this step will advance.
step
talk Instructor Windblade##58420
Tell her you are ready to start the Sky Race.
Ride your Dragon! |invehicle |goto The Jade Forest/0 58.61,43.65
|only if haveq(30152) or completedq(30152)
stickystart "Finish_the_Race"
step
map The Jade Forest/0
path loop on; follow strict; dist 50
path	60.60,39.40	59.70,31.50	61.30,25.20	66.30,36.00	66.20,42.40
path	66.80,51.40	64.00,51.00	60.40,52.90	61.80,54.50	58.70,46.80
path	58.40,46.40	58.10,46.00
Follow this path
|tip Collect the checked flags hanging off of the checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
Pass #10# Checkpoints |q 30152/1
|only if haveq(30152) or completedq(30152)
step
label "Finish_the_Race"
map The Jade Forest/0									|notinsticky
path loop on; follow strict; dist 50							|notinsticky
path	60.60,39.40	59.70,31.50	61.30,25.20	66.30,36.00	66.20,42.40	|notinsticky
path	66.80,51.40	64.00,51.00	60.40,52.90	61.80,54.50	58.70,46.80	|notinsticky
path	58.40,46.40	58.10,46.00							|notinsticky
Follow this path									|notinsticky
Pass Underneath the Finish Line |q 30152/2
|only if haveq(30152) or completedq(30152)
step
talk Qua-Ro Whitebrow##58511
|tip Challenge him to a duel!
Defeat Qua-Ro Whitebrow |q 31721/1 |goto The Jade Forest/0 57.29,43.47
|only if haveq(31721) or completedq(31721)
step
talk Ace Longpaw##58506
|tip Challenge him to a duel!
Defeat Ace Longpaw |q 31717/1 |goto The Jade Forest/0 58.02,43.70
|only if haveq(31717) or completedq(31717)
step
talk Big Bao##58508
|tip Challenge him to a duel!
Defeat Big Bao |q 31718/1 |goto The Jade Forest/0 57.49,44.02
|only if haveq(31718) or completedq(31718)
step
talk Suchi the Sweet##58510
|tip Challenge him to a duel!
Defeat Suchi the Sweet |q 31720/1 |goto The Jade Forest/0 58.47,44.70
|only if haveq(31720) or completedq(31720)
stickystart "Slay_8_Slitherscale_Saurok"
stickystart "Collect_5_Slitherscale_Harpoons"
stickystart "Collect_8_Stolen_Eggs"
stickystart "Feed_Your_Hatchling"
step
kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto The Jade Forest/0 69.80,31.30
|only if haveq(31194) or completedq(31194)
step
label "Slay_8_Slitherscale_Saurok"
Kill Slitherscale enemies around this area |kill Slitherscale Ripper##58212, Slitherscale Eggdrinker##63532
Slay #8# Slitherscale Saurok |q 30155/1 |goto The Jade Forest/0 68.10,31.20
|only if haveq(30155) or completedq(30155)
step
label "Collect_5_Slitherscale_Harpoons"
click Slitherscale Weapons##210277
collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto The Jade Forest/0 68.10,31.20
|only if haveq(30158) or completedq(30158)
step
label "Collect_8_Stolen_Eggs"
click Serpent Egg##215392
collect 8 Stolen Egg##79067 |q 30159/1 |goto The Jade Forest/0 68.10,31.20
|only if haveq(30159) or completedq(30159)
step
label "Feed_Your_Hatchling"
Kill Saltback enemies around this area |kill Saltback Turtle##58218, Saltback Yearling##58219
collect 15 Saltback Meat Scrap##79028 |n
use the Saltback Meat Scrap##79028
collect 3 Saltback Meat##79027 |n
use the Saltback Meat##79027
Feed Your Hatchling #3# Times |q 30156/1 |goto The Jade Forest/0 64.60,33.30
|only if haveq(30156) or completedq(30156)
step
use the Bouncy Ball##79043
|tip Catch the Bouncy Ball whenever your Hatchling tosses it up.
|tip This will be every second throw.
Catch the Ball #8# Times |q 30151/1 |goto The Jade Forest/0 57.20,45.20
|only if haveq(30151) or completedq(30151)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Tiny Bag of Poop##89052 |q 31704/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31704) or completedq(31704)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Big Bag of Poop##89053 |q 31716/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31716) or completedq(31716)
step
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Pooped##31704 |goto The Jade Forest/0 57.52,45.36
|only if haveq(31704) or completedq(31704)
step
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Pooped##31716 |goto The Jade Forest/0 57.52,45.36
|only if haveq(31716) or completedq(31716)
stickystart "Kill_Windward_Saber"
stickystart "Collect_5_Tiger_Flanks"
stickystart "Kill_7_Shadowfae_Tricksters"
stickystart "Kill_8_Windward_Alpha"
stickystart "Collect_14_Stolen_Boots"
step
kill Shadowfae Madcap##65613 |q 31703/1 |goto The Jade Forest/0 62.70,27.40
|only if haveq(31703) or completedq(31703)
step
kill Windward Huntress##63538 |q 31701/1 |goto The Jade Forest/0 64.70,25.70
|tip Inside the cave.
|only if haveq(31701) or completedq(31701)
step
label "Kill_Windward_Saber"
kill Windward Saber##65612 |q 31702/1 |goto The Jade Forest/0 63.80,22.30
|only if haveq(31702) or completedq(31702)
step
label "Collect_5_Tiger_Flanks"
kill Windward Tiger##63537
collect 5 Tiger Flank##85282 |q 30154/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(30154) or completedq(30154)
step
label "Kill_7_Shadowfae_Tricksters"
kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(31699) or completedq(31699)
step
label "Kill_8_Windward_Alpha"
Kill Windward enemies around this area |kill Windward Alpha##67085, Windward Tiger##63537
Slay #8# Windward Tigers |q 31698/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(31698) or completedq(31698)
step
label "Collect_14_Stolen_Boots"
click Stolen Boots##214868
collect 14 Stolen Boots##89054 |q 31700/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(31700) or completedq(31700)
stickystart "Collect_100_Tiny_Spider_Eyes"
stickystart "Kill_7_Weeping_Widow"
stickystart "Collect_25_Serpent_Scales"
stickystart "Free_5_SriLa_Villagers"
step
Enter the cave |goto The Jade Forest/0 58.00,31.70 < 10 |walk
use the Sha Attunement Device##88966
|tip Use the Sha Attunement Device next to the Disturbance.
Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.70,25.70
|only if haveq(31709) or completedq(31709)
step
use the Sha Attunement Device##88966
|tip Use the Sha Attunement Device next to this Disturbance.
Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.00,31.90
|only if haveq(31709) or completedq(31709)
step
Enter the cave |goto The Jade Forest/15 58.00,31.70 < 10 |walk
kill Seed of Doubt##65614 |q 31711/1 |goto The Jade Forest/15 35.70,40.20
|only if haveq(31711) or completedq(31711)
step
use the Sha Attunement Device##88966
|tip Use the Sha Attunement Device next to this Disturbance.
Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.00,74.10
|only if haveq(31709) or completedq(31709)
step
label "Collect_100_Tiny_Spider_Eyes"
Enter the cave |goto The Jade Forest/15 58.00,31.70 < 10
kill Widowspawn##65658+
collect 100 Tiny Spider Eye##88907 |q 31710/1
|only if haveq(31710) or completedq(31710)
step
label "Kill_7_Weeping_Widow"
kill 7 Weeping Widow##65653+ |q 31706/1
|only if haveq(31706) or completedq(31706)
step
label "Collect_25_Serpent_Scales"
click Serpent's Scale##214844
collect 25 Serpent's Scale##88895 |q 31708/1
|only if haveq(31708) or completedq(31708)
step
label "Free_5_SriLa_Villagers"
kill Widow's Web##65634+
Free #5# Sri-La Villagers |q 31707/1
|only if haveq(31707) or completedq(31707)
stickystart "Collect_10_Rescued_Serpents"
stickystart "Kill_Oona_Brewchugger"
stickystart "Kill_13_Oona_Goons"
step
Enter the cave |goto The Jade Forest/0 57.70,27.70 < 10 |walk
kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.80,77.80
|tip Inside the cave.
|only if haveq(31715) or completedq(31715)
step
label "Collect_10_Rescued_Serpents"
clicknpc Serpent##128767
collect 10 Rescued Serpent##88894 |q 31714/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31714) or completedq(31714)
step
label "Kill_Oona_Brewchugger"
kill Oona Brewchugger##65624
click Stolen Sri-La Keg##214986
collect 100 Sri-La Stout##88855 |q 31713/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31713) or completedq(31713)
step
label "Kill_13_Oona_Goons"
Kill Oona enemies around this area |kill Oona Goon##65621, Oona Brewchugger##65624, Oona Tuna-Catcher##65623
Slay #13# Oona Hozen  |q 31712/1 |goto The Jade Forest/16 55.20,28.00
|only if haveq(31712) or completedq(31712)
step
use the Silken Rope##78947
|tip Use it on Windward Hatchlings.
Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest/16 63.40,31.40
You can find them around [goto The Jade Forest 64.50,31.10]
|only if haveq(30157) or completedq(30157)
step
collect 8 Windwool Bandage##72985 |q 30148 |or
_Or_
collect 8 Heavy Windwool Bandage##72986 |q 30148 |or
|tip Create them with Tailoring or purchase them from the auction house.
|tip Either bandage will work.
|only if haveq(30148) or completedq(30148)
step
clicknpc Injured Hatchling##58416
use the Windwool Bandage##72985
use the Heavy Windwool Bandage##72986
Bandage #8# Injured Hatchlings |q 30148/1 |goto The Jade Forest/0 63.90,31.10
|only if haveq(30148) or completedq(30148)
step
collect 5 Fish Cake##74641 |q 30149/1
|tip Create them with Pandaria Cooking recipes or purchase them from the auction house.
|tip Each one requires two Sugar Minnow and two Golden Carp.
|only if haveq(30149) or completedq(30149)
step
kill Honeykeeper##58363+
collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest/0 55.10,47.20
|only if haveq(30150) or completedq(30150)
step
Fish in the Open Water
collect 10 Sugar Minnow##79046|q 30146/1|goto The Jade Forest/0 59.74,42.21
|only if haveq(30146) or completedq(30146)
step
talk Ace Longpaw##58506
turnin The Big Brew-haha##31713 |goto The Jade Forest/0 58.02,43.70
|only if haveq(31713) or completedq(31713)
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Slitherscale Suppression##31194 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31194) or completedq(31194)
turnin Dark Huntress##31701 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31701) or completedq(31701)
turnin On The Prowl##31702 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31702) or completedq(31702)
turnin Restoring the Balance##30155 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30155) or completedq(30155)
turnin Disarming the Enemy##30158 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30158) or completedq(30158)
turnin Madcap Mayhem##31703 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31703) or completedq(31703)
turnin The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30154) or completedq(30154)
turnin Sprite Fright##31699 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31699) or completedq(31699)
turnin Thinning The Pack##31698 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31698) or completedq(31698)
turnin The Shoe Is On The Other Foot##31700 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31700) or completedq(31700)
turnin Weeping Widows##31706 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31706) or completedq(31706)
turnin The Seed of Doubt##31711 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31711) or completedq(31711)
turnin A Tangled Web##31707 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31707) or completedq(31707)
turnin The Sky Race##30152 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30152) or completedq(30152)
turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30152) or completedq(30152)
turnin The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31717) or completedq(31717)
turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31720) or completedq(31720)
turnin The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31718) or completedq(31718)
turnin Preservation##30159 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30159) or completedq(30159)
turnin Lingering Doubt##31709 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31709) or completedq(31709)
turnin Emptier Nests##30157 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30157) or completedq(30157)
turnin Monkey Mischief##31712 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31712) or completedq(31712)
turnin The Big Kah-Oona##31715 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31715) or completedq(31715)
turnin Saving the Serpents##31714 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31714) or completedq(31714)
|only if haveq(31194,31701,31702,30155,30158,31703,30154,31699,31698,31700,31706,31711,31707,30152,31721,31717,31720,31718,30159,31709,30157,31712,31715,31714) or completedq(31194,31701,31702,30155,30158,31703,30154,31699,31698,31700,31706,31711,31707,30152,31721,31717,31720,31718,30159,31709,30157,31712,31715,31714)
step
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Tiny Treats##31710 |goto The Jade Forest/0 57.52,45.36 |only if haveq(31710) or completedq(31710)
turnin Sweet as Honey##30150 |goto The Jade Forest/0 57.52,45.36 |only if haveq(30150) or completedq(30150)
turnin Feeding Time##30156 |goto The Jade Forest/0 57.52,45.36 |only if haveq(30156) or completedq(30156)
turnin Pooped##31704 |goto The Jade Forest/0 57.52,45.36 |only if haveq(31704) or completedq(31704)
turnin The Easiest Way To A Serpent's Heart##30154 |only if haveq(30154) or completedq(30154)
|only if haveq(31710,30150,30156,31704,30154) or completedq(31710,30150,30156,31704,30154)
step
Locate a Dig Site in a Mist of Pandaria Zone
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip Use your Survey ability inside the dig site area.
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments
collect 6 Serpentrider Relic## |q 30147/1
|only if haveq(30147) or completedq(30147)
step
talk Jenova Longeye##58413
|tip Walking around the area.
turnin Just a Flesh Wound##30148 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30148) or completedq(30148)
turnin A Feast for the Senses##30149 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30149) or completedq(30149)
turnin Fragments of the Past##30147 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30147) or completedq(30147)
turnin Snack Time##30146 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30146) or completedq(30146)
|only if haveq(30148,30149,30147,30146) or completedq(30148,30149,30147,30146)
step
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Sweet as Honey##30150 |goto The Jade Forest/0 57.52,45.36
|only if haveq(30150)
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Catch!##30151 |goto The Jade Forest/0 57.63,44.95
|only if haveq(30151)
step
talk Elder Anli##58564
|tip Walking around this area.
accept Needle Me Not##31705 |goto The Jade Forest/0 57.63,44.95
|only if completedq(30151)
step
use Golden Honey##89113
kill Orchard Needler |q 31705/1 |goto The Jade Forest/0 57.00,41.20
|only if haveq(31705) or completedq(31705)
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Needle Me Not##31705 |goto The Jade Forest/0 57.63,44.95
|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
step
label "revered"
talk Elder Anli##58564
|tip Walking around this area.
accept They Grow Like Weeds##30143 |goto The Jade Forest/0 57.63,44.95
step
talk Instructor Windblade##58420
Select _"Instructor Windblade, how is my serpent doing?"_ |gossip 40399
Speak to Instructor Windblade |q 30143/1 |goto The Jade Forest/0 58.61,43.65
step
talk Instructor Windblade##58420
turnin They Grow Like Weeds##30143 |goto The Jade Forest/0 58.61,43.65
accept Flight Training: Ring Round-Up##30144 |goto The Jade Forest/0 58.61,43.65
step
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
|tip The choice of Cloud Serpent may vary depending on which you first chose.
Ride Your Cloud Serpent |invehicle Golden Cloud Serpent##58429 |c |goto The Jade Forest/0 58.58,43.50
|only if haveq(30144)
step
Fly Through #6# Cloud Rings |q 30144/1 |goto The Jade Forest/0 60.61,35.48
|tip They look like rings of clouds around this area.
step
Click the Leave Vehicle button |outvehicle |c |goto The Jade Forest/0 58.61,43.65
step
talk Instructor Windblade##58420
turnin Flight Training: Ring Round-Up##30144 |goto The Jade Forest/0 58.61,43.65
accept Flight Training: Full Speed Ahead##30145 |goto The Jade Forest/0 58.61,43.65
step
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
|tip The choice of Cloud Serpent may vary depending on which you first chose.
Ride your Cloud Serpent |invehicle |c
|only if haveq(30145)
step
Finish the course |q 30145/1
|tip Follow Instructor Windblade through the course.
|tip Her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide.
|tip If you move too slowly or get too far away from the guide, the course will restart.
step
talk Instructor Windblade##58420
turnin Flight Training: Full Speed Ahead##30145 |goto The Jade Forest/0 58.61,43.65
accept Flight Training: In Due Course##30187 |goto The Jade Forest/0 58.61,43.65
step
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
|tip The choice of Cloud Serpent may vary depending on which you first chose.
Ride your Cloud Serpent |invehicle |c
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 60.74,39.36 |count 1
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 59.73,31.58 |count 2
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 61.28,25.30 |count 3
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 66.33,36.00 |count 4
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 66.11,42.39 |count 5
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 66.83,51.28 |count 6
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 64.05,51.01 |count 7
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint|q 30187/1 |goto The Jade Forest/0 60.42,53.05 |count 8
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 61.75,54.54 |count 9
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 58.76,46.76 |count 10
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
talk Instructor Windblade##58420
turnin Flight Training: In Due Course##30187 |goto The Jade Forest/0 58.61,43.65
|next "end"
step
label "exalted"
talk Elder Anli##58564
|tip Walking around this area.
accept Riding the Skies##31811 |goto The Jade Forest/0 57.60,45.00
step
Watch the cinematic
Join the Order of the Cloud Serpent |q 31811/1
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Riding the Skies##31811 |goto The Jade Forest/0 57.60,45.00
step
Proceeding to the next step |next "end" |only if default
Proceeding to Riding the Skies Quest |next "exalted" |only if rep('Order of the Cloud Serpent')==Exalted
step
label "exalted"
talk Elder Anli##58564
|tip Walking around this area.
accept Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
label "end"
You have completed the available daily quests |complete false or not completedq(31704,31716,31713,31194,31701,31702,30155,30158,31703,30154,31699,31698,31700,31706,31711,31707,30152,31721,31717,31720,31718,30159,31709,30157,31712,31715,31714,31710,30150,30156,31704,30154,30148,30149,30147,30146,30150,30151,31705) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
'|talk San Redscale##58414 |goto The Jade Forest/0 56.60,44.40 |only if rep("Order of the Cloud Serpent")>=Revered
|tip Purchase the Grand Commendation of the Order of the Cloud Serpent from San Redscale if possible. |only if rep("Order of the Cloud Serpent")>=Revered
|tip You won't be able to purchase it if you have used it already. |only if rep("Order of the Cloud Serpent")>=Revered
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies",{
completion={"quests"},
startlevel=90,
description="This guide will take you through the Shado-Pan dailies Becoming Exalted with The Shado-Pan allows you to purchase ground mounts and armor for your character.",
patch='50100'
},[[
step
label "dailies"
Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes/0 49.50,70.60
Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto Townlong Steppes/0 49.00,70.50 |next "Ban_Bearheart"
Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto Townlong Steppes/0 49.00,71.30 |next "Ling_of_the_Six_Pools"
step
talk Master Snowdrift##63009
|tip Walking around this area.
accept The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes/0 49.51,70.56
|only if not completedq(31127) and rep('Shado-Pan')>=Honored
step
talk Master Snowdrift##63009
|tip Walking around this area.
accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes/0 49.51,70.56
|only if rep('Shado-Pan')>=Revered
step
talk Lao-Chin the Iron Belly##62978
I'm here to challenge you! |q 31128/1 |goto Townlong Steppes/0 49.30,72.00
|only if haveq(31128) or completedq(31128)
step
talk Lao-Chin the Iron Belly##63135
Tell him: _"All right, let's do this!"_
Defeat Lao-Chin the Iron Belly |q 31128/2 |goto Townlong Steppes/0 50.60,67.80
|only if haveq(31128) or completedq(31128)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes/0 49.60,70.50
|only if haveq(31128) or completedq(31128)
step
talk Chao the Voice##62550
Tell her you're here to challenge her! |q 31127/1 |goto Townlong Steppes/0 49.70,70.50
|only if haveq(31127) or completedq(31127)
step
talk Chao the Voice##63125
Let's do this.
Defeat Chao the Voice |q 31127/2 |goto Townlong Steppes/0 50.10,68.30
|only if haveq(31127) or completedq(31127)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes/0 49.51,70.56
|only if haveq(31127) or completedq(31127)
step
talk Master Snowdrift##63009
|tip Walking around this area.
|tip You will only be able to accept 4 of the following dailies.
accept Assault Fire Camp Gai-Cho##31113 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept Assault Deadtalker's Plateau##31114 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept Spirit Dust##31116 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept The Deadtalker Cipher##31118 |goto Townlong Steppes/0 49.51,70.56 |or 4
step
talk Protector Yi##62546		|goto Townlong Steppes/0 49.30,71.30
Select _"I would like you to come with me today."_ |gossip 39260
talk Chao the Voice##62550		|goto Townlong Steppes/0 49.70,70.50 |only if completedq(31127)
|tip |only if completedq(31127)
talk Lao-Chin the Iron Belly##62978	|goto Townlong Steppes/0 49.30,71.90 |only if completedq(31128)
|tip |only if completedq(31128)
|tip Choose one to accompany you. |only if rep('Shado-Pan')>=Honored
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub. |only if rep('Shado-Pan')>=Honored
|tip Yi patrols so you may need to search for him.
|confirm
stickystart "Slay_100_Gai_Cho_Battlefield_Combatants"
step
Kill Gai-Cho enemies around this area |kill Gai-Cho Yaungol##62552, Gai-Cho Earthtalker##62553, Gai-Cho Pitchthrower##62608
Slay #16#  Gai-Cho Enemies |q 31113/1 |goto Townlong Steppes/0 63.40,43.30
|only if haveq(31113) or completedq(31113)
step
label "Slay_100_Gai_Cho_Battlefield_Combatants"
click Highly Explosive Yaungol Oil Barrel##212877
|tip You can only carry 10 at a time, so you may need to make multiple trips.
collect 10 Highly Explosive Yaungol Oil##84762 |n |goto Townlong Steppes/0 63.40,43.30
use the Highly Explosive Yaungol Oil Barrel##84762 |notinsticky
Kill enemies around this area |kill Gai-Cho Boltshooter##62589, Gai-Cho Cauterizer##62577, Gai-Cho Gatewatcher##62568, Kri'thik Aggressor##62572, Kri'thik Screecher##62602 |notinsticky
Slay #100# Gai-Cho Battlefield Combatants |q 31119/1 |goto Townlong Steppes/0 60.20,48.60 |notinsticky
|only if haveq(31119) or completedq(31119)
stickystart "Slay_Deadtalker_Crusher"
stickystart "Kill_8_Deadtalker_Corpsedfiler"
stickystart "Return_8_Spirit_Remains"
step
Kill Deadtalker enemies around this area |kill Deadtalker Crusher##62844, Deadtalker Corpsedefiler##62677
collect Ciphered Scroll##84759 |q 31118/1  |goto Townlong Steppes/0 51.10,51.80
|only if haveq(31118) or completedq(31118)
step
label "Slay_Deadtalker_Crusher"
step
kill Deadtalker Crusher##62844 |q 31114/2 |goto Townlong Steppes/0 51.10,51.80
|tip He is elite but with your companion you should be able to defeat him.
|only if haveq(31114) or completedq(31114)
step
label "Kill_8_Deadtalker_Corpsedfiler"
kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto Townlong Steppes/0 51.10,51.80
|only if haveq(31114) or completedq(31114)
step
label "Return_8_Spirit_Remains"
kill Defiled Spirit##62679+
collect 32 Ancient Spirit Dust##84727 |n
click Defiled Yaungol Remains##212779
Return #8# Spirits to Their Remains |q 31116/1 |goto Townlong Steppes/0 51.43,51.81
[Townlong Steppes/0 50.70,52.58]
[Townlong Steppes/0 50.41,49.04]
[Townlong Steppes/0 52.63,50.76]
|only if haveq(31116) or completedq(31116)
step
_Next to you:_
talk Chao the Voice##62550 |only if completedq(31127)
talk Protector Yi##62546
talk Lao-Chin the Iron Belly##62978 |only if completedq(31128)
turnin Assault Fire Camp Gai-Cho##31113 |only if haveq(31113) or completedq(31113)
turnin Assault Deadtalker's Plateau##31114 |only if haveq(31114) or completedq(31114)
turnin The Enemy of My Enemy... Is Still My Enemy!##31119 |only if haveq(31119) or completedq(31119)
turnin Spirit Dust##31116 |only if haveq(31116) or completedq(31116)
turnin The Deadtalker Cipher##31118 |only if haveq(31118) or completedq(31118)
|only if haveq(31113,31114,31119,31116,31118) or completedq(31113,31114,31119,31116,31118)
step
Click the Complete Quest Box:
accept Uruk!##31117 |or
accept Cheng Bo!##31120 |or
step
kill Uruk##62613 |q 31117/1 |goto Townlong Steppes/0 50.40,48.90
|only if haveq(31117) or completedq(31117)
step
kill Cheng Bo##62554 |q 31120/1 |goto Townlong Steppes/0 60.70,42.10
|only if haveq(31120) or completedq(31120)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin Uruk!##31117 |goto Townlong Steppes/0 49.60,70.50 |or
turnin Cheng Bo!##31120 |goto Townlong Steppes/0 49.60,70.50 |or
|only if haveq(31117,31120) or completedq(31117,31120)
|next "end"
step
label "Ban_Bearheart"
talk Ban Bearheart##62304
accept The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes/0 49.02,70.45
|only if not completedq(31038) and rep('Shado-Pan')>=Honored
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes/0 49.02,70.45
|only if rep('Shado-Pan')>=Revered
step
talk Snow Blossom##62380
Select _"Shall we meet in the Challenger's Ring?"_ |gossip 39299
Challenge Snow Blossom |q 31038/1 |goto Townlong Steppes/0 48.93,70.12
|only if haveq(31038) or completedq(31038)
step
talk Snow Blossom##62834
Select _"I challenge you!"_ |gossip 35296
kill Snow Blossom##62781
Defeat Snow Blossom |q 31038/2 |goto Townlong Steppes/0 50.17,67.90
|only if haveq(31038) or completedq(31038)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes/0 49.02,70.45
|only if haveq(31038) or completedq(31038)
step
talk Yalia Sagewhisper##62303
Select _"Shall we meet in the Challenger's Ring?"_ |gossip 39302
Challenge Yalia Sagewhisper |q 31104/1 |goto Townlong Steppes/0 48.85,70.02
|only if haveq(31104) or completedq(31104)
step
talk Yalia Sagewhisper##62850
Select _"I challenge you!"_ |gossip 35239
Defeat Yalia Sagewhisper |q 31104/2 |goto Townlong Steppes/0 50.36,67.73
|only if haveq(31104) or completedq(31104)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes/0 49.02,70.45
|only if haveq(31104) or completedq(31104)
step
talk Ban Bearheart##62304
accept Born Free##31047 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept The Mogu Menace##31105 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept The Mogu Menace##31106 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept The Mogu Menace##31039 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Bronze Claws##31044 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Illusions Of The Past##31045 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Grave Consequences##31048 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Dark Arts##31043 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Onyx Hearts##31042 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Spiteful Sprites##31040 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Egg Rescue!##31041 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Little Hatchlings##31046 |goto Townlong Steppes/0 49.02,70.45 |or 4
step
talk Snow Blossom##62380	|goto Townlong Steppes/0 48.90,70.10
Select _"Would you accompany me?"_ |gossip 39300
|tip
talk Fei Li##62354		|goto Townlong Steppes/0 48.80,70.20
Select _"Would you accompany me?"_ |gossip 28741
talk Yalia Sagewhisper##62303	|goto Townlong Steppes/0 48.80,70.00 |only if completedq(31104)
|tip
|tip Choose one to accompany you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
Click Here to Continue |confirm
step
Enter the cave |goto Townlong Steppes/0 28.82,23.26 < 5
talk Moshu the Arcane##62810
|tip Inside the cave.
accept Through the Portal##31110 |goto Townlong Steppes/0 28.85,22.58
|only if not completedq(31110)
stickystart "Free_20_Cloudrider_Hatchlings"
stickystart "Collect_8_Cloudrunner_Eggs"
step
clicknpc Ball and Chain##62539
Free #6# Wild Cloudriders |q 31047/1 |goto Townlong Steppes/0 32.80,25.10
|only if haveq(31047) or completedq(31047)
step
label "Free_20_Cloudrider_Hatchlings"
click Shan'ze Cage##215573
Free #20# Cloudrider Hatchlings |q 31046/1 |goto Townlong Steppes/0 32.80,25.10
|only if haveq(31046) or completedq(31046)
step
label "Collect_8_Cloudrunner_Eggs"
click Shiny Egg##214481
collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto Townlong Steppes/0 32.80,25.10
|only if haveq(31041) or completedq(31041)
stickystart "Collect_8_Shanze_Tablets"
stickystart "Collect_24_Shanze_Ancestors"
stickystart "Collect_4_Onyx_Hearts"
stickystart "Kill_12_Shan'ze_Enemies_1"
stickystart "Kill_12_Shan'ze_Enemies_2"
stickystart "Kill_12_Shan'ze_Enemies_3"
stickystart "Collect_20_Bronze_Claws"
stickystart "Slay_30_Darkwoods_Enemies"
stickystart "Collect_1000_Ancient_Arcane_Powder"
step
kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31045) or completedq(31045)
step
label "Collect_8_Shanze_Tablets"
click Shan'ze Tablet##212319
collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31043) or completedq(31043)
step
label "Collect_24_Shanze_Ancestors"
click Mogu Burial Urn##212324
kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31048) or completedq(31048)
step
label "Collect_4_Onyx_Hearts"
kill Onyx Stormclaw##62448
collect 4 Onyx Heart##83138 |q 31042/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31042) or completedq(31042)
step
label "Kill_12_Shan'ze_Enemies_1"
kill Shan'ze Serpentbinder##62293, Shan'ze Beastmaster##62530
Slay #12# Shan'ze enemies |q 31105/1 |goto Townlong Steppes/0 28.50,18.50
|only if haveq(31105) or completedq(31105)
step
label "Kill_12_Shan'ze_Enemies_2"
kill Shan'ze Serpentbinder##62293, Shan'ze Beastmaster##62530
Slay #12# Shan'ze enemies |q 31106/1 |goto Townlong Steppes/0 28.50,18.50
|only if haveq(31106) or completedq(31106)
step
label "Kill_12_Shan'ze_Enemies_3"
kill Shan'ze Serpentbinder##62293, Shan'ze Beastmaster##62530
Slay #12# Shan'ze enemies |q 31039/1 |goto Townlong Steppes/0 28.50,18.50
|only if haveq(31039) or completedq(31039)
step
label "Collect_20_Bronze_Claws"
kill Bronze Quilen##62266+
collect 20 Bronze Claw##83153+ |q 31044/1 |goto Townlong Steppes/0 28.50,18.50
|only if haveq(31044) or completedq(31044)
step
label "Slay_30_Darkwoods_Enemies"
Kill Darkwoods enemies around this area |kill Darkwoods Pixie##62268, Darkwoods Charmer##62457
Slay #30# Darkwoods Sprites or Darkwoods Charmers |q 31040/1 |goto Townlong Steppes/0 23.00,19.50
|only if haveq(31040) or completedq(31040)
step
label "Collect_1000_Ancient_Arcane_Powder"
Kill Shan'ze enemies around this area |kill Shan'ze Serpentbinder##62293, Shan'ze Illusionist##62440, Shan'ze Ancestor##62285, Shan'ze Beastmaster##62515, Darkwoods Charmer##62520
collect 1000 Ancient Arcane Powder##84102 |q 31110/1
|only if haveq(31110) or completedq(31110)
step
_Next to you:_
talk Fei Li##62354
talk Snow Blossom##62380
talk Yalia Sagewhisper##62303 |only if completedq(31104)
turnin The Mogu Menace##31105 |only if haveq(31105) or completedq(31105)
turnin The Mogu Menace##31106 |only if haveq(31106) or completedq(31106)
turnin The Mogu Menace##31039 |only if haveq(31039) or completedq(31039)
turnin Bronze Claws##31044 |only if haveq(31044) or completedq(31044)
turnin Illusions Of The Past##31045 |only if haveq(31045) or completedq(31045)
turnin Grave Consequences##31048 |only if haveq(31048) or completedq(31048)
turnin Dark Arts##31043 |only if haveq(31043) or completedq(31043)
turnin Onyx Hearts##31042 |only if haveq(31042) or completedq(31042)
turnin Born Free##31047 |only if haveq(31047) or completedq(31047)
turnin Spiteful Sprites##31040 |only if haveq(31040) or completedq(31040)
turnin Egg Rescue!##31041 |only if haveq(31041) or completedq(31041)
turnin Little Hatchlings##31046 |only if haveq(31046) or completedq(31046)
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
step
use the Bronze Claws##83134
|tip Use it on the Cloudrunners around this area.
kill Shan'ze Cloudrunner##62584+
Free #8# Shan'ze Cloudriders |q 31061/1 |goto Townlong Steppes/0 30.90,12.60
|only if haveq(31061) or completedq(31061)
step
Click the Leave Vehicle button |outvehicle
|only if haveq(31061) or completedq(31061)
step
Enter the tunnel |goto Townlong Steppes/0 20.30,15.80 < 15
kill Darkwoods Faerie##62522 |q 31049/1 |goto Townlong Steppes/0 19.50,13.80
|only if haveq(31049) or completedq(31049)
step
Leave the tunnel |goto Townlong Steppes/0 20.30,15.80 < 15
kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto Townlong Steppes/0 32.30,9.50
|tip Destroy Spirit Gems as the appear.
|only if haveq(31062) or completedq(31062)
step
Enter the cave |goto Townlong Steppes/0 28.82,23.26 < 5
talk Moshu the Arcane##62810
turnin Through the Portal##31110 |goto Townlong Steppes/0 28.85,22.59
|only if haveq(31110) or completedq(31110)
step
talk Ban Bearheart##62304
turnin When The Dead Speak##31062 |goto Townlong Steppes/0 49.02,70.45 |only if haveq(31062) or completedq(31062)
turnin Riding the Storm##31061 |goto Townlong Steppes/0 49.02,70.45 |only if haveq(31061) or completedq(31061)
turnin In Sprite Of Everything##31049 |goto Townlong Steppes/0 49.02,70.45 |only if haveq(31049) or completedq(31049)
|next "end"
step
label "Ling_of_the_Six_Pools"
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes/0 49.01,71.33
|only if not completedq(31220) and rep('Shado-Pan')>=Honored
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes/0 49.01,71.33
|only if rep('Shado-Pan')>=Revered
step
talk Tenwu of the Red Smoke##63616
Select _"Shall we meet in the Challenger's Ring?"_ |gossip 35470
Challenge Tenwu of the Red Smoke |q 31221/1 |goto Townlong Steppes/0 48.88,71.23
|only if haveq(31221) or completedq(31221)
step
talk Tenwu of the Red Smoke##64471
Select _"Let's see if you can back that talk up."_ |gossip 40966
Defeat Tenwu of the Red Smoke |q 31221/2 |goto Townlong Steppes/0 50.62,68.50
|only if haveq(31221) or completedq(31221)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes/0 49.01,71.33
|only if haveq(31221) or completedq(31221)
step
talk Hawkmaster Nurong##63618
|tip Walking around this area.
Select _"Shall we meet in the Challenger's Ring?"_ |gossip 35724
Challenge Hawkmaster Nurong |q 31220/1 |goto Townlong Steppes/0 48.71,71.21
|only if haveq(31220) or completedq(31220)
step
talk Hawkmaster Nurong##64470
Select _"Let's go!"_ |gossip 40965
Defeat Hawkmaster Nurong |q 31220/2 |goto Townlong Steppes/0 50.70,68.18
|only if haveq(31220) or completedq(31220)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes/0 49.01,71.33
|only if haveq(31220) or completedq(31220)
step
talk Ling of the Six Pools##63614
accept Sra'vess Wetwork##31196 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept The Bigger They Come...##31197 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept A Morale Victory##31198 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept Destroy the Siege Weapons!##31199 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept Fumigation##31200 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept Friends, Not Food!##31201 |goto Townlong Steppes/0 49.01,71.33 |or 4
step
talk Hawkmaster Nurong##63618		|goto Townlong Steppes/0 48.70,71.20
|tip
talk Taoshi##63617			|goto Townlong Steppes/0 48.70,71.00
Select _"Would you accompany me?"_ |gossip 35550
|tip
talk Tenwu of the Red Smoke##63616	|goto Townlong Steppes/0 48.90,71.20 |only if completedq(31221)
Select _"Would you accompany me?"_ |gossip 35471
|tip
|tip Choose one to accompany you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|confirm
step
talk Ku-Mo##65341
accept Seeking Father##30933 |goto Townlong Steppes/0 48.70,71.10
|only if not completedq(30933) and haveq(31201)
stickystart "Slay_4_Greater_Sra'thik_Mantid"
stickystart "Slay_15_Lesser_Sra'thik_Mantid"
step
click Sra'thik Siege Weapon##213311
Destroy the Small Southern Siege Weapon |q 31199/2 |goto Townlong Steppes/0 27.44,54.71
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Siege Weapon##213311
Destroy the Large Southern Siege Weapon |q 31199/1 |goto Townlong Steppes/0 25.75,53.54
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Idol##213309
Destroy the Southern Idol |q 31198/1 |goto Townlong Steppes/0 23.50,55.50
|only if haveq(31198) or completedq(31198)
step
click Sra'thik Idol##213309
Destroy the Central Idol |q 31198/3 |goto Townlong Steppes/0 21.50,49.20
|only if haveq(31198) or completedq(31198)
step
click Sra'thik Siege Weapon##213311
Destroy the Large Northern Siege Weapon |q 31199/3 |goto Townlong Steppes/0 27.16,41.13
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Siege Weapon##213311
Destroy the Small Northern Siege Weapon |q 31199/4 |goto Townlong Steppes/0 26.02,39.90
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Idol##213309
Destroy the Eastern Idol |q 31198/4 |goto Townlong Steppes/0 27.80,41.90
|only if haveq(31198) or completedq(31198)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Egg Chamber.
Bomb the Egg Chamber |q 31200/3 |goto Townlong Steppes/0 23.65,44.70
|only if haveq(31200) or completedq(31200)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Torture Cell.
Bomb the Torture Cell |q 31200/4 |goto Townlong Steppes/0 22.03,41.53
|only if haveq(31200) or completedq(31200)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Slaughtering Pit.
Bomb the Slaughtering Pit |q 31200/5 |goto Townlong Steppes/0 21.17,43.16
|only if haveq(31200) or completedq(31200)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Amber Vault.
Bomb the Amber Vault |q 31200/1 |goto Townlong Steppes/0 21.00,45.90
|only if haveq(31200) or completedq(31200)
step
click Sra'thik Idol##213309
Destroy the Western Idol |q 31198/2 |goto Townlong Steppes/0 16.20,45.80
|only if haveq(31198) or completedq(31198)
step
talk Shado-Pan Trainee##64459
Tell them "No you're not!"
Free the Shado-Pan Trainee at Southern Feeding Pit |q 31201/3 |goto Townlong Steppes/0 17.60,58.00
|only if haveq(31201) or completedq(31201)
step
talk Shado-Pan Trainee##64460
Tell them "No you're not!"
Free the Shado-Pan Trainee at Southern Feeding Pit |q 31201/2 |goto Townlong Steppes/0 17.40,57.00
|only if haveq(31201) or completedq(31201)
step
talk Sentinel Ku-Yao##61694
Tell him his son has been looking for him
Search for Sentinel Ku-Yao |q 30933/1 |goto Townlong Steppes/0 17.40,57.00
|only if haveq(30933) or completedq(30933)
step
talk Shado-Pan Trainee##64461
Tell them "No you're not!"
Free the Shado-Pan Trainee at Southern Feeding Pit |q 31201/1 |goto Townlong Steppes/0 18.00,53.50
|only if haveq(31201) or completedq(31201)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Nutriment Cell.
Bomb the Nutriment Cell |q 31200/2 |goto Townlong Steppes/0 23.90,47.30
|only if haveq(31200) or completedq(31200)
step
label "Slay_15_Lesser_Sra'thik_Mantid"
Kill Sra'thik enemies around this area |kill Sra'thik Mutilator##63678, Sra'thik Cacophyte##63680, Sra'thik Drone##63677, Sra'thik Regenerator##63681, Sra'thik Swiftwing##63683
Slay #15# Lesser Sra'thik Mantid |q 31196/1 |goto Townlong Steppes/0 25.87,42.16
[Townlong Steppes/0 25.90,42.05] |notinsticky
[Townlong Steppes/0 27.12,40.28] |notinsticky
[Townlong Steppes/0 25.10,40.36] |notinsticky
|only if haveq(31196) or completedq(31196)
label "Slay_4_Greater_Sra'thik_Mantid"
Kill Sra'thik enemies around this area |kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+
Slay #4# Greater Sra'thik Mantid |q 31197/1 |goto Townlong Steppes/0 25.00,52.00
[Townlong Steppes/0 25.90,42.05] |notinsticky
[Townlong Steppes/0 27.12,40.28] |notinsticky
[Townlong Steppes/0 25.10,40.36] |notinsticky
|only if haveq(31197) or completedq(31197)
step
_Next to you:_
talk Taoshi##63623
talk Hawkmaster Nurong##63618
talk Tenwu of the Red Smoke##63622 |only if completedq(31221)
turnin Sra'vess Wetwork##31196 |only if haveq(31196) or completedq(31196)
turnin The Bigger They Come...##31197 |only if haveq(31197) or completedq(31197)
turnin A Morale Victory##31198 |only if haveq(31198) or completedq(31198)
turnin Destroy the Siege Weapons!##31199 |only if haveq(31199) or completedq(31199)
turnin Fumigation##31200 |only if haveq(31200) or completedq(31200)
turnin Friends, Not Food!##31201 |only if haveq(31201) or completedq(31201)
step
Click the Complete Quest Box:
accept Target of Opportunity: Sra'thik Hivelord##31204 |or
accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
step
kill Sra'thik Swarmlord##63693 |q 31203/1 |goto Townlong Steppes/0 16.40,40.90
|only if haveq(31203) or completedq(31203)
step
Enter the building |goto Townlong Steppes/0 27.10,44.10 < 15
kill Sra'thik Hivelord##63694 |q 31204/1 |goto Townlong Steppes/0 24.30,44.00
|only if haveq(31204) or completedq(31204)
step
talk Ku-Mo##65341
turnin Seeking Father##30933 |goto Townlong Steppes/0 48.70,71.10
|only if haveq(30933) or completedq(30933)
step
talk Ling of the Six Pools##63614
turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto Townlong Steppes/0 49.00,71.40 |or |only if haveq(31204) or completedq(31204)
turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto Townlong Steppes/0 49.00,71.40 |or |only if haveq(31203) or completedq(31203)
step
label "end"
talk Master Snowdrift##63009
|tip Walking around this area.
accept Mogu Incursions##31266 |goto Townlong Steppes/0 49.51,70.56
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto Townlong Steppes/0 48.80,58.60
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin Mogu Incursions##31266 |goto Townlong Steppes/0 49.51,70.56
accept Surprise Attack!##31277 |goto Townlong Steppes/0 49.51,70.56
|only if rep('Shado-Pan')==Exalted and not completedq(31277)
step
talk Ban Bearheart##63908
Select _"Alright. Let's go."_ |gossip 33154
Join the Battle at Niuzao Temple |q 31277/1 |goto Townlong Steppes/0 42.62,63.92
|only if haveq(31277) or completedq(31277)
step
Watch the dialogue
kill Shan'ze Brutalizer##63933+
|tip Hei Feng will eventually spawn.
|tip
kill Hei Feng##63920
|tip When he casts Deep Breath step behind him.
Defeat the Mogu Invasion |q 31277/2 |goto Townlong Steppes/0 40.83,59.88
|only if haveq(31277) or completedq(31277)
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto Townlong Steppes/0 49.17,71.05
|only if haveq(31277)
step
You have completed the available daily quests |complete false or not completedq(31221,31196,31197,31198,31199,31200,31201,31204,31203,31047,31105,31106,31039,31044,31045,31048,31043,31042,31040,31041,31046,31062,31061,31049,31113,31114,31119,31116,31118,31117,31120) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
'|talk Rushi the Fox##64595 |goto Townlong Steppes/0 48.80,70.60 |only if rep("Shado-Pan")>=Revered
|tip Purchase the Grand Commendation of the Shado-Pan from Rushi the Fox if possible. |only if rep("Shado-Pan")>=Revered
|tip You won't be able to purchase it if you have used it already. |only if rep("Shado-Pan")>=Revered
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies",{
startlevel=85,
completion={"quests"},
description="This guide will take you through The Tillers dailies Becoming Exalted with The Tillers allows you to purchase ground mounts and recipes for your character.",
patch='50500'
},[[
step
Proceeding to the Tiller's Dailies  |next "dailies" |complete completedq(31945) |only if completedq(31945)
Proceeding to the Tiller's Prequests |next |complete not completedq(31945) |only if not completedq(31945)
step
label "Tillers_Prequests"
talk Farmer Yoon##58721
accept A Helping Hand##30252 |goto Valley of the Four Winds/0 52.02,48.01
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.23,47.66 |count 1
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.10,48.02 |count 2
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.89,48.39 |count 3
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.70,48.70 |count 4
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.55,49.30 |count 5
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.90,49.16 |count 6
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.36,49.23 |count 7
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.83,49.86 |count 8
step
Enter the building |goto Valley of the Four Winds/0 52.56,48.12 < 7 |walk
talk Farmer Yoon##58646
|tip Inside the building.
turnin A Helping Hand##30252 |goto Valley of the Four Winds/0 52.75,47.94
step
Watch the dialogue
talk Farmer Yoon##58646
|tip Wait for the dialogue to complete.
accept Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.25,48.78
step
talk Merchant Greenfield##58718
Select _"I'm here to pick up seeds for Farmer Yoon."_ |gossip 40536
Select _"He just inherited Sunsong Ranch. You can literally see him from where you are standing."_ |gossip 40535
collect Packet of Green Cabbage Seeds##80295 |q 30535/1 |goto Valley of the Four Winds/0 52.88,52.14
step
talk Farmer Yoon##58646
turnin Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Untilled Soil##59985
Till the Soil |q 30254/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
use EZ-Gro Green Cabbage Seeds##80302
Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Untilled Soil##59985
Till the Soil |q 30254/1 |goto Valley of the Four Winds/0 52.03,48.25 |count 2
step
use EZ-Gro Green Cabbage Seeds##80302
Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto Valley of the Four Winds/0 52.03,48.25 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Parched EZ-Gro Green Cabbage##59987
use Rusty Watering Can##79104
Water the First Parched EZ-Gro Green Cabbage |q 30255/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Parched EZ-Gro Green Cabbage##59987
use Rusty Watering Can##79104
Water the Second Parched EZ-Gro Green Cabbage |q 30255/1 |goto Valley of the Four Winds/0 52.03,48.23 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Ripe EZ-Gro Green Cabbage##59833
|tip Wait a moment for it to ripen fully.
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Ripe EZ-Gro Green Cabbage##59833
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto Valley of the Four Winds/0 52.03,48.23 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 52.25,48.78
step
click Dark Soil##210582
|tip Beneath the building.
collect Marsh Lily##79268 |q 30257/1 |goto Valley of the Four Winds/0 52.83,48.00
step
talk Gina Mudclaw##58706
turnin Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 52.22,48.70
accept Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 52.22,48.70
step
talk Merchant Greenfield##58718
buy 1 Scallion Seeds##80591 |n
collect 1 Scallion Seeds##80591 |goto Valley of the Four Winds/0 52.88,52.14 |q 31945 |future
step
clicknpc Untilled Soil##58562
use the Scallion Seeds##80591
|tip You will get 5 Scallions from 1 seed packet when it's time to harvest.
Plant Scallion Seeds |q 31945/1 |goto Valley of the Four Winds/0 52.01,48.44
step
Tend to Your Crops
'|kill Voracious Virmen##60039,Swooping Plainshawk##60072
'|clicknpc Wild Scallions##63170
|tip Click the {g}Runty{} crop and jump to clear it.
|tip Click the {g}Wiggling{} crop and kill the enemy that spawns.
|tip Click the {g}Alluring{} crop and kill the enemy that spawns.
|tip Collect and use the Vintage Bug Sprayer on {g}Infested{} crops.
|tip Click the {g}Wild{} crop, using 'Flex' to subdue it and 'Gnaw' to interrupt Vine Slam.
|tip Click {g}Tangled{} crops and move away from them to clear.
|tip Use the Rusty Watering Can to water the {g}Parched{} crop.
|tip Click the {g}Smothered{} crop and use the abilities on your hotbar to subdue it.
Click Here After Tending to Your Crops |confirm |q 31945
step
label "Turnin_Learn_and_Grow_VI"
clicknpc Bursting Scallions##63160
|tip If your crops didn't burst, you'll have to wait until the next day to harvest.
clicknpc Ripe Scallions##63165
Harvest Ripe Scallions |q 31945/2 |goto Valley of the Four Winds/0 52.00,48.40
step
collect 5 Scallion##74843 |q 31945/3 |goto Valley of the Four Winds/0 52.00,48.40
Click Here to Start Your Daily Quests |next "dailies" |confirm |q 31945
step
talk Gina Mudclaw##58706
turnin Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 53.10,51.80
step
label "dailies"
talk Farmer Yoon##58646
|tip Harvest your crops before starting from the previous day before starting.
accept The Kunzen Hunter-Chief##30336 |goto Valley of the Four Winds/0 52.25,48.78
accept That Dangling Carrot##31670 |goto Valley of the Four Winds/0 52.25,48.78
accept Stealing is Bad... Re-Stealing is OK##30334 |goto Valley of the Four Winds/0 52.25,48.78
accept Stalling the Ravage##30335 |goto Valley of the Four Winds/0 52.25,48.78
accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto Valley of the Four Winds/0 52.25,48.78
accept The Lesser of Two Evils##30333 |goto Valley of the Four Winds/0 52.25,48.78
accept The White Turnip Treatment##31675 |goto Valley of the Four Winds/0 52.25,48.78
accept Simian Sabotage##30337 |goto Valley of the Four Winds/0 53.00,51.80
accept The Cabbage Test##31669 |goto Valley of the Four Winds/0 52.25,48.78
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58646) |next |or
|tip If no quests are offered, this step will advance.
|only if not completedq(32682)
step
talk Farmer Yoon##58646
|tip Only two quest will be available per day.
accept The Kunzen Hunter-Chief##30336 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept That Dangling Carrot##31670 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Stealing is Bad... Re-Stealing is OK##30334 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The Cabbage Test##31669 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept It's Melon Time##31942 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept A Pumpkin-y Perfume##31672 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Stalling the Ravage##30335 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Squash Those Foul Odors##31941 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The Lesser of Two Evils##30333 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The White Turnip Treatment##31675 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The Pink Turnip Challenge##31674 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Which Berries? Witchberries.##31943 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Why Not Scallions?##31671 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Simian Sabotage##30337 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58646) |or
|tip If no quests are offered, this step will advance.
|only if completedq(32682)
step
talk Gina Mudclaw##58706
accept Money Matters##30322 |goto Valley of the Four Winds/0 52.23,48.70
She can also be found here [Valley of the Four Winds/0 53.16,51.80]
Check for Quests |complete nodailies(58706) |next |or
Click here if Gina isn't present |confirm
|tip If no quests are offered, this step will advance.
step
talk Andi##64464
|tip Only one quest will be available per day.
accept A Gift For Fung##30475 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Chee Chee##30471 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Haohan##30477 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Jogu##30478 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Sho##30472 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Tina##30470 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Ella##30474 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Old Hillpaw##30476 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Fish##30473 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Gina##30479 |goto Valley of the Four Winds/0 52.75,50.42 |or
step
talk Ella##58647
accept You Have to Burn the Ropes##30327 |goto Valley of the Four Winds/0 53.10,51.70
Check for Quests |complete nodailies(58647) |next |or
|tip If no quests are offered, this step will advance.
step
talk Haohan Mudclaw##57402
accept Pest Problems##30319 |goto Valley of the Four Winds/0 53.00,51.70
Check for Quests |complete nodailies(57402) |next |or
|tip If no quests are offered, this step will advance.
step
talk Tina Mudclaw##58761
accept They Don't Even Wear Them##30323 |goto Valley of the Four Winds/0 52.98,51.80
Check for Quests |complete nodailies(58761) |next |or
Click here if Tina isn't available |confirm
step
talk Chee Chee##58709
accept Not in Chee-Chee's Backyard##30324 |goto Valley of the Four Winds/0 53.10,52.10
Check for Quests |complete nodailies(58709) |next |or
|tip If no quests are offered, this step will advance.
step
talk Fish Fellreed##58705
accept The Kunzen Legend-Chief##30326 |goto Valley of the Four Winds/0 52.76,51.85
Check for Quests |complete nodailies(58705) |next |or
|tip If no quests are offered, this step will advance.
step
talk Farmer Fung##57298
accept Water, Water Everywhere##30317 |goto Valley of the Four Winds/0 52.90,51.70
Check for Quests |complete nodailies(57298) |next |or
|tip If no quests are offered, this step will advance.
step
talk Sho##58708
accept Where It Counts##30325 |goto Valley of the Four Winds/0 53.10,52.10
Check for Quests |complete nodailies(58708) |next |or
|tip If no quests are offered, this step will advance.
step
talk Jogu the Drunk##58710
accept Weed War II##30321 |goto Valley of the Four Winds/0 53.60,52.50
Check for Quests |complete nodailies(58710) |next |or
|tip If no quests are offered, this step will advance.
step
talk Old Hillpaw##58707
accept Chasing the Chicken##30318 |goto Valley of the Four Winds/0 53.06,51.86
Check for Quests |complete nodailies(58707) |next |or
|tip If no quests are offered, this step will advance.
step
talk Gina Mudclaw##58706
accept Money Matters##30322 |goto Valley of the Four Winds/0 53.16,51.80
Check for Quests |complete nodailies(58706) |next |or
|tip If no quests are offered, this step will advance.
step
talk Innkeeper Lei Lan##59582
|tip Walking around inside the building.
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39125
Select _"<Offer to pay off her debt.> I'll pay your debt today. It's the least I can do."_ |gossip 39074
collect Innkeeper Lei Lan's Payment##80215 |q 30322/3 |goto Valley of the Four Winds/0 55.05,50.32
|only if haveq(30322) or completedq(30322)
step
talk Lolo Lio##59585
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39127
Select _"<Offer to pay off his debt.> I'll pay your debt today. Next time, try to be more responsible."_ |gossip 39184
collect Lolo Lio's Payment##80216 |q 30322/4 |goto Valley of the Four Winds/0 55.59,52.09
|only if haveq(30322) or completedq(30322)
step
talk Trader Jambeezi##59583
|tip Walking around this area.
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39890
collect Trader Jambeezi's Payment##80214 |q 30322/2 |goto Valley of the Four Winds/0 56.01,49.70
|only if haveq(30322) or completedq(30322)
step
talk Spicemaster Jin Jao##59581
|tip Inside the building.
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39047
Select _"<Offer to pay his debt for him.> Don't worry about it. I will pay your share today."_ |gossip 39128
collect Spicemaster Jin Jao's Payment##80213 |q 30322/1
Spicemaster Jin Jao's Payment |q 30322/1 |goto Valley of the Four Winds/0 56.67,47.13
|only if haveq(30322) or completedq(30322)
step
talk Merchant Greenfield##58718
buy 1 Juicycrunch Carrot Seeds##80590 |q 31670 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31670) or completedq(31670)
step
talk Merchant Greenfield##58718
buy 1 Green Cabbage Seeds##79102 |q 31669 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31669) or completedq(31669)
step
talk Merchant Greenfield##58718
buy 1 Witchberry Seeds##89326 |q 31943 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31943) or completedq(31943)
step
talk Merchant Greenfield##58718
buy 1 Scallion Seeds##80591 |q 31671 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31671) or completedq(31671)
step
talk Merchant Greenfield##58718
buy 1 White Turnip Seeds##80595 |q 31675 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31675) or completedq(31675)
step
talk Merchant Greenfield##58718
buy 1 Pink Turnip Seeds##80594 |q 31674 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31674) or completedq(31674)
step
talk Merchant Greenfield##58718
buy 1 Jade Squash Seeds##89328 |q 31941 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31941) or completedq(31941)
step
talk Merchant Greenfield##58718
buy 1 Striped Melon Seeds##89329 |q 31942 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31942) or completedq(31942)
step
talk Merchant Greenfield##58718
buy 1 Mogu Pumpkin Seeds##80592 |q 31672 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31672) or completedq(31672)
step
talk Merchant Greenfield##58718
buy 1 Red Blossom Leek Seeds##80593 |q 31673 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31673) or completedq(31673)
step
talk Wing Nga##60231
Tell her that you'd like to borrow one of Farmer Fung's kites
Ride a Kite |invehicle |c |goto Valley of the Four Winds/0 56.50,50.40
|only if haveq(30317) or completedq(30317)
step
Use Your Water Bucket Ability on the Dusty Spots Below You
|tip They are outlined by a yellow circle.
Water #35# Dusty Spots |q 30317/1
|only if haveq(30317) or completedq(30317)
step
clicknpc Untilled Soil##58562
use the Scallion Seeds##80591
|tip Use them on the Tilled Soil.
Plant the Scallion Seeds |q 31671/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31671) or completedq(31671)
step
clicknpc Untilled Soil##58562
use the Juicycrunch Carrot Seeds##80590
|tip Use them on the Tilled Soil.
Plant 1 Juicycrunch Carrot Seed |q 31670/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31670) or completedq(31670)
step
clicknpc Untilled Soil##58562
use the Witchberry Seeds##89326
|tip Use them on the Tilled Soil.
Plant Witchberry Seeds |q 31943/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31943) or completedq(31943)
step
clicknpc Untilled Soil##58562
use the Mogu Pumpkin Seeds##80592
|tip Use them on the Tilled Soil.
Plant the Mogu Pumpkin Seeds |q 31672/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31672) or completedq(31672)
step
clicknpc Untilled Soil##58562
use the Jade Squash Seeds##89328
|tip Use them on the Tilled Soil.
Plant the Jade Squash Seeds |q 31941/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31941) or completedq(31941)
step
clicknpc Untilled Soil##58562
use the White Turnip Seeds##80595
|tip Use them on the Tilled Soil.
Plant the White Turnip Seeds |q 31675/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31675) or completedq(31675)
step
clicknpc Untilled Soil##58562
use the Pink Turnip Seeds##80594
|tip Use them on the Tilled Soil.
Plant Pink Turnip Seeds |q 31674/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31674) or completedq(31674)
step
clicknpc Untilled Soil##58562
use the Green Cabbage Seeds##79102
|tip Use them on the Tilled Soil.
Plant the Green Cabbage Seeds |q 31669/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31669) or completedq(31669)
step
clicknpc Untilled Soil##58562
use the Striped Melon Seeds##89329
|tip Use them on the Tilled Soil.
Plant the Striped Melon Seeds |q 31942/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31942) or completedq(31942)
step
clicknpc Untilled Soil##58562
use the Red Blossom Leek Seeds##80593
|tip Use them on the Tilled Soil.
Plant the Red Blossom Leek Seeds |q 31673/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31673) or completedq(31673)
step
click Goldenfire Orchid##211025
collect Goldenfire Orchid##80231 |q 30479/1 |goto Valley of the Four Winds/0 45.90,48.50
You can also find it at the provided locations:
[Valley of the Four Winds/0 41.60,42.80]
[Valley of the Four Winds/0 37.50,37.30]
|only if haveq(30479) or completedq(30479)
step
talk Lost Dog##59533
accept Lost and Lonely##30526 |goto Valley of the Four Winds/0 42.40,50.00
|only if rep("The Tillers") >= Revered
step
talk Gai Lan##57385
Ask him, "What Weeds?"
Gain the "Weed War" Buff |complete hasbuff("spell:108219") or hasbuff("spell:114494") |goto Valley of the Four Winds/0 38.50,51.70
|only if haveq(30321) or completedq(30321)
step
clicknpc Ugly Weed##57306
clicknpc Nasty Weed##57308
click Weed-B-Gone Gas Bomb##210057
Pull #100# Weeds |q 30321/1
|tip Use the buttons on your action bar to accomplish this.
|only if haveq(30321) or completedq(30321)
step
clicknpc Hillpaw's Chicken##58918
|tip Most of these chickens are disguised animals.
|tip When you pick one up click the button that appears on your screen.
Deliver Lost Hens Here [Valley of the Four Winds/0 30.40,52.50]
collect Old Hillpaw's Prize Chicken##80223 |q 30318/1 |goto Valley of the Four Winds/0 31.30,53.20
|only if haveq(30318) or completedq(30318)
step
kill Monstrous Plainshawk##59641
collect 1 Bloody Plainshawk Leg##80232 |goto Valley of the Four Winds/0 37.40,37.30
|only if haveq(30475) or completedq(30475)
step
talk Wika-Wika##59532
Mook-mooks?
Get the Pest Problems Buff |complete hasbuff("spell:114517") or hasbuff("spell:114573") |goto Valley of the Four Winds/0 39.60,45.30
|only if haveq(30319) or completedq(30319)
step
clicknpc Black-Nose Marmot##59530
Stomp #25# Black-Nose Marmot |q 30319/1 |goto Valley of the Four Winds/0 39.60,45.30
|only if haveq(30319) or completedq(30319)
step
Kill enemies around this area |kill Teeku##59130, Jim-Jim##59128, Kon-Kon##59127, Maaka##59129
Slay a Kunzen Hunter-Chief |q 30336/1 |goto Valley of the Four Winds/0 30.30,46.09
|tip Stand against the mountainside so you don't get thrown off.
|only if haveq(30336) or completedq(30336)
step
kill Skyrange Mushan##64309+
collect 20 Tasty T-Bone##80144 |q 30526/1 |goto Valley of the Four Winds/0 29.20,38.20
|only if haveq(30526) or completedq(30526)
stickystart "Kill_Kunzen_Ritualist"
stickystart "Kick_4_Blazing_Embers"
stickystart "Throw_8_Kunzen_Ritual_Candles"
step
click Kunzen Rope
Burn #6# Ropes |q 30327/1 |goto Valley of the Four Winds/0 32.00,32.10
|only if haveq(30327) or completedq(30327)
step
click Yu-Ping Soup Cauldron##210873
collect Yu-Ping Soup##79870 |q 30472/1 |goto Valley of the Four Winds/0 29.70,34.50
|only if haveq(30472) or completedq(30472)
step
label "Kill_Kunzen_Ritualist"
kill 1 Kunzen Ritualist##59123 |q 30325/3 |goto Valley of the Four Winds/0 29.70,34.50
|only if haveq(30325) or completedq(30325)
step
label "Kick_4_Blazing_Embers"
click Blazing Ember##210890
Kick #4# Blazing Ember |q 30325/2
|only if haveq(30325) or completedq(30325)
step
label "Throw_8_Kunzen_Ritual_Candles"
click Kunzen Ritual Candle##210955
Throw #8# Kunzen Ritual Candles |q 30325/1 |goto Valley of the Four Winds/0 29.70,34.50
|only if haveq(30325) or completedq(30325)
stickystart "Collect_16_Stolen_Vegetable"
stickystart "Kill_12_Kunzen_Hozen"
stickystart "Kill_8_Kunzen_Tribe_Members"
stickystart "Collect_Spicy_Shrimp_Dumblings"
step
Kill enemies around this area |kill Buk-Buk##59133, Bimba##59135, Yammo##59134, Rit-Rit##59132
|tip Move out of their spell casts.
|tip Fight the enemies and continue to avoid being hit by their casts.
collect 1 Kunzen Legend-Book##79866 |q 30326/1 |goto Valley of the Four Winds/0 31.60,28.70
|only if haveq(30326) or completedq(30326)
step
click Authentic Valley Stir Fry##210803
collect Authentic Valley Stir Fry##79827 |q 30471/1 |goto Valley of the Four Winds/0 33.60,23.90
|only if haveq(30471) or completedq(30471)
step
clicknpc Yak Statuette##59154
collect Yak Statuette##79828 |q 30473/1 |goto Valley of the Four Winds/0 34.00,24.10
|only if haveq(30473) or completedq(30473)
step
use the Barrel of Fireworks##79885
Explode the Stolen Tools |q 30337/2 |goto Valley of the Four Winds/0 32.70,30.60
|only if haveq(30337) or completedq(30337)
step
use the Barrel of Fireworks##79885
Explode the Stolen Weapons |q 30337/1 |goto Valley of the Four Winds/0 30.40,28.10
|only if haveq(30337) or completedq(30337)
step
use the Barrel of Fireworks##79885
Explode Stolen Beer |q 30337/3 |goto Valley of the Four Winds/0 32.10,25.90
|only if haveq(30337) or completedq(30337)
step
use the Barrel of Fireworks##79885
Explode the Stolen Grain |q 30337/4 |goto Valley of the Four Winds/0 35.00,22.00
|only if haveq(30337) or completedq(30337)
step
label "Kill_12_Kunzen_Hozen"
Kill Kunzen enemies around this area |kill Kunzen Rockflinger##59120, Kunzen Collector##59124, Kunzen Ravager##59119, Kunzen Hunter##59121
Slay #12# Kunzen hozen |q 30335/1 |goto Valley of the Four Winds/0 34.20,23.50
|only if haveq(30335) or completedq(30335)
step
label "Collect_16_Stolen_Vegetable"
click Stolen Vegetable##210768
|tip Near buildings around this area.
collect 16 Stolen Vegetable##79824 |q 30334/1 |goto Valley of the Four Winds/0 33.56,23.81
|only if haveq(30334) or completedq(30334)
step
label "Kill_8_Kunzen_Tribe_Members"
Kill Kunzen enemies around this area |kill Kunzen Rockflinger##59120, Kunzen Collector##59124, Kunzen Ravager##59119
Slay #8# Kunzen Tribe Members |q 30324/1 |goto Valley of the Four Winds/0 34.20,23.50
|only if haveq(30324) or completedq(30324)
step
label "Collect_Spicy_Shrimp_Dumblings"
Kill Kunzen enemies around this area |kill Kunzen Rockflinger##59120, Kunzen Collector##59124, Kunzen Ravager##59119
collect Spicy Shrimp Dumplings##79871 |q 30474/1 |goto Valley of the Four Winds/0 34.20,23.50
|only if haveq(30474) or completedq(30474)
step
kill Enormous Cattail Grouper##59639
collect Enormous Cattail Grouper Tooth##80228 |q 30477/1 |goto Valley of the Four Winds/0 44.10,29.10
|only if haveq(30477) or completedq(30477)
stickystart "Collect_Uncut_Chrysoberyl"
stickystart "Collect_Ransacked_Ring"
stickystart "Collect_Burglarized_Bracelet"
step
Enter the cave |goto Valley of the Four Winds/0 46.97,21.03 < 10
kill Springtail Warren-Mother##59516 |q 30333/1 |goto Valley of the Four Winds/0 48.70,18.70
|only if haveq(30333) or completedq(30333)
step
Kill Springtail enemies around this area |kill Springtail Littlewhisker##59515, Springtail Trapper##59513, Springtail Burrower##59514
collect Stolen Circlet##80138 |q 30323/1 |goto Valley of the Four Winds/0 44.70,19.60
Cave entrance |goto Valley of the Four Winds/0 44.01,22.28 |notinsticky
Cave entrance |goto Valley of the Four Winds/0 46.97,21.03 |notinsticky
|only if haveq(30323) or completedq(30323)
step
label "Collect_Ransacked_Ring"
Kill Springtail enemies around this area |kill Springtail Littlewhisker##59515, Springtail Trapper##59513, Springtail Burrower##59514
collect Ransacked Ring##80137 |q 30323/2 |goto Valley of the Four Winds/0 44.70,19.60
Cave entrance |goto Valley of the Four Winds/0 44.01,22.28 |notinsticky
Cave entrance |goto Valley of the Four Winds/0 46.97,21.03 |notinsticky
|only if haveq(30323) or completedq(30323)
step
label "Collect_Burglarized_Bracelet"
Kill Springtail enemies around this area |kill Springtail Littlewhisker##59515, Springtail Trapper##59513, Springtail Burrower##59514
collect Burglarized Bracelet##80139 |q 30323/3 |goto Valley of the Four Winds/0 44.70,19.60
Cave entrance |goto Valley of the Four Winds/0 44.01,22.28 |notinsticky
Cave entrance |goto Valley of the Four Winds/0 46.97,21.03 |notinsticky
|only if haveq(30323) or completedq(30323)
step
label "Collect_Uncut_Chrysoberyl"
click Chrysoberyl Outcropping##210960
|tip This have several locations.
|Tip It can appear at the Warren.
|tip It can appear between the two entrances.
collect Uncut Chrysoberyl##80134 |q 30470/1
|only if haveq(30470) or completedq(30470)
step
click Freshwater Oyster##211021
collect Blue Freshwater Pearl## |q 30476/1 |goto Valley of the Four Winds/0 44.20,28.80
|only if haveq(30476) or completedq(30476)
step
talk Lost Dog##59533
turnin Lost and Lonely##30526 |goto Valley of the Four Winds/0 42.40,50.00
|only if haveq(30526)
step
click Yoon's Apples##211020
collect 8 Yoon's Apple##80234 |goto Valley of the Four Winds/0 52.60,47.80
|only if haveq(30478) or completedq(30478)
step
click Yoon's Craneberries##211022
collect 50 Yoon's Craneberry##80235 |goto Valley of the Four Winds/0 52.80,47.90
|only if haveq(30478) or completedq(30478)
step
talk Bobo Ironpaw##58717
Tell him you've got all this fruit here
collect Apple-Berry Hooch##80236 |q 30478/1 |goto Valley of the Four Winds/0 53.20,52.20
|only if haveq(30478) or completedq(30478)
step
talk Kol Ironpaw##58712 |goto Valley of the Four Winds/0 52.97,51.33
Select _"Chef, could you grill this plainshawk leg for me?"_ |gossip 39115
collect Grilled Plainshawk Leg##80233 |q 30475/1 |goto Valley of the Four Winds/0 52.97,51.33
|only if haveq(30475) or completedq(30475)
step
talk Farmer Yoon##58646
turnin The Kunzen Hunter-Chief##30336 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30336) or completedq(30336)
turnin That Dangling Carrot##31670 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31670) or completedq(31670)
turnin Stealing is Bad... Re-Stealing is OK##30334 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30334) or completedq(30334)
turnin The Cabbage Test##31669 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31669) or completedq(31669)
turnin It's Melon Time##31942 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31942) or completedq(31942)
turnin A Pumpkin-y Perfume##31672 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31672) or completedq(31672)
turnin Stalling the Ravage##30335 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30335) or completedq(30335)
turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31673) or completedq(31673)
turnin Squash Those Foul Odors##31941 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31941) or completedq(31941)
turnin The Lesser of Two Evils##30333 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30333) or completedq(30333)
turnin The White Turnip Treatment##31675 |goto Valley of the Four Winds/0 52.25,48.7875 |only if haveq(31675) or completedq(31675)
turnin The Pink Turnip Challenge##31674 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31674) or completedq(31674)
turnin Which Berries? Witchberries.##31943 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31943) or completedq(31943)
turnin Why Not Scallions?##31671 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31671) or completedq(31671)
turnin Simian Sabotage##30337 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30337) or completedq(30337)
|only if not completedq(32682)
step
talk Farmer Yoon##58646
|tip He will only have one quest a day.
turnin The Kunzen Hunter-Chief##30336 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30336) or completedq(30336)
turnin Stealing is Bad... Re-Stealing is OK##30334 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30334) or completedq(30334)
turnin Stalling the Ravage##30335 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30335) or completedq(30335)
turnin The Lesser of Two Evils##30333 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30333) or completedq(30333)
turnin Simian Sabotage##30337 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30337) or completedq(30337)
|only if not completedq(32682)
step
talk Farmer Fung##57298
turnin Water, Water Everywhere##30317 |goto Valley of the Four Winds/0 52.90,51.70 |only if haveq(30317) or completedq(30317)
turnin A Gift For Fung##30475 |goto Valley of the Four Winds/0 52.90,51.70 |only if haveq(30475) or completedq(30475)
|only if haveq(30317,30475) or completedq(30317,30475)
step
talk Fish Fellreed##58705
turnin The Kunzen Legend-Chief##30326 |goto Valley of the Four Winds/0 52.69,51.99 |only if haveq(30326) or completedq(30326)
turnin A Gift For Fish##30473 |goto Valley of the Four Winds/0 52.69,51.99 |only if haveq(30473) or completedq(30473)
|only if haveq(30326,30473) or completedq(30326,30473)
step
talk Ella##58647
turnin You Have to Burn the Ropes##30327 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30327) or completedq(30327)
turnin A Gift For Ella##30474 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30474) or completedq(30474)
|only if haveq(30327,30474) or completedq(30327,30474)
step
talk Sho##58708
turnin Where It Counts##30325 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30325) or completedq(30325)
turnin A Gift For Sho##30472 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30472) or completedq(30472)
|only if haveq(30325,30472) or completedq(30325,30472)
step
talk Gina Mudclaw##58706
turnin Money Matters##30322 |goto Valley of the Four Winds/0 52.23,48.70 |only if haveq(30322) or completedq(30322)
turnin A Gift For Gina##30479 |goto Valley of the Four Winds/0 52.23,48.70 |only if haveq(30479) or completedq(30479)
She can also be found here [Valley of the Four Winds/0 53.16,51.80]
|only if haveq(30322,30479) or completedq(30322,30479)
step
talk Old Hillpaw##58707
turnin Chasing the Chicken##30318 |goto Valley of the Four Winds/0 53.10,51.90 |only if haveq(30318) or completedq(30318)
turnin A Gift For Old Hillpaw##30476 |goto Valley of the Four Winds/0 53.10,51.90 |only if haveq(30476) or completedq(30476)
|only if haveq(30318,30476) or completedq(30318,30476)
step
talk Tina Mudclaw##58761
turnin A Gift For Tina##30470 |goto Valley of the Four Winds/0 53.10,51.70 |only if haveq(30470) or completedq(30470)
turnin They Don't Even Wear Them##30323 |goto Valley of the Four Winds/0 53.10,51.70 |only if haveq(30323) or completedq(30323)
|only if haveq(30470,30323) or completedq(30470,30323)
step
talk Haohan Mudclaw##57402
turnin Pest Problems##30319 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30319) or completedq(30319)
turnin A Gift For Haohan##30477 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30477) or completedq(30477)
|only if haveq(30319,30477) or completedq(30319,30477)
step
talk Jogu the Drunk##58710
turnin Weed War II##30321 |goto Valley of the Four Winds/0 53.60,52.50 |only if haveq(30321) or completedq(30321)
turnin A Gift For Jogu##30478 |goto Valley of the Four Winds/0 53.60,52.50 |only if haveq(30478) or completedq(30478)
|only if haveq(30321,30478) or completedq(30321,30478)
step
talk Chee Chee##58709
turnin Not in Chee-Chee's Backyard##30324 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30324) or completedq(30324)
turnin A Gift For Chee Chee##30471 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30471) or completedq(30471)
Can also be found here [Valley of the Four Winds/0 52.96,49.96]
|next "honored" |only if rep('The Tillers')==Honored and not completedq(31936)
|next "revered" |only if rep('The Tillers')==Revered and not completedq(30528)
|next "exalted" |only if rep('The Tillers')==Exalted and not completedq(30534)
|next "end" |only if rep('The Tillers')<=Friendly
step
label "honored"
talk Farmer Yoon##58646
accept Growing the Farm I: The Weeds##30260 |goto Valley of the Four Winds/0 52.25,48.79
|next "Mung_Mung_Hozen_Problem_Quest" |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
step
talk Gai Lan##57385
turnin Growing the Farm I: The Weeds##30260 |goto Valley of the Four Winds/0 38.60,51.70
accept Growing the Farm I: A Little Problem##30516 |goto Valley of the Four Winds/0 38.60,51.70
step
click Spideroot##211117
collect 6 Spideroot##80122 |q 30516/1 |goto Valley of the Four Winds/0 36.50,51.10
step
talk Gai Lan##57385
turnin Growing the Farm I: A Little Problem##30516 |goto Valley of the Four Winds/0 38.60,51.70
|next "revered" |only if rep('The Tillers')>=Revered
step
When You Arrive at Sunsong Ranch You Will Get a Buff |goto Valley of the Four Winds/0 51.90,48.30
|tip After 15 minutes your ranch will be expanded.
|tip You cannot buy your farm upgrade until the expansion is done.
Gain the Growing the Farm Buff |complete hasbuff(114431) |q 31936 |future
step
Wait For Sunsong Ranch to Upgrade |q 30531 |future
|tip It will take 15 minutes to accomplish.
|tip When you no longer have the {g}Growing the Farm Buff{} buff, you can continue.
step
talk Gina Mudclaw##58706
buy 1 "Jinyu Princess" Irrigation System##89812 |n
use the "Jinyu Princess" Irrigation System##89812
accept The "Jinyu Princess" Irrigation System##31936 |goto Valley of the Four Winds/0 52.22,48.70
She can also be found here [Valley of the Four Winds/0 53.20,51.80]
|only if not completedq(31936)
step
talk Farmer Yoon##58646
turnin The "Jinyu Princess" Irrigation System##31936 |goto Valley of the Four Winds/0 52.25,48.79
|next "Mung_Mung_Hozen_Problem_Quest" |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
|next "end" |only if default
step
label "revered"
talk Farmer Yoon##58646
accept Growing the Farm II: The Broken Wagon##30523 |goto Valley of the Four Winds/0 52.25,48.79
|next "Farmer_Yoon_Yak_Attack_Quest" |only if repval('The Tillers','Revered')>=4200
|next "Mung_Mung_Hozen_Problem_Quest" |only if completedq(31936) and not completedq(31946)
|only if completedq(30516) and rep('The Tillers')>=Revered
step
talk Fish Fellreed##58705
turnin Growing the Farm II: The Broken Wagon##30523 |goto Valley of the Four Winds/0 41.70,30.00
accept Growing the Farm II: Knock on Wood##30524 |goto Valley of the Four Winds/0 41.70,30.00
step
click Boat Planks##211122
collect 100 Waxed Plank##80136 |q 30524/1 |goto Valley of the Four Winds/0 42.80,29.10
step
talk Fish Fellreed##58705
turnin Growing the Farm II: Knock on Wood##30524 |goto Valley of the Four Winds/0 41.70,30.00
step
When You Arrive at Sunsong Ranch You Will Get a Buff |goto Valley of the Four Winds/0 51.90,48.30
|tip After 15 minutes your ranch will be expanded.
|tip You cannot buy your farm upgrade until the expansion is done.
|confirm
|only if not completedq(31937)
step
talk Gina Mudclaw##58706
buy 1 "Thunder King" Pest Repellers##89813 |n
use the "Thunder King" Pest Repellers##89813
accept "Thunder King" Pest Repellers##31937 |goto Valley of the Four Winds/0 53.20,51.80
step
talk Farmer Yoon##58646
turnin "Thunder King" Pest Repellers##31937 |goto Valley of the Four Winds/0 52.25,48.79
|next "end"
step
label "Mung_Mung_Hozen_Problem_Quest"
talk Farmer Yoon##58646
accept Mung-Mung's Vote I: A Hozen's Problem##30258 |goto Valley of the Four Winds/0 52.25,48.79
|next "Farmer_Yoon_Yak_Attack_Quest" |only if completedq(31946)
step
talk Mung-Mung##57401
turnin Mung-Mung's Vote I: A Hozen's Problem##30258 |goto Valley of the Four Winds/0 44.20,34.30
accept Mung-Mung's Vote II: Rotten to the Core##30259 |goto Valley of the Four Winds/0 44.20,34.30
step
click Partially Chewed Carrot##210942
collect 10 Partially Chewed Carrot##80116 |q 30259/1 |goto Valley of the Four Winds/0 42.70,38.20
step
talk Mung-Mung##57401
turnin Mung-Mung's Vote II: Rotten to the Core##30259 |goto Valley of the Four Winds/0 44.20,34.30
accept Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto Valley of the Four Winds/0 44.20,34.30
step
talk Merchant Greenfield##58718
buy 2 Juicycrunch Carrot Seeds##80590 |q 31946 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Juicycrunch Carrot Seeds##80590
|tip Use it on tilled soil.
Plant #2# Juicycrunch Carrot Seeds |q 31946/1 |goto Valley of the Four Winds/0 52.00,48.40
stickystart "Collect_10_Juicycrunch_Carrots"
step
Harvest #2# Ripe Juicycrunch Carrots |q 31946/2
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_10_Juicycrunch_Carrots"
collect 10 Juicycrunch Carrot##74841 |q 31946/3
step
talk Mung-Mung##57401
turnin Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto Valley of the Four Winds/0 44.20,34.30
|next "end"
step
label "Farmer_Yoon_Yak_Attack_Quest"
talk Farmer Yoon##58646
accept Farmer Fung's Vote I: Yak Attack##30517 |goto Valley of the Four Winds/0 52.25,48.79
|noquest |next "end"
|next |only if repval('The Tillers','Revered')>=8400
step
talk Farmer Fung##57298
turnin Farmer Fung's Vote I: Yak Attack##30517 |goto Valley of the Four Winds/0 48.30,33.90
accept Farmer Fung's Vote II: On the Loose##30518 |goto Valley of the Four Winds/0 48.30,33.90
step
clicknpc Escaped Shagskin##59491
Recover #5# Shagskin |q 30518/1 |goto Valley of the Four Winds/0 51.00,36.70
Take them here [goto Valley of the Four Winds/0 50.40,34.70]
step
talk Farmer Fung##57298
turnin Farmer Fung's Vote II: On the Loose##30518 |goto Valley of the Four Winds/0 48.30,33.90
accept Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto Valley of the Four Winds/0 48.30,33.90
step
talk Merchant Greenfield##58718
buy 3 Green Cabbage Seeds##79102 |q 31947 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Green Cabbage Seeds##79102
|tip Use them on tilled soil.
Plant #3# Green Cabbage Seeds |q 31947/1 |goto Valley of the Four Winds/0 52.00,48.40
stickystart "Collect_15_Green_Cabbage"
step
click Green Cabbage
Harvest #3# Green Cabbage |q 31947/2
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_15_Green_Cabbage"
collect 15 Green Cabbage##74840 |q 31947/3
step
talk Farmer Fung##57298
turnin Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto Valley of the Four Winds/0 48.30,33.90
step
label "Nana's_Secret_Recipe"
talk Farmer Yoon##58646
accept Nana's Vote I: Nana's Secret Recipe##30519 |goto Valley of the Four Winds/0 52.20,48.80
|next |only if repval('The Tillers','Revered')>=16800
|noquest |next "end"
step
talk Nana Mudclaw##64597
turnin Nana's Vote I: Nana's Secret Recipe##30519 |goto Valley of the Four Winds/0 54.70,47.00
accept Nana's Vote II: The Sacred Springs##31948 |goto Valley of the Four Winds/0 54.70,47.00
step
kill Thousand-Year Guardian##66850+
use the Empty Pitcher##89902
|tip You may have to kill the Guardian first, then collect the water.
|tip Use it while standing under the waterfall.
collect Thousand-Year Water##89903 |q 31948/1 |goto Valley of the Four Winds/0 56.70,21.70
step
talk Nana Mudclaw##64597
turnin Nana's Vote II: The Sacred Springs##31948 |goto Valley of the Four Winds/0 54.70,47.00
accept Nana's Vote III: Witchberry Julep##31949 |goto Valley of the Four Winds/0 54.70,47.00
step
talk Merchant Greenfield##58718
buy 3 Witchberry Seeds##89326 |q 31949 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Witchberry Seeds##89326
|tip Use them on the tilled soil.
Plant #3# Witchberry Seeds |q 31949/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31949)
stickystart "Collect_15_Witchberries"
step
Harvest #3# Witchberries |q 31949/2
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_15_Witchberries"
collect 15 Witchberries##74846 |q 31949/3
step
talk Nana Mudclaw##64597
turnin Nana's Vote III: Witchberry Julep##31949 |goto Valley of the Four Winds/0 54.70,47.00
step
label "haohan"
talk Farmer Yoon##58646
accept Haohan's Vote I: Bungalow Break-In##30521 |goto Valley of the Four Winds/0 52.20,48.80
|noquest |next "end"
step
talk Haohan Mudclaw##57402
turnin Haohan's Vote I: Bungalow Break-In##30521 |goto Valley of the Four Winds/0 44.60,34.10
accept Haohan's Vote II: The Real Culprits##30522 |goto Valley of the Four Winds/0 44.60,34.10
step
clicknpc Muddy Tracks##52171
Investigate #8# Suspicious Footprints |q 30522/1 |goto Valley of the Four Winds/0 39.40,43.60
|tip When you click the eighth footprint a hozen will attack you.
step
talk Farmer Yoon##58646
turnin Haohan's Vote II: The Real Culprits##30522 |goto Valley of the Four Winds/0 52.20,48.80
accept Haohan's Vote III: Pure Poison##30525 |goto Valley of the Four Winds/0 52.20,48.80
step
Enter the cave |goto Valley of the Four Winds/0 47.00,20.90 < 10
click Cave Lily##210969
collect Cave Lily##80141 |q 30525/2
step
Leave the cave |goto Valley of the Four Winds/0 47.00,20.90 < 10
Enter the cave |goto Valley of the Four Winds/0 44.00,22.20 < 10
click Bloodbloom##210968
collect Bloodbloom##80140 |q 30525/1
step
Leave the cave |goto Valley of the Four Winds/0 44.00,22.20 < 5 |walk
click Violet Lichen##210971
collect Violet Lichen##80143 |q 30525/4 |goto Valley of the Four Winds/0 42.50,22.30
step
Enter the cave |goto Valley of the Four Winds/0 39.40,20.40 < 10 |walk
click Ghostcap##210970
collect Ghostcap##80142 |q 30525/3
step
Leave the cave |goto Valley of the Four Winds/0 39.40,20.40 < 10
talk Farmer Yoon##58646
turnin Haohan's Vote III: Pure Poison##30525 |goto Valley of the Four Winds/0 52.20,48.80
accept Haohan's Vote IV: Melons For Felons##30527 |goto Valley of the Four Winds/0 52.20,48.80
step
talk Merchant Greenfield##58718
buy 4 Striped Melon Seeds##89329 |q 30527 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Striped Melon Seeds##89329
|tip Use them on the tilled soil.
Plant #4# Striped Melon Seeds |q 30527/1 |goto Valley of the Four Winds/0 52.00,48.40
stickystart "Collect_20_Striped_Melons"
step
Harvest #4# Striped Melons |q 30527/2
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_20_Striped_Melons"
collect 20 Striped Melon##74848 |q 30527/3
step
talk Farmer Yoon##58646
turnin Haohan's Vote IV: Melons For Felons##30527 |goto Valley of the Four Winds/0 52.20,48.80
accept Haohan's Vote V: Chief Yip-Yip##30528 |goto Valley of the Four Winds/0 52.20,48.80
step
Enter the cave |goto Valley of the Four Winds/0 33.10,20.20 < 10 |walk
kill Chief Yip-Yip##59567 |q 30528/1 |goto Valley of the Four Winds/0 32.40,20.60
|tip Use the Throw Melon button on your screen when he begins casting Charging Up.
|tip This will cause him to stop attacking and take increased damage for a few seconds.
step
talk Farmer Yoon##58646
turnin Haohan's Vote V: Chief Yip-Yip##30528 |goto Valley of the Four Winds/0 52.20,48.80
step
clicknpc Offering Bowl##59669
|tip After some talking, the Offering Bowl should light up for you to click.
|confirm |goto Valley of the Four Winds/0 52.00,49.00 |next "end"
step
label "exalted"
talk Farmer Yoon##58646
accept Growing the Farm III: The Mossy Boulder##30529 |goto Valley of the Four Winds/0 52.20,48.80 |or
|noquest |next "end" |or
|next |only if default
step
talk Haohan Mudclaw##57402
turnin Growing the Farm III: The Mossy Boulder##30529 |goto Valley of the Four Winds/0 44.60,34.10
step
When You Arrive at Sunsong Ranch You Will Get a Buff |goto Valley of the Four Winds/0 51.90,48.30
|tip After 15 minutes your ranch will be expanded.
|tip You cannot buy your farm upgrade until the expansion is done.
|confirm
|only if not completedq(31938)
step
talk Gina Mudclaw##58706
buy 1 "Earth-Slasher" Master Plow##89814 |n
use the "Earth-Slasher" Master Plow##89814
accept The "Earth-Slasher" Master Plow##31938 |goto Valley of the Four Winds/0 53.20,51.80
step
talk Farmer Yoon##58646
turnin The "Earth-Slasher" Master Plow##31938 |goto Valley of the Four Winds/0 52.25,48.79
step
talk Nana Mudclaw##64597
accept Inherit the Earth##32682 |goto Valley of the Four Winds/0 54.70,47.00
|only if rep('The Tillers')==Exalted and not completedq(32682)
step
talk Farmer Yoon##58646
Ask him if he will join the council of the Tillers Union |q 32682/1 |goto Valley of the Four Winds/0 52.20,48.80
|only if rep('The Tillers')==Exalted and not completedq(32682)
step
talk Nana Mudclaw##64597
turnin Inherit the Earth##32682 |goto Valley of the Four Winds/0 Valley of the Four Winds 54.70,47.00
|tip This quest opens up the farm to you.
|tip You will be able to rest and set your hearthstone here.
|tip It also opens up new quests and work orders that provide reputations for factions via farming.
|only if rep('The Tillers')==Exalted and not completedq(32682)
step
click Tillers Shrine##215705
accept A Second Hand##30534 |goto Valley of the Four Winds/0 52.00,49.00
step
Ask them: <Friend>, how'd you like to help us run the farm? |q 30534/1
|tip You must be Best Friends with one of the 10 Tiller NPCs.
|tip Refer to the Reputations guides to accomplish this.
step
click Tillers Shrine##215705
turnin A Second Hand##30534 |goto Valley of the Four Winds/0 52.00,49.00
step
label "end"
You have completed the available daily quests |complete false or not completedq(30333-30337,31943,31669,31670,31674,31675,31671-31673,31941,31942,30471,30472,30475,30470,30474,30473,30476-30479,30317-30319,30321,30322-30327) |or |next "dailies"
Routing Back to the Scallion Harvest |next "Turnin_Learn_and_Grow_VI" |or |only if not completedq(31945)
|tip New quests will become available with the next daily server reset.
'|talk Gina Mudclaw##58706 |goto Valley of the Four Winds/0 53.20,51.80 |only if rep("The Tillers")>=Revered
|tip Purchase the Grand Commendation of the Tillers from Gina Mudclaw if possible. |only if rep("The Tillers")>=Revered
|tip You won't be able to purchase it if you have used it already. |only if rep("The Tillers")>=Revered
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies",{
achieveid={7315,6546},
patch='50004',
startlevel=90,
description="This guide will take you through The Golden Lotus dailies Becoming Exalted with the Golden Lotus allows you to purchase a crowd control trinket and some armor. At Revered, you can purchase epic chest armor, rings, and shoulders. At Exalted, you can purchase 3 ground mounts.",
},[[
step
Routing to proper section |complete true or completedq(31512) |or |only if Alliance
Routing to proper section |complete false or completedq(31512) |or |only if Alliance
Routing to proper section |complete true or completedq(31511) |or |only if Horde
Routing to proper section |next "dailies" |complete false or completedq(31511) |or |only if Horde
step
label "prequests"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31392 |goto Kun-Lai Summit/0 72.03,94.26 |only if not completedq(31394) and Alliance
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit/0 72.03,94.26 |only if not completedq(31393) and Horde
step
talk Anduin Wrynn##64540 |only if Alliance
|tip Inside the building. |only if Alliance
turnin Temple of the White Tiger##31392 |goto Kun-Lai Summit/0 68.78,43.12 |only if Alliance
accept A Celestial Experience##31394 |goto Kun-Lai Summit/0 68.78,43.12 |only if Alliance
talk Sunwalker Dezco##64542 |only if Horde
|tip Inside the building. |only if Horde
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit/0 68.73,43.02 |only if Horde
accept A Celestial Experience##31395 |goto Kun-Lai Summit/0 68.73,43.02 |only if Horde
step
talk Xuen##64528
Speak with Xuen |q 31394/1 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Speak with Xuen |q 31395/1 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
Watch the dialogue
kill Spirit of Violence##64656
Pass the First Test |q 31394/2 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Pass the First Test |q 31395/2 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
Watch the dialogue
|tip Make sure to walk back to Xuen.
kill Spirit of Anger##64684
Pass the Second Test |q 31394/3 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
Watch the dialogue
|tip Make sure to walk back to Xuen.
kill Spirit of Hatred##64744
Pass the Third Test |q 31394/4 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
talk Anduin Wrynn##64540
turnin A Celestial Experience##31394 |goto Kun-Lai Summit/0 68.78,43.12
accept A Witness to History##31512 |or |goto Kun-Lai Summit/0 68.78,43.12
|only if Alliance
step
talk Anduin Wrynn##64848
Tell him "Let's find out!" |q 31512/1 |goto Kun-Lai Summit/0 55.50,91.30
|only if Alliance
step
talk Matron Vi Vinh##64149
turnin A Witness to History##31512 |goto Shrine of Seven Stars/1 35.40,65.90
|only if Alliance
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit/0 68.73,43.02
accept A Witness to History##31511 |goto Kun-Lai Summit/0 68.73,43.02
|only if Horde
step
talk Sunwalker Dezco##64853
Select _"There's only one way to find out..."_ |gossip 41178
Speak with Dezco at the Gate of the August Celestials |q 31511/1 |goto Kun-Lai Summit/0 56.19,91.56
|only if Horde
step
talk Madam Vee Luo##62996
|tip Inside the building.
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 68.42,47.72
|only if Horde
step
label "dailies"
talk Kun Autumnlight##58920
accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.39,71.47
accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.39,71.47
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58920) |next |goto Vale of Eternal Blossoms/0 21.39,71.47 |or
|tip If no quests are offered, this step will advance.
step
talk Anji Autumnlight##58919
|autoacceptany 30280,30277
accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.47,71.58
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.47,71.58
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58919) |or |next |goto Vale of Eternal Blossoms/0 21.47,71.58 |or
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
|autoacceptany 30306
accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.12,75.69
Check for Quests |complete nodailies(58962) |or |next |goto Vale of Eternal Blossoms/0 20.12,75.69
step
talk Yumi Goldenpaw##58743
accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.49,71.53
accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.49,71.53
|autoacceptany 30242,30240 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58743) |or |next |goto Vale of Eternal Blossoms/0 18.49,71.53
|tip If no quests are offered, this step will advance.
step
talk Kelari Featherfoot##58704
|autoacceptany 30261 |or
accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.58 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(58704) |goto Vale of Eternal Blossoms/0 18.10,63.58 |or
|tip If no quests are offered, this step will advance.
step
talk Kelari Featherfoot##58704
Select _"Let's roll."_ |gossip 40305
Speak to Kelari Featherfoot |q 30261/1 |goto Vale of Eternal Blossoms/0 18.11,63.56
|only if haveq(30261) or completedq(30261)
step
Complete the Serpent's Spine Roll Course |q 30261/2
|tip Hold down your right mouse button to help you maneuver through the course.
|tip Grab as many speed boosts as you can to make it go quicker.
|only if haveq(30261) or completedq(30261)
step
talk Kelari Featherfoot##58704
turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.58
|only if haveq(30261) or completedq(30261)
step
Live Through the Survival Ring for 60 Seconds |q 30242/1 |goto Vale of Eternal Blossoms/0 19.20,67.50
|A progression bar will appear on the screen.
|tip Avoid touching the pillars surrounded by swirling blades.
|tip Avoid the Pandaren running around they area.
|tip They can knock you into the pillars or out of the circle.
|tip If you're removed from the circle, you will have to try again.
|only if haveq(30242) or completedq(30242)
step
Live Through the Survival Ring for 90 Seconds |q 30240/1 |goto Vale of Eternal Blossoms/0 19.20,67.50
|A progression bar will appear on the screen.
|tip Stay within the circle and avoid getting hit by the fireworks.
|only if haveq(30240) or completedq(30240)
step
kill 20 Shado-Pan Trainee##58992+ |q 30306/1 |goto Vale of Eternal Blossoms/0 19.54,74.27
|tip Stand at the center of the ring and they will aggro you.
|only if haveq(30306) or completedq(30306)
step
clicknpc Setting Sun Turret##64336
Begin Riding the Setting Sun Turret |invehicle Setting Sun Turret##64336 |goto Vale of Eternal Blossoms/0 5.42,72.17 |q 30266
|tip It's on the upper level of the tower here.
|only if haveq(30266) or completedq(30266)
step
kill 30 Krik'thik Swarmer##63973+ |q 30266/1 |goto Vale of Eternal Blossoms/0 5.40,72.30
|only if haveq(30266) or completedq(30266)
step
Exit the Setting Sun Turret |outvehicle |q 30266
|only if haveq(30266) or completedq(30266)
step
clicknpc Hot Oil Cauldron##64369
Begin Riding the Hot Oil Cauldron |invehicle Hot Oil Cauldron##64369 |goto Vale of Eternal Blossoms/0 3.90,51.70 |q 30243
|only if haveq(30243) or completedq(30243)
step
kill 80 Krik'thik Hiveling##63972 |q 30243/1 |goto Vale of Eternal Blossoms/0 3.90,51.70
|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch on the enemies below.
|only if haveq(30243) or completedq(30243)
step
Exit the Hot Oil Cauldron |outvehicle |q 30243
|only if haveq(30243) or completedq(30243)
step
Enter the building |goto Vale of Eternal Blossoms/0 22.31,26.49 < 10
|tip Only step on the {g}green{} or {r}red{} tiles, other tiles will harm you.
|tip The safe tile changes every day but will be one of the two.
Run down the stairs |goto Vale of Eternal Blossoms/1 68.71,24.18 < 10
kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/2 55.17,64.56
|tip He will cast a Lightning Breath in any direction, do not be in front of him when he does this.
|tip He also starts casting Lightning Pools, constantly move until he is done.
|tip Periodically he will pull you to the middle of the room and cast Lightning Sweep.
|tip While he is casting get as much distance on him as you can.
|only if haveq(30280) or haveq(30280)
step
click Deactivate First spirit Wall##214474 |goto Vale of Eternal Blossoms/1 36.49,36.55 < 5
click Deactivate Second Spirit Wall##214476 |goto Vale of Eternal Blossoms/1 23.16,28.80 < 5
Follow the path |goto Vale of Eternal Blossoms/1 32.98,20.84 < 10
click Deactivate Final Spirit Wall##214477
Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 49.22,22.23
|only if haveq(30277) or haveq(30277)
step
click Ancient Guo-Lai Artifact##214394
collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto Vale of Eternal Blossoms/1 49.40,30.60
|only if haveq(30277) or haveq(30277)
step
talk Yumi Goldenpaw##58743
turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.50,71.50 |only if haveq(30242) or completedq(30242)
turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.50,71.50 |only if haveq(30240) or completedq(30240)
|only if haveq(30242,30240)
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.12,75.69 |only if haveq(30306) or completedq(30306)
|only if haveq(30306)
step
talk Anji Autumnlight##58919
turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.47,71.58 |only if haveq(30280) or completedq(30280)
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.47,71.58 |only if haveq(30277) or completedq(30277)
|only if haveq(30280,30277)
step
talk Kun Autumnlight##58920
turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30243) or completedq(30243)
turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30266) or completedq(30266)
|only if haveq(30243,30266)
step
label "end"
You have completed the available daily quests |complete false or not completedq(30242,30243,30240,30266,30277,30280,30306) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies",{
startlevel=90,
patch='50001',
description="This guide will take you through The Klaxxi dailies Becoming Exalted with The Klaxxi allows you to purchase ground mounts, plans for blacksmithing, armor, and weapons for your character.",
},[[
step
Complete the Dread Wastes Storylines |q 31179 |future
|tip It's suggested to complete the entire Dread Waste questing guide.
|tip The more Paragons you unlock, the more daily quests will be available.
|tip You will achieve {y}'Dread Waste Makes Dread Waste'{} before all Paragons are unlocked.
|tip Refer to the Dread Wastes (89-90) to accomplish this.
Click Here to Load the "Dread Waste (30-70)" Leveling Guide |confirm |next "Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)" |or
step
label "dailies"
talk Kil'ruk the Wind-Reaver##62538
accept Dreadspinner Extermination##31231 |goto Dread Wastes/0 55.06,35.86
accept Nope Nope Nope##31235 |goto Dread Wastes/0 55.06,35.86
accept Culling the Swarm##31109 |goto Dread Wastes/0 55.06,35.86
accept Mistblade Destruction##31267 |goto Dread Wastes/0 55.06,35.86
accept Eradicating the Zan'thik##31111 |goto Dread Wastes/0 55.06,35.86
accept Vess-Guard Duty##31505 |goto Dread Wastes/0 55.06,35.86
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(62538) |or
|tip If no quests are offered, this step will advance.
step
talk Korven the Prime##62180
accept An Ancient Empire##31232 |goto Dread Wastes/0 54.31,36.09
accept Sap Tapping##31233 |goto Dread Wastes/0 54.31,36.09
accept Sampling the Empire's Finest##31496 |goto Dread Wastes/0 54.31,36.09
accept The Fight Against Fear##31270 |goto Dread Wastes/0 54.31,36.09
accept The Scale-Lord##31269 |goto Dread Wastes/0 54.31,36.09
accept Meltdown##31507 |goto Dread Wastes/0 54.31,36.09
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(62180) |or
|tip If no quests are offered, this step will advance.
step
talk Rik'kal the Dissector##65253
accept Bad Genes##31271 |goto Dread Wastes/0 54.36,35.94
accept Wing Clip##31502 |goto Dread Wastes/0 54.36,35.94
accept Shortcut to Ruin##31503 |goto Dread Wastes/0 54.36,35.94
accept Putting An Eye Out##31234 |goto Dread Wastes/0 54.36,35.94
accept Specimen Request##31508 |goto Dread Wastes/0 54.36,35.94
accept Fear Takes Root##31509 |goto Dread Wastes/0 54.36,35.94
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(65253) |or
|tip If no quests are offered, this step will advance.
|only if completedq(31606)
step
talk Kaz'tik the Manipulator##63758
accept Brain Food##31238 |goto Dread Wastes/0 54.25,35.79
accept Sonic Disruption##31487 |goto Dread Wastes/0 54.25,35.79
accept Free From Her Clutches##31494 |goto Dread Wastes/0 54.25,35.79
accept A Little Brain Work##31268 |goto Dread Wastes/0 54.25,35.79
accept Kunchong Treats##31024 |goto Dread Wastes/0 54.25,35.79
accept Rampage Against the Machine##31808 |goto Dread Wastes/0 54.25,35.79
accept Shackles of Manipulation##31506 |goto Dread Wastes/0 54.25,35.79
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(63758) |or
|tip If no quests are offered, this step will advance.
step
talk Xaril the Poisoned Mind##62151
accept Dark Skies##31216 |goto Dread Wastes/0 54.90,36.20
Check for Quests |complete nodailies(62151) |next |or
|tip If no quests are offered, this step will advance.
|only if completedq(31211)
step
talk Hisek the Swarmkeeper##63785
accept Debugging the Terrace##31237 |goto Dread Wastes/0 54.83,36.20
accept Quiet Now##31510 |goto Dread Wastes/0 54.83,36.20
accept Infection##31272 |goto Dread Wastes/0 54.83,36.20
accept Ordnance Disposal##31504 |goto Dread Wastes/0 54.83,36.20
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(63785) |or
|tip If no quests are offered, this step will advance.
|only if completedq(31439)
step
talk Malik the Unscathed##62774
accept The Empress' Gambit##31959 |goto Dread Wastes/0 55.01,35.56
|only if rep("The Klaxxi")>=Exalted
step
talk Kil'ruk the Wind-Reaver##62538
Select _"<Please Fly me to the Terrace of Gurthan.>"_ |invehicle |goto Dread Wastes/0 55.10,35.90
|only if haveq(31237,31231) or completedq(31237,31231)
step
Kill creatures until you get the buff:
|tip The buff lasts 19 seconds.
Gain the Pheremone Tracking Buff |havebuff spell:375338
Locate and kill Eye's of the Empress
|tip Look for red mist clouds on the ground.
|tip They can be seen without the buff, though you will need to be really close to them.
kill 6 Eye of the Empress##63783+ |q 31237/1 |goto Dread Wastes/0 67.90,24.30
|only if haveq(31237) or completedq(31237)
step
You Will Need Another Player To Complete This Step
|tip There will be a {g}green rune{} and a {r}red rune{} around this area.
|tip One of you will need to /lay on the {g}green_rune{}.
|tip One of you will need to /kneel on the {r}red rune{}.
|tip Warlord Gurthan, an elite enemy, should spawn.
|tip This will activate the quest for everyone, so if someone has already done it, simply kill Warlord Gurthan.
kill Warlord Gurthan##65502
collect Ashes of Warlord Gurthan##88715 |q 31677 |future |goto Dread Wastes/0 66.20,31.80
Click Here if No One is Around |confirm
|only if haveq(31237) or completedq(31237)
step
use the Ashes of Warlord Gurthan##88715
accept The Warlord's Ashes##31677
|only if haveq(31237,31677) or completedq(31237,31677)
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |gossip 33892 |q 31216/1 |goto Dread Wastes/0 54.90,36.20
Ride Xaril the Poisoned Mind |invehicle |only if haveq(31216)
|only if haveq(31216) or completedq(31216)
stickystart "Kill_3_Kunchong"
step
kill 200 Krik'thik Wingguard##63613+ |q 31216/2
|tip Use the abilities on your action bar to accomplish this.
|only if haveq(31216) or completedq(31216)
step
label "Kill_3_Kunchong"
kill 3 Krik'thik Battletank##63625+ |q 31216/3
|tip Use the abilities on your action bar to accomplish this.
|only if haveq(31216) or completedq(31216)
step
Click the Return to Klaxxi'vess Button on Your Action Bar |outvehicle
|only if haveq(31216) or completedq(31216)
step
talk Kil'ruk the Wind-Reaver##62538
Select _"Please fly me to the Clutches of Shek'zeer"_ |gossip 35589 |invehicle |goto Dread Wastes/0 55.06,35.86
|only if haveq(31109) or completedq(31109)
step
Use the Sonic Divebomb Ability on Your New Hotbar to Land |outvehicle |goto Dread Wastes/0 38.30,30.30
|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
|only if haveq(31109) or completedq(31109)
step
Enter this building |goto Dread Wastes/0 37.00,28.10 < 10
click Central Feeder##215762
Sample the Central Feeder |q 31496/1 |goto Dread Wastes/0 37.40,29.30
|only if haveq(31496) or completedq(31496)
step
Enter this building |goto Dread Wastes/0 39.30,29.30 < 10
click Northeast Feeder##215700
Sample the Northeast Feeder |q 31496/4 |goto Dread Wastes/0 39.10,30.50
|only if haveq(31496) or completedq(31496)
step
kill Vess-Guard Na'kal##64890 |q 31503/1 |goto Dread Wastes/0 39.30,30.90
|only if haveq(31503) or completedq(31503)
step
Enter this building |goto Dread Wastes/0 38.30,32.00 < 10 |walk
click East Feeder##215761
Sample the East Feeder |q 31496/2 |goto Dread Wastes/0 37.90,33.10
|only if haveq(31496) or completedq(31496)
step
Enter this building |goto Dread Wastes/0 36.30,32.30 < 10 |walk
click North Feeder##215703
Sample the North Feeder |q 31496/3 |goto Dread Wastes/0 37.00,32.80
|only if haveq(31496) or completedq(31496)
step
kill Shek'zeer Needler##64714+
collect 24 Needler Wings##87401 |q 31502/1 |goto Dread Wastes/0 35.20,31.30
|only if haveq(31502) or completedq(31502)
step
kill Greatback Mushan##62029+
collect 6 Mushan Tongue##85665 |q 31238/1 |goto Dread Wastes/0 66.00,19.30
You can find more around here |[Dread Wastes 56.90,23.40]
|only if haveq(31238) or completedq(31238)
stickystart "Kill_8_Dreadspinner_Tender"
step
use the Shado-Pan Dragon Gun##82807
Destroy #20# Dreadspinner Eggs |q 31235/1 |goto Dread Wastes/0 73.20,22.50
|only if haveq(31235) or completedq(31235)
step
label "Kill_8_Dreadspinner_Tender"
kill 8 Dreadspinner Tender##61981+ |q 31231/1 |goto Dread Wastes/0 73.20,22.50
|only if haveq(31231) or completedq(31231)
step
click Gurthani Tablet##213314
collect 8 Gurthani Tablet##85634 |q 31232/1 |goto Dread Wastes/0 68.10,30.00
|only if haveq(31232) or completedq(31232)
step
kill Mire Beast##63731+
collect 1 Pristine Mire Beast Eye##85635 |q 31234/1 |goto Dread Wastes/0 67.70,37.10
|only if haveq(31234) or completedq(31234)
step
clicknpc Amber Tap##63740
|tip They look like jeweled bugs clinging to trees around this area.
click Amber Pot##213319
collect 6 Amber Sap##85664 |q 31233/1 |goto Dread Wastes/0 66.60,43.80
|only if haveq(31233) or completedq(31233)
step
click Pheromone Mine##214964
Disable #8# Pheromone Mines |q 31504/1 |goto Dread Wastes/0 42.00,33.70
You can find more mines here |goto Dread Wastes/0 48.10,31.40
|only if haveq(31504) or completedq(31504)
stickystart "Kill_6_ Shek'zeer_Manipulators"
stickystart "Release_8_Kunchong_Hatchlings"
step
use the Sonic Disruption Fork##87394
|tip Use it on Dread Kunchong around this area.
kill 4 Dread Kunchong##64717 |q 31487/1 |goto Dread Wastes/0 44.90,35.60
|only if haveq(31487) or completedq(31487)
step
label "Kill_6_ Shek'zeer_Manipulators"
kill 6 Shek'zeer Manipulator##64720+ |q 31487/2 |goto Dread Wastes/0 44.90,35.60
|only if haveq(31487) or completedq(31487)
step
label "Release_8_Kunchong_Hatchlings"
click Kunchong Cage##214292
Release #8# Kunchong Hatchlings |q 31494/1 |goto Dread Wastes/0 44.90,35.60
|only if haveq(31494) or completedq(31494)
step
Kill Shek'zeer enemies around this area |kill Shek'zeer Swarmborn##62582, Shek'zeer Needler##64714, Shek'zeer Bladesworn##62563, Shek'zeer Clutch-Keeper##64559
Slay #40# Shek'zeer Mantid |q 31109/1 |goto Dread Wastes/0 44.40,43.00
|only if haveq(31109) or completedq(31109)
step
kill Karanosh##64724
|tip Patrols around this area, so searching may be required.
collect Enormous Kunchong Mandibles##87878 |q 31599 |future |goto Dread Wastes/0 41.40,33.20
|only if haveq(31109) or completedq(31109)
step
use the Enormous Kunchong Mandibles##87878
accept The Matriarch's Maw##31599
|only if haveq(31109) or completedq(31109)
stickystart "Collect_4_Meaty_Turtle_Haunches"
step
kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto Dread Wastes/0 58.60,51.10
|only if haveq(31270) or completedq(31270)
step
label "Collect_4_Meaty_Turtle_Haunches"
kill Chillwater Turtle##62160+
collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto Dread Wastes/0 58.60,51.10
|only if haveq(31024) or completedq(31024)
stickystart "Collect_3_Amber-Encrusted_Brains"
stickystart "Kill_6_Infected_Wildlife"
stickystart "Kill_3_Ik'thik_Genemancers"
step
kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto Dread Wastes/0 62.00,65.80
|only if haveq(31271) or completedq(31271)
step
label "Kill_3_Ik'thik_Genemancers"
kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto Dread Wastes/0 62.00,65.80
|only if haveq(31271) or completedq(31271)
step
label "Collect_3_Amber-Encrusted_Brains"
use the Sonic Emitter##85884
|tip Use it on Ik'thik Amberstingers.
kill Ik'thik Amberstinger##63728+
collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto Dread Wastes/0 61.40,70.30
|only if haveq(31268) or completedq(31268)
step
label "Kill_6_Infected_Wildlife"
Kill enemies aronud this area |kill Bluehide Mushan##63729, Needleback Porcupine##65118, Bonedust Moth##63725
|tip Make sure that they have the Infected buff before you attack them.
|tip Only wildlife with that buff will count for this quest.
kill 6 Infected Wildlife |q 31272/1 |goto Dread Wastes/0 60.70,67.70
|only if haveq(31272) or completedq(31272)
step
Enter the cave |goto Dread Wastes/0 66.80,63.80 < 10 |walk
kill Mistblade Scale-Lord##63179 |q 31269/1 |goto Dread Wastes/0 66.50,66.00
|only if haveq(31269) or completedq(31269)
step
Leave the cave |goto Dread Wastes/0 66.80,63.80 < 10 |only if haveq(31269) |walk
kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto Dread Wastes/0 67.20,59.30
|only if haveq(31267) or completedq(31267)
step
talk Kil'ruk the Wind-Reaver##62538
Select _"Please fly me to Zan'vess."_ |gossip 35590
Begin flying to Zan'vess |invehicle Unknown##65618 |goto Dread Wastes/0 55.10,35.90
|only if haveq(31111,31508,31506,31111,31510) or completedq(31111,31508,31506,31111,31510)
step
Use the Sonic Divebomb Ability on Your Hotbar to Land |outvehicle |goto Dread Wastes/0 31,70
|only if haveq(31111,31508,31506,31111,31510) or completedq(31111,31508,31506,31111,31510)
stickystart "Collect_6_Zan'thik_Shackles"
stickystart "Kill_6_Zan'thik_Impalers"
stickystart "Kill_6_Zan'thik_Manipulators"
stickystart "Destroy_15_Dreadspore_Bulbs"
stickystart "Kill_6_Zan'thik_Amberhusk"
step
kill Kypa'rak##65229
collect 1 Massive Kyparite Core##87871 |n
use the Massive Kyparite Core##87871
accept Kypa'rak's Core##31598 |goto Dread Wastes/0 33.40,61.00
|only if haveq(31111,31508,31506,31510) or completedq(31111,31508,31506,31510)
step
kill Vess-Guard Vik'az##64979 |q 31505/1 |goto Dread Wastes/0 29.11,74.61
|tip Walking around this area.
|only if haveq(31505) or completedq(31505)
step
kill Kypari Crawler##65231+
collect 6 Kyparite Shards##87874 |q 31508/1 |goto Dread Wastes/0 30.07,69.68
|only if haveq(31508) or completedq(31508)
step
label "Collect_6_Zan'thik_Shackles"
kill Thought-Bound Miner##64970+ |only if haveq(31506)
collect 6 Zan'thik Shackles##87813 |q 31506/1 |goto Dread Wastes/0 31.50,69.60
You can find more around [Dread Wastes/0 32.03,78.59]
|only if haveq(31506) or completedq(31506)
step
label "Kill_6_Zan'thik_Impalers"
kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto Dread Wastes/0 31.50,69.60
|only if haveq(31111) or completedq(31111)
step
label "Kill_6_Zan'thik_Manipulators"
kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto Dread Wastes/0 31.50,69.60
|only if haveq(31111) or completedq(31111)
step
label "Kill_6_Zan'thik_Amberhusk"
kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto Dread Wastes/0 23.00,77.30
only if haveq(31507) or completedq(31507)
step
label "Destroy_15_Dreadspore_Bulbs"
clicknpc Dreadspore Bulbs##69093
Destroy #15# Dreadspore Bulbs |q 31509/1 |goto Dread Wastes/0 23.00,77.30
|only if haveq(31509) or completedq(31509)
step
click Zan'thik Resonating Crystal##214455
kill Adjunct Sek'ot##64995 |q 31510/1 |goto Dread Wastes/0 24.20,86.20
only if haveq(31510) or completedq(31510)
step
clicknpc Kovok##63765
Locate Kovok |q 31808/1 |goto Dread Wastes/0 50.80,41.30
only if haveq(31808) or completedq(31808)
step
Kill Ik'thik enemies arond this area |kill Ik'thik Slayer##63636, Ik'thik Slayer##65584, Ik'thik Slayer##67035, Ik'thik Kunchong##63637, Ik'thik Kunchong##65582, Ik'thik Kunchong##67036, Ik'thik Kunchong##63403, Ik'thik Warrior##56722, Ik'thik Warrior##67034, Ik'thik Warrior##63635, Ik'thik Warrior##65573, Ik'thik Warrior##63402
|tip Use the abilities on your hotbar to complete your task.
Slay #200# Ik'thik Mantid |q 31808/2
|only if haveq(31808) or completedq(31808)
step
talk Kil'ruk the Wind-Reaver##62538
turnin Dreadspinner Extermination##31231 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31231) or completedq(31231)
turnin Nope Nope Nope##31235 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31235) or completedq(31235)
turnin Culling the Swarm##31109 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31109) or completedq(31109)
turnin Mistblade Destruction##31267 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31267) or completedq(31267)
turnin Eradicating the Zan'thik##31111 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31111) or completedq(31111)
turnin Vess-Guard Duty##31505 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31505) or completedq(31505)
turnin The Warlord's Ashes##31677 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31677) or completedq(31677)
|only if haveq(31231,31235,31109,31267,31111,31505,31677) or completedq(31231,31235,31109,31267,31111,31505,31677)
step
talk Ambersmith Zikk##64599
turnin Kypa'rak's Core##31598 |goto Dread Wastes/0 55.01,35.56 |only if haveq(31598) or completedq(31598)
turnin The Matriarch's Maw##31599 |goto Dread Wastes/0 55.01,35.56 |only if haveq(31599) or completedq(31599)
|only if haveq(31598,31599) or completedq(31598,31599)
step
talk Xaril the Poisoned Mind##62151
turnin Dark Skies##31216 |goto Dread Wastes/0 54.90,36.20
|only if haveq(31216) or completedq(31216)
step
talk Hisek the Swarmkeeper##63785
turnin Debugging the Terrace##31237 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31237) or completedq(31237)
turnin Quiet Now##31510 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31510) or completedq(31510)
turnin Infection##31272 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31272) or completedq(31272)
turnin Ordnance Disposal##31504 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31504) or completedq(31504)
|only if haveq(31237,31510,31272,31504) or completedq(31237,31510,31272,31504)
step
talk Korven the Prime##62180
turnin An Ancient Empire##31232 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31232) or completedq(31232)
turnin Sap Tapping##31233 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31233) or completedq(31233)
turnin Sampling the Empire's Finest##31496 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31496) or completedq(31496)
turnin The Fight Against Fear##31270 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31270) or completedq(31270)
turnin The Scale-Lord##31269 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31269) or completedq(31269)
turnin Meltdown##31507 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31507) or completedq(31507)
|only if haveq(31232,31233,31496,31270,31269,31507) or completedq(31232,31233,31496,31270,31269,31507)
step
talk Rik'kal the Dissector##65253
turnin Bad Genes##31271 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31271) or completedq(31271)
turnin Wing Clip##31502 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31502) or completedq(31502)
turnin Shortcut to Ruin##31503 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31503) or completedq(31503)
turnin Putting An Eye Out##31234 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31234) or completedq(31234)
turnin Specimen Request##31508 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31508) or completedq(31508)
turnin Fear Takes Root##31509 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31509) or completedq(31509)
|only if haveq(31271,31502,31503,31234,31508,31509) or completedq(31271,31502,31503,31234,31508,31509)
step
talk Kaz'tik the Manipulator##63758
turnin Brain Food##31238 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31238) or completedq(31238)
turnin Sonic Disruption##31487 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31487) or completedq(31487)
turnin Free From Her Clutches##31494 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31494) or completedq(31494)
turnin A Little Brain Work##31268 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31268) or completedq(31268)
turnin Kunchong Treats##31024 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31024) or completedq(31024)
turnin Rampage Against the Machine##31808 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31808) or completedq(31808)
turnin Shackles of Manipulation##31506 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31506) or completedq(31506)
|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
|next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
talk Kil'ruk the Wind-Reaver##62538
accept Beneath The Heart Of Fear##31018 |goto Dread Wastes/0 55.10,35.90
step
Enter the cave |goto Dread Wastes/0 29.00,42.40 < 10 |walk
kill Adjunct Ek'vem##62073 |q 31018/1 |goto Dread Wastes/0 30.70,40.30
step
kill Adjunct Ikkess##62074 |q 31018/2 |goto Dread Wastes/0 33.40,40.20
step
kill Adjunct Suruz##62075 |q 31018/3 |goto Dread Wastes/0 33.40,44.30
step
kill Adjunct Tzikzi##62076 |q 31018/4 |goto Dread Wastes/0 30.70,44.40
step
click Ancient Amber Chunk##212980
Wake Xaril the Poisoned Mind |q 31018/5 |goto Dread Wastes/0 31.90,42.50
step
Exit the cave |goto Dread Wastes/0 29.00,42.40 < 10 |walk
talk Xaril the Poisoned Mind##62151
turnin Beneath The Heart Of Fear##31018 |goto Dread Wastes/0 28.60,42.10
accept Venomous Intent##31208 |goto Dread Wastes/0 28.60,42.10
accept Dark Wings, Dark Things##31209 |goto Dread Wastes/0 28.60,42.10
accept A Shade of Dread##31210 |goto Dread Wastes/0 28.60,42.10
stickystart "Collect_8_Venomous Stingers"
stickystart "Collect_8_Dreadshade"
step
kill Ruby Venomtail##63588+, Dread Scarab##63587+
collect 150 Scarab Wing##85572 |q 31209/1 |goto Dread Wastes/0 24.70,41.80
You can find more around:
[Dread Wastes 26.40,36.40]
[Dread Wastes 26.20,30.80]
step
label "Collect_8_Venomous Stingers"
kill Ruby Venomtail##63588+, Dread Scarab##63587+ |notinsticky
collect 8 Venomous Stinger##85571 |q 31208/1 |goto Dread Wastes/0 24.70,41.80
You can find more around:|notinsticky
[Dread Wastes 26.40,36.40] |notinsticky
[Dread Wastes 26.20,30.80] |notinsticky
step
label "Collect_8_Dreadshade"
click Dreadshade##213267
collect 8 Dreadshade##85573 |q 31210/1 |goto Dread Wastes/0 24.70,41.80
You can find more around:|notinsticky
[Dread Wastes 26.40,36.40] |notinsticky
[Dread Wastes 26.20,30.80] |notinsticky
step
talk Xaril the Poisoned Mind##62151
turnin Venomous Intent##31208 |goto Dread Wastes/0 28.60,42.10
turnin Dark Wings, Dark Things##31209 |goto Dread Wastes/0 28.60,42.10
turnin A Shade of Dread##31210 |goto Dread Wastes/0 28.60,42.10
step
talk Xaril the Poisoned Mind##62151
accept The Poisoned Mind##31211 |goto Dread Wastes/0 28.60,42.10
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |gossip 33893|invehicle Xaril the Poisoned Mind##63779 |q 31211 |goto Dread Wastes/0 28.66,42.00
stickystart "Kill_3_Kunchong_Quest"
step
Kill Mantid enemies around this area |kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+
Slay #200# Mantid#63613+  |q 31211/2
|tip Use the abilities on your action bar to accomplish this.
step
label "Kill_3_Kunchong_Quest"
kill 3 Krik'thik Battletank##63625+ |q 31211/3
|tip Use the abilities on your action bar to accomplish this. |notinsticky
step
talk Xaril the Poisoned Mind##62151
turnin The Poisoned Mind##31211 |goto Dread Wastes/0 54.92,36.17
step
talk Kor'ik##64815
accept Dropping Our Signal##31439 |goto Dread Wastes/0 54.77,34.06
step
use the Klaxxi Tuning Fork##87202
|tip Use it on the Amber Rock.
Awaken Hisek the Swarmkeeper |q 31439/1 |goto Dread Wastes/0 56.27,58.25
step
talk Hisek the Swarmkeeper##64672
turnin Dropping Our Signal##31439 |goto Dread Wastes/0 56.27,58.25
accept Corruption Runs Deep##31441 |goto Dread Wastes/0 56.27,58.25
step
kill Kor'ik##64583
Defeat the traitor in the Duskroot Fen |q 31441/1 |goto Dread Wastes/0 56.20,57.60
step
talk Hisek the Swarmkeeper##64705
turnin Corruption Runs Deep##31441 |goto Dread Wastes/0 56.24,57.60
accept Damage Control##31458 |goto Dread Wastes/0 56.24,57.60
accept Extracting Answers##31465 |goto Dread Wastes/0 56.24,57.60
stickystart "Kill_5_Ik'thik_Whisperer"
stickystart "Collect_6_Venom-Coated_Mandibles"
step
click Kypari Ik Beacon##214281
Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto Dread Wastes/0 55.61,47.04
step
label "Kill_5_Ik'thik_Whisperer"
kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto Dread Wastes/0 53.84,44.70
step
label "Collect_6_Venom-Coated_Mandibles"
kill Ik'thik Swarmborn##64831+
collect 6 Venom-Coated Mandible##87263 |q 31465/1 |goto Dread Wastes/0 53.84,44.70
step
talk Hisek the Swarmkeeper##63785
turnin Damage Control##31458 |goto Dread Wastes/0 54.83,36.20
turnin Extracting Answers##31465 |goto Dread Wastes/0 54.83,36.20
|next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
label "exalted"
talk Malik the Unscathed##62774
accept The Empress' Gambit##31959 |goto Dread Wastes/0 55.06,35.47
step
talk Malik the Unscathed##66776
Select _"Let's get started."_ |gossip 41792
Watch the dialogue
Report to Malik the Unscathed |q 31959/1 |goto Dread Wastes/0 40.40,34.56
step
Click the Complete Quest Box:
turnin The Empress' Gambit##31959
accept The Wrath of Shek'zeer##31609
stickystart "Kill_25_Mantid_Subjugates"
step
kill Shox'tik##66784
|tip You will have Paragons waiting in the area to help you.
|tip There are three bosses to which only one will be active at a time.
|tip If the enemy isn't spawned, you can check on Manifestation of Terror or Akkolon if you still need those objectives.
Slay Shox'tik |q 31609/2 |goto Dread Wastes/0 41.44,39.96
Manifestation of Terror may be active [Dread Wastes/0 43.83,29.59]
Akkolon may be active [Dread Wastes/0 44.65,35.05]
step
kill Manifestation of Terror##66785
|tip You will have Paragons waiting in the area to help you.
|tip There are three bosses to which only one will be active at a time.
|tip If the enemy isn't spawned, you can check on Shox'tik or Akkolon if you still need those objectives.
Slay the Manifestation of Terror  |q 31609/3 |goto Dread Wastes/0 43.83,29.59
Shox'tik may be active [Dread Wastes/0 41.44,39.96]
Akkolon may be active [Dread Wastes/0 44.65,35.05]
step
kill Akkolon##66783
|tip You will have Paragons waiting in the area to help you.
|tip There are three bosses to which only one will be active at a time.
|tip If the enemy isn't spawned, you can check on Manifestation of Terror or Shox'tik if you still need those objectives.
Slay Akkolon |q 31609/1 |goto Dread Wastes/0 44.65,35.05
Shox'tik may be active [Dread Wastes/0 41.44,39.96]
Manifestation of Terror may be active [Dread Wastes/0 43.83,29.59]
step
label "Kill_25_Mantid_Subjugates"
kill 25 Mantid Subjugate##66788+ |q 31609/4 |goto Dread Wastes/0 43.40,33.00
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Wrath of Shek'zeer##31609 |goto Dread Wastes/0 55.06,35.86
accept Shadow of the Empire##31612 |goto Dread Wastes/0 55.06,35.86
step
talk Kil'ruk the Wind-Reaver##62538
Select _"What do you want to show me, Kil'ruk?"_ |gossip 35593
Watch the dialogue
Walk with Kil'ruk |q 31612/1 |goto Dread Wastes/0 54.02,34.51
step
Leave the building |goto Dread Wastes/0 56.00,33.64
talk Kil'ruk the Wind-Reaver##62538
turnin Shadow of the Empire##31612 |goto Dread Wastes/0 55.06,35.85
step
label "end"
You have completed the available daily quests |complete false or not completedq(31231,31235,31109,31267,31111,31505,31232,31233,31496,31270,31269,31507,31271,31502,31503,31234,31508,31509,31238,31487,31494,31268,31024,31808,31506,31216,31510,31272,31504,31237) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
'|talk Ambersmith Zikk##64599 |goto Dread Wastes/0 55.02,35.55 |only if rep("The Klaxxi")>=Revered
|tip Purchase the Grand Commendation of the Klaxxi from Ambersmith Zikk if possible. |only if rep("The Klaxxi")>=Revered
|tip You won't be able to purchase it if you have used it already. |only if rep("The Klaxxi")>=Revered
]])
ZGV.BETAEND()
