local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Operation: Shieldwall\\Beastmaster Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Operation: Shieldwall\\Operation: Shieldwall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Chee Chee")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Ella")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Farmer Fung")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Fish Fellreed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Gina Mudclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Haohan Mudclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Jogu the Drunk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Old Hillpaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Sho")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Tina Mudclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Anglers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Emperor Shaohao")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Kirin Tor Offensive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Lorewalkers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Pearlfin Jinyu")
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault",{
description="\nThis guide will walk you through becoming exalted with the Shado-Pan Assault faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Shado-Pan Assault') < Exalted end,
achieveid={6366},
patch='50004',
},[[
step
label "shado_dailies"
Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes 49.50,70.60
Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto Townlong Steppes 49.00,70.50 |next "bearheart"
Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto Townlong Steppes 49.00,71.30 |next "ling"
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
only if not completedq(31127)
only if rep('Shado-Pan')>=Honored
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.40,70.60
only if rep('Shado-Pan')>=Revered
step
talk Lao-Chin the Iron Belly##62978
I'm here to challenge you! |q 31128/1 |goto Townlong Steppes 49.30,72.00
only if haveq(31128)
step
talk Lao-Chin the Iron Belly##63135
Tell him: _"All right, let's do this!"_
Defeat Lao-Chin the Iron Belly |q 31128/2 |goto Townlong Steppes 50.60,67.80
only if haveq(31128)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.60,70.50
only if haveq(31128)
step
talk Chao the Voice##62550
Tell her you're here to challenge her! |q 31127/1 |goto Townlong Steppes 49.70,70.50
only if haveq(31127)
step
talk Chao the Voice##63125
Let's do this.
Defeat Chao the Voice |q 31127/2 |goto Townlong Steppes 50.10,68.30
only if haveq(31127)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
only if haveq(31127)
step
talk Master Snowdrift##63009
|tip You will only be able to accept 4 of the following dailies.
accept Assault Fire Camp Gai-Cho##31113 |goto Townlong Steppes 49.40,70.60 |or 4
accept Assault Deadtalker's Plateau##31114 |goto Townlong Steppes 49.40,70.60 |or 4
accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto Townlong Steppes 49.40,70.60 |or 4
accept Spirit Dust##31116 |goto Townlong Steppes 49.40,70.60 |or 4
accept The Deadtalker Cipher##31118 |goto Townlong Steppes 49.40,70.60 |or 4
step
Talk to Chao the Voice or Protector Yi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto Townlong Steppes 49.70,70.50
talk Protector Yi##62546 |goto Townlong Steppes 49.30,71.30
confirm
only if not completedq(31128)
step
Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto Townlong Steppes 49.70,70.50
talk Protector Yi##62546 |goto Townlong Steppes 49.30,71.30
talk Lao-Chin the Iron Belly##62978 |goto Townlong Steppes 49.30,71.90
confirm
only if completedq(31128)
step
kill Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if haveq(31113)
Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |goto Townlong Steppes 63.40,43.30 |only if haveq(31113)
click Highly Explosive Yaungol Oil Barrel##212877 |only if haveq(31119)
collect Highly Explosive Yaungol Oil##84762 |n |goto Townlong Steppes 63.40,43.30
|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if haveq(31119)
step
Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto Townlong Steppes 60.20,48.60
If you run out of oil, you can find more around this area |goto Townlong Steppes 63.40,43.30
only if haveq(31119)
stickystart "spiritremains"
step
kill Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+
collect Ciphered Scroll##84759 |q 31118/1  |goto Townlong Steppes 51.10,51.80
only if haveq(31118)
step
label "spiritremains"
kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto Townlong Steppes 51.10,51.80 |only if haveq(31114)
kill Deadtalker Crusher##62844 |q 31114/2 |goto Townlong Steppes 51.10,51.80
|tip He is elite but with your companion you should be able to defeat him. |only if haveq(31114)
kill Defiled Spirit##62679 |only if haveq(31116)
collect Ancient Spirit Dust##84727 |n |only if haveq(31116)
click Defiled Yaungol Remains##212779 |only if haveq(31116)
Return 8 Spirits to Their Remains |q 31116/1 |goto Townlong Steppes 51.10,51.80 |only if haveq(31116)
step
Next to you will either be Chao the Voice or Protector Yi:
Talk to Chao the Voice
Talk to Protector Yi
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
only if not completedq(31128)
step
Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
Talk to Chao the Voice
Talk to Protector Yi
Talk to Lao-Chin the Iron Belly
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
only if completedq(31128)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Uruk!##31117 |or
accept Cheng Bo!##31120 |or
step
kill Uruk##62613 |q 31117/1 |goto Townlong Steppes 50.40,48.90
step
kill Cheng Bo##62554 |q 31120/1 |goto Townlong Steppes 60.70,42.10
step
talk Master Snowdrift##63009
turnin Uruk!##31117 |goto Townlong Steppes 49.60,70.50 |or
turnin Cheng Bo!##31120 |goto Townlong Steppes 49.60,70.50 |or
|next "end"
step
label "bearheart"
talk Ban Bearheart##62304
accept The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
only if not completedq(31038)
only if rep('Shado-Pan')>=Honored
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
only if rep('Shado-Pan')>=Revered
step
talk Snow Blossom##62380
Ask her to meet in the Challenger's Ring. |q 31038/1 |goto Townlong Steppes 48.90,70.10
only if haveq(31038)
step
talk Snow Blossom##62834
I challenge you!
Defeat Snow Blossom |q 31038/2 |goto Townlong Steppes 50.20,67.90
only if haveq(31038)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
only if haveq(31038)
step
talk Yalia Sagewhisper##62303
Ask her to meet you in the Challenger's Ring |q 31104/1 |goto Townlong Steppes 48.90,70.00
only if haveq(31104)
step
talk Yalia Sagewhisper##62850
I challenge you!
Defeat Yalia Sagewhisper |q 31104/2 |goto Townlong Steppes 50.40,67.70
only if haveq(31104)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
only if haveq(31104)
step
talk Ban Bearheart##62304
accept Born Free##31047 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31105 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31106 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31039 |goto Townlong Steppes 49.00,70.40 |or 4
accept Bronze Claws##31044 |goto Townlong Steppes 49.00,70.40 |or 4
accept Illusions Of The Past##31045 |goto Townlong Steppes 49.00,70.40 |or 4
accept Grave Consequences##31048 |goto Townlong Steppes 49.00,70.40 |or 4
accept Dark Arts##31043 |goto Townlong Steppes 49.00,70.40 |or 4
accept Onyx Hearts##31042 |goto Townlong Steppes 49.00,70.40 |or 4
accept Spiteful Sprites##31040 |goto Townlong Steppes 49.00,70.40 |or 4
accept Egg Rescue!##31041 |goto Townlong Steppes 49.00,70.40 |or 4
accept Little Hatchlings##31046 |goto Townlong Steppes 49.00,70.40 |or 4
step
Talk to Snow Blossom or Fei Li and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto Townlong Steppes 48.90,70.10
talk Fei Li##62354 |goto Townlong Steppes 48.80,70.20
confirm
only if not completedq(31104)
step
Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto Townlong Steppes 48.90,70.10
talk Fei Li##62354 |goto Townlong Steppes 48.80,70.20
talk Yalia Sagewhisper##62303 |goto Townlong Steppes 48.80,70.00
confirm
only if completedq(31104)
step
talk Moshu the Arcane##62810
accept Through the Portal##31110 |goto Townlong Steppes 28.80,22.40
only if not completedq(31110)
step
clicknpc Ball and Chain##62539 |only if haveq(31047)
Free 6 Wild Cloudriders |q 31047/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31047)
click Shan'ze Cage##215573 |goto Townlong Steppes 32.80,25.10 |only if haveq(31046)
Free 20 Cloudrider Hatchlings. |q 31046/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31046)
click Shiny Egg##214481 |only if haveq(31041)
collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31041)
only if haveq(31041) or haveq(31046) or haveq(31047)
stickystart "bronzeclaw"
stickystart "darkwoodscharmer"
stickystart "arcanepowder"
step
kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31045)
click Shan'ze Tablet##212319 |only if haveq(31043)
collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31043)
click Mogu Burial Urn##212324 |only if haveq(31048)
kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31048)
kill Onyx Stormclaw##62448 |only if haveq(31042)
collect 4 Onyx Heart##83138 |q 31042/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31042)
step
label "bronzeclaw"
kill Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if haveq(31105) or haveq(31106) or haveq (31039)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31105)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31106)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31039)
kill Bronze Quilen##62266+ |only if haveq(31044)
collect 20 Bronze Claw##83153+ |q 31044/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31044)
step
label "darkwoodscharmer"
kill Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1 |goto Townlong Steppes 23.00,19.50
only if haveq(31040)
step
label "arcanepowder"
kill Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
collect 1000 Ancient Arcane Powder##84102+ |q 31110/1
only if haveq(31110)
step
Next to you will either be Fei Li or Snow Blossom
talk Fei Li##62354
talk Snow Blossom##62380
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
only if not completedq(31104)
step
Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
talk Fei Li##62354
talk Snow Blossom##62380
talk Yalia Sagewhisper##62303
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
only if completedq(31104)
step
Use the Bronze Claws on the Cloudrunners around this area |use Bronze Claws##83134
kill Shan'ze Cloudrunner##62584
Free 8 Shan'ze Cloudriders |q 31061/1 |goto Townlong Steppes 30.90,12.60
only if haveq(31061)
step
Click the Leave Vehicle button |outvehicle
only if haveq(31061)
step
_Enter_ the tunnel |goto Townlong Steppes 20.30,15.80 < 15
kill Darkwoods Faerie##62522 |q 31049/1 |goto Townlong Steppes 19.50,13.80
only if haveq(31049)
step
_Leave_ the tunnel |goto Townlong Steppes 20.30,15.80 < 15
kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto Townlong Steppes 32.30,9.50
|tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
only if haveq(31062)
step
talk Moshu the Arcane##62810
turnin Through the Portal##31110 |goto Townlong Steppes 28.80,22.40
only if haveq(31110)
step
talk Ban Bearheart##62304
turnin When The Dead Speak##31062 |goto Townlong Steppes 49.00,70.40
turnin Riding the Storm##31061 |goto Townlong Steppes 49.00,70.40
turnin In Sprite Of Everything##31049 |goto Townlong Steppes 49.00,70.40
|next "end"
step
label "ling"
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
only if not completedq(31220)
only if rep('Shado-Pan')>=Honored
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
only if rep('Shado-Pan')>=Revered
step
talk Tenwu of the Red Smoke##63616
Ask him to meet you in the Challenger's Ring |q 31221/1 |goto Townlong Steppes 48.90,71.20
only if haveq(31221)
step
talk Tenwu of the Red Smoke##64471
Let's see if you can back that talk up
Defeat Temwu of the Red Smoke |q 31221/2 |goto Townlong Steppes 50.60,68.50
only if haveq(31221)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
only if haveq(31221)
step
talk Hawkmaster Nurong##63618
Ask him to meet you in the Challenger's Ring |q 31220/1 |goto Townlong Steppes 49.00,70.90
only if haveq(31220)
step
talk Hawkmaster Nurong##64470
Let's go!
Defeat Hawkmaster Nurong |q 31220/2 |goto Townlong Steppes 50.70,68.20
only if haveq(31220)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
only if haveq(31220)
step
talk Ling of the Six Pools##63614
accept Sra'vess Wetwork##31196 |goto Townlong Steppes 49.00,71.30 |or 4
accept The Bigger They Come...##31197 |goto Townlong Steppes 49.00,71.30 |or 4
accept A Morale Victory##31198 |goto Townlong Steppes 49.00,71.30 |or 4
accept Destroy the Siege Weapons!##31199 |goto Townlong Steppes 49.00,71.30 |or 4
accept Fumigation##31200 |goto Townlong Steppes 49.00,71.30 |or 4
accept Friends, Not Food!##31201 |goto Townlong Steppes 49.00,71.30 |or 4
step
Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto Townlong Steppes 48.70,71.20
talk Taoshi##63617 |goto Townlong Steppes 48.70,71.00
confirm
only if not completedq(31221)
step
Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto Townlong Steppes 48.70,71.20
talk Taoshi##63617 |goto Townlong Steppes 48.70,71.00
talk Tenwu of the Red Smoke##63616 |goto Townlong Steppes 48.90,71.20
confirm
only if completedq(31221)
step
talk Ku-Mo##65341
accept Seeking Father##30933 |goto Townlong Steppes 48.70,71.10
If this quest is unavailable, click here. |confirm
only if not completedq(30933)
stickystart "lessergreatermantid"
step
click Sra'thik Siege Weapon##213311
Small Southern Siege Weapon destroyed |q 31199/2 |goto Townlong Steppes 27.50,54.60
only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Large Southern Siege Weapon destroyed |q 31199/1 |goto Townlong Steppes 25.80,53.80
only if haveq(31199)
step
click Sra'thik Idol##213309
Southern Idol destroyed |q 31198/1 |goto Townlong Steppes 23.50,55.50
only if haveq(31198)
step
click Sra'thik Idol##213309
Central Idol destroyed |q 31198/3 |goto Townlong Steppes 21.50,49.20
only if haveq(31198)
step
click Sra'thik Siege Weapon##213311
Large Northern Siege Weapon destroyed |q 31199/3 |goto Townlong Steppes 27.20,41.20
only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Small Northern Siege Weapon destroyed |q 31199/4 |goto Townlong Steppes 26.20,39.80
only if haveq(31199)
step
click Sra'thik Idol##213309
Eastern Idol destroyed |q 31198/4 |goto Townlong Steppes 27.80,41.90
only if haveq(31198)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Egg Chamber bombed |q 31200/3 |goto Townlong Steppes 23.60,44.70
only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Torture Cell bombed |q 31200/4 |goto Townlong Steppes 22.00,41.60
only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Slaughtering Pit bombed |q 31200/5 |goto Townlong Steppes 21.20,43.20
only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Amber Vault bombed |q 31200/1 |goto Townlong Steppes 21.00,45.90
only if haveq(31200)
step
click Sra'thik Idol##213309
Western Idol destroyed |q 31198/2 |goto Townlong Steppes 16.20,45.80
only if haveq(31198)
step
talk Shado-Pan Trainee##64459
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/3 |goto Townlong Steppes 17.60,58.00
only if haveq(31201)
step
talk Shado-Pan Trainee##64460
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/2 |goto Townlong Steppes 17.40,57.00
only if haveq(31201)
step
talk Sentinel Ku-Yao##61694
Tell him his son has been looking for him
Search for Sentinel Ku-Yao. |q 30933/1 |goto Townlong Steppes 17.40,57.00
only if haveq(30933)
step
talk Shado-Pan Trainee##64461
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/1 |goto Townlong Steppes 18.00,53.50
only if haveq(31201)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Nutriment Cell bombed |q 31200/2 |goto Townlong Steppes 23.90,47.30
only if haveq(31200)
step
label "lessergreatermantid"
kill Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if haveq(31196)
Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if haveq(31196)
kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if haveq(31197)
Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if haveq(31197)
step
Next to you is either Hawkmaster Nurong or Taoshi
talk Taoshi##63617
talk Hawkmaster Nurong##63618
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
only if not completedq(31221)
step
Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
Talk to Taoshi
Talk to Hawkmaster Nurong
Talk to Tenwu of the Red Smoke
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
only if completedq(31221)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Target of Opportunity: Sra'thik Hivelord##31204 |or
accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
step
kill Sra'thik Swarmlord##63693 |q 31203/1 |goto Townlong Steppes 16.40,40.90
only if haveq(31203)
step
_Enter_ the building |goto Townlong Steppes 27.10,44.10 < 15
kill Sra'thik Hivelord##63694 |q 31204/1 |goto Townlong Steppes 24.30,44.00
only if haveq(31204)
step
_Leave_ the building |goto Townlong Steppes 27.10,44.10 < 15
talk Ku-Mo##65341
turnin Seeking Father##30933 |goto Townlong Steppes 48.70,71.10
only if haveq(30933)
step
talk Ling of the Six Pools##63614
turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto Townlong Steppes 49.00,71.40 |or
turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto Townlong Steppes 49.00,71.40 |or
|next "end"
step
label "end"
talk Rushi the Fox##64595 |goto Townlong Steppes 48.80,70.60
buy 1 Grand Commendation of the Shado-Pan##93220 |n
Use the Commendation of the Shado-Pan you just purchased |complete ZGV:GetReputation("Shado-Pan").hasBonus |use Grand Commendation of the Shado-Pan##93220
only if rep("Shado-Pan")>=Revered
step
talk Master Snowdrift##63009
accept Mogu Incursions##31266 |goto Townlong Steppes 49.40,70.60
only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto Townlong Steppes 48.80,58.60
only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
talk Master Snowdrift##63009
turnin Mogu Incursions##31266 |goto Townlong Steppes 49.40,70.60
accept Surprise Attack!##31277 |goto Townlong Steppes 49.40,70.60
only if rep('Shado-Pan')==Exalted and not completedq(31277)
step
talk Ban Bearheart##63908
Tell him "Let's go".
Join the battle of Niuzao Temple |q 31277/1 |goto Townlong Steppes 42.60,63.90
only if haveq(31277)
step
Wait for the dialogue to end and fight off the invasion.
kill Shan'ze Brutalizer##63933+, Hei Feng##63920
|tip When he casts Deep Breath step behind him.
Defeat the Mogu Invasion |q 31277/2 |goto Townlong Steppes 41.30,60.00
only if haveq(31277)
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto Townlong Steppes 49.20,71.00
only if haveq(31277)
step
You have reached the end of this daily guide
Click here to return to the start of the dailies |next "shado_dailies" |confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Tillers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Nat Pagle")
