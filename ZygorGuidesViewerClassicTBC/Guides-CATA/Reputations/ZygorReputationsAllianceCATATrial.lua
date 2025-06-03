local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Bloodsail Buccaneers")
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Classic Reputations\\Darnassus",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Darnassus faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Darnassus') < Exalted end,
},[[
step
talk Moon Priestess Lasara##50305
buy Darnassus Tabard##45579 |n |goto Darnassus 36.2,48.5
Equip your Darnassus Tabard |equipped Darnassus Tabard##45579 |use Darnassus Tabard##45579 |future
You can run any dungeon that grants experience to gain reputation for Darnassus
Become Exalted with Darnassus |complete rep('Darnassus')==Exalted
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Gnomeregan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Hydraxian Waterlords")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Ironforge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\The League of Arathor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Ravenholdt")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Silverwing Sentinels")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\The Steamwheedle Cartel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Stormpike Guard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Stormwind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Classic Reputations\\Wintersaber Trainers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Ashtongue Deathsworn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Keepers of Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Honor Hold")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Netherwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Ogri'la")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\The Scale of the Sands")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\The Scryers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\The Sha'tar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Sha'tari Skyguard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\The Violet Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Shattered Sun Offensive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\The Consortium")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Kurenai")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Burning Crusade Reputations\\Lower City")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\Alliance Vanguard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\Argent Crusade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\Ashen Verdict")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\The Frenzyheart Tribe")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\Kalu'ak")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\Kirin Tor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\Knights of the Ebon Blade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\The Oracles")
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\The Sons of Hodir",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sons of Hodir faction.",
},[[
step
Proceeding to Prequests next step |next |only if rep('The Sons of Hodir')<=Friendly
Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
step
talk Jeer Sparksocket##29431
turnin Luxurious Getaway!##12853 |goto The Storm Peaks 41,86.4
accept Clean Up##12818 |goto The Storm Peaks 41,86.4
step
talk Smilin' Slirk Brassknob##29904
home K3 |goto The Storm Peaks 41.1,85.9
step
talk Gretchen Fizzlespark##29473
accept They Took Our Men!##12843 |goto The Storm Peaks 41.1,86.1
accept Equipment Recovery##12844 |goto The Storm Peaks 41.1,86.1
step
talk Ricket##29428
accept Reclaimed Rations##12827 |goto The Storm Peaks 40.9,85.3
accept Expression of Gratitude##12836 |goto The Storm Peaks 40.9,85.3
step
talk Skizzle Slickslide##29721
fpath K3 |goto The Storm Peaks 40.8,84.5
step
click Charred Wreckage##191535
collect 10 Charred Wreckage##40603 |q 12818/1 |goto The Storm Peaks 39.8,86.4
step
kill Savage Hill Scavenger##29404+, Savage Hill Brute##29623+
click Dried Gnoll Rations##191843
collect 16 Dried Gnoll Rations##40645 |q 12827/1 |goto The Storm Peaks 35,83.8
step
kill Gnarlhide##30003|q 12836/1 |goto The Storm Peaks 30.3,85.7
step
talk Jeer Sparksocket##29431
turnin Clean Up##12818 |goto The Storm Peaks 41,86.4
accept Just Around the Corner##12819 |goto The Storm Peaks 41,86.4
step
talk Ricket##29428
turnin Reclaimed Rations##12827 |goto The Storm Peaks 40.9,85.3
turnin Expression of Gratitude##12836 |goto The Storm Peaks 40.9,85.3
accept Ample Inspiration##12828 |goto The Storm Peaks 40.9,85.3
step
click Sparksocket's Tools##191519
collect Sparksocket's Tools##40642 |q 12819/1 |goto The Storm Peaks 35.1,87.8
step
talk Jeer Sparksocket##29431
turnin Just Around the Corner##12819 |goto The Storm Peaks 41,86.4
accept Slightly Unstable##12826 |goto The Storm Peaks 41,86.4
step
talk Ricket##29428
turnin Slightly Unstable##12826 |goto The Storm Peaks 40.9,85.3
accept A Delicate Touch##12820 |goto The Storm Peaks 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Attackers |q 12820/1 |goto The Storm Peaks 43.1,81.2
step
talk Tore Rumblewrench##29430
accept Moving In##12829 |goto The Storm Peaks 41.7,80
accept Ore Repossession##12830 |goto The Storm Peaks 41.7,80
step
click the U.D.E.D. Dispenser##191553
Retrieve a bomb from the dispenser
collect U.D.E.D.##40686 |q 12828 |goto The Storm Peaks 41.7,80
step
Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686
|tip They walk around this area spread out.
click  Mammoth Meat##191567
collect 8 Hearty Mammoth Meat##40728 |q 12828/1 |goto The Storm Peaks 43.9,79.0
|tip Move quickly.
stickystart "crystalspider"
step
_Enter_ the cave |goto The Storm Peaks 40.4,77.8 < 10 |walk
talk Injured Goblin Miner##29434
accept Only Partly Forgotten##12831 |goto The Storm Peaks 41.5,74.9
step
kill Snowblind Diggers##29413
collect 5 Impure Saronite Ore##40744 |q 12830/1 |goto The Storm Peaks 44,75.9
step
kill Icetip Crawler##29461
collect 1 Icetip Venom Sac##40944 |q 12831/1 |goto The Storm Peaks 47.1,72.3
step
label "crystalspider"
kill 12 Crystalweb Spiders |q 12829/1
step
talk Injured Goblin Miner##29434
turnin Only Partly Forgotten##12831 |goto The Storm Peaks 43.5,75.2
accept Bitter Departure##12832 |goto The Storm Peaks 43.5,75.2
step
talk Injured Goblin Miner##29434
Tell the miner you're ready
Escort the Injured Goblin Miner to K3 |q 12832/1 |goto The Storm Peaks 43.5,75.2
step
kill Sifreldar Storm Maiden##29323+
collect 5 Cold Iron Key##40641 |n
click Rusty Cage##191544
Free 5 Goblin Prisoners |q 12843/1 |goto The Storm Peaks 39.8,73.3
click K3 Equipment##191568
collect 8 K3 Equipment##40726 |q 12844/1 |goto The Storm Peaks 39.8,73.3
step
talk Tore Rumblewrench##29430
turnin Moving In##12829 |goto The Storm Peaks 41.7,80
turnin Ore Repossession##12830 |goto The Storm Peaks 41.7,80
step
talk Ricket##29428
turnin A Delicate Touch##12820 |goto The Storm Peaks 40.9,85.3
turnin Ample Inspiration##12828 |goto The Storm Peaks 40.9,85.3
turnin Bitter Departure##12832 |goto The Storm Peaks 40.9,85.3
accept Cell Block Tango##12821 |goto The Storm Peaks 40.9,85.3
step
talk Gretchen Fizzlespark##29473
turnin They Took Our Men!##12843 |goto The Storm Peaks 41.1,86.1
accept Leave No Goblin Behind##12846 |goto The Storm Peaks 41.1,86.1
turnin Equipment Recovery##12844 |goto The Storm Peaks 41.1,86.1
step
click Transporter Power Cell##191576
collect Transporter Power Cell##40731 |q 12821/1 |goto The Storm Peaks 45.1,82.4
step
Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731
|tip It looks like a tall machine with a fan in the bottom of it.
Activate the Garm Teleporter |q 12821/2 |goto The Storm Peaks 50.7,81.9
step
talk Ricket##29428
turnin Cell Block Tango##12821 |goto The Storm Peaks 40.9,85.3
accept Know No Fear##12822 |goto The Storm Peaks 40.9,85.3
step
talk Gino##29432
accept A Flawless Plan##12823 |goto The Storm Peaks 50.0,81.8
stickystart "garmdevotee"
step
_Enter_ the cave
Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431
|tip It's a stone altar with a bunch of melted red candles on it. Follow the path in the cave that spirals up all the way to the top of the cave to find it.
kill Tormar Frostgut##29626 |q 12823/2 |goto The Storm Peaks 50.5,77.8
step
label "garmdevotee"
kill 6 Garm Watcher##29409+ |q 12822/1 |goto The Storm Peaks 48.1,81.9
kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto The Storm Peaks 48.1,81.9
step
talk Gino##29432
|tip Leave the cave.
turnin A Flawless Plan##12823 |goto The Storm Peaks 50.0,81.8
accept Demolitionist Extraordinaire##12824 |goto The Storm Peaks 50.0,81.8
step
talk Lok'lira the Crone##29481
turnin Leave No Goblin Behind##12846 |goto The Storm Peaks 42.8,68.9
accept The Crone's Bargain##12841 |goto The Storm Peaks 42.8,68.9
step
kill Overseer Syra##29518
collect 1 Runes of the Yrkvinn##40690 |q 12841/1 |goto The Storm Peaks 44.2,68.9
step
talk Lok'lira the Crone##29481
turnin The Crone's Bargain##12841 |goto The Storm Peaks 42.8,68.9
accept Mildred the Cruel##12905 |goto The Storm Peaks 42.8,68.9
step
talk Mildred the Cruel##29885
turnin Mildred the Cruel##12905 |goto The Storm Peaks 44.4,68.9
accept Discipline##12906 |goto The Storm Peaks 44.4,68.9
step
Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837
|tip They are sitting on the ground inside these side tunnels inside this mine.
Discipline 6 Exhausted Vrykul |q 12906/1 |goto The Storm Peaks 44.8,70.3
step
talk Mildred the Cruel##29885
turnin Discipline##12906 |goto The Storm Peaks 44.4,68.9
accept Examples to be Made##12907 |goto The Storm Peaks 44.4,68.9
step
kill 1 Garhal##30147 |q 12907/1 |goto The Storm Peaks 45.4,69.1
step
talk Mildred the Cruel##29885
turnin Examples to be Made##12907 |goto The Storm Peaks 44.4,68.9
accept A Certain Prisoner##12908 |goto The Storm Peaks 44.4,68.9
step
talk Lok'lira the Crone##29481
turnin A Certain Prisoner##12908 |goto The Storm Peaks 42.8,68.9
accept A Change of Scenery##12921 |goto The Storm Peaks 42.8,68.9
step
Follow the path in the mine east out to the other side to
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921 |goto The Storm Peaks 47.5,69.1
accept Is That Your Goblin?##12969 |goto The Storm Peaks 47.5,69.1
step
Talk to Agnetta Tyrsdottar##30154
Tell her to skip the warmup
kill 1 Agnetta Tyrsdottar##30154 |q 12969/1 |goto The Storm Peaks 48.2,69.8
step
talk Lok'lira the Crone##29975
turnin Is That Your Goblin?##12969 |goto The Storm Peaks 47.5,69.1
accept The Hyldsmeet##12970 |goto The Storm Peaks 47.5,69.1
step
talk Lok'lira the Crone##29975
Ask her about her proposal
Listen to Lok'lira's proposal |q 12970/1 |goto The Storm Peaks 47.5,69.1
step
talk Lok'lira the Crone##29975
turnin The Hyldsmeet##12970 |goto The Storm Peaks 47.5,69.1
accept Taking on All Challengers##12971 |goto The Storm Peaks 47.5,69.1
step
talk Victorious Challenger##30012
kill 6 Victorious Challenger##30012+ |q 12971/1 |goto The Storm Peaks 51,66.4
step
talk Lok'lira the Crone##29975
turnin Taking on All Challengers##12971 |goto The Storm Peaks 47.5,69.1
accept You'll Need a Bear##12972 |goto The Storm Peaks 47.5,69.1
step
talk Iva the Vengeful##29997
accept Off With Their Black Wings##12942 |goto The Storm Peaks 48.4,72.1
accept Yulda's Folly##12968 |goto The Storm Peaks 48.4,72.1
step
talk Thyra Kvinnshal##30041
accept Aberrations##12925 |goto The Storm Peaks 48.4,72.1
step
talk Brijana##29592
turnin You'll Need a Bear##12972 |goto The Storm Peaks 53.1,65.7
accept Bearly Hanging On##12851 |goto The Storm Peaks 53.1,65.7
step
clicknpc Icefang##29598
While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
Burn 7 Frostworgs |q 12851/1 |goto The Storm Peaks 53.1,65.7
Burn 15 Frost Giants |q 12851/2 |goto The Storm Peaks 53.1,65.7
step
talk Brijana##29592
turnin Bearly Hanging On##12851 |goto The Storm Peaks 53.1,65.7
accept Cold Hearted##12856 |goto The Storm Peaks 53.1,65.7
step
clicknpc Captive Proto-Drake##29708
Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard
|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
Rescue 9 Brunnhildar Prisoners |q 12856/1 |goto The Storm Peaks 63.9,62.5
Free 3 Proto-Drakes |q 12856/2 |goto The Storm Peaks 63.9,62.5
|tip Fly to this area.
step
talk Brijana##29592
turnin Cold Hearted##12856 |goto The Storm Peaks 53.1,65.7
accept Deemed Worthy##13063 |goto The Storm Peaks 53.1,65.7
step
talk Astrid Bjornrittar##29839
turnin Deemed Worthy##13063 |goto The Storm Peaks 49.7,71.8
accept Making a Harness##12900 |goto The Storm Peaks 49.7,71.8
step
kill Icemane Yeti##29875+|n
collect 3 Icemane Yeti Hide##41424|q 12900/1 |goto The Storm Peaks 47.9,74.7
step
talk Astrid Bjornrittar##29839
turnin Making a Harness##12900 |goto The Storm Peaks 49.7,71.8
accept The Last of Her Kind##12983 |goto The Storm Peaks 49.7,71.8
accept The Slithering Darkness##12989 |goto The Storm Peaks 49.7,71.8
step
kill 8 Ravenous Jormungar##29605+ |q 12989/1 |goto The Storm Peaks 55.8,63.9
|tip They are inside the cave.
step
clicknpc Injured Icemaw Matriarch##29563
The bear runs back to Brunnhildar Village
Rescue the Icemaw Matriarch |q 12983/1 |goto The Storm Peaks 54.8,60.4
step
talk Astrid Bjornrittar##29839
turnin The Last of Her Kind##12983 |goto The Storm Peaks 49.7,71.8
accept The Warm-Up##12996 |goto The Storm Peaks 49.7,71.8
turnin The Slithering Darkness##12989 |goto The Storm Peaks 49.7,71.8
step
Use your Reins of the Warbear Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
step
Use the abilities on your hotbar to fight Kirgaraak
|tip He's a big white yeti.
Defeat Kirgaraak |q 12996/1 |goto The Storm Peaks 50.8,67.7
step
Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
talk Astrid Bjornrittar##29839
turnin The Warm-Up##12996 |goto The Storm Peaks 49.7,71.8
accept Into the Pit##12997 |goto The Storm Peaks 49.7,71.8
step
Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42499
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto The Storm Peaks 49.1,69.4
step
Click the red arrow to get off the bear|script VehicleExit() |outvehicle |c
step
talk Astrid Bjornrittar##29839
turnin Into the Pit##12997 |goto The Storm Peaks 49.7,71.8
accept Prepare for Glory##13061 |goto The Storm Peaks 49.7,71.8
step
talk Lok'lira the Crone##29975
turnin Prepare for Glory##13061 |goto The Storm Peaks 47.5,69.1
accept Lok'lira's Parting Gift##13062 |goto The Storm Peaks 47.5,69.1
step
talk Gretta the Arbiter##29796
turnin Lok'lira's Parting Gift##13062 |goto The Storm Peaks 50.9,65.6
accept The Drakkensryd##12886 |goto The Storm Peaks 50.9,65.6
step
You fly off on a drake and start flying in circles around a tower:
Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
kill Hyldsmeet Drakerider##29694+
Repeat this process 9 more times
Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
step
They look like light fixtures on the side of the stone columns.
Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
step
talk Thorim##29445
turnin The Drakkensryd##12886 |goto The Storm Peaks 33.4,58
accept Sibling Rivalry##13064 |goto The Storm Peaks 33.4,58
step
talk Thorim##29445
Ask him what became of Sif
Hear Thorim's History |q 13064/1 |goto The Storm Peaks 33.4,58
step
talk Thorim##29445
turnin Sibling Rivalry##13064 |goto The Storm Peaks 33.4,58
accept Mending Fences##12915 |goto The Storm Peaks 33.4,58
step
kill 12 Nascent Val'kyr##29570+ |q 12942/1 |goto The Storm Peaks 27.3,63.7
kill Valkyrion Aspirant##29569+ |n
collect 6 Vial of Frost Oil##41612|q 12925 |goto The Storm Peaks 27.3,63.7
step
Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
|tip They look like brown spiked eggs sitting in the yellow water around this area.
Try to get 6 at a time
Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto The Storm Peaks 23.7,58.3
step
kill Yulda the Stormspeaker##30046 |q 12968/1 |goto The Storm Peaks 24,61.8
click Harpoon Crate##192072
accept Valkyrion Must Burn##12953 |goto The Storm Peaks 24,61.8
step
clicknpc Valkyrion Harpoon Gun##30066
Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
Start 6 Fires |q 12953/1 |goto The Storm Peaks 26,59.8
step
Click the red arrow to get off the gun |script VehicleExit() |outvehicle |c
step
talk Ricket##29428
turnin Demolitionist Extraordinaire##12824 |goto The Storm Peaks 40.9,85.3
turnin Know No Fear##12822 |goto The Storm Peaks 40.9,85.3
accept Overstock##12833 |goto The Storm Peaks 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Invader |q 12833/1 |goto The Storm Peaks 43.1,81.2
step
talk Ricket##29428
turnin Overstock##12833 |goto The Storm Peaks 40.9,85.3
step
talk Thyra Kvinnshal##30041
turnin Aberrations##12925 |goto The Storm Peaks 48.4,72.1
step
talk Iva the Vengeful##29997
turnin Off With Their Black Wings##12942 |goto The Storm Peaks 48.4,72.1
turnin Yulda's Folly##12968 |goto The Storm Peaks 48.4,72.1
turnin Valkyrion Must Burn##12953 |goto The Storm Peaks 48.4,72.1
step
click Granite Boulder##191815
Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
Help the dwarves kill them
kill 5 Stormforged Iron Giant##29375+ |q 12915/2 |goto The Storm Peaks 75.8,63
collect Slag Covered Metal##41556 |q 12922 |future |n |goto The Storm Peaks 75.8,63
use Slag Covered Metal##41556
accept The Refiner's Fire##12922 |goto The Storm Peaks 75.8,63
step
kill Seething Revenant##29504+
collect 10 Furious Spark##41558|q 12922/1 |goto The Storm Peaks 75.4,63.5
step
click Granite Boulder##191815
Use Thorim's Charm of Earth on Fjorn |use Thorim's Charm of Earth##41505
|tip He's a huge fire giant, holding a huge smithing hammer.
Help the dwarves kill him
kill Fjorn##29503 |q 12915/1 |goto The Storm Peaks 77.2,62.9
step
click Fjorn's Anvil##192071
turnin The Refiner's Fire##12922 |goto The Storm Peaks 77.2,62.9
accept A Spark of Hope##12956 |goto The Storm Peaks 77.2,62.9
step
talk Thorim##29445
turnin A Spark of Hope##12956 |goto The Storm Peaks 33.4,58
turnin Mending Fences##12915 |goto The Storm Peaks 33.4,58
accept Forging an Alliance##12924 |goto The Storm Peaks 33.4,58
step
talk Halvdan##32571
fpath Dun Niffelem |goto The Storm Peaks 62.6,60.9
step
talk King Jokkum##30105
accept You Can't Miss Him##12966 |goto The Storm Peaks 65.4,60.2
step
talk Njormeld##30099
turnin You Can't Miss Him##12966 |goto The Storm Peaks 75.4,63.6
accept Battling the Elements##12967 |goto The Storm Peaks 75.4,63.6
step
clicknpc Snorri##30123
Ride Snorri |invehicle |q 12967 |goto The Storm Peaks 75.7,63.9
step
Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow
|tip The Snowdrifts look like piles of snow on the ground.
Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
kill 10 Seething Revenant##29504+ |q 12967/1 |goto The Storm Peaks 76.7,63.4
step
Click the red arrow on your hotbar to leave Snorri |outvehicle |q 12967
step
talk Njormeld##30099
turnin Battling the Elements##12967 |goto The Storm Peaks 75.4,63.6
step
talk Njormeld##30127
turnin Forging an Alliance##12924 |goto The Storm Peaks 63.2,63.2
accept A New Beginning##13009 |goto The Storm Peaks 63.2,63.2
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
talk King Jokkum##30105
accept In Memoriam##12975 |goto The Storm Peaks 65.4,60.2
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
click  Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks 75.3,62.8
step
click Horn Fragment##192082
collect 8 Horn Fragment##42162 |q 12975/1 |goto The Storm Peaks 72.1,49.4
step
talk King Jokkum##30105
turnin In Memoriam##12975 |goto The Storm Peaks 65.4,60.2
accept A Monument to the Fallen##12976 |goto The Storm Peaks 65.4,60.2
step
talk Njormeld##30127
turnin A Monument to the Fallen##12976 |goto The Storm Peaks 63.2,63.2
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
click Hodir's Horn##192078
|tip If the Horn is not here, fly far from this area, then return and it should appear.
accept Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses|use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.1,51.8
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
step
talk Njormeld##30127
accept Forging a Head##12985 |goto The Storm Peaks 63.2,63.2
step
talk King Jokkum##30105
accept Culling Jorcuttar##13011 |goto The Storm Peaks 65.4,60.2
step
Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
kill Stormforged Ambusher##30208+
collect 8 Stormforged Eye##42423 |q 12985/1 |goto The Storm Peaks 69.7,58.9
step
talk Njormeld##30127
turnin Forging a Head##12985 |goto The Storm Peaks 63.2,63.2
accept Placing Hodir's Helm##12987 |goto The Storm Peaks 63.2,63.2
step
Fly to the tip of this ice spike
Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
Mount Hodir's Helm |q 12987/1 |goto The Storm Peaks 64.3,59.2
step
talk Njormeld##30127
turnin Placing Hodir's Helm##12987 |goto The Storm Peaks 63.2,63.2
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640|q 13006/1 |goto The Storm Peaks 55.6,63.4
Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
collect 1 Icemaw Bear Flank##42733 |q 13011 |goto The Storm Peaks 55.6,63.4
step
Follow the path inside the cave to this spot
Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
kill 1 Jorcuttar##30340 |q 13011/1 |goto The Storm Peaks 54.7,60.8
step
talk Thorim##29445
turnin A New Beginning##13009 |goto The Storm Peaks 33.4,58
accept Veranus##13050 |goto The Storm Peaks 33.4,58
step
click Small Proto-Drake Egg##192536
collect 5 Small Proto-Drake Egg##42784 |q 13050/1 |goto The Storm Peaks 43.7,67.4
You can find more Small Proto-Drake Eggs at the following location: |goto The Storm Peaks 45.2,66.9
step
talk Thorim##29445
turnin Veranus##13050 |goto The Storm Peaks 33.4,58
accept Territorial Trespass##13051 |goto The Storm Peaks 33.4,58
step
Stand in this big nest
use the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
Lure Veranus |q 13051/1 |goto The Storm Peaks 38.7,65.6
step
talk Thorim##29445
turnin Territorial Trespass##13051 |goto The Storm Peaks 33.4,58
accept Krolmir, Hammer of Storms##13010 |goto The Storm Peaks 33.4,58
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
talk King Jokkum##30105
turnin Culling Jorcuttar##13011 |goto The Storm Peaks 65.4,60.2
step
talk King Jokkum##30105
Ask him what has become of Krolmir
Discover Krolmir's Fate |q 13010/1 |goto The Storm Peaks 65.4,60.2
step
talk Thorim##30390
turnin Krolmir, Hammer of Storms##13010 |goto The Storm Peaks 71.4,48.8
accept The Terrace of the Makers##13057 |goto The Storm Peaks 71.4,48.8
step
talk Thorim##30295
turnin The Terrace of the Makers##13057 |goto The Storm Peaks 56.3,51.4
accept The Earthen Oath##13005 |goto The Storm Peaks 56.3,51.4
accept Loken's Lackeys##13035 |goto The Storm Peaks 56.3,51.4
step
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
Fight mobs around this area
kill 7 Iron Sentinel##29984+ |q 13005/1 |goto The Storm Peaks 57.3,46.7
kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto The Storm Peaks 57.3,46.7
step
_Enter_ the Hall of the Shaper |goto The Storm Peaks/0 57.1,44.2 < 10
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
kill Eisenfaust##30341 |q 13035/1 |goto The Storm Peaks/0 55.3,43.3
step
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
kill Halefnir the Windborn##30376 |q 13035/2 |goto The Storm Peaks/0 48.6,45.6
step
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
kill Duronn the Runewrought##30353 |q 13035/3 |goto The Storm Peaks/0 45,38.1
step
talk Thorim##30295
turnin The Earthen Oath##13005 |goto The Storm Peaks/0 56.3,51.4
turnin Loken's Lackeys##13035 |goto The Storm Peaks/0 56.3,51.4
accept The Reckoning##13047 |goto The Storm Peaks/0 56.3,51.4
step
talk Thorim##30399
Tell him you are with him
Witness the Reckoning |q 13047/1 |goto The Storm Peaks/0 35.9,31.5
step
talk King Jokkum##30105
turnin The Reckoning##13047 |goto The Storm Peaks/0 65.4,60.2
step
talk Ricket##29428
accept When All Else Fails##12862 |goto The Storm Peaks/0 40.9,85.3
step
talk Ricket##29428
Tell her you are ready to head further into Storm Peaks |goto The Storm Peaks/0 40.9,85.3 < 5 |walk
You will fly to Frosthold |goto The Storm Peaks/0 28.6,74.6 < 10 |walk
talk Faldorf Bitterchill##29750
fpath Frosthold |goto The Storm Peaks/0 29.5,74.3
step
talk Archaeologist Andorin##29650
accept On Brann's Trail##12854 |goto The Storm Peaks/0 29.5,74.1
step
talk Lagnus##29743
accept Offering Thanks##12863 |goto The Storm Peaks/0 29.4,73.8
step
talk Rork Sharpchin##29744
turnin When All Else Fails##12862 |goto The Storm Peaks/0 28.8,74.1
accept Ancient Relics##12870 |goto The Storm Peaks/0 28.8,74.1
step
talk Gunda Boldhammer##29926
home Frosthold |goto The Storm Peaks 28.7,74.4
step
talk Glorthal Stiffbeard##29727
turnin Offering Thanks##12863 |goto The Storm Peaks 29.2,74.9
accept Missing Scouts##12864 |goto The Storm Peaks 29.2,74.9
step
talk Fjorlin Frostbrow##29732
accept Loyal Companions##12865 |goto The Storm Peaks 29.8,75.7
step
talk Frostborn Scout##29811
|tip High up on this frozen waterfall.
Ask him if he is okay
Locate the Missing Scout |q 12864/1 |goto The Storm Peaks 36.4,77.3
step
kill Vrykuls
Get 10 Relics of Ulduar |q 12870/1 |goto The Storm Peaks 46.5,68.3
step
kill Ice Steppe Rhino##29469+, Ice Steppe Bull##30445+ |n
collect 8 Fresh Ice Rhino Meat##41340 |q 12865 |goto The Storm Peaks 44.5,60.4
step
click Disturbed Snow##191708
collect Burlap-Wrapped Note##40947 |q 12854/1 |goto The Storm Peaks 36.1,64.1
step
Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain |use Fresh Ice Rhino Meat##41340
Feed 8 Stormcrest Eagles |q 12865/1 |goto The Storm Peaks 33.2,73.7
step
talk Archaeologist Andorin##29650
turnin On Brann's Trail##12854 |goto The Storm Peaks 29.5,74.1
accept Sniffing Out the Perpetrator##12855 |goto The Storm Peaks 29.5,74.1
step
talk Rork Sharpchin##29744
turnin Ancient Relics##12870 |goto The Storm Peaks 28.8,74.1
step
talk Glorthal Stiffbeard##29727
turnin Missing Scouts##12864 |goto The Storm Peaks 29.2,74.9
accept Stemming the Aggressors##12866 |goto The Storm Peaks 29.2,74.9
step
talk Fjorlin Frostbrow##29732
turnin Loyal Companions##12865 |goto The Storm Peaks 29.8,75.7
accept Baby Stealers##12867 |goto The Storm Peaks 29.8,75.7
step
click Eagle Egg##244841
collect 15 Stormcrest Eagle Egg##41341 |q 12867/1 |goto The Storm Peaks 33,66.8
kill 8 Frostfeather Screecher##29792+ |q 12866/1 |goto The Storm Peaks 33,66.8
kill 8 Frostfeather Witch##29793+ |q 12866/2 |goto The Storm Peaks 33,66.8
step
Use the Frosthound's Collar in your bags next to this broken down tent |use Frosthound's Collar##41430
Use the abilities on your hotbar to keep the dwarves away from you
Track down the thief |q 12855/1 |goto The Storm Peaks 36.4,64.1
step
kill Tracker Thulin##29695 |q 12855/2 |goto The Storm Peaks 48.5,60.8
collect Brann's Communicator##40971|q 12871 |goto The Storm Peaks 48.5,60.8
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Sniffing Out the Perpetrator##12855
accept Pieces to the Puzzle##12858
step
kill Library Guardian##29724
collect 6 Inventor's Disk Fragment##41130 |n
Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
collect The Inventor's Disk##41132 |q 12858/1 |goto The Storm Peaks 37.6,43.5
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Pieces to the Puzzle##12858
accept Data Mining##12860
step
Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
|tip They look like floating round star things.
Gather 7 Hidden Data |q 12860/1 |goto The Storm Peaks 38.5,44.2
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Data Mining##12860
accept The Library Console##13415
step
click Inventor's Library Console##191760
turnin The Library Console##13415 |goto The Storm Peaks 37.4,46.8
accept Norgannon's Shell##12872 |goto The Storm Peaks 37.4,46.8
step
Click the Charged Disk in your bags |use Charged Disk##44704
kill Archivist Mechaton##29775
collect Norgannon's Shell##41258 |q 12872/1
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Norgannon's Shell##12872
accept Aid from the Explorers' League##12871
accept The Exiles of Ulduar##12885
step
talk Breck Rockbrow##29950
fpath Bouldercrag's Refuge |goto The Storm Peaks 30.6,36.3
step
Go inside the building to 31.4,38.1 |goto The Storm Peaks 31.4,38.1
talk Bouldercrag the Rockshaper##29801
turnin The Exiles of Ulduar##12885
accept Rare Earth##12930
step
talk Lagnus##29743
turnin Aid from the Explorers' League##12871 |goto The Storm Peaks 29.4,73.8
accept The Frostborn King##12873 |goto The Storm Peaks 29.4,73.8
step
talk Glorthal Stiffbeard##29727
turnin Stemming the Aggressors##12866 |goto The Storm Peaks 29.2,74.9
step
talk Fjorlin Frostbrow##29732
turnin Baby Stealers##12867 |goto The Storm Peaks 29.8,75.7
step
talk Yorg Stormheart##29593
turnin The Frostborn King##12873 |goto The Storm Peaks 30.31,74.8
accept Fervor of the Frostborn##12874 |goto The Storm Peaks 30.31,74.8
step
talk Fjorlin Frostbrow##29732 |goto The Storm Peaks 29.8,75.7 |walk
Tell him you are ready for your test |goto The Storm Peaks 53.5,35.1 < 10 |walk
click Battered Storm Hammer##192243
collect Battered Storm Hammer##42624 |q 12874 |goto The Storm Peaks 53.6,35.1
step
Use your Battered Storm Hammer on The Iron Watcher repeatedly |use Battered Storm Hammer##42624
While he is stunned, run away so the Hammer can recharge
When his health is low enough, he will run to the end of the bridge
Throw your hammer one last time and he will fall off
kill The Iron Watcher##30142 |q 12874/1 |goto The Storm Peaks 53.5,37.9
step
talk Yorg Stormheart##29593
turnin Fervor of the Frostborn##12874 |goto The Storm Peaks 30.31,74.8
accept An Experienced Guide##12875 |goto The Storm Peaks 30.31,74.8
step
talk Fjorlin Frostbrow##29732
accept Unwelcome Guests##12876 |goto The Storm Peaks 29.8,75.7
step
_Follow_ the path |goto The Storm Peaks 27.0,66.9 < 5
kill 10 Stormforged Invaders |q 12876/1 |goto The Storm Peaks 26.3,66.7
kill Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
collect 5 Frostweave Cloth##33470 |q 12930/2 |goto The Storm Peaks 26.3,66.7
step
talk Drom Frostgrip##29751
turnin An Experienced Guide##12875 |goto The Storm Peaks 25.2,68.5
accept The Lonesome Watcher##12877 |goto The Storm Peaks 25.2,68.5
step
kill the Stormforged Monitor##29862
collect Frostgrip's Signet Ring##41393 |q 12877/1 |goto The Storm Peaks 27.1,67.3
step
talk Creteus##30052
turnin The Lonesome Watcher##12877 |goto The Storm Peaks 39.6,59.8
accept Fate of the Titans##12986 |goto The Storm Peaks 39.6,59.8
step
Use Creteus's Mobile Databank at the top of this temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Winter |q 12986/2 |goto The Storm Peaks 52.6,56.9
step
Use Creteus's Mobile Databank in this broken temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Life |q 12986/3 |goto The Storm Peaks 64.3,46.7
step
Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Order |q 12986/4 |goto The Storm Peaks 53.5,42.3
step
Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Invention |q 12986/1 |goto The Storm Peaks 45.6,49.2
step
talk Creteus##30052
turnin Fate of the Titans##12986 |goto The Storm Peaks 39.6,59.8
accept The Hidden Relic##12878 |goto The Storm Peaks 39.6,59.8
step
_Follow_ the path to The Hidden Relic |goto The Storm Peaks 41.5,62.1 < 5 |walk
click The Guardian's Charge##192076
turnin The Hidden Relic##12878 |goto The Storm Peaks 44.5,64.5
accept Fury of the Frostborn King##12879 |goto The Storm Peaks 44.5,64.5
step
talk Creteus##30052
turnin Fury of the Frostborn King##12879 |goto The Storm Peaks 38.2,61.7
accept The Master Explorer##12880 |goto The Storm Peaks 38.2,61.7
step
talk Brann Bronzebeard##29579
turnin The Master Explorer##12880 |goto The Storm Peaks 39.6,56.4
accept The Brothers Bronzebeard##12973 |goto The Storm Peaks 39.6,56.4
step
clicknpc Brann's Flying Machine##30134
kill the dwarves that jump on the plane as you fly |n
Accompany Brann Bronzebeard to Frosthold |q 12973/1
step
talk Velog Icebellow##30401
turnin The Brothers Bronzebeard##12973 |goto The Storm Peaks 30.3,74.8
step
talk Fjorlin Frostbrow##29732
turnin Unwelcome Guests##12876 |goto The Storm Peaks 29.8,75.7
accept Pushed Too Far##12869 |goto The Storm Peaks 29.8,75.7
step
Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
kill 16 Stormpeak Wyrm##29753+ |q 12869/1 |goto The Storm Peaks 44.6,59.8
step
Click the red arrow on your hotbar to get off the eagle |script VehicleExit()
talk Fjorlin Frostbrow##29732
turnin Pushed Too Far##12869 |goto The Storm Peaks 29.8,75.7
step
click Enchanted Earth##191845
collect 7 Enchanted Earth##41614|q 12930/1 |goto The Storm Peaks 28.3,29.4
step
talk Bouldercrag the Rockshaper##29801
turnin Rare Earth##12930 |goto The Storm Peaks 31.4,38.1
accept Fighting Back##12931 |goto The Storm Peaks 31.4,38.1
accept Relief for the Fallen##12937|goto The Storm Peaks 31.4,38.1
step
talk Magorn##29963
home Bouldercrag's Refuge |goto The Storm Peaks 30.9,37.3
step
kill Stormforged Raider##29377+, Stormforged Reaver##29382+
kill 10 Stormforged Attacker|q 12931/1 |goto The Storm Peaks 28.1,36.7
Use your Telluric Poultice on Fallen Earthen Defenders|use Telluric Poultice##41988
Heal 8 Fallen Earthen Defenders |q 12937/1 |goto The Storm Peaks 28.1,36.7
step
talk Bouldercrag the Rockshaper##29801
turnin Fighting Back##12931 |goto The Storm Peaks 31.4,38.1
turnin Relief for the Fallen##12937 |goto The Storm Peaks 31.4,38.1
accept Slaves of the Stormforged##12957 |goto The Storm Peaks 31.4,38.1
accept The Dark Ore##12964 |goto The Storm Peaks 31.4,38.1
step
kill 3 Stormforged Taskmaster##29369+ |q 12957/2 |goto The Storm Peaks 27.5,49.7
talk Captive Mechagnome##29384
Attempt to free 8 Captive Mechagnomes |q 12957/1 |goto The Storm Peaks 27.5,49.7
clicknpc Ore Cart##25986
collect 5 Dark Ore Sample##42109|q 12964/1 |goto The Storm Peaks 27.5,49.7
step
talk Bouldercrag the Rockshaper##29801
turnin Slaves of the Stormforged##12957 |goto The Storm Peaks 31.4,38.1
turnin The Dark Ore##12964 |goto The Storm Peaks 31.4,38.1
accept The Gifts of Loken##12965 |goto The Storm Peaks 31.4,38.1
step
talk Bruor Ironbane##30152
accept Facing the Storm##12978 |goto The Storm Peaks 31.3,38.2
stickystart "stormforged"
step
click Loken's Fury##192120
Destroy Loken's Fury |q 12965/1 |goto The Storm Peaks 24,42.6
step
click Loken's Power##192121
Destroy Loken's Power |q 12965/2 |goto The Storm Peaks 26.2,47.7
step
click Loken's Favor##192122
Destroy Loken's Favor |q 12965/3 |goto The Storm Peaks 24.6,48.4
step
label "stormforged"
kill Stormforged Champion##29370+, Stormforged Magus##29374+
kill 10 Nidavelir Stormforged|q 12978/1 |goto The Storm Peaks 25,42.9
kill Stormforged War Golem##29380+
collect 1 Dark Armor Plate##42203|n |goto The Storm Peaks 25,42.9
Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
accept Armor of Darkness##12979 |goto The Storm Peaks 25,42.9
step
kill Stormforged War Golem##29380+
collect 4 Dark Armor Sample##42204 |q 12979/1 |goto The Storm Peaks 28.7,43.3
step
talk Bouldercrag the Rockshaper##29801
turnin The Gifts of Loken##12965 |goto The Storm Peaks 31.4,38.1
step
talk Bruor Ironbane##30152
turnin Facing the Storm##12978 |goto The Storm Peaks 31.3,38.2
turnin Armor of Darkness##12979 |goto The Storm Peaks 31.3,38.2
accept The Armor's Secrets##12980 |goto The Storm Peaks 31.3,38.2
step
_Enter_ Mimir's Workshop |goto The Storm Peaks 33.6,39.6 < 5 |walk
talk Attendant Tock##30190
Tell him you found a strange armor plate
Investigate the Armor Plate |q 12980/1 |goto The Storm Peaks 32.0,40.7
step
Leave Mimir's Workshop |goto The Storm Peaks 33.6,39.6 < 10 |walk
talk Bruor Ironbane##30152
turnin The Armor's Secrets##12980 |goto The Storm Peaks 31.3,38.2
step
talk Bouldercrag the Rockshaper##29801
accept Valduran the Stormborn##12984 |goto The Storm Peaks 31.4,38.1
step
Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
Help fight Valduran the Stormborn
kill Valduran the Stormborn##29368 |q 12984/1 |goto The Storm Peaks 24.4,52.1
step
talk Bouldercrag the Rockshaper##29801
turnin Valduran the Stormborn##12984 |goto The Storm Peaks 31.4,38.1
accept Destroy the Forges!##12988 |goto The Storm Peaks 31.4,38.1
step
talk Bruor Ironbane##30152
accept Hit Them Where it Hurts##12991 |goto The Storm Peaks 31.3,38.2
stickystart "stormart"
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the North Lightning Forge |q 12988/1 |goto The Storm Peaks 29.0,45.8
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the Central Lightning Forge |q 12988/2 |goto The Storm Peaks 29.5,45.9
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the South Lightning Forge |q 12988/3 |goto The Storm Peaks 30.2,46.1
step
label "stormart"
kill 10 Stormforged Artificer##29376 |q 12991/1 |goto The Storm Peaks 30.0,46.3
step
talk Bouldercrag the Rockshaper##29801
turnin Destroy the Forges!##12988 |goto The Storm Peaks 31.4,38.1
step
talk Bruor Ironbane##30152
turnin Hit Them Where it Hurts##12991 |goto The Storm Peaks 31.3,38.2
step
talk Bouldercrag the Rockshaper##29801
accept A Colossal Threat##12993 |goto The Storm Peaks 31.4,38.1
step
click Colossus Attack Specs##192171
collect Colossus Attack Specs##42475 |q 12993/1 |goto The Storm Peaks 28.9,44.1
step
click Colossus Defense Specs##192172
collect Colossus Defense Specs##42476 |q 12993/2 |goto The Storm Peaks 29.9,45.8
step
talk Bouldercrag the Rockshaper##29801
turnin A Colossal Threat##12993 |goto The Storm Peaks 31.4,38.1
accept The Heart of the Storm##12998 |goto The Storm Peaks 31.4,38.1
step
_Enter_ the big round metal door |goto The Storm Peaks 32.4,63.9 < 10 |walk
|tip It's a big metal hole on in the side of the mountain.
click Heart of the Storm##7800
Attempt to Secure the Heart of the Storm |q 12998/1 |goto The Storm Peaks 36.2,60.9
step
Go outside |goto The Storm Peaks 32.4,63.9 < 10 |walk
talk Bouldercrag the Rockshaper##29801
turnin The Heart of the Storm##12998 |goto The Storm Peaks 31.4,38.1
accept The Iron Colossus##13007 |goto The Storm Peaks 31.4,38.1
step
click Jormungar Control Orb##192262
Start controlling a Jormungar |invehicle |c |q 13007 |goto The Storm Peaks 27.2,35.9
step
In order to move as the Jormungar, use the Submerge ability on your hotbar. When you want to come back up to the surface, use the Emerge ability while submerged underground.
kill Iron Colossus##30300 |q 13007/1 |goto The Storm Peaks 27.2,42.0
|tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
talk Bouldercrag the Rockshaper##29801
turnin The Iron Colossus##13007 |goto The Storm Peaks 31.4,38.1
step
label "Daily"
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto The Storm Peaks 64.8,59.1
only if rep ('The Sons of Hodir')>=Honored
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
step
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks 55.6,63.4
step
kill Stoic Mammoth##30260+
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto The Storm Peaks 59.0,61.2
only if rep ('The Sons of Hodir')>=Honored
step
The entrance to the cave starts here |goto The Storm Peaks 55.9,64.2 < 10 |walk
click Everfrost Shard##192191
collect 3 Everfrost Shard##42541 |q 13001/1 |goto The Storm Peaks 54.7,60.8
only if rep ('The Sons of Hodir')>=Honored
step
_Leave_ the cave |goto The Storm Peaks 55.9,64.2 < 10 |walk
talk Lorekeeper Randvir##30252
turnin Forging Hodir's Spear##13001 |goto The Storm Peaks 64.8,59.1
|tip This quest will unlock the How to Slay Your Dragon daily quest.
only if rep ('The Sons of Hodir')>=Honored
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
click Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently
You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect
If you don't want to do this, skip this step
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n |goto The Storm Peaks 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks 66.2,61.4
|tip This is a repeatable quest, turn in all of your Relics of Ulduar.
step
Click here to reset the daily quests |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
Become honored with The Sons of Hodir |complete rep('The Sons of Hodir')>=Honored |next "Daily2"
step
label "Daily2"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
click Hodir's Spear##192079
accept How to Slay Your Dragon##13003 |goto The Storm Peaks 65.1,60.8
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
stickystart "viscousoil"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
kill 3 Stormforged Infiltrators##30222+ |q 12994/1 |goto The Storm Peaks 57.2,64.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight
Phase 1:
You will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die
Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack
When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that
Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto The Storm Peaks 56.6,64.3
step
label "viscousoil"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks 55.6,63.4
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
click Hodir's Spear##192079
turnin How to Slay Your Dragon##13003 |goto The Storm Peaks 65.1,60.8
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster
collect Relic of Ulduar##42780+ |n |goto The Storm Peaks 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks 66.2,61.4
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
In order to repeat these daily quests, click here to reset the daillies |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
Become Revered with The Sons of Hodir |complete rep('The Sons of Hodir')>=Revered |next "Daily3"
step
label "Daily3"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
click Hodir's Spear##192079
accept How to Slay Your Dragon##13003 |goto The Storm Peaks 65.1,60.8
step
click Arngrim the Insatiable##192524
accept Feeding Arngrim##13046 |goto The Storm Peaks 67.6,59.9
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
stickystart "viscousoil2"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto The Storm Peaks 57.2,64.0
step
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto The Storm Peaks 56.4,65.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight
Phase 1:
You will be underneath the Wild Wyrm
Use your Grab On ability to keep your grip high, or you will fall off and die
Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack
When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that
Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto The Storm Peaks 56.6,64.3
step
label "viscousoil2"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks 55.6,63.4
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
click Hodir's Spear##192079
turnin How to Slay Your Dragon##13003 |goto The Storm Peaks 65.1,60.8
step
click Arngrim the Insatiable##192524
turnin Feeding Arngrim##13046 |goto The Storm Peaks 67.6,59.9
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster
collect Relic of Ulduar##42780+|n |goto The Storm Peaks 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.2,62.9
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks 66.2,61.4
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
step
To restart the Hodir daily quests, click here. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Revered
Become Exalted with The Sons of Hodir |complete rep('The Sons of Hodir')==Exalted
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Wrath of the Lich King Reputations\\The Wyrmrest Accord")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Cataclysm Reputations\\Avengers of Hyjal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Cataclysm Reputations\\The Earthen Ring")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Cataclysm Reputations\\Ramkahen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Cataclysm Reputations\\Baradin's Wardens")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Cataclysm Reputations\\Wildhammer Clan")
