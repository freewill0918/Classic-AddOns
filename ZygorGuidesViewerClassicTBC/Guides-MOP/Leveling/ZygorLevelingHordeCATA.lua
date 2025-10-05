local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Startup Guide Wizard",{
mopready=true,
condition_visible=function() return false end,
noscoring = true,
orientation = true,
},[[
step
Welcome to the Zygor Startup Wizard!
In order for Zygor Guides to perform at its best we need to collect some character data.
This wizard will walk you through a few simple steps to do this.
confirm begin
step
Open the Talent Advisor tab in Zygor Settings, and select your preferred build. |complete ZGV.TalentAdvisor:IsBuildSelected()
step
findcity Main City
|tip You need to be in a capital city for the upcoming steps.
step
talknpcs Auctioneer |autoscript ZGV.ATWereEnabled=ZGV.db.profile.auction_enable ZGV.db.profile.auction_enable=true
Click the Scan button in the bottom right corner.
Record auction pricing data for the Gold Guide |complete ZGV.Gold:LastScan(15)
step
talknpcs Banker
|only if not ZGV.Inventory:CharacterBankKnown()
Record the items you have placed in your bank inventory. |complete ZGV.Inventory:CharacterBankKnown()
step
talknpcs Flightmaster
Record what flight points you have for the Travel System. | complete LibTaxi:IsContinentKnown()
step
openskill Alchemy
|only if hasprofunscanned("Alchemy")
Record your profession data for the Gold Guide. |complete hasprof("Alchemy",1)
step
openskill Blacksmithing
|only if hasprofunscanned("Blacksmithing")
Record your profession data for the Gold Guide. |complete hasprof("Blacksmithing",1)
step
openskill Cooking
|only if hasprofunscanned("Cooking")
Record your profession data for the Gold Guide. |complete hasprof("Cooking",1)
step
openskill Enchanting
|only if hasprofunscanned("Enchanting")
Record your profession data for the Gold Guide. |complete hasprof("Enchanting",1)
step
openskill Engineering
|only if hasprofunscanned("Engineering")
Record your profession data for the Gold Guide. |complete hasprof("Engineering",1)
step
openskill First Aid
|only if hasprofunscanned("First Aid")
Record your profession data for the Gold Guide. |complete hasprof("First Aid",1)
step
openskill Inscription
|only if hasprofunscanned("Inscription")
Record your profession data for the Gold Guide. |complete hasprof("Inscription",1)
step
openskill Jewelcrafting
|only if hasprofunscanned("Jewelcrafting")
Record your profession data for the Gold Guide. |complete hasprof("Jewelcrafting",1)
step
openskill Leatherworking
|only if hasprofunscanned("Leatherworking")
Record your profession data for the Gold Guide. |complete hasprof("Leatherworking",1)
step
openskill Mining
|only if hasprofunscanned("Mining")
Record your profession data for the Gold Guide. |complete hasprof("Mining",1)
step
openskill Tailoring
|only if hasprofunscanned("Tailoring")
Record your profession data for the Gold Guide. |complete hasprof("Tailoring",1)
step
You're all set!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)",{
mopready=true,
next="Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",
startlevel=80.00,
},[[
step
click Warchief's Command Board##10014
accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar/1 49.67,76.45
step
accept A Personal Summons##28790 |goto Orgrimmar/1 48.31,71.13
|tip You will automatically accept this quest.
|tip Inside the building.
step
talk Farseer Krogar##45244
|tip Up on the plateau.
turnin A Personal Summons##28790 |goto Orgrimmar/1 50.47,38.38
accept The Eye of the Storm##28805 |goto Orgrimmar/1 50.47,38.38
step
clicknpc Waters of Farseeing##50088
Witness the Vision of the Farseer |q 28805/1 |goto Orgrimmar/1 50.89,37.78
step
talk Farseer Krogar##45244
turnin The Eye of the Storm##28805 |goto Orgrimmar/1 50.47,38.38
step
talk Cenarion Emissary Blackhoof##15188
Select _"Could you please send me to Moonglade, Emissary?"_ |gossip 112849
Secure Transportation to Moonglade |q 27721/1 |goto Orgrimmar/1 39.93,50.93
step
talk Emissary Windsong##39865
turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade/0 45.48,44.86
accept As Hyjal Burns##25316 |goto Moonglade/0 45.48,44.86
step
clicknpc Aronus##39140
Begin Flying to Nordrassil |invehicle |goto Moonglade/0 46.10,45.55 |q 25316
step
Watch the dialogue
Fly to Nordrassil |outvehicle |goto Mount Hyjal/0 63.61,23.28 |q 25316 |notravel
step
talk Sebelia##40843
|tip Inside the building.
home Nordrassil Inn |goto Mount Hyjal/0 63.09,24.09 |q 25316 |future
step
talk Ysera##40928
|tip Inside the building.
turnin As Hyjal Burns##25316 |goto Mount Hyjal/0 62.04,24.91
accept Protect the World Tree##25317 |goto Mount Hyjal/0 62.04,24.91
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto Mount Hyjal/0 63.99,22.66
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto Mount Hyjal/0 64.06,22.49
step
talk Fayran Elthas##41861
fpath Nordrassil |goto Mount Hyjal/0 62.14,21.59
stickystart "Kill_Scalding_Rock_Elementals"
step
click Juniper Berries##202754+
|tip They look like small bushes with red berries on them.
collect Juniper Berries##53009+ |n
use the Juniper Berries##53009
|tip Use them on Faerie Dragons.
|tip They look like small blue dragons.
Watch the dialogue
|tip Follow the Faerie Dragons to find Twilight Inciters.
kill 4 Twilight Inciter##39926 |q 25370/1 |goto Mount Hyjal/0 65.71,23.07
step
label "Kill_Scalding_Rock_Elementals"
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto Mount Hyjal/0 65.71,23.07
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto Mount Hyjal/0 64.05,22.49
accept Flames from Above##25574 |goto Mount Hyjal/0 64.05,22.49
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto Mount Hyjal/0 63.99,22.67
step
use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto Mount Hyjal/0 55.77,15.28
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto Mount Hyjal/0 64.05,22.49
step
talk Malfurion Stormrage##54173
turnin Protect the World Tree##25317 |goto Mount Hyjal/0 47.73,35.50
accept War on the Twilight's Hammer##25319 |goto Mount Hyjal/0 47.73,35.50
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto Mount Hyjal/0 47.65,35.51
stickystart "Kill_Twilight_Flamecallers"
stickystart "Kill_Twilight_Vanquishers"
step
click Charred Staff Fragment##202846+
|tip They look like small white bones.
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto Mount Hyjal/0 47.35,21.62
step
label "Kill_Twilight_Flamecallers"
kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto Mount Hyjal/0 47.07,26.12
step
label "Kill_Twilight_Vanquishers"
kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto Mount Hyjal/0 47.07,26.12
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto Mount Hyjal/0 47.73,35.50
turnin The Flameseer's Staff##25472 |goto Mount Hyjal/0 47.73,35.50
accept Flamebreaker##25323 |goto Mount Hyjal/0 47.73,35.50
step
use the Flameseer's Staff##53107
|tip Use it on Blazebound Elementals.
|tip They look like large fire elementals.
kill 30 Unbound Flame Spirit##33838 |q 25323/1 |goto Mount Hyjal/0 44.50,33.40
|tip They appear after you use the staff on the elementals.
You can find more around [48.34,28.95]
step
talk Malfurion Stormrage##54173
turnin Flamebreaker##25323 |goto Mount Hyjal/0 47.73,35.50
accept The Return of Baron Geddon##25464 |goto Mount Hyjal/0 47.73,35.50
step
use the Flameseer's Staff##54463
|tip Use it on Baron Geddon.
|tip He looks like a large fire elemental that fights around this area.
|tip Run away from Baron Geddon when you see Galrond of the Claw yell in your chat box.
Weaken Baron Geddon #20# Times |q 25464/1 |goto Mount Hyjal/0 43.94,27.32
step
talk Malfurion Stormrage##54173
turnin The Return of Baron Geddon##25464 |goto Mount Hyjal/0 47.73,35.50
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto Mount Hyjal/0 47.65,35.51
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto Mount Hyjal/0 41.18,42.59
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto Mount Hyjal/0 48.46,18.97
accept The Captured Scout##25320 |goto Mount Hyjal/0 48.46,18.97
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto Mount Hyjal/0 44.48,18.91
accept Twilight Captivity##25321 |goto Mount Hyjal/0 44.48,18.91
step
kill Twilight Overseer##40123+
collect Twilight Overseer's Key##53139 |q 25321/1 |goto Mount Hyjal/0 44.40,21.04
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto Mount Hyjal/0 44.48,18.91
accept Return to Alysra##25424 |goto Mount Hyjal/0 44.48,18.91
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto Mount Hyjal/0 48.46,18.97
accept A Prisoner of Interest##25324 |goto Mount Hyjal/0 48.46,18.97
step
Enter the cave |goto Mount Hyjal/0 52.54,17.30 < 15 |walk
talk Captain Saynna Stormrunner##40139
|tip Downstairs inside the cave.
turnin A Prisoner of Interest##25324 |goto Mount Hyjal/0 56.76,18.83
accept Through the Dream##25325 |goto Mount Hyjal/0 56.76,18.83
step
Follow the path back up and leave the cave |goto Mount Hyjal/0 52.54,17.30 < 15 |walk |only if subzone("Hyjal Barrow Dens") and indoors()
Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto Mount Hyjal/0 52.13,17.41
step
talk Alysra##38917
turnin Through the Dream##25325 |goto Mount Hyjal/0 52.13,17.41
accept Return to Nordrassil##25578 |goto Mount Hyjal/0 52.13,17.41
step
talk Ysera##40928
|tip Inside the building.
turnin Return to Nordrassil##25578 |goto Mount Hyjal/0 62.05,24.91
accept The Return of the Ancients##25584 |goto Mount Hyjal/0 62.05,24.91
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto Mount Hyjal/0 35.69,19.42
accept Harrying the Hunters##25255 |goto Mount Hyjal/0 35.69,19.42
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto Mount Hyjal/0 35.74,19.68
accept In the Rear With the Gear##25234 |goto Mount Hyjal/0 35.74,19.68
stickystart "Kill_Twilight_Hunters"
stickystart "Kill_Twilight_Proveditors"
step
kill Twilight Slavedriver##39438+
|tip They walk along this road with an ogre and multiple slaves.
click Twilight Supplies##202652+
|tip The slaves will drop them after you kill the slavedrivers.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto Mount Hyjal/0 37.75,22.92
step
label "Kill_Twilight_Hunters"
kill 6 Twilight Hunter##39437 |q 25255/1 |goto Mount Hyjal/0 37.75,22.92
step
label "Kill_Twilight_Proveditors"
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto Mount Hyjal/0 37.75,22.92
|tip They look like ogres that walk along this road.
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto Mount Hyjal/0 35.74,19.68
turnin In the Rear With the Gear##25234 |goto Mount Hyjal/0 35.74,19.68
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto Mount Hyjal/0 35.69,19.42
accept The Voice of Lo'Gosh##25269 |goto Mount Hyjal/0 35.69,19.42
step
talk Takrik Ragehowl##39432
turnin The Voice of Lo'Gosh##25269 |goto Mount Hyjal/0 30.16,31.73
accept Howling Mad##25270 |goto Mount Hyjal/0 30.16,31.73
step
kill Lycanthoth Vandal##39445+
|tip They look like worgen.
collect 6 Polluted Incense##52658 |q 25270/1 |goto Mount Hyjal/0 28.31,31.20
step
talk Takrik Ragehowl##39432
turnin Howling Mad##25270 |goto Mount Hyjal/0 30.16,31.73
accept Lycanthoth the Corruptor##25272 |goto Mount Hyjal/0 30.16,31.73
step
use Lycanthoth's Incense##52682
|tip Inside the small cave.
kill Lycanthoth##39446 |q 25272/1 |goto Mount Hyjal/0 32.38,37.22
step
talk Spirit of Lo'Gosh##39622
|tip Inside the small cave.
turnin Lycanthoth the Corruptor##25272 |goto Mount Hyjal/0 32.34,37.13
step
talk Spirit of Lo'Gosh##39622
accept The Shrine Reclaimed##25279 |goto Mount Hyjal/0 29.65,29.28
step
talk Takrik Ragehowl##39432
turnin The Shrine Reclaimed##25279 |goto Mount Hyjal/0 28.45,29.89
accept Cleaning House##25277 |goto Mount Hyjal/0 28.45,29.89
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto Mount Hyjal/0 28.17,29.87
step
talk Royce Duskwhisper##39435
|tip He walks around this area.
accept The Eye of Twilight##25300 |goto Mount Hyjal/0 28.38,30.04
step
click Bitterblossom##202703+
|tip They look like plants with purple flowers on them.
collect Bitterblossom##52727 |q 25297/2 |goto Mount Hyjal/0 28.89,32.24
stickystart "Slay_Minions_Of_Gargol"
step
click Stonebloom##202702+
|tip They look like large peach colored round plants.
collect Stonebloom##52726 |q 25297/1 |goto Mount Hyjal/0 26.52,34.97
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto Mount Hyjal/0 27.18,35.22
accept Mastering Puppets##25301 |goto Mount Hyjal/0 27.18,35.22
step
click Darkflame Ember##202705
|tip Inside the brazier.
collect Darkflame Ember##52728 |q 25297/3 |goto Mount Hyjal/0 28.45,35.78
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto Mount Hyjal/0 28.42,36.37
accept Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal/0 28.42,36.37
stickystart "Free_Twilight_Servitors"
step
Enter the cave |goto Mount Hyjal/0 26.85,36.36 < 15 |walk
talk Kristoff Manheim##39797
|tip Inside the cave.
accept Gar'gol's Gotta Go##25328 |goto Mount Hyjal/0 27.24,40.75
step
click Gar'gol's Personal Treasure Chest##204580
|tip Inside the cave.
collect Rusted Skull Key##52789 |q 25328/1 |goto Mount Hyjal/0 26.46,38.50
step
click The Twilight Apocrypha##202712
|tip Inside the cave.
turnin Mastering Puppets##25301 |goto Mount Hyjal/0 25.81,41.64
accept Elementary!##25303 |goto Mount Hyjal/0 25.81,41.64
step
clicknpc Crucible of Fire##39730
|tip Inside the cave.
Activate the Crucible of Fire |q 25303/3 |goto Mount Hyjal/0 25.96,41.81
step
clicknpc Crucible of Earth##39737
|tip Inside the cave.
Activate the Crucible of Earth |q 25303/1 |goto Mount Hyjal/0 25.68,41.65
step
clicknpc Crucible of Air##39736
|tip Inside the cave.
Activate the Crucible of Air |q 25303/2 |goto Mount Hyjal/0 25.80,41.84
step
clicknpc Crucible of Water##39738
|tip Inside the cave.
Activate the Crucible of Water |q 25303/4 |goto Mount Hyjal/0 25.96,41.60
step
click Twilight Apocrypha##470
|tip Inside the cave.
turnin Elementary!##25303 |goto Mount Hyjal/0 25.81,41.64
accept Return to Duskwhisper##25312 |goto Mount Hyjal/0 25.81,41.64
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto Mount Hyjal/0 27.24,40.75
accept Get Me Outta Here!##25332 |goto Mount Hyjal/0 27.24,40.75
step
Leave the cave |goto Mount Hyjal/0 26.85,36.36 < 15 |walk |only if subzone("Gar'gol's Hovel") and indoors()
Escort Kristoff Out |q 25332/1 |goto Mount Hyjal/0 27.13,35.81
step
label "Free_Twilight_Servitors"
talk Twilight Servitor##39644+
|tip They look like various friendly NPCs.
|tip Inside and outside the cave. |notinsticky
Choose _<Administor the draught.>_ |gossip 112150
Free #8# Twilight Servitors |q 25298/1 |goto Mount Hyjal/0 26.85,36.35
step
label "Slay_Minions_Of_Gargol"
kill Hovel Brute##39642, Hovel Shadowcaster##39643
|tip They look like ogres.
|tip Inside and outside the cave. |notinsticky
Slay #8# Minions of Gar'gol |q 25277/1 |goto Mount Hyjal/0 26.85,36.35
step
Leave the cave |goto Mount Hyjal/0 26.85,36.36 < 15 |walk |only if subzone("Gar'gol's Hovel") and indoors()
talk Royce Duskwhisper##39435
|tip He walks around this area.
turnin Return to Duskwhisper##25312 |goto Mount Hyjal/0 28.38,30.04
turnin Get Me Outta Here!##25332 |goto Mount Hyjal/0 28.38,30.04
step
talk Takrik Ragehowl##39432
turnin Cleaning House##25277 |goto Mount Hyjal/0 28.45,29.89
accept Sweeping the Shelf##25354 |goto Mount Hyjal/0 28.45,29.89
accept Lightning in a Bottle##25355 |goto Mount Hyjal/0 28.45,29.89
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal/0 28.17,29.87
stickystart "Kill_Howling_Riftdwellers"
stickystart "Kill_Twilight_Stormcallers"
step
click Lightning Channel##202743+
|tip They look like metal poles with lights on top of them.
collect Charged Condenser Jar##52834 |q 25355/1 |goto Mount Hyjal/0 28.17,39.83
step
label "Kill_Howling_Riftdwellers"
kill 5 Howling Riftdweller##39844 |q 25354/2 |goto Mount Hyjal/0 28.17,39.83
|tip They look like elementals.
step
label "Kill_Twilight_Stormcallers"
kill 8 Twilight Stormcaller##39843 |q 25354/1 |goto Mount Hyjal/0 28.17,39.83
|tip They look like humans.
step
use Totem of Lo'Gosh##52854
_Next to you:_
talk Spirit of Lo'Gosh##39622
turnin Lightning in a Bottle##25355
accept Into the Maw!##25617
step
Teleport to the Firelands Forgeworks |condition subzone("Firelands Forgeworks") |goto Mount Hyjal/0 26.09,41.09 |q 25617
|tip Walk into the swirling portal.
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Into the Maw!##25617 |goto Mount Hyjal/0 26.25,41.92
accept Forged of Shadow and Flame##25575 |goto Mount Hyjal/0 26.25,41.92
accept Crushing the Cores##25577 |goto Mount Hyjal/0 26.25,41.92
step
talk Yargra Blackscar##40837
|tip Inside the cave.
accept Rage of the Wolf Ancient##25576 |goto Mount Hyjal/0 26.32,41.95
stickystart "Destroy_Twilight_Arms_Crates"
stickystart "Kill_Dark_Iron_Laborers"
step
kill Searing Guardian##40841+
|tip They look like fire elementals.
|tip Inside the cave.
collect Smoldering Core##55123+ |n
use the Smoldering Core##55123+
|tip Use them next to Twilight Anvils.
|tip They look like small grey metal blacksmith anvils.
Destroy #8# Smoldering Cores |q 25577/1 |goto Mount Hyjal/0 28.85,40.68
step
label "Destroy_Twilight_Arms_Crates"
click Twilight Arms Crate##9393+
|tip They look like grey wooden boxes.
|tip Inside the cave. |notinsticky
Destroy #10# Twilight Arms Crates |q 25575/1 |goto Mount Hyjal/0 28.85,40.68
step
label "Kill_Dark_Iron_Laborers"
kill 12 Dark Iron Laborer##40838 |q 25576/1 |goto Mount Hyjal/0 28.85,40.68
|tip They look like dwarves.
|tip Inside the cave. |notinsticky
step
talk Yargra Blackscar##40837
|tip Inside the cave.
turnin Rage of the Wolf Ancient##25576 |goto Mount Hyjal/0 26.32,41.95
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forged of Shadow and Flame##25575 |goto Mount Hyjal/0 26.25,41.92
turnin Crushing the Cores##25577 |goto Mount Hyjal/0 26.25,41.92
accept Cindermaul, the Portal Master##25599 |goto Mount Hyjal/0 26.25,41.92
stickystart "Collect_Tome_Of_Openings"
step
kill Cindermaul##40844 |q 25599/1 |goto Mount Hyjal/0 30.74,41.70
|tip Inside the cave.
step
label "Collect_Tome_Of_Openings"
click Battered Stone Chest##203089
|tip It appears after you kill Cindermaul.
|tip Inside the cave. |notinsticky
collect Tome of Openings##55136 |q 25599/2 |goto Mount Hyjal/0 30.74,41.70
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Cindermaul, the Portal Master##25599 |goto Mount Hyjal/0 26.25,41.92
accept Forgemaster Pyrendius##25600 |goto Mount Hyjal/0 26.25,41.92
step
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto Mount Hyjal/0 31.90,46.27
|tip Click the Portal Runes on the ground to activate them.
|tip They look like brown metal plates.
|tip Lure Forgemaster Pyrendius onto the activated Portal Runes to kill him.
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forgemaster Pyrendius##25600 |goto Mount Hyjal/0 26.25,41.92
accept Return from the Firelands##25612 |goto Mount Hyjal/0 26.25,41.92
step
Return to the Lightning Ledge |condition subzone("Lightning Ledge") |goto Mount Hyjal/0 25.92,40.92 |q 25354
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Takrik Ragehowl##39432
turnin Sweeping the Shelf##25354 |goto Mount Hyjal/0 28.45,29.89
turnin Return from the Firelands##25612 |goto Mount Hyjal/0 28.45,29.89
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal/0 28.41,29.81
|only if not haveq(25985) or completedq(25985)
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto Mount Hyjal/0 28.17,29.88
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto Mount Hyjal/0 18.99,40.94
accept Fighting Fire With ... Anything##25381 |goto Mount Hyjal/0 18.99,40.94
accept Disrupting the Rituals##25382 |goto Mount Hyjal/0 18.99,40.94
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto Mount Hyjal/0 19.22,37.89
step
talk Salirn Moonbear##43378
home Grove of Aessina |goto Mount Hyjal/0 18.67,37.27
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto Mount Hyjal/0 19.03,37.01
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto Mount Hyjal/0 19.60,36.38
step
talk Tyrus Blackhorn##39933
Select _"Yes, Blackhorn. I've been sent to request your aid, if you are willing."_ |gossip 112159
Select _"You'll be destroyed if the Twilight's Hammer brings this mountain down!"_ |gossip 112164
Select _"Will you help us to defeat them?"_ |gossip 112168
|tip Feel free to select a different dialog options - it does not affect the outcome.
Persuade Blackhorn |q 25404/1 |goto Mount Hyjal/0 22.26,44.92
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto Mount Hyjal/0 22.26,44.92
accept Seeds of Their Demise##25408 |goto Mount Hyjal/0 22.26,44.92
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto Mount Hyjal/0 21.59,44.01
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto Mount Hyjal/0 22.26,44.92
accept A New Master##25411 |goto Mount Hyjal/0 22.26,44.92
stickystart "Kill_Twilight_Inferno_Lords"
stickystart "Collect_Frightened_Animals"
stickystart "Kill_Raging_Firestorms"
step
kill Twilight Inferno Lord##39974+
|tip They look like orcs wearing robes.
use the Bottled Bileberry Brew##53120
|tip Use it on their corpses.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto Mount Hyjal/0 14.32,45.45
step
_Next to you:_
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto Mount Hyjal/0 14.30,45.42
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto Mount Hyjal/0 11.64,41.52
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto Mount Hyjal/0 9.65,36.47
step
label "Kill_Twilight_Inferno_Lords"
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto Mount Hyjal/0 13.16,41.88
|tip They look like orcs wearing robes.
step
label "Collect_Frightened_Animals"
clicknpc Terrified Squirrel##39998+
|tip They look like small squirrels running around.
clicknpc Panicked Bunny##39997+
|tip They looke like small rabbits running around.
collect 10 Frightened Animal##53060 |q 25385/1 |goto Mount Hyjal/0 13.16,41.88
step
label "Kill_Raging_Firestorms"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto Mount Hyjal/0 13.16,41.88
|tip They look like armored fire elementals.
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto Mount Hyjal/0 18.98,40.94
turnin Disrupting the Rituals##25382 |goto Mount Hyjal/0 18.98,40.94
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto Mount Hyjal/0 19.22,37.89
accept Oh, Deer!##25392 |goto Mount Hyjal/0 19.22,37.89
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto Mount Hyjal/0 22.27,44.92
accept Black Heart of Flame##25428 |goto Mount Hyjal/0 22.27,44.92
step
use the Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto Mount Hyjal/0 12.60,41.21
step
clicknpc Injured Fawn##39999+
|tip They look like tiny deer laying on the ground.
|tip You can do this mounted, and you can fly without losing them.
|tip You can have 3 of them following you at once.
Escort #3# Injured Fawns Home |q 25392/1 |goto Mount Hyjal/0 12.60,41.21
Lead the them to Mylune at [19.22,37.89] |notravel
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto Mount Hyjal/0 19.22,37.89
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto Mount Hyjal/0 22.27,44.92
accept Good News... and Bad News##29066 |goto Mount Hyjal/0 22.27,44.92
step
talk Matoclaw##39928
turnin Good News... and Bad News##29066 |goto Mount Hyjal/0 19.03,37.02
accept Last Stand at Whistling Grove##25940 |goto Mount Hyjal/0 19.03,37.02
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto Mount Hyjal/0 13.65,32.79
accept The Bears Up There##25462 |goto Mount Hyjal/0 13.65,32.79
step
clicknpc Climbing Tree##40190+
|tip They look like wooden ladders at the base of trees around this area.
|tip Use the Climb Up and Climb Down abilities to move around on the trees.
clicknpc Hyjal Bear Cub##40240+
|tip They look like small bears in the trees.
|tip Use the "Chuck-a-bear" ability on your action bar to throw the cubs.
|tip Aim the yellow arrow at the leather skin trampoline on the ground nearby.
|tip You have to throw them from the top of the trees.
Rescue #6# Hyjal Bear Cubs |q 25462/1 |goto Mount Hyjal/0 14.29,33.05
step
talk Keeper Taldros##39932
|tip Use the "Climb Down" ability on your action bar to climb down from the tree.
turnin The Bears Up There##25462 |goto Mount Hyjal/0 13.65,32.79
accept Smashing Through Ashes##25490 |goto Mount Hyjal/0 13.65,32.79
step
kill 8 Charbringer##40336 |q 25490/1 |goto Mount Hyjal/0 16.58,52.84
|tip They look like nagas.
You can find more around [24.18,60.52]
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto Mount Hyjal/0 27.11,62.64
accept Durable Seeds##25491 |goto Mount Hyjal/0 27.11,62.64
accept Fresh Bait##25493 |goto Mount Hyjal/0 27.11,62.64
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto Mount Hyjal/0 27.05,63.02
step
talk Ranela Featherglen##54392
fpath Sanctuary of Malorne |goto Mount Hyjal/0 27.75,63.63
stickystart "Collect_Hyjal_Seedlings"
stickystart "Kill_Lava_Surgers"
step
kill Core Hound##46910+
|tip They look like large orange and black demon dogs with 2 heads.
|tip They are more uncommon, but you can find more all around this area.
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto Mount Hyjal/0 37.22,57.75
step
label "Collect_Hyjal_Seedlings"
click Scorched Soil##202884+
|tip They look like piles of brown dirt.
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto Mount Hyjal/0 37.22,57.75
step
label "Kill_Lava_Surgers"
kill 10 Lava Surger##46911 |q 25492/1 |goto Mount Hyjal/0 37.22,57.75
|tip They look like rock elementals.
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto Mount Hyjal/0 27.11,62.64
turnin Fresh Bait##25493 |goto Mount Hyjal/0 27.11,62.64
accept Hell's Shells##25507 |goto Mount Hyjal/0 27.11,62.64
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto Mount Hyjal/0 27.05,63.02
accept Prepping the Soil##25502 |goto Mount Hyjal/0 27.05,63.02
step
click Flameward
Activate the Flameward |q 25502/1 |goto Mount Hyjal/0 33.02,64.54
step
Kill the enemies that attack in waves
Defend the Flameward |q 25502/2 |goto Mount Hyjal/0 33.02,64.54
step
use the Heap of Core Hound Innards##54744
|tip Use it near Nemesis.
|tip It looks like a huge turtle that walks around this area.
clicknpc Nemesis##40340
|tip Wait until he eats the meat on the ground and becomes friendly.
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto Mount Hyjal/0 37.05,58.08
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto Mount Hyjal/0 27.11,62.64
accept Tortolla Speaks##25510 |goto Mount Hyjal/0 27.11,62.64
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto Mount Hyjal/0 27.05,63.02
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto Mount Hyjal/0 24.68,55.67
accept Breaking the Bonds##25514 |goto Mount Hyjal/0 24.68,55.67
accept Children of Tortolla##25519 |goto Mount Hyjal/0 24.68,55.67
step
click Rod of Subjugation##40545
|tip You will be attacked.
Disable the First Rod of Subjugation |q 25514/1 |goto Mount Hyjal/0 23.95,55.90
step
click Rod of Subjugation##40545
|tip You will be attacked.
Disable the Second Rod of Subjugation |q 25514/2 |goto Mount Hyjal/0 25.20,54.84
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto Mount Hyjal/0 24.68,55.67
step
kill Deep Corruptor##40561+
|tip They look like octopus people.
|tip Underwater.
Save #6# of Tortolla's Eggs |q 25519/1 |goto Mount Hyjal/0 25.43,56.62
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto Mount Hyjal/0 24.68,55.67
accept An Ancient Awakens##25520 |goto Mount Hyjal/0 24.68,55.67
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto Mount Hyjal/0 27.12,62.64
step
talk Thisalee Crow##41006
|tip Inside the building.
accept The Wormwing Problem##25655 |goto Mount Hyjal/0 42.17,45.43
accept Scrambling for Eggs##25656 |goto Mount Hyjal/0 42.17,45.43
step
talk Isara Riverstride##43487
|tip Inside the building.
home Shrine of Aviana |goto Mount Hyjal/0 42.63,45.74
step
talk Choluna##41005
|tip Inside the building.
turnin Aviana's Legacy##27874 |goto Mount Hyjal/0 44.44,46.23
accept An Offering for Aviana##25663 |goto Mount Hyjal/0 44.44,46.23
step
use the Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto Mount Hyjal/0 40.35,44.29
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto Mount Hyjal/0 40.35,44.29
accept A Plea From Beyond##25665 |goto Mount Hyjal/0 40.35,44.29
stickystart "Slay_Wormwing_Harpies"
step
click Stolen Hyjal Egg##203143+
|tip They look like large white eggs.
collect 8 Hyjal Egg##55189 |q 25656/1 |goto Mount Hyjal/0 37.45,44.12
You can find more around [32.71,46.85]
step
label "Slay_Wormwing_Harpies"
kill Wormwing Screecher##41027, Wormwing Swifttalon##41028
|tip They look like harpies.
Slay #10# Wormwing Harpies |q 25655/1 |goto Mount Hyjal/0 37.45,44.12
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin The Wormwing Problem##25655 |goto Mount Hyjal/0 42.17,45.43
turnin Scrambling for Eggs##25656 |goto Mount Hyjal/0 42.17,45.43
accept A Bird in Hand##25731 |goto Mount Hyjal/0 42.17,45.43
step
talk Choluna##41005
|tip Inside the building.
turnin A Plea From Beyond##25665 |goto Mount Hyjal/0 44.44,46.23
accept A Prayer and a Wing##25664 |goto Mount Hyjal/0 44.44,46.23
step
click Harpy Signal Fire##7290
kill Marion Wormwing##41112
|tip She will eventually become friendly.
Capture Marion Wormwing |q 25731/1 |goto Mount Hyjal/0 38.33,44.14
step
talk Marion Wormwing##41112
|tip She will be where you defeated her.
Select _"Why are you stealing eggs?"_ |gossip 112233
Select _"Who? Who are you giving the eggs to?"_ |gossip 112234
Select _"Brood of the Earth-Warder... you answer to a black dragon? Give me a name!"_ |gossip 112235
Select _"<Ask Thisalee to release the harpy.>"_ |gossip 112237
Interrogate Marion Wormwing |q 25731/2 |goto Mount Hyjal/0 38.33,44.14
step
use the Enormous Bird Call##55211
|tip Use it in the bird nest at the top of the mountain.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto Mount Hyjal/0 35.67,42.33
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin A Bird in Hand##25731 |goto Mount Hyjal/0 42.17,45.43
step
talk Choluna##41005
|tip Inside the building.
turnin A Prayer and a Wing##25664 |goto Mount Hyjal/0 44.44,46.23
step
talk Skylord Omnuron##40997
|tip Upstairs inside the building..
accept Fact-Finding Mission##25740 |goto Mount Hyjal/0 43.55,45.89
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto Mount Hyjal/0 32.78,70.76
accept Sethria's Brood##25746 |goto Mount Hyjal/0 32.78,70.76
accept A Gap in Their Armor##25758 |goto Mount Hyjal/0 32.78,70.76
stickystart "Collect_Twilight_Armor_Plates"
stickystart "Slay_Sethrias_Minions"
step
click the Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto Mount Hyjal/0 31.26,77.07
step
label "Collect_Twilight_Armor_Plates"
click Twilight Armor Plate##203198+
|tip They look like tan metal plates.
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto Mount Hyjal/0 30.60,77.30
You can find more around [32.26,90.66]
step
talk Thisalee Crow##41006
turnin A Gap in Their Armor##25758 |goto Mount Hyjal/0 32.78,70.76
accept Disassembly##25761 |goto Mount Hyjal/0 32.78,70.76
turnin The Codex of Shadows##25763 |goto Mount Hyjal/0 32.78,70.76
accept Egg Hunt##25764 |goto Mount Hyjal/0 32.78,70.76
stickystart "Unveil_And_Defend_Avianas_Egg"
step
use Thisalee's Shiv##55883
|tip Use it on Twilight Juggernauts.
|tip They look like larger dragonkin trapped in a purple spell.
|tip Use it 5 times on each of them to remove their armor.
|tip This will allow you to kill them easier.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto Mount Hyjal/0 30.59,78.55
You can find more around [32.26,90.66]
step
label "Unveil_And_Defend_Avianas_Egg"
click Shadow Cloak Generator##203208+
|tip They look like spinning metal machines with blue light glowing upward out of them.
|tip You will eventually find Aviana's Egg in one of them.
Kill the enemies that attack in waves
|tip The enemies will attack after you find the egg.
Unveil and Defend Aviana's Egg |q 25764/1 |goto Mount Hyjal/0 30.59,78.55
You can find more around [32.26,90.66]
step
label "Slay_Sethrias_Minions"
kill Twilight Dragonkin Armorer##41030, Twilight Dragonkin##41029
|tip They look like dragonkin.
Slay #12# of Sethria's Minions |q 25746/1 |goto Mount Hyjal/0 30.60,77.30
You can find more around [32.26,90.66]
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto Mount Hyjal/0 32.78,70.76
turnin Disassembly##25761 |goto Mount Hyjal/0 32.78,70.76
turnin Egg Hunt##25764 |goto Mount Hyjal/0 32.78,70.76
accept Sethria's Demise##25776 |goto Mount Hyjal/0 32.78,70.76
step
use Thisalee's Signal Rocket##56003
|tip Begin fighting Sethria, don't worry that she's elite.
|tip She will eventually turn into a dragon.
|tip Use the item when she turns into a dragon.
|tip Allies will come to help you fight her.
kill Sethria##41255 |q 25776/1 |goto Mount Hyjal/0 35.53,97.96
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto Mount Hyjal/0 32.78,70.76
accept Return to the Shrine##25795 |goto Mount Hyjal/0 32.78,70.76
step
talk Choluna##41005
|tip Inside the building.
turnin Return to the Shrine##25795 |goto Mount Hyjal/0 44.44,46.24
accept An Ancient Reborn##25807 |goto Mount Hyjal/0 44.44,46.24
step
use Herald's Incense##56016
|tip Inside the building.
Burn Herald's Incense |q 25807/1 |goto Mount Hyjal/0 44.34,47.98
step
talk Aviana##41308
|tip Inside the building.
turnin An Ancient Reborn##25807 |goto Mount Hyjal/0 44.34,47.98
step
talk Morthis Whisperwing##41003
|tip Inside the building.
accept The Hatchery Must Burn##25810 |goto Mount Hyjal/0 44.14,45.93
step
talk Vision of Ysera##47002
|tip Inside the building.
accept The Last Living Lorekeeper##25830 |goto Mount Hyjal/0 43.81,45.95
step
Teleport to the Firelands Hatchery |condition subzone("Firelands Hatchery") |goto Mount Hyjal/0 39.16,58.26 |q 25810
|tip Walk into the swirling portal.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
turnin The Hatchery Must Burn##25810 |goto Mount Hyjal/0 37.22,56.17
accept Flight in the Firelands##25523 |goto Mount Hyjal/0 37.22,56.17
step
click Twilight Weapon Rack
|tip Inside the cave.
collect Twilight Firelance##52716 |q 25523 |goto Mount Hyjal/0 37.23,56.09
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
step
clicknpc Aviana's Guardian##40723
|tip Inside the cave.
Ride Aviana's Guardian |invehicle |goto Mount Hyjal/0 37.38,56.00 |q 25523
step
Visit the Guardian Flag |q 25523/1 |goto Mount Hyjal/0 36.50,53.27
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip It looks like a green flag on the floating rock inside the cave.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Flight in the Firelands##25523 |goto Mount Hyjal/0 37.22,56.17
accept Wave One##25525 |goto Mount Hyjal/0 37.22,56.17
step
Joust #10# Twilight Knight Riders |q 25525/1 |goto Mount Hyjal/0 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds around this area inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave One##25525 |goto Mount Hyjal/0 37.22,56.17
accept Wave Two##25544 |goto Mount Hyjal/0 37.22,56.17
step
Joust #10# Twilight Lancers |q 25544/1 |goto Mount Hyjal/0 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave Two##25544 |goto Mount Hyjal/0 37.22,56.17
accept Egg Wave##25560 |goto Mount Hyjal/0 37.22,56.17
step
Destroy #40# Firelands Eggs |q 25560/1 |goto Mount Hyjal/0 32.75,57.79
|tip They look like blue eggs on this ledge.
|tip Run over them to destroy them.
|tip You can find more on other ledges and islands inside the cave.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Egg Wave##25560 |goto Mount Hyjal/0 37.22,56.17
accept Return to Aviana##25832 |goto Mount Hyjal/0 37.22,56.17
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 25832
step
Return to the Flamewake |condition subzone("The Flamewake") |goto Mount Hyjal/0 39.12,57.55 |q 25832
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto Mount Hyjal/0 27.40,55.52
accept Firefight##25842 |goto Mount Hyjal/0 27.40,55.52
step
kill 5 Fiery Tormentor##41396 |q 25842/1 |goto Mount Hyjal/0 27.51,51.62
|tip They look like fire elementals.
step
talk Nordu##41381
turnin Firefight##25842 |goto Mount Hyjal/0 27.40,55.52
accept Aessina's Miracle##25372 |goto Mount Hyjal/0 27.40,55.52
step
talk Arch Druid Hamuul Runetotem##39858
turnin Aessina's Miracle##25372 |goto Mount Hyjal/0 19.54,37.82
step
Watch the dialogue
talk Arch Druid Hamuul Runetotem##39858
accept Tortolla's Revenge##25843 |goto Mount Hyjal/0 19.54,37.82
step
talk Aviana##41308
|tip Inside the building, on the ground floor.
turnin Return to Aviana##25832 |goto Mount Hyjal/0 44.33,47.98
step
talk Tortolla##41504
turnin Tortolla's Revenge##25843 |goto Mount Hyjal/0 41.85,60.67
accept The Hammer and the Key##25904 |goto Mount Hyjal/0 41.85,60.67
step
talk Niden##41507
accept Lost Wardens##25881 |goto Mount Hyjal/0 42.25,60.56
accept Breakthrough##25899 |goto Mount Hyjal/0 42.25,60.56
stickystart "Rescue_Lost_Wardens"
stickystart "Kill_Twilight_Scorchlords"
step
kill Twilight Field Captain##41502+
|tip They look like large ogres.
collect Glyph of Opening##56177 |q 25904/1 |goto Mount Hyjal/0 48.40,56.72
You can find more around: |notinsticky
[49.33,52.58]
[53.76,54.86]
[57.89,57.94]
step
label "Rescue_Lost_Wardens"
talk Lost Warden##41499+
|tip They look like dead night elves.
|tip You can also find them inside building.
Select _"On your feet, soldier. The ancients are with us, and the mountain is healed!"_ |gossip 112283
Rescue #8# Lost Wardens |q 25881/1 |goto Mount Hyjal/0 51.14,54.66
step
label "Kill_Twilight_Scorchlords"
kill 10 Twilight Scorchlord##41500 |q 25899/1 |goto Mount Hyjal/0 51.14,54.66
|tip They look like humans wearing robes.
step
talk Tortolla##41504
turnin The Hammer and the Key##25904 |goto Mount Hyjal/0 41.85,60.67
accept The Third Flamegate##25906 |goto Mount Hyjal/0 41.85,60.67
step
talk Captain Irontree##41492
|tip Inside the building.
turnin Lost Wardens##25881 |goto Mount Hyjal/0 57.12,55.95
accept Pressing the Advantage##25886 |goto Mount Hyjal/0 57.12,55.95
turnin Breakthrough##25899 |goto Mount Hyjal/0 57.12,55.95
step
talk Logram##41497
|tip Inside the building.
accept Hyjal Recycling Program##25901 |goto Mount Hyjal/0 56.85,56.01
stickystart "Collect_Wardens_Arrows"
step
kill 4 Twilight Field Captain##41502 |q 25886/1 |goto Mount Hyjal/0 58.00,58.08
|tip They look like large ogres.
You can find more around [63.59,56.51]
step
label "Collect_Wardens_Arrows"
click Warden's Arrows##203310+
|tip They look like arrows stuck in the ground with green swirls around them.
collect 15 Warden's Arrow##56176 |q 25901/1 |goto Mount Hyjal/0 58.00,58.08
step
talk Captain Irontree##41492
|tip Inside the building.
turnin Pressing the Advantage##25886 |goto Mount Hyjal/0 57.12,55.95
step
talk Logram##41497
|tip Inside the building.
turnin Hyjal Recycling Program##25901 |goto Mount Hyjal/0 56.85,56.01
step
Teleport to the Crucible of Flame |condition subzone("The Crucible of Flame") |goto Mount Hyjal/0 64.94,54.10 |q 25906
|tip Walk into the swirling portal.
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Third Flamegate##25906 |goto Mount Hyjal/0 64.27,53.59
accept The Time for Mercy has Passed##25910 |goto Mount Hyjal/0 64.27,53.59
accept The Strength of Tortolla##25915 |goto Mount Hyjal/0 64.27,53.59
stickystart "Kill_Shadowflame_Masters"
stickystart "Kill_Molten_Tormentors"
step
Examine the Nemesis Crystal |q 25915/1 |goto Mount Hyjal/0 65.89,58.12
|tip The Child of Tortolla turtle next to you will channel a spell on the crystal.
|tip Inside the cave.
|tip Follow the path around.
step
label "Kill_Shadowflame_Masters"
kill 4 Shadowflame Master##41563 |q 25910/1 |goto Mount Hyjal/0 64.27,57.72
|tip They look like humans wearing robes engulfed in flames.
|tip Inside the cave. |notinsticky
step
label "Kill_Molten_Tormentors"
kill 10 Molten Tormentor##41565 |q 25910/2 |goto Mount Hyjal/0 64.27,57.72
|tip They look like black and orange elementals.
|tip Inside the cave. |notinsticky
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Time for Mercy has Passed##25910 |goto Mount Hyjal/0 64.27,53.59
turnin The Strength of Tortolla##25915 |goto Mount Hyjal/0 64.27,53.59
accept Finish Nemesis##25923 |goto Mount Hyjal/0 64.27,53.59
step
kill Nemesis##40340 |q 25923/1 |goto Mount Hyjal/0 62.62,62.27
|tip Inside the cave.
|tip Follow the path around.
use the Totem of Tortolla##56207
|tip Use it when he is almost done casting "Molten Fury".
|tip This will shield you.
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
|tip Follow the path around.
turnin Finish Nemesis##25923 |goto Mount Hyjal/0 64.27,53.59
accept Tortolla's Triumph##25928 |goto Mount Hyjal/0 64.27,53.59
step
Return to the Scorched Plain |condition subzone("The Scorched Plain") |goto Mount Hyjal/0 64.78,53.63 |q 25928
|tip Walk into the swirling portal.
|tip Inside the cave.
step
talk Tortolla##41504
turnin Tortolla's Triumph##25928 |goto Mount Hyjal/0 41.90,60.70
accept The Ancients are With Us##25653 |goto Mount Hyjal/0 41.90,60.70
step
talk Ysera##40928
|tip Inside the building.
turnin The Ancients are With Us##25653 |goto Mount Hyjal/0 62.05,24.91
accept Commander Jarod Shadowsong##25597 |goto Mount Hyjal/0 62.05,24.91
step
talk Elementalist Ortell##39621
turnin Commander Jarod Shadowsong##25597 |goto Mount Hyjal/0 71.92,58.07
accept Signed in Blood##25274 |goto Mount Hyjal/0 71.92,58.07
step
talk Twilight Recruit##39619
Click Here After Talking to the Twilight Recruit |confirm |goto Mount Hyjal/0 73.51,60.39 |q 25274
step
use the Blackjack##52683
|tip Use it on the Twilight Recruit at this location.
collect Twilight Recruitment Papers##52685 |q 25274/1 |goto Mount Hyjal/0 72.60,59.15
step
talk Elementalist Ortell##39621
turnin Signed in Blood##25274 |goto Mount Hyjal/0 71.92,58.07
accept Your New Identity##25276 |goto Mount Hyjal/0 71.92,58.07
step
talk Condenna the Pitiless##39442
turnin Your New Identity##25276 |goto Mount Hyjal/0 76.94,62.04
accept Trial By Fire##25223 |goto Mount Hyjal/0 76.94,62.04
accept In Bloom##25224 |goto Mount Hyjal/0 76.94,62.04
step
talk Instructor Cargall##39451
accept Waste of Flesh##25330 |goto Mount Hyjal/0 77.05,62.14
stickystart "Collect_Flame_Blossoms"
stickystart "Kill_Fiery_Instructors"
step
use the Frostgale Crystal##52819
|tip Use it on an Immolated Supplicant.
|tip They look like friendly NPCs that run around this area on fire.
|tip They must be alive for you to be able to save them.
Save #4# Immolated Supplicants |q 25330/1 |goto Mount Hyjal/0 81.17,63.90
step
label "Collect_Flame_Blossoms"
click Flame Blossom##202619+
|tip They look like small red flowers.
collect 5 Flame Blossom##52537 |q 25224/1 |goto Mount Hyjal/0 81.17,63.90
step
label "Kill_Fiery_Instructors"
kill 8 Fiery Instructor##40564 |q 25223/1 |goto Mount Hyjal/0 81.17,63.90
|tip They look like fire elementals.
step
talk Instructor Cargall##39451
turnin Waste of Flesh##25330 |goto Mount Hyjal/0 77.05,62.14
step
talk Condenna the Pitiless##39442
turnin Trial By Fire##25223 |goto Mount Hyjal/0 76.94,62.04
turnin In Bloom##25224 |goto Mount Hyjal/0 76.94,62.04
accept Twilight Training##25291 |goto Mount Hyjal/0 76.94,62.04
step
talk Instructor Mylva##39413
turnin Twilight Training##25291 |goto Mount Hyjal/0 89.58,59.09
accept Physical Training: Forced Labor##25509 |goto Mount Hyjal/0 89.58,59.09
step
click Outhouse Hideout##202701
accept Gather the Intelligence##25296 |goto Mount Hyjal/0 88.28,58.52
step
talk Instructor Devoran##39406
accept Walking the Dog##25294 |goto Mount Hyjal/0 90.15,56.39
step
click Crate of Scrolls##202968
collect Twilight Communique##52724 |q 25296/1 |goto Mount Hyjal/0 89.51,55.46
step
click Hyjal Battleplans##202969
collect Hyjal Battleplans##52725 |q 25296/2 |goto Mount Hyjal/0 91.99,51.50
stickystart "Break_Darkwhisper_Lodestones"
step
use the Fiery Leash##52717
|tip This will summon the Spawn of Smolderos if he's not already following you.
kill Spinescale Basilisk##39658+
|tip They look like large red lizards.
collect Charred Basilisk Meat##52708+ |n
use the Charred Basilisk Meat##52708+
Feed the Spawn of Smolderos #5# Times |q 25294/1 |goto Mount Hyjal/0 88.49,52.03
You can find more around [85.24,56.56]
step
label "Break_Darkwhisper_Lodestones"
click Darkwhisper Lodestone##202952+
|tip They look like grey ore nodes.
Break #5# Darkwhisper Lodestones |q 25509/1 |goto Mount Hyjal/0 88.49,52.03
You can find more around [85.24,56.56]
step
click Outhouse Hideout##202701
turnin Gather the Intelligence##25296 |goto Mount Hyjal/0 88.28,58.52
accept Seeds of Discord##25308 |goto Mount Hyjal/0 88.28,58.52
step
talk Instructor Mylva##39413
turnin Physical Training: Forced Labor##25509 |goto Mount Hyjal/0 89.58,59.09
accept Agility Training: Run Like Hell!##25499 |goto Mount Hyjal/0 89.58,59.09
step
Complete your Physical Training |q 25499/1 |goto Mount Hyjal/0 89.22,57.48
|tip Run around this circular structure while the fire elemental chases you.
|tip This takes 1 minute.
step
talk Instructor Mylva##39413
turnin Agility Training: Run Like Hell!##25499 |goto Mount Hyjal/0 89.58,59.09
accept Mental Training: Speaking the Truth to Power##25299 |goto Mount Hyjal/0 89.58,59.09
step
use the Orb of Ascension##52828
|tip Use the abilities on your action bar to answer "Yes" or "No" as the Orb of Ascenion asks you questions.
|tip It will ask you random simple questions in your chat box.
|tip You must answer 10 questions correct.
Complete #10# Mental Training Tests |q 25299/1 |goto Mount Hyjal/0 89.58,59.09
step
talk Instructor Mylva##39413
turnin Mental Training: Speaking the Truth to Power##25299 |goto Mount Hyjal/0 89.58,59.09
accept Spiritual Training: Mercy is for the Weak##25309 |goto Mount Hyjal/0 89.58,59.09
step
talk Instructor Devoran##39406
turnin Walking the Dog##25294 |goto Mount Hyjal/0 90.15,56.39
accept A Champion's Collar##25494 |goto Mount Hyjal/0 90.15,56.39
step
kill 5 Failed Supplicant##39752 |q 25309/1 |goto Mount Hyjal/0 92.08,48.68
step
kill Spinescale Matriarch##40403
|tip She looks like a large purple basilisk that walks around this area.
collect Spiked Basilisk Hide##54610 |q 25494/1 |goto Mount Hyjal/0 84.73,46.90
step
use the Ogre Disguise##55137
Wear the Ogre Disguise |havebuff Seeds of Discord##75724 |goto Mount Hyjal/0 77.47,48.02 |q 25308
step
talk Karr'gonn##40489
|tip Inside the building.
Select _"Boss, one of the boys is causing some trouble outside."_ |gossip 112199
Watch the dialogue
kill High Cultist Azennios##40491 |q 25308/1 |goto Mount Hyjal/0 76.55,49.08
step
click Outhouse Hideout##202701
turnin Seeds of Discord##25308 |goto Mount Hyjal/0 88.29,58.52
step
talk Instructor Mylva##39413
turnin Spiritual Training: Mercy is for the Weak##25309 |goto Mount Hyjal/0 89.58,59.09
step
talk Instructor Devoran##39406
turnin A Champion's Collar##25494 |goto Mount Hyjal/0 90.15,56.39
accept Grudge Match##25496 |goto Mount Hyjal/0 90.15,56.39
step
talk Gromm'ko##40409
|tip Inside the building.
Select _"Instructor Devoran sends a contender against your raptor."_ |gossip 112194
kill Gromm'ko##40409
|tip He will attack you after your Spawn of Smolderos kills his raptor.
Complete the Grudge Match |q 25496/1 |goto Mount Hyjal/0 77.79,51.44
step
talk Instructor Devoran##39406
turnin Grudge Match##25496 |goto Mount Hyjal/0 90.15,56.39
step
talk Instructor Mylva##39413
accept The Greater of Two Evils##25310 |goto Mount Hyjal/0 89.58,59.09
accept Twilight Territory##25311 |goto Mount Hyjal/0 89.58,59.09
step
use the Talisman of Flame Ascendancy##54814
kill Garnoth Fist of the Legion##39726 |q 25310/1 |goto Mount Hyjal/0 64.77,64.67
|tip Use the abilities on your action bar.
step
Remove the Flame Ascendancy Buff |nobuff Flame Ascendancy##75554 |q 25310
|tip Right-click the "Flame Ascendancy" buff near your minimap.
step
kill 10 Horrorguard##48725 |q 25311/1 |goto Mount Hyjal/0 69.66,68.55
|tip They look like winged demons.
step
talk Instructor Mylva##39413
turnin The Greater of Two Evils##25310 |goto Mount Hyjal/0 89.58,59.09
turnin Twilight Territory##25311 |goto Mount Hyjal/0 89.58,59.09
step
click Outhouse Hideout##202701
accept Speech Writing for Dummies##25314 |goto Mount Hyjal/0 88.29,58.53
step
kill Okrog##40922 |q 25314/1 |goto Mount Hyjal/0 79.10,54.73
|tip He looks like an ogre that walks along this road around this area.
step
click Outhouse Hideout##202701
turnin Speech Writing for Dummies##25314 |goto Mount Hyjal/0 88.29,58.53
accept Head of the Class##25601 |goto Mount Hyjal/0 88.29,58.53
step
talk Instructor Mylva##39413
turnin Head of the Class##25601 |goto Mount Hyjal/0 89.58,59.09
accept Graduation Speech##25315 |goto Mount Hyjal/0 89.58,59.09
step
click Initiation Podium
|tip Use the abilities on your action bar to respond to what the crowd says.
|tip If they say something like they are bored or unsure, use your "Inspire!" ability.
|tip If they say something angry, use your "Incite!" ability.
|tip If they say something crazy, use your "Pander!" ability.
|tip You must please the crowd 10 times.
Complete #10# Graduation Speech |q 25315/1 |goto Mount Hyjal/0 95.22,51.33
step
Leave the Podium |nobuff Twilight Speech##74948 |q 25315
|tip Use the "Step Down" ability on your action bar.
step
talk Commander Jarod Shadowsong##40619
turnin Graduation Speech##25315 |goto Mount Hyjal/0 95.35,51.32
accept Twilight Riot##25531 |goto Mount Hyjal/0 95.35,51.32
step
talk Commander Jarod Shadowsong##41025
turnin Twilight Riot##25531 |goto Mount Hyjal/0 72.22,74.70
accept Slash and Burn##25608 |goto Mount Hyjal/0 72.22,74.70
step
clicknpc Emerald Drake##40780
Ride the Emerald Drake |invehicle |goto Mount Hyjal/0 72.55,75.08 |q 25608
stickystart "Slay_Twilights_Hammer_Units"
step
kill 5 Twilight Stormwaker##40573 |q 25608/1 |goto Mount Hyjal/0 81.94,63.10
|tip They look like purple dragons flying in the air.
|tip Use the Aerial Swipe ability on your action bar.
step
label "Slay_Twilights_Hammer_Units"
Slay #40# Twilight's Hammer Units |q 25608/2 |goto Mount Hyjal/0 81.94,63.10
|tip They look like various enemies on the ground.
|tip Use the Acid Blast ability on your action bar.
step
Stop Riding the Emerald Drake |outvehicle |goto Mount Hyjal/0 75.96,66.05 |q 25608
|tip Fly to this location first.
|tip Click the arrow on your action bar.
step
talk Commander Jarod Shadowsong##41025
turnin Slash and Burn##25608 |goto Mount Hyjal/0 72.22,74.69
step
Watch the dialogue
talk Commander Jarod Shadowsong##40772
accept Might of the Firelord##25548 |goto Mount Hyjal/0 72.08,74.02
step
talk Cenarius##41631
accept Secrets of the Flame##25554 |goto Mount Hyjal/0 71.92,74.08
step
talk Althera##43549
fpath Gates of Sothann |goto Mount Hyjal/0 71.61,75.33
stickystart "Kill_Flame_Ascendants"
stickystart "Kill_Twilight_Subjugators"
step
click Burning Litanies##203047
|tip Inside the tent.
collect The Burning Litanies##54906 |q 25554/2 |goto Mount Hyjal/0 59.66,80.80
step
click Tome of Flame##203046
collect Tome of Flame##54905 |q 25554/3 |goto Mount Hyjal/0 58.14,78.90
step
click Ascendant's Codex##203048
collect Ascendant's Codex##54907 |q 25554/1 |goto Mount Hyjal/0 56.84,83.85
step
click Pure Twilight Egg##207359
accept The Twilight Egg##25644 |goto Mount Hyjal/0 59.12,83.85
step
label "Kill_Flame_Ascendants"
kill 4 Flame Ascendant##40709 |q 25548/1 |goto Mount Hyjal/0 58.56,81.12
|tip They look like enemies wearing robes.
step
label "Kill_Twilight_Subjugators"
kill 5 Twilight Subjugator##40463 |q 25548/2 |goto Mount Hyjal/0 58.56,81.12
|tip They look like enemies wearing armor.
step
talk Cenarius##41631
turnin Secrets of the Flame##25554 |goto Mount Hyjal/0 71.92,74.08
accept The Gatekeeper##25555 |goto Mount Hyjal/0 71.92,74.08
step
talk Commander Jarod Shadowsong##41025
turnin Might of the Firelord##25548 |goto Mount Hyjal/0 72.08,74.02
accept The Sanctum of the Prophets##25549 |goto Mount Hyjal/0 72.08,74.02
step
talk Aronus##40816
turnin The Twilight Egg##25644 |goto Mount Hyjal/0 72.25,73.94
accept Brood of Evil##25552 |goto Mount Hyjal/0 72.25,73.94
step
kill Young Twilight Drake##40687+
|tip They look like purple dragons.
collect Young Twilight Drake Skull##54973 |q 25552/1 |goto Mount Hyjal/0 59.11,77.93
stickystart "Kill_Emissary_Of_Flame"
stickystart "Kill_Twilight_Augurs"
stickystart "Kill_Twilight_Retainers"
step
use the Horn of Cenarius##55153
|tip Allies will help you fight.
kill Azralon the Gatekeeper##40814 |q 25555/1 |goto Mount Hyjal/0 57.34,67.90
step
label "Kill_Emissary_Of_Flame"
kill Emissary of Flame##40755 |q 25549/3 |goto Mount Hyjal/0 57.16,69.57
|tip They look like orange nagas.
step
label "Kill_Twilight_Augurs"
kill 4 Twilight Augur##40713 |q 25549/1 |goto Mount Hyjal/0 57.16,69.57
|tip They look like humans wearing a shealted dagger on their belt.
step
label "Kill_Twilight_Retainers"
kill 4 Twilight Retainer##40767 |q 25549/2 |goto Mount Hyjal/0 57.16,69.57
|tip They look like humans carrying a sword and shield.
step
talk Cenarius##41631
turnin The Gatekeeper##25555 |goto Mount Hyjal/0 71.92,74.08
step
talk Commander Jarod Shadowsong##41025
turnin The Sanctum of the Prophets##25549 |goto Mount Hyjal/0 72.08,74.02
accept Magma Monarch##25550 |goto Mount Hyjal/0 72.08,74.02
step
talk Aronus##40816
turnin Brood of Evil##25552 |goto Mount Hyjal/0 72.25,73.94
accept Death to the Broodmother##25553 |goto Mount Hyjal/0 72.25,73.94
step
use the Young Twilight Drake Skull##55173
Watch the dialogue
kill Desperiona##40974 |q 25553/1 |goto Mount Hyjal/0 54.39,85.79
step
use the Drums of the Turtle God##55179
|tip Tortolla will help you fight.
kill King Moltron##40998 |q 25550/1 |goto Mount Hyjal/0 43.38,83.21
step
talk Commander Jarod Shadowsong##41025
turnin Magma Monarch##25550 |goto Mount Hyjal/0 72.08,74.02
step
talk Aronus##40816
turnin Death to the Broodmother##25553 |goto Mount Hyjal/0 72.25,73.94
step
talk Cenarius##40773
accept The Firelord##25551 |goto Mount Hyjal/0 71.92,74.08
step
Teleport to the Inner Spire |condition subzone("The Inner Spire")|goto Mount Hyjal/0 55.56,66.18 |q 25551
|tip Walk into the swirling portal.
step
talk Cenarius##41631
|tip Inside the cave.
|tip If another player has already started the battle, he won't be here.
|tip Join the battle to kill Ragnaros, if he's not here.
Select _"I am ready to begin the battle against Ragnaros."_ |gossip 112204
Watch the dialogue
Follow Cenarius into Battle |goto Mount Hyjal/0 44.66,79.15 > 20 |c |q 25551
step
kill Ragnaros##41634 |q 25551/1 |goto Mount Hyjal/0 49.53,76.84
|tip Stay close to Cenarius, he will heal you.
|tip Inside the cave.
step
Watch the dialogue
|tip Inside the cave.
click Portal to Hyjal
Return to the Gates of Sothann |condition subzone("Gates of Sothann") |goto Mount Hyjal/0 48.96,77.07 |q 25551
step
talk Commander Jarod Shadowsong##40772
turnin The Firelord##25551 |goto Mount Hyjal/0 72.08,74.02
accept The Battle Is Won, The War Goes On##27399 |goto Mount Hyjal/0 72.08,74.02
step
talk Farseer Krogar##45244
turnin The Battle Is Won, The War Goes On##27399 |goto Orgrimmar/1 50.47,38.38
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)",{
mopready=true,
next="Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",
startlevel=80.00,
},[[
step
talk Commander Thorak##41621
|tip Inside the building.
turnin Warchief's Command: Vashj'ir!##27718 |goto Durotar/0 55.90,12.32 |only if haveq(27718) or completedq(27718)
accept Call of Duty##25924 |goto Durotar/0 55.90,12.32
step
Locate the Mercenary Ship |goto Durotar/0 58.12,10.37 < 30 |c |q 25924
step
Watch the dialogue
|tip It may take a minute or two for the ship to show up.
|tip The ship will begin sailing to Vashj'ir
Begin Riding the Mercenary Ship to Vashj'ir |condition subzone("The Great Sea") |q 25924
step
Watch the dialogue
Ride the Mercenary Ship to Vashj'ir |q 25924/1 |goto Kelp'thar Forest/0 43.16,32.87 |notravel
step
Watch the dialogue
Wait to Be Rescued |condition subzone("The Immortal Coil") |q 25924
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Call of Duty##25924 |goto Kelp'thar Forest/0 38.74,31.71
accept Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
home The Immortal Coil |goto Kelp'thar Forest/0 38.74,31.71 |q 25929
stickystart "Collect_Saltwater_Starfish"
step
click Conch Shell##202560
|tip It looks like a large shell.
collect Conch Shell##52504 |q 25929/2 |goto Kelp'thar Forest/0 42.18,31.40
step
label "Collect_Saltwater_Starfish"
click Saltwater Star##205989+
|tip They look like yellow starfish.
collect 3 Saltwater Starfish##54828 |q 25929/1 |goto Kelp'thar Forest/0 41.63,30.88
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
accept Pay It Forward##25936 |goto Kelp'thar Forest/0 38.74,31.71
step
use the Enchanted Conch##56227
|tip Use it on Drowning Soldiers.
|tip They look like drowning orcs floating in the water above the floor.
Rescue #6# Drowning Soldiers |q 25936/1 |goto Kelp'thar Forest/0 45.59,28.17
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Pay It Forward##25936 |goto Kelp'thar Forest/0 38.74,31.71
accept Rest For the Weary##25941 |goto Kelp'thar Forest/0 38.74,31.71
step
talk Legionnaire Nazgrim##41711
|tip Inside the ship.
turnin Rest For the Weary##25941 |goto Kelp'thar Forest/0 39.04,32.08
accept Buy Us Some Time##25942 |goto Kelp'thar Forest/0 39.04,32.08
accept Traveling on Our Stomachs##25943 |goto Kelp'thar Forest/0 39.04,32.08
stickystart "Collect_Succulent_Crab_Meats"
step
kill 8 Zin'jatar Raider##39313 |q 25942/1 |goto Kelp'thar Forest/0 41.19,31.74
|tip They look like nagas swimming higher up in the water.
step
label "Collect_Succulent_Crab_Meats"
kill Splitclaw Skitterer##40685+
|tip They look like crabs on the floor.
collect 10 Succulent Crab Meat##54845 |q 25943/1 |goto Kelp'thar Forest/0 41.19,31.74
step
talk Legionnaire Nazgrim##41711
|tip Inside the ship.
turnin Buy Us Some Time##25942 |goto Kelp'thar Forest/0 39.04,32.08
turnin Traveling on Our Stomachs##25943 |goto Kelp'thar Forest/0 39.04,32.08
accept Girding Our Loins##25944 |goto Kelp'thar Forest/0 39.04,32.08
step
click Alliance S.E.A.L. Equipment##203395
|tip It looks like a broken crate on the sea floor.
accept Helm's Deep##25946 |goto Kelp'thar Forest/0 38.90,26.81
stickystart "Collect_Orgrimmar_Helms"
stickystart "Collect_Orgrimmar_Breastplates"
step
kill Gilblin Plunderer##41746+
|tip They look like goblins.
click Orgrimmar Axe##203394+
|tip They look like small metal axes on the sea floor.
collect 5 Orgrimmar Axe##56243 |q 25944/1 |goto Kelp'thar Forest/0 37.10,28.41
step
label "Collect_Orgrimmar_Helms"
kill Gilblin Plunderer##41746+ |notinsticky
|tip They look like goblins. |notinsticky
click Orgrimmar Helm##203393+
|tip They look like small plate helmets on the sea floor.
collect 5 Orgrimmar Helm##56244 |q 25944/2 |goto Kelp'thar Forest/0 37.10,28.41
step
label "Collect_Orgrimmar_Breastplates"
kill Gilblin Plunderer##41746+ |notinsticky
|tip They look like goblins. |notinsticky
click Orgrimmar Breastplate##203392+
|tip They look like small plate chest pieces on the sea floor.
collect 5 Orgrimmar Breastplate##56245 |q 25944/3 |goto Kelp'thar Forest/0 37.10,28.41
step
talk Legionnaire Nazgrim##41711
|tip Inside the ship.
turnin Girding Our Loins##25944 |goto Kelp'thar Forest/0 39.04,32.08
turnin Helm's Deep##25946 |goto Kelp'thar Forest/0 39.04,32.08
accept Finders, Keepers##25947 |goto Kelp'thar Forest/0 39.04,32.08
step
kill Slitherfin Eel##40855+
|tip They look like long flat grey fish.
accept Once More, With Eeling##27729 |goto Kelp'thar Forest/0 49.65,22.24
|tip You will automatically accept this quest.
stickystart "Slay_Disgusting_Eels_Justifiably"
step
click Stormwind Locker##203061+
|tip They look like silver and blue metal treasure chests on the sea floor.
|tip You can find more inside the nearby sunken ship.
collect 5 Stormwind SEAL Equipment##54957 |q 25947/1 |goto Kelp'thar Forest/0 49.65,22.24
step
label "Slay_Disgusting_Eels_Justifiably"
kill Slitherfin Eel##40855+
|tip They look like long flat grey fish.
Slay #8# Disgusting Eels Justifiably |q 27729/1 |goto Kelp'thar Forest/0 49.65,22.24
step
_Click the Complete Quest Box:_
turnin Once More, With Eeling##27729
step
talk Legionnaire Nazgrim##41711
|tip Inside the ship.
turnin Finders, Keepers##25947 |goto Kelp'thar Forest/0 39.04,32.08
accept Bring It On!##25948 |goto Kelp'thar Forest/0 39.04,32.08
step
talk Legionnaire Nazgrim##41750
|tip Inside the ship.
turnin Bring It On!##25948 |goto Kelp'thar Forest/0 38.85,31.49
accept Blood and Thunder!##25949 |goto Kelp'thar Forest/0 38.85,31.49
step
kill Zin'jatar Raider##41781, kill Kil'jatar Raider##41805
|tip You will eventually get dragged away by a naga.
Get Dragged by a Naga Attacker |invehicle |goto Kelp'thar Forest/0 39.79,30.53 |q 25949
step
Watch the dialogue
Complete the Defense of the Briny Gutter |q 25949/1 |goto Kelp'thar Forest/0 46.62,43.55 |notravel
step
talk Erunak Stonespeaker##40105
turnin Blood and Thunder!##25949 |goto Kelp'thar Forest/0 46.33,46.91
step
talk Moanah Stormhoof##41248
accept Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.03,46.87
step
use Moanah's Baitstick##54462
|tip Use it on a Speckled Sea Turtle.
|tip A shark will come and eat the turtle shortly after.
Mount the Sea Turtle |q 25477/1 |goto Kelp'thar Forest/0 55.31,50.87
step
talk Moanah Stormhoof##41248
turnin Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.03,46.87
accept The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.03,46.87
step
click Braided Rope##202766
Tie Off the Seahorse Lure |q 25371/1 |goto Kelp'thar Forest/0 45.39,46.62
step
clicknpc Abyssal Seahorse##39629
|tip It appears nearby.
Ride the Abyssal Seahorse |invehicle |goto Kelp'thar Forest/0 45.39,46.62 |q 25371
step
Subdue the Abyssal Seahorse |q 25371/2
|tip Use the abilities on your action bar when the on screen instructions tell you to.
step
talk Moanah Stormhoof##41248
turnin The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.03,46.87
step
use the Subdued Abyssal Seahorse##54465
Collect the Vashj'ir Seahorse Mount |learnmount Abyssal Seahorse##75207 |q 27685 |future
step
talk Rendel Firetongue##41252
accept Good Deed Left Undone##27685 |goto Kelp'thar Forest/0 46.62,46.73
step
talk Adarrah##39667
turnin Good Deed Left Undone##27685 |goto Kelp'thar Forest/0 53.45,43.02
accept Gimme Shelter!##25587 |goto Kelp'thar Forest/0 53.45,43.02
step
Enter the underwater cave |goto Kelp'thar Forest/0 54.54,33.46 < 30 |walk
Scout Smuggler's Hole |q 25587/1 |goto Kelp'thar Forest/0 56.78,29.82
|tip Inside the underwater cave.
step
talk Swift Seahorse##40852
|tip Inside the underwater cave.
fpath Smuggler's Scar |goto Kelp'thar Forest/0 56.12,31.13
step
Signal Adarrah |q 25587/2 |goto Kelp'thar Forest/0 53.99,34.37
step
talk Adarrah##39883
|tip Inside the underwater cave.
turnin Gimme Shelter!##25587 |goto Kelp'thar Forest/0 57.12,28.78
accept Ain't Too Proud to Beg##25598 |goto Kelp'thar Forest/0 57.12,28.78
step
talk Captain Samir##39669
Select _"Make for that cave to the west. It's safe and dry."_ |gossip 112214
Rescue Mack and Samir |q 25598/1 |goto Kelp'thar Forest/0 48.28,39.57
step
click Sunken Crate##202871
accept Crate of Crab Meat##25388 |goto Kelp'thar Forest/0 49.68,40.89
step
Enter the underwater cave |goto Kelp'thar Forest/0 54.54,33.46 < 30 |walk
talk Adarrah##39883
|tip Inside the underwater cave.
turnin Ain't Too Proud to Beg##25598 |goto Kelp'thar Forest/0 57.12,28.78
turnin Crate of Crab Meat##25388 |goto Kelp'thar Forest/0 57.12,28.78
accept A Girl's Best Friend##25390 |goto Kelp'thar Forest/0 57.12,28.78
accept A Taste For Tail##25389 |goto Kelp'thar Forest/0 57.12,28.78
step
talk Captain Samir##39884
|tip Inside the underwater cave.
accept Can't Start a Fire Without a Spark##25602 |goto Kelp'thar Forest/0 57.33,28.90
stickystart "Accept_The_Hordes_Hoard"
stickystart "Collect_Clacksnap_Tails"
stickystart "Collect_Adarrahs_Keepsakes"
step
Leave the underwater cave |goto Kelp'thar Forest/0 54.54,33.46 < 30 |walk |only if subzone("Smuggler's Scar")
click Keg of Gunpowder##203113
|tip It looks like a wooden barrel.
collect Keg of Gunpowder##55143 |q 25602/1 |goto Kelp'thar Forest/0 55.53,38.81
step
label "Accept_The_Hordes_Hoard"
kill Clacksnap Pincer##39918+
|tip They look like lobsters.
collect Tattered Treasure Map##53053 |n
use the Tattered Treasure Map##53053
accept The Horde's Hoard##25377 |goto Kelp'thar Forest/0 48.83,39.18
step
label "Collect_Clacksnap_Tails"
kill Clacksnap Pincer##39918+
|tip They look like lobsters.
collect 4 Clacksnap Tail##53073 |q 25389/1 |goto Kelp'thar Forest/0 48.83,39.18
step
label "Collect_Adarrahs_Keepsakes"
click Adarrah's Jewelry Box##202775+
|tip They look like small brown wooden chests on the ground.
collect 6 Adarrah's Keepsake##53074 |q 25390/1 |goto Kelp'thar Forest/0 51.93,40.21
step
Enter the underwater cave |goto Kelp'thar Forest/0 54.54,33.46 < 30 |walk
talk Adarrah##39883
|tip Inside the underwater cave.
turnin A Girl's Best Friend##25390 |goto Kelp'thar Forest/0 57.12,28.78
turnin A Taste For Tail##25389 |goto Kelp'thar Forest/0 57.12,28.78
step
talk Captain Samir##39884
|tip Inside the underwater cave.
turnin Can't Start a Fire Without a Spark##25602 |goto Kelp'thar Forest/0 57.33,28.90
step
talk Adarrah##39883
|tip Inside the underwater cave.
accept Ophidophobia##25459 |goto Kelp'thar Forest/0 57.12,28.78
step
talk Mack Fearsen##40983
|tip Inside the underwater cave.
accept Nerve Tonic##25358 |goto Kelp'thar Forest/0 57.31,29.30
stickystart "Kill_Brinescale_Serpents"
stickystart "Collect_Sunken_Cargo"
step
Leave the underwater cave |goto Kelp'thar Forest/0 54.54,33.46 < 30 |walk |only if subzone("Smuggler's Scar")
talk Budd##46338
accept Oh, the Insanity!##25651 |goto Kelp'thar Forest/0 55.29,38.91
step
kill Akasha##39964
|tip She looks like a huge sea snake that swims around this area.
collect Horde Chest Key##53054 |q 25377/1 |goto Kelp'thar Forest/0 57.77,36.98
step
click Sunken Horde Chest##202759
turnin The Horde's Hoard##25377 |goto Kelp'thar Forest/0 57.87,35.12
step
label "Kill_Brinescale_Serpents"
kill 4 Brinescale Serpent##39948 |q 25459/1 |goto Kelp'thar Forest/0 57.77,36.98
|tip They look like long sea snakes.
step
label "Collect_Sunken_Cargo"
click Sunken Cargo##202745+
|tip They look like floating wooden crates.
collect 5 Sunken Cargo##52973 |q 25358/1 |goto Kelp'thar Forest/0 57.77,36.98
step
kill Gilblin Hoarder##41016+
|tip They look like goblins holding black cannon balls.
click Pilfered Cannonball##4177+
|tip They look like piles of cannon balls.
collect 50 Pilfered Cannonball##55185 |goto Kelp'thar Forest/0 52.50,55.67 |q 25651
step
use the Pilfered Cannonball##55185+
collect Barrel of Gunpowder##62228 |q 25651/1
step
talk Budd##46338
turnin Oh, the Insanity!##25651 |goto Kelp'thar Forest/0 55.29,38.91
accept Dah, Nunt.. Dah, Nunt..##25657 |goto Kelp'thar Forest/0 55.29,38.91
step
Enter the underwater cave |goto Kelp'thar Forest/0 54.54,33.46 < 30 |walk
talk Mack Fearsen##40983
|tip Inside the underwater cave.
turnin Nerve Tonic##25358 |goto Kelp'thar Forest/0 57.31,29.30
step
talk Adarrah##39883
|tip Inside the underwater cave.
turnin Ophidophobia##25459 |goto Kelp'thar Forest/0 57.12,28.78
step
click Broken Bottle##203128
|tip Inside the underwater cave.
accept A Desperate Plea##25638 |goto Kelp'thar Forest/0 56.42,30.09
step
talk Erunak Stonespeaker##40105
turnin A Desperate Plea##25638 |goto Kelp'thar Forest/0 46.33,46.91
accept Undersea Sanctuary##25794 |goto Kelp'thar Forest/0 46.33,46.91
step
use Erunak's Scrying Orb##56020 |q 25794/1 |goto Kelp'thar Forest/0 46.31,46.66
step
talk Erunak Stonespeaker##40105
turnin Undersea Sanctuary##25794 |goto Kelp'thar Forest/0 46.33,46.91
accept Spelunking##26000 |goto Kelp'thar Forest/0 46.33,46.91
step
use the Booby-Trapped Bait##55190
Feed the Explosive Grub to Gnaws |q 25657/1 |goto Kelp'thar Forest/0 58.34,48.79
step
_Click the Complete Quest Box:_
turnin Dah, Nunt... Dah, Nunt...##25657
accept Shark Weak##27699
step
use the Booby-Trapped Bait##55190
Feed the Explosive Grub to Gnaws |q 25657/1 |goto Kelp'thar Forest/0 58.34,48.79
step
_Click the Complete Quest Box:_
turnin Dah, Nunt... Dah, Nunt...##25657
accept Shark Weak##27699
step
click Gnaws' Tooth##203170+
|tip They look like brown and white spikes on the ground.
collect 5 Gnaws' Tooth##55212 |q 27699/1 |goto Kelp'thar Forest/0 58.40,50.10
step
talk Budd##46338
turnin Shark Weak##27699 |goto Kelp'thar Forest/0 55.29,38.91
accept DUN-dun-DUN-dun-DUN-dun##25670 |goto Kelp'thar Forest/0 55.29,38.91
step
use Budd's Chain##55220
|tip A huge shark will grab you in its mouth.
|tip While in the shark's mouth, spam the ability on your action bar.
|tip A huge harpoon will eventually kill the shark.
Slay Gnaws |q 25670/1 |goto Kelp'thar Forest/0 58.35,48.79
step
Enter the underwater cave |goto Kelp'thar Forest/0 61.03,64.14 < 30 |walk
talk Gurrok##41863
|tip Inside the underwater cave.
turnin Spelunking##26000 |goto Kelp'thar Forest/0 63.98,59.80
step
Watch the dialogue
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
accept Debriefing##26007 |goto Kelp'thar Forest/0 63.86,59.94
step
talk Gurrok##41885
|tip Inside the underwater cave.
Select _"Tell me your name, orc."_ |gossip 112317
Select _"How did you get down here?"_ |gossip 112318
Select _"Tell us about your captors, Gurrok."_ |gossip 112319
Select _"How were you able to get away?"_ |gossip 112321
Select _"Did you see Nazgrim and his troops?"_ |gossip 112320
Select _"What is there to report of these beasts, Gurrok? How do we defeat them?"_ |gossip 112322
Debrief Gurrok |q 26007/1 |goto Kelp'thar Forest/0 63.98,59.80
step
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
turnin Debriefing##26007 |goto Kelp'thar Forest/0 63.86,59.94
accept Wake of Destruction##25887 |goto Kelp'thar Forest/0 63.86,59.94
step
Leave the underwater cave |goto Kelp'thar Forest/0 61.03,64.14 < 30 |walk |only if subzone("Deepmist Grotto")
talk Budd##46458
turnin DUN-dun-DUN-dun-DUN-dun##25670 |goto Kelp'thar Forest/0 58.39,48.69
accept A Bone to Pick##25732 |goto Kelp'thar Forest/0 58.39,48.69
step
kill King Gurboggle##41018
|tip Up in a giant open clam.
collect The Pewter Pounder##55805 |q 25732/1 |goto Kelp'thar Forest/0 53.59,58.05
step
talk Budd##46458
turnin A Bone to Pick##25732 |goto Kelp'thar Forest/0 58.39,48.69
accept Decisions, Decisions##25743 |goto Kelp'thar Forest/0 58.39,48.69
step
use The Pewter Pounder##55806
Destroy The Pewter Prophet |q 25743/1
step
talk Budd##46463
turnin Decisions, Decisions##25743 |goto Kelp'thar Forest/0 58.39,48.69
step
use the Orb of Suggestion##56576
|tip Use it on a Famished Great Shark.
|tip They look like grey and white sharks.
Take Control of a Famished Great Shark |invehicle |goto Kelp'thar Forest/0 57.17,65.28 |q 25887
step
kill Zin'jatar Guardian##41996+
Eat #12# Zin'jatar Guardians Alive |q 25887/1 |goto Kelp'thar Forest/0 57.43,73.80
|tip Use the "Eat Naga" ability on your action bar near Zin'jatar Guardians around this area.
|tip You can just spam the ability.
step
Return to Deepmist Grotto |outvehicle |q 25887
|tip Use the "Return to Safety" ability on your action bar.
step
Enter the cave |goto Kelp'thar Forest/0 61.03,64.14 < 30 |walk
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
turnin Wake of Destruction##25887 |goto Kelp'thar Forest/0 63.86,59.94
step
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
home Deepmist Grotto |goto Kelp'thar Forest/0 63.86,59.94 |q 25885 |future
step
talk Gurrok##41885
|tip Inside the underwater cave.
accept What? What? In My Gut...?##26040 |goto Kelp'thar Forest/0 63.98,59.81
step
talk Moanah Stormhoof##41347
|tip Inside the underwater cave.
accept Decompression##26008 |goto Kelp'thar Forest/0 63.89,59.38
step
talk Rendel Firetongue##41344
|tip Inside the underwater cave.
accept Come Hell or High Water##25884 |goto Kelp'thar Forest/0 64.21,59.91
stickystart "Free_Imprisoned_Warriors"
stickystart "Collect_Wiggleweed_Sprouts_And_Slay_Zinjatar_Nagas"
stickystart "Slay_Zin'jatar_Naga"
step
Leave the underwater cave |goto Kelp'thar Forest/0 61.03,64.14 < 30 |walk |only if subzone("Deepmist Grotto")
click Naga Tridents##203301+
accept How Disarming##25883 |goto Kelp'thar Forest/0 60.35,69.87
step
click Naga Tridents##203301+
|tip They look like groups of 3 yellow poles leaning upright against each other.
Destroy #6# Naga Weapons |q 25883/1 |goto Kelp'thar Forest/0 57.97,79.44
step
_Click the Complete Quest Box:_
turnin How Disarming##25883
step
label "Free_Imprisoned_Warriors"
use the Breathstone##56169
|tip Use it on Imprisoned Warriors.
|tip They looks like dead orcs in large white pearls.
|tip Swim around on all 3 layers of the naga Holding Pens.
|tip The groups of large white pearls on the ground won't work.
Free #10# Imprisoned Warriors |q 26008/1 |goto Kelp'thar Forest/0 57.97,79.44
step
label "Collect_Wiggleweed_Sprouts_And_Slay_Zinjatar_Nagas"
kill Zin'jatar Guardian##41481, Zin'jatar Overseer##41549, Zin'jatar Pearlbinder##41477, Shimmerspine Harvester##46474
|tip They look like naga and murlocs.
collect 7 Wiggleweed Sprout##56167 |q 26040/1 |goto Kelp'thar Forest/0 57.97,79.44
step
label "Slay_Zin'jatar_Naga"
kill Zin'jatar Guardian##41481, Zin'jatar Overseer##41549, Zin'jatar Pearlbinder##41477 |notinsticky
|tip They look like naga and murlocs. |notinsticky
Slay #12# Zin'jatar Naga |q 25884/1 |goto Kelp'thar Forest/0 57.97,79.44
step
_Click the Complete Quest Box:_
turnin Come Hell or High Water##25884
accept The Warden's Time##27708
step
kill Warden Azjakir##41530 |q 27708/1 |goto Kelp'thar Forest/0 60.16,81.15
|tip He walks around this small area up on the platform.
step
talk Swift Seahorse##43216
|tip On the surface of the water.
fpath Sandy Beach##609 |goto Kelp'thar Forest/0 49.27,87.89
step
talk Briglar##43220
fpath Sandy Beach##608 |goto Shimmering Expanse/0 61.02,28.43
step
talk Erunak Stonespeaker##41341
|tip Inside the underwater cave.
turnin The Warden's Time##27708 |goto Kelp'thar Forest/0 63.86,59.94
accept Across the Great Divide##25471 |goto Kelp'thar Forest/0 63.86,59.94
step
talk Gurrok##41885
|tip Inside the underwater cave.
turnin What? What? In My Gut...?##26040 |goto Kelp'thar Forest/0 63.98,59.81
step
talk Moanah Stormhoof##41347
|tip Inside the underwater cave.
turnin Decompression##26008 |goto Kelp'thar Forest/0 63.89,59.38
step
|tip There are a few side-quests that are starting from the dropped items in this area.
|tip One of them is from the local 82 elite giant. The other 2 from Giblins and their local boss Giblingle.
|tip All should be accessible at this point, yet elite may be a challenge and the rest may take a while to drop.
|tip If you do not feel like going through it, just skip this part and you can start with the next area near by.
Skip |confirm |next "SkippedDropItems"
_Or_
Continue |confirm |next "FarmItems"
stickystart "Giblin Collector Farm1"
|only if itemcount(54639) < 1 and itemcount(55186) < 1 and itemcount(62138) < 1
step
label "FarmItems"
kill Gilblingle##41183 |goto Kelp'thar Forest/0 51.60, 51.60
collect Waterlogged Journal##54639
|only if itemcount(54639) < 1 and not completedq(25503)
step
label "Giblin Collector Farm1"
kill Gilblin Collector##41017+
collect Lady La-La's Necklace##55186
|only if itemcount(55186) < 1 and not completedq(25419)
step
use Lady La-La's Necklace##55186
accept Lady La-La's Medallion##25419
stickystart "Giblin Collector Farm2"
|only if itemcount(55186) > 0
step
label "Giblin Collector Farm2"
kill Gilblin Collector##41017+
collect Medallion Fragment##55188
|only if itemcount(55188) < 5 and haveq(25419)
step
|tip Create medalion
use Medalion Fragment##55188
|only if itemcount(55188) >= 5 and haveq(25419)
step
_Click the Complete Quest Box:_
turnin Lady La-La's Medallion##25419
|only if readyq(25419)
step
use Waterlogged Journal##54639
accept Blackfin's Booty##25503
|only if itemcount(54639) > 0
step
kill Blackfin##40466
collect Gilblingle's Map##54640
|only if itemcount(54639) > 0 and haveq(25503) and itemcount(54640) < 1
step
click Sandy Mound##202916 |goto Kelp'thar Forest/0 55.10 54.90
turnin Blackfin's Booty##25503
|only if readyq(25503)
step
kill Gnash##40987 |goto Kelp'thar Forest/0 51.40,42.42
|goto Kelp'thar Forest/0 56.12,54.75
|tip It is the elite giant that walks in this area
|only if itemcount(62138) < 1 and not completedq(27687)
step
use Gnash's Head##62138
accept An Opened Can of Whoop Gnash##27687
|only if itemcount(62138) > 0
step
|tip Enter Smugler's Scar |goto Kelp'thar Forest/0 53.31,35.20
talk Captain Samir##39884 |goto Kelp'thar Forest/0 57.33,28.90
turnin An Opened Can of Whoop Gnash##27687
|only if itemcount(62138) > 0 and haveq(27687)
step
label "SkippedDropItems"
Leave the underwater cave |goto Kelp'thar Forest/0 61.03,64.14 < 30 |walk |only if subzone("Deepmist Grotto")
Enter the underwater cave in the side of the cliff |goto Kelp'thar Forest/0 48.30,72.50 < 30 |walk
talk Farseer Gadra##39226
|tip Inside the underwater cave.
turnin Across the Great Divide##25471 |goto Shimmering Expanse/0 56.02,13.69
accept The Looming Threat##25334 |goto Shimmering Expanse/0 56.02,13.69
step
talk Farseer Gadra##39226
|tip Inside the underwater cave.
Select _"I am ready to join you in the vision, Farseer."_ |gossip 112367
Enter the Spirit Vision |havebuff Spirit Vision##74385 |goto Shimmering Expanse/0 56.02,13.69 |q 25334
step
Watch the dialogue
Share in Farseer Gadra's Spirit Vision |q 25334/1 |goto Abyssal Depths/0 72.89,37.35
step
_Next to you:_
talk Spirit of Farseer Gadra##40398
turnin The Looming Threat##25334
step
talk Farseer Gadra##39226
|tip Inside the underwater cave.
accept Backed Into a Corner##25164 |goto Shimmering Expanse/0 56.02,13.69
step
kill Zin'jatar Fathom-Stalker##40162+
|tip You have to kill 50 of them with your allies.
|tip Inside the underwater cave.
Fend Off the Naga Attack |q 25164/1 |goto Shimmering Expanse/0 55.75,13.33
step
kill Fathom-Lord Zin'jatar##40510
|tip He will eventually escape.
|tip Inside the underwater cave.
Defeat Fathom-Lord Zin'jatar |q 25164/2 |goto Shimmering Expanse/0 55.79,12.54
step
talk Farseer Gadra##39226
|tip Inside the underwater cave.
turnin Backed Into a Corner##25164 |goto Shimmering Expanse/0 56.02,13.69
step
talk Toshe Chaosrender##39877
|tip Inside the underwater cave.
accept Rundown##25221 |goto Shimmering Expanse/0 55.53,12.52
step
Follow the tunnel to the underwater cave exit |goto Shimmering Expanse/0 53.41,11.79 < 30 |walk |only if subzone("Damplight Chamber")
Leave the underwater cave |goto Shimmering Expanse/0 51.77,15.31 < 30 |walk |only if subzone("Damplight Chamber")
use Toshe's Hunting Spears##54466
kill Fleeing Zin'jatar Fathom-Stalker##40174+
|tip Use it near Fleeing Zin'jatar Fathom-Stalkers.
|tip They look like nagas.
|tip You can stay here and spam it to do this easily.
|tip You can do this while mounted.
Slay #20# Fleeing Zin'jatar Fathom-Stalkers |q 25221/1 |goto Shimmering Expanse/0 54.08,23.62
step
talk Toshe Chaosrender##39877
turnin Rundown##25221 |goto Shimmering Expanse/0 53.28,33.09
accept Silver Tide Hollow##25222 |goto Shimmering Expanse/0 53.28,33.09
step
talk Felora Firewreath##39876
|tip Walking around inside the underwater cave.
turnin Silver Tide Hollow##25222 |goto Shimmering Expanse/0 49.42,42.71
accept A Distracting Scent##25215 |goto Shimmering Expanse/0 49.42,42.71
accept The Great Sambino##25216 |goto Shimmering Expanse/0 49.42,42.71
step
talk Earthmender Duarn##39875
|tip Inside the underwater cave.
accept Don't be Shellfish##25219 |goto Shimmering Expanse/0 49.23,42.58
step
talk Caretaker Movra##39878
|tip Inside the underwater cave.
accept Slippery Threat##25220 |goto Shimmering Expanse/0 49.13,41.96
step
talk Caretaker Movra##39878
|tip Inside the underwater cave.
home Silver Tide Hollow |goto Shimmering Expanse/0 49.13,41.96 |q 25215 |future
step
talk Swift Seahorse##40851
|tip Inside the underwater cave.
fpath Silver Tide Hollow |goto Shimmering Expanse/0 49.52,41.21
step
clicknpc Dead Zin'jatar Raider##39911+
|tip They look like dead naga on the ground.
|tip You can only drag one of them at a time.
|tip You can do this while mounted.
Dispose of #3# Dead Zin'jatar Raiders |q 25215/1 |goto Shimmering Expanse/0 50.25,41.56
Drag them to [50.80,45.90]
stickystart "Kill_Spiketooth_Eels"
step
clicknpc Coilshell Sifter##39422+
|tip They look like snails.
collect 10 Coilshell Sifter##52975 |q 25219/1 |goto Shimmering Expanse/0 52.56,36.74
step
label "Kill_Spiketooth_Eels"
kill 12 Spiketooth Eel##40200 |q 25220/1 |goto Shimmering Expanse/0 52.56,36.74
|tip They look like long flat fish.
step
talk Felora Firewreath##39876
|tip She walks around this area.
|tip Inside the underwater cave.
turnin A Distracting Scent##25215 |goto Shimmering Expanse/0 49.42,42.71
step
talk Earthmender Duarn##39875
|tip Inside the underwater cave.
turnin Don't be Shellfish##25219 |goto Shimmering Expanse/0 49.23,42.58
step
talk Caretaker Movra##39878
|tip Inside the underwater cave.
turnin Slippery Threat##25220 |goto Shimmering Expanse/0 49.13,41.96
step
talk The Great Sambino##39882
turnin The Great Sambino##25216 |goto Shimmering Expanse/0 41.29,34.24
accept Undersea Inflation##25218 |goto Shimmering Expanse/0 41.29,34.24
step
talk Felice##40227
accept Crabby Patrons##25360 |goto Shimmering Expanse/0 41.16,34.18
stickystart "Collect_Sambinos_Air_Valve"
stickystart "Kill_Green_Sand_Crabs"
step
use Sambino's Air Balloon##54608
|tip Use it next to the bubbling objects.
|tip They look like green bubbling round plants and large blue bubbling snail shells.
|tip Every time you inflate it, you get a stacking debuff.
|tip The balloon will fill once you reach 10 stacks.
Fill Sambino's Air Balloon |q 25218/1 |goto Shimmering Expanse/0 42.89,36.33
step
label "Collect_Sambinos_Air_Valve"
kill Green Sand Crab##39418+
collect Sambino's Air Valve##54611 |q 25218/2 |goto Shimmering Expanse/0 42.89,36.33
step
label "Kill_Green_Sand_Crabs"
kill 10 Green Sand Crab##39418 |q 25360/1 |goto Shimmering Expanse/0 42.89,36.33
step
talk The Great Sambino##39882
turnin Undersea Inflation##25218 |goto Shimmering Expanse/0 41.29,34.24
accept Totem Modification##25217 |goto Shimmering Expanse/0 41.29,34.24
step
talk Felice##40227
turnin Crabby Patrons##25360 |goto Shimmering Expanse/0 41.16,34.18
step
use Sambino's Modified Stoneclaw Totem##54214		|only if itemcount(54214) > 0
use Sambino's Modified Earthbind Totem##53052		|only if itemcount(53052) > 0
use Sambino's Modified Stoneskin Totem##54217		|only if itemcount(54217) > 0
use Sambino's Modified Strength of Earth Totem##54216	|only if itemcount(54216) > 0
Kill the enemies that attack in waves
Take a Drill Sample |q 25217/1 |goto Shimmering Expanse/0 42.73,33.92
step
talk The Great Sambino##39882
turnin Totem Modification##25217 |goto Shimmering Expanse/0 41.29,34.24
accept Back in One Piece##25456 |goto Shimmering Expanse/0 41.29,34.24
step
talk Felora Firewreath##39876
|tip She walks around this area.
|tip Inside the underwater cave.
turnin Back in One Piece##25456 |goto Shimmering Expanse/0 49.60,42.10
accept Toshe's Vengeance##25359 |goto Shimmering Expanse/0 49.60,42.10
step
talk Toshe Chaosrender##40221
turnin Toshe's Vengeance##25359 |goto Shimmering Expanse/0 64.06,42.29
accept Vengeful Heart##25439 |goto Shimmering Expanse/0 64.06,42.29
accept Vortex##25441 |goto Shimmering Expanse/0 64.06,42.29
stickystart "Kill_Zinjatar_Ravagers"
step
use the Globes of Tumultuous Water##54785
|tip Use them near Swarming Serpents.
|tip They look like small snakes.
Trap #30# Swarming Serpents |q 25441/1 |goto Shimmering Expanse/0 66.64,45.60
step
label "Kill_Zinjatar_Ravagers"
kill 10 Zin'jatar Ravager##40275 |q 25439/1 |goto Shimmering Expanse/0 66.64,45.60
|tip They look like nagas.
step
talk Toshe Chaosrender##40221
turnin Vengeful Heart##25439 |goto Shimmering Expanse/0 64.06,42.29
accept Fathom-Lord Zin'jatar##25440 |goto Shimmering Expanse/0 64.06,42.29
turnin Vortex##25441 |goto Shimmering Expanse/0 64.06,42.29
step
kill Fathom-Lord Zin'jatar##40510 |q 25440/1 |goto Shimmering Expanse/0 67.30,49.71
collect Luminescent Pearl##54614 |goto Shimmering Expanse/0 67.30,49.71 |q 25442 |future
step
use the Luminescent Pearl##54614
accept A Pearl of Wisdom##25442 |goto Shimmering Expanse/0 67.30,49.71
step
talk Toshe Chaosrender##40221
turnin Fathom-Lord Zin'jatar##25440 |goto Shimmering Expanse/0 64.06,42.29
step
talk Earthmender Duarn##39875
|tip Inside the underwater cave.
turnin A Pearl of Wisdom##25442 |goto Shimmering Expanse/0 49.23,42.57
accept Nespirah##25890 |goto Shimmering Expanse/0 49.23,42.57
step
talk Swift Seahorse##40873
|tip Inside the underwater cave.
Select _"I need to get to Nespirah."_ |gossip 113196
Begin Traveling to Nespirah |invehicle |goto Shimmering Expanse/0 49.52,41.21 |q 25890
step
Travel to Nespirah |outvehicle |goto Shimmering Expanse/0 51.79,48.54 |q 25890 |notravel
step
Enter the cave |goto Shimmering Expanse/0 51.94,48.69 < 20 |walk
Follow the spiral path up |goto Shimmering Expanse/0 53.01,49.67 < 10 |walk
Watch the dialogue
|tip Follow Earthmender Duarn after he appears.
|tip Inside Nespirah.
Find a Way to Communicate with Nespirah |q 25890/1 |goto Shimmering Expanse/0 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Nespirah##25890 |goto Shimmering Expanse/0 51.62,52.23
accept Making Contact##25900 |goto Shimmering Expanse/0 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
Select _"Whenever you're ready, Duarn."_ |gossip 112284
Watch the dialogue
Speak with Earthmender Duarn |q 25900/1 |goto Shimmering Expanse/0 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Making Contact##25900 |goto Shimmering Expanse/0 51.62,52.23
accept Slave Labor##25907 |goto Shimmering Expanse/0 51.62,52.23
accept Stick it to Them##25908 |goto Shimmering Expanse/0 51.62,52.23
stickystart "Kill_Idrakess_Sentinels"
stickystart "Kill_Idrakess_Enchantresses"
step
use Duarn's Rope##56178
|tip Use it near Enslaved Alliance and Horde Pearl Miners.
|tip They look like humans and orcs digging in the trenches with clusters of huge pearls.
|tip Inside Nespirah.
Rescue #8# Pearl Miners |q 25907/1 |goto Shimmering Expanse/0 56.30,53.94
step
label "Kill_Idrakess_Sentinels"
kill 7 Idra'kess Sentinel##41466 |q 25908/1 |goto Shimmering Expanse/0 56.30,53.94
|tip They look like nagas with yellow fins.
|tip Inside Nespirah. |notinsticky
step
label "Kill_Idrakess_Enchantresses"
kill 7 Idra'kess Enchantress##41467 |q 25908/2 |goto Shimmering Expanse/0 56.30,53.94
|tip They look like nagas with blue fins.
|tip Inside Nespirah. |notinsticky
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Slave Labor##25907 |goto Shimmering Expanse/0 51.62,52.23
turnin Stick it to Them##25908 |goto Shimmering Expanse/0 51.62,52.23
accept Capture the Crab##25989 |goto Shimmering Expanse/0 51.62,52.23
step
use Duarn's Net##56184
|tip Use it on a Deepseeker Crab.
|tip They are the pets of Idra'kess Harpooners.
|tip Inside Nespirah.
clicknpc Deepseeker Crab##41520
|tip It becomes friendly after you use the net.
collect Deepseeker Crab##56182 |q 25989/1 |goto Shimmering Expanse/0 55.27,62.62
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Capture the Crab##25989 |goto Shimmering Expanse/0 51.62,52.23
accept Breaking Through##25990 |goto Shimmering Expanse/0 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
Select _"Let's speak with Nespirah."_ |gossip 112285
Watch the dialogue
Speak with Earthmender Duarn |q 25990/1 |goto Shimmering Expanse/0 51.62,52.23
step
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Breaking Through##25990 |goto Shimmering Expanse/0 51.62,52.23
accept We Are Not Alone##25991 |goto Shimmering Expanse/0 51.62,52.23
step
talk Legionnaire Nazgrim##41810
|tip Inside Nespirah.
turnin We Are Not Alone##25991 |goto Shimmering Expanse/0 60.22,63.69
accept Body Blows##25993 |goto Shimmering Expanse/0 60.22,63.69
step
talk Captain Vilethorn##41811
|tip Inside Nespirah.
accept Hopelessly Gearless##25992 |goto Shimmering Expanse/0 60.19,63.72
step
talk Wavespeaker Tulra##41813
|tip She walks around this area.
|tip Inside Nespirah.
accept Still Valuable##25994 |goto Shimmering Expanse/0 60.15,63.53
stickystart "Collect_Mysterious_Pearls"
stickystart "Attack_Nespirah_Abscesses"
step
click Idra'kess Weapon Rack##203373+
|tip They look like yellow wooden stands with weapons leaning against them.
|tip Inside Nespirah.
collect 4 Purloined Polearm##56185 |q 25992/1 |goto Shimmering Expanse/0 61.41,58.14
step
label "Collect_Mysterious_Pearls"
kill Idra'kess Warlord##41607, Idra'kess Prophet##41608
|tip They look like nagas.
|tip Inside Nespirah. |notinsticky
collect 5 Mysterious Pearl##56194 |q 25994/1 |goto Shimmering Expanse/0 61.41,58.14
step
label "Attack_Nespirah_Abscesses"
kill Nespirah Abscess##46847+
|tip They look like red lumps on the ground.
Attack #7# Nespirah Abscesses |q 25993/1 |goto Shimmering Expanse/0 61.41,58.14
step
talk Wavespeaker Tulra##41813
|tip She walks around this area.
|tip Inside Nespirah.
turnin Still Valuable##25994 |goto Shimmering Expanse/0 60.15,63.53
step
talk Legionnaire Nazgrim##41810
|tip Inside Nespirah.
turnin Body Blows##25993 |goto Shimmering Expanse/0 60.22,63.69
step
talk Captain Vilethorn##41811
|tip Inside Nespirah.
turnin Hopelessly Gearless##25992 |goto Shimmering Expanse/0 60.19,63.72
step
talk Legionnaire Nazgrim##41810
|tip Inside Nespirah.
accept Overseer Idra'kess##25995 |goto Shimmering Expanse/0 60.22,63.69
step
Follow the path up |goto Shimmering Expanse/0 62.90,56.65 < 20 |walk
kill Idra'kess Mistress##41795+
|tip Upstairs inside Nespirah.
|tip There is one on either side of Overseer Idra'kess.
|tip You must kill them to be able to kill Overseer Idra'kess.
kill Overseer Idra'kess##41731 |q 25995/1 |goto Shimmering Expanse/0 57.53,56.32
|tip To kill him faster, position yourself to make him run over the red blobs that appear on the ground.
step
Follow the path down |goto Shimmering Expanse/0 60.22,52.77 < 20 |walk
talk Earthmender Duarn##41531
|tip Inside Nespirah.
turnin Overseer Idra'kess##25995 |goto Shimmering Expanse/0 51.62,52.23
accept Waking the Beast##25996 |goto Shimmering Expanse/0 51.62,52.23
step
Watch the dialogue
|tip Inside Nespirah.
Listen as Duarn Speaks to Nespirah |q 25996/1 |goto Shimmering Expanse/0 51.62,52.23
step
Follow the path down |goto Shimmering Expanse/0 51.41,55.70 < 15 |walk
clicknpc Swiftfin Seahorse##41776
Escape on Erunak's Seahorse |q 25996/2 |goto Shimmering Expanse/0 50.28,55.45
step
Begin Traveling to Legion's Rest |invehicle |goto Shimmering Expanse/0 50.28,55.45 |q 25996
step
Travel to Legion's Rest |outvehicle |goto Shimmering Expanse/0 50.98,63.00 |q 25996 |notravel
step
talk Legionnaire Nazgrim##40917
|tip Inside the underwater cave.
turnin Waking the Beast##25996 |goto Shimmering Expanse/0 51.24,63.02
accept Deep Attraction##25592 |goto Shimmering Expanse/0 51.24,63.02
step
talk Captain Vilethorn##40916
|tip Inside the underwater cave.
accept Shelled Salvation##25593 |goto Shimmering Expanse/0 51.19,62.99
step
talk Wavespeaker Tulra##40919
|tip Inside the underwater cave.
accept Something Edible##25595 |goto Shimmering Expanse/0 51.61,62.75
step
talk Fiasco Sizzlegrin##40918
|tip Inside the underwater cave.
accept Crafty Crabs##25594 |goto Shimmering Expanse/0 51.75,62.51
step
talk Zun'ja##42908
|tip Inside the underwater cave.
home Legion's Rest |goto Shimmering Expanse/0 51.65,62.60 |q 25594 |future
step
talk Swift Seahorse##40871
|tip Inside the underwater cave.
fpath Legion's Rest |goto Shimmering Expanse/0 50.74,63.46
stickystart "Collect_Snapjaw_Grouper_Meat"
stickystart "Kill_Redgill_Scavengers"
stickystart "Collect_Fiascos_Stray_Parts"
step
Leave the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk |only if subzone("Legion's Rest")
clicknpc Spiralung##39745+
|tip They look like small white shells on the sea floor.
|tip Up on the higher platform, above the cave.
collect Spiralung##55141+ |n
use the Spiralung##55141+
|tip Use it on Nespirah Survivors.
|tip They look like various Horde NPCs swimming in place around rock air bubble cracks.
Rescue #8# Shell Survivors |q 25593/1 |goto Shimmering Expanse/0 53.41,66.66
step
label "Collect_Snapjaw_Grouper_Meat"
kill Snapjaw Grouper##40912+
|tip They look like large orange fish.
collect 8 Snapjaw Grouper Meat##55140 |q 25595/1 |goto Shimmering Expanse/0 53.41,66.66
step
label "Collect_Fiascos_Stray_Parts"
click Fiasco's Stray Part##203103+
|tip They look like various small metal pieces.
|tip Up on the higher platform, above the cave. |notinsticky
kill Sandskin Pincer##40889+
|tip They look like crabs.
collect 12 Fiasco's Stray Parts##55139 |q 25594/1 |goto Shimmering Expanse/0 53.41,66.66
step
label "Kill_Redgill_Scavengers"
kill 10 Redgill Scavenger##40911 |q 25592/1 |goto Shimmering Expanse/0 56.12,70.62
|tip They look like murlocs.
step
Enter the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk
talk Captain Vilethorn##40916
|tip Inside the underwater cave.
turnin Shelled Salvation##25593 |goto Shimmering Expanse/0 51.19,62.99
step
talk Legionnaire Nazgrim##40917
|tip Inside the underwater cave.
turnin Deep Attraction##25592 |goto Shimmering Expanse/0 51.24,63.02
step
talk Wavespeaker Tulra##40919
|tip Inside the underwater cave.
turnin Something Edible##25595 |goto Shimmering Expanse/0 51.61,62.75
step
talk Fiasco Sizzlegrin##40918
|tip Inside the underwater cave.
turnin Crafty Crabs##25594 |goto Shimmering Expanse/0 51.75,62.51
step
talk Elendri Goldenbrow##40920
|tip Inside the underwater cave.
accept An Occupation of Time##25954 |goto Shimmering Expanse/0 51.26,62.42
step
talk Captain Vilethorn##40916
|tip Inside the underwater cave.
accept A Better Vantage##25955 |goto Shimmering Expanse/0 51.19,62.99
accept Caught Off-Guard##25952 |goto Shimmering Expanse/0 51.19,62.99
step
talk Legionnaire Nazgrim##40917
|tip Inside the underwater cave.
accept Swift Approach##25953 |goto Shimmering Expanse/0 51.24,63.02
stickystart "Destroy_Azshir_Monitors"
stickystart "Kill_Azshir_Patrollers"
step
Leave the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk |only if subzone("Legion's Rest")
Scout the Structures South of Quel'Dormir Gardens |q 25955/3 |goto Shimmering Expanse/0 40.50,74.72
step
click Broken Prong##203140
accept Upon the Scene of Battle##25956 |goto Shimmering Expanse/0 40.48,75.47
stickystart "Accept_Piece_of_the_Past"
step
click Ranger Valarian##203390
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Read the Ranger Valarian Statue |q 25954/3 |goto Shimmering Expanse/0 39.74,67.69
step
click High Priestess Siralen##203391
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Read the High Priestess Siralen Statue |q 25954/4 |goto Shimmering Expanse/0 38.45,66.04
step
Scout the Tunnel West of Quel'Dormir Gardens |q 25955/2 |goto Shimmering Expanse/0 35.83,62.91
step
click Queen Azshara##203388
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Read the Queen Azshara Statue |q 25954/2 |goto Shimmering Expanse/0 38.62,58.96
step
click Lestharia Vashj##203386
|tip It looks like a small silver plaque on the side of a statue on the sea floor.
Read the Lestharia Vashj Statue |q 25954/1 |goto Shimmering Expanse/0 39.66,58.96
step
Scout the Northern Quel'Dormir Gardens |q 25955/1 |goto Shimmering Expanse/0 39.16,57.53
step
label "Accept_Piece_of_the_Past"
kill Azsh'ir Patroller##39638+
|tip They look like nagas.
collect Ancient Elven Etching##62282 |n
use Ancient Elven Etching##62282
accept Piece of the Past##27717 |goto Shimmering Expanse/0 40.90,62.20
step
label "Destroy_Azshir_Monitors"
kill Azsh'ir Monitor##40877+
|tip They look like green eyeballs floating above pedastals.
Destroy #8# Azsh'ir Monitors |q 25953/1 |goto Shimmering Expanse/0 40.22,69.68
step
label "Kill_Azshir_Patrollers"
kill 10 Azsh'ir Patroller##39638 |q 25952/1 |goto Shimmering Expanse/0 40.22,69.68
|tip They look like nagas.
step
Enter the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk
talk Elendri Goldenbrow##40920
|tip Inside the underwater cave.
turnin An Occupation of Time##25954 |goto Shimmering Expanse/0 51.26,62.42
turnin Piece of the Past##27717 |goto Shimmering Expanse/0 51.26,62.42
step
talk Captain Vilethorn##40916
|tip Inside the underwater cave.
turnin Caught Off-Guard##25952 |goto Shimmering Expanse/0 51.19,62.99
turnin A Better Vantage##25955 |goto Shimmering Expanse/0 51.19,62.99
turnin Upon the Scene of Battle##25956 |goto Shimmering Expanse/0 51.19,62.99
step
talk Legionnaire Nazgrim##40917
|tip Inside the underwater cave.
turnin Swift Approach##25953 |goto Shimmering Expanse/0 51.24,63.02
step
talk Wavespeaker Tulra##40919
|tip Inside the underwater cave.
accept Visions of the Past: The Invasion of Vashj'ir##25957 |goto Shimmering Expanse/0 51.23,62.94
step
Leave the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk |only if subzone("Legion's Rest")
use the Blade of the Naz'jar Battlemaiden##55171
|tip Use it near the Vision of the Battle Maiden.
|tip It looks like a sparkling light.
Become a Naz'jar Battlemaiden |invehicle |goto Shimmering Expanse/0 40.49,75.56 |q 25957
step
talk Fathom-Stalker Azjentus##40978
accept Reoccupation##25619 |goto Shimmering Expanse/0 40.56,75.27
step
kill Kvaldir Marauder##39602, Kvaldir Deepwalker##41107
|tip They look like large humans.
|tip Use the abilities on your action bar.
Slay #10# Kvaldir Defenders |q 25619/1 |goto Shimmering Expanse/0 40.42,73.36
step
talk Fathom-Stalker Azjentus##40978
turnin Reoccupation##25619 |goto Shimmering Expanse/0 40.56,75.27
accept The Revered Lady##25620 |goto Shimmering Expanse/0 40.56,75.27
step
talk Lady Naz'jar##40640
turnin The Revered Lady##25620 |goto Shimmering Expanse/0 39.40,58.97
accept To the Fathom-Lord's Call##25637 |goto Shimmering Expanse/0 39.40,58.97
step
talk Sira'kess Tide Priestess##41050
|tip She fights around this area.
accept Built to Last##25658 |goto Shimmering Expanse/0 38.99,58.59
stickystart "Slay_Kvaldir_Invaders_On_The_Terrace"
step
click Nar'shola Ward##203185+
|tip They look like stone bowls with blue water in them.
|tip On the middle level of the ruins.
Activate #6# Nar'shola Wards |q 25658/1 |goto Shimmering Expanse/0 35.50,67.50
step
label "Slay_Kvaldir_Invaders_On_The_Terrace"
kill Kvaldir Pillager##41102, Kvaldir Plunderer##41108, Kvaldir Wasteroamer##41106
|tip They look like large humans.
|tip On the middle level of the ruins. |notinsticky
Slay #16# Kvladir Invaders on the Terrace |q 25637/1 |goto Shimmering Expanse/0 35.50,67.50
step
talk Sira'kess Tide Priestess##41050
|tip She fights around this area.
turnin Built to Last##25658 |goto Shimmering Expanse/0 38.99,58.59
step
talk Fathom-Lord Zin'jatar##41049
|tip He fights around this area.
|tip On the middle level of the ruins.
turnin To the Fathom-Lord's Call##25637 |goto Shimmering Expanse/0 36.42,78.66
accept Not Soon Forgotten##25659 |goto Shimmering Expanse/0 36.42,78.66
step
kill Varkul the Unrelenting##41115 |q 25659/1 |goto Shimmering Expanse/0 28.57,78.62
|tip On the middle level of the ruins.
|tip If you get low on health, swim upward until you leave combat, and you will heal.
step
_Click the Complete Quest Box:_
turnin Not Soon Forgotten##25659
step
talk Wavespeaker Valoren##39881
turnin Visions of the Past: The Invasion of Vashj'ir##25957 |goto Shimmering Expanse/0 40.59,75.04
accept Looking Forward##25958 |goto Shimmering Expanse/0 40.59,75.04
step
clicknpc Tamed Seahorse##48836
Begin Riding the Tamed Seahorse |invehicle |goto Shimmering Expanse/0 40.59,74.94 |q 25958
step
Travel to the Ruins of Vashj'ir |outvehicle |goto Shimmering Expanse/0 39.58,54.73 |q 25958 |notravel
step
talk Captain Vilethorn##40916
|tip He walks around this area.
|tip Inside the building.
turnin Looking Forward##25958 |goto Shimmering Expanse/0 39.75,53.95
accept Clear Goals##25959 |goto Shimmering Expanse/0 39.75,53.95
step
talk Legionnaire Nazgrim##40917
|tip Inside the building.
accept Not Entirely Unprepared##25960 |goto Shimmering Expanse/0 39.54,54.04
step
talk Fiasco Sizzlegrin##40918
accept Properly Inspired##25962 |goto Shimmering Expanse/0 39.47,54.68
stickystart "Collect_Bloated_Kelp_Bulbs"
step
use the Box of Crossbow Bolts##56247
|tip Use it on Horde Lookouts.
|tip They look like friendly NPCs riding seahorses or standing up in the middle of the pillars.
Restock #8# Horde Lookouts |q 25960/1 |goto Shimmering Expanse/0 39.10,55.60
step
label "Collect_Bloated_Kelp_Bulbs"
click Bloated Kelp Bulb##203209+
|tip They look like large round yellow fruit on the huge leafy vines that hang from the ceiling.
collect 8 Bloated Kelp Bulb##55965 |q 25962/1 |goto Shimmering Expanse/0 37.19,78.30
step
kill Azsh'ir Infantry##41227, Azsh'ir Abyss Priestess##42453, Naz'jar Serpent Guard##41228
|tip They look like nagas.
Slay #10# Southern Naga Forces |q 25959/1 |goto Shimmering Expanse/0 36.68,82.31
step
talk Fiasco Sizzlegrin##40918
turnin Properly Inspired##25962 |goto Shimmering Expanse/0 39.47,54.68
step
talk Legionnaire Nazgrim##40917
|tip Inside the building.
turnin Not Entirely Unprepared##25960 |goto Shimmering Expanse/0 39.54,54.04
step
talk Captain Vilethorn##40916
|tip He walks around this area.
|tip Inside the building.
turnin Clear Goals##25959 |goto Shimmering Expanse/0 39.75,53.95
accept Swift Action##25963 |goto Shimmering Expanse/0 39.75,53.95
step
talk Fiasco Sizzlegrin##40918
Select _"I'm ready to begin the assault on the terrace."_ |gossip 112289
Speak to Fiasco Sizzlegrin |q 25963/1 |goto Shimmering Expanse/0 39.47,54.68
step
Begin the Assault on the Terrace |invehicle |goto Shimmering Expanse/0 32.91,69.23 |q 25963
step
_As You Ride the Tamed Seahorse:_
|tip Use the ability on your action bar on the enemies on the ground around this area.
kill 100 Azsh'ir Solider##41249 |q 25963/2
kill 20 Wave Screamer##41250 |q 25963/3
kill 12 Azsh'ir Archaean##42549 |q 25963/4
step
Travel to Captain Vilethorn |outvehicle |goto Shimmering Expanse/0 39.05,78.25 |q 25963 |notravel
step
talk Captain Vilethorn##40916
turnin Swift Action##25963 |goto Shimmering Expanse/0 39.11,78.70
accept Gauging Success##25965 |goto Shimmering Expanse/0 39.11,78.70
step
talk Legionnaire Nazgrim##40917
accept Fallen But Not Forgotten##25964 |goto Shimmering Expanse/0 39.08,78.53
step
Scout the Tunnel to the North |q 25965/1 |goto Shimmering Expanse/0 34.16,67.65
step
Scout the Northwestern Terrace |q 25965/2 |goto Shimmering Expanse/0 31.10,71.80
step
talk Injured Assault Volunteer##41281+
|tip They look like friendly NPCs laying on the ground.
Select _"The way to the rendevous point is mostly clear. You should get moving."_ |gossip 112245
Rescue #6# Injured Assault Volunteers |q 25964/1 |goto Shimmering Expanse/0 37.23,78.68
step
talk Captain Vilethorn##40916
turnin Gauging Success##25965 |goto Shimmering Expanse/0 39.11,78.70
step
talk Legionnaire Nazgrim##40917
turnin Fallen But Not Forgotten##25964 |goto Shimmering Expanse/0 39.08,78.53
step
talk Wavespeaker Tulra##40919
accept Visions of the Past: The Slaughter of Biel'aran Ridge##25966 |goto Shimmering Expanse/0 39.15,78.61
step
use the Blade of the Naz'jar Battlemaiden##55171
|tip Use it near the Vision of the Battle Maiden.
|tip It looks like a sparkling light.
Become a Naz'jar Battlemaiden |invehicle |goto Shimmering Expanse/0 28.94,78.64 |q 25966
step
talk Lady Naz'jar##42076
accept By Her Lady's Word##25858 |goto Shimmering Expanse/0 29.00,78.44
step
talk Fathom-Lord Zin'jatar##42072
Select _"I am to hunt the Crucible of Nazsharin. Do you have warriors to assist me?"_ |gossip 112274
Speak to Fathom-Lord Zin'jatar |q 25858/1 |goto Shimmering Expanse/0 34.42,78.65
step
talk Overseer Idra'kess##41455
Select _"I am to hunt the Crucible of Nazsharin. Do you have warriors to assist me?"_ |gossip 112275
Speak to Overseer Idra'kess |q 25858/3 |goto Shimmering Expanse/0 36.84,79.75
step
talk Lady Sira'kess##42071
Select _"I am to hunt the Crucible of Nazsharin. Do you have warriors to assist me?"_ |gossip 112276
Speak to Lady Sira'kess |q 25858/2 |goto Shimmering Expanse/0 39.22,77.99
step
talk Fathom-Stalker Azjentus##42074
|tip Up on the cliff.
turnin By Her Lady's Word##25858 |goto Shimmering Expanse/0 46.20,79.54
accept No Trespass Forgiven##25859 |goto Shimmering Expanse/0 46.20,79.54
step
talk Naz'jar Honor Guard##41476
accept Stolen Property##25862 |goto Shimmering Expanse/0 46.33,78.58
stickystart "Slay_Vrykul_Ledge_Kvaldir"
step
click Crucible of Nazsharin##203305
turnin Stolen Property##25862 |goto Shimmering Expanse/0 57.24,89.91
accept Chosen Burden##25863 |goto Shimmering Expanse/0 57.24,89.91
step
talk Executioner Verathress##41457
accept Setting An Example##25861 |goto Shimmering Expanse/0 57.16,85.18
step
Impale a Kvaldir High-Shaman
|tip Inside the building.
|tip Use the "Impaling Pull" ability on your action bar on the Kvaldir High-Shaman.
|tip Don't fight him, just get him to start attacking you.
|tip You will be bringing him to another location.
Click Here Once the Kvaldir High-Shaman is Attacking You |confirm |goto Shimmering Expanse/0 55.57,86.37 |q 25861
step
Bring a Kvaldir High-Shaman to the Executioner |q 25861/1 |goto Shimmering Expanse/0 57.16,85.18
step
talk Executioner Verathress##41457
turnin Setting An Example##25861 |goto Shimmering Expanse/0 57.16,85.18
step
label "Slay_Vrykul_Ledge_Kvaldir"
kill Kvaldir Limbripper##41105, Kvaldir Sandterror##41451
|tip They look like large humans.
Slay #20# Vrykul Ledge Kvaldir |q 25859/1 |goto Shimmering Expanse/0 57.06,87.20
step
talk Lady Naz'jar##42076
turnin Chosen Burden##25863 |goto Shimmering Expanse/0 46.39,79.04
step
talk Fathom-Stalker Azjentus##42074
turnin No Trespass Forgiven##25859 |goto Shimmering Expanse/0 46.44,79.27
step
talk Lady Naz'jar##42076
accept The Culmination of Our Efforts##26191 |goto Shimmering Expanse/0 46.39,79.04
Witness the Continuing Story of the Battlemaiden |q 25966/1 |goto Shimmering Expanse/0 46.39,79.04
step
talk Wavespeaker Valoren##39881
|tip On the middle tier of the ruins.
turnin Visions of the Past: The Slaughter of Beth'mora##25966 |goto Shimmering Expanse/0 29.56,78.94
accept Losing Ground##25967 |goto Shimmering Expanse/0 29.56,78.94
step
clicknpc Tamed Seahorse##48866
|tip On the middle level of the ruins.
Begin Riding the Tamed Seahorse |invehicle |goto Shimmering Expanse/0 29.52,79.01 |q 25967
step
Return to the Forward Post |q 25967/1 |goto Shimmering Expanse/0 39.57,54.52 |notravel
step
Travel to Legion's Rest |outvehicle |goto Shimmering Expanse/0 50.63,63.43 |q 25967 |notravel
step
talk Legionnaire Nazgrim##40917
|tip Inside the underwater cave.
turnin Losing Ground##25967 |goto Shimmering Expanse/0 51.21,63.00
accept Desperate Plan##25968 |goto Shimmering Expanse/0 51.21,63.00
step
Leave the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk |only if subzone("Legion's Rest")
talk Fiasco Sizzlegrin##41770
turnin Desperate Plan##25968 |goto Shimmering Expanse/0 50.34,78.99
accept Come Prepared##25970 |goto Shimmering Expanse/0 50.34,78.99
accept Unfurling Plan##25971 |goto Shimmering Expanse/0 50.34,78.99
step
talk Bloodguard Toldrek##40921
accept Hostile Waters##25969 |goto Shimmering Expanse/0 50.40,79.03
stickystart "Kill_Muckskin_Scroungers"
step
click Horde Survival Kit##203409
|tip It looks like a wooden crate.
|tip On the deck of the ship.
|tip It can spawn in other locations inside this ship, so search around if it's not here.
collect Horde Survival Kit##56251 |q 25970/1 |goto Shimmering Expanse/0 48.49,84.17
step
label "Kill_Muckskin_Scroungers"
kill 10 Muckskin Scrounger##41566 |q 25969/1 |goto Shimmering Expanse/0 48.80,83.63
|tip They look like goblins.
step
kill Kvaldir Fleshcarver##41569, Kvaldir Seahorror##41606
|tip They look like large humans.
click Coil of Kvaldir Rope##203312+
|tip They look like rope wound up around a small stump of wood.
collect 8 Coil of Kvaldir Rope##56183 |q 25971/1 |goto Shimmering Expanse/0 57.23,87.18
step
talk Fiasco Sizzlegrin##41770
turnin Come Prepared##25970 |goto Shimmering Expanse/0 50.34,78.99
turnin Unfurling Plan##25971 |goto Shimmering Expanse/0 50.34,78.99
turnin Hostile Waters##25969 |goto Shimmering Expanse/0 50.34,78.99
accept Honor and Privilege##25972 |goto Shimmering Expanse/0 50.34,78.99
step
Swim Up to the Rescue Balloon on the Surface |q 25972/1 |goto Shimmering Expanse/0 50.46,79.20
|tip It's up at the surface of the water.
step
click Survival Kit Remnants##203410
collect Rescue Flare##56188 |goto Shimmering Expanse/0 50.40,79.08 |q 25972
step
use Rescue Flare##56188
Fire a Rescue Flare Towards the Horde Ships |q 25972/2 |goto Shimmering Expanse/0 50.40,79.08
step
talk Bloodguard Toldrek##40921
turnin Honor and Privilege##25972 |goto Shimmering Expanse/0 50.43,79.07
accept Welcome News##25973 |goto Shimmering Expanse/0 50.43,79.07
step
talk Legionnaire Nazgrim##40917
|tip Inside the underwater cave.
turnin Welcome News##25973 |goto Shimmering Expanse/0 51.21,63.00
step
talk Wavespeaker Tulra##40919
|tip Inside the underwater cave.
accept Visions of the Past: Rise from the Deep##26135 |goto Shimmering Expanse/0 51.61,62.75
step
Leave the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk |only if subzone("Legion's Rest")
Enter the building |goto Shimmering Expanse/0 33.11,76.64 < 15 |walk
Infiltrate the Quel'Dormir Temple |q 26135/1 |goto Shimmering Expanse/0 33.10,77.81
|tip Inside the building.
|tip At the top of the ruins.
step
use the Blade of the Naz'jar Battlemaiden##55171
|tip Use it near the Vision of the Battle Maiden.
|tip It looks like a sparkling light.
|tip Upstairs inside the building.
Become a Naz'jar Battlemaiden |invehicle |goto Shimmering Expanse/0 33.10,77.81 |q 26135
step
talk Lady Sira'kess##41456
|tip Upstairs inside the building.
accept Devout Assembly##25896 |goto Shimmering Expanse/0 33.12,77.91
step
talk Lady Naz'jar##42077
accept Her Lady's Hand##25629 |goto Shimmering Expanse/0 33.13,75.90
stickystart "Gather_Sirakess_Tide_Priestesses"
stickystart "Relieve_Nazjar_Honor_Guards"
step
talk Fathom-Caller Azrajar##41980
Select _"Yes, Fathom-Caller. The Mistress awaits."_ |gossip 112331
Gather Fathom-Caller Azrajar |q 25896/2 |goto Shimmering Expanse/0 33.07,60.96
step
label "Gather_Sirakess_Tide_Priestesses"
talk Sira'kess Tide Priestess##41985+
|tip They look like nagas inside pink bubbles.
Gather #6# Sira'kess Tide Priestesses |q 25896/1 |goto Shimmering Expanse/0 33.08,72.44
step
label "Relieve_Nazjar_Honor_Guards"
kill Kvaldir Bonesnapper##42057, Kvaldir Reckoner##41995
|tip They look like large humans.
|tip Kill the ones fighting Naz'jar Honor Guard nagas.
Relieve #8# Naz'jar Honor Guards |q 25629/1 |goto Shimmering Expanse/0 33.08,72.44
step
talk Lady Naz'jar##42077
turnin Her Lady's Hand##25629 |goto Shimmering Expanse/0 33.13,75.90
step
talk Lady Sira'kess##41456
|tip Upstairs inside the building.
turnin Devout Assembly##25896 |goto Shimmering Expanse/0 33.12,77.91
accept At All Costs##25860 |goto Shimmering Expanse/0 33.12,77.91
step
kill Kvaldir Bonesnapper##42057, Kvaldir Sandreaper##42058
|tip Inside the building.
Slay #20# Attacking Kvaldir |q 25860/1 |goto Shimmering Expanse/0 33.07,78.53
step
talk Lady Sira'kess##41456
|tip Upstairs inside the building.
turnin At All Costs##25860 |goto Shimmering Expanse/0 33.12,77.91
accept Final Judgement##25951 |goto Shimmering Expanse/0 33.12,77.91
step
kill Kvaldir Fearweaver##42062, Kvaldir Skinflayer##42060
|tip They look like large humans.
Hold the Eastern End of Quel'Dormir Terrace |q 25951/1 |goto Shimmering Expanse/0 38.35,78.56
step
kill Hagrim Hopebreaker##42063
|tip He swims to this location.
|tip Help your allies kill the other Kvaldir enemies and they will push forward and help you fight him.
Push the Kvaldir Back Across the Bridge |q 25951/2 |goto Shimmering Expanse/0 43.12,78.49
step
talk Lady Naz'jar##42077
turnin Final Judgement##25951 |goto Shimmering Expanse/0 42.50,78.62
Witness the Concluding Story of the Battlemaiden |q 26135/2 |goto Shimmering Expanse/0 42.50,78.62
step
Enter the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk
talk Wavespeaker Tulra##40919
|tip Inside the underwater cave.
turnin Visions of the Past: Rise from the Deep##26135 |goto Shimmering Expanse/0 51.61,62.75
accept A Breath of Fresh Air##26006 |goto Shimmering Expanse/0 51.61,62.75
step
Leave the underwater cave |goto Shimmering Expanse/0 49.71,64.51 < 30 |walk |only if subzone("Legion's Rest")
talk Swift Seahorse##43293
|tip On the surface of the water.
fpath Stygian Bounty##612 |goto Shimmering Expanse/0 49.47,65.55
step
talk Legionnaire Nazgrim##42410
|tip Click the Rope Ladder to get up onto the ship.
turnin A Breath of Fresh Air##26006 |goto Shimmering Expanse/0 49.64,66.44
accept Full Circle##26221 |goto Shimmering Expanse/0 49.64,66.44
step
talk Brogdul##43225
|tip At the top of the ship.
fpath Stygian Bounty##610 |goto Shimmering Expanse/0 50.23,65.49
step
Board the Verne Once it Arrives |q 26221/1 |goto Shimmering Expanse/0 50.05,66.93
|tip You may have a to wait a few minutes for it to arrive.
|tip Jump onto the ship once it arrives, walk inside the ship through the open door, and wait for it to start moving.
|tip The goal will complete when the ship starts to move.
step
Watch the dialogue
Secure Tenebrous Cavern |q 26221/2
step
Watch the dialogue
Reach Tenebrous Cavern |condition subzone("Tenebrous Cavern") |q 26221
step
talk Captain "Jewels" Verne##41663
|tip Inside the underwater cave.
turnin Full Circle##26221 |goto Abyssal Depths/0 51.42,61.52
step
talk Fiasco Sizzlegrin##41669
|tip Inside the underwater cave.
accept Environmental Awareness##26122 |goto Abyssal Depths/0 51.46,60.77
step
talk Innkeeper Nerius##43141
|tip Inside the underwater cave.
home Tenebrous Cavern |goto Abyssal Depths/0 51.24,60.53 |q 26122
step
talk Swift Seahorse##40873
|tip Inside the underwater cave.
fpath Tenebrous Cavern |goto Abyssal Depths/0 53.87,59.62
stickystart "Collect_Terrapin_Oil"
stickystart "Collect_Remora_Oil"
stickystart "Collect_Hammerhead_Oil"
step
Leave the underwater cave |goto Abyssal Depths/0 58.08,57.21 < 50 |walk |only if subzone("Tenebrous Cavern")
kill Alliance Sea-Scout##42114+
|tip They look like various humanoid divers.
accept Secure Seabrush##26124 |goto Abyssal Depths/0 54.99,43.50
|tip You will automatically accept this quest.
step
kill 7 Alliance Sea-Scout##42114 |q 26124/1 |goto Abyssal Depths/0 54.99,43.50
|tip They look like various humanoid divers.
You can find more around [47.77,43.38]
step
label "Collect_Terrapin_Oil"
kill Seabrush Terrapin##42108+
|tip They look like turtles.
|tip Up above the underwater cave.
use the Oil Extrusion Pump##56821
|tip Use it on their corpses.
collect 4 Terrapin Oil##56818 |q 26122/1 |goto Abyssal Depths/0 54.99,43.50
You can find more around [47.77,43.38]
step
label "Collect_Remora_Oil"
kill Scourgut Remora##42112+
|tip They look like large grey fish.
use the Oil Extrusion Pump##56821
|tip Use it on their corpses.
collect 4 Remora Oil##56819 |q 26122/2 |goto Abyssal Depths/0 54.99,43.50
You can find more around [47.77,43.38]
step
label "Collect_Hammerhead_Oil"
kill Spinescale Hammerhead##42113+
|tip They look like hammerhead sharks.
use the Oil Extrusion Pump##56821
|tip Use it on their corpses.
collect 4 Hammerhead Oil##56820 |q 26122/3 |goto Abyssal Depths/0 54.99,43.50
You can find more around [47.77,43.38]
step
Enter the underwater cave |goto Abyssal Depths/0 58.08,57.21 < 50 |walk
talk Fiasco Sizzlegrin##41669
|tip Inside the underwater cave.
turnin Environmental Awareness##26122 |goto Abyssal Depths/0 51.46,60.77
accept The Perfect Fuel##26126 |goto Abyssal Depths/0 51.46,60.77
step
talk Blood Guard Toldrek##41668
|tip Inside the underwater cave.
turnin Secure Seabrush##26124 |goto Abyssal Depths/0 51.53,60.76
step
click Fuel Sampling Station##203461
|tip Inside the underwater cave.
Choose _"Let's get started!"_ |gossip 112341
|tip Choose "Hammerhead Oil Sample" 3 Times.
|tip Choose "Remora Oil Sample" 2 Times.
Select _"Hammerhead Oil Sample"_ |gossip 112363
Select _"Hammerhead Oil Sample"_ |gossip 112344
Select _"Hammerhead Oil Sample"_ |gossip 112348
Select _"Remora Oil Sample"_ |gossip 112351
Select _"Remora Oil Sample"_ |gossip 112355
Choose _"Mix the samples together!_" |gossip 112359
collect Promising Fuel Sample##56833 |q 26126 |goto Abyssal Depths/0 51.50,60.46
step
talk Fiasco Sizzlegrin##41669
|tip Inside the underwater cave.
Select _"Here, I made a Promising Fuel Sample. Three parts hammerhead and two parts remora."_ |gossip 112305
Create the Perfect Bio-fuel |q 26126/1 |goto Abyssal Depths/0 51.46,60.77
step
talk Fiasco Sizzlegrin##41669
|tip Inside the underwater cave.
turnin The Perfect Fuel##26126 |goto Abyssal Depths/0 51.46,60.77
step
talk Captain "Jewels" Verne##41663
|tip Inside the underwater cave.
accept Orako##26086 |goto Abyssal Depths/0 51.42,61.52
step
Leave the underwater cave |goto Abyssal Depths/0 58.08,57.21 < 50 |walk |only if subzone("Tenebrous Cavern")
talk Orako##41908
turnin Orako##26086 |goto Abyssal Depths/0 42.86,51.03
accept "Glow-Juice"##26087 |goto Abyssal Depths/0 42.86,51.03
step
kill Pyreshell Scuttler##41922, Luxscale Grouper##41923
|tip Only beast enemies will drop the quest item.
collect 6 Glow-Juice##56573 |q 26087/1 |goto Abyssal Depths/0 44.06,59.24
step
talk Orako##41908
turnin "Glow-Juice"##26087 |goto Abyssal Depths/0 42.86,51.03
accept Here Fishie Fishie##26088 |goto Abyssal Depths/0 42.86,51.03
accept Die Fishman Die##26089 |goto Abyssal Depths/0 42.86,51.03
stickystart "Kill_Coldlight_Hunters"
stickystart "Kill_Coldlight_Oracles"
stickystart "Collect_Underlight_Nibblers"
step
kill Coldlight Hunter##41925, Coldlight Oracle##41926
|tip They look like murlocs.
collect Enormous Eel Egg##56812 |n
use the Enormous Eel Egg##56812
accept I Brought You This Egg##26090 |goto Abyssal Depths/0 45.19,59.62
step
label "Kill_Coldlight_Hunters"
kill 4 Coldlight Hunter##41925 |q 26089/1 |goto Abyssal Depths/0 45.19,59.62
|tip They look like larger purple or brown murlocs.
step
label "Kill_Coldlight_Oracles"
kill 4 Coldlight Oracle##41926 |q 26089/2 |goto Abyssal Depths/0 45.19,59.62
|tip They look like smaller green or blue murlocs.
step
label "Collect_Underlight_Nibblers"
collect 30 Underlight Nibbler##56569 |q 26088/1 |goto Abyssal Depths/0 45.19,59.62
|tip They look like tiny fish that swim quickly.
|tip Get close to them to collect them.
|tip You can make them easier to see by going into the Interface menu, under the "Names" section, and choosing "All NPCs" under the "NPC Names" dropdown menu.
step
talk Orako##41908
turnin Here Fishie Fishie##26088 |goto Abyssal Depths/0 42.86,51.03
turnin Die Fishman Die##26089 |goto Abyssal Depths/0 42.86,51.03
turnin I Brought You This Egg##26090 |goto Abyssal Depths/0 42.86,51.03
accept Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo##26091 |goto Abyssal Depths/0 42.86,51.03
accept Orako's Report##26092 |goto Abyssal Depths/0 42.86,51.03
step
use the Eel-Splosive Device##56815
|tip Use it in the path of a Devious Great-Eel around this area.
|tip They look like large eels that swim around this area.
|tip Place the device so that they swim into it and become weakened and easier to kill.
kill Weakened Great-Eel##41927
Avenge Orako's Wolf |q 26091/2 |goto Abyssal Depths/0 44.73,58.15
step
talk Orako##41908
turnin Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo##26091 |goto Abyssal Depths/0 42.86,51.03
step
Enter the underwater cave |goto Abyssal Depths/0 58.08,57.21 < 50 |walk
talk Captain "Jewels" Verne##41663
|tip Inside the underwater cave.
turnin Orako's Report##26092 |goto Abyssal Depths/0 51.42,61.52
step
talk Sergeant Gertrude##41670
|tip Inside the underwater cave.
accept Sira'kess Slaying##25974 |goto Abyssal Depths/0 51.45,60.86
accept A Standard Day for Azrajar##25980 |goto Abyssal Depths/0 51.45,60.86
step
talk Fiasco Sizzlegrin##41669
|tip Inside the underwater cave.
accept Those Aren't Masks##25982 |goto Abyssal Depths/0 51.46,60.77
step
talk Bloodguard Toldrek##41668
|tip Inside the underwater cave.
accept Treasure Reclamation##25976 |goto Abyssal Depths/0 51.53,60.75
stickystart "Slay_Sirakess_Naga"
stickystart "Collect_Merciless_Heads"
step
Leave the underwater cave |goto Abyssal Depths/0 58.08,57.21 < 50 |walk |only if subzone("Tenebrous Cavern")
kill Fathom-Caller Azrajar##41590
use the Horde Standard##56255
|tip Use it on his corpse.
Plant the Banner in Fathom-Caller Azrajar's Corpse |q 25980/1 |goto Abyssal Depths/0 52.43,21.27
step
label "Slay_Sirakess_Naga"
kill Sira'kess Guardian##41586, Sira'kess Tide Priestess##41589, Sira'kess Sea Witch##41588
|tip They look like nagas.
Slay #10# Sira'kess Naga |q 25974/1 |goto Abyssal Depths/0 50.92,18.89
step
kill Deepfin Scrounger##41593+
|tip They look like goblins.
click Deepfin Plunder##203387+
|tip They look like treasure chests.
collect 6 Deepfin Plunder##56235 |q 25976/1 |goto Abyssal Depths/0 40.05,21.13
step
label "Collect_Merciless_Heads"
kill Merciless One##41601, Taken Gilblin##41729
|tip They look like octopuses with goblins and nagas.
|tip They will die at the same time when you kill the goblins.
collect 6 Merciless Head##56254 |q 25982/1 |goto Abyssal Depths/0 40.05,21.13
step
talk Bloodguard Toldrek##41668
|tip Inside the underwater cave.
turnin Treasure Reclamation##25976 |goto Abyssal Depths/0 51.53,60.75
step
talk Fiasco Sizzlegrin##41669
|tip Inside the underwater cave.
turnin Those Aren't Masks##25982 |goto Abyssal Depths/0 51.46,60.77
accept Put It On##25988 |goto Abyssal Depths/0 51.46,60.77
step
Watch the cutscene
Wear the Mindless One |q 25988/1 |goto Abyssal Depths/0 51.46,60.77
step
talk Fiasco Sizzlegrin##41669
|tip Inside the underwater cave.
turnin Put It On##25988 |goto Abyssal Depths/0 51.46,60.77
accept Promontory Point##25984 |goto Abyssal Depths/0 51.46,60.77
step
talk Sergeant Gertrude##41670
|tip Inside the underwater cave.
turnin Sira'kess Slaying##25974 |goto Abyssal Depths/0 51.45,60.86
turnin A Standard Day for Azrajar##25980 |goto Abyssal Depths/0 51.45,60.86
step
Leave the underwater cave |goto Abyssal Depths/0 58.08,57.21 < 50 |walk |only if subzone("Tenebrous Cavern")
talk Legionnaire Nazgrim##41636
|tip Up on the ledge.
turnin Promontory Point##25984 |goto Abyssal Depths/0 42.66,37.83
accept Clearing the Defiled##26071 |goto Abyssal Depths/0 42.66,37.83
accept The Wavespeaker##26057 |goto Abyssal Depths/0 42.66,37.83
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
accept Into the Totem##26072 |goto Abyssal Depths/0 42.69,37.91
step
talk Wavespeaker Tulra##41639
|tip Up on the ledge.
accept Scalding Shrooms##26096 |goto Abyssal Depths/0 42.73,37.93
stickystart "Slay_Defiled_Scalding_Chasm_Wildlife"
stickystart "Collect_Scalding_Shrooms"
step
use Erunak's Confinement Totem##56801
kill Faceless Defilers##41644+
|tip They look like large octopus people.
|tip Kill them next to the totems you place down on the sea floor.
Confine #5# Corrupting Faceless Energies |q 26072/1 |goto Abyssal Depths/0 40.43,39.15
step
label "Slay_Defiled_Scalding_Chasm_Wildlife"
kill Crushing Eel##41646, Deep Remora##41647, Chasm Stalker##41645
|tip Only beast enemies will count for the quest goal.
Slay #8# Defiled Scalding Chasm Wildlife |q 26071/1 |goto Abyssal Depths/0 40.43,39.15
step
label "Collect_Scalding_Shrooms"
click Scalding Shroom##203453+
|tip They look like large mushrooms with yellow caps and blue stalks.
collect 5 Scalding Shroom##56810 |q 26096/1 |goto Abyssal Depths/0 42.70,32.20
step
talk Legionnaire Nazgrim##41636
|tip Up on the ledge.
turnin Clearing the Defiled##26071 |goto Abyssal Depths/0 42.66,37.83
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
turnin Into the Totem##26072 |goto Abyssal Depths/0 42.69,37.91
step
talk Wavespeaker Tulra##41639
|tip Up on the ledge.
turnin Scalding Shrooms##26096 |goto Abyssal Depths/0 42.73,37.93
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
accept ... It Will Come##26111 |goto Abyssal Depths/0 42.69,37.91
step
click Stonespeaker's Luring Totem##203456
|tip On the sea floor.
Watch the dialogue
kill Ick'thys the Unfathomable##41648
collect The Brain of the Unfathomable##56822 |q 26111/1 |goto Abyssal Depths/0 46.95,28.01
step
talk Wavespeaker Valoren##41640
turnin The Wavespeaker##26057 |goto Abyssal Depths/0 52.60,27.82
accept Free Wil'hai##26065 |goto Abyssal Depths/0 52.60,27.82
step
use Valoren's Shrinkage Totem##57409
|tip Use it next to all 3 of the huge Tentacle Horrors.
kill Shrunken Tentacle Horror##41641+
|tip Kill all 3 of them.
Free Wil'hai |q 26065/1 |goto Abyssal Depths/0 56.09,27.93
step
talk Wavespeaker Valoren##41640
turnin Free Wil'hai##26065 |goto Abyssal Depths/0 52.60,27.82
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
turnin ... It Will Come##26111 |goto Abyssal Depths/0 42.68,37.91
accept Unplug L'ghorek##26130 |goto Abyssal Depths/0 42.68,37.91
step
talk Legionnaire Nazgrim##41636
|tip Up on the ledge.
accept Fiends from the Netherworld##26133 |goto Abyssal Depths/0 42.66,37.83
stickystart "Kill_Nether_Fiends"
step
kill Ur'Goz##41654 |q 26130/1 |goto Abyssal Depths/0 36.31,46.98
|tip Inside the underwater cave on the sea floor.
step
kill Sku'Bu##41655 |q 26130/2 |goto Abyssal Depths/0 34.58,54.51
|tip Inside the underwater cave on the sea floor.
step
kill Neph'Lahim##41656 |q 26130/3 |goto Abyssal Depths/0 29.59,52.97
|tip Inside the underwater cave on the sea floor.
step
label "Kill_Nether_Fiends"
kill 8 Nether Fiend##41650 |q 26133/1 |goto Abyssal Depths/0 32.37,50.42
|tip They look like shadowy aliens.
|tip Inside the underwater cave on the sea floor. |notinsticky
step
talk Legionnaire Nazgrim##41636
|tip Up on the ledge.
turnin Fiends from the Netherworld##26133 |goto Abyssal Depths/0 42.66,37.83
step
talk Erunak Stonespeaker##41600
|tip Up on the ledge.
turnin Unplug L'ghorek##26130 |goto Abyssal Depths/0 42.69,37.91
accept Communing with the Ancient##26140 |goto Abyssal Depths/0 42.69,37.91
step
Enter the pipe in the side of the wall |goto Abyssal Depths/0 36.61,42.02 < 15 |walk
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
turnin Communing with the Ancient##26140 |goto Abyssal Depths/0 38.46,45.33
accept Runestones of Binding##26141 |goto Abyssal Depths/0 38.46,45.33
accept Ascend No More!##26142 |goto Abyssal Depths/0 38.46,45.33
step
kill Twilight Champion##41652+
|tip They look like various humanoid enemies.
|tip Inside L'ghorek.
collect Twilight Cage Key##57118 |n
use the Twilight Cage Key##57118
accept Prisoners##26149 |goto Abyssal Depths/0 30.44,46.24
stickystart "Destroy_Ancient_Conduits"
stickystart "Collect_Runestones_Of_Binding"
stickystart "Rescue_Horde_Prisoners"
step
label "Destroy_Ancient_Conduits"
click Ancient Conduit##203699+
|tip They look like spinning metal machines with blue light shining up out of them.
|tip Inside L'ghorek. |notinsticky
|tip Follow the path next to the outer wall to reach this location.
Destroy #5# Ancient Conduits |q 26142/1 |goto Abyssal Depths/0 28.07,57.82
step
label "Collect_Runestones_Of_Binding"
kill Twilight Candidate##41657+
|tip They look like various humanoid enemies wearing robes.
|tip Inside L'ghorek. |notinsticky
collect 7 Runestone of Binding##57096 |q 26141/1 |goto Abyssal Depths/0 28.07,57.82
step
label "Rescue_Horde_Prisoners"
click Cage##188472+
|tip They looks like metal cages.
|tip Inside L'ghorek. |notinsticky
Rescue #5# Horde Prisoners |q 26149/1 |goto Abyssal Depths/0 28.07,57.82
step
_Click the Complete Quest Box:_
turnin Prisoners##26149 |goto Abyssal Depths/0 27.50,55.70
step
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
|tip Follow the path next to the outer wall to reach this location.
turnin Runestones of Binding##26141 |goto Abyssal Depths/0 38.46,45.33
turnin Ascend No More!##26142 |goto Abyssal Depths/0 38.46,45.33
accept Twilight Extermination##26154 |goto Abyssal Depths/0 38.46,45.33
step
use the Attuned Runestone of Binding##57172
|tip Use it on a Bound Torrent.
|tip They look like bone elementals.
|tip The groups of enemies won't attack you.
Possess a Bound Torrent |q 26154/1 |goto Abyssal Depths/0 34.83,54.02
stickystart "Kill_Faceless_Overseers"
step
kill 50 Twilight Devotee##42281 |q 26154/2 |goto Abyssal Depths/0 36.09,53.23
|tip Use the abilities on your action bar.
step
label "Kill_Faceless_Overseers"
kill 10 Faceless Overseer##42285 |q 26154/3 |goto Abyssal Depths/0 36.09,53.23
|tip Use the abilities on your action bar. |notinsticky
step
_Click the Complete Quest Box:_
turnin Twilight Extermination##26154
step
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
|tip Follow the path next to the outer wall to reach this location.
accept All That Rises##26143|goto Abyssal Depths/0 38.46,45.33
step
kill Hallazeal the Ascended##41659 |q 26143/1 |goto Abyssal Depths/0 33.09,55.78
|tip Inside the building, inside L'ghorek.
|tip Use the abilities on your action bar.
step
talk L'ghorek##42197
|tip It looks like a huge brain nearby.
|tip Inside L'ghorek.
turnin All that Rises##26143 |goto Abyssal Depths/0 38.46,45.33
accept Back to the Tenebrous Cavern##26182 |goto Abyssal Depths/0 38.46,45.33
step
talk Erunak Stonespeaker##41600
|tip Inside the cave.
turnin Back to the Tenebrous Cavern##26182 |goto Abyssal Depths/0 51.57,60.90
accept Defending the Rift##26194 |goto Abyssal Depths/0 51.57,60.90
step
talk Erunak Stonespeaker##41600
|tip Inside the underwater cave.
Travel to the Battle for the Abyssal Breach |condition subzone("Abyssal Breach") |goto Abyssal Depths/0 62.87,52.65 |q 26194
step
Watch the dialogue
|tip Follow your allies through the battle and help them fight.
Fight in the Battle for the Abyssal Breach |q 26194/1
step
talk Legionnaire Nazgrim##44540
turnin Defending the Rift##26194 |goto Abyssal Depths/0 69.76,34.41
step
_Destroy This Item:_
|tip It is no longer needed.
trash Merciless Head##56254
|only if itemcount(56254) > 0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",{
mopready=true,
next="Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",
startlevel=82.00,
},[[
step
talk Farseer Krogar##45244
|tip Up on the plateau.
accept The Maelstrom##27203 |goto Orgrimmar/1 50.47,38.37
step
click Portal to the Maelstrom##5231
Teleport to The Maelstrom |condition subzone("The Maelstrom") |goto Orgrimmar/1 50.05,37.81 |q 27203
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom/0 33.38,50.18
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom/0 33.38,50.18
step
clicknpc Wyvern##45005
Begin Traveling to Deepholm |invehicle |goto The Maelstrom/0 32.48,51.95 |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |condition zone("Deepholm") |q 27123
step
Watch the dialogue
Fly Through the Maelstrom to Deepholm |invehicle |q 27123
step
Watch the dialogue
Travel to Deepholm |outvehicle |goto Deepholm/0 49.88,54.72 |q 27123 |notravel
step
talk Earthcaller Yevaa##42573
|tip Inside the building.
accept Where's Goldmine?##26409 |goto Deepholm/0 49.49,53.35
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Deepholm, Realm of Earth##27123 |goto Deepholm/0 49.62,52.94
accept Gunship Down##26245 |goto Deepholm/0 49.62,52.94
step
talk Seer Kormo##43397
|tip Inside the building.
accept Elemental Energy##27136 |goto Deepholm/0 49.68,52.93
accept The Earth Claims All##26244 |goto Deepholm/0 49.68,52.93
step
talk Caretaker Nuunwa##45300
|tip He walks around this area.
|tip Inside the building.
home Temple of Earth |goto Deepholm/0 49.21,51.87 |q 26409 |future
step
talk Initiate Goldmine##42574
|tip Outside the building.
turnin Where's Goldmine?##26409 |goto Deepholm/0 46.52,57.29
accept Explosive Bonding Compound##26410 |goto Deepholm/0 46.52,57.29
accept Something that Burns##27135 |goto Deepholm/0 46.52,57.29
step
kill Rockslice Flayer##42606, Rockslice Ripper##42607
|tip They look like creatures with tails and huge claws for hands.
collect 5 Quartzite Resin##58501 |q 26410/1 |goto Deepholm/0 43.08,57.08
step
use the Depleted Totem##60835
kill Lodestone Elemental##43258, Energized Geode##43254
|tip Kill them next to the totems you place down.
Energize the Totem #8# Times |q 27136/1 |goto Deepholm/0 47.33,40.34
step
talk Seer Kormo##43397
|tip Inside the building.
turnin Elemental Energy##27136 |goto Deepholm/0 49.68,52.93
step
use Goldmines's Fire Totem##60834
|tip Use it while standing in red areas on the ground.
Watch the dialogue
kill Magmatooth##45099
collect The Burning Heart##60837 |q 27135/1 |goto Deepholm/0 52.15,58.62
step
talk Initiate Goldmine##42574
turnin Explosive Bonding Compound##26410 |goto Deepholm/0 46.52,57.29
turnin Something that Burns##27135 |goto Deepholm/0 46.52,57.29
accept Apply and Flash Dry##26411 |goto Deepholm/0 46.52,57.29
step
use the Explosive Bonding Compound##58502
|tip Use it on Flint Oremantle.
Apply the Explosive Bonding Compound |q 26411/1 |goto Deepholm/0 46.57,57.23
step
talk Initiate Goldmine##42574
turnin Apply and Flash Dry##26411 |goto Deepholm/0 46.52,57.29
accept Take Him to the Earthcaller##26413 |goto Deepholm/0 46.52,57.29
step
Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto Deepholm/0 49.49,53.35
|tip Inside the building.
step
talk Earthcaller Yevaa##42573
|tip Inside the building.
turnin Take Him to the Earthcaller##26413 |goto Deepholm/0 49.49,53.35
accept To Stonehearth's Aid##26484 |goto Deepholm/0 49.49,53.35
stickystart "Kill_Deepstone_Elementals"
step
clicknpc Slain Cannoneer##43032
Discover the Second Clue |q 26245/2 |goto Deepholm/0 56.07,74.17
step
clicknpc Unexploded Artillery Shell##43044
Discover the Third Clue |q 26245/3 |goto Deepholm/0 56.71,76.44
step
clicknpc Captain Skullshatter##43048
|tip Upstairs inside the ship.
Discover the First Clue |q 26245/1 |goto Deepholm/0 53.53,73.76
step
click Captain's Log##211413
|tip Upstairs inside the ship.
accept Captain's Log##26246 |goto Deepholm/0 53.58,73.77
step
label "Kill_Deepstone_Elementals"
kill 5 Deepstone Elemental##43026 |q 26244/1 |goto Deepholm/0 56.11,75.51
|tip They look like rock elementals.
step
talk Crag Rockcrusher##43071
turnin To Stonehearth's Aid##26484 |goto Deepholm/0 27.92,68.71
accept The Quaking Fields##27931 |goto Deepholm/0 27.92,68.71
step
talk Slate Quicksand##47195
turnin The Quaking Fields##27931 |goto Deepholm/0 30.65,77.73
accept The Axe of Earthly Sundering##27932 |goto Deepholm/0 30.65,77.73
accept Elemental Ore##27933 |goto Deepholm/0 30.65,77.73
stickystart "Collect_Elemental_Ore"
step
use The Ace of Earthly Sundering##60490
|tip Use it on Emerald Colossuses to weaken them.
|tip They look like large rock giants.
kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto Deepholm/0 34.61,77.79
'|clicknpc Emerald Colossus##44218
step
label "Collect_Elemental_Ore"
kill Jade Rager##44220+
|tip They look like rock elementals with blue crystal hands.
collect 6 Elemental Ore##60487 |q 27933/1 |goto Deepholm/0 34.61,77.79
You can find more around [39.25,83.93]
step
talk Slate Quicksand##47195
turnin The Axe of Earthly Sundering##27932 |goto Deepholm/0 30.65,77.73
turnin Elemental Ore##27933 |goto Deepholm/0 30.65,77.73
accept One With the Ground##27934 |goto Deepholm/0 30.65,77.73
step
talk Slate Quicksand##47195
Select _"Arch Geomancer, I am ready for the ritual."_ |gossip 113134
Begin Traveling to Avalanchion's Vault |invehicle |goto Deepholm/0 30.65,77.73 |q 27934
step
Complete the One With the Ground Ritual |q 27934/1 |goto Deepholm/0 47.12,90.17 |notravel
step
_Click the Complete Quest Box:_
turnin One With the Ground##27934
accept Bring Down the Avalanche##27935
step
kill Avalanchion##44372 |q 27935/1 |goto Deepholm/0 46.94,89.10
|tip Inside the cave.
step
Leave the cave |goto Deepholm/0 43.40,82.11 < 30 |walk |only if subzone("Avalanchion's Vault") and indoors()
talk Crag Rockcrusher##43071
turnin Bring Down the Avalanche##27935 |goto Deepholm/0 27.92,68.71
accept Stonefather's Boon##26499 |goto Deepholm/0 27.92,68.71
step
talk Earthbreaker Dolomite##43160
accept We're Surrounded##26500 |goto Deepholm/0 28.21,69.62
stickystart "Kill_Stone_Trogg_Ambushers"
step
use Stonefather's Banner##58884
|tip Use it near Stone Hearth Defenders.
|tip They look like grey dwarves.
Grant #12# Stonefather's Boon |q 26499/1 |goto Deepholm/0 28.87,71.19
'|clicknpc Stonehearth Defender##43138
step
label "Kill_Stone_Trogg_Ambushers"
kill 12 Stone Trogg Ambusher##43134 |q 26500/1 |goto Deepholm/0 28.87,71.19
|tip They look like troggs.
step
talk Earthbreaker Dolomite##43160
turnin We're Surrounded##26500 |goto Deepholm/0 28.21,69.62
accept Thunder Stones##26502 |goto Deepholm/0 28.21,69.62
step
talk Crag Rockcrusher##43071
turnin Stonefather's Boon##26499 |goto Deepholm/0 27.92,68.71
accept Sealing the Way##26501 |goto Deepholm/0 27.92,68.71
stickystart "Collect_Thunder_Stones"
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Shrine |q 26501/4 |goto Deepholm/0 27.30,67.80
'|clicknpc Earthen Geomancer##43170
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Barracks |q 26501/3 |goto Deepholm/0 25.98,68.78
'|clicknpc Earthen Geomancer##43170
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Inn |q 26501/2 |goto Deepholm/0 26.16,69.85
'|clicknpc Earthen Geomancer##43170
step
use the Rockslide Reagent##58885
|tip Use it on the Earthen Geomancer.
|tip Kill the enemies attacking him first.
Seal the Armory |q 26501/1 |goto Deepholm/0 27.31,70.13
'|clicknpc Earthen Geomancer##43170
step
label "Collect_Thunder_Stones"
click Thunder Stone##204348+
|tip They look like blue round spikey rocks.
collect 12 Thunder Stone##58886 |q 26502/1 |goto Deepholm/0 26.79,69.42
step
talk Gravel Longslab##43168
turnin Sealing the Way##26501 |goto Deepholm/0 24.52,62.42
accept Shatter Them!##26537 |goto Deepholm/0 24.52,62.42
step
talk Clay Mudaxle##43169
turnin Thunder Stones##26502 |goto Deepholm/0 24.75,62.19
accept Fixer Upper##26564 |goto Deepholm/0 24.75,62.19
step
talk Earthmender Deepvein##43319
accept Battlefront Triage##26591 |goto Deepholm/0 24.61,62.19
stickystart "Collect_Catapult_Parts"
stickystart "Slay_Fractured_Battlefront_Stone_Troggs"
step
use Deepvein's Patch Kit##58965
|tip Use it on Injured Earthens.
|tip They look like dwarves laying on the ground.
Patch Up #10# Injured Earthen |q 26591/1 |goto Deepholm/0 23.23,60.07
'|clicknpc Injured Earthen##43229
step
label "Collect_Catapult_Parts"
click Catapult Part##205208+
|tip They look various large grey stone objects.
collect 6 Catapult Part##58944 |q 26564/1 |goto Deepholm/0 23.23,60.07
step
label "Slay_Fractured_Battlefront_Stone_Troggs"
kill Needlerock Rider##43250, Stone Trogg Geomancer##43234, Stone Trogg Berserker##43228
|tip They look like troggs.
Slay #12# Fractured Battlefront Stone Troggs |q 26537/1 |goto Deepholm/0 23.23,60.07
step
talk Gravel Longslab##43168
turnin Shatter Them!##26537 |goto Deepholm/0 24.52,62.42
step
talk Earthmender Deepvein##43319
turnin Battlefront Triage##26591 |goto Deepholm/0 24.61,62.19
step
talk Clay Mudaxle##43169
turnin Fixer Upper##26564 |goto Deepholm/0 24.75,62.19
step
talk Gravel Longslab##43168
accept Troggzor the Earthinator##26625 |goto Deepholm/0 24.52,62.42
step
kill Troggzor the Earthinator##43456
collect The Earthinator's Cudgel##59144 |q 26625/1 |goto Deepholm/0 22.58,56.90
step
talk Gravel Longslab##43168
turnin Troggzor the Earthinator##26625 |goto Deepholm/0 24.52,62.42
step
talk Clay Mudaxle##43169
accept Rush Delivery##27126 |goto Deepholm/0 24.75,62.19
step
talk Peak Grindstone##45043
turnin Rush Delivery##27126 |goto Deepholm/0 20.71,61.58
accept Close Escort##26632 |goto Deepholm/0 20.71,61.58
step
talk Peak Grindstone##45043
Select _"Peak, I'm ready to escort the catapult."_ |gossip 112623
Begin Escorting the Earthen Catapult |goto Deepholm/0 20.71,61.58 > 10 |c |q 26632
|tip Follow the catapult as it drives.
step
Kill the enemies that attack in waves
|tip Follow the catapult and protect it as it drives.
|tip Stay near the catapult, or it will stop.
|tip It eventually drives to this location.
Safely Escort the Earthen Catapult |q 26632/1 |goto Deepholm/0 21.46,52.30
'|clicknpc Earthen Catapult##43509
step
talk Pyrium Lodestone##43897
turnin Close Escort##26632 |goto Deepholm/0 22.67,52.02
accept Keep Them off the Front##26755 |goto Deepholm/0 22.67,52.02
step
clicknpc Earthen Catapult##43509
kill Stone Trogg Reinforcement##43960, Fungal Terror##43954
Bombard #30# Reinforcements |q 26755/1 |goto Deepholm/0 22.27,51.91
step
talk Pyrium Lodestone##43897
turnin Keep Them off the Front##26755 |goto Deepholm/0 22.67,52.02
accept Reactivate the Constructs##26762 |goto Deepholm/0 22.67,52.02
step
talk Flint Oremantle##43898
accept Mystic Masters##26770 |goto Deepholm/0 22.77,52.10
stickystart "Kill_Needlerock_Mystics"
step
clicknpc Deactivated War Construct##43984+
|tip They look like metal golems.
Reactivate #5# Deactivated War Constructs |q 26762/1 |goto Deepholm/0 22.87,46.93
step
label "Kill_Needlerock_Mystics"
kill 5 Needlerock Mystic##43995 |q 26770/1 |goto Deepholm/0 22.87,46.93
|tip Activate the War Constructs before attacking mystics.
|tip They will help you fight them.
step
talk Flint Oremantle##43898
turnin Mystic Masters##26770 |goto Deepholm/0 22.77,52.10
step
talk Pyrium Lodestone##43897
turnin Reactivate the Constructs##26762 |goto Deepholm/0 22.67,52.02
accept Down Into the Chasm##26834 |goto Deepholm/0 22.67,52.02
step
talk Slate Quicksand##44143
turnin Down Into the Chasm##26834 |goto Deepholm/0 27.58,44.83
accept Sprout No More##26791 |goto Deepholm/0 27.58,44.83
accept Fungal Monstrosities##26792 |goto Deepholm/0 27.58,44.83
step
clicknpc War Guardian##44126
Obtain a War Guardian |q 26791/1 |goto Deepholm/0 27.63,44.71
stickystart "Kill_Fungal_Monstrosities"
step
clicknpc Giant Mushroom##44049+
|tip They look like huge mushrooms with yellow and brown caps.
Destroy #5# Giant Mushrooms |q 26791/2 |goto Deepholm/0 26.94,33.47
step
label "Kill_Fungal_Monstrosities"
kill 5 Fungal Monstrosity##44035 |q 26792/2 |goto Deepholm/0 26.94,33.47
|tip They look like giants with tentacle fingers.
step
talk Slate Quicksand##44143
turnin Sprout No More##26791 |goto Deepholm/0 27.58,44.83
turnin Fungal Monstrosities##26792 |goto Deepholm/0 27.58,44.83
accept A Slight Problem##26835 |goto Deepholm/0 27.58,44.83
step
talk Pyrium Lodestone##43897
turnin A Slight Problem##26835 |goto Deepholm/0 22.67,52.02
accept Rescue the Stonefather... and Flint##26836 |goto Deepholm/0 22.67,52.02
step
kill Bouldergut##44151
|tip Up on the rock platform.
Rescue Stonefather Oremantle |q 26836/1 |goto Deepholm/0 24.50,31.05
step
talk Pyrium Lodestone##43897
turnin Rescue the Stonefather... and Flint##26836 |goto Deepholm/0 22.67,52.02
accept The Hero Returns##27937 |goto Deepholm/0 22.67,52.02
step
talk Stonefather Oremantle##44204
turnin The Hero Returns##27937 |goto Deepholm/0 28.01,68.63
accept The Middle Fragment##27938 |goto Deepholm/0 28.01,68.63
step
click The Stonefather's Safe##206562
collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto Deepholm/0 28.03,68.70
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Gunship Down##26245 |goto Deepholm/0 49.62,52.95
turnin Captain's Log##26246 |goto Deepholm/0 49.62,52.95
step
talk Seer Kormo##43397
|tip Inside the building.
turnin The Earth Claims All##26244 |goto Deepholm/0 49.68,52.93
step
talk Maruut Stonebinder##43065
|tip Inside the building.
accept Diplomacy First##26247 |goto Deepholm/0 49.62,52.95
step
talk Earthcaller Yevaa##42573
|tip Inside the building.
turnin The Middle Fragment##27938 |goto Deepholm/0 49.49,53.35
step
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up and patrols around this area.
|tip Because it patrols, quest arrows on the ship may not always be accurate.
turnin Diplomacy First##26247 |goto Deepholm/0 60.89,47.32
accept All Our Friends Are Dead##26248 |goto Deepholm/0 60.89,47.32
accept The Admiral's Cabin##26249 |goto Deepholm/0 60.89,47.32
The ship may also be in these areas:
[64.79,53.35]
[60.96,38.37]
step
use the Spirit Totem##58167
|tip Use it on Slain Crew Members.
|tip They look like dead Alliance soldiers on the airship.
|tip The airship flies high up and patrols around this area.
|tip You may be attacked.
Recover Information from #6# Slain Crew Members |q 26248/1 |goto Deepholm/0 60.89,47.32
'|clicknpc Slain Crew Member##42682, Slain Crew Member##42681
step
talk First Mate Moody##43082
|tip Inside the large room with yellow windows, on the deck of the airship.
|tip The airship flies high up and patrols around this area.
turnin The Admiral's Cabin##26249 |goto Deepholm/0 60.89,47.32
accept Without a Captain or Crew##26427 |goto Deepholm/0 60.89,47.32
step
click Bottle of Whiskey##204280
|tip It looks like a small yellow bottle on the edge of a life boat, on the right side of the deck of the airship.
|tip The airship flies high up and patrols around this area.
collect Bottle of Whiskey##58798 |q 26427/1 |goto Deepholm/0 60.89,47.32
step
click Spool of Rope##204279+
|tip They look like coiled up ropes on the ground on the deck at the front of the airship.
|tip The airship flies high up and patrols around this area.
collect Spool of Rope##58806 |q 26427/2 |goto Deepholm/0 60.89,47.32
step
talk First Mate Moody##43082
|tip Inside the large room with yellow windows, on the deck of the airship.
|tip The airship flies high up and patrols around this area.
turnin Without a Captain or Crew##26427 |goto Deepholm/0 60.89,47.32
step
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up and patrols around this area.
turnin All Our Friends Are Dead##26248 |goto Deepholm/0 60.89,47.32
accept Take No Prisoners##26251 |goto Deepholm/0 60.89,47.32
accept On Second Thought, Take One Prisoner##26250 |goto Deepholm/0 60.89,47.32
stickystart "Kill_Twilight_Saboteurs"
step
kill Mor'norokk the Hateful##42801
|tip He looks like a purple two-headed ogre downstairs inside the airship.
|tip The airship flies high up and patrols around this area.
|tip He will eventually surrender.
talk Mor'norokk the Hateful##42801
Subdue Mor'norokk the Hateful |q 26250/1 |goto Deepholm/0 60.89,47.32
step
label "Kill_Twilight_Saboteurs"
kill 6 Twilight Saboteur##42885 |q 26251/1 |goto Deepholm/0 60.89,47.32
|tip They look like humans wearing robes.
|tip Downstairs inside the airship. |notinsticky
|tip The airship flies high up and patrols around this area. |notinsticky
step
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up and patrols around this area.
turnin Take No Prisoners##26251 |goto Deepholm/0 60.89,47.32
turnin On Second Thought, Take One Prisoner##26250 |goto Deepholm/0 60.89,47.32
accept Some Spraining to Do##26254 |goto Deepholm/0 60.89,47.32
step
clicknpc Stormbeak##42716
|tip It looks like a large eagle flying nearby, at the top of the airship.
|tip The airship flies high up and patrols around this area.
Watch the dialogue
Interrogate Mok'norrok |q 26254/1 |goto Deepholm/0 60.89,47.32
step
talk Stormcaller Mylra##42684
|tip At the top of the airship.
|tip The airship flies high up and patrols around this area.
turnin Some Spraining to Do##26254 |goto Deepholm/0 60.89,47.32
accept Return to the Temple of Earth##26255 |goto Deepholm/0 60.89,47.32
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Return to the Temple of Earth##26255 |goto Deepholm/0 49.62,52.94
accept Deathwing's Fall##26258 |goto Deepholm/0 49.62,52.94
step
talk Seer Kormo##43397
|tip Inside the building.
accept Blood of the Earthwarder##26259 |goto Deepholm/0 49.69,52.93
stickystart "Collect_Blood_Of_Neltharion"
step
Reach Deathwing's Fall |q 26258/1 |goto Deepholm/0 59.94,58.62
step
_Click the Complete Quest Box:_
turnin Deathwing's Fall##26258
accept Bleed the Bloodshaper##26256
step
kill Twilight Bloodshaper##43218+
|tip They look like humans wearing robes, next to large red orbs.
collect Twilight Orders##60264 |q 26256/1 |goto Deepholm/0 61.23,60.40
step
_Click the Complete Quest Box:_
turnin Bleed the Bloodshaper##26256
accept Question the Slaves##26261
step
label "Collect_Blood_Of_Neltharion"
kill Living Blood##43123+
|tip They look like red oozes.
collect 5 Blood of Neltharion##133127 |q 26259/1 |goto Deepholm/0 61.23,60.40
step
click Slavemaster's Coffer##205097
|tip Inside the tent.
collect Twilight Slaver's Key##60739 |goto Deepholm/0 62.80,59.47 |q 26261
step
click Ball and Chain##207079+
|tip They look like grey balls chained to the legs of friendly mining NPCs.
Free #6# Enslaved Miners |q 26261/1 |goto Deepholm/0 65.32,63.79
step
_Click the Complete Quest Box:_
turnin Question the Slaves##26261
accept The Forgemaster's Log##26260
|tip If the quest bugs and doesn't auto accept, you'll have to go to Maruut Stonebinder back at the Temple of Earth.
[Deepholm/0 49.62,52.95] |only if not haveq(26260)
step
click Forgemaster's Log##205134
|tip At the top of the tower.
turnin The Forgemaster's Log##26260 |goto Deepholm/0 63.71,55.40
accept Silvermarsh Rendezvous##27007 |goto Deepholm/0 63.71,55.40
stickystart "Accept_Twilight_Research"
stickystart "Collect_Twilight_Research_Notes"
step
Reach Upper Silvermarsh |q 27007/1 |goto Deepholm/0 70.89,61.31
step
_Click the Complete Quest Box:_
turnin Silvermarsh Rendezvous##27007
accept Quicksilver Submersion##27010
step
click Trogg Crate##205197
collect Trogg Crate##60809 |goto Deepholm/0 71.74,64.28 |q 27010
step
use the Trogg Crate##60809
Wear the Trogg Crate |havebuff Trogg Crate##83699 |goto Deepholm/0 75.00,64.15 |q 27010
step
Watch the dialogue
|tip Swim to this location close to the enemies.
|tip Be careful, you may be attacked by elite enemies after the cutscene finishes.
|tip If you have a pet, it may help to dismiss it.
Uncover the World Pillar Fragment Clue |q 27010/1 |goto Deepholm/0 74.89,65.07
step
_Click the Complete Quest Box:_
turnin Quicksilver Submersion##27010
accept The Twilight Overlook##27061
step
label "Accept_Twilight_Research"
kill Murkstone Trogg##44936+
collect Maziel's Research##60816 |n
use Maziel's Research##60816
accept Twilight Research##27100 |goto Deepholm/0 72.40,62.70
step
label "Collect_Twilight_Research_Notes"
kill Mercurial Ooze##43158+
|tip They look like blue oozes.
collect 4 Twilight Research Notes##60814 |q 27100/1 |goto Deepholm/0 72.14,63.08
|only if haveq(27100) or completedq(27100)
step
_Click the Complete Quest Box:_
turnin Twilight Research##27100
accept Maziel's Revelation##27101
step
click Maziel's Journal##205207
turnin Maziel's Revelation##27101 |goto Deepholm/0 67.20,70.17
accept Maziel's Ascendancy##27102 |goto Deepholm/0 67.20,70.17
step
Enter the cave |goto Deepholm/0 69.49,68.02 < 20 |walk
kill Maziel##44967 |q 27102/1 |goto Deepholm/0 72.87,61.92
|tip Inside the cave.
step
_Click the Complete Quest Box:_
turnin Maziel's Ascendancy##27102
step
Leave the cave |goto Deepholm/0 69.42,68.14 < 20 |walk |only if subzone("Lower Silvermarsh") and indoors()
talk Stormcaller Mylra##44010
turnin The Twilight Overlook##27061 |goto Deepholm/0 64.47,82.13
accept Big Game, Big Bait##26766 |goto Deepholm/0 64.47,82.13
accept To Catch a Dragon##26768 |goto Deepholm/0 64.47,82.13
stickystart "Collect_Twilight_Snare"
step
kill Jadecrest Basilisk##43981+
|tip They look like large white and grey lizards.
use Mylra's Knife##60382
|tip Use it on their corpses.
collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto Deepholm/0 57.50,85.62
step
label "Collect_Twilight_Snare"
kill Twilight Dragonstalker##43992+
|tip They look like humans wearing robes.
collect Twilight Snare##60383 |q 26768/1 |goto Deepholm/0 57.50,85.62
You can find more around [53.22,83.23]
step
talk Stormcaller Mylra##44010
turnin Big Game, Big Bait##26766 |goto Deepholm/0 64.47,82.13
turnin To Catch a Dragon##26768 |goto Deepholm/0 64.47,82.13
accept Testing the Trap##26771 |goto Deepholm/0 64.47,82.13
step
use the Trapped Basilisk Meat##60773
kill Stonescale Matriarch##44148 |q 26771/1 |goto Deepholm/0 50.91,85.25
step
talk Stormcaller Mylra##44010
turnin Testing the Trap##26771 |goto Deepholm/0 64.47,82.13
accept Abyssion's Minions##26857 |goto Deepholm/0 64.47,82.13
step
talk Seer Galekk##44222
accept Block the Gates##26861 |goto Deepholm/0 64.56,82.17
stickystart "Defeat_Abyssions_Underlings"
step
use the Stormstone##60501
Disrupt the Twilight Gate |q 26861/1 |goto Deepholm/0 68.69,75.15
step
use the Stormstone##60501
Disrupt the Elemental Gate |q 26861/2 |goto Deepholm/0 71.12,75.03
step
label "Defeat_Abyssions_Underlings"
kill Twilight Scalesister##43967, Twilight Dragonspawn##43966, Scalesworn Cultist##44221
|tip They look like humans and dragonkin.
Defeat #8# of Abyssion's Underlings |q 26857/1 |goto Deepholm/0 69.68,76.87
step
talk Seer Galekk##44222
turnin Block the Gates##26861 |goto Deepholm/0 64.56,82.17
step
talk Stormcaller Mylra##44010
turnin Abyssion's Minions##26857 |goto Deepholm/0 64.47,82.13
accept The World Pillar Fragment##26876 |goto Deepholm/0 64.47,82.13
step
use the Earthen Ring Banner##60810
kill Abyssion##44289
|tip If he's already there, you don't need to use the banner, just kill him.
|tip Your allies will help you fight.
click The First Fragment of the World Pillar##204967
|tip It looks like a large floating rock that appears nearby after you kill Abyssion.
collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto Deepholm/0 69.87,76.91
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin The World Pillar Fragment##26876 |goto Deepholm/0 49.62,52.94
accept The Very Earth Beneath Our Feet##26326 |goto Deepholm/0 49.62,52.94
step
talk Seer Kormo##43397
|tip Inside the building.
turnin Blood of the Earthwarder##26259 |goto Deepholm/0 49.68,52.93
step
talk Earthcaller Torunscar##42730
|tip Outside the building.
turnin The Very Earth Beneath Our Feet##26326 |goto Deepholm/0 46.06,45.64
accept Crumbling Defenses##26312 |goto Deepholm/0 46.06,45.64
accept On Even Ground##26314 |goto Deepholm/0 46.06,45.64
step
talk Earthmender Norsala##42731
accept Core of Our Troubles##26313 |goto Deepholm/0 46.15,45.74
stickystart "Bring_Down_Servants_Of_Therazane"
stickystart "Collect_Irestone_Cores"
step
Relieve Hargoth Dimblaze |q 26312/3 |goto Deepholm/0 47.61,42.81
|tip Kill the enemies attacking him.
step
Relieve Stormcaller Mylra |q 26312/2 |goto Deepholm/0 44.30,43.71
|tip Kill the enemies attacking her.
step
Relieve Tawn Winterbluff |q 26312/1 |goto Deepholm/0 44.53,41.32
|tip Kill the enemies attacking her.
step
label "Bring_Down_Servants_Of_Therazane"
use the Elementium Grapple Line##58169
|tip Use it on Servants of Therazane.
|tip They look like rock giants.
|tip Run away from them after you use it to make them fall down.
Bring Down #3# Servants of Therazane |q 26314/1 |goto Deepholm/0 46.64,43.82
'|clicknpc Servant of Therazane##42479
step
label "Collect_Irestone_Cores"
kill Irestone Rumbler##42780+, Irestone Rumbler##42527+
|tip They look like rock elementals.
collect 6 Irestone Core##58168 |q 26313/1 |goto Deepholm/0 46.64,43.82
step
talk Earthmender Norsala##42731
turnin Core of Our Troubles##26313 |goto Deepholm/0 46.15,45.74
step
talk Earthcaller Torunscar##42730
turnin Crumbling Defenses##26312 |goto Deepholm/0 46.06,45.64
turnin On Even Ground##26314 |goto Deepholm/0 46.06,45.64
step
talk Earthmender Norsala##42731
accept Imposing Confrontation##26315 |goto Deepholm/0 46.15,45.74
step
use the Earthen Ring Proclamation##58177
|tip Use it on Boden the Imposing.
|tip He looks like a huge rock giant that walks around this area.
Watch the dialogue
Seek Peace with Boden the Imposing |q 26315/1 |goto Deepholm/0 48.13,39.05
'|clicknpc Boden the Imposing##42471
step
talk Earthmender Norsala##42731
turnin Imposing Confrontation##26315 |goto Deepholm/0 46.15,45.74
accept Rocky Relations##26328 |goto Deepholm/0 46.15,45.74
step
talk Diamant the Patient##42467
turnin Rocky Relations##26328 |goto Deepholm/0 56.52,42.67
accept Hatred Runs Deep##26376 |goto Deepholm/0 56.52,42.67
accept Unsolid Ground##26377 |goto Deepholm/0 56.52,42.67
step
talk Quartz Stonetender##42899
accept Loose Stones##26375 |goto Deepholm/0 56.52,41.04
stickystart "Collect_Jade_Crystal_Clusters"
stickystart "Release_Quartz_Rocklings"
stickystart "Slay_Lorthunas_Gate_Cultists"
step
kill Dragul Giantbutcher##42921 |q 26376/1 |goto Deepholm/0 60.19,39.45
step
label "Collect_Jade_Crystal_Clusters"
click Jade Crystal Cluster##204253+
|tip They look like small bright green bunches of crystals.
collect 6 Jade Crystal Cluster##58500 |goto Deepholm/0 59.39,40.86 |q 26377
step
label "Release_Quartz_Rocklings"
use the Delicate Chain Smasher##58254
|tip Use it next to Quartz Rocklings.
|tip They look like small rock giants.
Release #6# Quartz Rocklings |q 26375/1 |goto Deepholm/0 59.39,40.86
'|talk Quartz Rockling##42900
step
use the Jade Crystal Cluster##58500+
collect Jade Crystal Composite##58783 |q 26377
step
use the Jade Crystal Composite##58783
Lure an Agitated Tunneler |q 26377/1 |goto Deepholm/0 59.60,41.43
step
label "Slay_Lorthunas_Gate_Cultists"
kill Twilight Laborer##42924, Twilight Duskwarden##42917, Twilight Priestess##42823, Twilight Pyremaw##44189
|tip They look like various humanoid NPCs and blue dragons.
Slay #12# of Lorthuna's Gate Cultists |q 26376/2 |goto Deepholm/0 59.30,40.60
step
talk Quartz Stonetender##42899
turnin Loose Stones##26375 |goto Deepholm/0 56.52,41.04
step
talk Diamant the Patient##42467
turnin Hatred Runs Deep##26376 |goto Deepholm/0 56.52,42.67
turnin Unsolid Ground##26377 |goto Deepholm/0 56.52,42.67
accept Violent Gale##26426 |goto Deepholm/0 56.52,42.67
step
Find Felsen the Enduring |q 26426/1 |goto Deepholm/0 51.74,31.60
step
Find the Entrance to the Crumbling Depths |q 26426/2 |goto Deepholm/0 58.25,25.71
|tip At the entrance of the cave.
step
_Click the Complete Quest Box:_
turnin Violent Gale##26426
accept Depth of the Depths##26869
step
Enter the cave |goto Deepholm/0 58.69,25.90 < 30 |walk
Run as fast as you can to outrun the Colossal Gyreworm and continue following the path |goto Deepholm/0 63.39,27.37 < 30 |walk
Hide in this side passage and let the Colossal Gyreworm pass |goto Deepholm/0 65.45,27.75 < 20 |walk
Continue following the path |goto Deepholm/0 63.77,24.50 < 40 |walk
click Gigantic Painite Cluster##204959
|tip Inside the cave.
turnin Depth of the Depths##26869 |goto Deepholm/0 66.43,20.61
accept A Rock Amongst Many##26871 |goto Deepholm/0 66.43,20.61
step
Leave the cave |goto Deepholm/0 58.69,25.90 < 30 |walk |only if subzone("Crumbling Depths")
talk Diamant the Patient##42467
turnin A Rock Amongst Many##26871 |goto Deepholm/0 56.52,42.67
accept Entrenched##26436 |goto Deepholm/0 56.52,42.67
step
talk Kor the Immovable##42469
turnin Entrenched##26436 |goto Deepholm/0 34.31,34.33
accept Intervention##26438 |goto Deepholm/0 34.31,34.33
accept Making Things Crystal Clear##26437 |goto Deepholm/0 34.31,34.33
step
talk Berracite##43344
|tip He walks around this area.
accept Putting the Pieces Together##26439 |goto Deepholm/0 34.09,35.22
Also check around [34.51,33.27]
stickystart "Collect_Chalky_Crystal_Formations"
stickystart "Slay_Jaspertip_Flayers"
step
clicknpc Dormant Stonebound Elemental##43115+
|tip They look like groups of broken cluttered rocks, like dead rock elementals.
Reform #6# Stonebound Elementals |q 26439/1 |goto Deepholm/0 33.64,45.20
step
label "Collect_Chalky_Crystal_Formations"
click Chalky Crystal Formation##204297+
|tip They look like large white rocks.
collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto Deepholm/0 33.64,45.20
step
label "Slay_Jaspertip_Flayers"
kill Jaspertip Swarmer##42521, Jaspertip Borer##42524, Jaspertip Ravager##42525
|tip They look like creatures with tails and huge claws for hands.
Slay #12# Jaspertip Flayers |q 26438/1 |goto Deepholm/0 33.64,45.20
step
talk Kor the Immovable##42469
turnin Intervention##26438 |goto Deepholm/0 34.31,34.33
turnin Making Things Crystal Clear##26437 |goto Deepholm/0 34.31,34.33
step
talk Berracite##43344
|tip He walks around this area.
turnin Putting the Pieces Together##26439 |goto Deepholm/0 34.09,35.22
Also check around [34.51,33.27]
step
talk Kor the Immovable##42469
accept Pebble##28869 |goto Deepholm/0 34.31,34.33
step
_Next to you:_
talk Pebble##43116
turnin Pebble##28869
accept Clingy##26440
step
Kill the enemies that attack in waves
|tip Protect Pebble next to you.
Bring Pebble to the Crystal Formation |q 26440/1 |goto Deepholm/0 30.20,47.63
'|clicknpc Pebble##43116
step
_Next to you:_
talk Pebble##43116
turnin Clingy##26440
accept So Big, So Round...##26441
step
talk Kor the Immovable##42469
turnin So Big, So Round...##26441 |goto Deepholm/0 34.31,34.33
accept Petrified Delicacies##26507 |goto Deepholm/0 34.31,34.33
accept Rock Bottom##26575 |goto Deepholm/0 34.31,34.33
stickystart "Collect_Petrified_Stone_Bats"
step
kill Gorgonite##43339 |q 26575/1 |goto Deepholm/0 47.50,26.83
|tip He looks like a very large grey and white basilisk that walks around this area.
step
label "Collect_Petrified_Stone_Bats"
kill Shalehide Basilisk##43181+
|tip They look like large white and grey lizards.
clicknpc Petrified Stone Bat##43182+
|tip They look like large bats laying on the ground.
collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto Deepholm/0 47.50,26.80
step
_Next to you:_
talk Pebble##43116
turnin Petrified Delicacies##26507
step
talk Kor the Immovable##42469
turnin Rock Bottom##26575 |goto Deepholm/0 34.31,34.33
accept Steady Hand##26576 |goto Deepholm/0 34.31,34.33
accept Rocky Upheaval##26577 |goto Deepholm/0 34.31,34.33
step
talk Terrath the Steady##42466
turnin Steady Hand##26576 |goto Deepholm/0 39.94,19.40
accept Don't. Stop. Moving.##26656 |goto Deepholm/0 39.94,19.40
step
talk Terrath the Steady##42466
Select _"I am ready to escort a group of elementals across the open."_ |gossip 112419
Speak to Terrath the Steady |q 26656/1 |goto Deepholm/0 39.94,19.40
step
Escort #5# Opalescent Guardians to Safety |q 26656/2 |goto Deepholm/0 50.62,14.20
|tip You can fly, but be careful to stay somewhat close to them, or they will disappear.
step
talk Terrath the Steady##42466
turnin Don't. Stop. Moving.##26656 |goto Deepholm/0 39.94,19.40
accept Hard Falls##26657 |goto Deepholm/0 39.94,19.40
accept Fragile Values##26658 |goto Deepholm/0 39.94,19.40
stickystart "Kill_Stone_Drakes"
step
kill Stone Trogg Beast Tamer##43598
|tip He looks like a darker trogg that walks around this area.
|tip He has another trogg and a basilisk with him.
collect Stonework Mallet##59323 |q 26658/1 |goto Deepholm/0 35.90,21.49
step
label "Kill_Stone_Drakes"
kill 6 Stone Drake##42522 |q 26657/1 |goto Deepholm/0 35.83,19.72
|tip They look like dragons.
|tip They will fall to the ground with much of their health already missing.
|tip You can kill them easily, even though they are elite.
step
talk Terrath the Steady##42466
turnin Hard Falls##26657 |goto Deepholm/0 39.94,19.40
turnin Fragile Values##26658 |goto Deepholm/0 39.94,19.40
accept Resonating Blow##26659 |goto Deepholm/0 39.94,19.40
step
use the Stonework Mallet##60266
Strike the Pale Resonating Crystal |q 26659/1 |goto Deepholm/0 32.67,24.35
step
Watch the dialogue
clicknpc Boulder Platform##45191+
|tip They look like dark floating rocks around this area.
|tip Keep clicking them to jump higher until Aeosera appears.
kill Aeosera##43641
|tip When she begins using her "Searing Breath" ability, jump to another Boulder Platform.
|tip Keep attacking her as you jump around on the boulders.
|tip She will eventually surrender.
Defeat Aeosera |q 26659/2 |goto Deepholm/0 32.67,24.35
step
Watch the dialogue
Return to the Ground |outvehicle |q 26659
step
talk Terrath the Steady##42466
turnin Resonating Blow##26659 |goto Deepholm/0 33.15,24.23
Also check at [Deepholm/0 39.94,19.40]
step
talk Gorsik the Tumultuous##42472
turnin Rocky Upheaval##26577 |goto Deepholm/0 72.21,54.02
accept Doomshrooms##26578 |goto Deepholm/0 72.21,54.02
accept Gone Soft##26579 |goto Deepholm/0 72.21,54.02
accept Familiar Intruders##26580 |goto Deepholm/0 72.21,54.02
step
talk Windspeaker Lorvarius##43395
turnin Familiar Intruders##26580 |goto Deepholm/0 71.79,47.59
accept A Head Full of Wind##26581 |goto Deepholm/0 71.79,47.59
stickystart "Destroy_Doomshrooms"
stickystart "Kill_Fungal_Behemoths"
step
Gather a Sample of the Red Mist |q 26581/1 |goto Deepholm/0 73.08,43.09
|tip Walk into one of the small red clouds that float along the ground.
step
label "Destroy_Doomshrooms"
kill Doomshroom##43388+
|tip They look like medium sized mushrooms with yellow and brown caps.
Destroy #10# Doomshrooms |q 26578/1 |goto Deepholm/0 73.08,43.09
step
label "Kill_Fungal_Behemoths"
kill 8 Fungal Behemoth##42475 |q 26579/1 |goto Deepholm/0 73.08,43.09
|tip They look like giants with tentacle fingers.
step
talk Windspeaker Lorvarius##43395
turnin A Head Full of Wind##26581 |goto Deepholm/0 71.79,47.59
accept Unnatural Causes##26582 |goto Deepholm/0 71.79,47.59
step
talk Gorsik the Tumultuous##42472
turnin Doomshrooms##26578 |goto Deepholm/0 72.21,54.02
turnin Gone Soft##26579 |goto Deepholm/0 72.21,54.02
turnin Unnatural Causes##26582 |goto Deepholm/0 72.21,54.02
accept Shaken and Stirred##26584 |goto Deepholm/0 72.21,54.02
accept Corruption Destruction##26585 |goto Deepholm/0 72.21,54.02
step
talk Ruberick##43442
accept Wrath of the Fungalmancer##26583 |goto Deepholm/0 68.47,26.37
step
Enter the cave |goto Deepholm/0 68.59,29.15 < 30 |walk
talk Earthmender Norsala##43503
|tip Inside the cave.
Speak to Earthmender Norsala |q 26583/1 |goto Deepholm/0 69.80,31.85
step
talk Earthmender Norsala##43503
|tip Inside the cave.
Select _"I'm ready when you are, Norsala."_ |gossip 112467
Begin Following Earthmender Norsala |goto Deepholm/0 69.80,31.85 > 10 |q 26583
step
Watch the dialogue
|tip Follow Earthmender Norsala and protect her as she walks.
|tip She will help you fight.
kill Fungalmancer Glop##43372 |q 26583/2 |goto Deepholm/0 69.45,33.72
|tip Follow him each time he runs away.
|tip Avoid the mushrooms as you walk around, they will damage you and give you a debuff.
|tip While fighting him, avoid the Boomshrooms he creates.
'|clicknpc Earthmender Norsala##43503
step
Follow the path up and leave the cave |goto Deepholm/0 68.59,29.15 < 30 |walk |only if subzone("Fungal Deep") and indoors()
talk Ruberick##43442
turnin Wrath of the Fungalmancer##26583 |goto Deepholm/0 68.47,26.37
stickystart "Kill_Verlock_Pillartumblers"
step
click Verlok Miracle-Grow##204410+
|tip They look like small sacks filled with an orange substance.
collect 8 Verlok Miracle-Grow##59123 |q 26585/1 |goto Deepholm/0 69.44,24.73
step
label "Kill_Verlock_Pillartumblers"
kill 8 Verlok Pillartumbler##43513 |q 26584/1 |goto Deepholm/0 69.44,24.73
|tip They look like troggs.
step
talk Gorsik the Tumultuous##42472
turnin Shaken and Stirred##26584 |goto Deepholm/0 72.21,54.02
turnin Corruption Destruction##26585 |goto Deepholm/0 72.21,54.02
accept At the Stonemother's Call##26750 |goto Deepholm/0 72.21,54.02
step
talk Therazane##42465
|tip She walks around this area.
turnin At the Stonemother's Call##26750 |goto Deepholm/0 56.34,12.21
accept Audience with the Stonemother##26752 |goto Deepholm/0 56.34,12.21
step
Watch the dialogue
Attend the Stonemother's Audience |q 26752/1 |goto Deepholm/0 56.33,12.73
step
talk Earthcaller Torunscar##43809
turnin Audience with the Stonemother##26752 |goto Deepholm/0 56.06,13.46
accept Rallying the Earthen Ring##26827 |goto Deepholm/0 56.06,13.46
step
talk Hargoth Dimblaze##44644
|tip Inside the building.
Select _"We are joining an assault on Lorthuna's Gate. You are needed."_ |gossip 112584
Rally the Earthen Ring |q 26827/1 |goto Deepholm/0 49.93,50.09 |count 2
step
talk Stormcaller Jalara##44633
|tip She walks around this area.
|tip Inside the building.
Select _"We are joining an assault on Lorthuna's Gate. You are needed."_ |gossip 112583
Rally the Earthen Ring |q 26827/1 |goto Deepholm/0 51.63,51.03 |count 3
Also check around [51.39,52.21]
step
talk Mariahn the Soulcleanser##44647
|tip Inside the building.
Select _"We are joining an assault on Lorthuna's Gate. You are needed."_ |gossip 112583
Rally the Earthen Ring |q 26827/1 |goto Deepholm/0 51.32,52.28 |count 4
step
talk Tawn Winterbluff##44634
|tip Inside the building.
Select _"We are joining an assault on Lorthuna's Gate. You are needed."_ |gossip 112583
Rally the Earthen Ring |q 26827/1 |goto Deepholm/0 47.39,50.86 |count 5
step
talk Maruut Stonebinder##43065
|tip Inside the building.
turnin Rallying the Earthen Ring##26827 |goto Deepholm/0 49.62,52.95
accept Our Part of the Bargain##26828 |goto Deepholm/0 49.62,52.95
step
talk Therazane##44025
turnin Our Part of the Bargain##26828 |goto Deepholm/0 63.32,24.96
accept The Stone March##26829 |goto Deepholm/0 63.32,24.96
accept Therazane's Mercy##26832 |goto Deepholm/0 63.32,24.96
step
talk Boden the Imposing##44080
accept The Twilight Flight##26831 |goto Deepholm/0 62.64,26.95
stickystart "Slay_Twilight_Precipice_Cultists"
step
kill High Priestess Lorthuna##42914
|tip Inside a small room at the top of the building.
|tip Don't worry that she's elite, you can kill her easily.
|tip She will eventually run away.
Defeat High Priestess Lorthuna |q 26832/2 |goto Deepholm/0 62.43,31.80
step
kill Boldrich Stonerender##42923
Defeat Boldrich Stonerender |q 26832/1 |goto Deepholm/0 58.91,32.92
step
label "Slay_Twilight_Precipice_Cultists"
kill Twilight Soulreaper##42916, Defaced Earthrager##44076, Twilight Priestess##42823
|tip They look like various humanoid NPCs and magma elementals.
Slay #15# Twilight Precipice Cultists |q 26829/1 |goto Deepholm/0 61.74,33.92
step
kill Zoltrik Drakebane##42918
|tip Inside the building.
|tip He will eventually run away.
|tip You will start riding a stone drake to chase after him.
Watch the dialogue
Begin Chasing Zoltrik Drakebane |invehicle |goto Deepholm/0 63.09,38.10 |q 26831
step
kill Zoltrik Drakebane##44135
|tip If you are a melee class, use the "Jump Drakes!" ability on your pet action bar.
|tip You will eventually land on a large floating rock.
Chase Zoltrik Drakebane |outvehicle |goto Deepholm/0 50.10,38.17 |q 26831 |notravel
step
kill Zoltrik Drakebane##44135
Defeat Zoltrik Drakebane |q 26831/1 |goto Deepholm/0 49.93,37.46
step
talk Terrath the Steady##42614
turnin The Twilight Flight##26831 |goto Deepholm/0 64.14,36.90
step
talk Therazane##44025
turnin The Stone March##26829 |goto Deepholm/0 63.32,24.96
turnin Therazane's Mercy##26832 |goto Deepholm/0 63.32,24.96
accept Word In Stone##26833 |goto Deepholm/0 63.32,24.96
step
talk Maruut Stonebinder##43818
|tip Inside the building.
turnin Word In Stone##26833 |goto Deepholm/0 49.62,52.95
accept Undying Twilight##26875 |goto Deepholm/0 49.62,52.95
stickystart "Slay_Twilight_Invaders"
step
kill Desecrated Earthrager##44683 |q 26875/2 |goto Deepholm/0 50.19,49.43
|tip They look like bone elementals with purple crystal hands.
|tip Inside the building.
step
label "Slay_Twilight_Invaders"
kill Twilight Heretic##44681, Twilight Defiler##44680
|tip They look like various humanoid NPCs.
|tip Inside the building. |notinsticky
Slay #12# Twilight Invaders |q 26875/1 |goto Deepholm/0 50.19,49.43
You can find more around [47.87,53.33]
step
_Click the Complete Quest Box:_
turnin Undying Twilight##26875
accept The Binding##26971
step
kill High Priestess Lorthuna##43837 |q 26971/1 |goto Deepholm/0 49.61,52.88
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Earthcaller Torunscar##43835
turnin The Binding##26971 |goto Deepholm/0 49.57,52.93
step
talk Therazane##43792
|tip Inside the building.
accept The Stone Throne##26709 |goto Deepholm/0 49.73,53.34
step
talk Therazane##42465
|tip She walks around this area.
turnin The Stone Throne##26709 |goto Deepholm/0 56.39,12.11
step
talk Examiner Rowe##44823
|tip Inside the building.
|tip You need to be at least level 83 to accept this quest. |only if level < 83
accept The Twilight Plot##27005 |goto Deepholm/0 51.28,50.06
step
talk Reliquary Jes'ca Darksun##44818
|tip Inside the building.
|tip You need to be at least level 83 to accept this quest. |only if level < 83
accept Fly Over##27008 |goto Deepholm/0 51.28,50.00
stickystart "Collect_Masters_Gate_Plans"
step
Investigate the Masters' Gate |q 27008/1 |goto Deepholm/0 38.95,74.14
step
label "Collect_Masters_Gate_Plans"
kill Twilight Armsman##44847, Twilight Crusher##44849, Twilight Cryptomancer##44855
|tip They look like various humanoid enemies.
collect Masters' Gate Plans##60745 |q 27005/1 |goto Deepholm/0 40.42,70.45
|tip This has a low drop rate.
step
talk Examiner Rowe##44823
|tip Inside the building.
turnin The Twilight Plot##27005 |goto Deepholm/0 51.29,50.05
step
talk Reliquary Jes'ca Darksun##44818
|tip Inside the building.
turnin Fly Over##27008 |goto Deepholm/0 51.28,50.00
accept Fight Fire and Water and Air with...##27043 |goto Deepholm/0 51.28,50.00
step
talk Examiner Rowe##44823
|tip Inside the building.
accept Decryption Made Easy##27041 |goto Deepholm/0 51.29,50.05
stickystart "Decrypt_Plans"
step
kill Bound Air Elemental##44885
Acquire the Air Ward |q 27043/3 |goto Deepholm/0 40.52,72.38
step
kill Bound Fire Elemental##44887
Acquire the Fire Ward |q 27043/1 |goto Deepholm/0 36.00,67.37
step
kill Bound Water Elemental##44886
Acquire the Water Ward |q 27043/2 |goto Deepholm/0 40.82,66.28
step
label "Decrypt_Plans"
click One-Time Decryption Engine##205145+
|tip They look like metal machines with a circular scroll spinning around them.
Decrypt #6# Plans |q 27041/1 |goto Deepholm/0 40.21,68.60
step
_Click the Complete Quest Box:_
turnin Decryption Made Easy##27041
accept The Wrong Sequence##27059
step
click Waygate Controller##205161
Destroy the Waygate |q 27059/1 |goto Deepholm/0 39.15,73.83
step
kill Haethen Kaul##44835 |q 27043/4 |goto Deepholm/0 39.87,62.17
|tip Up on the floating rock.
step
talk Examiner Rowe##44823
|tip Inside the building.
turnin The Wrong Sequence##27059 |goto Deepholm/0 51.29,50.05
step
talk Reliquary Jes'ca Darksun##44818
|tip Inside the building.
turnin Fight Fire and Water and Air with...##27043 |goto Deepholm/0 51.28,50.00
step
talk Examiner Rowe##44823
|tip Inside the building.
accept That's No Pyramid!##28293 |goto Deepholm/0 51.29,50.05
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",{
mopready=true,
next="Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",
startlevel=83.00,
},[[
step
click Warchief's Command Board##207325
accept Warchief's Command: Uldum!##28557 |goto Orgrimmar/1 49.66,76.46
step
talk Belloc Brightblade##47571
|tip Inside the building.
turnin That's No Pyramid!##28293 |goto Orgrimmar/1 49.07,70.54
|only if haveq(28293) or completedq(28293)
step
talk Adarrah##44833
turnin Warchief's Command: Uldum!##28557 |goto Tanaris/0 30.49,65.51 |only if haveq(28557) or completedq(28557)
accept Easy Money##27003 |goto Tanaris/0 30.49,65.51
step
clicknpc Lady Humps##46517
Watch the dialogue
Escort the Caravan |q 27003/1 |goto Tanaris/0 30.54,65.70
step
talk Adarrah##46873
turnin Easy Money##27003 |goto Uldum/0 59.70,71.82
step
talk Prince Nadun##46872
accept Traitors!##27922 |goto Uldum/0 59.57,72.02
step
click Neferset Frond##206579
|tip It looks like a brown pot with a plant in it.
|tip Upstairs inside the building, in the open area with a bunch of stone columns.
Watch the dialogue
Uncover the Neferset Secret |q 27922/1 |goto Uldum/0 61.71,71.11
step
talk Prince Nadun##46872
turnin Traitors!##27922 |goto Uldum/0 59.57,72.02
accept Smoke in Their Eyes##27923 |goto Uldum/0 59.57,72.02
accept Kavem the Callous##28105 |goto Uldum/0 59.57,72.02
step
talk Budd##46875
accept Budd's Plan##27924 |goto Uldum/0 59.70,71.99
stickystart "Burn_Bales_Of_Hay"
stickystart "Collect_Neferset_Armor"
step
kill Kavem the Callous##47567
|tip Inside the building.
collect Neferset Key##62817 |q 28105/1 |goto Uldum/0 60.00,73.96
step
label "Burn_Bales_Of_Hay"
use the Brazier Torch##63027
|tip Use it next to Bales of Hay.
|tip They look like blocks of yellow straw.
Burn #5# Bales of Hay |q 27923/1 |goto Uldum/0 61.47,74.69
step
label "Collect_Neferset_Armor"
kill Neferset Sentinel##47306, Neferset Denizen##48267
|tip They look like cat centaurs.
click Neferset Armor##206591+
|tip They look like grey metal pieces of armor.
collect 6 Neferset Armor##62821 |q 27924/1 |goto Uldum/0 61.47,74.69
step
talk Budd##46875
turnin Budd's Plan##27924 |goto Uldum/0 59.70,71.99
step
talk Prince Nadun##46872
turnin Smoke in Their Eyes##27923 |goto Uldum/0 59.57,72.02
turnin Kavem the Callous##28105 |goto Uldum/0 59.57,72.02
accept Escape From the Lost City##28112 |goto Uldum/0 59.57,72.02
step
talk King Phaoris##47684
|tip Inside the building.
turnin Escape From the Lost City##28112 |goto Uldum/0 54.90,32.71
accept Impending Retribution##28134 |goto Uldum/0 54.90,32.71
step
talk Kazemde##48886
|tip Inside the building.
home Ramkahen |goto Uldum/0 54.67,32.93 |q 28141 |future
step
talk Kurzel##48275
fpath Ramkahen |goto Uldum/0 56.19,33.59
step
talk Sun Priest Asaris##47715
accept Relics of the Sun King##28141 |goto Uldum/0 52.97,27.69
accept Venomblood Antidote##28145 |goto Uldum/0 52.97,27.69
step
talk Sun Priest Asaris##47715
Select _"I might be able to help.  Were the Neferset behind this?"_ |gossip 113193
Speak with Sun Priest Asaris |q 28134/2 |goto Uldum/0 52.97,27.69
stickystart "Drain_Venomblood_Scorpids"
step
kill Wastewander Outrider##45905+
|tip They look like humans riding camels.
collect 4 Relic of the Sun King##63081 |q 28141/1 |goto Uldum/0 49.62,21.16
step
label "Drain_Venomblood_Scorpids"
kill Venomblood Scorpid##45859+
|tip They look like scorpions.
use the Antidote Vial##63086
|tip Use it on their corpses.
Drain #8# Venomblood Scorpids |q 28145/1 |goto Uldum/0 49.62,21.16
step
talk Sun Priest Asaris##47715
turnin Relics of the Sun King##28141 |goto Uldum/0 52.97,27.69
turnin Venomblood Antidote##28145 |goto Uldum/0 52.97,27.69
accept The Bandit Warlord##28502 |goto Uldum/0 52.97,27.69
step
kill Warlord Ihsenn##47755 |q 28502/1 |goto Uldum/0 45.67,16.22
step
talk Sun Priest Asaris##47715
turnin The Bandit Warlord##28502 |goto Uldum/0 52.97,27.69
step
talk Asaq##47930
Select _"The king wishes to be informed about recent Neferset activity."_ |gossip 113194
Speak with Asaq |q 28134/3 |goto Uldum/0 49.66,39.19
step
talk Mack##47318
accept Take it to 'Em!##27993 |goto Uldum/0 49.67,39.11
step
talk Nomarch Teneth##46603
Select _"King Phaoris sent me to ask you about Neferset activity."_ |gossip 113192
Speak with Nomarch Teneth |q 28134/1 |goto Uldum/0 60.28,38.28
step
Investigate Khartut's Tomb |q 27993/1 |goto Uldum/0 64.38,22.33
step
talk Harrison Jones##44860
turnin Take it to 'Em!##27993 |goto Uldum/0 64.38,22.33
accept Exploding Through##27141 |goto Uldum/0 64.38,22.33
step
click Powder Keg##245346
Watch the dialogue
Assist Harrison at Khartut's Tomb |q 27141/1 |goto Uldum/0 64.33,22.22
step
talk Harrison Jones##45180
turnin Exploding Through##27141 |goto Uldum/0 64.56,28.60
step
talk Sand Pygmy Corpse##45186
accept Field Work##27179 |goto Uldum/0 64.63,28.68
step
click the Elaborate Disc##205266
accept A Strange Disc##27176 |goto Uldum/0 64.85,29.57
stickystart "Collect_Ornate_Tablet_Fragments"
step
kill Mangy Hyena##45202+
accept Do the World a Favor##27187 |goto Uldum/0 66.10,29.00
|tip You will eventually automatically accept this quest.
stickystart "Eradicate_Mangy_Hyenas"
step
kill Sultan Oogah##45205
|tip He walks around this small area riding a hyena.
collect Sultan's Staff##60865 |q 27176 |goto Uldum/0 68.09,31.79
step
use the Elaborate Disc##60859
collect Shaft of the Stars##60868 |q 27176/1
step
label "Collect_Ornate_Tablet_Fragments"
kill Sand Pygmy##45190+
|tip They look like small humans.
click Ornate Tablet Fragment##205251+
|tip They look like broken stone tablet pieces.
collect 10 Ornate Tablet Fragment##60860 |q 27179/1 |goto Uldum/0 65.54,29.90
step
label "Eradicate_Mangy_Hyenas"
kill Mangy Hyena##45202+
Eradicate #12# Mangy Hyenas |q 27187/1 |goto Uldum/0 65.54,29.90
step
_Click the Complete Quest Box:_
turnin Do the World a Favor##27187
step
talk Harrison Jones##45180
turnin Field Work##27179 |goto Uldum/0 64.56,28.60
turnin A Strange Disc##27176 |goto Uldum/0 64.56,28.60
accept On to Something##27196 |goto Uldum/0 64.56,28.60
step
talk Harrison Jones##45180
Select _"I'm ready, Doctor Jones!"_ |gossip 112680
Begin Following Harrison Jones |goto Uldum/0 64.56,28.60 > 10 |c |q 27196
step
Accompany Harrison Jones to the Chamber of the Stars |q 27196/1 |goto Uldum/0 64.19,27.22
|tip Follow Harrison Jones as he walks.
|tip He eventually walks to this location.
step
Fly down into the cave |goto Uldum/0 64.49,26.41 < 30 |walk
talk Harrison Jones##45296
|tip Inside the cave.
turnin On to Something##27196 |goto Uldum/0 64.50,28.00
accept The Thrill of Discovery##27511 |goto Uldum/0 64.50,28.00
step
Examine the Northern Hieroglyphs |q 27511/2 |goto Uldum/0 65.65,25.61
|tip Inside the cave.
step
Examine the Ancient Mechanism |q 27511/1 |goto Uldum/0 64.50,29.82
|tip Inside the cave.
step
clicknpc Schnottz Scout##45874
|tip Inside the cave.
accept Lessons From the Past##27541 |goto Uldum/0 63.44,32.49
step
clicknpc Schnottz Scout##45874
|tip Inside the cave.
Select _"Take the scout's spectacles."_ |gossip 112816
collect Broken Spectacles##61929 |q 27541/1 |goto Uldum/0 63.44,32.49
step
Examine the Southern Hieroglyphs |q 27511/3 |goto Uldum/0 63.35,34.03
|tip Inside the cave.
step
_Click the Complete Quest Box:_
turnin The Thrill of Discovery##27511
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin Lessons From the Past##27541 |goto Uldum/0 64.50,28.00
accept Be Prepared##28602 |goto Uldum/0 64.50,28.00
accept By the Light of the Stars##27549 |goto Uldum/0 64.50,28.00
stickystart "Collect_Pieces_Of_Rope"
step
click Suspended Starlight##205582+
|tip They look like balls of light floating near the ground.
|tip Inside the cave.
|tip Any Indentured Protectors nearby will attack you after you click them.
collect 7 Suspended Starlight##61376 |q 27549/1 |goto Uldum/0 63.24,29.83
step
label "Collect_Pieces_Of_Rope"
kill Tormented Tomb-Robber##45765+
|tip They look like skeletons laying on the ground.
|tip Inside the cave. |notinsticky
|tip Walk over them and they will attack you.
collect 6 Piece of Rope##61322 |q 28602/1 |goto Uldum/0 63.24,29.83 |only if haveq(28602) or completedq(28602)
collect 6 Piece of Rope##61322 |q 27517/1 |goto Uldum/0 63.24,29.83 |only if haveq(27517) or completedq(27517)
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin Be Prepared##28602 |goto Uldum/0 64.50,28.00 |only if haveq(28602) or completedq(28602)
turnin Be Prepared##27517 |goto Uldum/0 64.50,28.00 |only if haveq(27517) or completedq(27517)
turnin By the Light of the Stars##27549 |goto Uldum/0 64.50,28.00
step
Watch the dialogue
talk Harrison Jones##45296
|tip Inside the cave.
accept Tipping the Balance##27431 |goto Uldum/0 64.50,28.00
step
talk Harrison Jones##45296
|tip Inside the cave.
Select _"What can I do to help?"_ |gossip 112751
Watch the dialogue
Stay Out of Harrison's Way |q 27431/1 |goto Uldum/0 64.50,28.00
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin Tipping the Balance##27431 |goto Uldum/0 64.50,28.00
accept After the Fall##27624 |goto Uldum/0 64.50,28.00
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the Morning Star##61044 |q 27624/1 |goto Uldum/0 64.09,26.55
step
kill Amethyst Scarab##46129
|tip Inside the cave.
accept Just a Fancy Cockroach##27627 |goto Uldum/0 63.43,27.06
|tip You will automatically accept this quest.
step
kill 5 Amethyst Scarab##46129 |q 27627/1 |goto Uldum/0 63.43,27.06
|tip Inside the cave.
stickystart "Kill_Sapphire_Scarabs"
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the Evening Star##61975 |q 27624/2 |goto Uldum/0 66.70,27.88
step
label "Kill_Sapphire_Scarabs"
kill 5 Sapphire Scarab##46127 |q 27627/3 |goto Uldum/0 66.10,27.14
|tip Inside the cave. |notinsticky
stickystart "Kill_Emerald_Scarabs"
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the Shooting Star##61977 |q 27624/4 |goto Uldum/0 65.34,32.56
step
label "Kill_Emerald_Scarabs"
kill 5 Emerald Scarab##46128 |q 27627/2 |goto Uldum/0 65.75,32.36
|tip Inside the cave. |notinsticky
stickystart "Kill_Turquoise_Scarabs"
step
click Watcher Head##205889
|tip Inside the cave.
collect Orb of the North Star##61976 |q 27624/3 |goto Uldum/0 62.58,32.01
step
label "Kill_Turquoise_Scarabs"
kill 5 Turquoise Scarab##46126 |q 27627/4 |goto Uldum/0 63.12,32.50
|tip Inside the cave. |notinsticky
step
_Click the Complete Quest Box:_
turnin Just a Fancy Cockroach##27627
step
talk Harrison Jones##45296
|tip Inside the cave.
turnin After the Fall##27624 |goto Uldum/0 64.50,28.00
accept Do the Honors##27669 |goto Uldum/0 64.50,28.00
step
use the Orbs of the Stars##62054
|tip Inside the cave.
Watch the dialogue
Reactivate the Obelisk of the Stars |q 27669/1 |goto Uldum/0 64.49,28.71
step
talk Harrison Jones##48034
turnin Do the Honors##27669 |goto Uldum/0 63.90,33.84
step
talk King Phaoris##47684
|tip Inside the building.
turnin Impending Retribution##28134 |goto Uldum/0 54.90,32.72
accept Al'Akir's Vengeance##28135 |goto Uldum/0 54.90,32.72
step
talk Adarrah##47005
accept That Gleam in his Eye##27899 |goto Uldum/0 54.29,35.28
step
talk Prince Nadun##45799
turnin Al'Akir's Vengeance##28135 |goto Uldum/0 45.24,37.97
accept Minions of Al'Akir##27520 |goto Uldum/0 45.24,37.97
step
talk General Ammantep##45772
accept Under the Choking Sands##27519 |goto Uldum/0 45.30,37.80
accept The Prophet Hadassi##27595 |goto Uldum/0 45.30,37.80
stickystart "Kill_Scions_Of_AlAkir"
stickystart "Rescue_Orsis_Survivors"
step
talk Prophet Hadassi##46003
turnin The Prophet Hadassi##27595 |goto Uldum/0 40.00,40.55
accept The Prophet's Dying Words##27602 |goto Uldum/0 40.00,40.55
step
click Sand-Covered Hieroglyphs##205874
|tip Inside the building.
turnin The Prophet's Dying Words##27602 |goto Uldum/0 39.64,45.43
accept Colossal Guardians##27623 |goto Uldum/0 39.64,45.43
step
clicknpc Colossus of the Sun##46041
kill Colossus of the Sun##46041
collect Stone of the Sun##61971 |q 27623/2 |goto Uldum/0 39.59,40.91
step
clicknpc Colossus of the Moon##46042
kill Colossus of the Moon##46042
collect Stone of the Moon##61970 |q 27623/1 |goto Uldum/0 41.23,37.62
step
label "Kill_Scions_Of_AlAkir"
kill 6 Scion of Al'Akir##45755 |q 27520/1 |goto Uldum/0 40.58,40.30
|tip They look like armored air elementals.
step
label "Rescue_Orsis_Survivors"
clicknpc Orsis Survivor##45715+
|tip They look like cat centaurs laying on the ground.
|tip Many can be half-buried, so you only see their arm moving around in the sand.
|tip You can do this while mounted.
Rescue #8# Orsis Survivors |q 27519/1 |goto Uldum/0 40.58,40.30
step
click Sand-Covered Hieroglyphs##205874
|tip Inside the building.
turnin Colossal Guardians##27623 |goto Uldum/0 39.64,45.43
accept The Scepter of Orsis##27706 |goto Uldum/0 39.64,45.43
step
click Sacred Receptacle##205824
|tip Inside the building.
collect The Scepter of Orsis##62267 |q 27706/1 |goto Uldum/0 39.64,45.43
step
talk Harrison Jones##46978
|tip On top of the mountain.
turnin That Gleam in his Eye##27899 |goto Uldum/0 43.98,57.09
accept I've Got This Guy##27900 |goto Uldum/0 43.98,57.09
accept They Don't Know What They've Got Here##27901 |goto Uldum/0 43.98,57.09
stickystart "Kill_Schnottz_Air_Troopers"
step
kill Schnottz Air Officer##46993+
collect Efficient Excavations##62768 |n
use the Efficient Excavations##62768
accept Efficient Excavations##28132 |goto Uldum/0 44.24,58.62
step
kill Schnottz Air Officer##46993+
collect Uldum Chest Key Code##62608+ |n
click Obelisk of the Sun Coffer##206531+
|tip They look like small brown chests.
collect 6 Titan Device Component##62610 |q 27901 |goto Uldum/0 44.24,58.62
step
use the Titan Device Component##62610
collect Titan Activation Device##62607 |q 27901/1
step
label "Kill_Schnottz_Air_Troopers"
kill 10 Schnottz Air Trooper##46979 |q 27900/1 |goto Uldum/0 44.24,58.62
step
talk Harrison Jones##46978
turnin I've Got This Guy##27900 |goto Uldum/0 43.98,57.09
turnin They Don't Know What They've Got Here##27901 |goto Uldum/0 43.98,57.09
accept Ignition##27903 |goto Uldum/0 43.98,57.09
step
Enter the cave |goto Uldum/0 45.20,58.78 < 30 |walk
use the Titan Activation Device##62611
|tip Inside the cave.
kill Titanic Guardian##47032
|tip Click the large lava meteors that appear on the ground nearby as you fight him.
|tip They will do massive damage to him.
collect Lens of the Sun##62705 |q 27903/1 |goto Uldum/0 47.25,58.81
step
clicknpc Titan Mechanism##50401
|tip Up on the hanging platform.
|tip Inside the cave.
turnin Ignition##27903 |goto Uldum/0 45.58,57.75
step
talk Harrison Jones##46978
accept Tailgunner!##27905 |goto Uldum/0 43.98,57.09
step
Watch the dialogue
Escape the Obelisk of the Sun |q 27905/1 |goto Uldum/0 54.54,42.07 |notravel
|tip Shoot down the planes that chase you.
|tip Use the abilities on your action bar.
step
talk Harrison Jones##48082
turnin Tailgunner!##27905 |goto Uldum/0 54.64,41.79
step
talk Prince Nadun##45799
turnin Minions of Al'Akir##27520 |goto Uldum/0 45.24,37.97
step
talk General Ammantep##45772
turnin Under the Choking Sands##27519 |goto Uldum/0 45.30,37.80
turnin The Scepter of Orsis##27706 |goto Uldum/0 45.30,37.80
step
talk Prince Nadun##45799
accept Send Word to Phaoris##27628 |goto Uldum/0 45.24,37.97
step
talk King Phaoris##47684
|tip Inside the building.
turnin Send Word to Phaoris##27628 |goto Uldum/0 54.90,32.72
step
talk Prince Nadun##47959
accept The High Priest's Vote##27630 |goto Uldum/0 55.02,34.04
accept The Vizier's Vote##27629 |goto Uldum/0 55.02,34.04
accept The High Commander's Vote##27631 |goto Uldum/0 55.02,34.04
step
Enter the tunnel inside the dam |goto Uldum/0 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the tunnel inside the dam.
turnin The High Priest's Vote##27630 |goto Uldum/0 54.18,41.88
accept Stopping the Spread##27836 |goto Uldum/0 54.18,41.88
accept Trespassers in the Water##27837 |goto Uldum/0 54.18,41.88
stickystart "Kill_Stillwater_Slitherers"
step
click Slitherer Egg##206390+
|tip They look like large white eggs.
|tip Underwater.
Destroy #6# Slitherer Eggs |q 27836/1 |goto Uldum/0 53.32,38.67
step
label "Kill_Stillwater_Slitherers"
kill 8 Stillwater Slitherer##46868 |q 27837/1 |goto Uldum/0 53.32,38.67
|tip They look like long snakes.
|tip Underwater. |notinsticky
step
Enter the tunnel inside the dam |goto Uldum/0 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the building.
turnin Stopping the Spread##27836 |goto Uldum/0 54.18,41.88
turnin Trespassers in the Water##27837 |goto Uldum/0 54.18,41.88
accept The Defilers' Ritual##28611 |goto Uldum/0 54.18,41.88
step
Enter the underwater cave |goto Uldum/0 51.83,40.12 < 30 |walk
kill Dark Ritualist Zakahn##49148
|tip Inside the underwater cave.
Stop the Neferset Ritual |q 28611/1 |goto Uldum/0 49.93,40.11
step
Enter the tunnel inside the dam |goto Uldum/0 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the building.
turnin The Defilers' Ritual##28611 |goto Uldum/0 54.18,41.88
accept The Root of the Corruption##27838 |goto Uldum/0 54.18,41.88
step
talk High Commander Kamses##46134
turnin The High Commander's Vote##27631 |goto Uldum/0 58.89,46.08
accept The Weakest Link##28198 |goto Uldum/0 58.89,46.08
accept Ploughshares to Swords##28201 |goto Uldum/0 58.89,46.08
step
talk Sergeant Mehat##48012
accept The Element of Supplies##28200 |goto Uldum/0 58.97,46.13
step
talk Salhet##46883
turnin The Weakest Link##28198 |goto Uldum/0 59.57,47.33
accept Shaping Up##28210 |goto Uldum/0 59.57,47.33
step
talk Vizier Tanotep##46136
|tip He walks around this area.
turnin The Vizier's Vote##27629 |goto Uldum/0 56.35,53.52
accept Tanotep's Son##27632 |goto Uldum/0 56.35,53.52
step
talk Ramkahen Laborer##46333+
|tip They look like cat centaurs chopping on crops.
|tip You can do this while mounted.
Recruit #8# Ramkahen Laborers |q 28201/1 |goto Uldum/0 54.28,51.51
step
kill Riverbed Crocolisk##45321+
|tip All along the river.
collect 20 Hardened Crocolisk Hide##63256 |q 28200/1 |goto Uldum/0 56.75,48.94
step
talk Sergeant Mehat##48012
turnin The Element of Supplies##28200 |goto Uldum/0 58.97,46.13
step
talk High Commander Kamses##46134
turnin Ploughshares to Swords##28201 |goto Uldum/0 58.89,46.08
accept Ancient Weapons##27839 |goto Uldum/0 58.89,46.08
step
use the Horn of Ramkahen##62534
|tip Your allies will come to attack the enemies nearby.
Click Here After Your Allies Attack the Enemies |confirm |goto Uldum/0 60.46,57.76 |q 27839
step
click Ancient Tol'vir Weapons##10071
collect Ancient Tol'vir Armaments##62533 |q 27839/1 |goto Uldum/0 60.47,58.61
step
kill Neferset Guard##46340+
|tip They look like cat centaurs.
collect Vir'Naal Delta Map##62280 |q 27632/1 |goto Uldum/0 58.09,60.52
step
_Click the Complete Quest Box:_
turnin Tanotep's Son##27632
accept Neferset Prison##27707
step
kill Bloodsnarl Hyena##45353+
Help Salhet Defeat #8# Bloodsnarl Hyenas |q 28210/1 |goto Uldum/0 53.35,57.18
step
_Next to you:_
talk Salhet##48022
turnin Shaping Up##28210
accept Salhet's Secret##28276
step
talk Salhet##48237
turnin Salhet's Secret##28276 |goto Uldum/0 56.92,62.42
accept Salhet the Tactician##28277 |goto Uldum/0 56.92,62.42
step
talk Salhet##48237
Select _"Fine.  Let's see what you and your lions can do."_ |gossip 113234
Control Salhet's Lions |invehicle |goto Uldum/0 56.92,62.42 |q 28277
step
Kill the enemies that attack in waves
|tip Use the abilities on your action bar.
Slay #30# Bloodsnarl Scavengers |q 28277/1 |goto Uldum/0 56.91,62.50
step
talk Salhet##48237
turnin Salhet the Tactician##28277 |goto Uldum/0 56.92,62.42
accept Return to Camp##28291 |goto Uldum/0 56.92,62.42
step
talk Ramkahen Prisoner##46425
Select _"I'm looking for Tahet.  Let's get you out of these chains."_ |gossip 112848
Watch the dialogue
Kill the enemies that attack
kill Neferset Overlord##46441
Discover Tahet's Whereabouts |q 27707/1 |goto Uldum/0 71.27,73.70
step
_Click the Complete Quest Box:_
turnin Neferset Prison##27707
accept The Pit of Scales##27738
step
talk Tahet##46496
Kill the enemies that attack
kill Caimas the Pit Master##46276
|tip Run around and make him run over the large pink Croc Eggs.
|tip Baby Crocs will damage him and slow him down.
Free Tahet |q 27738/1 |goto Uldum/0 58.35,82.84
step
kill Scalemother Hevna##46871 |q 27838/1 |goto Uldum/0 58.93,14.19
|tip Underwater.
step
Enter the tunnel inside the dam |goto Uldum/0 52.89,45.37 < 15 |walk
talk High Priest Amet##46135
|tip Inside the building.
turnin The Root of the Corruption##27838 |goto Uldum/0 54.18,41.88
step
talk High Commander Kamses##46134
turnin Return to Camp##28291 |goto Uldum/0 58.89,46.09
turnin Ancient Weapons##27839 |goto Uldum/0 58.89,46.09
step
talk Vizier Tanotep##46136
|tip He walks around this area.
turnin The Pit of Scales##27738 |goto Uldum/0 56.28,53.49
accept The High Council's Decision##28533 |goto Uldum/0 56.28,53.49
step
talk King Phaoris##47684
|tip Inside the building.
turnin The High Council's Decision##28533 |goto Uldum/0 54.90,32.70
accept Nahom Must Hold##28561 |goto Uldum/0 54.90,32.72
step
talk Salhet##48761
|tip Inside the building.
turnin Nahom Must Hold##28561 |goto Uldum/0 67.23,42.89
accept The Secret of Nahom##28498 |goto Uldum/0 67.23,42.89
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
accept Punish the Trespassers##28499 |goto Uldum/0 67.33,42.79
stickystart "Slay_Neferset_Intruders"
step
click Atulhet's Record Fragment##207281+
|tip They look like broken stone tablet pieces.
collect 8 Atulhet's Record Fragment##64642 |q 28498/1 |goto Uldum/0 74.40,43.69
step
label "Slay_Neferset_Intruders"
kill Neferset Scryer##48625, Neferset Looter##48627, Neferset Raider##48626
|tip They look like cat centaurs.
Slay #10# Neferset Intruders |q 28499/1 |goto Uldum/0 74.81,49.38
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
turnin Punish the Trespassers##28499 |goto Uldum/0 67.33,42.79
step
talk Salhet##48761
|tip Inside the building.
turnin The Secret of Nahom##28498 |goto Uldum/0 67.23,42.89
accept The Cypher of Keset##28500 |goto Uldum/0 67.23,42.89
step
kill Raider Lord Havat##49214
collect The Cypher of Keset##64649 |q 28500/1 |goto Uldum/0 78.18,45.74
step
talk Salhet##48761
|tip Inside the building.
turnin The Cypher of Keset##28500 |goto Uldum/0 67.23,42.89
accept The Defense of Nahom##28501 |goto Uldum/0 67.23,42.89
step
talk Ramkahen Sergeant##49228
Control the Ramkahen Soldiers |invehicle |goto Uldum/0 66.69,41.84 |q 28501
step
Kill the enemies that attack in waves
|tip Use the abilities on your action bar.
Complete the Defense of Nahom |q 28501/1 |goto Uldum/0 66.64,41.84
step
Stop Controlling the Ramkahen Soldiers |outvehicle |q 28501
|tip Click the arrow on your action bar.
step
talk Salhet##48761
|tip Inside the building.
turnin The Defense of Nahom##28501 |goto Uldum/0 67.23,42.89
accept The Push Westward##28623 |goto Uldum/0 67.23,42.89
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
accept The Curse of the Tombs##27755 |goto Uldum/0 67.33,42.79
stickystart "Accept_Artificial_Intelligence"
stickystart "Kill_Crazed_Diggers"
step
kill Mekgineer Mixeltweed##46592 |q 27755/2 |goto Uldum/0 69.61,58.62
|tip He walks around this area on a metal spider.
step
label "Accept_Artificial_Intelligence"
kill Crazed Digger##46590+
|tip They look like gnomes.
collect A.I.D.A. Communicator##62483 |n
use the A.I.D.A. Communicator##62483
accept Artificial Intelligence##27760 |goto Uldum/0 70.01,58.86
step
label "Kill_Crazed_Diggers"
kill 6 Crazed Digger##46590 |q 27755/1 |goto Uldum/0 70.01,58.86
|tip They look like gnomes.
step
click A.I.D.A. Terminal##206293
turnin Artificial Intelligence##27760 |goto Uldum/0 74.13,64.44
accept A Disarming Distraction##27761 |goto Uldum/0 74.13,64.44
accept Core Access Codes##27777 |goto Uldum/0 74.13,64.44
step
use the Mech Control Scrambler##62542
|tip Use it on Twizzleflux the Insane repeatedly.
kill Twizzleflux the Insane##46587
collect Core Access Codes##62399 |q 27777/1 |goto Uldum/0 73.33,72.80
stickystart "Deactivate_Unstable_Bomb_Bots"
step
use the Holographic Projector##62398
|tip It will distract nearby enemies.
click First Bomb Cluster##206395
|tip On top of a pile of red dynamite.
Disarm the First Bomb Cluster |q 27761/1 |goto Uldum/0 78.80,62.04
step
use the Holographic Projector##62398
|tip It will distract nearby enemies.
click Second Bomb Cluster##206396
|tip On top of a pile of red dynamite.
Disarm the Second Bomb Cluster |q 27761/2 |goto Uldum/0 79.00,64.25
step
use the Holographic Projector##62398
|tip It will distract nearby enemies.
click Third Bomb Cluster##206397
|tip On top of a pile of red dynamite.
Disarm the Third Bomb Cluster |q 27761/3 |goto Uldum/0 79.05,64.90
step
label "Deactivate_Unstable_Bomb_Bots"
use the Holographic Projector##62398 |notinsticky
|tip It will distract nearby enemies. |notinsticky
clicknpc Unstable Bomb Bot##46888+
|tip They look like walking grey bombs.
Deactivate #4# Unstable Bomb Bots |q 27761/4 |goto Uldum/0 79.08,63.25
step
click A.I.D.A. Terminal##206293
turnin A Disarming Distraction##27761 |goto Uldum/0 74.13,64.44
turnin Core Access Codes##27777 |goto Uldum/0 74.13,64.44
accept Hacking the Wibson##27778 |goto Uldum/0 74.13,64.44
step
click Maintenance Tools##206532
|tip On top of the large metal ship.
collect Maintenance Axe##62621 |q 27778 |goto Uldum/0 77.00,62.92
step
clicknpc Wibson Mainframe##46715
|tip On top of the large metal ship.
Hack the Wibson Mainframe |q 27778/1 |goto Uldum/0 76.97,62.96
step
talk Fusion Core##46750
|tip On top of the large metal ship.
turnin Hacking the Wibson##27778 |goto Uldum/0 77.27,63.26
accept Gnomebliteration##27779 |goto Uldum/0 77.27,63.26
step
Obliterate #1000# Crazed Gnomes |q 27779/1 |goto Uldum/0 81.96,58.60
|tip You will roll down the hill as the Fusion Core.
|tip Roll over gnomes around this area.
|tip If you lose the Fusion Core, you can get it again by flying back to the large metal ship in the previous guide step.
step
Stop Controlling the Fusion Core |outvehicle |q 27779
|tip Click the arrow on your action bar.
step
talk Fusion Core##46750
|tip On top of the large metal ship.
turnin Gnomebliteration##27779 |goto Uldum/0 77.27,63.26
step
talk King Phaoris##48564
turnin The Push Westward##28623 |goto Uldum/0 52.02,65.46
accept Lieutenants of Darkness##28480 |goto Uldum/0 52.02,65.46
accept Bleeding the Enemy##28483 |goto Uldum/0 52.02,65.46
step
talk Salhet##49345
accept Salhet's Gambit##28486 |goto Uldum/0 52.94,65.52
step
Locate the Ramkahen Rangers |goto Uldum/0 54.07,71.20 < 10 |c |q 28486
step
talk Ramkahen Ranger Captain##49244
Begin Following the Ramkahen Rangers |goto Uldum/0 54.07,71.20 > 10 |c |q 28486
step
Watch the dialogue
|tip Follow the Ramkahen Rangers and protect them as they walk.
|tip They eventually walk to this location.
Secure Higher Ground |q 28486/1 |goto Uldum/0 53.76,75.40
stickystart "Collect_Neferset_Insignias"
step
kill High Priest Sekhemet##47730 |q 28480/2 |goto Uldum/0 47.50,77.26
step
kill Scorpion-Lord Namkhare##47742 |q 28480/1 |goto Uldum/0 50.56,86.98
step
label "Collect_Neferset_Insignias"
kill Neferset Ritualist##47762, Neferset Cursebringer##47760, Neferset Venom Keeper##47741, Neferset Snake Charmer##47738
|tip They look like cat centaurs.
collect 10 Neferset Insignia##64352 |q 28483/1 |goto Uldum/0 50.53,79.11
step
talk Salhet##49345
turnin Salhet's Gambit##28486 |goto Uldum/0 52.94,65.52
step
talk King Phaoris##48564
turnin Lieutenants of Darkness##28480 |goto Uldum/0 52.02,65.46
turnin Bleeding the Enemy##28483 |goto Uldum/0 52.02,65.46
accept The Fall of Neferset City##28520 |goto Uldum/0 52.02,65.46
step
kill Dark Pharaoh Tekahn##47753 |q 28520/1 |goto Uldum/0 52.00,82.30
|tip Your allies will eventually appear to help you fight.
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Efficient Excavations##28132 |goto Uldum/0 24.37,64.55
accept Eastern Hospitality##27926 |goto Uldum/0 24.37,64.55
step
talk Ambassador Laurent##47176
|tip Inside the building.
Select _"Quite an operation, indeed. What do you think of our host?"_ |gossip 113124
Select _"I've encountered some of his underlings out in the field. They've been quite hostile."_ |gossip 113123
Mingle with Ambassador Laurent |q 27926/1 |goto Uldum/0 22.47,63.16
step
talk Refined Gentleman##47185
|tip Inside the building.
Select _"What do you know of our generous host, sir?"_ |gossip 113126
Select _"Hmmm, well what is it that brings you to these parts?"_ |gossip 113127
Mingle with a Refined Gentleman |q 27926/2 |goto Uldum/0 22.51,63.23
step
talk Budding Artist##47187
|tip Inside the building.
Select _"Indeed! And how do you find the Commander, friend?"_ |gossip 113128
Select _"His troops, these guards... it all seems a little intense."_ |gossip 113129
Mingle with a Budding Artist |q 27926/3 |goto Uldum/0 22.25,63.18
step
talk Aspiring Starlet##47189
|tip Inside the building.
Select _"Ahh, yes. How have you been enjoying your time here?"_ |gossip 113130
Select _"Uhhh.. I'm not sure. Anything else you can tell me about him?"_ |gossip 113131
Select _"What do you think about the troops he's arming? Seems a little excessive, no?"_ |gossip 113132
Mingle with an Aspiring Starlet |q 27926/4 |goto Uldum/0 22.24,63.23
step
clicknpc Arcane Guest Registry##49528
|tip It looks like a floating book.
|tip Inside the building.
home Schnottz's Hostel |goto Uldum/0 22.00,64.50 |q 27928 |future
step
talk Evax Oilspark##48273
fpath Schnottz's Landing |goto Uldum/0 22.29,64.93
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Eastern Hospitality##27926 |goto Uldum/0 24.37,64.55
accept A Favor for the Furrier##27928 |goto Uldum/0 24.37,64.55
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
accept The Desert Fox##27939 |goto Uldum/0 24.45,64.13
stickystart "Collect_The_Desert_Fox"
stickystart "Collect_Desert_Coyote_Pelts"
step
kill Diseased Vulture##47202+
|tip They look like birds flying in the air.
accept Dirty Birds##27940 |goto Uldum/0 43.58,71.00
|tip You will eventually automatically accept this quest.
stickystart "Kill_Diseased_Vultures"
step
label "Collect_The_Desert_Fox"
clicknpc Desert Fox##47201
|tip It looks like a small brown fox that runs around this area.
|tip It can spawn and run around other locations, so if it's not here, search around this area.
collect The Desert Fox##62777 |q 27939/1 |goto Uldum/0 41.42,67.37
step
label "Kill_Diseased_Vultures"
kill 8 Diseased Vulture##47202 |q 27940/1 |goto Uldum/0 43.58,71.00
|tip They look like birds flying in the air.
step
label "Collect_Desert_Coyote_Pelts"
kill Shaggy Desert Coyote##47190+
|tip They look like wolves.
collect 5 Desert Coyote Pelt##62776 |q 27928/1 |goto Uldum/0 43.58,71.00
step
_Click the Complete Quest Box:_
turnin Dirty Birds##27940
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
turnin The Desert Fox##27939 |goto Uldum/0 24.46,64.20
accept Idolatry##27942 |goto Uldum/0 24.46,64.20
accept Angered Spirits##27943 |goto Uldum/0 24.46,64.20
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin A Favor for the Furrier##27928 |goto Uldum/0 24.37,64.55
accept Fashionism##27941 |goto Uldum/0 24.37,64.55
stickystart "Collect_Trooper_Uniforms"
stickystart "Collect_Well_Preserved_Idols"
step
kill Furious Specter##47220+
|tip They look like larger green ghosts.
|tip Don't kill them, just get them below half health to weaken them.
use the Licensed Proton Accelerator Cannon##62794
|tip Use it on them when they are weakened.
collect 5 Furious Spectral Essence##62793 |q 27943/1 |goto Uldum/0 32.31,63.25
step
label "Collect_Trooper_Uniforms"
clicknpc Dead Trooper##47219+
|tip They look like dead humans.
collect 10 Trooper Uniform##62789 |q 27941/1 |goto Uldum/0 32.31,63.25
step
label "Collect_Well_Preserved_Idols"
click Well-preserved Idol##206563+
|tip They look like tiny black sitting dog figurines.
collect 8 Well-preserved Idol##62792 |q 27942/1 |goto Uldum/0 32.31,63.25
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Fashionism##27941 |goto Uldum/0 24.37,64.55
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
turnin Idolatry##27942 |goto Uldum/0 24.46,64.20
turnin Angered Spirits##27943 |goto Uldum/0 24.46,64.20
accept Gobbles!##27950|goto Uldum/0 24.46,64.20
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
Select _"The perimeter is secure, commander."_ |gossip 113125
Watch the dialogue
Witness Gobbles' Transformation Ritual |q 27950/1 |goto Uldum/0 24.46,64.20
step
_Click the Complete Quest Box:_
turnin Gobbles!##27950
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
accept Make Yourself Useful##27969 |goto Uldum/0 24.46,64.20
step
use the Refurbished Trooper Uniform##62813
Wear the Uniform |havebuff Uniform##88210 |q 27969
step
talk Slacking Laborer##47292+
|tip They look like humans sitting or laying down.
|tip You can find them in the small camps around this area.
Select _"Enough slacking! You're behind schedule..."_ |gossip 113143
|tip They may attack you.
Motivate #6# Slacking Laborers |q 27969/1 |goto Uldum/0 22.04,60.14
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
turnin Make Yourself Useful##27969 |goto Uldum/0 24.46,64.20
step
talk Belloc Brightblade##47670
|tip Inside the building.
accept Crisis Management##28002 |goto Uldum/0 24.37,64.55
step
talk Budding Artist##47707
Select _"Just take a deep breath. Did you see anything?"_ |gossip 113180
Select _"Just relax... Panicking will only make it worse."_ |gossip 113181
Counsel the Budding Artist |q 28002/4 |goto Uldum/0 22.50,64.03
step
talk Prolific Writer##47516
Select _"Who could have done such a thing?"_ |gossip 113163
Select _"Will you investigate the murder?"_ |gossip 113164
Select _"Well, you WILL at least write about it, won't you?"_ |gossip 113165
Question the Prolific Writer |q 28002/1 |goto Uldum/0 22.38,63.84
step
talk Privileged Socialite##47519
Select _"Just calm down. Are you alright?"_ |gossip 113166
Select _"Did you see what happened?"_ |gossip 113167
Select _"Maybe you should go lie down for a little while."_ |gossip 113168
Soothe the Privileged Socialite |q 28002/2 |goto Uldum/0 22.24,63.91
step
talk Pretentious Businessman##47520
Select _"Don't you want to know what happened to the man?"_ |gossip 113178
Select _"Your only concern here is your stake in this operation?"_ |gossip 113179
Chasten the Pretentious Businessman |q 28002/3 |goto Uldum/0 22.31,64.07
step
talk Belloc Brightblade##47670
|tip Inside the building.
turnin Crisis Management##28002 |goto Uldum/0 24.37,64.55
step
talk Commander Schnottz##47159
|tip He walks around this small area.
|tip Inside the building.
accept Battlezone##27990 |goto Uldum/0 24.46,64.20
step
clicknpc Schnottz's Siege Tank##47732
Watch the dialogue
Control Schnottz's Siege Tank |invehicle |goto Uldum/0 21.28,64.60 |q 27990
step
kill Decrepit Watcher##47385+
|tip They look like giants.
|tip Use the ability on your action bar.
Obliterate #7# Decrepit Watchers |q 27990/1 |goto Uldum/0 20.03,59.57
step
Return to the Base |outvehicle |goto Uldum/0 21.41,62.98 |q 27990 |notravel
step
Return to Schnottz |q 27990/2 |goto Uldum/0 24.30,64.09
step
talk Commander Schnottz##47940
|tip Inside the building.
turnin Battlezone##27990 |goto Uldum/0 24.41,64.08
accept Missed Me By Zhat Much!##28187 |goto Uldum/0 24.41,64.08
step
talk Commander Schnottz##47940
|tip Inside the building.
Select _"Alright, let's move."_ |gossip 113191
Begin Following Commander Schnottz |goto Uldum/0 24.41,64.08 > 10 |c |q 28187
step
Watch the dialogue
|tip Follow Commander Schnottz as he walks.
|tip He eventually walks to this location inside the building.
Accompany Schnottz to Safety |q 28187/1 |goto Uldum/0 22.54,63.17
'|clicknpc Commander Schnottz##47957
step
talk Commander Schnottz##47972
|tip Inside the building.
turnin Missed Me By Zhat Much!##28187 |goto Uldum/0 22.51,63.18
accept Lockdown!##28193 |goto Uldum/0 22.51,63.18
step
Visit Schnottz's Guests |q 28193/1 |goto Uldum/0 21.90,64.10
|tip Inside the building.
step
talk Prolific Writer##47967
|tip Inside the building.
accept The Great Escape##28194 |goto Uldum/0 21.85,64.02
step
talk Commander Schnottz##47972
|tip Inside the building.
turnin Lockdown!##28193 |goto Uldum/0 22.51,63.18
accept Sending a Message##28195 |goto Uldum/0 22.51,63.18
stickystart "Collect_Fresh_Sailor_Uniforms"
step
kill Captain Margun##47981 |q 28195/1 |goto Uldum/0 22.31,67.57
|tip At the top of the ship.
step
kill Captain Cork##47980 |q 28195/2 |goto Uldum/0 24.88,68.97
|tip At the top of the ship.
step
kill Captain Kronkh##47978 |q 28195/3 |goto Uldum/0 26.08,68.63
|tip At the top of the ship.
step
label "Collect_Fresh_Sailor_Uniforms"
kill Schnottz Sea Trooper##47982+
|tip They look like humans.
|tip On the three ships around this area. |notinsticky
collect 6 Fresh Sailor Uniform##63248 |q 28194/1 |goto Uldum/0 24.94,68.22
step
talk Prolific Writer##47967
|tip Inside the building.
turnin The Great Escape##28194 |goto Uldum/0 21.85,64.02
step
talk Commander Schnottz##47972
|tip Inside the building.
turnin Sending a Message##28195 |goto Uldum/0 22.51,63.18
accept Firing Squad##28267 |goto Uldum/0 22.51,63.18
step
talk Commander Schnottz##47972
|tip Inside the building.
Select _"Uhhh, I suppose I'm ready..."_ |gossip 113232
Watch the dialogue
Go 'Out Back' With Schnottz |q 28267/1 |goto Uldum/0 22.51,63.18
step
talk Harrison Jones##48162
turnin Firing Squad##28267 |goto Uldum/0 23.55,60.26
accept Meet Me In Vir'sar##28269 |goto Uldum/0 23.55,60.26
step
talk King Phaoris##47684
|tip Inside the building.
turnin The Fall of Neferset City##28520 |goto Uldum/0 54.90,32.72
step
talk Sun Prophet Tumet##48501
|tip Inside the building.
turnin The Curse of the Tombs##27755 |goto Uldum/0 67.33,42.78
step
talk Harrison Jones##48186
turnin Meet Me In Vir'sar##28269 |goto Uldum/0 27.03,7.55
accept Friend of a Friend##28273 |goto Uldum/0 27.03,7.55
step
talk Yasmin##49406
home Oasis of Vir'sar |goto Uldum/0 26.62,7.24 |q 28274 |future
step
talk Jock Lindsey##48274
fpath Oasis of Vir'sar |goto Uldum/0 26.61,8.38
step
talk Sullah##48203
turnin Friend of a Friend##28273 |goto Uldum/0 26.62,8.03
accept Two Tents##28274 |goto Uldum/0 26.62,8.03
step
Watch the dialogue
Accompany Sullah |q 28274/1 |goto Uldum/0 26.62,8.03
step
talk Sullah##48431
|tip Inside the tent.
turnin Two Tents##28274 |goto Uldum/0 29.61,21.85
accept Master Trapper##28350 |goto Uldum/0 29.61,21.85
accept Camelraderie##28352 |goto Uldum/0 29.61,21.85
accept Unlimited Potential##28351 |goto Uldum/0 29.61,21.85
stickystart "Capture_Sand_Pygmies"
stickystart "Collect_Meat_Scraps"
step
kill Wild Camel##51193+
|tip Don't kill them, just get them to low health to weaken them.
use Sullah's Camel Harness##67241
|tip Use it on them when they are weakened.
|tip You will see a message on the screen when they are weakened.
Capture #3# Wild Camels |q 28352/1 |goto Uldum/0 29.54,38.90
step
label "Capture_Sand_Pygmies"
kill Cavorting Pygmy##51217+
|tip They look like gnomes.
|tip Don't kill them, just get them to low health to weaken them.
use Sullah's Pygmy Pen##67232
|tip Use it on them when they are weakened.
|tip You will see a message on the screen when they are weakened.
Capture #5# Sand Pygmies |q 28351/1 |goto Uldum/0 29.54,38.90
step
label "Collect_Meat_Scraps"
kill Wild Camel##51193+
collect 5 Meat Scrap##63541 |q 28350/1 |goto Uldum/0 29.54,38.90
step
talk Sullah##48431
|tip Inside the tent.
turnin Master Trapper##28350 |goto Uldum/0 29.61,21.85
turnin Camelraderie##28352 |goto Uldum/0 29.61,21.85
turnin Unlimited Potential##28351 |goto Uldum/0 29.61,21.85
accept Jonesy Sent For You##28353 |goto Uldum/0 29.61,21.85
step
talk Harrison Jones##48186
turnin Jonesy Sent For You##28353 |goto Uldum/0 27.03,7.55
accept Reduced Productivity##28271 |goto Uldum/0 27.03,7.55
accept Missing Pieces##28272 |goto Uldum/0 27.03,7.55
stickystart "Kill_Schnottz_Employees_At_The_Obelisk_Of_The_Moon"
step
click Pillaged Loot Sack##207124+
|tip They looke like green and white striped bags.
collect 7 Ancient Copper Scroll##63685 |q 28272/1 |goto Uldum/0 39.45,21.97
step
label "Kill_Schnottz_Employees_At_The_Obelisk_Of_The_Moon"
kill Schnottz Excavator##48204, Schnottz Overseer##48205
|tip They look like humans.
Kill #15# Schnottz Employees at the Obelisk of the Moon |q 28271/1 |goto Uldum/0 39.45,21.97
step
talk Harrison Jones##48186
turnin Reduced Productivity##28271 |goto Uldum/0 27.03,7.55
turnin Missing Pieces##28272 |goto Uldum/0 27.03,7.55
accept Stirred the Hornet's Nest##28363 |goto Uldum/0 27.03,7.55
step
talk Sullah##48431
|tip Inside the tent.
turnin Stirred the Hornet's Nest##28363 |goto Uldum/0 29.61,21.85
accept Shroud of the Makers##28367 |goto Uldum/0 29.61,21.85
step
use the Shroud of the Makers##63699
|tip Use it every 2 minutes to stay stealthed.
|tip Dismiss your pet, if you have one.
|tip Avoid Mezerian, she can see through your stealth.
|tip She looks like a large red dragon flying around.
click Schnottz Powder Keg##207127+
|tip They look like wooden barrels.
Sabotage #7# Powder Kegs |q 28367/1 |goto Uldum/0 39.45,22.14
step
talk Harrison Jones##48186
turnin Shroud of the Makers##28367 |goto Uldum/0 27.03,7.56
accept Schnottz So Fast##28402 |goto Uldum/0 27.03,7.56
step
Enter the building |goto Uldum/0 30.93,15.48 < 20 |walk
kill 10 Schnottz Elite Trooper##48668 |q 28402/1 |goto Uldum/0 36.54,20.60
|tip They look like humans.
|tip Downstairs inside the building.
|tip Fly down through the hole in the floor to find them.
step
talk Harrison Jones##48528
|tip Inside the building.
turnin Schnottz So Fast##28402 |goto Uldum/0 36.15,20.26
accept Bad Datas##28403 |goto Uldum/0 36.15,20.26
step
talk Harrison Jones##48528
Select _"Ready when you are, Doctor Jones!"_ |gossip 113250
Begin Following Harrison Jones |goto Uldum/0 36.15,20.26 > 10 |c |q 28403
step
Watch the dialogue
|tip Follow Harrison Jones as he walks.
|tip He eventually walks to this location inside the building.
Upload the Titan Data |q 28403/1 |goto Uldum/0 36.02,23.28
'|clicknpc Harrison Jones##48547
step
Watch the dialogue
|tip Follow Harrison Jones as he walks.
|tip Inside the building.
talk Harrison Jones##48558
turnin Bad Datas##28403 |goto Uldum/0 39.00,23.23
accept I'll Do It By Hand##28404 |goto Uldum/0 39.00,23.23
'|clicknpc Harrison Jones##48547
step
kill Lunar Crystal##48529+
|tip They look like floating blue crystal creatures.
|tip Kill all 3 of them moving around this area.
|tip Inside the building.
Defeat the Titanic Guardian |q 28404/1 |goto Uldum/0 39.75,23.67
step
talk Harrison Jones##48558
|tip Inside the building.
turnin I'll Do It By Hand##28404 |goto Uldum/0 39.00,23.23
step
talk Sullah##48621
accept Sullah's Gift##28482 |goto Uldum/0 42.16,25.92
step
talk Harrison Jones##48698
|tip Up on the cliff.
turnin Sullah's Gift##28482 |goto Uldum/0 41.37,5.55
accept Fire From the Sky##28497 |goto Uldum/0 41.37,5.55
step
clicknpc Confiscated Artillery##48699
Control the Confiscated Artillery |invehicle |goto Uldum/0 41.37,5.55 |q 28497
step
Slay #100# Schnottz Infantrymen |q 28497/1 |goto Uldum/0 40.36,9.78
|tip They look like soldiers walking in groups in the distance.
|tip Use the ability on your action bar.
step
talk Harrison Jones##48698
turnin Fire From the Sky##28497 |goto Uldum/0 41.37,5.55
accept See You on the Other Side!##28613 |goto Uldum/0 41.37,5.55
step
talk Harrison Jones##47158
turnin See You on the Other Side!##28613 |goto Uldum/0 36.13,15.78
accept Fortune and Glory##27748 |goto Uldum/0 36.13,15.78
step
Watch the dialogue
kill Obsidian Colossus##46646
|tip It comes alive nearby.
|tip Avoid the orange beams and pink shadow runes on the ground.
|tip Follow the instructions on the screen.
Defeat the Obsidian Colossus |q 27748/1 |goto Uldum/0 34.65,17.84
step
talk Harrison Jones##49151
turnin Fortune and Glory##27748 |goto Uldum/0 33.33,19.66
accept Harrison Jones and the Temple of Uldum##28612 |goto Uldum/0 33.33,19.66
step
Watch the dialogue
Discover the Coffer of Promise |q 28612/1 |goto Uldum/0 33.40,19.70
step
talk Brann Bronzebeard##49204
turnin Harrison Jones and the Temple of Uldum##28612 |goto Uldum/0 32.59,30.90
accept Put That Baby in the Cradle!##28621 |goto Uldum/0 32.59,30.90
step
talk Harrison Jones##49203
turnin Put That Baby in the Cradle!##28621 |goto Uldum/0 32.59,30.66
accept Three if by Air##28622 |goto Uldum/0 32.59,30.66
step
clicknpc Signal Flare Position##49216
Place the North Signal Flare |q 28622/1 |goto Uldum/0 31.98,29.91
step
clicknpc Signal Flare Position##49216
Place the West Signal Flaare |q 28622/2 |goto Uldum/0 31.38,30.83
step
clicknpc Signal Flare Position##49216
Place the South Signal Flare |q 28622/3 |goto Uldum/0 32.03,31.63
step
talk Brann Bronzebeard##49248
turnin Three if by Air##28622 |goto Uldum/0 44.85,67.32
accept The Coffer of Promise##28633 |goto Uldum/0 44.85,67.32
step
click Coffer of Promise##207294
collect Titan Discs##64667 |q 28633/1 |goto Uldum/0 44.97,67.31
step
talk Brann Bronzebeard##49351
turnin The Coffer of Promise##28633 |goto Uldum/0 44.86,67.32
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",{
next="Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)",
mopready=true,
startlevel=84.00,
endlevel=85,
},[[
step
click Warchief's Command Board##10014
accept Warchief's Command: Twilight Highlands!##28717 |goto Orgrimmar/1 49.67,76.45
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Warchief's Command: Twilight Highlands!##28717 |goto Orgrimmar/1 48.11,70.48
accept Machines of War##26293 |goto Orgrimmar/1 48.11,70.48
step
talk Sauranok the Mystic##42637
|tip Inside the building.
accept Unfamiliar Waters##26311 |goto Orgrimmar/1 47.94,71.03
step
talk Herezegor Flametusk##42638
|tip Inside the building.
Select _"The Dragonmaw can be great again. Help our conquest of the Twilight Highlands - can you give me a map?"_ |gossip 112399
Kill the enemies that attack
talk Herezegor Flametusk##42638
Select _"Yes, a map of the coastal approaches."_ |gossip 112400
collect Twilight Highlands Coastal Chart##58141 |q 26311/1 |goto Orgrimmar/1 71.03,50.82
step
talk Sauranok the Mystic##42637
|tip Inside the building.
turnin Unfamiliar Waters##26311 |goto Orgrimmar/1 47.94,71.03
step
talk Foreman Glibbs##42672
turnin Machines of War##26293 |goto Azshara/0 26.16,78.85
accept Weapons of Mass Dysfunction##26294 |goto Azshara/0 26.16,78.85
step
clicknpc Hellscream Demolisher##42673
Discover a Faulty Demolisher |q 26294/1 |goto Orgrimmar/1 74.17,8.06
step
clicknpc Chief Engineer##42671
Discipline the Chief Engineer |q 26294/2 |goto Orgrimmar/1 73.83,8.27
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Weapons of Mass Dysfunction##26294 |goto Orgrimmar/1 48.11,70.48
accept Where Is My Warfleet?##26324 |goto Orgrimmar/1 48.11,70.48
step
talk Warlord Krogg##42641
|tip He walks around this area.
turnin Where Is My Warfleet?##26324 |goto Azshara/0 59.88,50.39
accept Ready the Ground Troops##26374 |goto Azshara/0 59.88,50.39
accept Ready the Navy##26335 |goto Azshara/0 59.88,50.39
step
talk Captain Krazz##42640
accept Ready the Air Force##26358 |goto Azshara/0 60.19,50.43
step
clicknpc AWOL Grunt##42646+
|tip They look like orcs standing or walking around.
|tip Some of them may attack you.
Discipline #12# AWOL Grunts |q 26374/1 |goto Azshara/0 55.83,50.18
step
talk Fleep##42643
turnin Ready the Air Force##26358 |goto Azshara/0 54.54,51.17
accept Smoot's Samophlange##26361 |goto Azshara/0 54.54,51.17
step
click Foebreaker Blueprints##204050
turnin Ready the Navy##26335 |goto Azshara/0 53.54,47.37
accept Beating the Market##26337 |goto Azshara/0 53.54,47.37
step
clicknpc Smoot##42644
|tip He looks like a goblin that runs around.
|tip He runs in a large path around Bilgewater Habor.
|tip If you wait here, he will eventually run to you.
click Induction Samophlange##207259
|tip It appears on the ground after you click Smoot.
collect Induction Samophlange##58224 |q 26361/1 |goto Azshara/0 55.31,49.90
step
talk Bilgewater Foreman##42777
|tip He looks like a goblin that walks around this area.
Select _"Nobody shorts Garrosh Hellscream. You finish those ships - and finish them right - or this gets personal."_ |gossip 112402
kill Bilgewater Foreman##42777
Intimidate a Bilgewater Foreman |q 26337/1 |goto Azshara/0 56.46,52.34
step
talk Fleep##42643
turnin Smoot's Samophlange##26361 |goto Azshara/0 54.54,51.17
accept Pre-Flight Checklist##26372 |goto Azshara/0 54.54,51.17
step
talk Warlord Krogg##42641
|tip He walks around this area.
turnin Ready the Ground Troops##26374 |goto Azshara/0 59.88,50.39
turnin Beating the Market##26337 |goto Azshara/0 59.88,50.39
step
talk Captain Krazz##42640
turnin Pre-Flight Checklist##26372 |goto Azshara/0 60.19,50.43
accept Twilight Skies##28849 |goto Azshara/0 60.19,50.43
step
talk Friz Groundspin##50367
|tip At the top of the tower.
turnin Twilight Skies##28849 |goto Azshara/0 50.70,73.90
accept Twilight Skies##26388 |goto Azshara/0 50.70,73.90
step
Begin Riding the Zeppelin to Twilight Highlands |condition not subzone("Southern Rocketway Terminus") |goto Azshara/0 50.78,73.81 |q 26388
|tip Wait for the zepplin to arrive.
|tip You'll probably have to wait a few minutes.
step
Watch the dialogue
Reach the Eastern Kingdoms |condition zone("Wetlands") |q 26388
step
Watch the dialogue
Accompany the Air Fleet |q 26388/1 |goto Twilight Highlands/0 82.27,50.46 |notravel
step
clicknpc Emergency Rampless Debarkation Device##42603
Parachute Down to the Ship Below |invehicle |goto Twilight Highlands/0 82.41,50.34 |q 26388
step
talk Admiral Stonefist##42978
|tip On the deck of the ship.
turnin Twilight Skies##26388 |goto Twilight Highlands/0 82.50,49.83
accept Stalled Negotiations##26539 |goto Twilight Highlands/0 82.50,49.83
step
talk Warlord Krogg##43193
|tip On the deck of the ship.
accept Emergency Aid##26538 |goto Twilight Highlands/0 82.59,49.93
step
talk Ornak##43187
turnin Stalled Negotiations##26539 |goto Twilight Highlands/0 78.84,51.76
accept Madness##26549 |goto Twilight Highlands/0 78.84,51.76
step
talk Gregor##43191
|tip Inside the building.
Watch the dialogue
Select _"Our warriors are dying. Do you have medical supplies I can take back with me?"_ |gossip 112438
Persuade the Medicine Man |q 26538/1 |goto Twilight Highlands/0 76.53,49.46
step
talk Gregor##43191
|tip Inside the building.
turnin Emergency Aid##26538 |goto Twilight Highlands/0 76.53,49.46
accept Dangerous Compassion##26540 |goto Twilight Highlands/0 76.53,49.46
step
Watch the dialogue
|tip Inside the building.
Conclude the Negotiations |q 26549/1 |goto Twilight Highlands/0 75.47,55.56
step
talk Zaela##43190
|tip Inside the building.
turnin Madness##26549 |goto Twilight Highlands/0 76.57,49.41
accept Negotiations Terminated##26608 |goto Twilight Highlands/0 76.57,49.41
step
talk Admiral Stonefist##42978
|tip On the deck of the ship.
turnin Negotiations Terminated##26608 |goto Twilight Highlands/0 82.50,49.83
step
talk Warlord Krogg##43193
|tip On the deck of the ship.
turnin Dangerous Compassion##26540 |goto Twilight Highlands/0 82.59,49.93
accept You Say You Want a Revolution##26619 |goto Twilight Highlands/0 82.59,49.93
step
talk Zaela##43581
|tip Inside the building.
turnin You Say You Want a Revolution##26619 |goto Twilight Highlands/0 76.59,49.51
accept Insurrection##26621 |goto Twilight Highlands/0 76.59,49.51
stickystart "Kill_Dragonmaw_Warlocks"
stickystart "Kill_Dragonmaw_Enforcers"
step
talk Dragonmaw NPCs
|tip Only Dragonmaw Merchants and Dragonmaw Workers will work.
|tip They look like neutrals NPCs fighting enemies.
|tip Choose either of their dialogue options, to have them fight for you, or heal you.
Arm #3# Dragonmaw Civilians |q 26621/1 |goto Twilight Highlands/0 77.44,52.27
'|talk Dragonmaw Merchant##43578, Dragonmaw Worker##43577
step
label "Kill_Dragonmaw_Warlocks"
kill 4 Dragonmaw Warlock##43394 |q 26621/3 |goto Twilight Highlands/0 77.44,52.27
|tip They look like orcs carrying staves.
step
label "Kill_Dragonmaw_Enforcers"
kill 10 Dragonmaw Enforcer##43575 |q 26621/2 |goto Twilight Highlands/0 77.44,52.27
|tip They look like orcs carrying large swords.
step
talk Zaela##43581
|tip Inside the building.
turnin Insurrection##26621 |goto Twilight Highlands/0 76.59,49.51
accept Death to Mor'ghor##26622 |goto Twilight Highlands/0 76.59,49.51
step
kill Warchief Mor'ghor##43189 |q 26622/1 |goto Twilight Highlands/0 75.48,55.64
|tip Inside the building.
|tip Talk to Dragonmaw Workers and Merchants and ask them to fight with you.
|tip You can only have a maximum of three allies.
step
talk Garrosh Hellscream##43943
turnin Death to Mor'ghor##26622 |goto Twilight Highlands/0 74.79,53.06
accept Securing the Beach Head##26786 |goto Twilight Highlands/0 74.79,53.06
step
talk Ornak##44042
accept Cementing Our Victory##26788 |goto Twilight Highlands/0 74.27,53.29
step
talk Artesh##44024
|tip Inside the building.
turnin Securing the Beach Head##26786 |goto Twilight Highlands/0 73.80,53.94
accept Muddied Waters##26784 |goto Twilight Highlands/0 73.80,53.94
stickystart "Collect_Verral_River_Muck"
step
kill Muddied Water Elemental##44011+
|tip They look like green water elementals.
collect 5 Whirlpool Core##60333 |q 26784/1 |goto Twilight Highlands/0 67.03,47.79
step
label "Collect_Verral_River_Muck"
click Verrall River Muck##204880+
|tip They look like piles of grey sand.
collect 10 Verrall River Muck##60337 |q 26788/1 |goto Twilight Highlands/0 67.03,47.79
step
talk Ornak##44042
turnin Cementing Our Victory##26788 |goto Twilight Highlands/0 74.27,53.29
step
talk Artesh##44024
|tip Inside the building.
turnin Muddied Waters##26784 |goto Twilight Highlands/0 73.80,53.94
accept The Warchief Will be Pleased##26798 |goto Twilight Highlands/0 73.80,53.94
step
Teleport to Orgrimmar |condition zone("Orgrimmar") |goto Twilight Highlands/0 73.71,53.90 |q 26798
|tip Walk into the swirling portal.
|tip Inside the building.
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin The Warchief Will be Pleased##26798 |goto Orgrimmar/1 48.10,70.47
accept Traitor's Bait##26830 |goto Orgrimmar/1 48.10,70.47
step
talk Suspicious Peon##44160
|tip Inside the tower, on the ground floor.
|tip Up on the plateau.
Select _"Has a secret cult infiltrated the Orgrimmar skyway?"_ |gossip 112523
Select _"I didn't say Twilight's Hammer. YOU said Twilight's Hammer."_ |gossip 112524
Select _"I know all about your cult master."_ |gossip 112525
Select _"So it's true? Sauranok IS guilty of treason!"_ |gossip 112526
Reveal Sauranok's Guilt |q 26830/1 |goto Orgrimmar/1 43.60,63.62
step
Watch the dialogue
|tip Inside the building.
kill Sauranok the Mystic##44120 |q 26830/2 |goto Orgrimmar/1 44.08,63.79
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Traitor's Bait##26830 |goto Orgrimmar/1 48.10,70.47
accept Return to the Highlands##26840 |goto Orgrimmar/1 48.10,70.47
step
talk Gorthul##47174
fpath Dragonmaw Port |goto Twilight Highlands/0 73.78,52.79
step
talk Zaela##44169
|tip Inside the building.
turnin Return to the Highlands##26840 |goto Twilight Highlands/0 75.31,54.85
accept The Northern Flank##27583 |goto Twilight Highlands/0 75.31,54.85
accept The Southern Flank##27607 |goto Twilight Highlands/0 75.31,54.85
step
talk Innkeeper Lutz##49498
|tip Inside the building.
home Dragonmaw Port |goto Twilight Highlands/0 75.93,52.74 |q 27607
step
talk Rok'tar##46089
turnin The Southern Flank##27607 |goto Twilight Highlands/0 78.25,62.55
accept Scouting the Shore##27610 |goto Twilight Highlands/0 78.25,62.55
accept Blood on the Sand##27611 |goto Twilight Highlands/0 78.25,62.55
stickystart "Kill_Highbank_Marines"
step
Scout the Beach Head Control Point |q 27610/1 |goto Twilight Highlands/0 77.46,65.13
step
label "Kill_Highbank_Marines"
kill 12 Highbank Marine##45174 |q 27611/1 |goto Twilight Highlands/0 76.99,63.14
|tip They look like Alliance soldiers.
|tip Avoid the red arrows bouncing above the ground.
|tip Cannon balls land at the red arrows a few seconds after the arrows appear.
step
talk Rok'tar##46089
turnin Scouting the Shore##27610 |goto Twilight Highlands/0 78.25,62.55
turnin Blood on the Sand##27611 |goto Twilight Highlands/0 78.25,62.55
step
talk Juice Gnugat##46090
accept Mo' Better Shredder##27622 |goto Twilight Highlands/0 78.46,62.60
step
clicknpc Salvageable Shredder##46100
Locate the Salvageable Shredder |q 27622/1 |goto Twilight Highlands/0 68.30,61.65
step
Kill the enemies that attack in waves
Defend the Salvageable Shredder |q 27622/2 |goto Twilight Highlands/0 68.30,61.65
step
talk Juice Gnugat##46090
turnin Mo' Better Shredder##27622 |goto Twilight Highlands/0 78.46,62.60
accept Krazzworks##28583 |goto Twilight Highlands/0 78.46,62.60
step
talk Gralok##45982
turnin The Northern Flank##27583 |goto Twilight Highlands/0 70.24,43.26
accept Blood in the Surf##27584 |goto Twilight Highlands/0 70.24,43.26
step
talk Fergus Gearchum##45983
accept Shells on the Sea Shore##27586 |goto Twilight Highlands/0 70.30,43.39
stickystart "Slay_Blackscale_Nagas"
step
click Unexploded Mortar Shell##205823+
|tip They look like small grey and red metal objects.
collect 8 Unexploded Mortar Shell##61634 |q 27586/1 |goto Twilight Highlands/0 71.70,41.39
step
label "Slay_Blackscale_Nagas"
kill Blackscale Mistress##45985, Blackscale Raider##45984
|tip They look like nagas.
|tip They emerge from the water nearby, all along the beach.
Slay #15# Blackscale Naga |q 27584/1 |goto Twilight Highlands/0 72.85,45.46
step
talk Gralok##45982
turnin Blood in the Surf##27584 |goto Twilight Highlands/0 70.24,43.26
step
talk Fergus Gearchum##45983
turnin Shells on the Sea Shore##27586 |goto Twilight Highlands/0 70.30,43.39
accept Blast Him!##27606 |goto Twilight Highlands/0 70.30,43.39
step
use the Heth'Jatari Conch##61928
kill Fathom-Lord Heth'Jatar##46009 |q 27606/1 |goto Twilight Highlands/0 71.38,41.67
|tip Red arrows will appear on the ground.
|tip Lure Fathom-Lord Heth'Jatar next to them.
|tip He will get bombarded with mortars and become easier to kill.
step
talk Fergus Gearchum##45983
turnin Blast Him!##27606 |goto Twilight Highlands/0 70.30,43.39
step
talk Gralok##45982
accept Narkrall, the Drake-Tamer##27690 |goto Twilight Highlands/0 70.24,43.26
step
talk Narkrall Rakeclaw##46313
turnin Narkrall, the Drake-Tamer##27690 |goto Twilight Highlands/0 54.82,44.20
accept Crushing the Wildhammer##27751 |goto Twilight Highlands/0 54.82,44.20
accept Drag 'em Down##27929 |goto Twilight Highlands/0 54.82,44.20
step
talk Harkkan##46318
accept Total War##27747 |goto Twilight Highlands/0 55.14,43.56
step
talk Griff##46319
accept War Forage##27750 |goto Twilight Highlands/0 53.83,43.27
step
talk Innkeeper Turk##49762
|tip Inside the building.
home Bloodgulch |goto Twilight Highlands/0 53.30,42.88 |q 27750
step
talk Bramok Gorewing##47156
fpath Bloodgulch |goto Twilight Highlands/0 54.15,42.22
stickystart "Collect_Wildhammer_Insignias"
step
use the Barbed Fleshhook##62775
|tip Use it on Thundermar War Gryphons.
|tip They look like large white birds flying in the air.
kill 4 Thundermar Gryphon Rider##46321 |q 27929/1 |goto Twilight Highlands/0 52.42,40.36
'|clicknpc Thundermar War Gryphon##47186
step
label "Collect_Wildhammer_Insignias"
kill Wildhammer Warbrand##46320+
|tip They look like dwarves.
collect 8 Wildhammer Insignia##62325 |q 27751/1 |goto Twilight Highlands/0 52.42,40.36
stickystart "Collect_Wildhammer_Food_Stores"
step
click Thundermar Ale Keg##7490+
|tip They look like brown wooden barrels.
|tip They can also be inside building. |notinsticky
Smash #10# Wildhammer Kegs |q 27747/1 |goto Twilight Highlands/0 45.91,33.23
You can find more around: |notinsticky
[46.90,36.84]
[48.99,37.20]
[51.31,33.54]
step
label "Collect_Wildhammer_Food_Stores"
click Wildhammer Food Stores##206291+
|tip They look like loaves of bread, turkey tegs, and lines of hanging fish.
|tip They can also be inside building. |notinsticky
collect 15 Wildhammer Food Stores##62324 |q 27750/1 |goto Twilight Highlands/0 45.91,33.23
You can find more around: |notinsticky
[46.90,36.84]
[48.99,37.20]
[51.31,33.54]
step
talk Griff##46319
turnin War Forage##27750 |goto Twilight Highlands/0 53.83,43.27
step
talk Harkkan##46318
turnin Total War##27747 |goto Twilight Highlands/0 55.14,43.56
step
talk Narkrall Rakeclaw##46313
turnin Crushing the Wildhammer##27751 |goto Twilight Highlands/0 54.82,44.20
turnin Drag 'em Down##27929 |goto Twilight Highlands/0 54.82,44.20
accept Bait and Throttle##28041 |goto Twilight Highlands/0 54.82,44.20
step
talk Harkkan##46318
accept Blood in the Highlands##28038 |goto Twilight Highlands/0 55.14,43.56
step
kill Untamed Gryphon##46158+
|tip They look like large eagles flying low to the ground.
collect Fresh Gryphon Carcass##62915 |q 28041/1 |goto Twilight Highlands/0 58.00,44.20
step
_Click the Complete Quest Box:_
turnin Bait and Throttle##28041
accept How to Maim Your Dragon##28043
step
talk Wodin the Troll-Servant##46936
|tip Up on the ledge.
turnin Blood in the Highlands##28038 |goto Twilight Highlands/0 50.73,58.38
step
use the Gryphon Carcass Bait##62917
kill Baited Black Drake##47422
|tip It will eventually surrender.
clicknpc Baited Black Drake##47422
|tip Click it after it surrenders.
Begin Capturing the Baited Black Drake |invehicle |goto Twilight Highlands/0 47.28,61.97 |q 28043
step
Watch the dialogue
Capture the Baited Black Drake |q 28043/1 |goto Twilight Highlands/0 54.40,43.45 |notravel
step
talk Zaela##47417
turnin How to Maim Your Dragon##28043 |goto Twilight Highlands/0 54.35,43.85
accept The Demon Chain##28123 |goto Twilight Highlands/0 54.35,43.85
step
talk Garona Halforcen##46323
|tip Inside the building.
accept A Vision of Twilight##27947 |goto Twilight Highlands/0 53.30,42.70
step
talk Mallia##46324
|tip Inside the building.
accept Paint it Black##27945 |goto Twilight Highlands/0 53.20,42.71
step
click The Demon Chain##206724
|tip It looks like a small golden necklace with a red jewel in it.
collect The Demon Chain##63036 |q 28123/1 |goto Twilight Highlands/0 49.09,28.22
step
click Eye of Twilight##206569
turnin A Vision of Twilight##27947 |goto Twilight Highlands/0 57.93,33.50
accept We All Must Sacrifice##27951 |goto Twilight Highlands/0 57.93,33.50
stickystart "Kill_Shamans_of_the_Black"
step
kill Obsidian Stoneslave##47226+
|tip They look like elementals with purple crystal fingers.
collect Black Diamond Heart##62796 |q 27945/1 |goto Twilight Highlands/0 58.17,30.70
step
label "Kill_Shamans_of_the_Black"
kill 10 Shaman of the Black##46322 |q 27951/1 |goto Twilight Highlands/0 58.17,30.70
|tip They look like various humanoid enemies wearing black robes.
step
click Eye of Twilight##206569
turnin We All Must Sacrifice##27951 |goto Twilight Highlands/0 57.93,33.50
accept The Eyes Have It##27954 |goto Twilight Highlands/0 57.93,33.50
step
talk Captain Krazz##48993
|tip Up on the mountain, almost at the top.
turnin Krazzworks##28583 |goto Twilight Highlands/0 77.63,16.62
accept Wildhammer Infestation##28588 |goto Twilight Highlands/0 77.63,16.62
step
talk Brett the Bomber##49439
accept Quality Construction##28584 |goto Twilight Highlands/0 77.68,16.64
step
talk Flashbang Rothman##49441
accept Pool Pony Rescue##28586 |goto Twilight Highlands/0 77.66,16.69
stickystart "Kill_Wildhammer_Raiders"
step
use the Blast Tape##65146
|tip Use it near Faulty Valves.
|tip They look like red wheel handles spraying out black liquid on the metal platforms.
|tip Up on the mountain.
Seal #10# Faulty Valves |q 28584/1 |goto Twilight Highlands/0 76.72,17.47
step
label "Kill_Wildhammer_Raiders"
kill 10 Wildhammer Raider##49632 |q 28588/1 |goto Twilight Highlands/0 76.72,17.47
|tip They look like dwarves.
step
use Emergency Pool Pony##65162
|tip Use it on Krazzworks Laborers.
|tip They look like goblins in the water surrounding the island.
|tip You can do this while mounted.
Rescue #10# Krazzworks Laborers |q 28586/1 |goto Twilight Highlands/0 80.76,15.06
'|talk Krazzworks Laborer##49548
step
talk Brett the Bomber##49439
|tip Up on the mountain, almost at the top.
turnin Quality Construction##28584 |goto Twilight Highlands/0 77.68,16.64
step
talk Flashbang Rothman##49441
turnin Pool Pony Rescue##28586 |goto Twilight Highlands/0 77.66,16.69
step
talk Captain Krazz##48993
turnin Wildhammer Infestation##28588 |goto Twilight Highlands/0 77.63,16.62
accept Everything But the Kitchen Sink##28589 |goto Twilight Highlands/0 77.63,16.62
step
clicknpc Krazz Cannon##49680
|tip On the edge of a platform.
|tip Up on the mountain, almost at the top.
Take Control of the Cannon |invehicle |goto Twilight Highlands/0 75.48,17.87 |q 28589
step
kill 15 Wildhammer Stormtalon##49683 |q 28589/2
|tip They look like large eagles flying nearby.
|tip Use the ability on your action bar.
step
Release Control of the Cannon |outvehicle |q 28589
|tip Click the arrow on your action bar.
step
talk Harpo Boltknuckle##47061
|tip Up on the mountain, almost at the top.
fpath The Krazzworks |goto Twilight Highlands/0 75.33,17.80
step
talk Captain Krazz##48993
|tip Up on the mountain, almost at the top.
turnin Everything But the Kitchen Sink##28589 |goto Twilight Highlands/0 77.63,16.62
accept Reprisal##28590 |goto Twilight Highlands/0 77.63,16.62
step
_On the Zeppelin:_
talk Patch##49378
|tip On the main deck of the zeppelin.
turnin Reprisal##28590
accept Off The Wall##28591
step
_On the Zeppelin:_
clicknpc Skyshredder Turret##49135
|tip They look like large metal guns mounted on the deck of the zeppelin.
Take Control of the Turret |invehicle |q 28591
stickystart "Kill_Highbank_Cannoneers"
stickystart "Kill_Highbank_Marksmen"
step
_While Controlling the Turret:_
kill 4 Highbank Cannon##49060 |q 28591/3
|tip They look like black and red cannons.
|tip Use the abilities on your action bar.
step
label "Kill_Highbank_Cannoneers"
_While Controlling the Turret:_ |notinsticky
kill 12 Highbank Cannoneer##49025 |q 28591/2
|tip They look like Alliance soldiers next to cannons.
|tip Use the abilities on your action bar. |notinsticky
step
label "Kill_Highbank_Marksmen"
_While Controlling the Turret:_ |notinsticky
kill 80 Highbank Marksman##49366 |q 28591/1
|tip They look like Alliance soldiers pointing guns.
|tip Use the abilities on your action bar. |notinsticky
step
Release Control of the Cannon |outvehicle |q 28591
|tip Click the arrow on your action bar.
step
_On the Zeppelin:_
talk Patch##49378
|tip On the main deck of the zeppelin.
turnin Off The Wall##28591
accept Of Utmost Importance##28593
accept Highbank, Crybank##28594
step
_On the Zeppelin:_
talk Ticker##49379
|tip On the main deck of the zeppelin.
accept Parting Packages##28592
stickystart "Slay_Highbank_Defenders"
step
use Ticker's Explosives##64669
|tip On the deck of the ship.
Place the Highbank Boat Bomb |q 28592/1 |goto Twilight Highlands/0 81.62,78.72
step
use Ticker's Explosives##64669
|tip Inside the tower, on the ground floor.
Place the Highbank Tower Bomb |q 28592/3 |goto Twilight Highlands/0 80.04,72.44
step
use Ticker's Explosives##64669
|tip In the doorway of the building.
Place the Highbank Keep Bomb |q 28592/2 |goto Twilight Highlands/0 79.80,77.38
step
Run down the stairs |goto Twilight Highlands/0 79.43,78.20 < 10 |walk
click Induction Samophlange##207259
|tip Downstairs inside the building.
collect Induction Samophlange##64584 |q 28593/1 |goto Twilight Highlands/0 79.51,77.64
step
label "Slay_Highbank_Defenders"
kill Tidebreaker Sailor##49028, Highbank Cannoneer##49025, Highbank Marksman##49024, Highbank Guardsman##49023, Highbank Prison Guard##49029
|tip They look like Alliance soldiers and sailors.
Slay #10# Highbank Defenders |q 28594/1 |goto Twilight Highlands/0 80.56,76.77
step
talk Patch##49000
turnin Of Utmost Importance##28593 |goto Twilight Highlands/0 82.12,80.04
turnin Highbank, Crybank##28594 |goto Twilight Highlands/0 82.12,80.04
step
talk Ticker##49002
turnin Parting Packages##28592 |goto Twilight Highlands/0 81.85,80.39
step
talk Patch##49000
accept Krazz Works!##28595 |goto Twilight Highlands/0 82.12,80.04
step
clicknpc Krazzworks Gyrocopter##50268
|tip At the top of the tower.
Borrow the Gyrocopter |invehicle |goto Twilight Highlands/0 82.09,81.30 |q 28595
step
Return to The Krazzworks |outvehicle |goto Twilight Highlands/0 75.49,17.75 |q 28595 |notravel
step
talk Captain Krazz##48993
|tip Up on the mountain, almost at the top.
turnin Krazz Works!##28595 |goto Twilight Highlands/0 77.63,16.62
step
talk Garona Halforcen##46323
|tip Inside the building.
turnin The Eyes Have It##27954 |goto Twilight Highlands/0 53.30,42.70
accept Eye Spy##27955 |goto Twilight Highlands/0 53.30,42.70
step
click Eye of Twilight##206569
|tip Inside the building.
Peer into the Eye |q 27955/1 |goto Twilight Highlands/0 53.29,42.78
step
talk Garona Halforcen##46323
|tip Inside the building.
turnin Eye Spy##27955 |goto Twilight Highlands/0 53.30,42.70
step
talk Mallia##46324
|tip Inside the building.
turnin Paint it Black##27945 |goto Twilight Highlands/0 53.20,42.71
accept The Weeping Wound##27375 |goto Twilight Highlands/0 53.20,42.71
step
talk Zaela##47417
turnin The Demon Chain##28123 |goto Twilight Highlands/0 54.35,43.85
accept Fury Unbound##28133 |goto Twilight Highlands/0 54.35,43.85
step
talk Zaela##47671
Select _"I am ready to fight Torth!"_ |gossip 113174
kill Torth##47669 |q 28133/1 |goto Twilight Highlands/0 36.42,38.12
step
talk Zaela##47671
turnin Fury Unbound##28133 |goto Twilight Highlands/0 36.42,38.12
step
talk Buunu##47751
accept Whispers in the Wind##28149 |goto Twilight Highlands/0 36.39,37.98
step
talk Rotgrum##47723
accept Purple is Your Color##28147 |goto Twilight Highlands/0 36.73,37.94
step
talk San'shigo##47133
fpath The Gullet |goto Twilight Highlands/0 36.90,37.99
stickystart "Collect_Breaths_of_the_Vortex"
stickystart "Collect_Twilight_Garment_Scraps"
step
click Windspeaker Pylon##206786
collect Windspeaker Charm##63085 |q 28149/1 |goto Twilight Highlands/0 39.39,47.34
step
label "Collect_Breaths_of_the_Vortex"
kill Storm Vortex##47728+
|tip They look like bone elementals.
collect 5 Breath of the Vortex##63089 |q 28149/2 |goto Twilight Highlands/0 40.30,46.95
step
label "Collect_Twilight_Garment_Scraps"
kill Twilight Windwarper##47724+
|tip They look like humanoid enemies wearing black robes.
collect 8 Twilight Garment Scrap##63087 |q 28147/1 |goto Twilight Highlands/0 40.30,46.95
step
talk Rotgrum##47723
turnin Purple is Your Color##28147 |goto Twilight Highlands/0 36.73,37.94
accept Dressed to Kill##28151 |goto Twilight Highlands/0 36.73,37.94
step
talk Buunu##47751
turnin Whispers in the Wind##28149 |goto Twilight Highlands/0 36.39,37.98
accept Thog's Nightlight##28166 |goto Twilight Highlands/0 36.39,37.98
stickystart "Slay_Glopgut_Ogres"
step
click The Light of Souls##206839
|tip It looks like a white diamond sitting on a small pedestal.
|tip Inside the building.
collect The Light of Souls##63107 |q 28166/1 |goto Twilight Highlands/0 40.60,32.90
step
label "Slay_Glopgut_Ogres"
kill Glopgut Basher##48498, Glopgut Pounder##48474, Glopgut Hurler##48475, Thog##47770
|tip They look like ogres.
Slay #10# Glopgut Ogres |q 28151/1 |goto Twilight Highlands/0 39.20,30.10
step
talk Rotgrum##47723
turnin Dressed to Kill##28151 |goto Twilight Highlands/0 36.73,37.94
step
talk Buunu##47751
turnin Thog's Nightlight##28166 |goto Twilight Highlands/0 36.39,37.98
accept Night Terrors##28170 |goto Twilight Highlands/0 36.39,37.98
step
talk Uchek##47826
|tip Inside the cave.
Select _"I am ready, Uchek!"_ |gossip 113186
Enter the Spirit Realm |havebuff Spirit Realm##88981 |q 28170 |goto Twilight Highlands/0 35.05,36.63
step
use The Light of Souls##67537
|tip Use it to kill enemies when they attack you.
|tip Upstairs inside the cave.
Cleanse the First Shrine |q 28170/1 |goto Twilight Highlands/0 34.23,35.63
step
use The Light of Souls##67537
|tip Use it to kill enemies when they attack you.
|tip Inside the cave.
Cleanse the Second Shrine |q 28170/2 |goto Twilight Highlands/0 33.44,37.05
step
use The Light of Souls##67537
|tip Use it to kill enemies when they attack you.
|tip Inside the cave.
Cleanse the Third Shrine |q 28170/3 |goto Twilight Highlands/0 34.23,37.87
step
talk Buunu##47751
|tip At the entrance of the cave.
turnin Night Terrors##28170 |goto Twilight Highlands/0 36.39,37.98
step
talk Earthcaller Torunscar##43901
turnin The Weeping Wound##27375 |goto Twilight Highlands/0 44.04,10.55
accept Torn Ground##27299 |goto Twilight Highlands/0 44.04,10.55
step
kill 3 Tentacle of Iso'rath##45394 |q 27299/1 |goto Twilight Highlands/0 46.00,10.52
step
talk Earthcaller Torunscar##45332
turnin Torn Ground##27299 |goto Twilight Highlands/0 44.04,10.55
accept Pushing Back##27300 |goto Twilight Highlands/0 44.04,10.55
step
talk Earthmender Duarn##45391
accept Unbroken##27301 |goto Twilight Highlands/0 43.99,11.24
step
talk Initiate Goldmine##45432
accept Simple Solutions##27302 |goto Twilight Highlands/0 44.41,11.56
stickystart "Collect_Pyreburn_Oil"
stickystart "Slay_Drakgor_Cultists"
step
talk Earthcaller Yevaa##45362
|tip Inside the building.
turnin Unbroken##27301 |goto Twilight Highlands/0 44.21,18.13
accept Mercy for the Bound##27303 |goto Twilight Highlands/0 44.21,18.13
step
kill Bound Fleshburner##45358+
|tip They look like fire elementals.
collect 5 Fleshburner Heart##60981 |q 27303/1 |goto Twilight Highlands/0 43.23,15.88
step
label "Collect_Pyreburn_Oil"
kill Twilight Bonebreaker##45334, Twilight Captivator##45359, Omak'Tul##45360
|tip They look like various humanoid enemies.
click Barrel of Pyreburn Oil##205422+
|tip They look like wooden barrels.
collect 10 Pyreburn Oil##60982 |q 27302/1 |goto Twilight Highlands/0 43.23,15.88
step
label "Slay_Drakgor_Cultists"
kill Twilight Bonebreaker##45334, Twilight Captivator##45359, Omak'Tul##45360 |notinsticky
|tip They look like various humanoid enemies. |notinsticky
Slay #12# Drakgor Cultists |q 27300/1 |goto Twilight Highlands/0 43.23,15.88
step
talk Initiate Goldmine##45432
turnin Simple Solutions##27302 |goto Twilight Highlands/0 44.41,11.56
step
talk Earthcaller Yevaa##45386
turnin Mercy for the Bound##27303 |goto Twilight Highlands/0 43.82,11.33
step
talk Earthcaller Torunscar##45332
turnin Pushing Back##27300 |goto Twilight Highlands/0 44.04,10.55
accept The Maw of Iso'rath##27376 |goto Twilight Highlands/0 44.04,10.55
step
clicknpc Earthen Ring Gryphon##50473
Join the Assault on Iso'rath |q 27376/1 |goto Twilight Highlands/0 44.53,10.63
step
Watch the dialogue
Fly into Iso'rath |condition subzone("Iso'rath") |q 27376
step
talk Earthcaller Yevaa##47991
|tip Inside Iso'rath.
turnin The Maw of Iso'rath##27376 |goto Twilight Highlands/0 48.40,14.56
accept Devoured##27377 |goto Twilight Highlands/0 48.40,14.56
step
Survive Iso'rath's Defenses |q 27377/1 |goto Twilight Highlands/0 48.40,14.56
|tip Let the oozes kill you.
|tip Inside Iso'rath.
step
_Click the Complete Quest Box:_
turnin Devoured##27377
accept The Worldbreaker##27378
step
Watch the dialogue
Aid Thrall in Battling Deathwing |q 27378/1 |goto The Maelstrom/0 33.31,50.62
step
_Click the Complete Quest Box:_
turnin The Worldbreaker##27378
accept The Terrors of Iso'rath##27379
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Stormcaller Jalara |q 27379/2 |goto Twilight Highlands/0 49.59,15.68
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Earthmender Duarn |q 27379/3 |goto Twilight Highlands/0 49.09,13.12
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Hargoth Dimblaze |q 27379/1 |goto Twilight Highlands/0 47.10,13.21
step
kill Tentacle of Iso'rath##48790
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Watch the dialogue
Save Stormcaller Mylra |q 27379/4 |goto Twilight Highlands/0 47.24,15.70
step
talk Earthcaller Yevaa##48059
|tip Inside Iso'rath.
turnin The Terrors of Iso'rath##27379 |goto Twilight Highlands/0 48.70,16.63
accept Nightmare##27380 |goto Twilight Highlands/0 48.70,16.63
step
kill Brain of Iso'rath##47960
|tip Inside Iso'rath.
|tip Don't let the Digestive Acids bar at the bottom of your screen get too full.
|tip Stand inside the yellow bubbles to heal and reduce the Digestive Acids bar.
Kill Iso'rath |q 27380/1 |goto Twilight Highlands/0 48.33,14.42
step
Begin Flying to the Ring of the Elements |invehicle |q 27380
step
Return to the Ring of the Elements |outvehicle |goto Twilight Highlands/0 44.09,10.74 |q 27380 |notravel
step
talk Earthcaller Torunscar##45332
turnin Nightmare##27380 |goto Twilight Highlands/0 44.04,10.55
step
talk Golluck Rockfist##48264
accept Warm Welcome##27486 |goto Twilight Highlands/0 44.08,10.53
step
Watch the dialogue
Meet with Lirastrasza |q 27486/1 |goto Twilight Highlands/0 27.55,21.37 |notravel
|tip You will eventually get captured by a red dragon.
step
talk Calen##45528
turnin Warm Welcome##27486 |goto Twilight Highlands/0 29.33,25.96
accept Even Dragons Bleed##27504 |goto Twilight Highlands/0 29.33,25.96
step
talk Velastrasza##45522
turnin Even Dragons Bleed##27504 |goto Twilight Highlands/0 29.85,31.28
accept Draconic Mending##27505 |goto Twilight Highlands/0 29.85,31.28
step
talk Baleflame##45562
accept Life from Death##27506 |goto Twilight Highlands/0 29.79,31.42
stickystart "Reclaim_Dragonkin_Corpses"
step
Defend #5# Vermillion Menders |q 27505/1 |goto Twilight Highlands/0 29.70,33.10
|tip Protect the Vermillion Menders while they heal large red dragons to full health.
|tip If you can heal, you can speed this up by healing Celastrasza yourself.
step
label "Reclaim_Dragonkin_Corpses"
use the Ruby Seeds##61323
|tip Use it on the corpses of Vermillion Menders and Twilight Wyrmkillers.
|tip They look like red dragonkin and blue dragons.
Reclaim #6# Dragonkin Corpses |q 27506/1 |goto Twilight Highlands/0 28.89,32.29
'|clicknpc Twilight Wyrmkiller##45748, Vermillion Mender##45746
step
talk Velastrasza##45522
turnin Draconic Mending##27505 |goto Twilight Highlands/0 29.85,31.28
step
talk Baleflame##45562
turnin Life from Death##27506 |goto Twilight Highlands/0 29.79,31.42
step
talk Velastrasza##45522
accept In Defense of the Redoubt##27564 |goto Twilight Highlands/0 29.85,31.28
step
talk Calen##45528
turnin In Defense of the Redoubt##27564 |goto Twilight Highlands/0 29.33,25.96
accept Encroaching Twilight##27507 |goto Twilight Highlands/0 29.33,25.96
accept Breach in the Defenses##27509 |goto Twilight Highlands/0 29.33,25.96
step
talk Lirastrasza##45518
accept Far from the Nest##27508 |goto Twilight Highlands/0 29.30,25.98
step
talk Aquinastrasz##47121
|tip Outside the tree.
fpath Vermillion Redoubt |goto Twilight Highlands/0 28.55,24.86
stickystart "Collect_Vermillion_Eggs"
stickystart "Slay_Twilight_Invaders"
step
use Flashgrowth Mote##61385
|tip Inside the small cave.
Destroy the Twilight Portal |q 27509/1 |goto Twilight Highlands/0 17.93,16.90
step
label "Collect_Vermillion_Eggs"
clicknpc Vermillion Egg##45682+
|tip They look like large brown spiked eggs.
|tip Kill dwarves that are running and carrying brown eggs.
|tip They will drop the eggs after you kill them.
collect 6 Vermillion Egg##61317 |q 27508/1 |goto Twilight Highlands/0 21.94,17.20
step
label "Slay_Twilight_Invaders"
kill Twilight Abductor##45616, Twilight Flamequencher##45618
|tip They look like various humanoids.
Slay #12# Twilight Invaders |q 27507/1 |goto Twilight Highlands/0 21.94,17.20
step
talk Calen##45528
turnin Encroaching Twilight##27507 |goto Twilight Highlands/0 29.33,25.96
turnin Breach in the Defenses##27509 |goto Twilight Highlands/0 29.33,25.96
step
talk Lirastrasza##45518
turnin Far from the Nest##27508 |goto Twilight Highlands/0 29.30,25.98
step
talk Calen##45528
accept Patchwork Command##27576 |goto Twilight Highlands/0 29.33,25.96
step
talk Patch##47492
turnin Patchwork Command##27576 |goto Twilight Highlands/0 27.32,36.79
accept Easy Pickings##28091 |goto Twilight Highlands/0 27.32,36.79
accept Precious Goods##28090 |goto Twilight Highlands/0 27.32,36.79
stickystart "Kill_Twilight_Spearwarders"
step
kill Twilight Spearwarder##47490+
collect Twilight Caravan Cargo Key##62926 |q 28090/1 |goto Twilight Highlands/0 25.58,37.91
step
click Twilight Caravan Chest##206675
|tip Inside the wagon.
collect Twilight's Hammer Gatestone##62927 |q 28090/2 |goto Twilight Highlands/0 25.58,37.91
step
label "Kill_Twilight_Spearwarders"
kill 8 Twilight Spearwarder |q 28091/1 |goto Twilight Highlands/0 25.58,37.91
step
talk Patch##47492
turnin Easy Pickings##28091 |goto Twilight Highlands/0 27.32,36.79
turnin Precious Goods##28090 |goto Twilight Highlands/0 27.32,36.79
accept The Gates of Grim Batol##28097 |goto Twilight Highlands/0 27.32,36.79
step
talk Warlord Krogg##47493
turnin The Gates of Grim Batol##28097 |goto Twilight Highlands/0 29.63,40.98
accept If The Key Fits##28092 |goto Twilight Highlands/0 29.63,40.98
step
_Next to you:_
talk Patch##47374
accept Paving the Way##28094
stickystart "Kill_Wyrms_Bend_Cultists"
step
Watch the dialogue
Kill the enemies that attack in waves
Open the Dragonmaw Gate |q 28092/1 |goto Twilight Highlands/0 29.49,51.65
|tip All 5 allies need to be following you to complete this goal.
You can get another squad from Warlord Krogg at [29.62,40.97]
step
_Next to you:_
talk Patch##47374
turnin If The Key Fits##28092
accept Pressing Forward##28093
step
label "Kill_Wyrms_Bend_Cultists"
kill Twilight Guardsman##47394, Twilight Stalker##47401, Twilight Sentinel##47406, Bound Groundshaker##47410
|tip They look like various humanoid enemies.
Slay #30# Wyrm's Bend Cultists |q 28094/1 |goto Twilight Highlands/0 27.50,54.60
step
_Next to you:_
talk Patch##47374
turnin Paving the Way##28094
step
Secure the Entrance to Grim Batol |q 28093/1 |goto Twilight Highlands/0 22.13,56.56
step
talk Calen##47605
turnin Pressing Forward##28093 |goto Twilight Highlands/0 22.13,56.56
step
talk Alexstrasza the Life-Binder##47603
accept Enter the Dragon Queen##28712 |goto Twilight Highlands/0 21.85,56.99
step
talk Lirastrasza##49417
turnin Enter the Dragon Queen##28712 |goto Twilight Highlands/0 14.86,16.33
step
talk Calen##49810
accept Battle of Life and Death##28758 |goto Twilight Highlands/0 14.14,15.46
step
clicknpc Vermillion Vanguard##49910
Take Flight with the Vermillion Vanguard |invehicle |goto Twilight Highlands/0 14.05,15.07 |q 28758
step
kill 8 Twilight Shadowdrake##49873 |q 28758/1 |goto Twilight Highlands/0 21.21,48.78 |notravel
|tip They look like blue dragons flying in the air.
|tip Use the abilities on your action bar.
step
talk Calen##47605
turnin Battle of Life and Death##28758 |goto Twilight Highlands/0 22.13,56.56
accept And the Sky Streaked Red##28171 |goto Twilight Highlands/0 22.13,56.56
step
Begin Traveling to the Highland Forest |invehicle |goto Twilight Highlands/0 22.13,56.56 |q 28171
step
Travel to the Highland Forest |outvehicle |goto Twilight Highlands/0 59.09,70.02 |q 28171 |notravel
step
talk Lirastrasza##47902
turnin And the Sky Streaked Red##28171 |goto Twilight Highlands/0 59.07,69.79
accept A Fitting End##28191 |goto Twilight Highlands/0 59.07,69.79
accept Blackout##28173 |goto Twilight Highlands/0 59.07,69.79
step
talk Velastrasza##47904
accept Shining Through the Dark##28175 |goto Twilight Highlands/0 59.02,69.81
stickystart "Slay_Obsidian_Dragonkins"
step
use Alexstrasza's Tear##63139
|tip Inside the small cave.
Plant Alexstrasza's Tear |q 28175/1 |goto Twilight Highlands/0 64.09,78.08
step
use the Wyrmhunter Hooks##63092
|tip Use it on Obsidian Pyrewings.
|tip They look like smaller red dragons flying in the air.
|tip You will get a message on your screen when they're almost dead.
|tip When you see that message, use it on another Obsidian Pyrewing nearby to jump to it.
|tip You can use it while flying on your mount.
kill 8 Obsidian Pyrewing##46141 |q 28173/1 |goto Twilight Highlands/0 62.44,76.71
step
label "Slay_Obsidian_Dragonkins"
kill Obsidian Charscale##47797, Obsidian Viletongue##47796
|tip They look like dragonkin on the ground.
Slay #10# Obsidian Dragonkin |q 28191/1 |goto Twilight Highlands/0 62.44,76.71
step
talk Lirastrasza##47902
turnin A Fitting End##28191 |goto Twilight Highlands/0 59.07,69.79
turnin Blackout##28173 |goto Twilight Highlands/0 59.07,69.79
step
talk Velastrasza##47904
turnin Shining Through the Dark##28175 |goto Twilight Highlands/0 59.02,69.81
step
talk Lirastrasza##47902
accept Following the Young Home##28176 |goto Twilight Highlands/0 59.07,69.79
step
use the Mother's Flame##63126
Hatch the Obsidian Whelps |q 28176/1 |goto Twilight Highlands/0 59.23,82.59
step
Enter the cave |goto Twilight Highlands/0 55.36,83.50 < 20 |walk
Infiltrate the Obsidian Lair |q 28176/2 |goto Twilight Highlands/0 49.68,86.01
|tip Inside the cave.
step
talk Baleflame##47905
|tip Inside the cave.
turnin Following the Young Home##28176 |goto Twilight Highlands/0 44.90,90.91
accept Last of Her Kind##28247 |goto Twilight Highlands/0 44.90,90.91
step
Watch the dialogue
|tip Inside the cave.
kill Obsidia##47929
Defeat Obsidia |q 28247/1 |goto Twilight Highlands/0 45.09,91.49
step
Leave the cave |goto Twilight Highlands/0 55.36,83.50 < 20 |walk |only if subzone("Obsidian Lair")
talk Lirastrasza##47902
turnin Last of Her Kind##28247 |goto Twilight Highlands/0 59.06,69.79
accept Crushblow##28249 |goto Twilight Highlands/0 59.06,69.79
step
talk Warlord Zaela##45658
turnin Crushblow##28249 |goto Twilight Highlands/0 45.27,75.37
accept Ogres & Ettins##27493 |goto Twilight Highlands/0 45.27,75.37
step
talk Lady Cozwynn##45665
accept Call in the Artillery##27497 |goto Twilight Highlands/0 45.31,75.35
accept Kor'kron Drop##27491 |goto Twilight Highlands/0 45.31,75.35
step
talk Tokrog##47116
fpath Crushblow |goto Twilight Highlands/0 45.76,76.19
step
talk Innkeeper Krum##49747
|tip Inside the building.
home Crushblow |goto Twilight Highlands/0 45.07,76.75 |q 27491
step
talk Jon-Jon Jellyneck##45947
Select _"Jon-Jon, I'm here to lead your wind rider squad and drop off the Kor'kron assassins."_ |gossip 112820
Get Your Wind Rider Squad |q 27491/1 |goto Twilight Highlands/0 45.74,76.05
stickystart "Slay_Bloodeye_Clan_Ogres_And_Ettins"
step
Drop Off the Kor'kron |q 27491/2 |goto Twilight Highlands/0 39.13,64.52
|tip Fly to this location and get near the ground.
step
use the Artillery Flare##61367
Target the Northern Building |q 27497/1 |goto Twilight Highlands/0 39.58,62.93
step
use the Artillery Flare##61367
Target the Northeastern Building |q 27497/2 |goto Twilight Highlands/0 40.36,64.43
step
use the Artillery Flare##61367
Target the Southwestern Building |q 27497/3 |goto Twilight Highlands/0 40.35,69.73
step
use the Artillery Flare##61367
Target the Southern Building |q 27497/4 |goto Twilight Highlands/0 41.31,71.21
step
label "Slay_Bloodeye_Clan_Ogres_And_Ettins"
kill Twilight Ettin##45838, Bloodeye Brute##45787, Bloodeye Magelord##45795
|tip They look like ogres and two-headed giants.
Slay #10# Bloodeye Clan Ogres & Ettins |q 27493/1 |goto Twilight Highlands/0 40.44,65.86
step
talk Lady Cozwynn##45665
turnin Call in the Artillery##27497 |goto Twilight Highlands/0 45.31,75.35
turnin Kor'kron Drop##27491 |goto Twilight Highlands/0 45.31,75.35
step
talk Warlord Zaela##45658
turnin Ogres & Ettins##27493 |goto Twilight Highlands/0 45.27,75.37
accept Move the Mountain##27495 |goto Twilight Highlands/0 45.27,75.37
step
click Hidden Explosives##205590
Detonate the Hidden Explosives |q 27495/1 |goto Twilight Highlands/0 38.06,66.20
step
_Click the Complete Quest Box:_
turnin Move the Mountain##27495
accept Signal the Attack##27499
step
use the Attack Signal##61511
|tip Use it at the top of the tower.
Signal the Attack |q 27499/1 |goto Twilight Highlands/0 40.62,62.24
step
_Click the Complete Quest Box:_
turnin Signal the Attack##27499
accept Four Heads are Better than None##27501
step
Enter the cave |goto Twilight Highlands/0 39.77,71.35 < 15 |walk
kill Za'brox##46017
|tip Inside the cave.
collect Za's Head##61924 |q 27501/1 |goto Twilight Highlands/0 37.64,71.32
collect Brox's Head##61925 |q 27501/4 |goto Twilight Highlands/0 37.64,71.32
step
kill Beeble'phod##46018
|tip Inside the cave.
collect Phod's Head##61927 |q 27501/2 |goto Twilight Highlands/0 38.72,70.29
collect Beeble's Head##61926 |q 27501/3 |goto Twilight Highlands/0 38.72,70.29
step
Leave the cave |goto Twilight Highlands/0 39.77,71.35 < 15 |walk |only if subzone("Den of the Disciples") and indoors()
talk Lady Cozwynn##45665
turnin Four Heads are Better than None##27501 |goto Twilight Highlands/0 45.31,75.35
accept Up to the Citadel##27503 |goto Twilight Highlands/0 45.31,75.35
step
talk Kor'kron Squad Commander##46117
Select _"I'm ready, commander, let's head up."_ |gossip 112823
Speak to the Squad Commander |q 27503/1 |goto Twilight Highlands/0 38.93,64.01
step
Watch the dialogue
|tip Follow the Kor'kron assassins and protect them as they walk.
|tip They eventually walk to this location.
Escort the Kor'kron |q 27503/2 |goto Twilight Highlands/0 37.66,65.31
step
_Click the Complete Quest Box:_
turnin Up to the Citadel##27503
accept Just You and Garona##27638
step
talk Garona Halforcen##45675
|tip Stealthed at the bottom of the tower.
turnin Just You and Garona##27638 |goto Twilight Highlands/0 36.37,65.95
accept Dark Assassins##27653 |goto Twilight Highlands/0 36.37,65.95
accept Bring the Hammer Down##27655 |goto Twilight Highlands/0 36.37,65.95
accept Help from the Earthcaller##27658 |goto Twilight Highlands/0 36.37,65.95
stickystart "Collect_Dark_Assasins_Pendants"
stickystart "Slay_Twilight_Citadel_Cultists"
step
talk Earthcaller Yevaa##46242
turnin Help from the Earthcaller##27658 |goto Twilight Highlands/0 37.48,88.65
accept Portal Overload##27659 |goto Twilight Highlands/0 37.48,88.65
accept Spirit of the Loch##27660 |goto Twilight Highlands/0 37.48,88.65
step
talk Initiate Goldmine##46243
accept Unbinding##27662 |goto Twilight Highlands/0 37.56,88.73
stickystart "Free_Enslaved_Elementals"
step
click Air Portal Controller##206019
|tip It will weaken the elite enemy nearby.
|tip Up on the floating rock island.
kill Debilitated Aetharon##46270 |q 27659/2 |goto Twilight Highlands/0 44.14,81.44
step
click Earth Portal Controller##206018
|tip It will weaken the elite enemy nearby.
kill Debilitated Apexar##46273 |q 27659/1 |goto Twilight Highlands/0 38.03,80.16
step
click Water Portal Controller##206017
|tip It will weaken the elite enemy nearby.
kill Debilitated Edemantus##46272 |q 27659/3 |goto Twilight Highlands/0 33.21,62.35
step
talk Countess Verrall##46413
|tip Underwater.
turnin Spirit of the Loch##27660 |goto Twilight Highlands/0 27.62,63.87
accept Fire the Cannon##27661 |goto Twilight Highlands/0 27.62,63.87
step
label "Free_Enslaved_Elementals"
kill Enslaved Inferno##46327, Enslaved Tempest##46328, Enslaved Waterspout##46329
|tip They look like fire, lightning, and water elementals all around this area.
|tip The water elementals are in the water and on the shore around the lake.
Free #10# Enslaved Elementals |q 27662/1 |goto Twilight Highlands/0 33.28,58.73
step
kill Lord Cannon##46785 |q 27661/1 |goto Twilight Highlands/0 40.87,79.09
step
label "Collect_Dark_Assasins_Pendants"
kill Dark Assassin##46202+
|tip They look like black ghosts.
collect 5 Dark Assassin's Pendant##62033 |q 27653/1 |goto Twilight Highlands/0 37.33,74.41
step
label "Slay_Twilight_Citadel_Cultists"
kill Citadel Veteran##46205, Twilight Vindicator##46203, Corrupted Elementalist##46204
|tip They look like various humanoid enemies.
Slay #10# Twilight Citadel Cultists |q 27655/1 |goto Twilight Highlands/0 37.33,74.41
step
talk Initiate Goldmine##46243
turnin Unbinding##27662 |goto Twilight Highlands/0 37.56,88.73
step
talk Earthcaller Yevaa##46242
turnin Portal Overload##27659 |goto Twilight Highlands/0 37.48,88.65
step
talk Garona Halforcen##45675
|tip Stealthed at the bottom of the tower.
turnin Dark Assassins##27653 |goto Twilight Highlands/0 36.37,65.95
turnin Bring the Hammer Down##27655 |goto Twilight Highlands/0 36.37,65.95
accept Distract Them for Me##27689 |goto Twilight Highlands/0 36.37,65.95
accept The Elementium Axe##27696 |goto Twilight Highlands/0 36.37,65.95
step
talk Countess Verrall##46413
|tip Underwater.
turnin Fire the Cannon##27661 |goto Twilight Highlands/0 27.62,63.87
accept Water of Life##27798 |goto Twilight Highlands/0 27.62,63.87
step
use the Water of Life##62503
|tip Use it next to the Corpse of Forgemaster Finlay.
|tip Underwater.
Watch the dialogue
Extract Artifact Information |q 27798/1 |goto Twilight Highlands/0 35.09,61.09
step
talk Garona Halforcen##45675
|tip Stealthed at the bottom of the tower.
turnin Water of Life##27798 |goto Twilight Highlands/0 36.37,65.95
step
kill Master Klem##46342 |q 27689/2 |goto Twilight Highlands/0 36.21,71.02
|tip He walks around this area.
|tip Garona Halforcen will eventually appear to help you fight.
step
kill Blindeye the Guardian##46399
collect The Elementium Axe##62230 |q 27696/1 |goto Twilight Highlands/0 40.16,84.01
step
kill Mia the Rose##46343 |q 27689/3 |goto Twilight Highlands/0 42.30,83.45
|tip Inside the small room at the top of the building.
|tip Garona Halforcen will eventually appear to help you fight.
step
kill Dame Alys Finnsson##46341 |q 27689/1 |goto Twilight Highlands/0 43.35,88.49
|tip Inside the building.
|tip Garona Halforcen will eventually appear to help you fight.
step
talk Garona Halforcen##45675
|tip Stealthed at the bottom of the tower.
turnin Distract Them for Me##27689 |goto Twilight Highlands/0 36.37,65.95
turnin The Elementium Axe##27696 |goto Twilight Highlands/0 36.37,65.95
accept Dragon, Unchained##27701 |goto Twilight Highlands/0 36.37,65.95
step
use The Elementium Axe##62248
Free Lirastrasza |q 27701/1 |goto Twilight Highlands/0 32.34,68.74
step
talk Garona Halforcen##45675
|tip Stealthed at the bottom of the tower.
turnin Dragon, Unchained##27701 |goto Twilight Highlands/0 36.37,65.95
accept Coup de Grace##27703 |goto Twilight Highlands/0 36.37,65.95
step
kill Twilight Skyterror##46416+
|tip They look like blue dragons laying on the ground.
|tip They fly in the air, then get killed and fall to the ground.
Deliver #5# Coup de Graces |q 27703/1 |goto Twilight Highlands/0 37.50,75.40
step
talk Garona Halforcen##45675
|tip Stealthed at the bottom of the tower.
turnin Coup de Grace##27703 |goto Twilight Highlands/0 36.37,65.95
accept Back to the Elementium Depths##27712 |goto Twilight Highlands/0 36.37,65.95
step
talk Initiate Goldmine##46243
turnin Back to the Elementium Depths##27712 |goto Twilight Highlands/0 37.56,88.73
accept Mr. Goldmine's Wild Ride##28885 |goto Twilight Highlands/0 37.56,88.73
step
talk Initiate Goldmine##46243
Select _"Mr. Goldmine, I'm ready for that wild ride."_ |gossip 112854
Speak to Goldmine to Get in the Cart |q 28885/1 |goto Twilight Highlands/0 37.56,88.73
step
Watch the dialogue
Ride the Mine Cart to the End of the Line |q 28885/2 |goto Twilight Highlands/0 38.37,93.87 |notravel
step
_Next to you:_
talk Initiate Goldmine##46513
turnin Mr. Goldmine's Wild Ride##28885
accept A Little on the Side##27742
accept While We're Here##27743
stickystart "Slay_Elementium_Depths_Cultists"
stickystart "Collect_Elementium_Shards"
step
clicknpc Twilight Rune of Earth##46671
|tip Inside the mine.
accept Rune Ruination##27744 |goto Twilight Highlands/0 37.42,93.24
step
click Twilight Rune of Water##206314
|tip Inside the mine.
Destroy the Rune of Water |q 27744/2 |goto Twilight Highlands/0 35.15,90.37
step
click Twilight Rune of Air##206312
|tip Inside the mine.
Destroy the Rune of Air |q 27744/3 |goto Twilight Highlands/0 33.48,88.38
step
click Twilight Rune of Fire##206313
|tip Inside the mine.
Destroy the Rune of Fire |q 27744/4 |goto Twilight Highlands/0 34.33,86.63
step
label "Slay_Elementium_Depths_Cultists"
kill Depths Overseer##46579, Twilight Miner##46610
|tip They look like ogres and dwarves.
|tip All throughout the mine. |notinsticky
Slay #12# Elementium Depths Cultists |q 27743/1 |goto Twilight Highlands/0 35.14,87.02
step
label "Collect_Elementium_Shards"
kill Elementium Spinner##46580+
|tip They look like stone spiders.
|tip All throughout the mine. |notinsticky
click Elementium Shard##206299+
|tip They look like piles of flat slabs of dark rock.
collect 6 Elementium Shard##62331 |q 27742/1 |goto Twilight Highlands/0 35.14,87.02
step
_Next to you:_
talk Initiate Goldmine##46513
turnin A Little on the Side##27742
turnin While We're Here##27743
turnin Rune Ruination##27744
accept A Fiery Reunion##27745
step
Cross the bridge |goto Twilight Highlands/0 34.17,85.25 < 10 |walk
kill Magmatooth##46611
|tip Inside the mine.
collect Fire Portal Controller##62394 |q 27745/2 |goto Twilight Highlands/0 36.40,83.76
step
use the Fire Portal Controller##62394 |q 27745/1 |goto Twilight Highlands/0 36.40,83.76
step
talk Initiate Goldmine##46243
turnin A Fiery Reunion##27745 |goto Twilight Highlands/0 37.56,88.73
accept Garona Needs You##27783 |goto Twilight Highlands/0 37.56,88.73
step
talk Garona Halforcen##45675
|tip Stealthed at the bottom of the tower.
turnin Garona Needs You##27783 |goto Twilight Highlands/0 36.37,65.95
accept The Hammer of Twilight##27786 |goto Twilight Highlands/0 36.37,65.95
step
clicknpc The Hammer of Twilight##46717
turnin The Hammer of Twilight##27786 |goto Twilight Highlands/0 45.39,87.97
accept Skullcrusher the Mountain##27788 |goto Twilight Highlands/0 45.39,87.97
step
Watch the dialogue
Survive Skullcrusher's Backhand |q 27788/1 |goto Twilight Highlands/0 45.39,87.97
step
kill Skullcrusher the Mountain##46732 |q 27788/2 |goto Twilight Highlands/0 45.39,87.97
|tip Click the altars around the perimeter of the circle to gain buffs.
|tip A message will appear on the screen telling you when to click them.
|tip Avoid the swirling purple circles on the ground.
|tip Your allies will deal most of the damage, so keep the altar buffs active.
|tip Click the Dragonmaw Drums that appears on the ground near the end of the fight, to summon reinforcements.
step
talk Warlord Zaela##45658
turnin Skullcrusher the Mountain##27788 |goto Twilight Highlands/0 45.27,75.37
]])
