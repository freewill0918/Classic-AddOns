if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------------
----- Argent Tournament -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Aspirant",[[
	step
		talk Magister Edien Sunhollow##33542
		accept Up To The Challenge##13678 |goto Icecrown 76.3,24.3
	step
		talk Magister Edien Sunhollow##33542
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13673 |goto 76.3,24.4 |or
		accept A Worthy Weapon##13674 |goto 76.3,24.4 |or
		accept The Edge of Winter##13675 |goto 76.3,24.4 |or
	step
		talk Amariel Sunsworn##33658
		accept Training in the Field##13676 |goto 76.3,24.4
	step
		talk Galathia Brightdawn##33659
		accept Learning the Reins##13677 |goto 76.2,24.4
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		Tell her _"I am glad to help."_
		collect Ashwood Brand##44981 |q 13673/1 |goto Grizzly Hills 61.2,50.3
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13674 |goto Icecrown 69.1,76.2
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238 |goto Dragonblight 93.2,26.1
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13674/1
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13675 |goto Crystalsong Forest 54.5,74.9
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13675/1 |goto Howling Fjord 42.2,19.7
	step
		kill Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
		Kill #8# Icecrown Scourge |q 13676/1 |goto Icecrown 74.8,35.5
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Sunreaver Hawkstrider##33842
		Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13677 |goto 75.6,23.7
	step
		clicknpc Melee Target##33229
		|tip If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks.
		Use your Thrust ability #5# times |q 13677/1 |goto 73.1,24.8
	step
		clicknpc Charge Target##33272
		|tip Use Shield-Breaker ability until you notice the targets Defend is gone.
		Use your Charge ability #2# times |q 13677/3 |goto 72.9,25.1
	step
		clicknpc Ranged Target##33243
		|tip Use Shield-Breaker ability on a Ranged Target to bring its shield down.
		Use Shield-Breaker ability on a Ranged Target #2# times |q 13677/2 |goto 73.3,25.0
		|tip These will only count if the target's shield is down.
	step
		talk Magister Edien Sunhollow##33542
		|tip You will only be able to accept and turn in 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13673 |goto 76.3,24.4 |only if not completedq(13673)
		turnin A Worthy Weapon##13674 |goto 76.3,24.4 |only if not completedq(13674)
		turnin The Edge of Winter##13675 |goto 76.3,24.4 |only if not completedq(13675)
	step
		talk Amariel Sunsworn##33658
		turnin Training in the Field##13676 |goto 76.3,24.4
	step
		talk Galathia Brightdawn##33659
		turnin Learning the Reins##13677 |goto 76.2,24.4
	step
		collect 15 Aspirant's Seal##45192 |q 13678/1
		|tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section.
		|tip It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
	step
		talk Magister Edien Sunhollow##33542
		turnin Up To The Challenge##13678 |goto 76.3,24.4
]])

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Valiant",[[
	step
		talk Magister Edien Sunhollow##33542
		accept The Aspirant's Challenge##13680 |goto Icecrown 76.3,24.4
	step
		Equip the Horde Lance in your bags |use Horde Lance##46070
		clicknpc Stabled Sunreaver Hawkstrider##33842
		Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13680 |goto 71.8,20.0
	step
		talk Squire David##33447
		Tell him _"I am ready to fight!"_
		|tip Before telling Squire David this, use the Defend ability on your hotbar to max your shield out at 3 charges.
		kill Argent Valiant##33448
		|tip Use the abilities on your hotbar to defeat the Argent Valiant.
		|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.
		|tip Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.
		|tip When his shield is down, use your Charge ability on him. Keep repeating this process until he is defeated.
		Defeat the Argent Valiant |q 13680/1 |goto 71.4,19.6
	step
		talk Magister Edien Sunhollow##33542
		turnin The Aspirant's Challenge##13680 |goto 76.3,24.4
		accept A Valiant Of Orgrimmar##13691 |only Orc |goto 76.3,24.4
		accept A Valiant Of Sen'jin##13693 |only Troll |goto 76.3,24.4
		accept A Valiant Of Thunder Bluff##13694 |only Tauren |goto 76.3,24.4
		accept A Valiant Of Undercity##13695 |only Scourge |goto 76.3,24.4
		accept A Valiant Of Silvermoon##13696 |only BloodElf |goto 76.3,24.4
	step
		talk Mokra the Skullcrusher##33361
		turnin A Valiant Of Orgrimmar##13691 |goto 76.5,24.6
		accept The Valiant's Charge##13697 |goto 76.5,24.6
		|only Orc
	step
		talk Zul'tore##33372
		turnin A Valiant Of Sen'jin##13693 |goto 76.0,24.5
		accept The Valiant's Charge##13719 |goto 76.0,24.5
		|only Troll
	step
		talk Runok Wildmane##33403
		turnin A Valiant Of Thunder Bluff##13694 |goto 76.2,24.6
		accept The Valiant's Charge##13720 |goto 76.2,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin A Valiant Of Undercity##13695 |goto 76.5,24.2
		accept The Valiant's Charge##13721 |goto 76.5,24.2
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin A Valiant Of Silvermoon##13696 |goto 76.5,23.9
		accept The Valiant's Charge##13722 |goto 76.5,23.9
		|only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13762 |goto 76.5,24.6 |or
		accept A Worthy Weapon##13763 |goto 76.5,24.6 |or
		accept The Edge Of Winter##13764 |goto 76.5,24.6 |or
		|only Orc
	step
		talk Akinos##33405
		accept A Valiant's Field Training##13765 |goto 76.5,24.5
		|only Orc
	step
		talk Morah Worgsister##33544
		accept The Grand Melee##13767 |goto 76.4,24.6
		accept At The Enemy's Gates##13856 |goto 76.4,24.6
		|only Orc
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		|tip Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills 61.2,50.3
		|only Orc
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13763 |goto Icecrown 69.1,76.2
		|only Orc
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight 93.2,26.1
		|only Orc
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest 54.5,74.9
		|only Orc
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord 42.2,19.7
		|only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13856 |goto Icecrown 48.9,71.4
		|only Orc
	step
		kill 15 Boneguard Footman##33438+ |q 13856/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13856/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13856/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Orc
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13856 |goto 49.1,71.4
		|only Orc
	step
		kill 10 Converted Hero##32255+ |q 13765/1 |goto 44.3,54.2
		|only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Orgrimmar Wolf##33799
		Mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.5,24.0
		|only Orc
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.3,26.0
		|only Orc
	step
		talk Mokra the Skullcrusher##33361
		turnin A Blade Fit For A Champion##13762 |goto 76.5,24.6 |only if not completedq(13762)
		turnin A Worthy Weapon##13763 |goto 76.5,24.6 |only if not completedq(13763)
		turnin The Edge Of Winter##13764 |goto 76.5,24.6 |only if not completedq(13764)
		|only Orc
	step
		talk Akinos##33405
		turnin A Valiant's Field Training##13765 |goto 76.5,24.5
		|only Orc
	step
		talk Morah Worgsister##33544
		turnin The Grand Melee##13767 |goto 76.4,24.6
		turnin At The Enemy's Gates##13856 |goto 76.4,24.6
		|only Orc
	step
		talk Zul'tore##33372
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13768 |goto 76.0,24.5 |or
		accept A Worthy Weapon##13769 |goto 76.0,24.5 |or
		accept The Edge Of Winter##13770 |goto 76.0,24.5 |or
		|only Troll
	step
		talk Shadow Hunter Mezil-kree##33540
		accept A Valiant's Field Training##13771 |goto 76.0,24.6
		|only Troll
	step
		talk Gahju##33545
		accept The Grand Melee##13772 |goto 75.9,24.4
		accept At The Enemy's Gates##13857 |goto 75.9,24.4
		|only Troll
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		|tip Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills 61.2,50.3
		|only Troll
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13769 |goto Icecrown 69.1,76.2
		|only Troll
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight 93.2,26.1
		|only Troll
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest 54.5,74.9
		|only Troll
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord 42.2,19.7
		|only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13857 |goto Icecrown 48.9,71.4
		|only Troll
	step
		kill 15 Boneguard Footman##33438+ |q 13857/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13857/2
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13857/3
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Troll
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13857 |goto 49.1,71.4
		|only Troll
	step
		kill 10 Converted Hero##32255+ |q 13771/1 |goto 44.3,54.2
		|only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Darkspear Raptor##33796
		Mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.6,23.8
		|only Troll
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.3,26.0
		|only Troll
	step
		talk Zul'tore##33372
		turnin A Blade Fit For A Champion##13768 |goto 76.0,24.5 |only if not completedq(13768)
		turnin A Worthy Weapon##13769 |goto 76.0,24.5 |only if not completedq(13769)
		turnin The Edge Of Winter##13770 |goto 76.0,24.5 |only if not completedq(13770)
		|only Troll
	step
		talk Shadow Hunter Mezil-kree##33540
		turnin A Valiant's Field Training##13771 |goto 76.0,24.6
		|only Troll
	step
		talk Gahju##33545
		turnin The Grand Melee##13772 |goto 75.9,24.4
		turnin At The Enemy's Gates##13857 |goto 75.9,24.4
		|only Troll
	step
		talk Runok Wildmane##33403
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13773 |goto 76.2,24.6 |or
		accept A Worthy Weapon##13774 |goto 76.2,24.6 |or
		accept The Edge Of Winter##13775 |goto 76.2,24.6 |or
		|only Tauren
	step
		talk Dern Ragetotem##33539
		accept A Valiant's Field Training##13776 |goto 76.3,24.7
		|only Tauren
	step
		talk Anka Clawhoof##33549
		accept The Grand Melee##13777 |goto 76.1,24.6
		accept At The Enemy's Gates##13858 |goto 76.1,24.6
		|only Tauren
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		|tip Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills 61.2,50.3
		|only Tauren
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13774 |goto Icecrown 69.1,76.2
		|only Tauren
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight 93.2,26.1
		|only Tauren
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest 54.5,74.9
		|only Tauren
	step
		Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord 42.2,19.7
		|only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13858 |goto Icecrown 48.9,71.4
		|only Tauren
	step
		kill 15 Boneguard Footman##33438+ |q 13858/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13858/2
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13858/3
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Tauren
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13858 |goto 49.1,71.4
		|only Tauren
	step
		kill 10 Converted Hero##32255+ |q 13776/1 |goto 44.3,54.2
		|only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Thunder Bluff Kodo##33792
		Mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.5,24.3
		|only Tauren
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.3,26.0
		|only Tauren
	step
		talk Runok Wildmane##33403
		turnin A Blade Fit For A Champion##13773 |goto 76.2,24.6 |only if not completedq(13773)
		turnin A Worthy Weapon##13774 |goto 76.2,24.6 |only if not completedq(13774)
		turnin The Edge Of Winter##13775 |goto 76.2,24.6 |only if not completedq(13775)
		|only Tauren
	step
		talk Dern Ragetotem##33539
		turnin A Valiant's Field Training##13776 |goto 76.3,24.7
		|only Tauren
	step
		talk Anka Clawhoof##33549
		turnin The Grand Melee##13777
		turnin At The Enemy's Gates##13858 |goto 76.1,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13778 |goto 76.5,24.2 |or
		accept A Worthy Weapon##13779 |goto 76.5,24.2 |or
		accept The Edge Of Winter##13780 |goto 76.5,24.2 |or
		|only Scourge
	step
		talk Sarah Chalke##33541
		accept A Valiant's Field Training##13781 |goto 76.6,24.1
		|only Scourge
	step
		talk Handler Dretch##33547
		accept The Grand Melee##13782
		accept At The Enemy's Gates##13860 |goto 76.5,24.3
		|only Scourge
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills 61.2,50.3
		|only Scourge
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13779 |goto Icecrown 69.1,76.2
		|only Scourge
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##194238
		collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight 93.2,26.1
		|only Scourge
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest 54.5,74.9
		|only Scourge
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord 42.2,19.7
		|only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13860 |goto Icecrown 48.9,71.4
		|only Scourge
	step
		kill 15 Boneguard Footman##33438+ |q 13860/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13860/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13860/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		|only Scourge
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13860 |goto 49.1,71.4
		|only Scourge
	step
		kill 10 Converted Hero##32255+ |q 13781/1 |goto 44.3,54.2
		|only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.6,23.9
		|only Scourge
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.3,26.0
		|only Scourge
	step
		talk Deathstalker Visceri##33373
		turnin A Blade Fit For A Champion##13778 |only if not completedq(13778)
		turnin A Worthy Weapon##13779 |only if not completedq(13779)
		turnin The Edge Of Winter##13780 |goto 76.5,24.2 |only if not completedq(13780)
		|only Scourge
	step
		talk Sarah Chalke##33541
		turnin A Valiant's Field Training##13781 |goto 76.6,24.1
		|only Scourge
	step
		talk Handler Dretch##33547
		turnin The Grand Melee##13782 |goto 76.5,24.3
		turnin At The Enemy's Gates##13860 |goto 76.5,24.3
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		|tip You will only be able to accept one of these daily quests per day:
		accept A Blade Fit For A Champion##13783 |goto 76.5,23.9 |or
		accept A Worthy Weapon##13784 |goto 76.5,23.9 |or
		accept The Edge Of Winter##13785 |goto 76.5,23.9 |or
		|only BloodElf
	step
		talk Kethiel Sunlance##33538
		accept A Valiant's Field Training##13786 |goto 76.4,23.8
		|only BloodElf
	step
		talk Aneera Thuron##33548
		accept The Grand Melee##13787 |goto 76.5,23.9
		accept At The Enemy's Gates##13859 |goto 76.5,23.9
		|only BloodElf
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		clicknpc Lake Frog##33224
		Use the "/kiss" emote on the Lake Frogs.
		|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills 61.2,50.3
		|only BloodElf
	step
		click Winter Hyacinth##194213
		collect 4 Winter Hyacinth##45000 |q 13784 |goto Icecrown 69.1,76.2
		|only BloodElf
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		click Blade of Drak'Mar##194238
		|tip Listen to the Maiden of Drak'Mar.
		collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight 93.2,26.1
		|only BloodElf
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest 54.5,74.9
		|only BloodElf
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord 42.2,19.7
		|only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Campaign Warhorse##34125
		Mount the Stabled Campaign Warhorse |invehicle |q 13859 |goto Icecrown 48.9,71.4
		|only BloodElf
	step
		kill 15 Boneguard Footman##33438+ |q 13859/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse.
		kill 10 Boneguard Scout##33550+ |q 13859/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13859/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.
		|tip Also, keep your shield maxed at 3 by using your Defend ability.
		|tip If they get too close, you can use your Thrust ability to do a good amount of damage.
		only BloodElf
	step
		Click the red arrow on your vehicle hotbar to stop riding the horse |outvehicle |q 13859 |goto 49.1,71.4
		|only BloodElf
	step
		kill 10 Converted Hero##32255 |q 13786/1 |goto 44.3,54.2
		|only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Silvermoon Hawkstrider##33791
		Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.5,24.1
		|only BloodElf
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		|tip Fight and defeat them.
		|tip Use your Defend ability to keep your shield maxed at 3 charges.
		|tip Use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.
		|tip If they get close, use your Thrust ability. Then, use your Charge ability when they run away to get into Charge range.
		collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.3,26.0
		|only BloodElf
	step
		talk Eressea Dawnsinger##33379
		turnin A Blade Fit For A Champion##13783 |goto 76.5,23.9 |only if not completedq(13783)
		turnin A Worthy Weapon##13784 |goto 76.5,23.9 |only if not completedq(13784)
		turnin The Edge Of Winter##13785 |goto 76.5,23.9 |only if not completedq(13785)
		|only BloodElf
	step
		talk Kethiel Sunlance##33538
		turnin A Valiant's Field Training##13786 |goto 76.4,23.8
		|only BloodElf
	step
		talk Aneera Thuron##33548
		turnin The Grand Melee##13787 |goto 76.5,23.9
		turnin At The Enemy's Gates##13859 |goto 76.5,23.9
		|only BloodElf
	step
		Make sure you have 25 Valiant Seals:
		collect 25 Valiant's Seal##44987 |q 13697/1 |only Orc
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc
		collect 25 Valiant's Seal##44987 |q 13719/1 |only Troll
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
		collect 25 Valiant's Seal##44987 |q 13720/1 |only Tauren
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
		collect 25 Valiant's Seal##44987 |q 13721/1 |only Scourge
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
		collect 25 Valiant's Seal##44987 |q 13722/1 |only BloodElf
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		turnin The Valiant's Charge##13697 |goto 76.5,24.6
		accept The Valiant's Challenge##13726 |goto 76.5,24.6
		|only Orc
	step
		talk Zul'tore##33372
		turnin The Valiant's Charge##13719 |goto 76.0,24.5
		accept The Valiant's Challenge##13727 |goto 76.0,24.5
		|only Troll
	step
		talk Runok Wildmane##33403
		turnin The Valiant's Charge##13720 |goto 76.2,24.6
		accept The Valiant's Challenge##13728 |goto 76.2,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin The Valiant's Charge##13721 |goto 76.5,24.2
		accept The Valiant's Challenge##13729 |goto 76.5,24.2
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin The Valiant's Charge##13722 |goto 76.5,23.9
		accept The Valiant's Challenge##13731 |goto 76.5,23.9
		|only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Orgrimmar Wolf##33799
		Mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.2,22.5
		|only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Darkspear Raptor##33796
		Mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.0,22.5
		|only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Thunder Bluff Kodo##33792
		Mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 71.9,22.4
		|only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Forsaken Warhorse##33798
		Mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.1,22.4
		|only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		clicknpc Stabled Silvermoon Hawkstrider##33791
		Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.2,22.4
		|only BloodElf
	step
		talk Squire Danny##33518
		Tell him: "_I am ready to fight!_"
		kill Argent Valiant##33448
		|tip Use the abilities on your hotbar to defeat the Argent Valiant.
		|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.
		|tip Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.
		|tip When his shield is down, use your Charge ability on him. Keep repeating this process until he is defeated.
		Defeat the Argent Valiant |q 13726/1 |goto 68.6,21.0 |only Orc
		Defeat the Argent Valiant |q 13727/1 |goto 68.6,21.0 |only Troll
		Defeat the Argent Valiant |q 13728/1 |goto 68.6,21.0 |only Tauren
		Defeat the Argent Valiant |q 13729/1 |goto 68.6,21.0 |only Scourge
		Defeat the Argent Valiant |q 13731/1 |goto 68.6,21.0 |only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		turnin The Valiant's Challenge##13726 |goto 76.5,24.6
		accept A Champion Rises##13736 |goto 76.5,24.6
		|only Orc
	step
		talk Zul'tore##33372
		turnin The Valiant's Challenge##13727 |goto 76.0,24.5
		accept A Champion Rises##13737 |goto 76.0,24.5
		|only Troll
	step
		talk Runok Wildmane##33403
		turnin The Valiant's Challenge##13728 |goto 76.2,24.6
		accept A Champion Rises##13738 |goto 76.2,24.6
		|only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin The Valiant's Challenge##13729 |goto 76.5,24.2
		accept A Champion Rises##13739 |goto 76.5,24.2
		|only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin The Valiant's Challenge##13731 |goto 76.5,23.9
		accept A Champion Rises##13740 |goto 76.5,23.9
		|only BloodElf
	step
		talk Justicar Mariel Trueheart##33817
		turnin A Champion Rises##13736 |goto 69.7,22.9 |only Orc
		turnin A Champion Rises##13737 |goto 69.7,22.9 |only Troll
		turnin A Champion Rises##13738 |goto 69.7,22.9 |only Tauren
		turnin A Champion Rises##13739 |goto 69.7,22.9 |only Scourge
		turnin A Champion Rises##13740 |goto 69.7,22.9 |only BloodElf
		accept The Scourgebane##13795 |goto 69.7,22.9 |only DeathKnight
		accept Eadric the Pure##13794 |goto 69.7,22.9 |only if not DeathKnight
	step
		talk Crok Scourgebane##33762
		turnin The Scourgebane##13795 |goto 73.8,20.1
		|only DeathKnight
	step
		talk Eadric the Pure##33759
		turnin Eadric the Pure##13794 |goto 70.0,23.4
		|only if not DeathKnight
]])

------------------------
----- Baradin Hold -----
------------------------



---------------------------
----- Cooking Dailies -----
---------------------------

ZygorGuidesViewer:RegisterInclude("Org_Cooking_Dailies",[[
	step
	label "start"
		talk Marogg##42506
		|tip You will only be able to complete 1 of the following quests per day.
		accept Careful, This Fruit Bites Back##26227 |goto Orgrimmar/1 56.53,62.48 |or
		accept Crawfish Creole##26226 |goto 56.53,62.48 |or
		accept Even Thieves Get Hungry##26235 |goto 56.53,62.48 |or
		accept Everything Is Better with Bacon##26220 |goto 56.53,62.48 |or
		accept Stealing From Our Own##26234 |goto 56.53,62.48 |only Troll |or
		accept Stealing From Our Own##26233 |goto 56.53,62.48 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren |or
	step
		click Prickly Pear Fruit##203969
		|tip They look like smaller cactus plants with red round fruit on top of them.
		|tip They are usually found next to walls all around Orgrimmar.
		collect 8 Prickly Pear Fruit##57766 |q 26227/1 |goto 52.81,62.11
		|only if haveq(26227)
	stickystart "hordeinfant"
	step
		clicknpc Muddy Crawfish##42548+
		|tip They look like tiny lobsters in the water around this area.
		collect 10 Muddy Crawfish##57765 |q 26226/1 |goto 65.26,43.47
		|only if haveq(26226)
	step
	label "hordeinfant"
		kill Orgrimmar Thief##42594+
		|tip They are stealthed near wooden crates.
		|tip They are all around Orgrimmar, so you can walk around and find them everywhere.
		|tip They won't be next to every pile of crates, so you'll need to search for them.
		collect 3 Horde Infantry Rations##57879 |q 26235/1 |goto 65.77,39.62
		|only if haveq(26235)
	step
		Kill enemies around this area
		collect 6 Swine Belly##57758 |q 26220/1 |goto Durotar/0 48.71,16.00
		|only if haveq(26220)
	step
		click Barrels of Kezan Rice##9664+
		|tip They look like light brown wooden barrels around this area.
		collect 6 Barrel of Kezan Rice##57878 |q 26234/1 |goto Orgrimmar/1 35.11,69.70
		|only Troll
		|only if haveq(26234)
	step
		click Barrels of Darkspear Rice##6037+
		|tip They looks like dark brown wooden barrels around this area.
		collect 6 Barrel of Darkspear Rice##57877 |q 26233/1 |goto Orgrimmar/1 35.11,69.70
		|only Orc,Scourge,Tauren,BloodElf,Goblin
		|only if haveq(26233)
	step
		talk Marogg##42506
		|tip You will only be able to complete 1 of the following quests per day.
		turnin Careful, This Fruit Bites Back##26227 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26227)
		turnin Crawfish Creole##26226 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26226)
		turnin Even Thieves Get Hungry##26235 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26235)
		turnin Everything Is Better with Bacon##26220 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26220)
		turnin Stealing From Our Own##26234 |goto Orgrimmar/1 56.53,62.48 |only Troll |only if haveq(26234)
		turnin Stealing From Our Own##26233 |goto Orgrimmar/1 56.53,62.48 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren |only if haveq(26233)
]])

ZygorGuidesViewer:RegisterInclude("TB_Cooking_Dailies",[[
	step
	label "dailies"
		talk Aska Mistrunner##3026
		accept Pining for Nuts##29358 |goto Thunder Bluff/0 50.72,53.11 |or
		accept "Magic" Mushrooms##29362 |goto 50.72,53.11 |or
		accept Mulgore Spice Bread##29363 |goto 50.72,53.11 |or
		accept Corn Mash##29364 |goto 50.72,53.11 |or
		accept Perfectly Pickled Portions##29365 |goto 50.72,53.11 |or
	step
		click Mulgore Pine Cone##208875
		|tip They look like sparkling pine cones on the ground next to the base of moss trees in Thunder Bluff.
		_<Create a Cooking Fire>_
		use the Mulgore Pine Cones##69990
		collect 30 Pine Nut##69988 |q 29358/1 |goto 48.52,62.16
		|only if haveq(29358)
	step
		Enter the cave |goto 29.49,29.82 < 5
		click "Magic" Mushroom##208878
		|tip They look like pale grey mushrooms grouped in fours all around the cave.
		collect 6 "Magic" Mushroom##69994 |q 29362/1 |goto 26.16,22.18
		|only if haveq(29362)
	step
		talk Naal Mistrunner##3027
		buy 5 Simple Flour##30817 |q 29363 |goto 51.01,52.46
		buy 5 Mild Spices##2678 |q 29363 |goto 51.01,52.46
		|only if haveq(29363)
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Spice Bread>_
		collect 5 Spice Bread##30816 |q 29363/1
		|only if haveq(29363)
	step
		use the Mulgore Spices##69997
		collect 5 Fresh Mulgore Spice Bread##69996 |q 29363/1
		|only if haveq(29363)
	step
		Click the bowls of Corn Kernels
		|tip They look like little bowls of yellow corn in almost all the huts in Thunderbluff.
		Grind #6# Bowls of Corn Kernels |q 29364/1 |goto 52.00,45.53
		|only if haveq(29364)
	step
		collect Succulent Sweet Potatoes##70000 |q 29365/1 |goto 47.96,43.08
		|tip They look like baskets in this little hut.
		|only if haveq(29365)
	step
		collect Savory Spices##70001 |q 29365/2 |goto 49.71,41.54
		|tip It looks like a bag with weeds in it
		|only if haveq(29365)
	step
		collect Fresh-Caught Fish##70002 |q 29365/3 |goto 56.01,44.47
		|tip It looks like a rope hanging down with a bunch of fish on it inside of the tent.
		|only if haveq(29365)
	step
		collect Fresh-Hunted Fowl##70003 |q 29365/4 |goto 51.02,47.12
		|tip It looks like a bird hanging upside down at the side of the tent.
		|only if haveq(29365)
	step
		talk Aska Mistrunner##3026
		turnin Pining for Nuts##29358 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29358)
		turnin "Magic" Mushrooms##29362 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29362)
		turnin Mulgore Spice Bread##29363 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29363)
		turnin Corn Mash##29364 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29364)
		turnin Perfectly Pickled Portions##29365 |goto Thunder Bluff 50.72,53.11 |or |only if haveq(29365)
]])

ZygorGuidesViewer:RegisterInclude("UC_Cooking_Dailies",[[
	step
		talk Eunice Burch##4552
		accept Roach Coach##29334 |goto Undercity/0 62.15,44.89 |or
		accept Escargot A Go-Go##29333 |goto 62.15,44.89 |or
		accept Would You Like Some Flies With That?##29360 |goto 62.15,44.89 |or
		accept Lily, Oh Lily##29332 |goto 62.15,44.89 |or
		accept Fungus Among Us##29315 |goto 62.15,44.89 |or
	step
		click Cockrach Cabin##336+
		|tip Look in corners and behind crates.
		|tip They are hidden all around Undercity.
		collect 20 Plump Cockroach##69919 |q 29334/1 |goto 61.28,34.06
		|only if haveq(29334)
	step
		click Fly Covered "Meat"##208876
		|tip You will find the fly meat around the wagons in this area.
		collect 25 Bloated Fly##69989 |q 29360/1 |goto 69.26,52.38
		You can find more around [57.08,17.01]
		|only if haveq(29360)
	step
		clicknpc Brightwater Snail##53526+
		|tip They are underneath the water around the area.
		collect 8 Brightwater Snail##69918 |q 29333/1 |goto Tirisfal Glades/0 70.72,39.55
		|only if haveq(29333)
	step
		click Sewer Cap##208816
		|tip They spawn near walls around this area.
		collect 12 Sewer Cap##208816 |q 29315/1 |goto Undercity/0 36.24,30.34
		|only if haveq(29315)
	step
		click Stillwater Lily##208833
		|tip They are floating along the edge of the lake around this area.
		collect 10 Stillwater Lily##69917 |q 29332/1 |goto Tirisfal Glades/0 50.86,55.57
		|only if haveq(29332)
	step
		talk Chef Audrey##53528
		turnin Roach Coach##29334 |goto Undercity/0 62.68,35.51
		--|only if haveq(29334)
	step
		talk Eunice Burch##4552
		turnin Escargot A Go-Go##29333 |goto 62.15,44.89 |only if haveq(29333)
		turnin Would You Like Some Flies With That?##29360 |goto 62.15,44.89 |only if haveq(29360)
		turnin Fungus Among Us##29315 |goto 62.15,44.89 |only if haveq(29315)
		turnin Lily, Oh Lily##29332 |goto 62.15,44.89 |only if haveq(29332)
]])

ZygorGuidesViewer:RegisterInclude("H_Shattrath_Cooking_Dailies",[[
	step
		talk The Rokk##24393
		You will only be able to accept one of these daily quests per day
		accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6 |next "soup"
		accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6 |next "stew"
		accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6 |next "mana"
		accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6 |next "tasty"
	step
	label "soup"
		talk Uriku##20096
		buy Recipe: Roasted Clefthoof##27691 |n
		use Recipe: Roasted Clefthoof##27691
		learn Roasted Clefthoof##33287 |q 11381 |goto Nagrand 56.2,73.3
	step
		kill Clefthoof##18205+, Clefthoof Calf##19183+
		collect 4 Clefthoof Meat##27678 |q 11381 |goto Nagrand 58.5,46.8
		You can find more Clefthooves at  45.5,72.7
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Roasted Clefthoof##33287,Cooking,4 total |q 11381
	step
		use Cooking Pot##33851
		|tip Use your Cooking Pot to Cook up some Spiritual Soup.
		Cook a Spiritual Soup |q 11381/1 |goto 25.9,59.4
		|next "turnin"
	step
	label "stew"
		talk Xerintha Ravenoak##20916
		buy Recipe: Mok'Nathal Shortribs##31675 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##31672 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		talk Xerintha Ravenoak##20916
		buy Recipe: Crunchy Serpent##31674 |n
		use Recipe: Mok'Nathal Shortribs##31674
		learn Crunchy Serpent##31673 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
		collect 4 Raptor Ribs##31670 |q 11379 |goto Blade's Edge Mountains 49.6,46.2
	step
		kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
		collect 1 Serpent Flesh##31671 |q 11379 |goto 68.2,63.2
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
	step
		kill Abyssal Flamebringer##19973+
		use Cooking Pot##33852
		|tip Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise.
		collect Demon Broiled Surprise##33848 |q 11379/1 |goto 29.0,84.5
		|next "turnin"
	step
	label "mana"
		click Mana Berry Bush##186729
		collect 15 Mana Berry##33849+ |q 11380/1 |goto Netherstorm 45.6,54.2
		|next "turnin"
	step
	label "tasty"
		talk Innkeeper Grika##18957
		buy Recipe: Warp Burger##27692 |n
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |q 11377 |goto Terokkar Forest 48.8,45.0
	step
		kill Blackwind Warp Chaser##23219+
		collect 3 Warped Flesh##27681 |q 11377 |goto 64.0,83.5
	step
		kill Monstrous Kaliri##23051+
		|tip They fly around in the sky close to the tree outposts and bridges.
		collect Giant Kaliri Wing##33838 |q 11377 |goto 67.6,74.7
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Warp Burger##33288,Cooking,3 total |q 11377 |goto 25.9,59.5
		use Cooking Pot##33837
		|tip Use your Cooking Pot to Cook up some Kaliri Stew.
		create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
		|next "turnin"
	step
	label "turnin"
		talk The Rokk##24393
		turnin Soup for the Soul##11381 |goto Shattrath City 61.8,15.6
		turnin Super Hot Stew##11379 |goto Shattrath City 61.8,15.6
		turnin Manalicious##11380 |goto Shattrath City 61.8,15.6
		turnin Revenge is Tasty##11377 |goto Shattrath City 61.8,15.6
]])

ZygorGuidesViewer:RegisterInclude("H_Dalaran_Cooking_Dailies",[[
		Enter the building |goto Dalaran/1 63.75,32.77 < 5 |walk
		talk Awilo Lon'gomba##29631
		|tip Inside the building.
		accept Cheese for Glowergold##13115 |or |goto 69.93,38.99
		accept Convention at the Legerdemain##13113 |or |goto 69.93,38.99
		accept Infused Mushroom Meatloaf##13112 |or |goto 69.93,38.99
		accept Mustard Dogs!##13116 |or |goto 69.93,38.99
		accept Sewer Stew##13114 |or |goto 69.93,38.99
		|tip You will only be able to accept and turn in 1 of these 5 daily quests per day.
	step
		Enter the building |goto 53.30,33.32 < 5 |walk
		click Aged Dalaran Limburger##192825
		|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		collect 1 Aged Dalaran Limburger##43137 |q 13115 |goto 54.63,31.56
	step
		click Half Full Glass of Wine##192824
		|tip Inside the building.
		|tip They look like small blue-ish wine glasses sitting on tables and on the ground inside this building.
		|tip They spawn in random locations.
		collect 6 Half Full Dalaran Wine Glass##43138 |q 13115 |goto 54.55,33.95
		You can find more Half Full Glasses of Wine inside the building at [49.33,39.36]
	step
		use the Empty Cheese Serving Platter##43139
		collect 1 Wine and Cheese Platter##43136 |q 13115/1
	step
		click Full Jug of Wine##192823
		|tip They look like small blue-ish green jugs sitting on the ground inside this building.
		|tip They spawn in random locations.
		collect 1 Jug of Wine##43128 |q 13113/2 |goto 54.96,30.79
	step
		Kill enemies around this area
		collect 4 Chilled Meat##43013 |q 13113 |goto Dragonblight/0 30.01,49.81
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 4 Northern Stews>_
		Reach Level 25 Northrend Cooking |skill Northrend Cooking,25
		collect 4 Northern Stew##34747 |q 13113/1
	step
		Jump into the Well |goto Dalaran/1 48.36,32.50
		click Infused Mushroom##192818
		|tip They look like grouped up blue mushrooms on the ground.
		collect 4 Infused Mushroom##43100 |q 13112 |goto Dalaran/1 51.41,41.78
	step
		Run up the stairs |goto 51.45,38.37 < 5 |walk
		Run up the ramp |goto 64.42,48.37 < 5 |walk
		Leave the Dalaran Sewers |goto 65.45,46.99 < 5 |walk
		Kill enemies around this area
		collect 2 Chilled Meat##43013 |q 13112 |goto Dragonblight/0 30.01,49.81
	step
		_<Create a Cooking Fire>_
		use the Meatloaf Pan##43101
		collect 1 Infused Mushroom Meatloaf##43099 |q 13112/1
	step
		click Wild Mustard##192827
		|tip They look like small bushy yellow flowers on the ground around this area.
		|tip They spawn randomly in grassy areas.
		collect 4 Wild Mustard##43143 |q 13116 |goto Dalaran/1 72.21,38.68
		You can find more around [50.68,50.88]
		You can find more around [33.74,39.57]
	step
		Kill Wooly Rhino enemies around this area
		collect 4 Rhino Meat##43012 |q 13116 |goto Borean Tundra/0 46.22,43.98
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 4 Rhino Dogs>_
		collect 4 Rhino Dogs##34752 |q 13116
	step
		use the Empty Picnic Basket##43142
		collect 1 Mustard Dog Basket##43144 |q 13116/1
	step
		click Crystalsong Carrots##192828
		|tip They look like carrots sticking out of the ground at the base of trees around this area, underneath Dalaran.
		|tip They spawn in random locations around this area.
		collect 4 Crystalsong Carrot##43148 |q 13114 |goto Crystalsong Forest 26.92,45.46
	step
		Kill enemies around this area
		collect 4 Chilled Meat##43013 |q 13114 |goto Dragonblight/0 30.01,49.81
	step
		_<Create a Cooking Fire>_
		use the Stew Cookpot##43147
		collect 1 Vegetable Stew##43149 |q 13114/1
	step
		Enter the building |goto Dalaran/1 36.80,29.78 < 5 |walk
		talk Ranid Glowergold##28718
		turnin Cheese for Glowergold##13115 |goto 36.62,27.81
	step
		Enter the building |goto 50.29,37.62 < 5 |walk
		talk Arille Azuregaze##29049
		turnin Convention at the Legerdemain##13113 |goto 48.39,37.46
	step
		Enter the building |goto 48.99,56.99 < 5 |walk
		talk Orton Bennet##29527
		turnin Infused Mushroom Meatloaf##13112 |goto 52.33,55.59
	step
		talk Archmage Pentarus##28160
		turnin Mustard Dogs!##13116 |goto 68.54,41.99
	step
		Enter the Dalaran Sewers |goto 35.12,45.18 < 5 |walk
		talk Ajay Green##29532
		turnin Sewer Stew##13114 |goto Dalaran/1 35.44,57.62
]])

---------------------
----- Firelands -----
---------------------

ZygorGuidesViewer:RegisterInclude("H_Firelands_PreQuests",[[
	step
		ding 30
	step
		Click the Warchief's Command Board
		|tip It looks like a wooden wall with a bunch of paper notes on it.
		accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar 49.7,76.5
		You will automatically accept a quest by entering Orgrimmar
		accept A Personal Summons##28790 |goto Orgrimmar 49.7,76.5
	step
		talk Farseer Krogar##45244
		turnin A Personal Summons##28790 |goto 50.5,38.4
		accept The Eye of the Storm##28805 |goto 50.5,38.4
	step
		Click the Waters of Farseeing
		|tip It looks like a small bowl with spinning bright blue water in it.
		Witness the Vision of the Farseer |q 28805/1 |goto 50.8,37.8
	step
		talk Farseer Krogar##45244
		turnin The Eye of the Storm##28805 |goto 50.5,38.4
	step
		talk Cenarion Emissary Blackhoof##15188
		Ask him to please send you to Moonglade |goto 50.5,38.4 < 5
		You will teleport to Moonglade |goto Moonglade 45.1,43.1 < 5
		talk Emissary Windsong##39865
		turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade 45.5,44.9
		accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
	step
		talk Sebelia##40843
		home Nordrassil |goto Mount Hyjal 63.1,24.1
	step
		talk Ysera##40928
		turnin As Hyjal Burns##25316 |goto 62.0,24.9
		accept Protect the World Tree##25317 |goto 62.0,24.9
	step
		talk Anren Shadowseeker##39925
		accept The Earth Rises##25460 |goto 64.0,22.6
	step
		talk Tholo Whitehoof##40278
		accept Inciting the Elements##25370 |goto 64.0,22.5
	step
		kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto 65.8,20.8
		Click Juniper Berries
		|tip They look like small green bushes with small red berries on them, at the base of trees around this area.
		collect 4 Juniper Berries##53009 |n
		Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
		|tip They look like small blue flying dragons around this area.
		Follow the Faerie Dragons to find Twilight Inciters
		kill 4 Twilight Inciter##39926 |q 25370/1 |goto 65.8,20.8
	step
		talk Tholo Whitehoof##40278
		turnin Inciting the Elements##25370 |goto 64.0,22.5
		accept Flames from Above##25574 |goto 64.0,22.5
	step
		talk Anren Shadowseeker##39925
		turnin The Earth Rises##25460 |goto 64.0,22.6
	step
		Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
		Burn the Infiltrators' Encampment |q 25574/1 |goto 55.9,15.8
	step
		talk Tholo Whitehoof##40278
		turnin Flames from Above##25574 |goto 64.0,22.5
	step
		talk Malfurion Stormrage##15362
		turnin Protect the World Tree##25317 |goto 47.7,35.5
		accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept The Flameseer's Staff##25472 |goto 47.7,35.5
	step
		kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto 47.8,29.4
		kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto 47.8,29.4
		Click Charred Stagg Fragments
		|tip They look like small white pieces on the ground around this area.
		collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.8,29.4
	step
		talk Malfurion Stormrage##15362
		turnin War on the Twilight's Hammer##25319
		turnin The Flameseer's Staff##25472
		accept Flamebreaker##25323 |goto 47.7,35.5
	step
		Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
		kill 30 Unbound Flame Spirit |q 25323/1 |goto 44.7,33.2
		You can find more Blazebound Revenants at the following location |goto 48.5,29.2
	step
		talk Malfurion Stormrage##15362
		turnin Flamebreaker##25323 |goto 47.7,35.5
		accept The Return of Baron Geddon##25464 |goto 47.7,35.5
	step
		Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
		|tip He's a big fire elemental standing in the middle of this crater.
		Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!" |goto 44.1,27.0
	step
		talk Malfurion Stormrage##15362
		turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept Emerald Allies##25430 |goto 47.7,35.5
	step
		talk Alysra##38917
		turnin Emerald Allies##25430 |goto 48.4,19.0
		accept The Captured Scout##25320 |goto 48.4,19.0
	step
		talk Scout Larandia##40096
		turnin The Captured Scout##25320 |goto 44.5,18.9
		accept Twilight Captivity##25321 |goto 44.5,18.9
	step
		kill Twilight Overseer##40123
		collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.4,20.7
	step
		talk Scout Larandia##40096
		turnin Twilight Captivity##25321 |goto 44.5,18.9
		accept Return to Alysra##25424 |goto 44.5,18.9
	step
		talk Alysra##38917
		turnin Return to Alysra##25424 |goto 48.4,19.0
		accept A Prisoner of Interest##25324 |goto 48.4,19.0
	step
		_Enter_ the cave |goto 52.6,17.3 < 5
		Follow the path in the cave
		talk Captain Saynna Stormrunner##40139
		turnin A Prisoner of Interest##25324 |goto 56.8,18.8
		accept Through the Dream##25325 |goto 56.8,18.8
	step
		Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.6,17.3
	step
		talk Alysra##40178
		turnin Through the Dream##25325 |goto 52.2,17.4
		accept Return to Nordrassil##25578 |goto 52.2,17.4
	step
		talk Ysera##40928
		turnin Return to Nordrassil##25578 |goto 62.0,24.9
		accept The Return of the Ancients##25584 |goto 62.0,24.9
	step
		talk Oomla Whitehorn##39429
		turnin The Return of the Ancients##25584 |goto 35.7,19.4
		accept Harrying the Hunters##25255 |goto 35.7,19.4
	step
		talk Jadi Falaryn##39427
		accept End of the Supply Line##25233 |goto 35.8,19.7
		accept In the Rear With the Gear##25234 |goto 35.8,19.7
	step
		kill 6 Twilight Hunter##39437 |q 25255/1 |goto 34.6,24.5
		kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 34.6,24.5
		|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
		Click Twilight Supplies
		|tip The Twilight Slaves are carrying them. You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
		collect 36 Twilight Supplies##52568 |q 25234/1 |goto 34.6,24.5
	step
		talk Jadi Falaryn##39427
		turnin End of the Supply Line##25233 |goto 35.8,19.7
		turnin In the Rear With the Gear##25234 |goto 35.8,19.7
	step
		talk Oomla Whitehorn##39429
		turnin Harrying the Hunters##25255 |goto 35.7,19.4
		accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
	step
		talk Takrik Ragehowl##39432
		turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
		accept Howling Mad##25270 |goto 30.1,31.7
	step
		kill Lycanthoth Vandal##39445+
		collect 6 Polluted Incense##52658 |q 25270/1 |goto 29.0,31.4
	step
		talk Takrik Ragehowl##39432
		turnin Howling Mad##25270 |goto 30.1,31.7
		accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
	step
		Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
		|tip Inside the cave.
		kill Lycanthoth##39446 |q 25272/1 |goto 32.4,37.3
	step
		talk Spirit of Lo'Gosh##39622
		turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
	step
		talk Spirit of Lo'Gosh##39622
		accept The Shrine Reclaimed##25279 |goto 29.6,29.3
	step
		talk Takrik Ragehowl##39432
		turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
		accept Cleaning House##25277 |goto 28.4,29.9
	step
		talk Royce Duskwhisper##39435
		accept The Eye of Twilight##25300 |goto 28.3,30.0
	step
		talk Rio Duran##39434
		accept From the Mouth of Madness##25297 |goto 28.2,29.9
	step
		Click a Bitterblossom
		|tip They look like purple flowers around this small island.
		collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.1
	step
		Click a Stonebloom
		|tip They look like piles of brown-ish bags on the ground around this area.
		collect Stonebloom##52726 |q 25297/1 |goto 26.5,35.0
	step
		Click the Eye of Twilight
		|tip It looks like a glowing purple ball in a metal rod with a hook on it.
		turnin The Eye of Twilight##25300 |goto 27.2,35.2
		accept Mastering Puppets##25301 |goto 27.2,35.2
	step
		Click a Darkflame Ember
		|tip They are purple glowing coals sitting in a brazier.
		collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
	step
		Click the Twilight Cauldron
		|tip It's a metal pot with blue smoke coming out of it.
		turnin From the Mouth of Madness##25297 |goto 28.4,36.5
		accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.5
	step
		_Enter_ the cave |goto 26.9,36.3 < 5
		talk Kristoff Manheim##39797
		accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
		|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
	step
		Click Gar'gol's Personal Treasure Chest
		|tip It's a small metal chest sitting on a small stone mound.
		collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
	step
		Click The Twilight Apocrypha
		|tip It's an open book layin on a wooden crate at the very back of the cave.
		turnin Mastering Puppets##25301 |goto 25.8,41.6
		accept Elementary!##25303 |goto 25.8,41.6
	stickystart "hovelbrute"
	step
		Click the Crucible of Fire
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
	step
		Click the Crucible of Earth
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Earth |q 25303/1 |goto 25.6,41.7
	step
		Click the Crucible of Air
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
	step
		Click the Crucible of Water
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
	step
		Click The Twilight Apocrypha
		|tip It's an open book layin on a wooden crate at the very back of the cave.
		turnin Elementary!##25303 |goto 25.8,41.6
		accept Return to Duskwhisper##25312 |goto 25.8,41.6
	step
	label "hovelbrute"
		kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
		Slay 8 Minions of Gar'gol |q 25277/1
		talk Twilight Servitor##39644 |goto 26.7,39.2
		Administor the drought
		Free 8 Twilight Servitors |q 25298/1
	step
		talk Kristoff Manheim##39797
		turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
		accept Get Me Outta Here!##25332 |goto 27.2,40.8
	step
		Leave the cave |goto 27.1,36.0 < 10
		Escort Kristoff Out |q 25332/1
	step
		talk Royce Duskwhisper##39435
		turnin Return to Duskwhisper##25312 |goto 28.6,30.2
		turnin Get Me Outta Here!##25332 |goto 28.6,30.2
	step
		talk Takrik Ragehowl##39432
		turnin Cleaning House##25277 |goto 28.4,29.9
		accept Sweeping the Shelf##25354 |goto 28.4,29.9
		accept Lightning in a Bottle##25355 |goto 28.4,29.9
	step
		talk Rio Duran##39434
		turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
	step
		kill 8 Twilight Stormcaller##39843 |q 25354/1 |goto 29.1,40.7
		kill 5 Howling Riftdweller##39844 |q 25354/2 |goto 29.1,40.7
		Click a Lightning Channel
		|tip They look like rods standing upright around this area, with lamps at the top of them.
		collect Charged Condenser Jar##52834 |q 25355/1 |goto 29.1,40.7
	step
		Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
		talk Spirit of Lo'Gosh##39622
		turnin Lightning in a Bottle##25355
		accept Into the Maw!##25617
	step
		_Go inside_ the portal |goto 25.8,41.5 < 5
		talk Jordan Olafson##40834
		turnin Into the Maw!##25617 |goto 26.3,41.9
		accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
		accept Crushing the Cores##25577 |goto 26.3,41.9
	step
		talk Yargra Blackscar##40837
		accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
	step
		kill 12 Dark Iron Laborer##40838 |q 25576/1 |goto 29.6,41.8
		kill Searing Guardian##40841+
		collect 8 Smoldering Core##55123 |n
		Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
		|tip They are small anvils sitting on the ground around this area.
		Destroy 8 Smoldering Cores |q 25577/1 |goto 29.6,41.8
		Click Twilight Arms Crates
		|tip They look like wooden boxes sitting on the ground around this area.
		Destroy 10 Twilight Arms Crates |q 25575/1 |goto 29.6,41.8
	step
		talk Yargra Blackscar##40837
		turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
	step
		talk Jordan Olafson##40834
		turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
		turnin Crushing the Cores##25577 |goto 26.3,41.9
		accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
	step
		kill Cindermaul##40844 |q 25599/1 |goto 30.7,41.7
		Click the Battered Stone Chest
		|tip It spawns after you kill Cindermaul.
		collect Tome of Openings##55136 |q 25599/2 |goto 30.7,41.7
	step
		talk Jordan Olafson##40834
		turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
		accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
	step
		Click the Portal Runes
		|tip They are brown metal plates on the ground on this small circular island in the lava.
		Lure Forgemaster Pyrendius onto the activated Portal Runes
		|tip This will weaken him and allow you to kill him.
		kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.9,46.3
	step
		talk Jordan Olafson##40834
		turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
		accept Return from the Firelands##25612 |goto 26.3,41.9
	step
		_Go inside_ the blue portal |goto 26.3,40.9 < 5
		talk Takrik Ragehowl##39432
		turnin Sweeping the Shelf##25354 |goto 28.4,29.9
		turnin Return from the Firelands##25612 |goto 28.4,29.9
	step
		talk Vision of Ysera##46987
		accept Aviana's Legacy##27874 |goto 27.0,62.7
	step
		talk Rio Duran##39434
		accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
	step
		talk Laina Nightsky##39927
		turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
		accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
		accept Disrupting the Rituals##25382 |goto 19.0,40.9
	step
		talk Mylune##39930
		accept Save the Wee Animals##25385 |goto 19.2,37.9
	step
		talk Matoclaw##39928
		accept If You're Not Against Us...##25404 |goto 19.0,37.0
	step
		talk Tyrus Blackhorn##39933
		Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
		Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
	step
		talk Tyrus Blackhorn##39933
		turnin If You're Not Against Us...##25404 |goto 22.3,44.9
		accept Seeds of Their Demise##25408 |goto 22.3,44.9
	step
		kill Wailing Weed##40066+
		collect 8 Bileberry##53102 |q 25408/1 |goto 21.1,42.6
	step
		talk Tyrus Blackhorn##39933
		turnin Seeds of Their Demise##25408 |goto 22.3,44.9
		accept A New Master##25411 |goto 22.3,44.9
	step
		kill Twilight Inferno Lord##39974
		Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
		Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.5,45.3
	step
		Next to you:
		talk Subjugated Inferno Lord##40093
		turnin A New Master##25411
		accept The Name Never Spoken##25412
	stickystart "frightanimal"
	step
		Click the Southern Firestone
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
	step
		Click the Central Firestone
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Central Firestone |q 25412/2 |goto 11.7,41.5
	step
		Click the Northern Firestone
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
	step
	label "frightanimal"
		kill 10 Raging Firestorm##39939 |q 25381/1
		kill 6 Twilight Inferno Lord##39974 |q 25382/1
		Click Panicked Bunnies and Terrified Squirrels
		|tip They are small and run around this area.
		collect 10 Frightened Animal##53060 |q 25385/1 |goto 11.3,38.2
	step
		talk Laina Nightsky##39927
		turnin Fighting Fire With ... Anything##25381
		turnin Disrupting the Rituals##25382 |goto 19.0,40.9
	step
		talk Mylune##39930
		turnin Save the Wee Animals##25385
		accept Oh, Deer!##25392 |goto 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin The Name Never Spoken##25412
		accept Black Heart of Flame##25428 |goto 22.3,44.9
	stickystart "frightanimal"
	step
		Use your Charred Branch while in the burning forest area |use Charred Branch##53464
		kill Thol'embaar##40107
		collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 14.6,42.2
	step
	label "injuredfawn"
		Click 3 Injured Fawns
		|tip They look like tiny deer laying on the ground around this area.
		Lead the Injured Fawns back to Mylune at [19.2,37.9]
		Escort 3 Injured Fawns Home |q 25392/1 |goto 12.5,44.6
	step
		talk Mylune##39930
		turnin Oh, Deer!##25392 |goto 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin Black Heart of Flame##25428
		accept Good News... and Bad News##29066 |goto 22.3,44.9
	step
		talk Laina Nightsky##39927
		accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
	step
		talk Matoclaw##39928
		turnin Good News... and Bad News##29066 |goto 19.0,37.0
	step
		talk Keeper Taldros##39932
		turnin Last Stand at Whistling Grove##25940
		accept The Bears Up There##25462 |goto 13.7,32.8
	step
		Click the Climbing Tree
		|tip They look like small ladders leaning aginst the trees around this area.
		Click Hyjal Bear Cubs in the tree
		Use your Climb Up ability to climb to the top of the tree
		Use your Chuck-a-bear ability to throw the cubs down
		|tip Aim the yellow spot at the bearskin trampoline on the ground.
		Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 13.9,34.1
	step
		talk Keeper Taldros##39932
		turnin The Bears Up There##25462
		accept Smashing Through Ashes##25490 |goto 13.7,32.8
	step
		kill 8 Charbringer##40336 |q 25490/1 |goto 16.4,51.8
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Smashing Through Ashes##25490
		accept Durable Seeds##25491
		accept Fresh Bait##25493 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		accept Firebreak##25492 |goto 27.1,63.0
	step
		kill 10 Lava Surger |q 25492/1
		kill Core Hound##46910+
		collect 4 Core Hound Entrails##54609 |q 25493/1
		Click Scorched Soil
		|tip They look like piles of dirt around this area.
		collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 34.0,53.2
	step
		talk Thisalee Crow##41006
		accept The Wormwing Problem##25655
		accept Scrambling for Eggs##25656 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin Aviana's Legacy##27874
		accept An Offering for Aviana##25663 |goto 44.4,46.2
	step
		Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
		Offer the Nectar |q 25663/1
		talk Mysterious Winged Spirit##41068
		turnin An Offering for Aviana##25663
		accept A Plea From Beyond##25665 |goto 40.4,44.3
	step
		kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
		Slay 10 Wormwing Harpies |q 25655/1
		Click Stolen Hyjal Eggs
		|tip They look like big white eggs sitting at the base of trees around this area.
		collect 8 Hyjal Egg##55189 |q 25656/1 |goto 36.9,43.4
	step
		talk Thisalee Crow##41006
		turnin The Wormwing Problem##25655
		turnin Scrambling for Eggs##25656
		accept A Bird in Hand##25731 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin A Plea From Beyond##25665
		accept A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		Click the Harpy Signal Fire
		|tip It's a brazier with red fire in it.
		Fight Marion Wormwing until she gets captured |q 25731/1
		talk Marion Wormwing##41112 |goto 38.4,44.2
		Ask her why she is stealing eggs, then tell Thisalee to kill her
		Interrogate Marion Wormwing |q 25731/2
	step
		Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
		|tip It's a huge bird nest sitting on top of this mountain peak.
		kill Blaithe##41084 |goto 39.2,37.1
		collect Ancient Feather##55210 |q 25664/1
	step
		talk Thisalee Crow##41006
		turnin A Bird in Hand##25731 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		Go upstairs in the Shrine of Aviana
		talk Skylord Omnuron##40997
		accept Fact-Finding Mission##25740 |goto 43.5,45.9
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Durable Seeds##25491
		turnin Fresh Bait##25493
		accept Hell's Shells##25507 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Firebreak##25492
		accept Prepping the Soil##25502 |goto 27.1,63.0
	step
		Click the Flameward |goto 33.0,64.6
		|tip It's a floating stone in a golden claw stand.
		Activate the Flameward |q 25502/1
		Defend the Flameward |q 25502/2
	step
		talk Thisalee Crow##41006
		turnin Fact-Finding Mission##25740
		accept Sethria's Brood##25746
		accept A Gap in Their Armor##25758 |goto 32.8,70.8
	step
		Click the Codex of Shadows
		|tip It's an open book sitting on a wooden box.
		accept The Codex of Shadows##25763 |goto 31.3,77.1
	step
		kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
		Slay 12 Sethria's Minions |q 25746/1
		Click Twilight Armor Plates
		|tip They look like tan pieces of metal laying on the ground around this area.
		collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.7
	step
		talk Thisalee Crow##41006
		turnin Sethria's Brood##25746
		turnin A Gap in Their Armor##25758
		accept Disassembly##25761
		turnin The Codex of Shadows##25763
		accept Egg Hunt##25764 |goto 32.8,70.8
	step
		Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883
		|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
		kill 3 Twilight Juggernaut##41031 |q 25761/1
		Click Shadow Cloak Generators
		|tip They look like blue glowing machines around this area.
		Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.1,76.7
	step
		talk Thisalee Crow##41006
		turnin Disassembly##25761
		turnin Egg Hunt##25764
		accept Sethria's Demise##25776 |goto 32.8,70.8
	step
		kill Sethria##41255
		Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
		kill Sethria |q 25776/1 |goto 35.5,98.0
	step
		talk Thisalee Crow##41006
		turnin Sethria's Demise##25776
		accept Return to the Shrine##25795 |goto 32.8,70.8
	step
		Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744
		|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
		Click Nemesis when he becomes friendly
		collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.4,52.3
	step
		talk Choluna##41005
		turnin Return to the Shrine##25795
		accept An Ancient Reborn##25807 |goto 44.4,46.2
	step
		Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
		|tip Aviana's Egg is in the tree tower, in a side room.
		Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
	step
		talk Aviana##41308
		turnin An Ancient Reborn##25807 |goto 44.3,48.0
	step
		talk Morthis Whisperwing##41003
		accept The Hatchery Must Burn##25810 |goto 44.1,45.9
	step
		Go inside the blue portal |goto 38.8,58.0 < 5 |noway |c
	step
		talk Farden Talonshrike##40578
		turnin The Hatchery Must Burn##25810
		accept Flight in the Firelands##25523 |goto 37.2,56.2
	step
		Click the Twilight Weapon Rack
		|tip It's a wooden stand with some weapons leaning against it.
		collect Twilight Firelance##52716 |q 25523
	step
		Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
		Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
		|tip They are hippogryphs.
	step
		Use your Flap ability on your hotbar repeatedly to fly to this green flag
		Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Flight in the Firelands##25523
		accept Wave One##25525 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Buzzards to joust them
		kill 10 Twilight Knight Rider##39835 |q 25525/1 |goto 36.8,54.0
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave One##25525
		accept Wave Two##25544 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Firebirds to joust them
		|tip Be careful, don't let the burning Falling Boulders hit you.
		kill 10 Twilight Lancer##40660 |q 25544/1 |goto 36.8,54.0
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave Two##25544
		accept Egg Wave##25560 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Run over Firelands Eggs
		|tip They look like blue eggs on the ground around this area.
		Destroy 40 Firelands Eggs |q 25560/1 |goto 33.3,56.9
		You can find more Firelands Eggs all around [35.8,53.6]
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Egg Wave##25560
		accept Return to Aviana##25832 |goto 37.2,56.2
	step
		Click the red arrow on your hotbar to get off the hippogryph |outvehicle |c |q 25832
	step
		Don't forget to equip your real weapon again
		|confirm
	step
		Go inside the blue glowing orb |goto 38.8,58.6 < 5 |noway |c
	step
		talk Aviana##41308
		turnin Return to Aviana##25832 |goto 44.3,48.0
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Hell's Shells##25507
		accept Tortolla Speaks##25510 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Prepping the Soil##25502 |goto 27.1,63.0
	step
		talk Tortolla##41504
		turnin Tortolla Speaks##25510
		accept Breaking the Bonds##25514
		accept Children of Tortolla##25519 |goto 24.7,55.7
	step
		Click the Rod of Subjugation
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable the First Rod of Subjugation |q 25514/1 |goto 24.0,55.9
	step
		Click the Rod of Subjugation
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable the Second Rod of Subjugation |q 25514/2 |goto 25.2,54.9
	step
		talk Tortolla##41504
		turnin Breaking the Bonds##25514 |goto 24.7,55.7
	step
		kill Deep Corruptor##40561+
		Save 6 Tortolla's Eggs |q 25519/1 |goto 24.8,57.1
	step
		talk Tortolla##41504
		turnin Children of Tortolla##25519
		accept An Ancient Awakens##25520 |goto 24.7,55.7
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin An Ancient Awakens##25520 |goto 27.1,62.6
	step
		talk Vision of Ysera##46998 |goto 27.0,62.7
		accept The Last Living Lorekeeper##25830
	step
		talk Nordu##41381
		turnin The Last Living Lorekeeper##25830
		accept Firefight##25842 |goto 27.4,55.5
	step
		kill 5 Fiery Tormentor##41396 |q 25842/1 |goto 26.6,53.2
	step
		talk Nordu##41381
		turnin Firefight##25842
		accept Aessina's Miracle##25372 |goto 27.4,55.5
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Aessina's Miracle##25372 |goto 19.5,37.8
]])

---------------------------
----- Fishing Dailies -----
---------------------------

ZygorGuidesViewer:RegisterInclude("H_TB_Fishing_Dailies",[[
		talk Kah Mistrunner##3028 |or
		accept Craving Crayfish##29349 |or |goto Thunder Bluff 56.0,47.0
		accept Pond Predators##29345 |or |goto Thunder Bluff 56.0,47.0
		accept Shiny Baubles##29354 |or |goto Thunder Bluff 56.0,47.0
		accept The Race to Restock##29348 |or |goto Thunder Bluff 56.0,47.0
		accept The Ring's the Thing##29346 |or |goto Thunder Bluff 56.0,47.0
	step
		Dive into the water and click on the Stonebull Crafish
		|tip They look like little blue crabs.
		collect 10 Stonebull Crayfish##69977 |q 29349/1 |goto Mulgore 44.9,54.8
		only if haveq(29349)
	step
		Use your Fishing skill here to catch Azshara Snakeheads |cast Fishing##7620
		collect 8 Azshara Snakehead##69934 |q 29345/1 |goto Thunder Bluff 41.7,59.4
		only if haveq(29345)
	step
		Click on the Shiny Stones lying on the ground around Thunder Bluff's base
		|tip They look like shinning purple stones
		collect 20 Shiny Stone##69983 |q 29354/1 |goto Thunder Bluff 35.6,40.9
		only if haveq(29354)
	step
		Use your Fishing skill here to catch Randy Smallfish and Amorous Mud Snapper |cast Fishing##7620
		collect 2 Randy Smallfish##69964 |q 29348/1 |goto Mulgore 49.6,49.5
		collect 2 Amorous Mud Snapper##69967 |q 29348/2 |goto Mulgore 49.6,49.5
		only if haveq(29348)
	step
		Use your Fishing skill in the glowing water here |cast Fishing##7620
		collect 1 Poshken's Ring##69935 |q 29346/1 |goto Thunder Bluff 28.8,20.4
		only if haveq(29346)
	step
		talk Kah Mistrunner##3028
		turnin Craving Crayfish##29349 |goto Thunder Bluff 56.0,47.0
		turnin Pond Predators##29345 |goto Thunder Bluff 56.0,47.0
		turnin The Race to Restock##29348 |goto Thunder Bluff 56.0,47.0
		only if haveq(29349) or haveq(29345) or haveq(29348)
	step
		talk Nahari Cloudchaser##29354
		turnin Shiny Baubles##29354 |goto Thunder Bluff 35,53.8
		only if haveq(29354)
	step
		talk Poshken Hardbinder##30709
		turnin The Ring's the Thing##29346 |goto Thunder Bluff 28.8,20.4
		only if haveq(29346)
]])

ZygorGuidesViewer:RegisterInclude("H_Org_Fishing_Dailies",[[
		talk Razgar##43239
		You will only be able to complete 1 of the following quests per day
		accept A Furious Catch##26588 |or |goto Orgrimmar 65.7,41.1
		accept A Golden Opportunity##26572 |or |goto Orgrimmar 65.7,41.1
		accept A Staggering Effort##26557 |or |goto Orgrimmar 65.7,41.1
		accept Clammy Hands##26543 |or |goto Orgrimmar 65.7,41.1
		accept No Dumping Allowed##26556 |or |goto Orgrimmar 65.7,41.1
	step
		Fish in the river in this spot
		collect Giant Furious Pike##58951 |q 26588/1 |goto Durotar 37.4,16.8
		|tip This fish can only be caught in Durotar, so make sure you are standing and fishing in Durotar.
	step
		use Razgar's Fillet Knife##58955
		|tip Use Razgar's Fillet Knife on a Drowned Thunder Lizard.
		|tip They look like dead dinosaurs underwater around this area.
		collect Drowned Thunder Lizard Tail##58958 |n
		use Drowned Thunder Lizard Tail##58958
		|tip Use your Drowned Thunder Lizard Tail next to Golden Stonefish.
		|tip They look like big yellow fish underwater around this area.
		collect 3 Golden Stonefish##58960 |q 26572/1 |goto 42.8,24.0
	step
		click Monstrous Clam##204360
		|tip They look like huge white clams underwater around this area.
		collect 10 Monstrous Clam Meat##58934 |q 26543/1 |goto 57.2,9.5
	step
		kill Weakened Mosshoof Stag##35096+
		collect 1 Stag Eye##58949 |q 26557 |goto Azshara 27.6,74.5
	step
		Use your Stag Eye |use Stag Eye##58949
		|tip Fish in the water off the dock in this spot.
		collect Sandy Carp##58946 |q 26557/1 |goto Orgrimmar 46.2,46.5
	step
		Fish in the water in this spot
		collect 6 Toxic Puddlefish##58945 |q 26556/1 |goto 38.5,80.1
	step
		talk Razgar##43239
		You will only be able to complete 1 of the following quests per day
		turnin A Furious Catch##26588 |goto 65.7,41.1
		turnin A Golden Opportunity##26572 |goto 65.7,41.1
		turnin A Staggering Effort##26557 |goto 65.7,41.1
		turnin Clammy Hands##26543 |goto 65.7,41.1
		turnin No Dumping Allowed##26556 |goto 65.7,41.1
]])

ZygorGuidesViewer:RegisterInclude("H_UC_Fishing_Dailies",[[
		talk Armand Cromwell##4573
		You will only be able to accept one of the five quests listed
		accept Fish Head##29317 |or |goto Undercity 81.6,30.8
		accept Like Pike?##29320 |or |goto Undercity 81.6,30.8
		accept Moat Monster!##29361 |or |goto Undercity 81.6,30.8
		accept Tadpole Terror##29319 |or |goto Undercity 81.6,30.8
		accept Time for Slime##29322 |or |goto Undercity 81.6,30.8
	step
		Use your Fishing skill at the edge of the wooden dock |cast Fishing##7620
		|tip Fish up a Severed Abomination Head.
		collect Severed Abomination Head##69901 |q 29317/1 |goto 81.6,31.5
		only if haveq(29317)
	step
		Click on the graves here
		|tip It looks like sparkling dirt in front of a grave stone.
		collect Corpse Worm##69907 |goto Undercity 67.3,15.2
		only if haveq(29320)
	step
		Use your Fishing skill in the water here to fish up Corpse-Fed Pike |cast Fishing##7620
		collect Corpse-Fed Pike##69909 |q 293320/1 |goto Tirisfal Glades 67.1,50.8
		only if haveq(29320)
	step
		use Moat Monster Feeding Kit##69999
		Lure the Moat Monster out with the Alliance Decoy |use Alliance Decoy Ki##69998
		Feed the Moat Monster with your Bloated Frogs! |use Bloated Frog##69995
		Feed Bloated Frogs to the Moat Monster |q 29361/1 |goto Undercity 64.7,16.5
		only if haveq(29361)
	step
		Use your Fishing skill |cast Fishing##7620
		|tip Fish up Giant Flesh-Eating Tadpoles.
		collect 8 Giant Flesh-Eating Tadpole##69905 |q 29319/1 |goto Tirisfal Glades 50.6,56.5
		only if haveq(29319)
	step
		clicknpc Squirming Slime Mold##53517+
		|tip These are a bit hard to see, so, to see them better, you can dive into the water, or turn on your display health bars by pushing [V].
		collect 10 Squirming Slime Mold##69911 |q 29322/1 |goto Undercity 81.1,32.0
		only if haveq(29322)
	step
		talk Armand Cromwell##4573
		turnin Like Pike?##29320 |or |goto Undercity 81.6,30.8
		turnin Moat Monster!##29361 |or |goto Undercity 81.6,30.8
		turnin Tadpole Terror##29319 |or |goto Undercity 81.6,30.8
		turnin Time for Slime##29322 |or |goto Undercity 81.6,30.8
		only if haveq(29320) or haveq(29361) or haveq(29319) or haveq(29322)
	step
		talk Master Apothecary Faranell##2055 |or
		turnin Fish Head##29317 |goto Undercity 48.4,69.4
		only if haveq(29317)
]])

-----------------------------
----- Sha'tari Skyguard -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("H_Skyguard_PreQ",[[
	step
		talk Yuula##23449
		accept Threat from Above##11096 |goto Shattrath City 64.3,42.3
	step
		kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.8,16.1
		You can find more around here at the following location |goto 24.4,8.9
	step
		talk Yuula##23449
		turnin Threat from Above##11096 |goto Shattrath City 64.3,42.3
		accept To Skettis!##11098 |goto Shattrath City 64.3,42.3
	step
		talk Sky Sergeant Doryn##23048
		turnin To Skettis!##11098 |goto Terokkar Forest 64.5,66.7
	step
		talk Skyguard Handler Deesak##23415
		accept Hungry Nether Rays##11093 |goto 63.5,65.8
	step
		talk Severin##23042
		accept World of Shadows##11004 |goto 64.0,66.9
	step
		Use your Nether Ray Cage |use Nether Ray Cage##32834
		|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
		kill Blackwind Warp Chaser##23219+
		You can find more Warp Chasers at the following location |goto 64.5,84.4
		Provide Nether Ray Meals |q 11093/1 |goto 61.4,81.8
	step
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 6 Shadow Dust##32388 |q 11004/1 |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		turnin World of Shadows##11004 |goto Terokkar Forest 64.0,66.9
	step
		talk Skyguard Handler Deesak##23415
		turnin Hungry Nether Rays##11093 |goto 63.5,65.8
	step
		talk Sky Commander Adaris##23038
		accept Secrets of the Talonpriests##11005 |goto 64.1,66.9
	step
		Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446 |goto 69.7,74.7
		You will get a buff Elixir of Shadows |havebuff spell:37678
	step
		kill Talonpriest Zellek##23068 |q 11005/3 |goto 70.1,74.5
	step
		kill Talonpriest Ishaal##23066+ |q 11005/1
		collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
		accept Ishaal's Almanac##11021 |goto 69.3,78.1
	step
		kill Talonpriest Skizzik##23067+ |q 11005/2 |goto 69.8,81.8
	step
		talk Sky Commander Adaris##23038
		turnin Secrets of the Talonpriests##11005 |goto 64.1,66.9
		turnin Ishaal's Almanac##11021 |goto 64.1,66.9
		accept An Ally in Lower City##11024 |goto 64.1,66.9
	step
		talk Rilak the Redeemed##22292
		turnin An Ally in Lower City##11024 |goto Shattrath City 52.5,21.0
		accept Countdown to Doom##11028 |goto Shattrath City 52.5,21.0
	step
		talk Nutral##18940
		turnin Countdown to Doom##11028 |goto Terokkar Forest 64.1,66.9
	step
		talk Hazzik##23306
		accept Hazzik's Bargain##11056 |goto 64.2,66.9
	step
		click Hazzik's Package##185954
		collect Hazzik's Package##32687 |q 11056/1 |goto 74.8,80.1
	step
		talk Hazzik##23306
		turnin Hazzik's Bargain##11056 |goto 64.3,66.9
		accept A Shabby Disguise##11029 |goto 64.3,66.9
	step
		Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
		Wear the Shabby Arakkoa Disguise |havebuff spell:41181 |goto 66.2,77.5
	step
		talk Sahaak##23363
		buy 1 Adversarial Bloodlines##32742 |q 11029 |goto 67.0,79.7
	step
		talk Hazzik##23306
		turnin A Shabby Disguise##11029 |goto 64.3,66.9
		accept Adversarial Blood##11885 |goto 64.3,66.9
	step
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 12 Shadow Dust##32388 |q 11885 |future |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		accept More Shadow Dust##11006
		collect 2 Elixir of Shadows##32446+ |q 11885 |future |goto 64.0,66.9
	step
		This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
		|confirm always
	step
		Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
		You will get a buff Elixir of Shadows |havebuff spell:37678
	step
		kill Time-Lost Skettis High Priest##21787+, Time-Lost Skettis Reaver##21651+, Time-Lost Skettis Worshipper##21763+
		collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest 61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		click Skull Pile##185913
		|tip This will use 10 Time-Lost Scrolls
		<Call forth Darkscreecher Akkarai.>
		<Call forth Karrog.>
		<Call forth Gezzarak the Huntress.>
		<Call forth Vakkiz the Windrager.>
		kill Darkscreecher Akkarai##23161 |q 11885/1 |goto 69.7,74.7
		collect Akkarai's Talons##32715
		kill Karrog##23165 |q 11885/2 |goto 69.7,74.7
		collect Karrog's Spine##32717
		kill Gezzarak the Huntress##23163 |q 11885/3 |goto 69.7,74.7
		collect Gezzarak's Claws##32716
		kill Vakkiz the Windrager##23204 |q 11885/4 |goto 69.7,74.7
		collect Vakkiz's Scale##32718
		You can find more skull piles at the following locations:
		Location 1: |goto 70.1,79.5
		Location 2: |goto 73.5,80.7
		Location 3: |goto 70.2,83.3
	step
		talk Hazzik##23306
		turnin Adversarial Blood##11885 |goto 64.2,66.9
		accept Tokens of the Descendants##11074 |goto 64.2,66.9
	step
		talk Sky Commander Adaris##23038
  		accept Terokk's Downfall##11073 |goto 64.1,66.9
	step
		click Skull Pile##185913
		|tip This will use 1 Time-Lost Offering.
		<Call forth Terokk.>
		kill Terokk##21838 |goto 66.2,77.5
		|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
		Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
		|confirm always
	step
		talk Sky Commander Adaris##23038
  		turnin Terokk's Downfall##11073 |goto 64.1,66.9
]])

ZygorGuidesViewer:RegisterInclude("H_Skyguard_Daily",[[
	step
	label "dailies"
		talk Sky Sergeant Doryn##23048
		accept Fires Over Skettis##11008 |goto Terokkar Forest,64.5,66.7
	step
		Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
		Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
		Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto 63.1,80.0
		You can find more eggs at the following locations:
		Location 1: |goto 61.3,79.9
		Location 2: |goto 67.5,79.3
		Location 3: |goto 68.0,85.6
		Location 4: |goto 70.3,84.5
	step
		talk Sky Sergeant Doryn##23048
		turnin Fires Over Skettis##11008 |goto 64.5,66.7
	step
		talk Skyguard Prisoner##23383
		accept Escape from Skettis##11085 |goto 61.0,75.6
		He can also be found at the following locations:
		Location 1: |goto 68.4,74.0
		Location 2: |goto 75.0,86.5
	step
		Escort the Skyguard Prisoner to the bottom of the bridge
		|tip Help him kill any mobs on the way down.
		Rescue the Skyguard Prisoner |q 11085/1
	step
		talk Sky Sergeant Doryn##23048
		turnin Escape from Skettis##11085 |goto 64.5,66.7
	step
	label "grind"
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 12 Shadow Dust##32388 |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		accept More Shadow Dust##11006 |n
		collect 2 Elixir of Shadows##32446 |goto 64.0,66.9
	step
		Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
		You will get a buff Elixir of Shadows |havebuff spell:37678
	step
		kill Time-Lost Skettis High Priest##21787+
		kill Time-Lost Skettis Reaver##21651+
		kill Time-Lost Skettis Worshipper##21763+
		collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		click Skull Pile##185913
		|tip This will use 10 Time-Lost Scrolls
		<Call forth Darkscreecher Akkarai.>
		<Call forth Karrog.>
		<Call forth Gezzarak the Huntress.>
		<Call forth Vakkiz the Windrager.>
		kill Darkscreecher Akkarai##23161
		collect Akkarai's Talons##32715 |goto 69.7,74.7
		kill Karrog##23165
		collect Karrog's Spine##32717 |goto 69.7,74.7
		kill Gezzarak the Huntress##23163
		collect Gezzarak's Claws##32716 |goto 69.7,74.7
		kill Vakkiz the Windrager##23204
		collect Vakkiz's Scale##32718 |goto 69.7,74.7
		You can find more skull piles at the following locations:
		Location 1: |goto 70.1,79.5
		Location 2: |goto 73.5,80.7
		Location 3: |goto 70.2,83.3
	step
		talk Hazzik##23306
		accept Tokens of the Descendants##11074 |n
		collect Time-Lost Offering##32720 |goto Terokkar Forest,64.3,66.9
	step
		click Skull Pile##185913
		|tip This will use 1 Time-Lost Offering.
		<Call forth Terokk.>
		kill Terokk##21838 |goto 66.2,77.5
		|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
		Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
		|confirm always
		|next "dailies" |only if rep("Sha'tari Skyguard")<=Revered
		|next |only if rep("Sha'tari Skyguard")==Exalted
]])

-------------------------
----- Sons of Hodir -----
-------------------------

ZygorGuidesViewer:RegisterInclude("Hodir_Quests",[[
		talk Jeer Sparksocket##29431
		turnin Luxurious Getaway!##12853 |goto The Storm Peaks 41,86.4
		accept Clean Up##12818 |goto The Storm Peaks 41,86.4
	step
		talk Smilin' Slirk Brassknob##29904
		home K3 |goto The Storm Peaks 41.1,85.9
	step
		talk Gretchen Fizzlespark##29473
		|tip She's inside the inn.
		accept They Took Our Men!##12843 |goto 41.1,86.1
		accept Equipment Recovery##12844 |goto 41.1,86.1
	step
		talk Ricket##29428
		accept Reclaimed Rations##12827 |goto 40.9,85.3
		accept Expression of Gratitude##12836 |goto 40.9,85.3
	step
		talk Skizzle Slickslide##29721
		fpath K3 |goto 40.8,84.5
	stickystart "gnollration"
	stickystart "charredwreck"
	step
		kill 1 Gnarlhide##30003 |q 12836/1 |goto 30.3,85.7
		|tip Standing in front of a tent.
	step
	label "charredwreck"
		Click the Charred Wreckage
		|tip They look like various metal parts on the ground around this area.
		collect 10 Charred Wreckage##40603 |q 12818/1 |goto 39.8,86.4
	step
	label "gnollration"
		kill Savage Hill gnolls |n
		Click Dried Gnoll Rations crates
		|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		collect 16 Dried Gnoll Rations##40645 |q 12827/1 |goto 35,83.8
	step
		talk Jeer Sparksocket##29431
		turnin Clean Up##12818 |goto 41,86.4
		accept Just Around the Corner##12819 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Reclaimed Rations##12827 |goto 40.9,85.3
		turnin Expression of Gratitude##12836 |goto 40.9,85.3
		accept Ample Inspiration##12828 |goto 40.9,85.3
	step
		Click Sparksocket's Tools
		|tip They look like a box of tools in the middle of the mine field. Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
		collect Sparksocket's Tools##40642|q 12819/1 |goto 35.1,87.8
	step
		talk Jeer Sparksocket##29431
		turnin Just Around the Corner##12819 |goto 41,86.4
		accept Slightly Unstable##12826 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Slightly Unstable##12826 |goto 40.9,85.3
		accept A Delicate Touch##12820 |goto 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Attackers |q 12820/1 |goto 43.1,81.2
	step
		talk Tore Rumblewrench##29430
		accept Moving In##12829 |goto 41.7,80
		accept Ore Repossession##12830 |goto 41.7,80
	step
		Click the U.D.E.D. Dispenser next to Tore Rumblewrench
		Retrieve a bomb from the dispenser
		collect 1 U.D.E.D.##40686 |q 12828 |goto 41.7,80
	step
		Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686
		|tip They walk around this area spread out.
		Click the Mammoth Meat on the ground
		collect 8 Hearty Mammoth Meat##40728 |q 12828/1 |goto 43.9,79.0
	step
		_Enter_ the cave |goto 40.4,77.8 < 10
		talk Injured Goblin Miner##29434
		accept Only Partly Forgotten##12831 |goto 41.5,74.9
	stickystart "impursaron"
	step
		kill Icetip Crawler##29461s
		|tip They are big purple spiders walking around this area inside the cave.
		collect 1 Icetip Venom Sac##40944 |q 12831/1 |goto 47.1,72.3
	step
	label "impursaron"
		kill 12 Crystalweb Spiders |q 12829/1 |goto 44,75.9
		kill Snowblind Digger##29413s
		collect 5 Impure Saronite Ore##40744|q 12830/1 |goto 44,75.9
	step
		talk Injured Goblin Miner##29434
		turnin Only Partly Forgotten##12831 |goto 43.5,75.2
		accept Bitter Departure##12832 |goto 43.5,75.2
	step
		talk Injured Goblin Miner##29434
		Tell the miner you're ready
		Escort the Injured Goblin Miner to K3 |q 12832/1 |goto 43.5,75.2
	step
		kill Sifreldar Storm Maiden##29323+
		collect 5 Cold Iron Key##40641 |n
		click Rusty Cage##191544
		Free 5 Goblin Prisoners |q 12843/1 |goto 39.8,73.3
		click K3 Equipment##191568
		collect 8 K3 Equipment##40726 |q 12844/1 |goto 39.8,73.3
	step
		talk Tore Rumblewrench##29430
		turnin Moving In##12829 |goto 41.7,80
		turnin Ore Repossession##12830 |goto 41.7,80
	step
		talk Ricket##29428
		turnin A Delicate Touch##12820 |goto 40.9,85.3
		turnin Ample Inspiration##12828 |goto 40.9,85.3
		turnin Bitter Departure##12832 |goto 40.9,85.3
		accept Cell Block Tango##12821 |goto 40.9,85.3
	step
		talk Gretchen Fizzlespark##29473
		turnin They Took Our Men!##12843 |goto 41.1,86.1
		accept Leave No Goblin Behind##12846 |goto 41.1,86.1
		turnin Equipment Recovery##12844 |goto 41.1,86.1
	step
		click Transporter Power Cell##191576
		collect Transporter Power Cell##40731 |q 12821/1 |goto 45.1,82.4
	step
		Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731
		|tip It looks like a tall machine with a fan in the bottom of it.
		Activate the Garm Teleporter |q 12821/2 |goto 50.7,81.9
	step
		talk Ricket##29428
		turnin Cell Block Tango##12821 |goto 40.9,85.3
		accept Know No Fear##12822 |goto 40.9,85.3
	step
		talk Gino##29432
		accept A Flawless Plan##12823 |goto 50.0,81.8
	step
		Go inside the cave |goto 50.5,77.8
		Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431
		|tip It's a stone altar with a bunch of melted red candles on it. Follow the path in the cave that spirals up all the way to the top of the cave to find it.
		kill Tormar Frostgut##29626 |q 12823/2
	step
		kill 6 Garm Watcher##29409+ |q 12822/1 |goto 48.1,81.9
		kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto 48.1,81.9
	step
		talk Gino##29432
		turnin A Flawless Plan##12823 |goto 50.0,81.8
		accept Demolitionist Extraordinaire##12824 |goto 50.0,81.8
	step
		talk Lok'lira the Crone##29481
		turnin Leave No Goblin Behind##12846 |goto 42.8,68.9
		accept The Crone's Bargain##12841 |goto 42.8,68.9
		|tip Inside the cave.
	step
		kill Overseer Syra##29518
		collect 1 Runes of the Yrkvinn##40690 |q 12841/1 |goto 44.2,68.9
	step
		talk Lok'lira the Crone##29481
		turnin The Crone's Bargain##12841 |goto 42.8,68.9
		accept Mildred the Cruel##12905 |goto 42.8,68.9
	step
		talk Mildred the Cruel##29885
		turnin Mildred the Cruel##12905 |goto 44.4,68.9
		accept Discipline##12906 |goto 44.4,68.9
	step
		use the Disciplining Rod##42837
		|tip They are sitting on the ground inside these side tunnels inside this mine.
		Discipline 6 Exhausted Vrykul |q 12906/1 |goto 44.8,70.3
	step
		talk Mildred the Cruel##29885
		turnin Discipline##12906 |goto 44.4,68.9
		accept Examples to be Made##12907 |goto 44.4,68.9
	step
		kill 1 Garhal##30147 |q 12907/1 |goto 45.4,69.1
	step
		talk Mildred the Cruel##29885
		turnin Examples to be Made##12907 |goto 44.4,68.9
		accept A Certain Prisoner##12908 |goto 44.4,68.9
	step
		talk Lok'lira the Crone##29481
		turnin A Certain Prisoner##12908 |goto 42.8,68.9
		accept A Change of Scenery##12921 |goto 42.8,68.9
	step
		talk Lok'lira the Crone##29975
		turnin A Change of Scenery##12921 |goto 47.5,69.1
		accept Is That Your Goblin?##12969 |goto 47.5,69.1
	step
		talk Agnetta Tyrsdottar##30154
		Tell her to skip the warm up
		kill Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.2,69.8
	step
		talk Lok'lira the Crone##29975
		turnin Is That Your Goblin?##12969 |goto 47.5,69.1
		accept The Hyldsmeet##12970 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		Ask her about her proposal
		Listen to Lok'lira's proposal |q 12970/1 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		turnin The Hyldsmeet##12970 |goto 47.5,69.1
		accept Taking on All Challengers##12971 |goto 47.5,69.1
	step
		talk Victorious Challenger##30012
		kill 6 Victorious Challenger##30012+ |q 12971/1 |goto 51,66.4
	step
		talk Lok'lira the Crone##29975
		turnin Taking on All Challengers##12971 |goto 47.5,69.1
		accept You'll Need a Bear##12972 |goto 47.5,69.1
	step
		talk Iva the Vengeful##29997
		accept Off With Their Black Wings##12942 |goto 48.4,72.1
		accept Yulda's Folly##12968 |goto 48.4,72.1
	step
		talk Thyra Kvinnshal##30041
		accept Aberrations##12925 |goto 48.4,72.1
	step
		talk Brijana##29592
		turnin You'll Need a Bear##12972 |goto 53.1,65.7
		accept Bearly Hanging On##12851 |goto 53.1,65.7
	step
		Click Icefang to ride him
		|tip Standing down the hill, Icefang is a white bear.
		While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants |petaction Flaming Arrow
		Burn 7 Frostworgs |q 12851/1 |goto 53.1,65.7
		Burn 15 Frost Giants |q 12851/2 |goto 53.1,65.7
	step
		talk Brijana##29592
		turnin Bearly Hanging On##12851 |goto 53.1,65.7
		accept Cold Hearted##12856 |goto 53.1,65.7
	step
		Click the Captive Proto-Drakes to ride them
		|tip The Captive Proto-Drakes are chained up flying in the sky.
		Use your Ice Shard ability on the Brunnhildar Prisoners |petaction Ice Shard
		|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
		When your Proto-Drake is holding 3 Brunnhildar Prisoners, take them to this location |goto The Storm Peaks 59.9,61.2
		Repeat this process 2 more times
		Rescue 9 Brunnhildar Prisoners |q 12856/1 |goto 63.9,62.5
		Free 3 Proto-Drakes |q 12856/2 |goto 63.9,62.5
	step
		talk Brijana##29592
		turnin Cold Hearted##12856 |goto 53.1,65.7
		accept Deemed Worthy##13063 |goto 53.1,65.7
	step
		talk Astrid Bjornrittar##29839
		turnin Deemed Worthy##13063 |goto 49.7,71.8
		accept Making a Harness##12900 |goto 49.7,71.8
	step
		kill Icemane Yeti##29875+
		collect 3 Icemane Yeti Hide##41424 |q 12900/1 |goto 47.9,74.7
	step
		talk Astrid Bjornrittar##29839
		turnin Making a Harness##12900 |goto 49.7,71.8
		accept The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Slithering Darkness##12989 |goto 49.7,71.8
	stickystart "ravjorm"
	step
		clicknpc Injured Icemaw Matriarch##29563
		The bear runs back to Brunnhildar Village
		Rescue the Icemaw Matriarch |q 12983/1 |goto 54.8,60.4
	step
	label "ravjorm"
		kill 8 Ravenous Jormungar |q 12989/1 |goto 55.8,63.9
	step
		talk Astrid Bjornrittar##29839
		turnin The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Warm-Up##12996 |goto 49.7,71.8
		turnin The Slithering Darkness##12989 |goto 49.7,71.8
	step
		Use your Reins of the Warbear Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
	step
		Use the abilities on your hotbar to fight Kirgaraak
		|tip He's a big white yeti.
		Defeat Kirgaraak |q 12996/1 |goto 50.8,67.7
	step
		talk Astrid Bjornrittar##29839
		turnin The Warm-Up##12996 |goto 49.7,71.8
		accept Into the Pit##12997 |goto 49.7,71.8
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle|c
	step
		Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42499
		Use the abilities on your hotbar to fight Hyldsmeet Warbears
		kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto 49.1,69.4
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle|c
	step
		talk Astrid Bjornrittar##29839
		turnin Into the Pit##12997 |goto 49.7,71.8
		accept Prepare for Glory##13061 |goto 49.7,71.8
	step
		talk Lok'lira the Crone##29975
		turnin Prepare for Glory##13061 |goto 47.5,69.1
		accept Lok'lira's Parting Gift##13062 |goto 47.5,69.1
	step
		talk Gretta the Arbiter##29796
		turnin Lok'lira's Parting Gift##13062 |goto 50.9,65.6
		accept The Drakkensryd##12886 |goto 50.9,65.6
	step
		You fly off on a drake and start flying in circles around a tower:
		Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
		kill Hyldsmeet Drakerider##29694+
		Repeat this process 9 more times
		Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
	step
		They look like light fixtures on the side of the stone columns
		Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
	step
		talk Thorim##29445
		turnin The Drakkensryd##12886 |goto 33.4,58
		accept Sibling Rivalry##13064 |goto 33.4,58
	step
		talk Thorim##29445
		Ask him what became of Sif
		Hear Thorim's History |q 13064/1 |goto 33.4,58
	step
		talk Thorim##29445
		turnin Sibling Rivalry##13064 |goto 33.4,58
		accept Mending Fences##12915 |goto 33.4,58
	step
		kill 12 Nascent Val'kyr##29570+ |q 12942/1 |goto 27.3,63.7
		kill Valkyrion Aspirant##29569+
		collect 6 Vial of Frost Oil##41612 |q 12925 |goto 27.3,63.7
	step
		Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
		|tip They look like brown spiked eggs sitting in the yellow water around this area.
		Try to get 6 at a time
		Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto 23.7,58.3
	step
		kill Yulda the Stormspeaker##30046 |q 12968/1 |goto 24,61.8
		click Harpoon Crate##192072
		accept Valkyrion Must Burn##12953 |goto 24,61.8
	step
		clicknpc Valkyrion Harpoon Gun##30066
		Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area |petaction Flaming Harpoon
		Start 6 Fires |q 12953/1 |goto 26,59.8
	step
		Click the red arrow to get off the gun |script VehicleExit() |outvehicle |c
	step
		talk Ricket##29428
		turnin Demolitionist Extraordinaire##12824 |goto 40.9,85.3
		turnin Know No Fear##12822 |goto 40.9,85.3
		accept Overstock##12833 |goto 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Invader##29619 |q 12833/1 |goto 43.1,81.2
	step
		talk Ricket##29428
		turnin Overstock##12833 |goto 40.9,85.3
	step
		talk Thyra Kvinnshal##30041
		turnin Aberrations##12925 |goto 48.4,72.1
	step
		talk Iva the Vengeful##29997
		turnin Off With Their Black Wings##12942 |goto 48.4,72.1
		turnin Yulda's Folly##12968 |goto 48.4,72.1
		turnin Valkyrion Must Burn##12953 |goto 48.4,72.1
	stickystart "furspar"
	step
		click Granite Boulder##191815
		Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
		Help the dwarves kill them
		kill 5 Stormforged Iron Giant##29375+ |q 12915/2 |goto 75.8,63
		collect Slag Covered Metal##41556 |q 12922 |future |n |goto 75.8,63
		use Slag Covered Metal##41556
		accept The Refiner's Fire##12922 |goto 75.8,63
	step
	label "furspar"
		kill Seething Revenant##29504+
		collect 10 Furious Spark##41558|q 12922/1 |goto 75.4,63.5
	step
		Click a Granite Boulder and get one
		|tip The Granite Boulders look like big grey rocks on the ground around this area.
		Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505
		|tip He's a huge fire giant, holding a huge smithing hammer.
		Help the dwarves kill him
		kill Fjorn##29503 |q 12915/1 |goto 77.2,62.9
	step
		click Fjorn's Anvil##192071
		turnin The Refiner's Fire##12922 |goto 77.2,62.9
		accept A Spark of Hope##12956 |goto 77.2,62.9
	step
		talk Thorim##29445
		turnin A Spark of Hope##12956 |goto 33.4,58
		turnin Mending Fences##12915 |goto 33.4,58
		accept Forging an Alliance##12924 |goto 33.4,58
	step
		talk Halvdan##32571
		fpath Dun Niffelem |goto 62.6,60.9
	step
		talk King Jokkum##30105
		accept You Can't Miss Him##12966 |goto 65.4,60.2
	step
		talk Njormeld##30099
		turnin You Can't Miss Him##12966 |goto 75.4,63.6
		accept Battling the Elements##12967 |goto 75.4,63.6
	step
		Click Snorri to accompany on him |invehicle |c |goto 75.7,63.9
		|tip Standing on the side of the road.
	step
		Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow
		|tip The Snowdrifts look like piles of snow on the ground.
		Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
		kill 10 Seething Revenant##29504+ |q 12967/1 |goto 76.7,63.4
	step
		Click the red arrow on your hotbar to leave Snorri |script VehicleExit()|outvehicle |c
	step
		talk Njormeld##30099
		turnin Battling the Elements##12967 |goto 75.4,63.6
	step
		talk Njormeld##30127
		turnin Forging an Alliance##12924 |goto 63.2,63.2
		accept A New Beginning##13009 |goto 63.2,63.2
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		talk King Jokkum##30105
		accept In Memoriam##12975 |goto 65.4,60.2
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		click  Frozen Iron Scrap##192127
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		click Horn Fragment##192082
		collect 8 Horn Fragment##42162 |q 12975/1 |goto 72.1,49.4
		Kill mobs in the area
		collect 10 Relic of Ulduar##42780 |q 12975 |goto 72.1,49.4
	step
		talk King Jokkum##30105
		turnin In Memoriam##12975 |goto 65.4,60.2
		accept A Monument to the Fallen##12976 |goto 65.4,60.2
	step
		talk Njormeld##30127
		turnin A Monument to the Fallen##12976 |goto 63.2,63.2
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		talk Njormeld##30127
		accept Forging a Head##12985 |goto 63.2,63.2
	step
		Click Hodir's Horn
		|tip It's a huge bone war horn.
		accept Hodir's Call##12977 |goto 64.1,65.1
	step
		talk King Jokkum##30105
		accept Culling Jorcuttar##13011 |goto 65.4,60.2
	step
		Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
		kill Stormforged Ambusher##30208+
		collect 8 Stormforged Eye##42423 |q 12985/1 |goto 69.7,58.9
	step
		Kill Niffelem Forefathers and Restless Frostborn Ghosts
		use Hodir's Horn##42164
		Free #5# Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free #5# Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		talk Njormeld##30127
		turnin Forging a Head##12985 |goto 63.2,63.2
		accept Placing Hodir's Helm##12987 |goto 63.2,63.2
	step
		Click Hodir's Horn
		|tip It's a huge bone war horn.
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		Fly to the tip of this ice spike
		Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
		Mount Hodir's Helm |q 12987/1 |goto 64.3,59.2
	step
		talk Njormeld##30127
		turnin Placing Hodir's Helm##12987 |goto 63.2,63.2
	step
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		kill Viscous Oil##30325+
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
		Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
		collect 1 Icemaw Bear Flank##42733 |q 13011 |goto 55.6,63.4
	step
		Follow the path inside the cave to this spot
		Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
		kill 1 Jorcuttar##30340 |q 13011/1 |goto 54.7,60.8
	step
		talk Thorim##29445
		turnin A New Beginning##13009 |goto 33.4,58
		accept Veranus##13050 |goto 33.4,58
	step
		click Small Proto-Drake Egg##192536
		collect 5 Small Proto-Drake Egg##42784 |q 13050/1 |goto 43.7,67.4
		You can find more Small Proto-Drake Eggs at the following location |goto 45.2,66.9
	step
		talk Thorim##29445
		turnin Veranus##13050 |goto 33.4,58
		accept Territorial Trespass##13051 |goto 33.4,58
	step
		Stand in this big nest
		use the Stolen Proto-Dragon Eggs##42797
		Lure Veranus |q 13051/1 |goto 38.7,65.6
	step
		talk Thorim##29445
		turnin Territorial Trespass##13051 |goto 33.4,58
		accept Krolmir, Hammer of Storms##13010 |goto 33.4,58
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		talk King Jokkum##30105
		turnin Culling Jorcuttar##13011 |goto 65.4,60.2
	step
		talk King Jokkum##30105
		Ask him what has become of Krolmir
		Discover Krolmir's Fate |q 13010/1 |goto 65.4,60.2
	step
		talk Thorim##30390
		turnin Krolmir, Hammer of Storms##13010 |goto 71.4,48.8
		accept The Terrace of the Makers##13057 |goto 71.4,48.8
	-- Tauren section, recovered from trunk
	step
		talk Hyeyoung Parka##29762
		fpath Camp Tunka'lo |goto 65.4,50.6
	step
		talk Xarantaur##30381
		accept The Witness and the Hero##13034 |goto 65.7,51.4
	step
		Click the First History Scroll
		|tip It looks like a white scroll hanging on the wall, with brown symbols on it.
		Read the First History Scroll |q 13034/1 |goto 65.8,50.4
	step
		Click the Second History Scroll
		|tip It looks like a white long scroll hanging on the right side of the entrance to this house, with brown symbols on it.
		Read the Second History Scroll |q 13034/2 |goto 66.8,50.1
	step
		Click the Third History Scroll
		|tip It looks like a white scroll hanging on the right side of the entrance to this house, with a gray border and brown symbols on it.
		Read the Third History Scroll |q 13034/3 |goto 67.5,50.6
	step
		talk Xarantaur##30381
		turnin The Witness and the Hero##13034 |goto 65.7,51.4
		accept Memories of Stormhoof##13037 |goto 65.7,51.4
	step
		_Enter_ the cave |goto 62.5,41.5 < 10
		talk Chieftain Swiftspear##30395
		Ask him what he remembers of his brother |q 13037/1 |goto 61.2,39.0
	step
		talk Chieftain Swiftspear##30395
		accept Distortions in Time##13038 |goto 61.2,39.0
	step
		Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
		Close 4 Frostfloe Rifts |q 13038/1 |goto 61.7,39.8
	step
		_Leave_ the cave |goto 62.5,41.5 < 10
		talk Xarantaur##30381
		turnin Memories of Stormhoof##13037 |goto 65.7,51.4
		turnin Distortions in Time##13038 |goto 65.7,51.4
		accept Where Time Went Wrong##13048 |goto 65.7,51.4
		accept The Hero's Arms##13049 |goto 65.7,51.4
	step
		_Enter_ the cave |goto 67.0,44.9 < 10
		kill Scion of Storm##30184+
		collect 1 Stormhoof's Spear##42782 |q 13049/1 |goto 67.2,44.3
		collect 1 Stormhoof's Mail##42783 |q 13049/2 |goto 67.2,44.3
		Click Taunka Artifacts
		|tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
		Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1 |goto 67.2,44.3
	step
		_Leave_ the cave |goto 67.0,44.9 < 10
		talk Xarantaur##30381
		turnin Where Time Went Wrong##13048 |goto 65.7,51.4
		turnin The Hero's Arms##13049 |goto 65.7,51.4
		accept Changing the Wind's Course##13058 |goto 65.7,51.4
	step
		Use The Lorehammer in your bags |use The Lorehammer##42918
		Go back in time and become Stormhoof |invehicle |q 13058 |goto 64.9,48.1
	step
		Use your Stormhoof abilities to fight and kill The North Wind
		|tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you. Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
		When The North Wind is dazed, go to this location |goto 64.6,46.9
		Click the Horn of Elemental Fury
		|tip It looks like a spiral white horn sitting on the ground.
		Restore the True Timeline |q 13058/1 |goto 64.5,47.5
	step
		talk Xarantaur##30381
		turnin Changing the Wind's Course##13058 |goto 65.7,51.4

	-- end of Tauren section recovered

	step
		talk Thorim##30295
		turnin The Terrace of the Makers##13057 |goto 56.3,51.4
		accept The Earthen Oath##13005 |goto 56.3,51.4
		accept Loken's Lackeys##13035 |goto 56.3,51.4
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		Fight mobs around this area
		kill 7 Iron Sentinel##29984+ |q 13005/1 |goto 57.3,46.7
		kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto 57.3,46.7
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Eisenfaust##30341 |q 13035/1 |goto 55.3,43.3
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.6,45.6
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Duronn the Runewrought##30353 |q 13035/3 |goto 45,38.1
		|tip Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
	step
		talk Thorim##30295
		turnin The Earthen Oath##13005 |goto 56.3,51.4
		turnin Loken's Lackeys##13035 |goto 56.3,51.4
		accept The Reckoning##13047 |goto 56.3,51.4
	step
		talk Thorim##30399
		Tell him you are with him
		Witness the Reckoning |q 13047/1 |goto 35.9,31.5
	step
		talk King Jokkum##30105
		turnin The Reckoning##13047 |goto 65.4,60.2
	step
		talk Ricket##29428
		accept When All Else Fails##13060 |goto 40.9,85.3
	step
		talk Ricket##29428
		Tell her you are ready to head further into Storm Peaks |goto 40.9,85.3 < 10
		You will fly to Grom'arsh Crash Site |goto 36.8,49.6 < 10
		talk Olut Alegut##30472
		turnin When All Else Fails##13060 |goto The Storm Peaks 37.0,49.6
	step
		talk Boktar Bloodfury##29651
		accept The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
	step
		talk Peon Gakra##29944
		home Grom'arsh Crash-Site |goto The Storm Peaks 37.1,49.5
	step
		talk Blood Guard Lorga##30247
		accept Emergency Measures##13000 |goto The Storm Peaks 36.5,49.1
		accept The Missing Tracker##13054 |goto The Storm Peaks 36.5,49.1
	step
		click Disturbed Snow##191708
		collect Burlap-Wrapped Note##40947 |q 12895/1 |goto The Storm Peaks 36.1,64.1
		|modeidisplay 5333
	step
		_Enter_ the cave |goto The Storm Peaks 47.0,54.9 < 10
		talk Tracker Val'zij##30469
		turnin The Missing Tracker##13054 |goto 48.5,54.3
		accept Cave Medicine##13055 |goto 48.5,54.3
	step
		click Cave Mushroom##192556
		collect 8 Cave Mushroom##42926 |q 13055/1 |goto The Storm Peaks 49.3,52.8
	step
		kill Cavedweller Worg##30164+
		collect 6 Worg Fur##42510 |q 13000/1 |goto The Storm Peaks 48.5,47.5
		kill Infesting Jormungar##30148+
		collect Toxin Gland##42927 |q 13055/2 |goto The Storm Peaks 48.5,47.5
	step
		talk Tracker Val'zij##30469
		turnin Cave Medicine##13055 |goto The Storm Peaks 48.5,54.3
		accept There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
	step
		_Follow_ the path into the cave |goto 48.2,48.1 < 10
		kill Gimorak##30167 |q 13056/1 |goto The Storm Peaks 48.9,46.7
	step
		talk Tracker Val'zij##30469
		turnin There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
	step
		talk Boktar Bloodfury##29651
		turnin The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
		accept The Nose Knows##12909 |goto The Storm Peaks 37.3,49.7
	step
		talk Blood Guard Lorga##30247
		turnin Emergency Measures##13000 |goto The Storm Peaks 36.4,49.1
	step
		talk Khaliisi##29855
		turnin The Nose Knows##12909 |goto The Storm Peaks 40.8,51.2
		accept Sniffing Out the Perpetrator##12910 |goto The Storm Peaks 40.8,51.2
	step
		clicknpc Frostbite##29857
		Use the abilities on your hotbar to slow down the _Steamforged Pursuers_.
		Ride Frostbite until you reach the end of the scent trail. |q 12910/1 |goto The Storm Peaks 40.8,51.2
	step
		kill Tracker Thulin##29695+ |q 12910/2 |goto The Storm Peaks 48.5,60.8
		collect Brann's Communicator##40971 |n
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Sniffing Out the Perpetrator##12910
		accept Speak Orcish, Man!##12913
	step
		talk Moteha Windborn##29937
		turnin Speak Orcish, Man!##12913 |goto The Storm Peaks 37.3,49.7
		accept Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
	step
		kill Stormrider##29624+
		collect 5 Voice of the Wind##41514 |q 12917/1 |goto The Storm Peaks 27.1,42.0
	step
		talk Moteha Windborn##29937
		turnin Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
	step
		talk Boktar Bloodfury##29651
		accept Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		Ask him if he can understand you |q 12920/1
	step
		talk Boktar Bloodfury##29651
		turnin Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
		accept Pieces of the Puzzle##12926 |goto The Storm Peaks 37.3,49.7
	step
		kill Library Guardian##29724
		collect 6 Inventor's Disk Fragment##41130 |n
		Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
		collect The Inventor's Disk##41132 |q 12926/1 |goto The Storm Peaks 37.6,43.5
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Pieces of the Puzzle##12926
		accept Data Mining##12927
	step
		Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
		|tip They look like floating round star things.
		Gather 7 Hidden Data |q 12927/1 |goto 38.5,44.2
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Data Mining##12927
		accept The Library Console##13416
	step
		click Inventor's Library Console##191760
		turnin The Library Console##13416 |goto The Storm Peaks 37.4,46.8
		accept Norgannon's Shell##12928 |goto The Storm Peaks 37.4,46.8
	step
		Click the Charged Disk in your bags |use Charged Disk##44704
		kill Archivist Mechaton##29775
		collect Norgannon's Shell##41258 |q 12928/1 |goto The Storm Peaks 37.4,46.8
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Norgannon's Shell##12928
		accept Going After the Core##13273
		accept The Earthen of Ulduar##12929
	step
		click Prospector Soren's Maps##193560
		|tip It looks like a tan scroll laying on a wooden box, next to a bonfire.
		collect Prospector Soren's Maps##43983 |q 13273/2 |goto 59.2,51.5
	step
		Click Prospector Khrona's Notes##193561
		|tip It looks like an open book laying on a wooden box, next to a tent.
		collect Prospector Khrona's Notes##43984 |q 13273/1 |goto 59.8,52.6
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Going After the Core##13273
		accept The Core's Keeper##13274
	step
		The entrance to the big round metal door starts here |goto 56.5,58.5 < 10
		|tip It's a big metal hole on in the side of the mountain.
	step
		kill Athan##31798+
		collect Norgannon's Core##41260 |q 13274/1 |goto The Storm Peaks 56.3,52.3
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin The Core's Keeper##13274
		accept Forging the Keystone##13285
	step
		Go outside |goto 56.5,58.5 < 10
		talk Brann Bronzebeard##29579
		Tell him you're ready to make the keystone
		Help Brann create the keystone |q 13285/1 |goto The Storm Peaks 45.5,49.5
	step
		talk Boktar Bloodfury##29651
		turnin Forging the Keystone##13285 |goto 37.3,49.7
	step
		talk Breck Rockbrow##29950
		fpath Bouldercrag's Refuge |goto 30.6,36.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Earthen of Ulduar##12929 |goto 31.4,38.1
		accept Rare Earth##12930 |goto 31.4,38.1
	stickystart "enchanearth"
	step
		kill Stormforged Raider##29377+
		collect 5 Frostweave Cloth##33470 |q 12930/2 |goto 28.9,36.7
	step
	label "enchanearth"
		Click the Enchanted Earth
		|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliff side.
		collect 7 Enchanted Earth##41614 |q 12930/1 |goto 28.3,29.4
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Rare Earth##12930 |goto 31.4,38.1
		accept Fighting Back##12931 |goto 31.4,38.1
		accept Relief for the Fallen##12937 |goto 31.4,38.1
	step
		talk Magorn##29963
		home Bouldercrag's Refuge |goto The Storm Peaks 30.9,37.3
	step
		kill Stormforged Raiders##29377+, Stormforged Reavers##29382+
		kill 10 Stormforged Attacker |q 12931/1 |goto 28.1,36.7
		Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
		Heal 8 Fallen Earthen Defenders |q 12937/1 |goto 28.1,36.7
	step
		talk Bouldercrag the Rockshaper##29801
		|tip He's inside of the building.
		turnin Fighting Back##12931 |goto 31.4,38.1
		turnin Relief for the Fallen##12937 |goto 31.4,38.1
		accept Slaves of the Stormforged##12957 |goto 31.4,38.1
		accept The Dark Ore##12964 |goto 31.4,38.1
	step
		kill 3 Stormforged Taskmaster##29369 |q 12957/2 |goto 27.5,49.7
		talk Captive Mechagnome##29384
		Attempt to free 8 Captive Mechagnomes |q 12957/1
		Click Ore Carts
		|tip They look like carts with ore in them.
		collect 5 Dark Ore Sample##42109 |q 12964/1
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Slaves of the Stormforged##12957 |goto 31.4,38.1
		turnin The Dark Ore##12964 |goto 31.4,38.1
		accept The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Facing the Storm##12978 |goto 31.3,38.2
	stickystart "armordark"
	step
		Right-click Loken's Fury
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Fury |q 12965/1 |goto 24,42.6
	step
		Right-click Loken's Power
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Power |q 12965/2 |goto 26.2,47.7
	step
		Right-click Loken's Favor
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Favor |q 12965/3 |goto 24.6,48.4
	step
	label "armordark"
		kill Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
		kill 10 Nidavelir Stormforged |q 12978/1 |goto 25,42.9
		kill Stormforged War Golem##29380+
		collect 1 Dark Armor Plate##42203 |n
		Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
		accept Armor of Darkness##12979
	step
		kill Stormforged War Golem##29380+
		collect 4 Dark Armor Sample##42204 |q 12979/1 |goto 28.7,43.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Facing the Storm##12978 |goto 31.3,38.2
		turnin Armor of Darkness##12979 |goto 31.3,38.2
		accept The Armor's Secrets##12980 |goto 31.3,38.2
	step
		_Enter_ Mimir's Workshop |goto 33.6,39.6 < 10
		talk Attendant Tock##30190
		Tell him you found a strange armor plate
		Investigate the Armor Plate |q 12980/1 |goto 32.0,40.7
	step
		_Leave_ Mimir's Workshop |goto 33.6,39.6
		talk Bruor Ironbane##30152
		turnin The Armor's Secrets##12980 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept Valduran the Stormborn##12984 |goto 31.4,38.1
	step
		Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
		Help fight Valduran the Stormborn
		kill Valduran the Stormborn##29368 |q 12984/1 |goto 24.4,52.1
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Valduran the Stormborn##12984 |goto 31.4,38.1
		accept Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Hit Them Where it Hurts##12991 |goto 31.3,38.2
	stickystart "forgedart"
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the North Lightning Forge |q 12988/1 |goto 29.0,45.8
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the Central Lightning Forge |q 12988/2 |goto 29.5,45.9
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the South Lightning Forge |q 12988/3 |goto 30.2,46.1
	step
	label "forgedart"
		kill 10 Stormforged Artificer##29376 |q 12991/1 |goto 30.0,46.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Hit Them Where it Hurts##12991 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept A Colossal Threat##12993 |goto 31.4,38.1
	step
		Click the Colossus Attack Specs
		|tip It looks like a white scroll laying on a small square metal table.
		collect Colossus Attack Specs##42475 |q 12993/1 |goto 28.9,44.1
	step
		Click the Colossus Defense Specs
		|tip It looks like a white scroll laying on an anvil under a white canopy.
		collect Colossus Defense Specs##42476 |q 12993/2 |goto 29.9,45.8
	step
		talk Bouldercrag the Rockshaper##29801
		turnin A Colossal Threat##12993 |goto 31.4,38.1
		accept The Heart of the Storm##12998 |goto 31.4,38.1
	step
		_Enter_ the doorway |goto 32.4,63.9 < 10
		Click the Heart of the Storm
		|tip Enter the big round metal door and fly down into the hallway, then follow the hallway to this spot. It looks like a big blue orb, sitting in a three-pronged metal stand.
		Attempt to Secure the Heart of the Storm |q 12998/1 |goto 36.2,60.9
	step
		_Pass through_ the gates |goto 32.4,63.9 < 10
		talk Bouldercrag the Rockshaper##29801
		turnin The Heart of the Storm##12998 |goto 31.4,38.1
		accept The Iron Colossus##13007 |goto 31.4,38.1
	step
		Click the Jormungar Control Orb
		|tip It looks like a white glowing ball floating with a golden ring around it.
		Start controlling a Jormungar |invehicle |c |q 13007 |goto 27.2,35.9
	step
		In order to move as the Jormungar, use the Submerge ability on your hotbar. When you want to come back up to the surface, use the Emerge ability while submerged underground.
		kill Iron Colossus##30300 |q 13007/1 |goto 27.2,42.0
		|tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
	step
		Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Iron Colossus##13007 |goto 31.4,38.1
]])

ZygorGuidesViewer:RegisterInclude("Hodir_Dailies",[[
	//DAILY//
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
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		accept Hodir's Call##12977 |goto 64.1,65.1
	stickystart "viscoil"
	step
		kill Stoic Mammoth##30260+
		collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 59.0,61.2
		only if rep ('The Sons of Hodir')>=Honored
	step
	label "viscoil"
		kill Viscous Oil##30325+
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
	step
		_Enter_ the cave |goto 55.9,64.2 < 10
		click Everfrost Shard##192191
		collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.7,60.8
		only if rep ('The Sons of Hodir')>=Honored
	step
		_Leave_ the cave |goto 55.9,64.2 < 10
		talk Lorekeeper Randvir##30252
		turnin Forging Hodir's Spear##13001 |goto 64.8,59.1
		|tip This quest will unlock the How to Slay Your Dragon daily quest.
		only if rep ('The Sons of Hodir')>=Honored
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		click Frozen Iron Scrap##192127
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+ |goto 67.0,45.1
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+|n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		Click here to reset the daily quests |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
		Become honored with The Sons of Hodir |complete rep('The Sons of Hodir')>=Honored |next "Daily2"
	step
	label "Daily2"
		talk Frostworg Denmother##30294
		accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
	step
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		accept How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		accept Hodir's Call##12977 |goto 64.1,65.1
	stickystart "visouoil"
	step
		Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		Repeat this process 2 more times
		Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
	step
		Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		While fighting the Wild Wyrm, there will be 2 phases to the fight. Phase 1:
		|tip In phase 1 of the fight, you will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		In phase 2 of the fight with the Wild Wyrm, the strategy changes:
		|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth. Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
		Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
	step
	label "visouoil"
		kill Viscous Oil##30325+
		|tip They look like slimes inside this cave.
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
	step
		talk Frostworg Denmother##30294
		turnin Spy Hunter##12994 |goto 63.5,59.8
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		Click the Frozen Iron Scraps
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+|n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
		Become Revered with The Sons of Hodir |complete rep('The Sons of Hodir')>=Revered |next "Daily3"
	step
	label "Daily3"
		talk Frostworg Denmother##30294
		accept Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
	step
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		accept How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		click Arngrim the Insatiable##192524
		accept Feeding Arngrim##13046 |goto 67.6,59.9
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		accept Hodir's Call##12977 |goto 64.1,65.1
	stickystart "cousoil"
	step
		Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		Repeat this process 2 more times
		Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
	step
		Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
	step
		Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		While fighting the Wild Wyrm, there will be 2 phases to the fight
		Phase 1:
		|tip In phase 1 of the fight, you will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		In phase 2 of the fight with the Wild Wyrm, the strategy changes:
		|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
		Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
	step
	label "cousoil"
		kill Viscous Oil##30325+
		|tip They look like slimes inside this cave.
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
	step
		talk Frostworg Denmother##30294
		turnin Spy Hunter##12994 |goto 63.5,59.8
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##192079
		turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
	step
		click Arngrim the Insatiable##192524
		turnin Feeding Arngrim##13046 |goto 67.6,59.9
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		Click the Frozen Iron Scraps
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		To restart the Hodir daily quests, click here. |confirm |next "Daily3" |only if rep('The Sons of Hodir')<=Revered
		Become Exalted with The Sons of Hodir |complete rep('The Sons of Hodir')==Exalted |next "BuyMount"
]])

----------------------
----- Sunreavers -----
----------------------

ZygorGuidesViewer:RegisterInclude("Sunreavers_dailies",[[
	label "start"
		Proceeding to the Sunreavers Dailies |next "dailies" |only if default
		Moving to the Sunreavers prequests |next |only if not completedq(32680) and thunderstage()==1
		Moving to the First Scenario |next "scenario1" |only if thunderstage()>=2 and not completedq(32212)
		Moving to the Second Scenario |next "scenario2" |only if thunderstage()>=3 and not completedq(32276)
		Moving to the Third Scenario |next "scenario3" |only if thunderstage()>=4 and not completedq(32277)
		Moving to the Fourth Scenario |next "scenario4" |only if thunderstage()>=5 and not completedq(32278)
		Moving to the Fifth Scenario |next "post5" |only if thunderstage()==5 and not completedq(32279)
	//PREQUEST
	step
	label "prequest"
		talk Sunwalker Dezco##64566
		accept Thunder Calls##32678 |goto Vale of Eternal Blossoms 62.9,28.3
	step
		talk Scout Captain Elsia##70358
		turnin Thunder Calls##32678 |goto Townlong Steppes 50.8,73.4
		accept The Storm Gathers##32680 |goto Townlong Steppes 50.8,73.4
	step
		talk Scout Captain Elsia##70358
		Tell her you're ready to go |q 32680/1	|goto Townlong Steppes 50.8,73.4
		Discover the Isle of Thunder |q 32680/2	|goto Townlong Steppes 50.8,73.4
	step
		talk Lor'themar Theron##67990
		turnin The Storm Gathers##32680 |goto Isle of Thunder 28.4,52.4
		|next "start"
	////SCENARIO
	step
	label "scenario1"
		talk Lor'themar Theron##67990
		accept The Assault on Zeb'tula##32212 |goto Isle of Thunder 28.4,52.3
		Enter the Scenario _Assault on Zeb'tula_ |goto Isle of Thunder Scenario |noway |q 32212
	step
		talk Lor'themar Theron##67990
		Tell him you're ready to go
		Speak to Lor'themar Theron |q 32212/1 |goto Isle of Thunder 28.4,52.3
	step
		clicknpc Sunreaver Bloodhawk##69487
		Ride the Sunreaver Bloodhawk |scenariogoal 1/22673 |goto Isle of Thunder Scenario 28.5,52.3 |q 32212
	step
		Watch the dialogue
		Fly with Scout Captain Elsia |scenariogoal 1/22654 |q 32212
	step
		Rendezvous with Scout Captain Elsia |scenariostage 1 |q 32212
	step
		kill Zeb'tula Raptor##69658+, from Zeb'tula Beastcaller##69657+
		Survive the Ambush |scenariogoal 2/22655 |goto Isle of Thunder Scenario 42.7,50.5 |q 32212
	step
		kill Zeb'tula Stoneshield##69517+
		kill Zandalari Barricade##69516+
		kill Zeb'tula Spearanger##69518+
		Destroy the Barricades and its Defenders |scenariogoal 3/22656 |goto Isle of Thunder Scenario 39.0,43.9 |q 32212
	step
		kill Kresh the Ripper##69474 |scenariogoal 4/22657 |q 32212 |goto Isle of Thunder Scenario 38.8,38.7
	step
		Cross the bridge |goto 36.74,38.67 < 10 |only if walking
		kill Arcanital Tula'chek##69475 |scenariogoal 5/22659 |goto 32.71,35.27 |q 32212
		|tip The mask puts down yellow protection fields.
		|tip Position yourself so that you are IN the yellow field, while Tula'chek is OUT of the field.
	step
		talk Lor'themar Theron##67990
		turnin The Assault on Zeb'tula##32212 |goto Isle of Thunder 32.5,35.5
		|next "start"
	////SCENARIO2
	step
	label "scenario2"
		talk Lor'themar Theron##67990
		accept Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
	step
		talk Lor'themar Theron##67990
		Tell him _"I'm ready to tear down the wall! [Queue for solo instance.]"_ |q 32276/1 |goto 32.51,35.58
		Enter the Scenario |goto Isle of Thunder Scenario |noway |q 32276
	step
		click Heavy Explosives##218197
		|tip It's a pink spiky orb on the ground.
		Acquire the Heavy Explosives |scenariogoal 1/22696 |goto Isle of Thunder Scenario 48.4,51.1 |q 32276
	step
		talk Scout Captain Elsia##69565
		Tell her _"Here are the explosives, Elsia."_
		Deliver the Explosives to Elsia |scenariogoal 2/22700 |goto Isle of Thunder Scenario 55.8,57.9 |q 32276
	step
		click Heavy Explosives##218197
		Detonate the Heavy Explosives |scenariogoal 3/22702 |goto Isle of Thunder Scenario 56.2,56.2 |q 32276
	step
		_Go through_ the passage |goto 54.9,51.5 < 20 |walk
		_Go up_ the stairs |goto 53.7,47.3 < 20 |walk
		kill War-God Al'chukla##69755 |scenariogoal 4/23004 |goto Isle of Thunder Scenario 54.7,45.9 |q 32276
	step
		click Portal to the Isle of Thunder |goto 54.1,46.2
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32276
	step
		talk Lor'themar Theron##67990
		turnin Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
		|next "start"
	////SCENARIO3
	step
	label "scenario3"
		talk Lor'themar Theron##67990
		accept To the Skies!##32277 |goto Isle of Thunder/0 32.51,35.58
	step
		talk Lor'themar Theron##67990
		Tell him _"I am ready! [Queue for solo instance.]"_ |q 32277/1 |goto Isle of Thunder/0 32.51,35.58
		Enter the To the Skies scenario! |goto Isle of Thunder Scenario |noway |q 32277
	step
		clicknpc Thunderwing##69509
		Mount Thunderwing |scenariogoal 1/22666 |goto Isle of Thunder Scenario 32.3,34.4 |q 32277
	step
		Approach the Mine Entrance |scenariogoal 1/22701 |goto Isle of Thunder Scenario 32.3,34.4 |q 32277
	step
		kill Zandalari Beastcaller##69521+
		|tip Use the "Jump!" ability to jump onto nearby Zandalari Attackers.
		|tip It appears as a button on your screen.
		Defeat Your Attackers! |scenariogoal 2/22668 |q 32277
	step
		kill Beastmaster Horaki##69559 |scenariogoal 3/22669 |goto Isle of Thunder Scenario 48.7,25.5 |q 32277
	step
		talk Taoshi##69810
		Tell her _"Alright. Let's go."_
		Join with Taoshi |scenariogoal 4/22738 |goto Isle of Thunder Scenario 49.3,26.0 |q 32277
	step
		Watch the dialogue
		Clear the Cave-in |scenariogoal 5/22740 |goto Isle of Thunder Scenario 48.8,25.6 |q 32277
	step
		_Enter_ the cave |goto Isle of Thunder Scenario/1 < 10 |walk
		_Follow_ the ledge |goto 44.7,53.1 < 20 |walk
		Make Your Way to the Mine Entrance |scenariogoal 5/22741 |goto Isle of Thunder Scenario/1 32.9,57.9 |q 32277
		|tip Inside the cave.
	step
		kill Slavemaster Shiaxu##69923 |scenariogoal 6/22672 |goto Isle of Thunder Scenario/1 28.17,67.47 |q 32277
		|tip Inside the cave.
	step
		Unlock the Mine Door |scenariogoal 6/22739 |q 32277
	step
		click Portal to the Isle of Thunder |goto 31.2,77.7
		|tip Inside the cave.
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32277
	step
		talk Lor'themar Theron##67990
		turnin To the Skies!##32277 |goto Isle of Thunder/0 32.91,32.58
		|next "start"
	////SCENARIO4
	step
	label "scenario4"
		talk Taoshi##70297
		accept Decisive Action##32278 |goto Isle of Thunder/0 32.9,32.7
	step
		talk Taoshi##70297 |goto Isle of Thunder/0 32.9,32.7
		Tell her _"I'm with you. Let's break into that shipyard! [Queue for solo instance.]"_
		Enter the To the Skies scenario! |goto Isle of Thunder Scenario |noway |q 32278
	step
		clicknpc Thunderwing##69458
		Intercept the Zandalari Patrol |scenariogoal 1/22661 |goto Isle of Thunder Scenario/0 63.2,54.4 |q 32278
	step
		Deactivate the Sentry Totems |scenariogoal 2/23007 |q 32278
		|tip Use the "Smoke Bomb" ability on your action bar to cloud the vision of the Zandalari patrols.
		|tip They are marked with blue circles on the ground around this area.
	step
		Follow Taoshi around the ship
		|tip Sneak up behind the Veteran Wingriders she marks for you.
		|tip When the enemies are inside your red circle, use the "Knock Out" ability.
		|tip It appears as a button on your screen.
		Neutralize the Marked Crew Members |scenariogoal 3/23003 |q 32278
	step
		Have Taoshi Trap the Siege Weapons |scenariogoal 3/22663 |q 32278
	step
		Run down the ramp |goto 68.57,45.67 < 5 |walk
		kill Captain Halu'kal##69482 |scenariogoal 4/22664 |goto Isle of Thunder Scenario/0 67.2,47.3 |q 32278
		|tip Downstairs inside the ship.
	step
		_Go through_ the door |goto 67.3,45.6 < 15 |walk
		_Go up_ the stairs |goto 64.2,42.3 < 15 |walk
		_Continue up_ the hill |goto 61.9,43.3 < 20 |walk
		|tip Sneak your way around the totems and guards to Hu'seng the Gatekeeper.
		Locate Hu'seng the Gatekeeper |scenariogoal 5/22665 |goto Isle of Thunder Scenario/0 59.4,44.2 |q 32278
	step
		kill Hu'seng the Gatekeeper##69483 |scenariogoal 6/22667 |goto Isle of Thunder Scenario/0 59.1,44.1 |q 32278
	step
		collect Gatekeeper's Orb##94918 |scenariogoal 6/22810 |goto Isle of Thunder Scenario/0 59.1,44.1 |q 32278
		|tip Loot it from Hu'seng the Gatekeeper's corpse.
	step
		click Deactivated Access Generator##219094
		Open the Gate |scenariogoal 7/22809 |goto Isle of Thunder Scenario/0 58.4,42.8 |q 32278
	step
		Click the Portal to Dawnseeker Promontory |goto 57.79,41.87
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32278
	step
		talk Lor'themar Theron##67990
		turnin Decisive Action##32278 |goto Isle of Thunder/0 32.51,35.58
		|next "start"
	//SCENARIO5
	step
	label "post5"
		talk Lor'themar Theron##67990
		accept The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.51,35.58
	step
		talk Lor'themar Theron##67990
		Tell him _"I am ready to launch the asault [Queue for solo instance.]"_
		Speak to Lor'themar Theron |q 32279/1 |goto Isle of Thunder/0 32.51,35.58
		Enter the scenario |goto Isle of Thunder Scenario |noway |q 32279
	step
		talk Scout Captain Elsia##69620
		Tell her _"I am ready."_
		Speak with Your Assault Leader |scenariogoal 1/22742 |goto Isle of Thunder Scenario/0 56.07,39.20 |q 32279
	step
		Enter the Courtyard |scenariogoal 1/22799 |goto Isle of Thunder Scenario/0 57.7,41.3 |q 32279
	step
		kill Zandalari Stoneshield##69527+
		Slay the Zandalari |scenariogoal 1/22675 |goto Isle of Thunder Scenario/0 57.5,40.8 |q 32279
	step
		kill Palace Gatekeeper##69510+
		Slay the Palace Gatekeepers |scenariogoal 2/22685 |goto Isle of Thunder Scenario/0 57.9,40.8 |q 32279
	step
		kill Quilen Guardian##69506+, Shan'ze Electrocutioner##69525+, Zandalari Stoneshield##69865+
		Slay the Zandalari and Mogu |scenariogoal 3/22734 |goto Isle of Thunder Scenario/0 59.8,38.0 |q 32279
	step
		Watch the dialogue
		kill Shan Bu##69534 |scenariogoal 4/22683 |goto Isle of Thunder Scenario/0 60.0,37.8 |q 32279
	step
		click Portal to the Isle of Thunder |goto 56.82,40.44
		Leave the Instance |goto Isle of Thunder/0 33.25,32.43 < 10 |noway |q 32279
	step
		talk Lor'themar Theron##67990
		turnin The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.51,35.58
		|next "start"
	//DAILIES
	step
	label "dailies"
		talk Lor'themar Theron##67990
		accept Za'Tual##32729 |goto Isle of Thunder/0 32.51,35.58
		|only if thunderstage()==1
	step
		talk Girana the Blooded##67673
		accept The Court of Bones##32728 |goto Isle of Thunder/0 32.43,35.22
		|only if thunderstage()==1
	step
		talk Magister Hathorel##67663
		accept Ihgaluk Crag##32730 |goto Isle of Thunder/0 32.47,35.24
		|only if thunderstage()==1
	step
		clicknpc Assignment Map##70567 |goto Isle of Thunder 32.5,35.3
		Click PvE at the assignment screen. |q 32260 |future
		|only if thunderstage()>=2
	step
		talk Magister Hathorel##67663
		accept Ihgaluk Crag##32730 |goto Isle of Thunder 32.5,35.2
		accept A Wing to Fly On##32506 |only if thunderstage()>=2 |goto Isle of Thunder 32.5,35.2
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Girana the Blooded##67673
		accept The Court of Bones##32728 |or 2 |goto Isle of Thunder 32.5,35.2
		accept The Zandalari Colossus##32230 |or 2 |goto Isle of Thunder 32.5,35.2
		accept The Shuddering Moor##32228 |or 2 |only if thunderstage()>=2 |goto Isle of Thunder 32.5,35.2
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Lor'themar Theron##67990
		accept Za'Tual##32729 |goto Isle of Thunder/0 32.51,35.58
		accept Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58
		|only if thunderstage()>=2  and completedq(32212)
		Click here when no more quests are available |confirm --|noquest
	step
		talk High Arcanist Savor##67662
		accept The Sleepless Legion##32285 |or |goto Isle of Thunder 33.5,35.1
		accept Enemies Beneath the Tower##32287 |or |goto Isle of Thunder 33.5,35.1
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2
		|next "dailies2"
	////COURT OF BONES
	step
	label "dailies2"
		Routing to the next section |next "zatual" |only if thunderstage()>=2 and not haveq(32728) and not completedq(32728)
		Routing to the next section |next |only if default
	step
		talk Grand Magister Rommath##67989
		turnin The Court of Bones##32728 |only if haveq(32728) |goto Isle of Thunder 33.1,52.7
		accept Grave Circumstances##32201 |only if haveq(32728) or completedq(32728) |goto Isle of Thunder 33.1,52.7
		accept The Call of Thunder##32225 |only if haveq(32728) or completedq(32728) |goto Isle of Thunder 33.1,52.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()==1
	step
		talk Ryshelle Brightlock##69389
		accept Stone Cold##32219 |goto Isle of Thunder 32.9,52.6
		accept Into the Crypts##32226 |goto Isle of Thunder 32.9,52.6
		accept Rise No More!##32224 |goto Isle of Thunder 32.9,52.6
		accept The Conquest of Stone##32517 |goto Isle of Thunder 32.9,52.6
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()==1
	step
		talk Captain Aerthas Firehawk##67983
		accept Ashes of the Enemy##32218 |or |goto Isle of Thunder 33.1,53.0
		accept Soul Surrender##32220 |or |goto Isle of Thunder 33.1,53.0
		|only if thunderstage()==1
	step
		talk Grand Magister Rommath##67989
		turnin The Court of Bones##32728 |goto Isle of Thunder 38.5,51.3
		accept Grave Circumstances##32201 |goto Isle of Thunder 38.5,51.3
		accept The Bloodletter##32495 |goto Isle of Thunder 38.5,51.3
		accept The Call of Thunder##32225 |goto Isle of Thunder 38.5,51.3
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Ryshelle Brightlock##69389
		accept Stone Cold##32219 |goto Isle of Thunder 38.5,51.2
		accept Rise No More!##32224 |goto Isle of Thunder 38.5,51.2
		accept Into the Crypts##32226 |goto Isle of Thunder 38.5,51.2
		accept The Conquest of Stone##32517 |goto Isle of Thunder 38.5,51.2
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Captain Aerthas Firehawk##67983
		accept Soul Surrender##32220 |or |goto Isle of Thunder 38.5,51.1
		accept Ashes of the Enemy##32218 |or |goto Isle of Thunder 38.5,51.1
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212)
	stickystart "shanzemobs"
	stickystart "savescouts"
	step
		kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.0,48.2
		|only if haveq(32495)
	step
		Kill the Shan'ze Soulrippers surrounding the Ancient Stone Conqueror in this room.
		Stop the Ancient Stone Conqueror ritual |q 32517/1 |goto Isle of Thunder 35.1,64.3
		|only if haveq(32517)
	step
		kill Shan'ze Thundercaller##69264+
		Kill the _Shan'ze Thundercallers_ around the Lightning Rod to stop the ritual. |q 32225/1 |goto Isle of Thunder 32.9,55.9
		|only if haveq(32225)
	step
	label "savescouts"
		click Tormented Cage
		Save 6 Scouts |q 32220/1 |goto Isle of Thunder 36.1,51.8
		|only if haveq(32220)
	step
	label "shanzemobs"
		kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+ |q 32201/1 |only if haveq(32201)
		|tip The Thundercallers will cast Chain Lightning which places a circular spell under your character that you will need to move out of to avoid heavy damage.
		kill Risen Ancestor##69237+ |q 32224/1 |only if haveq(32224) |goto Isle of Thunder 35.5,52.3
		kill Grave Guardian##69240+ |q 32219/1 |only if haveq(32219) |goto Isle of Thunder 35.5,52.3
		Use your Blessed Torch on Mummified Remains |use Blessed Torch##93751
		Burn Mummified Remains |q 32218/1 |only if haveq(32218)
		|tip They're laying in coffins scattered around this area.
		|only if haveq(32219) or haveq(32218) or haveq(32201) or haveq(32224)
	step
		Enter the Hall of the Exalted here |goto Isle of Thunder 36.3,58.8 < 10
		Use the Incantation of Gura in your bags to summon Gura |use Incantation of Gura##93803
		kill Gura the Reclaimed##69241+ |q 32226/1 |goto Isle of Thunder 36.8,56.5 |subzone Hall of the Exalted
		|only if haveq(32226)
	////ZA'TUAL
	step
	label "zatual"
		Routing to the next section |next "crag" |only if thunderstage()>=4 and not haveq(32729) and not completedq(32729)
		Routing to the next section |next |only if default
	step
		talk Halduron Brightwing##70520
		turnin Za'Tual##32729 |goto Isle of Thunder 36.8,64.8
		accept Surgical Death##32275 |goto Isle of Thunder 36.8,64.8
		accept Harbingers of the Loa##32252 |goto Isle of Thunder 36.8,64.8
		accept Dangers of Za'Tual##32200 |goto Isle of Thunder 36.8,64.8
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=1 and haveq(32729) or completedq(32729)
	step
		talk Elina Zaralae##69418
		accept Dark Offerings##32217 |goto Isle of Thunder 36.7,64.7
		accept Heinous Sacrifice##32215 |goto Isle of Thunder 36.7,64.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=1 and completedq(32729)
	step
		talk Kethiel Sunlance##67984
		accept Pterrible Ptorment##32216 |goto Isle of Thunder 36.8,64.9
		accept Preventing a Future Threat##32227 |goto Isle of Thunder 36.8,64.9
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=1 and completedq(32729)
	step
		kill Zandalari Arcweaver##69224+
		Free the Tormented Skyscreamer |q 32216/1 |goto Isle of Thunder 41.3,69.9
		|only if haveq(32216)
	step
		Run over _Hatchling Skyscreamers_ in this area to scare them.
		Scare 12 Hatchling Skyscreamers |q 32227/1 |goto Isle of Thunder/0 28.0,77.2
		|only if haveq(32227)
	stickystart "zandamobs"
	stickystart "zandabeast"
	step
		kill Spiritbinder Tec'uat##69255 |only if haveq(32275)
		click Tec'uat's Altar
		Destroy Tec'uat's Altar |q 32215/2 |goto Isle of Thunder 39.8,65.3
		|only if haveq(32215)
	step
		kill Spiritbinder Pa'chek##69256 |only if haveq(32275)
		click Pa'chek's Altar
		Destroy Pa'chek's Altar |q 32215/3 |goto Isle of Thunder 38.7,78.6
		|only if haveq(32215)
	step
		kill Spiritbinder Cha'lat##69254 |only if haveq(32275)
		click Cha'lat's Altar
		Destroy Cha'lat's Altar |q 32215/1 |goto Isle of Thunder 33.9,76.2
		|only if haveq(32215)
	step
		click Zandalari Offering##216991
		Destroy 6 Zandalari Offerings |q 32217/1 |goto Isle of Thunder 35.4,68.0
		|only if haveq(32217)
	step
		kill Zandalari Arcanital##69281+, Zandalari Speaker##69136+ |q 32252/1 |goto Isle of Thunder 36.4,70.0
		You can either wait here _(the respawn rate is high for these mobs)_, or find another at [38.9,76.4]
		|only if haveq(32252)
	step
	label "zandabeast"
		kill Zandalari Jaguar Warrior##69171+ |q 32275/2 |goto Isle of Thunder 31.3,69.9
		kill Zandalari Beastcaller##69065+ |q 32275/1 |goto Isle of Thunder 31.3,69.9
		kill Zandalari Spiritbinder## |q 32275/3 |goto Isle of Thunder 31.3,69.9
		|only if haveq(32275)
	step
	label "zandamobs"
		kill Zandalari Stoneshield##69223+, Zandalari Commoner##69170+, Zandalari Beastcaller##69065+, Zandalari Jaguar Warrior##69171+ |q 32200/1 |goto Isle of Thunder 31.3,69.9
		|only if haveq(32200)
	////IHGALUK CRAG
	step
	label "crag"
		Routing to the next section |next "dire" |only if thunderstage()>=2 and not haveq(32730) and not completedq(32730)
		Routing to the next section |next |only if default
	step
		talk Archmage Aethas Sunreaver##67660
		turnin Ihgaluk Crag##32730 |goto Isle of Thunder 46.9,66.9
		accept The Skumblade Threat##32204 |or 2 |goto Isle of Thunder 46.9,66.9
		accept Manipulating the Saurok##32254 |or 2 |goto Isle of Thunder 46.9,66.9
		accept Subtle Encouragement##32605 |or 2 |goto Isle of Thunder 46.9,66.9
		accept De-Constructed##32255 |or 2 |goto Isle of Thunder 46.9,66.9
		Click here when no more quests are available |confirm --|noquest
	step
		talk Sunwalker Dezco##69425
		accept The Residents of Ihgaluk##32274 |goto Isle of Thunder 46.8,66.8
		Click here when no more quests are available |confirm --|noquest
	step
		talk Amalia Penshire##69371
		accept Just Some Light Clean-Up Work##32299 |or 2 |goto Isle of Thunder 47.0,66.7
		accept The Creeping Carpet of Ihgaluk##32489 |or 2 |goto Isle of Thunder 47.0,66.7
		accept Left to Rot##32491 |or 2 |goto Isle of Thunder 47.0,66.7
		Click here when no more quests are available |confirm --|noquest
	step
		talk Archmage Aethas Sunreaver##67660
		accept Skin of the Saurok##32549 |goto Isle of Thunder 46.9,66.9
		|tip NOTE: This quest will give you the ability to disguise yourself as a saurok. This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag. If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
		Click here when no more quests are available |confirm --|noquest
		|only if not completedq(32507)
	step
		kill Skumblade Filthmonger##69228+, Skumblade Brute##69338+, Skumblade Scavenger##69227+ |q 32549/1 |goto Isle of Thunder 47.2,79.6
		|only if not completedq(32507) and thunderstage()==1
	step
		Click the quest complete box that appears below your minimap.
		turnin Skin of the Saurok##32549
		|only if not completedq(32507)
	stickystart "ihgaroach"
	stickystart "killskum"
	stickystart "plantmogu"
	step
		kill Fetid Meat Pile##69247+
		Fetid Meat Pile destroyed |q 32491/1 |goto Isle of Thunder 51.5,78.4
		|only if haveq(32491)
	step
		clicknpc Malfunctioning Sunreaver##69289
		Recover Malfunctioning Sunreaver |q 32255/4 |goto Isle of Thunder/0 46.6,71.9
		|only if haveq(32255)
	step
		clicknpc Magister Arlan##69293
		Speak with Magister Arlan |q 32254/1 |goto Isle of Thunder 44.6,83.3
		|only if haveq(32254)
	step
		clicknpc Disabled Sunreaver Construct##69439
		Recover Disabled Construct |q 32255/1 |goto Isle of Thunder/0 44.2,81.8
		|only if haveq(32255)
	step
		clicknpc Magistrix Vesara##69310
		Speak with Magistrix Vesara |q 32254/3 |goto Isle of Thunder 51.7,73.6
		|only if haveq(32254)
	step
		map Isle of Thunder/0
		path follow loose;loop;ants straight
		path	51.8,74.4	53.3,77.0	54.3,79.3
		path	55.1,82.2	55.1,82.2	55.3,84.2
		path	54.9,86.7	53.9,88.3	52.4,90.4
		path	50.8,90.5	49.2,89.5	49.4,85.8
		path	49.8,84.0	49.4,82.0	49.2,79.8
		path	50.1,78.4	50.4,77.1	50.6,75.8
		clicknpc Distressed Sunreaver Construct##69290
		Recover Distressed Construct |q 32255/3
		|only if haveq(32255)
	step
		clicknpc Magister Sarien##69309
		Speak with Magister Sarien |q 32254/2 |goto Isle of Thunder 51.5,85.0
		|only if haveq(32254)
	step
		clicknpc Buried Sunreaver Construct##69288
		Recover Buried Construct |q 32255/2 |goto Isle of Thunder/0 53.6,91.2
		|only if haveq(32255)
	step
		kill Quivering Filth##69251+
		Disperse 75 Filth |q 32299/1 |goto Isle of Thunder 51.5,81.0
		|only if haveq(32299)
	step
		kill 1 Skumblade Brute##69338 |q 32274/1 |goto Isle of Thunder 50.9,78.9
		|only if haveq(32274)
	step
		_Follow_ the path up |goto Isle of Thunder 50.5,76.8 < 10
		kill 1 Skumblade Saur-Priest##69229 |q 32274/2 |goto Isle of Thunder 49.8,76.1
		|only if haveq(32274)
	step
		kill 1 Skumblade Seadragon##69226+ |q 32274/3 |goto Isle of Thunder 56.3,86.4
		|only if haveq(32274)
	step
	label "ihgaroach"
		Go around Ihgaluk running over any _Ihgaluk Roaches_ you see.
		Crush 150 Ihgaluk Roaches |q 32489/1 |goto Isle of Thunder 53.9,78.0
		|only if haveq(32489)
	step
	label "plantmogu"
		kill Skumblade Brute##69338+, Skumblade Shortfang##69348+, Skumblade Scavenger##69227+, Skumblade Fleshripper##69210+
		Click the _Plant the spear_ ability that appears in the middle of your screen to plant the weapons on their corpses.
		Plant 9 Mogu weapons |q 32605/1 |goto Isle of Thunder 45.2,74.7
		|only if haveq(32605)
	step
	label "killskum"
		kill Skumblade Brute##69338+, Skumblade Shortfang##69348+, Skumblade Scavenger##69227+, Skumblade Fleshripper##69210+ |q 32204/1 |goto Isle of Thunder 45.2,74.7
		|only if haveq(32204)
	step
	label "dire"
		clicknpc Wild Pterrorwing Hatchling##69428
		|tip The hatchling roams around this circular path, some searching may be necessary.
		Catch a Wild Pterrorwing Hatchling |q 32506/1 |goto Isle of Thunder 40.8,48.3
		|only if haveq(32506)
	step
		kill Zandalari Colossus##69405 |q 32230/1  |goto Isle of Thunder/0 42.8,64.0
		|tip He patrols around this circular path, some searching may be necessary.
		|only if haveq(32230)
	step
		kill Mighty Devilsaur##69406 |q 32228/1 |goto Isle of Thunder/0 53.2,56.3
		|tip He patrols around this circular path, some searching may be necessary.
		|only if haveq(32228)
	step
		kill Animated Warrior##67473+ |q 32285/1  |goto Isle of Thunder 43.0,55.2
		|only if haveq(32285)
	step
		kill Shan'ze Bloodseeker##69431+, Shan'ze Animator##70069+ |q 32287/1 |goto Isle of Thunder/0 47.0,61.4
		|only if haveq(32287)
	////TURNIN
	step
	label "turnin"
		talk Amalia Penshire##69371
		turnin The Creeping Carpet of Ihgaluk##32489 |goto Isle of Thunder 47.0,66.8
		turnin Just Some Light Clean-Up Work##32299 |goto Isle of Thunder 47.0,66.8
		turnin Left to Rot##32491 |goto Isle of Thunder 47.0,66.8
		|only if haveq(32299) or haveq(32489) or haveq(32491)
	step
		talk Archmage Aethas Sunreaver##67660
		turnin The Skumblade Threat##32204 |goto Isle of Thunder 46.9,66.9
		turnin Manipulating the Saurok##32254 |goto Isle of Thunder 46.9,66.9
		turnin Subtle Encouragement##32605 |goto Isle of Thunder 46.9,66.9
		turnin The Skumblade Threat##32204 |goto Isle of Thunder 46.9,66.9
		turnin De-Constructed##32255 |goto Isle of Thunder 46.9,66.9
		|only if haveq(32489) or haveq(32605) or haveq(32254) or haveq(32255) or haveq(32204)
	step
		talk Sunwalker Dezco##69425
		turnin The Residents of Ihgaluk##32274 |goto Isle of Thunder 46.8,66.7
		|only if haveq(32274)
	step
		talk Elina Zaralae##69418
		turnin Dark Offerings##32217 |goto Isle of Thunder 36.7,64.7
		turnin Heinous Sacrifice##32215 |goto Isle of Thunder 36.7,64.7
		|only if haveq(32217) or haveq(32215)
	step
		talk Kethiel Sunlance##67984
		turnin Pterrible Ptorment##32216 |goto Isle of Thunder 36.8,64.9
		turnin Preventing a Future Threat##32227 |goto Isle of Thunder 36.8,64.9
		|only if haveq(32216) or haveq(32227)
	step
		talk Halduron Brightwing##70520
		turnin Harbingers of the Loa##32252 |goto Isle of Thunder 36.8,64.8
		turnin Surgical Death##32275 |goto Isle of Thunder 36.8,64.8
		turnin Dangers of the Za'Tual##32200 |goto Isle of Thunder 36.8,64.8
		accept Encroaching Force##32521 |goto Isle of Thunder 36.8,64.8
		accept The Beast Pens##32523 |goto Isle of Thunder 36.8,64.8
		accept The Beating of Troll Drums##32524 |goto Isle of Thunder 36.8,64.8
		accept Among the Bones##32293 |goto Isle of Thunder 36.8,64.8
		accept Imposing Threat##32522 |goto Isle of Thunder 36.8,64.8
		|only if haveq(32252) or haveq(32275) or haveq(32200) or completedq(32252) or completedq(32275) or completedq(32200)
		Click here when no more quests are available |confirm --|noquest
	step
		talk Ryshelle Brightlock##69389
		turnin Stone Cold##32219 |goto Isle of Thunder 38.5,51.2
		turnin Rise No More!##32224 |goto Isle of Thunder 38.5,51.2
		turnin Into the Crypts##32226 |goto Isle of Thunder 38.5,51.2
		turnin The Conquest of Stone##32517 |goto Isle of Thunder 38.5,51.2
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 38.6,51.1
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |goto Isle of Thunder 38.5,51.3
		turnin The Bloodletter##32495 |goto Isle of Thunder 38.5,51.3
		turnin Soul Surrender##32220 |goto Isle of Thunder 38.5,51.3
		turnin The Call of Thunder##32225 |goto Isle of Thunder 38.5,51.3
		accept Encroaching Force##32521 |or |goto Isle of Thunder 38.5,51.3
		accept Competing Magic##32520 |or |goto Isle of Thunder 38.5,51.3
		accept Imposing Threat##32522 |or |goto Isle of Thunder 38.5,51.3
		accept The Beating of Troll Drums##32524 |or |goto Isle of Thunder 38.5,51.3
		accept The Beast Pens##32523 |or |goto Isle of Thunder 38.5,51.3
		accept Among the Bones##32293 |or |goto Isle of Thunder 38.5,51.3
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212) and haveq(32201) or thunderstage()>=2 and completedq(32212) and completedq(32201)
	step
		talk Ryshelle Brightlock##69389
		turnin The Conquest of Stone##32517 |goto Isle of Thunder 32.9,52.6
		turnin Into the Crypts##32226 |goto Isle of Thunder 32.9,52.6
		turnin Stone Cold##32219 |goto Isle of Thunder 32.9,52.6
		turnin Rise No More!##32224 |goto Isle of Thunder 32.9,52.6
		|only if thunderstage()==1
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 33.1,53.0
		|only if thunderstage()==1
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |goto Isle of Thunder 33.0,52.8
		turnin Soul Surrender##32220 |goto Isle of Thunder 33.0,52.8
		turnin The Call of Thunder##32225 |goto Isle of Thunder 33.0,52.8
		accept Competing Magic##32561 |or |goto Isle of Thunder 33.0,52.8
		accept Imposing Threat##32562 |or |goto Isle of Thunder 33.0,52.8
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()==1
	step
		talk Lor'themar Theron##67990
		accept Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58
		accept Competing Magic##32520 |goto Isle of Thunder/0 32.51,35.58
		accept Imposing Threat##32522 |goto Isle of Thunder/0 32.51,35.58
		accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 32.51,35.58
		accept The Beast Pens##32523 |goto Isle of Thunder/0 32.51,35.58
		accept Among the Bones##32293 |goto Isle of Thunder/0 32.51,35.58
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=2 and completedq(32212) and not haveq(32201) and not completedq(32201)
	step
		kill 1 Horgak the Enslaver##70176 |q 32562/1 |only if haveq(32562) |goto Isle of Thunder/0 45.7,59.5
		kill 1 Horgak the Enslaver##70176 |q 32522/1 |only if haveq(32522) |goto Isle of Thunder/0 45.7,59.5
		|only if haveq(32562) or haveq(32522)
	step
		kill Arcweaver Jor'guva##69665 |q 32561/1 |only if haveq(32561) |goto Isle of Thunder 44.2,68.7
		kill Arcweaver Jor'guva##69665 |q 32520/1 |only if haveq(32520) |goto Isle of Thunder 44.2,68.7
		|only if haveq(32561) or haveq(32520)
	step
		kill Arcweaver Jor'guva##69665+ |q 32520/1 |goto Isle of Thunder 44.2,68.7
		|only if haveq(32520)
	step
		click Orb of Translocation##184500 |goto Isle of Thunder 33.0,52.6
		Teleport to the Crimson Treader |goto Isle of Thunder 28.5,51.6 |noway |c
		|only if haveq(32561)
	step
		kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.1,35.6
		|only if haveq(32521)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.9,79.4
		|only if haveq(32293)
	step
		talk Lor'themar Theron##67990
		turnin Competing Magic##32561 |goto Isle of Thunder 28.4,52.4
		turnin Encroaching Force##32521 |goto Isle of Thunder 28.4,52.4
		turnin Imposing Threat##32562 |goto Isle of Thunder 28.4,52.4
		|only if haveq(32561) or haveq(32521) or haveq(32562)
		|only if thunderstage()==1
	step
		talk Lor'themar Theron##67990
		turnin Za'Tual##32729 |goto Isle of Thunder 32.6,35.5
		turnin Encroaching Force##32521 |goto Isle of Thunder 32.6,35.5
		turnin Competing Magic##32520 |goto Isle of Thunder 32.6,35.5
		turnin Imposing Threat##32562 |goto Isle of Thunder 32.6,35.5
		turnin Imposing Threat##32522 |goto Isle of Thunder 32.6,35.5
		|only if thunderstage()>=2  and completedq(32212) or haveq(32729) or haveq(32521) or haveq(32520) or haveq(32562)
	step
		talk Archmage Aethas Sunreaver##67660
		turnin Subtle Encouragement##32605 |goto Isle of Thunder 32.6,33.0
		accept De-Constructed##32255 |goto Isle of Thunder 32.6,33.0
		accept The Skumblade Threat##32204 |goto Isle of Thunder 32.6,33.0
		Click here when no more quests are available |confirm --|noquest
		|only if haveq(32605) or haveq(32204) or haveq(32255)
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |only if haveq(32201) |goto Isle of Thunder 33.7,33.7
		turnin The Call of Thunder##32225 |only if haveq(32225) |goto Isle of Thunder 33.7,33.7
		turnin Soul Surrender##32220 |only if haveq(32220) |goto Isle of Thunder 33.7,33.7
		|only if haveq(32201) or haveq(32225) or haveq(32220)
	step
		talk Ryshelle Brightlock##69389
		turnin Rise No More!##32224 |only if haveq(32224) |goto Isle of Thunder 33.7,33.7
		turnin The Conquest of Stone##32517 |only if haveq(32517) |goto Isle of Thunder 33.7,33.7
		turnin Stone Cold##32219 |only if haveq(32219) |goto Isle of Thunder 33.7,33.7
		|only if haveq(32224) or haveq(32517) or haveq(32219)
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 33.6,33.9
		|only if haveq(32218)
	step
		talk Girana the Blooded##67673
		turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.5,35.2
		turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.5,35.2
		|only if haveq(32230) or haveq(32228) or completedq(32230) or completedq(32228)
	step
		talk Magister Hathorel##67663
		turnin A Wing to Fly On##32506 |goto Isle of Thunder 32.5,35.2
		|only if haveq(32506)
	step
		talk High Arcanist Savor##67662
		turnin The Sleepless Legion##32285 |goto Isle of Thunder 33.5,35.1
		turnin Enemies Beneath the Tower##32287 |goto Isle of Thunder 33.5,35.1
		|only if haveq(32285) or haveq(32287)
	step
		talk Elina Zaralae##69418
		turnin Heinous Sacrifice##32215 |goto Isle of Thunder 32.5,35.5
		turnin Dark Offerings##32217 |goto Isle of Thunder 32.5,35.5
		|only if haveq(32215) or haveq(32217)
	step
		talk Kethiel Sunlance##67984
		turnin Preventing a Future Threat##32227 |goto Isle of Thunder/0 32.5,35.6
		|only if haveq(32227)
	step
		talk Lor'themar Theron##67990
		accept Encroaching Force##32521 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Competing Magic##32520 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Imposing Threat##32522 |or 2 |goto Isle of Thunder 32.5,35.6
		accept The Beating of Troll Drums##32524 |or 2 |goto Isle of Thunder 32.5,35.6
		accept The Beast Pens##32523 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Among the Bones##32293 |goto Isle of Thunder 32.5,35.6
		Click here when no more quests are available |confirm --|noquest
	step
		kill Arcweaver Jor'guva##69665 |q 32561/1 |only if haveq(32561) |goto Isle of Thunder 44.2,68.7
		kill Arcweaver Jor'guva##69665 |q 32520/1 |only if haveq(32520) |goto Isle of Thunder 44.2,68.7
		|only if haveq(32561) or haveq(32520)
	step
		kill Nurkala##69663 |q 32521/1 |only if haveq(32521) |goto Isle of Thunder 45.0,35.5
		|only if haveq(32521)
	step
		kill 1 Horgak the Enslaver##70176 |q 32522/1 |only if haveq(32522) |goto Isle of Thunder/0 45.7,59.5
		|only if haveq(32522)
	step
		kill Zur'chaka the Bonecrafter##69666+ |goto Isle of Thunder 54.5,45.2
		|only if haveq(32294)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.9,79.4
		|only if haveq(32293)
	step
		talk Scout Captain Elsia##67985
		turnin Raining Bones##32294 |goto Isle of Thunder 47.2,40.7
		|only if haveq(32294)
	step
		talk Lor'themar Theron##67990
		turnin Harbingers of the Loa##32252 |goto Isle of Thunder 32.5,35.5
		turnin Dangers of Trolltonshire##32200 |goto Isle of Thunder 32.5,35.5
		turnin Among the Bones##32293 |goto Isle of Thunder 32.5,35.5
		turnin Surgical Death##32275 |goto Isle of Thunder 32.5,35.5
		|only if haveq(32252) or haveq(32200) or haveq(32293) or haveq(32275)
	step
		Routing to proper section |next "beast" |only if haveq(32523) or completedq(32523)
		Routing to proper section |next "terrace" |only if haveq(32524) or completedq(32524)
		Routing to proper section |next "end" |only if default
	////CONQUEROR'S TERRACE
	step
	label "terrace"
		talk Scout Captain Elsia##67985
		turnin The Beating of Troll Drums##32524 |goto Isle of Thunder 54.0,49.8
		accept Very Disarming##32233 |goto Isle of Thunder 54.0,49.8
		accept This Just Won't Do##32206 |goto Isle of Thunder 54.0,49.8
		accept What's Inside Counts##32232 |goto Isle of Thunder 54.0,49.8
		Click here when no more quests are available |confirm --|noquest
		|only if haveq(32524) or completedq(32524)
	step
		talk Magister Edien Sunhollow##67986
		accept Power Play##32494 |or 2 |goto Isle of Thunder/0 53.9,49.9
		accept Knowledge Is Power##32234 |or 2 |goto Isle of Thunder/0 53.9,49.9
		accept They All Fall Down##32493 |or 2 |goto Isle of Thunder/0 53.9,49.9
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32524)
	stickystart "ritualfact"
	stickystart "loablade"
	stickystart "zandacapture"
	step
		kill Arcanital Ra'kul##69300
		collect Mask of the Dark Mystic##93734 |q 32494/2 |goto Isle of Thunder/0 56.8,46.3
		|only if completedq(32524)
	step
		kill Spiritbinder Tu'chek##69301
		collect Mask of the Spirit-Caller##93733 |q 32494/1 |goto Isle of Thunder/0 59.4,56.6
		|only if completedq(32524)
	step
		kill Guardian Tak'u##69336+ |q 32232/1 |goto Isle of Thunder/0 60.2,54.0
	step
	label "ritualfact"
		click Ritual Artifact##218053
		collect 6 Ritual Artifact##93735 |q 32234/1 |goto Isle of Thunder/0 57.1,50.4
		|only if completedq(32524)
	step
	label "loablade"
		click Loa-Infused Blade##218056
		collect 7 Loa-Infused Blade##93736 |q 32233/1 |goto Isle of Thunder/0 55.7,50.7
		|only if completedq(32524)
	step
	label "zandacapture"
		kill Zandalari Acolyte##69295+, Zandalari Bloodguard##69294+, Zandalari Haruspex##69297+, Zandalari Soultwister##69296+ |q 32206/1
		kill Spirit-Bound Sentry##69335+
		Use your _Resonance Siphon_ on Spirit-Bound Sentries.  |use Resonance Siphon##93806
		5 Zandalari Spirits captured |q 32493/1 |goto Isle of Thunder 55.7,50.7
		|only if completedq(32524)
	step
		talk Scout Captain Elsia##67985
		turnin This Just Won't Do##32206 |goto Isle of Thunder/0 53.9,49.8
		turnin Very Disarming##32233 |goto Isle of Thunder/0 53.9,49.8
		turnin What's Inside Counts##32232 |goto Isle of Thunder/0 53.9,49.8
		|only if completedq(32524)
	step
		talk Magister Edien Sunhollow##67986
		turnin Power Play##32494 |goto Isle of Thunder/0 53.9,49.8
		turnin Knowledge Is Power##32234 |goto Isle of Thunder/0 53.9,49.8
		turnin They All Fall Down##32493 |goto Isle of Thunder/0 53.9,49.8
		accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 53.9,49.8
		accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 53.9,49.8
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32524)
	step
		talk Scout Captain Elsia##67985
		accept Raining Bones##32294 |or |goto Isle of Thunder 54.0,49.9
		accept Encroaching Force##32565 |or |goto Isle of Thunder 54.0,49.9
		Click here when no more quests are available |confirm --|noquest
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32294/1 |goto Isle of Thunder 54.5,45.3
		|only if haveq(32294)
	step
		kill Nurkala##69663 |q 32565/1 |goto Isle of Thunder 61.9,61.6
		|only if haveq(32565)
	step
		talk Scout Captain Elsia##67985
		turnin Raining Bones##32294 |goto Isle of Thunder 53.9,49.8
		turnin Encroaching Force##32565 |goto Isle of Thunder 53.9,49.8
		|next "end" |only if thunderstage()<=3
	step
		Use your Arcane Emancipator on Scout Alaine |use Arcane Emancipator##93761
		Scout Alaine rescued |q 32209/3 |goto Isle of Thunder/1 28.0,62.2
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Elearis |use Arcane Emancipator##93761
		Scout Elearis rescued |q 32209/1 |goto Isle of Thunder/1 44.3,54.8
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Merior |use Arcane Emancipator##93761
		Scout Merior rescued |q 32209/2 |goto Isle of Thunder/1 54.3,35.2
		|only if haveq(32209)
	step
		clicknpc Lightning Drill##69671
		Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.0,69.9
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.6,37.5
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.2,15.4
		|only if haveq(32208)
	step
		kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32209)
	step
		kill Metal Lord Mono-Han##69326+ |q 32208/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32208)
	step
		Click the Quest Complete box in the upper left corner of your screen below your minimap
		turnin Save Our Scouts!##32209
		turnin Maximum Capacitor##32208
		accept Forge Ahead!##32292 |only if thunderstage()>=4
		Click here when no more quests are available |confirm --|noquest
		|next "end" |only if thunderstage()<=4
		|only if completedq(32524) or completedq(32523)
	step
		kill Itoka##69461+ |q 32292/1 |goto Isle of Thunder/0 57.7,34.0
		|only if completedq(32524) or completedq(32523)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment##93731 |q 32292/2 |goto Isle of Thunder/0 55.4,38.4
		|only if completedq(32524) or completedq(32523)
	step
		talk Scout Captain Elsia##70551
		turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.7,42.7
		|only if completedq(32524) or completedq(32523)
	step
		talk Taoshi##69413
		accept Extended Shore Leave##32676 |goto Isle of Thunder/0 58.6,42.7
		accept Raiding the Vault##32677 |goto Isle of Thunder/0 58.6,42.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=5
	step
		kill Lu-Shero##69274+
		collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 58.6,66.2
		|only if haveq(32677)
	step
		click Stormy Chest##218853
		Choker of Storms |q 32677/1 |goto 33.2,28.3
		|only if haveq(32677)
	step
		collect Workshop Orders##95371 |q 32676/2 |goto Isle of Thunder/0 63.8,38.9
		|only if haveq(32676)
		|only if thunderstage()>=5
	step
		kill Arcweaver Uzan##69272+ |q 32676/1 |goto Isle of Thunder/0 67.7,46.3
		|only if haveq(32676)
		|only if thunderstage()>=5
	step
		talk Lor'themar Theron##67990
		turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.5,35.5
		turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.5,35.5
		turnin Competing Magic##32520 |goto Isle of Thunder/0 32.5,35.5
		|next "end"
		|only if thunderstage()>=5
	////BEAST PENS
	step
	label "beast"
		talk Scout Captain Elsia##67985
		Find Scout Captain Elsia at the Beast Pens |q 32523/1 |goto Isle of Thunder/0 47.1,40.7
		turnin The Beast Pens##32523 |goto Isle of Thunder/0 47.1,40.7
	step
		talk Magister Edien Sunhollow##67986
		accept Saur Loser##32207 |goto Isle of Thunder/0 47.2,40.8
		accept Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.2,40.8
		accept Loa-saur##32283 |goto Isle of Thunder/0 47.2,40.8
		Click here when no more quests are available |confirm --|noquest
	step
		talk Scout Captain Elsia##67985
		accept Dino Might##32298 |or |goto Isle of Thunder/0 47.1,40.7
		accept Compy Stomp##32282 |or |goto Isle of Thunder/0 47.1,40.7
		Click here when no more quests are available |confirm --|noquest
	stickystart "saurfetish"
	stickystart "trainedcompy"
	step
		kill Loa Speaker##69302 |q 32283/1 |goto 53.6,44.6
		|only if haveq(32283)
	step
	label "saurfetish"
		click Saur Fetish##218373
		kill Zandalari Saurcaller##69154+
		kill Zandalari Fetish-Binder##69155+
		collect 5 Saur Fetish##93668 |goto Isle of Thunder/0 49.7,38.8
		|only if haveq(32298)
	step
	label "trainedcompy"
		Use your _Saur Fetish_ on any dinosaurs near this spot |use Saur Fetish##93668 |only if haveq(32298)
		Use 5 Saur Fetishes on dinosaurs in the area |q 32298/1 |only if haveq(32298) |goto Isle of Thunder/0 49.2,40.9
		kill Trained Compy##58071+, Zandalari Fetish-Binder##69155+, Tamed Bladetalon##69180+, Zandalari Beastlord##69144+, Zandalari Fetish-Binder##69155+, Zandalari Saurcaller##69154+, Maturing Raptor##69183+
		Kill 10 Beast Pens Trolls |q 32207/1 |goto Isle of Thunder/0 49.2,40.9 |only if haveq(32207)
		You can find more around the following location |goto 49.4,38.2
		kill 5 Raptor##107 |q 32282/1 |goto Isle of Thunder/0 49.2,40.9 |only if haveq(32282)
		You can find more raptors around the following location |goto 49.6,37.9 |only if haveq(32282)
		kill 10 Trained Compy |q 32282/2 |goto Isle of Thunder/0 49.2,40.9 |only if haveq(32282)
		|only if haveq(32207) or haveq(32298)
	step
		Kill all the _Master Callers_ surrounding the direhorn
		Disrupt the Binding Ritual |q 32297/1 |goto Isle of Thunder/0 51.8,32.9
		|only if haveq(32297)
	step
		talk Scout Captain Elsia##67985
		turnin Dino Might##32298 |goto Isle of Thunder/0 47.2,40.6
		turnin Compy Stomp##32282 |goto Isle of Thunder/0 47.2,40.6
	step
		talk Magister Edien Sunhollow##67986
		turnin Saur Loser##32207 |goto Isle of Thunder/0 47.3,40.8
		turnin Loa-saur##32283 |goto Isle of Thunder/0 47.3,40.8
		turnin Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.3,40.8
		accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 47.3,40.8
		accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 47.3,40.8
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32523)
	 step
		talk Scout Captain Elsia##67985
		accept Encroaching Force##32563 |goto Isle of Thunder 47.2,40.6
		accept Zandalari on the Rise##32564 |goto Isle of Thunder 47.2,40.6
		Click here when no more quests are available |confirm --|noquest
		|only if completedq(32523)
	step
		kill Arcweaver Jor'guva##69665 |q 32564/1 |goto Isle of Thunder 44.2,68.7
		|only if haveq(32564)
	step
		kill Nurkala##69663 |q 32563/1 |goto Isle of Thunder 45.3,35.1
		|only if haveq(32563)
	 step
		talk Scout Captain Elsia##67985
		turnin Encroaching Force##32563 |goto Isle of Thunder 47.2,40.6
		turnin Zandalari on the Rise##32564 |or |goto Isle of Thunder 47.2,40.6
	step
		Use your Arcane Emancipator on Scout Alaine |use Arcane Emancipator##93761
		Scout Alaine rescued |q 32209/3 |goto Isle of Thunder/1 28.0,62.2
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Elearis |use Arcane Emancipator##93761
		Scout Elearis rescue |q 32209/1 |goto Isle of Thunder/1 44.3,54.8
		|only if haveq(32209)
	step
		Use your Arcane Emancipator on Scout Merior |use Arcane Emancipator##93761
		Scout Merior rescued |q 32209/2 |goto Isle of Thunder/1 54.3,35.2
		|only if haveq(32209)
	step
		clicknpc Lightning Drill##69671
		Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.0,69.9
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.6,37.5
		|only if haveq(32208)
	step
		clicknpc Lightning Drill##69671
		Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.2,15.4
		|only if haveq(32208)
	step
		kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32209)
	step
		kill Metal Lord Mono-Han##69326 |q 32208/4 |goto Isle of Thunder/0 54.9,31.3
		|only if haveq(32208)
	step
		Click the Quest Complete box in the upper left corner of your screen below your minimap
		turnin Save Our Scouts!##32209
		turnin Maximum Capacitor##32208
		accept Forge Ahead!##32292
		Click here when no more quests are available |confirm --|noquest
		|only if haveq(32209) or completedq(32208) or haveq(32208) or completedq(32209)
	step
		kill Itoka##69461+ |q 32292/1 |goto Isle of Thunder/0 57.7,34.0
		|only if haveq(32292)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment##93731 |q 32292/2 |goto Isle of Thunder/0 55.4,38.4
		|only if haveq(32292)
	step
		talk Scout Captain Elsia##70551
		turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.7,42.7
		|only if haveq(32292)
		|next "end" |only if thunderstage()<=4
		|next |only if default |only if thunderstage()>=5
	step
		talk Taoshi##69413
		accept Extended Shore Leave##32676 |or |goto Isle of Thunder/0 58.6,42.7
		accept Raiding the Vault##32677 |or |goto Isle of Thunder/0 58.6,42.7
		Click here when no more quests are available |confirm --|noquest
		|only if thunderstage()>=4
	step
		kill Lu-Shero##69274+
		collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 58.6,66.2
		|only if haveq(32677)
	step
		click Stormy Chest##218853
		Choker of Storms |q 32677/1 |goto 33.2,28.3
		|only if haveq(32677)
	step
		collect Workshop Orders##95371 |q 32676/2 |goto Isle of Thunder/0 63.8,38.9
		|only if haveq(32676)
	step
		kill Arcweaver Uzan##69272+ |q 32676/1 |goto Isle of Thunder/0 67.7,46.3
		|only if haveq(32676)
	step
		talk Lor'themar Theron##67990
		turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.5,35.5
		turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.5,35.5
		|next "end"
	step
	label "end"
		talk Vasarin Redmorn##67672
		buy 1 Grand Commendation of the Sunreaver Onslaught##95548 |n |goto Isle of Thunder/0 33.4,32.4
		Use the Commendation of the Shado-Pan you just purchased |complete ZGV:GetReputation("Sunreaver Onslaught").hasBonus |use Grand Commendation of the Sunreaver Onslaught##95548
		|only if rep("Sunreaver Onslaught")>=Revered
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the guide |confirm |next "start"
]])

---------------------
----- Therazane -----
---------------------

ZygorGuidesViewer:RegisterInclude("H_Therazane_PreQuest",[[
		Click the Warchief's Command Board
		|tip It looks like a wooden board hanging between 2 wooden posts, with papers pinned on it.
		accept Warchief's Command: Deepholm!##27722 |goto Orgrimmar,49.7,76.5
	step
		talk Farseer Krogar##45244
		turnin The War Has Many Fronts##27442 |goto 50.5,38.4
		turnin Warchief's Command: Deepholm!##27722 |goto 50.5,38.4
		accept The Maelstrom##27203 |goto 50.5,38.4
	step
		talk Thrall##45042
		turnin The Maelstrom##27203 |goto The Maelstrom,33.4,50.2
		accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.4,50.2
	step
		Click the Wyvern |goto 32.5,52.0
		|tip It looks like a wind rider flying in place.
		You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
	step
		talk Maruut Stonebinder##43065
		turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.6,53.0
		accept Gunship Down##26245 |goto Deepholm,49.6,53.0
	step
		talk Seer Kormo##43397
		accept Elemental Energy##27136 |goto 49.7,52.9
		accept The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Earthcaller Yevaa##42573
		accept Where's Goldmine?##26409 |goto 49.5,53.3
	step
		talk Caretaker Nuunwa##45300
		home Temple of Earth |goto 49.2,51.9
	step
		talk Initiate Goldmine##42574
		turnin Where's Goldmine?##26409 |goto 46.5,57.3
		accept Explosive Bonding Compound##26410 |goto 46.5,57.3
		accept Something that Burns##27135 |goto 46.5,57.3
	step
		kill Rockslice Flayer##42606+
		collect 5 Quartzite Resin##58501 |q 26410/1 |goto 45.5,57.9
	step
		talk Initiate Goldmine##42574
		turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
	step
		Use your Depleted Totem |use Depleted Totem##60835
		kill Lodestone Elemental##43258+, Energized Geode##43254+
		|tip Kill them next to your Depleted Totems.
		Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
	step
		Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
		kill Magmatooth##45099
		collect The Burning Heart##60837 |q 27135/1 |goto 52.0,58.9
	step
		talk Seer Kormo##43397
		turnin Elemental Energy##27136 |goto 49.7,52.9
	step
		talk Initiate Goldmine##42574
		turnin Something that Burns##27135 |goto 46.5,57.3
		accept Apply and Flash Dry##26411 |goto 46.5,57.3
	step
		Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
		|tip He's laying on the ground next to Initiate Goldmine.
		Apply the Explosive Bonding Compound |q 26411/1 |goto 46.6,57.2
	step
		talk Initiate Goldmine##42574
		turnin Apply and Flash Dry##26411 |goto 46.5,57.3
		accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
	step
		Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
	step
		talk Earthcaller Yevaa##42573
		turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
		accept To Stonehearth's Aid##26484 |goto 49.5,53.3
	stickystart "deepstoneelemental"
	step
		Click the Slain Cannoneer
		|tip It looks like a dead orc on the deck of the crashed zeppelin, laying next to a pile of cannon balls and a cannon.
		Receive the Second Clue |q 26245/2 |goto 56.1,74.2
	step
		Click Captain Skullshatter
		|tip He's a dead orc laying on the ground next to a small round table in a side room on the deck of the crashed zeppelin.
		Receive the First Clue |q 26245/1 |goto 53.5,73.8
	step
		Click the Captain's Log
		|tip It's a gray book laying on the small round table next to Captain Skullshatter.
		accept Captain's Log##26246 |goto 53.6,73.8
	step
		Click the Unexploded Artillery Shell
		|tip It looks like a metal casing, or bullet type of object laying on the ground underneath the crashed zeppelin.  You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
		Receive the Third Clue |q 26245/3 |goto 56.7,76.4
	step
	label "deepstoneelemental"
		kill 5 Deepstone Elemental##43026 |q 26244/1 |goto 55.9,74.9
	step
		talk Maruut Stonebinder##43065
		turnin Gunship Down##26245 |goto 49.6,52.9
		turnin Captain's Log##26246 |goto 49.6,52.9
	step
		talk Seer Kormo##43397
		turnin The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Maruut Stonebinder##43065
		accept Diplomacy First##26247 |goto 49.6,53.0
	step
		talk Stormcaller Mylra##42684
		turnin Diplomacy First##26247 |goto 62.4,52.6
		accept All Our Friends Are Dead##26248 |goto 62.4,52.6
		accept The Admiral's Cabin##26249 |goto 62.4,52.6
	step
		All around on this airship:
		Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
		|tip They look like dead Alliance soldiers all over this airship.
		Receive 6 Slain Crew Member Information |q 26248/1
	step
		Enter the doorway on the main deck of the airship:
		talk First Mate Moody##43082
		turnin The Admiral's Cabin##26249
		accept Without a Captain or Crew##26427
	step
		Leave through the doorway and immediately turn right:
		Click the Bottle of Whiskey
		|tip It's a yellow bottle sitting on the edge of a small life boat on the side of the airship.
		collect Bottle of Whiskey##58798 |q 26427/1
	step
		All around on the deck of the airship:
		Click a Spool of Rope
		|tip They are coiled up ropes laying all around on the deck of the airship.
		collect Spool of Rope##58806 |q 26427/2
	step
		Enter the doorway on the main deck of the airship:
		talk First Mate Moody##43082
		turnin Without a Captain or Crew##26427
	step
		Go to the very top of the airship:
		talk Stormcaller Mylra##42684
		turnin All Our Friends Are Dead##26248
		accept Take No Prisoners##26251
		accept On Second Thought, Take One Prisoner##26250
	stickystart "twisaboteur"
	step
		Go onto the main deck of the ship and go down the stairs to the deck below:
		Fight Mor'norokk the Hateful until he surrenders
		|tip He's downstairs in the airship, in the very back of the first level you come to.
		talk Mor'norokk the Hateful##42801
		Subdue Mor'norokk the Hateful |q 26250/1
	step
	label "twisaboteur"
		All around on this lower deck of the airship:
		kill 6 Twilight Saboteur |q 26251/1
	step
		Go to the very top of the airship:
		talk Stormcaller Mylra##42684
		turnin Take No Prisoners##26251
		turnin On Second Thought, Take One Prisoner##26250
		accept Some Spraining to Do##26254
	step
		Next to Stormcaller Mylra:
		Click Stormbeak
		|tip It's a gryphon flying in place next to the airship.
		Interrogate Mok'norrok |q 26254/1
	step
		When you land on the airship again:
		talk Stormcaller Mylra##42684
		turnin Some Spraining to Do##26254
		accept Return to the Temple of Earth##26255
	step
		talk Maruut Stonebinder##43065
		turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
		accept Deathwing's Fall##26258 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		accept Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		Go to this spot
		Reach Deathwing's Fall |q 26258/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Deathwing's Fall##26258 |goto 59.4,58.2
		accept Bleed the Bloodshaper##26256 |goto 59.4,58.2
	stickystart "livingblood"
	step
		kill Twilight Bloodshaper##43218+
		collect Twilight Orders##60264 |q 26256/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Bleed the Bloodshaper##26256 |goto 61.5,60.6
		accept Question the Slaves##26261 |goto 61.5,60.6
	step
		Click the Slavemaster's Coffer
		|tip It looks like a small wooden chest on the ground inside a red tent.
		collect Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
	step
	label "livingblood"
		kill Living Blood##43123+
		collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.2,60.1
	step
		Click Ball and Chains
		|tip They are attached to the feet of the Enslaved Miners around this area.
		Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Question the Slaves##26261 |goto 64.5,65.5
		accept The Forgemaster's Log##26260 |goto 64.5,65.5
	step
		Click the Forgemaster's Log
		|tip It's a blue-ish book laying on the floor at the very top of this tower.
		turnin The Forgemaster's Log##26260 |goto 63.7,55.4
		accept Silvermarsh Rendezvous##27007 |goto 63.7,55.4
	step
		Reach Upper Silvermarsh |q 27007/1 |goto 70.6,61.2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Silvermarsh Rendezvous##27007
		accept Quicksilver Submersion##27010
	step
		Click the Trogg Crate
		|tip It's a brown box sitting next to the water.
		collect Trogg Crate##60809 |q 27010 |goto 71.8,64.3
		kill Murkstone Trogg##44936
		collect Maziel's Research##60816 |n
		Click Maziel's Research in your bags |use Maziel's Research##60816
		accept Twilight Research##27100
	step
		Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		Watch the dialogue
		Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.9,64.8
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Quicksilver Submersion##27010 |goto 74.9,64.8
		accept The Twilight Overlook##27061 |goto 74.9,64.8
	step
		kill Mercurial Ooze##43158+
		collect 4 Twilight Research Notes##60814 |q 27100/1 |goto 72.5,65.2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Twilight Research##27100 |goto 72.5,65.2
		accept Maziel's Revelation##27101 |goto 72.5,65.2
	step
		Click Maziel's Journal
		|tip It looks like a small black book laying on the ground on this tiny island in a pond, next to a big rock.
		turnin Maziel's Revelation##27101 |goto 67.2,70.2
		accept Maziel's Ascendancy##27102 |goto 67.2,70.2
	step
		Enter the cave |goto 69.5,68.0 < 15
		kill Maziel##44967 |q 27102/1 |goto 72.8,62.0
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Maziel's Ascendancy##27102 |goto 72.8,62.0
	step
		Leave the cave |goto 69.5,68.0 < 15
		talk Stormcaller Mylra##44010
		turnin The Twilight Overlook##27061 |goto 64.5,82.1
		accept Big Game, Big Bait##26766 |goto 64.5,82.1
		accept To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Scalesworn Cultist##44221+
		collect Twilight Snare##60383 |q 26768/1 |goto 68.2,77.9
	step
		talk Stormcaller Mylra##44010
		turnin To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Jadecrest Basilisk##43981+
		Use Mylra's Knife on Jadefire Basilisk corpses |use Mylra's Knife##60382
		collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto 59.9,83.6
	step
		talk Stormcaller Mylra##44010
		turnin Big Game, Big Bait##26766 |goto 64.5,82.1
		accept Testing the Trap##26771 |goto 64.5,82.1
	step
		Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		kill Stonescale Matriarch##44148 |q 26771/1 |goto 50.9,85.3
	step
		talk Stormcaller Mylra##44010
		turnin Testing the Trap##26771 |goto 64.5,82.1
		accept Abyssion's Minions##26857 |goto 64.5,82.1
	step
		talk Seer Galekk##44222
		accept Block the Gates##26861 |goto 64.6,82.2
	stickystart "abyssionunder"
	step
		Use your Stormstone next to the swirling blue portal |use Stormstone##60501
		Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
	step
		Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
		Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
	step
	label "abyssionunder"
		kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
		Defeat 8 Abyssion's Underlings |q 26857/1 |goto 69.9,76.7
	step
		talk Seer Galekk##44222
		turnin Block the Gates##26861 |goto 64.6,82.2
	step
		talk Stormcaller Mylra##44010
		turnin Abyssion's Minions##26857 |goto 64.5,82.2
		accept The World Pillar Fragment##26876 |goto 64.5,82.2
	step
		Use your Earthen Ring Banner |use Earthen Ring Banner##60810
		kill Abyssion##
		Click The First Fragment of the World Pillar
		|tip It's a floating green rock that appears after you kill Abyssion.
		collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto 69.9,76.9
	step
		talk Maruut Stonebinder##43065
		turnin The World Pillar Fragment##26876 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		talk Crag Rockcrusher##43071
		turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
		accept The Quaking Fields##27931 |goto 27.9,68.7
	step
		talk Slate Quicksand##47195
		turnin The Quaking Fields##27931 |goto 30.6,77.7
		accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		accept Elemental Ore##27933 |goto 30.6,77.7
	step
		Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
		|tip They look like glowing giants that walk around this area.
		kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto 32.2,79.1
		kill Jade Rager##44220+
		collect 6 Elemental Ore##60487 |q 27933/1 |goto 32.2,79.1
	step
		talk Slate Quicksand##47195
		turnin The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		turnin Elemental Ore##27933 |goto 30.6,77.7
		accept One With the Ground##27934 |goto 30.6,77.7
	step
		talk Slate Quicksand##47195
		Tell him you are ready for the ritual
		Complete the One With the Ground Ritual |q 27934/1 |goto 30.6,77.7
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin One With the Ground##27934 |goto 30.6,77.7
		accept Bring Down the Avalanche##27935 |goto 30.6,77.7
	step
		kill Avalanchion |q 27935/1 |goto 46.9,89.1
	step
		Leave the cave |goto 43.4,82.0 < 15
		talk Crag Rockcrusher##43071
		turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
		accept Stonefather's Boon##26499 |goto 27.9,68.7
	step
		talk Earthbreaker Dolomite##43160
		accept We're Surrounded##26500 |goto 28.2,69.6
	step
		kill 12 Stone Trogg Ambusher##43134 |q 26500/1 |goto 29.7,68.8
		Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
		|tip They look like dwarves. Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
		Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
	step
		talk Earthbreaker Dolomite##43160
		turnin We're Surrounded##26500 |goto 28.2,69.6
		accept Thunder Stones##26502 |goto 28.2,69.6
	step
		talk Crag Rockcrusher##43071
		turnin Stonefather's Boon##26499 |goto 27.9,68.7
		accept Sealing the Way##26501 |goto 27.9,68.7
	stickystart "thunderstones"
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Shrine |q 26501/4 |goto 27.3,67.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Barracks |q 26501/3 |goto 26.0,68.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Inn |q 26501/2 |goto 26.2,69.8
	step
	label "thunderstones"
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Armory |q 26501/1 |goto 27.3,70.1
		Click Thunder Stones |tip They looks like blue round spiked cannonballs on the ground and in wagons around this area
		collect 12 Thunder Stone##58886 |q 26502/1 |goto 27.3,70.1
	step
		talk Gravel Longslab##43168
		turnin Sealing the Way##26501 |goto 24.5,62.4
		accept Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		turnin Thunder Stones##26502 |goto 24.8,62.2
		accept Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Earthmender Deepvein##43319
		accept Battlefront Triage##26591 |goto 24.6,62.2
	step
		Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965
		|tip They look like dwarves laying on the ground around this area.
		Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
		Click Catapult Parts
		|tip They look kind of like big metal parts laying on the ground around this area
		collect 6 Catapult Part##58944 |q 26564/1 |goto 23.9,60.3
		kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
		kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto 23.9,60.3
	step
		talk Gravel Longslab##43168
		turnin Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Earthmender Deepvein##43319
		turnin Battlefront Triage##26591 |goto 24.6,62.2
	step
		talk Clay Mudaxle##43169
		turnin Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Gravel Longslab##43168
		accept Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		kill Troggzor the Earthinator##43456
		collect The Earthinator's Cudgel##59144 |q 26625/1 |goto 22.6,56.9
	step
		talk Gravel Longslab##43168
		turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		accept Rush Delivery##27126 |goto 24.8,62.2
	step
		talk Peak Grindstone##45043
		turnin Rush Delivery##27126 |goto 20.7,61.6
		accept Close Escort##26632 |goto 20.7,61.6
	step
		talk Peak Grindstone##45043
		Tell him you're ready to escort the catapult
		Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
	step
		talk Pyrium Lodestone##43897
		turnin Close Escort##26632 |goto 22.7,52.0
		accept Keep Them off the Front##26755 |goto 22.7,52.0
	step
		Click an Earthen Catapult
		|tip They look like wooden launchers with stone wheels.
		Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		Bombarb 30 Reinforcements |q 26755/1 |goto 22.4,52.0
	step
		talk Pyrium Lodestone##43897
		turnin Keep Them off the Front##26755 |goto 22.7,52.0
		accept Reactivate the Constructs##26762 |goto 22.7,52.0
	step
		talk Flint Oremantle##43898
		accept Mystic Masters##26770 |goto 22.8,52.1
	step
		Click Deactivated War Construct
		|tip They look like metal golems around this area.
		Reactivate 5 Deactivated War Constructs |q 26762/1 |goto 22.6,47.6
		kill 5 Needlerock Mystic##43995 |q 26770/1 |goto 22.6,47.6
	step
		talk Flint Oremantle##43898
		turnin Mystic Masters##26770 |goto 22.8,52.1
	step
		talk Pyrium Lodestone##43897
		turnin Reactivate the Constructs##26762 |goto 22.7,52.0
		accept Down Into the Chasm##26834 |goto 22.7,52.0
	step
		talk Slate Quicksand##44143
		turnin Down Into the Chasm##26834 |goto 27.6,44.8
		accept Sprout No More##26791 |goto 27.6,44.8
		accept Fungal Monstrosities##26792 |goto 27.6,44.8
	step
		Click the War Guardian
		|tip It looks like a metal golem.
		Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto 27.6,44.7
		Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto 27.6,44.7
	step
		kill 5 Fungal Monstronsity |q 26792/2 |goto 26.8,41.8
		Click Giant Mushrooms
		|tip They look like huge mushrooms with orange caps around this area.
		Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
	step
		talk Slate Quicksand##44143
		turnin Sprout No More##26791 |goto 27.6,44.8
		turnin Fungal Monstrosities##26792 |goto 27.6,44.8
		accept A Slight Problem##26835 |goto 27.6,44.8
	step
		talk Pyrium Lodestone##43897
		turnin A Slight Problem##26835 |goto 22.7,52.0
		accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
	step
		kill Bouldergut##44151
		Rescue Stonefather Oremantle |q 26836/1 |goto 24.5,31.1
	step
		talk Pyrium Lodestone##43897
		turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
		accept The Hero Returns##27937 |goto 22.7,52.0
	step
		talk Stonefather Oremantle##44204
		turnin The Hero Returns##27937 |goto 28.0,68.6
		accept The Middle Fragment##27938 |goto 28.0,68.6
	step
		Click The Stonefather's Safe
		|tip It looks like a metal vault door with gold circles and symbols on it.
		collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto 28.0,68.7
	step
		talk Earthcaller Yevaa##42573
		turnin The Middle Fragment##27938 |goto 49.5,53.3
	step
		talk Maruut Stonebinder##43065
		accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
	step
		talk Earthcaller Torunscar##42730
		turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
		accept Crumbling Defenses##26312 |goto 46.1,45.6
		accept On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Core of Our Troubles##26313 |goto 46.2,45.7
	stickystart "servanttherazane"
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane
		use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Stormcaller Mylra |q 26312/2 |goto 44.3,43.7
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Tawn Winterbluff |q 26312/1 |goto 44.5,41.3
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Hargoth Dimblaze |q 26312/3 |goto 47.6,42.8
	step
	label "servanttherazane"
		kill Irestone Rumbler##42780+
		collect 6 Irestone Core##58168 |q 26313/1 |goto 46.2,42.2
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Bring down 3 Servants of Therazane |q 26314/1 |goto 46.2,42.2
	step
		talk Earthmender Norsala##42731
		turnin Core of Our Troubles##26313 |goto 46.2,45.7
	step
		talk Earthcaller Torunscar##42730
		turnin Crumbling Defenses##26312 |goto 46.1,45.6
		turnin On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Imposing Confrontation##26315 |goto 46.2,45.7
	step
		Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
		|tip He's a huge rock giant that walks around this area.
		Seek Peace with Boden the Imposing |q 26315/1 |goto 49.2,40.1
	step
		talk Earthmender Norsala##42731
		turnin Imposing Confrontation##26315 |goto 46.2,45.7
		accept Rocky Relations##26328 |goto 46.2,45.7
	step
		talk Diamant the Patient##42467
		turnin Rocky Relations##26328 |goto 56.5,42.7
		accept Hatred Runs Deep##26376 |goto 56.5,42.7
		accept Unsolid Ground##26377 |goto 56.5,42.7
	step
		talk Quartz Stonetender##42899
		accept Loose Stones##26375 |goto 56.5,41.0
	stickystart "jadecluster"
	stickystart "lorthunacult"
	step
		kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.2,39.4
	step
	label "jadecluster"
		Click Jade Crystal Clusters
		|tip They look like green glowing rocks sitting on the ground all around this area.
		collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
		Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254
		|tip They look like small rock giants around this area.
		Release 6 Quartz Rocklings |q 26375/1 |goto 59.5,41.5
	step
		Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
		collect Jade Crystal Composite##58783 |q 26377
	step
		Use your Jade Crystal Composite |use Jade Crystal Composite##58783
		Lure an Agitated Tunneler |q 26377/1 |goto 59.6,41.4
	step
	label "lorthunacult"
		kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
		kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
	step
		talk Quartz Stonetender##42899
		turnin Loose Stones##26375 |goto 56.5,41.0
	step
		talk Diamant the Patient##42467
		turnin Hatred Runs Deep##26376 |goto 56.5,42.7
		turnin Unsolid Ground##26377 |goto 56.5,42.7
		accept Violent Gale##26426 |goto 56.5,42.7
	step
		Get next to Felsen the Enduring
		|tip He's a big white rock giant.
		Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
	step
		Fly to the mouth of this cave
		Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Violent Gale##26426
		accept Depth of the Depths##26869 |goto 58.4,25.7
	step
		Follow the path |goto 64.5,21.7 < 15
		Follow the path |goto 65.3,18.4 < 20
		Click the Gigantic Painite Cluster
		|tip It looks like a green crystal cluster near the mouth of the cave.
		turnin Depth of the Depths##26869
		accept A Rock Amongst Many##26871 |goto 66.4,20.6
	step
		Follow the path to this spot, then jump down |goto 64.3,23.5 < 15
		Leave the cave |goto 58.3,25.5 < 15
		talk Diamant the Patient##42467
		turnin A Rock Amongst Many##26871 |goto 56.5,42.7
		accept Entrenched##26436 |goto 56.5,42.7
	step
		talk Kor the Immovable##42469
		turnin Entrenched##26436 |goto 34.3,34.3
		accept Intervention##26438 |goto 34.3,34.3
		accept Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		accept Putting the Pieces Together##26439 |goto 34.6,34.2
	step
		kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+
		kill 12 Jaspertip flayers |q 26438/1 |goto 30.5,46.8
		Click Chalky Crystal Formations
		|tip They look like big white blocks on the ground around this area.
		collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto 30.5,46.8
		Click Dormant Stonebound Elementals
		|tip They look like crumbled rock elementals on the ground around this area.
		Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
	step
		talk Kor the Immovable##42469
		turnin Intervention##26438 |goto 34.3,34.3
		turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		turnin Putting the Pieces Together##26439 |goto 34.5,34.4
	step
		Next to you:
		talk Pebble##43116
		accept Clingy##26440
	step
		Get next to the huge green crystals
		Bring Pebble to the crystal formation |q 26440/1 |goto 30.1,47.7
	step
		Next to you:
		talk Pebble##43116
		turnin Clingy##26440
		accept So Big, So Round...##26441
	step
		talk Kor the Immovable##42469
		turnin So Big, So Round...##26441 |goto 34.3,34.3
		accept Petrified Delicacies##26507 |goto 34.3,34.3
		accept Rock Bottom##26575 |goto 34.3,34.3
	stickystart "petrifiedstonebat"
	step
		kill Gorgonite##43339 |q 26575/1 |goto 47.6,26.8
	step
	label "petrifiedstonebat"
		 Click Petrified Stone Bats
		|tip They looks like black stone bats laying on the ground around this area.
		collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto 47.5,26.8
	step
		Next to you:
		talk Pebble##43116
		turnin Petrified Delicacies##26507
	step
		talk Kor the Immovable##42469
		turnin Rock Bottom##26575 |goto 34.3,34.3
		accept Steady Hand##26576 |goto 34.3,34.3
		accept Rocky Upheaval##26577 |goto 34.3,34.3
	step
		talk Terrath the Steady##42466
		turnin Steady Hand##26576 |goto 39.9,19.4
		accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
	step
		talk Terrath the Steady##42466
		Tell him: _You are ready to escort a group of elementals across the open._
		Speak to Terrath the Steady |q 26656/1 |goto 39.9,19.4
	step
		Go to this spot
		Escort 5 Opalescent Guardians to safety |q 26656/2 |goto 51.1,14.7
		|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
	step
		talk Terrath the Steady##42466
		turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
		accept Hard Falls##26657 |goto 39.9,19.4
		accept Fragile Values##26658 |goto 39.9,19.4
	step
		kill Stone Trogg Beast Tamer##43598
		|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		collect Stonework Mallet##59323 |q 26658/1 |goto 35.4,22.5
	step
		talk Terrath the Steady##42466
		turnin Fragile Values##26658 |goto 39.9,19.4
	step
		kill 6 Stone Drake |q 26657/1 |goto 36.5,18.8
		|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step
		talk Terrath the Steady##42466
		turnin Hard Falls##26657 |goto 40.0,19.4
		accept Resonating Blow##26659 |goto 40.0,19.4
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
		|tip It's a huge green crystal sitting on the ground.
		Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
		kill Aeosera##43641
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		Defeat Aeosera |q 26659/2 |goto 32.7,24.3
	step
		talk Terrath the Steady##42466
		turnin Resonating Blow##26659 |goto 33.1,24.1
	step
		talk Earthcaller Yevaa##42573
		accept The Reliquary##27953 |goto 49.5,53.3
	step
		talk Examiner Rowe##44823
		turnin The Reliquary##27953 |goto 51.3,50.1
		accept The Twilight Plot##27005 |goto 51.3,50.1
	step
		talk Reliquary Jes'ca Darksun##44818
		accept Fly Over##27008 |goto 51.3,50.0
	stickystart "mastergate"
	step
		Go to this spot next to the big white portal
		Investigate the Master's Gate |q 27008/1 |goto 39.0,74.2
	step
	label "mastergate"
		kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
		collect Masters' Gate Plans##60745 |q 27005/1 |goto 40.1,72.2
	step
		talk Examiner Rowe##44823
		turnin The Twilight Plot##27005 |goto 51.3,50.1
	step
		talk Reliquary Jes'ca Darksun##44818
		turnin Fly Over##27008 |goto 51.3,50.0
		accept Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
	step
		talk Examiner Rowe##44823
		accept Decryption Made Easy##27041 |goto 51.3,50.1
	stickystart "decryptplans"
	step
		kill Bound Water Elemental##44886
		Acquire the Water Ward |q 27043/2 |goto 40.8,66.3
	step
		kill Bound Fire Elemental##44887
		Acquire the Fire Ward |q 27043/1 |goto 36.0,67.4
	step
		kill Bound Air Elemental##44885
		Acquire the Air Ward |q 27043/3 |goto 40.5,72.4
	step
	label "decryptplans"
		Click One-Time Decryption Engines
		|tip They look like machines around this area with a circular scroll spinning around them, and yellow cores floating in the middle of the spinning scrolls.
		Decrypt 6 Plans |q 27041/1  |goto 40.2,67.5
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Decryption Made Easy##27041 |goto 40.2,67.5
		accept The Wrong Sequence##27059 |goto 40.2,67.5
	step
		Click the Waygate Controller
		|tip It looks like a cylinder stone container with a stone ring on top of it, sitting in front of the huge white portal.
		Destroy the Waygate |q 27059/1 |goto 39.1,73.9
	step
		kill Haethen Kaul##44835 |q 27043/4 |goto 39.9,62.2
		|tip He's up on a huge floating rock.
	step
		talk Examiner Rowe##44823
		turnin The Wrong Sequence##27059 |goto 51.3,50.0
		accept That's No Pyramid!##28293 |goto 51.3,50.0
	step
		talk Reliquary Jes'ca Darksun##44818
		turnin Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
	step
		talk Gorsik the Tumultuous##42472
		turnin Rocky Upheaval##26577 |goto 72.2,54.0
		accept Doomshrooms##26578 |goto 72.2,54.0
		accept Gone Soft##26579 |goto 72.2,54.0
		accept Familiar Intruders##26580 |goto 72.2,54.0
	step
		talk Windspeaker Lorvarius##43395
		turnin Familiar Intruders##26580 |goto 71.8,47.6
		accept A Head Full of Wind##26581 |goto 71.8,47.6
	step
		kill 8 Fungal Behemoth##42475 |q 26579/1 |goto 73.6,40.8
		kill Doomshroom##+
		|tip They look like orange mushrooms around this area.
		Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
		Gather a sample of the red mist|q 26581/1 |goto 73.6,40.8
		|tip There are small clouds of red mist that float around on the ground around this area. Walk into one of them to gather a sample.
	step
		talk Windspeaker Lorvarius##43395
		turnin A Head Full of Wind##26581 |goto 71.8,47.6
		accept Unnatural Causes##26582 |goto 71.8,47.6
	step
		talk Gorsik the Tumultuous##42472
		turnin Doomshrooms##26578 |goto 72.2,54.0
		turnin Gone Soft##26579 |goto 72.2,54.0
		turnin Unnatural Causes##26582 |goto 72.2,54.0
		accept Shaken and Stirred##26584 |goto 72.2,54.0
		accept Corruption Destruction##26585 |goto 72.2,54.0
	step
		talk Ruberick##43442
		accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
	step
		_Enter_ the cave |goto 68.6,29.1 < 15
		talk Earthmender Norsala##43503
		Tell her: "I'm ready when you are."
		kill Fungalmancer Glop##43372 |q 26583/2 |goto 69.8,31.9
		|tip Follow him each time he runs away. Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
	step
		Follow the path up |goto 70.2,33.8 < 15
		Leave the cave |goto 68.6,29.1 < 15
		talk Ruberick##43442
		turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
	step
		kill 8 Verlok Pillartumbler##43513 |q 26584/1 |goto 69.4,24.8
		Click Verlok Miracle-grow
		|tip They look like gray bags sitting on the ground around this area.
		collect 8 Verlok Miracle-grow##59123 |q 26585/1 |goto 69.4,24.8
	step
		talk Gorsik the Tumultuous##42472
		turnin Shaken and Stirred##26584 |goto 72.2,54.0
		turnin Corruption Destruction##26585 |goto 72.2,54.0
		accept At the Stonemother's Call##26750 |goto 72.2,54.0
	step
		talk Therazane##42465
		turnin At the Stonemother's Call##26750 |goto 56.3,12.2
		accept Audience with the Stonemother##26752 |goto 56.3,12.2
	step
		Watch the dialogue
		Attend the Stonemother's Audience |q 26752/1
	step
		talk Earthcaller Torunscar##43809
		turnin Audience with the Stonemother##26752 |goto 56.1,13.5
		accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
	step
		talk Hargoth Dimblaze##44644
		Tell him you are joining an assault on Lorthuna's Gate and he is needed |goto 49.9,50.1
		|confirm
	step
		talk Stormcaller Jalara##44633
		Tell her you are joining an assault on Lorthuna's Gate and she is needed |goto 51.5,51.8
		|confirm
	step
		talk Hargoth Dimblaze##44644
		Tell him you are joining an assault on Lorthuna's Gate and he is needed |goto 49.9,50.1
		Rally 5 Earthen Ring |q 26827/1
	step
		talk Maruut Stonebinder##43065
		turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
		accept Our Part of the Bargain##26828 |goto 49.6,53.0
	step
		talk Therazane##44025
		turnin Our Part of the Bargain##26828 |goto 63.3,25.0
		accept The Stone March##26829 |goto 63.3,25.0
		accept Therazane's Mercy##26832 |goto 63.3,25.0
	step
		talk Boden the Imposing##44080
		accept The Twilight Flight##26831 |goto 62.6,26.9
	stickystart "twililghtprecipice"
	step
		kill High Priestess Lorthuna##42914
		|tip She is in a small room on the top of this building. She is elite, but you can still kill her. She will run away when she is almost dead.
		Defeat High Priestess Lorthuna |q 26832/2 |goto 62.4,31.8
	step
		kill Boldrich Stonerender##42923
		Defeat Boldrich Stonerender |q 26832/1 |goto 58.9,32.9
	step
		kill Zoltrik Drakebane##42918
		|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane. You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
		Defeat Zoltrik Drakebane |q 26831/1 |goto 63.1,38.1
	step
		talk Terrath the Steady##42614
		turnin The Twilight Flight##26831 |goto 64.1,36.9
	step
	label "twililghtprecipice"
		kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
		kill 15 Twilight Precipice Cultists |q 26829/1 |goto 60.3,33.2
	step
		talk Therazane##44025
		turnin The Stone March##26829 |goto 63.3,25.0
		turnin Therazane's Mercy##26832 |goto 63.3,25.0
		accept Word In Stone##26833 |goto 63.3,25.0
	step
		talk Maruut Stonebinder##43818
		turnin Word In Stone##26833 |goto 49.6,53.0
		accept Undying Twilight##26875 |goto 49.6,53.0
	step
		kill 12 Twilight Invaders |q 26875/1 |goto 50.7,49.6
		kill Desecrated Earthrager##44683 |q 26875/2 |goto 50.7,49.6
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Undying Twilight##26875 |goto 50.7,49.6
		accept The Binding##26971 |goto 50.7,49.6
	step
		kill High Priestess Lorthuna |q 26971/1 |goto 49.6,52.9
	step
		talk Earthcaller Torunscar##43835
		turnin The Binding##26971 |goto 49.6,52.9
	step
		talk Therazane##43792
		accept The Stone Throne##26709 |goto 49.8,53.4
	step
		talk Therazane##42465
		turnin The Stone Throne##26709 |goto 56.4,12.1
]])