local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

---------------------
------ Alchemy ------
---------------------



-------------------------
------ Archaeology ------
-------------------------



---------------------------
------ Blacksmithing ------
---------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing_Shatt",[[
		talk Kradu Grimblade##20124 |goto Shattrath City 69.4,43.3
]])

---------------------
------ Cooking ------
---------------------

ZygorGuidesViewer:RegisterInclude("cooking_fire",[[
		Stand next to a fire, or create one yourself |cast Cooking fire##818
]])

ZygorGuidesViewer:RegisterInclude("Outland_Cooking_Trainer",[[
		talk Jack Trapper##19185 |goto Shattrath City/0 63.09,68.38
		|tip Inside the building.
]])

------------------------
------ Enchanting ------
------------------------



-------------------------
------ Engineering ------
-------------------------



-----------------------
------ First Aid ------
-----------------------



---------------------
------ Fishing ------
---------------------



-----------------------
------ Herbalism ------
-----------------------

ZygorGuidesViewer:RegisterInclude("follow_path_herbs",[[
		Zoom your minimap all the way out and track herbs
		Follow the path and gather from yellow nodes on your minimap
]])

ZygorGuidesViewer:RegisterInclude("FW_DG_Path",[[
	--Felweed // Dreaming Glory
	map Hellfire Peninsula
	path follow loose;loop;ants straight;dist 60
	path 80.6,79.9		73.3,67.0		68.6,76.9
	path 56.1,71.6		48.4,75.2		40.7,84.5
	path 36.6,67.4		32.9,65.6		28.0,78.7
	path 22.9,67.5		13.7,63.0		13.5,38.7
	path 23.8,44.6		30.5,33.1		37.8,30.8
	path 55.8,31.1		67.1,27.3
]])

ZygorGuidesViewer:RegisterInclude("GC_TL_Path",[[
	--Goldclover // Tiger Lily
	map Borean Tundra
	path follow loose;loop;ants straight;dist 60
	path 51.9,47.7		53.7,43.4	53.2,38.8
	path 54.8,29.9		51.3,20.8	49.4,26.2
	path 42.9,41.3		36.5,54.9	44.1,64.2
	path 52.2,60.7		57.7,52.1
]])

ZygorGuidesViewer:RegisterInclude("GC_TL_AT_Path",[[
	--Goldclover // Tiger Lily // Adder's Tongue
	map Sholazar Basin
	path follow loose;loop;ants straight;dist 60
	path 32.0,58.2		36.1,65.3		43.9,57.7
	path 44.5,63.9		39.5,66.3		40.4,71.7
	path 32.8,82.3		36.1,84.4		42.6,76.0
	path 46.8,62.5		51.0,62.0		60.0,73.9
	path 55.7,85.9		66.4,82.3		69.3,65.8
	path 55.2,57.1		48.9,55.0		55.4,48.1
	path 58.1,38.3		34.8,31.4		30.1,43.4
	path 32.1,48.5		26.6,55.4		23.7,60.3
]])

ZygorGuidesViewer:RegisterInclude("Terocone_Path",[[
	--Terocone
	map Terokkar Forest
	path follow loose;loop;ants straight;dist 60
	path 34.4,8.0 		37.5,16.1		41.6,19.9
	path 44.5,11.5		51.0,21.0		48.4,26.9
	path 60.2,22.5		73.1,45.3		61.5,48.6
	path 54.0,37.1		48.0,33.5		39.0,34.8
	path 39.2,44.4		47.3,50.0		47.0,79.8
	path 33.5,76.9		19.6,77.8		21.5,60.7
	path 31.4,39.9		37.4,30.1
]])

ZygorGuidesViewer:RegisterInclude("NB_DG_Path",[[
	--Netherbloom // Dreaming Glory
	map Netherstorm
	path follow loose;loop;ants straight;dist 60
	path 31.5,51.4		25.6,63.5		19.5,67.7
	path 20.3,77.1		40.2,77.2		46.2,82.6
	path 48.0,86.9		58.9,88.8		61.4,79.4
	path 51.6,75.7		46.0,72.1		34.5,55.8
	path 40.1,52.9		50.2,69.0		67.1,60.7
	path 50.8,54.8		46.5,47.1		55.0,39.9
	path 58.5,47.2		62.7,50.3		73.4,40.5
	path 73.2,35.2		62.1,30.5		55.6,31.6
	path 49.8,35.9		48.8,25.5		57.1,24.3
	path 55.5,17.3		49.7,17.4		48.9,12.5
	path 44.9,19.8		42.5,16.2		39.5,15.7
	path 35.7,19.8		32.1,29.2		38.5,42.4
	path 31.1,38.1		23.5,35.4		22.9,44.1
	path 30.2,43.3
]])

ZygorGuidesViewer:RegisterInclude("GC_DN_TL_Path",[[
	--Goldclover // Deadnettle // Tiger Lily
	map Howling Fjord
	path follow loose;loop;ants straight;dist 60
	path	70.1,47.3	75.5,50.8	80.5,46.2
	path	76.3,42.8	70.3,40.5	66.5,33.5
	path	70.5,32.4	73.6,26.7	69.8,19.2
	path	65.8,26.8	61.8,28.5	58.5,22.7
	path	50.2,16.6	48.7,21.2	26.5,7.9
	path	29.2,12.0	23.8,14.0	26.8,14.5
	path	27.2,20.8	29.0,22.2	27.1,29.6
	path	31.3,33.3	34.8,34.1	41.7,34.2
	path	42.1,27.7	46.3,31.5	47.1,29.0
	path	54.1,32.5	49.0,35.8	58.1,37.0
	path	58.3,40.1	43.3,44.1	40.9,40.2
	path	37.0,39.9	37.0,44.9	34.9,46.2
	path	46.4,54.3	45.9,50.2	51.1,48.3
	path	59.5,51.6	59.0,55.6	45.1,59.4
	path	48.7,62.7	46.8,71.6	52.8,71.5

	path	53.4,76.5	60.0,76.8	62.6,80.5
	path	64.8,67.6	67.9,59.7	65.8,72.5
	path	67.1,74.9	69.5,74.5	70.6,66.1
	path	76.4,67.9
]])

ZygorGuidesViewer:RegisterInclude("Tiger_Lily_Path",[[
	--Tiger Lily
	map Sholazar Basin
	path	68.7,66.6	69.4,68.5	71.0,70.3
	path	69.1,73.6	68.1,70.1	65.3,70.5
	path	67.1,75.2	65.3,75.6	61.5,71.2
	path	65.1,79.5	62.9,83.5	59.2,72.5
	path	57.5,83.3	60.1,85.3	51.6,86.5
	path	43.6,75.3	47.9,73.9	50.5,62.6
	path	47.9,60.1	46.2,63.1	46.9,65.5
	path	43.1,62.3	41.3,67.5	37.9,63.6
	path	37.7,66.2	29.8,66.8	31.9,70.1
	path	31.1,71.1	43.7,71.0	40.1,76.5
	path	43.3,77.4	42.5,83.0	41.0,83.9
	path	41.9,86.5	40.8,87.8	37.5,83.3
	path	35.2,87.1	35.2,83.4	28.8,84.8
	path	28.5,79.5	30.5,75.7	28.5,75.5
	path	26.6,77.6	21.6,63.7	22.4,60.3
	path	32.7,64.5	32.4,60.4	29.1,61.7
	path	32.7,64.5	32.4,60.4	29.1,61.7
	path	32.7,64.5	32.4,60.4	29.1,61.7
	path	25.3,59.0	21.5,56.3	25.7,55.9
	path	32.0,41.7	31.2,55.2	28.7,53.5
	path	28.5,60.1	35.2,60.7	35.5,58.7
	path	38.2,60.2	38.6,55.5	41.6,56.2
	path	41.2,58.8	43.5,59.5	49.5,52.3
	path	47.6,49.6	44.6,49.1	46.8,52.1
	path	45.5,51.6	39.6,35.8	33.9,31.6
	path	38.5,29.6	33.8,24.4	35.4,20.9
	path	40.6,26.0	39.9,21.1	43.9,23.5
	path	56.5,31.5	62.7,33.9	57.6,41.3
	path	59.3,42.1	59.6,45.1	57.7,47.2
	path	53.5,44.0	50.5,54.2	52.3,56.8
	path	56.6,54.5	55.6,49.9	64.2,46.4
	path	63.9,48.9
]])

ZygorGuidesViewer:RegisterInclude("T_Rose_Path",[[
	--Talandra's Rose
	map Zul'Drak
	path follow loose;loop;ants straight;dist 60
	path 21.3,84.1		31.2,68.2		39.3,63.7
	path 29.7,52.6		37.1,40.8		43.6,46.7
	path 43.0,62.9		50.7,62.4		58.2,73.5
	path 52.2,83.3		39.5,87.0
]])

ZygorGuidesViewer:RegisterInclude("IT_LB_Path",[[
	--Icethorn // Lichbloom
	map The Storm Peaks
	path follow loose;loop;ants straight;dist 60
	path 31.4,83.1		33.0,93.8		40.0,82.3
	path 52.2,69.5		56.9,71.0		63.0,59.6
	path 65.0,73.2		66.9,58.5		77.2,72.8
	path 77.0,61.3		72.8,53.1		70.9,47.2
	path 64.1,54.1		65.7,41.5		52.5,53.2
	path 47.7,36.0		34.6,40.4		30.4,50.5
	path 29.1,37.4		22.2,36.7		24.3,56.4
	path 30.7,64.5		24.6,72.5		36.3,72.7
]])

ZygorGuidesViewer:RegisterInclude("SV_CB_Path",[[
	--Stormvine // Cinderbloom
	map Mount Hyjal
	path follow loose;loop;ants straight;dist 60
	path 68.2,23.9		57.0,38.9		57.9,17.5
	path 51.5,16.9		52.6,35.5		48.7,36.5
	path 44.0,24.5		39.8,32.5		36.5,21.7
	path 32.3,25.2		34.6,36.9		43.5,42.6
	path 36.2,44.9		25.3,37.8		24.1,31.9
	path 11.8,31.6		19.0,58.5		25.6,62.0
	path 31.9,46.7		36.9,53.5		42.3,55.9
	path 33.8,65.0		31.3,76.5		33.8,98.2
	path 57.1,80.9		59.2,84.5		59.8,77.8
	path 55.8,74.7		59.8,71.6		49.1,51.6
	path 61.9,60.5		67.1,53.5		74.3,58.8
	path 71.9,68.5		77.5,59.5		83.0,64.2
	path 89.9,49.8		80.9,51.8
]])

ZygorGuidesViewer:RegisterInclude("Stormvine_Path",[[
	--Stormvine
	map Shimmering Expanse
	path	42.2,55.2	37.7,67.1	48.2,81.4
	path	57.8,83.2	58.5,69.6	49.6,59.1
	path	68.0,49.7	63.9,39.4	57.9,39.8
	path	50.6,35.3	41.3,34.8	38.1,44.7
	path	32.5,54.7
]])

ZygorGuidesViewer:RegisterInclude("HB_Path",[[
	--Heartblossom
	map Deepholm
	path	69.4,56.0	70.0,60.7	72.9,58.2
	path 	74.7,61.1	75.8,67.5	70.9,62.9
	path 	71.1,70.6	66.0,68.5	26.8,41.5
	path 	26.5,35.6	23.1,35.3	25.9,31.9
	path 	27.5,32.3	27.8,27.0	31.2,32.0
	path 	28.9,35.6	26.8,41.5
]])

ZygorGuidesViewer:RegisterInclude("Whiptail_Path",[[
	--Whiptail
	map Uldum
	path	58.4,31.3	56.2,22.6	57.8,14.5
	path 	61.5,14.0	57.1,44.7	60.5,58.3
	path 	69.8,76.5	65.9,75.9	60.0,83.2
	path 	59.0,58.8	55.3,45.8	52.0,45.6
	path 	50.8,42.5	50.8,36.0	50.8,36.0
]])

ZygorGuidesViewer:RegisterInclude("TJ_Path",[[
	--Twilight Jasmine
	map Twilight Highlands
	path	71.7,48.9	68.1,41.8	61.9,36.0
	path 	53.9,32.0	47.3,40.3	45.6,45.2
	path 	45.3,36.1	41.3,52.0	48.7,54.5
	path 	51.5,45.6	58.2,48.0	59.1,40.1
	path 	70.9,64.8	73.5,64.0	73.7,72.2
	path	69.8,64.7	63.1,60.8	59.5,63.6
	path 	55.3,50.4	57.0,77.5	53.0,79.8
	path 	49.0,70.0	44.2,70.6	47.9,63.4
	path 	33.6,49.9	29.0,40.3	28.6,30.5
	path	46.3,23.2	57.5,27.2	69.1,38.2
	path 	72.9,47.2
]])

ZygorGuidesViewer:RegisterInclude("FL_GT_KW_BW_Path",[[
	--Fadeleaf // Goldthorn // Khadgar's Whisker // Blindweed
	map Feralas
	path follow loose;loop;ants straight;dist 60
	path 73.0,42.0		72.9,37.3		70.5,37.1
	path 69.2,42.3		67.3,45.9		63.9,48.1
	path 59.4,46.6		59.8,54.2		56.0,60.1		55.2,66.6
	path 58.6,64.7		61.3,61.9		62.8,58.0
	path 68.8,50.3		69.0,60.1		71.4,60.0
	path 72.1,55.5		75.9,56.6
	path 73.3,50.2
]])

ZygorGuidesViewer:RegisterInclude("GB_Path",[[
	--Gromsblood
	map Felwood
	path follow loose;loop;ants straight;dist 60
	path 50.5,80.9		47.6,75.8		45.4,71.4
	path 44.9,66.4		42.9,58.3		43.6,52.1
	path 45.2,42.1		49.6,33.6		55.3,24.8
	path 57.5,15.5		54.3,14.1		42.7,21.7
	path 40.0,37.5		40.0,46.5		39.6,56.9
	path 39.1,66.2		38.9,71.3		42.7,84.7
]])

ZygorGuidesViewer:RegisterInclude("GT_WS_Path",[[
	--Goldthorn // Wild Steelbloom
	map Arathi Highlands
	path follow loose;loop;ants straight;dist 60
	path	43.3,39.0	57.6,29.0	70.6,28.6
	path	73.6,31.7	75.6,39.6
	path	50.7,74.5	41.0,80.2
	path	28.7,67.9	9.0,70.2	19.9,34.9
	path	29.1,48.4
]])

ZygorGuidesViewer:RegisterInclude("GS_SM_Path",[[
	--Golden Sansam // Sorrow Moss
	map Swamp of Sorrows
	path follow loose;loop;ants straight;dist 60
	path 18.8,60.4		23.9,55.3		27.3,62.0
	path 37.5,53.6		57.5,59.1		77.4,79.5
	path 80.9,60.1		88.6,63.4		79.9,42.4
	path 75.1,23.5		50.7,31.3		24.6,45.3
	path 14.1,33.2		21.5,45.0
]])

ZygorGuidesViewer:RegisterInclude("Kingsblood_Path",[[
	--Kingsblood
	map Western Plaguelands
	path follow loose;loop;ants straight;dist 70
	path	31.8,59.3	43.5,53.2	45.9,44.7
	path	45.2,35.2	49.5,35.1	51.0,47.4
	path	61.8,52.0	67.2,44.5	63.6,56.0
	path	56.6,60.1	52.6,67.5	46.4,59.2
	path	33.7,62.7
]])

ZygorGuidesViewer:RegisterInclude("LR_SK_Path",[[
	--Liferoot
	map Western Plaguelands/0
	path follow loose;loop;ants straight;dist 45
	path	51.0,72.6	55.1,75.8	59.0,81.8
	path	63.1,82.7	66.6,84.2	70.3,83.8
	path	73.6,82.6	78.3,80.7	79.7,75.4
	path	80.0,70.5	78.6,66.6	75.9,65.4
	path	76.6,61.8	73.1,59.7	68.7,61.7
	path	64.3,64.1	60.1,65.3	56.6,69.5
	path	53.8,72.2
]])

ZygorGuidesViewer:RegisterInclude("MR_BW_BT_SK_Path",[[
	--Mageroyal // Bruiseweed // Briarthorn // Stranglekelp
	map Hillsbrad Foothills
	path follow loose;loop;ants straight;dist 70
	path 31.8,62.6		33.9,54.0		29.7,44.1
	path 35.5,37.8		34.5,28.2		39.5,21.0
	path 44.2,8.3		51.3,14.0		57.5,20.9
	path 56.1,34.3		49.9,46.2		41.2,46.6
	path 40.1,55.0		41.3,67.4		31.8,71.9
]])

ZygorGuidesViewer:RegisterInclude("Sungrass_Path",[[
	--Sungrass
	map Searing Gorge
	path follow loose;loop;ants straight;dist 60
	path	66.9,43.2	58.9,53.0	55.6,68.1
	path	49.8,70.1	45.9,61.5	38.1,74.9
	path	31.0,67.8	32.1,56.9	29.4,44.8
	path	37.5,47.8	40.5,39.1	47.2,42.1
	path	53.5,35.4	77.0,19.0
]])

-------------------------
------ Inscription ------
-------------------------



---------------------------
------ Jewelcrafting ------
---------------------------



----------------------------
------ Leatherworking ------
----------------------------



--------------------
------ Mining ------
--------------------

ZygorGuidesViewer:RegisterInclude("follow_path_mine",[[
		Zoom your minimap all the way out, track ore, and follow the path while mining yellow spots on your minimap.
]])

ZygorGuidesViewer:RegisterInclude("Obsidium_Path",[[
	--Obsidium
	map Mount Hyjal
	path follow loose;dist 60
	path	67.2,29.1	61.1,36.7	54.5,17.1
	path	41.2,20.5	42.9,27.5	49.6,25.5
	path	46.6,35.6	40.5,33.6	39.9,29.4
	path	34.9,27.5	35.0,21.7	32.3,28.8
	path	35.0,35.6	31.1,40.4	25.7,40.6
	path	28.7,35.7	24.3,35.8	25.7,29.8
	path	14.7,38.8	13.6,31.6	9.4,36.4
	path	17.6,46.5	12.9,46.5	15.5,52.2
	path	20.7,60.2	21.5,56.8	23.3,61.5
	path	30.3,55.2	27.6,55.0	27.7,51.2
	path	34.1,46.8	34.1,55.2	37.5,54.9
	path	36.0,51.0	40.3,51.6	41.5,63.3
	path	38.9,65.5	36.4,58.6	32.8,61.8
	path	35.2,63.5	32.8,66.6	31.3,90.4
	path	36.6,95.5	50.8,82.1	51.8,75.1
	path	60.6,82.5	59.8,73.0	56.5,69.8
	path	58.9,66.4	53.6,66.8	49.6,51.1
	path	59.7,56.3	55.5,56.8	62.8,60.0
	path	64.5,50.9	67.5,50.6	69.8,56.0
	path	75.9,69.6	75.7,63.6	80.2,67.2
	path	84.3,64.9	88.1,48.5	84.2,47.5
	path	78.5,53.3	84.2,54.5	82.1,60.9
	path	72.9,57.9
]])

ZygorGuidesViewer:RegisterInclude("Iron_Ore_Path",[[
	map Feralas
	path	74.9,48.6	84.0,45.6	84.9,39.9
	path	71.5,34.7	54.3,50.1	48.6,44.0
	path	49.7,34.9	51.6,33.8	50.9,26.2
	path	51.3,19.0	54.9,8.1	49.4,4.0
	path	40.0,7.7	37.1,12.1	38.1,17.6
	path	37.0,25.6	45.1,26.2	46.3,38.6
	path	50.3,52.7	47.9,55.4	46.9,64.1
	path	54.8,53.9	55.2,62.6	52.9,66.2
	path	53.6,73.7	60.8,75.8	62.0,55.0
	path	63.7,61.0	66.4,51.3	68.2,51.3
	path	68.1,61.5	71.6,65.1	77.2,62.1
]])

ZygorGuidesViewer:RegisterInclude("Mithril_Ore_Path",[[
	--Mithril Ore Path
	map Felwood
	path	63.5,24.5	62.6,6.9	55.7,18.6
	path	42.5,17.1	42.0,24.1	39.9,22.1
	path	41.0,27.5	38.6,37.4	38.3,55.6
	path	40.7,59.8	35.0,59.1	41.8,62.6
	path	36.3,66.8	40.7,72.9	37.8,73.5
	path	40.3,77.4	39.1,79.3	43.8,81.5
	path	39.0,81.6	42.3,87.1	45.1,84.6
	path	45.1,89.7	48.1,92.8	51.2,86.1
	path	52.5,88.8	57.7,86.5	58.6,84.8
	path	55.9,81.1	49.6,76.6	43.5,60.9
	path	42.9,50.8	52.9,31.6	59.6,27.2
]])

ZygorGuidesViewer:RegisterInclude("Thorium_Ore_Path",[[
	--Thorium Ore Path
	map Winterspring
	path	52.8,46.2	58.3,41.2	59.7,45.0
	path 	59.9,21.4	58.3,18.4	54.5,21.2
	path 	45.9,13.1	44.8,15.3	44.8,29.0
	path 	47.8,33.2	49.8,42.8	39.5,51.0
	path 	33.5,47.2	30.2,48.6	31.5,53.5
	path 	28.4,51.6	27.3,48.0	23.0,45.7
	path 	22.3,62.4	25.3,61.3	25.9,58.1
	path 	41.2,57.7	42.1,53.2	46.1,60.8
	path 	51.0,61.4	53.7,63.6	51.2,69.9
	path 	55.2,68.9	56.8,81.1	59.0,80.3
	path 	59.0,85.3	62.0,87.6	64.1,81.8
	path 	62.2,77.7	62.3,73.3	67.0,68.5
	path 	67.1,60.1
]])

ZygorGuidesViewer:RegisterInclude("Fel_Iron_Path",[[
	--Fel Iron Ore Path
	map Hellfire Peninsula
	path	69.3,47.5	74.5,38.7	68.2,37.7
	path	62.0,31.0	58.0,32.8	54.0,26.7
	path	46.0,29.3	34.1,29.1	32.0,34.5
	path	38.5,38.2	35.7,40.7	33.4,49.8
	path	30.3,48.6	32.5,43.3	28.5,39.3
	path	26.5,45.5	22.6,45.1	18.0,38.3
	path	12.5,36.1	17.9,46.3	11.8,41.9
	path	12.0,47.0	06.2,49.5	15.4,62.4
	path	20.3,52.9	24.0,61.1	21.2,62.7
	path	28.1,80.8	27.7,69.5	30.5,72.8
	path	30.3,59.9	34.8,66.6	37.7,53.3
	path	46.9,46.3	49.3,49.5	60.3,48.6
	path	60.8,52.8	52.1,52.7	47.2,57.7
	path	45.9,75.5	33.5,89.6	33.1,92.6
	path	49.1,77.5	44.6,86.2	55.5,82.8
	path	58.7,78.8	56.5,72.3	65.8,63.6
	path	67.1,71.7	63.0,73.3	65.8,77.9
	path	68.7,77.6	71.0,71.7	70.1,68.6
	path	65.0,59.8	65.6,56.0	75.0,63.9
	path	78.4,80.2	80.7,77.5	77.3,63.7
	path	72.7,60.2	71.5,53.1	68.3,52.0
]])

ZygorGuidesViewer:RegisterInclude("Adamantite_Path",[[
	--Adamantite Ore Path
	map Nagrand
	path follow loose;dist 30
	path	72.7,64.7	74.3,60.5	69.1,48.6
	path	72.3,43.1	66.1,32.3	59.5,27.3
	path	55.7,23.0	54.8,20.6	50.7,20.0
	path	49.3,24.1	47.1,20.2	39.6,20.4
	path	28.2,12.1	25.7,16.5	26.8,23.6
	path	27.9,25.3	27.5,32.1	23.2,27.8
	path	7.1,39.9	25.2,61.1	31.9,81.9
	path	41.8,81.8	43.5,73.7	48.4,71.4
	path	43.0,62.2	32.2,60.3	29.2,54.1
	path	33.4,49.4	40.8,32.1	45.5,43.9
	path	42.4,50.9	48.0,57.5	51.5,55.6
	path	60.5,56.9	56.7,64.0	70.1,83.3
	path	69.8,72.5
]])

ZygorGuidesViewer:RegisterInclude("Cobalt_Path",[[
	--Cobalt Ore Path
	map Howling Fjord
	path follow loose; dist 40
	path	83.0,44.8	78.1,39.4	72.7,38.3
	path	71.0,31.8	75.3,22.9	70.2,8.3
	path	63.2,13.7	64.4,16.4
	path	61.4,23.6	57.7,18.3
	path	51.4,14.2	45.5,13.3	38.1,18.9
	path	31.1,10.9	28.9,10.3	21.7,12.8
	path	19.4,23.5	24.2,27.4	23.9,33.6
	path	27.3,30.8	38.1,29.0	47.6,32.7
	path	53.0,31.9	63.5,37.1	65.5,48.7
	path	66.9,62.7	64.4,67.8	64.4,72.4
	path	67.9,76.5	69.8,74.7	72.5,67.9
	path	77.3,67.2	77.2,60.8	74.9,55.3
	path	79.1,50.4
]])

ZygorGuidesViewer:RegisterInclude("Saronite_Path",[[
	--Saronite Ore Path
	map Sholazar Basin
	path follow loose;dist 50
	path	77.9,63.8	78.7,52.4	74.3,48.6
	path	58.9,53.9	63.5,44.4	66.7,40.3
	path	65.1,30.5	58.9,27.8	58.9,21.1
	path	40.8,20.8	48.0,33.2	53.8,37.0
	path	47.8,43.1	46.8,39.7	39.6,32.8
	path	32.9,32.8	23.3,48.4	33.5,46.6
	path	35.8,49.9	40.0,50.9	38.0,54.9
	path	30.5,55.3	20.8,56.1	20.4,76.6
	path	22.6,78.5	22.5,84.0	34.2,78.4
	path	33.8,73.4	33.0,67.9	40.9,70.1
	path	34.5,88.9	50.9,88.8	51.5,82.1
	path	46.0,60.9	52.5,68.9	58.7,88.2
	path	62.3,74.5	63.6,84.4
]])

----------------------
------ Skinning ------
----------------------



-----------------------
------ Tailoring ------
-----------------------



-----------------------------------------------
------ Miscellaneous Profession Includes ------
-----------------------------------------------

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_125",[[
	step
	label "end_of_prof_trial"
		This Trial guides only goes up to 125.
		To continue further, please purchase the full Zygor Profession Guides!
]])

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_150",[[
	step
	label "end_of_prof_trial"
		This Trial guides only goes up to 150.
		To continue further, please purchase the full Zygor Profession Guides!
]])

------------
-- Anvils --
------------

ZygorGuidesViewer:RegisterInclude("shatt_anvil",[[
		Stand next to this anvil |goto Shattrath City 69.7,42.7
]])