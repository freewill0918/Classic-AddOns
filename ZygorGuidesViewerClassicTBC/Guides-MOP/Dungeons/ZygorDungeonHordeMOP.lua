local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DungeonHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Gate of the Setting Sun",{
mapid=437,
achieveid={10010, 6759},
patch='50004',
condition_suggested=function() return level>=25 and level<=35 end,
description="This guide will walk you through the Gate of the Setting Sun dungeon.",
},[[
step
Press _I_ and queue for Gate of the Setting Sun or enter the dungeon with your group |goto Gate of the Setting Sun/1 61.30,88.00 |c
step
talk Bowmistress Li##64467
accept Lighting the Way##31363 |goto Gate of the Setting Sun/1 60.90,88.60
accept That's a Big Bug!##31364 |goto Gate of the Setting Sun/1 60.90,88.60
step
While clearing trash avoid the Volatile Munitions that drop, they deal out massive fire damage around them. |goto Gate of the Setting Sun/1 49.40,87.90 < 5
confirm
step
kill Saboteur Kip'tilak##56906
|tip This fight is all about the positioning of the group and the boss.
|tip Saboteur Kip'tilak will throw munitions around the room at random. These will not explode unless touched by another player.
|tip At 60% and 30%, he will use World in Flames. He will throw 5 munitions are the room at random and then explode them all at the same time.
|tip He will pick a player at random and Sabotage them. After 4 seconds the bombs attached to that player will explode in all 4 directions, similarly to the other bombs.
Defeat Saboteur Kip'tilak |scenariogoal 1/19245 |goto Gate of the Setting Sun/1 45.80,88.10
step
map Gate of the Setting Sun/1
path follow strict;loop off;ants straight
path	46.20,75.40	41.40,71.40	41.40,64.40
path	41.50,53.50	46.30,33.30
Click the lever once the group is on the elevator. |goto Gate of the Setting Sun/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Striker Ga'dok##56589
|tip Prey Time will target a random party member and deal damage to them over 5 seconds.
|tip Impaling Strike will be an attack used primarily on the tank. It will deal half of their current life in damage.
|tip Mantid Disruptors will throw Acid Bombs at the platform, avoid them.
|tip At both 70% and 30% Ga'dok will use Strafing Run. This ability will cause him to light the platform on fire. You can avoid the fire by standing on the sides to the left or right of wherever the boss starts his run.
|tip The Strafing Runs will also summon Mantid Strikers. These adds need to be picked up by the tank.
|tip Watch where he flies during Strafing Run. Do not be on that side.
Defeat Striker Ga'dok |scenariogoal 1/19246 |goto Gate of the Setting Sun/2 49.00,27.20
step
clicknpc Flak Cannon##60415 |goto Gate of the Setting Sun/2 45.80,26.90
|tip Click the Flak Cannon and kill all of the mantid before going back down the elevator.
|confirm
step
Click the lever to go back down. |goto Gate of the Setting Sun/1 51.40,51.30 |noway |c
step
Click the Signal Flame |goto Gate of the Setting Sun/1 47.90,12.70
|tip This will summon the next boss.
Light the Signal Flame. |q 31363/1 |only if haveq(31363)
|confirm |only if not haveq(31363)
step
Kill the trash before engage Commander Ri'mok. |goto Gate of the Setting Sun/1 46.20,22.50
|confirm
step
kill Commander Ri'mok##56636
|tip Commander Ri'mok's fight can get a little hectic because there is a lot going on.
|tip He will summon Mantid Swarmers continuously. AoE them down.
|tip A Mantid Saboteur will be summoned every 45 seconds. Depending on your group you may want to kill these as they spawn. Normally the tank should hold onto these adds until the boss is dead.
|tip Frenzied Assault will deal massive damage in a cone in front of the boss. Do not stand in front of him while he uses this.
|tip Viscous Fluid is a green slime pool that Ri'mok will throw on the ground. Players lose 10% damage dealt per second in this green slime while the boss gets 10% damage per second.
Defeat Commander Ri'mok |scenariogoal 1/19247 |goto Gate of the Setting Sun/1 46.10,24.40
step
Start here |goto Gate of the Setting Sun/1 46.10,43.50
Jump down into the broken building and follow the path down. |goto Gate of the Setting Sun/1 49.30,45.10 < 5
confirm
step
Exit the building and prepare to fight Raidgonn. |goto Gate of the Setting Sun/1 52.70,50.60 < 5
confirm
step
kill Raigonn##56877 |only if not haveq(31364)
kill Raigonn##56877 |q 31364/1 |only if haveq(31364)
_Phase 1_
|tip Raigonn will be mostly invulnerable until his Weak Spot is killed.
|tip Melee can gain access to his Weak Spot by using the Artillery that are around the room.
|tip While the DPS are attacking the Weak Spot, the Tank should be on the ground floor picking up adds.
|tip Krik'thik Protectorate_ will increase the attack speed of all other Protectorate in the area by 50% when one of them drops below 20% health.
|tip Krik'thik Engulfers should be kill by ranged DPS. They summon Englufing Winds which are tornados that can be a hassle to deal with.
|tip Krik'thik Swarm Bringers will be summoned every so often. They will cast Screeching Swarm. This ability will absorb healing while dealing damage.
|tip After the Weak Spot is destroyed, the fight enters Phase 2.
_Phase 2_
|tip He will take 300% increased damage during this phase.
|tip Stomp will deal damage to everybody near the boss. It will also increase his damage dealt by 25% every time he uses it.
|tip Fixate will cause Raigonn to drop aggro and lock his attention onto a random party member. Their movement speed will be increased by 75% while he is fixating them.
Defeat Raigonn |scenariogoal 1/34408 |goto Gate of the Setting Sun/1 44.00,60.60
step
talk Bowmistress Li##64467
turnin Lighting the Way##31363 |goto Gate of the Setting Sun/1 52.00,60.60
turnin That's a Big Bug!##31364 |goto Gate of the Setting Sun/1 52.00,60.60
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Mogu'shan Palace",{
mapid=453,
achieveid={6755, 6756},
patch='50004',
condition_suggested=function() return level>=20 and level<=35 end,
description="This guide will walk you through the Mogu'shan Palace dungeon.",
},[[
step
Press _I_ and queue for Mogu'shan Palace or enter the dungeon with your group |goto Mogu'shan Palace/1 30.50,20.50 < 100 |c
step
talk Sinan the Dreamer##64432
accept Relics of the Four Kings##31357 |goto Mogu'shan Palace/1 30.30,19.20
accept A New Lesson for the Master##31360 |goto Mogu'shan Palace/1 30.30,19.20
step
map Mogu'shan Palace/1
path follow strict;loop off;ants straight
path	40.20,26.10	40.30,57.60
Clear the trash and follow this path to the boss. |goto Mogu'shan Palace/1 40.30,57.60 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Trial of the King_
The Trial of the King consists of three minibosses. |goto Mogu'shan Palace/1 40.00,70.80
Click here for Kuai the Brute's strategy. |next "kuai" |confirm
Click here for Ming the Cunning's strategy. |next "ming" |confirm
Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
step
label "kuai"
kill Kuai the Brute##61442
|tip Kuai's pet Mu'Shiba is the main threat of this fight, kill it first. Mu'Shiba will use Ravage, stunning and damage over 10 seconds.
|tip Kuai will cast Shockwave knocking players into the air. They will take some falling damage so make sure everybody is healed up.
Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
Click here for Ming the Cunning's strategy. |next "ming" |confirm
Defeat the Trial of Kings |scenariogoal 1/24784
step
label "haiyan"
kill Haiyan the Unstoppable##61445
|tip Conflagrate will dissorient and deal fire damage to whomever it is cast on. Make sure the group steps away from that person to avoid the fire from spreading.
|tip Haiyan will cast Meteor on a random player and put a red arrow over their head. Stack on that person to disperse the damage that comes with Meteor.
|tip He will also use Traumatic Blow on the tank, lowering his healing received.
Click here for Kuai the Brute's strategy. |next "kuai" |confirm
Click here for Ming the Cunning's strategy. |next "ming" |confirm
Defeat the Trial of Kings |scenariogoal 1/24784
step
label "ming"
kill Ming the Cunning##61444
|tip Ming summons a Whirling Dervish that will knock any player it hits back.
|tip He will also use Magnetic Field. When he casts this run away from him until it is done, it will pull you back into it so keep running.
Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
Click here for Kuai the Brute's strategy. |next "kuai" |confirm
Defeat the Trial of Kings |scenariogoal 1/24784
step
Loot the chest and follow these stairs down. |goto Mogu'shan Palace/1 48.80,74.90 < 5
confirm
step
map Mogu'shan Palace/2
path follow strict;loop off;ants straight
path	53.80,18.80	28.60,32.60	30.90,75.70
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Ancient Mogu Chest##214827
collect Lantern of the Sorcerer King##86476 |q 31357/1 |goto Mogu'shan Palace/2 37.40,64.50
|only if haveq(31357)
step
click Ancient Mogu Chest##214827
collect Mad King Meng's Balance##86477 |q 31357/2 |goto Mogu'shan Palace/2 43.00,60.10
|only if haveq(31357)
step
click Ancient Mogu Chest##214827
collect Subetai's Bow of the Swift##86479 |q 31357/4 |goto Mogu'shan Palace/2 60.20,82.60
|only if haveq(31357)
step
click Ancient Mogu Chest##214827
collect Qiang's "The Science of War"##86478 |q 31357/3 |goto Mogu'shan Palace/2 38.70,88.70
|only if haveq(31357)
step
kill Gekkan##61243
|tip Gekkan has 4 adds with him. The Protector will shield all of the other adds so he must die first. The Oracle is the healer so he needs to be interrupted and killed second.
|tip Crowd Control is suggested in this fight but don't count on it. Gekkan will use Reckless Inspiration on a random add. This makes them immune to crowd control and increases their attack speed for a period of time.
Defeat Gekkan |scenariogoal 1/19256 |goto Mogu'shan Palace/2 44.90,75.80
step
Ride the elevator up |goto Mogu'shan Palace/2 71.50,76.10
Go up |goto Mogu'shan Palace/3 |noway |c
step
map Mogu'shan Palace/3
path follow strict;loop off;ants straight
path	45.00,24.30	40.40,36.10	40.30,75.20
Clear the trash and make your way to the final boss. |goto Mogu'shan Palace/3 40.30,75.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Xin the Weaponmaster##61398 |only if not haveq(31360)
kill Xin the Weaponmaster##61398 |q 31360/1 |only if haveq(31360)
|tip Xin wil use Ground Slam on the tank's position. Avoid this.
|tip He will periodically animate a staff. This staff uses Circle of Flame so make sure you are not in the circle when the staff finishes.
|tip Whirlwinding Axes will be summoned almost immediately. Avoid standing in their spin.
|tip Blade Trap will activate at 66% health. This is a linear stream of swords. Avoid them.
|tip At 33% Xin will activate Death from Above!. This will cause crossbows to fire from his walls, this damage is unavoidable.
Defeat Xin the Weaponmaster |scenariogoal 1/34409 |goto Mogu'shan Palace/3 40.30,86.60
step
talk Sinan the Dreamer##64432
turnin Relics of the Four Kings##31357 |goto Mogu'shan Palace/3 38.70,81.50
turnin A New Lesson for the Master##31360 |goto Mogu'shan Palace/3 38.70,81.50
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Scarlet Halls (MOP)",{
mapid=431,
achieveid={6760},
patch='50004',
condition_suggested=function() return level>=35 and level<=35 end,
description="This guide will walk you through the Scarlet Halls dungeon.",
},[[
step
Press _I_ and queue for Scarlet Halls or enter the dungeon with your group |goto Scarlet Halls/1 34.20,90.00 |c
step
talk Hooded Crusader##64764
accept Rank and File##31495 |goto Scarlet Halls/1 31.90,84.40
accept Just for Safekeeping, Of Course##31497 |goto Scarlet Halls/1 31.90,84.40
stickystart "Scarlet Crusade"
step
Prepare to cross the training ground. |goto Scarlet Halls/1 48.20,78.80 < 5
confirm
step
kill Commander Lindon##59191 |goto Scarlet Halls/1 48.00,54.00
|tip In order to cross the training ground you must click on an archery target and use it as a shield. Avoid the fire arrows that leave patches of flame on the ground.
|confirm
step
Go through the tunnel |goto Scarlet Halls/1 49.80,36.90 < 5
confirm
step
kill Houndmaster Braun##59303
|tip Houndmaster Braun will use Piercing Throw. This will target a player and deal damage to every player in between Braun and his target.
|tip Death Blossom is an AoE whirlwind, spread out to reduce its effectiveness.
|tip Both of these abilities will cause Bloody Mess. This is DoT can stack and become deadly.
|tip At 90%, 80%, 70%, and 60% Braun will summon an Obedient Hound to his side. You can either kill them or just have the tank hold onto them.
|tip If the hounds remain alive at 50% Braun will begin to lose control of them and the will aid you in battle. When this happens, Braun will enter a Bloody Rage, gaining 25% increased damage and 50% increased attack speed.
Defeat Houndmaster Braun |scenariogoal 1/19266 |goto Scarlet Halls/1 54.50,29.00
step
Allow the remaining dogs to kill the door guards and procede to the Athenaeum. |goto Scarlet Halls/2 55.30,21.10
confirm
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	47.60,88.30	56.80,79.40	61.70,69.50
path	61.70,55.50
While following this path keep an eye out for Scarlet Cannoneers.
|tip They will spawn randomly and attack using the cannons along this path.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Armsmaster Harlan##58632
|tip Dragon's Reach is a cleave ability, avoid being in front of this boss.
|tip Harlan will periodically summon two Scarlet Defenders. You can either kill these adds or you can wait for them to be caught in Harlan's Blades of Light ability.
|tip He will use Heroic Leap to the center of the pit and begin casting Blades of Light. This whirlwind quickly moves around the entire area and does massive damage to anybody caught within it. Jump between the different levels of this area to avoid this ability easily.
|confirm
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	48.60,58.10	48.70,50.50	39.10,46.80
path	39.10,23.20
Follow the path to the final boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Scarlet Crusade"
kill Vigilant Watchman##58898+, Master Archer##59175+, Scarlet Evangelist##58685+, Scarlet Myrmidon##58683+, Scarlet Cannoneer##59293+, Scarlet Scourge Hewer##58684+, Scarlet Defender##58676+, Scarlet Evoker##58756+, Scarlet Defender##58998+, Scarlet Treasurer##59241+, Scarlet Hall Guardian##59240+, Scarlet Pupil##59373+, Scarlet Scholar##59372+
Kill 50 Scarlet Crusaders. |q 31495/1
|only if haveq(31495)
step
kill Flameweaver Koegler##59150
|tip Koegler will try to light the book cases around the room on fire with Book Burner. You can avoid this mechanic by staying on the red carpet circle inside this room.
|tip He will move to the center of the room and begin using Greater Dragon's Breath. Watch where he is facing and move around the room clockwise to avoid being hit.
|tip Quickened Mind will cause Koegler's next three spells to be cast nearly instantly. This can be dispelled off of him.
collect Codex of the Crusade##87267 |q 31497/1 |only if haveq(31497)
Defeat Flameweaver Koegler |scenariogoal 1/34441 |goto Scarlet Halls/2 39.30,16.10
step
talk Hooded Crusader##64764
turnin Rank and File##31495 |goto Scarlet Halls/2 39.30,17.00
turnin Just for Safekeeping, Of Course##31497 |goto Scarlet Halls/2 39.30,17.00
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Scarlet Monastery (MOP)",{
mapid=302,
achieveid={6761},
patch='50004',
condition_suggested=function() return level>=35 and level<=35 end,
description="This guide will walk you through the Scarlet Monastery dungeon.",
},[[
step
Press _I_ and queue for Scarlet Monastery or enter the dungeon with your group |goto Scarlet Monastery/1 74.20,46.20 |c
step
talk Hooded Crusader##64838
accept Blades of the Anointed##31515 |goto Scarlet Monastery/1 72.70,47.00
step
Clear the trash up to this point. |goto Scarlet Monastery/1 30.80,46.20
|tip The Piles of Corpses should be killed first or you will be fighting zombies much longer than is necessary.
|confirm
step
kill Thalnos the Soulrender##59789
|tip Thalnos will Raise Fallen Crusaders. This ability summons zombies that the tank needs to pick up. When the Fallen Crusaders hit you, they leave behind Mind Rot which is a DoT that can stack.
|tip He also summons Spirit Gales often. These are puddles on the ground that should not be stepped in. This ability is interruptable.
|tip Evict Soul is a debuff that Thalnos throws on a random party member. This DoT needs to be dispelled as quickly as possible.
|tip He will also use Summon Empowering Spirit. This ability will summon an add that DPS should kill as quickly as they can. If this add reaches a Fallen Crusader's corpse, it will spawn an Empowered Zombie.
|tip Empowered Zombies are large zombies which need to be tanked. They cannot be killed without great focus.
Defeat Thalnos the Soulrender |scenariogoal 1/19270 |goto Scarlet Monastery/1 26.10,45.40
step
click Blade of the Anointed##214296
collect Blade of the Anointed##87282 |q 31515/1 |goto Scarlet Monastery/1 20.60,45.90
step
map Scarlet Monastery/1
path follow strict;loop off;ants straight
path	34.50,52.50	34.80,78.20	39.40,81.70
path	48.50,90.30
Follow the path. |goto Scarlet Monastery/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Blade of the Anointed##64855
turnin Blades of the Anointed##31515 |goto Scarlet Monastery/2 49.10,24.50
accept Unto Dust Thou Shalt Return##31516 |goto Scarlet Monastery/2 49.10,24.50
step
map Scarlet Monastery/2
path follow strict;loop off;ants straight
path	45.70,31.90	43.90,36.30	49.20,43.30
Follow the path. |goto Scarlet Monastery/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brother Korloff##59223
Brother Korloff loves to play with fire.
|tip Flying Kick will hit a random party member knocking them back, make sure they aren't knocked into any uncleared trash.
|tip Blazing Fists is a series of punches Korloff makes in front of him, have the tank take a step back and make sure all party members are behind Korloff.
|tip Firestorm Kick is whirlwind of flame, do not stand in it.
|tip Scorched Earth is a fire trail that Korloff leaves behind him, do not stand in it.
|tip Every 10%, Korloff wil gain a stack of Rising Flame. These increase his fire damage done by 10% per stack.
|tip The boss will patrol between two groups. Pull each group carefully, keeping in mind the boss' patrol.
|tip Opening the world map will display an ant trail guiding you through the current floor.
Defeat Brother Korloff |scenariogoal 1/19271 |goto Scarlet Monastery/2 49.40,52.30
step
Enter the cathedral here |goto Scarlet Monastery/2 49.10,57.10 < 5
confirm
step
Before encountering the boss, make sure you kill the trash within the cathedral.
|tip This includes the main room and both wings.
|confirm
step
kill Commander Durand##60040
kill High Inquisitor Whitemane##3977
_Phase 1_
|tip Commander Durand will fight you alone.
|tip He uses Flash of Steel and Dashing Strike. Both of these abilities cause him to jump to party members quickly, but neither do much damage as long as the group is spread out.
|tip When Durand dies, phase 2 begins.
_Phase 2_
|tip High Inquisitor Whitemane will come and and begin to fight.
|tip She will cast Power Word: Shield, Smite and Heal. Make sure to interrupt Smite and Heal.
|tip Whitemane will also try casting Mass Resurrection. DO NOT LET THIS CAST FINISH!! If this cast finishes, all corpses within 100 yards will resurrect and aggro.
|tip After you weaken her she will cast Deep Sleep. This puts the entire party to sleep for 10 seconds, during this time she will resurrect Durand.
_Phase 3_
|tip Now you will have to fight the two together.
|tip Kill Whitemane first, make sure to interrupt Smite and Heal
|tip Stay spread out for Durand.
Use the Blades of the Anointed on High Inquisitor Whitemane's corpse. |use Blades of the Anointed##87390 |only if haveq(31516)
Blades of the Anointed thrust into Whitemane's corpse. |q 31516/1 |only if haveq(31516)
Defeat Commander Durand and High Inquisitor Whitemane |scenariogoal 1/34443 |goto Scarlet Monastery/2 48.90,78.90
step
talk Hooded Crusader##64842
turnin Unto Dust Thou Shalt Return##31516 |goto Scarlet Monastery/2 49.20,80.70
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Scholomance (MOP)",{
mapid=476,
achieveid={6762},
patch='50004',
condition_suggested=function() return level>=35 and level<=35 end,
description="This guide will walk you through the Scholomance dungeon.",
},[[
step
Press _I_ and queue for Scholomance or enter the dungeon with your group |goto Scholomance/1 18.20,61.10 |c
step
talk Talking Skull##64563
accept The Four Tomes##31442 |goto Scholomance/1 27.00,58.80
accept An End to the Suffering##31448 |goto Scholomance/1 27.00,58.80
step
Go through the gate and down these steps |goto Scholomance/1 48.60,43.20 < 5
confirm
step
Clear this room of trash and be careful not to aggro Instructor Chillheart.
|confirm
step
kill Instructor Chillheart##58633
_Phase 1_
|tip Wrack Soul will deal damage to a party member and jump to a nearby party member when it expires. Spread out.
|tip Touch of the Grave causes Chillheart's next 10 basic attacks to deal additional damage.
|tip Frigid Grasp will summon ice at a player's feet, step out of this before it explodes.
|tip Ice Wall will start at the back of the room and slowly creep toward the boss. If this touches any player then they will die instantly. This will act as the enrage timer of the fight.
|tip Kill Chillheart's physical body and Phase 2 will start.
kill Instructor Chillheart's Phylactery##58664
_Phase 2_
|tip The Anarchist Arcanist will float around creating Arcane Bombs. These explode on impact so avoid them.
|tip Antonidas' Self Help Guide to Standing in Fire will cast Burn. This does a small AoE of fire damage around the book.
|tip Wander's Colossal Book of Shadow Puppets will cast Shadow Bolt at the party.
Defeat Instructor Chillheart |scenariogoal 1/19259 |goto Scholomance/1 65.10,60.60
step
click In the Shadow of the Light##214279
Destroy In the Shadow of the Light |q 31442/1  |goto Scholomance/1 74.70,57.50
|only if haveq(31442)
step
map Scholomance/1
path follow strict;loop off;ants straight
path	79.30,52.00	80.60,23.80
Follow the path downstairs. |goto Scholomance/2 77.00,26.50 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Kel'Thuzad's Deep Knowledge##214278
Destroy Kel'Thuzad's Deep Knowledge |q 31442/2 |goto Scholomance/2 73.90,8.60
|only if haveq(31442)
step
Clear all of the trash in this room before fighting Jandice Barov.
|confirm
step
kill Jandice Barov##59184 |goto Scholomance/2 59.90,18.50
|tip Wondrous Rapidity is a large cone attack in front of Jandice, make sure nobody is in front of her.
|tip Gravity Flux will create a gravity distortion field on the ground. If you step into this ability you will be knocked back as well as damaged heavily.
|tip At 66% and 33% Jandice will cast Phantasmal Images. She will clone herself throughout the room, destroy the clones until she returns to battle.
|tip While the clones are alice they will cast Whirl of Illusion, this does AoE damage to everybody in the group every second.
Defeat Jandice Barov |scenariogoal 1/19260 |goto Scholomance/2 59.90,18.50
step
Enter the Chamber of Summoning |goto Scholomance/2 56.40,26.80 < 5
confirm
step
kill Boneweaver##59193
|tip Go around the perimeter of this room and kill the Boneweavers. When all of them are dead, the boss wil initiate you.
|confirm
step
kill Rattlegore##59153
|tip With each successful attack Rattlegore will gain a stack of Rusting. This increases his attack damage but lowers his attack and movement speeds. If the tank is getting hit too hard, kite Rattlegore around the room.
|tip Bone Spike will target a random party member and do massive damage to them. This can be prevented if every party member keeps Bone Armor active.
|tip Bone Armor is granted by clicking on the Bone Piles around the room.
|tip Periodically a section of the room will be engulfed in Soulflame. Avoid the fire and be wary because it grows over time.
Defeat Rattlegore |scenariogoal 1/19261 |goto Scholomance/2 48.30,26.20
step
Enter the Chamber of Summoning |goto Scholomance/2 40.30,26.60 < 5
confirm
step
kill Flesh Horror##59359+
kill Meat Graft##59982+ |goto Scholomance/2 42.00,46.80
|tip When fighting the Flesh Horrors, aim for the Meat Grafts attached to their bodies. If all of the Grafts die then the Horrors will die with them.
|confirm
step
click Forbidden Rites and other Rituals Necromantic##214280
Destroy Forbidden Rites and other Rituals Necromantic |q 31442/3  |goto Scholomance/2 42.50,51.60
|only if haveq(31442)
step
Go down the steps and prepare to fight Lilian Voss. |goto Scholomance/2 47.00,47.20 < 5
confirm
step
kill Lilian Voss##58722
_Phase 1_
|tip Lilian will Shadow Shiv a random player after jumping onto them. When she latches onto you, run away from your allies to avoid AoE damage.
|tip Death's Grasp will pull every party member to Lilian and will be followed by Dark Blaze. Dark Blaze causes every player to start leaving a trail of fire behind them, run to the outside of the room to trail your fire, this way the center is still open.
|tip At 60% Phase 2 begins.
kill Lilian's Soul##58791
_Phase 2_
|tip Lilian's Soul will begin to attack you. She will periodically cast Blazing Soul which does fire damage to all players.
|tip For every melee attack Lilian lands she will unleash another Blazing Soul. You must kite her aroud.
|tip Fixate Anger will determine who is in charge of kiting. If she Fixates on your do not stop running.
_Phase 3_
|tip Phase 3 is a combination of Phases 1 and 2.
|tip Be watchful of who Lilian's Soul is Fixating on, this is the highest source of damage during the fight.
|tip You will continued to get pulled in by Death's Grasp, be extra careful not to put a path of Dark Blaze in somebodies way if they need to kite the Soul.
Defeat Lilian Voss |scenariogoal 1/19262 |goto Scholomance/2 52.00,47.10
step
click The Dark Grimoire##214277
Destroy The Dark Grimoire |q 31442/4 |goto Scholomance/2 47.10,73.10
|only if haveq(31442)
step
Go through this doorway and follow the stairs down. |goto Scholomance/2 47.80,84.80
confirm
step
kill Darkmaster Gandling##59080 |q 31448/1 |only if haveq(31448)
kill Darkmaster Gandling##59080 |only if not haveq(31448)
|tip Immolate will be used on a random party member, heal through this DoT.
|tip Darkmaster Gandling will cast Rise!. This summons many Failed Students that need to be killed. During this cast Darkmaster Gandling takes reduced damage.
|tip Periodically a random party member will be teleported to one of Gandling's study rooms for a Harsh Lesson.
|tip This party member must kill the Expired Test Subjects and make their way back to the bosses room. If the healer gets trapped in one of these rooms, the Fresh Test Subjects around the room will serve as useful bombs. Dispel the _Explosive Pain_ off of them to deal AoE damage to the Expired Test Subjects.
Defeat Darkmaster Gandling |scenariogoal 1/34440 |goto Scholomance/3 50.20,35.10
step
Go back up the stairs. |goto Scholomance/4 49.10,21.50 < 5
confirm
step
talk Talking Skull##64563
turnin The Four Tomes##31442 |goto Scholomance/3 49.20,21.20
turnin An End to the Suffering##31448 |goto Scholomance/3 49.20,21.20
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Shado-Pan Monastery",{
mapid=443,
achieveid={6469},
patch='50004',
condition_suggested=function() return level>=20 and level<=35 end,
description="This guide will walk you through the Shado-Pan Monastery dungeon.",
},[[
step
Press _I_ and queue for Shado-Pan Monastery or enter the dungeon with your group |goto Shado-Pan Monastery/2 85.00,56.50 < 100 |c
step
talk Ban Bearheart##62236
accept Lord of the Shado-Pan##30757 |goto Shado-Pan Monastery/2 83.40,56.10
step
Fight your way through this room |goto Shado-Pan Monastery/2 60.20,43.80 < 5
confirm
step
kill Gu Cloudstrike##56747
_Phase 1_
|tip Gu will Invoke Lightning and deal Nature damage to a random party member.
|tip Gu's serpent will create a Static Field under a random player. Move out of this and the effect that persists.
_Phase 2_
|tip Gu will become immune to damage so focus your attention on his Azure Serpent.
|tip When the serpent casts Magnetic Shroud, stack up. This will absorb healing and then explode and heal for the amount it absorbed.
|tip Lightning Breath is a frontal cone, do not stand in front of the boss.
_Phase 3_
|tip Gu Cloudstrike will use Overcharged Soul which deals damage to the entire party until he is defeated.
Defeat Gu Cloudstrike |scenariogoal 1/19239 |goto Shado-Pan Monastery/2 45.30,24.30
step
Follow the path to this point and defeat the Shado-Pan Disciples who attack you. |goto Shado-Pan Monastery/2 23.60,83.60 < 5
Follow this ramp up and be careful not to be hit by the freezing arrows. |goto Shado-Pan Monastery/1 54.00,75.20 < 5
Cross the bridge and enter Snowdrift Dojo |goto Shado-Pan Monastery/1 36.10,81.20 < 5
confirm
step
kill Fragrant Lotus##56472 |goto Shado-Pan Monastery/3 60.50,64.80
kill Flying Snow##56473 |goto Shado-Pan Monastery/3 60.50,64.80
Fight off the waves of Shado-Pan Novices and finally defeat Fragrant Lotus and Flying Snow.
|confirm
step
kill Master Snowdrift##56541
|tip Fists of Fury is a frontal attack that does massive damage, the tank needs to back out of this.
|tip Tornado Kick is a strong whirlwind attack that should be avoided.
|tip Master Snowdrift will teleport around the room and make two clones of himself. You can tell the boss from his clones by looking at the debuffs on the boss. Step behind him and avoid the projectiles being cast around the room.
|tip While Master Snowdrift is in Parry Stance refrain from hitting him, or find a way to hit him from behind. He will retaliate to any attack that is made.
Defeat Master Snowdrift |scenariogoal 1/19244 |goto Shado-Pan Monastery/3 24.50,25.30
step
talk Master Snowdrift##56541
accept The Path to Respect Lies in Violence##31342 |goto Shado-Pan Monastery/3 30.30,35.40
step
Go outside and cross this bridge. |goto Shado-Pan Monastery/1 24.90,41.30 < 5
confirm
step
Enter the Sealed Chambers |goto Shado-Pan Monastery/1 31.10,34.00
confirm
step
kill Sha of Violence##56719 |only if not haveq(31342)
kill Sha of Violence##56719 |q 31342/1 |only if haveq(31342)
|tip The Sha of Violence will use Disorientating Smash on its target, this will deal a large amount of damage and cause the target to be blinded for four seconds.
|tip Smoke Blades is a whirlwind attack that will leave a debuff on anybody it hits that reduces critical strike chance to 0. If you attack with this debuff it will clear it faster. After the debuff is gone you will gain Parting Smoke for three seconds, this causes your next hit to critically strike for 100% more damage than it normally would.
|tip Sha Spike will be cast at a random player knocking them up.
|tip When the Sha of Violence is weak, it will Enrage gaining 50% attack speed.
Defeat Sha of Violence |scenariogoal 1/19240 |goto Shado-Pan Monastery/4 47.30,61.10
step
The following trash can be very tough to beat.
|tip You will have to release the spirits of the dead Pandaren before killing any of the hostile adds. If you kill the adds they will simply respawn.
|confirm
step
map Shado-Pan Monastery/1
path follow strict;loop off;ants straight
path	46.60,43.10	54.00,50.70	61.60,52.40
path	69.90,49.50
Follow the path to the final boss. |goto Shado-Pan Monastery/1 69.90,49.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Taran Zhu##56884
|tip The biggest mechanic in this fight is Hatred meter. If this reaches 100% you will receive the debuff Haze of Hate this reduces your accuracy by 90%.
|tip To counteract the Hatred Meter you will have a new Meditate button above your action bars. Click this button to prevent being consumed by hatred.
|tip Tanks should tank Tarn Zhu up against one of the pillars in his arena. Taran Zhu will knock the tank back and cause this fight to be more hectic than it needs to be.
|tip Ring of Malice is a ring of shadows that Taran Zhu will use around himself. Either be very far away or nearby to avoid this.
|tip He will periodically Summon Gripping Hatred. This shadow balls will grab players and pull them into Pools of Shadows. Kill these if you can.
Rid Taran Zhu of his possession. |q 30757 |only if haveq(30757)
Defeat Taran Zhu |scenariogoal 1/34410 |goto Shado-Pan Monastery/1 69.90,49.50
step
talk Taran Zhu##56884
turnin Lord of the Shado-Pan##30757 |goto Shado-Pan Monastery/1 69.30,49.70
|only if haveq(30757)
step
talk Master Snowdrift##64387
turnin The Path to Respect Lies in Violence##31342 |goto Shado-Pan Monastery/1 68.40,50.10
|only if haveq(31342)
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Siege of Niuzao Temple",{
mapid=457,
achieveid={6763},
patch='50004',
condition_suggested=function() return level>=25 and level<=35 end,
description="This guide will walk you through the Siege of Niuzao Temple dungeon.",
},[[
step
Press _I_ and queue for Siege of Niuzao Temple or enter the dungeon with your group |goto Siege of Niuzao Temple/2 65.40,87.30 |c
step
talk Shado-Master Chum Kiu##64517
accept Somewhere Inside##31365 |goto Siege of Niuzao Temple/2 63.10,77.70
accept Take Down the Wing Leader##31366 |goto Siege of Niuzao Temple/2 63.10,77.70
step
Jump over the ledge here. |goto Siege of Niuzao Temple/2 60.50,54.40
|confirm
step
kill Vizier Jin'bak##61567
|tip In the middle of this room is a puddle of resin. The tank should periodically walk through this puddle to shrink it.
|tip Vizier Jin'bak will summon three adds, kill them before they reach the resin puddle.
|tip Shortly after summoning adds, he will cast Detonate, this does damage to the entire group. The smaller the puddle is, the less damage the group will take.
Defeat Vizier Jin'bak |scenariogoal 1/19249 |goto Siege of Niuzao Temple/2 46.80,52.20
step
map Siege of Niuzao Temple/2
path follow strict;loop off;ants straight
path	37.40,65.40	53.40,81.80	Siege of Niuzao Temple/3 65.00,39.20
path	Siege of Niuzao Temple/3 31.60,38.40	Siege of Niuzao Temple/3 21.70,53.90
Clear the trash and follow this path. |goto Siege of Niuzao Temple/3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Yang Ironclaw##61620
We're ready to defend! |goto Siege of Niuzao Temple/1 44.50,74.30
|confirm
step
Before you fight Commander Vo'jak you must fight the wave of adds that he sends your way.
|tip Stay on the top ledge and throw Mantid Tar Kegs down onto the path as the adds run up. This will deal heavy damage and increase their damage taken.
|tip Have the ranged DPS in your party prioritizing the Sik'thik Amberwings. They will fly at the wall and Bombard the party. If you do not kill them then they will fly away and continue to be a hassle later.
Defeat Commander Vo'jak's army and click here. |confirm
step
kill Commander Vo'jak##61634
|tip While you fight Commander Vo'jak have a ranged dps continue to throw and Mantid Tar Kegs on the boss. Be careful not to hit the tank.
|tip The boss will counter this by using Thousand Blades, clearing his debuffs. Have the tank kite him into the puddles to reapply the debuff.
|tip While the boss is using Thousand Blades run away! This whirlwind will deal massive, potentially fatal, damage.
Defeat Commander Vo'jak |scenariogoal 1/19250
stickystart "freeshado"
step
map Siege of Niuzao Temple/1
path follow strict;loop off;ants straight
path	37.80,76.50	35.40,59.80	39.10,42.70
path	46.30,43.20
Follow the ramp and then follow this path. |goto Siege of Niuzao Temple/1 46.30,43.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
The next boss patrols this area, be careful to pull the trash groups without also gaining his attention.
|confirm
step
kill General Pa'valak##61485
|tip General Pa'valak's two main abilities are Blade Rush and Tempest. Tempest negates healing but is nothing too significant. When he begins casting Blade Rush he will mark a spot on the ground with a circle, move out of it. He throws his weapon and then charges to it.
|tip He will also cast Bulwark. This shield will absorb one million damage while adds run in to reinforce the boss. Kill the shield and AoE down the adds.
|tip Siege Explosives will spawn around the area. To make this fight go quicker use these explosives on the boss to increase his damage taken. It is also suggested you save a bomb for each wave of adds.
Defeat General Pa'valak |scenariogoal 1/19251 |goto Siege of Niuzao Temple/1 55.00,45.50
step
label "freeshado"
clicknpc Shado-Pan Prisoner##64520+
Free 12 Shado-Pan Prisoners |q 31365/1
|tip While following this next path make sure you are freeing the captive Shado-Pan.
|only if haveq(31365)
step
Make your way to the other side of the bridge |goto Siege of Niuzao Temple/1 50.10,33.00
|tip This event can be a little hectic. The aggro range on most of the enemies can cause the group to pull an uncomfortable amount, be careful to aggro only what your group is capable of clearing in a single pull.
|confirm
step
kill Wing Leader Ner'onok##62205 |q 31366/1 |only if haveq(31366)
kill Wing Leader Ner'onok##62205 |only if not haveq(31366)
|tip Wing Leader Ner'onok will use a variety of Resins designed to hinder movement.
|tip When he casts Quick Dry Resin start jumping. This removes the effect.
|tip He will constantly throw down pools of Caustic Pitch. These damage and slow you if you run through them.
|tip Periodically throughout the fight Wing Leader Ner'onok will fly to the opposite end of the bridge and begin casting Gusting Winds. Navigate to the other side of the bridge by having your back against the pod-like structures that are all along the bridge, they allow you to move forward without being pushed back.
|tip When you make it to the other end of the bridge interrupt Gusting Winds. A ranged interrupt comes in great handy here.
Defeat Wing Leader Ner'onok |scenariogoal 1/34407 |goto Siege of Niuzao Temple/1 57.50,21.80
step
talk Shado-Master Chum Kiu##64517
turnin Somewhere Inside##31365 |goto Siege of Niuzao Temple/1 58.10,23.10
turnin Take Down the Wing Leader##31366 |goto Siege of Niuzao Temple/1 58.10,23.10
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Stormstout Brewery",{
mapid=439,
achieveid={6457},
patch='50004',
condition_suggested=function() return level>=15 and level<=35 end,
description="This guide will walk you through the Stormstout Brewery dungeon.",
},[[
step
Press _I_ and queue for Stormstout Brewery or enter the dungeon with your group |goto Stormstout Brewery/1 79.70,39.70 < 100 |c
step
talk Auntie Stormstout##59822
accept Family Secrets##31324 |goto Stormstout Brewery/1 76.90,35.40
step
talk Chen Stormstout##59704
accept Trouble Brewing##31327 |goto Stormstout Brewery/1 75.10,36.20
stickystart "Stormstout"
step
map Stormstout Brewery/1
path follow strict;loop off;ants straight
path	54.00,50.30	44.00,65.10	30.70,84.30
path	21.50,76.50	23.90,63.10
Clear the trash along this path. |goto Stormstout Brewery/1 23.90,63.10 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Stormstout"
As you follow the next path make sure you loot the Hozen you kill for Stormstout Secrets and click the tomes along the floor.
kill Sodden Hozen Brawler##59605+, Inflamed Hozen Brawler##56924+, Sleepy Hozen Brawler##56863+, Drunken Hozen Brawler##56862+
click Stormstout Secrets##213795
collect 5 Stormstout Secrets##86431 |q 31324/1
|only if haveq(31324)
step
You will need to kill 40 Hozen to summon the first boss. |goto Stormstout Brewery/2 53.40,50.10
Click here once Ook-Ook has spawned |confirm
step
kill Ook-Ook##56637
|tip Ook-Ook will Ground Pound which is a frontal shockwave, do not stand in it.
|tip At 90%, 60%, and 30% Ook-Ook will Go Bananas. This increases his attack speed and damage dealt each time. This buff stacks. He will also summon Rolling Barrels when he does this.
|tip DPS should click on Rolling Barrels and ride them into Ook-Ook. This will increase his damage taken as well as do a lot of damage. This effect stacks
Defeat Ook-Ook |scenariogoal 1/19236 |goto Stormstout Brewery/2 53.40,50.10
step
map Stormstout Brewery/2
path follow strict;loop off;ants straight
path	74.60,75.10	80.90,81.40	89.80,71.80
path	81.80,58.30	Stormstout Brewery/3 20.50,68.70	Stormstout Brewery/3 29.50,49.90
path	Stormstout Brewery/3 38.00,46.30
This is a gauntlet event. Kill the virmen as you run through the path.
|tip Boppers are the most important type of virmen. Upon death they drop a Big Ol' Hammer. When you pick this up you will gain a new button on your screen, Smash!. Click it to clear many virmen at a time.
Finish the gauntlet event. |goto Stormstout Brewery/3 38.00,46.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hoptallus##56717
|tip Hoptallus will constantly use Furlwind. this whirlwind will do large amounts of damage, so kite him around.
|tip He will also summon virmen. These are the same types of adds that you cleared in the last path. Aim down the Boppers first and use their Big Ol' Hammer to Smash! all of the other adds.
|tip Carrot Breath will deal large damage to anybody standing within the cone, avoid this.
Defeat Hoptallus |scenariogoal 1/19237 |goto Stormstout Brewery/3 38.00,46.30
step
map Stormstout Brewery/3
path follow strict;loop off;ants straight
path	39.70,38.90	43.30,26.70	58.90,29.70
path	75.30,56.50	89.90,44.20	73.60,34.20
Kill the Alementals as you follow this path. |goto Stormstout Brewery/3 73.60,34.20 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Uncle Gao will summon 3 waves of Alementals before Yan-Zhu. |goto Stormstout Brewery/4 49.60,51.10
kill Yeasty Brew Alemental##66413+
kill Bloated Brew Alemental##59518+
kill Fizzy Brew Alemental##59520+
|confirm
step
kill Yan-Zhu the Uncasked##59479 |q 31327/1 |only if haveq(31327)
kill Yan-Zhu the Uncasked##59479 |only if not haveq(31327)
|tip Yan-Zhu will constantly through Blackout Brew, counter this by moving around until the debuff is off of you.
|tip When Yan-Zhu casts Carbonation click on the Fizzy Bubbles around the room, this will grant you a buff that allows you to fly above the cloud.
|tip Bubble Shields will need to be killed very quickly, they reduce the amount of damage that the boss takes.
|tip Keep moving to remove the Blackout Brew, click Fizzy Bubbles to gain the ability to fly above Carbonation
Defeat Yan-Zhu the Uncasked |scenariogoal 1/34411 |goto Stormstout Brewery/4 49.60,51.10
step
talk Uncle Gao##59074
turnin Family Secrets##31324 |goto Stormstout Brewery/4 39.00,56.00
step
talk Chen Stormstout##64361
turnin Trouble Brewing##31327 |goto Stormstout Brewery/4 41.10,55.20
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Temple of the Jade Serpent",{
mapid=429,
achieveid={6757},
patch='50004',
condition_suggested=function() return level>=10 and level<=35 end,
description="This guide will walk you through the Siege of Temple of the Jade Serpent dungeon.",
},[[
step
Press _I_ and queue for Temple of the Jade Serpent or enter the dungeon with your group |goto Temple of the Jade Serpent/1 31.30,45.00 < 100 |c
step
talk Priestess Summerpetal##60578
accept Restoring Jade's Purity##31355 |goto Temple of the Jade Serpent/1 36.00,44.40
step
talk Master Windstrong##64399
accept Deep Doubts, Deep Wisdom##31356 |goto Temple of the Jade Serpent/1 36.00,44.40
step
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	36.30,34.90	31.40,26.60	37.40,15.90
Follow this path to the first boss. |goto Temple of the Jade Serpent/1 37.40,15.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Wise Mari##56448
_Phase 1_
|tip Throughout this entire fight avoid standing in any water, it will hurt you every second.
|tip For the first phase Wise Mari will be immune to damage. You can break his protective bubble by defeat the four _Corrupt Living Water_ that he summons with Call Water.
|tip When these adds die they will spawn three Corrupt Droplet and leave behind Sha Residue. Kite the adds to a new location out of the residue and kill them.
|tip After four adds die, Wise Mari will burst his bubble and begin Phase 2.
_Phase 2_
|tip The only mechanic in this phase is Wash Away. Mari will spin in a circle and shoot out a water spout, move around him to avoid being hit.
Assist Wise Mari |q 31355/1 |only if haveq(31355)
Defeat Wise Mari |scenariogoal 1/19230 |goto Temple of the Jade Serpent/1 44.40,19.20
step
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	37.40,15.90	31.40,26.60	36.30,34.90
path	31.40,57.60	27.70,62.80
Follow the path back to The Scrollkeeper's Sanctum. |goto Temple of the Jade Serpent/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Temple of the Jade Serpent/2
path follow strict;loop off;ants straight
path	34.90,21.50	26.40,68.00	58.30,82.50
path	65.30,50.20	46.10,41.90
Kill all of the mini bosses along this platform as you follow the path. |goto Temple of the Jade Serpent/1
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
When you are ready to face the boss kill the Corrupted Scroll.
kill Corrupted Scroll##57080
|confirm
step
There are two possible encounters associated with this boss.
Click here for the _Trial of the Yaungol_ strategy. |next "yaungol" |confirm
Click here for the _Champion of the Five Suns_ strategy. |next "sun" |confirm
step
label "yaungol"
_Trial of the Yaungol_
kill Strife##59051
kill Peril##59726
|tip Your group will want to focus its attention on either Strife or Peril, splitting up damage is extremely bad in this fight.
|tip When you attack one of the bosses they begin stacking a buff called Intensity. Keep your eye on this buff, the higher it gets the more damage it does to the group. Let this buff get to either eight or niene stacks and then switch all damage, including pets, to the other boss.
|tip The boss that you are not focusing will begin to starve. Dissipation reduces the Insanity stacks.
|tip While you are juggling the bosses they will cast Agony on random party members. This does a decent amount of damage that must be healed.
Lorewalker Stonestep assisted |q 31355/3 |only if haveq(31355) |next "done"
Defeat the Trial of the Yaungol |scenariogoal 1/24785 |next "done" |goto Temple of the Jade Serpent/1 26.20,75.20
step
label "sun"
_Champion of the Five Suns_
kill Zao Sunseeker##58826
|tip Five Suns will spawn and being firing Sunfire Rays at random players dealing damage.
|tip You will be able to kill four of these Suns, and everytime you do a Haunting Sha will spawn. You can either kill these one at a time or all together.
|tip When all four Haunting Sha are dead, Zao Sunseeker will become possessed.
|tip He will shoot Hellfire Arrows at random party members, kill him before your healer becomes overwhelmed.
Lorewalker Stonestep assisted |q 31355/3 |only if haveq(31355) |next "done"
Defeat the Champion of the Five Suns |scenariogoal 1/24785 |next "done" |goto Temple of the Jade Serpent/1 26.20,75.20
step
label "done"
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	38.60,80.70	53.50,85.40	46.50,64.90
Follow this path to the next boss. |goto Temple of the Jade Serpent/1 46.50,64.90 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill all the enemies on the Terrace of the Twin Dragons to face Liu Flameheart.
|confirm
step
kill Liu Flameheart##56732
_Phase 1_
|tip Serpent Strike will hit the tank for significant damage and leave a heavy DoT effect on them, dispel this DoT.
|tip Serpent Kick will be used immediately after Serpent Strike, this does damage to anybody within 8 yards of Liu.
|tip Serpent Wave wil follow Serpent Kick, this shoots waves of fire out from around Liu. Do not be hit by these.
_Phase 2_
|tip At 70% life, all of Liu's abilities gain an additional effect.
|tip Jade Serpent Strike now also absorbs 70,000 healing received by the target.
|tip Jade Serpent Kick now also knocks players within 8 yards back.
|tip Jade Serpent Wave now also leaves a trial of fire along the path the flame travels.
_Phase 3_
kill Yu'lon##56762
|tip At 30% life, Yu'lon spawns.
|tip Yu'lon will breathe balls of fire that create a pool of Jade Fire where they land. Step out of this pool to avoid taking damage.
Liu Flameheart assisted |q 31355/2 |only if haveq(31355)
Defeat Liu Flameheart |scenariogoal 1/19235 |goto Temple of the Jade Serpent/1 48.10,52.00
step
Perpare to face the Sha of Doubt. |goto Temple of the Jade Serpent/1 56.10,57.00
|confirm
step
kill Sha of Doubt##56439 |only if not haveq(31356)
kill Sha of Doubt##56439 |q 31356/1 |only if haveq(31356)
|tip The Sha of Doubt will cast Wither Will at two random party members, dealing damage to both of them.
|tip Touch of Nothingness is a dispellable effect that will be put on a random player. This does damage to all surrounding players so spread out.
|tip Periodically the Sha of Doubt will become invulnerable and summon as many adds are there are players. Stack these adds up and kill all of them, if you do not kill them before their energy bar is full, they will heal the boss 10% life and explode dealing significant damage for each add left alive.
Defeat Sha of Doubt |scenariogoal 1/34412 |goto Temple of the Jade Serpent/1 60.50,58.80
step
talk Priestess Summerpetal##60578
turnin Restoring Jade's Purity##31355 |goto Temple of the Jade Serpent/1 36.00,44.40
step
talk Master Windstrong##64399
turnin Deep Doubts, Deep Wisdom##31356 |goto Temple of the Jade Serpent/1 36.00,44.40
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Heart of Fear",{
mapid=474,
achieveid={6845, 6718},
patch='50004',
condition_suggested=function() return level>=35 and level<=37 end,
description="This guide will walk you through the Heart of Fear raid.",
},[[
step
Click here if you are doing a normal clear of Heart of Fear |next "Normal HoF"
Click here if you are doing LFR wings of Heart of Fear |next "LFR Index"
confirm
step
label "LFR Index"
talk Lorewalker Han##80633
Click here if you are queueing for the First wing of Heart of Fear (Dread Approach to the Heart of Fear) |next "First_Wing_HoF"
Click here if you are queueing for the Second wing of Heart of Fear (Nightmare of Shek'zeer) |next "Second_Wing_HoF"
confirm
step
label "Normal HoF"
Enter Heart of Fear |goto Dread Wastes/0 38.95,34.99 < 5
confirm
step
label "First_Wing_HoF"
map Heart of Fear/1
path loop off
path	34.30,76.40	41.30,61.50	50.60,61.40
path	54.60,54.00	61.40,62.50
Follow the path, clearing trash as you make your way to the first boss, Imperial Vizier Zor'lok. |goto Heart of Fear/1 61.40,62.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Imperial Vizier Zor'lok##62980 |goto Heart of Fear/1 62.80,66.30
_Phase 1_
|tip After engaged, Zor'lok will fly to a randomly chosen platform. He will move to another platform at 80% and 60% health. Each platform gives him a different buff.
|tip Left Platform: Attenuation creates moving circles, sonic rings. These deal a moderate amount of damage and can be avoided.
|tip Middle Platform: Convert Zor'lok mind controls random players. These players must be brought down to 50% health.
|tip Right Platform: Force and Verve creates 3 shields which can protect raid members by reducing their damage taken by 40%. Zor'lok then releases a violent burst of sound, damaging the entire raid every second for 10 seconds.
|tip Inhale increases the damage of Exhale by 50%.
|tip Exhale deals a large amount of damage to a random player, also stunning them for 6 seconds.
_Phase 2_
|tip Phase 2 starts when Zor'lok reaches 40% health. He flies to the center of the room and uses all the abilities from Phase 1.
|tip He also gains _Pheromoes of Zeal, increasing his damage by 10% and haste by 20. Kill him as quickly as possible to avoid death.
_Heroic_
|tip When Vizier leaves a platform he will leave an echo of himself, a small group needs to be left behind to kill this echo.
|tip He will continue leaving echos during his last phase as well, these need to be killed asap as they come up.
|confirm
step
map Heart of Fear/1
path loop off
path	57.80,58.20	55.40,52.40	59.90,43.80
path	68.00,34.60	51.90,35.90	59.80,28.80
Follow the path, clearing trash as you make your way to the next boss, Blade Lord Ta'yak. |goto Heart of Fear/1 59.80,28.80 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Blade Lord Ta'yak##62543 |goto Heart of Fear/1 59.80,22.30
_Phase 1_
|tip Phase 1 ends when Ta'yak reaches 20% health.
|tip Tempest Slash creates a tornado that moves around, dealing 75,000 Nature damage and a knockback if touched.
|tip Overwhelming Assault stacking debuff used on tanks, dealing 150% weapon damage and increasing further damage from Overwhelming Assault by 100%.
|tip Wind Step Ta'yak teleports to a random player, applying a DoT to all players within 10 yards that deals 55,000 damage every 2 seconds for 30 seconds.
|tip Unseen Strike occurs after Ta'yak vanishes. After 5 seconds it deals 3,000,000 total Physical damage and a knockback to the target and players in a 15 yard cone in front of him. This damage is split between all players affected.
_Phase 2_
|tip Ta'yak pushes the raid to one end of the room and then flies to the other end and starts spamming the raid with a strong wind and tornados that knock them back to the opposite end of the room. The goal is to get back to Ta'yak by avoiding the tornadoes and then finish him off.
|tip Intensify is a stacking buff that deals 15,000 damage to the raid and increases his damage and haste by 5% per stack.
|tip At 10% health, Ta'yak changes sides, going to the opposite end of the room and coninues creating wind and tornadoes.
|confirm
step
map Heart of Fear/1
path loop off
path	44.90,32.70	35.60,32.70	32.20,15.20
path	Heart of Fear/2 66.20,20.20
Follow the path, clearing trash as you make your way to the final boss, Garalon. |goto Heart of Fear/2 66.20,20.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Garalon##63191 |goto Heart of Fear/2 66.30,16.70
|tip Killing Garalon's legs takes priority, as killing them slows Garalon by 15% and reduces his health by 3%. Mend Leg causes a random leg to respawn.
|tip Furious Swipe deals damage to all players in a cone in front of Garalon. If he doesn't hit at least 2 players, he will gain Fury, a stacking buff that increases his damage and movement speed by 10% for 30 seconds.
|tip Pheromones is a debuff that deals 15,000 Nature damage every 2 seconds to the raid and creates a Pheromone Trail that increases Pheromones damage by 10% per stack.
|tip Crush deals 150,000 damage to the raid and knocks them down for 2 seconds. Any player underneath Garalon when this occurs takes an additional 800,000 damage.
|tip Enrage occurs after 7 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Heroic_
|tip When Garalon reaches 33 percent health he ignores the fixate of Pheramones and increases melee attack speed.
|tip If you are doing this on LFR this is the end of wing 1.
|confirm
step
label "Second_Wing_HoF"
map Heart of Fear/2
path loop off
path	68.30,26.30	69.20,37.80	66.80,38.00
Follow the path to the next boss, Wind Lord Mel'jarak. |goto Heart of Fear/2 66.80,38.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Wind Lord Mel'jarak##62397 |goto Heart of Fear/2 66.40,31.80
|tip Rain of Blades deals raid-wide Physical damage every 0.50 second.
|tip Whirling Blade deals 120,000 Physical damage to all players in its path. Upon reaching its target, it returns to Mel'jarak, inflicting another 120,000 damage to anyone in its return path.
|tip Wind Bomb throws a bomb at a player, dealing 100,000 Nature damage to players within 5 yards of where it lands. After 3 seconds, it arms and will detonate if any player comes within 6 yards, usually wiping the raid.
_Adds_
|tip 3 different types of adds spawn throughout this fight.
|tip Priests: heal and buff their damage.
|tip Warriors: charge their target.
|tip Hunters: apply debuffs to the raid.
_Heroic_
|tip When a group of adds dies Wind Lord becomes enraged increases his damage by 50 percent and increses his damage taken by 600 percent.
|tip When a group of adds dies they will come back after 45 seconds.
|confirm
step
map Heart of Fear/2
path loop off
path	66.20,40.30	66.20,47.10	66.00,52.50
path	66.20,64.60	60.20,73.80	55.10,73.70
path	50.70,74.00	47.60,78.90	47.40,68.50
Follow the path, clearing trash as you make your way to the next boss,  Amber-Shaper Un'sok. |goto Heart of Fear/2 47.40,68.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Amber-Shaper Un'sok##62511 |goto Heart of Fear/2 45.50,73.80
|tip Amber Scalpel targets a random player with a beam that deals large damage and leaves a trail of amber that forms Living Amber adds.
|tip Parasitic Growth is a DoT that deals increasing damage as the affected player is healed.
|tip Reshape Life turns the targeted player into a Mutated Construct.
_Mutated Construct_
|tip Amber Strike does a large amount of damage to the target and increases their damage taken by 10% for 15 seconds as well as interrupting them.
|tip Struggle for Control a small self-stun used to prevent Amber Explosion from being cast. Costs willpower.
|tip Consume Amber heals yourself for 2,000,000, increases your maximum health and restores 20 willpower.
|tip Break Free frees you from the Construct. Can only be used while under 20% health.
_Heroic_
|tip Amber Globules will spawn in the last phase of this fight, these will fixate 2 random players.
|tip If these Globules hit the player they are fixated they will explode dealing damage to the entire raid.
|tip If 2 Amber Globules collide they will deal no damage and disappear.
|confirm
step
map Heart of Fear/2
path loop off
path	42.10,73.80	34.80,77.80	30.90,75.20
Follow the path, clearing trash as you make your way to the final boss, Grand Empress Shek'zeer. |goto Heart of Fear/2 30.90,75.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grand Empress Shek'zeer##62837 |goto Heart of Fear/2 28.90,73.90
|tip Dissonance Field creates 2 vortexes which explode after 60 seconds, dealing 200,000 damage to the entire raid. Players standing in a vortex cannot receive healing and casting spells inside it reduces the explosion timer.
|tip Cry of Terror is a debuff applied to a random player, dealing 45,000 Shadow damage to the rest of the raid every 2 seconds. Standing in the vortex negates this damage.
|tip Visions of Demise is a debuff that affects 2 random players. After 4 seconds they are Feared and will deal damage to everyone around them.
|tip Consuming Terror inflicts 200,000 Shadow damage and Fears players in a cone in front of Shek'zeer.
|tip After 150 seconds the boss will disappear and summon a group of adds. These are usually tanked apart so they don't increase each others' damage.
|tip If you are doing this on LFR this is the end of wing 2.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Mogu'shan Vaults",{
mapid=471,
achieveid={6458, 6844},
patch='50004',
condition_suggested=function() return level>=35 and level<=37 end,
description="This guide will walk you through the Mogu'shan Vaults raid.",
},[[
step
Click here if you are doing a normal clear of the instance |next "Normal MSV"
Click here if you are doing LFR wings of this instance |next "LFR index"
confirm
step
label "LFR index"
talk Lorewalker Han##80633 |goto Vale of Eternal Blossoms/0 83.13,30.61
Click here if you are queueing for the First wing of Mogu'shan Vaults (Guardians of Mogu'shan) |next "First Wing MSV"
Click here if you are queueing for the Second wing of Mogu'shan Vaults (Vault of Mysteries) |next "Second Wing MSV"
confirm
step
label "Normal MSV"
Enter Mogu'shan Vaults |goto Kun-Lai Summit/0 59.61,39.17 < 5
confirm
step
label "First Wing MSV"
map Mogu'shan Vaults/1
path loop off
path	68.40,64.20	54.80,64.20	50.40,64.30
Follow the path, clearing trash as you make your way to the Stone Guard. |goto Mogu'shan Vaults/1 50.40,64.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Stone Guard_ |goto Mogu'shan Vaults/1 45.60,64.50
kill Amethyst Guardian##60047
|tip Amethyst Petrification attempts to turn its enemies to amethyst, reducing Shadow damage they take by 90% and progressively slowing their movement speed.
|tip Amethyst Pool deals 60,000 every second to players who enter the area.
kill Cobalt Guardian##60051
|tip Cobalt Petrification attempts to turn its enemies to cobalt, reducing Arcane damage they take by 90% and slowing their movement speed.
|tip Rend Flesh deals 50,000 Physical damage every second for 15 seconds.
kill Jade Guardian##60043
|tip Jade Petrification attempts to turn its enemies to jade, reducing Nature damage they take by 90% and slowing their movement speed.
|tip Jade Shards inflicts 50,000 Nature damage to all players.
|tip Rend Flesh deals 50,000 Physical damage every second for 15 seconds.
kill Jasper Guardian##59915
|tip Jesper Petrification attempts to turn its enemies to jesper, reducing Fire damage they take by 90% and slowing their movement speed.
|tip Jesper Chains links 2 players together. While they are over 10 yards apart they both take 35,000 Fire damage every second, increasing by 15% per second.
|tip Rend Flesh deals 50,000 Physical damage every second for 15 seconds.
|tip Each of the 4 Guardians will periodically summon a crystal, players must click these crystals. |only if heroic_dung()
|tip Once clicked they will get a debuff and to remove it they must run over white tiles around this encounter area. |only if heroic_dung()
|confirm
step
map Mogu'shan Vaults/1
path loop off
path	38.00,64.40	32.80,64.30	32.10,52.10
path	32.10,42.40
Follow the path, clearing trash as you make your way to the first boss, Feng the Accursed. |goto Mogu'shan Vaults/1 32.10,42.40 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Feng the Accursed##60009 |goto Mogu'shan Vaults/1 32.10,33.20
|tip Arcane Resonance charges random players with Arcane Resonance, which deals 30,000 Arcane damage to all other players within 6 yards, amplfying the damage by 30,000.
|tip Arcane Shock hits the targeted player for 29,000 Arcane damage every 2 seconds for 20 seconds.
|tip Chains of Shadow deals Shadow damage to the target, jumping to up to 3 additional targets.
|tip Flaming Spear sears the flesh of a player, inflicting normal weapon damage plus 30,000 Fire damage every 2 seconds for 20 seconds.
|tip Lightning Fists slams a lightning fist into the ground, causing a shockwave that deals damage to players in front of Feng.
|tip Wildfire Spark ignites a random player, causing them to explode after 5 seconds and igniting a wildfire at their location.
|tip There is one extra phase in heroic difficulty, the Spirit of the Shield. |only if heroic_dung()
|tip He will create shadows from random players that will move toward him, if they reach him he will be healed for 10 percent of his max health per. |only if heroic_dung()
|confirm
step
map Mogu'shan Vaults/1
path loop off
path	32.20,23.20	32.20,13.20	Mogu'shan Vaults/2 77.60,67.10
path	Mogu'shan Vaults/2 77.70,47.30
Follow the path, clearing trash as you make your way to the second boss, Gara'jal the Spiritbinder. |goto Mogu'shan Vaults/2 77.70,47.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gara'jal the Spiritbinder##60143 |goto Mogu'shan Vaults/2 77.00,35.90
|tip Banishment banishes the target to the spirit world.
|tip Final Destination Gara'jal harnesses his great power and rips the souls from all raid members.
|tip Summon Spirit Totem summons a totem that provides a conduit between this world and the spirit world.
|tip Voodoo Doll damage received is duplicated to all other Voodoo Dolls.
|tip If you are doing this on LFR this is the end of wing 1.
|confirm
step
label "Second Wing MSV"
map Mogu'shan Vaults/2
path loop off
path	45.30,34.50	33.80,29.90	33.90,43.00
Follow the path as you make your way towards the next boss. |goto Mogu'shan Vaults/2 33.90,43.00 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Mogu'shan Vaults/2
path loop off
path 31.70,69.30	24.20,66.50
Follow this path, clearing trash to the next boss, the Spirit Kings. |goto Mogu'shan Vaults/2 24.20,66.50 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Spirit Kings_ |goto Mogu'shan Vaults/2 18.30,52.00
kill Qiang the Merciless##60709
|tip Annihilate inflicts a total of 1,500,000 damage to players in front of Qiang within melee range.
|tip Flanking Orders calls in a wave of Mogu adds.
|tip Massive Attacks deals a total of 800,000 damage split among all players hit.
|tip Impervious Shield makes Qiang with a shield, making him immune to damage. If damaged while this shield is up, he retaliates, dealing damage to the raid.
kill Subetai the Swift##60710
|tip Pillage affects a random player and all other players within 8 yards of them, reducing damage, healing done and armor by 50%.
|tip Sleight of Hand  damaging Subetai while this is up causes Robbed Blind. Subetai can be stunned during this.
|tip Robbed Blind debuff that reduces the target's damage and healing done by 50% and increasing their Physical damage taken by 50%.
|tip Volley inflicts 92,000-103,000 Physical damage to players in a cone in front of Subetai.
kill Meng the Demented##60708
|tip Cowardice increases Meng's insanity level every 0.50 seconds. Once fully insane he switches personalities. Also reflects a portion of damage back at attacking players.
|tip Crazed increases Meng's insanity level every 0.50 seconds. Once fully insane he switches personalities. Also reflects a portion of damage back at attacking players.
|tip Delirious doubles Meng's sanity gains.
|tip Maddening Shout AoE that deals 63,000-66,000 Shadow damage every 3 seconds and causing players to hate each other. Players regain their sanity after taking 30,000 damage from another raid member.
kill Zian of the Endless Shadow##6070
|tip Charged Shadows inflicts 97,500-102,500 Shadow damage to enemies standing within 8 yards of each other.
|tip Shadow Blast deals 100,000 Shadow damage to enemies within 8 yards of the targeted player.
|tip Undying Shadows creates an Undying Shadow at the targeted area, dealing 30,000 Shadow damage every second to players within 10 yards.
|tip Shield of Darkness is only used in Heroic mode. Any damage dealt to Zian will deal 300,000 Shadow damage to the raid.
|confirm
step
map Mogu'shan Vaults/2
path loop off
path	24.70,69.60	33.30,69.70	27.10,51.60
path	Mogu'shan Vaults/3 61.00,12.40	Mogu'shan Vaults/3 62.00,21.70	Mogu'shan Vaults/3 68.70,26.80
path	Mogu'shan Vaults/3 66.00,41.40	Mogu'shan Vaults/3 57.70,41.40	Mogu'shan Vaults/3 49.20,43.60
path	Mogu'shan Vaults/3 44.50,51.30	Mogu'shan Vaults/3 30.00,51.30
Follow the path, clearing trash as you make your way to the next boss, Elegon. |goto Mogu'shan Vaults/3 30.00,51.30 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Elegon##60410 |goto Mogu'shan Vaults/3 22.70,51.70
|tip Catastrophic Anomaly causes the Engine of Nalak'sha to explode and deal 90,200-100,000 Arcane damage to the raid.
|tip Celestial Breath applies a DoT to players in a cone in front of Elegon that deals Arcane damage.
|tip Draw Power Elegon creates 6 Energy Cores and increasing his damage taken by 10%.
|tip Radiating Energies applies an Arcane DoT to the entire raid.
|tip Unstable Energy occurs if the Empyreal Fosuses are active. Elegon becomes immune to damage and deals 175,000 damage to the raid.
|confirm
step
map Mogu'shan Vaults/3
path loop off
path	45.40,51.50	65.30,41.40	68.70,56.20
Follow the path towards the final boss, the Will of the Emperor. |goto Mogu'shan Vaults/3 68.70,56.20 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Take these stairs down to the lower platform. |goto Mogu'shan Vaults/3 72.00,66.80 <5 |c
step
_Will of the Emperor_ |goto Mogu'shan Vaults/3 68.60,82.20
To activate Hard Mode destroy the pipes located on the sides of the boss room. |goto Mogu'shan Vaults/3 61.10,72.40
The other pipes can be located here |goto Mogu'shan Vaults/3 76.00,72.70
To activate Normal mode click Broken Control Console |goto Mogu'shan Vaults/3 68.70,67.00
|tip Adds continuously spawn during this fight. They should be killed off while damaging the bosses.
|tip All adds in heroic difficulty, when killed, will spawn a Spark, this will fixate a random player and if they hit they will deal a large amoutn of damage to the entire raid. |only if heroic_dung()
|tip Emeperor's Rage will target a random player and fixate onto them, run away from these if you are fixated.
|tip Emeperor's Courage will target a random player and fixate onto them, these adds will have a shield in front of them preventing all damage, dps must go behind these adds to kill them.
|tip Emeperor's Strength will, once in melee range of a player, cast Energizing Smash stunning anyone in a big circle in front of him, this needs to be avoided.
kill Qin-xi##60399
|tip Stomp inflicts 150,000 Physical damage and stuns nearby enemies for 2 seconds.
kill Jan-xi##60400
|tip Stomp inflicts 150,000 Physical damage and stuns nearby enemies for 2 seconds.
|tip If you are doing this on LFR this is the end of wing 2.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Terrace of Endless Spring",{
mapid=456,
achieveid={6689},
patch='50004',
condition_suggested=function() return level>=35 and level<=37 end,
description="This guide will walk you through the Terrace of Endless Spring raid.",
},[[
step
Click here if you are doing a normal clear of Terrace of Endless Spring |next "Normal ToES"
Click here if you are doing LFR wing of Terrace of Endless Spring |next "LFR Index ToES"
confirm
step
label "LFR Index ToES"
talk Lorewalker Han##80633
Queue for Terrace of Endless Spring
Once inside click here to continue |next "ToES begin"
confirm
step
label "Normal ToES"
Enter Terrace of Endless Spring |goto The Veiled Stair/0 48.46,61.43 < 5
confirm
step
label "ToES begin"
map Terrace of Endless Spring
path loop off
path	80.50,38.40	76.10,59.90
Follow the path, clearing trash around the first boss, the Protectors of the Endless. |goto Terrace of Endless Spring 76.10,59.90 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Protectors of the Endless_ |goto Terrace of Endless Spring 78.50,48.90
kill Elder Regail##60585
|tip Lightning Bolt inflicts 125,000-145,000 Nature damage to the targeted player.
|tip Lightning Prison stuns 2 players and deals 28,000 Nature damage to all players within 7 yards.
|tip Lightning Storm is an AoE, starting from Regail's location and pulsing outward in 3 pulses, dealing high Nature damage.
kill Elder Asani##60586
|tip Water Bolt deals 100,000 Nature damage to the target and all additional players within 3 yards of that target.
|tip Cleansing Waters is a buff that heals Asani's allies and can be dispelled.
|tip Corrupted Waters spawns an orb in the center of the room, increasing the Protectors' attack and casting speeds by 50%. When destroyed it increases players' attack and casting speed by 25% for 20 seconds when standing in the inner circle.
kill Protector Kaolan##60583
|tip Touch of Sha occurs if you kill Kaolan last. It deals 38,000 Shadow damage every 3 seconds to a targeted player for the entire fight.
|tip Defiled Ground are summoned under the tank, dealing 110,000 Shadow damage every second and does not despawn.
|tip Expel Corruption is an AoE that deals up to 195,000 Shadow damage to all players within 30 yards. Damage is decreased the further away a player is from Kaolan when this occurs.
|confirm
step
kill Tsulong##62442 |goto Terrace of Endless Spring 78.50,48.90
_Night Phases_
|tip Damage Tsulong as much as possible in these phases.
|tip Shadow Breath _frontal cone_ ability, dealing 240,000 Shadow damage and increasing Shadow damage taken by 100% for 30 seconds.
|tip Dread Shadows is a stacking DoT that deals 30,000 Shadow damage and increases damage from Dread Shadows by 10% per stack. This is removed by running through a Sunbeam Tsulong creates.
|tip Nightmares inflicts 110,000 Shadow damage and Fears all players within 8 yards in the targeted area.
_Day Phases_
|tip Heal Tsulong as much as possible in these phases. He is friendly, and helps kill the Sha that spawn by using Sun Breath. This is a cone that also restores 25% maximum mana to every player in front of him.
|tip During these phases, Tsulong is not attackable and summons waves of Sha to attack the raid.
|tip Embodied Terror: Sha with large amounts of health. Terrorize deals high damage and should be dispelled.
|tip Fright Spawn: spawn when an Embodied Terror is killed. Fright deals high damage and a Fear to players within 30 yards.
|tip Unstable Sha: spawn in the outer areas of the room and move toward Tsulong. If they reach Tsulong they explode.
|confirm
step
kill Lei Shi##62983 |goto Terrace of Endless Spring 58.60,48.60
|tip Hide Lei Shi vanishes, hiding from players. AoE attacks can hit her to make her reveal herself.
|tip Get Away is an AoE that pushes the raid back, away from Lei Shi and deals 90,000 Shadow damage. Running towards Lei Shi halves the damage it deals every second.
|tip Protect Lei Shi shields herself, becoming immune to damage and summoning elementals to attack the raid. Ends after 1 elemental is killed.
|tip Spray water bursts from the ground at the targeted player's location, dealing 110,000 Frost damage to all players within 2.50 yards and increasing their Frost damage taken by 16% for 10 seconds.
|confirm
step
kill Sha of Fear##60999 |goto Terrace of Endless Spring 39.20,48.60
|tip Breath of Fear occurs about every 30 seconds. when Sha of Fear gains a full energy bar. It deals 500,000 Shadow damage and a Fear to all players. Those standing in the glowing light spot in the middle of the room will be unaffected by this.
|tip Terror Spawn group of 2 adds that spawn. They can only be damaged from behind.
|tip Eerie Skull deals 74,000-90,000 Shadow damage to a random raid member.
|tip Ominous Cackle occurs every 90 seconds. It takes 5 random players to an outer shrine where they must kill the corrupted guardian, granting Fearless.
|tip Fearless is a buff applied to players killing the corrupted guardian in one of the outer shrines. It increases damage and healing done by 60%, makes you immune to Breath of Fear, and greatly increases movement speed.
_Heroic_
|tip Once Sha of Fear reaches 66 percent health he will go into his final heroic phase.
|tip During this phase an ability called Pure Light will come into play, this will immobilize the player targeted, to avoid harmful abilities you must transfer this Orb to another safe positioned player.
|tip He will cast Submerge, going underground and then emerging under a random raid member, avoid being hit by this.
|tip He will cast Implaceable Strike dealing damage to all players within a cone in front of him periodically, avoid being hit by this.
|tip He will summon adds called Dread Spawns, these will fixate and run toward the players with the Pure Light, these adds need to be killed before reaching said players.
|tip If the Dread Spawns reach melee range on their fixated target they will die instantly no matter what, players with the orb can transfer it to another player to refixate the adds on to them.
|confirm
]])
