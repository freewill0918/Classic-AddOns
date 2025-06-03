local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.transit = {


---------------------
----   PORTALS   ----
---------------------

	--## ALLIANCE ##--

	-- Goldshire - Elynn Forest, Eastern Kingdoms -to- Darkmoon Island --CHECKED
	"Elwynn Forest/0 41.79,69.48 -to- Darkmoon Island/0 51.29,23.86 {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')} "..
	"{title:Click the Portal to the Darkmoon Faire}",
	-- Darkmoon Island -to- Goldshire - Elynn Forest, Eastern Kingdoms --CHECKED, added later
	-- "Darkmoon Island/0 51.22,23.12 -to- Elwynn Forest/0 41.87,68.17 {fac:A} {mode:PORTAL} {title:Click the Portal Back}",

	-- Darkmoon Island -to- Goldshire - Elynn Forest, Eastern Kingdoms --CHECKED
	"Darkmoon Island/0 50.56,90.75 -to- Elwynn Forest/0 41.87,68.17 {fac:A} {mode:PORTAL} {title:Click the Portal Back}",

		-- STORMWIND PORTALS




	"Stormwind City/0 73.21,18.38 -to- Tol Barad Peninsula/0 73.67,60.92 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 85}",
	"Tol Barad Peninsula/0 75.23,58.86 -to- Stormwind City/0 73.39,18.28 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 85}",
	"Stormwind City/0 73.29,16.85 -to- Kelp'thar Forest/0 45.13,23.33 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482) and not PlayerCompletedQuest(25222)}",
	"Stormwind City/0 73.29,16.85 -to- Shimmering Expanse 47.2,57.5 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(99999)}",
	"Stormwind City/0 73.29,16.85 -to- Abyssal Depths/0 55.70,72.80 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482)}",
	"Stormwind City/0 75.24,20.50 -to- Uldum/0 54.89,34.25 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(28112)}",
	"Stormwind City/0 73.20,19.65 -to- Deepholm/0 48.73,53.56 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
	"Deepholm/0 48.53,53.84 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
	"Stormwind City/0 76.18,18.70 -x- Mount Hyjal/0 62.62,23.12 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316)}",
	"Stormwind City/0 75.35,16.44 -x- Twilight Highlands/0 79.41,77.87 <tag:cityportal> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27537)}",
	"Stormwind City/0 48.98,87.36 -to- Blasted Lands/0 53.90,46.08 {fac:A} {mode:PORTAL} {title:Click the Portal to Blasted Lands Inside the Tower} {cond:UnitLevel('player') >= 58}",
	"Ironforge/0 27.23,7.01 -to- Blasted Lands/0 53.90,46.08 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 58}",
	"The Exodar/0 48.15,63.00 -to- Blasted Lands/0 53.90,46.08 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 58}",
	"Darnassus/0 43.98,78.15 -to- Blasted Lands/0 53.90,46.08 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 58}",
	"The Exodar/0 47.59,62.15 -x- Darnassus/0 44.23,78.68 {fac:A} {mode:PORTAL}",
	"Hellfire Peninsula/0 88.62,52.81 -to- Stormwind City/0 49.59,86.53 {fac:A} {mode:PORTAL}",
	-- Stormwind City - Elwynn Forest, Kalimdor -to- Darkmoon Island
	"Stormwind City/0 62.26,72.96 -to- Elwynn Forest/0 41.87,68.17 {fac:A} {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')} "..
	"{title:Talk to the Darkmoon Faire\nMystic Mage and tell her\n|cffaaffaa\"Take me to the staging area.\"|r}",







	"Dalaran/1 40.10,62.79 -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL}",
	"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",
	"Hellfire Peninsula 88.64,52.82 -to- Stormwind City 49,87 {fac:A} {mode:PORTAL}",
	"Shattrath City/0 57.22,48.26 -to- @sw_tp_dst {fac:A} {mode:PORTAL}",
	"Badlands 82.8078,33.9781 -x- Badlands 88.0642,32.4937 {fac:A} {mode:PORTAL} {tag:transporter}",

	--## HORDE ##--

	-- Thunder Bluff - Mulgore, Kalimdor -to- Darkmoon Island --CHECKED
	"Mulgore/0 36.85,35.86 -to- Darkmoon Island/0 51.29,23.86 {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')} "..
	"{title:Click the Portal to the Darkmoon Faire}",

	-- Darkmoon Island -to- Thunder Bluff - Mulgore, Kalimdor --CHECKED, ADded later
	-- "Darkmoon Island/0 51.22,23.12 -to- Mulgore/0 36.49,35.11 {fac:H} {mode:PORTAL} {title:Click the Portal Back}",

	-- Darkmoon Island -to- Thunder Bluff - Mulgore, Kalimdor --CHECKED
	"Darkmoon Island/0 50.56,90.75 -to- Mulgore/0 36.49,35.11 {fac:H} {mode:PORTAL} {title:Click the Portal Back}",

		-- ORGRIMMAR PORTALS:
	"Orgrimmar/0 49.20,36.49 -to- Kelp'thar Forest 44,28 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) and not PlayerCompletedQuest(25222)}",
	"Orgrimmar/0 49.20,36.49 -to- Shimmering Expanse 49.5,40.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(99999)}",
	"Orgrimmar/0 49.20,36.49 -to- Abyssal Depths/0 51.37,60.95 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)}",
	"Orgrimmar/0 48.86,38.55 -to- Uldum/0 54.89,34.25 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(28112)}",
	"Orgrimmar/0 50.84,36.29 -to- Deepholm/0 50.59,52.94 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
	"Deepholm/0 50.93,53.10 -to- Orgrimmar 50.0,37.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
	"Orgrimmar/0 51.11,38.28 -to- Mount Hyjal/0 63.49,23.37 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316)}",
	"Mount Hyjal/0 63.49,24.45 -to- Orgrimmar 50.0,37.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316)}",
	"Orgrimmar/0 47.41,39.29 -to- Tol Barad Peninsula/0 55.78,80.07 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
	"Tol Barad Peninsula/0 56.30,79.66 -to- Orgrimmar/0 47.65,39.14 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
	"Orgrimmar/0 50.22,39.44 -x- Twilight Highlands/0 73.55,53.54 <tag:cityportal> {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)}",
	-- Orgrimmar - Durotar, Kalimdor -to- Mulgore, Kalimdor
	"Orgrimmar/1 48.23,62.17 -to- Mulgore/0 36.49,35.11 {fac:H} {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')} "..
	"{title:Talk to the Darkmoon Faire\nMystic Mage and tell her\n|cffaaffaa\"Take me to the staging area.\"|r}",



	"Orgrimmar/0 35.47,69.14 -to- Blasted Lands/0 53.90,46.08 <tag:cityportal> {fac:H} {mode:PORTAL} {title:Click the Portal to Blasted Lands Upstairs Inside the Hut} {cond:UnitLevel('player') >= 58}",
	"Orgrimmar/1 44.70,67.97 -to- Blasted Lands/0 53.90,46.08 <tag:cityportal> {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 58}",
	"Silvermoon City/0 58.42,21.03 -to- Blasted Lands/0 53.90,46.08 <tag:cityportal> {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 58}",
	"Hellfire Peninsula/0 88.57,47.69 -to- Orgrimmar/1 48.28,64.53 <tag:cityportal> {fac:H} {mode:PORTAL}",





	"Silvermoon City/0 49.50,14.81 -x- Tirisfal Glades/0 59.40,67.44 {fac:H} {title:Click the Orb of Translocation} {mode:PORTAL}",
	"Dalaran/1 55.31,25.45 -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL}",
	"Dalaran/1 58.09,25.80 -to- Wintergrasp 50.0,16.7 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",
	"Shattrath City/0 56.84,48.86 -to- Orgrimmar/1 48.28,64.53 {fac:H} {mode:PORTAL}",







	--## NEUTRAL ##--


	"Darnassus/0 37.32,50.47 <tag:pinkportal> -x- Teldrassil/0 55.04,88.21 <tag:pinkportal><port:Rut'theran Village> {mode:PORTAL}",  -- Teldrassil 55.1,88.4  NO  Teldrassil 38.1,47.5


	-- missing: more horde BL portals

	"Blasted Lands 55.0,54.2 <tag:darkportal> -x- Hellfire Peninsula 89.4,50.2 {mode:PORTAL} <tag:darkportal> {title:Run through the portal} {cond:UnitLevel('player')>=58}",


	-- DALARAN PORTALS:

	"Dalaran 25.5,51.4 -to- Tanaris 65.2,49.8 @cot_from_dala <region:cotime> {mode:PORTAL} {cond:LibRover.cfg.use_cot or (ZGV and ZGV:GetReputation('Keepers of Time').standing>=5)}",


	-- SHATTRATH PORTALS:
	"Shattrath City/0 48.58,42.02 -to- Isle of Quel'Danas/0 48.37,34.35 {mode:PORTAL}",
	"Isle of Quel'Danas/0 48.37,34.35 -to- Shattrath City/0 48.58,42.02 {mode:PORTAL}",

	-- Badlands details
	-- Fuselight-by-the-sea teleport
	"Badlands 72.1,31.6 -x- Badlands 75.6,33.2 {B:WALK}", --access
	-- Fuselight entrances
	"Badlands 60.7,28.3 -x- Badlands 62.8,35.7 <region:fuselight> {B:WALK}",
	"Badlands 68.7,30.9 -x- Badlands 66.7,36.3 <region:fuselight> {B:WALK}",

	-- Firelands portal
	"Mount Hyjal/0 27.50,56.35 -to- Molten Front/0 51.74,84.42 {mode:PORTAL}",
	"Molten Front/0 52.96,83.73 -to- Mount Hyjal/0 27.46,55.94 {mode:PORTAL}",

	-- MISCELLANEAEOAOUS
	--[[
	"Badlands 45.8,7.3 -x- Loch Modan 48.13,79.19 @lochbad01 <dist:10> <noallzone:1> {B:WALK}",
	"@lochbad01 -x- Loch Modan 48.21,77.16 @lochbad02 <dist:10> <noallzone:1> {B:WALK}",
	"@lochbad02 -x- Loch Modan 47.21,73.40 <dist:10> {B:WALK}",
	--]]

	-- Loch Modan / Badlands cross
	"Badlands 45.8,7.3",
	"@+ -x- Loch Modan 48.13,79.19 <dist:10> <noallzone:1> {B:WALK}",  -- @+ means "last one added", it's a nightmare, I know.
	--"@+ -x- Loch Modan 47.15,78.55 <dist:5> <noallzone:1> {B:WALK}",
	--"@+ -x- Loch Modan 48.22,78.08 <dist:5> <noallzone:1> {B:WALK}",
	"@+ -x- Loch Modan 48.21,77.16 <dist:5> <noallzone:1> {B:WALK}",
	"@+ -x- Loch Modan 47.28,76.00 <dist:5> <noallzone:1> {B:WALK}",
	--"@+ -x- Loch Modan 48.32,76.41 <dist:5> <noallzone:1> {B:WALK}",
	--"@+ -x- Loch Modan 46.96,73.77 <dist:5> <noallzone:1> {B:WALK}",
	"@+ -x- Loch Modan 47.21,73.40 <dist:5> {B:WALK}",


	"Un'Goro Crater 50.4,7.9 -x- Sholazar Basin 40.4,83.0 {mode:PORTAL} {tag:portalauto} {cond:PlayerCompletedQuest(12613)}",


-------------------------
-- BOATS AND ZEPPELINS --
-------------------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	---------------
	-- NORTHREND --
	---------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	"Orgrimmar 52.5,53.1 -x- Northern Stranglethorn 37.2,52.4 {fac:H} {mode:ZEPPELIN}",
	"Orgrimmar 50.8,55.9 -x- Tirisfal Glades 60.7,58.8 {fac:H} {mode:ZEPPELIN}",
	"Orgrimmar 44.7,62.3 -x- Borean Tundra 41.4,53.6 {fac:H} {mode:ZEPPELIN}",--,cost=7*60+30},

	"Tirisfal Glades 59.1,59.0 <port:Undercity> -x- Howling Fjord 77.7,28.3 {fac:H} {mode:ZEPPELIN}",
	"Tirisfal Glades 61.9,59.1 <port:Undercity> -x- Northern Stranglethorn 37.5,50.9 {fac:H} {mode:ZEPPELIN}",

	"Stormwind City 18.0,25.8 -x- Borean Tundra 59.7,69.4  {fac:A} {mode:SHIP} {cost:300}",
	"Stormwind City 22.5,55.8 -x- Teldrassil 55.0,93.7 <port:Darnassus>  {fac:A} {mode:SHIP}",
	"Stormwind City 70.5,30.0 @tramsw <noallzone:1> -x- Ironforge 78,51  {fac:A} {mode:TRAM}",
	"Stormwind City 66.4,35.0 -x- @tramsw {A:WALK} {dontsetborder:1}",
	
	"Wetlands 6.4,62.2 <port:Menethil Harbor> -x- Dustwallow Marsh 71.5,56.3 {fac:A} {mode:SHIP}",
	"Wetlands 5.1,55.7 <port:Menethil Harbor> -x- Howling Fjord 61.3,62.6 <port:Valgarde> {fac:A} {mode:SHIP}",--,cost=300}, --ship turnaround is 450, but takes forever to depart/arrive

	-- NEUTRAL SHIPS
	"The Cape of Stranglethorn 39.0,67.0 <port:Booty Bay> -x- The Barrens 70.2,73.3 <port:Ratchet> {mode:SHIP}", -- booty-ratchet
	"Borean Tundra 11.1,22.2 <port:Unu'pe> -x- Dragonblight 47.3,67.3 <port:Moa'ki Harbor> {mode:SHIP} {tag:turtle}", -- unu'pe-moa'ki
	"@+ -x- Howling Fjord 11.1,22.2 <port:Kamagua> {mode:SHIP} {tag:turtle}", -- moa'ki-kamagua


	"Eastern Plaguelands 54.5,8.4 <tag:darkportal> -x- Ghostlands 45.7,71.6 <tag:darkportal> {mode:PORTAL}",







------------------
-- CLASS SPELLS --
------------------

	----------------
	---   MAGE   ---		-- NOTE: ACCOUNT FOR "Rune of Teleportation" REQUIRED TO CAST TELEPORT SPELLS
	----------------
	
	--## ALLIANCE ##--

	--## HORDE ##--

			

	-----------------
	---   DRUID   ---
	-----------------


	------------------
	---   SHAMAN   ---
	------------------



	-- MAGE TELEPORTS:
	"Dalaran 55.86,46.81 <spell:53140>",
	"Shattrath City 54.97,40.23 <spell:33690>",
	"Shattrath City 53.0,49.2 <spell:35715>",
	"The Exodar 47.62,59.82 <spell:32271>",
	"Dustwallow Marsh 66.00,49.00 <spell:49359>",
	"Darnassus 43.47,78.67 <spell:3565>",
	"Ironforge 25.51,08.43 <spell:3562>",
	"Moonglade 50,50 <spell:18960>",
	"Stormwind City 49.6,86.5 @sw_tp_dst <spell:3561>",
	"Orgrimmar 48.3,64.5 @org_tp_dst <spell:3567>",
	"Silvermoon City 58.3,19.2 <spell:32272>",
	"Swamp of Sorrows 49.8,55.8 <spell:49358>", --stonard
	"Thunder Bluff 22.2,16.9 <spell:3566>",
	"Tol Barad 50,50 <spell:88342>",
	"Tol Barad 50,50 <spell:88344>",
	"Undercity 84.6,16.3 <spell:3563>",
	-- DK DEATHGATE
	"Eastern Plaguelands 83.72,50.03 <spell:50977>",








}
