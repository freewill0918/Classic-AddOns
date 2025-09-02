RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 71-73 Borean Tundra
#version 9
#displayname 69-73 Borean Tundra << !wotlk
#next 72-74 Dragonblight; 73-75 Grizzly Hills << wotlk
#next 73-74 Dragonblight; 77-78 Sholazar Basin << !wotlk
step
.goto 1453/0,1407.6,-8291.2 << !wotlk
.goto StormwindNew,43.5,52.7,70,0 << wotlk
.goto StormwindNew,18.47,26.49 << wotlk
>>Travel to the Stormwind Harbor
.zone BoreanTundra >> Take the boat to Borean Tundra << !wotlk
.zone BoreanTundra >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leesha|r. Ask her for a teleport to Valiance Keep << wotlk
.skipgossip << wotlk
.target Leesha Tannerby << wotlk
step
#completewith enlist
.goto BoreanTundra,58.97,68.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomas|r
.fp Valiance Keep >> Get the Valiance Keep flight path
.target Tomas Riverwell
step
#completewith Hawthorn5
.groundgoto BoreanTundra,58.5,68.3,15,0
.goto BoreanTundra,58.29,68.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James|r inside the Inn
.home >> Set your Hearthstone to Valiance Keep
>>|cRXP_BUY_Buy new food/water if needed|r
.target James Deacon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Recruitment Officer Blythe|r and |cRXP_FRIENDLY_Rollick|r
.accept 11672 >>Accept Enlistment Day
.goto BoreanTundra,57.85,67.60
.accept 13088 >> Accept Northern Cooking
.goto BoreanTundra,57.93,71.54
.skill cooking,<350,1
.target Recruitment Officer Blythe
.target Rollick MacKreel
step
#label enlist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Recruitment Officer Blythe|r
.accept 11672 >>Accept Enlistment Day
.goto BoreanTundra,57.85,67.60
.target Recruitment Officer Blythe
step
#optional
#completewith next
.goto BoreanTundra,57.1,71.8,15,0
.goto BoreanTundra,57.2,72.3,15,0
.goto BoreanTundra,56.67,72.64,10 >> Travel into the Keep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arlos|r
.turnin 11672 >>Turn in Enlistment Day
.accept 11727 >>Accept A Time for Heroes
.goto BoreanTundra,56.67,72.64
.target General Arlos
step
#completewith next
.goto BoreanTundra,56.87,71.29,20 >> Exit the Keep
step
.goto 114/571,5321.100,2223.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hammerhill|r
.target Sergeant Hammerhill
.turnin 11727 >>Turn in A Time for Heroes
.accept 11797 >>Accept The Siege
step
.goto 114/571,5400.100,2248.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Hawthorn|r
.target Medic Hawthorn
.accept 11789 >>Accept A Soldier in Need
step
.goto BoreanTundra,53.5,69.1,70,0
.goto BoreanTundra,53.1,72.8,60,0
.goto BoreanTundra,52.29,70.53,60,0
.goto BoreanTundra,53.90,67.07,60,0
.goto BoreanTundra,54.85,65.09
>>Kill |cRXP_ENEMY_Crypt Crawlers|r
.complete 11797,1 
.mob Crypt Crawler
step
.goto BoreanTundra,56.36,69.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammerhill|r
.turnin 11797 >>Turn in The Siege
.accept 11889 >>Accept Death From Above
.target Sergeant Hammerhill
step
.goto BoreanTundra,54.8,70.2,40,0
.goto BoreanTundra,54.83,71.43,40,0
.goto BoreanTundra,54.8,70.2
.use 35278 >>|cRXP_WARN_Use the|r |T134325:0|t[Reinforced Net] |cRXP_WARN_to bring down the flying|r |cRXP_ENEMY_Scourged Flamespitters|r
>>Kill |cRXP_ENEMY_Scourged Flamespitters|r
.complete 11889,1 
.mob Scourged Flamespitter
step
.goto BoreanTundra,56.36,69.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammerhill|r
.turnin 11889 >>Turn in Death From Above
.accept 11897 >>Accept Plug the Sinkholes
.target Sergeant Hammerhill
step
#completewith next
.goto BoreanTundra,56.96,68.75,10 >> Travel onto The Stormbreaker. Head to the lower level
step
>>Open the |cRXP_PICK_First Aid Supplies|r. Loot it for |cRXP_LOOT_Hawthorn's Anti-Venom|r
>>Click on the |cRXP_PICK_Cultist Shrine|r
.complete 11789,1 
.goto BoreanTundra,57.50,69.27
.accept 11920 >>Accept Cultists Among Us
.goto BoreanTundra,57.56,69.13
step
#completewith next
.goto BoreanTundra,56.96,68.75,10 >> Travel toward |cRXP_FRIENDLY_Captain "Lefty"|r and |cRXP_FRIENDLY_Admiral Cantlebree|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Lefty"|r and |cRXP_FRIENDLY_Admiral Cantlebree|r
.turnin 11920 >>Turn in Cultists Among Us
.goto BoreanTundra,57.83,69.20
.target +Captain "Lefty" Lugsail
.accept 11791 >>Accept Notify Arlos
.target +Admiral Cantlebree
.goto BoreanTundra,57.79,69.19
step
#completewith next
.goto BoreanTundra,57.1,71.8,15,0
.goto BoreanTundra,57.2,72.3,15,0
.goto BoreanTundra,56.67,72.64,10 >> Travel into the Keep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arlos|r, |cRXP_FRIENDLY_Talbot|r, and |cRXP_FRIENDLY_Vurenn|r
.turnin 11791 >>Turn in Notify Arlos
.goto BoreanTundra,56.67,72.64
.target +General Arlos
.accept 12141 >>Accept A Diplomatic Mission
.goto BoreanTundra,56.72,72.62
.target +Counselor Talbot
.accept 11792 >>Accept Enemies of the Light
.target +Harbinger Vurenn
.goto BoreanTundra,56.60,72.46
step
#completewith next
.goto BoreanTundra,56.87,71.29,20 >> Exit the Keep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawthorn|r
.turnin 11789 >>Turn in A Soldier in Need
.goto BoreanTundra,55.00,68.91
.target Medic Hawthorn
step
.goto BoreanTundra,54.08,63.73,-1
.goto BoreanTundra,54.77,63.08,-1
.use 35704 >> |cRXP_WARN_Use the|r |T133713:0|t[Incendiary Explosives] |cRXP_WARN_at the|r |cRXP_PICK_Northern Sinkhole|r
.complete 11897,2 
step
#loop
.line BoreanTundra,54.04,62.42,53.84,60.33,55.25,63.43,54.04,62.42
.goto BoreanTundra,54.04,62.42,40,0
.goto BoreanTundra,53.84,60.33,40,0
.goto BoreanTundra,55.25,63.43,40,0
.goto BoreanTundra,54.04,62.42,40,0
>>Kill |cRXP_ENEMY_Cultist Necrolytes|r. Loot them for their |cRXP_LOOT_Communique|r
.complete 11792,1 
.mob Cultist Necrolyte
step
.goto BoreanTundra,50.46,71.38,-1
.goto BoreanTundra,50.88,72.29,-1
.use 35704 >> |cRXP_WARN_Use the|r |T133713:0|t[Incendiary Explosives] |cRXP_WARN_at the|r |cRXP_PICK_Southern Sinkhole|r
.complete 11897,1 
step
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 12141 >>Turn in A Diplomatic Mission
.accept 11613 >>Accept Karuk's Oath
.target Karuk
step
#completewith Karuk2
#label CTPrisoner2
.goto BoreanTundra,44.10,77.90,50,0
>>Kill |cRXP_ENEMY_Skadir Longboatsmen|r and the |cRXP_ENEMY_Riplash Myrmidon|r surrounding the |cRXP_FRIENDLY_Captured Tuskarr Prisoner|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Prisoner|r
>>|cRXP_WARN_Ignore this if the |cRXP_FRIENDLY_Prisoner|r isn't there|r
.accept 12471 >>Accept Cruelty of the Kvaldir
.unitscan Captured Tuskarr Prisoner
step
#loop
.goto BoreanTundra,44.08,78.16,50,0
.goto BoreanTundra,46.02,79.49,50,0
.goto BoreanTundra,46.80,80.74,50,0
.goto BoreanTundra,48.40,79.83,50,0
.goto BoreanTundra,50.33,78.08,50,0
.goto BoreanTundra,48.22,76.00,50,0
.goto BoreanTundra,47.69,77.59,50,0
.goto BoreanTundra,44.08,78.16,50,0
.goto BoreanTundra,46.02,79.49,50,0
.goto BoreanTundra,46.80,80.74,50,0
.goto BoreanTundra,48.40,79.83,50,0
.goto BoreanTundra,50.33,78.08,50,0
.goto BoreanTundra,48.22,76.00,50,0
.goto BoreanTundra,47.69,77.59,0
>>Kill |cRXP_ENEMY_Skadir Longboatsmen|r and |cRXP_ENEMY_Skadir Raiders|r
.complete 11613,2 
.mob +Skadir Longboatsman
.complete 11613,1 
.mob +Skadir Raider
step
#optional
#completewith end
#requires CTPrisoner2
#label Cruelty2
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 12471 >>Turn in Cruelty of the Kvaldir
.isOnQuest 12471
.target Karuk
step
#label Karuk2
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 11613 >>Turn in Karuk's Oath
.accept 11619 >>Accept Gamel the Cruel
.target Karuk
step
#optional
#requires Cruelty2
#completewith next
.groundgoto BoreanTundra,46.3,78.8,20,0
.goto BoreanTundra,46.42,78.23,15 >> Travel into the Cave
step
.goto BoreanTundra,46.42,78.23
>>Kill |cRXP_ENEMY_Gamel the Cruel|r inside the cave
.complete 11619,1 
.mob Gamel the Cruel
step
#optional
#completewith Karuk3
#label CTPrisoner3
.goto BoreanTundra,44.10,77.90,50,0
>>Kill |cRXP_ENEMY_Skadir Longboatsmen|r and the |cRXP_ENEMY_Riplash Myrmidon|r surrounding the |cRXP_FRIENDLY_Captured Tuskarr Prisoner|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Prisoner|r
>>|cRXP_WARN_Ignore this if the |cRXP_FRIENDLY_Prisoner|r isn't there|r
.accept 12471 >>Accept Cruelty of the Kvaldir
.unitscan Captured Tuskarr Prisoner
step
#optional
#completewith end
#requires CTPrisoner3
#label Cruelty3
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 12471 >>Turn in Cruelty of the Kvaldir
.isOnQuest 12471
.target Karuk
step
#label Karuk3
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 11619 >>Turn in Gamel the Cruel
.accept 11620 >>Accept A Father's Words
.target Karuk
step
#optional
#completewith Veehja
#label CTPrisoner4
.goto BoreanTundra,44.10,77.90,50,0
>>Kill |cRXP_ENEMY_Skadir Longboatsmen|r and the |cRXP_ENEMY_Riplash Myrmidon|r surrounding the |cRXP_FRIENDLY_Captured Tuskarr Prisoner|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Prisoner|r
>>|cRXP_WARN_Ignore this if the |cRXP_FRIENDLY_Prisoner|r isn't there|r
.accept 12471 >>Accept Cruelty of the Kvaldir
.unitscan Captured Tuskarr Prisoner
step
#optional
#completewith end
#requires CTPrisoner4
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 12471 >>Turn in Cruelty of the Kvaldir
.isOnQuest 12471
.target Karuk
step << wotlk
.goto BoreanTundra,43.60,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r << DK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r. Only accept this quest if you have enough [|cRXP_WARN_Fish Oil|r] << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r. Only accept this quest if you have multiple |T134794:0|t[|cRXP_WARN_Elixir of Water Walking|r] or are partied with a |T135771:0|t|cFFC41E3ADeath Knight|r << !Shaman !DK
.turnin 11620 >>Turn in A Father's Words
.accept 11625 >>Accept The Trident of Naz'jan
.itemcount 17058,5 << Shaman
.itemcount 8827,5 << !Shaman !DK
.skill coldweatherflying,1,1
.target Veehja
step
#label Veehja2
.goto BoreanTundra,43.60,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
.turnin 11620 >>Turn in A Father's Words
.accept 11625 >>Accept The Trident of Naz'jan
.skill coldweatherflying,<1,1
.target Veehja
step
#label Veehja
.goto BoreanTundra,43.60,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
.turnin 11620 >>Turn in A Father's Words
.target Veehja
step
#requires Veehja2
#completewith next
.groundgoto BoreanTundra,53.7,91.1,40,0
.goto BoreanTundra,54.85,88.78,100 >> Travel to the Riplash Ruins
.isOnQuest 11625
step

.goto BoreanTundra,55.03,88.51
>>Kill |cRXP_ENEMY_Ragnar Drakkarlund|r. Loot him for his |cRXP_LOOT_Trident|r
.complete 11625,1 
.isOnQuest 11625
.mob Ragnar Drakkarlund
step
.goto BoreanTundra,43.63,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
.turnin 11625 >>Turn in The Trident of Naz'jan
.isQuestComplete 11625
.target Veehja
step
.goto BoreanTundra,43.63,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
.accept 11626 >>Accept The Emissary
.isQuestTurnedIn 11625
.target Veehja
step
.goto BoreanTundra,51.90,88.46
.use 35850 >> |cRXP_WARN_Use the|r |T135127:0|t[Trident of Naz'jan] |cRXP_WARN_to deal significant damage to |cRXP_ENEMY_Leviroth|r underwater|r
>>Kill |cRXP_ENEMY_Leviroth|r
.complete 11626,1 
.isQuestTurnedIn 11625
.mob Leviroth
step
#completewith Karuk5
#label CTPrisoner5
.goto BoreanTundra,44.10,77.90,50,0
>>Kill |cRXP_ENEMY_Skadir Longboatsmen|r and the |cRXP_ENEMY_Riplash Myrmidon|r surrounding the |cRXP_FRIENDLY_Captured Tuskarr Prisoner|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Prisoner|r
>>|cRXP_WARN_Ignore this if the |cRXP_FRIENDLY_Prisoner|r isn't there|r
.accept 12471 >>Accept Cruelty of the Kvaldir
.unitscan Captured Tuskarr Prisoner
.mob Skadir Longboatsman
.isQuestTurnedIn 11625
step
#completewith end
#requires CTPrisoner5
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 12471 >>Turn in Cruelty of the Kvaldir
.isOnQuest 12471
.target Karuk
step
#label Karuk5
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
.turnin 11626 >>Turn in The Emissary
.isQuestTurnedIn 11625
.target Karuk
step
#completewith Oculus
.hs >> Hearth to Valiance Keep
step
#completewith Oculus
.goto BoreanTundra,57.1,71.8,15,0
.goto BoreanTundra,57.2,72.3,15,0
.goto BoreanTundra,56.67,72.64,10 >> Travel into the Keep
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vurenn|r, |cRXP_FRIENDLY_Rollick|r, |cRXP_FRIENDLY_Hammerhill|r, |cRXP_FRIENDLY_Mark|r, and |cRXP_FRIENDLY_Skyhopper|r outside
.turnin 11792 >>Turn in Enemies of the Light
.accept 11793 >>Accept Further Investigation
.goto BoreanTundra,56.60,72.46
.turnin 13088 >> Turn in Northern Cooking
.goto BoreanTundra,57.93,71.54
.turnin 11897 >>Turn in Plug the Sinkholes
.accept 11928 >>Accept Farshire
.goto BoreanTundra,56.36,69.58
.accept 11927 >>Accept Word on the Street
.goto BoreanTundra,56.77,69.51
.accept 11707 >>Accept Distress Call
.goto BoreanTundra,58.84,68.72
.isQuestComplete 13088
.skill cooking,<350,1
.target Sergeant Hammerhill
.target Harbinger Vurenn
.target Rollick MacKreel
.target Mark Hanes
.target Airman Skyhopper
step
.goto 114/571,5305.900,2112.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Vurenn|r
.target Harbinger Vurenn
.turnin 11792 >>Turn in Enemies of the Light
.accept 11793 >>Accept Further Investigation
step
.goto 114/571,5321.000,2223.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hammerhill|r
.target Sergeant Hammerhill
.turnin 11897 >>Turn in Plug the Sinkholes
.accept 11928 >>Accept Farshire
step
.goto 114/571,5296.800,2225.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mark Hanes|r
.target Mark Hanes
.accept 11927 >>Accept Word on the Street
step
.goto 114/571,5179.900,2255.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Airman Skyhopper|r
.target Airman Skyhopper
.accept 11707 >>Accept Distress Call
step
.goto BoreanTundra,58.5,68.3,15,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Midge|r, then |cRXP_FRIENDLY_Leryssa|r and |cRXP_FRIENDLY_Yaala|r upstairs
.accept 11575 >>Accept Nick of Time
.goto BoreanTundra,58.41,67.79
.target +Midge
.turnin 11927 >>Turn in Word on the Street
.accept 11599 >>Accept Thassarian, My Brother
.goto BoreanTundra,58.4,67.6,15,0
.goto BoreanTundra,58.75,68.36
.target +Leryssa
.turnin 11793 >>Turn in Further Investigation
.accept 11794 >>Accept The Hunt is On
.target +Vindicator Yaala
.goto BoreanTundra,58.55,67.29
step
#label Oculus
.use 35125 >> |cRXP_WARN_Use the|r |T134335:0|t[Oculus of the Exorcist] |cRXP_WARN_to buff yourself with|r |T135895:0|t[Righteous Vision]
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to then kill |cRXP_ENEMY_"Salty" John Thorpe|r in the Inn, |cRXP_ENEMY_Tom Hegger|r on the Dock, and |cRXP_ENEMY_Guard Mitchels|r in the Prison below the Keep
.complete 11794,3 
.goto BoreanTundra,58.57,67.13
.mob +"Salty" John Thorpe
.complete 11794,1 
.goto BoreanTundra,59.26,68.19
.mob +Tom Hegger
.complete 11794,2 
.goto BoreanTundra,56.9,72.2,12,0
.goto BoreanTundra,56.72,71.83
.mob +Guard Mitchells
.skipgossip 25248,2
.skipgossip 25827,1
.skipgossip 25828,1
.skipgossip
.timer 13,The Hunt is On RP
step
#completewith next
.goto BoreanTundra,58.21,62.82,70 >> Travel to Farshire
step
.goto BoreanTundra,58.21,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r
.turnin 11928 >>Turn in Farshire
.accept 11901 >>Accept Military? What Military?
.target Gerald Green
step
#completewith next
.goto BoreanTundra,56.7,57.2,40 >> Enter Farshire Mine
step
.goto BoreanTundra,56.81,55.56
>>Click the |cRXP_PICK_Plagued Grain|r on the ground
.turnin 11901 >>Turn in Military? What Military?
.accept 11902 >>Accept Pernicious Evidence
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r, |cRXP_FRIENDLY_Jeremiah|r, and |cRXP_FRIENDLY_Wendy|r
.turnin 11902 >>Turn in Pernicious Evidence
.accept 11903 >>Accept It's Time for Action
.goto BoreanTundra,58.21,62.82
.target +Gerald Green
.accept 11908 >>Accept Reference Material
.target +Jeremiah Hawning
.goto BoreanTundra,58.19,62.98
.accept 11913 >>Accept Take No Chances
.target +Wendy Darren
.goto BoreanTundra,58.28,62.77
step
#completewith next
.use 35491 >> |cRXP_WARN_Use|r |T135432:0|t[Wendy's Torch] |cRXP_WARN_to burn the|r |cRXP_PICK_Farshire Grains|r
>>Kill |cRXP_ENEMY_Plagued Scavengers|r
.complete 11913,1 
.complete 11903,1 
.mob +Plagued Scavenger
step
.goto BoreanTundra,55.75,58.32
>>Loot the |cRXP_LOOT_Fields, Factories and Workshops|r, it looks like a red book inside the burning house
.complete 11908,1 
step
#loop
.line BoreanTundra,56.84,61.57,55.59,62.11,54.56,60.67,55.89,60.80,55.32,59.32,55.81,57.69,56.83,58.39,56.84,61.57
.goto BoreanTundra,56.84,61.57,50,0
.goto BoreanTundra,55.59,62.11,50,0
.goto BoreanTundra,54.56,60.67,50,0
.goto BoreanTundra,55.89,60.80,50,0
.goto BoreanTundra,55.32,59.32,50,0
.goto BoreanTundra,55.81,57.69,50,0
.goto BoreanTundra,56.83,58.39,50,0
.goto BoreanTundra,56.84,61.57,50,0
.use 35491 >> |cRXP_WARN_Use|r |T135432:0|t[Wendy's Torch] |cRXP_WARN_to burn the|r |cRXP_PICK_Farshire Grains|r
>>Kill |cRXP_ENEMY_Plagued Scavengers|r
.complete 11913,1 
.complete 11903,1 
.mob +Plagued Scavenger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendy|r, |cRXP_FRIENDLY_Gerald|r and |cRXP_FRIENDLY_Jeremiah|r
.turnin 11913 >>Turn in Take No Chances
.target +Wendy Darren
.goto BoreanTundra,58.28,62.77,-1
.turnin 11903 >>Turn in It's Time for Action
.accept 11904 >>Accept Fruits of Our Labor
.goto BoreanTundra,58.21,62.82,-1
.target +Gerald Green
.turnin 11908 >>Turn in Reference Material
.accept 12035 >>Accept Repurposed Technology
.target +Jeremiah Hawning
.goto BoreanTundra,58.19,62.98,-1
step
.goto BoreanTundra,58.30,61.20,40,0
.goto BoreanTundra,56.52,62.19,40,0
.goto BoreanTundra,58.30,61.20
.use 35943 >> Kill |cRXP_ENEMY_Harvest Collectors|r. |cRXP_WARN_Use|r |T134520:0|t[Jeremiah's Tools] |cRXP_WARN_on their corpses|r
.complete 12035,1 
.mob Harvest Collector
step
#completewith next
.goto BoreanTundra,56.7,57.2,40 >> Enter Farshire Mine
step
.goto BoreanTundra,56.04,55.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William's|r corpse
.turnin 11599 >>Turn in Thassarian, My Brother
.accept 11600 >>Accept The Late William Allerton
.target William Allerton
step
.goto BoreanTundra,57.99,53.54
>>Kill |cRXP_ENEMY_Captain Jacobs|r. Loot him for the |cRXP_LOOT_Cart Release Key|r
.collect 35705,1,11904,1 
.unitscan Captain Jacobs
step
.goto BoreanTundra,57.18,54.65
>>Click the |cRXP_PICK_Cart Release|r lever next to the |cRXP_FRIENDLY_Ore Cart|r
.complete 11904,1 
step
#completewith next
.goto BoreanTundra,56.7,57.2,40,0
.goto BoreanTundra,58.21,62.82,80 >> Travel toward |cRXP_FRIENDLY_Gerald|r and |cRXP_FRIENDLY_Jeremiah|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r and |cRXP_FRIENDLY_Jeremiah|r
.turnin 11904 >>Turn in Fruits of Our Labor
.accept 11962 >>Accept One Last Delivery
.target +Gerald Green
.goto BoreanTundra,58.21,62.82
.turnin 12035 >>Turn in Repurposed Technology
.goto BoreanTundra,58.19,62.98
.target +Jeremiah Hawning
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda|r
.turnin 11962 >>Turn in One Last Delivery
.accept 11963 >>Accept Weapons for Farshire
.goto BoreanTundra,57.32,66.64
.target Hilda Stoneforge
step
.goto BoreanTundra,58.75,68.42
>>|cRXP_WARN_Jump up on the cart then onto the bottom ledge of the window|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leryssa|r
.turnin 11600 >>Turn in The Late William Allerton
.accept 11601 >>Accept Lost and Found
.target Leryssa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James|r and then |cRXP_FRIENDLY_Yaala|r upstairs
.turnin 11601 >>Turn in Lost and Found
.accept 11603 >>Accept In Wine, Truth
.target +James Deacon
.goto BoreanTundra,58.29,68.05
.turnin 11794 >>Turn in The Hunt is On
.target +Vindicator Yaala
.goto BoreanTundra,58.55,67.29
step
.goto BoreanTundra,58.21,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r
.turnin 11963 >>Turn in Weapons for Farshire
.accept 11965 >>Accept Call to Arms!
.target Gerald Green
step
#completewith next
.goto BoreanTundra,57.32,59.39,30 >> Enter the Farshire Bell Tower
step
.goto BoreanTundra,57.32,59.39
>>|cRXP_WARN_Run up the stairs slightly|r
>>Click the |cRXP_PICK_Bell Rope|r hanging from the ceiling
.complete 11965,1 
step
.goto BoreanTundra,58.21,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r
.turnin 11965 >>Turn in Call to Arms!
.target Gerald Green
step << !wotlk
#completewith next
.goto BoreanTundra,50.07,30.72,80 >> Travel to Coldrock Quarry
step << !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r and |cRXP_FRIENDLY_Atkanok|r (|cRXP_WARN_the stone|r)
.accept 11612 >>Accept Reclaiming the Quarry
.goto BoreanTundra,54.29,36.09
.accept 11605 >>Accept The Honored Ancestors
.goto BoreanTundra,54.63,35.88
.target Etaruk
step << !wotlk
#completewith next
.goto BoreanTundra,54.1,34.5,0,0
.goto BoreanTundra,52.0,30.6,0
.goto BoreanTundra,50.9,33.4,0
>>Kill |cRXP_ENEMY_Beryl Treasure Hunters|r
.complete 11612,1 
.mob Beryl Treasure Hunter
step << !wotlk
>>Click the markers for |cRXP_PICK_"Elder Kesuk"|r, |cRXP_PICK_"Elder Takret"|r and |cRXP_PICK_"Elder Sagani"|r on the ground
.complete 11605,1 
.goto BoreanTundra,50.86,32.43
.complete 11605,3 
.goto BoreanTundra,52.31,31.13
.complete 11605,2 
.goto BoreanTundra,52.81,34.02
step << !wotlk
.goto BoreanTundra,54.1,34.5,70,0
.goto BoreanTundra,52.0,30.6,70,0
.goto BoreanTundra,50.9,33.4,70,0
.goto BoreanTundra,54.1,34.5
>>Kill |cRXP_ENEMY_Beryl Treasure Hunters|r
.complete 11612,1 
.mob Beryl Treasure Hunter
step << !wotlk
.goto BoreanTundra,54.63,35.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r
.turnin 11605 >>Turn in The Honored Ancestors
.accept 11607 >>Accept The Lost Spirits
step << !wotlk
.goto BoreanTundra,54.29,36.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r
.turnin 11612 >>Turn in Reclaiming the Quarry
.accept 11617 >>Accept Hampering Their Escape
.target Etaruk
step << !wotlk
#label cores
#completewith coresEnd
.waypoint BoreanTundra,51.7,31.6,15,0
.waypoint BoreanTundra,52.3,31.0,40,0
.waypoint BoreanTundra,51.0,32.3,40,0
.goto BoreanTundra,51.7,31.6,0,0
>>Kill |cRXP_ENEMY_Beryl Hounds|r. Loot them for their |T134337:0|t[|cRXP_LOOT_Cores of Malice|r]
.use 34711 >>|cRXP_WARN_Use the|r |T134337:0|t[|cRXP_LOOT_Cores of Malice|r] |cRXP_WARN_on |cRXP_FRIENDLY_Kaskala Craftsmen|r and|r |cRXP_FRIENDLY_Kaskala Shaman|r
.collect 34711,6,11607,0x3,-1 
.complete 11607,1 
.complete 11607,2 
.mob Beryl Hound
step << !wotlk
.goto BoreanTundra,52.6,35.5
>>Kill |cRXP_ENEMY_Beryl Reclaimers|r. Loot them for their |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r]
>>|cRXP_WARN_Stand at the edge of the cliff|r
.use 34772 >> |cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r] |cRXP_WARN_to destroy the|r |cRXP_PICK_East Platform|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,1 
.mob Beryl Reclaimer
step << !wotlk
.goto BoreanTundra,50.3,34.1
>>Kill |cRXP_ENEMY_Beryl Reclaimers|r. Loot them for their |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r]
>>|cRXP_WARN_Stand at the edge of the cliff|r
.use 34772 >> |cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r] |cRXP_WARN_to destroy the|r |cRXP_PICK_West Platform|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,3 
.mob Beryl Reclaimer
step << !wotlk
#label North
.goto BoreanTundra,52.6,32.4
>>Kill |cRXP_ENEMY_Beryl Reclaimers|r. Loot them for their |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r]
>>|cRXP_WARN_Stand directly below the|r |cRXP_PICK_North Platform|r
.use 34772 >> |cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r] |cRXP_WARN_to destroy the|r |cRXP_PICK_North Platform|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,2 
.mob Beryl Reclaimer
step << !wotlk
#requires cores
#label coresEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r and |cRXP_FRIENDLY_Etaruk|r
.turnin 11607 >>Turn in The Lost Spirits
.accept 11609 >>Accept Picking Up the Pieces
.goto BoreanTundra,54.63,35.88
.turnin 11617 >>Turn in Hampering Their Escape
.accept 11623 >>Accept A Visit to the Curator
.goto BoreanTundra,54.29,36.09
.target Etaruk
step << !wotlk
#completewith next
.goto BoreanTundra,51.2,36.5,50,0
.goto BoreanTundra,52.9,32.6,0
>>Loot the |cRXP_LOOT_Tuskarr Ritual Objects|r on the ground
>>|cRXP_WARN_They look like White and Blue Incense Holders or Anvils|r
.complete 11609,1 
step << !wotlk
.goto BoreanTundra,50.1,32.6
>>Kill |cRXP_ENEMY_Curator Insivius|r
.complete 11623,1 
.mob Curator Insivius
step << !wotlk
.goto BoreanTundra,52.9,32.6,70,0
.goto BoreanTundra,53.9,35.0,70,0
.goto BoreanTundra,50.9,33.2
>>Loot the |cRXP_LOOT_Tuskarr Ritual Objects|r on the ground
>>|cRXP_WARN_They look like White and Blue Incense Holders or Anvils|r
.complete 11609,1 
step << !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r and |cRXP_FRIENDLY_Etaruk|r
.turnin 11609 >>Turn in Picking Up the Pieces
.accept 11610 >>Accept Leading the Ancestors Home
.goto BoreanTundra,54.63,35.88
.turnin 11623 >>Turn in A Visit to the Curator
.goto BoreanTundra,54.29,36.09
.target Etaruk
step << !wotlk
.use 34715 >>|cRXP_WARN_Use the|r |T134378:0|t[Tuskarr Ritual Object] |cRXP_WARN_next to the markers for |cRXP_PICK_"Elder Sagani"|r, |cRXP_PICK_"Elder Takret"|r and|r |cRXP_PICK_"Elder Kesuk"|r
>>|cRXP_WARN_Do NOT wait for the RP|r
.complete 11610,2 
.goto BoreanTundra,52.81,34.04
.complete 11610,3 
.goto BoreanTundra,52.32,31.15
.complete 11610,1 
.goto BoreanTundra,50.85,32.40
step << !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r
.turnin 11610 >>Turn in Leading the Ancestors Home
.goto BoreanTundra,54.63,35.88
step
#completewith next
.goto BoreanTundra,57.05,44.32,120 >> Travel to the D.E.H.T.A. Encampment
step
.goto BoreanTundra,57.05,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Lathorius|r
.accept 11864 >>Accept A Mission Statement
.turnin 11864 >>Turn in A Mission Statement
.accept 11866 >>Accept Ears of Our Enemies
.accept 11876 >>Accept Help Those That Cannot Help Themselves
.target Arch Druid Lathorius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Killinger|r patrolling around the statue, |cRXP_FRIENDLY_Zaza|r, and |cRXP_FRIENDLY_Cenius|r
.accept 11865 >>Accept Unfit for Death
.goto BoreanTundra,56.79,44.04
.target +Zaza
.accept 11869 >>Accept Happy as a Clam
.goto BoreanTundra,57.33,44.08
.target +Hierophant Cenius
.accept 11884 >>Accept Ned, Lord of Rhinos...
.goto BoreanTundra,57.17,43.59,7,0
.goto BoreanTundra,57.33,44.08,7,0
.goto BoreanTundra,57.05,44.32,7,0
.goto BoreanTundra,56.79,44.04
.target +Killinger the Den Watcher
step
#completewith LastTrap
.goto BoreanTundra,55.9,47.4,0
>>Kill |cRXP_ENEMY_Loot Crazed Poachers|r. Loot them for their |cRXP_LOOT_Ears|r
.complete 11866,1 
.mob Loot Crazed Poacher
.mob Loot Crazed Diver
step
#label LastTrap
#loop
.goto BoreanTundra,56.2,46.1,60,0
.goto BoreanTundra,57.7,46.4,60,0
.goto BoreanTundra,57.9,48.7,60,0
.goto BoreanTundra,56.5,50.2,60,0
.goto BoreanTundra,57.6,52.1,60,0
.goto BoreanTundra,57.6,52.1,0
>>|cRXP_WARN_Use the|r |T134263:0|t[Pile of Fake Furs] |cRXP_WARN_on the |cRXP_PICK_Caribou Traps|r on the ground|r
.use 35127 >> |cRXP_WARN_Do NOT wait for the RP|r
.complete 11865,1
.isOnQuest 11865
step
#loop
.goto BoreanTundra,51.7,47.0,70,0
.goto BoreanTundra,52.3,44.8,70,0
.goto BoreanTundra,52.9,43.0,70,0
.goto BoreanTundra,50.0,44.1,70,0
.goto BoreanTundra,50.0,44.1,0
>>Kill |cRXP_ENEMY_Loot Crazed Divers|r. Loot them for their |cRXP_LOOT_Ears|r
>>|cRXP_WARN_Do not go out of your way to collect all |cRXP_LOOT_Ears|r now. You will collect more later|r
.complete 11869,1 
.collect 35188,15,11866,1,1 
.mob Loot Crazed Diver
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Wooly Rhino Matriarchs|r, |cRXP_ENEMY_Wooly Rhino Bulls|r and |cRXP_ENEMY_Wooly Rhino Calves|r. Loot them for their |cRXP_LOOT_Chilled Meat|r
.complete 13088,1 
.isOnQuest 13088
.mob Wooly Rhino Matriarch
.mob Wooly Rhino Calf
.mob Wooly Rhino Bull
step
#loop
.goto BoreanTundra,48.6,40.0,50,0
.goto BoreanTundra,44.9,45.7,50,0
.goto BoreanTundra,46.7,45.6,50,0
.goto BoreanTundra,48.6,40.0,50,0
.goto BoreanTundra,44.9,45.7,0
.goto BoreanTundra,48.6,40.0,0
>>Kill |cRXP_ENEMY_Nedar, Lord of Rhinos|r and |cRXP_ENEMY_"Lunchbox"|r. Kill |cRXP_ENEMY_"Lunchbox"|r first
.complete 11884,2 
.complete 11884,1 
.unitscan Nedar, Lord of Rhinos
.mob "Lunchbox"
step
.goto BoreanTundra,48.6,40.0,50,0
.goto BoreanTundra,44.9,45.7,50,0
.goto BoreanTundra,46.7,45.6,50,0
.goto BoreanTundra,44.9,45.7,0
.goto BoreanTundra,48.6,40.0
>>Kill |cRXP_ENEMY_Wooly Rhino Matriarchs|r, |cRXP_ENEMY_Wooly Rhino Bulls|r and |cRXP_ENEMY_Wooly Rhino Calves|r. Loot them for their |cRXP_LOOT_Chilled Meat|r
.complete 13088,1 
.isOnQuest 13088
.mob Wooly Rhino Matriarch
.mob Wooly Rhino Calf
.mob Wooly Rhino Bull
step
#completewith next
.goto BoreanTundra,45.33,34.62,100 >> Travel to Amber Ledge
step
#sticky
#label ALFP
.goto BoreanTundra,45.33,34.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
.fp Amber Ledge >> Get the Amber Ledge flight path
.target Surristrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donathan|r and |cRXP_FRIENDLY_Garren|r
.turnin 11575 >>Turn in Nick of Time
.accept 11587 >>Accept Prison Break
.goto BoreanTundra,45.26,33.35
.target +Librarian Donathan
.accept 11576 >>Accept Monitoring the Rift: Cleftcliff Anomaly
.goto BoreanTundra,44.98,33.38
.target +Librarian Garren
step
#requires ALFP
#completewith next
.goto BoreanTundra,54.29,36.09,100 >> Travel to Coldrock Quarry
step << wotlk

>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r and |cRXP_FRIENDLY_Atkanok|r (|cRXP_WARN_the stone|r)
.accept 11612 >>Accept Reclaiming the Quarry
.goto BoreanTundra,54.29,36.09
.accept 11605 >>Accept The Honored Ancestors
.goto BoreanTundra,54.63,35.88
.target Etaruk
step
.goto BoreanTundra,55.5,41.1,60,0
.goto BoreanTundra,55.3,38.4,60,0
.goto BoreanTundra,57.6,38.4,60,0
.goto BoreanTundra,59.5,31.3,60,0
.goto BoreanTundra,55.4,27.7,60,0
.goto BoreanTundra,53.3,28.0,60,0
.goto BoreanTundra,56.8,37.7
.use 35228 >> |cRXP_WARN_Use the|r |T133539:0|t[D.E.H.T.A. Trap Smasher] |cRXP_WARN_to free|r |cRXP_FRIENDLY_Trapped Mammoth Calves|r
>>|cRXP_WARN_Do NOT wait for the RP|r
.complete 11876,1,7 
.target Trapped Mammoth Calf
step
.goto BoreanTundra,55.5,41.1,60,0
.goto BoreanTundra,55.3,38.4,60,0
.goto BoreanTundra,57.6,38.4,60,0
.goto BoreanTundra,59.5,31.3,60,0
.goto BoreanTundra,55.4,27.7,60,0
.goto BoreanTundra,53.3,28.0,60,0
.goto BoreanTundra,56.8,37.7
.cast 46201 >> |cRXP_WARN_Use the|r |T133539:0|t[D.E.H.T.A. Trap Smasher] |cRXP_WARN_to free|r |cRXP_FRIENDLY_Trapped Mammoth Calves|r
>>|cRXP_WARN_Do NOT wait for the RP|r
.use 35228
.isOnQuest 11876
.target Trapped Mammoth Calf
step
>>|cRXP_WARN_If you have the |T132311:0|t[Animal Blood] debuff, jump in some water to remove it or wait for it to expire before going into the camp, other wise the guards will attack you|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Killinger|r, |cRXP_FRIENDLY_Cenius|r, |cRXP_FRIENDLY_Lathorius|r, and |cRXP_FRIENDLY_Zaza|r
.turnin 11869 >>Turn in Happy as a Clam
.accept 11870 >>Accept The Abandoned Reach
.goto BoreanTundra,57.33,44.08
.turnin 11876 >>Turn in Help Those That Cannot Help Themselves
.goto BoreanTundra,57.05,44.32
.turnin 11865 >>Turn in Unfit for Death
.accept 11868 >>Accept The Culler Cometh
.goto BoreanTundra,56.79,44.04
.target +Zaza
.turnin 11884 >>Turn in Ned, Lord of Rhinos...
.goto BoreanTundra,57.17,43.59,20,0
.goto BoreanTundra,57.33,44.08,15,0
.goto BoreanTundra,57.05,44.32,15,0
.goto BoreanTundra,56.79,44.04
.target +Killinger the Den Watcher
.target Hierophant Cenius
.target Arch Druid Lathorius
step
.goto BoreanTundra,57.2,56.5
>>Kill |cRXP_ENEMY_Karen "I Don't Caribou" the Culler|r
.complete 11868,1 
.mob Karen "I Don't Caribou" the Culler
step
.goto BoreanTundra,57.80,55.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liandra|r
.turnin 11870 >>Turn in The Abandoned Reach
.accept 11871 >>Accept Not On Our Watch
.target Hierophant Liandra
step
#completewith Liandra
.goto BoreanTundra,60.8,63.1,0
>>Kill |cRXP_ENEMY_Northsea Thugs|r and |cRXP_ENEMY_Northsea Mercenaries|r. Loot them for their |cRXP_LOOT_Ears|r
.complete 11866,1 
.mob Northsea Mercenary
.mob Northsea Thug
step
.goto BoreanTundra,59.2,55.6,50,0
.goto BoreanTundra,58.6,58.3,50,0
.goto BoreanTundra,60.3,58.0,50,0
.goto BoreanTundra,59.7,60.5,50,0
.goto BoreanTundra,60.0,64.1,50,0
.goto BoreanTundra,61.8,63.5
>>Loot the |cRXP_LOOT_Shipments of Animal Parts|r on the ground
.complete 11871,1 
step
#label Liandra
.goto BoreanTundra,57.80,55.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liandra|r
.turnin 11871 >>Turn in Not On Our Watch
.accept 11872 >>Accept The Nefarious Clam Master...
.target Hierophant Liandra
step
.goto BoreanTundra,59.2,55.6,50,0
.goto BoreanTundra,58.6,58.3,50,0
.goto BoreanTundra,60.3,58.0,50,0
.goto BoreanTundra,59.7,60.5,50,0
.goto BoreanTundra,60.0,64.1,50,0
.goto BoreanTundra,61.8,63.5
>>Kill |cRXP_ENEMY_Northsea Thugs|r and |cRXP_ENEMY_Northsea Mercenaries|r. Loot them for their |cRXP_LOOT_Ears|r
.complete 11866,1 
.mob Northsea Mercenary
.mob Northsea Thug
step
#sticky
#label wine
.goto BoreanTundra,61.90,65.67
>>Open the |cRXP_PICK_Wine Crate|r underwater. Loot it for the |cRXP_LOOT_Kul Tiras Wine|r
.complete 11603,1 
step
.goto BoreanTundra,61.0,66.5,30,0
.goto BoreanTundra,62.5,66.2
>>Kill |cRXP_ENEMY_Clam Master K|r underwater
.complete 11872,1 
.unitscan Clam Master K
step
#requires wine
#completewith next
.goto BoreanTundra,58.5,68.2,100 >> Travel to Valiance Keep
step

.goto BoreanTundra,58.53,68.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colburn|r
.turnin 11603 >>Turn in In Wine, Truth
.accept 11604 >>Accept A Deserter
.target Old Man Colburn

step
.goto BoreanTundra,57.93,71.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rollick|r
.turnin 13088 >> Turn in Northern Cooking
.isQuestComplete 13088
.skill cooking,<350,1
.target Rollick MacKreel
step
#completewith next
.goto BoreanTundra,56.9,72.2,10 >> Travel to Valiance Keep Prison
step
.goto BoreanTundra,56.68,71.44
>>Run down stairs to the Prison
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brau|r
.turnin 11604 >>Turn in A Deserter
.accept 11932 >>Accept Cowards and Fools
.target Private Brau
step
#completewith next
.goto BoreanTundra,56.9,72.2,10,0
.goto BoreanTundra,58.97,68.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomas|r
.fly Amber Ledge >> Fly to Amber Ledge
.target Tomas Riverwell
step
>>Kill |cRXP_ENEMY_Beryl Mage Hunters|r. Loot them for a |T134242:0|t[|cRXP_LOOT_Beryl Prison Key|r]
>>|cRXP_WARN_Use the|r |T134242:0|t[|cRXP_LOOT_Beryl Prison Key|r] |cRXP_WARN_on a|r |cRXP_PICK_Arcane Prison|r
>>|cRXP_WARN_Continue opening |cRXP_PICK_Arcane Prisons|r until you are successful in saving an|r |cRXP_FRIENDLY_Arcane Prisoner|r
.collect 34688,1,11587,0x1,-1 
#loop
.line BoreanTundra,42.60,36.75,40.43,39.16,41.78,42.53,42.60,36.75
.goto BoreanTundra,42.60,36.75,20,0
.goto BoreanTundra,40.43,39.16,20,0
.goto BoreanTundra,41.78,42.53,20,0
.goto BoreanTundra,42.60,36.75,20,0
.complete 11587,1 
.goto BoreanTundra,42.60,36.75,40,0
.goto BoreanTundra,40.43,39.16,40,0
.goto BoreanTundra,41.78,42.53
.mob Beryl Mage Hunter
step
#completewith next
.groundgoto BoreanTundra,45.03,37.97,60,0
.goto BoreanTundra,45.26,33.35,50 >> Travel toward |cRXP_FRIENDLY_Donathan|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donathan|r
.turnin 11587 >>Turn in Prison Break
.accept 11590 >>Accept Abduction
.goto BoreanTundra,45.26,33.35
.target Librarian Donathan
step
.goto BoreanTundra,43.2,36.6,60,0
.goto BoreanTundra,41.6,37.4
.use 34691 >>|cRXP_WARN_Damage a |cRXP_ENEMY_Beryl Sorcerer|r to 50% or less health. Do NOT kill the|r |cRXP_ENEMY_Beryl Sorcerer|r
>>|cRXP_WARN_Channel the|r |T133273:0|t[Arcane Binder] |cRXP_WARN_to capture the |cRXP_ENEMY_Beryl Sorcerer|r once it's weakened|r
.complete 11590,1 
.mob Beryl Sorcerer
step
#completewith next
.groundgoto BoreanTundra,45.03,37.97,60,0
.goto BoreanTundra,45.26,33.35,50 >> Travel toward |cRXP_FRIENDLY_Donathan|r
>>|cRXP_WARN_You can ignore the |cRXP_ENEMY_Beryl Sorcerer|r. It will continue to follow you|r
step
.goto BoreanTundra,45.26,33.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donathan|r
.turnin 11590 >>Turn in Abduction
.accept 11646 >>Accept The Borean Inquisition
.target Librarian Donathan
step
#completewith next
.goto BoreanTundra,46.60,32.94,40 >> Enter the Mage Tower. Run up to the first floor
step
.goto BoreanTundra,46.32,32.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Normantis|r
.turnin 11646 >>Turn in The Borean Inquisition
.accept 11648 >>Accept The Art of Persuasion
.target Librarian Normantis
step
.goto BoreanTundra,46.33,32.92
.use 34811 >> |cRXP_WARN_Use the|r |T135470:0|t[Neural Needler] |cRXP_WARN_on the |cRXP_ENEMY_Imprisoned Beryl Sorcerer|r next to |cRXP_FRIENDLY_Normantis|r until the objective completes|r
.complete 11648,1 
.mob Imprisoned Beryl Sorcerer
step
.goto BoreanTundra,46.32,32.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Normantis|r
.turnin 11648 >>Turn in The Art of Persuasion
.accept 11663 >>Accept Sharing Intelligence
.target Librarian Normantis
step
.goto BoreanTundra,45.26,33.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donathan|r outside
.turnin 11663 >>Turn in Sharing Intelligence
.accept 11671 >>Accept A Race Against Time
.target Librarian Donathan
step
#completewith next
.goto BoreanTundra,41.30,41.79,70,0
.goto BoreanTundra,39.85,42.18,50,0 << !Shaman !DK
.goto BoreanTundra,38.46,43.37,50,0 << !Shaman !DK
.goto BoreanTundra,35.15,43.52,50,0 << !Shaman !DK
.goto BoreanTundra,34.44,42.35,50 >> Travel to The Westrift
>>|cRXP_WARN_Cast |T135863:0|t[Water Walking] to cross the water|r << Shaman
>>|cRXP_WARN_Cast |T237528:0|t[Path of Frost] to cross the water|r << DK
.skill coldweatherflying,1,1
step
.goto BoreanTundra,34.44,42.35
.use 34669 >> |cRXP_WARN_Use the|r |T133015:0|t[Arcanometer] |cRXP_WARN_at the |cRXP_PICK_Cleftcliff Anomaly|r on the ground|r
.complete 11576,1 
.skill coldweatherflying,1,1
step
#completewith next
.goto BoreanTundra,34.44,42.35,100 >> Travel to The Westrift
.skill coldweatherflying,<1,1
step
.goto BoreanTundra,34.44,42.35
.use 34669 >> |cRXP_WARN_Use the|r |T133015:0|t[Arcanometer] |cRXP_WARN_at the |cRXP_PICK_Cleftcliff Anomaly|r on the ground|r
.complete 11576,1 
.skill coldweatherflying,<1,1
step
#completewith next
.goto BoreanTundra,35.15,43.52,40,0 << !Shaman !DK
.goto BoreanTundra,38.46,43.37,50,0 << !Shaman !DK
.goto BoreanTundra,39.85,42.18,50,0 << !Shaman !DK
.goto BoreanTundra,41.30,41.79,70,0
.goto BoreanTundra,41.80,39.16,100 >> Travel back to Beryl Point
>>|cRXP_WARN_Cast |T135863:0|t[Water Walking] to cross the water|r << Shaman
>>|cRXP_WARN_Cast |T237528:0|t[Path of Frost] to cross the water|r << DK
.skill coldweatherflying,1,1
step
#completewith next
.cast 45780 >> |cRXP_WARN_Use the|r |T133709:0|t[Beryl Shield Detonator] |cRXP_WARN_to disable |cRXP_ENEMY_Inquisitor Salrand's|r shield|r
.use 34897
.skill coldweatherflying,1,1
step
.goto BoreanTundra,41.80,39.16
.use 34897 >> Kill |cRXP_ENEMY_Inquisitor Salrand|r. Loot |cRXP_PICK_Salrand's Lockbox|r that she drops on the ground for |cRXP_LOOT_Salrand's Broken Key|r
.complete 11671,1 
.mob Inquisitor Salrand
.skill coldweatherflying,1,1
step
#completewith next
.goto BoreanTundra,41.80,39.16,100 >> Travel to Beryl Point
.skill coldweatherflying,<1,1
step
#completewith next
.cast 45780 >> |cRXP_WARN_Use the|r |T133709:0|t[Beryl Shield Detonator] |cRXP_WARN_to disable |cRXP_ENEMY_Inquisitor Salrand's|r shield|r
.use 34897
.skill coldweatherflying,<1,1
step
.goto BoreanTundra,41.80,39.16
.use 34897 >> Kill |cRXP_ENEMY_Inquisitor Salrand|r. Loot |cRXP_PICK_Salrand's Lockbox|r that she drops on the ground for |cRXP_LOOT_Salrand's Broken Key|r
.complete 11671,1 
.mob Inquisitor Salrand
.skill coldweatherflying,<1,1
step
#completewith next
.groundgoto BoreanTundra,45.03,37.97,60,0
.goto BoreanTundra,45.26,33.35,60 >> Travel to Amber Ledge
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren|r, |cRXP_FRIENDLY_Donathan|r and |cRXP_FRIENDLY_Surristrasz|r
.turnin 11576 >>Turn in Monitoring the Rift: Cleftcliff Anomaly
.accept 11582 >>Accept Monitoring the Rift: Sundered Chasm
.goto BoreanTundra,44.98,33.38
.turnin 11671 >>Turn in A Race Against Time
.accept 11679 >>Accept Reforging the Key
.goto BoreanTundra,45.26,33.35
.turnin 11679 >>Turn in Reforging the Key
.accept 11680 >>Accept Taking Wing
.goto BoreanTundra,45.33,34.62
.target Librarian Donathan
.target Librarian Garren
.target Surristrasz
step
.goto BoreanTundra,46.38,37.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anzim|r
.turnin 11680 >>Turn in Taking Wing
.accept 11681 >>Accept Rescuing Evanor
.timer 53,Rescuing Evanor RP
.target Warmage Anzim
step
.goto BoreanTundra,43.01,43.86,-1
.goto BoreanTundra,46.37,32.39,-1
>>|cRXP_WARN_Wait for the flight and RP to finish. You will get teleported to the quest turn in once all RP completes|r
>>|cRXP_WARN_If the event didn't start, abandon Rescuing Evanor and Accept it again|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evanor|r
.turnin 11681 >>Turn in Rescuing Evanor
.accept 11682 >>Accept Dragonspeak
.target Archmage Evanor
step
.goto BoreanTundra,43.83,29.41
>>|cRXP_WARN_Carefully descend the mountain or jump into the water below|r
.use 34669 >> |cRXP_WARN_Use the|r |T133015:0|t[Arcanometer] |cRXP_WARN_at the |cRXP_PICK_Sundered Chasm|r on the sea floor|r
.complete 11582,1 
.skill coldweatherflying,1,1
step
.goto BoreanTundra,43.83,29.41
>>|cRXP_WARN_Fly into the water below|r
.use 34669 >> |cRXP_WARN_Use the|r |T133015:0|t[Arcanometer] |cRXP_WARN_at the |cRXP_PICK_Sundered Chasm|r on the sea floor|r
.complete 11582,1 
.skill coldweatherflying,<1,1
step << wotlk
#completewith next
.groundgoto BoreanTundra,45.5,31.2,20,0
.groundgoto BoreanTundra,47.12,29.16,20,0
.goto BoreanTundra,50.07,30.72,80 >> Travel to Coldrock Quarry
step << wotlk
#completewith next
.goto BoreanTundra,54.1,34.5,0,0
.goto BoreanTundra,52.0,30.6,0
.goto BoreanTundra,50.9,33.4,0
>>Kill |cRXP_ENEMY_Beryl Treasure Hunters|r
.complete 11612,1 
.mob Beryl Treasure Hunter
step << wotlk
>>Click the markers for |cRXP_PICK_"Elder Kesuk"|r, |cRXP_PICK_"Elder Takret"|r and |cRXP_PICK_"Elder Sagani"|r on the ground
.complete 11605,1 
.goto BoreanTundra,50.86,32.43
.complete 11605,3 
.goto BoreanTundra,52.31,31.13
.complete 11605,2 
.goto BoreanTundra,52.81,34.02
step << wotlk
.goto BoreanTundra,54.1,34.5,70,0
.goto BoreanTundra,52.0,30.6,70,0
.goto BoreanTundra,50.9,33.4,70,0
.goto BoreanTundra,54.1,34.5
>>Kill |cRXP_ENEMY_Beryl Treasure Hunters|r
.complete 11612,1 
.mob Beryl Treasure Hunter
step << wotlk
.goto BoreanTundra,54.63,35.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r
.turnin 11605 >>Turn in The Honored Ancestors
.accept 11607 >>Accept The Lost Spirits
step << wotlk
.goto BoreanTundra,54.29,36.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r
.turnin 11612 >>Turn in Reclaiming the Quarry
.accept 11617 >>Accept Hampering Their Escape
.target Etaruk
step << wotlk
#label cores
#completewith coresEnd
.waypoint BoreanTundra,51.7,31.6,15,0
.waypoint BoreanTundra,52.3,31.0,40,0
.waypoint BoreanTundra,51.0,32.3,40,0
.goto BoreanTundra,51.7,31.6,0,0
>>Kill |cRXP_ENEMY_Beryl Hounds|r. Loot them for their |T134337:0|t[|cRXP_LOOT_Cores of Malice|r]
.use 34711 >>|cRXP_WARN_Use the|r |T134337:0|t[|cRXP_LOOT_Cores of Malice|r] |cRXP_WARN_on |cRXP_FRIENDLY_Kaskala Craftsmen|r and|r |cRXP_FRIENDLY_Kaskala Shaman|r
.collect 34711,6,11607,0x3,-1 
.complete 11607,1 
.complete 11607,2 
.mob Beryl Hound
step << wotlk
.goto BoreanTundra,52.6,35.5
>>Kill |cRXP_ENEMY_Beryl Reclaimers|r. Loot them for their |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r]
>>|cRXP_WARN_Stand at the edge of the cliff|r
.use 34772 >> |cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r] |cRXP_WARN_to destroy the|r |cRXP_PICK_East Platform|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,1 
.mob Beryl Reclaimer
step << wotlk
.goto BoreanTundra,50.3,34.1
>>Kill |cRXP_ENEMY_Beryl Reclaimers|r. Loot them for their |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r]
>>|cRXP_WARN_Stand at the edge of the cliff|r
.use 34772 >> |cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r] |cRXP_WARN_to destroy the|r |cRXP_PICK_West Platform|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,3 
.mob Beryl Reclaimer
step << wotlk
#label North
.goto BoreanTundra,52.6,32.4
>>Kill |cRXP_ENEMY_Beryl Reclaimers|r. Loot them for their |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r]
>>|cRXP_WARN_Stand directly below the|r |cRXP_PICK_North Platform|r
.use 34772 >> |cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Gnomish Grenades|r] |cRXP_WARN_to destroy the|r |cRXP_PICK_North Platform|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,2 
.mob Beryl Reclaimer
step << wotlk
#requires cores
#label coresEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r and |cRXP_FRIENDLY_Etaruk|r
.turnin 11607 >>Turn in The Lost Spirits
.accept 11609 >>Accept Picking Up the Pieces
.goto BoreanTundra,54.63,35.88
.turnin 11617 >>Turn in Hampering Their Escape
.accept 11623 >>Accept A Visit to the Curator
.goto BoreanTundra,54.29,36.09
.target Etaruk
step << wotlk
#completewith next
.goto BoreanTundra,51.2,36.5,50,0
.goto BoreanTundra,52.9,32.6,0
>>Loot the |cRXP_LOOT_Tuskarr Ritual Objects|r on the ground
>>|cRXP_WARN_They look like White and Blue Incense Holders or Anvils|r
.complete 11609,1 
step << wotlk
.goto BoreanTundra,50.1,32.6
>>Kill |cRXP_ENEMY_Curator Insivius|r
.complete 11623,1 
.mob Curator Insivius
step << wotlk
.goto BoreanTundra,52.9,32.6,70,0
.goto BoreanTundra,53.9,35.0,70,0
.goto BoreanTundra,50.9,33.2
>>Loot the |cRXP_LOOT_Tuskarr Ritual Objects|r on the ground
>>|cRXP_WARN_They look like White and Blue Incense Holders or Anvils|r
.complete 11609,1 
step << wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r and |cRXP_FRIENDLY_Etaruk|r
.turnin 11609 >>Turn in Picking Up the Pieces
.accept 11610 >>Accept Leading the Ancestors Home
.goto BoreanTundra,54.63,35.88
.turnin 11623 >>Turn in A Visit to the Curator
.goto BoreanTundra,54.29,36.09
.target Etaruk
step << wotlk
.use 34715 >>|cRXP_WARN_Use the|r |T134378:0|t[Tuskarr Ritual Object] |cRXP_WARN_next to the markers for |cRXP_PICK_"Elder Sagani"|r, |cRXP_PICK_"Elder Takret"|r and|r |cRXP_PICK_"Elder Kesuk"|r
>>|cRXP_WARN_Do NOT wait for the RP|r
.complete 11610,2 
.goto BoreanTundra,52.81,34.04
.complete 11610,3 
.goto BoreanTundra,52.32,31.15
.complete 11610,1 
.goto BoreanTundra,50.85,32.40
step << wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r
.turnin 11610 >>Turn in Leading the Ancestors Home
.goto BoreanTundra,54.63,35.88
step
#completewith next
.goto BoreanTundra,57.05,44.32,120 >> Travel to the D.E.H.T.A. Encampment
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaza|r, |cRXP_FRIENDLY_Lathorius|r and |cRXP_FRIENDLY_Cenius|r
.turnin 11868 >>Turn in The Culler Cometh
.goto BoreanTundra,56.80,44.04
.turnin 11866 >>Turn in Ears of Our Enemies
.accept 11878 >>Accept Khu'Nok Will Know
.goto BoreanTundra,57.05,44.32
.turnin 11872 >>Turn in The Nefarious Clam Master...
.goto BoreanTundra,57.33,44.08
.target Hierophant Cenius
.target Zaza
.target Arch Druid Lathorius
step << skip
.goto BoreanTundra,57.0,44.3,0
.goto BoreanTundra,59.25,30.83
>>Escort the |cRXP_FRIENDLY_Mammoth Calf|r north to |cRXP_FRIENDLY_Khu'Nok|r. |cRXP_WARN_Don't travel out of render range (100 yards) as this will despawn the Calf|r.
>>|cRXP_WARN_If the Calf despawns, abandon and retake the quest from|r |cRXP_FRIENDLY_Lathorius|r
.complete 11878,1 
.target Khu'nok the Behemoth
.target Arch Druid Lathorius
step
#completewith next
.goto BoreanTundra,59.43,30.38,80 >> Travel toward |cRXP_FRIENDLY_Khu'nok|r
step
.goto BoreanTundra,59.43,30.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khu'nok|r
.turnin 11878 >>Turn in Khu'nok Will Know
.accept 11879 >>Accept Kaw the Mammoth Destroyer
.target Khu'nok the Behemoth
step
#completewith next
.goto BoreanTundra,53.7,24.4
.vehicle >>Click on a |cRXP_FRIENDLY_Wooly Mammoth Bull|r to Mount it
.unitscan Wooly Mammoth Bull
step
.goto BoreanTundra,53.84,24.08
>>Engage |cRXP_ENEMY_Kaw the Mammoth Destroyer|r by running near him
>>|cRXP_WARN_Cast|r |T132337:0|t[Mammoth Charge] (2) |cRXP_WARN_to deal damage and stun for 3 seconds|r
>>|cRXP_WARN_Cast|r |T132255:0|t[Mammoth Trample] (1) |cRXP_WARN_to deal significant damage when in melee range|r
>>|cRXP_WARN_Alternatively, if your damage is high, you can kill |cRXP_ENEMY_Kaw the Mammoth Destroyer|r faster whilst dismounted|r
>>Kill |cRXP_ENEMY_Kaw the Mammoth Destroyer|r. Dismount the |cRXP_FRIENDLY_Wooly Mammoth Bull|r. Loot |cRXP_LOOT_Kaw's War Halberd|r on the ground
.complete 11879,1 
.mob Kaw the Mammoth Destroyer
step
#completewith next
.goto BoreanTundra,56.56,20.07,100 >> Travel to Fizzcrank Airstrip
step
.goto BoreanTundra,56.56,20.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kara|r
.fp Fizzcrank >> Get the Fizzcrank Airstrip Flight Path
.target Kara Thricestar
step
#completewith next
.goto BoreanTundra,57.05,44.32,120 >> Travel to the D.E.H.T.A. Encampment
step
.goto BoreanTundra,57.05,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lathorious|r
.turnin 11879 >>Turn in Kaw the Mammoth Destroyer
.accept 11892 >>Accept The Assassination of Harold Lane
.target Arch Druid Lathorius
step
.goto BoreanTundra,49.90,41.50
.use 35293 >>Kill |cRXP_ENEMY_Harold Lane|r
>>|cRXP_WARN_Use the|r |T134229:0|t[Cenarion Horn] |cRXP_WARN_to summon |cRXP_FRIENDLY_Stampeding Mammoths|r which will deal significant damage to |cRXP_ENEMY_Harold Lane|r. Move away from any traps he places
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << wotlk
.complete 11892,1 
.unitscan Harold Lane
.isOnQuest 11892
step
.goto BoreanTundra,57.05,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lathorious|r
.turnin 11892 >>Turn in The Assassination of Harold Lane
.isQuestComplete 11892
.target Arch Druid Lathorius
step
#sticky
#label AbandonAss
.goto BoreanTundra,63.8,46.1
.abandon 11892 >> Abandon The Assassination of Harold Lane
step
#completewith next
.goto BoreanTundra,63.80,46.12,80 >> Travel to Kaskala
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ataika|r and |cRXP_FRIENDLY_Utaik|r
.turnin 11932 >>Turn in Cowards and Fools
.accept 12086 >>Accept The Son of Karkut
.accept 11949 >>Accept Not Without a Fight!
.goto BoreanTundra,63.80,46.12
.daily 11945 >>Accept Preparing for the Worst
.goto BoreanTundra,63.95,45.72
.target Ataika
.target Utaik
step
#requires AbandonAss
#completewith Raiders
.goto BoreanTundra,66.2,45.9,0
.goto BoreanTundra,63.7,52.2,0
>>Loot the |cRXP_LOOT_Kaskala Supplies|r on the ground
.complete 11945,1 
.isOnQuest 11945
step << !DK
#requires AbandonAss
.goto BoreanTundra,67.3,47.7,60,0
.goto BoreanTundra,63.61,53.93
>>Kill |cRXP_ENEMY_Kvaldir Raiders|r
.complete 11949,1 
.skill coldweatherflying,1,1
.mob Kvaldir Raider
step
#requires AbandonAss
#label Raiders
.goto BoreanTundra,67.3,47.7,60,0
.goto BoreanTundra,63.61,53.93,60,0
.goto BoreanTundra,66.38,55.90,60,0
.goto BoreanTundra,67.96,56.69
>>Kill |cRXP_ENEMY_Kvaldir Raiders|r
.complete 11949,1 
.skill coldweatherflying,<1,1 << !DK
.mob Kvaldir Raider
step
.goto BoreanTundra,67.3,47.7,60,0
.goto BoreanTundra,63.61,53.93,60,0
.goto BoreanTundra,66.38,55.90,60,0
.goto BoreanTundra,67.96,56.69
>>Loot the |cRXP_LOOT_Kaskala Supplies|r on the ground
.complete 11945,1 
.isOnQuest 11945
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ataika|r and |cRXP_FRIENDLY_Utaik|r
.turnin 11949 >>Turn in Not Without a Fight!
.accept 11950 >>Accept Muahit's Wisdom
.goto BoreanTundra,63.80,46.12
.turnin 11945 >>Turn in Preparing for the Worst
.goto BoreanTundra,63.95,45.72
.isOnQuest 11945
.target Ataika
.target Utaik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ataika|r
.turnin 11949 >>Turn in Not Without a Fight!
.accept 11950 >>Accept Muahit's Wisdom
.goto BoreanTundra,63.80,46.12
.target Ataika
step
#completewith next
.goto BoreanTundra,67.21,54.86,100 >> Travel toward |cRXP_FRIENDLY_Muahit|r
step
.goto BoreanTundra,67.21,54.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muahit|r
.turnin 11950 >>Turn in Muahit's Wisdom
.accept 11961 >>Accept Spirits Watch Over Us
.target Elder Muahit
step
.goto BoreanTundra,67.65,50.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iruk's|r corpse underwater
.complete 11961,1 
.skipgossip
.target Iruk
step
.goto BoreanTundra,67.21,54.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muahit|r
.turnin 11961 >>Turn in Spirits Watch Over Us
.accept 11968 >>Accept The Tides Turn
.target Elder Muahit
step
.goto BoreanTundra,67.41,56.87
>>Kill |cRXP_ENEMY_Heigarr the Horrible|r
>>|cRXP_WARN_You may not get credit the first time if his health is below 50%|r
.complete 11968,1 
.unitscan Heigarr the Horrible
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muahit|r and |cRXP_FRIENDLY_Hotawa|r
.turnin 11968 >>Turn in The Tides Turn
.goto BoreanTundra,67.21,54.86
.accept 12117 >>Accept Travel to Moa'ki Harbor
.goto BoreanTundra,67.27,54.86
.target Elder Muahit
.target Hotawa
step << skip
.goto BoreanTundra,78.5,51.5
>>Travel to Unu'pe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilko|r
.fp Unu'pe >> Get the Unu'pe flight path
.target Bilko Driftspark
step
#completewith next
.goto BoreanTundra,82.01,46.42,100 >> Travel to Death's Stand
step
.goto BoreanTundra,82.01,46.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venn|r
.turnin 12086 >>Turn in The Son of Karkut
.accept 11944 >>Accept Surrounded!
.target Corporal Venn
step
#level 71
.goto BoreanTundra,82.17,46.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Casey|r
.accept 12157 >>Accept The Lost Courier
.target Private Casey
step
.goto BoreanTundra,81.46,43.80,50,0
.goto BoreanTundra,82.78,43.69,50,0
.goto BoreanTundra,83.24,40.40,50,0
.goto BoreanTundra,81.46,43.80
>>Kill |cRXP_ENEMY_Ziggurat Defenders|r
.complete 11944,1 
.mob Ziggurat Defender
step
.goto BoreanTundra,82.01,46.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venn|r
.turnin 11944 >>Turn in Surrounded!
.accept 12088 >>Accept Thassarian, the Death Knight
.target Corporal Venn
step
#completewith next
.goto BoreanTundra,84.7,41.0,30 >> Travel toward |cRXP_FRIENDLY_Thassarian|r inside the Ziggurat
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
.turnin 12088 >>Turn in Thassarian, the Death Knight
.accept 11956 >>Accept Finding the Phylactery
.target Thassarian
step
.goto BoreanTundra,85.40,33.34
>>Click the |cRXP_PICK_Frozen Phylactery|r underwater to summon the |cRXP_ENEMY_Phylactery Guardian|r
>>Kill the |cRXP_ENEMY_Phylactery Guardian|r. Loot it for |cRXP_LOOT_Tanathal's Phylactery|r
.complete 11956,1 
.mob Phylactery Guardian
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
.turnin 11956 >>Turn in Finding the Phylactery
.accept 11938 >>Accept Buying Some Time
.target Thassarian
step
.goto BoreanTundra,84.42,32.06,60,0
.goto BoreanTundra,83.35,30.70,60,0
.goto BoreanTundra,85.28,28.18,60,0
.goto BoreanTundra,86.85,28.94,60,0
.goto BoreanTundra,88.14,27.45,60,0
.goto BoreanTundra,84.49,24.31,60,0
.goto BoreanTundra,85.7,27.3
.use 35944 >>Kill the |cRXP_ENEMY_En'kilah|r
>>|cRXP_WARN_Use|r |T133730:0|t[Lurid's Bones] |cRXP_WARN_to summon |cRXP_FRIENDLY_Lurid|r to help you kill the|r |cRXP_ENEMY_En'kilah|r
.complete 11938,1 
.mob En'kilah Necromancer
.mob En'kilah Abomination
.mob En'kilah Crypt Fiend
.mob En'kilah Gargoyle
.mob En'kilah Ghoul
.mob En'kilah Necrolord
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
.turnin 11938 >>Turn in Buying Some Time
.accept 11942 >>Accept Words of Power
.target Thassarian
step
#completewith next
.groundgoto BoreanTundra,85.0,28.9,70,0
.goto BoreanTundra,88.59,28.30,40 >> Travel to the Spire of Pain in En'kilah
step
.goto BoreanTundra,89.38,28.86
>>Kill the |cRXP_ENEMY_Mystical Webbings|r to free |cRXP_ENEMY_High Priest Talet-Kha|r
>>Kill |cRXP_ENEMY_High Priest Talet-Kha|r. Loot him for his |cRXP_LOOT_Scroll|r
.complete 11942,3 
.mob High Priest Talet-Kha
.mob Mystical Webbing

step
#completewith next
.groundgoto BoreanTundra,87.7,22.0,40,0
.goto BoreanTundra,88.68,21.72,25 >> Travel to the Spire of Blood in En'kilah. Enter through the side entrance
step
.goto BoreanTundra,88.05,20.94
>>Kill |cRXP_ENEMY_High Priest Andorath|r. Loot him for his |cRXP_LOOT_Scroll|r
.complete 11942,1 
.mob High Priest Andorath
step
#completewith next
.goto BoreanTundra,84.2,21.8,40 >> Travel to the Spire of Decay
step
.goto BoreanTundra,83.9,20.5
>>Kill the |cRXP_ENEMY_En'kilah Necromancers|r to free |cRXP_ENEMY_High Priest Naferset|r
>>Kill |cRXP_ENEMY_High Priest Naferset|r. Loot him for his |cRXP_LOOT_Scroll|r
.complete 11942,2 
.mob High Priest Naferset
.mob En'kilah Necromancer
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
.turnin 11942 >>Turn in Words of Power
.accept 12019 >>Accept Last Rites
.target Thassarian
step
#optional << !wotlk
#completewith lastrites
.goto BoreanTundra,86.5,28.7,15 >> |cRXP_WARN_Take the teleporter up to the Ziggurat in the sky|r
.goto BoreanTundra,86.7,30.2,8 >>|cRXP_WARN_After taking the 1st teleporter, take the 2nd (blue) teleporter directly above the green circle where you first entered|r
.isOnQuest 12019
.noflyable
step
#optional << wotlk
.goto BoreanTundra,86.64,31.38
.subzone 4128>>Fly up to the roof of the ziggurat floating in the sky
.flyable << wotlk
step
#completewith next
#label lastrites
.goto BoreanTundra,86.64,31.38
.gossipoption 93099 >> Talk to |cRXP_FRIENDLY_Thassarian|r to start the RP
.timer 142,Last Rites RP
.skipgossip
.target Thassarian
.isOnQuest 12019
step
>>Kill |cRXP_ENEMY_Prince Valanar|r
>>|cRXP_WARN_Let |cRXP_FRIENDLY_Thassarian|r tank |cRXP_ENEMY_Prince Valanar|r for a few seconds before you start doing damage|r
>>|cRXP_WARN_BEWARE OF|r |T136157:0|t[Soul Deflection]
>>|cRXP_WARN_THIS DEBUFF |cRXP_ENEMY_Prince Valanar|r APPLIES TO YOU REFLECTS 100% OF THE DAMAGE YOU DEAL FOR 6 SECONDS. STOP ATTACKING DURING THIS. IF YOU HAVE DoT's ON |cRXP_ENEMY_Prince Valanar|r THEY WILL ALSO BE REFLECTED|r
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << wotlk
.complete 12019,1 
.goto BoreanTundra,86.7,30.2
.mob Prince Valanar
step << wotlk

.goto BoreanTundra,86.80,30.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r atop the Ziggurat
.turnin 12019 >>Turn in Last Rites
.target Thassarian
step << !wotlk
.goto 114/571,3683.900,3297.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
.target Thassarian
.turnin 12019 >>Turn in Last Rites
step
#completewith next
.goto BoreanTundra,86.96,28.93,12,0
.goto BoreanTundra,86.96,28.93,10 >>|cRXP_WARN_Take the teleporters down to the ground|r
.noflyable
step
#completewith next
.groundgoto BoreanTundra,85.15,28.46,50,0
.goto Dragonblight,29.15,55.32,150 >> Travel to Stars' Rest in Dragonblight
.noflyable
step
.goto Dragonblight,29.15,55.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Palena|r
.fp Stars' Rest >> Get the Stars' Rest Flight Path
.target Palena Silvercloud
step
.goto Dragonblight,28.83,56.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanson|r
>>|cRXP_WARN_Don't accept the next quest|r
.turnin 12157 >>Turn in The Lost Courier
.isOnQuest 12157
.target Courier Lanson
step
#completewith GarrenM
.hs >> Hearth to Valiance Keep
step
#completewith GarrenM
.goto BoreanTundra,44.98,33.38,100 >> Travel to Amber Ledge
.flyable
.skill riding,<300,1
step
#completewith GarrenM
.goto BoreanTundra,58.97,68.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomas|r
.fly Amber Ledge >>Fly to Amber Ledge
.skill riding,300,1
.target Tomas Riverwell
step
#label GarrenM
.goto BoreanTundra,44.98,33.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren|r
.turnin 11582 >>Turn in Monitoring the Rift: Sundered Chasm
.accept 12728 >>Accept Monitoring the Rift: Winterfin Cavern
.target Librarian Garren
step 
.goto BoreanTundra,45.33,34.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
>>|cRXP_WARN_This will fly you to Coldarra. This flight takes 1m 2s|r
.turnin 11682 >>Turn in Dragonspeak
.accept 11733 >>Accept Traversing the Rift
.timer 62,Coldarra flight
.target Surristrasz
step
#completewith next
.goto BoreanTundra,45.33,34.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
.fly Coldarra >> Fly to Coldarra
.target Surristrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berinand|r, |cRXP_FRIENDLY_Raelorasz|r and |cRXP_FRIENDLY_Serrah|r
.turnin 11733 >>Turn in Traversing the Rift
.accept 11900 >>Accept Reading the Meters
.accept 11910 >>Accept Secrets of the Ancients
.goto BoreanTundra,32.94,34.40
.accept 11918 >>Accept Basic Training
.goto BoreanTundra,33.32,34.54
.accept 11912 >>Accept Nuts for Berries
.goto BoreanTundra,33.49,34.38
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
#sticky
#completewith Weaver1
>>Kill |cRXP_ENEMY_Coldarra Spellweavers|r
>>Open |cRXP_PICK_Frostberry Bushes|r. Loot them for |cRXP_LOOT_Frostberries|r
.complete 11918,1 
.complete 11912,1 
.mob Coldarra Spellweaver
step
.goto BoreanTundra,32.69,27.79,70,0
.goto BoreanTundra,33.45,25.68,70,0
.goto BoreanTundra,33.73,29.97,70,0
.goto BoreanTundra,31.54,28.28,70,0
.goto BoreanTundra,34.79,26.95
.use 35648 >>Kill |cRXP_ENEMY_Coldarra Spellbinders|r. Loot them for their |T134923:0|t[|cRXP_LOOT_Scintillating Fragment|r]
>>|cRXP_WARN_Use the |T134923:0|t[|cRXP_LOOT_Scintillating Fragment|r] to start the quest|r
.collect 35648,1,11941,1 
.accept 11941 >>Accept Puzzling...
.mob Coldarra Spellbinder
step
.goto BoreanTundra,33.31,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
.turnin 11941 >>Turn in Puzzling...
.accept 11943 >>Accept The Cell
.target Raelorasz
step
#completewith splinters
>>Kill |cRXP_ENEMY_Glacial Ancients|r and |cRXP_ENEMY_Magic-bound Ancients|r. Loot them for their |cRXP_LOOT_Splinters|r
.complete 11910,1 
.complete 11910,2 
.mob Glacial Ancient
.mob Magic-bound Ancient
step
.goto BoreanTundra,28.81,34.91,-1
.goto BoreanTundra,28.25,35.04,-1
>>Click the |cRXP_PICK_Coldarra Geological Monitor|r on the ground
.complete 11900,2 
step
.goto BoreanTundra,24.14,29.60
>>Kill |cRXP_ENEMY_Warbringer Goredrak|r. Loot him for his |cRXP_LOOT_Energy Core|r
.complete 11943,1 
.mob Warbringer Goredrak
step
.goto BoreanTundra,22.36,24.21,-1
.goto BoreanTundra,22.62,23.42,-1
>>Click the |cRXP_PICK_Coldarra Geological Monitor|r on the ground
.complete 11900,4 
step
.goto BoreanTundra,27.32,20.41
>>Kill |cRXP_ENEMY_General Cerulean|r. Loot him for his |cRXP_LOOT_Prison Casing|r
.complete 11943,2 
.mob General Cerulean
step
#label Weaver1
.goto BoreanTundra,31.25,20.18,-1
.goto BoreanTundra,31.72,20.57,-1
>>Click the |cRXP_PICK_Coldarra Geological Monitor|r on the ground
.complete 11900,3 
step
#sticky
#label berries2
#loop
.goto BoreanTundra,33.7,23.1,100,0
.goto BoreanTundra,34.3,31.2,100,0
.goto BoreanTundra,24.4,35.2,100,0
.goto BoreanTundra,21.5,26.9,100,0
.goto BoreanTundra,21.5,26.9,0
.goto BoreanTundra,24.4,35.2,0
.goto BoreanTundra,34.3,31.2,0
.goto BoreanTundra,33.7,23.1,0
>>Kill |cRXP_ENEMY_Coldarra Spellweavers|r
.complete 11918,1 
.mob Coldarra Spellweaver
step
#loop
.goto BoreanTundra,33.7,23.1,100,0
.goto BoreanTundra,34.3,31.2,100,0
.goto BoreanTundra,24.4,35.2,100,0
.goto BoreanTundra,21.5,26.9,100,0
.goto BoreanTundra,21.5,26.9,0
.goto BoreanTundra,24.4,35.2,0
.goto BoreanTundra,34.3,31.2,0
.goto BoreanTundra,33.7,23.1,0
>>Open |cRXP_PICK_Frostberry Bushes|r. Loot them for |cRXP_LOOT_Frostberries|r
.complete 11912,1 
step
#completewith next
.goto BoreanTundra,33.49,34.38,100 >> Travel to Transitus
step
#requires berries2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serrah|r and |cRXP_FRIENDLY_Raelorasz|r
.turnin 11912 >>Turn in Nuts for Berries
.accept 11914 >>Accept Keep the Secret Safe
.goto BoreanTundra,33.49,34.38
.turnin 11918 >>Turn in Basic Training
.accept 11936 >>Accept Hatching a Plan
.turnin 11943 >>Turn in The Cell
.goto BoreanTundra,33.32,34.54
.target Raelorasz
.target Librarian Serrah
step
.use 35671 >> |cRXP_WARN_Use the|r |T133836:0|t[Augmented Arcane Prison] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r
.accept 11946 >>Accept Keristrasza
.turnin 11946 >>Turn in Keristrasza
.accept 11951 >>Accept Bait and Switch
.target Keristrasza
step
#completewith next
#loop
.line BoreanTundra,28.69,30.93,30.12,28.57,29.84,24.39,27.68,22.32,25.25,24.59,25.39,28.67
.goto BoreanTundra,28.69,30.93,40,0
.goto BoreanTundra,30.12,28.57,40,0
.goto BoreanTundra,29.84,24.39,40,0
.goto BoreanTundra,27.68,22.32,40,0
.goto BoreanTundra,25.25,24.59,40,0
.goto BoreanTundra,25.39,28.67,40,0
>>Open the |cRXP_PICK_Crystallized Mana|r. Loot them for the |cRXP_LOOT_Crystallized Mana Shards|r
.complete 11951,1 
step
.goto BoreanTundra,29.5,30.81,90,0
.goto BoreanTundra,28.7,33.6,70,0
.goto BoreanTundra,27.5,31.3,70,0
.goto BoreanTundra,24.9,31.2,70,0
.goto BoreanTundra,25.2,24.2
>>Kill |cRXP_ENEMY_Coldarra Wyrmkins|r. Loot them for their |T132394:0|t[|cRXP_LOOT_Frozen Axes|r]
.collect 35586,5,11936,1 
.mob Coldarra Wyrmkin
step
#loop
.line BoreanTundra,28.69,30.93,30.12,28.57,29.84,24.39,27.68,22.32,25.25,24.59,25.39,28.67
.goto BoreanTundra,28.69,30.93,40,0
.goto BoreanTundra,30.12,28.57,40,0
.goto BoreanTundra,29.84,24.39,40,0
.goto BoreanTundra,27.68,22.32,40,0
.goto BoreanTundra,25.25,24.59,40,0
.goto BoreanTundra,25.39,28.67,40,0
>>Open the |cRXP_PICK_Crystallized Mana|r. Loot them for the |cRXP_LOOT_Crystallized Mana Shards|r
.complete 11951,1 
step
#sticky
#label reading
.goto BoreanTundra,28.31,28.46
>>Click the |cRXP_PICK_Coldarra Geological Monitor|r on the ground
.complete 11900,1 
step
#label splinters
.goto BoreanTundra,29.3,27.4,50,0
.goto BoreanTundra,28.2,24.4,50,0
.goto BoreanTundra,26.2,25.4,50,0
.goto BoreanTundra,26.04,27.72,50,0
.goto BoreanTundra,28.31,28.46,50,0
.goto BoreanTundra,29.3,27.4,50,0
.goto BoreanTundra,28.2,24.4,50,0
.goto BoreanTundra,26.2,25.4,50,0
.goto BoreanTundra,26.04,27.72,50,0
.goto BoreanTundra,28.31,28.46
>>Kill |cRXP_ENEMY_Arcane Serpents|r. Loot them for their |cRXP_LOOT_Essences|r
>>|cRXP_WARN_Use the|r |T132394:0|t[|cRXP_LOOT_Frozen Axes|r] |cRXP_WARN_on the|r |cRXP_PICK_Blue Dragon Eggs|r
.collect 35586,5,11936,1,-1 
.complete 11936,1 
.complete 11914,1 
.mob Arcane Serpent
step
#requires reading
.goto BoreanTundra,30.1,23.4,70,0
.goto BoreanTundra,32.6,28.2,70,0
.goto BoreanTundra,28.0,33.5,70,0
.goto BoreanTundra,25.0,30.6,70,0
.goto BoreanTundra,25.5,35.6
>>Kill |cRXP_ENEMY_Glacial Ancients|r and |cRXP_ENEMY_Magic-bound Ancients|r. Loot them for their |cRXP_LOOT_Splinters|r
.complete 11910,1 
.complete 11910,2 
.mob Glacial Ancient
.mob Magic-bound Ancient
step
.use 35671 >> |cRXP_WARN_Use the|r |T133836:0|t[Augmented Arcane Prison] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r
>>|cRXP_WARN_If you lost it, Talk to |cRXP_FRIENDLY_Raelorasz|r for a new one|r
.turnin 11951 >>Turn in Bait and Switch
.accept 11957 >>Accept Saragosa's End
.target Keristrasza
.target Raelorasz
step
.gossipoption 93094 >> Talk to |cRXP_FRIENDLY_Keristrasza|r to teleport to Saragosa's Landing
.skipgossip
.target Keristrasza
.use 35671
.isOnQuest 11957
step
#completewith next
.goto BoreanTundra,21.30,22.44
.cast 46793 >>|cRXP_WARN_Use the|r |T132866:0|t[Arcane Power Focus] |cRXP_WARN_to summon|r |cRXP_ENEMY_Saragosa|r
.timer 21,Saragosa's End RP
.use 35690
step
>>Kill |cRXP_ENEMY_Saragosa|r. Loot her for her |cRXP_LOOT_Corpse|r
.complete 11957,1 
.goto BoreanTundra,22.07,22.65
.use 35690
.skipgossip
.mob Saragosa
step
.use 35671 >> |cRXP_WARN_Use the|r |T133836:0|t[Augmented Arcane Prison] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r
.turnin 11957 >>Turn in Saragosa's End
.accept 11967 >>Accept Mustering the Reds
.goto BoreanTundra,21.57,22.55
.cooldown item,35671,>30
.target Keristrasza
step
#questguide
.goto BoreanTundra,21.6,22.5,0
>>|cRXP_WARN_DO NOT Ride back to Transitus|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r for a teleport back to Transitus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serrah|r, |cRXP_FRIENDLY_Raelorasz|r and |cRXP_FRIENDLY_Berinand|r
.turnin 11914 >>Turn in Keep the Secret Safe
.goto BoreanTundra,33.49,34.38
.turnin 11967 >>Turn in Mustering the Reds
.turnin 11936 >>Turn in Hatching a Plan
.accept 11969 >>Accept Springing the Trap
.accept 11919 >>Accept Drake Hunt
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>Turn in Reading the Meters
.turnin 11910 >>Turn in Secrets of the Ancients
.goto BoreanTundra,32.94,34.40
.skipgossip
.isOnQuest 11967
.target Keristrasza
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
#questguide
.goto BoreanTundra,21.6,22.5,0
>>Fly back to Transitus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serrah|r, |cRXP_FRIENDLY_Raelorasz|r and |cRXP_FRIENDLY_Berinand|r
.turnin 11914 >>Turn in Keep the Secret Safe
.goto BoreanTundra,33.49,34.38
.turnin 11936 >>Turn in Hatching a Plan
.accept 11919 >>Accept Drake Hunt
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>Turn in Reading the Meters
.turnin 11910 >>Turn in Secrets of the Ancients
.goto BoreanTundra,32.94,34.40
.skipgossip
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
#optional
.goto BoreanTundra,21.6,22.5,0
>>|cRXP_WARN_DO NOT Ride back to Transitus|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r for a teleport back to Transitus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serrah|r, |cRXP_FRIENDLY_Raelorasz|r and |cRXP_FRIENDLY_Berinand|r
.turnin 11914 >>Turn in Keep the Secret Safe
.goto BoreanTundra,33.49,34.38
.turnin 11967 >>Turn in Mustering the Reds
.turnin 11936 >>Turn in Hatching a Plan
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>Turn in Reading the Meters
.turnin 11910 >>Turn in Secrets of the Ancients
.goto BoreanTundra,32.94,34.40
.skipgossip
.noflyable
.target Keristrasza
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
>>Go back to Transitus Shield
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serrah|r, |cRXP_FRIENDLY_Raelorasz|r and |cRXP_FRIENDLY_Berinand|r
.turnin 11914 >>Turn in Keep the Secret Safe
.goto BoreanTundra,33.49,34.38
.turnin 11936 >>Turn in Hatching a Plan
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>Turn in Reading the Meters
.turnin 11910 >>Turn in Secrets of the Ancients
.goto BoreanTundra,32.94,34.40
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
.goto BoreanTundra,21.57,22.55
.use 35671 >> |cRXP_WARN_Use the|r |T133836:0|t[Augmented Arcane Prison] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r
.turnin 11957 >>Turn in Saragosa's End
.accept 11967 >>Accept Mustering the Reds
.target Keristrasza
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
.turnin 11967 >>Turn in Mustering the Reds
.accept 11969 >>Accept Springing the Trap
.goto BoreanTundra,33.32,34.54
.target Raelorasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
.turnin 11967 >>Turn in Mustering the Reds
.goto BoreanTundra,33.32,34.54
.skill coldweatherflying,<1,1
.target Raelorasz

step
#questguide
.goto BoreanTundra,25.34,21.82
.cast 62272 >> |cRXP_WARN_Use|r |T132862:0|t[Raelorasz' Spark] |cRXP_WARN_next to the|r |cRXP_PICK_Signal Fire|r
.timer 195,Springing the Trap RP
>>|cRXP_WARN_Wait out the RP|r
.use 44950
.complete 11969,1 
.isOnQuest 11969
step
#questguide
#completewith next
+|cRXP_WARN_Dismount |cRXP_FRIENDLY_Keristrasza|r, then cast |T135992:0|t[Slow Fall]|r << Mage
+|cRXP_WARN_Dismount |cRXP_FRIENDLY_Keristrasza|r, then cast |T135928:0|t[Levitate] when you're near the ground|r << Priest
+|cRXP_WARN_Dismount |cRXP_FRIENDLY_Keristrasza|r, then cast |T135896:0|t[Divine Shield] or |T135964:0|t[Hand of Protection] when you're near the ground|r << Paladin
.itemcount 17056,1 << Mage/Priest
step
#questguide
#completewith next
.goto BoreanTundra,21.91,30.45
.use 35506 >> |cRXP_WARN_Look for a |cRXP_ENEMY_Nexus Drake Hatchling|r flying around the north-western edge of Coldarra|r
.cast 46607 >>|cRXP_WARN_Use|r |T135134:0|t[Raelorasz's Spear] |cRXP_WARN_on a |cRXP_ENEMY_Nexus Drake Hatchling|r to capture it|r
>>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_Nexus Drake Hatchling|r
.unitscan Nexus Drake Hatchling
.isOnQuest 11919
step
#questguide
.goto BoreanTundra,33.28,34.47
>>Take the |cRXP_FRIENDLY_Nexus Drake Hatchling|r back to |cRXP_FRIENDLY_Raelorasz|r in Transitus
>>|cRXP_WARN_The |cRXP_FRIENDLY_Nexus Drake Hatchling|r will match your movement speed|r
.complete 11919,1 
.target Raelorasz
.isOnQuest 11919
step
#questguide
.goto BoreanTundra,33.32,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
.turnin 11919 >>Turn in Drake Hunt
.turnin 11969 >>Turn in Springing the Trap
.accept 11931 >>Accept Cracking the Code
.daily 11940 >>Accept Drake Hunt
.target Raelorasz
step
#questguide
#completewith next
.goto BoreanTundra,32.72,27.88,0
>>Kill |cRXP_ENEMY_Coldarra Spellbinders|r. Loot them for their |cRXP_LOOT_Shimmering Runes|r
.complete 11931,1 
.mob Coldarra Spellbinder
step
#questguide
.goto BoreanTundra,32.72,27.88
>>Kill |cRXP_ENEMY_Inquisitor Caleras|r. Loot him for the |cRXP_LOOT_Azure Codex|r
.complete 11931,2 
.mob Inquisitor Caleras
step
#questguide
.goto BoreanTundra,21.91,30.45
.use 35506 >> |cRXP_WARN_Look for a |cRXP_ENEMY_Nexus Drake Hatchling|r flying around the north-western edge of Coldarra|r
.cast 46607 >>|cRXP_WARN_Use|r |T135134:0|t[Raelorasz's Spear] |cRXP_WARN_on a |cRXP_ENEMY_Nexus Drake Hatchling|r to capture it|r
>>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_Nexus Drake Hatchling|r
.unitscan Nexus Drake Hatchling
.isOnQuest 11940
step
#questguide
.goto BoreanTundra,32.69,27.79,70,0
.goto BoreanTundra,33.45,25.68,70,0
.goto BoreanTundra,33.73,29.97,70,0
.goto BoreanTundra,31.54,28.28,70,0
.goto BoreanTundra,34.79,26.95
>>Kill |cRXP_ENEMY_Coldarra Spellbinders|r. Loot them for their |cRXP_LOOT_Shimmering Runes|r
.complete 11931,1 
.mob Coldarra Spellbinder
step
#questguide
.goto BoreanTundra,33.28,34.47
>>Take the |cRXP_FRIENDLY_Nexus Drake Hatchling|r back to |cRXP_FRIENDLY_Raelorasz|r in Transitus
>>|cRXP_WARN_The |cRXP_FRIENDLY_Nexus Drake Hatchling|r will match your movement speed|r
.complete 11940,1 
.target Raelorasz
.isOnQuest 11940
step
#questguide
.goto BoreanTundra,33.32,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
.turnin 11931 >>Turn in Cracking the Code
.turnin -11940 >>Turn in Drake Hunt
.target Raelorasz

step
#completewith next
.goto BoreanTundra,33.13,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adami|r
.fly Fizzcrank >>Fly to Fizzcrank Airstrip
.target Warmage Adami
step
#completewith ED
.goto BoreanTundra,57.12,18.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Charlie"|r
.home >>Set your Hearthstone to Fizzcrank Airstrip
.target "Charlie" Northtop
step
.goto BoreanTundra,56.98,18.71
>>|cRXP_WARN_Take the elevator up to|r |cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11707 >>Turn in Distress Call
.accept 11708 >>Accept The Mechagnomes
.target Fizzcrank Fullthrottle
step
#completewith next
.goto BoreanTundra,56.98,18.71
.gossipoption 93233 >> Talk to |cRXP_FRIENDLY_Fizzcrank|r
.skipgossip 25590,1,1,2,2,2,2,2,2,2
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
>> Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.isOnQuest 11708
.complete 11708,1 
.target Fizzcrank Fullthrottle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky|r, |cRXP_FRIENDLY_Mordle|r, and |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11708 >>Turn in The Mechagnomes
.accept 11712 >>Accept Re-Cursive
.goto BoreanTundra,57.44,18.73
.accept 11704 >>Accept King Mrgl-Mrgl
.accept 11710 >>Accept What's the Matter with the Transmatter?
.goto BoreanTundra,57.52,18.62
.accept 11645 >>Accept Dirty, Stinkin' Snobolds!
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.target Jinky Twizzlefixxit
.target Mordle Cogspinner
.target Crafty Wobblesprocket
step
#questguide << !Druid !Shaman !Druid
#completewith Bonker
.goto BoreanTundra,57.3,13.1,0
.goto BoreanTundra,56.2,12.1,0
.goto BoreanTundra,55.0,13.1,0
.goto BoreanTundra,53.1,13.9,0
>>Loot |cRXP_LOOT_Crafty's Stuff|r on the ground
.complete 11645,1 

step
#questguide << !Druid !Shaman !Druid
#completewith CStuff
.goto BoreanTundra,53.8,13.8,30 >> Enter the Magmoth Cave
step
#questguide << !Druid !Shaman !Druid
.goto BoreanTundra,53.8,13.8,40,0
.goto BoreanTundra,55.57,12.58
>>Drop down to |cRXP_FRIENDLY_Bonker|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bonker|r
.accept 11673 >>Accept Get Me Outa Here!
.target Bonker Togglevolt
step
#questguide << !Druid !Shaman !Druid
.goto BoreanTundra,53.8,13.8
>>|cRXP_WARN_Escort |cRXP_FRIENDLY_Bonker|r just outside of Magmoth Cave|r
.complete 11673,1 
step
#label CStuff
.goto BoreanTundra,54.9,15.7,50,0
.goto BoreanTundra,57.3,13.1,50,0
.goto BoreanTundra,56.2,12.1,50,0
.goto BoreanTundra,55.0,13.1,50,0
.goto BoreanTundra,53.1,13.9
>>Loot |cRXP_LOOT_Crafty's Stuff|r on the ground
.complete 11645,1 
.target Bonker Togglevolt
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|cRXP_WARN_Take the elevator up to|r |cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11673 >>Turn in Get Me Outa Here!
.isQuestComplete 11673
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11645 >>Turn in Dirty, Stinkin' Snobolds!
.accept 11650 >>Accept Just a Few More Things...
.itemcount 39682,1 
.target Crafty Wobblesprocket
step
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11645 >>Turn in Dirty, Stinkin' Snobolds!
.target Crafty Wobblesprocket
step
#sticky
#label screwdriver1
.goto BoreanTundra,61.6,15.0,0
.goto BoreanTundra,59.4,17.6,0
.goto BoreanTundra,58.2,23.4,0
.goto BoreanTundra,63.5,22.4,0
.goto BoreanTundra,64.5,18.2,0
.use 34984 >> Kill |cRXP_ENEMY_Defendo-tank 66Ds|r, |cRXP_ENEMY_Scavenge-bot 004-A8s|r and |cRXP_ENEMY_Sentry-bot 57-Ks|r. Loot them for |T134429:0|t[|cRXP_LOOT_The Ultrasonic Screwdriver|r]
>>|cRXP_WARN_Use |T134429:0|t[|cRXP_LOOT_The Ultrasonic Screwdriver|r] to start the quest|r
.collect 34984,1,11729,1
.accept 11729 >> Accept The Ultrasonic Screwdriver
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
.goto BoreanTundra,61.7,20.9,70,0
.goto BoreanTundra,65.2,17.9,70,0
.goto BoreanTundra,64.2,23.2
.use 34973 >> Kill |cRXP_ENEMY_Fizzcrank Mechagnomes|r. |cRXP_WARN_Use the|r |T136093:0|t[Re-Cursive Transmatter Injection] |cRXP_WARN_on their corpses|r
>>Loot the |cRXP_LOOT_Fizzcrank Spare Parts|r on the ground
.complete 11712,1 
.complete 11710,1 
.mob Fizzcrank Mechagnome
step
#requires screwdriver1
#questguide
.goto BoreanTundra,61.6,15.0,70,0
.goto BoreanTundra,59.4,17.6,70,0
.goto BoreanTundra,58.2,23.4,70,0
.goto BoreanTundra,63.5,22.4,70,0
.goto BoreanTundra,64.5,18.2
.use 34984 >> Kill |cRXP_ENEMY_Defendo-tank 66Ds|r, |cRXP_ENEMY_Scavenge-bot 004-A8s|r and |cRXP_ENEMY_Sentry-bot 57-Ks|r. Loot them for |T134429:0|t[|cRXP_LOOT_The Ultrasonic Screwdriver|r]
>>|cRXP_WARN_Use |T134429:0|t[|cRXP_LOOT_The Ultrasonic Screwdriver|r] to start the quest|r
.collect 34984,1,11729,1
.accept 11729 >> Accept The Ultrasonic Screwdriver
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r, |cRXP_FRIENDLY_Mordle|r, and |cRXP_FRIENDLY_Jinky|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11729 >> Turn in The Ultrasonic Screwdriver
.accept 11730 >> Accept Master and Servant
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.turnin 11710 >>Turn in What's the Matter with the Transmatter?
.accept 11692 >>Accept Check in With Bixie
.goto BoreanTundra,57.52,18.62
.turnin 11712 >>Turn in Re-Cursive
.accept 11788 >>Accept Lefty Loosey, Righty Tighty
.goto BoreanTundra,57.44,18.73
.target Jinky Twizzlefixxit
.target Mordle Cogspinner
.target Crafty Wobblesprocket
step
#requires screwdriver1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r, |cRXP_FRIENDLY_Mordle|r, and |cRXP_FRIENDLY_Jinky|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11729 >> Turn in The Ultrasonic Screwdriver

.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.turnin 11710 >>Turn in What's the Matter with the Transmatter?
.accept 11692 >>Accept Check in With Bixie
.goto BoreanTundra,57.52,18.62
.turnin 11712 >>Turn in Re-Cursive
.accept 11788 >>Accept Lefty Loosey, Righty Tighty
.goto BoreanTundra,57.44,18.73
.target Jinky Twizzlefixxit
.target Mordle Cogspinner
.target Crafty Wobblesprocket
step
#questguide
#completewith ED
.use 35116 >> Kill |cRXP_ENEMY_Defendo-tank 66Ds|r, |cRXP_ENEMY_Scavenge-bot 004-A8s|r and |cRXP_ENEMY_Sentry-bot 57-Ks|r. |cRXP_WARN_Use|r |T134429:0|t[|cRXP_LOOT_The Ultrasonic Screwdriver|r] |cRXP_WARN_on their corpses|r
.complete 11730,1 
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
.goto BoreanTundra,60.24,20.39
>>Click the |cRXP_PICK_West Point Station Valve|r to summon |cRXP_ENEMY_Twonky|r
>>Kill |cRXP_ENEMY_Twonky|r
.complete 11788,1 
.mob Twonky
step
.goto BoreanTundra,63.68,22.50
>>Click the |cRXP_PICK_Mid Point Station Valve|r to summon |cRXP_ENEMY_Max Blasto|r
>>Kill |cRXP_ENEMY_Max Blasto|r
.complete 11788,3 
.mob Max Blasto
step
.goto BoreanTundra,64.40,23.14
>>Loot |cRXP_LOOT_Crafty's Tools|r on the ground
.complete 11650,1 
.itemcount 39682,1 
.isOnQuest 11650
step
#label ED
.goto BoreanTundra,65.41,17.51
>>Click the |cRXP_PICK_North Point Station Valve|r to summon |cRXP_ENEMY_ED-210|r
>>Kill |cRXP_ENEMY_ED-210|r
.complete 11788,2 
.mob ED-210
step
#questguide
.goto BoreanTundra,61.0,17.0,70,0
.goto BoreanTundra,58.5,20.8,70,0
.goto BoreanTundra,63.1,21.7
.use 35116 >> Kill |cRXP_ENEMY_Defendo-tank 66Ds|r, |cRXP_ENEMY_Scavenge-bot 004-A8s|r and |cRXP_ENEMY_Sentry-bot 57-Ks|r
>>|cRXP_WARN_Use|r |T134429:0|t[|cRXP_LOOT_The Ultrasonic Screwdriver|r] |cRXP_WARN_on their corpses|r
.complete 11730,1 
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
#completewith next
.goto BoreanTundra,73.42,18.78,100 >> Travel toward |cRXP_FRIENDLY_Bixie|r near Talramas
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie|r
.turnin 11692 >>Turn in Check in With Bixie
.accept 11693 >>Accept Oh Great... Plagued Magnataur!
.target Bixie Wrenchshanker
step
.goto BoreanTundra,82.0,29.3,70,0
.goto BoreanTundra,71.8,15.6,70,0
.goto BoreanTundra,82.0,29.3,70,0
.goto BoreanTundra,71.8,15.6
>>Kill |cRXP_ENEMY_Plagued Magnataurs|r
.complete 11693,1 
.mob Plagued Magnataur
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie|r
.turnin 11693 >>Turn in Oh Great... Plagued Magnataur!
.accept 11694 >>Accept There's Something Going On In Those Caves
.target Bixie Wrenchshanker
step
#completewith next
.goto BoreanTundra,74.77,14.10,70 >> Enter the Den of Dying
step
.goto BoreanTundra,74.77,14.10
.use 34915 >> |cRXP_WARN_Use|r |T133590:0|t[Bixie's Inhibiting Powder] |cRXP_WARN_on the|r |cRXP_PICK_Den of Dying Plague Cauldron|r
.complete 11694,1 
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie|r
.turnin 11694 >>Turn in There's Something Going On In Those Caves
.accept 11697 >>Accept Rats, Tinky Went into the Necropolis!
.accept 11698 >>Accept Might As Well Wipe Out the Scourge
.target Bixie Wrenchshanker
step
#completewith Tinky
.goto BoreanTundra,69.3,14.1,0
>>Kill the |cRXP_ENEMY_Talramas Undead|r
.complete 11698,1 
.mob Cult Plaguebringer
.mob Doctor Razorgrin
.mob Lich-Lord Chillwinter
.mob Talramas Abomination
.mob Bone Warrior
.mob Festering Ghoul
step
#completewith next
.goto BoreanTundra,68.7,15.3,60 >> Travel toward |cRXP_FRIENDLY_Tinky|r inside Talramas
step
.goto BoreanTundra,68.7,15.3,70,0
.goto BoreanTundra,69.89,14.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinky|r
.turnin 11697 >>Turn in Rats, Tinky Went into the Necropolis!
.accept 11699 >>Accept I'm Stuck in this Damned Cage... But Not For Long!
.target Tinky Wickwhistle
step
#completewith Gyroscope
.goto BoreanTundra,68.97,14.76,0
>>Kill |cRXP_ENEMY_Festering Ghouls|r. Loot them for their |cRXP_LOOT_Crystal|r
.complete 11699,1 
.mob Festering Ghoul
step
.groundgoto BoreanTundra,68.7,15.3,40,0
.groundgoto BoreanTundra,68.1,11.6,60,0
.groundgoto BoreanTundra,69.4,11.4,40,0
.groundgoto BoreanTundra,69.08,13.26,30,0
.goto BoreanTundra,69.64,13.88
>>|cRXP_WARN_Travel to the top of Talramas from the outside|r
>>Kill |cRXP_ENEMY_Lich-Lord Chillwinter|r. Loot him for the |cRXP_LOOT_Scourgestone|r
.complete 11699,3 
.mob Lich-Lord Chillwinter
step
#label Gyroscope
.goto BoreanTundra,69.88,13.33
>>|cRXP_WARN_Drop down into the center pit|r
>>Kill |cRXP_ENEMY_Doctor Razorgrin|r. Loot him for the |cRXP_LOOT_Gyroscope|r
.complete 11699,2 
.mob Doctor Razorgrin
step
.goto BoreanTundra,71.2,15.0,70,0
.goto BoreanTundra,68.2,16.9,70,0
.goto BoreanTundra,67.2,12.5,70,0
.goto BoreanTundra,69.7,13.8
>>Kill |cRXP_ENEMY_Festering Ghouls|r. Loot them for their |cRXP_LOOT_Crystal|r
.complete 11699,1 
.mob Festering Ghoul
step
#label Tinky
.goto BoreanTundra,69.89,14.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinky|r
.turnin 11699 >>Turn in I'm Stuck in this Damned Cage... But Not For Long!
.accept 11700 >>Accept Let Bixie Know
.target Tinky Wickwhistle
step
.goto BoreanTundra,71.2,15.0,70,0
.goto BoreanTundra,68.2,16.9,70,0
.goto BoreanTundra,67.2,12.5,70,0
.goto BoreanTundra,69.7,13.8
>>Kill |cRXP_ENEMY_Talramas Undead|r
.complete 11698,1 
.mob Cult Plaguebringer
.mob Doctor Razorgrin
.mob Lich-Lord Chillwinter
.mob Talramas Abomination
.mob Bone Warrior
.mob Festering Ghoul
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie|r
.turnin 11698 >>Turn in Might As Well Wipe Out the Scourge
.turnin 11700 >>Turn in Let Bixie Know
.accept 11701 >>Accept Back to the Airstrip
.target Bixie Wrenchshanker
step << Druid wotlk
#completewith DruidTrain
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <71,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48442 >> Train your class spells
.xp <71,1
.target Loganaar
step << Druid wotlk
#label DruidTrain
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48464 >> Train your class spells
.xp <72,1
.target Loganaar
step << DK wotlk
#completewith next
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <72,1
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49940 >> Train your class spells
.xp <72,1
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain
.zone Stormwind City >> Teleport to Stormwind
.xp <71,1
step << Mage wotlk
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 43023 >> Train your class spells
.xp <71,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42930 >> Train your class spells
.xp <72,1
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >> Hearth to Fizzcrank Airstrip
step
.goto BoreanTundra,56.95,18.75
>>|cRXP_WARN_Take the elevator up to|r |cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11701 >>Turn in Back to the Airstrip
.accept 11725 >>Accept Finding Pilot Tailspin
.target Fizzcrank Fullthrottle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11729 >> Turn in The Ultrasonic Screwdriver
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.isOnQuest 11729
.target Crafty Wobblesprocket
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11730 >> Turn in Master and Servant
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.target Crafty Wobblesprocket
step
.goto BoreanTundra,65.25,28.78
>>Click the |cRXP_PICK_South Point Station Valve|r to summon |cRXP_ENEMY_The Grinder|r
>>Kill |cRXP_ENEMY_The Grinder|r
.complete 11788,4 
.mob The Grinder
step
#completewith next
.goto BoreanTundra,61.68,35.79,130 >> Travel to the Scalding Pools
step
#label Iggy
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11725 >>Turn in Finding Pilot Tailspin
.accept 11726 >>Accept A Little Bit of Spice
.target Iggy "Tailspin" Cogtoggle
step
.goto BoreanTundra,64.9,41.2,70,0
.goto BoreanTundra,67.1,40.6,70,0
.goto BoreanTundra,68.7,42.2
>>Kill the |cRXP_ENEMY_Gorloc Gibberers|r, |cRXP_ENEMY_Gorloc Steam Belchers|r and |cRXP_ENEMY_Gorloc Waddlers|r. Loot them for their |cRXP_LOOT_Pouches|r
.complete 11726,1 
.mob Gorloc Gibberer
.mob Gorloc Steam Belcher
.mob Gorloc Waddler
step
#completewith next
.goto BoreanTundra,81.5,42.5,100 >> Travel to Frozen Reach
.isOnQuest 11650
step
.goto BoreanTundra,81.5,42.5
>>Kill |cRXP_ENEMY_Rocknar|r. Loot him for his |cRXP_LOOT_Grit|r
.complete 11650,3 
.itemcount 39682,1 
.isOnQuest 11650
.mob Rocknar
step
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11726 >>Turn in A Little Bit of Spice
.accept 11728 >>Accept Lupus Pupus
.target Iggy "Tailspin" Cogtoggle
step
.goto BoreanTundra,60.95,32.94
.use 35121 >> |cRXP_WARN_Use the|r |T134045:0|t[Wolf Bait] |cRXP_WARN_on |cRXP_ENEMY_Oil-stained Wolves|r. |cRXP_WARN_Wait for their RP|r
>>Open the |cRXP_PICK_Wolf Droppings|r. Loot it for the |cRXP_LOOT_Microfilm|r
.complete 11728,1 
.mob Oil-stained Wolf
step
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11728 >>Turn in Lupus Pupus
.accept 11795 >>Accept Emergency Protocol: Section 8.2, Paragraph C
.target Iggy "Tailspin" Cogtoggle
step
.goto BoreanTundra,62.94,35.81,40,0
.goto BoreanTundra,61.53,38.76,40,0
.goto BoreanTundra,60.56,38.44,40,0
.goto BoreanTundra,60.67,35.80,40,0
.goto BoreanTundra,61.35,33.82,40,0
.goto BoreanTundra,62.79,32.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the dead |cRXP_FRIENDLY_Fizzcrank Recon Pilots|r. Loot them for their |cRXP_LOOT_Pilot's Insignias|r
.complete 11795,1 
.skipgossip
.target Fizzcrank Recon Pilot
step
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11795 >>Turn in Emergency Protocol: Section 8.2, Paragraph C
.accept 11796 >>Accept Emergency Protocol: Section 8.2, Paragraph D
.target Iggy "Tailspin" Cogtoggle
step
.use 35224 >> |cRXP_WARN_Use the|r |T135488:0|t[Emergency Torch] |cRXP_WARN_on the wreckages of the|r |cRXP_PICK_Flying Machines|r
.complete 11796,3 
.goto BoreanTundra,60.85,33.63
.complete 11796,2 
.goto BoreanTundra,61.07,40.01
.complete 11796,1 
.goto BoreanTundra,63.40,36.95
step
#label Iggy2
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11796 >>Turn in Emergency Protocol: Section 8.2, Paragraph D
.accept 11873 >>Accept Give Fizzcrank the News
.target Iggy "Tailspin" Cogtoggle
step << Shaman
#completewith next
.hs >> Hearth to Fizzcrank Airstrip
step << Shaman
.goto BoreanTundra,57.01,18.68
>>|cRXP_WARN_Take the elevator up to|r |cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11873 >>Turn in Give Fizzcrank the News
.target Fizzcrank Fullthrottle
step << !Shaman
#completewith next
.goto BoreanTundra,57.46,18.79,100 >>Travel to Fizzcrank Airstrip
step
.goto BoreanTundra,57.46,18.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky|r
.turnin 11788 >>Turn in Lefty Loosey, Righty Tighty
.accept 11798 >>Accept The Gearmaster
.target Jinky Wingnut
step
#completewith next
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.accept 11653 >>Accept Hah... You're Not So Big Now!
.target Crafty Wobblesprocket
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11650 >>Turn in Just a Few More Things...
.isQuestComplete 11650
.target Crafty Wobblesprocket
step
#completewith next
.goto BoreanTundra,54.2,13.1,60 >> Enter the Magmoth Cave
.isOnQuest 11653
step
.goto BoreanTundra,54.2,13.1,70,0
.goto BoreanTundra,55.1,12.0
.use 34812 >> |cRXP_WARN_Use|r |T133037:0|t[Crafty's Shortening Blaster] |cRXP_WARN_on |cRXP_ENEMY_Magmoth Crushers|r and|r |cRXP_ENEMY_Mates of Magmothregar|r
.complete 11653,1 
.isQuestTurnedIn 11650
.mob Magmoth Crusher
.mob Mate of Magmothregar
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11653 >>Turn in Hah... You're Not So Big Now!
.accept 11658 >>Accept Plan B
.isQuestTurnedIn 11650
.target Crafty Wobblesprocket
step << !Shaman
.goto BoreanTundra,57.01,18.68
>>|cRXP_WARN_Take the elevator up to|r |cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11873 >>Turn in Give Fizzcrank the News
.target Fizzcrank Fullthrottle
step
#completewith next
.goto BoreanTundra,49.3,21.4,0
.goto BoreanTundra,50.4,24.7,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_ENEMY_Dead Caravan Guards|r and |cRXP_ENEMY_Dead Caravan Workers|r. Loot them for their |cRXP_LOOT_Outfits|r
.complete 11658,1 
.skipgossip
.isQuestTurnedIn 11650
.mob Dead Caravan Guard
.mob Dead Caravan Worker
step
.goto BoreanTundra,49.59,26.68
>>Loot the |cRXP_LOOT_Warsong Banner|r on the ground
.complete 11658,2 
.isQuestTurnedIn 11650
step
.goto BoreanTundra,49.3,21.4,70,0
.goto BoreanTundra,50.4,24.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_ENEMY_Dead Caravan Guards|r and |cRXP_ENEMY_Dead Caravan Workers|r. Loot them for their |cRXP_LOOT_Outfits|r
.complete 11658,1 
.skipgossip
.isQuestTurnedIn 11650
.mob Dead Caravan Guard
.mob Dead Caravan Worker
step
#completewith next
.goto BoreanTundra,57.06,20.12,100 >> Travel to Fizzcrank Airstrip
.isQuestTurnedIn 11650
step
.goto BoreanTundra,57.06,20.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner|r
.accept 11713 >>Accept Scouting the Sinkholes
.target Abner Fizzletorque
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11658 >>Turn in Plan B
.accept 11670 >>Accept It Was The Orcs, Honest!
.isQuestTurnedIn 11650
.target Crafty Wobblesprocket
step 
#completewith next
.goto BoreanTundra,54.2,13.3
.use 34871 >> |cRXP_WARN_Open|r |T133647:0|t[Crafty's Sack] |cRXP_WARN_for the|r |T132485:0|t[|cRXP_LOOT_Warsong Banner|r] |cRXP_WARN_and|r |T134475:0|t[|cRXP_LOOT_Warsong Orc Disguise|r]
.isQuestTurnedIn 11650
.collect 34869,1,11670,1 
.collect 34870,1,11670,1 
step
.goto BoreanTundra,54.2,13.3,40,0
.goto BoreanTundra,55.6,12.1
.use 34870 >> |cRXP_WARN_Use the|r |T134475:0|t[|cRXP_LOOT_Warsong Orc Disguise|r] |cRXP_WARN_in the Magmoth Cave|r
.complete 11670,2 
.isQuestTurnedIn 11650
step
.goto BoreanTundra,55.6,12.1
.use 34869 >>Kill |cRXP_ENEMY_Magmothregar|r inside Magmoth. |cRXP_WARN_Use the|r |T132485:0|t[|cRXP_LOOT_Warsong Banner|r] |cRXP_WARN_on his corpse|r
.complete 11670,1 
.isQuestTurnedIn 11650
.mob Magmothregar
step
#questguide
.goto BoreanTundra,55.6,12.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bonker|r
.accept 11673 >>Accept Get Me Outa Here!
.isQuestTurnedIn 11650
.target Bonker Togglevolt
step
#questguide
.goto BoreanTundra,53.8,13.8
>>Escort |cRXP_FRIENDLY_Bonker|r just outside of the cave
.complete 11673,1 
.isQuestTurnedIn 11650
.target Bonker Togglevolt
step
#completewith next
.goto BoreanTundra,64.43,23.40,100 >> Travel to the Fizzcrank Pumping Station
.isOnQuest 11798
step
#completewith next
.groundgoto BoreanTundra,65.62,22.95,20,0
.groundgoto BoreanTundra,64.87,24.14,15,0
.groundgoto BoreanTundra,64.71,22.93,15,0
.goto BoreanTundra,64.53,23.42
>>|cRXP_WARN_Go into the small house on the top level|r
.cast 3365 >>Click |cRXP_PICK_The Gearmaster's Manual|r on top of the table to summon |cRXP_ENEMY_Mechazod|r
.timer 51,The Gearmaster RP
.isOnQuest 11798
step
.goto BoreanTundra,64.54,23.26
|cRXP_WARN_Wait out his RP|r
>>Kill |cRXP_ENEMY_Mechazod|r. Loot him for his |cRXP_LOOT_Head|r
.complete 11798,1 
.complete 11798,2 
.mob Gearmaster Mechazod
step
#completewith next
.goto BoreanTundra,66.25,32.13,100 >> Travel to the Geyser Fields
step
#label Sinkhole
.use 34920 >> |cRXP_WARN_Use the|r |T134269:0|t[Map of the Geyser Fields] |cRXP_WARN_when standing on the edge of the|r |cRXP_PICK_Sinkholes|r
.complete 11713,3 
.goto BoreanTundra,66.25,32.13
.complete 11713,2 
.goto BoreanTundra,69.51,32.80
.complete 11713,1 
.goto BoreanTundra,70.24,36.36
step << Druid wotlk
#completewith DruidTrain2
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <71,1
.cooldown item,6948,>2
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48442 >> Train your class spells
.xp <71,1
.cooldown item,6948,>2
.target Loganaar
step << Druid wotlk
#label DruidTrain2
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48464 >> Train your class spells
.xp <72,1
.cooldown item,6948,>2
.target Loganaar
step << DK wotlk
#completewith DKTraining3
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <72,1
.cooldown item,6948,>2
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49940 >> Train your class spells
.xp <72,1
.cooldown item,6948,>2
.target Amal'thazad
step << DK wotlk
#label DKTraining3
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49904 >> Train your class spells
.xp <73,1
.cooldown item,6948,>2
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain2
.zone Stormwind City >> Teleport to Stormwind
.xp <71,1
.cooldown item,6948,>2
step << Mage wotlk
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 43023 >> Train your class spells
.xp <71,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain2
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42930 >> Train your class spells
.xp <72,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step
#completewith GearM
.hs >> Hearth to Fizzcrank Airstrip
.cooldown item,6948,>2
step
.goto BoreanTundra,57.04,18.60
>>|cRXP_WARN_Take the elevator up to|r |cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11798 >>Turn in The Gearmaster
.isQuestTurnedIn 11673
.target Fizzcrank Fullthrottle
step
#label GearM
.goto BoreanTundra,57.04,18.60
>>|cRXP_WARN_Take the elevator up to|r |cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11798 >>Turn in The Gearmaster
.turnin 11673 >>Turn in Get Me Outa Here!
.target Fizzcrank Fullthrottle
step
#questguide << !wotlk
.goto BoreanTundra,57.08,20.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner|r
.turnin 11713 >>Turn in Scouting the Sinkholes
.accept 11715 >>Accept Fueling the Project
.target Abner Fizzletorque
step << !wotlk
.goto BoreanTundra,57.08,20.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner|r
.turnin 11713 >>Turn in Scouting the Sinkholes
.target Abner Fizzletorque
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_Crafty|r |cRXP_WARN_patrols the outside|r
.turnin 11670 >>Turn in It Was The Orcs, Honest!
.isQuestComplete 11670
.target Crafty Wobblesprocket
step
#questguide << !wotlk
.goto BoreanTundra,56.8,26.2,70,0
.goto BoreanTundra,62.4,29.4,70,0
.goto BoreanTundra,61.8,36.0
.use 34975 >>|cRXP_WARN_Use the|r |T132997:0|t[Portable Oil Collector] |cRXP_WARN_on |cRXP_PICK_Oil Patches|r on the ground|r
.complete 11715,1 
step
#completewith next
.goto BoreanTundra,43.50,13.97,120 >>Travel to Winterfin Retreat
step
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
.accept 11571 >>Accept Learning to Communicate
.turnin 11704 >>Turn in King Mrgl-Mrgl
.target King Mrgl-Mrgl
step
.goto BoreanTundra,43.0,18.1,60,0
.goto BoreanTundra,42.5,15.4
.use 34598 >>Kill |cRXP_ENEMY_Scalder|r underwater. |cRXP_WARN_Use|r |T134431:0|t[The King's Empty Conch] |cRXP_WARN_on its corpse|r
>>|cRXP_ENEMY_Scalder|r |cRXP_WARN_patrols the seabed|r
.complete 11571,1 
.unitscan Scalder
step
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
.turnin 11571 >>Turn in Learning to Communicate
.accept 11559 >>Accept Winterfin Commerce
.target King Mrgl-Mrgl
step
.goto BoreanTundra,40.5,15.8,70,0
.goto BoreanTundra,41.6,18.9
>>Kill |cRXP_ENEMY_Winterfin Oracles|r, |cRXP_ENEMY_Winterfin Shorestrikers|r and |cRXP_ENEMY_Winterfin Warriors|r. Loot them for their |cRXP_LOOT_Winterfin Clams|r
>>|cRXP_WARN_Alternatively|r Loot the |cRXP_LOOT_Winterfin Clams|r on the ground
>>|cRXP_WARN_They are usually found next to Murloc huts but can be difficult to spot|r
.complete 11559,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahlurglgr|r, |cRXP_FRIENDLY_King Mrgl-Mrgl|r, and |cRXP_FRIENDLY_Brglmurgl|r
.turnin 11559 >>Turn in Winterfin Commerce
.goto BoreanTundra,43.04,13.82
.accept 11560 >>Accept Oh Noes, the Tadpoles!
.goto BoreanTundra,43.50,13.97
.accept 11561 >>Accept Them!
.goto BoreanTundra,42.82,13.65
.target Brglmurgl
.target Ahlurglgr
.target King Mrgl-Mrgl
step
#completewith next
.goto BoreanTundra,41.0,15.6,0
.goto BoreanTundra,41.3,19.0,0
.goto BoreanTundra,39.2,18.3,0
.goto BoreanTundra,37.6,15.9,0
>>Kill |cRXP_ENEMY_Winterfin Oracles|r, |cRXP_ENEMY_Winterfin Shorestrikers|r and |cRXP_ENEMY_Winterfin Warriors|r
>>|cRXP_WARN_Do not prioritize this|r
.complete 11561,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
#sticky
#label tadpoles
.goto BoreanTundra,41.0,15.6,40,0
.goto BoreanTundra,41.3,19.0,40,0
.goto BoreanTundra,39.2,18.3,40,0
.goto BoreanTundra,37.6,15.9,40,0
.goto BoreanTundra,41.0,15.6,40,0
.goto BoreanTundra,41.3,19.0,40,0
.goto BoreanTundra,40.04,19.80,40,0
.goto BoreanTundra,39.2,18.3,40,0
.goto BoreanTundra,37.6,15.9
>>Click the |cRXP_PICK_Cages|r to rescure |cRXP_FRIENDLY_Winterfin Tadpoles|r
>>|cRXP_WARN_You may have to go inside the Winterfin Caverns for more|r
.complete 11560,1 
.target Winterfin Tadpole
step
.goto BoreanTundra,40.04,19.80
.use 34669 >> |cRXP_WARN_Use the|r |T133015:0|t[Arcanometer] |cRXP_WARN_at the entrance of the Winterfin Caverns|r
.complete 12728,1 
step
#completewith end
#requires tadpoles
#label Murloc2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brglmurgl|r
.turnin 11561 >>Turn in Them!
.goto BoreanTundra,42.82,13.65,0,0
.isQuestComplete 11561
.target Brglmurgl
step
#requires tadpoles
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
.turnin 11560 >>Turn in Oh Noes, the Tadpoles!
.accept 11562 >>Accept I'm Being Blackmailed By My Cleaner
.goto BoreanTundra,43.50,13.97
.target King Mrgl-Mrgl
step
#requires Murloc2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mrmrglmr|r and |cRXP_FRIENDLY_Bmurglbrm|r
.turnin 11562 >>Turn in I'm Being Blackmailed By My Cleaner
.accept 11563 >>Accept Grmmurggll Mrllggrl Glrggl!!!
.goto BoreanTundra,41.98,12.77
.accept 11564 >>Accept Succulent Orca Stew
.goto BoreanTundra,42.03,13.16
.target Mrmrglmr
.target Brglmurgl
step
#completewith next
.goto BoreanTundra,38.0,9.5,0
.goto BoreanTundra,36.4,8.8,0
.goto BoreanTundra,37.4,6.3,0
.goto BoreanTundra,39.3,8.3,0
>>Kill |cRXP_ENEMY_Glimmer Bay Orcas|r. Loot them for their |cRXP_LOOT_Blubbers|r
.complete 11564,1 
.mob Glimmer Bay Orca
step
.goto BoreanTundra,38.0,9.5,70,0
.goto BoreanTundra,36.4,8.8,70,0
.goto BoreanTundra,37.4,6.3,70,0
.goto BoreanTundra,39.3,8.3
>>Kill |cRXP_ENEMY_Glrggl|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_WARN_He patrols counter-clockwise around the two northern icebergs|r
.complete 11563,1 
.unitscan Glrggl
step
.goto BoreanTundra,40.1,12.2,70,0
.goto BoreanTundra,39.3,6.7,70,0
.goto BoreanTundra,36.0,8.1
>>Kill |cRXP_ENEMY_Glimmer Bay Orcas|r. Loot them for their |cRXP_LOOT_Blubbers|r
.complete 11564,1 
.mob Glimmer Bay Orca
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mrmrglmr|r, |cRXP_FRIENDLY_Bmurglbrm|r, and |cRXP_FRIENDLY_King Mrgl-Mrgl|r
.turnin 11563 >>Turn in Grmmurggll Mrllggrl Glrggl!!!
.accept 11565 >>Accept The Spare Suit
.goto BoreanTundra,41.98,12.77
.turnin 11564 >>Turn in Succulent Orca Stew
.goto BoreanTundra,42.03,13.16
.turnin 11565 >>Turn in The Spare Suit
.accept 11566 >>Accept Surrender... Not!
.goto BoreanTundra,43.50,13.97
.target King Mrgl-Mrgl
.target Mrmrglmr
.target Cleaver Bmurglbrm
step
#completewith next
.goto BoreanTundra,37.84,23.23,165 >> Enter Winterfin Caverns
step
#completewith Lurgglbr
.goto BoreanTundra,41.0,15.6,0
.goto BoreanTundra,41.3,19.0,0
.goto BoreanTundra,39.2,18.3,0
.goto BoreanTundra,37.6,15.9,0
>>Kill |cRXP_ENEMY_Winterfin Oracles|r, |cRXP_ENEMY_Winterfin Shorestrikers|r and |cRXP_ENEMY_Winterfin Warriors|r
>>|cRXP_WARN_Do not prioritize this|r
.complete 11561,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
.goto BoreanTundra,37.84,23.23
>>|cRXP_WARN_Stick to the left side once you enter Winterfin Caverns|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glrglrglr|r
>>|cRXP_WARN_Do NOT Talk to |r|cRXP_FRIENDLY_Lurgglbr|r |cRXP_WARN_yet|r
.accept 11569 >>Accept Keymaster Urmgrgl
.target Glrglrglr
step
.goto BoreanTundra,38.0,22.2,12,0
.goto BoreanTundra,39.0,22.7,30,0
.goto BoreanTundra,39.8,22.5,30,0
.goto BoreanTundra,39.3,23.7
>>|cRXP_WARN_Run down the ramp below|r
>>Kill |cRXP_ENEMY_Keymaster Urmgrgl|r. Loot him for his |cRXP_LOOT_Key|r
.complete 11569,1 
.unitscan Keymaster Urmgrgl
step
#completewith next
.goto BoreanTundra,37.0,21.8,40,0
.goto BoreanTundra,36.9,24.0,40 >> Travel to the end of Winterfin Caverns
step
.goto BoreanTundra,37.55,27.53
>>Kill |cRXP_ENEMY_Claximus|r. Loot him for his |cRXP_LOOT_Claw|r
.complete 11566,1 
.mob Claximus
step
#completewith next
.goto BoreanTundra,36.80,23.22,40,0
.goto BoreanTundra,37.87,21.52,25,0
.goto BoreanTundra,37.84,23.23,30 >> Travel toward |cRXP_FRIENDLY_Glrglrglr|r near the entrance
step
.goto BoreanTundra,37.84,23.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glrglrglr|r
.turnin 11569 >>Turn in Keymaster Urmgrgl
.target Glrglrglr
step
#questguide
.goto BoreanTundra,37.72,23.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurgglbr|r
.accept 11570 >>Accept Escape from the Winterfin Caverns
.target Lurgglbr
step
#questguide
#label Lurgglbr
.goto BoreanTundra,39.9,19.8,40,0
.goto BoreanTundra,39.6,18.1,40,0
.goto BoreanTundra,41.36,16.32
>>Escort |cRXP_FRIENDLY_Lurgglbr|r. |cRXP_WARN_Try to kill |cRXP_ENEMY_Murlocs|r that he'd otherwise run into so that he doesn't waste time by stopping and attacking|r
.complete 11570,1 
.target Lurgglbr
step
.goto BoreanTundra,41.0,15.6,70,0
.goto BoreanTundra,41.3,19.0,70,0
.goto BoreanTundra,39.2,18.3,70,0
.goto BoreanTundra,37.6,15.9
>>Kill |cRXP_ENEMY_Winterfin Oracles|r, |cRXP_ENEMY_Winterfin Shorestrikers|r and |cRXP_ENEMY_Winterfin Warriors|r
.complete 11561,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
.goto BoreanTundra,42.82,13.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brglmurgl|r
.turnin 11561 >>Turn in Them!
.target Brglmurgl
step
#label Murliver
.goto BoreanTundra,43.04,13.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahlurglgr|r
.vendor >>Purchase as many |T134800:0|t[Murliver Oils] as you can
.itemcount 34597,2
.isQuestTurnedIn 11559
.target Ahlurglgr
step
#questguide
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
.turnin 11566 >>Turn in Surrender... Not!
.turnin 11570 >>Turn in Escape from the Winterfin Caverns
.target King Mrgl-Mrgl
step
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
.turnin 11566 >>Turn in Surrender... Not!
.target King Mrgl-Mrgl
step << Druid wotlk
#requires Murliver
#completewith DruidTrain3
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <71,1
.cooldown item,6948,>2
step << Druid wotlk
#requires Murliver
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48442 >> Train your class spells
.xp <71,1
.cooldown item,6948,>2
.target Loganaar
step << Druid wotlk
#requires Murliver
#label DruidTrain3
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48464 >> Train your class spells
.xp <72,1
.cooldown item,6948,>2
.target Loganaar
step << DK wotlk
#requires Murliver
#completewith next
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <72,1
.cooldown item,6948,>2
step << DK wotlk
#requires Murliver
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49940 >> Train your class spells
.xp <72,1
.cooldown item,6948,>2
.target Amal'thazad
step << Mage wotlk
#requires Murliver
#completewith MageTrain3
.zone Stormwind City >> Teleport to Stormwind
.xp <71,1
.cooldown item,6948,>2
step << Mage wotlk
#requires Murliver
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 43023 >> Train your class spells
.xp <71,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#requires Murliver
#label MageTrain3
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42930 >> Train your class spells
.xp <72,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step << (Shaman/DK/Mage/Druid) wotlk
#completewith next
.hs >> Hearth to Fizzcrank Airstrip
.cooldown item,6948,>2
step << (!Shaman !DK !Mage !Druid) wotlk
#completewith next
.goto BoreanTundra,57.02,20.12,150 >> Travel to Fizzcrank Airstrip
step
#questguide << !wotlk
.goto BoreanTundra,57.02,20.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner|r
.turnin 11715 >>Turn in Fueling the Project
.accept 11718 >>Accept A Bot in Mammoth's Clothing
.target Abner Fizzletorque
step
#questguide << !wotlk
.goto BoreanTundra,53.55,21.34,70,0
.goto BoreanTundra,53.6,31.2,70,0
.goto BoreanTundra,52.9,40.5,70,0
.goto BoreanTundra,53.55,21.34
>>Kill |cRXP_ENEMY_Wooly Mammoths|r, |cRXP_ENEMY_Wooly Mammoth Bulls|r and |cRXP_ENEMY_Mammoth Calves|r. Loot them for their |cRXP_LOOT_Hides|r
.complete 11718,1 
.mob Mammoth Calf
.mob Wooly Mammoth
.mob Wooly Mammoth Bull
step
#completewith next
.groundgoto BoreanTundra,48.4,36.4,50,0
.goto BoreanTundra,44.98,33.38,50 >> Travel to Amber Ledge
step
.goto BoreanTundra,44.98,33.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren|r
.turnin 12728 >>Turn in Monitoring the Rift: Winterfin Cavern
.target Librarian Garren
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,45.33,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
.fly Fizzcrank >> Fly to Fizzcrank Airstrip
.target Surristrasz
step
#questguide << !wotlk
.goto BoreanTundra,57.05,20.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner|r
.turnin 11718 >>Turn in A Bot in Mammoth's Clothing
.accept 11723 >>Accept Deploy the Shake-n-Quake!
.target Abner Fizzletorque
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,70.20,36.40,120 >> Travel to the Geyser Fields
.isOnQuest 11723
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,70.20,36.40
.cast 46017 >> |cRXP_WARN_Use the|r |T133015:0|t[Shake-n-Quake 5000 Control Unit] |cRXP_WARN_next to the |cRXP_PICK_Sinkhole|r to summon|r |cRXP_ENEMY_Lord Kryxix|r
.use 34981
.timer 36,Deploy the Shake-n-Quake! RP
step
#questguide << !wotlk
.goto BoreanTundra,69.78,36.46
>>|cRXP_WARN_Wait out the RP |r
>>Kill |cRXP_ENEMY_Lord Kryxix|r
.complete 11723,1 
.complete 11723,2 
.use 34981
.mob Lord Kryxix
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,57.09,20.07,150 >> Travel to Fizzcrank Airstrip
step
#questguide << !wotlk
#label end
.goto BoreanTundra,57.09,20.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner|r
.turnin 11723 >>Turn in Deploy the Shake-n-Quake!
.target Abner Fizzletorque
step << (Shaman/Warlock/Paladin/Hunter/Rogue/Warrior) wotlk
#completewith next
.goto BoreanTundra,56.56,20.07
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kara|r
.fly Valiance Keep >> Fly to Valiance Keep. Alternatively pay a |T626001:0|t|cFF3FC7EBMage|r for a portal to Stormwind
.zoneskip Elwynn Forest
.zoneskip Stormwind City
.target Kara Thricestar
step << (Shaman/Warlock/Paladin/Hunter/Rogue/Warrior) wotlk
#completewith ShamanTrain << Shaman
#completewith next << !Shaman
.goto BoreanTundra,59.70,69.26
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nelno|r. Ask him for a teleport to Stormwind Harbor
.zoneskip Elwynn Forest
.skipgossip
.target Nelno Copperbeam
step << Shaman wotlk
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 58801 >> Train your class spells
.xp <71,1
.target Farseer Umbrua
step << Shaman wotlk
#label ShamanTrain
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 49237 >> Train your class spells
.xp <73,1
.target Farseer Umbrua
step << Warlock wotlk
.goto StormwindNew,42.26,81.77,20,0
.goto StormwindNew,40.64,84.94,15,0
.goto StormwindNew,39.88,84.19
>>Go into The Slaughtered Lamb and go downstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula|r, |cRXP_FRIENDLY_Demisette|r or |cRXP_FRIENDLY_Sandahl|r
.train 47812 >> Train your class spells
.xp <71,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Paladin wotlk
.goto StormwindNew,52.9,50.9,20,0
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 54428 >> Train your class spells
.xp <71,1
.target Arthur the Faithful
.target Katherine the Pure
step << Hunter wotlk
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
.train 49051 >> Train your class spells
.xp <71,1
.target Einris Brightspear
step << Rogue wotlk
.goto StormwindNew,77.42,65.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.train 48667 >> Train your class spells
.xp <73,1
.target Osborne the Night Man
step << Warrior wotlk
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 47470 >> Train your class spells
.xp <73,1
.target Wu Shen
.target Ilsa Corbin
step << (Shaman/Warlock/Paladin/Hunter/Rogue/Warrior) wotlk
#completewith next
.hs >> Hearth to Fizzcrank Airstrip
.zoneskip BoreanTundra
step
#completewith next
.goto BoreanTundra,45.33,34.54,-1
.goto BoreanTundra,56.57,20.08,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kara Thricestar|r or |cRXP_FRIENDLY_Surristrasz|r
.fly Stars >> Fly to Stars' Rest
.target Surristrasz
.target Kara Thricestar
step
.goto Dragonblight,12.16,55.22
.zone Dragonblight >> Travel to Dragonblight
step << !wotlk
#xprate >1.59
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin -12107 >>Turn in The End of the Line
.accept 12794 >> Accept The Magical Kingdom of Dalaran
.target Image of Archmage Modera
step << !wotlk
#xprate >1.59
.goto Dragonblight,29.00,55.45
.zone Dalaran >>Ask |cRXP_FRIENDLY_Modera|r for a teleport to Dalaran
.skipgossip
.xp <74,1
.isOnQuest 12794
.target Image of Archmage Modera
step << !wotlk
#xprate >1.59
.abandon 12794 >> Abandon The Magical Kingdom of Dalaran
step << wotlk
#xprate >1.499
.goto Dragonblight,28.84,56.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanson|r
.accept 12171 >>Accept Of Traitors and Treason
.target Courier Lanson
step << wotlk
#xprate >1.499
.goto Dragonblight,29.16,55.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Palena|r
>>|cRXP_WARN_Accepting this quest will send you flying to eastern Dragonblight|r
.turnin 12171 >>Turn in Of Traitors and Treason
.accept 12174 >>Accept High Commander Halford Wyrmbane
.timer 88,Westguard Keep Flight
.target Palena Silvercloud
step << wotlk
#xprate >1.499
.goto Dragonblight,77.08,49.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodney|r
.fp Wintergarde Keep >>Get the Wintergarde Keep Flight Path
.target Rodney Wells
step << wotlk
#xprate >1.499
.goto Dragonblight,78.59,48.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
.turnin 12174 >>Turn in High Commander Halford Wyrmbane
.target High Commander Halford Wyrmbane
step << wotlk
#xprate >1.499
.xp <73,1
#label Hills
.goto Dragonblight,77.13,50.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
>>|cRXP_WARN_Accepting this quest will send you flying to Grizzly Hills|r
.accept 12511 >>Accept The Hills Have Us
.timer 150,Fly to Amberpine Lodge
.target Gryphon Commander Urik
step << wotlk
#xprate >1.499
.zone Grizzly Hills >> Travel to Grizzly Hills
]]);

RXPGuides.RegisterGuide([[
#cata
#mop
#wotlk
#xprate <1.5 << wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 72-74 Dragonblight
#displayname 73-74 Dragonblight
#version 9
#next 73-75 Grizzly Hills
#xprate <1.5 << wotlk
#questguide << !wotlk
step
#label pt1start
#completewith DBStart
.goto Dragonblight,29.18,55.32,200 >> Travel to Stars' Rest
step
.goto Dragonblight,29.18,55.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Palena|r
.fp Stars' Rest >> Get the Stars' Rest Flight Path
.target Palena Silvercloud
step
#label DBStart
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r and |cRXP_FRIENDLY_Jodi|r
.accept 12000 >>Accept Rifle the Bodies
.goto Dragonblight,29.00,55.45
.accept 12166 >>Accept The Liquid Fire of Elune
.goto Dragonblight,29.18,55.65
.target Image of Archmage Modera
.target Warden Jodi Moonsong
step
.goto Dragonblight,28.83,56.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanson|r
>>|cRXP_WARN_Do NOT accept the next quest|r
.turnin 12157 >>Turn in The Lost Courier
.isOnQuest 12157
.target Courier Lanson
step
#completewith Trader
.goto Dragonblight,28.89,56.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naohain|r
.home >> Set your Hearthstone to Stars' Rest
.target Naohain
step
.goto Dragonblight,31.9,45.9,70,0
.goto Dragonblight,28.8,51.5,70,0
.goto Dragonblight,23.8,50.0,70,0
.goto Dragonblight,28.8,51.5,70,0
.goto Dragonblight,31.9,45.9
.use 36956 >> Kill |cRXP_ENEMY_Blighted Elks|r and |cRXP_ENEMY_Rabid Grizzlies|r. |cRXP_WARN_Use the|r |T135777:0|t[Liquid Fire of Elune] |cRXP_WARN_on their corpses|r
.complete 12166,1 
.mob +Blighted Elk
.complete 12166,2 
.mob +Rabid Grizzly
step
#completewith next
.goto Dragonblight,24.19,60.06,100 >> Travel to the Moonrest Gardens
step
#sticky
#label moonshadow
.goto Dragonblight,24.19,60.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial|r
.accept 12006 >>Accept Avenge this Atrocity!
.target Ethenial Moonshadow
step
.goto Dragonblight,22.7,58.1,70,0
.goto Dragonblight,23.3,61.3,70,0
.goto Dragonblight,25.9,58.7,70,0
.goto Dragonblight,22.75,57.36,70,0
.goto Dragonblight,21.62,54.84,70,0
.goto Dragonblight,24.72,54.84,70,0
.goto Dragonblight,22.7,58.1
.use 35792 >>Loot |cRXP_FRIENDLY_Dead Mage Hunters|r for their |T133641:0|t[|cRXP_LOOT_Mage Hunter's Personal Effects|r]
>>Open their |T133641:0|t[|cRXP_LOOT_Mage Hunter's Personal Effects|r] until you receive the |cRXP_PICK_Moonrest Gardens Plans|r
.complete 12000,1 
.target Dead Mage Hunter
step
#requires moonshadow
#completewith next
.goto Dragonblight,29.00,55.45,100 >> Travel to Stars' Rest
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12000 >>Turn in Rifle the Bodies
.accept 12004 >>Accept Prevent the Accord
.target Image of Archmage Modera
step
.goto Dragonblight,29.18,55.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jodi|r
.turnin 12166 >>Turn in The Liquid Fire of Elune
.accept 12167 >>Accept Kill the Cultists
.target Warden Jodi Moonsong
step
#completewith next
.groundgoto Dragonblight,28.2,45.9,50,0
.groundgoto Dragonblight,27.7,45.6,40,0
.goto Dragonblight,25.96,45.19,60 >> Travel to Icemist Village
step
.goto Dragonblight,23.7,46.1,50,0
.goto Dragonblight,26.7,42.8,50,0
.goto Dragonblight,26.1,42.7,30,0
.goto Dragonblight,26.1,44.1,40,0
.goto Dragonblight,23.8,44.2,40,0
.goto Dragonblight,25.7,38.1,40,0
.goto Dragonblight,25.48,41.66
.use 36958 >>Kill |cRXP_ENEMY_Anub'ar Cultists|r. Loot them for their |cRXP_LOOT_Cultist Suits|r and |T133330:0|t[|cRXP_LOOT_The Favor of Zangus|r]
>>|cRXP_WARN_Use |T133330:0|t[|cRXP_LOOT_The Favor of Zangus|r] to start the quest|r
.complete 12167,1 
.collect 36958,1,12168
.accept 12168 >>Accept The Favor of Zangus
.mob Anub'ar Cultist
step
#completewith next
.goto Dragonblight,29.18,55.65,100 >> Travel to Stars' Rest
step
.goto Dragonblight,29.18,55.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jodi|r
.turnin 12167 >>Turn in Kill the Cultists
.turnin 12168 >>Turn in The Favor of Zangus
.accept 12169 >>Accept The High Cultist
.target Warden Jodi Moonsong
step
#completewith next
.goto Dragonblight,26.15,49.48,15 >> Drop down into The Pit of Narjun
step
.goto Dragonblight,28.85,49.72
>>Kill |cRXP_ENEMY_High Cultist Zangus|r in The Pit of Narjun
.complete 12169,1 
.mob High Cultist Zangus
step
#completewith Trader
.hs >> Hearth to Stars' Rest
.cooldown item,6948,>2
step
#completewith Trader
.goto Dragonblight,26.9,49.5,30,0
.goto Dragonblight,26.7,48.7,15,0
.goto Dragonblight,26.3,49.0,25 >> Exit The Pit of Narjun
.cooldown item,6948,<0
step << skip
.goto Dragonblight,29.18,55.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jodi|r
.turnin 12169 >>Turn in The High Cultist
.target Warden Jodi Moonsong
step
#completewith moonrest
>>Kill |cRXP_ENEMY_Surge Needle Sorcerers|r, |cRXP_ENEMY_Moonrest Stalkers|r, |cRXP_ENEMY_Focus Wizards|r and |cRXP_ENEMY_Dragonblight Mage Hunters|r
.complete 12006,1 
.mob Surge Needle Sorcerer
.mob Moonrest Stalker
.mob Focus Wizard
.mob Dragonblight Mage Hunter
step
#label Trader
.goto Dragonblight,18.39,58.89
>>Kill |cRXP_ENEMY_Wind Trader Mu'Fah|r. Loot him for his |cRXP_LOOT_Remains|r
.complete 12004,1 
.mob Wind Trader Mu'fah
step
.goto Dragonblight,19.46,58.03
.use 36742 >>Kill |cRXP_ENEMY_Goramosh|r. Loot him for his |cRXP_LOOT_Scales|r and |T134889:0|t[|cRXP_LOOT_Goramosh's Strange Device|r]
>>|cRXP_WARN_Use |T134889:0|t[|cRXP_LOOT_Goramosh's Strange Device|r] to start the quest|r
.complete 12004,2 
.collect 36742,1,12055 
.accept 12055 >>Accept A Strange Device
.mob Goramosh
step
#completewith next
.goto Dragonblight,29.00,55.45,100 >> Travel to Stars' Rest
step
#label moonrest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r and |cRXP_FRIENDLY_Jodi|r
.turnin 12004 >>Turn in Prevent the Accord
.turnin 12055 >>Turn in A Strange Device
.accept 12060 >>Accept Projections and Plans
.goto Dragonblight,29.00,55.45
.turnin 12169 >>Turn in The High Cultist
.goto Dragonblight,29.18,55.65
.target Image of Archmage Modera
.target Warden Jodi Moonsong
step
#completewith next
.goto Dragonblight,25.4,56.2,60 >> Travel to the Moonrest Gardens
step
#completewith Observe
>>Kill |cRXP_ENEMY_Surge Needle Sorcerers|r, |cRXP_ENEMY_Moonrest Stalkers|r, |cRXP_ENEMY_Focus Wizards|r and |cRXP_ENEMY_Dragonblight Mage Hunters|r
.complete 12006,1 
.mob Surge Needle Sorcerer
.mob Moonrest Stalker
.mob Focus Wizard
.mob Dragonblight Mage Hunter
step
.goto Dragonblight,25.4,56.2,-1
.cast 47097 >> |cRXP_WARN_Use the|r |T134889:0|t[Surge Needle Teleporter] |cRXP_WARN_to teleport to the Surge Needle|r
.goto Dragonblight,19.59,59.77,-1
.use 36747
.isOnQuest 12060
step
#label Observe
.goto Dragonblight,19.79,59.82
>>|cRXP_WARN_Move slightly towards the center of the platform to complete the objective|r
.complete 12060,1 
.use 36747
step
#completewith Atrocity
.cast 47097 >> |cRXP_WARN_Use the|r |T134889:0|t[Surge Needle Teleporter] |cRXP_WARN_to teleport back down|r
.use 36747
step
.goto Dragonblight,20.96,55.17,70,0
.goto Dragonblight,21.73,60.34,70,0
.goto Dragonblight,19.80,61.84,70,0
.goto Dragonblight,17.54,58.47,70,0
.goto Dragonblight,20.96,55.17,70,0
.goto Dragonblight,21.73,60.34,70,0
.goto Dragonblight,19.36,62.30
>>Kill |cRXP_ENEMY_Surge Needle Sorcerers|r, |cRXP_ENEMY_Moonrest Stalkers|r, |cRXP_ENEMY_Focus Wizards|r and |cRXP_ENEMY_Dragonblight Mage Hunters|r
.complete 12006,1 
.mob Surge Needle Sorcerer
.mob Moonrest Stalker
.mob Focus Wizard
.mob Dragonblight Mage Hunter
step
#label Atrocity
.goto Dragonblight,24.19,60.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial|r
.turnin 12006 >>Turn in Avenge this Atrocity!
.accept 12013 >>Accept End Arcanimus
.target Ethenial Moonshadow
step
.groundgoto Dragonblight,20.63,60.86,30,0
.goto Dragonblight,20.03,59.74
>>Kill |cRXP_ENEMY_Arcanimus|r
.complete 12013,1 
.mob Arcanimus
step
.goto Dragonblight,24.19,60.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial|r
.turnin 12013 >>Turn in End Arcanimus
.target Ethenial Moonshadow
step
#completewith next
.goto Dragonblight,29.00,55.45,100 >> Travel to Stars' Rest
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12060 >>Turn in Projections and Plans
.accept 12065 >>Accept The Focus on the Beach
.target Image of Archmage Modera
step
.goto Dragonblight,26.32,64.85
.use 36756 >>Kill |cRXP_ENEMY_Captain Emmy Malin|r. Loot her for her |cRXP_LOOT_Ring|r and |T133469:0|t[|cRXP_LOOT_Captain Malin's Letter|r]
>>|cRXP_WARN_Use |T133469:0|t[|cRXP_LOOT_Captain Malin's Letter|r] to start the quest|r
.collect 36751,1,12065,1
.collect 36756,1,12067
.accept 12067 >>Accept A Letter for Home
.mob Captain Emmy Malin
step
.goto Dragonblight,26.54,65.08
.use 36751 >>|cRXP_WARN_Use the|r |T133377:0|t[Ley Line Focus Control Ring] |cRXP_WARN_on the|r |cRXP_PICK_Ley Line Focus|r
>>|cRXP_WARN_You may start mounting up once the cast completes|r
.complete 12065,1 
step
#completewith next
.groundgoto Dragonblight,25.09,60.98,50,0
.goto Dragonblight,29.00,55.45,100 >> Travel to Stars' Rest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r and |cRXP_FRIENDLY_Saia|r
.turnin 12065 >>Turn in The Focus on the Beach
.accept 12083 >>Accept Atop the Woodlands
.goto Dragonblight,29.00,55.45
.turnin 12067 >>Turn in A Letter for Home
.goto Dragonblight,29.04,55.42
.target Image of Archmage Modera
.target Commander Saia Azuresteel
step
.goto Dragonblight,28.73,57.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarendryana|r
.accept 12092 >>Accept Strengthen the Ancients
.target Sarendryana
step
.goto Dragonblight,33.8,60.2,70,0
.goto Dragonblight,36.2,61.7,70,0
.goto Dragonblight,30.6,66.7,70,0
.goto Dragonblight,34.3,68.3,70,0
.goto Dragonblight,29.8,71.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodland Walkers|r to receive their |T134882:0|t[|cRXP_LOOT_Barks of the Walkers|r]
>>Kill |cRXP_ENEMY_Woodland Walkers|r if they turn hostile. Loot them for their |T134882:0|t[|cRXP_LOOT_Barks of the Walkers|r]
.use 36786 >>|cRXP_WARN_Use the|r |T134882:0|t[|cRXP_LOOT_Barks of the Walkers|r] |cRXP_WARN_on|r |cRXP_FRIENDLY_Lothalor Ancients|r
.collect 36786,3,12092,1,-1 
.complete 12092,1 
.skipgossip
.mob Woodlands Walker
.target Lothalor Ancient
step
#completewith next
.goto Dragonblight,33.1,71.5,60,0
.goto Dragonblight,32.4,72.7,60,0
.goto Dragonblight,31.5,72.0,60,0
.goto Dragonblight,31.9,70.4
>>Kill |cRXP_ENEMY_Lieutenant Ta'zinni|r. Loot him for his |T133312:0|t[|cRXP_LOOT_Ley Line Focus Control Amulet|r]
>>|cRXP_ENEMY_Lieutenant Ta'zinni|r |cRXP_WARN_patrols the Lothalor Woodlands|r
.collect 36779,1,12083,1 
.unitscan Lieutenant Ta'zinni
step
.goto Dragonblight,32.2,71.4
.use 36779 >>|cRXP_WARN_Use the|r |T133312:0|t[|cRXP_LOOT_Ley Line Focus Control Amulet|r] |cRXP_WARN_on the|r |cRXP_PICK_Ley Line Focus|r
>>|cRXP_WARN_You may start mounting up once the cast completes|r
.complete 12083,1 
step
#completewith next
.goto Dragonblight,28.73,57.10,100 >> Travel to Stars' Rest
step
.goto Dragonblight,28.73,57.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarendryana|r
.turnin 12092 >>Turn in Strengthen the Ancients
.target Sarendryana
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12083 >>Turn in Atop the Woodlands
.accept 12098 >>Accept Search Indu'le Village
.target Image of Archmage Modera
step
#completewith next
.goto Dragonblight,40.25,66.85,70 >> Travel to Lake Indu'le
step
.goto Dragonblight,40.25,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of |cRXP_FRIENDLY_Mage-Commander Evenstar|r underwater
.turnin 12098 >>Turn in Search Indu'le Village
.accept 12107 >>Accept The End of the Line
.target Mage-Commander Evenstar
step
.goto Dragonblight,39.79,67.03
.use 36815 >> |cRXP_WARN_Use the|r |T133442:0|t[|cRXP_LOOT_Ley Line Focus Control Talisman|r] |cRXP_WARN_on the |cRXP_PICK_Ley Line Focus|r underwater|r
.complete 12107,1 
step
#completewith Konani
.goto Dragonblight,48.52,74.39,100 >> Travel to Moa'ki Harbor
.skill coldweatherflying,<1,1
step
#completewith next
.goto Dragonblight,48.52,74.39,100 >> Travel to Moa'ki Harbor
>>|cRXP_WARN_Be careful when dropping off the cliff as you approach Moa'ki Harbor|r
.skill coldweatherflying,1,1
step
#completewith Konani
#label MoaFP
.goto Dragonblight,48.52,74.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cid|r
.fp Moa'ki >> Get the Moa'ki Harbor flight path
.target Cid Flounderfix
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mau'i|r and |cRXP_FRIENDLY_Ko'nani|r
.daily 11960 >>Accept Planning for the Future
.goto Dragonblight,48.25,74.35
.accept 11958 >>Accept Let Nothing Go To Waste
.turnin 12117 >>Turn in Travel to Moa'ki Harbor
.goto Dragonblight,48.00,74.87
.isOnQuest 12117
.target Trapper Mau'i
.target Elder Ko'nani
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mau'i|r and |cRXP_FRIENDLY_Ko'nani|r
.daily 11960 >>Accept Planning for the Future
.goto Dragonblight,48.25,74.35
.accept 11958 >>Accept Let Nothing Go To Waste
.turnin 12118 >>Turn in Travel to Moa'ki Harbor
.goto Dragonblight,48.00,74.87
.isOnQuest 12118
.target Trapper Mau'i
.target Elder Ko'nani

step
#label Konani
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mau'i|r and |cRXP_FRIENDLY_Ko'nani|r
.daily 11960 >>Accept Planning for the Future
.goto Dragonblight,48.25,74.35
.accept 11958 >>Accept Let Nothing Go To Waste
.goto Dragonblight,48.00,74.87
.target Trapper Mau'i
.target Elder Ko'nani

step
#completewith next
.goto Dragonblight,52.92,65.64,20 >> Travel to Azure Dragonshrine
step
.goto Dragonblight,52.92,65.64
>>Observe the Azure Dragonshrine
.complete 12107,2 
step
#requires MoaFP
#loop
.line Dragonblight,49.07,63.26,47.35,64.41,47.33,61.52,44.89,61.37,45.24,63.72,43.85,68.47,42.64,71.91,44.57,71.43,46.01,68.68,47.33,64.45,49.07,63.26
.goto Dragonblight,49.07,63.26,55,0
.goto Dragonblight,47.35,64.41,55,0
.goto Dragonblight,47.33,61.52,55,0
.goto Dragonblight,44.89,61.37,55,0
.goto Dragonblight,45.24,63.72,55,0
.goto Dragonblight,43.85,68.47,55,0
.goto Dragonblight,42.64,71.91,55,0
.goto Dragonblight,44.57,71.43,55,0
.goto Dragonblight,46.01,68.68,55,0
.goto Dragonblight,47.33,64.45,55,0
.goto Dragonblight,49.07,63.26,55,0
>>Kill |cRXP_ENEMY_Snowfall Glade Den Mothers|r, |cRXP_ENEMY_Snowfall Reavers|r, |cRXP_ENEMY_Snowfall Shaman|r and |cRXP_ENEMY_Snowfall Wolvar|r. Loot them for their |cRXP_LOOT_Goods|r
>>Loot |cRXP_LOOT_Snowfall Glade Pups|r. |cRXP_WARN_Do NOT kill them|r
.complete 11958,1 
.complete 11960,1 
.isOnQuest 11960
.target Snowfall Glade Den Mother
.target Snowfall Glade Reaver
.target Snowfall Glade Shaman
.target Snowfall Glade Wolvar
.target Snowfall Glade Pup
step
#requires MoaFP
#loop
.line Dragonblight,49.07,63.26,47.35,64.41,47.33,61.52,44.89,61.37,45.24,63.72,43.85,68.47,42.64,71.91,44.57,71.43,46.01,68.68,47.33,64.45,49.07,63.26
.goto Dragonblight,49.07,63.26,55,0
.goto Dragonblight,47.35,64.41,55,0
.goto Dragonblight,47.33,61.52,55,0
.goto Dragonblight,44.89,61.37,55,0
.goto Dragonblight,45.24,63.72,55,0
.goto Dragonblight,43.85,68.47,55,0
.goto Dragonblight,42.64,71.91,55,0
.goto Dragonblight,44.57,71.43,55,0
.goto Dragonblight,46.01,68.68,55,0
.goto Dragonblight,47.33,64.45,55,0
.goto Dragonblight,49.07,63.26,55,0
>>Kill |cRXP_ENEMY_Snowfall Glade Den Mothers|r, |cRXP_ENEMY_Snowfall Reavers|r, |cRXP_ENEMY_Snowfall Shaman|r and |cRXP_ENEMY_Snowfall Wolvar|r. Loot them for their |cRXP_LOOT_Goods|r
.complete 11958,1 
.target Snowfall Glade Den Mother
.target Snowfall Glade Reaver
.target Snowfall Glade Shaman
.target Snowfall Glade Wolvar
step
#completewith next
.goto Dragonblight,48.25,74.35,100 >> Travel to Moa'ki Harbor
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mau'i|r and |cRXP_FRIENDLY_Ko'nani|r
.turnin 11960 >>Turn in Planning for the Future
.goto Dragonblight,48.25,74.35
.turnin 11958 >>Turn in Let Nothing Go To Waste
.accept 11959 >>Accept Slay Loguhn
.goto Dragonblight,48.00,74.87
.target Trapper Mau'i
.target Elder Ko'nani
step
.use 35688 >> Kill |cRXP_ENEMY_Loguhn|r. Loot him for the |T136168:0|t[|cRXP_LOOT_Blood of Loguhn|r]
>>|cRXP_WARN_Use the|r |T136168:0|t[|cRXP_LOOT_Blood of Loguhn|r]
.collect 35688,1,11959,1 
.goto Dragonblight,46.34,59.13
.complete 11959,1 
.goto Dragonblight,48.03,74.82
.unitscan Loguhn
step
#completewith next
.goto Dragonblight,48.00,74.87,100 >> Travel to Moa'ki Harbor
step
.goto Dragonblight,48.00,74.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ko'nani|r
.turnin 11959 >>Turn in Slay Loguhn
.target Elder Ko'nani
step
#questguide << !wotlk
.goto Dragonblight,48.00,76.15,20,0
.goto Dragonblight,47.69,76.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
.accept 12009 >>Accept Tua'kea's Crab Traps
.target Tua'kea
step
.goto Dragonblight,49.15,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u|r
.accept 12028 >>Accept Spiritual Insight
.target Toalu'u the Mystic
step
.goto Dragonblight,48.94,75.75
.use 35907 >> |cRXP_WARN_Use|r |T132859:0|t[Toalu'u's Spiritual Incense] |cRXP_WARN_next to|r |cRXP_PICK_Toalu'u's Brazier|r
>>|cRXP_WARN_Wait out the RP|r
.cast 47190
.timer 160,Spiritual Insight RP
.complete 12028,1 
step
.goto Dragonblight,49.15,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u|r
.turnin 12028 >>Turn in Spiritual Insight
.accept 12030 >>Accept Elder Mana'loa
.target Toalu'u the Mystic
step
#completewith Kili
.cast 48359 >> |cRXP_WARN_Use|r |T132822:0|t[Tua'kea's Breathing Bladder]
.use 37265
.itemcount 37265,1
step
#completewith next
.use 38351 >>|cRXP_WARN_Use a|r |T134800:0|t[Murliver Oil] |cRXP_WARN_to increase your swim speed|r
.itemcount 38351,1
.isQuestTurnedIn 11559
step
#questguide << !wotlk
#completewith Kili
.goto Dragonblight,46.5,76.2,0
>>Loot the |cRXP_LOOT_Tua'kea Crab Traps|r on the sea floor
.complete 12009,1 
step
.goto Dragonblight,47.72,79.99
>>Click the |cRXP_PICK_Wrecked Crab Trap|r on the sea floor
.accept 12011 >>Accept Signs of Big Watery Trouble
step
.goto Dragonblight,47.7,76.6,20,0
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
.turnin 12011 >>Turn in Signs of Big Watery Trouble
.accept 12016 >>Accept The Bait
.target Tua'kea
step << !Shaman !DK wotlk
#completewith next
.use 38351 >>|cRXP_WARN_Use a|r |T134800:0|t[Murliver Oil] |cRXP_WARN_to increase your swim speed|r
.itemcount 38351,1
.isQuestTurnedIn 11559
step
#label Kili
.goto Dragonblight,43.9,82.7,60,0
.goto Dragonblight,42.00,79.86
>>Kill |cRXP_ENEMY_Kili'ua|r. Loot him for his |cRXP_LOOT_Pincers|r
.complete 12016,1 
.unitscan Kili'ua
step << wotlk
#completewith next
.use 38351 >>|cRXP_WARN_Use a|r |T134800:0|t[Murliver Oil] |cRXP_WARN_to increase your swim speed|r
.itemcount 38351,1
.isQuestTurnedIn 11559
step
#questguide << !wotlk
#loop
.line Dragonblight,44.59,80.85,45.88,81.77,46.31,80.21,45.33,79.80,44.60,79.57,45.53,78.37,46.03,78.29,46.15,76.58,46.66,75.83,46.61,77.50,47.15,78.65,48.33,78.85,45.88,81.77
.goto Dragonblight,44.59,80.85,45,0
.goto Dragonblight,45.88,81.77,45,0
.goto Dragonblight,46.31,80.21,45,0
.goto Dragonblight,45.33,79.80,45,0
.goto Dragonblight,44.60,79.57,45,0
.goto Dragonblight,45.53,78.37,45,0
.goto Dragonblight,46.03,78.29,45,0
.goto Dragonblight,46.15,76.58,45,0
.goto Dragonblight,46.66,75.83,45,0
.goto Dragonblight,46.61,77.50,45,0
.goto Dragonblight,47.15,78.65,45,0
.goto Dragonblight,48.33,78.85,45,0
.goto Dragonblight,45.88,81.77,45,0
.use 37265 >>Loot the |cRXP_LOOT_Tua'kea Crab Traps|r on the sea floor
.complete 12009,1 
step
#questguide << !wotlk
.goto Dragonblight,47.7,76.6,20,0
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
.turnin 12009 >>Turn in Tua'kea's Crab Traps
.turnin 12016 >>Turn in The Bait
.accept 12017 >>Accept Meat on the Hook
.target Tua'kea
step << !wotlk
.goto Dragonblight,47.7,76.6,20,0
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
.turnin 12016 >>Turn in The Bait
.accept 12017 >>Accept Meat on the Hook
.target Tua'kea
step
.goto Dragonblight,46.74,78.18
.use 35838 >> |cRXP_WARN_Use|r |T134036:0|t[Tu'u'gwar's Bait] |cRXP_WARN_on |cRXP_PICK_Tua'Kea's Fishing Hook|r underwater to summon|r |cRXP_ENEMY_Tu'u'gwar|r
>>Kill |cRXP_ENEMY_Tu'u'gwar|r
.cast 47159
.timer 35,Meat on the Hook RP
.complete 12017,1 
.mob Tu'u'gwar
step
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
.turnin 12017 >>Turn in Meat on the Hook
.target Tua'kea
step
#completewith next
.groundgoto Dragonblight,48.5,67.8,50,0
.goto Dragonblight,36.63,64.96,50 >> Travel north to Indu'le Village
step
.goto Dragonblight,36.63,64.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Mana'loa|r. |cRXP_WARN_Don't kill any |cRXP_ENEMY_Indu'le|r en route|r
.turnin 12030 >>Turn in Elder Mana'loa
.accept 12031 >>Accept Freedom for the Lingering
.target Elder Mana'loa
step
.goto Dragonblight,36.5,65.5,50,0
.goto Dragonblight,37.0,70.8,50,0
.goto Dragonblight,42.1,71.1,50,0
.goto Dragonblight,41.4,63.7
>>Kill |cRXP_ENEMY_Indu'le Mystics|r, |cRXP_ENEMY_Indu'le Warriors|r and |cRXP_ENEMY_Indu'le Fishermen|r
.complete 12031,1 
.mob Indu'le Mystic
.mob Indu'le Warrior
.mob Indu'le Fisherman
step
#questguide << !wotlk
.goto Dragonblight,36.63,64.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Mana'loa|r
.turnin 12031 >>Turn in Freedom for the Lingering
.accept 12032 >>Accept Conversing With the Depths
.target Elder Mana'loa
step << !wotlk
.goto Dragonblight,36.63,64.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Mana'loa|r
.turnin 12031 >>Turn in Freedom for the Lingering
.target Elder Mana'loa
step
#questguide << !wotlk
#completewith next
.groundgoto Dragonblight,34.5,80.1,40,0
.groundgoto Dragonblight,35.1,82.5,40,0
.goto Dragonblight,33.91,83.22,40 >> Travel to The Briny Pinnacle
step
#questguide << !wotlk
.waypoint Dragonblight,34.11,84.76,-47098,wpbuff,UNIT_AURA
.goto Dragonblight,33.96,83.49
>>Click |cRXP_PICK_The Pearl of the Depths|r
>>|cRXP_WARN_Wait out the RP|r
>>|cRXP_WARN_Once you have the|r |T135895:0|t[Oacha'noa's Compulsion] |cRXP_WARN_buff, jump into the water to|r |cRXP_FRIENDLY_Oacha'noa|r
.cast 3365
.timer 40,Oach'a'noa RP
.complete 12032,1 
.target Oacha'noa
step << Druid wotlk
#completewith DruidTrain1
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <72,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48464 >> Train your class spells
.xp <72,1
.target Loganaar
step << Druid wotlk
#label DruidTrain1
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 53307 >> Train your class spells
.xp <74,1
.target Loganaar
step << DK wotlk
#completewith DKTrain1
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <72,1
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49940 >> Train your class spells
.xp <72,1
.target Amal'thazad
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49904 >> Train your class spells
.xp <73,1
.target Amal'thazad
step << DK wotlk
#label DKTrain1
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49929 >> Train your class spells
.xp <74,1
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain1
.zone Stormwind City >> Teleport to Stormwind
.xp <72,1
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42930 >> Train your class spells
.xp <72,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 43019 >> Train your class spells
.xp <73,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain1
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42939 >> Train your class spells
.xp <74,1
.target Elsharin
.target Jennea Cannon
step
#label pt1end
#completewith next
.hs >> Hearth to Stars' Rest
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12107 >>Turn in The End of the Line
.accept 12119 >>Accept Gaining an Audience
.target Image of Archmage Modera
step
#label pt2start
.goto Dragonblight,28.84,56.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanson|r
.accept 12171 >>Accept Of Traitors and Treason
.target Courier Lanson
step
.goto Dragonblight,29.18,55.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Palena|r
.turnin 12171 >>Turn in Of Traitors and Treason
.accept 12174 >>Accept High Commander Halford Wyrmbane
.timer 88,Westguard Keep Flight
>>|cRXP_WARN_Accepting this quest will send you flying to eastern Dragonblight|r
.target Palena Silvercloud
step
#completewith next
.goto Dragonblight,77.08,49.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodney|r
.fp Wintergarde Keep>>Get the Wintergarde Keep Flight Path
.target Rodney Wells
step
.goto Dragonblight,78.59,48.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r
.turnin 12174 >>Turn in High Commander Halford Wyrmbane
.accept 12235 >>Accept Naxxramas and the Fall of Wintergarde
.target High Commander Halford Wyrmbane
step
.goto Dragonblight,77.10,50.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.turnin 12235 >>Turn in Naxxramas and the Fall of Wintergarde
.accept 12237 >>Accept Flight of the Wintergarde Defender
.target Gryphon Commander Urik
step
#completewith next
.goto Dragonblight,77.13,49.78
.vehicle 27258 >> |cRXP_WARN_Use the|r |T132161:0|t[Wintergarde Gryphon Whistle] |cRXP_WARN_to mount a|r |cRXP_FRIENDLY_Gryphon|r
.use 37287
step
.waypoint Dragonblight,86.38,50.91,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
>>|cRXP_WARN_Fly to The Carrion Fields|r
>>|cRXP_WARN_Cast|r |T134148:0|t[Rescue Villager] (1) |cRXP_WARN_to pick up |cRXP_FRIENDLY_Helpless Villagers|r. You can only pick up one at a time|r
>>|cRXP_WARN_Cast|r |T134149:0|t[Drop Off Villager] (2) |cRXP_WARN_to drop them off at|r |cRXP_FRIENDLY_Urik|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Soar] (3) |cRXP_WARN_on cooldown to fly faster|r
.complete 12237,1 
.goto Dragonblight,77.13,49.78
.use 37287
.target Helpless Wintergarde Villager
step
.goto Dragonblight,77.10,50.12
>>|cRXP_WARN_Dismount the Gryphon|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.turnin 12237 >>Turn in Flight of the Wintergarde Defender
.accept 12251 >>Accept Return to the High Commander
.target Gryphon Commander Urik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford Wyrmbane|r and |cRXP_FRIENDLY_Windstryke|r
.turnin 12251 >>Turn in Return to the High Commander
.accept 12253 >>Accept Rescue from Town Square
.accept 12275 >>Accept The Demo-gnome
.goto Dragonblight,78.47,48.28
.accept 12258 >>Accept The Fate of the Dead
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig|r
.accept 12282 >>Accept Imprints on the Past
.target Zelig the Visionary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarterflash|r and |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12275 >>Turn in The Demo-gnome
.accept 12276 >>Accept The Search for Slinkin
.accept 12272 >>Accept The Bleeding Ore
.goto Dragonblight,77.84,50.29
.accept 12269 >>Accept Not in Our Mine
.goto Dragonblight,77.80,50.34
.target Siege Engineer Quarterflash
.target Highlord Leoric Von Zeldig
step
#completewith chief
.goto Dragonblight,77.47,51.41,10,0
.goto Dragonblight,77.41,51.84,10,0
.goto Dragonblight,77.47,51.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illusia|r
.home >> Set your Hearthstone to Wintergarde Keep
.target Illusia Lune
step
.goto Dragonblight,77.34,51.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 12438 >>Accept Wanted: Kreug Oathbreaker
.accept 12441 >>Accept Wanted: High Shaman Bloodpaw
.accept 12442 >>Accept Wanted: Onslaught Commander Iustus
step
#completewith next
.groundgoto Dragonblight,78.84,48.23,50,0
.goto Dragonblight,79.6,50.5,15 >> Enter the Town Hall
step
#label orb
#sticky
.goto Dragonblight,79.6,50.5,10,0
.goto Dragonblight,78.86,50.88
>>|cRXP_WARN_Travel up the stairs in the Town Hall|r
>>Loot the |cRXP_LOOT_Scrying Orb|r on the 2nd floor
.complete 12282,1 
step
.goto Dragonblight,78.98,51.61,60,0
.goto Dragonblight,79.83,51.69,60,0
.goto Dragonblight,80.89,51.51,60,0
.goto Dragonblight,80.70,48.22,60,0
.goto Dragonblight,79.89,52.17
>>Kill |cRXP_ENEMY_Vengeful Geists|r surrounding the |cRXP_FRIENDLY_Trapped Wintergarde Villagers|r
.complete 12258,1 
.complete 12253,1 
.mob Vengeful Geist
step
#completewith next
.goto Dragonblight,80.21,44.87,15 >> Travel to the Wintergarde Mine. Enter through the lower mine shaft
step
#sticky
#label mine
.goto Dragonblight,78.9,42.1,0,0
>>Kill |cRXP_ENEMY_Risen Wintergarde Miners|r. Loot them for their |cRXP_LOOT_Cards|r
>>|cRXP_ENEMY_Wintergarde Defenders|r |cRXP_WARN_do NOT drop them|r
>>Loot the |cRXP_LOOT_Strange Ore|r on the ground
.complete 12269,1 
.complete 12272,1 
.mob Risen Wintergarde Miner
step
.goto Dragonblight,81.53,42.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of |cRXP_FRIENDLY_Slinkin|r
.turnin 12276 >>Turn in The Search for Slinkin
.accept 12277 >>Accept Leave Nothing to Chance
.target Slinkin the Demo-gnome
step
.goto Dragonblight,80.74,41.31
>>Loot the |T133717:0|t[|cRXP_LOOT_Wintergarde Mine Bomb|r] on the ground
.collect 37465,1,12277,1
step
.goto Dragonblight,80.14,45.35
.cast 48741 >>|cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Wintergarde Mine Bomb|r] |cRXP_WARN_at the Lower Mine Shaft entrance|r

.use 37465
.isOnQuest 12277
step
.goto Dragonblight,80.42,44.95
.cast 48741 >>|cRXP_WARN_Use the|r |T133717:0|t[|cRXP_LOOT_Wintergarde Mine Bomb|r] |cRXP_WARN_at the Upper Mine Shaft entrance|r

.use 37465
.isOnQuest 12277
step
.groundgoto Dragonblight,81.54,48.75,50,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r and |cRXP_FRIENDLY_Windstryke|r
.turnin 12253 >>Turn in Rescue from Town Square
.accept 12309 >>Accept Find Durkon!
.goto Dragonblight,78.58,48.20
.turnin 12258 >>Turn in The Fate of the Dead
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig|r
.turnin 12282 >>Turn in Imprints on the Past
.accept 12287 >>Accept Orik Trueheart and the Forgotten Shore
.target Zelig the Visionary
step
.goto Dragonblight,77.81,50.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarterflash|r and |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12272 >>Turn in The Bleeding Ore
.turnin 12277 >>Turn in Leave Nothing to Chance
.accept 12281 >>Accept Understanding the Scourge War Machine
.goto Dragonblight,77.84,50.29
.turnin 12269 >>Turn in Not In Our Mine
.goto Dragonblight,77.80,50.34
.target Siege Engineer Quarterflash
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,78.54,48.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12281 >>Turn in Understanding the Scourge War Machine
.target High Commander Halford Wyrmbane
step
#completewith next
.goto Dragonblight,79.06,53.21,50 >> Travel toward |cRXP_FRIENDLY_Durkon|r at the Wintergarde Crypt
step
.goto Dragonblight,79.06,53.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durkon|r
.turnin 12309 >>Turn in Find Durkon!
.accept 12311 >>Accept The Noble's Crypt
.target Cavalier Durkon
step
.goto Dragonblight,78.62,52.28
>>|cRXP_WARN_Enter the Wintergarde Crypt|r
>>Kill |cRXP_ENEMY_Necrolord Amarion|r
>>Click the |cRXP_PICK_Flesh-bound Tome|r on the ground
.complete 12311,1 
.accept 12312 >>Accept Secrets of the Scourge
.mob Necrolord Amarion
step
#label pt2end
.goto Dragonblight,79.06,53.21
>>|cRXP_WARN_Exit Wintergarde Crypt|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durkon|r
.turnin 12311 >>Turn in The Noble's Crypt
.turnin 12312 >>Turn in Secrets of the Scourge
.accept 12319 >>Accept Mystery of the Tome
.target Cavalier Durkon
step
.goto Dragonblight,78.56,48.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12319 >>Turn in Mystery of the Tome
.accept 12320 >>Accept Understanding the Language of Death
.target High Commander Halford Wyrmbane
step
#completewith next
.groundgoto Dragonblight,78.2,46.7,40,0
.goto Dragonblight,76.81,47.51,40 >> Travel to the Keep
step
.goto Dragonblight,76.81,47.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Eligor|r
.accept 12464 >>Accept My Old Enemy
.target Commander Eligor Dawnbringer
step
.goto Dragonblight,76.99,47.92,12,0
.goto Dragonblight,76.82,47.52
>>|cRXP_WARN_Enter the Jail downstairs|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hallard|r
.turnin 12320 >>Turn in Understanding the Language of Death
.accept 12321 >>Accept A Righteous Sermon
.timer 184,A Righteous Sermon RP
.target Inquisitor Hallard
step
.goto Dragonblight,78.2,47.2
>>|cRXP_WARN_Exit the Keep|r
>>|cRXP_WARN_Wait where the arrow is pointing while |cRXP_FRIENDLY_Inquisitor Hallard|r delivers his Righteous Sermon|r
>>|cRXP_WARN_If you go too far and the quest fails, go back and pick it up again|r
>>|cRXP_WARN_He takes 2 minutes and 55 seconds. You can take a break during this time|r
.complete 12321,1 
step
.goto Dragonblight,78.48,48.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12321 >>Turn in A Righteous Sermon
.accept 12325 >>Accept Into Hostile Territory
.target High Commander Halford Wyrmbane
step
#completewith next
.goto Dragonblight,77.20,49.54,-1
.goto Dragonblight,89.68,46.36,-1
.vehicle >> Mount a |cRXP_FRIENDLY_Wintergarde Gryphon|r to fly to Thorson's Post
.timer 40,Into Hostile Territory RP
.target Wintergarde Gryphon
.skill coldweatherflying,1,1
step
.goto Dragonblight,89.68,46.36
>>|cRXP_WARN_Wait out the flight to Thorson's Post|r
>>|cRXP_WARN_Click off the|r |T135992:0|t[Parachute] |cRXP_WARN_buff when you're close to the ground|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foehammer|r
.turnin 12325 >>Turn in Into Hostile Territory
.accept 12326 >>Accept Steamtank Surprise
.target Duke August Foehammer
.skill coldweatherflying,1,1
step
.goto Dragonblight,89.68,46.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foehammer|r
.turnin 12325 >>Turn in Into Hostile Territory
.accept 12326 >>Accept Steamtank Surprise
.target Duke August Foehammer
step
.goto Dragonblight,90.1,52.7
>>Kill |cRXP_ENEMY_Kreug Oathbreaker|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
.complete 12438,1 
.mob Kreug Oathbreaker
step
#completewith next
.goto Dragonblight,89.8,46.8,10,0
.goto Dragonblight,89.7,45.6
.vehicle 27587 >> Enter an |cRXP_FRIENDLY_Alliance Steam Tank|r
.target Alliance Steam Tank
step
>>|cRXP_WARN_Cast|r |T135836:0|t[Ice Cannon] (1) |cRXP_WARN_and|r |T135834:0|t[Ice Prison] (2) |cRXP_WARN_to kill the|r |cRXP_ENEMY_Scourge|r
>>|cRXP_WARN_Cast|r |T134165:0|t[Drop Off Gnome] (3) |cRXP_WARN_when next to |cRXP_ENEMY_Plague Wagons|r to sabotage them. You can only sabotage 1 |cRXP_ENEMY_Plague Wagon|r at a time|r
>>|cRXP_WARN_If the |cRXP_FRIENDLY_Gnome|r stops sabotaging a |cRXP_ENEMY_Plague Wagon|r, return to |cRXP_FRIENDLY_Foehammer|r and get a new |cRXP_FRIENDLY_Tank|r|r
.goto Dragonblight,87.25,50.97
.complete 12326,1 
.cast 49109
.timer 15,Plague Wagon Sabotage RP
.mob Plague Wagon
step
#completewith next
.goto Dragonblight,85.60,49.90,20 >> Travel to the Wintergarde Mausoleum
>>|cRXP_WARN_Stay in the|r |cRXP_FRIENDLY_Alliance Steam Tank|r
step
.goto Dragonblight,85.60,49.90
>>|cRXP_WARN_Cast|r |T135942:0|t[Drop Off Soldier] (4) |cRXP_WARN_at the entrance of the Wintergarde Mausoleum|r
.complete 12326,2 
step
#completewith next
.goto Dragonblight,86.18,50.26,12 >> Enter the Wintergarde Mausoleum
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r and |cRXP_FRIENDLY_Yord|r inside the Mausoleum
.turnin 12326 >>Turn in Steamtank Surprise
.accept 12455 >>Accept Scattered To The Wind
.goto Dragonblight,85.94,50.87
.accept 12462 >>Accept Breaking Off A Piece
.goto Dragonblight,85.86,51.03
.target Ambo Cash
.target Yord "Calamity" Icebeard
step
#completewith next
.goto Dragonblight,86.16,50.18,12 >> Exit the Wintergarde Mausoleum
step
.goto Dragonblight,83.3,46.4,70,0
.goto Dragonblight,83.4,51.0,70,0
.goto Dragonblight,89.1,53.0,70,0
.goto Dragonblight,83.4,51.0
>>Open the |cRXP_PICK_Wintergarde Munitions Crates|r. Loot them for the |cRXP_LOOT_Wintergarde Munitions|r
.complete 12455,1 
step
#completewith next
.goto Dragonblight,85.60,49.90,15,0
.goto Dragonblight,86.18,50.26,12 >> Enter the Wintergarde Mausoleum
step
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12455 >>Turn in Scattered To The Wind
.accept 12457 >>Accept The Chain Gun And You
.target Ambo Cash
step
.goto Dragonblight,86.24,51.06
#completewith next
.vehicle >> Get into a |cRXP_FRIENDLY_Chain Gun|r
step
.goto Dragonblight,86.24,51.06
>>|cRXP_WARN_Cast|r |T132351:0|t[Call Out Injured Soldier] (2) |cRXP_WARN_to make a |cRXP_FRIENDLY_Soldier|r run for safety|r
>>|cRXP_WARN_Cast|r |T136186:0|t[7th Legion Chain Gun] (1) |cRXP_WARN_to kill the |cRXP_ENEMY_Undead|r attacking the|r |cRXP_FRIENDLY_Soldier|r
.complete 12457,1 
step
>>|cRXP_WARN_Exit the|r |cRXP_FRIENDLY_Chain Gun|r
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12457 >>Turn in The Chain Gun And You
.accept 12463 >>Accept Plunderbeard Must Be Found!
.target Ambo Cash
step
.goto Dragonblight,85.7,51.7,12,0
>>|cRXP_WARN_Travel further down into the Mausoleum|r
>>Kill |cRXP_ENEMY_Necrolord X'avius|r and |cRXP_ENEMY_Necrolord Horus|r
>>Kill the |cRXP_ENEMY_Naxxramas Scourge|r
.complete 12462,2 
.mob +Necrolord X'avius
.goto Dragonblight,84.35,51.01
.complete 12462,1 
.mob +Necrolord Horus
.complete 12462,3 
.goto Dragonblight,86.69,52.91
.mob Tattered Abomination
.mob Scourge Technician
.mob Leprous Servant
.mob Naxxramas Dreadguard
.mob Naxxramas Shade
.mob Dreadbone Construct
.mob Wailing Soul
step
.goto Dragonblight,85.86,51.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yord|r
.turnin 12462 >>Turn in Breaking Off A Piece
.target Yord "Calamity" Icebeard
step
.goto Dragonblight,84.17,54.68
>>|cRXP_WARN_Travel downstairs to the back of the Mausoleum. Enter the small tunnel at the back right corner|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of |cRXP_FRIENDLY_Plunderbeard|r
.turnin 12463 >>Turn in Plunderbeard Must Be Found!
.accept 12465 >>Accept Plunderbeard's Journal
.target Plunderbeard
step
.goto Dragonblight,84.0,56.1,20,0
.goto Dragonblight,83.4,55.1,20,0
.goto Dragonblight,82.2,54.0
>>|cRXP_WARN_Continue through to the end of the tunnel|r
>>Kill |cRXP_ENEMY_Dreadbone Constructs|r and |cRXP_ENEMY_Wailing Souls|r. Loot them for their |cRXP_LOOT_Journal Pages|r
.complete 12465,1 
.complete 12465,2 
.complete 12465,3 
.complete 12465,4 
.mob Dreadbone Construct
.mob Wailing Soul
step
.goto Dragonblight,80.9,51.9,20,0
.goto Dragonblight,81.55,50.70,20 >> |cRXP_WARN_Keep going through the Mausoleum and exit through the other entrance|r
.isOnQuest 12465
step
#completewith next
.goto Dragonblight,85.60,49.90,15,0
.goto Dragonblight,86.18,50.26,12 >> Enter the Wintergarde Mausoleum
step
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r in the Mausoleum
.turnin 12465 >>Turn in Plunderbeard's Journal
.accept 12466 >>Accept Chasing Icestorm: The 7th Legion Front
.target Ambo Cash
step
#completewith next
.goto Dragonblight,86.16,50.18,12,0
.goto Dragonblight,85.73,49.99,12 >> Exit the Wintergarde Mausoleum
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12287 >>Turn in Orik Trueheart and the Forgotten Shore
.accept 12290 >>Accept The Murkweed Elixir
.target Orik Trueheart
step
#label chief
#sticky
.goto Dragonblight,90.67,72.89
>>Kill |cRXP_ENEMY_High Shaman Bloodpaw|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
>>|cRXP_WARN_Cast|r |T136075:0|t[Purge] |cRXP_WARN_when he has Bloodlust|r << Shaman
>>|cRXP_WARN_Cast|r |T135894:0|t[Dispel Magic] |cRXP_WARN_when he has Bloodlust|r << Priest
.complete 12441,1 
.mob High Shaman Bloodpaw
step
.goto Dragonblight,89.2,65.4,70,0
.goto Dragonblight,90.2,74.6,70,0
.goto Dragonblight,89.28,65.60,70,0
.goto Dragonblight,90.22,72.24
>>Loot the |cRXP_LOOT_Murkweed|r on the ground
.complete 12290,1 
step
#requires chief
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12290 >>Turn in The Murkweed Elixir
.accept 12291 >>Accept The Forgotten Tale
.target Orik Trueheart
step
#completewith next
.goto Dragonblight,87.1,67.3,100 >> Travel to The Forgotten Shore
step
>>|cRXP_WARN_Use the|r |T134711:0|t[Murkweed Elixir] |cRXP_WARN_at The Forgotten Shore|r
.use 37570 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Forgotten Peasant|r, |cRXP_FRIENDLY_Forgotten Rifleman|r, |cRXP_FRIENDLY_Forgotten Knight|r and |cRXP_FRIENDLY_Forgotten Footman|r
.complete 12291,1 
.goto Dragonblight,87.1,67.3
.complete 12291,2 
.goto Dragonblight,86.2,67.5
.complete 12291,3 
.goto Dragonblight,86.6,68.6,50,0
.goto Dragonblight,85.1,69.7
.complete 12291,4 
.goto Dragonblight,85.2,68.5
.skipgossip
.target Forgotten Peasant
.target Forgotten Rifleman
.target Forgotten Knight
.target Forgotten Footman
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12291 >>Turn in The Forgotten Tale
.accept 12301 >>Accept The Truth Shall Set Us Free
.target Orik Trueheart
step
#completewith next
.goto Dragonblight,86.80,66.19,100 >> Travel to The Forgotten Shore
step
.goto Dragonblight,86.80,66.19
.use 37577 >>|cRXP_WARN_Use|r |T134334:0|t[Orik's Crystalline Orb] |cRXP_WARN_when standing next to the blue |cRXP_PICK_Forgotten Ruins|r on the ground|r
>>|cRXP_WARN_Wait out the RP|r
.cast 48866
.timer 129,The Truth Shall Set Us Free RP
.complete 12301,1 
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12301 >>Turn in The Truth Shall Set Us Free
.accept 12305 >>Accept Parting Thoughts
.target Orik Trueheart
step << Shaman
#completewith next
.hs >> Hearth to Wintergarde Keep
.cooldown item,6948,>2
step << !Shaman
#completewith next
.goto Dragonblight,79.15,47.17,100 >> Travel to Wintergarde Keep
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig|r
.turnin 12305 >>Turn in Parting Thoughts
.accept 12475 >>Accept What Secrets Men Hide
.target Zelig the Visionary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r and |cRXP_FRIENDLY_Windstryke|r
.accept 12477 >>Accept The Path of Redemption
.goto Dragonblight,78.58,48.20
.accept 12476 >>Accept The Return of the Crusade?
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
#completewith Iustus
.goto Dragonblight,84.7,37.1,0,0
>>Kill |cRXP_ENEMY_Onslaught Infantry|r, |cRXP_ENEMY_Onslaught Scouts|r and |cRXP_ENEMY_Onslaught Masons|r. Loot them for the |cRXP_LOOT_Path of Redemption|r
.complete 12476,1 
.complete 12477,1 
.mob Onslaught Infantry
.mob Onslaught Scout
.mob Onslaught Mason
.mob Onslaught Commander Iustus
.mob Scarlet Highlord Daion
step
.goto Dragonblight,87.57,38.13
>>Loot the |cRXP_PICK_Onslaught Map|r on top of the table
.complete 12475,1 
step
#label Iustus
.goto Dragonblight,87.4,38.1
>>|cRXP_WARN_Travel up the Tower|r
>>Kill |cRXP_ENEMY_Commander Iustus|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
.complete 12442,1 
.mob Onslaught Commander Iustus
step
#label scarlet
.goto Dragonblight,87.39,35.30,70,0
.goto Dragonblight,84.58,37.12,70,0
.goto Dragonblight,84.21,40.99,70,0
.goto Dragonblight,86.37,40.31,70,0
.goto Dragonblight,87.85,40.92
>>Kill |cRXP_ENEMY_Onslaught Infantry|r, |cRXP_ENEMY_Onslaught Scouts|r and |cRXP_ENEMY_Onslaught Masons|r. Loot them for the |cRXP_LOOT_Path of Redemption|r
.complete 12476,1 
.complete 12477,1 
.mob Onslaught Infantry
.mob Onslaught Scout
.mob Onslaught Mason
.mob Onslaught Commander Iustus
.mob Scarlet Highlord Daion
step << Shaman
#completewith next
.hs >> Hearth to Wintergarde Keep
.cooldown item,6948,>2
step << !Shaman
#requires scarlet
#completewith next
.goto Dragonblight,79.15,47.17,100 >> Travel to Wintergarde Keep
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig|r in Wintergarde Keep
.turnin 12475 >>Turn in What Secrets Men Hide
.accept 12478 >>Accept Frostmourne Cavern
.target Zelig the Visionary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r and |cRXP_FRIENDLY_Windstryke|r
.turnin 12477 >>Turn in The Path of Redemption
.goto Dragonblight,78.58,48.20
.turnin 12476 >>Turn in The Return of the Crusade?
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12438 >>Turn in Wanted: Kreug Oathbreaker
.turnin 12441 >>Turn in Wanted: High Shaman Bloodpaw
.turnin 12442 >>Turn in Wanted: Onslaught Commander Iustus
.isQuestComplete 12438
.isQuestComplete 12441
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12438 >>Turn in Wanted: Kreug Oathbreaker
.turnin 12441 >>Turn in Wanted: High Shaman Bloodpaw
.isQuestComplete 12438
.isQuestComplete 12441
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12438 >>Turn in Wanted: Kreug Oathbreaker
.turnin 12442 >>Turn in Wanted: Onslaught Commander Iustus
.isQuestComplete 12438
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12441 >>Turn in Wanted: High Shaman Bloodpaw
.turnin 12442 >>Turn in Wanted: Onslaught Commander Iustus
.isQuestComplete 12441
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12438 >>Turn in Wanted: Kreug Oathbreaker
.isQuestComplete 12438
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12441 >>Turn in Wanted: High Shaman Bloodpaw
.isQuestComplete 12441
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Von Zeldig|r
.turnin 12442 >>Turn in Wanted: Onslaught Commander Iustus
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
#completewith Audience
>>Abandon the Elite quests you were unable to complete
.abandon 12438 >> Abandon Wanted: Kreug Oathbreaker
.abandon 12441 >> Abandon Wanted: High Shaman Bloodpaw
.abandon 12442 >> Abandon Wanted: Onslaught Commander Iustus
step
#completewith Audience
.goto Dragonblight,74.8,51.6,50,0
.goto Dragonblight,60.36,51.59,100 >> Travel to Wyrmrest Temple
step
.goto Dragonblight,60.32,51.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nethestrasz|r
.fp Wyrmrest >> Get the Wyrmrest Temple Flight Path
.target Nethestrasz
step
#label Audience
.goto Dragonblight,57.91,54.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tariolstrasz|r
.turnin 12119 >>Turn in Gaining an Audience
.accept 12766 >>Accept Speak with your Ambassador
.target Tariolstrasz
step
#completewith next
.goto Dragonblight,57.91,54.17
.gossipoption 93560 >>Talk to |cRXP_FRIENDLY_Tariolstrasz|r to fly to the top of Wyrmrest Temple
.timer 19,Flight to top of Wyrmrest Temple
.skill coldweatherflying,1,1
.target Tariolstrasz
step
>>|cRXP_WARN_Atop Wyrmrest Temple|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Itharius|r, |cRXP_FRIENDLY_Chromie|r, and |cRXP_FRIENDLY_Nalice|r
.accept 12458 >>Accept Seeds of the Lashers
.goto Dragonblight,59.60,54.47
.accept 12470 >>Accept Mystery of the Infinite
.goto Dragonblight,60.00,54.51
.accept 12447 >>Accept The Obsidian Dragonshrine
.goto Dragonblight,60.07,54.20
.target Nalice
.target Chromie
.target Lord Itharius
step
#completewith next
.goto Dragonblight,59.51,53.33
.gossipoption 93074 >>Talk to |cRXP_FRIENDLY_Torastrasza|r to fly to the bottom of Wyrmrest Temple
.timer 19,Flight to bottom of Wyrmrest Temple
.skill coldweatherflying,1,1
.target Torastrasza
step
#completewith next
.groundgoto Dragonblight,69.87,45.71,30,0
.goto Dragonblight,71.1,39.5,100 >> Travel to the Bronze Dragonshrine
step
.goto Dragonblight,71.1,39.5
>>|cRXP_WARN_Use the|r |T133018:0|t[Hourglass of Eternity]|cRXP_WARN_. Protect it against the incoming waves|r
.cast 49890
.timer 175,Hourglass of Eternity
.complete 12470,1 
.use 37923
.mob Infinite Assailant
.mob Infinite Destroyer
.mob Infinite Chrono-Magus
step
#completewith next
.goto Dragonblight,64.74,27.93,100 >> Travel to the 7th Legion Front
step
.goto Dragonblight,64.74,27.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyralion|r
.turnin 12466 >>Turn in Chasing Icestorm: The 7th Legion Front
.accept 12467 >>Accept Chasing Icestorm: Thel'zan's Phylactery
.target Legion Commander Tyralion
step
.goto Dragonblight,64.61,27.45
.gossipoption 93435 >> Talk to |cRXP_FRIENDLY_"Wyrmbait"|r to make |cRXP_ENEMY_Icestorm|r land
.skipgossip
.timer 45,Chasing Icestorm: Thel'zan's Phylactery RP
.isOnQuest 12467
.target "Wyrmbait"
step
#label Pest
.goto Dragonblight,64.60,27.46,8,0
.goto Dragonblight,64.47,26.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duane|r
.accept 12142 >>Accept Pest Control
.target Duane
step
.goto Dragonblight,63.8,27.5
>>|cRXP_WARN_Wait for |cRXP_ENEMY_Icestorm|r to be harpooned|r
>>Kill |cRXP_ENEMY_Icestorm|r. Loot the |cRXP_LOOT_Phylactery|r that drops on the ground
.complete 12467,1 
.mob Icestorm
step
#requires Pest
.goto Dragonblight,70.20,32.71,0
.goto Dragonblight,70.20,32.71,60,0
.goto Dragonblight,65.30,42.60,60,0
.goto Dragonblight,70.20,32.71,60,0
.goto Dragonblight,65.30,42.60
>>Kill |cRXP_ENEMY_Snowplain Zealots|r, |cRXP_ENEMY_Snowplain Disciples|r and |cRXP_ENEMY_Snowplain Shaman|r
>>Kill |cRXP_ENEMY_Magnataur Patriarchs|r, |cRXP_ENEMY_Magnataur Younglings|r and |cRXP_ENEMY_Magnataur Alphas|r
.complete 12142,1 
.complete 12142,2 
.mob Snowplain Zealot
.mob Snowplain Shaman
.mob Snowplain Disciple
.mob Magnataur Patriarch
.mob Magnataur Youngling
.mob Magnataur Alpha
step
#completewith next
.goto Dragonblight,64.74,27.93,100 >> Travel to the 7th Legion Front
step
.goto Dragonblight,64.47,26.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duane|r
.turnin 12142 >>Turn in Pest Control
.accept 12143 >>Accept Canyon Chase
.target Duane
step
#label Chilltusk
.goto Dragonblight,72.0,27.5,60,0
.goto Dragonblight,72.41,28.86
>>Kill |cRXP_ENEMY_Chilltusk|r. Loot him for his |T134229:0|t[|cRXP_LOOT_Emblazoned Battle Horn|r]
>>|cRXP_WARN_Use the |T134229:0|t[|cRXP_LOOT_Emblazoned Battle Horn|r] to start the quest|r
>>|cRXP_ENEMY_Chilltusk|r |cRXP_WARN_patrols inside the canyon|r
.complete 12143,1 
.collect 36855,1,12146
.accept 12146 >>Accept Disturbing Implications
.use 36855
.unitscan Chilltusk
step
.goto Dragonblight,71.1,39.5
>>Travel to the Bronze Dragonshrine
>>|cRXP_WARN_Use the|r |T133018:0|t[Hourglass of Eternity]|cRXP_WARN_. Protect it against the incoming waves|r
.cast 49890
.timer 175,Hourglass of Eternity
.complete 12470,1 
.use 37923
.mob Infinite Assailant
.mob Infinite Destroyer
.mob Infinite Chrono-Magus
step
#completewith next
.goto Dragonblight,74.3,23.6,60 >> Travel to Frostmourne Cavern
step
.goto Dragonblight,74.3,23.6,50,0
.goto Dragonblight,75.08,20.21
.use 37933 >> |cRXP_WARN_Use|r |T134334:0|t[Zelig's Scrying Orb] |cRXP_WARN_at the|r |cRXP_PICK_Frostmourne Altar|r
>>|cRXP_WARN_Wait out the RP|r
.cast 49817
.timer 110,Frostmourne Cavern RP
.complete 12478,1 
step << Druid wotlk
#completewith DruidTrain2
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <72,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48464 >> Train your class spells
.xp <72,1
.target Loganaar
step << Druid wotlk
#label DruidTrain2
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 53307 >> Train your class spells
.xp <74,1
.target Loganaar
step << DK wotlk
#completewith DKTrain2
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <72,1
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49940 >> Train your class spells
.xp <72,1
.target Amal'thazad
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49904 >> Train your class spells
.xp <73,1
.target Amal'thazad
step << DK wotlk
#label DKTrain2
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49929 >> Train your class spells
.xp <74,1
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain2
.zone Stormwind City >> Teleport to Stormwind
.xp <72,1
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42930 >> Train your class spells
.xp <72,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 43019 >> Train your class spells
.xp <73,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain2
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42939 >> Train your class spells
.xp <74,1
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >> Hearth to Wintergarde Keep
step
.goto Dragonblight,78.55,48.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12467 >>Turn in Chasing Icestorm: Thel'zan's Phylactery
.accept 12472 >>Accept Finality
.target High Commander Halford Wyrmbane
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig|r
.turnin 12478 >>Turn in Frostmourne Cavern
.target Zelig the Visionary
step
#completewith next
.goto Dragonblight,81.9,50.7,20 >> Enter the Wintergarde Mausoleum
step
.goto Dragonblight,81.19,50.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorik|r inside the Mausoleum
.turnin 12472 >>Turn in Finality
.accept 12473 >>Accept An End And A Beginning
.timer 115,Thel'zan Summon RP
.target Legion Commander Yorik
step
.goto Dragonblight,80.98,50.63
>>|cRXP_WARN_Wait out the RP|r
>>Kill |cRXP_ENEMY_Thel'zan the Duskbringer|r
>>|cRXP_ENEMY_Thel'zan the Duskbringer|r |cRXP_WARN_hits hard, so let the |cRXP_FRIENDLY_7th Legion|r tank him|r
.complete 12473,1 
.mob Thel'zan the Duskbringer
step
#completewith next
.goto Dragonblight,82.06,50.73,20 >> Exit the Wintergarde Mausoleum
step
.goto Dragonblight,78.58,48.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12473 >>Turn in An End And A Beginning
.accept 12474 >>Accept To Fordragon Hold!
.target High Commander Halford Wyrmbane
step
#completewith DWard
.goto Dragonblight,77.01,49.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodney|r
.fly Wyrmrest >> Fly to Wyrmrest Temple
.skill coldweatherflying,1,1
.skill riding,300,1
.target Rodney Wells
step
#completewith next
.goto Dragonblight,59.80,54.24,200 >> Travel to Wyrmrest Temple
step
#completewith DWard
.goto Dragonblight,59.80,54.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demestrasz|r
>>|cRXP_FRIENDLY_Demestrasz|r |cRXP_WARN_is on the ground level of the Temple|r
.home >>Set your Hearthstone to Wyrmrest Temple
.target Demestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauriel|r and |cRXP_FRIENDLY_Aurastrasza|r
>>|cRXP_FRIENDLY_Lauriel|r |cRXP_WARN_and |cRXP_FRIENDLY_Aurastrasza|r are on the ground level of the Temple|r
.turnin 12766 >>Turn in Speak with your Ambassador
.accept 12460 >>Accept Report to the Ruby Dragonshrine
.goto Dragonblight,60.00,55.09
.turnin 12146 >>Turn in Disturbing Implications
.accept 12148 >>Accept One of a Kind
.goto Dragonblight,60.02,55.20
.target Lauriel Trueblade
.target Aurastrasza
step
.goto Dragonblight,53.7,60.0,60,0
.goto Dragonblight,50.8,59.1,60,0
.goto Dragonblight,49.1,57.8,60,0
.goto Dragonblight,53.7,60.0
>>Kill |cRXP_ENEMY_Bonesunder|r. Loot him for his |cRXP_LOOT_Horn|r
>>|cRXP_WARN_Avoid his|r |T136105:0|t[Bone Crack] |cRXP_WARN_by moving away when he starts casting it|r
>>|cRXP_ENEMY_Bonesunder|r |cRXP_WARN_patrols slighty|r
.complete 12148,1 
.unitscan Bonesunder
step
#completewith next
.goto Dragonblight,52.21,50.04,60 >> Travel toward |cRXP_FRIENDLY_Ceristrasz|r
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
.turnin 12460 >>Turn in Report to the Ruby Dragonshrine
.accept 12416 >>Accept Heated Battle
.target Ceristrasz
step
.goto Dragonblight,50.34,52.20,-1
.goto Dragonblight,52.34,46.66,-1
>>Kill |cRXP_ENEMY_Frigid Ghoul Attackers|r, |cRXP_ENEMY_Frigid Geist Attackers|r and a |cRXP_ENEMY_Frigid Abomination Attacker|r
>>|cRXP_WARN_The mobs come in waves. They can spawn either south or north of the quest giver so pay attention to your chat|r
>>|cRXP_FRIENDLY_Captain Iskandar|r |cRXP_WARN_will announce where they are coming from. You can follow him around if you get stuck|r
.complete 12416,1 
.complete 12416,2 
.complete 12416,3 
.mob Frigid Ghoul Attacker
.mob Frigid Geist Attacker
.mob Frigid Abomination Attacker
.target Captain Iskandar
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
.turnin 12416 >>Turn in Heated Battle
.accept 12417 >>Accept Return to the Earth
.target Ceristrasz
step
.goto Dragonblight,48.7,48.9,60,0
.goto Dragonblight,47.5,47.6,60,0
.goto Dragonblight,49.2,45.0,80,0
.goto Dragonblight,45.5,47.2,80,0
.goto Dragonblight,46.1,52.6,80,0
.goto Dragonblight,49.3,49.7
>>Loot |T133944:0|t[|cRXP_LOOT_Ruby Acorns|r] on the ground. |cRXP_WARN_They look like small red crystals|r
.use 37727 >>|cRXP_WARN_Use the|r |T133944:0|t[|cRXP_LOOT_Ruby Acorns|r] |cRXP_WARN_on the corpses of|r |cRXP_FRIENDLY_Ruby Keepers|r
.collect 37727,6,12417,1,-1 
.complete 12417,1 
.target Ruby Keeper
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
.turnin 12417 >>Turn in Return to the Earth
.accept 12418 >>Accept Through Fields of Flame
.target Ceristrasz
step
#completewith next
.goto Dragonblight,48.2,50.2,0
.goto Dragonblight,48.4,48.2,0
.goto Dragonblight,47.0,47.5,0
.goto Dragonblight,46.6,49.9,0
>>Kill |cRXP_ENEMY_Frigid Necromancers|r
.complete 12418,1 
.mob Frigid Necromancer
step
.goto Dragonblight,47.89,49.64,30,0
.goto Dragonblight,47.64,48.97
>>|cRXP_WARN_Travel into the Giant Tree Trunk|r
>>Kill |cRXP_ENEMY_Dahlia Suntouch|r. Loot her for her |T133302:0|t[|cRXP_LOOT_Ruby Brooch|r]
>>|cRXP_WARN_Use the |T133302:0|t[|cRXP_LOOT_Ruby Brooch|r] to start the quest|r
.complete 12418,2 
.collect 37833,1,12419
.accept 12419 >>Accept The Fate of the Ruby Dragonshrine
.use 37833
.mob Dahlia Suntouch
step
.goto Dragonblight,48.2,50.2,60,0
.goto Dragonblight,48.4,48.2,60,0
.goto Dragonblight,47.0,47.5,60,0
.goto Dragonblight,46.6,49.9
>>Kill |cRXP_ENEMY_Frigid Necromancers|r
.complete 12418,1 
.mob Frigid Necromancer
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
.turnin 12418 >>Turn in Through Fields of Flame
.accept 12768 >>Accept The Steward of Wyrmrest Temple
.target Ceristrasz
step
#completewith next
.goto Dragonblight,37.1,31.8,45 >>Travel to the Maw of Neltharion
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
.turnin 12447 >>Turn in The Obsidian Dragonshrine
.accept 12261 >>Accept No Place to Run
.accept 12262 >>Accept No One to Save You
.target Serinar
step
#completewith next
.goto Dragonblight,37.1,31.8,45 >> Exit the Maw of Neltharion
step
#completewith next
.goto Dragonblight,39.13,31.87,0
>>Kill |cRXP_ENEMY_Burning Depths Necrolytes|r and |cRXP_ENEMY_Smoldering Skeletons|r
.complete 12262,1 
.complete 12262,2 
.mob Burning Depths Necrolyte
.mob Smoldering Skeleton
step
#label DWard
.goto Dragonblight,41.4,31.9
>>|cRXP_WARN_Use the|r |T135824:0|t[Destructive Wards]. |cRXP_WARN_Defend it against the incoming waves|r
.complete 12261,1 
.cast 48711
.timer 80,Destructive Ward RP
.use 37445
step
.goto Dragonblight,39.52,31.21,70,0
.goto Dragonblight,37.87,33.74,70,0
.goto Dragonblight,40.00,32.18,70,0
.goto Dragonblight,37.16,31.75
>>Kill |cRXP_ENEMY_Burning Depths Necrolytes|r and |cRXP_ENEMY_Smoldering Skeletons|r
.complete 12262,1 
.complete 12262,2 
.mob Burning Depths Necrolyte
.mob Smoldering Skeleton
step
#completewith next
.goto Dragonblight,37.1,31.8,45 >> Travel toward |cRXP_FRIENDLY_Serinar|r in the Maw of Neltharion
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
.turnin 12261 >>Turn in No Place to Run
.turnin 12262 >>Turn in No One to Save You
.accept 12263 >>Accept The Best of Intentions
.target Serinar
step << wotlk !Gnome/!Female
#completewith next
+|cRXP_WARN_Jump up the|r "|cRXP_WARN_exit route|r" |cRXP_WARN_on the side just as you start heading up the cave. This will save you 45 seconds each time you successfuly jump up|r
.link https://www.youtube.com/watch?v=xYKP3ECePVw >> |cRXP_WARN_CLICK HERE|r
step
.goto Dragonblight,34.9,32.0,30,0
.goto Dragonblight,34.2,31.4,30,0
.goto Dragonblight,32.2,31.4,30,0
.goto Dragonblight,31.68,30.96
>>|cRXP_WARN_Travel deep into the Maw of Neltharion and observe |cRXP_ENEMY_Rothin the Decaying|r from close range. Cross the lava instead of going through the center to avoid fighting mobs|r
.complete 12263,1 
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
.turnin 12263 >>Turn in The Best of Intentions
.accept 12264 >>Accept Culling the Damned
.accept 12265 >>Accept Defiling the Defilers
.target Serinar
step << wotlk !Gnome/!Female
#completewith next
+|cRXP_WARN_Jump up the|r "|cRXP_WARN_exit route|r" |cRXP_WARN_on the side just as you start heading up the cave. This will save you 45 seconds each time you successfuly jump up|r
.link https://www.youtube.com/watch?v=xYKP3ECePVw >> |cRXP_WARN_CLICK HERE|r
step
.goto Dragonblight,32.8,30.5,50,0
.goto Dragonblight,33.7,28.7,50,0
.goto Dragonblight,31.9,28.1,50,0
.goto Dragonblight,30.7,29.0,50,0
.goto Dragonblight,31.8,30.6,50,0
.goto Dragonblight,34.1,26.2
>>Kill |cRXP_ENEMY_Burning Depths Necromancers|r, |cRXP_ENEMY_Smoldering Constructs|r and |cRXP_ENEMY_Smoldering Geists|r
>>Click the |cRXP_PICK_Necromantic Runes|r on the ground
.complete 12264,1 
.complete 12264,2 
.complete 12264,3 
.complete 12265,1 
.mob Burning Depths Necromancer
.mob Smoldering Construct
.mob Smoldering Geist
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
.turnin 12264 >>Turn in Culling the Damned
.turnin 12265 >>Turn in Defiling the Defilers
.accept 12267 >>Accept Neltharion's Flame
.target Serinar
step << wotlk !Gnome/!Female
#completewith next
+|cRXP_WARN_Jump up the|r "|cRXP_WARN_exit route|r" |cRXP_WARN_on the side just as you start heading up the cave. This will save you 45 seconds each time you successfuly jump up|r
.link https://www.youtube.com/watch?v=xYKP3ECePVw >> |cRXP_WARN_CLICK HERE|r
step
.goto Dragonblight,34.9,32.0,30,0
.goto Dragonblight,34.2,31.4,30,0
.goto Dragonblight,32.2,31.4,30,0
>>|cRXP_WARN_Use|r |T134807:0|t[Neltharion's Flame] |cRXP_WARN_near|r |cRXP_ENEMY_Rothin the Decaying|r
>>Kill |cRXP_ENEMY_Rothin the Decaying|r
.complete 12267,1 
.goto Dragonblight,31.9,31.3
.complete 12267,2 
.goto Dragonblight,31.43,31.01
.use 37539
.mob Rothin the Decaying
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
.turnin 12267 >>Turn in Neltharion's Flame
.accept 12266 >>Accept Tales of Destruction
.target Serinar
step << wotlk
#completewith next
.goto Dragonblight,35.13,31.65
.goto Dragonblight,42.26,29.65,50 >> |cRXP_WARN_Jump onto the hand's biggest finger. Log out, then back in|r
.link https://www.youtube.com/watch?v=0r54ZZ1o0W8 >> |cRXP_WARN_CLICK HERE|r
step
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fp Fordragon Hold >>Get the Fordragon Hold Flight Path
.target Derek Rammel
step
.goto Dragonblight,37.81,23.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolvar|r
.turnin 12474 >>Turn in To Fordragon Hold!
.accept 12495 >>Accept Audience With The Dragon Queen
.target Highlord Bolvar Fordragon
step
#completewith next
.hs >>Hearth to Wyrmrest Temple
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r and |cRXP_FRIENDLY_Tariolstrasz|r
>>|cRXP_FRIENDLY_Aurastrasza|r |cRXP_WARN_and |cRXP_FRIENDLY_Tariolstrasz|r are on the ground level of the Temple|r
.turnin 12148 >>Turn in One of a Kind
.accept 12149 >>Accept Mighty Magnataur
.goto Dragonblight,60.02,55.20
.turnin 12768 >>Turn in The Steward of Wyrmrest Temple
.accept 12123 >>Accept Informing the Queen
.goto Dragonblight,57.91,54.17
.target Aurastrasza
.target Tariolstrasz
step
#completewith next
.goto Dragonblight,57.91,54.17
.gossipoption 93560 >>Talk to |cRXP_FRIENDLY_Tariolstrasz|r to fly to the top of Wyrmrest Temple
.timer 19,Flight to top of Wyrmrest Temple
.skill coldweatherflying,1,1
.target Tariolstrasz
step
>>|cRXP_WARN_Atop Wyrmrest Temple|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalice|r, |cRXP_FRIENDLY_Chromie|r and |cRXP_FRIENDLY_Alexstrasza|r
.turnin 12266 >>Turn in Tales of Destruction
.goto Dragonblight,60.06,54.18
.turnin 12470 >>Turn in Mystery of the Infinite

.goto Dragonblight,59.99,54.50
.turnin 12495 >>Turn in Audience With The Dragon Queen
.accept 12497 >>Accept Galakrond and the Scourge
.turnin 12123 >>Turn in Informing the Queen
.accept 12435 >>Accept Report to Lord Devrestrasz
.goto Dragonblight,59.83,54.66
.turnin 12419 >>Turn in The Fate of the Ruby Dragonshrine
.goto Dragonblight,59.79,54.70
.target Nalice
.target Chromie
.target Alexstrasza the Life-Binder
step
.goto Dragonblight,59.51,53.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torastrasza|r atop Wyrmrest Temple
.turnin 12497 >>Turn in Galakrond and the Scourge
.accept 12498 >>Accept On Ruby Wings
.target Torastrasza
step
#completewith Bloodfeast
+|cRXP_WARN_Use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_from this point on to travel through the middle of Dragonblight|r
.use 38302
.skill coldweatherflying,1,1
step
#sticky
#label lashers
.goto Dragonblight,64.87,73.49,0,0
>>Kill |cRXP_ENEMY_Emerald Lashers|r. Loot them for their |cRXP_LOOT_Seeds|r
.complete 12458,1 
.mob Emerald Lasher
step
.goto Dragonblight,63.7,76.0,60,0
.goto Dragonblight,62.5,74.5,60,0
.goto Dragonblight,62.8,72.1,60,0
.goto Dragonblight,64.9,72.3,60,0
.goto Dragonblight,64.7,76.4,60,0
.goto Dragonblight,62.8,72.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera|r
>>|cRXP_FRIENDLY_Nishera|r |cRXP_WARN_patrols the road|r
.accept 12454 >>Accept Cycle of Life
.unitscan Nishera the Garden Keeper
step
.goto Dragonblight,64.4,71.5,70,0
.goto Dragonblight,65.4,75.4,70,0
.goto Dragonblight,62.2,75.4
>>Kill |cRXP_ENEMY_Emerald Skytalons|r
.complete 12454,1 
.mob Emerald Skytalon
step
.goto Dragonblight,63.7,76.0,60,0
.goto Dragonblight,62.5,74.5,60,0
.goto Dragonblight,62.8,72.1,60,0
.goto Dragonblight,64.9,72.3,60,0
.goto Dragonblight,64.7,76.4,60,0
.goto Dragonblight,62.8,72.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera|r
>>|cRXP_FRIENDLY_Nishera|r |cRXP_WARN_patrols the road|r
.turnin 12454 >>Turn in Cycle of Life
.accept 12456 >>Accept The Plume of Alystros
.unitscan Nishera the Garden Keeper
step
.goto Dragonblight,64.7,77.0
.use 37881 >>|cRXP_WARN_Use the|r |T136087:0|t[Skytalon Molts] |cRXP_WARN_to bring down |cRXP_ENEMY_Alystros the Verdant Keeper|r perching from the hill in front of you|r
>>Kill |cRXP_ENEMY_Alystros the Verdant Keeper|r. Loot it for the |cRXP_LOOT_Plume|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for it if needed. Skip this step if you're unable to find a group or solo it|r
.complete 12456,1 
.mob Alystros the Verdant Keeper
step
.goto Dragonblight,63.7,76.0,60,0
.goto Dragonblight,62.5,74.5,60,0
.goto Dragonblight,62.8,72.1,60,0
.goto Dragonblight,64.9,72.3,60,0
.goto Dragonblight,64.7,76.4,60,0
.goto Dragonblight,62.8,72.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera|r
>>|cRXP_FRIENDLY_Nishera|r |cRXP_WARN_patrols the road|r
.turnin 12456 >>Turn in The Plume of Alystros
.unitscan Nishera the Garden Keeper
.isQuestComplete 12456
step
.abandon 12456 >> Abandon The Plume of Alystros
step
#requires lashers
#completewith next
.groundgoto Dragonblight,66.42,73.52,30,0
.groundgoto Dragonblight,68.40,67.76,30,0
.goto Dragonblight,65.92,70.48,55 >> Exit the Emerald Dragonshrine
step
#label Bloodfeast
.goto Dragonblight,65.92,70.48,20,0
.goto Dragonblight,67.40,70.74,20,0
.goto Dragonblight,65.92,70.48
>>Kill |cRXP_ENEMY_Bloodfeast|r
.complete 12149,2 
.unitscan Bloodfeast
step
#completewith Abbendis
.vehicle >> |cRXP_WARN_Use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_to fly directly to Abendis's Chapel and avoid fighting the|r |cRXP_ENEMY_Onslaught|r
.use 38302
.skill coldweatherflying,1,1
step
#completewith next
.goto Dragonblight,70.90,75.98,35 >> Travel into the Chapel in New Hearthglen
.skill coldweatherflying,<1,1
step
#label Abbendis
.goto Dragonblight,71.08,77.84
>>Kill |cRXP_ENEMY_High General Abbendis|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for her if needed. Skip this step if you're unable to find a group or solo her|r
.complete 12464,1 
.mob High General Abbendis
step
#completewith next
.goto Dragonblight,66.0,51.5,80 >> Travel to The Mirror of Dawn in central Dragonblight
.skill coldweatherflying,<1,1
step
.goto Dragonblight,66.0,51.5,70,0
.goto Dragonblight,67.9,50.1,70,0
.goto Dragonblight,69.2,51.4
>>Kill |cRXP_ENEMY_Iceshatter|r
>>|cRXP_WARN_Avoid his|r |T135851:0|t[Pulsing Shards] |cRXP_WARN_by moving away when he starts casting it|r
>>|cRXP_ENEMY_Iceshatter|r |cRXP_WARN_patrols the north side of the frozen lake|r
.complete 12149,1 
.unitscan Iceshatter
.skill coldweatherflying,<1,1
step
#completewith next
.goto Dragonblight,68.85,72.52,25,0
.goto Dragonblight,69.09,71.68,15,0
.goto Dragonblight,68.70,71.34
.cast 50426 >> Exit New Hearthglen via the gap in the walls
.vehicle >>|cRXP_WARN_Move directly to where the waypoint is and then use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_to mount up|r
.use 38302
.skill coldweatherflying,1,1
step
.goto Dragonblight,66.0,51.5,70,0
.goto Dragonblight,67.9,50.1,70,0
.goto Dragonblight,69.2,51.4
>>|cRXP_WARN_Dismount the |cRXP_FRIENDLY_Wyrmrest Vanquisher|r once you're at|r |cRXP_ENEMY_Iceshatter|r
>>Kill |cRXP_ENEMY_Iceshatter|r
>>|cRXP_WARN_Avoid his|r |T135851:0|t[Pulsing Shards] |cRXP_WARN_by moving away when he starts casting it|r
>>|cRXP_ENEMY_Iceshatter|r |cRXP_WARN_patrols the north side of the frozen lake|r
.complete 12149,1 
.unitscan Iceshatter
.skill coldweatherflying,1,1
step
#completewith Shredder
+|cRXP_WARN_From this point forward you can continuously use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_to fly through the middle of Dragonblight|r
.use 38302
.skill coldweatherflying,1,1
step << skip
.goto Dragonblight,71.1,39.5
>>Ride to the Bronze Dragonshrine. Use the Hourglass of Eternity in your bags, and then protect it against the incoming waves. The objective should complete after 2m 55s
>>This quest functions differently to the previous one for some reason, so you cannot cheese/skip it like before
.complete 13343,1 
.use 44450
step
.goto Dragonblight,68.3,43.1,70,0
.goto Dragonblight,67.5,39.5,70,0
.goto Dragonblight,68.6,36.4
>>Kill |cRXP_ENEMY_Drakegore|r
>>|cRXP_ENEMY_Drakegore|r |cRXP_WARN_patrols slighty|r
.complete 12149,3 
.unitscan Drakegore
step
#completewith next
.hs >>Hearth to Wyrmrest Temple
.cooldown item,6948,>2
step << skip
>>Head back to the top of the temple
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
.turnin 13343 >>Turn in Mystery of the Infinite, Redux
.goto Dragonblight,59.99,54.50
.target Chromie
step
.goto Dragonblight,60.02,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
>>|cRXP_FRIENDLY_Aurastrasza|r |cRXP_WARN_is on the ground level of the Temple|r
.turnin 12149 >>Turn in Mighty Magnataur
.accept 12150 >>Accept Reclusive Runemaster
.target Aurastrasza
step
.goto Dragonblight,73.27,50.55
>>Attack |cRXP_ENEMY_Dregmar Runebrand|r. |cRXP_WARN_He will submit at 20% health|r
>>|cRXP_WARN_MOVE AWAY from|r |T135826:0|t[Explosive Runes] |cRXP_WARN_he places beneath you. They detonate after 4 seconds and deal significant fire damage|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
.complete 12150,1 
.mob Dregmar Runebrand
step
#completewith next
.goto Dragonblight,64.47,26.36,100 >> Travel to the 7th Legion Front
step
.goto Dragonblight,64.47,26.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duane|r
.turnin 12143 >>Turn in Canyon Chase
.target Duane
step << skip
#sticky
.goto Dragonblight,58.02,39.16,0,0
>>Look for a |cRXP_ENEMY_Frost Wyrm|r flying around the Dragon Wastes and then use the |T134339:0|t[Seeds of Nature's Wrath] on it and kill it. Use the |T134124:0|t[Ruby Beacon of the Dragon Queen] to summon a flying mount if you're having trouble pulling them.
.complete 12459,1 
.use 37887
.use 38302
.isOnQuest 12459
.unitscan Reanimated Frost Wyrm
.mob Weakened Reanimated Frost Wyrm
step << skip
#questguide
.goto Dragonblight,48.44,24.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Goblin|r corpse on the ground
.accept 12469 >>Accept Return to Sender
.target Nozzlerust Supply Runner
step
#completewith NozzleP
.goto Dragonblight,54.46,23.60,100 >> Travel to Nozzlerust Post
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narf|r, |cRXP_FRIENDLY_Zivlix|r and |cRXP_FRIENDLY_Xink|r
>>|cRXP_FRIENDLY_Narf|r |cRXP_WARN_patrols slighty|r
.accept 12043 >>Accept Nozzlerust Defense
.goto Dragonblight,54.46,23.60
.accept 12045 >>Accept Shaved Ice
.goto Dragonblight,54.70,23.25
.turnin 12469 >>Turn in Return to Sender
.accept 12044 >>Accept Stocking Up
.goto Dragonblight,55.02,23.42
.isOnQuest 12469
.target Narf
.target Zivlix
.target Xink
step
#label NozzleP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narf|r, |cRXP_FRIENDLY_Zivlix|r and |cRXP_FRIENDLY_Xink|r
>>|cRXP_FRIENDLY_Narf|r |cRXP_WARN_patrols slighty|r
.accept 12043 >>Accept Nozzlerust Defense
.goto Dragonblight,54.46,23.60
.accept 12045 >>Accept Shaved Ice
.goto Dragonblight,54.70,23.25
.accept 12044 >>Accept Stocking Up
.goto Dragonblight,55.02,23.42
.target Narf
.target Zivlix
.target Xink
step
.goto Dragonblight,53.6,20.3,70,0
.goto Dragonblight,57.3,16.8,70,0
.goto Dragonblight,55.0,18.8,70,0
.goto Dragonblight,47.2,18.6
>>Kill |cRXP_ENEMY_Crystalline Ice Elementals|r. Loot them for their |cRXP_LOOT_Shard Clusters|r
.complete 12045,1 
.mob Crystalline Ice Elemental
step
#completewith next
.goto Dragonblight,54.46,31.18,100 >> Travel to The Dragon Wastes
step
.goto Dragonblight,54.46,31.18
>>|cRXP_WARN_Use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_and mount the|r |cRXP_FRIENDLY_Wyrmrest Vanquisher|r
>>|cRXP_WARN_Cast|r |T135808:0|t[Engulfing Fireball] (2) |cRXP_WARN_to kill|r |cRXP_ENEMY_Thiassi the Lightning Bringer|r
>>Kill |cRXP_ENEMY_Grand Necrolord Antiok|r after you get dismounted. Loot the |cRXP_LOOT_Scythe of Antiok|r he drops on the ground
.complete 12498,2 
.use 38302
.mob Thiassi the Lightning Bringer
.mob Grand Necrolord Antiok
step
.goto Dragonblight,55.78,34.34
>>|cRXP_WARN_Use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_to mount the |cRXP_FRIENDLY_Wyrmrest Vanquisher|r again|r
>>|cRXP_WARN_Cast|r |T135808:0|t[Engulfing Fireball] (2) |cRXP_WARN_to kill|r |cRXP_ENEMY_Wastes Scavengers|r
>>|cRXP_WARN_Cast|r |T132278:0|t[Devour Ghoul] (3) |cRXP_WARN_when in melee range of a|r |cRXP_ENEMY_Wastes Scavenger|r |cRXP_WARN_to recover Health and Mana|r
.complete 12498,1 
.use 38302
.mob Wastes Scavenger
step
.goto Dragonblight,56.22,27.17,60,0
.goto Dragonblight,59.04,31.16,60,0
.goto Dragonblight,59.26,31.84,60,0
.goto Dragonblight,56.22,27.17,60,0
.goto Dragonblight,59.04,31.16,60,0
.goto Dragonblight,59.26,31.84
>>|cRXP_WARN_Dismount the|r |cRXP_FRIENDLY_Wyrmrest Vanquisher|r
>>Kill a |cRXP_ENEMY_Wastes Taskmaster|r and |cRXP_ENEMY_Wastes Diggers|r
>>Loot the |cRXP_LOOT_Composite Ore|r on the ground
.complete 12043,1 
.complete 12043,2 
.complete 12044,1 
.mob Wastes Taskmaster
.mob Wastes Digger
step
#completewith next
.goto Dragonblight,55.0,23.9,100 >> Travel to Nozzlerust Post
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narf|r, |cRXP_FRIENDLY_Zivlix|r and |cRXP_FRIENDLY_Xink|r
>>|cRXP_FRIENDLY_Narf|r |cRXP_WARN_patrols slighty|r
.turnin 12043 >>Turn in Nozzlerust Defense
.goto Dragonblight,55.0,23.9,20,0
.goto Dragonblight,54.50,23.70
.turnin 12045 >>Turn in Shaved Ice
.accept 12046 >>Accept Soft Packaging
.goto Dragonblight,54.70,23.25
.turnin 12044 >>Turn in Stocking Up
.goto Dragonblight,55.02,23.42
.target Narf
.target Zivlix
.target Xink
step
.goto Dragonblight,53.9,26.2,70,0
.goto Dragonblight,51.1,26.3,70,0
.goto Dragonblight,51.1,24.0,70,0
.goto Dragonblight,53.9,26.2
>>Kill |cRXP_ENEMY_Jormungar Tunnelers|r and |cRXP_ENEMY_Dragonbone Condors|r. Loot them for their |cRXP_LOOT_Hides|r
.complete 12046,1 
.mob Dragonbone Condor
.mob Jormungar Tunneler
step
#completewith next
.goto Dragonblight,54.70,23.25,100 >> Travel to Nozzlerust Post
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zivlix|r and |cRXP_FRIENDLY_Xink|r
.turnin 12046 >>Turn in Soft Packaging
.accept 12047 >>Accept Something That Doesn't Melt
.goto Dragonblight,54.70,23.25
.accept 12049 >>Accept Hard to Swallow
.goto Dragonblight,55.02,23.42
.target Zivlix
.target Xink
step
#sticky
#label bonechunks
.goto Dragonblight,57.3,24.1,70,0
.goto Dragonblight,59.6,26.0,70,0
.goto Dragonblight,60.7,28.1,70,0
.goto Dragonblight,62.9,29.3,70,0
.goto Dragonblight,53.0,25.7,70,0
.goto Dragonblight,51.3,26.5,70,0
.goto Dragonblight,57.3,24.1,70,0
.goto Dragonblight,59.6,26.0,70,0
.goto Dragonblight,60.7,28.1
>>Loot the |cRXP_LOOT_Splintered Bone Chunks|r on the ground
>>|cRXP_WARN_They are found around the massive dragon bones in The Dragon Wastes|r
.complete 12047,1 
step
.goto Dragonblight,58.4,23.2
>>|cRXP_WARN_Attack a |cRXP_ENEMY_Hulking Jormungar|r to 80% health to weaken it. A yellow message will pop up saying "The Hulking Jormungar falters..."|r
>>|cRXP_WARN_Use the|r |T133715:0|t[Potent Explosive Charges] |cRXP_WARN_on the |cRXP_ENEMY_Hulking Jormungar|r to blow it up once it's weakened|r
>>Loot the |cRXP_LOOT_Seared Jormungar Meat|r on the ground after
.use 36732
.complete 12049,1 
.mob Hulking Jormungar
step
#requires bonechunks
#completewith next
.goto Dragonblight,54.70,23.25,100 >> Travel to Nozzlerust Post
step
#label Shredder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zivlix|r, |cRXP_FRIENDLY_Xink|r, and |cRXP_FRIENDLY_Narf|r
>>|cRXP_FRIENDLY_Narf|r |cRXP_WARN_patrols slighty|r
.turnin 12047 >>Turn in Something That Doesn't Melt
.goto Dragonblight,54.70,23.25
.turnin 12049 >>Turn in Hard to Swallow
.accept 12050 >>Accept Lumber Hack
.goto Dragonblight,55.02,23.42
.accept 12052 >>Accept Harp on This!
.goto Dragonblight,55.0,23.9,20,0
.goto Dragonblight,54.50,23.70
.target Narf
.target Zivlix
.target Xink
step
#label harpies
>>|cRXP_WARN_Use|r |T133015:0|t[Xink's Shredder Control Device] |cRXP_WARN_to take control of|r |cRXP_FRIENDLY_Xink's Shredder|r
>>|cRXP_WARN_Cast|r |T132407:0|t[Twisting Blade] (1) |cRXP_WARN_and|r |T134427:0|t[Launch Saw Blades] (2) |cRXP_WARN_to kill |cRXP_ENEMY_Coldwind Harpies|r and the|r |cRXP_ENEMY_Mistress of the Coldwind|r
>>|cRXP_WARN_Cast|r |T136222:0|t[Hustle] (3) |cRXP_WARN_to move faster|r
>>|cRXP_WARN_Cast|r |T135769:0|t[Emergency Repair Kit] (4) |cRXP_WARN_to heal|r |cRXP_FRIENDLY_Xink's Shredder|r
>>|cRXP_WARN_Cast|r |T135437:0|t[Gather Lumber] (6) |cRXP_WARN_on |cRXP_PICK_Coldwind Trees|r to harvest|r |cRXP_LOOT_Coldwind Lumber|r
>>|cRXP_WARN_You may also kill |cRXP_ENEMY_Coldwind Harpies|r while not inside|r |cRXP_FRIENDLY_Xink's Shredder|r
.complete 12052,1 
.goto Dragonblight,45.8,12.5,70,0
.goto Dragonblight,44.6,7.8,70,0
.goto Dragonblight,46.6,10.5
.complete 12052,2 
.goto Dragonblight,47.3,18.6,70,0
.goto Dragonblight,52.8,19.1
.complete 12050,1 
.goto Dragonblight,47.3,18.6,70,0
.goto Dragonblight,52.8,19.1
.use 36734
.use 38302
.unitscan Mistress of the Coldwind
.mob Coldwind Waste Huntress
.mob Coldwind Witch
step
#completewith StiffN
+|cRXP_WARN_From this point forward you can continuously use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_to fly through the middle of Dragonblight|r
.use 38302
.skill coldweatherflying,1,1
step
#requires harpies
#completewith next
.goto Dragonblight,55.02,23.42,100 >> Travel to Nozzlerust Post
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xink|r and |cRXP_FRIENDLY_Narf|r
>>|cRXP_FRIENDLY_Narf|r |cRXP_WARN_patrols slighty|r
.turnin 12050 >>Turn in Lumber Hack
.goto Dragonblight,55.02,23.42
.turnin 12052 >>Turn in Harp on This!
.accept 12112 >>Accept Stiff Negotiations
.goto Dragonblight,55.0,23.9,20,0
.goto Dragonblight,54.50,23.70
.target Narf
.target Xink
step
#completewith next
.goto Dragonblight,59.40,18.19,100 >> Travel to The Crystal Vice
>>|cRXP_WARN_Go down through the canyon|r
step
#label StiffN
.goto Dragonblight,59.40,18.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r
.turnin 12112 >>Turn in Stiff Negotiations
.accept 12075 >>Accept Slim Pickings
.target Zort
step
#completewith next
.goto Dragonblight,59.8,15.5,60,0
.goto Dragonblight,57.3,12.4,60,0
.goto Dragonblight,56.13,11.90,60 >> Enter the Ice Heart Cavern
step
.goto Dragonblight,56.13,11.90
>>Loot the |cRXP_FRIENDLY_Ravaged Crystalline Ice Giant|r for the |cRXP_LOOT_Sample of Rockflesh|r
.complete 12075,1 
.target Ravaged Crystalline Ice Giant
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r
.goto Dragonblight,59.40,18.19
.turnin 12075 >>Turn in Slim Pickings
.accept 12076 >>Accept Messy Business
.target Zort
step
.goto Dragonblight,58.97,17.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ko'char|r
.accept 12079 >>Accept Stomping Grounds
.target Ko'char the Unbreakable
step
.goto Dragonblight,60.24,16.51
>>|cRXP_WARN_Agro an |cRXP_ENEMY_Ice Heart Jormungar|r. Tank them until you get affected by their|r |T136007:0|t[Corrosive Spit] |cRXP_WARN_debuff|r
>>|cRXP_WARN_Once you have the|r |T136007:0|t[Corrosive Spit] |cRXP_WARN_debuff, use|r |T134436:0|t[Zort's Scraper] |cRXP_WARN_to collect it. Do this twice|r
.complete 12076,1 
.use 36775
.mob Ice Heart Jormungar Spawn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r, |cRXP_FRIENDLY_Ko'char|r, then |cRXP_FRIENDLY_Zort|r again
.turnin 12076 >>Turn in Messy Business
.accept 12077 >>Accept Apply This Twice A Day
.goto Dragonblight,59.40,18.19
.turnin 12077 >>Turn in Apply This Twice A Day
.accept 12080 >>Accept Really Big Worm
.goto Dragonblight,58.97,17.82
.accept 12078 >>Accept Worm Wrangler
.goto Dragonblight,59.40,18.19
.target Zort
.target Ko'char the Unbreakable
step
#completewith next
.goto Dragonblight,59.8,15.5,60,0
.goto Dragonblight,57.18,12.17,100 >> Enter the Ice Heart Cavern
step
#completewith next
.goto Dragonblight,53.8,11.4,60,0
.goto Dragonblight,52.7,17.3,60 >> Travel toward |cRXP_ENEMY_Rattlebore|r at the end of the Cavern
step
#sticky
#label JormungarCave
.goto Crystalsong Forest,31.97,75.86,0,0
>>Kill |cRXP_ENEMY_Ice Heart Jormungar Feeders|r
>>|cRXP_WARN_Use the|r |T132762:0|t[Sturdy Crates] |cRXP_WARN_on |cRXP_ENEMY_Ice Heart Jormungar Spawns|r to capture them.|r Loot the |cRXP_LOOT_Captured Jormungar Spawn|r on the ground after
.complete 12079,1 
.complete 12078,1 
.use 36771
.mob Ice Heart Jormungar Feeder
.mob Ice Heart Jormungar Spawn
step
.goto Dragonblight,50.68,17.79
>>|cRXP_WARN_Use|r |T134873:0|t[Zort's Protective Elixir] |cRXP_WARN_to protect yourself from|r |T136007:0|t[Corrosive Spit]
>>Kill |cRXP_ENEMY_Rattlebore|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
.complete 12080,1 
.mob Rattlebore
.use 36770
step << wotlk
#requires JormungarCave
#completewith next
.goto Dragonblight,49.86,16.61,-1
.goto Dragonblight,46.39,21.56,-1
>>|cRXP_WARN_Jump onto one of the |cRXP_PICK_Large Blue Rocks|r. Log out, then back in|r
.vehicle >>|cRXP_WARN_Use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_to mount the |cRXP_FRIENDLY_Wyrmrest Vanquisher|r again to fly to |cRXP_FRIENDLY_Zort|r and|r |cRXP_FRIENDLY_Ko'char|r
.link https://www.youtube.com/watch?v=oRQQMuodz4A >> |cRXP_WARN_CLICK HERE|r
.use 38302
step
#requires JormungarCave
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r and |cRXP_FRIENDLY_Ko'char|r
.turnin 12078 >>Turn in Worm Wrangler
.goto Dragonblight,59.40,18.19
.turnin 12079 >>Turn in Stomping Grounds
.turnin -12080 >>Turn in Really Big Worm
.goto Dragonblight,58.97,17.82
.target Zort
.target Ko'char the Unbreakable
step
#sticky
#label RBWorm
.abandon 12080 >>Abandon Really Big Worm
step << Druid
#completewith DruidTrain3
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <74,1
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 53307 >> Train your class spells
.xp <74,1
.target Loganaar
step << Druid
#label DruidTrain3
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48440 >> Train your class spells
.xp <75,1
.target Loganaar
step << DK
#completewith DKTrain3
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <73,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49904 >> Train your class spells
.xp <73,1
.target Amal'thazad
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49929 >> Train your class spells
.xp <74,1
.target Amal'thazad
step << DK
#label DKTrain3
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49923 >> Train your class spells
.xp <75,1
.target Amal'thazad
step << Druid/DK
#completewith Runemaster
.hs >> Hearth to Wyrmrest Temple
.cooldown item,6948,>2
step
#completewith Runemaster
.goto Dragonblight,60.02,55.20,100 >> Travel to Wyrmrest Temple
step
#completewith wings
+|cRXP_WARN_From this point forward you can use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_in your bags to summon a flying mount to travel through the middle of Dragonblight|r
.use 38302
.skill coldweatherflying,1,1
step
#label Runemaster
.goto Dragonblight,60.02,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
>>|cRXP_FRIENDLY_Aurastrasza|r |cRXP_WARN_is on the ground level of the Temple|r
.turnin 12150 >>Turn in Reclusive Runemaster
.accept 12151 >>Accept Wanton Warlord
.target Aurastrasza
step
#completewith next
.goto Dragonblight,57.2,76.0,100 >> Travel south of the Azure Dragonshrine
step
#requires RBWorm
.goto Dragonblight,57.2,76.0
>>|cRXP_WARN_Use the|r |T134229:0|t[Emblazoned Battle Horn] |cRXP_WARN_to summon|r |cRXP_ENEMY_Grom'thar the Thunderbringer|r
>>Kill |cRXP_ENEMY_Grom'thar the Thunderbringer|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
.complete 12151,1 
.use 36864
.mob Grom'thar the Thunderbringer
step
#completewith next
.goto Dragonblight,60.02,55.20,100 >> Travel to Wyrmrest Temple
step
.goto Dragonblight,60.02,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
>>|cRXP_FRIENDLY_Aurastrasza|r |cRXP_WARN_is on the ground level of the Temple|r
.turnin 12151 >>Turn in Wanton Warlord
.target Aurastrasza
step
#label wings
.use 38302 >>|cRXP_WARN_Use the|r |T134124:0|t[Ruby Beacon of the Dragon Queen] |cRXP_WARN_to mount the |cRXP_FRIENDLY_Wyrmrest Vanquisher|r again and fly to the top of Wyrmrest Temple|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza|r and |cRXP_FRIENDLY_Itharius|r
.turnin 12498 >>Turn in On Ruby Wings
.accept 12499 >>Accept Return To Angrathar
.goto Dragonblight,59.83,54.66
.turnin 12458 >>Turn in Seeds of the Lashers

.goto Dragonblight,59.60,54.46
.target Alexstrasza the Life-Binder
.target Lord Itharius
step
#completewith next
.goto Dragonblight,59.51,53.33
.gossipoption 93073 >>Talk to |cRXP_FRIENDLY_Torastrasza|r to fly to the middle level of the Temple
.timer 25,Flight to Devrestrasz
.skill coldweatherflying,1,1
.isOnQuest 12435
.target Torastrasza
step
.goto Dragonblight,59.24,54.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrestrasz|r
>>|cRXP_FRIENDLY_Devrestrasz|r |cRXP_WARN_is on the middle level of the Temple|r
.turnin 12435 >>Turn in Report to Lord Devrestrasz
.daily 12372 >>Accept Defending Wyrmrest Temple
.target Lord Devrestrasz
step
.goto Dragonblight,58.35,55.22,-1
.goto Dragonblight,58.28,53.73,-1
>>|cRXP_WARN_Dismount before talking to a|r |cRXP_FRIENDLY_Wyrmrest Defender|r
.gossipoption 93574 >>Mount a |cRXP_FRIENDLY_Wyrmrest Defender|r
>>|cRXP_FRIENDLY_Wyrmrest Defenders|r |cRXP_WARN_are on the middle level of the Temple|r
.isOnQuest 12372
.target Wyrmrest Defender
step
#completewith next
>>|cRXP_WARN_Cast|r |T135789:0|t[Destabilize Azure Dragonshrine] (5) |cRXP_WARN_on the |cRXP_PICK_Skybeam|r near the ground to destabilize Azure Dragonshrine|r
.complete 12372,3 
.goto Dragonblight,55.34,66.20
.isOnQuest 12372
step
>>|cRXP_WARN_Cast|r |T135812:0|t[Flame Breath] (1) |cRXP_WARN_and|r |T135817:0|t[Immolation] (2) |cRXP_WARN_to kill |cRXP_ENEMY_Azure Dragons|r and|r |cRXP_ENEMY_Azure Drakes|r
>>|cRXP_WARN_Cast|r |T135953:0|t[Renew] (3) |cRXP_WARN_to heal your|r |cRXP_FRIENDLY_Wyrmrest Defender|r
>>|cRXP_WARN_Cast|r |T135788:0|t[Blazing Speed] (4) |cRXP_WARN_on cooldown to move faster|r
>>|cRXP_WARN_Make sure you're within 100 yards of a mob when it dies or you won't get credit|r
.complete 12372,1 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.complete 12372,2 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.isOnQuest 12372
.mob Azure Dragon
.mob Azure Drake
.skipgossip
step
>>|cRXP_WARN_Cast|r |T135789:0|t[Destabilize Azure Dragonshrine] (5) |cRXP_WARN_on the |cRXP_PICK_Skybeam|r near the ground to destabilize Azure Dragonshrine|r
.complete 12372,3 
.goto Dragonblight,55.34,66.20
.isOnQuest 12372
step
>>|cRXP_WARN_Cast|r |T135812:0|t[Flame Breath] (1) |cRXP_WARN_and|r |T135817:0|t[Immolation] (2) |cRXP_WARN_to kill |cRXP_ENEMY_Azure Dragons|r and|r |cRXP_ENEMY_Azure Drakes|r
>>|cRXP_WARN_Cast|r |T135953:0|t[Renew] (3) |cRXP_WARN_to heal your|r |cRXP_FRIENDLY_Wyrmrest Defender|r
>>|cRXP_WARN_Cast|r |T135788:0|t[Blazing Speed] (4) |cRXP_WARN_on cooldown to move faster|r
>>|cRXP_WARN_Make sure you're within 100 yards of a mob when it dies or you won't get credit|r
.complete 12372,1 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.complete 12372,2 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.isOnQuest 12372
.mob Azure Dragon
.mob Azure Drake
step
#completewith next
.goto Dragonblight,49.15,75.65,100 >> |cRXP_WARN_Fly to Moa'ki Harbor on the|r |cRXP_FRIENDLY_Wyrmrest Defender|r
>>|cRXP_WARN_Cast|r |T135788:0|t[Blazing Speed] (4) |cRXP_WARN_if it's available|r
.isOnQuest 12372
step
.goto Dragonblight,49.15,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u|r
.turnin 12032 >>Turn in Conversing With the Depths
.isQuestComplete 12032
.target Toalu'u the Mystic
step
#completewith next
.goto Dragonblight,48.52,74.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cid|r
.fly Wyrmrest Temple >> Fly to Wyrmrest Temple
.target Cid Flounderfix
.skill coldweatherflying,1,1
.skill riding,300,1
step
#completewith DWT
.goto Dragonblight,57.91,54.17
.gossipoption 93559 >>Talk to |cRXP_FRIENDLY_Tariolstrasz|r to fly to the middle level of the Temple
.timer 16,Flight to Devrestrasz
.skill coldweatherflying,1,1
.isOnQuest 12372
.target Tariolstrasz
step
#completewith next
.goto Dragonblight,59.24,54.32,200 >> Travel to Wyrmrest Temple
.skill coldweatherflying,<1,1
step
#label DWT
.goto Dragonblight,59.24,54.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrestrasz|r
>>|cRXP_FRIENDLY_Devrestrasz|r |cRXP_WARN_is on the middle level of the Temple|r
.turnin 12372 >>Turn in Defending Wyrmrest Temple
.isOnQuest 12372
.target Lord Devrestrasz
step
#completewith Angrathar
.goto Dragonblight,60.32,51.55
>>|cRXP_WARN_Drop down to the flight master. Cast|r |T135896:0|t[Divine Shield] |cRXP_WARN_or|r |T135964:0|t[Hand of Protection] |cRXP_WARN_to not die to fall damage|r << Paladin
>>|cRXP_WARN_Drop down to the flight master. Be careful to not die to fall damage|r << !Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nethestrasz|r
.fly Fordragon >> Fly to Fordragon Hold
.target Nethestrasz
.skill coldweatherflying,1,1
step
#completewith next
.goto Dragonblight,37.81,23.41,100 >> Travel to Fordragon Hold
.skill coldweatherflying,<1,1
step
#label Angrathar
.groundgoto Dragonblight,37.0,25.1,30,0
.goto Dragonblight,37.81,23.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolvar|r
>>|cRXP_WARN_Get ready to press Escape if you don't want to watch the cinematic|r
.turnin 12499 >>Turn in Return To Angrathar
.target Highlord Bolvar Fordragon
step << !Druid !DK
.goto Dragonblight,38.42,19.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza|r
.accept 13347 >>Accept Reborn From The Ashes
.target Alexstrasza the Life-Binder
step << !Druid !DK
.goto Dragonblight,38.01,19.64
>>Loot |cRXP_PICK_Fordragon's Shield|r on the ground
.complete 13347,1 
step << Mage
.goto Dragonblight,37.77,23.43
.zone Stormwind City >> Move away from |cRXP_FRIENDLY_Alexstrasza|r to lose the |T237543:0|t[Serenity] buff. Teleport to Stormwind
step << Mage
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 43019 >> Train your class spells
.xp <73,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42939 >> Train your class spells
.xp <74,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42955 >> Train your class spells
.xp <75,1
.target Elsharin
.target Jennea Cannon
step << !Druid !DK !Mage
#completewith next
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fly Valiance Keep >> Fly to Valiance Keep. Alternatively pay a |T626001:0|t|cFF3FC7EBMage|r for a portal to Stormwind
.zoneskip Stormwind City
.zoneskip Elwynn Forest
.xp >73,1
.skill coldweatherflying,1,1
.target Derek Rammel
step << !DK !Druid !Mage
.goto BoreanTundra,59.70,69.26
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nelno|r. Ask him for a teleport to Stormwind Harbor
.zoneskip Elwynn Forest
.skipgossip
.xp >73,1
.skill coldweatherflying,1,1
.target Nelno Copperbeam
step << !Druid !DK !Mage
#completewith Modera
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fly Stars' Rest >> Fly to Stars' Rest. Alternatively pay a |T626001:0|t|cFF3FC7EBMage|r for a portal to Stormwind
.zoneskip Stormwind City
.zoneskip Elwynn Forest
.zoneskip Dalaran
.xp <74,1
.skill coldweatherflying,1,1
.target Derek Rammel
step << !Druid !DK !Mage
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.accept 12794 >>Accept The Magical Kingdom of Dalaran
.zoneskip Elwynn Forest
.zoneskip Stormwind City
.zoneskip Dalaran
.xp <74,1
.skill coldweatherflying,1,1
.target Image of Archmage Modera
step << !DK !Druid !Mage
#label Modera
.goto Dragonblight,29.00,55.45
.zone Dalaran >>Ask |cRXP_FRIENDLY_Modera|r for a teleport to Dalaran
.zoneskip Stormwind City
.skipgossip
.xp <74,1
.skill coldweatherflying,1,1
.isOnQuest 12794
.target Image of Archmage Modera
step << !DK !Druid !Mage
.abandon 12794 >> Abandon The Magical Kingdom of Dalaran. |cRXP_WARN_DO NOT TURN THIS IN|r
step << !DK !Druid !Mage
.goto Dalaran,40.10,62.78,150 >> Travel to Dalaran
.zoneskip Stormwind City
.skill coldweatherflying,<1,1
.isOnQuest 13347
step << !DK !Druid !Mage
.goto Dalaran,40.2,56.3,50,0
.goto Dalaran,40.10,62.78
.zone Stormwind City >>Go into The Silver Enclave in Dalaran. Take the portal to Stormwind
.skill coldweatherflying,<1,1
.zoneskip Stormwind City
.isOnQuest 13347
step << !DK !Druid !Mage
.goto Dalaran,40.2,56.3,50,0
.goto Dalaran,40.10,62.78
.zone Stormwind City >>Go into The Silver Enclave in Dalaran. Take the portal to Stormwind
.xp <74,1
.skill coldweatherflying,1,1
.zoneskip Stormwind City
.isOnQuest 13347
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 49237 >> Train your class spells
.xp <73,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 49270 >> Train your class spells
.xp <74,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 49280 >> Train your class spells
.xp <75,1
.target Farseer Umbrua
step << Warlock
.goto StormwindNew,42.26,81.77,20,0
.goto StormwindNew,40.64,84.94,15,0
.goto StormwindNew,39.88,84.19
>>Go into The Slaughtered Lamb and go downstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula|r, |cRXP_FRIENDLY_Demisette|r or |cRXP_FRIENDLY_Sandahl|r
.train 47892 >> Train your class spells
.xp <74,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Paladin/Priest
#completewith PaPrTraining1
.goto StormwindNew,52.9,50.9,20 >> Enter the Stormwind Cathedral
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48931 >> Train your class spells
.xp <73,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48805 >> Train your class spells
.xp <74,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
#label PaPrTraining1
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48818 >> Train your class spells
.xp <75,1
.target Arthur the Faithful
.target Katherine the Pure
step << Priest
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
.train 48126 >> Train your class spells
.xp <74,1
.target Brother Joshua
step << Priest
#label PaPrTraining1
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
.train 48124 >> Train your class spells
.xp <75,1
.target Brother Joshua
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
.train 49044 >> Train your class spells
.xp <73,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
.train 61846 >> Train your class spells
.xp <74,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
.train 61005 >> Train your class spells
.xp <75,1
.target Einris Brightspear
step << Rogue
.goto StormwindNew,77.42,65.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.train 48667 >> Train your class spells
.xp <73,1
.target Osborne the Night Man
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 47470 >> Train your class spells
.xp <73,1
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 55694 >> Train your class spells
.xp <75,1
.target Wu Shen
.target Ilsa Corbin
step << !Druid !DK
#completewith next
.goto StormwindNew,73.69,45.98,20 >> Travel to Stormwind Keep
step << !Druid !DK
.goto StormwindNew,80.01,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varian|r
.turnin 13347 >>Turn in Reborn From The Ashes
.accept 13369 >>Accept Fate, Up Against Your Will
.target King Varian Wrynn
step << !Druid !DK
#completewith next
.goto StormwindNew,80.06,38.63
.gossipoption 94297 >>Talk to |cRXP_FRIENDLY_Jaina|r. She will open a portal to Orgrimmar
.timer 12,Jaina Portal to Orgrimmar
.isOnQuest 13369
.target Lady Jaina Proudmoore
step << !Druid !DK
#completewith next
.goto StormwindNew,80.08,38.90
.zone Orgrimmar >> Take the Portal to Orgrimmar
step << !Druid !DK
.goto Orgrimmar,32.5,37.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
.turnin 13369 >>Turn in Fate, Up Against Your Will
.accept 13370 >>Accept A Royal Coup
.target Thrall
step << !Druid !DK
#completewith Varian
.goto Orgrimmar,33.22,37.69
.zone Stormwind City >>Take the portal behind you back to Stormwind Keep
step << !Druid !DK
#questguide
.goto StormwindNew,80.01,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varian|r
.turnin 13370 >>Turn in A Royal Coup
.accept 13371 >>Accept The Killing Time
.target King Varian Wrynn
step << !Druid !DK
#label Varian
.goto StormwindNew,80.01,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varian|r
>>|cRXP_WARN_Skip the Battle for Undercity follow ups. It is strongly recommended you skip it due to its terrible XP/Hr|r
.turnin 13370 >>Turn in A Royal Coup
.target King Varian Wrynn
step << skip
#questguide
#completewith next
.goto Stormwind City,80.5,39.4
.zone Tirisfal Glades >> Take the portal in the keep to Tirisfal Glades
step << skip
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Broll|r in Tirisfal
.turnin 13371 >> Turn in The Killing Time
.target Broll Bearmantle
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 49237 >> Train your class spells
.xp <73,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 49270 >> Train your class spells
.xp <74,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
.train 49280 >> Train your class spells
.xp <75,1
.target Farseer Umbrua
step << Warlock
.goto StormwindNew,42.26,81.77,20,0
.goto StormwindNew,40.64,84.94,15,0
.goto StormwindNew,39.88,84.19
>>Go into The Slaughtered Lamb and go downstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula|r, |cRXP_FRIENDLY_Demisette|r or |cRXP_FRIENDLY_Sandahl|r
.train 47892 >> Train your class spells
.xp <74,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Paladin/Priest
#completewith PaPrTraining2
.goto StormwindNew,52.9,50.9,20 >> Enter the Stormwind Cathedral
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48931 >> Train your class spells
.xp <73,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48805 >> Train your class spells
.xp <74,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
#label PaPrTraining
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48818 >> Train your class spells
.xp <75,1
.target Arthur the Faithful
.target Katherine the Pure
step << Priest
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
.train 48126 >> Train your class spells
.xp <74,1
.target Brother Joshua
step << Priest
#label PaPrTraining2
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
.train 48124 >> Train your class spells
.xp <75,1
.target Brother Joshua
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
.train 49044 >> Train your class spells
.xp <73,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
.train 61846 >> Train your class spells
.xp <74,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
.train 61005 >> Train your class spells
.xp <75,1
step << Rogue
.goto StormwindNew,77.42,65.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.train 48667 >> Train your class spells
.xp <73,1
.target Osborne the Night Man
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 47470 >> Train your class spells
.xp <73,1
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 55694 >> Train your class spells
.xp <75,1
.target Wu Shen
.target Ilsa Corbin
step << !DK !Druid
#completewith Hills
.hs >> Hearth to Wyrmrest Temple
step << !DK !Druid
#completewith Hills
.goto Dragonblight,60.32,51.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nethestrasz|r
.fly Wintergarde Keep >> Fly to Wintergarde Keep
.target Nethestrasz
step << DK/Druid
#completewith Hills
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fly Wintergarde Keep >> Fly to Wintergarde Keep
.target Derek Rammel
step
#label end
.groundgoto Dragonblight,78.2,46.7,40,0
.goto Dragonblight,76.81,47.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eligor|r
.turnin 12464 >>Turn in My Old Enemy
.target Commander Eligor Dawnbringer
.isQuestComplete 12464
step
.abandon 12464 >> Abandon My Old Enemy
step
.goto Dragonblight,25.61,51.30,0
#loop
.line Dragonblight,87.90,41.21,87.00,42.19,86.45,40.12,85.51,41.24,83.78,41.98,84.14,40.72,84.49,37.06,87.64,35.43,87.90,41.21
.goto Dragonblight,87.90,41.21,50,0
.goto Dragonblight,87.00,42.19,50,0
.goto Dragonblight,86.45,40.12,50,0
.goto Dragonblight,85.51,41.24,50,0
.goto Dragonblight,83.78,41.98,50,0
.goto Dragonblight,84.14,40.72,50,0
.goto Dragonblight,84.49,37.06,50,0
.goto Dragonblight,87.64,35.43,50,0
.goto Dragonblight,87.90,41.21,50,0
.xp 73 >> Grind the |cRXP_ENEMY_Scarlet Onslaught|r to level 73. Alternatively, do Azjol-Nerub and its quests
.mob Onslaught Bloodhound
.mob Onslaught Infantry
.mob Onslaught Mason
step
#label Hills
.goto Dragonblight,77.10,50.12
>>|cRXP_WARN_This will fly you to Grizzly Hills|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.accept 12511 >>Accept The Hills Have Us
.timer 150,Fly to Amberpine Lodge
.target Gryphon Commander Urik
step
.zone Grizzly Hills >> Travel to Grizzly Hills
]]);

RXPGuides.RegisterGuide([[
#cata
#mop
#wotlk
#speedrunguide
#xprate >1.49 << wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 73-74 Dragonblight
#version 9
#next 74-75 Grizzly Hills
#xprate <1.6 << !wotlk

#include 72-74 Dragonblight@pt1start-pt1end
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12107 >>Turn in The End of the Line
>>|cRXP_WARN_Skip the follow-up|r
.target Image of Archmage Modera
step

#include 72-74 Dragonblight@pt2start-pt2end
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12287 >>Turn in Orik Trueheart and the Forgotten Shore
.accept 12290 >>Accept The Murkweed Elixir
.target Orik Trueheart
step
#label chief
#sticky
.goto Dragonblight,90.67,72.89
>>Kill |cRXP_ENEMY_High Shaman Bloodpaw|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << wotlk
>>|cRXP_WARN_Cast|r |T136075:0|t[Purge] |cRXP_WARN_when he has Bloodlust|r << Shaman wotlk
>>|cRXP_WARN_Cast|r |T135894:0|t[Dispel Magic] |cRXP_WARN_when he has Bloodlust|r << Priest wotlk
.complete 12441,1 
.mob High Shaman Bloodpaw
step
.goto Dragonblight,89.2,65.4,70,0
.goto Dragonblight,90.2,74.6,70,0
.goto Dragonblight,89.28,65.60,70,0
.goto Dragonblight,90.22,72.24
>>Loot the |cRXP_LOOT_Murkweed|r on the ground
.complete 12290,1 
step
#requires chief
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12290 >>Turn in The Murkweed Elixir
step << !wotlk
.goto Dragonblight,90.1,52.7
>>Kill |cRXP_ENEMY_Kreug Oathbreaker|r
.complete 12438,1 
.mob Kreug Oathbreaker
step
.goto Dragonblight,87.4,38.1
>>|cRXP_WARN_Travel up the Tower|r
>>Kill |cRXP_ENEMY_Commander Iustus|r
>>|cRXP_WARN_This quest is VERY difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << wotlk
.complete 12442,1 
.mob Onslaught Commander Iustus
step
.goto 115/571,-780.500,3772.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
.target High Commander Halford Wyrmbane
.turnin 12319 >>Turn in Mystery of the Tome
>>|cRXP_WARN_Skip the follow-up|r
step
.goto 115/571,-736.100,3692.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Leoric Von Zeldig|r
.target Highlord Leoric Von Zeldig
.turnin 12438 >>Turn in Wanted: Kreug Oathbreaker << !wotlk
.turnin 12441 >>Turn in Wanted: High Shaman Bloodpaw
.turnin 12442 >>Turn in Wanted: Onslaught Commander Iustus
step
#optional
.maxlevel 75,GotoSholazar
step
.goto Dragonblight,77.10,50.12
>>|cRXP_WARN_This will fly you to Grizzly Hills|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.accept 12511 >>Accept The Hills Have Us
.timer 150,Fly to Amberpine Lodge
.target Gryphon Commander Urik
step
.zone Grizzly Hills >> Travel to Grizzly Hills
step
#label GotoSholazar
#optional
.goto Dragonblight,78.908,45.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vas the Unstable|r
.accept 12794 >> Accept The Magical Kingdom of Dalaran
.target Vas the Unstable
.zoneskip Dragonblight,1
.xp <76,1
step
#optional
.goto Dragonblight,78.908,45.337
.zone Dalaran >> Talk to |cRXP_FRIENDLY_Vas the Unstable|r to be teleported to Dalaran
.skipgossip 27158,1
.target Vas the Unstable
.zoneskip Dragonblight,1
.xp <76,1
]]);

RXPGuides.RegisterGuide([[
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 73-75 Grizzly Hills
#displayname 74-75 Grizzly Hills
#version 9
#next 75-77 Zul'Drak
#xprate <1.5 << wotlk
#questguide << !wotlk
step
#label pt1start
.goto Grizzly Hills,31.80,59.55
>>Click on the |cRXP_PICK_Basket|r |cRXP_WARN_on the left as soon as you enter the lodge|r (|cRXP_WARN_NOT upstairs|r)
.accept 12225 >>Accept Mmm... Amberseeds!
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anderhol|r and |cRXP_FRIENDLY_Dumont|r inside the Lodge
.turnin 12225 >>Turn in Mmm... Amberseeds!
.accept 12226 >>Accept Just Passing Through
.accept 12212 >>Accept Replenishing the Storehouse
.accept 12215 >>Accept Them or Us!
.goto Grizzly Hills,32.10,59.97
.turnin 12511 >>Turn in The Hills Have Us
.accept 12292 >>Accept Local Support
.goto Grizzly Hills,31.83,60.16
.isOnQuest 12511
.target Master Woodsman Anderhol
.target Lieutenant Dumont
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anderhol|r and |cRXP_FRIENDLY_Dumont|r inside the Lodge
.turnin 12225 >>Turn in Mmm... Amberseeds!
.accept 12226 >>Accept Just Passing Through
.accept 12212 >>Accept Replenishing the Storehouse
.accept 12215 >>Accept Them or Us!
.goto Grizzly Hills,32.10,59.97
.accept 12292 >>Accept Local Support
.goto Grizzly Hills,31.83,60.16
.target Master Woodsman Anderhol
.target Lieutenant Dumont
step
#completewith Cedar
.goto Grizzly Hills,31.96,60.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennifer|r
.home >> Set your Hearthstone to Amberpine Lodge
>>|cRXP_BUY_Buy food/water if needed|r
.target Jennifer Bell
step
.goto Grizzly Hills,31.31,59.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vana|r
.fp Amberpine Lodge >> Get the Amberpine Lodge flight path
.target Vana Grey
step
.goto Grizzly Hills,29.01,55.09,60,0
.goto Grizzly Hills,29.56,59.02
>>Loot the |cRXP_PICK_Plants|r along the river
.complete 12226,1 
step
#pvp
.goto Grizzly Hills,29.91,59.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carter|r
>>|cRXP_WARN_This quest|r (|cRXP_WARN_and keeping it in your questlog|r) |cRXP_WARN_flags you for PVP|r. |cRXP_WARN_Skip it if you wish|r
.accept 12444 >>Accept Blackriver Skirmish
.target Scout Captain Carter
step
#pvp
.goto Grizzly Hills,28.42,60.96,60,0
.goto Grizzly Hills,27.57,64.80,60,0
.goto Grizzly Hills,27.67,68.24
>>Kill the |cRXP_ENEMY_Conquest Hold Raiders|r (or |cRXP_ENEMY_Horde Players|r) in Blackriver
.complete 12444,1 
.isOnQuest 12444
.mob Conquest Hold Raider
step
#completewith next
>>Kill |cRXP_ENEMY_Stags|r. Loot them for their |cRXP_LOOT_Venison|r
.complete 12212,1 
.mob Tallhorn Stag
step
.goto Grizzly Hills,26.05,67.22,60,0
.goto Grizzly Hills,24.70,67.38,60,0
.goto Grizzly Hills,25.19,70.50,60,0
.goto Grizzly Hills,24.01,71.68,60,0
.goto Grizzly Hills,19.95,73.83,60,0
.goto Grizzly Hills,26.05,67.22
>>Kill |cRXP_ENEMY_Graymist Hunters|r
.complete 12215,1 
.mob Graymist Hunter
step
.goto Grizzly Hills,23.10,71.92,60,0
.goto Grizzly Hills,21.32,73.82,60,0
.goto Grizzly Hills,20.65,71.32,60,0
.goto Grizzly Hills,17.42,71.30,60,0
.goto Grizzly Hills,14.37,69.89,60,0
.goto Grizzly Hills,12.74,72.29,60,0
.goto Grizzly Hills,11.17,69.22,60,0
.goto Grizzly Hills,12.97,65.10,60,0
.goto Grizzly Hills,17.77,66.23,60,0
.goto Grizzly Hills,23.10,71.92
>>Kill |cRXP_ENEMY_Stags|r. Loot them for their |cRXP_LOOT_Venison|r
.complete 12212,1 
.mob Tallhorn Stag
step
#label Cedar
.goto Grizzly Hills,15.87,65.27
>>Go inside the guarded building. Loot the |cRXP_PICK_chest|r
.complete 12292,1 
step
#completewith next
.hs >> Hearth to Amberpine Lodge
.cooldown item,6948,>2
step
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumont|r and |cRXP_FRIENDLY_Anderhol|r
.turnin 12292 >>Turn in Local Support
.accept 12293 >>Accept Close the Deal
.goto Grizzly Hills,31.83,60.16
.turnin 12212 >>Turn in Replenishing the Storehouse
.accept 12216 >>Accept Take Their Rear!
.turnin 12226 >>Turn in Just Passing Through
.accept 12227 >>Accept Doing Your Duty
.turnin 12215 >>Turn in Them or Us!
.accept 12217 >>Accept Eagle Eyes
.goto Grizzly Hills,32.10,59.97
.target Lieutenant Dumont
.target Master Woodsman Anderhol
step
.goto Grizzly Hills,32.22,58.89
>>Use the |cRXP_PICK_Amberpine Outhouse|r outside
.complete 12227,1 
.skipgossip
step
#completewith next
.goto Grizzly Hills,32.0,47.1,0
>>Kill |cRXP_ENEMY_Imperial Eagles|r that you see
.complete 12217,1 
.mob Imperial Eagle
step
.goto Grizzly Hills,34.77,55.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ivan|r inside the building
.turnin 12293 >>Turn in Close the Deal
.accept 12294 >>Accept A Tentative Pact
.target Ivan
step
.goto Grizzly Hills,34.68,51.30,60,0
.goto Grizzly Hills,31.21,49.57,60,0
.goto Grizzly Hills,32.53,47.63
>>Kill |cRXP_ENEMY_Imperial Eagles|r that you see
.complete 12217,1 
.mob Imperial Eagle
step
.goto Grizzly Hills,30.41,45.04,60,0
.goto Grizzly Hills,29.41,52.57,60,0
.goto Grizzly Hills,28.73,58.30
>>Kill |cRXP_ENEMY_Grizzly Bears|r. Loot them for their |cRXP_LOOT_Flanks|r
.complete 12216,1 
.mob Grizzly Bear
step
#pvp
.goto Grizzly Hills,29.91,59.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carter|r
.turnin 12444 >>Turn in Blackriver Skirmish
.isQuestComplete 12444
.target Scout Captain Carter
step
.abandon 12444 >> Abandon Blackriver Skirmish
step
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumont|r, |cRXP_FRIENDLY_Anderhol|r, and |cRXP_FRIENDLY_Drake|r outside
.turnin 12294 >>Turn in A Tentative Pact
.accept 12295 >>Accept An Exercise in Diplomacy
.accept 12210 >>Accept Troll Season!
.goto Grizzly Hills,31.83,60.16
.turnin 12217 >>Turn in Eagle Eyes
.turnin 12216 >>Turn in Take Their Rear!
.turnin 12227 >>Turn in Doing Your Duty
.goto Grizzly Hills,32.10,59.97
.accept 12222 >>Accept Secrets of the Flamebinders
.accept 12223 >>Accept Thinning the Ranks
.goto Grizzly Hills,32.42,59.94
.target Lieutenant Dumont
.target Master Woodsman Anderhol
.target Woodsman Drake
step
#sticky
#label Talismans
.goto Grizzly Hills,30.2,77.3,0,0
>>Kill |cRXP_ENEMY_Dragonflayer Flamebinders|r. Loot them for their |cRXP_LOOT_Talismans|r
.complete 12222,1 
.mob Dragonflayer Flamebinder
step
.goto Grizzly Hills,31.61,78.70,60,0
.goto Grizzly Hills,31.51,80.42,60,0
.goto Grizzly Hills,28.23,75.89,60,0
.goto Grizzly Hills,27.82,72.09
>>Kill |cRXP_ENEMY_Dragonflayer Huscarls|r
.complete 12223,1 
.mob Dragonflayer Huscarl
step << Shaman
#requires Talismans
#completewith next
.hs >> Hearth to Amberpine Lodge
.cooldown item,6948,>2
step
#requires Talismans
.goto Grizzly Hills,32.42,59.94
>>Ride back to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drake|r
.turnin 12222 >>Turn in Secrets of the Flamebinders
.turnin 12223 >>Turn in Thinning the Ranks
.accept 12255 >>Accept The Thane of Voldrune
.target Woodsman Drake
step << wotlk
#pvp
>>Ride down to Venture Bay
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barblefink|r, |cRXP_FRIENDLY_Freeman|r, |cRXP_FRIENDLY_Stuart|r, and |cRXP_FRIENDLY_Downey|r
>>|cRXP_WARN_This quest|r (|cRXP_WARN_and keeping it in your questlog|r) |cRXP_WARN_flags you for PVP|r. |cRXP_WARN_Skip it if you wish|r
.accept 12443 >>Accept Seeking Solvent
.goto Grizzly Hills,23.02,80.16
.accept 12314 >>Accept Down With Captain Zorna!
.goto Grizzly Hills,22.11,81.28
.accept 12316 >>Accept Keep Them at Bay!
.goto Grizzly Hills,22.07,81.30
.accept 12323 >>Accept Smoke 'Em Out
.goto Grizzly Hills,21.98,80.72
.target Barblefink
.target Baron Freeman
.target Lieutenant Stuart
.target Sergeant Downey
step << wotlk
#completewith Zorna
#pvp
.goto Grizzly Hills,18.1,79.5,40,0
.goto Grizzly Hills,16.4,76.5,40,0
.goto Grizzly Hills,14.5,76.4,0
.use 37621 >> Use the |T133717:0|t[Smoke Bomb] in your bags on the |cRXP_ENEMY_Venture Co. Stragglers|r in the buildings. |cRXP_WARN_You can bodypull them to stack them better for the bomb|r
.complete 12323,1 
.isOnQuest 12323
.mob Venture Co. Straggler
step << wotlk
#completewith Smoke
#pvp
.goto Grizzly Hills,15.4,76.6,0
>>Kill |cRXP_ENEMY_Conquest Hold Berserkers|r (or |cRXP_ENEMY_Horde Players|r) in Venture Bay
.complete 12316,1 
.isOnQuest 12316
.mob Conquest Hold Berserker
step << skip
#pvp
#questguide
>>Check to see if Venture Bay is controlled by Alliance or Horde. If it's controlled by Horde, skip this step
>>|cRXP_WARN_This quest|r (|cRXP_WARN_and keeping it in your questlog|r) |cRXP_WARN_flags you for PVP|r. |cRXP_WARN_Skip it if you wish|r
.goto Grizzly Hills,14.8,86.6
.accept 12437 >>Accept Riding the Red Rocket
step << skip
#pvp
#questguide
.goto Grizzly Hills,16.0,81.1,20,0
.goto Grizzly Hills,16.4,80.4
>>Enter the Venture.Co ship. Go to the back of the ship on the bottom floor and loot the Element 115. Be careful as it has a 3 minute duration
.collect 37664,1 
.isOnQuest 12437

step << skip
#pvp
#questguide
#completewith next
.goto Grizzly Hills,13.7,89.1
.vehicle >> Travel to the Dock of Venture Bay. Get into the Rocket Propelled Warhead
.isOnQuest 12437
step << skip
#pvp
#questguide
.goto Grizzly Hills,9.6,79.0
>>You move the rocket with the direction your camera is facing. Ride it into the Warsong Lumber Boat. If it bumps into an Iceberg or the land, it'll explode and you'll need to get the Element 115 again and run all the way back.
.complete 12437,1 
.isOnQuest 12437
step << skip
#pvp
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSwim back to Venture Bay's Dock. Talk to Howser
.goto Grizzly Hills,14.8,86.6
.turnin 12437 >>Turn in Riding the Red Rocket
.isQuestComplete 12437
step << wotlk
#pvp
#label Zorna
.goto Grizzly Hills,13.36,80.19
>>Kill |cRXP_ENEMY_Captain Zorna|r on the dock. |cRXP_WARN_Use all your cooldowns|r. |cRXP_WARN_If you can't kill her|r, |cRXP_WARN_skip this step|r
.complete 12314,1 
.isOnQuest 12314
.mob Captain Zorna
step << wotlk
#pvp
#label Smoke
.goto Grizzly Hills,14.5,76.4,40,0
.goto Grizzly Hills,16.4,76.5,40,0
.goto Grizzly Hills,18.1,79.5
.use 37621 >> Use the |T133717:0|t[Smoke Bomb] in your bags on the |cRXP_ENEMY_Venture Co. Stragglers|r in the buildings. |cRXP_WARN_You can bodypull them to stack them better for the bomb|r
.complete 12323,1 
.isOnQuest 12323
.mob Venture Co. Straggler
step << wotlk
#pvp
.goto Grizzly Hills,11.57,79.32,60,0
.goto Grizzly Hills,15.14,78.52,60,0
.goto Grizzly Hills,14.84,76.47
>>Kill |cRXP_ENEMY_Conquest Hold Berserkers|r (or |cRXP_ENEMY_Horde Players|r) in Venture Bay
.complete 12316,1 
.isOnQuest 12316
.mob Conquest Hold Berserker
step << wotlk
#pvp
.goto Grizzly Hills,16.0,81.1,20,0
.goto Grizzly Hills,16.36,80.26
>>Enter the Venture Co. Ship
>>|cRXP_WARN_Go to the back of the ship on the bottom floor and loot the|r |cRXP_PICK_Element 115|r. |cRXP_WARN_Be careful as it has a 3 minute duration|r
.complete 12443,1 
.isOnQuest 12443
step << wotlk
#pvp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Downey|r
.goto Grizzly Hills,21.98,80.72
.turnin 12323 >>Turn in Smoke 'Em Out
.isQuestComplete 12323
.target Sergeant Downey
step << wotlk
#completewith end
#label CZorna
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stuart|r
.goto Grizzly Hills,22.07,81.30
.turnin 12316 >>Turn in Keep Them at Bay!
.isQuestComplete 12316
.target Lieutenant Stuart
step << wotlk
#pvp
.goto Grizzly Hills,22.11,81.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freeman|r
.turnin 12314 >>Turn in Down With Captain Zorna!
.isQuestComplete 12314
.target Baron Freeman
step << wotlk
#pvp
#requires CZorna
.goto Grizzly Hills,23.02,80.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barblefink|r
.turnin 12443 >>Turn in Seeking Solvent
.isQuestComplete 12443
.target Barblefink
step << wotlk
#completewith Sacrifices
>>Abandon the PVP quests you were unable to complete
.abandon 12314 >>Abandon Down With Captain Zorna!
.abandon 12316 >>Abandon Keep Them at Bay!
.abandon 12443 >>Abandon Seeking Solvent
.abandon 12323 >>Abandon Smoke 'Em Out
step
#completewith next
.goto Grizzly Hills,26.59,77.85
.vehicle >> Mount |cRXP_WARN_Flamebringer|r in Voldrune
.skipgossip
.target Flamebringer
step
#label pt1end
.goto Grizzly Hills,27.6,72.9
>>Kill |cRXP_ENEMY_Torvald|r
>>Use |T134316:0|t"Wing Buffet" (2) to combo with |T135830:0|t"Molten Fury" (3). Spam |T135805:0|t"Flame Breath" (1), when the other spells are on cooldown
>>|cRXP_WARN_If you have a very strong character you can dismount next to|r |cRXP_ENEMY_Torvald|r |cRXP_WARN_on the ledge and kill him normally|r
.complete 12255,1 
.mob Thane Torvald Eriksson
step
.goto Grizzly Hills,16.19,47.60
>>Travel to Granite Springs on |cRXP_FRIENDLY_Flamebringer|r and then your mount
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samir|r
.turnin 12210 >>Turn in Troll Season!
.accept 11984 >>Accept Filling the Cages
.target Samir
step
.goto Grizzly Hills,16.37,48.26,10,0
.goto Grizzly Hills,15.0,60.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r in Granite Springs. Ask him to follow you. Save him from |cRXP_ENEMY_Worgs|r that may attack him
.use 35736 >>Use |cRXP_FRIENDLY_Budd's|r |T132310:0|t"Tag Troll" ability on an |cRXP_ENEMY_Ice Troll|r (|cRXP_WARN_It is on your Pet Bar|r). Then, use the |T132599:0|t[Bounty Hunter's Cage] in your bags on the |cRXP_ENEMY_Troll|r
.complete 11984,1 
.skipgossip
.target Budd
.mob Drakkari Shaman
.mob Drakkari Warrior
step
>>Return to Granite Springs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samir|r and then |cRXP_FRIENDLY_Drakuru|r in the cage
.turnin 11984 >>Turn in Filling the Cages
.goto Grizzly Hills,16.19,47.60
.accept 11989 >>Accept Truce?
.goto Grizzly Hills,16.43,47.77
.target Samir
.target Drakuru
step
#completewith next
.goto Grizzly Hills,16.54,47.76
.cast 50141 >>Loot the |cRXP_PICK_Knife|r that's lodged into the log to the right of |cRXP_FRIENDLY_Drakuru|r. Use the |T135650:0|t[Dull Carving Knife]
.collect 38083,1,11989,1 
.use 38083
step
.use 38083 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r again
.complete 11989,1 
.turnin 11989 >>Turn in Truce?
.accept 11990 >>Accept Vial of Visions
.goto Grizzly Hills,16.43,47.77
.skipgossip
.target Drakuru
step
.goto Grizzly Hills,15.96,47.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ameenah|r. Buy an |T132379:0|tImbued Vial from her
.complete 11990,1 

.target Ameenah
step
.goto Grizzly Hills,16.7,43.4,70,0
.goto Grizzly Hills,12.6,41.4
>>Loot the small |cRXP_PICK_Bruiseweed-esque|r plants on the ground
.complete 11990,2 
step
.goto Grizzly Hills,15.30,40.08
>>Loot the |cRXP_PICK_Waterweed Frond|r underwater
.complete 11990,3 
step
.goto Grizzly Hills,16.43,47.77
>>Return to Granite Springs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
.turnin 11990 >>Turn in Vial of Visions
.accept 11991 >>Accept Subject to Interpretation
.target Drakuru
step
.accept 12484 >>Accept Scourgekabob
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prigmon|r, then loot one of the |cRXP_PICK_Scourged Troll Mummys|r next to him on the ground
.goto Grizzly Hills,15.73,46.69
.collect 38149,1,12484,1 
.goto Grizzly Hills,15.84,46.72,-1
.goto Grizzly Hills,15.70,46.85,-1
.target Prigmon
step
.use 38149 >>Use the |T133798:0|t[Scourged Troll Mummy] in your bags to throw it into the fire
.complete 12484,1 
.goto Grizzly Hills,16.84,48.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mack|r. |cRXP_WARN_Wait out the RP event|r
.turnin 12484 >>Turn in Scourgekabob
.accept 12029 >>Accept Seared Scourge
.goto Grizzly Hills,16.67,48.30
.target Mack Fearsen
step
.goto Grizzly Hills,15.73,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prigmon|r
.accept 12483 >>Accept Shimmercap Stew
.target Prigmon
step
#completewith IEyes
#label FrozenMojo
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3,70,0
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
>>Kill |cRXP_ENEMY_Ice Trolls|r in the area. Loot them for |cRXP_LOOT_5 Frozen Mojo|r
.collect 35799,5 
.mob Drakkari Shaman
.mob Drakkari Warrior
step
#completewith next
>>Kill |cRXP_ENEMY_Ice Serpents|r in the area. Loot them for their |cRXP_LOOT_Eyes|r
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
.complete 12483,1 
.mob Ice Serpent
step
.goto Grizzly Hills,10.70,64.19,60,0
.goto Grizzly Hills,11.1,59.3
>>Loot the |cRXP_PICK_frozen mushrooms|r on the ground
.complete 12483,2 
step
#label IEyes
>>Kill |cRXP_ENEMY_Ice Serpents|r in the area. Loot them for their |cRXP_LOOT_Eyes|r
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3,70,0
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
.complete 12483,1 
.mob Ice Serpent
step
#completewith end
#label FrozenMojo3
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3,70,0
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
>>Kill |cRXP_ENEMY_Ice Trolls|r in the area. Loot them for |cRXP_LOOT_5 Frozen Mojo|r
.collect 35799,5 
.mob Drakkari Shaman
.mob Drakkari Warrior
step
#requires FrozenMojo3
.goto Grizzly Hills,13.24,60.87
>>Use |T134812:0|t[Drakuru's Elixir] on top of the broken building at the Ruins of Drak'Zin to summon |cRXP_FRIENDLY_Drakuru|r
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
.turnin 11991 >>Turn in Subject to Interpretation
.accept 12007 >>Accept Sacrifices Must be Made
.target Drakuru
step
#completewith next
.goto Grizzly Hills,16.8,37.0,0
.goto Grizzly Hills,13.6,38.7,0
.goto Grizzly Hills,12.6,36.9,0
.goto Grizzly Hills,13.8,34.8,0
.goto Grizzly Hills,17.1,34.4,0
>>Loot the |cRXP_PICK_small green plants|r scattered throughout Zeb'Halak
.complete 12483,3 
step
#completewith end
#label ZimBom
.goto Grizzly Hills,14.50,38.01
>>Kill |cRXP_ENEMY_Warlord Zim'Bo|r. Loot him for his |cRXP_LOOT_Mojo|r
.collect 35836,1 
.mob Warlord Zim'bo
step
#requires ZimBom
.goto Grizzly Hills,16.0,28.7
.use 35908 >>Use |T132798:0|t[Mack's Dark Grog] in your inventory. Spam throw it on the |cRXP_ENEMY_Undead Trolls|r in the area
>>The |T132798:0|tGrog |cRXP_WARN_requires you to throw it from at least 30 yards away|r, however it can be used in combat << !Mage !Hunter !Warlock
>>The |T132798:0|tGrog |cRXP_WARN_requires you to throw it from at least 30 yards away|r. Gather up as many mobs as you can, |T135848:0|tFrost Nova them, then use the |T132798:0|tGrog on them from range << Mage
>>The |T132798:0|tGrog |cRXP_WARN_requires you to throw it from at least 30 yards away|r. Gather up as many mobs as you can with your pet, then use the |T132798:0|tGrog on them from range << Hunter/Warlock
.complete 12029,1 
step
#completewith Sacrifices
.goto Grizzly Hills,16.8,37.0,0
.goto Grizzly Hills,13.6,38.7,0
.goto Grizzly Hills,12.6,36.9,0
.goto Grizzly Hills,13.8,34.8,0
.goto Grizzly Hills,17.1,34.4,0
>>Loot the |cRXP_PICK_small green plants|r scattered throughout Zeb'Halak
.complete 12483,3 
step
.goto Grizzly Hills,17.96,36.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Statue|r at the top of Zeb'Halak. Loot it for the |cRXP_LOOT_Eye of the Prophets|r
.complete 12007,1 
.skipgossip
step
#label Sacrifices
.goto Grizzly Hills,17.42,36.36
>>Use |T134812:0|t[Drakuru's Elixir] at the top of the stairs
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
.turnin 12007 >>Turn in Sacrifices Must be Made
.accept 12042 >>Accept Heart of the Ancients
.target Drakuru
step
.goto Grizzly Hills,17.1,34.4,70,0
.goto Grizzly Hills,16.8,37.0,70,0
.goto Grizzly Hills,13.6,38.7,70,0
.goto Grizzly Hills,12.6,36.9,70,0
.goto Grizzly Hills,13.8,34.8
>>Loot the |cRXP_PICK_small green plants|r scattered throughout Zeb'Halak
.complete 12483,3 
step
>>Return to Granite Springs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prigmon|r and |cRXP_FRIENDLY_Mack|r
.turnin 12483 >>Turn in Shimmercap Stew
.accept 12190 >>Accept Say Hello to My Little Friend
.goto Grizzly Hills,15.73,46.69
.turnin 12029 >>Turn in Seared Scourge


.goto Grizzly Hills,16.67,48.30
.target Prigmon
.target Mack Fearsen
step
#label pt2start
>>Travel to Silverbrook
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ducal|r, |cRXP_FRIENDLY_Sergei|r, and |cRXP_FRIENDLY_Katja|r
.turnin 12295 >>Turn in An Exercise in Diplomacy
.goto Grizzly Hills,26.41,35.70
.accept 12299 >>Accept Northern Hospitality
.goto Grizzly Hills,26.48,35.78
.accept 12307 >>Accept Wolfsbane Root
.goto Grizzly Hills,25.61,33.30
.target Envoy Ducal
.target Sergei
.target Katja
step
#completewith next
.goto Grizzly Hills,23.9,37.7,0
.goto Grizzly Hills,24.4,29.7,0
.goto Grizzly Hills,22.5,30.7,0
>>Click the |cRXP_PICK_Roots|r on the ground
.complete 12307,1 
step
.goto Grizzly Hills,24.05,31.18,60,0
.goto Grizzly Hills,23.90,36.26
>>Kill |cRXP_ENEMY_Conquest Hold Marauders|r in the area
.complete 12299,1 
.mob Conquest Hold Marauder
step
.goto Grizzly Hills,24.22,37.23,60,0
.goto Grizzly Hills,28.29,38.63,60,0
.goto Grizzly Hills,30.09,34.83
>>Click the |cRXP_PICK_Roots|r on the ground
.complete 12307,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katja|r and |cRXP_FRIENDLY_Sergei|r
.turnin 12307 >>Turn in Wolfsbane Root
.goto Grizzly Hills,25.61,33.30
.turnin 12299 >>Turn in Northern Hospitality
.accept 12300 >>Accept Test of Mettle
.goto Grizzly Hills,26.48,35.78
.target Sergei
.target Katja
step
#label pt2end
.goto Grizzly Hills,21.93,29.92
>>Kill the |cRXP_ENEMY_Orcs|r surrounding the |cRXP_FRIENDLY_Captured Trapper|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Trapper|r after
.complete 12300,1 
.turnin 12300 >>Turn in Test of Mettle
.accept 12302 >>Accept Words of Warning
.target Captured Trapper
.mob Conquest Hold Marauder
step << skip
.goto Grizzly Hills,19.4,27.7
.use 35908 >>Use Mack's Dark Grog in your inventory. Spam throw it on the Undead Trolls in the area
.complete 12038,1 
step
.goto Grizzly Hills,26.46,31.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Caged Prisoner|r inside
.turnin 12302 >>Turn in Words of Warning
.accept 12308 >>Accept Escape from Silverbrook
.target Caged Prisoner
step
#completewith next
.goto Grizzly Hills,26.25,31.10
.vehicle >>Follow the |cRXP_FRIENDLY_Alliance Scout|r to the horses. Get on |cRXP_FRIENDLY_Ducal's Horse|r when it spawns
.target Freed Alliance Scout
.target Ducal's Horse
step
.goto Grizzly Hills,32.50,59.04
>>Use |T132120:0|t"Gallop" (2) on cooldown. Use |T136105:0|t"Trample" (3) when mobs are close to you. Use |T135809:0|t"Burning Oil" (1) to kill the |cRXP_ENEMY_Worgen|r chasing you
.complete 12308,1 
.mob Silverbrook Worgen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drake|r and |cRXP_FRIENDLY_Dumont|r
.turnin 12255 >>Turn in The Thane of Voldrune
.goto Grizzly Hills,32.42,59.94
.turnin 12308 >>Turn in Escape from Silverbrook
.accept 12310 >>Accept A Swift Response
.goto Grizzly Hills,31.83,60.16
.target Woodsman Drake
.target Lieutenant Dumont
step
#sticky
#label SilverbrookH
.goto Grizzly Hills,35.6,68.1,0,0
>>Kill |cRXP_ENEMY_Silverbrook Hunters|r in the area
.complete 12310,1 
.mob Silverbrook Hunter
step
.goto Grizzly Hills,36.26,67.85
>>Travel to Forest's Edge Post
.use 36940 >>Kill |cRXP_ENEMY_Vladek|r. Loot him for his |cRXP_LOOT_Journal|r. Click |T133741:0|t[Mikhail's Journal] in your bags
.complete 12310,2 
.collect 36940,1,12105,1 
.accept 12105 >> Accept Descent into Darkness
.mob Vladek
step
#requires SilverbrookH
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumont|r and |cRXP_FRIENDLY_Thayreen|r
.turnin 12105 >>Turn in Descent into Darkness
.accept 12109 >>Accept Report to Gryan Stoutmantle... Again
.turnin 12310 >>Turn in A Swift Response
.goto Grizzly Hills,31.83,60.16
.accept 12219 >>Accept The Failed World Tree
.accept 12220 >>Accept A Dark Influence
.goto Grizzly Hills,31.16,59.47
.target Lieutenant Dumont
.target Hierophant Thayreen
step << skip
.goto Grizzly Hills,16.7,48.3
>>Ride to Granite Springs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mack|r
.turnin 12038 >>Turn in Seared Scourge
.target Mack Fearsen
step
#completewith Tears
.goto Grizzly Hills,27.1,46.0,0
.goto Grizzly Hills,34.6,50.1,0
.goto Grizzly Hills,38.9,49.3,0
>>Kill |cRXP_ENEMY_Oozes|r at the parts of Vordrassil. Loot them for |cRXP_LOOT_Slime Samples|r
.complete 12219,1 
.mob Entropic Ooze
step
.goto Grizzly Hills,28.6,45.0,25,0
.goto Grizzly Hills,30.19,43.93
.use 37173 >>Enter the hole in the tree. Go down inside of it and use the |T134125:0|t[Geomancer's Orb] in your bags at the end
.complete 12220,3 
step
#label Tears
.goto Grizzly Hills,33.2,48.3,25,0
.goto Grizzly Hills,32.34,46.16
>>Leave the tree at Vordrassil's Tears
.use 37173 >>Enter the hole in the tree. Go down inside of it and use the |T134125:0|t[Geomancer's Orb] in your bags at the end
.complete 12220,2 
step
.goto Grizzly Hills,38.29,49.86,60,0
.goto Grizzly Hills,39.17,51.82,60,0
.goto Grizzly Hills,41.15,50.21,60,0
.goto Grizzly Hills,38.97,48.15
>>Leave the tree at Vordrassil's Limb
>>Kill |cRXP_ENEMY_Oozes|r at the parts of Vordrassil. Loot them for |cRXP_LOOT_Slime Samples|r
.complete 12219,1 
.mob Entropic Ooze
step
.goto Grizzly Hills,40.8,52.1,25,0
.goto Grizzly Hills,41.16,54.27
.use 37173 >>Enter the hole in the tree. Go down inside of it and use the |T134125:0|t[Geomancer's Orb] in your bags at the end
.complete 12220,1 
step
#completewith next
.goto Grizzly Hills,40.93,54.90
.goto Grizzly Hills,33.75,56.64,70 >> |cRXP_WARN_Jump onto the mushroom|r. |cRXP_WARN_Log out|r, |cRXP_WARN_then log back in|r
.link https://www.youtube.com/watch?v=f_RtIujejaI >> CLICK HERE for a guide
step
.goto Grizzly Hills,31.16,59.47
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thayreen|r
.turnin 12219 >>Turn in The Failed World Tree
.turnin 12220 >>Turn in A Dark Influence
.accept 12246 >>Accept A Possible Link
.accept 12247 >>Accept Children of Ursoc
.target Hierophant Thayreen
step
#completewith next
.goto Grizzly Hills,53.1,55.4,0
>>Kill |cRXP_ENEMY_Furbolgs|r in the area. Loot them for their |cRXP_LOOT_Blood|r
.complete 12246,1 
.mob Frostpaw Warrior
.mob Frostpaw Shaman
step
.goto Grizzly Hills,48.37,58.40,30,0
.goto Grizzly Hills,48.07,58.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orsonn|r in the cave of Rage Fang Shrine
.complete 12247,1 
.skipgossip
.target Orsonn
step
#completewith next
.goto Grizzly Hills,53.1,55.4,60,0
.goto Grizzly Hills,66.4,59.3,0
>>Kill |cRXP_ENEMY_Furbolgs|r in the area. Loot them for their |cRXP_LOOT_Blood|r
>>|cRXP_WARN_You will get the rest of the|r |cRXP_LOOT_Blood|r |cRXP_WARN_later|r
.complete 12246,1 
.mob Frostpaw Warrior
.mob Frostpaw Shaman
step
.goto Grizzly Hills,66.79,61.86,30,0
.goto Grizzly Hills,66.89,62.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kodian|r in the cave of Heart's Blood Shrine
.complete 12247,2 
.skipgossip
.target Kodian
step
.goto Grizzly Hills,66.5,53.5
>>Kill |cRXP_ENEMY_Furbolgs|r in the area. Loot them for their |cRXP_LOOT_Blood|r
.complete 12246,1 
.mob Redfang Elder
.mob Redfang Hunter
step << Druid
#completewith DruidTrain1
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <74,1
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 53307 >> Train your class spells
.xp <74,1
.target Loganaar
step << Druid
#label DruidTrain1
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48440 >> Train your class spells
.xp <75,1
.target Loganaar
step << DK
#completewith DKTrain1
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <74,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49929 >> Train your class spells
.xp <74,1
.target Amal'thazad
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49923 >> Train your class spells
.xp <75,1
.target Amal'thazad
step << DK
#label DKTrain1
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49894 >> Train your class spells
.xp <76,1
.target Amal'thazad
step << Mage
#completewith MageTrain1
.zone Stormwind City >> Teleport to Stormwind
.xp <74,1
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42939 >> Train your class spells
.xp <74,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42955 >> Train your class spells
.xp <75,1
.target Elsharin
.target Jennea Cannon
step << Mage
#label MageTrain1
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42920 >> Train your class spells
.xp <76,1
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >> Hearth to Amberpine Lodge
step
.goto Grizzly Hills,31.16,59.47
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thayreen|r
.turnin 12246 >>Turn in A Possible Link
.turnin 12247 >>Turn in Children of Ursoc
.accept 12248 >>Accept Vordrassil's Sapling
.accept 12250 >>Accept Vordrassil's Seeds
.target Hierophant Thayreen
step
#completewith next
.goto Grizzly Hills,52.6,46.1,0
.goto Grizzly Hills,54.1,41.8,0
.goto Grizzly Hills,52.9,38.1,0
>>Loot |cRXP_PICK_Seeds|r in but primarily outside of Vordrassil
.complete 12250,1 
step
.goto Grizzly Hills,50.5,46.0,45,0
.goto Grizzly Hills,50.7,42.9
.use 37306 >>Enter Vordrassil. |cRXP_WARN_Jump down to the bottom of the tree|r, then use the |T135432:0|t[Verdant Torch] at the bottom
.complete 12248,1 
step
.goto Grizzly Hills,52.6,46.1,60,0
.goto Grizzly Hills,54.1,41.8,60,0
.goto Grizzly Hills,52.9,38.1
>>Exit Vordrassil
>>Loot |cRXP_PICK_Seeds|r in but primarily outside of Vordrassil
.complete 12250,1 
step
#questguide
#completewith next
.hs >> Hearth to Amberpine Lodge
.cooldown item,6948,>2
step
#questguide
.goto Grizzly Hills,31.16,59.47
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thayreen|r
.turnin 12248 >>Turn in Vordrassil's Sapling
.turnin 12250 >>Turn in Vordrassil's Seeds
.accept 12249 >>Accept Ursoc, the Bear God
.target Hierophant Thayreen
step
#questguide
#pvp
>>Travel to the Blue Sky Logging Grounds
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hartsman|r, |cRXP_FRIENDLY_Synipus|r, |cRXP_FRIENDLY_Pipthwack|r, and |cRXP_FRIENDLY_Rheanna|r
>>|cRXP_WARN_This quest|r (|cRXP_WARN_and keeping it in your questlog|r) |cRXP_WARN_flags you for PVP|r. |cRXP_WARN_Skip it if you wish|r
.accept 12289 >>Accept Kick 'Em While They're Down
.goto Grizzly Hills,39.36,43.87
.accept 12244 >>Accept Shredder Repair
.goto Grizzly Hills,39.54,43.57
.accept 12268 >>Accept Pieces Parts
.goto Grizzly Hills,39.64,43.38
.accept 12296 >>Accept Life or Death
.goto Grizzly Hills,40.47,42.66
.target Sergeant Hartsman
.target Synipus
.target Pipthwack
.target Rheanna
step
#questguide
#pvp
#completewith Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Loot the |cRXP_PICK_Cogs|r, |cRXP_PICK_Sprockets|r and |cRXP_PICK_Springs|r that you see in the area
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#questguide
#pvp
#completewith Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Kill |cRXP_ENEMY_Wounded Skirmishers|r (or |cRXP_ENEMY_Horde Players|r) in the area
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#questguide
#pvp
#completewith Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5,0
>>Enter a |cRXP_FRIENDLY_Broken-down Shredder|r. Use |T136106:0|t"Overclock" (3) to run faster.
>>Take it back to |cRXP_FRIENDLY_Pipthwack|r and use |T134248:0|t"Shredder Delivery" (4).
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#questguide
#pvp
#label Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
.use 37576 >>Use the |T133686:0|t[Renewing Bandage] in your bags on |cRXP_FRIENDLY_Wounded Westfall Infantries|r. |cRXP_WARN_Focus on this|r. |cRXP_WARN_The quest item has a long cooldown|r
.complete 12296,1 
.isOnQuest 12296
.target Wounded Westfall Infantry
step
#questguide
#pvp
#label Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Kill |cRXP_ENEMY_Wounded Skirmishers|r (or |cRXP_ENEMY_Horde Players|r) in the area
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#questguide
#pvp
#label Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Loot the |cRXP_PICK_Cogs|r, |cRXP_PICK_Sprockets|r and |cRXP_PICK_Springs|r that you see in the area
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#questguide
#pvp
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5
>>Enter a |cRXP_FRIENDLY_Broken-down Shredder|r. Use |T136106:0|t"Overclock" (3) to run faster.
>>Take it back to |cRXP_FRIENDLY_Pipthwack|r and use |T134248:0|t"Shredder Delivery" (4).
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#questguide
#pvp
#label PiecesP
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pipthwack|r
.turnin 12268 >>Turn in Pieces Parts
.goto Grizzly Hills,39.64,43.38,-1
.isQuestComplete 12268
.target Pipthwack
step
#questguide
#pvp
#label ShredderR
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Synipus|r
.turnin 12244 >>Turn in Shredder Repair
.goto Grizzly Hills,39.54,43.57,-1
.isQuestComplete 12244
.target Synipus
step
#questguide
#pvp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hartsman|r
.turnin 12289 >>Turn in Kick 'Em While They're Down
.goto Grizzly Hills,39.36,43.87,-1
.isQuestComplete 12289
.target Sergeant Hartsman
step
#questguide
#pvp
#requires ShredderR
step
#questguide
#pvp
#requires PiecesP
.goto Grizzly Hills,40.47,42.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rheanna|r
.turnin 12296 >>Turn in Life or Death
.isQuestComplete 12296
.target Rheanna
step
#questguide
#completewith end
>>Abandon the PVP quests you were unable to complete
.abandon 12268 >>Abandon Pieces Parts
.abandon 12244 >>Abandon Shredder Repair
.abandon 12289 >>Abandon Kick 'Em While They're Down
.abandon 12296 >>Abandon Life or Death
step
#questguide
.goto Grizzly Hills,38.1,32.0,30,0
.goto Grizzly Hills,36.95,32.36
>>|cRXP_WARN_Go up the tower in the water on the north-side of the Blue Sky Logging grounds|r
>>Go inside the little room at the top and loot the |cRXP_PICK_gem|r on the ground
.turnin 12042 >>Turn in Heart of the Ancients
.accept 12802 >>Accept My Heart is in Your Hands
step
#questguide
#completewith end
#label DesperateMojo
.goto Grizzly Hills,43.41,28.26,60,0
.goto Grizzly Hills,44.89,30.56,60,0
.goto Grizzly Hills,46.76,28.20,60,0
.goto Grizzly Hills,44.87,25.77
>>Kill the |cRXP_ENEMY_Drakkari Trolls|r in the area. Loot them for their |cRXP_LOOT_Mojo|r
>>|cRXP_ENEMY_Drakkari Witch Doctors|r |cRXP_WARN_do not drop it|r
.collect 36743,5 
.mob Drakkari Defender
.mob Injured Drakkari Refugee
step
#questguide
#requires DesperateMojo
.goto Grizzly Hills,45.00,28.36
>>Use |T134812:0|t[Drakuru's Elixir] at the Brazier
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
.turnin 12802 >>Turn in My Heart is in Your Hands
.accept 12068 >>Accept Voices From the Dust
.target Drakuru
step
#questguide
.goto Grizzly Hills,49.20,34.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emily|r inside. This starts an escort
.accept 12027 >>Accept Mr. Floppy's Perilous Adventure

.target Emily
step
#questguide
.goto Grizzly Hills,52.4,34.3,50,0
.goto Grizzly Hills,53.81,33.34
>>Escort |cRXP_FRIENDLY_Emily|r
.complete 12027,1 
.target Emily
step
#questguide
#Level 74
>>Travel to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Percy|r, |cRXP_FRIENDLY_Walter|r, and |cRXP_FRIENDLY_Gryan|r
.accept 12414 >>Accept Mounting Up
.goto Grizzly Hills,59.09,26.61
.turnin 12027 >>Turn in Mr. Floppy's Perilous Adventure
.goto Grizzly Hills,59.08,26.48
.turnin 12109 >>Turn in Report to Gryan Stoutmantle... Again
.accept 12158 >>Accept Hollowstone Mine
.accept 11998 >>Accept Softening the Blow
.accept 12770 >>Accept Reallocating Resources
.goto Grizzly Hills,59.42,26.00
.isQuestComplete 12027
.target Squire Percy
.target Squire Walter
.target Captain Gryan Stoutmantle
step
#questguide
>>Travel to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Percy|r, |cRXP_FRIENDLY_Walter|r, and |cRXP_FRIENDLY_Gryan|r
.accept 12414 >>Accept Mounting Up
.goto Grizzly Hills,59.09,26.61
.turnin 12027 >>Turn in Mr. Floppy's Perilous Adventure
.goto Grizzly Hills,59.08,26.48
.turnin 12109 >>Turn in Report to Gryan Stoutmantle... Again
.accept 12158 >>Accept Hollowstone Mine
.accept 11998 >>Accept Softening the Blow
.goto Grizzly Hills,59.42,26.00
.isQuestComplete 12027
.target Squire Percy
.target Squire Walter
.target Captain Gryan Stoutmantle
step
#questguide
#Level 74
>>Travel to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Percy|r and |cRXP_FRIENDLY_Gryan|r
.accept 12414 >>Accept Mounting Up
.goto Grizzly Hills,59.09,26.61
.turnin 12109 >>Turn in Report to Gryan Stoutmantle... Again
.accept 12158 >>Accept Hollowstone Mine
.accept 11998 >>Accept Softening the Blow
.accept 12770 >>Accept Reallocating Resources
.goto Grizzly Hills,59.42,26.00
.target Squire Percy
.target Captain Gryan Stoutmantle
step
#questguide
>>Travel to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Percy|r and |cRXP_FRIENDLY_Gryan|r
.accept 12414 >>Accept Mounting Up
.goto Grizzly Hills,59.09,26.61
.turnin 12109 >>Turn in Report to Gryan Stoutmantle... Again
.accept 12158 >>Accept Hollowstone Mine
.accept 11998 >>Accept Softening the Blow
.goto Grizzly Hills,59.42,26.00
.target Squire Percy
.target Captain Gryan Stoutmantle
step
#Level 74
>>Travel to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.turnin 12109 >>Turn in Report to Gryan Stoutmantle... Again
.accept 12158 >>Accept Hollowstone Mine
.accept 11998 >>Accept Softening the Blow
.accept 12770 >>Accept Reallocating Resources
.goto Grizzly Hills,59.42,26.00
.target Captain Gryan Stoutmantle
step
>>Travel to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.turnin 12109 >>Turn in Report to Gryan Stoutmantle... Again
.accept 12158 >>Accept Hollowstone Mine
.accept 11998 >>Accept Softening the Blow
.goto Grizzly Hills,59.42,26.00
.target Captain Gryan Stoutmantle
step
#completewith UMiners
.goto Grizzly Hills,59.56,26.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McCarty|r
.home >> Set your Hearthstone to the Westfall Brigade Encampment
.target Quartermaster McCarty
step
.goto Grizzly Hills,59.89,26.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samuel|r
.fp Westfall Brigade Encampment >> Get the Westfall Brigade Encampment flight path
.target Samuel Clearbook
step
#questguide
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1
.use 37707 >>Loot a |cRXP_PICK_Wild Carrot|r scattered around the area for each |cRXP_FRIENDLY_Mustang|r you have to return
.use 37708 >>Equip the |T132932:0|t[Stick], then use it on a |cRXP_FRIENDLY_Highland Mustang|r - Ride it back to |cRXP_FRIENDLY_Squire Percy|r in the Westfall Bridge Encampment, then use |T132226:0|t"Hand Over Reins" (1). |cRXP_WARN_You can't loot carrots whilst mounted|r.
.complete 12414,1 
.target Highland Mustang
.target Squire Percy

step
#questguide
.goto Grizzly Hills,59.09,26.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Percy|r
.turnin 12414 >>Turn in Mounting Up
.target Squire Percy
step
#questguide
#completewith next
.goto Grizzly Hills,51.65,26.79,40,0
.goto Grizzly Hills,51.70,25.75,40,0
.goto Grizzly Hills,50.61,24.29,40 >> Travel up the road to |cRXP_FRIENDLY_Tur Ragepaw|r
step
#questguide
.goto Grizzly Hills,52.62,24.06,10,0
.goto Grizzly Hills,52.62,24.06,0
.goto Grizzly Hills,52.07,18.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tur Ragepaw|r
>>Select which role you want him to play while you kill |cRXP_ENEMY_Ursoc|r. |cRXP_WARN_Bear = Tank|r, |cRXP_WARN_Subdue = DPS|r, |cRXP_WARN_Healer = Healer|r
>>Follow him toward |cRXP_ENEMY_Ursoc|r. Kill |cRXP_ENEMY_Ursoc|r and the |cRXP_ENEMY_Blood|r when summoned
>>Use the |T133849:0|t[Purified Ashes of Vordrassil] on the corpse of |cRXP_ENEMY_Ursoc|r
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
.use 37307
.complete 12249,1 
.mob Ursoc
.mob Blood of the Old God
.isOnQuest 12249
step
.goto Grizzly Hills,55.13,23.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Petrov|r inside of Hollowstone Mine
.turnin 12158 >>Turn in Hollowstone Mine
.accept 12159 >>Accept Souls at Unrest
.target Petrov
step
#label UMiners
.goto Grizzly Hills,54.0,22.8,70,0
.goto Grizzly Hills,53.3,19.8
.use 37932 >>Kill |cRXP_ENEMY_Undead Miners|r. Use the |T134249:0|t[Miner's Lantern] in your bags on their corpses to put them to rest
.complete 12159,1 
.mob Undead Miner
step
.goto Grizzly Hills,55.13,23.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Petrov|r inside of Hollowstone Mine
.turnin 12159 >>Turn in Souls at Unrest
.accept 12160 >>Accept A Name from the Past
.target Petrov
step
>>Return to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r and |cRXP_FRIENDLY_Arun|r
.turnin 12160 >>Turn in A Name from the Past
.goto Grizzly Hills,59.42,26.00
.accept 12161 >>Accept Ruuna the Blind
.goto Grizzly Hills,59.17,26.18
.target Captain Gryan Stoutmantle
.target Private Arun
step
.goto Grizzly Hills,44.04,47.94
>>Travel to Ruuna's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna|r
.turnin 12161 >>Turn in Ruuna the Blind
.accept 12328 >>Accept Ruuna's Request
.target Ruuna the Blind
step
#pvp
>>Travel to the Blue Sky Logging Grounds
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hartsman|r, |cRXP_FRIENDLY_Synipus|r, |cRXP_FRIENDLY_Pipthwack|r, and |cRXP_FRIENDLY_Rheanna|r
>>|cRXP_WARN_This quest|r (|cRXP_WARN_and keeping it in your questlog|r) |cRXP_WARN_flags you for PVP|r. |cRXP_WARN_Skip it if you wish|r
.accept 12289 >>Accept Kick 'Em While They're Down
.goto Grizzly Hills,39.36,43.87
.accept 12244 >>Accept Shredder Repair
.goto Grizzly Hills,39.54,43.57
.accept 12268 >>Accept Pieces Parts
.goto Grizzly Hills,39.64,43.38
.accept 12296 >>Accept Life or Death
.goto Grizzly Hills,40.47,42.66
.target Sergeant Hartsman
.target Synipus
.target Pipthwack
.target Rheanna
step
#pvp
#completewith Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Loot the |cRXP_PICK_Cogs|r, |cRXP_PICK_Sprockets|r and |cRXP_PICK_Springs|r that you see in the area
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#pvp
#completewith Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Kill |cRXP_ENEMY_Wounded Skirmishers|r (or |cRXP_ENEMY_Horde Players|r) in the area
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#pvp
#completewith Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5,0
>>Enter a |cRXP_FRIENDLY_Broken-down Shredder|r. Use |T136106:0|t"Overclock" (3) to run faster.
>>Take it back to |cRXP_FRIENDLY_Pipthwack|r and use |T134248:0|t"Shredder Delivery" (4).
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#pvp
#label Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
.use 37576 >>Use the |T133686:0|t[Renewing Bandage] in your bags on |cRXP_FRIENDLY_Wounded Westfall Infantries|r. |cRXP_WARN_Focus on this|r. |cRXP_WARN_The quest item has a long cooldown|r
.complete 12296,1 
.isOnQuest 12296
.target Wounded Westfall Infantry
step
#pvp
#label Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Kill |cRXP_ENEMY_Wounded Skirmishers|r (or |cRXP_ENEMY_Horde Players|r) in the area
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#pvp
#label Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>Loot the |cRXP_PICK_Cogs|r, |cRXP_PICK_Sprockets|r and |cRXP_PICK_Springs|r that you see in the area
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#pvp
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5
>>Enter a |cRXP_FRIENDLY_Broken-down Shredder|r. Use |T136106:0|t"Overclock" (3) to run faster.
>>Take it back to |cRXP_FRIENDLY_Pipthwack|r and use |T134248:0|t"Shredder Delivery" (4).
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#pvp
#label PiecesP
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pipthwack|r
.turnin 12268 >>Turn in Pieces Parts
.goto Grizzly Hills,39.64,43.38,-1
.isQuestComplete 12268
.target Pipthwack
step
#pvp
#label ShredderR
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Synipus|r
.turnin 12244 >>Turn in Shredder Repair
.goto Grizzly Hills,39.54,43.57,-1
.isQuestComplete 12244
.target Synipus
step
#pvp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hartsman|r
.turnin 12289 >>Turn in Kick 'Em While They're Down
.goto Grizzly Hills,39.36,43.87,-1
.isQuestComplete 12289
.target Sergeant Hartsman
step
#pvp
#requires ShredderR
step
#pvp
#requires PiecesP
.goto Grizzly Hills,40.47,42.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rheanna|r
.turnin 12296 >>Turn in Life or Death
.isQuestComplete 12296
.target Rheanna
step
#completewith end
>>Abandon the PVP quests you were unable to complete
.abandon 12268 >>Abandon Pieces Parts
.abandon 12244 >>Abandon Shredder Repair
.abandon 12289 >>Abandon Kick 'Em While They're Down
.abandon 12296 >>Abandon Life or Death
step
.goto Grizzly Hills,38.1,32.0,30,0
.goto Grizzly Hills,36.95,32.36
>>|cRXP_WARN_Go up the tower in the water on the north-side of the Blue Sky Logging grounds|r
>>Go inside the little room at the top and loot the |cRXP_PICK_gem|r on the ground
.turnin 12042 >>Turn in Heart of the Ancients
.accept 12802 >>Accept My Heart is in Your Hands
step
#completewith end
#label DesperateMojo2
.goto Grizzly Hills,43.41,28.26,60,0
.goto Grizzly Hills,44.89,30.56,60,0
.goto Grizzly Hills,46.76,28.20,60,0
.goto Grizzly Hills,44.87,25.77
>>Kill the |cRXP_ENEMY_Drakkari Trolls|r in the area. Loot them for their |cRXP_LOOT_Mojo|r
>>|cRXP_ENEMY_Drakkari Witch Doctors|r |cRXP_WARN_do not drop it|r
.collect 36743,5 
.mob Drakkari Defender
.mob Injured Drakkari Refugee
step
#requires DesperateMojo2
.goto Grizzly Hills,45.00,28.36
>>Use |T134812:0|t[Drakuru's Elixir] at the Brazier
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
.turnin 12802 >>Turn in My Heart is in Your Hands
.accept 12068 >>Accept Voices From the Dust
.target Drakuru
step
.goto Grizzly Hills,52.1,29.7,70,0
.goto Grizzly Hills,46.5,40.8
>>Kill |cRXP_ENEMY_Fern Feeder Moths|r. Loot them for their |cRXP_LOOT_Dust|r
.complete 12328,1 
.mob Fern Feeder Moth
step
.goto Grizzly Hills,44.04,47.94
>>Travel to Ruuna's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna|r
.turnin 12328 >>Turn in Ruuna's Request
.accept 12327 >>Accept Out of Body Experience
.target Ruuna the Blind
step
.goto Grizzly Hills,44.09,47.86
.use 37661 >>Use the |T134810:0|t[Gossamer Potion] at Ruuna's crystal ball in front of her. |cRXP_WARN_Wait out the RP event|r
.cast 49097
.timer 15,Out of Body Experience RP
.complete 12327,1 
step
.goto Grizzly Hills,44.04,47.94
>>Click off the |T135876:0|t"Out of Body Experience" buff
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna|r
.turnin 12327 >>Turn in Out of Body Experience
.accept 12329 >>Accept Fate and Coincidence
.target Ruuna the Blind
step
.goto Grizzly Hills,57.52,41.26
>>Travel to the White Pine Trading Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r
.turnin 12329 >>Turn in Fate and Coincidence
.accept 12134 >>Accept Sasha's Hunt
.accept 12330 >>Accept Anatoly Will Talk
.target Sasha
step
.goto Grizzly Hills,61.46,42.89,60,0
.goto Grizzly Hills,62.40,41.46
>>Kill |cRXP_ENEMY_Solstice Hunters|r in the area. You can LoS them into buildings if needed (as they are ranged). |cRXP_WARN_Do NOT kill|r |cRXP_ENEMY_Tatjana|r
.complete 12134,1 
.mob Solstice Hunter
step
#completewith next
.goto Grizzly Hills,62.19,42.39
.vehicle >>Use the |T135660:0|t[Tranquilizer Dart] in your bags on |cRXP_ENEMY_Tatjana|r or the |cRXP_ENEMY_Horse|r
.timer 36,Tatjana Horse RP
>>Ride |cRXP_ENEMY_Tatjana's Horse|r back to |cRXP_FRIENDLY_Sasha|r
.use 37665
.mob Tatjana
.mob Tatjana's Horse
step
.goto Grizzly Hills,57.78,41.66
.use 37665 >> Ride |cRXP_ENEMY_Tatjana's Horse|r back to |cRXP_FRIENDLY_Sasha|r
.complete 12330,1 
step
.goto Grizzly Hills,57.52,41.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r
.turnin 12134 >>Turn in Sasha's Hunt
.turnin 12330 >>Turn in Anatoly Will Talk
.accept 12411 >>Accept A Sister's Pledge
.target Sasha
step
#questguide
.goto Grizzly Hills,65.7,43.3,25,0
.goto Grizzly Hills,64.80,43.41
>>Enter Duskhowl Den (|cRXP_WARN_the cave below the village|r)
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anya|r in the cage then |cRXP_FRIENDLY_Sasha|r when she runs into the cave
.turnin 12411 >>Turn in A Sister's Pledge
.goto Grizzly Hills,64.80,43.41
.accept 12164 >>Accept Hour of the Worg
.goto Grizzly Hills,64.94,43.43
.target Anya
.target Sasha
step
.goto Grizzly Hills,65.7,43.3,25,0
.goto Grizzly Hills,64.80,43.41
>>Enter Duskhowl Den (|cRXP_WARN_the cave below the village|r)
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anya|r in the cage
.turnin 12411 >>Turn in A Sister's Pledge
.target Anya
step
.goto Grizzly Hills,69.10,40.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hugh Glass|r
>>Buy a |T132621:0|tHowlin' Good Moonshine
.accept 12279 >>Accept A Bear of an Appetite

.complete 11998,1 
.target Hugh Glass
step
#completewith next
.hs >> Hearth back to the Westfall Brigade Encampment
.cooldown item,6948,>2
step
.goto Grizzly Hills,59.80,27.57
>>Return to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brugar|r
.turnin 11998 >>Turn in Softening the Blow
.accept 12002 >>Accept Brothers in Battle
.target Brugar Stoneshear
step
#completewith JournalX
.goto Grizzly Hills,63.3,22.9,0
.goto Grizzly Hills,65.9,23.6,0
>>Kill the |cRXP_ENEMY_Runic Battle Golems|r in the area
.complete 12002,1 
.mob Runic Battle Golem
step
.goto Grizzly Hills,63.68,23.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Earthen Warrior|r corpse on the ground
.accept 11981 >>Accept Find Kurun!
.target Fallen Earthen Warrior
step
#label JournalX
.goto Grizzly Hills,64.29,19.76
>>Loot the |cRXP_PICK_journal|r on the ground
.accept 11986 >>Accept The Damaged Journal
step
#completewith Golem
#label Pages
.goto Grizzly Hills,64.2,21.7,0
>>Loot |cRXP_PICK_8 Missing Journal Pages|r from the scrolls scattered on the ground throughout Thor Modan
.collect 35737,8,11986,1 
step
#completewith Golem
#label Journal
#requires Pages
.goto Grizzly Hills,64.2,21.7,0
.use 35739 >>Combine the Missing Journal Pages by clicking the |T133743:0|t[Incomplete Journal] in your inventory
.complete 11986,1 
step
#label Golem
.goto Grizzly Hills,63.3,22.9,60,0
.goto Grizzly Hills,65.9,23.6
>>Kill the |cRXP_ENEMY_Runic Battle Golems|r in the area
.complete 12002,1 
.mob Runic Battle Golem
step
#completewith next
#label MJPage
#loop
.line Grizzly Hills,64.19,20.00,62.95,22.18,63.39,26.41,65.02,26.37,65.90,22.87,64.19,20.00
.goto Grizzly Hills,64.19,20.00,45,0
.goto Grizzly Hills,62.95,22.18,45,0
.goto Grizzly Hills,63.39,26.41,45,0
.goto Grizzly Hills,65.02,26.37,45,0
.goto Grizzly Hills,65.90,22.87,45,0
.goto Grizzly Hills,64.19,20.00,45,0
>>Loot |cRXP_PICK_8 Missing Journal Pages|r from the scrolls scattered on the ground throughout Thor Modan
.collect 35737,8,11986,1 
step
#completewith next
.goto Grizzly Hills,59.80,27.57,0,0
.use 35739 >>Combine the Missing Journal Pages by clicking the |T133743:0|t[Incomplete Journal] in your inventory
.complete 11986,1 
step
#requires MJPage
>>Return to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torthen|r and |cRXP_FRIENDLY_Brugar|r
.turnin 11986 >>Turn in The Damaged Journal
.accept 11988 >>Accept The Runic Keystone
.goto Grizzly Hills,59.76,27.44
.turnin 12002 >>Turn in Brothers in Battle
.accept 12003 >>Accept Uncovering the Tunnels
.goto Grizzly Hills,59.80,27.57
.target Torthen Deepdig
.target Brugar Stoneshear
step
#completewith next
.goto Grizzly Hills,65.1,19.4,0
.goto Grizzly Hills,66.0,17.0,0
.goto Grizzly Hills,68.6,15.3,0
>>Kill |cRXP_ENEMY_Rune Dwarves|r in the area. Loot them for |cRXP_LOOT_Keystone Fragments|r
.complete 11988,1 
.mob Iron Rune-Shaper
.mob Rune Reaver
step
#label EastB
>>|cRXP_WARN_Go deep inside of the buildings in Thor Modan|r
.complete 12003,3 
.goto Grizzly Hills,63.37,28.60
.complete 12003,2 
.goto Grizzly Hills,66.79,24.57
.complete 12003,1 
.goto Grizzly Hills,62.64,20.67
step
.goto Grizzly Hills,65.1,19.4,70,0
.goto Grizzly Hills,66.0,17.0,70,0
.goto Grizzly Hills,68.6,15.3
>>Kill |cRXP_ENEMY_Rune Dwarves|r in the area. Loot them for |cRXP_LOOT_Keystone Fragments|r
.complete 11988,1 
.mob Iron Rune-Shaper
.mob Rune Reaver
step
>>Return to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torthen|r and |cRXP_FRIENDLY_Brugar|r
.turnin 11988 >>Turn in The Runic Keystone
.accept 11993 >>Accept The Runic Prophecies
.goto Grizzly Hills,59.76,27.44
.turnin 12003 >>Turn in Uncovering the Tunnels
.accept 12010 >>Accept The Fate of Orlond
.goto Grizzly Hills,59.80,27.57
.target Torthen Deepdig
.target Brugar Stoneshear
step
.groundgoto Grizzly Hills,61.5,18.3,100,0
.goto Grizzly Hills,65.77,17.78
>>Travel to top of the mountain |cRXP_WARN_ABOVE|r Thor Modan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
.turnin 11981 >>Turn in Find Kurun!
.accept 11982 >>Accept Raining Down Destruction
.target Kurun
step
.goto Grizzly Hills,65.34,13.06,20,0
.goto Grizzly Hills,67.43,12.42,20,0
>>Collect the |cRXP_PICK_glowing boulders|r on the ground
.collect 35734,5,11982,1,-1 
.use 35734 >>Throw a |T132384:0|t[Boulder] 5 times down onto an |cRXP_ENEMY_Iron Dwarf|r below (|cRXP_WARN_it can be the same|r |cRXP_ENEMY_Dwarf|r). Collect more |cRXP_PICK_Boulders|r if needed
.complete 11982,1 
.goto Grizzly Hills,67.76,14.89
.mob Iron Rune-Shaper
.mob Rune Reaver
step
.goto Grizzly Hills,65.77,17.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
.turnin 11982 >>Turn in Raining Down Destruction
.accept 12070 >>Accept Rallying the Troops
.target Kurun
step
.goto Grizzly Hills,67.37,10.52,60,0
.goto Grizzly Hills,70.41,8.54,60,0
.goto Grizzly Hills,69.99,3.76
.use 36764 >>Go up to a |cRXP_FRIENDLY_Grizzly Hills Giant|r and use the |T133451:0|t[Shard of the Earth] in your bags on them. Kill the |cRXP_ENEMY_Iron Rune Avengers|r that spawn
.complete 12070,1 
.complete 12070,2 
.target Grizzly Hills Giant
.mob Iron Rune Avenger
step
.goto Grizzly Hills,65.77,17.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
.turnin 12070 >>Turn in Rallying the Troops
.accept 11985 >>Accept Into the Breach
.target Kurun
step
.goto Grizzly Hills,67.50,15.27
>>|cRXP_WARN_Carefully jump down into Thor Modan|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of |cRXP_FRIENDLY_Surveyor Orlond|r
.turnin 12010 >>Turn in The Fate of Orlond
.accept 12014 >>Accept Steady as a Rock?
.target Surveyor Orlond
step
#completewith next
.goto Grizzly Hills,67.5,15.5,0
>>Kill |cRXP_ENEMY_Threshadons|r in the water. Loot them for the |cRXP_LOOT_Portable Seismograph|r
.complete 12014,2 
.mob Subterranean Thresher
step
>>|cRXP_WARN_Click the letters on the wall to read the prophecies|r
.complete 11993,3 
.goto Grizzly Hills,68.52,16.21
.complete 11993,1 
.goto Grizzly Hills,68.99,14.43
step
#completewith end
#label Secondpr
.goto Grizzly Hills,70.18,14.68,0,0
>>|cRXP_WARN_Click the letters on the wall to read the prophecy|r
.complete 11993,2 
step
.goto Grizzly Hills,70.0,14.0,20,0
.goto Grizzly Hills,67.5,15.5
>>Kill |cRXP_ENEMY_Threshadons|r in the water. Loot them for the |cRXP_LOOT_Portable Seismograph|r
.complete 12014,2 
.mob Subterranean Thresher
step
#completewith end
#label Argrum
.goto Grizzly Hills,70.21,12.93,0,0
>>Kill |cRXP_ENEMY_Iron Thane Argrum|r
.complete 11985,1 
.mob Iron Thane Argrum
step
.goto Grizzly Hills,70.61,13.38
.use 35837 >>Use the |T133870:0|t[Portable Seismograph] in your bags near the bridge. Loot the |cRXP_PICK_Stability Profile|r after placing the Seismograph
.complete 12014,1 
step
#requires Argrum
.groundgoto Grizzly Hills,65.1,19.5,40,0
.groundgoto Grizzly Hills,60.9,19.8,70,0
.goto Grizzly Hills,65.77,17.78
>>Leave Thor Modan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
.turnin 11985 >>Turn in Into the Breach
.accept 12081 >>Accept Gavrock
.target Kurun
step
#completewith Prophecies
.hs >> Hearth to Westfall Brigade Encampment
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.goto Grizzly Hills,59.42,26.00
.accept 12770 >>Accept Reallocating Resources
.target Captain Gryan Stoutmantle
step
#label Prophecies
>>Return to the Westfall Brigade Encampment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torthen|r and |cRXP_FRIENDLY_Brugar|r
.turnin 11993 >>Turn in The Runic Prophecies
.goto Grizzly Hills,59.76,27.44
.turnin 12014 >>Turn in Steady as a Rock?
.accept 12128 >>Accept Check Up on Raegar
.goto Grizzly Hills,59.80,27.57
.target Torthen Deepdig
.target Brugar Stoneshear
step
>>Travel to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkor|r and |cRXP_FRIENDLY_Kraz|r
.turnin 12190 >>Turn in Say Hello to My Little Friend
.accept 12113 >>Accept Nice to Meat You
.accept 12114 >>Accept Therapy
.goto Grizzly Hills,73.77,34.02
.accept 12116 >>Accept It Takes Guts....
.goto Grizzly Hills,73.91,34.12
.target Harkor
.target Kraz
step
#completewith Gavrock12
.goto Grizzly Hills,72.5,33.1,0
.goto Grizzly Hills,65.8,33.3,0
.goto Grizzly Hills,68.8,32.9,0
.goto Grizzly Hills,75.8,39.2,0
>>Kill |cRXP_ENEMY_Shovelhorns|r and |cRXP_ENEMY_Prowlers|r in the area. Loot them for their |cRXP_LOOT_Steaks|r and |cRXP_LOOT_Meat|r
.complete 12113,1 
.complete 12113,2 
.mob Longhoof Grazer
.mob Duskhowl Prowler
step
#completewith next
.cast 43308 >> Cast Find Fish to track the Northern Salmon schools
.spellmissing 43308
step
#completewith next
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>Use the |T134325:0|t[Fishing Net] in your bags on the schools of |cRXP_PICK_Northern Salmon|r fish
.complete 12279,1 
step
#label Gavrock12
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r on the island
.turnin 12081 >>Turn in Gavrock
.accept 12093 >>Accept Runes of Compulsion
.target Gavrock
step
#questguide
>>Travel to Bloodmoon Isle. Kill |cRXP_ENEMY_Selas|r and |cRXP_ENEMY_Varlam|r
.complete 12164,2 
.goto Grizzly Hills,85.94,27.91
.complete 12164,1 
.goto Grizzly Hills,84.91,23.31
.isOnQuest 12164
.mob Selas
.mob Varlam

step
#questguide
.groundgoto Grizzly Hills,86.34,23.88,40,0
.groundgoto Grizzly Hills,86.5,26.8,20,0
.goto Grizzly Hills,86.96,26.50
>>Follow the path up and then to the side of the keep. Kill |cRXP_ENEMY_Goremaw|r
.complete 12164,3 
.unitscan Goremaw
step
#questguide
.groundgoto Grizzly Hills,86.82,25.85,15,0
.goto Grizzly Hills,87.65,26.48
>>Enter Shadowfang Tower. Go to the top, then kill |cRXP_ENEMY_Arugal|r
.complete 12164,4 
.mob Shade of Arugal
step
#completewith CJars
.goto Grizzly Hills,72.5,33.1,0
.goto Grizzly Hills,65.8,33.3,0
.goto Grizzly Hills,68.8,32.9,0
.goto Grizzly Hills,75.8,39.2,0
>>Kill |cRXP_ENEMY_Shovelhorns|r and |cRXP_ENEMY_Prowlers|r in the area. Loot them for their |cRXP_LOOT_Steaks|r and |cRXP_LOOT_Meat|r
.complete 12113,1 
.complete 12113,2 
.mob Longhoof Grazer
.mob Duskhowl Prowler
step
#completewith next
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>Use the |T134325:0|t[Fishing Net] in your bags on the schools of |cRXP_PICK_Northern Salmon|r fish
.complete 12279,1 
step
.goto Grizzly Hills,75.03,37.18
>>Kill the |cRXP_ENEMY_Iron Rune-Weavers|r around the purple circle. Kill |cRXP_ENEMY_Overseer Lochli|r when he spawns.
.complete 12093,3 
.mob Iron Rune-Weaver
.mob Overseer Lochli
step
.goto Grizzly Hills,71.85,34.26
>>Kill the |cRXP_ENEMY_Iron Rune-Weavers|r around the purple circle. Kill |cRXP_ENEMY_Overseer Korgan|r when he spawns.
.complete 12093,2 
.mob Iron Rune-Weaver
.mob Overseer Korgan
step
.goto Grizzly Hills,67.52,29.46
>>Kill the |cRXP_ENEMY_Iron Rune-Weavers|r around the purple circle. Kill |cRXP_ENEMY_Overseer Durval|r when he spawns.
.complete 12093,1 
.mob Iron Rune-Weaver
.mob Overseer Durval
step
.goto Grizzly Hills,78.79,43.70
>>Kill the |cRXP_ENEMY_Iron Rune-Weavers|r around the purple circle. Kill |cRXP_ENEMY_Overseer Brunon|r when he spawns.
.complete 12093,4 
.mob Iron Rune-Weaver
.mob Overseer Brunon
step
#completewith Stones3
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>Use the |T134325:0|t[Fishing Net] in your bags on the schools of |cRXP_PICK_Northern Salmon|r fish
.complete 12279,1 
step
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
.turnin 12093 >>Turn in Runes of Compulsion
.accept 12094 >>Accept Latent Power
.target Gavrock
step
#label Stones3
.use 36787 >>Use the |T134562:0|t[Shard of Gavrock] on the |cRXP_PICK_blue glowing stones|r around eastern Grizzly Hills
.complete 12094,1 
.goto Grizzly Hills,71.25,39.73
step
.use 36787 >>Use the |T134562:0|t[Shard of Gavrock] on the |cRXP_PICK_blue glowing stones|r around eastern Grizzly Hills
.complete 12094,3 
.goto Grizzly Hills,74.08,44.23
step
#completewith Gavrock4
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>Use the |T134325:0|t[Fishing Net] in your bags on the schools of |cRXP_PICK_Northern Salmon|r fish
.complete 12279,1 
step
.use 36787 >>Use the |T134562:0|t[Shard of Gavrock] on the |cRXP_PICK_blue glowing stones|r around eastern Grizzly Hills
.complete 12094,2 
.goto Grizzly Hills,78.88,39.97
step
#label Gavrock4
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
.turnin 12094 >>Turn in Latent Power
.accept 12099 >>Accept Free at Last
.target Gavrock
step
.goto Grizzly Hills,75.48,34.51,60,0
.goto Grizzly Hills,77.85,37.64,60,0
.goto Grizzly Hills,80.04,38.56,60,0
.goto Grizzly Hills,81.59,37.94,60,0
.goto Grizzly Hills,81.35,45.70,60,0
.goto Grizzly Hills,75.48,34.51
.use 37542 >>Use the |T134325:0|t[Fishing Net] in your bags on the schools of |cRXP_PICK_Northern Salmon|r fish
.complete 12279,1 
step
.goto Grizzly Hills,76.1,41.4,70,0
.goto Grizzly Hills,66.4,29.7
.use 36796 >>Use |T134397:0|t[Gavrock's Runebreaker] in your bags on a |cRXP_ENEMY_Runed Giant|r. |cRXP_WARN_If it fails and the giant is still hostile|r, |cRXP_WARN_use it on it again|r (|cRXP_WARN_until it becomes|r |cRXP_FRIENDLY_friendly|r). |cRXP_WARN_Kill mobs or complete other objectives whilst waiting for the item cooldown|r
.complete 12099,1 
.mob Runed Giant
step
.goto Grizzly Hills,69.10,40.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hugh Glass|r
.turnin 12279 >>Turn in A Bear of an Appetite
.target Hugh Glass
step
#questguide
.goto Grizzly Hills,57.5,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r
.turnin 12164 >>Turn in Hour of the Worg
.isQuestComplete 12164
.target Sasha
step
#completewith next
.abandon 12164 >>Abandon Hour of the Worg
step
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
.turnin 12099 >>Turn in Free at Last
.target Gavrock
step
#completewith next
.goto Grizzly Hills,73.0,24.6,0
.goto Grizzly Hills,72.6,26.8,0
.goto Grizzly Hills,70.1,26.7,0
.goto Grizzly Hills,70.2,23.5,0
>>Kill |cRXP_ENEMY_Drakkari Oracles|r and |cRXP_ENEMY_Protectors|r in the area. Loot them for their |cRXP_LOOT_Mojo|r
.complete 12114,1 
.complete 12114,2 
.collect 36758,5,12120,1 
.mob Drakkari Oracle
.mob Drakkari Protector
step
#label CJars
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.2,21.4,30,0
.goto Grizzly Hills,70.7,19.1
>>Enter the Drakil'jin ruins
>>Loot the |cRXP_PICK_Drakkari Canopic Jars|r in the room full of spirits. |cRXP_WARN_Try to loot them all at once so you don't aggro more than 1 spirit|r
.complete 12116,1 
step
.goto Grizzly Hills,69.49,17.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r in the cage. Start his escort
.accept 12082 >>Accept Dun-da-Dun-tah!
.timer 107,Campfire Room Closes
.target Harrison Jones
step
.goto Grizzly Hills,69.37,18.23
>>|cRXP_WARN_Quickly loot the|r |cRXP_PICK_Drakkari tablet|r |cRXP_WARN_in the same room that the cage is in before the campfire room closes|r
.complete 12068,1 
step
#completewith next
.goto Grizzly Hills,73.0,24.6,0
.goto Grizzly Hills,72.6,26.8,0
.goto Grizzly Hills,70.1,26.7,0
.goto Grizzly Hills,70.2,23.5,0
>>Kill |cRXP_ENEMY_Drakkari Oracles|r and |cRXP_ENEMY_Protectors|r in the area. Loot them for their |cRXP_LOOT_Mojo|r
.complete 12114,1 
.complete 12114,2 
.collect 36758,5,12120,1 
.mob Drakkari Oracle
.mob Drakkari Protector
step
#label Harrison
.goto Grizzly Hills,70.5,17.7,25,0
.goto Grizzly Hills,73.52,24.02
>>|cRXP_WARN_Stay in the bonfire room for the |cRXP_ENEMY_Snake|r event|r. Focus on killing the adds whilst |cRXP_FRIENDLY_Harrison|r builds threat on the |cRXP_ENEMY_Snake|r. After the adds are dead, kill the |cRXP_ENEMY_Snake|r (|cRXP_WARN_You can just kill the|r |cRXP_ENEMY_Snake|r |cRXP_WARN_if you're strong enough|r)
>>|cRXP_WARN_Follow|r |cRXP_FRIENDLY_Harrison|r |cRXP_WARN_out of the ruins|r
.complete 12082,1 
.target Harrison Jones
.mob Tecahuna
step
.goto Grizzly Hills,73.0,24.6,70,0
.goto Grizzly Hills,72.6,26.8,70,0
.goto Grizzly Hills,70.1,26.7,70,0
.goto Grizzly Hills,73.0,24.6,70,0
.goto Grizzly Hills,72.6,26.8,70,0
.goto Grizzly Hills,70.1,26.7,70,0
.goto Grizzly Hills,70.2,23.5
>>Kill |cRXP_ENEMY_Drakkari Oracles|r and |cRXP_ENEMY_Protectors|r in the area. Loot them for their |cRXP_LOOT_Mojo|r
.complete 12114,1 
.complete 12114,2 
.collect 36758,5,12120,1 
.mob Drakkari Oracle
.mob Drakkari Protector
step
#completewith next
.goto Grizzly Hills,68.8,32.9,0
.goto Grizzly Hills,75.8,39.2,0
>>Kill |cRXP_ENEMY_Shovelhorns|r in the area. Loot them for their |cRXP_LOOT_Steaks|r
.complete 12113,2 
.mob Longhoof Grazer
step
.goto Grizzly Hills,72.5,33.1,60,0
.goto Grizzly Hills,65.8,33.3
>>Kill |cRXP_ENEMY_Prowlers|r in the area. Loot them for their |cRXP_LOOT_Meat|r
.complete 12113,1 
.mob Duskhowl Prowler
step
.goto Grizzly Hills,68.84,32.96,60,0
.goto Grizzly Hills,77.90,43.10,60,0
.goto Grizzly Hills,78.40,39.37,60,0
.goto Grizzly Hills,69.64,38.64
>>Kill |cRXP_ENEMY_Shovelhorns|r in the area. Loot them for their |cRXP_LOOT_Steaks|r
.complete 12113,2 
.mob Longhoof Grazer
step
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkor|r and |cRXP_FRIENDLY_Kraz|r
.turnin 12113 >>Turn in Nice to Meat You
.turnin 12082 >>Turn in Dun-da-Dun-tah!
.turnin 12114 >>Turn in Therapy
.goto Grizzly Hills,73.77,34.02,-1
.turnin 12116 >>Turn in It Takes Guts....
.accept 12120 >>Accept Drak'aguul's Mallet
.goto Grizzly Hills,73.91,34.12,-1
.target Harkor
.target Kraz
step
.goto Grizzly Hills,71.54,29.78,50,0
.goto Grizzly Hills,73.69,29.72
.line Grizzly Hills,71.54,29.78,,73.69,29.72
>>Kill |cRXP_ENEMY_Drak'aguul|r. Loot him for his |cRXP_LOOT_Mallet|r
.complete 12120,1 
.unitscan Drak'aguul
step
.goto Grizzly Hills,73.91,34.12
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
.turnin 12120 >>Turn in Drak'aguul's Mallet
.accept 12121 >>Accept See You on the Other Side
.target Kraz
step
.goto Grizzly Hills,71.74,26.20
>>Go to the Brazier (|cRXP_WARN_NOT the fire surrounded by the 3 gongs|r). Use |T134812:0|t[Drakuru's Elixir]
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
.turnin 12068 >>Turn in Voices From the Dust

.target Drakuru
step
.goto Grizzly Hills,71.41,24.55
.use 36834 >>Go to the 3 gongs at Drakil'jin ruins. Use the |T133474:0|t[Charged Drakil'jin Mallet] in your bags
.cast 47701
.timer 13,See You on the Other Side RP
.complete 12121,1 
step
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.2,21.4,30,0
.goto Grizzly Hills,69.41,19.48
>>Enter the Drakil'jin Ruins (|cRXP_WARN_You CAN cast spells in the ghost form|r)
>>Go into the main room just before the one you escorted |cRXP_FRIENDLY_Harrison|r out of
.use 36834 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'jo|r. (|cRXP_WARN_Use the Gong again if you somehow lose the|r |T132094:0|t"On the Other Side" |cRXP_WARN_buff|r)
.link /console ffxDeath 0 >>If you can't see because of the ghost effect, copy paste this command (Click here), then type /reload
.turnin 12121 >>Turn in See You on the Other Side
.accept 12137 >>Accept Chill Out, Mon
.target Gan'jo
step
.goto Grizzly Hills,69.36,19.57
>>Loot the |cRXP_PICK_green chest|r inside the mini water fountain-like structure
.complete 12137,1 
step
.goto Grizzly Hills,69.41,19.48,9,0
.goto Grizzly Hills,71.4,19.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'jo|r again. |cRXP_WARN_Ask him to return you to the world of the living|r
.use 36859 >>Use the |T133850:0|t[Snow of Eternal Slumber] on the |cRXP_ENEMY_Ancient Drakkaris|r in the room you got the jars from, then loot the |cRXP_PICK_Mummys|r that they run to
.complete 12137,2 
.skipgossip
.target Gan'jo
.mob Ancient Drakkari Soothsayer
.mob Ancient Drakkari Warmonger
step
.goto Grizzly Hills,73.91,34.12
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
.turnin 12137 >>Turn in Chill Out, Mon
.accept 12152 >>Accept Jin'arrak's End
.target Kraz
step
#completewith end
#label SacreD
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.2,21.4,30,0
.goto Grizzly Hills,71.25,19.66
>>Enter the Drakil'jin Ruins
>>Loot the |cRXP_PICK_bowl of fruit|r on the north-east wall of the room
.collect 36870,1 
step
#requires SacreD
#completewith next
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.41,24.55
.use 36873 >>Use the |T132123:0|t[Drakkari Spirit Dust] in your inventory to make the |T134056:0|tInfused Drakkari Offering
.collect 37063,1 
step
#requires SacreD
.goto Grizzly Hills,71.41,24.55
.use 37063 >>Go back to the 3 gongs just outside of the Drakil'jin Ruins. Use the |T134056:0|t[Infused Drakkari Offering]
.complete 12152,1 
step
.goto Grizzly Hills,73.91,34.12
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
.turnin 12152 >>Turn in Jin'arrak's End
.target Kraz
step
>>Travel to Prospector's Point
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilian|r and |cRXP_FRIENDLY_Raegar|r
.turnin 12128 >>Turn in Check Up on Raegar
.accept 12129 >>Accept The Perfect Plan
.goto Grizzly Hills,77.09,48.64
.accept 12180 >>Accept The Captive Prospectors
.goto Grizzly Hills,76.97,48.44
.target Mountaineer Kilian
.target Raegar Breakbrow
step
#completewith Varana
#label Blueprints
.goto Grizzly Hills,81.5,60.3,0
.goto Grizzly Hills,76.3,62.9,0
.goto Grizzly Hills,75.0,57.0,0
>>Kill |cRXP_ENEMY_Iron Rune-Smiths|r in the area. Loot them for the |cRXP_LOOT_Golem Blueprints|r
.collect 36849,1,12129,1 
.collect 36850,1,12129,1 
.collect 36851,1,12129,1 
.mob Iron Rune-Smith
step
#completewith next
#requires Blueprints
.use 36849 >>Click on any of the |T134331:0|t[Golem Blueprint Sections] in your bags to combine them into the |T134332:0|tWar Golem Blueprint
.complete 12129,1 
step
#label Varana
>>Kill |cRXP_ENEMY_Overseers|r, |cRXP_ENEMY_War Golems|r, and |cRXP_ENEMY_Sentries|r. Loot them for |cRXP_LOOT_Dun Argol Cage Keys|r
>>Use the |cRXP_LOOT_Keys|r to free |cRXP_FRIENDLY_Prospector Gann|r inside the cage in the building, |cRXP_FRIENDLY_Prospector Torgan|r outside, and |cRXP_FRIENDLY_Prospector Varana|r outside
.collect 37013,3,12180,7,-1 
.complete 12180,1 
.goto Grizzly Hills,76.46,55.43
.complete 12180,2 
.goto Grizzly Hills,76.35,58.53
.complete 12180,3 
.goto Grizzly Hills,76.06,61.07
.mob Iron Rune Overseer
.mob Runic Lightning Gunner
.mob Runic War Golem
.mob Lightning Sentry
.target Prospector Gann
.target Prospector Torgan
.target Prospector Varana
step
.goto Grizzly Hills,76.68,63.62,30,0
.goto Grizzly Hills,76.77,58.73,30,0
.goto Grizzly Hills,75.19,57.22,30,0
.goto Grizzly Hills,76.56,55.09
>>Kill |cRXP_ENEMY_Iron Rune-Smiths|r in the area. Loot them for the |cRXP_LOOT_Golem Blueprints|r
.collect 36849,1,12129,1 
.collect 36850,1,12129,1 
.collect 36851,1,12129,1 
.mob Iron Rune-Smith
step
.goto Grizzly Hills,77.09,48.64
.use 36849 >>Click on any of the |T134331:0|t[Golem Blueprint Sections] in your bags to combine them into the |T134332:0|tWar Golem Blueprint
.complete 12129,1 
step
>>Travel to Prospector's Point
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar|r and |cRXP_FRIENDLY_Kilian|r
.turnin 12129 >>Turn in The Perfect Plan
.accept 12130 >>Accept Why Fabricate When You Can Appropriate?
.goto Grizzly Hills,77.09,48.64
.turnin 12180 >>Turn in The Captive Prospectors
.accept 12183 >>Accept Looking the Part
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
#completewith next
.goto Grizzly Hills,76.2,62.8,0
>>Loot the |cRXP_PICK_War Golem Parts|r mainly scattered throughout the main building of Dun Argol's middle and top floors. |cRXP_WARN_DO NOT go downstairs|r
.complete 12130,1 
step
.goto Grizzly Hills,75.99,57.88,30,0
.goto Grizzly Hills,77.81,59.06,30,0
.goto Grizzly Hills,79.13,59.52
>>Kill an |cRXP_ENEMY_Iron Rune Overseer|r. Loot him for his |cRXP_LOOT_Uniform|r
.complete 12183,1 
.mob Iron Rune Overseer
step
.goto Grizzly Hills,75.77,57.02,40,0
.goto Grizzly Hills,75.49,58.20,40,0
.goto Grizzly Hills,73.56,60.02,40,0
.goto Grizzly Hills,76.18,62.77,30,0
.goto Grizzly Hills,77.07,62.52,30,0
.goto Grizzly Hills,75.90,63.94,30,0
.goto Grizzly Hills,75.99,57.88
>>Loot the |cRXP_PICK_War Golem Parts|r mainly scattered throughout the main building of Dun Argol's middle and top floors. |cRXP_WARN_DO NOT go downstairs|r
.complete 12130,1 
step
>>Return to Prospector's Point
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar|r and |cRXP_FRIENDLY_Kilian|r
.turnin 12130 >>Turn in Why Fabricate When You Can Appropriate?
.accept 12131 >>Accept We Have the Power
.goto Grizzly Hills,77.09,48.64
.turnin 12183 >>Turn in Looking the Part
.accept 12184 >>Accept Cultivating an Image
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
#completewith next
.goto Grizzly Hills,76.2,62.8,0
.use 37045 >>Kill |cRXP_ENEMY_Iron Dwarves|r in Dun Argol. Use |T134442:0|t[Kilian's Camera] in your bags on their corpses
.complete 12184,1 
.mob Iron Rune Overseer
.mob Iron Rune-Smith
.mob Runic Lightning Gunner
step
>>Go inside either building
>>Kill |cRXP_ENEMY_Rune-Smith Durar|r and |cRXP_ENEMY_Rune-Smith Kalthorn|r. Loot them for their |cRXP_LOOT_Power Cells|r
.complete 12131,1 
.goto Grizzly Hills,74.89,56.91,-1
.complete 12131,2 
.goto Grizzly Hills,76.83,59.35,-1
.mob Rune-Smith Durar
.mob Rune-Smith Kathorn
step
.goto Grizzly Hills,76.52,55.06,30,0
.goto Grizzly Hills,76.68,63.61
.use 37045 >>Kill |cRXP_ENEMY_Iron Dwarves|r in Dun Argol. Use |T134442:0|t[Kilian's Camera] in your bags on their corpses
.complete 12184,1 
.mob Iron Rune Overseer
.mob Iron Rune-Smith
.mob Runic Lightning Gunner
step
>>Return to Prospector's Point
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar|r and |cRXP_FRIENDLY_Kilian|r
.turnin 12131 >>Turn in We Have the Power
.accept 12138 >>Accept ... Or Maybe We Don't
.goto Grizzly Hills,77.09,48.64
.turnin 12184 >>Turn in Cultivating an Image
.accept 12185 >>Accept Put on Your Best Face for Loken
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
.goto Grizzly Hills,75.55,50.72,60,0
.goto Grizzly Hills,73.21,51.94,60,0
.goto Grizzly Hills,73.30,57.38
.use 36936 >>Use the |T133015:0|t[Golem Control Unit] in your bags. Kill |cRXP_ENEMY_Lightning Sentries|r with the |cRXP_FRIENDLY_Depleted War Golem|r out (|cRXP_WARN_within 30 yards or less|r) and then wait for it (|cRXP_WARN_again|r, |cRXP_WARN_within 30 yards or less|r) to collect the |cRXP_PICK_Sentry's Charge|r
>>Be careful, as the |cRXP_ENEMY_Lightning Sentries|r are Nature immune << Shaman/Druid
.complete 12138,1 
.mob Lightning Sentry
step
#completewith next
.cast 48064 >> Mount up, then use the |T133665:0|t[Overseer Disguise Kit] in your bags.
step
.groundgoto Grizzly Hills,78.20,59.20,60,0
.goto Grizzly Hills,81.60,60.34
.cast 3365 >>|cRXP_WARN_Do NOT cast any spells whilst disguised|r. Ride to the easternmost building and click on |cRXP_PICK_Loken's Pedestal|r. |cRXP_WARN_Do NOT wait out the RP event|r
.timer 24,Message from Loken RP

.use 37071
step
>>Return to Prospector's Point
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar|r and |cRXP_FRIENDLY_Kilian|r
.turnin 12138 >>Turn in ... Or Maybe We Don't
.accept 12153 >>Accept The Iron Thane and His Anvil
.accept 12154 >>Accept Blackout
.goto Grizzly Hills,77.09,48.64
.turnin 12185 >>Turn in Put on Your Best Face for Loken
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
#completewith next
.goto Grizzly Hills,75.95,63.28
.vehicle >>Travel to the top building and take the elevator down to the bottom floor. Use the |T133015:0|t[Golem Control Unit]
.use 36865
step
>>Use |T136099:0|t"EMP" (2) to remove |cRXP_ENEMY_Furyhammer's|r invulnerability and stun |cRXP_ENEMY_The Anvil|r. Spam |T136049:0|t"Charged Smash" (1) and right click him to kill |cRXP_ENEMY_Furyhammer|r
.complete 12153,1 
.goto Grizzly Hills,76.36,63.72
.use 36865
.mob Iron Thane Furyhammer
step
>>|cRXP_WARN_Exit the golem|r
.use 36935 >>Use |T133715:0|t[Raegar's Explosives] in your bags |cRXP_WARN_in the middle of the bottom floor to destroy the Power Core|r
.complete 12154,1 
.goto Grizzly Hills,76.46,63.25
.use 36865
step
.goto Grizzly Hills,77.09,48.64
>>Return to Prospector's Point
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar|r
.turnin 12153 >>Turn in The Iron Thane and His Anvil
.turnin 12154 >>Turn in Blackout
.target Raegar Breakbrow
step << Druid
#completewith DruidTrain2
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <75,1
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48440 >> Train your class spells
.xp <75,1
.target Loganaar
step << Druid
#label DruidTrain2
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48443 >> Train your class spells
.xp <77,1
.target Loganaar
step << DK
#completewith DKTrain2
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <75,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49923 >> Train your class spells
.xp <75,1
.target Amal'thazad
step << DK
#label DKTrain2
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49894 >> Train your class spells
.xp <76,1
.target Amal'thazad
step << Mage
#completewith MageTrain2
.zone Stormwind City >> Teleport to Stormwind
.xp <75,1
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42955 >> Train your class spells
.xp <75,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42920 >> Train your class spells
.xp <76,1
.target Elsharin
.target Jennea Cannon
step << Mage
#label MageTrain2
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.train 42985 >> Train your class spells
.xp <77,1
.target Elsharin
.target Jennea Cannon
step << Shaman/Druid/DK/Mage
#completewith next
.hs >> Hearth to the Westfall Brigade Encampment
step
#completewith next
.goto Grizzly Hills,59.89,26.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samuel|r
.fly Amberpine Lodge >> Fly to Amberpine Lodge
.noflyable Grizzly Hills,300
.target Samuel Clearbook
step
#questguide
.goto Grizzly Hills,31.16,59.47
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thayreen|r
.turnin 12248 >>Turn in Vordrassil's Sapling
.turnin 12250 >>Turn in Vordrassil's Seeds
.turnin 12249 >>Turn in Ursoc, the Bear God
.isQuestComplete 12249
.target Hierophant Thayreen
step
#label end
.goto Grizzly Hills,31.16,59.47
>>Return to Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thayreen|r
.turnin 12248 >>Turn in Vordrassil's Sapling
.turnin 12250 >>Turn in Vordrassil's Seeds
.target Hierophant Thayreen
step << DK/Mage/Druid
.goto Grizzly Hills,31.31,59.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vana|r
.fly Westfall Brigade >> Fly to the Westfall Brigade Encampment
.target Vana Grey
step << !DK !Mage !Druid
#completewith next
.goto Grizzly Hills,32.00,59.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelani|r
.target Magistrix Haelenai
.accept 12794 >>Accept The Magical Kingdom of Dalaran
.zoneskip Stormwind City
.zoneskip Dalaran
.target Magistrix Haelenai
step << !DK !Mage !Druid
.goto Grizzly Hills,32.00,59.78
.zone Dalaran >>Ask |cRXP_FRIENDLY_Magistrix Haelani|r to be teleported to Dalaran
.target Magistrix Haelenai
.zoneskip Stormwind City
.skipgossip
step << !DK !Druid !Mage
.abandon 12794 >> Abandon The Magical Kingdom of Dalaran. |cRXP_WARN_DO NOT TURN THIS IN|r
step << Rogue/Warlock/Priest/Paladin
#completewith next
.goto Dalaran,38.65,59.33,15,0
.goto Dalaran,39.48,63.98
.zone Ironforge >>Go into The Silver Enclave. Take the portal to Ironforge
step << Rogue/Warlock
#completewith next
.goto Ironforge,40.10,12.16,30,0
.goto Ironforge,52.92,12.82,10,0 << Rogue
.goto Ironforge,50.20,7.46,10 >>Go inside the building << Warlock
.goto Ironforge,51.88,14.30,10 >>Go inside the building << Rogue
step << Warlock
.goto Ironforge,50.35,5.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.target Briarthorn
.train 47813 >> Train your class spells
.xp <77,1
step << Rogue
.goto Ironforge,51.50,15.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r
.target Fenthwick
.train 48637 >> Train your class spells
.xp <76,1
step << Priest
.goto Ironforge,24.40,9.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Braenna Flintcrag|r
.target Braenna Flintcrag
.train 48124 >> Train your class spells
.xp <75,1
step << Paladin
.goto Ironforge,24.55,4.47,-1
.goto Ironforge,23.11,6.13,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r or |cRXP_FRIENDLY_Brandur Ironhammer|r
.target Beldruk Doombrow
.target Brandur Ironhammer
.train 48818 >> Train your class spells
.xp <75,1
step << Shaman/Hunter/Warrior
#completewith next
.goto Dalaran,38.65,59.33,15,0
.goto Dalaran,38.21,66.36
.zone The Exodar >>Go into The Silver Enclave. Take the portal to the Exodar
step << Shaman
#completewith ShamanTraining2
.goto The Exodar,35.15,48.76,20,0
.goto The Exodar,34.96,43.68,20 >>Travel toward |cRXP_FRIENDLY_Gurrag|r
step << Shaman
.goto The Exodar,24.27,39.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurrag|r
.target Gurrag
.train 49280 >> Train your class spells
.xp 75,1
step << Shaman
#label ShamanTraining2
.goto The Exodar,24.27,39.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurrag|r
.target Gurrag
.train 58803 >> Train your class spells
.xp 75,1
step << Hunter/Warrior
#completewith next
.goto The Exodar,46.17,72.79,20,0
.goto The Exodar,49.21,74.94,20,0
.goto The Exodar,53.74,85.39,30,0 << Warrior
.goto The Exodar,53.74,85.39,30 >>Travel toward |cRXP_FRIENDLY_Deremiis|r << Hunter
.goto The Exodar,50.87,80.83,15,0 << Warrior
.goto The Exodar,54.07,78.05,15 >>Travel toward |cRXP_FRIENDLY_Behomat|r << Warrior
step << Hunter
.goto The Exodar,47.07,86.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deremiis|r
.target Deremiis
.train 61005 >> Train your class spells
.xp <75,1
step << Hunter
.goto The Exodar,47.07,86.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deremiis|r
.target Deremiis
.train 53338 >> Train your class spells
.xp <76,1
step << Warrior
.goto The Exodar,55.58,82.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
.target Behomat
.train 55694 >> Train your class spells
.xp <75,1
step << !DK !Druid !Mage
#completewith ZulDrak
.hs >> Hearth to the Westfall Brigade Encampment
step
.goto Grizzly Hills,59.42,26.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.accept 12770 >>Accept Reallocating Resources
.target Captain Gryan Stoutmantle
step
#label ZulDrak
.goto Grizzly Hills,59.89,26.69
.zone Zul'Drak >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samuel|r. Ask for a flight to Light's Breach
.skipgossip 26876,2
.target Samuel Clearbook
]]);

RXPGuides.RegisterGuide([[
#cata
#mop
#wotlk
#speedrunguide
#xprate >1.49 << wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 74-75 Grizzly Hills
#version 9
#next 75-76 Zul'Drak
#xprate <1.6 << !wotlk
step
#optional
.maxlevel 75,GotoSholazar
step
#include 73-75 Grizzly Hills@pt1start-pt1end
step
.goto 116/571,-2812.200,3418.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodsman Drake|r
.target Woodsman Drake
.turnin 12255 >>Turn in The Thane of Voldrune
step
#optional
.maxlevel 75,GotoSholazar
step
#include 73-75 Grizzly Hills@pt2start-pt2end
step
.goto Grizzly Hills,26.46,31.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Caged Prisoner|r inside
.turnin 12302 >>Turn in Words of Warning
>>|cRXP_WARN_Skip the follow-up quest|r
.target Caged Prisoner
step
#optional
.maxlevel 75,GotoSholazar
step
.goto ZulDrak,32.18,74.39
.zone ZulDrak >> Head northwest to Zul'Drak
step
#optional
#label GotoSholazar
step
#completewith next
.goto Grizzly Hills,32.00,59.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelani|r
.target Magistrix Haelenai
.accept 12794 >>Accept The Magical Kingdom of Dalaran
.zoneskip Grizzly Hills,1
.xp <76,1
step
.goto Grizzly Hills,32.00,59.78
.zone Dalaran >>Ask |cRXP_FRIENDLY_Magistrix Haelani|r to be teleported to Dalaran
.target Magistrix Haelenai
.skipgossip
.zoneskip Grizzly Hills,1
.xp <76,1
]]);

RXPGuides.RegisterGuide([[
#cata
#mop
#wotlk
<< Alliance
#group RXP MoP 60-80 (A)
#name 77-78 Sholazar Basin
#displayname 76-78 Sholazar Basin << !wotlk
#version 9
#next 78-79 The Storm Peaks
step
#include RXPGuides\77-78 Sholazar Basin
]]);

RXPGuides.RegisterGuide([[
#cata
#mop
#wotlk
<< Alliance
#group RXP MoP 60-80 (A)
#name 78-79 The Storm Peaks
#displayname 78-80 The Storm Peaks << !wotlk
#version 9
#next 79-80 Icecrown << wotlk
#next RXP MoP 80-85 (A)\80-82 Mount Hyjal << !wotlk
step << !wotlk
#optional
.maxlevel 79,endOfTheGuide
step << skip
.goto Dalaran,31.3,49.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rin|r
.accept 12853 >>Accept Luxurious Getaway!
.target Rin Duoctane
step
.goto Dalaran,67.7,47.2
>>Go to Krasus' Landing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Van Rossem|r
.accept 13418 >>Accept Preparations for War
.target Officer Van Rossem
step
.goto IcecrownGlacier,87.80,78.07
>>|cRXP_WARN_Fly to The Argent Vanguard in Icecrown|r
>>|cRXP_WARN_The first part of Icecrown is being done for a Trinket + Questline for later|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedan|r
.fp The Argent Vanguard >> Get the The Argent Vanguard flight path
.target Aedan Moran
step
.goto IcecrownGlacier,87.5,75.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 13036 >>Accept Honor Above All Else
.target Highlord Tirion Fordring
step
.goto IcecrownGlacier,87.1,75.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Entari|r below you
.turnin 13036 >>Turn in Honor Above All Else
.accept 13008 >>Accept Scourge Tactics
.target Crusade Commander Entari
step
.goto IcecrownGlacier,86.8,76.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gustav|r
.accept 13040 >>Accept Curing The Incurable
.target Father Gustav
step
.goto IcecrownGlacier,86.1,75.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalfors|r
.accept 13039 >>Accept Defending The Vanguard
.target Crusader Lord Dalfors
step
#sticky
#label webbedfreed
.goto IcecrownGlacier,83.5,75.1,0,0
>>Kill the |cRXP_ENEMY_Webbed Crusader Cocoons|r to free them. They'll also buff and heal you << !Paladin
>>Kill the |cRXP_ENEMY_Webbed Crusader Cocoons|r to free them. |cRXP_WARN_Make sure you buff yourself with something other than |T135993:0|tKings as the npcs will buff you with it and also heal you|r << Paladin
.complete 13008,1 
.mob Webbed Crusader
step
.goto IcecrownGlacier,84.7,78.8,80,0
.goto IcecrownGlacier,83.5,75.1,80,0
.goto IcecrownGlacier,83.1,72.6,80,0
.goto IcecrownGlacier,84.8,73.0,80,0
.goto IcecrownGlacier,83.5,75.1
>>Kill the |cRXP_ENEMY_Nerubians|r and |cRXP_ENEMY_Spiders|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
.complete 13039,1 
.complete 13040,1 
.mob Forgotten Depths Ambusher
.mob Forgotten Depths Acolyte
.mob Forgotten Depths Slayer
.mob Carrion Fleshstripper
step
#requires webbedfreed
.goto IcecrownGlacier,86.1,75.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalfors|r
.turnin 13039 >>Turn in Defending The Vanguard
.target Crusader Lord Dalfors
step
.goto IcecrownGlacier,86.8,76.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gustav|r
.turnin 13040 >>Turn in Curing The Incurable
.target Father Gustav
step
.goto IcecrownGlacier,87.1,75.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Entari|r
.turnin 13008 >>Turn in Scourge Tactics
.accept 13044 >>Accept If There Are Survivors...
.target Crusade Commander Entari
step
.goto IcecrownGlacier,87.0,79.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Penumbrius|r
.turnin 13044 >>Turn in If There Are Survivors...
.accept 13045 >>Accept Into The Wild Green Yonder
.target Penumbrius
step << !wotlk
#optional
.maxlevel 79,endOfTheGuide
step << wotlk
#completewith next
.goto IcecrownGlacier,87.1,79.2
.vehicle 30228 >> Right click an |cRXP_FRIENDLY_Argent Skytalon|r to mount it
.target Argent Skytalon
step << wotlk
>>Fly over to Scourgeholme
>>Use |T134148:0|t[Grab Captured Crusader] (1) to rescue the |cRXP_FRIENDLY_Crusaders|r (|cRXP_WARN_you can only grab one at a time|r), then fly back to |cRXP_FRIENDLY_Gustav|r at The Argent Vanguard and use |T134149:0|t[Drop Off Captured Crusader] (2) to drop them off. |cRXP_WARN_Use|r |T132307:0|t[Soar] (3) |cRXP_WARN_on cooldown to go faster|r.
.pin Icecrown,78.7,67.0
.waypoint IcecrownGlacier,78.7,67.0,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
.goto Icecrown,86.68,76.83
.complete 13045,1 
.target Father Gustav
.target Captured Crusader
step << wotlk
.goto IcecrownGlacier,87.5,75.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13045 >>Turn in Into The Wild Green Yonder
.accept 13070 >>Accept A Cold Front Approaches
.target Highlord Tirion Fordring
step << wotlk
.goto IcecrownGlacier,85.6,76.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fezzik|r inside the small hut
.turnin 13070 >>Turn in A Cold Front Approaches
.accept 13086 >>Accept The Last Line Of Defense
.target Siegemaster Fezzik
step << wotlk
#completewith next
.goto IcecrownGlacier,85.3,75.8
.vehicle >>|cRXP_WARN_Fly to and get inside one of the Turrets located on top of the walls|r
step << wotlk
.goto IcecrownGlacier,84.8,75.8

>>Spam use |T134287:0|t[Argent Cannon] (1) to kill mobs in a small AoE and generate mana. Use |T237541:0|t[Reckoning Bomb] (2) to kill mobs in a large AoE at the cost of mana.
.complete 13086,1 
.complete 13086,2 
step << wotlk
.goto IcecrownGlacier,85.6,76.0
>>|cRXP_WARN_Exit the cannon|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fezzik|r
.turnin 13086 >>Turn in The Last Line Of Defense
.target Siegemaster Fezzik
step << wotlk
.goto IcecrownGlacier,86.0,75.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 13104 >>Accept Once More Unto The Breach, Hero
.target Highlord Tirion Fordring
step << wotlk
#completewith next
.goto IcecrownGlacier,83.0,73.0,50 >> Travel north-west to the mini Argent Crusade camp
.isOnQuest 13104
step << wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Ebon Watcher|r, |cRXP_FRIENDLY_Silas|r, |cRXP_FRIENDLY_Spitzpatrick|r, and |cRXP_FRIENDLY_Gustav|r inside the hut
.turnin 13104 >>Turn in Once More Unto The Breach, Hero
.accept 13118 >>Accept The Purging Of Scourgeholme
.accept 13122 >>Accept The Scourgestone
.goto IcecrownGlacier,83.0,73.0
.accept 13130 >>Accept The Stone That Started A Revolution
.accept 13135 >>Accept It Could Kill Us All
.goto IcecrownGlacier,83.0,73.1
.accept 13110 >>Accept The Restless Dead
.goto IcecrownGlacier,82.9,72.8
.target The Ebon Watcher
.target Crusade Architect Silas
.target Crusade Engineer Spitzpatrick
.target Father Gustav
step
#completewith next
.goto TheStormPeaks,41.03,86.43,150 >>Travel to K3
step
.goto TheStormPeaks,41.03,86.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeer|r

.accept 12818 >>Accept Clean Up
.target Jeer Sparksocket
step
#completewith Crawler
.goto TheStormPeaks,41.01,85.95,12,0
.goto TheStormPeaks,41.09,85.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brassknob|r
.home >> Set your Hearthstone to K3
.target Smilin' Slirk Brassknob
step
.goto TheStormPeaks,41.15,86.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
.accept 12843 >>Accept They Took Our Men!
.accept 12844 >>Accept Equipment Recovery
.target Gretchen Fizzlespark
step
.goto TheStormPeaks,40.93,85.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
.accept 12827 >>Accept Reclaimed Rations
.accept 12836 >>Accept Expression of Gratitude
.target Ricket
step
.goto TheStormPeaks,39.9,87.1,70,0
.goto TheStormPeaks,38.1,86.9,60,0
.goto TheStormPeaks,39.0,85.7,60,0
.goto TheStormPeaks,38.3,84.3,60,0
.goto TheStormPeaks,39.5,84.5,60,0
.goto TheStormPeaks,38.1,86.9
>>Loot the |cRXP_LOOT_Charred Wreckage|r on the ground
.complete 12818,1 
step
.goto TheStormPeaks,41.03,86.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeer|r
.turnin 12818 >>Turn in Clean Up
.accept 12819 >>Accept Just Around the Corner
.target Jeer Sparksocket
step
.goto TheStormPeaks,35.09,87.79
>>Fly into the middle of the Minefield. Loot |cRXP_LOOT_Sparksocket's Tools|r on the ground
.complete 12819,1 
step
#completewith next
.goto TheStormPeaks,31.81,85.75,70,0
>>Loot the |cRXP_LOOT_Dried Gnoll Rations|r on the ground
>>Kill |cRXP_ENEMY_Savage Hill Scavengers|r, |cRXP_ENEMY_Savage Hill Mystics|r, and |cRXP_ENEMY_Savage Hill Brutes|r. Loot them for their |cRXP_LOOT_Dried Gnoll Rations|r
>>|cRXP_WARN_Focus on looting the |cRXP_LOOT_Dried Gnoll Rations|r from the ground|r
.complete 12827,1 
.mob Savage Hill Scavenger
.mob Savage Hill Mystic
.mob Savage Hill Brute
step
.goto TheStormPeaks,30.38,85.65
>>Kill |cRXP_ENEMY_Gnarlhide|r
.complete 12836,1 
.mob Gnarlhide
step
#loop
.line TheStormPeaks,30.19,86.24,30.93,86.08,31.26,86.35,32.10,85.93,31.85,85.05,31.22,84.33,30.61,85.34,30.19,86.24
.goto TheStormPeaks,30.19,86.24,50,0
.goto TheStormPeaks,30.93,86.08,50,0
.goto TheStormPeaks,31.26,86.35,50,0
.goto TheStormPeaks,32.10,85.93,50,0
.goto TheStormPeaks,31.85,85.05,50,0
.goto TheStormPeaks,31.22,84.33,50,0
.goto TheStormPeaks,30.61,85.34,50,0
.goto TheStormPeaks,30.19,86.24,50,0
>>Loot the |cRXP_LOOT_Dried Gnoll Rations|r on the ground
>>Kill |cRXP_ENEMY_Savage Hill Scavengers|r, |cRXP_ENEMY_Savage Hill Mystics|r, and |cRXP_ENEMY_Savage Hill Brutes|r. Loot them for their |cRXP_LOOT_Dried Gnoll Rations|r
>>|cRXP_WARN_Focus on looting the |cRXP_LOOT_Dried Gnoll Rations|r from the ground|r
.complete 12827,1 
.mob Savage Hill Scavenger
.mob Savage Hill Mystic
.mob Savage Hill Brute
step << wotlk
#completewith next
.goto CrystalsongForest,61.1,52.4,0
.goto CrystalsongForest,58.9,62.8,0
.goto CrystalsongForest,81.1,72.4,0
.goto CrystalsongForest,89.2,55.7,0
.goto CrystalsongForest,61.1,52.4,0
>>Kill the |cRXP_ENEMY_Humanoids|r, |cRXP_ENEMY_Elementals|r and |cRXP_ENEMY_Undead|r. Loot them for their |cRXP_LOOT_Energy|r
.complete 13135,1 
.mob Shandaral Druid Spirit
.mob Shandaral Hunter Spirit
.mob Shandaral Spirit Wolf
.mob Shandaral Warrior Spirit
.mob Unbound Corrupter
.mob Unbound Dryad
.mob Unbound Trickster
.mob Unbound Ent
.mob Dispirited Ent
step << wotlk
>>Loot the |cRXP_LOOT_Crystalline Heartwood|r and |cRXP_LOOT_Ancient Elven Masonry|r on the ground
.complete 13130,1 
.goto CrystalsongForest,65.0,53.5,80,0
.goto CrystalsongForest,70.6,56.1,80,0
.goto CrystalsongForest,71.4,67.6,80,0
.goto CrystalsongForest,63.9,69.0,80,0
.goto CrystalsongForest,65.0,53.5,80,0
.goto CrystalsongForest,70.6,56.1,80,0
.goto CrystalsongForest,71.4,67.6,80,0
.goto CrystalsongForest,63.9,69.0
.complete 13130,2 
.goto CrystalsongForest,73.7,65.4,80,0
.goto CrystalsongForest,82.6,64.5,80,0
.goto CrystalsongForest,86.5,59.1,80,0
.goto CrystalsongForest,73.4,56.9,80,0
.goto CrystalsongForest,73.7,65.4,80,0
.goto CrystalsongForest,82.6,64.5,80,0
.goto CrystalsongForest,86.5,59.1,80,0
.goto CrystalsongForest,73.4,56.9
step << wotlk
.goto CrystalsongForest,61.1,52.4,80,0
.goto CrystalsongForest,58.9,62.8,80,0
.goto CrystalsongForest,81.1,72.4,80,0
.goto CrystalsongForest,89.2,55.7,80,0
.goto CrystalsongForest,61.1,52.4
>>Kill the |cRXP_ENEMY_Humanoids|r, |cRXP_ENEMY_Elementals|r and |cRXP_ENEMY_Undead|r. Loot them for their |cRXP_LOOT_Energy|r
.complete 13135,1 
.mob Shandaral Druid Spirit
.mob Shandaral Hunter Spirit
.mob Shandaral Spirit Wolf
.mob Shandaral Warrior Spirit
.mob Unbound Corrupter
.mob Unbound Dryad
.mob Unbound Trickster
.mob Unbound Ent
.mob Dispirited Ent
step
#completewith next
.hs >> Hearth to K3
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeer|r and |cRXP_FRIENDLY_Ricket|r
.turnin 12819 >>Turn in Just Around the Corner
.accept 12826 >>Accept Slightly Unstable
.goto TheStormPeaks,41.03,86.43
.turnin 12826 >>Turn in Slightly Unstable
.accept 12820 >>Accept A Delicate Touch
.turnin 12836 >>Turn in Expression of Gratitude
.turnin 12827 >>Turn in Reclaimed Rations
.accept 12828 >>Accept Ample Inspiration
.goto TheStormPeaks,40.93,85.30
.target Jeer Sparksocket
.target Ricket
step
#completewith next
.goto TheStormPeaks,40.75,84.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skizzle|r
.fp K3 >>Get the K3 Flight Path
.target Skizzle Slickslide
step
.goto TheStormPeaks,43.4,82.3
>>Use the |T134954:0|t[Improved Land Mines] to kill |cRXP_ENEMY_Snowblind Followers|r and |cRXP_ENEMY_Garm Attackers|r
>>You can also kill them without the |T134954:0|t[Improved Land Mines]
>>|cRXP_WARN_The |cRXP_ENEMY_Snowblind Followers|r and |cRXP_ENEMY_Garm Attackers|r don't aggro you, even when you attack them|r
.complete 12820,1 
.mob Snowblind Follower
.mob Garm Invader
.use 40676
step
.goto TheStormPeaks,41.67,80.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tore|r
.accept 12829 >>Accept Moving In
.accept 12830 >>Accept Ore Repossession
.target Tore Rumblewrench
step
#completewith Crawler
.goto TheStormPeaks,40.1,74.0,0
>>Kill |cRXP_ENEMY_Snowblind Diggers|r in the cave. Loot them for their |cRXP_LOOT_Ore|r
.complete 12830,1 
.mob Snowblind Digger
step
#completewith InjuredGoblin
.goto TheStormPeaks,40.1,74.0,0
>>Kill |cRXP_ENEMY_Crystalweb Spiders|r in the cave. |cRXP_WARN_You don't have to focus on this quest|r
.complete 12829,1 
.mob Crystalweb Weaver
.mob Icetip Crawler
.mob Crystalweb Spitter
step
#completewith next
.goto TheStormPeaks,40.13,75.57,50 >>Enter the Crystalweb Cavern
step
.goto TheStormPeaks,42.31,73.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Injured Goblin Miner|r
.accept 12831 >>Accept Only Partly Forgotten
.target Injured Goblin Miner
step
#label Crawler
.goto TheStormPeaks,47.4,73.1,50,0
.goto TheStormPeaks,47.0,71.6,50,0
.goto TheStormPeaks,48.1,70.6
>>Kill an |cRXP_ENEMY_Icetip Crawler|r. Loot it for its |cRXP_LOOT_Venom Sac|r
.complete 12831,1 
.mob Icetip Crawler
step
.goto TheStormPeaks,43.9,76.3
>>Kill |cRXP_ENEMY_Snowblind Diggers|r. Loot them for their |cRXP_LOOT_Ore|r
.complete 12830,1,4 
.mob Snowblind Digger
step
#completewith CSpiders
.goto TheStormPeaks,40.1,74.0,0
>>Kill |cRXP_ENEMY_Snowblind Diggers|r. Loot them for their |cRXP_LOOT_Ore|r
.complete 12830,1 
.mob Snowblind Digger
step
#label InjuredGoblin
.goto TheStormPeaks,42.31,73.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Injured Goblin Miner|r
.turnin 12831 >>Turn in Only Partly Forgotten
.accept 12832 >>Accept Bitter Departure
.target Injured Goblin Miner
step
#completewith GoblinMiner
.goto TheStormPeaks,40.1,74.0,0
>>Kill |cRXP_ENEMY_Crystalweb Spiders|r
.complete 12829,1 
.mob Crystalweb Weaver
.mob Icetip Crawler
.mob Crystalweb Spitter
step
.goto TheStormPeaks,42.31,73.97
.gossipoption 93378 >>Talk to the |cRXP_FRIENDLY_Injured Goblin Miner|r to start the escort
.target Injured Goblin Miner
.skipgossip
.isOnQuest 12832
step
#label GoblinMiner
.goto TheStormPeaks,40.48,74.35,30,0
.goto TheStormPeaks,40.24,74.96,30,0
.goto TheStormPeaks,40.20,78.98
>>Escort the |cRXP_FRIENDLY_Injured Goblin Miner|r out of the Cave
>>|cRXP_WARN_Make sure you stay close to the |cRXP_FRIENDLY_Injured Goblin Miner|r or you might not complete the objective|r
.complete 12832,1 
.target Injured Goblin Miner
step
#label CSpiders
.goto TheStormPeaks,40.13,74.0
>>Kill |cRXP_ENEMY_Crystalweb Spiders|r
.complete 12829,1 
.mob Crystalweb Weaver
.mob Icetip Crawler
.mob Crystalweb Spitter
step
.goto TheStormPeaks,40.13,74.0
>>Kill |cRXP_ENEMY_Snowblind Diggers|r. Loot them for their |cRXP_LOOT_Ore|r
.complete 12830,1 
.mob Snowblind Digger
step
.goto TheStormPeaks,41.67,80.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tore|r
.turnin 12829 >>Turn in Moving In
.turnin 12830 >>Turn in Ore Repossession
.target Tore Rumblewrench
step << !wotlk
#optional
.maxlevel 79,endOfTheGuide
step
.pin The Storm Peaks,41.63,80.01,Get an an U.D.E.D. from the Dispenser next to Tore Rumblewrench.
.waypoint The Storm Peaks,41.63,80.01,0,bombdispenser,BAG_UPDATE_DELAYED
.goto TheStormPeaks,35.5,85.0
>>Open the |cRXP_PICK_U.D.E.D. Dispenser|r next to |cRXP_FRIENDLY_Tore|r. Loot it for the |T133712:0|t|cRXP_LOOT_U.D.E.D.|r
.collect 40686,1,12828,1,1 
.use 40686 >> Use the |T133712:0|t[|cRXP_LOOT_U.D.E.D.|r] on an |cRXP_ENEMY_Ironwool Mammoth|r to blow it up. Loot the |cRXP_LOOT_Meat Piles|r that drop on the ground
>>|cRXP_WARN_Remember the bomb explodes you if not thrown within 45s|r
.complete 12828,1 
.skipgossip
.unitscan Ironwool Mammoth
step
.goto TheStormPeaks,40.93,85.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
.turnin 12820 >>Turn in A Delicate Touch
.turnin 12832 >>Turn in Bitter Departure
.turnin 12828 >>Turn in Ample Inspiration
.accept 12821 >>Accept Cell Block Tango
.target Ricket
step
.goto TheStormPeaks,45.12,82.38
>>Loot the |T237030:0|t|cRXP_LOOT_Transporter Power Cell|r on the ground
.complete 12821,1 
step
.goto TheStormPeaks,50.69,81.90
.use 40731 >> Use the |T237030:0|t[|cRXP_LOOT_Transporter Power Cell|r] at the teleportation pad to teleport back to K3
.complete 12821,2 
step
.goto TheStormPeaks,40.93,85.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
.turnin 12821 >>Turn in Cell Block Tango
.accept 12822 >>Accept Know No Fear
.target Ricket
step
#completewith next
.goto TheStormPeaks,41.02,85.31,-1
.goto TheStormPeaks,50.56,81.88,15 >>|cRXP_WARN_Take the K3 Teleporter again|r
step
.goto TheStormPeaks,50.48,81.66,7,0
.goto TheStormPeaks,49.99,81.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gino|r
.accept 12823 >>Accept A Flawless Plan
.target Gino
step
#completewith next
.goto TheStormPeaks,48.42,80.46,50 >>Enter Garm Cave
step
#completewith Tormar
.goto TheStormPeaks,49.7,78.3,0,0
>>Kill |cRXP_ENEMY_Watchers|r and |cRXP_ENEMY_Devotees|r
.complete 12822,1 
.complete 12822,2 
.mob Garm Watcher
.mob Snowblind Devotee
step
.goto TheStormPeaks,48.3,80.8,60,0
.goto TheStormPeaks,49.2,78.8,40,0
.goto TheStormPeaks,50.4,78.3,40,0
.goto TheStormPeaks,49.8,77.2,30,0
.goto TheStormPeaks,49.3,79.1,30,0
.goto TheStormPeaks,50.5,78.1,30,0
.goto TheStormPeaks,50.51,77.75
.use 41431 >> Use the |T133713:0|t[Hardpacked Explosive Bundle] at |cRXP_WARN_Frostgut's Altar|r
.complete 12823,1 

step
#label Tormar
.goto TheStormPeaks,50.17,79.08
>>Kill |cRXP_ENEMY_Tormar|r behind you after you've placed the |T133713:0|t[Hardpacked Explosive Bundle|r]
.complete 12823,2 
.mob Tormar Frostgut
step
.goto TheStormPeaks,49.7,78.3,40,0
>>Kill |cRXP_ENEMY_Watchers|r and |cRXP_ENEMY_Devotees|r
.complete 12822,1 
.goto TheStormPeaks,48.9,78.7,40,0
.goto TheStormPeaks,48.8,79.8
.complete 12822,2 
.goto TheStormPeaks,50.1,80.0,50,0
.goto TheStormPeaks,50.7,78.7
.mob Garm Watcher
.mob Snowblind Devotee
step << tbc/wotlk
#completewith next
.goto TheStormPeaks,50.19,79.61,-1
.goto TheStormPeaks,50.16,81.64,-1
+|cRXP_WARN_Jump on the smaller altar and logout. Log back and in you'll arrive at Garm's Rise. If you can't get it to work, skip this step.|r
.link https://gyazo.com/c99feef87abf5fb5545bc737d0492f71 >>|cRXP_WARN_Click here for a picture reference of where to logout|r
step
.goto TheStormPeaks,50.5,81.7,40,0
.goto TheStormPeaks,48.37,80.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gino|r
.turnin 12823 >>Turn in A Flawless Plan
.accept 12824 >>Accept Demolitionist Extraordinaire
.target Gino
step
#completewith next
.goto TheStormPeaks,50.68,81.91
.goto TheStormPeaks,40.99,85.36,15 >>|cRXP_WARN_Run into the Garm's Rise Teleporter|r
step
.goto TheStormPeaks,40.93,85.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
.turnin 12822 >>Turn in Know No Fear
.turnin 12824 >>Turn in Demolitionist Extraordinaire
.daily 12833 >>Accept Overstock
.accept 12862 >>Accept When All Else Fails
.target Ricket
step << !wotlk
#optional
.maxlevel 79,endOfTheGuide
step
.goto TheStormPeaks,43.4,82.3
>>Use the |T134954:0|t[Improved Land Mines] to kill |cRXP_ENEMY_Snowblind Followers|r and |cRXP_ENEMY_Garm Attackers|r
>>You can also kill them without the |T134954:0|t[Improved Land Mines]
>>|cRXP_WARN_The |cRXP_ENEMY_Snowblind Followers|r and |cRXP_ENEMY_Garm Attackers|r don't aggro you, even when you attack them|r
.complete 12833,1 
.isOnQuest 12833
.use 40676
.mob Snowblind Follower
.mob Garm Invader
step
#loop
.line TheStormPeaks,39.47,72.24,39.27,72.74,39.47,72.24,39.79,73.16,41.77,74.33,41.68,73.42,41.53,72.30,41.64,70.25,41.40,70.67,40.74,69.24,41.02,71.42,40.67,71.41,39.47,72.24
.goto TheStormPeaks,39.47,72.24,30,0
.goto TheStormPeaks,39.27,72.74,30,0
.goto TheStormPeaks,39.47,72.24,30,0
.goto TheStormPeaks,39.79,73.16,30,0
.goto TheStormPeaks,41.77,74.33,30,0
.goto TheStormPeaks,41.68,73.42,30,0
.goto TheStormPeaks,41.53,72.30,30,0
.goto TheStormPeaks,41.64,70.25,30,0
.goto TheStormPeaks,41.40,70.67,30,0
.goto TheStormPeaks,40.74,69.24,30,0
.goto TheStormPeaks,41.02,71.42,30,0
.goto TheStormPeaks,40.67,71.41,30,0
.goto TheStormPeaks,39.47,72.24,30,0
>>|cRXP_WARN_Fly up to Sifreldar Village|r
>>Kill |cRXP_ENEMY_Sifreldar Storm Maidens|r and |cRXP_ENEMY_Sifreldar Runekeepers|r. Loot them for their |T134239:0|t[|cRXP_LOOT_Cold Iron Keys|r]
>>Use the |T134239:0|t[|cRXP_LOOT_Cold Iron Keys|r] on the |cRXP_FRIENDLY_Goblin Prisoner|r cages
.collect 40641,5,12843,1,-1
.complete 12843,1 
.complete 12844,1 
.target Goblin Prisoner
.mob Sifreldar Storm Maiden
.mob Sifreldar Runekeeper
step << Mage wotlk
#completewith MageTrain1
.zone Dalaran >> Teleport to Dalaran
.xp <78,1
.usespell 53140
step << Mage wotlk
.goto Dalaran,54.98,46.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
.train 42914 >> Train your class spells
.xp <78,1
.target Jessa Weaver
step << Mage wotlk
#label MageTrain1
.goto Dalaran,54.98,46.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
.train 43046 >> Train your class spells
.xp <79,1
.target Jessa Weaver
step << Druid wotlk
#completewith DruidTrain1
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <78,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48465 >> Train your class spells
.xp <78,1
.target Loganaar
step << Druid wotlk
#label DruidTrain1
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48378 >> Train your class spells
.xp <79,1
.target Loganaar
step << DK wotlk
#completewith DKTrain1
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <78,1
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49941 >> Train your class spells
.xp <78,1
.target Amal'thazad
step << DK wotlk
#label DKTrain1
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 55271 >> Train your class spells
.xp <79,1
.target Amal'thazad
step
#completewith next
.hs >> Hearth to K3
.cooldown item,6948,>2
step
.goto TheStormPeaks,41.15,86.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r inside the Inn
.turnin 12843 >>Turn in They Took Our Men!
.accept 12846 >>Accept Leave No Goblin Behind
.turnin 12844 >>Turn in Equipment Recovery
.target Gretchen Fizzlespark
step
.goto TheStormPeaks,40.93,85.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r outside
.turnin 12833 >>Turn in Overstock
.isOnQuest 12833
.target Ricket
step
#completewith FrostholdX
.goto The Storm Peaks,40.93,85.31
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r again to travel to Frosthold
.timer 72,Rocket Flight RP
.skipgossip
.skill riding,300,1
.target Ricket
step
#completewith next
.goto TheStormPeaks,28.7,74.4,200 >> Fly to Frosthold on your flying mount
.skill riding,<300,1
step
#completewith next
.goto TheStormPeaks,28.7,74.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunda|r
.home >> Set your Hearthstone to Frosthold
.target Gunda Boldhammer
step
.goto TheStormPeaks,28.8,74.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rork|r
.turnin 12862 >>Turn in When All Else Fails
.accept 12870 >>Accept Ancient Relics
.target Rork Sharpchin
step
.goto TheStormPeaks,29.4,73.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lagnus|r
.accept 12863 >>Accept Offering Thanks
.target Lagnus
step
.goto TheStormPeaks,29.6,74.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorin|r
.accept 12854 >>Accept On Brann's Trail
.target Archaeologist Andorin
step
.goto TheStormPeaks,29.5,74.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldorf|r
.fp Frosthold >> Get the Frosthold flight path
.target Faldorf Bitterchill
step
.goto TheStormPeaks,29.18,74.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorthal|r
.turnin 12863 >>Turn in Offering Thanks
.accept 12864 >>Accept Missing Scouts
.target Glorthal Stiffbeard
step
.goto TheStormPeaks,29.83,75.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fjorlin|r
.accept 12865 >>Accept Loyal Companions
.target Fjorlin Frostbrow
step
#completewith Artificier
>>Loot |cRXP_LOOT_Relics of Ulduar|r dropped from the mobs all over The Storm Peaks
.complete 12870,1 
step
.goto TheStormPeaks,37.67,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of the |cRXP_FRIENDLY_Frostborn Scout|r
.complete 12864,1 
.skipgossip
.target Frostborn Scout
step
.goto TheStormPeaks,36.06,64.14
>>Open the |cRXP_PICK_Disturbed Snow|r. Loot it for the |cRXP_LOOT_Burlap-Wrapped Note|r (|cRXP_WARN_it's somewhat hard to see|r)
.complete 12854,1 
step
.goto TheStormPeaks,38.7,61.0,70,0
.goto TheStormPeaks,44.8,57.0,70,0
.goto TheStormPeaks,46.6,62.6
>>Kill |cRXP_ENEMY_Ice Steppe Rhinos|r and |cRXP_ENEMY_Ice Steppe Bulls|r. Loot them for their |cRXP_LOOT_Meat|r
.collect 41340,8,12865,1 
.mob Ice Steppe Rhino
.mob Ice Steppe Bull
step
#completewith next
.goto TheStormPeaks,42.10,69.50,60 >>Enter The Forlorn Mine
step
.goto TheStormPeaks,42.1,69.5,60,0
.goto TheStormPeaks,42.80,68.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira|r
.turnin 12846 >>Turn in Leave No Goblin Behind
.accept 12841 >>Accept The Crone's Bargain
.target Lok'lira the Crone
step
.goto TheStormPeaks,44.3,67.1,30,0
.goto TheStormPeaks,44.1,70.2,30,0
.goto TheStormPeaks,45.1,71.0
>>Kill |cRXP_ENEMY_Overseer Syra|r. Loot her for the |cRXP_LOOT_Runes of Yrkvinn|r
.complete 12841,1 
.unitscan Overseer Syra
step
.goto TheStormPeaks,42.80,68.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira|r
.turnin 12841 >>Turn in The Crone's Bargain
.accept 12905 >>Accept Mildred the Cruel
.target Lok'lira the Crone
step
#completewith next
.goto TheStormPeaks,44.84,68.49,20 >>Travel up the stairs to |cRXP_FRIENDLY_Mildred|r
step
.goto TheStormPeaks,44.39,68.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred|r
.turnin 12905 >>Turn in Mildred the Cruel
.accept 12906 >>Accept Discipline
.target Mildred the Cruel
step
.goto TheStormPeaks,44.92,67.08,20,0
.goto TheStormPeaks,44.76,70.33,20,0
.goto TheStormPeaks,44.37,71.00,20,0
.goto TheStormPeaks,44.48,70.61,20,0
.goto TheStormPeaks,45.13,71.00,20,0
.goto TheStormPeaks,44.02,70.12,15,0
.goto TheStormPeaks,43.68,70.05,20,0
.goto TheStormPeaks,44.05,68.17,20,0
.goto TheStormPeaks,44.37,66.84,20,0
.goto TheStormPeaks,44.92,67.08,20,0
.goto TheStormPeaks,44.76,70.33,20,0
.goto TheStormPeaks,44.37,71.00,20,0
.goto TheStormPeaks,44.48,70.61,20,0
.goto TheStormPeaks,45.13,71.00,20,0
.goto TheStormPeaks,44.02,70.12,15,0
.goto TheStormPeaks,43.68,70.05,20,0
.goto TheStormPeaks,44.05,68.17,20,0
.goto TheStormPeaks,44.37,66.84
.use 42837 >> Use the |T135147:0|t[Disciplining Rod] on |cRXP_ENEMY_Exhausted Vrykuls|r
.complete 12906,1 
.target Exhausted Vrykul
step
.goto TheStormPeaks,44.39,68.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred|r
.turnin 12906 >>Turn in Discipline
.accept 12907 >>Accept Examples to be Made
.target Mildred the Cruel
step
.goto TheStormPeaks,45.26,68.87,15,0
.goto TheStormPeaks,45.41,69.10
>>Kill |cRXP_ENEMY_Garhal|r
.complete 12907,1 
.mob Garhal
step
.goto TheStormPeaks,44.39,68.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred|r
.turnin 12907 >>Turn in Examples to be Made
.accept 12908 >>Accept A Certain Prisoner
.target Mildred the Cruel
step
.goto TheStormPeaks,42.80,68.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira|r
.turnin 12908 >>Turn in A Certain Prisoner
.accept 12921 >>Accept A Change of Scenery
.target Lok'lira the Crone
step
#completewith next
.goto TheStormPeaks,41.80,69.62,30 >>Exit The Forlorn Mine
step
#completewith next
.goto TheStormPeaks,47.47,69.09,30 >>Fly to Brunnhildar Village
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira|r
.turnin 12921 >>Turn in A Change of Scenery
.accept 12969 >>Accept Is That Your Goblin?
.target Lok'lira the Crone
step
#completewith next
.goto TheStormPeaks,48.25,69.77
.gossipoption 93533 >>Talk to |cRXP_FRIENDLY_Agnetta Tyrsdottar|r to turn her hostile
.target Agnetta Tyrsdottar
.skipgossip
step
.goto TheStormPeaks,48.25,69.77
>>Kill |cRXP_ENEMY_Agnetta Tyrsdottar|r
.complete 12969,1 
.mob Agnetta Tyrsdottar
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira|r
.turnin 12969 >>Turn in Is That Your Goblin?
.accept 12970 >>Accept The Hyldsmeet
.complete 12970,1 
.skipgossip 29975,1
.turnin 12970 >>Turn in The Hyldsmeet
.accept 12971 >>Accept Taking on All Challengers
.target Lok'lira the Crone
step << !wotlk
#optional
.maxlevel 79,endOfTheGuide
step
#loop
.line TheStormPeaks,47.96,70.48,48.25,70.15,50.33,68.62,50.45,68.32,50.42,67.54,51.19,66.86,51.49,66.65,51.55,66.04,51.15,65.44,51.02,66.39,49.92,66.78,47.96,70.48
.goto TheStormPeaks,47.96,70.48,40,0
.goto TheStormPeaks,48.25,70.15,40,0
.goto TheStormPeaks,50.33,68.62,40,0
.goto TheStormPeaks,50.45,68.32,40,0
.goto TheStormPeaks,50.42,67.54,40,0
.goto TheStormPeaks,51.19,66.86,40,0
.goto TheStormPeaks,51.49,66.65,40,0
.goto TheStormPeaks,51.55,66.04,40,0
.goto TheStormPeaks,51.15,65.44,40,0
.goto TheStormPeaks,51.02,66.39,40,0
.goto TheStormPeaks,49.92,66.78,40,0
.goto TheStormPeaks,47.96,70.48,40,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Victorious Challengers|r
>>Kill the |cRXP_ENEMY_Challengers|r once they become hostile
.complete 12971,1 
.skipgossip
.mob Victorious Challenger
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira|r
.turnin 12971 >>Turn in Taking on All Challengers
.accept 12972 >>Accept You'll Need a Bear
.target Lok'lira the Crone
step
.goto TheStormPeaks,53.14,65.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brijana|r
.turnin 12972 >>Turn in You'll Need a Bear
.accept 12851 >>Accept Bearly Hanging On
.target Brijana
step
#completewith next
.goto The Storm Peaks,53.12,65.61
.vehicle >>Mount |cRXP_FRIENDLY_Icefang|r right next to |cRXP_FRIENDLY_Brijana|r
.target Icefang
step
.goto TheStormPeaks,53.1,65.6,0
.goto TheStormPeaks,57.4,63.0
>>Use |T135825:0|t[Flaming Arrow] (1) to burn |cRXP_ENEMY_Frostworgs|r and |cRXP_ENEMY_Frost Giants|r. |cRXP_WARN_DON'T USE|r |T132276:0|t[Burst of Speed] (2). |cRXP_WARN_Just focus on hitting all the targets|r
>>|cRXP_WARN_Mount |cRXP_FRIENDLY_Icefang|r again if you didn't finish after getting dismounted|r
.complete 12851,1 
.complete 12851,2 
.mob Frostworg
.mob Niffelem Frost Giant
step
.goto TheStormPeaks,53.14,65.72
>>|cRXP_WARN_Use|r |T132276:0|t[Burst of Speed] (2) |cRXP_WARN_to get back faster|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brijana|r
.turnin 12851 >>Turn in Bearly Hanging On
.accept 12856 >>Accept Cold Hearted
.target Brijana
step
#completewith next
.goto TheStormPeaks,63.20,62.88,100 >> Fly to Dun Niffelem
step
#completewith next
.goto TheStormPeaks,63.20,62.88
.vehicle >>Mount a |cRXP_FRIENDLY_Captive Proto-Drake|r. |cRXP_WARN_They are chained to the big ice spikes around the outer walls of Dun Niffelem|r
.target Captive Proto-Drake
step
.waypoint TheStormPeaks,53.1,65.7,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
.goto The Storm Peaks,66.75,60.63
>>Use |T135844:0|t[Ice Shard] (1) on one of the |cRXP_FRIENDLY_Brunnhildar Prisoners|r frozen in an Ice Block when you're close to them
>>Return to Brunnhildar when you have |cRXP_WARN_three|r |cRXP_FRIENDLY_Prisoners|r on your |cRXP_FRIENDLY_Proto-Drake|r. |cRXP_WARN_Repeat this process three times|r
.complete 12856,1 
.complete 12856,2 
.target Captive Proto-Drake
.target Brunnhildar Prisoner
step
.goto TheStormPeaks,53.14,65.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brijana|r
.turnin 12856 >>Turn in Cold Hearted
.accept 13063 >>Accept Deemed Worthy
.target Brijana
step
.goto TheStormPeaks,49.75,71.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 13063 >>Turn in Deemed Worthy
.accept 12900 >>Accept Making a Harness
.target Astrid Bjornrittar
step
>>|cRXP_WARN_Enter the building beside you|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyra|r and |cRXP_FRIENDLY_Iva|r
.accept 12925 >>Accept Aberrations
.goto TheStormPeaks,48.44,72.15
.accept 12942 >>Accept Off With Their Black Wings
.accept 12968 >>Accept Yulda's Folly
.goto TheStormPeaks,48.33,72.13
.target Thyra Kvinnshal
.target Iva the Vengeful
step
#loop
.line TheStormPeaks,48.26,74.22,48.46,75.59,48.75,77.40,48.20,76.73,47.30,75.86,47.09,78.16,46.68,76.89,46.36,76.35,45.89,75.63,44.41,73.79,46.01,74.20,46.79,74.70,48.26,74.22
.goto TheStormPeaks,48.26,74.22,50,0
.goto TheStormPeaks,48.46,75.59,50,0
.goto TheStormPeaks,48.75,77.40,50,0
.goto TheStormPeaks,48.20,76.73,50,0
.goto TheStormPeaks,47.30,75.86,50,0
.goto TheStormPeaks,47.09,78.16,50,0
.goto TheStormPeaks,46.68,76.89,50,0
.goto TheStormPeaks,46.36,76.35,50,0
.goto TheStormPeaks,45.89,75.63,50,0
.goto TheStormPeaks,44.41,73.79,50,0
.goto TheStormPeaks,46.01,74.20,50,0
.goto TheStormPeaks,46.79,74.70,50,0
.goto TheStormPeaks,48.26,74.22,50,0
>>Kill |cRXP_ENEMY_Icemane Yetis|r. Loot them for their |cRXP_LOOT_Hides|r
.complete 12900,1 
.mob Icemane Yeti
step
.goto TheStormPeaks,49.75,71.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12900 >>Turn in Making a Harness
.accept 12983 >>Accept The Last of Her Kind
.accept 12989 >>Accept The Slithering Darkness
.target Astrid Bjornrittar
step
#completewith next
.goto TheStormPeaks,55.80,63.82,30 >>Enter the Hibernal Cavern
step
.goto TheStormPeaks,54.8,60.4
>>Kill the |cRXP_ENEMY_Jormungar|r in the cave
>>|cRXP_WARN_DO NOT ride the|r |cRXP_FRIENDLY_Injured Icemaw Matriarch|r |cRXP_WARN_in the middle of the cave yet|r
.complete 12989,1 
.mob Ravenous Jormungar
step
#completewith next
.goto TheStormPeaks,55.66,62.13,25,0
.goto TheStormPeaks,54.79,60.37
.vehicle >>Mount the |cRXP_FRIENDLY_Injured Icemaw Matriarch|r
.timer 69,The Last of Her Kind RP
.target Injured Icemaw Matriarch
step
.goto TheStormPeaks,49.82,71.12
>>|cRXP_WARN_Wait out the RP|r
>>Ride the |cRXP_FRIENDLY_Injured Icemaw Matriarch|r back to Brunnhildar
.complete 12983,1 
step
.goto TheStormPeaks,49.75,71.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12983 >>Turn in The Last of Her Kind
.accept 12996 >>Accept The Warm-Up
.turnin 12989 >>Turn in The Slithering Darkness
.target Astrid Bjornrittar
step
.goto TheStormPeaks,50.79,67.68,70 >>Travel toward |cRXP_ENEMY_Kirgaraak|r
.mob Kirgaraak
.isOnQuest 12996
step
#completewith next
.goto TheStormPeaks,50.79,67.68
.vehicle >>|cRXP_WARN_Use the|r |T236245:0|t[Reins of the Warbear Matriarch] |cRXP_WARN_to mount it|r
.use 42481
step
.goto TheStormPeaks,50.79,67.68
>>|cRXP_WARN_Kill|r |cRXP_ENEMY_Kirgaraak|r |cRXP_WARN_whilst mounted|r
>>|cRXP_WARN_Cast|r |T132131:0|t[Maul] (4) |cRXP_WARN_to deal damage|r
>>|cRXP_WARN_Cast|r |T132143:0|t[Smash] (5) |cRXP_WARN_then|r |T132337:0|t[Charge] (6) |cRXP_WARN_to deal more damage|r
.complete 12996,1 
.mob Kirgaraak
.use 42481
step
.goto TheStormPeaks,49.75,71.81
>>|cRXP_WARN_Dismount the|r |cRXP_FRIENDLY_Warbear Matriarch|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12996 >>Turn in The Warm-Up
.accept 12997 >>Accept Into the Pit
.target Astrid Bjornrittar
step
#completewith next
.goto TheStormPeaks,49.24,68.46
.vehicle >> Fly to The Pit of the Fang. Use the |T236245:0|t[Reins of the Warbear Matriarch] to mount it
.use 42499
step
.goto TheStormPeaks,49.24,68.46
>>|cRXP_WARN_Kill|r |cRXP_ENEMY_Hyldsmeet Warbears|r |cRXP_WARN_whilst mounted|r
>>|cRXP_WARN_Cast|r |T132131:0|t[Maul] (4) |cRXP_WARN_to deal damage|r
>>|cRXP_WARN_Cast|r |T132143:0|t[Smash] (5) |cRXP_WARN_then|r |T132337:0|t[Charge] (6) |cRXP_WARN_to deal more damage|r
>>|cRXP_WARN_Make sure you deal 50% or more damage to a |cRXP_ENEMY_Hyldsmeet Warbear|r to get credit|r
.complete 12997,1 
.mob Hyldsmeet Warbear
.use 42499
step
.goto TheStormPeaks,49.75,71.81
>>|cRXP_WARN_Dismount the|r |cRXP_FRIENDLY_Warbear Matriarch|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12997 >>Turn in Into the Pit
.accept 13061 >>Accept Prepare for Glory
.target Astrid Bjornrittar
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira|r
.turnin 13061 >>Turn in Prepare for Glory
.accept 13062 >>Accept Lok'lira's Parting Gift
.target Lok'lira the Crone
step
.goto TheStormPeaks,50.88,65.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta|r
.turnin 13062 >>Turn in Lok'lira's Parting Gift
.accept 12886 >>Accept The Drakkensryd
.timer 80,The Drakkensryd Flight
.target Gretta the Arbiter
step
#completewith next
>>|cRXP_WARN_Wait out the RP|r
.goto TheStormPeaks,31.89,53.35,40 >>Fly on the |cRXP_FRIENDLY_Hyldsmeet Proto-Drake|r to the Temple of Storms
step
.goto TheStormPeaks,35.4,57.8
>>Use the |T135127:0|t[Hyldnir Harpoon] to jump onto |cRXP_FRIENDLY_Hyldsmeet Proto-Drakes|r that have |cRXP_ENEMY_Hyldsmeet Drakeriders|r on them
>>Kill |cRXP_ENEMY_Hyldsmeet Drakeriders|r
>>|cRXP_WARN_Make sure you have "Game -> Combat -> Target of Target" enabled in your settings so you can see your health via the |cRXP_ENEMY_Hyldsmeet Drakerider|r's target window|r
.complete 12886,1 
.mob Hyldsmeet Drakerider
.use 41058
step
#completewith next
.goto TheStormPeaks,33.42,57.95,95 >>Use the |T135127:0|t[Hyldnir Harpoon] to jump onto a |cRXP_FRIENDLY_Column Ornament|r on the Columns of the Temple of Storms to jump onto it
.target Column Ornament
.use 41058
step
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.turnin 12886 >>Turn in The Drakkensryd
.accept 13064 >>Accept Sibling Rivalry
.complete 13064,1 
.skipgossip 29445,1
.turnin 13064 >>Turn in Sibling Rivalry
.accept 12915 >>Accept Mending Fences
.target Thorim
step
#label Vial
#completewith Fires
.goto TheStormPeaks,22.6,59.6,0
.goto TheStormPeaks,27.1,61.2,0
>>Kill |cRXP_ENEMY_Valkyrion Aspirants|r. Loot them for |cRXP_LOOT_Vials of Frost Oil|r
.collect 41612,5,12925,1 
.mob Valkyrion Aspirant
step
#requires Vial
#completewith Fires
.goto TheStormPeaks,23.6,58.6
.use 41612 >> Use the |T135856:0|t[|cRXP_LOOT_Vials of Frost Oil|r] on the |cRXP_PICK_Plagued Proto Drake Eggs|r at The Blighted Pool. |cRXP_WARN_MAKE SURE you get 6+ eggs each time|r, |cRXP_WARN_or you may need to get another|r |T135856:0|t[|cRXP_LOOT_Vial of Frost Oil|r]
.complete 12925,1 
step
#completewith Eggs
.goto TheStormPeaks,23.1,58.0,0
.goto TheStormPeaks,27.3,62.4,0
>>Kill |cRXP_ENEMY_Nascent Val'kyrs|r
.complete 12942,1 
.mob Nascent Val'kyr
step
#completewith next
.goto TheStormPeaks,24.05,61.70
>>Click the |cRXP_PICK_Harpoon Crate|r
.accept 12953 >>Accept Valkyrion Must Burn
step
.goto TheStormPeaks,24.00,61.93
>>Go inside the big building of Valkyrion. Kill |cRXP_ENEMY_Yulda the Stormspeaker|r
.complete 12968,1 
.mob Yulda the Stormspeaker
step
.goto TheStormPeaks,24.05,61.70
>>Click the |cRXP_PICK_Harpoon Crate|r
.accept 12953 >>Accept Valkyrion Must Burn
step
#label Fires
.goto TheStormPeaks,25.9,59.8,30,0
.goto TheStormPeaks,27.1,60.0
>>|cRXP_WARN_Enter a Valykrion Harpoon gun around Valkyrion|r
>>Use |T135825:0|t[Flaming Harpoon] (1) when you're aiming toward a |cRXP_WARN_Haystack|r around Valkyrion
.complete 12953,1 
step
.goto TheStormPeaks,27.1,61.2,70,0
.goto TheStormPeaks,22.6,59.6
>>Kill |cRXP_ENEMY_Valkyrion Aspirants|r. Loot them for |cRXP_LOOT_Vials of Frost Oil|r
.collect 41612,5,12925,1 
.mob Valkyrion Aspirant
step
#label Eggs
.goto TheStormPeaks,23.04,58.24
.use 41612 >> Use the |T135856:0|t[|cRXP_LOOT_Vials of Frost Oil|r] on the |cRXP_PICK_Plagued Proto Drake Eggs|r at The Blighted Pool. |cRXP_WARN_MAKE SURE you get 6+ eggs each time|r, |cRXP_WARN_or you may need to get another|r |T135856:0|t[|cRXP_LOOT_Vial of Frost Oil|r]
.complete 12925,1 
step
.goto TheStormPeaks,23.1,58.0,70,0
.goto TheStormPeaks,27.3,62.4
>>Kill |cRXP_ENEMY_Nascent Val'kyrs|r
.complete 12942,1 
.mob Nascent Val'kyr
step
.goto TheStormPeaks,33.8,73.8
>>Use the |T237332:0|t[Fresh Ice Rhino Meat] on |cRXP_FRIENDLY_Stormcrest Eagles|r
>>|cRXP_WARN_You don't need to dismount|r
.collect 41340,8,12865,1,-1
.complete 12865,1 
.use 41340
.target Stormcrest Eagle
step
.goto TheStormPeaks,29.83,75.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fjorlin|r
.turnin 12865 >>Turn in Loyal Companions
.accept 12867 >>Accept Baby Stealers
.target Fjorlin Frostbrow
step
.goto TheStormPeaks,29.5,74.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorin|r
.turnin 12854 >>Turn in On Brann's Trail
.accept 12855 >>Accept Sniffing Out the Perpetrator
.target Archaeologist Andorin
step
.goto TheStormPeaks,29.18,74.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorthal|r
.turnin 12864 >>Turn in Missing Scouts
.accept 12866 >>Accept Stemming the Aggressors
.target Glorthal Stiffbeard
step
.isQuestComplete 12870
.goto TheStormPeaks,28.8,74.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rork|r
.turnin 12870 >>Turn in Ancient Relics
.target Rork Sharpchin
step
#completewith next
#loop
.line TheStormPeaks,27.03,72.38,26.28,72.52,25.82,72.33,27.81,69.13,29.26,67.75,30.05,66.88,30.97,66.95,31.05,65.18,32.35,67.30,32.94,66.80,33.40,65.60,35.10,66.58,36.42,66.33,37.10,67.73,36.29,68.38,35.82,68.19,35.10,66.58
.goto TheStormPeaks,27.03,72.38,45,0
.goto TheStormPeaks,26.28,72.52,45,0
.goto TheStormPeaks,25.82,72.33,45,0
.goto TheStormPeaks,27.81,69.13,45,0
.goto TheStormPeaks,29.26,67.75,45,0
.goto TheStormPeaks,30.05,66.88,45,0
.goto TheStormPeaks,30.97,66.95,45,0
.goto TheStormPeaks,31.05,65.18,45,0
.goto TheStormPeaks,32.35,67.30,45,0
.goto TheStormPeaks,32.94,66.80,45,0
.goto TheStormPeaks,33.40,65.60,45,0
.goto TheStormPeaks,35.10,66.58,45,0
.goto TheStormPeaks,36.42,66.33,45,0
.goto TheStormPeaks,37.10,67.73,45,0
.goto TheStormPeaks,36.29,68.38,45,0
.goto TheStormPeaks,35.82,68.19,45,0
.goto TheStormPeaks,35.10,66.58,45,0
>>Open the |cRXP_PICK_Eagle Eggs|r on the ground around the trees. Loot them for the |cRXP_LOOT_Stormcrest Eagle Eggs|r
.complete 12867,1 
step
#loop
.line TheStormPeaks,27.03,72.38,26.28,72.52,25.82,72.33,27.81,69.13,29.26,67.75,30.05,66.88,30.97,66.95,31.05,65.18,32.35,67.30,32.94,66.80,33.40,65.60,35.10,66.58,36.42,66.33,37.10,67.73,36.29,68.38,35.82,68.19,35.10,66.58
.goto TheStormPeaks,27.03,72.38,45,0
.goto TheStormPeaks,26.28,72.52,45,0
.goto TheStormPeaks,25.82,72.33,45,0
.goto TheStormPeaks,27.81,69.13,45,0
.goto TheStormPeaks,29.26,67.75,45,0
.goto TheStormPeaks,30.05,66.88,45,0
.goto TheStormPeaks,30.97,66.95,45,0
.goto TheStormPeaks,31.05,65.18,45,0
.goto TheStormPeaks,32.35,67.30,45,0
.goto TheStormPeaks,32.94,66.80,45,0
.goto TheStormPeaks,33.40,65.60,45,0
.goto TheStormPeaks,35.10,66.58,45,0
.goto TheStormPeaks,36.42,66.33,45,0
.goto TheStormPeaks,37.10,67.73,45,0
.goto TheStormPeaks,36.29,68.38,45,0
.goto TheStormPeaks,35.82,68.19,45,0
.goto TheStormPeaks,35.10,66.58,45,0
>>Kill |cRXP_ENEMY_Frostfeather Screechers|r and |cRXP_ENEMY_Frostfeather Witches|r
.complete 12866,1 
.complete 12866,2 
.mob Frostfeather Screecher;Frostfeather Witch
step
#loop
.line TheStormPeaks,27.03,72.38,26.28,72.52,25.82,72.33,27.81,69.13,29.26,67.75,30.05,66.88,30.97,66.95,31.05,65.18,32.35,67.30,32.94,66.80,33.40,65.60,35.10,66.58,36.42,66.33,37.10,67.73,36.29,68.38,35.82,68.19,35.10,66.58
.goto TheStormPeaks,27.03,72.38,45,0
.goto TheStormPeaks,26.28,72.52,45,0
.goto TheStormPeaks,25.82,72.33,45,0
.goto TheStormPeaks,27.81,69.13,45,0
.goto TheStormPeaks,29.26,67.75,45,0
.goto TheStormPeaks,30.05,66.88,45,0
.goto TheStormPeaks,30.97,66.95,45,0
.goto TheStormPeaks,31.05,65.18,45,0
.goto TheStormPeaks,32.35,67.30,45,0
.goto TheStormPeaks,32.94,66.80,45,0
.goto TheStormPeaks,33.40,65.60,45,0
.goto TheStormPeaks,35.10,66.58,45,0
.goto TheStormPeaks,36.42,66.33,45,0
.goto TheStormPeaks,37.10,67.73,45,0
.goto TheStormPeaks,36.29,68.38,45,0
.goto TheStormPeaks,35.82,68.19,45,0
.goto TheStormPeaks,35.10,66.58,45,0
>>Open the |cRXP_PICK_Eagle Eggs|r on the ground around the trees. Loot them for the |cRXP_LOOT_Stormcrest Eagle Eggs|r
.complete 12867,1 
step
#completewith next
.goto TheStormPeaks,36.43,64.20,50 >>Travel to the Abandoned Camp
.isOnQuest 12855
step
#completewith next
.goto TheStormPeaks,36.5,64.2
.vehicle >> Use |T133309:0|t[Frosthound's Collar] at the |cRXP_WARN_Abandoned Camp|r
.use 41430
.isOnQuest 12855
step
.goto TheStormPeaks,48.02,60.98
>>Use |T132149:0|t[Cast Net] (1) |cRXP_WARN_to trap|r |cRXP_ENEMY_Iron Dwarves|r |cRXP_WARN_temporarily|r. Use |T135848:0|t[Ice Slick] (2) |cRXP_WARN_to cast a freezing trap that slows the movement speed of the|r |cRXP_ENEMY_Dwarves|r. |cRXP_WARN_Do this until you reach the cave|r
.complete 12855,1 
step
.goto TheStormPeaks,48.56,60.82
>>Kill |cRXP_ENEMY_Tracker Thulin|r. Loot him for |T133866:0|t[|cRXP_LOOT_Brann's Communicator|r]
.complete 12855,2 
.collect 40971,1 
.isOnQuest 12855
.use 41430
.mob Tracker Thulin
step
.goto TheStormPeaks,48.56,60.82
.use 40971 >> Use |T133866:0|t[|cRXP_LOOT_Brann's Communicator|r] to summon |cRXP_FRIENDLY_Brann|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12855 >>Turn in Sniffing Out the Perpetrator
.accept 12858 >>Accept Pieces to the Puzzle
.target Brann Bronzebeard
step
.goto TheStormPeaks,48.4,72.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyra|r and |cRXP_FRIENDLY_Iva|r
.turnin 12925 >>Turn in Aberrations
.turnin 12942 >>Turn in Off With Their Black Wings
.turnin 12953 >>Turn in Valkyrion Must Burn
.turnin 12968 >>Turn in Yulda's Folly
.target Thyra Kvinnshal
.target Iva the Vengeful
step
#label gretta
#completewith end
.goto TheStormPeaks,50.9,65.6
.daily 13423,13424 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta|r. |cRXP_WARN_She can have 1 out of 4 daily quests|r, |cRXP_WARN_only 2 of them are worth your time|r
>> Accept Defending Your Title
>> OR
>> Accept Back to the Pit
>>|cRXP_WARN_If none of those quests are active, skip this step|r
.target Gretta the Arbiter
step
#completewith end
#requires gretta
#label titledaily
#loop
.line TheStormPeaks,47.96,70.48,48.25,70.15,50.33,68.62,50.45,68.32,50.42,67.54,51.19,66.86,51.49,66.65,51.55,66.04,51.15,65.44,51.02,66.39,49.92,66.78,47.96,70.48
.goto TheStormPeaks,47.96,70.48,40,0
.goto TheStormPeaks,48.25,70.15,40,0
.goto TheStormPeaks,50.33,68.62,40,0
.goto TheStormPeaks,50.45,68.32,40,0
.goto TheStormPeaks,50.42,67.54,40,0
.goto TheStormPeaks,51.19,66.86,40,0
.goto TheStormPeaks,51.49,66.65,40,0
.goto TheStormPeaks,51.55,66.04,40,0
.goto TheStormPeaks,51.15,65.44,40,0
.goto TheStormPeaks,51.02,66.39,40,0
.goto TheStormPeaks,49.92,66.78,40,0
.goto TheStormPeaks,47.96,70.48,40,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Victorious Challengers|r to turn them hostile
>>Kill |cRXP_ENEMY_Victorious Challengers|r
.complete 13423,1 
.skipgossip
.isOnQuest 13423
.mob Victorious Challenger
step
#completewith next
#requires gretta
.goto TheStormPeaks,49.24,68.46
.vehicle >> Fly to The Pit of the Fang. Use the |T236245:0|t[Reins of the Warbear Matriarch] to mount it
.use 42499
step
#completewith end
#requires gretta
#label beardaily
.goto TheStormPeaks,49.24,68.46
>>|cRXP_WARN_Kill|r |cRXP_ENEMY_Hyldsmeet Warbears|r |cRXP_WARN_whilst mounted|r
>>|cRXP_WARN_Cast|r |T132131:0|t[Maul] (4) |cRXP_WARN_to deal damage|r
>>|cRXP_WARN_Cast|r |T132143:0|t[Smash] (5) |cRXP_WARN_then|r |T132337:0|t[Charge] (6) |cRXP_WARN_to deal more damage|r
>>|cRXP_WARN_Make sure you deal 50% or more damage to a |cRXP_ENEMY_Hyldsmeet Warbear|r to get credit|r
.complete 13424,1 
.mob Hyldsmeet Warbear
.isOnQuest 13424
.use 42499
step
#completewith next
.goto TheStormPeaks,50.9,65.6,30 >>|cRXP_WARN_Dismount the|r |cRXP_FRIENDLY_Warbear Matriarch|r
>>Travel towards |cRXP_FRIENDLY_Gretta|r
.isOnQuest 13424
step
#completewith end
#requires titledaily
.goto TheStormPeaks,50.9,65.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta|r
.turnin 13423 >>Turn in Defending Your Title
.isOnQuest 13423
.target Gretta the Arbiter
step
#requires beardaily
.goto TheStormPeaks,50.9,65.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta|r
.turnin 13424 >>Turn in Back to the Pit
.isOnQuest 13424
.target Gretta the Arbiter
step
#label Slag
#loop
.line TheStormPeaks,69.16,62.01,69.13,59.19,70.05,56.34,70.41,58.87,70.01,60.57,70.79,61.86,,69.16,62.01,72.98,63.65,74.22,62.53,75.97,63.93
.goto TheStormPeaks,69.16,62.01,50,0
.goto TheStormPeaks,69.13,59.19,50,0
.goto TheStormPeaks,70.05,56.34,50,0
.goto TheStormPeaks,70.41,58.87,50,0
.goto TheStormPeaks,70.01,60.57,50,0
.goto TheStormPeaks,70.79,61.86,50,0
.goto TheStormPeaks,69.16,62.01,50,0
.goto TheStormPeaks,72.98,63.65,50,0
.goto TheStormPeaks,74.22,62.53,50,0
.goto TheStormPeaks,75.97,63.93,50,0
>>Loot the |cRXP_LOOT_Granite Boulders|r on the ground around the edge of the lake (|cRXP_WARN_you may only carry one at a time|r)
>>|cRXP_WARN_After looting a |cRXP_LOOT_Granite Boulder|r, use|r |T134422:0|t[Thorim's Charm of Earth] |cRXP_WARN_on a |cRXP_ENEMY_Stormforged Iron Giant|r to summon |cRXP_FRIENDLY_Earthen Ironbanes|r to assist you|r
>>Kill a |cRXP_ENEMY_Stormforged Iron Giant|r. Loot it for its |T135228:0|t[|cRXP_LOOT_Slag Covered Metal|r]
>>|cRXP_WARN_Use the |T135228:0|t[|cRXP_LOOT_Slag Covered Metal|r] to start the quest|r
.collect 41506,1,12915,1,-1 
.collect 41556,1,12922,1 
.accept 12922 >>Accept The Refiner's Fire
.mob Stormforged Iron Giant
.use 41505
.use 41556
step
#completewith next
>>Loot the |cRXP_LOOT_Granite Boulders|r on the ground around the edge of the lake (|cRXP_WARN_you may only carry one at a time|r)
>>|cRXP_WARN_After looting a |cRXP_LOOT_Granite Boulder|r, use|r |T134422:0|t[Thorim's Charm of Earth] |cRXP_WARN_on a |cRXP_ENEMY_Stormforged Iron Giant|r to summon |cRXP_FRIENDLY_Earthen Ironbanes|r to assist you|r
>>Kill |cRXP_ENEMY_Stormforged Iron Giants|r
.collect 41506,1,12915,1,-1 
.complete 12915,2 
.mob Stormforged Iron Giant
.use 41505
step
#loop
.line TheStormPeaks,69.46,62.33,69.29,60.15,69.02,57.86,70.27,57.23,71.26,55.85,70.36,57.82,70.03,59.39,70.56,60.49,71.85,59.01,71.74,60.57,72.53,62.06,73.73,62.93,69.46,62.33,75.62,63.46,76.81,63.04,76.76,62.50,77.16,62.18,77.63,62.66,77.23,63.54,76.81,63.04
.goto TheStormPeaks,69.46,62.33,50,0
.goto TheStormPeaks,69.29,60.15,50,0
.goto TheStormPeaks,69.02,57.86,50,0
.goto TheStormPeaks,70.27,57.23,50,0
.goto TheStormPeaks,71.26,55.85,50,0
.goto TheStormPeaks,70.36,57.82,50,0
.goto TheStormPeaks,70.03,59.39,50,0
.goto TheStormPeaks,70.56,60.49,50,0
.goto TheStormPeaks,71.85,59.01,50,0
.goto TheStormPeaks,71.74,60.57,50,0
.goto TheStormPeaks,72.53,62.06,50,0
.goto TheStormPeaks,73.73,62.93,50,0
.goto TheStormPeaks,69.46,62.33,50,0
.goto TheStormPeaks,75.62,63.46,50,0
.goto TheStormPeaks,76.81,63.04,50,0
.goto TheStormPeaks,76.76,62.50,50,0
.goto TheStormPeaks,77.16,62.18,50,0
.goto TheStormPeaks,77.63,62.66,50,0
.goto TheStormPeaks,77.23,63.54,50,0
.goto TheStormPeaks,76.81,63.04,50,0
>>Kill |cRXP_ENEMY_Seething Revenants|r. Loot them for their |cRXP_LOOT_Furious Sparks|r
.complete 12922,1 
.mob Seething Revenant
step
#sticky
#label FAnvil
.goto TheStormPeaks,77.17,62.84,0,0
>>Click |cRXP_PICK_Fjorn's Anvil|r
.turnin 12922 >>Turn in The Refiner's Fire
.accept 12956 >>Accept A Spark of Hope
step
.goto TheStormPeaks,76.48,63.93,40,0
.goto TheStormPeaks,77.20,63.67,40,0
.goto TheStormPeaks,77.38,62.87
>>Loot the |cRXP_LOOT_Granite Boulders|r on the ground around in the snow (|cRXP_WARN_you may only carry one at a time|r)
>>|cRXP_WARN_After looting a |cRXP_LOOT_Granite Boulder|r, use|r |T134422:0|t[Thorim's Charm of Earth] |cRXP_WARN_on |cRXP_ENEMY_Fjorn|r to summon |cRXP_FRIENDLY_Earthen Ironbanes|r to assist you|r
>>Kill |cRXP_ENEMY_Fjorn|r
.collect 41506,1,12915,1,-1
.complete 12915,1 
.mob Fjorn
.use 41505
step
#requires FAnvil
#loop
.line TheStormPeaks,69.16,62.01,69.13,59.19,70.05,56.34,70.41,58.87,70.01,60.57,70.79,61.86,,69.16,62.01,72.98,63.65,74.22,62.53,75.97,63.93
.goto TheStormPeaks,69.16,62.01,50,0
.goto TheStormPeaks,69.13,59.19,50,0
.goto TheStormPeaks,70.05,56.34,50,0
.goto TheStormPeaks,70.41,58.87,50,0
.goto TheStormPeaks,70.01,60.57,50,0
.goto TheStormPeaks,70.79,61.86,50,0
.goto TheStormPeaks,69.16,62.01,50,0
.goto TheStormPeaks,72.98,63.65,50,0
.goto TheStormPeaks,74.22,62.53,50,0
.goto TheStormPeaks,75.97,63.93,50,0
>>Loot the |cRXP_LOOT_Granite Boulders|r on the ground around the edge of the lake (|cRXP_WARN_you may only carry one at a time|r)
>>|cRXP_WARN_After looting a |cRXP_LOOT_Granite Boulder|r, use|r |T134422:0|t[Thorim's Charm of Earth] |cRXP_WARN_on a |cRXP_ENEMY_Stormforged Iron Giant|r to summon |cRXP_FRIENDLY_Earthen Ironbanes|r to assist you|r
>>Kill |cRXP_ENEMY_Stormforged Iron Giants|r
.collect 41506,1,12915,2,-1
.complete 12915,2 
.mob Stormforged Iron Giant
.use 41505
step << Mage wotlk
#requires FjornAnvil
#completewith MageTrain2
.zone Dalaran >> Teleport to Dalaran
.xp <78,1
.usespell 53140
step << Mage wotlk
#requires FjornAnvil
.goto Dalaran,54.98,46.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
.train 42914 >> Train your class spells
.xp <78,1
.target Jessa Weaver
step << Mage wotlk
#requires FjornAnvil
#label MageTrain2
.goto Dalaran,54.98,46.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
.train 43046 >> Train your class spells
.xp <79,1
.target Jessa Weaver
step << Druid wotlk
#requires FjornAnvil
#completewith DruidTrain2
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <78,1
step << Druid wotlk
#requires FjornAnvil
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48465 >> Train your class spells
.xp <78,1
.target Loganaar
step << Druid wotlk
#requires FjornAnvil
#label DruidTrain2
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48378 >> Train your class spells
.xp <79,1
.target Loganaar
step << DK wotlk
#requires FjornAnvil
#completewith DKTrain2
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <78,1
step << DK wotlk
#requires FjornAnvil
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 49941 >> Train your class spells
.xp <78,1
.target Amal'thazad
step << DK wotlk
#requires FjornAnvil
#label DKTrain2
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 55271 >> Train your class spells
.xp <79,1
.target Amal'thazad
step
#requires FjornAnvil
#completewith Thorim1
.hs >> Hearth to Frosthold
step
#requires FjornAnvil
.goto TheStormPeaks,29.18,74.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorthal|r
.turnin 12866 >>Turn in Stemming the Aggressors
.accept 12868 >>Accept Sirana Iceshriek
.target Glorthal Stiffbeard
step
.isQuestComplete 12870
.goto TheStormPeaks,28.8,74.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rork|r
.turnin 12870 >>Turn in Ancient Relics
.target Rork Sharpchin
step
#completewith next
.goto TheStormPeaks,33.42,57.95,120 >>Fly up to |cRXP_FRIENDLY_Thorim|r
step
#label Thorim1
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.turnin 12915 >>Turn in Mending Fences
.turnin 12956 >>Turn in A Spark of Hope
.target Thorim
step
#questguide
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.accept 12924 >>Accept Forging an Alliance
.target Thorim
step
#loop
.line TheStormPeaks,37.77,45.04,37.14,43.20,37.34,42.39,38.45,42.83,37.34,40.75,38.01,39.93,38.66,39.74,39.09,41.14,39.86,39.79,40.66,40.56,41.77,39.31,42.63,39.53,41.52,42.07,41.97,43.43,40.28,42.22,38.91,43.42,37.77,45.04
.goto TheStormPeaks,37.77,45.04,50,0
.goto TheStormPeaks,37.14,43.20,50,0
.goto TheStormPeaks,37.34,42.39,50,0
.goto TheStormPeaks,38.45,42.83,50,0
.goto TheStormPeaks,37.34,40.75,50,0
.goto TheStormPeaks,38.01,39.93,50,0
.goto TheStormPeaks,38.66,39.74,50,0
.goto TheStormPeaks,39.09,41.14,50,0
.goto TheStormPeaks,39.86,39.79,50,0
.goto TheStormPeaks,40.66,40.56,50,0
.goto TheStormPeaks,41.77,39.31,50,0
.goto TheStormPeaks,42.63,39.53,50,0
.goto TheStormPeaks,41.52,42.07,50,0
.goto TheStormPeaks,41.97,43.43,50,0
.goto TheStormPeaks,40.28,42.22,50,0
.goto TheStormPeaks,38.91,43.42,50,0
.goto TheStormPeaks,37.77,45.04,50,0
>>Kill |cRXP_ENEMY_Library Guardians|r. Loot them for |T133451:0|t[|cRXP_LOOT_Inventor's Disk Fragments|r]
.collect 41130,6,12858,1 
.mob Library Guardian
step
.goto TheStormPeaks,37.93,43.94
>>Use the |T133451:0|t[|cRXP_LOOT_Inventor's Disk Fragments|r]
.complete 12858,1 
.use 41130
step
#completewith next
.cast 61122 >> Use |T133866:0|t[|cRXP_LOOT_Brann's Communicator|r] to summon |cRXP_FRIENDLY_Brann|r
.use 40971
step
.goto TheStormPeaks,37.93,43.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12858 >>Turn in Pieces to the Puzzle
.accept 12860 >>Accept Data Mining
.target Brann Bronzebeard
step
#loop
.line TheStormPeaks,37.23,43.48,37.50,42.57,37.79,41.58,37.04,40.74,37.67,40.47,39.10,41.16,39.52,40.18,39.89,39.44,40.16,40.86,40.70,42.25,39.79,42.08,38.76,42.92,38.54,44.23,37.23,43.48
.goto TheStormPeaks,37.23,43.48,50,0
.goto TheStormPeaks,37.50,42.57,50,0
.goto TheStormPeaks,37.79,41.58,50,0
.goto TheStormPeaks,37.04,40.74,50,0
.goto TheStormPeaks,37.67,40.47,50,0
.goto TheStormPeaks,39.10,41.16,50,0
.goto TheStormPeaks,39.52,40.18,50,0
.goto TheStormPeaks,39.89,39.44,50,0
.goto TheStormPeaks,40.16,40.86,50,0
.goto TheStormPeaks,40.70,42.25,50,0
.goto TheStormPeaks,39.79,42.08,50,0
.goto TheStormPeaks,38.76,42.92,50,0
.goto TheStormPeaks,38.54,44.23,50,0
.goto TheStormPeaks,37.23,43.48,50,0
>>|cRXP_WARN_Channel|r |T134375:0|t[The Inventor's Disk] next to a |cRXP_FRIENDLY_Databank|r
.complete 12860,1 
.cast 55161
.timer 10,Data Mining RP
.target Databank
.use 41179
step
.goto TheStormPeaks,37.70,45.34,30,0
.goto TheStormPeaks,37.43,46.83,30 >> Go inside The Inventor's Library
.isOnQuest 12860
step
#completewith next
.cast 61122 >> Use |T133866:0|t[|cRXP_LOOT_Brann's Communicator|r] to summon |cRXP_FRIENDLY_Brann|r
.use 40971
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12860 >>Turn in Data Mining
.accept 13415 >>Accept The Library Console
.use 40971
.target Brann Bronzebeard
step
.goto TheStormPeaks,37.43,46.83
>>Click the |cRXP_PICK_Inventor's Library Console|r inside The Inventor's Library
.turnin 13415 >>Turn in The Library Console
.accept 12872 >>Accept Norgannon's Shell
step
#completewith next
.goto TheStormPeaks,37.43,46.84
.cast 55197 >> Use the |T134375:0|t[Charged Disk] to summon |cRXP_ENEMY_Archivist Mechaton|r
.timer 50,Norgannon's Shell RP
.use 44704
step
.goto TheStormPeaks,37.53,46.52
>>|cRXP_WARN_Wait out the RP|r
>>Kill |cRXP_ENEMY_Archivist Mechaton|r. Loot him for his |cRXP_LOOT_Shell|r
.complete 12872,1 
.use 44704
.mob Archivist Mechaton
step
.goto TheStormPeaks,37.70,45.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r next to you (|cRXP_WARN_where you summoned him before|r)
>>|cRXP_WARN_Summon him again with|r |T133866:0|t[|cRXP_LOOT_Brann's Communicator|r] |cRXP_WARN_if he disappeared|r
.turnin 12872 >>Turn in Norgannon's Shell
.accept 12871 >>Accept Aid from the Explorers' League
.accept 12885 >>Accept The Exiles of Ulduar
.use 40971
.target Brann Bronzebeard
step
.goto TheStormPeaks,30.64,36.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breck|r
.fp Bouldercrag's Refuge >> Get the Bouldercrag's Refuge flight path
.target Breck Rockbrow
step
#completewith Plate
.goto TheStormPeaks,30.6,36.9,30,0
.goto TheStormPeaks,30.89,37.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magorn|r
.home >> Set your Hearthstone to Bouldercrag's Refuge
.target Magorn
step
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r
>>|cRXP_WARN_Do NOT vendor any |T132908:0|t[|cRXP_LOOT_Frostweave Cloth|r] you have|r
.turnin 12885 >>Turn in The Exiles of Ulduar
.accept 12930 >>Accept Rare Earth
.target Bouldercrag the Rockshaper
step
#loop
.line TheStormPeaks,29.39,36.11,29.06,35.74,28.47,34.85,28.42,36.39,27.66,36.20,27.25,35.44,26.82,35.93,26.15,36.26,26.44,37.23,26.94,37.74,27.10,38.20,27.82,38.89,27.90,38.37,28.90,38.70,28.67,37.92,29.39,36.11
.goto TheStormPeaks,29.39,36.11,50,0
.goto TheStormPeaks,29.06,35.74,50,0
.goto TheStormPeaks,28.47,34.85,50,0
.goto TheStormPeaks,28.42,36.39,50,0
.goto TheStormPeaks,27.66,36.20,50,0
.goto TheStormPeaks,27.25,35.44,50,0
.goto TheStormPeaks,26.82,35.93,50,0
.goto TheStormPeaks,26.15,36.26,50,0
.goto TheStormPeaks,26.44,37.23,50,0
.goto TheStormPeaks,26.94,37.74,50,0
.goto TheStormPeaks,27.10,38.20,50,0
.goto TheStormPeaks,27.82,38.89,50,0
.goto TheStormPeaks,27.90,38.37,50,0
.goto TheStormPeaks,28.90,38.70,50,0
.goto TheStormPeaks,28.67,37.92,50,0
.goto TheStormPeaks,29.39,36.11,50,0
>>Kill the |cRXP_ENEMY_Stormforged|r. Loot them for their |cRXP_LOOT_Frostweave Cloth|r
.complete 12930,2 
.mob Stormforged Raider
.mob Stormforged Reaver
step
#completewith next
.cast 2580 >> |cRXP_WARN_Cast Find Minerals to help you find the nodes|r
.skill mining,<1,1
step
.goto TheStormPeaks,30.97,34.21,40,0
.goto TheStormPeaks,29.48,31.89,40,0
.goto TheStormPeaks,28.95,32.90,40,0
.goto TheStormPeaks,27.19,34.26,40,0
.goto TheStormPeaks,27.26,32.21,40,0
.goto TheStormPeaks,26.11,33.10,40,0
.goto TheStormPeaks,25.42,33.15,40,0
.goto TheStormPeaks,24.73,34.13,40,0
.goto TheStormPeaks,24.64,33.38,40,0
.goto TheStormPeaks,24.31,33.79,40,0
.goto TheStormPeaks,23.85,34.16,40,0
.goto TheStormPeaks,21.25,33.27,40,0
.goto TheStormPeaks,30.97,34.21,40,0
.goto TheStormPeaks,21.25,33.27
>>Loot the |cRXP_LOOT_Enchanted Earth|r on the ground along the cliff face
.use 41615
.complete 12930,1 
step
.goto TheStormPeaks,30.67,37.06,30,0
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r
.turnin 12930 >>Turn in Rare Earth
.accept 12931 >>Accept Fighting Back
.accept 12937 >>Accept Relief for the Fallen
.target Bouldercrag the Rockshaper
step
#completewith next
.goto TheStormPeaks,26.9,41.5,0
>>Kill the |cRXP_ENEMY_Stormforged|r
.complete 12931,1 
.mob Stormforged Raider
.mob Stormforged Reaver
step
#loop
.line TheStormPeaks,25.63,35.81,24.85,36.94,24.13,37.22,24.98,38.18,25.27,38.62,26.07,39.20,26.37,39.66,26.86,39.26,27.52,39.15,27.96,40.12,28.23,39.34,27.95,39.04,28.52,38.45,29.10,36.86,28.75,34.72,28.10,36.65,27.47,37.10,25.63,35.81
.goto TheStormPeaks,25.63,35.81,50,0
.goto TheStormPeaks,24.85,36.94,50,0
.goto TheStormPeaks,24.13,37.22,50,0
.goto TheStormPeaks,24.98,38.18,50,0
.goto TheStormPeaks,25.27,38.62,50,0
.goto TheStormPeaks,26.07,39.20,50,0
.goto TheStormPeaks,26.37,39.66,50,0
.goto TheStormPeaks,26.86,39.26,50,0
.goto TheStormPeaks,27.52,39.15,50,0
.goto TheStormPeaks,27.96,40.12,50,0
.goto TheStormPeaks,28.23,39.34,50,0
.goto TheStormPeaks,27.95,39.04,50,0
.goto TheStormPeaks,28.52,38.45,50,0
.goto TheStormPeaks,29.10,36.86,50,0
.goto TheStormPeaks,28.75,34.72,50,0
.goto TheStormPeaks,28.10,36.65,50,0
.goto TheStormPeaks,27.47,37.10,50,0
.goto TheStormPeaks,25.63,35.81,50,0
.use 41988 >>Use the |T133683:0|t[Telluric Poultice] on |cRXP_FRIENDLY_Fallen Earthen Defenders|r. |cRXP_WARN_After casting it|r, |cRXP_WARN_you can cancel the channel and run off as it will still complete|r
.complete 12937,1 
.target Fallen Earthen Defender
step
#loop
.line TheStormPeaks,29.39,36.11,29.06,35.74,28.47,34.85,28.42,36.39,27.66,36.20,27.25,35.44,26.82,35.93,26.15,36.26,26.44,37.23,26.94,37.74,27.10,38.20,27.82,38.89,27.90,38.37,28.90,38.70,28.67,37.92,29.39,36.11
.goto TheStormPeaks,29.39,36.11,50,0
.goto TheStormPeaks,29.06,35.74,50,0
.goto TheStormPeaks,28.47,34.85,50,0
.goto TheStormPeaks,28.42,36.39,50,0
.goto TheStormPeaks,27.66,36.20,50,0
.goto TheStormPeaks,27.25,35.44,50,0
.goto TheStormPeaks,26.82,35.93,50,0
.goto TheStormPeaks,26.15,36.26,50,0
.goto TheStormPeaks,26.44,37.23,50,0
.goto TheStormPeaks,26.94,37.74,50,0
.goto TheStormPeaks,27.10,38.20,50,0
.goto TheStormPeaks,27.82,38.89,50,0
.goto TheStormPeaks,27.90,38.37,50,0
.goto TheStormPeaks,28.90,38.70,50,0
.goto TheStormPeaks,28.67,37.92,50,0
.goto TheStormPeaks,29.39,36.11,50,0
>>Kill the |cRXP_ENEMY_Stormforged|r
.complete 12931,1 
.mob Stormforged Raider
.mob Stormforged Reaver
step
.goto TheStormPeaks,30.6,36.9,30,0
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r
.turnin 12931 >>Turn in Fighting Back
.turnin 12937 >>Turn in Relief for the Fallen
.accept 12957 >>Accept Slaves of the Stormforged
.accept 12964 >>Accept The Dark Ore
.target Bouldercrag the Rockshaper
step
#completewith next
.goto TheStormPeaks,30.6,36.9,30,0
.goto TheStormPeaks,27.32,49.84,30 >> Travel to The Frozen Mine
step
#loop
.line TheStormPeaks,27.50,49.74,26.95,50.04,26.77,49.99,26.40,49.74,26.64,50.40,26.40,50.84,26.92,51.06,26.87,51.39,26.61,51.84,26.16,52.07,25.93,52.34,25.82,51.40,26.12,51.14,
.goto TheStormPeaks,27.50,49.74,15,0
.goto TheStormPeaks,26.95,50.04,15,0
.goto TheStormPeaks,26.77,49.99,15,0
.goto TheStormPeaks,26.40,49.74,15,0
.goto TheStormPeaks,26.64,50.40,15,0
.goto TheStormPeaks,26.40,50.84,15,0
.goto TheStormPeaks,26.92,51.06,15,0
.goto TheStormPeaks,26.87,51.39,15,0
.goto TheStormPeaks,26.61,51.84,15,0
.goto TheStormPeaks,26.16,52.07,15,0
.goto TheStormPeaks,25.93,52.34,15,0
.goto TheStormPeaks,25.82,51.40,15,0
.goto TheStormPeaks,26.12,51.14,15,0
>>Kill |cRXP_ENEMY_Taskmasters|r
>>Open the |cRXP_PICK_Ore Carts|r. Loot them for the |cRXP_LOOT_Dark Ore Samples|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Mechagnomes|r in the Cave
.complete 12957,2 
.complete 12964,1 
.complete 12957,1 
.target Captive Mechagnome
.mob Stormforged Taskmaster
.skipgossip
step << Shaman
#completewith next
.hs >> Hearth to Bouldercrag Refuge
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r and |cRXP_FRIENDLY_Bruor|r
.turnin 12957 >>Turn in Slaves of the Stormforged
.turnin 12964 >>Turn in The Dark Ore
.accept 12965 >>Accept The Gifts of Loken
.goto TheStormPeaks,31.42,38.08
.accept 12978 >>Accept Facing the Storm
.goto TheStormPeaks,31.28,38.17
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
#completewith end
#label Plate
.goto TheStormPeaks,26.3,44.9,0
.goto TheStormPeaks,24.6,42.9,0
.goto TheStormPeaks,26.0,47.0,0
.goto TheStormPeaks,24.4,46.0,0
.goto TheStormPeaks,25.0,51.6,0,0
>>Kill |cRXP_ENEMY_Stormforged War Golems|r. Loot them for their |T237488:0|t[|cRXP_LOOT_Dark Armor Plate|r]
>>|cRXP_WARN_Use the |T237488:0|t[|cRXP_LOOT_Dark Armor Plate|r] to start the quest|r
.use 42203
.collect 42203,1,12979 
.accept 12979 >>Accept Armor of Darkness
.mob Stormforged War Golem
step
#completewith next
#requires Plate
.goto TheStormPeaks,26.3,44.9,0
.goto TheStormPeaks,24.6,42.9,0
.goto TheStormPeaks,26.0,47.0,0
.goto TheStormPeaks,24.4,46.0,0
.goto TheStormPeaks,25.0,51.6,0,0
>>Kill the |cRXP_ENEMY_Stormforged|r. Loot the |cRXP_ENEMY_War Golems|r for their |cRXP_LOOT_Armor Samples|r
.complete 12979,1 
.complete 12978,1 
.mob Stormforged War Golem
.mob Stormforged Champion
.mob Stormforged Magus
step
#completewith next
.goto TheStormPeaks,25.89,46.29,70 >>Travel to Nidavelir
step
>>Click |cRXP_PICK_Loken's Orbs|r inside the buildings to destroy them
.complete 12965,2 
.goto TheStormPeaks,26.16,47.71
.complete 12965,3 
.goto TheStormPeaks,24.55,48.44
.complete 12965,1 
.goto TheStormPeaks,24.01,42.62
step
.goto TheStormPeaks,26.3,44.9,50,0
.goto TheStormPeaks,24.6,42.9,50,0
.goto TheStormPeaks,26.0,47.0,50,0
.goto TheStormPeaks,24.4,46.0,50,0
.goto TheStormPeaks,25.0,51.6
>>Kill the |cRXP_ENEMY_Stormforged|r. Loot the |cRXP_ENEMY_War Golems|r for their |cRXP_LOOT_Armor Samples|r
.complete 12979,1 
.complete 12978,1 
.mob Stormforged War Golem
.mob Stormforged Champion
.mob Stormforged Magus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r and |cRXP_FRIENDLY_Bruor|r
.turnin 12965 >>Turn in The Gifts of Loken
.goto TheStormPeaks,31.42,38.08
.turnin 12978 >>Turn in Facing the Storm
.turnin 12979 >>Turn in Armor of Darkness
.accept 12980 >>Accept The Armor's Secrets
.goto TheStormPeaks,31.28,38.17
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
#completewith next
.goto TheStormPeaks,30.55,36.77,15,0
.goto TheStormPeaks,32.53,36.58,65,0
.goto TheStormPeaks,33.48,39.76,50,0
.goto TheStormPeaks,32.66,40.54,40 >> Travel to Mimir's Workshop
step
.goto TheStormPeaks,32.03,40.74
.gossipoption 93703 >> Talk to |cRXP_FRIENDLY_Tock|r
.timer 80,The Armor's Secrets RP
.target Attendant Tock
.skipgossip
.isOnQuest 12980
step
#completewith next
.goto TheStormPeaks,33.40,39.80,40,0
.goto TheStormPeaks,33.72,39.43,25,0
.goto TheStormPeaks,30.32,36.61,45,0
.goto TheStormPeaks,31.28,38.17,15 >> Travel toward |cRXP_FRIENDLY_Bruor|r
step
>>|cRXP_WARN_Wait out the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor|r and |cRXP_FRIENDLY_Bouldercrag|r
.complete 12980,1 
.turnin 12980 >>Turn in The Armor's Secrets
.goto TheStormPeaks,31.28,38.17
.accept 12984 >>Accept Valduran the Stormborn
.goto TheStormPeaks,31.42,38.08
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
#completewith next
.goto TheStormPeaks,24.28,52.15,50 >>Travel to Nidavelir
step
.goto TheStormPeaks,24.65,51.76,30,0
.goto TheStormPeaks,24.28,52.15
.cast 56189 >> Use |T134227:0|t[Bouldercrag's War Horn] to start the RP
.timer 33,Valduran the Stormborn RP
.use 42419
.isOnQuest 12984
step
.goto TheStormPeaks,24.28,52.15
>>|cRXP_WARN_Wait out the RP|r
>>Kill |cRXP_ENEMY_Valduran the Stormborn|r
.complete 12984,1 
.mob Valduran the Stormborn
.use 42419
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r and |cRXP_FRIENDLY_Bruor|r
.turnin 12984 >>Turn in Valduran the Stormborn
.accept 12988 >>Accept Destroy the Forges!
.goto TheStormPeaks,31.42,38.08
.accept 12991 >>Accept Hit Them Where it Hurts
.goto TheStormPeaks,31.28,38.17
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
#sticky
#label Artificier
#loop
.line TheStormPeaks,30.10,46.80,30.25,46.20,30.06,45.27,29.50,44.20,28.79,44.36,28.89,45.67,29.03,45.91,29.50,45.39,29.93,45.80,29.42,46.26,30.10,46.80
.goto TheStormPeaks,30.10,46.80,40,0
.goto TheStormPeaks,30.25,46.20,40,0
.goto TheStormPeaks,30.06,45.27,40,0
.goto TheStormPeaks,29.50,44.20,40,0
.goto TheStormPeaks,28.79,44.36,40,0
.goto TheStormPeaks,28.89,45.67,40,0
.goto TheStormPeaks,29.03,45.91,40,0
.goto TheStormPeaks,29.50,45.39,40,0
.goto TheStormPeaks,29.93,45.80,40,0
.goto TheStormPeaks,29.42,46.26,40,0
.goto TheStormPeaks,30.10,46.80,40,0
>>Kill |cRXP_ENEMY_Stormforged Artificers|r
.complete 12991,1 
.mob Stormforged Artificer
step
.use 42441 >> Use |T133716:0|t[Bouldercrag's Bomb] on the |cRXP_PICK_Lightning Forges|r
.complete 12988,1 
.goto TheStormPeaks,29.0,45.8
.complete 12988,2 
.goto TheStormPeaks,29.6,45.9
.complete 12988,3 
.goto TheStormPeaks,30.2,46.1
step
#requires Artificier
.goto TheStormPeaks,28.85,44.21,40,0
.goto TheStormPeaks,29.60,45.92,40,0
.goto TheStormPeaks,30.02,44.75,40,0
.goto TheStormPeaks,29.34,46.54,40,0
.goto TheStormPeaks,28.85,44.21,40,0
.goto TheStormPeaks,30.02,44.75
>>Kill the |cRXP_ENEMY_Stormforged|r. Loot them for their |cRXP_LOOT_Relics of Ulduar|r
.complete 12882,1 
.mob Stormforged Artificer
step
#requires Artificier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor|r and |cRXP_FRIENDLY_Bouldercrag|r
.turnin 12991 >>Turn in Hit Them Where it Hurts
.goto TheStormPeaks,31.28,38.17
.turnin 12988 >>Turn in Destroy the Forges!
.accept 12993 >>Accept A Colossal Threat
.goto TheStormPeaks,31.42,38.08
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
.goto TheStormPeaks,28.88,44.06
>>Loot the |cRXP_LOOT_Colossus Attack Specs|r on the table
.complete 12993,1 
step
.goto TheStormPeaks,29.90,45.81
>>Loot the |cRXP_LOOT_Colossus Defense Specs|r on the table
.complete 12993,2 
step
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r
.turnin 12993 >>Turn in A Colossal Threat
.accept 12998 >>Accept The Heart of the Storm
.target Bouldercrag the Rockshaper
step
#completewith next
.goto TheStormPeaks,32.40,63.62,20,0
.goto TheStormPeaks,32.41,61.23,20 >> |cRXP_WARN_Fly through the hole 75% of the way down the mountain into Uldis|r
step
#completewith next
.goto TheStormPeaks,34.60,60.92,40,0
.goto TheStormPeaks,36.12,60.93,20 >>Travel toward |cRXP_PICK_The Heart of the Storm|r
step
.goto TheStormPeaks,36.13,60.93
.cast 3365 >>Click |cRXP_PICK_The Heart of the Storm|r
.timer 30,The Heart of the Storm RP
.isOnQuest 12998
step
.goto TheStormPeaks,36.13,60.93
>>|cRXP_WARN_Wait out the RP|r
.complete 12998,1 
step << Mage wotlk
#completewith next
.zone Dalaran >> Teleport to Dalaran
.xp <79,1
.usespell 53140
step << Mage wotlk
.goto Dalaran,54.98,46.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
.train 43046 >> Train your class spells
.xp <79,1
.target Jessa Weaver
step << Druid wotlk
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <79,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48378 >> Train your class spells
.xp <79,1
.target Loganaar
step << DK wotlk
#completewith next
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <79,1
step << DK wotlk
#label DKTrain1
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 55271 >> Train your class spells
.xp <79,1
.target Amal'thazad
step
#completewith next
.hs >> Hearth to Bouldercrag
step
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r
.turnin 12998 >>Turn in The Heart of the Storm
.accept 13007 >>Accept The Iron Colossus
.target Bouldercrag the Rockshaper
step
#completewith next
.goto TheStormPeaks,27.18,35.88
.vehicle >>Click the |cRXP_PICK_Jormungar Control Orb|r
step
.goto TheStormPeaks,27.19,43.06,50,0
.goto TheStormPeaks,28.78,47.99
>>|cRXP_WARN_Cast|r |T136025:0|t[Submerge] (1) |cRXP_WARN_to move|r
>>|cRXP_WARN_Move beneath the |cRXP_ENEMY_Iron Colossus|r, then cast|r |T237588:0|t[Emerge] (1) |cRXP_WARN_whilst|r |T136025:0|t[Submerged]
>>|cRXP_WARN_Right click the |cRXP_ENEMY_Iron Colossus|r to Auto Attack him. Cast|r |T132282:0|t[Jormungar Strike] (2) |cRXP_WARN_and|r |T136008:0|t[Acid Breath] (3) |cRXP_WARN_to deal damage|r
>>|cRXP_WARN_When the |cRXP_ENEMY_Iron Colossus|r emotes that he's "Preparing to slam the ground", cast|r |T136025:0|t[Submerge] (1), |cRXP_WARN_move behind him, then cast|r |T237588:0|t[Emerge] (1) |cRXP_WARN_whilst|r |T136025:0|t[Submerged]
.complete 13007,1 
.mob Iron Colossus
step
.goto TheStormPeaks,31.42,38.08
>>|cRXP_WARN_Exit the Jormungar|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag|r
.turnin 13007 >>Turn in The Iron Colossus
.target Bouldercrag the Rockshaper
step
#completewith Frosthold4
.goto TheStormPeaks,30.64,36.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldorf|r
.fly Frosthold >> Fly to Frosthold
.skill riding,300,1
.target Faldorf Bitterchill
step
#completewith next
.goto TheStormPeaks,24.94,66.87,50 >>Travel toward |cRXP_ENEMY_Sirana Iceshriek|r atop the mountain
step
#loop
.line TheStormPeaks,24.00,66.40,24.42,67.54,24.93,67.98,25.39,67.71,25.44,66.44,24.73,65.25,24.10,65.04,23.86,65.49,24.00,66.40
.goto TheStormPeaks,24.00,66.40,45,0
.goto TheStormPeaks,24.42,67.54,45,0
.goto TheStormPeaks,24.93,67.98,45,0
.goto TheStormPeaks,25.39,67.71,45,0
.goto TheStormPeaks,25.44,66.44,45,0
.goto TheStormPeaks,24.73,65.25,45,0
.goto TheStormPeaks,24.10,65.04,45,0
.goto TheStormPeaks,23.86,65.49,45,0
.goto TheStormPeaks,24.00,66.40,45,0
>>Kill |cRXP_ENEMY_Sirana Iceshriek|r
>>|cRXP_WARN_Be careful of her|r |T135833:0|t[Ice Shriek], |cRXP_WARN_as it deals around 3000 damage and stuns for 4 seconds|r
>>|cRXP_WARN_Find a group for her if needed. Skip this step if you're unable to find a group or solo her|r
.complete 12868,1 
.mob Sirana Iceshriek
step
.goto TheStormPeaks,29.18,74.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorthal|r
.turnin 12868 >>Turn in Sirana Iceshriek
.isQuestComplete 12868
.target Glorthal Stiffbeard

step
#label Frosthold4
.goto TheStormPeaks,29.4,73.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lagnus|r
.turnin 12871 >>Turn in Aid from the Explorers' League
.accept 12873 >>Accept The Frostborn King
.target Lagnus
step
.goto TheStormPeaks,28.8,74.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rork|r
.turnin 12870 >>Turn in Ancient Relics
.target Rork Sharpchin
step
#completewith end
.goto TheStormPeaks,28.7,74.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunda|r
.home >> Set your Hearthstone to Frosthold
.target Gunda Boldhammer
step
#questguide
.goto TheStormPeaks,30.26,74.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorg|r
.turnin 12873 >>Turn in The Frostborn King
.accept 12874 >>Accept Fervor of the Frostborn
.target Yorg Stormheart
step
.goto TheStormPeaks,30.26,74.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorg|r
.turnin 12873 >>Turn in The Frostborn King
.target Yorg Stormheart
step
.goto TheStormPeaks,29.83,75.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fjorlin|r
.turnin 12867 >>Turn in Baby Stealers
.target Fjorlin Frostbrow
step
#questguide
.goto TheStormPeaks,29.83,75.72
.gossipoption 93345 >> Talk to |cRXP_FRIENDLY_Fjorlin|r
.timer 160,Fervor of the Frostborn RP
.skipgossip
.target Fjorlin Frostbrow
.skill riding,300,1
.isOnQuest 12874
step
#questguide
.goto TheStormPeaks,53.61,35.14
>>|cRXP_WARN_Wait out the RP|r
>>Loot the |T132325:0|t[|cRXP_LOOT_Battered Storm Hammer|r] on the ground
.collect 42624,1 
.skill riding,300,1
.isOnQuest 12874
step
#questguide
#completewith next
.goto TheStormPeaks,53.61,35.14,200 >> Travel to the Terrace of the Makers
.skill riding,<300,1
step
#questguide
.goto TheStormPeaks,53.61,35.14
>>Loot the |T132325:0|t[|cRXP_LOOT_Battered Storm Hammer|r] on the ground
.collect 42624,1 
.isOnQuest 12874
step
#questguide
.goto TheStormPeaks,53.55,37.85
>>Kill |cRXP_ENEMY_The Iron Watcher|r
.use 42624 >> |cRXP_WARN_Use the|r |T132325:0|t[|cRXP_LOOT_Battered Storm Hammer|r] |cRXP_WARN_repeatedly on|r |cRXP_ENEMY_The Iron Watcher|r
>>|cRXP_WARN_Continue to use all your other abilities to kill him|r
.complete 12874,1 
.mob The Iron Watcher
step
#questguide
.goto TheStormPeaks,62.64,60.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halvdan|r
.fp Dun Niffelem >> Get the Dun Niffelem flight path
.target Halvdan
step
#questguide
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r
.accept 12966 >>Accept You Can't Miss Him
.target King Jokkum
step
#questguide
.goto TheStormPeaks,75.37,63.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r
.turnin 12966 >>Turn in You Can't Miss Him
.accept 12967 >>Accept Battling the Elements
.target Njormeld
step
#questguide
#completewith next
.goto TheStormPeaks,75.71,63.91
.vehicle >>Right click on |cRXP_FRIENDLY_Snorri|r to mount him :3
.target Snorri
step
#questguide
#loop
.line TheStormPeaks,76.86,63.17,77.08,62.02,77.49,62.79,76.86,63.17
.goto TheStormPeaks,76.86,63.17,40,0
.goto TheStormPeaks,77.08,62.02,40,0
.goto TheStormPeaks,77.49,62.79,40,0
.goto TheStormPeaks,76.86,63.17,40,0
>>Use |T135850:0|t[Gather Snow] (1) to get snow from the |cRXP_PICK_Snowdrifts|r nearby. Use |T132387:0|t[Throw Snowball] (2) at |cRXP_ENEMY_Seething Revenants|r to kill them
.complete 12967,1 
.mob Seething Revenant
step
#questguide
.goto TheStormPeaks,75.37,63.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r
.turnin 12967 >>Turn in Battling the Elements
.complete 12924,1 
.target Njormeld
step << Human
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r and |cRXP_FRIENDLY_Fjorn's Anvil|r
.turnin 12924 >>Turn in Forging an Alliance
.accept 13009 >>Accept A New Beginning
.accept 12985 >>Accept Forging a Head
.goto TheStormPeaks,63.20,63.27
.daily 12981 >>Accept Hot and Cold
.goto TheStormPeaks,63.16,62.93
.target Njormeld
step << !Human
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r and |cRXP_FRIENDLY_Fjorn's Anvil|r
.turnin 12924 >>Turn in Forging an Alliance
.accept 13009 >>Accept A New Beginning
.goto TheStormPeaks,63.20,63.27
.daily 12981 >>Accept Hot and Cold
.goto TheStormPeaks,63.16,62.93
.target Njormeld
step << Human
#questguide
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r
.accept 13011 >>Accept Culling Jorcuttar
.accept 12975 >>Accept In Memoriam
.target King Jokkum
step << !Human
#questguide
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r
.accept 12975 >>Accept In Memoriam
.target King Jokkum
step << Human
#questguide
#completewith HornF
>>Loot any |T136222:0|t|cRXP_LOOT_Everfrost Chips|r if you see them on the ground
>>|cRXP_WARN_Use the |T136222:0|t|cRXP_LOOT_Everfrost Chip|r to start the quest|r
.accept 13420 >> Accept Everfrost
step << Human
#questguide
.goto TheStormPeaks,69.6,58.8,70,0
.goto TheStormPeaks,70.3,62.2
>>Kill |cRXP_ENEMY_Brittle Revenants|r. Loot them for their |T135852:0|t[|cRXP_LOOT_Essences of Ice|r]
.use 42424 >> |cRXP_WARN_Use the|r |T134710:0|t[Diamond Tipped Pick] |cRXP_WARN_on the|r |cRXP_ENEMY_Dead Iron Giants|r. |cRXP_WARN_Sometimes |cRXP_ENEMY_Ambushers|r may spawn which you need to kill|r,|cRXP_WARN_ then loot them for their|r |cRXP_LOOT_Stormforged Eyes|r
.collect 42246,6 
.complete 12985,1 
.mob Brittle Revenant
.mob Dead Iron Giant
.mob Stormforged Ambusher
step << !Human
#questguide
.goto TheStormPeaks,69.6,58.8,70,0
.goto TheStormPeaks,70.3,62.2
>>Kill |cRXP_ENEMY_Brittle Revenants|r. Loot them for their |T135852:0|t[|cRXP_LOOT_Essences of Ice|r]
.collect 42246,6 
.mob Brittle Revenant
step
#questguide
.goto TheStormPeaks,73.5,62.9,70,0
.goto TheStormPeaks,76.2,63.4
.use 42246 >> |cRXP_WARN_Use the|r |T135852:0|t[|cRXP_LOOT_Essences of Ice|r] |cRXP_WARN_next to the|r |cRXP_PICK_Smoldering Scrap|r |cRXP_WARN_around Fjorn's Anvil|r. |cRXP_WARN_Loot the|r |cRXP_LOOT_Frozen Iron Scrap|r
.complete 12981,1 
step
#questguide
#label HornF
.goto TheStormPeaks,71.7,47.6
>>Loot the |cRXP_LOOT_Horn Fragments|r on the ground
.complete 12975,1 
step << Human
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calder|r, |cRXP_FRIENDLY_King Jokkum|r, |cRXP_FRIENDLY_Njormeld|r, |cRXP_FRIENDLY_Fjorn's Anvil|r, and |cRXP_FRIENDLY_Hodir's Horn|r
.turnin 13420 >> Turn in Everfrost
.goto TheStormPeaks,67.11,60.97
.turnin 12975 >>Turn in In Memoriam
.accept 12976 >>Accept A Monument to the Fallen
.goto TheStormPeaks,65.45,60.16
.turnin 12976 >>Turn in A Monument to the Fallen
.turnin 12985 >>Turn in Forging a Head
.accept 12987 >>Accept Placing Hodir's Helm
.goto TheStormPeaks,63.20,63.27
.turnin 12981 >>Turn in Hot and Cold
.goto TheStormPeaks,63.16,62.93
.accept 12977 >>Accept Hodir's Call
.goto TheStormPeaks,64.17,65.01
.isOnQuest 13420
.target Calder
.target King Jokkum
.target Njormeld
step << Human
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r, |cRXP_FRIENDLY_Njormeld|r, and |cRXP_FRIENDLY_Fjorn's Anvil|r
.turnin 12975 >>Turn in In Memoriam
.accept 12976 >>Accept A Monument to the Fallen
.goto TheStormPeaks,65.45,60.16
.turnin 12976 >>Turn in A Monument to the Fallen
.turnin 12985 >>Turn in Forging a Head
.accept 12987 >>Accept Placing Hodir's Helm
.goto TheStormPeaks,63.20,63.27
.turnin 12981 >>Turn in Hot and Cold
.goto TheStormPeaks,63.16,62.93
.target King Jokkum
.target Njormeld
step << !Human
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r, |cRXP_FRIENDLY_Fjorn's Anvil|r, and |cRXP_FRIENDLY_Njormeld|r
.turnin 12975 >>Turn in In Memoriam
.accept 12976 >>Accept A Monument to the Fallen
.goto TheStormPeaks,65.45,60.16
.turnin 12981 >>Turn in Hot and Cold
.goto TheStormPeaks,63.16,62.93
.turnin 12976 >>Turn in A Monument to the Fallen
.accept 12985 >>Accept Forging a Head
.goto TheStormPeaks,63.20,63.27
.target King Jokkum
.target Njormeld
step << !Human
#questguide
#loop
.line TheStormPeaks,68.78,60.17,69.65,58.90,68.43,57.99,69.26,57.06,70.91,56.86,70.87,61.36,70.28,62.29,68.50,63.29,69.70,61.40,68.78,60.17
.goto TheStormPeaks,68.78,60.17,30,0
.goto TheStormPeaks,69.65,58.90,30,0
.goto TheStormPeaks,68.43,57.99,30,0
.goto TheStormPeaks,69.26,57.06,30,0
.goto TheStormPeaks,70.91,56.86,30,0
.goto TheStormPeaks,70.87,61.36,30,0
.goto TheStormPeaks,70.28,62.29,30,0
.goto TheStormPeaks,68.50,63.29,30,0
.goto TheStormPeaks,69.70,61.40,30,0
.goto TheStormPeaks,68.78,60.17,30,0
.use 42424 >> |cRXP_WARN_Use the|r |T134710:0|t[Diamond Tipped Pick] |cRXP_WARN_on the|r |cRXP_ENEMY_Dead Iron Giants|r. |cRXP_WARN_Sometimes |cRXP_ENEMY_Ambushers|r may spawn which you need to kill|r,|cRXP_WARN_ then loot them for their|r |cRXP_LOOT_Stormforged Eyes|r
.complete 12985,1 
.mob Dead Iron Giant
.mob Stormforged Ambusher
step << !Human
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r and |cRXP_FRIENDLY_Hodir's Horn|r
.turnin 12985 >>Turn in Forging a Head
.accept 12987 >>Accept Placing Hodir's Helm
.goto TheStormPeaks,63.20,63.27
.accept 12977 >>Accept Hodir's Call
.goto TheStormPeaks,64.17,65.01
.target Njormeld
step
#questguide
.goto TheStormPeaks,64.24,59.23
>>|cRXP_WARN_Fly up to the Sparkling Ice Pike|r
>>|cRXP_WARN_Use the|r |T134465:0|t[Tablets of Pronouncement] |cRXP_WARN_when on your flying mount|r
.complete 12987,1 
.use 42442
step
#questguide
.goto TheStormPeaks,63.20,63.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r
.turnin 12987 >>Turn in Placing Hodir's Helm
.target Njormeld
step
#questguide
.goto TheStormPeaks,64.22,59.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hodir's Helm|r
.daily 13006 >>Accept A Viscous Cleaning
step
#questguide
#completewith next
.goto TheStormPeaks,55.80,63.90,30 >> Enter the Hibernal Cavern. Stick to the right side once you enter
.isOnQuest 13006,13011
step
#questguide
#completewith Jorcuttar
.goto TheStormPeaks,54.4,63.2,0
>>Kill |cRXP_ENEMY_Viscous Oils|r. Loot them for their |cRXP_LOOT_Oil|r
.complete 13006,1 
.mob Viscous Oil
step
#questguide
.goto TheStormPeaks,55.62,61.72,30,0
.goto TheStormPeaks,54.70,60.73
.use 42732 >> Use the |T135288:0|t[Everfrost Razor] on |cRXP_ENEMY_Dead Icemaw Bears|r until you loot an |cRXP_LOOT_Icemaw Bear Flank|r
.collect 42733,1 
.mob Dead Icemaw Bear
.isOnQuest 13011
step
#questguide
#label Jorcuttar
.goto TheStormPeaks,54.70,60.73
>>|cRXP_WARN_Keep hugging the right side of the Cavern until you get to the main room|r
.use 42733 >> |cRXP_WARN_Use the |T237332:0|t[|cRXP_LOOT_Icemaw Bear Flank|r] in the middle of the Frozen Spike Lake|r
.cast 56573
.timer 5,Culling Jorcuttar RP
.isOnQuest 13011
step
#questguide
>>|cRXP_WARN_Wait for the RP|r
>>Kill |cRXP_ENEMY_Jorcuttar|r
.complete 13011,1 
.isOnQuest 13011
.mob Jorcuttar
step
#questguide
.goto TheStormPeaks,53.55,62.21,40,0
.goto TheStormPeaks,55.00,63.36,40,0
.goto TheStormPeaks,55.71,61.98,40,0
.goto TheStormPeaks,54.70,60.73,40,0
.goto TheStormPeaks,53.55,62.21,40,0
.goto TheStormPeaks,55.00,63.36,40,0
.goto TheStormPeaks,55.71,61.98
>>Kill |cRXP_ENEMY_Viscous Oils|r. Loot them for their |cRXP_LOOT_Oil|r
.complete 13006,1 
.mob Viscous Oil
step
#questguide
#completewith next
.hs >> Hearth to Frosthold
.cooldown item,6948,>2
step
#questguide
.goto TheStormPeaks,30.26,74.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorg|r in Frosthold
.turnin 12874 >>Turn in Fervor of the Frostborn
.accept 12875 >>Accept An Experienced Guide
.target Yorg Stormheart
step
#questguide
.goto TheStormPeaks,29.83,75.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fjorlin|r in Frosthold
.accept 12876 >>Accept Unwelcome Guests
.target Fjorlin Frostbrow
step
#questguide
#completewith next
.goto TheStormPeaks,26.64,66.83,45 >> Travel to Frostgrip's Hollow
.isOnQuest 12876,12875
step
#questguide
#completewith Signet
.goto TheStormPeaks,26.0,67.4,0
>>Kill |cRXP_ENEMY_Stormforged Pillagers|r and |cRXP_ENEMY_Stormforged Loreseekers|r
.complete 12876,1 
.mob Stormforged Pillager
.mob Stormforged Loreseeker
step
#questguide
#completewith next
.goto TheStormPeaks,26.09,66.96,18,0
.goto TheStormPeaks,26.21,69.06,30,0
.goto TheStormPeaks,25.64,69.29,33,0
.goto TheStormPeaks,25.24,68.47,15 >> Stick to the left side until you get to |cRXP_FRIENDLY_Drom|r
.isOnQuest 12875
step
#questguide
.goto TheStormPeaks,25.24,68.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drom|r
.turnin 12875 >>Turn in An Experienced Guide
.accept 12877 >>Accept The Lonesome Watcher
.target Drom Frostgrip
step
.goto TheStormPeaks,25.24,68.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drom|r
.turnin 12875 >>Turn in An Experienced Guide
.target Drom Frostgrip
step
#questguide
#completewith next
.goto TheStormPeaks,26.26,68.92,15,0
.goto TheStormPeaks,25.58,68.21,10 >>Travel to the centre room
.isOnQuest 12877
step
#questguide
#label Signet
.goto TheStormPeaks,25.58,68.21
>>Kill the |cRXP_ENEMY_Stormforged Monitor|r. Loot him for his |cRXP_LOOT_Signet Ring|r
.complete 12877,1 
.mob Stormforged Monitor
step
#questguide
.goto TheStormPeaks,25.93,67.30,20,0
.goto TheStormPeaks,24.86,67.36,20,0
.goto TheStormPeaks,24.49,69.22,20,0
.goto TheStormPeaks,26.25,69.07,20,0
.goto TheStormPeaks,25.58,68.21
>>Kill |cRXP_ENEMY_Stormforged Pillagers|r and |cRXP_ENEMY_Stormforged Loreseekers|r
.complete 12876,1 
.mob Stormforged Pillager
.mob Stormforged Loreseeker
step
#questguide
#completewith next
.goto TheStormPeaks,27.00,66.95,50 >> Exit Frostgrip's Hollow
step
#questguide
#completewith next
.goto TheStormPeaks,24.94,66.87,50 >>Travel toward |cRXP_ENEMY_Sirana Iceshriek|r atop the mountain
step
#questguide
#loop
.line TheStormPeaks,24.00,66.40,24.42,67.54,24.93,67.98,25.39,67.71,25.44,66.44,24.73,65.25,24.10,65.04,23.86,65.49,24.00,66.40
.goto TheStormPeaks,24.00,66.40,45,0
.goto TheStormPeaks,24.42,67.54,45,0
.goto TheStormPeaks,24.93,67.98,45,0
.goto TheStormPeaks,25.39,67.71,45,0
.goto TheStormPeaks,25.44,66.44,45,0
.goto TheStormPeaks,24.73,65.25,45,0
.goto TheStormPeaks,24.10,65.04,45,0
.goto TheStormPeaks,23.86,65.49,45,0
.goto TheStormPeaks,24.00,66.40,45,0
>>Kill |cRXP_ENEMY_Sirana Iceshriek|r
>>|cRXP_WARN_Be careful of her|r |T135833:0|t[Ice Shriek], |cRXP_WARN_as it deals around 3000 damage and stuns for 4 seconds|r
>>|cRXP_WARN_Find a group for her if needed. Skip this step if you're unable to find a group or solo her|r
.complete 12868,1 
.mob Sirana Iceshriek
step
#questguide
#completewith next
.goto TheStormPeaks,33.42,57.95,200 >>Fly up to |cRXP_FRIENDLY_Thorim|r
step
#questguide
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.turnin 13009 >>Turn in A New Beginning
.accept 13050 >>Accept Veranus
.target Thorim
step
#questguide
.line TheStormPeaks,40.86,60.14,40.31,60.17,39.05,59.54,38.69,58.57
.goto TheStormPeaks,40.86,60.14,25,0
.goto TheStormPeaks,40.31,60.17,25,0
.goto TheStormPeaks,39.05,59.54,25,0
.goto TheStormPeaks,38.69,58.57,25,0
.goto TheStormPeaks,39.59,59.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Creteus|r
>>|cRXP_FRIENDLY_Creteus|r |cRXP_WARN_patrols the outer edge of the massive pit|r
.turnin 12877 >>Turn in The Lonesome Watcher
.accept 12986 >>Accept Fate of the Titans
.target Creteus
step
#questguide
.use 42679 >> Use |T237452:0|t[Creteus's Mobile Databank] atop the |cRXP_PICK_Temple of Invention|r, |cRXP_PICK_Order|r, |cRXP_PICK_Life|r, and |cRXP_PICK_Winter|r
>>|cRXP_WARN_Wait out the RP events for each|r
.complete 12986,1 
.goto TheStormPeaks,45.7,49.0
.complete 12986,4 
.goto TheStormPeaks,53.5,42.3
.complete 12986,3 
.goto TheStormPeaks,64.2,46.6
.complete 12986,2 
.goto TheStormPeaks,52.5,56.8
.cast 56510
.timer 45,Fate of the Titans RP
step
#questguide
.goto TheStormPeaks,45.46,66.73,20,0
.goto TheStormPeaks,45.51,67.15,20,0
.goto TheStormPeaks,45.20,66.81,20,0
.goto TheStormPeaks,43.76,67.20,20,0
.goto TheStormPeaks,43.62,67.29,20,0
.goto TheStormPeaks,43.88,67.75,20,0
.goto TheStormPeaks,45.46,66.73,20,0
.goto TheStormPeaks,45.51,67.15,20,0
.goto TheStormPeaks,45.20,66.81,20,0
.goto TheStormPeaks,43.76,67.20,20,0
.goto TheStormPeaks,43.62,67.29,20,0
.goto TheStormPeaks,43.88,67.75
>>Loot the |cRXP_LOOT_Small Proto-Drake Eggs|r in the nests atop the mountain
.complete 13050,1 
step
#questguide
.line TheStormPeaks,40.86,60.14,40.31,60.17,39.05,59.54,38.69,58.57
.goto TheStormPeaks,40.86,60.14,25,0
.goto TheStormPeaks,40.31,60.17,25,0
.goto TheStormPeaks,39.05,59.54,25,0
.goto TheStormPeaks,38.69,58.57,25,0
.goto TheStormPeaks,39.59,59.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Creteus|r
.turnin 12986 >>Turn in Fate of the Titans
.accept 12878 >>Accept The Hidden Relic
.target Creteus
step
#questguide
#completewith next
.goto TheStormPeaks,41.7,62.6,30,0 >> Travel to The Frigid Tomb
step
#questguide
.goto TheStormPeaks,44.51,64.54
>>|cRXP_WARN_Stick to the left as you go through the Cave|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Guardian's Charge|r at the end
.turnin 12878 >>Turn in The Hidden Relic
.accept 12879 >>Accept Fury of the Frostborn King
.target The Guardian's Charge
step
#questguide
#completewith next
.goto TheStormPeaks,43.63,67.68,20,0
.goto TheStormPeaks,43.00,64.39,20,0
.goto TheStormPeaks,41.67,61.84,40 >> Exit The Frigid Tome
step
#questguide
.goto TheStormPeaks,38.25,61.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Creteus|r
>>|cRXP_WARN_He has moved south-west slightly|r
.turnin 12879 >>Turn in Fury of the Frostborn King
.accept 12880 >>Accept The Master Explorer
.target Creteus
step
#questguide
#completewith next
.goto TheStormPeaks,33.42,57.95,120 >>Fly up to |cRXP_FRIENDLY_Thorim|r
step
#questguide
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.turnin 13050 >>Turn in Veranus
.accept 13051 >>Accept Territorial Trespass
.target Thorim
step
#questguide
#completewith next
.goto TheStormPeaks,38.73,65.54
.cast 56788 >> Use the |T132833:0|t[Stolen Proto-Dragon Eggs] at The Broodmother's Nest to lure |cRXP_ENEMY_Veranus|r
.timer 42,Veranus RP
.use 42797
step
#questguide
.goto TheStormPeaks,38.73,65.54
>>|cRXP_WARN_Wait out the RP|r
.complete 13051,1 
step
#questguide
#completewith next
.goto TheStormPeaks,33.42,57.95,120 >>Fly up to |cRXP_FRIENDLY_Thorim|r
.isOnQuest 13051
step
#questguide
.goto TheStormPeaks,33.42,57.95
>>|cRXP_WARN_Wait for the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.turnin 13051 >>Turn in Territorial Trespass
.accept 13010 >>Accept Krolmir, Hammer of Storms
.target Thorim
step
#questguide
#completewith next
.goto TheStormPeaks,39.86,58.28,50 >> Travel to |cRXP_FRIENDLY_Brann|r at the bottom of the Engine of the Makers
step
#questguide
.goto TheStormPeaks,39.6,56.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12880 >>Turn in The Master Explorer
.accept 12973 >>Accept The Brothers Bronzebeard
.target Brann Bronzebeard
step
#questguide
#completewith next
.goto TheStormPeaks,39.6,56.6
.vehicle >>Get into |cRXP_FRIENDLY_Brann's Flying Machine|r
.timer 413,The Brothers Bronzebeard
step
#questguide
.goto TheStormPeaks,30.3,74.9
>>Kill |cRXP_ENEMY_Stormforged Soldiers|r that jump onto |cRXP_FRIENDLY_Brann's Flying Machine|r
>>|cRXP_WARN_After landing follow|r |cRXP_FRIENDLY_Brann|r
>>|cRXP_WARN_Wait out the RP|r
.complete 12973,1 
.mob Stormforged Soldier
step
#questguide
.goto TheStormPeaks,30.3,74.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velog|r
.turnin 12973 >>Turn in The Brothers Bronzebeard
.target Velog Icebellow
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fjorlin|r and |cRXP_FRIENDLY_Glorthal|r
.turnin 12876 >>Turn in Unwelcome Guests
.goto TheStormPeaks,29.83,75.72
.turnin 12868 >>Turn in Sirana Iceshriek
.goto TheStormPeaks,29.18,74.91
.isQuestComplete 12868
.target Fjorlin Frostbrow
.target Glorthal Stiffbeard
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fjorlin|r
.goto TheStormPeaks,29.83,75.72
.turnin 12876 >>Turn in Unwelcome Guests
.target Fjorlin Frostbrow
step
#questguide
#completewith DunNif2
.goto TheStormPeaks,29.5,74.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldorf|r
.fly Dun Niffelem >> Fly to Dun Niffelem
.target Faldorf Bitterchill
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hodir's Horn|r
.accept 12977 >>Accept Hodir's Call
.goto TheStormPeaks,64.17,65.01
step
#questguide
#label DunNif2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hodir's Helmet|r and |cRXP_FRIENDLY_King Jokkum|r
.turnin 13006 >>Turn in A Viscous Cleaning
.goto TheStormPeaks,64.22,59.39
.turnin 13011 >>Turn in Culling Jorcuttar
.goto TheStormPeaks,65.45,60.16
.target King Jokkum
step
#questguide
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jokkum|r
.vehicle >>Mount |cRXP_FRIENDLY_Jokkum|r
.timer 118,Krolmir Hammer of Storms RP
.target King Jokkum
.skipgossip
.isOnQuest 13010
step
#questguide
#completewith TerraceM
>>Loot any |T136222:0|t|cRXP_LOOT_Everfrost Chips|r if you see them on the ground
>>|cRXP_WARN_Use the |T136222:0|t|cRXP_LOOT_Everfrost Chip|r to start the quest|r
.accept 13420 >> Accept Everfrost
step
#questguide
#completewith next
.goto TheStormPeaks,70.7,47.3,0
.goto TheStormPeaks,70.1,52.5,0
.goto TheStormPeaks,72.7,52.1,0
.goto TheStormPeaks,74.7,48.3,0
.use 42164 >> Kill |cRXP_ENEMY_Niffelem Forefathers|r and |cRXP_ENEMY_Restless Frostborn|r. |cRXP_WARN_Use|r |T134229:0|t[Hodir's Horn] |cRXP_WARN_on their corpses to free them|r
>>|cRXP_WARN_You can do this while the RP event is happening|r
.complete 12977,1 
.complete 12977,2 
.mob Niffelem Forefather
.mob Restless Frostborn
step
#questguide
.goto TheStormPeaks,71.37,48.78
>>|cRXP_WARN_Wait out the RP|r
.complete 13010,1 
step
#questguide
.goto TheStormPeaks,71.37,48.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r |cRXP_WARN_before he disappears!|r
.turnin 13010 >>Turn in Krolmir, Hammer of Storms
.accept 13057 >>Accept The Terrace of the Makers
.target Thorim
step
#questguide
.goto TheStormPeaks,70.7,47.3,60,0
.goto TheStormPeaks,70.1,52.5,60,0
.goto TheStormPeaks,72.7,52.1,60,0
.goto TheStormPeaks,74.7,48.3
.use 42164 >> Kill |cRXP_ENEMY_Niffelem Forefathers|r and |cRXP_ENEMY_Restless Frostborn|r. |cRXP_WARN_Use|r |T134229:0|t[Hodir's Horn] |cRXP_WARN_on their corpses to free them|r
.complete 12977,1 
.complete 12977,2 
.mob Niffelem Forefather
.mob Restless Frostborn
step
#questguide
#completewith next
.goto TheStormPeaks,56.26,51.36,100 >>Fly to |cRXP_FRIENDLY_Thorim|r at the Terrace of the Makers
step
#questguide
#label TerraceM
.goto TheStormPeaks,56.26,51.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.turnin 13057 >>Turn in The Terrace of the Makers
.accept 13005 >>Accept The Earthen Oath
.accept 13035 >>Accept Loken's Lackeys
.target Thorim
step
#questguide
#completewith Duronn
>>Kill |cRXP_ENEMY_Iron Dwarf Assailants|r and |cRXP_ENEMY_Iron Sentinels|r
.complete 13005,1 
.complete 13005,2 
.mob Iron Dwarf Assailant
.mob Iron Sentinel
step
#questguide
.goto TheStormPeaks,48.72,45.65
>>Kill |cRXP_ENEMY_Halefnir|r
>>|cRXP_WARN_Make sure you have your |cRXP_FRIENDLY_Oathbound Warders|r summoned|r
>>|cRXP_WARN_Use the|r |cRXP_FRIENDLY_Oathbound Warders|r' |T136026:0|t[Earth Shock] |cRXP_WARN_spell to interrupt |cRXP_ENEMY_Halefnir|r's|r |T136015:0|t[Chain Lightning] |cRXP_WARN_spell|r
.complete 13035,2 
.mob Halefnir the Windborn
step
#questguide
#label Duronn
.goto TheStormPeaks,44.94,38.03
>>Kill |cRXP_ENEMY_Duronn|r
>>|cRXP_WARN_Make sure you have your |cRXP_FRIENDLY_Oathbound Warders|r summoned|r
>>|cRXP_WARN_Use the|r |cRXP_FRIENDLY_Oathbound Warders|r' |T136026:0|t[Earth Shock] |cRXP_WARN_spell to interrupt |cRXP_ENEMY_Duronn|r's|r |T135915:0|t[Reconstruction] |cRXP_WARN_spell|r
.complete 13035,3 
.mob Duronn the Runewrought
step
#questguide
#completewith next
.goto TheStormPeaks,56.47,41.06,70,0
.goto TheStormPeaks,56.98,44.13,30 >>Travel toward |cRXP_ENEMY_Eisenfaust|r
step
#questguide
#label Eisenfaust
.goto TheStormPeaks,55.30,43.32
>>Kill |cRXP_ENEMY_Eisenfaust|r
>>|cRXP_WARN_Make sure you have your |cRXP_FRIENDLY_Oathbound Warders|r summoned|r
.complete 13035,1 
.mob Eisenfaust
step
#questguide
#loop
.line TheStormPeaks,57.61,47.13,58.07,46.66,58.79,45.75,59.61,45.44,59.80,44.08,59.42,43.78,57.78,43.87,57.61,45.61,57.21,46.89,57.61,47.13
.goto TheStormPeaks,57.61,47.13,50,0
.goto TheStormPeaks,58.07,46.66,50,0
.goto TheStormPeaks,58.79,45.75,50,0
.goto TheStormPeaks,59.61,45.44,50,0
.goto TheStormPeaks,59.80,44.08,50,0
.goto TheStormPeaks,59.42,43.78,50,0
.goto TheStormPeaks,57.78,43.87,50,0
.goto TheStormPeaks,57.61,45.61,50,0
.goto TheStormPeaks,57.21,46.89,50,0
.goto TheStormPeaks,57.61,47.13,50,0
>>Use the |T134229:0|t[Horn of the Peaks] to summon |cRXP_FRIENDLY_Oathbound Warders|r to protect you
>>|cRXP_WARN_Use|r |T135809:0|t[Lava Burst] |cRXP_WARN_and|r |T136026:0|t[Earth Shock] |cRXP_WARN_to deal damage|r
>>Kill the |cRXP_ENEMY_Iron Dwarf Assailants|r and |cRXP_ENEMY_Iron Sentinels|r
.complete 13005,1 
.complete 13005,2 
.mob Iron Dwarf Assailant
.mob Iron Sentinel
.use 42840
step
#questguide
#completewith next
.goto TheStormPeaks,56.26,51.36,100 >>Fly to |cRXP_FRIENDLY_Thorim|r at the Terrace of the Makers
step
#questguide
.goto TheStormPeaks,56.26,51.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
.turnin 13005 >>Turn in The Earthen Oath
.turnin 13035 >>Turn in Loken's Lackeys
.accept 13047 >>Accept The Reckoning
.target Thorim
step
#questguide
#completewith next
.goto TheStormPeaks,56.26,51.36,100 >> Travel to Ulduar
step
#questguide
.goto TheStormPeaks,44.49,28.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shavalius|r
.fp Ulduar >> Get the Ulduar flight path
.skill riding,<300,1
.target Shavalius the Fancy
step
#questguide
.goto TheStormPeaks,35.93,31.52
.gossipoption 94051 >> Talk to |cRXP_FRIENDLY_Thorim|r to start the RP
.timer 100,The Reckoning RP
.target Thorim
.skipgossip
.isOnQuest 13047
step
#questguide
.goto TheStormPeaks,34.23,34.21
>>|cRXP_WARN_Wait out the RP|r
.complete 13047,1 
step
#questguide
#completewith end
.goto TheStormPeaks,44.49,28.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shavalius|r
.fp Ulduar >> Get the Ulduar flight path
.fly Dun Niffelem >> Fly to Dun Niffelem
.skill riding,300,1
.target Shavalius the Fancy
step
#questguide
#completewith next
.goto TheStormPeaks,36.2,49.3,200 >> Travel to Dun Niffelem on your flying mount
.skill riding,<300,1
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jokkum|r, |cRXP_FRIENDLY_Calder|r, and |cRXP_FRIENDLY_Hodir's Horn|r
.turnin 13047 >>Turn in The Reckoning

.goto TheStormPeaks,65.45,60.16
.turnin 13420 >> Turn in Everfrost
.goto TheStormPeaks,67.11,60.97
.turnin 12977 >>Turn in Hodir's Call
.goto TheStormPeaks,64.17,65.01
.isOnQuest 13420
.target King Jokkum
step
#questguide
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jokkum|r and |cRXP_FRIENDLY_Hodir's Horn|r
.turnin 13047 >>Turn in The Reckoning

.goto TheStormPeaks,65.45,60.16
.turnin 12977 >>Turn in Hodir's Call
.goto TheStormPeaks,64.17,65.01
.target King Jokkum
step << Mage wotlk
#completewith next
.zone Dalaran >> Teleport to Dalaran
.xp <79,1
.usespell 53140
step << Mage wotlk
.goto Dalaran,54.98,46.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
.train 43046 >> Train your class spells
.xp <79,1
.target Jessa Weaver
step << Druid wotlk
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <79,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.train 48378 >> Train your class spells
.xp <79,1
.target Loganaar
step << DK wotlk
#completewith next
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
.xp <79,1
step << DK wotlk
#label DKTrain1
.goto Eastern Plaguelands,80.30,48.01
>>Go through the Death Gate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amal'thazad|r
.train 55271 >> Train your class spells
.xp <79,1
.target Amal'thazad
step
#questguide
#completewith next
.hs >> Hearth to Frosthold
step << wotlk
#label end
.goto IcecrownGlacier,87.8,78.1
.zone Icecrown >>Fly to Icecrown
step << !wotlk
#optional
#label endOfTheGuide
step << !wotlk !Mage
#completewith next
.zone Dalaran >>Fly to Dalaran
.zoneskip Stormwind City
step << !wotlk !Mage
#completewith next
.goto Dalaran,40.093,62.803
.zone Stormwind City >>Take the portal to Stormwind
step << !wotlk Mage
.zone Stormwind City >> Teleport to Stormwind
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
#name 75-77 Zul'Drak
#version 9
#next 77-78 Sholazar Basin
#questguide << !wotlk
#xprate <1.5 << wotlk
step
#include RXPGuides\i75-77 Zul'Drak
]]);

RXPGuides.RegisterGuide([[
#speedrunguide
#xprate >1.49 << wotlk
#cata
#mop
#wotlk
<< Alliance
#group RXP MoP 60-80 (A)
#name 75-76 Zul'Drak
#version 9
#next 77-78 Sholazar Basin
#xprate <1.6 << !wotlk
step
#optional
.maxlevel 75,GotoSholazar
step
#include RXPGuides\i75-77 Zul'Drak@zdpt1start-zdpt1end
step
#completewith next
.goto ZulDrak,39.43,66.96,50 >>Travel to The Argent Stand
step
.goto ZulDrak,39.43,66.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstaav|r
.turnin -12795 >>Turn in Taking a Stand
.accept 12503 >>Accept Defend the Stand
.accept 12740 >>Accept Parachutes for the Argent Crusade
.target Commander Falstaav
step
#loop
.line ZulDrak,38.34,65.11,35.25,64.91,35.27,68.55,38.67,68.47,38.34,65.11
.goto ZulDrak,38.34,65.11,50,0
.goto ZulDrak,35.25,64.91,50,0
.goto ZulDrak,35.27,68.55,50,0
.goto ZulDrak,38.67,68.47,50,0
.goto ZulDrak,38.34,65.11,50,0
.use 39615 >>Kill |cRXP_ENEMY_Rampaging Geists|r, |cRXP_ENEMY_Sky Terrors|r, |cRXP_ENEMY_Carrion Eaters|r, and |cRXP_ENEMY_Rotting Abomiations|r
>>Use the |T133628:0|t[Crusader Parachute] on |cRXP_FRIENDLY_Argent Crusaders|r or |cRXP_FRIENDLY_Argent Shieldman|r
.complete 12503,1 
.complete 12740,1 
.mob Rampaging Geist
.mob Sky Terror
.mob Carrion Eater
.mob Rotting Abomination
.target Argent Shieldman
.target Argent Crusader
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstaav|r
.turnin 12503 >>Turn in Defend the Stand
.turnin 12740 >>Turn in Parachutes for the Argent Crusade
.goto ZulDrak,39.43,66.96
.target Commander Falstaav
step
.goto 121/571,-2610.300,5450.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
.target Commander Kunz
.accept 12505 >>Accept New Orders for Sergeant Stackhammer
step
#optional
.maxlevel 75,GotoSholazar
step
#sticky
#label inn1
.goto ZulDrak,40.83,66.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marissa|r
.home >> Set your Hearthstone to The Argent Stand
>>|cRXP_BUY_Buy food/water if needed|r
.target Marissa Everwatch
step
.goto ZulDrak,40.52,65.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
.accept 12506 >>Accept Trouble at the Altar of Sseratus
.target Hexxer Ubungo
step
#requires inn1
#include RXPGuides\i75-77 Zul'Drak@altarstart-altarend
step
#completewith next
.hs >> Hearth to The Argent Stand
.cooldown item,6948,>2
step
.goto ZulDrak,40.52,65.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ubungo|r
.turnin 12506 >>Turn in Trouble at the Altar of Sseratus
.turnin 12507 >>Turn in Strange Mojo
.target Hexxer Ubungo
step
.goto ZulDrak,40.53,65.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ubungo|r
.accept 12565 >>Accept The Blessing of Zim'Abwa
.target Hexxer Ubungo
step
#loop
.line ZulDrak,38.34,65.11,35.25,64.91,35.27,68.55,38.67,68.47,38.34,65.11
.goto ZulDrak,38.34,65.11,50,0
.goto ZulDrak,35.25,64.91,50,0
.goto ZulDrak,35.27,68.55,50,0
.goto ZulDrak,38.67,68.47,50,0
.goto ZulDrak,38.34,65.11,50,0
>>Kill |cRXP_ENEMY_Rampaging Geists|r, |cRXP_ENEMY_Sky Terrors|r, |cRXP_ENEMY_Carrion Eaters|r, and |cRXP_ENEMY_Rotting Abomiations|r Loot them for |T134514:0|t[Drakkari Offerings]
.collect 38551,10,12565,1 
step
.goto ZulDrak,36.70,72.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zim'Abwa|r
.turnin 12565 >>Turn in The Blessing of Zim'Abwa
step
#optional
#label GotoSholazar
step
.goto 121/571,-2628.300,5441.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Teronus III|r
.target Magister Teronus III
.accept 12796 >>Accept The Magical Kingdom of Dalaran
.zoneskip ZulDrak,1
step
.zone Dalaran >> Talk to |cRXP_FRIENDLY_Magister Teronus III|r again to teleport to Dalaran
.target Magister Teronus III
.skipgossip
.zoneskip ZulDrak,1
]]);

RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 59-61 Hellfire Peninsula
#displayname 58-61 Hellfire Peninsula << !tbc !wotlk
#version 9
#next 61-63 Zangarmarsh
step << tbc
#xprate <1.5
#completewith honorhold
+As you quest through Outland, try to do as many group quests as you can, if you skip elite quests or dungeon quests you might have to grind about 1/3 of a level later after finishing Blade's Edge at level 66
step << tbc
#completwith next
.goto Stormwind City,66.28,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Nethergarde Keep >> Fly to Nethergarde Keep
.zoneskip Blasted Lands
.target Dungar Longdrink
step << !TBC
#completewith next
.goto Stormwind City,48.99,87.36
.zone Blasted Lands >> Take the portal from Stormwind to Blasted Lands
step << tbc/wotlk
.goto Blasted Lands,66.57,18.95,20,0
.goto Blasted Lands,67.57,19.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r up inside the tower
.accept 2783 >> Accept Petty Squabbles
.zoneskip Hellfire Peninsula
.target Ambassador Ardalan
step
.goto Blasted Lands,59.401,14.877
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bernie Heisten|r on the bottom floor
>>|cRXP_BUY_Buy a|r |T132791:0|t[|cRXP_LOOT_Nethergarde Bitter|r]
.collect 23848,1,9563,1 
.target Bernie Heisten
step << tbc/wotlk
.goto Swamp of Sorrows,34.28,66.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r on the border of Swamp of Sorrows
.turnin 2783 >> Turn in Petty Squabbles
.accept 2801 >> Accept A Tale of Sorrow
.complete 2801,1 
.skipgossip 7572,1
.zoneskip Hellfire Peninsula
.target Fallen Hero of the Horde
step << tbc/wotlk
.goto Swamp of Sorrows,34.28,66.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r on the border of Swamp of Sorrows
.turnin 2801 >> Turn in A Tale of Sorrow
.zoneskip Hellfire Peninsula
.target Fallen Hero of the Horde
step
#optional
.goto Blasted Lands,58.33,55.90 << tbc/wotlk
.goto 1419/0,-3196.90015,-11815.10059 << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r outside the Dark Portal
.turnin -64038 >>Turn in The Dark Portal
.accept 10119 >> Accept Through the Dark Portal
.isOnQuest 64038
.target Watch Commander Relthorn Netherwane
step
.goto Blasted Lands,58.33,55.90 << tbc/wotlk
.goto 1419/0,-3196.90015,-11815.10059 << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r outside the Dark Portal
.accept 10119 >> Accept Through the Dark Portal
.target Watch Commander Relthorn Netherwane
step
#completewith next
.goto Blasted Lands,55.024,54.221
.zone Hellfire Peninsula >> Go through the Dark Portal
step
.goto Hellfire Peninsula,87.32,50.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Duron|r
.turnin 10119 >> Turn in Through the Dark Portal
.accept 10288 >> Accept Arrival in Outland
.target Commander Duron
step
.goto Hellfire Peninsula,87.36,52.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amish Wildhammer|r
.turnin 10288 >> Turn in Arrival in Outland
.accept 10140 >> Accept Journey to Honor Hold
.target Amish Wildhammer
step
#completewith next
.goto Hellfire Peninsula,87.36,52.42
.gossip 18931,0 >>Talk to |cRXP_FRIENDLY_Amish Wildhammer|r to fly to Honor Hold
.skipgossip 18931,1
.target Amish Wildhammer
step
.goto Hellfire Peninsula,54.47,62.80,20,0
.goto Hellfire Peninsula,54.84,62.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Isildor|r
.turnin 10140 >> Turn in Journey to Honor Hold
.accept 10254 >> Accept Force Commander Danath
.target Marshal Isildor
step
#completewith next
.goto Hellfire Peninsula,54.81,63.61,15,0
.goto Hellfire Peninsula,54.67,63.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Isildor|r
.vendor >>|cRXP_BUY_Buy some gems from |cRXP_FRIENDLY_Markus Scylan|r for later quest gear rewards if you wish|r
.target Markus Scylan
step
#completewith HonorHS
.goto Hellfire Peninsula,54.22,63.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sid Limbardi|r
.home >> Set your Hearthstone to Honor Hold
>>Buy some of the new food/water if needed << !Warrior !Rogue !DK
>>Buy some of the new food if needed << Warrior/Rogue/DK
.target Sid Limbardi
step
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
.goto Hellfire Peninsula,56.64,66.70
>>Go inside the Keep to the top floor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
.turnin 10254 >> Turn in Force Commander Danath
.accept 10160 >> Accept Know your Enemy
.accept 10141 >> Accept The Legion Reborn
.target Force Commander Danath Trollbane
step
>>Travel to the tower
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumphry|r and |cRXP_FRIENDLY_Amadi|r
.accept 10055 >> Accept Waste Not, Want Not
.goto Hellfire Peninsula,51.30,60.35,20,0
.goto Hellfire Peninsula,51.19,59.99,20,0
.goto Hellfire Peninsula,50.99,60.51
.target +Dumphry
.turnin 10160 >> Turn in Know your Enemy
.accept 10482 >> Accept Fel Orc Scavengers
.goto Hellfire Peninsula,50.91,60.19
.target +Lieutenant Amadi
step
#loop
.goto Hellfire Peninsula,54.53,54.12,50,0
.goto Hellfire Peninsula,54.23,52.51,50,0
.goto Hellfire Peninsula,55.53,53.32,50,0
.goto Hellfire Peninsula,57.07,53.05,50,0
.goto Hellfire Peninsula,57.62,51.67,50,0
.goto Hellfire Peninsula,58.55,52.43,50,0
.goto Hellfire Peninsula,59.54,51.80,50,0
.goto Hellfire Peninsula,62.09,50.91,50,0
.goto Hellfire Peninsula,54.53,54.12,50,0
.goto Hellfire Peninsula,54.53,54.12,0
>>Kill |cRXP_ENEMY_Bonechewers|r
>>Loot the |cRXP_PICK_Metal|r and |cRXP_PICK_Wood|r on the ground
>>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Tagar Spinebreaker|r |cRXP_WARN_who is a level 61 elite that patrols the area|r
.complete 10482,1 
.mob +Bonechewer Mutant
.mob +Bonechewer Raider
.mob +Bonechewer Peon
.mob +Bonechewer Scavenger
.mob +Bonechewer Evoker
.mob +Bonechewer Orc
.complete 10055,1 
.complete 10055,2 
.unitscan Tagar Spinebreaker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumphry|r and |cRXP_FRIENDLY_Amadi|r
.turnin 10055 >> Turn in Waste Not, Want Not
.accept 10078 >> Accept Laying Waste to the Unwanted
.goto Hellfire Peninsula,51.30,60.35,20,0
.goto Hellfire Peninsula,51.19,59.99,20,0
.goto Hellfire Peninsula,50.99,60.51
.target +Dumphry
.turnin 10482 >> Turn in Fel Orc Scavengers
.accept 10483 >> Accept Ill Omens
.goto Hellfire Peninsula,50.91,60.19
.target +Lieutenant Amadi
step
>>Travel to the East Supply Caravan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Altumus|r
.goto Hellfire Peninsula,61.74,60.67,15,0
.goto Hellfire Peninsula,61.69,60.90
.turnin 10141 >> Turn in The Legion Reborn
.accept 10142 >> Accept The Path of Anguish
.target Sergeant Altumus
step
#loop
.line Hellfire Peninsula,65.83,59.06,67.03,58.91,69.16,59.36,69.64,57.71,68.15,56.25,67.55,54.60,66.82,56.63,65.55,55.62,65.83,59.06
.goto Hellfire Peninsula,65.83,59.06,50,0
.goto Hellfire Peninsula,67.03,58.91,50,0
.goto Hellfire Peninsula,69.16,59.36,50,0
.goto Hellfire Peninsula,69.64,57.71,50,0
.goto Hellfire Peninsula,68.15,56.25,50,0
.goto Hellfire Peninsula,67.55,54.60,50,0
.goto Hellfire Peninsula,66.82,56.63,50,0
.goto Hellfire Peninsula,65.55,55.62,50,0
.goto Hellfire Peninsula,65.83,59.06,50,0
>>Kill a |cRXP_ENEMY_Dreadcaller|r, |cRXP_ENEMY_Flamewaker Imps|r and |cRXP_ENEMY_Infernal Warbringers|r
.complete 10142,1 
.mob +Dreadcaller
.complete 10142,2 
.mob +Flamewaker Imp
.complete 10142,3 
.mob +Infernal Warbringer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Altumus|r
.goto Hellfire Peninsula,61.74,60.67,15,0
.goto Hellfire Peninsula,61.69,60.90
.turnin 10142 >> Turn in The Path of Anguish
.accept 10143 >> Accept Expedition Point
.target Sergeant Altumus
step
.goto Hellfire Peninsula,67.88,66.92,50,0
.goto Hellfire Peninsula,70.53,68.13,50,0
.goto Hellfire Peninsula,70.79,71.38
>>Kill |cRXP_ENEMY_Bleeding Hollow Orcs|r. Loot them for a |cRXP_LOOT_Talisman|r
.complete 10483,1 
.mob Bleeding Hollow Dark Shaman
.mob Bleeding Hollow Grunt
.mob Bleeding Hollow Necrolyte
.mob Bleeding Hollow Tormentor
.mob Bleeding Hollow Peon
step
.goto 1944/530,1875.7,-702.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Ironridge|r
.target Corporal Ironridge
.turnin 10483 >>Turn in Ill Omens
.accept 10484 >>Accept Cursed Talismans
step
#label HonorHS
>>Travel to Expedition Point
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander Kingston|r and |cRXP_FRIENDLY_Wing Commander Dabir'ee|r
.turnin 10143 >> Turn in Expedition Point
.accept 10144 >> Accept Disrupt Their Reinforcements
.goto Hellfire Peninsula,71.34,62.76
.target +Forward Commander Kingston
.accept 10895 >> Accept Zeth'Gor Must Burn!
.goto Hellfire Peninsula,71.41,62.48
.target +Wing Commander Dabir'ee
step
.goto Hellfire Peninsula,71.57,59.63,50,0
.goto Hellfire Peninsula,73.12,59.90,50,0
.goto Hellfire Peninsula,73.23,58.36
>>Kill |cRXP_ENEMY_Demons|r. Loot them for their |cRXP_LOOT_Rune Stones|r
.collect 28513,4,10144,1 
.mob Subjugator Shi'aziv
.mob Fel Handler
.mob Wrathguard
.mob Doomwhisperer
.mob Netherhound
step
.goto Hellfire Peninsula,72.73,58.94
>>Click |cRXP_PICK_Portal Kaalez|r to disrupt it
.complete 10144,2 
step << skip
.goto Hellfire Peninsula,71.80,52.87,50,0
.goto Hellfire Peninsula,70.83,55.36,50,0
.goto Hellfire Peninsula,72.05,55.28,50,0
.goto Hellfire Peninsula,71.57,59.63,50,0
.goto Hellfire Peninsula,73.12,59.90,50,0
.goto Hellfire Peninsula,73.23,58.36
>>Kill |cRXP_ENEMY_Demons|r. Loot them for their |cRXP_LOOT_Rune Stones|r
.collect 28513,4 
.isOnQuest 10144
.mob Subjugator Shi'aziv
.mob Fel Handler
.mob Wrathguard
.mob Doomwhisperer
.mob Netherhound

step
.goto Hellfire Peninsula,71.49,55.17
>>Kill |cRXP_ENEMY_Demons|r. Loot them for |cRXP_LOOT_Rune Stones|r. Then click |cRXP_PICK_Portal Grimh|r to disrupt it
.collect 28513,4,10144,1,-1 
.complete 10144,1 
.mob Subjugator Shi'aziv
.mob Fel Handler
.mob Wrathguard
.mob Doomwhisperer
.mob Netherhound
step
#label Disrupt
.goto Hellfire Peninsula,71.34,62.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander Kingston|r
.turnin 10144 >> Turn in Disrupt Their Reinforcements
.accept 10146 >> Accept Mission: The Murketh and Shaadraz Gateways
.target Forward Commander Kingston
step
#completewith next
.goto Hellfire Peninsula,71.41,62.48
.fly >> |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Dabir'ee|r to start the bombing run
.skipgossip 19409,1
.timer 102,Mission: Gateways Flight
.target Wing Commander Dabir'ee
step
.use 28038 >>|cRXP_WARN_Use the|r |T133712:0|t[Seaforium PU-36 Explosive Nether Modulator] |cRXP_WARN_on |cRXP_PICK_Gateway Shaadraz|r and |cRXP_PICK_Gateway Murketh|r during the flight|r
.complete 10146,2 
.goto Hellfire Peninsula,77.73,51.80,-1
.complete 10146,1 
.goto Hellfire Peninsula,78.00,47.24,-1
step
.goto Hellfire Peninsula,71.34,62.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander Kingston|r
.turnin 10146 >> Turn in Mission: The Murketh and Shaadraz Gateways
.accept 10340 >> Accept Shatter Point
.target Forward Commander Kingston
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Bleeding Hollow Orcs|r. Loot them for their |cRXP_LOOT_Talismans|r
.complete 10484,1 
.mob Bleeding Hollow Dark Shaman
.mob Bleeding Hollow Grunt
.mob Bleeding Hollow Necrolyte
.mob Bleeding Hollow Tormentor
.mob Bleeding Hollow Peon
.mob Worg Master Kruush
step
.use 31739 >>|cRXP_WARN_Use the|r |T132622:0|t[Smoke Beacon] |cRXP_WARN_on the four Towers|r
.complete 10895,3 
.goto Hellfire Peninsula,70.05,69.11
.complete 10895,4 
.goto Hellfire Peninsula,70.86,71.35
.complete 10895,2 
.goto Hellfire Peninsula,66.45,76.47
.complete 10895,1 
.goto Hellfire Peninsula,67.95,66.87
step
#loop
.line Hellfire Peninsula,68.13,69.69,69.16,69.29,70.05,69.12,70.85,71.32,68.88,72.50,69.44,75.37,69.10,76.55,68.58,75.71,66.44,76.44,68.13,69.69
.goto Hellfire Peninsula,68.13,69.69,50,0
.goto Hellfire Peninsula,69.16,69.29,50,0
.goto Hellfire Peninsula,70.05,69.12,50,0
.goto Hellfire Peninsula,70.85,71.32,50,0
.goto Hellfire Peninsula,68.88,72.50,50,0
.goto Hellfire Peninsula,69.44,75.37,50,0
.goto Hellfire Peninsula,69.10,76.55,50,0
.goto Hellfire Peninsula,68.58,75.71,50,0
.goto Hellfire Peninsula,66.44,76.44,50,0
.goto Hellfire Peninsula,68.13,69.69,50,0
>>Kill |cRXP_ENEMY_Bleeding Hollow Orcs|r. Loot them for their |cRXP_LOOT_Talismans|r
.complete 10484,1 
.mob Bleeding Hollow Dark Shaman
.mob Bleeding Hollow Grunt
.mob Bleeding Hollow Necrolyte
.mob Bleeding Hollow Tormentor
.mob Bleeding Hollow Peon
.mob Worg Master Kruush
step
.goto Hellfire Peninsula,70.97,63.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Ironridge|r
.turnin 10484 >> Turn in Cursed Talismans
.accept 10485 >> Accept Warlord of the Bleeding Hollow
.target Corporal Ironridge
step
.goto Hellfire Peninsula,71.41,62.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Dabir'ee|r
.turnin 10895 >> Turn in Zeth'Gor Must Burn!
.target Wing Commander Dabir'ee
step
.goto Hellfire Peninsula,69.65,76.48,15,0
.goto Hellfire Peninsula,70.47,76.15,15,0
.goto Hellfire Peninsula,70.08,77.08
>>Enter the Stronghold
>>Kill |cRXP_ENEMY_Warlord Morkh|r. Loot him for his |cRXP_LOOT_Armor|r
.complete 10485,1 
.mob Warlord Morkh
step
.goto Hellfire Peninsula,70.97,63.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Ironridge|r
.turnin 10485 >> Turn in Warlord of the Bleeding Hollow
.accept 10903 >> Accept Return to Honor Hold
.target Corporal Ironridge
step
#completewith next
.goto Hellfire Peninsula,71.41,62.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Dabir'ee|r
.gossip 19409,0 >> Fly to Shatter Point
.skipgossip 19409,1
.timer 56,Shatter Point Flight
.target Wing Commander Dabir'ee
step
.goto Hellfire Peninsula,78.42,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runetog Wildhammer|r
.target Runetog Wildhammer
.turnin 10340 >>Turn in Shatter Point
.accept 10344 >>Accept Wing Commander Gryphongar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Gryphongar|r
.goto Hellfire Peninsula,79.34,33.86
.turnin 10344 >> Turn in Wing Commander Gryphongar
.accept 10163 >> Accept Mission: The Abyssal Shelf
.target Wing Commander Gryphongar
step
#completewith next
.goto Hellfire Peninsula,78.25,34.45
.gossip 20235,0 >>Talk to |cRXP_FRIENDLY_Gryphoneer Windbellow|r to fly to the Abyssal Shelf. If you don't kill everything after the first flight, talk to her again
.timer 154,Mission: The Abyssal Shelf Flight
.skipgossip 20235,1
.target Gryphoneer Windbellow
step
.goto Hellfire Peninsula,72.21,23.78,-1
.goto Hellfire Peninsula,72.60,19.99,-1
.goto Hellfire Peninsula,73.04,15.18,-1
.goto Hellfire Peninsula,72.69,11.19,-1
.use 28132 >>|cRXP_WARN_Use the|r |T133709:0|t[Area 52 Special] |cRXP_WARN_on the |cRXP_ENEMY_Gan'arg Peons|r, |cRXP_ENEMY_Mo'arg Overseers|r and |cRXP_ENEMY_Fel Cannons|r during the flight|r
.complete 10163,1 
.mob +Gan'arg Peon
.complete 10163,2 
.mob +Mo'arg Overseer
.complete 10163,3 
.mob +Fel Cannon
step
.goto Hellfire Peninsula,79.34,33.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Gryphongar|r
.turnin 10163 >> Turn in Mission: The Abyssal Shelf
.accept 10382 >> Accept Go to the Front
.target Wing Commander Gryphongar
step
#completewith next
.goto Hellfire Peninsula,78.25,34.45
.gossip 20235,0 >>Talk to |cRXP_FRIENDLY_Gryphoneer Windbellow|r to fly to Honor Point
.skipgossip 20235,1
.timer 40,Honor Point Flight
.target Gryphoneer Windbellow
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
.turnin 10382 >> Turn in Go to the Front
.accept 10394 >> Accept Disruption - Forge Camp: Mageddon
.target Field Marshal Brock
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Gan'arg Servants|r
.complete 10394,1 
.mob Gan'arg Servant
step
#loop
.goto Hellfire Peninsula,65.55,32.56,40,0
.goto Hellfire Peninsula,65.06,31.45,40,0
.goto Hellfire Peninsula,64.53,32.48,40,0
.goto Hellfire Peninsula,64.14,31.94,40,0
.goto Hellfire Peninsula,64.16,30.67,40,0
.goto Hellfire Peninsula,65.42,29.81,40,0
.goto Hellfire Peninsula,66.06,31.33,40,0
.goto Hellfire Peninsula,65.55,32.56,40,0
.line Hellfire Peninsula,65.55,32.56,65.06,31.45,64.53,32.48,64.14,31.94,64.16,30.67,65.42,29.81,66.06,31.33,65.55,32.56
>>Kill |cRXP_ENEMY_Razorsaw|r
>>|cRXP_ENEMY_Razorsaw|r |cRXP_WARN_patrols counter-clockwise around the camp|r
.complete 10394,2 
.unitscan Razorsaw
step
#loop
.goto Hellfire Peninsula,63.50,31.00,50,0
.goto Hellfire Peninsula,64.32,33.31,50,0
.goto Hellfire Peninsula,65.88,32.45,50,0
.goto Hellfire Peninsula,66.09,30.07,50,0
.goto Hellfire Peninsula,59.62,32.39,50,0
.goto Hellfire Peninsula,58.07,32.87,50,0
.goto Hellfire Peninsula,58.07,32.87,0
>>Kill |cRXP_ENEMY_Gan'arg Servants|r
.complete 10394,1 
.mob Gan'arg Servant
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
.turnin 10394 >> Turn in Disruption - Forge Camp: Mageddon
.accept 10396 >> Accept Enemy of my Enemy...
.target Field Marshal Brock
step
#loop
.goto Hellfire Peninsula,66.57,32.01,50,0
.goto Hellfire Peninsula,65.48,33.49,50,0
.goto Hellfire Peninsula,64.53,33.17,50,0
.goto Hellfire Peninsula,64.10,33.47,50,0
.goto Hellfire Peninsula,63.40,32.49,50,0
.goto Hellfire Peninsula,63.51,31.06,50,0
.goto Hellfire Peninsula,63.51,31.06,0
>>Kill |cRXP_ENEMY_Fel Cannon MKIs|r
.complete 10396,1 
.mob Fel Cannon MKI
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
.turnin 10396 >> Turn in Enemy of my Enemy...
.accept 10397 >> Accept Invasion Point: Annihilator
.target Field Marshal Brock
step
.goto Hellfire Peninsula,53.09,26.46
>>Kill |cRXP_ENEMY_Arix'Amal|r. Loot him for the |cRXP_LOOT_Burning Legion Gate Key|r and the |T133473:0|t[|cRXP_LOOT_Burning Legion Missive|r]
.use 29588 >>|cRXP_WARN_Use the|r |T133473:0|t[|cRXP_LOOT_Burning Legion Missive|r] |cRXP_WARN_to start the quest|r
.complete 10397,1 
.complete 10397,3 
.collect 29588,1,10395 
.accept 10395 >> Accept The Dark Missive
.unitscan Warbringer Arix'Amal
step
.goto Hellfire Peninsula,53.04,27.71
>>Click the |cRXP_PICK_Rune of Spite|r inside the Gate
.complete 10397,2 
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
.turnin 10397 >> Turn in Invasion Point: Annihilator
.target Field Marshal Brock
step
#completewith next
.goto Hellfire Peninsula,68.65,28.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphoneer Leafbeard|r
.fly Shatter >> Fly to Shatter Point
.cooldown item,6948,<0
.skipgossip
.timer 31,Shatter Point Flight
.target Gryphoneer Leafbeard
step
.goto Hellfire Peninsula,78.19,34.34,5 >> Return to Shatter Point
.isOnQuest 10395
.cooldown item,6948,<0
step
#completewith next
.goto Hellfire Peninsula,78.42,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runetog Wildhammer|r
.fly Honor Hold >> Fly to Honor Hold
.cooldown item,6948,<0
.target Runetog Wildhammer
step
#completewith next
.hs >> Hearth to Honor Hold
.cooldown item,6948,>2
step
.goto 1944/530,2736.60010,-708.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Malgor Devidicus|r
.target Father Malgor Devidicus
.accept 10058 >>Accept An Old Gift
step
.goto Hellfire Peninsula,54.27,63.17,8,0
.goto Hellfire Peninsula,54.32,63.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Klatu|r upstairs
.turnin 10903 >> Turn in Return to Honor Hold
.accept 10909 >> Accept Fel Spirits
.accept 10916 >> Accept Digging for Prayer Beads
.target Assistant Klatu
step
.goto Hellfire Peninsula,54.63,63.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hama|r on the second floor of the Inn
>>|cRXP_BUY_Buy a|r |T132906:0|t[Silken Thread]|cRXP_BUY_. You may need this to progress a quest later|r
.collect 4291,1,10916,1 
.isOnQuest 10916
.target Hama

step
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
.goto Hellfire Peninsula,56.70,66.52
>>Go inside the Keep to the top floor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warp-Scryer Kryv|r
.target Warp-Scryer Kryv
.turnin 10395 >>Turn in The Dark Missive
.accept 10399 >>Accept The Heart of Darkness
.accept 10047 >>Accept The Path of Glory
step
.goto Hellfire Peninsula,56.64,66.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
.target Force Commander Danath Trollbane
.accept 10400 >>Accept Overlord
step
#completewith treat
#label Beads1
.goto Hellfire Peninsula,54.16,63.32,3,0
.goto Hellfire Peninsula,54.16,63.32,0
>>Loot the |cRXP_PICK_Dirt Mound|r outside the Inn for the |cRXP_LOOT_Prayer Beads|r
>>|cRXP_WARN_The |cRXP_PICK_Dirt Mound|r will despawn on server restart, if you're unlucky, you'll have to give |cRXP_FRIENDLY_Fei Fei|r a treat|r
.complete 10916,1 
step
#completewith Beads1
#label DTreat
>>|cRXP_WARN_If the |cRXP_PICK_Dirt Mound|r is not there:|r
>>|cRXP_BUY_Buy a|r |T132165:0|t[Fei Fei Doggy Treat] |cRXP_BUY_from|r |cRXP_FRIENDLY_Warrant Officer Tracy Proudwell|r
.goto Hellfire Peninsula,56.33,62.84
.collect 31799,1,10916,1 
.isOnQuest 10916
.target Warrant Officer Tracy Proudwell
step
#completewith next
#label treat
#requires DTreat
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei Fei|r
.goto Hellfire Peninsula,56.39,62.90
.turnin 10919 >> Turn in Fei Fei's Treat
.timer 120,Fei Fei RP
.isOnQuest 10916
.target Fei Fei
step << skip
#completewith next
.goto Hellfire Peninsula,50.87,60.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Honor Guard Wesilow|r. You can do this while waiting for |cRXP_FRIENDLY_Fei Fei|r
.accept 10050 >> Accept Unyielding Souls
.target Honor Guard Wesilow
step
#completewith next
#requires DTreat
.goto Hellfire Peninsula,54.16,63.32,0
>>|cRXP_FRIENDLY_Fei Fei|r will dig up the |cRXP_PICK_Dirt Mound|r containing the |cRXP_LOOT_Prayer Beads|r after a couple minutes.
>>|cRXP_WARN_You don't need to wait for the full RP, you will come back for this quest later|r
.complete 10916,1 
.isOnQuest 10916
.target Fei Fei
step
.goto Hellfire Peninsula,50.87,60.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Honor Guard Wesilow|r
.accept 10050 >> Accept Unyielding Souls
.target Honor Guard Wesilow
step
.goto Hellfire Peninsula,52.02,62.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
.accept 9355 >> Accept A Job for an Intelligent Man
.accept 10079 >> Accept When This Mine's a-Rockin'
.target Foreman Biggums
step
.goto Hellfire Peninsula,52.38,62.35,20,0
.goto Hellfire Peninsula,54.17,64.51,15,0
.goto Hellfire Peninsula,56.17,62.31
>>Kill |cRXP_ENEMY_Gan'arg Sappers|r inside the Mine
.complete 10079,1 
.mob Gan'arg Sapper
step
.goto Hellfire Peninsula,52.02,62.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
.turnin 10079 >> Turn in When This Mine's a-Rockin'
.accept 10099 >> Accept The Mastermind
.target Foreman Biggums
step
.goto Hellfire Peninsula,52.38,62.35,20,0
.goto Hellfire Peninsula,54.17,64.51,15,0
.goto Hellfire Peninsula,56.28,61.30
>>Kill |cRXP_ENEMY_Z'kral|r at the end of the Mine
.complete 10099,1 
.mob Z'kral
step
.goto Hellfire Peninsula,52.02,62.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
.turnin 10099 >> Turn in The Mastermind
.target Foreman Biggums
step
#loop
.line Hellfire Peninsula,51.42,63.90,48.95,64.85,47.09,63.73,45.95,65.21,47.26,65.97,48.19,66.40,48.28,68.19,49.73,67.25,51.42,63.90
.goto Hellfire Peninsula,51.42,63.90,55,0
.goto Hellfire Peninsula,48.95,64.85,55,0
.goto Hellfire Peninsula,47.09,63.73,55,0
.goto Hellfire Peninsula,45.95,65.21,55,0
.goto Hellfire Peninsula,47.26,65.97,55,0
.goto Hellfire Peninsula,48.19,66.40,55,0
.goto Hellfire Peninsula,48.28,68.19,55,0
.goto Hellfire Peninsula,49.73,67.25,55,0
.goto Hellfire Peninsula,51.42,63.90,55,0
.use 23338 >>Kill |cRXP_ENEMY_Marauding Crust Bursters|r by running over the moving rocks. Loot them for an |T133651:0|t[|cRXP_LOOT_Eroded Leather Case|r]
>>|cRXP_WARN_Use the|r |T133651:0|t[|cRXP_LOOT_Eroded Leather Case|r] |cRXP_WARN_to start the quest|r
.complete 9355,1 
.collect 23338,1,9373,1 
.accept 9373 >> Accept Missing Missive
.mob Marauding Crust Burster
step
#questguide << !tbc
#xprate <1.5 << tbc
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r and |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
.accept 9349 >> Accept Ravager Egg Roundup
.target +Legassi
.goto Hellfire Peninsula,49.24,74.83
.accept 10161 >> Accept In Case of Emergency...
.target +"Screaming" Screed Luckheed
.goto Hellfire Peninsula,49.15,74.87
step
#xprate >1.499 << TBC
.goto Hellfire Peninsula,49.24,74.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
.accept 9349 >> Accept Ravager Egg Roundup

.target Legassi
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Unyielding Footmen|r, |cRXP_ENEMY_Unyielding Sorcerers|r and |cRXP_ENEMY_Unyielding Knights|r
.complete 10050,1 
.mob +Unyielding Footman
.complete 10050,2 
.mob +Unyielding Sorcerer
.complete 10050,3 
.mob +Unyielding Knight
step
.goto Hellfire Peninsula,54.96,86.82
>>Loot the |cRXP_PICK_Mysteries of the Light|r book on the ground
.complete 10058,1 
step
>>Kill |cRXP_ENEMY_Unyielding Footmen|r, |cRXP_ENEMY_Unyielding Sorcerers|r and |cRXP_ENEMY_Unyielding Knights|r
.complete 10050,1 
.goto Hellfire Peninsula,58.50,79.42,50,0
.goto Hellfire Peninsula,58.54,77.36,50,0
.goto Hellfire Peninsula,57.70,75.28,50,0
.goto Hellfire Peninsula,56.70,74.36,50,0
.goto Hellfire Peninsula,55.59,79.20
.mob +Unyielding Footman
.complete 10050,2 
.goto Hellfire Peninsula,55.89,79.86,50,0
.goto Hellfire Peninsula,55.47,81.52,50,0
.goto Hellfire Peninsula,54.45,81.43,50,0
.goto Hellfire Peninsula,54.21,79.08,50,0
.goto Hellfire Peninsula,55.11,79.59
.mob +Unyielding Sorcerer
.complete 10050,3 
.goto Hellfire Peninsula,56.44,77.81,50,0
.goto Hellfire Peninsula,54.57,78.22,50,0
.goto Hellfire Peninsula,53.58,85.16,50,0
.goto Hellfire Peninsula,55.25,85.59
.mob +Unyielding Knight
step
.goto Hellfire Peninsula,41.83,85.16,50,0
.goto Hellfire Peninsula,40.37,87.33,50,0
.goto Hellfire Peninsula,38.42,88.82,50,0
.goto Hellfire Peninsula,36.72,88.50,50,0
.goto Hellfire Peninsula,36.88,91.36,50,0
.goto Hellfire Peninsula,32.54,93.32
>>Kill |cRXP_ENEMY_Razorfang Ravagers|r. Loot them for their |cRXP_LOOT_Ravager Eggs|r
>>You can also find |cRXP_LOOT_Ravager Eggs|r on the ground
.complete 9349,1 
.mob Razorfang Ravager
step << tbc/wotlk
#completewith next
.goto Shattrath City,64.05,41.12
>>Travel to Shattrath City
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
.fp Shattrath >> Get the Shattrath flight path
.target Nutral
step << Mage (tbc/wotlk)
#completewith next
.zone Stormwind City >> Teleport to Stormwind
step << (Warlock/Shaman/Paladin) (tbc/wotlk)
.goto Shattrath City,55.7,36.9
.zone Stormwind City >> Take the portal to Stormwind
step << (Warlock/Shaman/Paladin/Mage) (tbc/wotlk)
.goto StormwindClassic,25.3,78.7 << Warlock
.goto StormwindClassic,38.6,32.8 << Paladin
.goto StormwindClassic,61.9,84.0 << Shaman
.goto StormwindClassic,39.6,79.6 << Mage
.trainer >> Train your class spells
.target Ursula Deline << Warlock
.target Demisette Cloyce << Warlock
.target Sandahl << Warlock
.target Arthur the Faithful << Paladin
.target Katherine the Pure << Paladin
.target Lord Grayson Shadowbreaker << Paladin
.target Farseer Umbrua << Shaman
.target Elsharin << Mage
.target Jennea Cannon << Mage
step << Mage (tbc/wotlk)
#completewith next
.zone Darnassus >> Teleport to Darnassus
.isOnQuest 4986
step << (Warrior/Hunter/Rogue/Priest/Druid) (tbc/wotlk)
#completewith next
.goto Shattrath City,55.2,36.5
.zone Darnassus >> Take the portal to Darnassus
step << (Warrior/Hunter/Rogue/Priest) (tbc/wotlk)
.goto Darnassus,39.0,83.2 << Priest
.goto Darnassus,40.6,9.2 << Hunter
.goto Darnassus,31.5,17.4 << Rogue
.goto Darnassus,58.75,35.16 << Warrior
.trainer >> Train your class spells
.target Jandria << Priest
.target Jocaste << Hunter
.target Anishar << Rogue
.target Erion Shadewhisper << Rogue
.target Syurna << Rogue
.target Arias'ta Bladesinger << Warrior
step << (Warrior/Hunter/Rogue/Priest/Druid/Mage) (tbc/wotlk)
.turnin 4986 >> Turn in Glyphed Oaken Branch
.goto Darnassus,35.2,8.1
.isOnQuest 4986
.target Mathrengyl Bearwalker
step << (NightElf/Draenei) (tbc/wotlk)
#optional
#completewith next
.goto Darnassus,29.10,41.22,15,0
.goto Teldrassil,55.93,89.74,30 >> Go through the purple portal to Teldrassil
step << (NightElf/Draenei) (tbc/wotlk)
.goto Teldrassil,55.50,92.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.isOnQuest 978
.target Erelas Ambersky
step << Druid
>>Teleport to Moonglade
.goto Moonglade,52.4,40.6
.trainer 12042 >> Train your class spells
.target Loganaar << Druid
step
#completewith next
.hs >> Hearth back to Honor Hold
.cooldown item,6948,>2
step
.goto Hellfire Peninsula,54.29,63.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Malgor Devidicus|r
.turnin 10058 >> Turn in An Old Gift
.target Father Malgor Devidicus
step
.goto 1944/530,2910.0,-595.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Honor Guard Wesilow|r
.target Honor Guard Wesilow
.turnin 10050 >>Turn in Unyielding Souls
.accept 10057 >>Accept Looking to the Leadership
step
.goto 1944/530,2854.7,-669.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
.target Foreman Biggums
.turnin 9355 >>Turn in A Job for an Intelligent Man
step
.goto Hellfire Peninsula,44.82,75.34
.use 31772 >>|cRXP_WARN_Use the|r |T134423:0|t[Anchorite Relic]
>>Kill the |cRXP_ENEMY_Shattered Hand Berserkers|r targeted by the |T134423:0|t[Anchorite Relic]
>>Kill the |cRXP_ENEMY_Fel Spirits|r that spawn afterwards
.complete 10909,1 
.mob Shattered Hand Berserker
.mob Fel Spirit
step
.goto Hellfire Peninsula,49.24,74.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
.turnin 9349 >> Turn in Ravager Egg Roundup
.accept 9361 >> Accept Helboar, the Other White Meat
.target Legassi
step
#optional
#questguide << !tbc
#xprate <1.5 << tbc
#completewith BuzWing
>>Loot the |cRXP_PICK_Zeppelin Debris|r on the ground
.complete 10161,1 
step
#loop
.line Hellfire Peninsula,46.10,71.85,45.11,71.84,45.39,70.17,46.89,68.32,50.01,64.14,52.83,70.37,46.10,71.85
.goto Hellfire Peninsula,46.10,71.85,55,0
.goto Hellfire Peninsula,45.11,71.84,55,0
.goto Hellfire Peninsula,45.39,70.17,55,0
.goto Hellfire Peninsula,46.89,68.32,55,0
.goto Hellfire Peninsula,50.01,64.14,55,0
.goto Hellfire Peninsula,52.83,70.37,55,0
.goto Hellfire Peninsula,46.10,71.85,55,0
>>Kill |cRXP_ENEMY_Deranged Helboars|r. Loot them for their |cRXP_LOOT_Tainted Meat|r
.use 23268 >>|cRXP_WARN_Use the|r |T134720:0|t[Purification Mixture] |cRXP_WARN_to convert the |cRXP_LOOT_Tainted Meat|r into|r |cRXP_LOOT_Purified Helboar Meat|r
.collect 23270,8,9361,1,-1
.complete 9361,1 
.mob Deranged Helboar
step
.goto Hellfire Peninsula,49.24,74.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
.turnin 9361 >> Turn in Helboar, the Other White Meat
.accept 9356 >> Accept Smooth as Butter
.target Legassi
step
>>Kill |cRXP_ENEMY_Arch Mage Xintor|r and |cRXP_ENEMY_Commander Thalvos|r
.complete 10057,1 
.mob +Arch Mage Xintor
.goto Hellfire Peninsula,53.67,81.10
.complete 10057,2 
.mob +Lieutenant Commander Thalvos
.goto Hellfire Peninsula,54.75,83.71
step
#label BuzWing
#loop
.line Hellfire Peninsula,57.50,72.75,58.66,69.95,62.44,69.12,64.18,66.08,65.00,64.65,65.95,62.08,62.47,65.22,61.12,66.85,57.71,69.65,57.50,72.75
.goto Hellfire Peninsula,57.50,72.75,55,0
.goto Hellfire Peninsula,58.66,69.95,55,0
.goto Hellfire Peninsula,62.44,69.12,55,0
.goto Hellfire Peninsula,64.18,66.08,55,0
.goto Hellfire Peninsula,65.00,64.65,55,0
.goto Hellfire Peninsula,65.95,62.08,55,0
.goto Hellfire Peninsula,62.47,65.22,55,0
.goto Hellfire Peninsula,61.12,66.85,55,0
.goto Hellfire Peninsula,57.71,69.65,55,0
.goto Hellfire Peninsula,57.50,72.75,55,0
>>Kill |cRXP_ENEMY_Bonestripper Buzzards|r. Loot them for their |cRXP_LOOT_Wings|r
.complete 9356,1 
.mob Bonestripper Buzzard
step
#questguide << !tbc
#xprate <1.5 << tbc
#loop
.line Hellfire Peninsula,57.50,72.75,58.66,69.95,62.44,69.12,64.18,66.08,65.00,64.65,65.95,62.08,62.47,65.22,61.12,66.85,57.71,69.65,57.50,72.75
.goto Hellfire Peninsula,57.50,72.75,55,0
.goto Hellfire Peninsula,58.66,69.95,55,0
.goto Hellfire Peninsula,62.44,69.12,55,0
.goto Hellfire Peninsula,64.18,66.08,55,0
.goto Hellfire Peninsula,65.00,64.65,55,0
.goto Hellfire Peninsula,65.95,62.08,55,0
.goto Hellfire Peninsula,62.47,65.22,55,0
.goto Hellfire Peninsula,61.12,66.85,55,0
.goto Hellfire Peninsula,57.71,69.65,55,0
.goto Hellfire Peninsula,57.50,72.75,55,0
>>Loot the |cRXP_LOOT_Zeppelin Debris|r on the ground
.complete 10161,1 
step << Shaman
#completewith prayerbeads1
.hs >> Hearth to Honor Hold
step
.goto Hellfire Peninsula,54.16,63.32
>>Loot the |cRXP_PICK_Dirt Mound|r outside the Inn for the |cRXP_LOOT_Prayer Beads|r
>>|cRXP_WARN_The |cRXP_PICK_Dirt Mound|r will despawn on server restart, if you got unlucky, you'll have to give |cRXP_FRIENDLY_Fei Fei|r a treat|r
.complete 10916,1 
step
#label prayerbeads1
.goto Hellfire Peninsula,54.27,63.17,8,0
.goto Hellfire Peninsula,54.32,63.65
>>Return to Honor Hold. Go to the second floor of the Inn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Klatu|r
.turnin 10909 >> Turn in Fel Spirits
.turnin 10916 >> Turn in Digging for Prayer Beads
.accept 10935 >> Accept The Exorcism of Colonel Jules
.target Assistant Klatu
step
#completewith next
.goto 1944/530,2754.11,-707.211
.gossip 22431,0 >> Talk to |cRXP_FRIENDLY_Anchorite Barada|r in the bedroom to start the exorcism
.skipgossip 22431,1
.target Anchorite Barada
.timer 215,Colonel Jules RP
step
.goto 1944/530,2754.36,-710.211
.use 31828 >>|cRXP_WARN_Use the|r |T133290:0|t[Ritual Prayer Beads] |cRXP_WARN_to instantly kill the spirits that spawn|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Jules|r once the RP finishes
.complete 10935,1 
.skipgossip 22431,1
.skipgossip 22432,1
.target Colonel Jules
step
.goto Hellfire Peninsula,54.32,63.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Klatu|r
.turnin 10935 >> Turn in The Exorcism of Colonel Jules
.accept 10936 >> Accept Trollbane is Looking for You
.target Assistant Klatu
step
.goto 1944/530,2736.10010,-707.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sid Limbardi|r
.target Sid Limbardi
.accept 9558 >>Accept The Longbeards
step
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
>>Go inside the Keep to the top floor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
.turnin 10936 >> Turn in Trollbane is Looking for You
.accept 10937 >> Accept Drill the Drillmaster
.goto Hellfire Peninsula,56.64,66.70
.target Force Commander Danath Trollbane
step
.goto Hellfire Peninsula,50.87,60.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Honor Guard Wesilow|r
.turnin 10057 >> Turn in Looking to the Leadership
.target Honor Guard Wesilow
step
.goto Hellfire Peninsula,48.07,56.17
>>Kill |cRXP_ENEMY_Drillmaster Zurok|r
>>|cRXP_WARN_Use your pet to pull him from down out of the pit, then kite him back to Honor Hold and have the guards help you|r << (tbc/wotlk) (Hunter/Warlock/DK)
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << tbc
.complete 10937,1 
.isOnQuest 10937
.mob Drillmaster Zurok
step
.goto Hellfire Peninsula,49.63,52.08,50,0
.goto Hellfire Peninsula,52.70,50.73,50,0
.goto Hellfire Peninsula,63.42,49.34,50,0
.goto Hellfire Peninsula,52.70,50.73
>>Click the |cRXP_PICK_Trampled Skeleton|r corpses along the path
.complete 10047,1 
step
.use 26002 >>|cRXP_WARN_Use the|r |T135432:0|t[Flaming Torch] |cRXP_WARN_on the Catapults|r
.complete 10078,1 
.goto Hellfire Peninsula,58.50,47.64,-1
.complete 10078,2 
.goto Hellfire Peninsula,55.70,47.48,-1
.complete 10078,3 
.goto Hellfire Peninsula,53.55,48.24,-1
.complete 10078,4 
.goto Hellfire Peninsula,52.64,48.01,-1
step
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r outside Thrallmar Mine
.accept 10236 >> Accept Outland Sucks!
.target Foreman Razelcraz
step
.goto Hellfire Peninsula,49.02,37.63,50,0
.goto Hellfire Peninsula,47.98,37.39,50,0
.goto Hellfire Peninsula,48.41,40.86,50,0
.goto Hellfire Peninsula,47.28,42.34,50,0
.goto Hellfire Peninsula,47.17,43.74,50,0
.goto Hellfire Peninsula,48.85,35.37,50,0
.goto Hellfire Peninsula,47.28,42.34
>>Loot the |cRXP_PICK_Shredder Parts|r boxes on the ground
.complete 10236,1 
step
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
.turnin 10236 >> Turn in Outland Sucks!
.accept 10238 >> Accept How to Serve Goblins
.target Foreman Razelcraz
step
>>Free |cRXP_FRIENDLY_Manni|r, |cRXP_FRIENDLY_Moh|r and |cRXP_FRIENDLY_Jakk|r from the cages
.complete 10238,1 
.target +Manni
.goto Hellfire Peninsula,45.12,41.11
.complete 10238,2 
.target +Moh
.goto Hellfire Peninsula,46.42,45.18
.complete 10238,3 
.target +Jakk
.goto Hellfire Peninsula,47.50,46.63
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
.turnin 10238 >> Turn in How to Serve Goblins
.accept 10629 >> Accept Shizz Work
.target Foreman Razelcraz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
.turnin 10238 >> Turn in How to Serve Goblins
.accept 10629 >> Accept Shizz Work
.target Foreman Razelcraz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
#completewith next
.cast 37690 >> |cRXP_WARN_Use the|r |T133942:0|t[Felhound Whistle] |cRXP_WARN_whilst beside |cRXP_FRIENDLY_Foreman Razelcraz|r to summon a|r |cRXP_FRIENDLY_Felhound|r
.use 30803
step
#questguide << !tbc
.goto Hellfire Peninsula,50.7,28.9
>>Kill |cRXP_ENEMY_Deranged Helboars|r. Loot the |cRXP_LOOT_Droppings|r after the |cRXP_FRIENDLY_Felhound's RP|r for the |cRXP_PICK_Shredder Keys|r
.complete 10629,1 
.use 30803
.mob Deranged Helboar
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
.turnin 10629 >> Turn in Shizz Work
.accept 10630 >> Accept Beneath Thrallmar
.target Foreman Razelcraz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.72,31.68,20,0
.goto Hellfire Peninsula,52.57,30.59,20,0
.goto Hellfire Peninsula,54.39,31.57
>>Kill |cRXP_ENEMY_Urga'zz|r in the back of Thrallmar Mine
.complete 10630,1 
.mob Urga'zz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
.turnin 10630 >> Turn in Beneath Thrallmar
.target Foreman Razelcraz
step
#completewith next
.goto Hellfire Peninsula,51.37,30.52,80 >> Follow the path to the Temple of Telhamat
.skill riding,225,1
step
#sticky
#label dpredators
.goto 1944/530,4335.4,70.7,0
#loop
.waypoint Hellfire Peninsula,23.36,41.29,50,0
.waypoint Hellfire Peninsula,23.32,39.88,50,0
.waypoint Hellfire Peninsula,23.36,38.59,50,0
.waypoint Hellfire Peninsula,23.36,37.45,50,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vanura|r, she patrols up and down the central ramp
.target Scout Vanura
.accept 9398 >>Accept Deadly Predators
step
.goto 1944/530,4350.0,90.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Obadei|r
.target Anchorite Obadei
.accept 9390 >>Accept In Search of Sedai
step
.goto 1944/530,4347.2,92.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikan|r
.target Ikan
.accept 9399 >>Accept Cruel Taskmasters
.accept 9490 >>Accept The Rock Flayer Matriarch
step
#requires dpredators
#completewith Telhamat
.goto Hellfire Peninsula,23.35,36.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Ophera Windfury|r
.home >> Set your Hearthstone to Temple of Telhamat
.target Caregiver Ophera Windfury
step
#requires dpredators
#optional
.xp <61,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsaana|r and |cRXP_FRIENDLY_Amaan the Wise|r
.accept 9383 >> Accept An Ambitious Plan
.goto Hellfire Peninsula,23.21,36.66
.target +Elsaana
.accept 10443 >> Accept Helping the Cenarion Post
.goto Hellfire Peninsula,23.42,36.55
.accept 9426 >> Accept The Pools of Aggonar
.goto Hellfire Peninsula,23.42,36.55
.target Amaan the Wise
step
.goto Hellfire Peninsula,23.42,36.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
.target Amaan the Wise
.accept 9426 >>Accept The Pools of Aggonar
step
#completewith next
.goto Hellfire Peninsula,25.19,37.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuma|r
.fp Temple of Telhamat >> Get the Temple of Telhamat flight path
.target Kuma
step << Mage/DK wotlk
.goto Hellfire Peninsula,24.40,38.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vodesiin|r
>>Buy 20 |T134419:0|tRunes of Teleportation from him << Mage
.collect 17031,20 << Mage 
>>Buy 60 |T133849:0|tCorpse Dust from him << DK
.collect 37201,60 << DK 
.target Vodesiin
step
.goto Hellfire Peninsula,26.89,37.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedai's Corpse|r
.turnin 9390 >> Turn in In Search of Sedai
.accept 9423 >> Accept Return to Obadei
.target Sedai's Corpse
step
#label Telhamat
>>Return to the Temple of Telhamat
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Obadei|r and |cRXP_FRIENDLY_Makuru|r
.turnin 9423 >> Turn in Return to Obadei
.target +Anchorite Obadei
.goto Hellfire Peninsula,23.00,40.37
.accept 9424 >> Accept Makuru's Vengeance
.target +Makuru
.goto Hellfire Peninsula,23.14,40.16
step
#completewith next
.goto Hellfire Peninsula,31.99,33.13,50 >>Run up the mountain path leading toward the Mag'har Grounds
.skill riding,225,1
step
#loop
.line Hellfire Peninsula,34.10,32.54,33.30,29.46,36.22,27.59,36.22,30.25,36.54,33.98,36.14,35.53,34.10,32.54
.goto Hellfire Peninsula,34.10,32.54,45,0
.goto Hellfire Peninsula,33.30,29.46,45,0
.goto Hellfire Peninsula,36.22,27.59,45,0
.goto Hellfire Peninsula,36.22,30.25,45,0
.goto Hellfire Peninsula,36.54,33.98,45,0
.goto Hellfire Peninsula,36.14,35.53,45,0
.goto Hellfire Peninsula,34.10,32.54,45,0
>>Kill |cRXP_ENEMY_Debilitated Mag'har Grunts|r and |cRXP_ENEMY_Mag'har Grunts|r. Loot them for their |cRXP_LOOT_Beads|r
.complete 9424,1 
.mob Debilitated Mag'har Grunt
.mob Mag'har Grunt
step
.goto Hellfire Peninsula,43.81,31.56
>>Kill |cRXP_ENEMY_Arazzius the Cruel|r
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << tbc/wotlk
>>|cRXP_WARN_This quest is highly recommended as it rewards a trinket that'll last you a long time|r << tbc/wotlk
.complete 10400,1 
.isOnQuest 10400
.mob Arazzius the Cruel
step
#loop
.line Hellfire Peninsula,44.25,29.53,42.30,30.09,39.77,27.81,38.94,29.46,38.92,31.26,39.79,34.29,38.87,35.98,39.31,38.57,38.39,41.37,39.87,41.62,40.48,37.90,41.20,32.65,44.25,29.53
.goto Hellfire Peninsula,44.25,29.53,45,0
.goto Hellfire Peninsula,42.30,30.09,45,0
.goto Hellfire Peninsula,39.77,27.81,45,0
.goto Hellfire Peninsula,38.94,29.46,45,0
.goto Hellfire Peninsula,38.92,31.26,45,0
.goto Hellfire Peninsula,39.79,34.29,45,0
.goto Hellfire Peninsula,38.87,35.98,45,0
.goto Hellfire Peninsula,39.31,38.57,45,0
.goto Hellfire Peninsula,38.39,41.37,45,0
.goto Hellfire Peninsula,39.87,41.62,45,0
.goto Hellfire Peninsula,40.48,37.90,45,0
.goto Hellfire Peninsula,41.20,32.65,45,0
.goto Hellfire Peninsula,44.25,29.53,45,0
>>Kill |cRXP_ENEMY_Terrorfiends|r and |cRXP_ENEMY_Blistering Rots|r
.complete 9426,2 
.mob +Blistering Rot
.complete 10399,1 
.mob +Terrorfiend
step << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
.turnin 10238 >> Turn in How to Serve Goblins
.target Foreman Razelcraz
step
#completewith next
.hs >> Hearth to the Temple of Telhamat
.cooldown item,6948,>2
step
.goto 1944/530,4341.30029,97.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makuru|r
.target Makuru
.turnin 9424 >>Turn in Makuru's Vengeance
.timer 22,Makuru's Vengeance RP
step
.goto 1944/530,4349.9,92.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Obadei|r, you have to wait for the RP sequence to end
.target Anchorite Obadei
.accept 9543 >>Accept Atonement
step
.goto 1944/530,4330.0,220.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
.target Amaan the Wise
.turnin 9543 >>Turn in Atonement
.accept 9430 >>Accept Sha'naar Relics
.turnin 9426 >>Turn in The Pools of Aggonar
.accept 9427 >>Accept Cleansing the Waters
step
#completewith next
.goto Hellfire Peninsula,40.14,30.78
.cast 29297 >>|cRXP_WARN_Use the|r |T134861:0|t[Cleansing Vial] |cRXP_WARN_to summon|r |cRXP_ENEMY_Aggonis|r
step
.goto Hellfire Peninsula,40.14,30.78
>>Kill |cRXP_ENEMY_Aggonis|r
.use 23361
.complete 9427,1 
.mob Aggonis
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Stonescythe Alphas|r and |cRXP_ENEMY_Stonescythe Whelps|r
.complete 9398,1 
.mob +Stonescythe Alpha
.complete 9398,2 
.mob +Stonescythe Whelp
step
.goto Hellfire Peninsula,33.94,63.93,30,0
.goto Hellfire Peninsula,33.34,65.16
>>Kill |cRXP_ENEMY_Blacktalon the Savage|r. Loot him for his |cRXP_LOOT_Claws|r
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << tbc
.complete 9490,1 
.isOnQuest 9490
.mob Blacktalon the Savage
step
.goto Hellfire Peninsula,34.74,60.88,50,0
.goto Hellfire Peninsula,32.20,58.92,50,0
.goto Hellfire Peninsula,28.31,66.50
>>Kill |cRXP_ENEMY_Stonescythe Alphas|r and |cRXP_ENEMY_Stonescythe Whelps|r
.complete 9398,1 
.mob +Stonescythe Alpha
.complete 9398,2 
.mob +Stonescythe Whelp
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremni Longbeard|r and |cRXP_FRIENDLY_Mirren Longbeard|r
.turnin 9558 >> Turn in The Longbeards
.accept 9417 >> Accept The Arakkoa Threat
.accept 9385 >> Accept Rampaging Ravagers
.target +Gremni Longbeard
.goto Hellfire Peninsula,23.89,72.17
.accept 9563 >> Accept Gaining Mirren's Trust
.turnin 9563 >> Turn in Gaining Mirren's Trust
.target +Mirren Longbeard
.goto Hellfire Peninsula,23.97,72.35
.itemcount 23848,1
step
.goto Hellfire Peninsula,23.97,72.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirren Longbeard|r
.accept 9420 >> Accept The Finest Down
.isQuestTurnedIn 9563
.target Mirren Longbeard
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremni Longbeard|r
.turnin 9558 >> Turn in The Longbeards
.accept 9417 >> Accept The Arakkoa Threat
.accept 9385 >> Accept Rampaging Ravagers
.goto Hellfire Peninsula,23.89,72.17
.target Gremni Longbeard
step
#loop
.line Hellfire Peninsula,21.71,70.55,22.68,67.28,24.03,65.47,22.24,60.51,21.57,63.11,21.45,66.57,21.71,70.55
.goto Hellfire Peninsula,21.71,70.55,50,0
.goto Hellfire Peninsula,22.68,67.28,50,0
.goto Hellfire Peninsula,24.03,65.47,50,0
.goto Hellfire Peninsula,22.24,60.51,50,0
.goto Hellfire Peninsula,21.57,63.11,50,0
.goto Hellfire Peninsula,21.45,66.57,50,0
.goto Hellfire Peninsula,21.71,70.55,50,0
>>Kill |cRXP_ENEMY_Quillfang Ravagers|r << tbc/wotlk
>>Kill |cRXP_ENEMY_Quillfang Ravagers|r and |cRXP_ENEMY_Quillfang Skitterers|r << !tbc !wotlk
.complete 9385,1 
.mob Quillfang Ravager
.mob Quillfang Skitterer << !tbc !wotlk
step
#optional
#completewith Kaliri
>>Kill |cRXP_ENEMY_Haal'eshi Windwalkers|r and |cRXP_ENEMY_Haal'eshi Talonguards|r
.complete 9417,1 
.mob +Haal'eshi Windwalker
.complete 9417,2 
.mob +Haal'eshi Talonguard
step
#optional
#completewith AvruuO
>>Kill |cRXP_ENEMY_Kaliri Matriarchs|r, |cRXP_ENEMY_Kaliri Swoopers|r, |cRXP_ENEMY_Male Kaliri Hatchlings|r and |cRXP_ENEMY_Female Kaliri Hatchlings|r. Loot them for their |cRXP_LOOT_Feathers|r
>>|cRXP_WARN_Click the nests to spawn |cRXP_ENEMY_Male Kaliri Hatchlings|r and|r |cRXP_ENEMY_Female Kaliri Hatchlings|r
.complete 9420,1 
.isOnQuest 9420
.mob Kaliri Matriarch
.mob Kaliri Swooper
.mob Male Kaliri Hatchling
.mob Female Kaliri Hatchling
step
.goto Hellfire Peninsula,25.67,75.13,30,0
.goto Hellfire Peninsula,25.72,76.44
.use 23580 >>Kill |cRXP_ENEMY_Avruu|r. Loot him for |T134124:0|t[|cRXP_LOOT_Avruu's Orb|r]
>>|cRXP_WARN_Use|r |T134124:0|t[|cRXP_LOOT_Avruu's Orb|r] |cRXP_WARN_to start the quest|r
.collect 23580,1,9418,1 
.accept 9418 >> Accept Avruu's Orb
.unitscan Avruu
step
#label AvruuO
.goto Hellfire Peninsula,28.93,81.46
>>Click the |cRXP_PICK_Haal'eshi Altar|r to summon |cRXP_FRIENDLY_Aeranas|r

>>Defeat |cRXP_ENEMY_Aeranas|r afterwards
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeranas|r
.turnin 9418 >> Turn in Avruu's Orb
.mob Aeranas
.skipgossip
step
#label Kaliri
.goto Hellfire Peninsula,27.55,77.86,30,0
.goto Hellfire Peninsula,25.79,76.61,30,0
.goto Hellfire Peninsula,25.79,74.95,30,0
.goto Hellfire Peninsula,26.38,74.25,30,0
.goto Hellfire Peninsula,25.11,76.08,30,0
.goto Hellfire Peninsula,24.69,76.47
>>Kill |cRXP_ENEMY_Kaliri Matriarchs|r, |cRXP_ENEMY_Kaliri Swoopers|r, |cRXP_ENEMY_Male Kaliri Hatchlings|r and |cRXP_ENEMY_Female Kaliri Hatchlings|r. Loot them for their |cRXP_LOOT_Feathers|r
>>|cRXP_WARN_Click the nests to spawn |cRXP_ENEMY_Male Kaliri Hatchlings|r and|r |cRXP_ENEMY_Female Kaliri Hatchlings|r
.complete 9420,1 
.isOnQuest 9420
.mob Kaliri Matriarch
.mob Kaliri Swooper
.mob Male Kaliri Hatchling
.mob Female Kaliri Hatchling
step
.goto Hellfire Peninsula,25.97,78.32,50,0
.goto Hellfire Peninsula,26.14,72.23
>>Kill |cRXP_ENEMY_Haal'eshi Windwalkers|r and |cRXP_ENEMY_Haal'eshi Talonguards|r
.complete 9417,1 
.mob +Haal'eshi Windwalker
.complete 9417,2 
.mob +Haal'eshi Talonguard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremni Longbeard|r and |cRXP_FRIENDLY_Mirren Longbeard|r
.turnin 9420 >> Turn in The Finest Down
.target +Mirren Longbeard
.goto Hellfire Peninsula,23.97,72.35
.turnin 9417 >> Turn in The Arakkoa Threat
.turnin 9385 >> Turn in Rampaging Ravagers
.goto Hellfire Peninsula,23.89,72.17
.isQuestComplete 9420
.target Gremni Longbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremni Longbeard|r
.turnin 9417 >> Turn in The Arakkoa Threat
.turnin 9385 >> Turn in Rampaging Ravagers
.goto Hellfire Peninsula,23.89,72.17
.target Gremni Longbeard
step
#optional
#completewith Arzeth
>>Kill |cRXP_ENEMY_Illidari Taskmasters|r
>>Loot the |cRXP_PICK_Relics|r on the ground
.complete 9399,1 
.complete 9430,1 
.mob Illidari Taskmaster
step
.goto Hellfire Peninsula,15.59,58.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akoru the Firecaller|r
.accept 10403 >> Accept Naladu
.target Akoru the Firecaller
step
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
.turnin 10403 >> Turn in Naladu
.accept 10367 >> Accept A Traitor Among Us
.target Naladu
step
.goto Hellfire Peninsula,14.34,63.50
>>Open the |cRXP_PICK_Metal Coffer|r. Loot it for the |cRXP_LOOT_Sha'naar Key|r
.complete 10367,1 
step
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
.turnin 10367 >> Turn in A Traitor Among Us
.accept 10368 >> Accept The Dreghood Elders
.target Naladu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the captured |cRXP_FRIENDLY_Broken|r in the Ruins
.complete 10368,1 
.target +Morod the Windstirrer
.goto Hellfire Peninsula,13.13,61.04
.complete 10368,3 
.target +Aylaan the Waterwaker
.goto Hellfire Peninsula,13.01,58.42
.complete 10368,2 
.goto Hellfire Peninsula,15.59,58.74
.target +Akoru the Firecaller
.skipgossip
step
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
.turnin 10368 >> Turn in The Dreghood Elders
.accept 10369 >> Accept Arzeth's Demise
.target Naladu
step
.goto Hellfire Peninsula,14.29,62.38,50,0
.goto Hellfire Peninsula,14.35,56.99
>>|cRXP_WARN_Use the|r |T135225:0|t[Staff of the Dreghood Elders] |cRXP_WARN_to weaken|r |cRXP_ENEMY_Arzeth the Merciless|r
.use 29513 >>Kill |cRXP_ENEMY_Arzeth|r, he patrol around the central path
.complete 10369,1 
.mob Arzeth the Merciless
.mob Arzeth the Powerless
step
#label Arzeth
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
.turnin 10369 >> Turn in Arzeth's Demise
.target Naladu
step
#loop
.line Hellfire Peninsula,14.90,64.00,14.60,63.10,13.33,62.20,13.06,61.70,13.66,60.65,12.16,57.78,13.30,58.39,13.67,57.49,15.69,57.72,14.54,59.47,14.90,64.00
.goto Hellfire Peninsula,14.90,64.00,50,0
.goto Hellfire Peninsula,14.60,63.10,50,0
.goto Hellfire Peninsula,13.33,62.20,50,0
.goto Hellfire Peninsula,13.06,61.70,50,0
.goto Hellfire Peninsula,13.66,60.65,50,0
.goto Hellfire Peninsula,12.16,57.78,50,0
.goto Hellfire Peninsula,13.30,58.39,50,0
.goto Hellfire Peninsula,13.67,57.49,50,0
.goto Hellfire Peninsula,15.69,57.72,50,0
.goto Hellfire Peninsula,14.54,59.47,50,0
.goto Hellfire Peninsula,14.90,64.00,50,0
>>Kill |cRXP_ENEMY_Illidari Taskmasters|r
>>Loot the |cRXP_PICK_Relics|r on the ground
.complete 9399,1 
.mob +Illidari Taskmaster
.complete 9430,1 
step
>>Travel to the Cenarion Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amythiel Mistwalker|r, |cRXP_FRIENDLY_Mahuram Stouthoof|r, |cRXP_FRIENDLY_Thiah Redmane|r and |cRXP_FRIENDLY_Tola'thion|r
.accept 9912 >> Accept The Cenarion Expedition
.target +Amythiel Mistwalker
.goto Hellfire Peninsula,16.04,52.15
.accept 10159 >> Accept Keep Thornfang Hill Clear!
.target +Mahuram Stouthoof
.goto Hellfire Peninsula,15.65,52.15
.turnin -10443 >> Turn in Helping the Cenarion Post
.turnin -9373 >> Turn in Missing Missive
.accept 9372 >> Accept Demonic Contamination
.target +Thiah Redmane
.goto Hellfire Peninsula,15.70,52.08
.accept 10132 >>Accept Colossal Menace
.target +Tola'thion
.goto Hellfire Peninsula,15.62,52.04
step
#optional
#completewith next
.goto Hellfire Peninsula,15.0,45.7,0
.use 29476 >>Kill a |cRXP_ENEMY_Raging Colossus|r. Loot it for a |T134081:0|t[|cRXP_LOOT_Crimson Crystal Shard|r]
>>|cRXP_WARN_Use the|r |T134081:0|t[|cRXP_LOOT_Crimson Crystal Shard|r] |cRXP_WARN_to start the quest|r
>>|cRXP_WARN_Find a group for them if needed. Skip this step if you're unable to find a group or solo them without all cooldowns|r << tbc/wotlk
.collect 29476,1,10134,1 
.accept 10134 >>Accept Crimson Crystal Clue
.mob Raging Colossus
step
.goto Hellfire Peninsula,14.38,44.64,50,0
.goto Hellfire Peninsula,17.96,40.76
>>Kill |cRXP_ENEMY_Raging Colossuses|r
>>|cRXP_WARN_Find a group for them if needed. Skip this step if you're unable to find a group or solo them without all cooldowns|r << tbc/wotlk
.complete 10132,1 
.mob Raging Colossus
step
.goto Hellfire Peninsula,14.38,44.64,50,0
.goto Hellfire Peninsula,17.96,40.76
.use 29476 >>Kill a |cRXP_ENEMY_Raging Colossus|r. Loot it for a |T134081:0|t[|cRXP_LOOT_Crimson Crystal Shard|r]
>>|cRXP_WARN_Use the|r |T134081:0|t[|cRXP_LOOT_Crimson Crystal Shard|r] |cRXP_WARN_to start the quest|r
>>|cRXP_WARN_Find a group for them if needed. Skip this step if you're unable to find a group or solo them without all cooldowns|r << tbc/wotlk
.collect 29476,1,10134,1 
.accept 10134 >>Accept Crimson Crystal Clue
.mob Raging Colossus
step << Shaman
#completewith next
.hs >> Hearth to the Temple of Telhamat
.cooldown item,6948,>2
step << Shaman
.goto 1944/530,4331.10010,220.70000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
.target Amaan the Wise
.turnin 9427 >>Turn in Cleansing the Waters
.turnin 9430 >>Turn in Sha'naar Relics
.accept 9545 >>Accept The Seer's Relic
step << Shaman
.goto 1944/530,4341.30029,217.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsaana|r
.target Elsaana
.accept 9383 >>Accept An Ambitious Plan
step
#label dpred2
#sticky
.goto 1944/530,4333.4,179.6,0
#loop
.waypoint Hellfire Peninsula,23.36,41.29,50,0
.waypoint Hellfire Peninsula,23.32,39.88,50,0
.waypoint Hellfire Peninsula,23.36,38.59,50,0
.waypoint Hellfire Peninsula,23.36,37.45,50,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vanura|r, she patrols up and down the central ramp
.target Scout Vanura
.turnin 9398 >>Turn in Deadly Predators
step
.goto 1944/530,4346.8,94.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikan|r
.target Ikan
.turnin 9399 >>Turn in Cruel Taskmasters
.turnin 9490 >>Turn in The Rock Flayer Matriarch
.isQuestComplete 9490
step
#optional
.goto 1944/530,4346.8,94.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikan|r
.target Ikan
.turnin 9399 >>Turn in Cruel Taskmasters
step << !Shaman
.goto 1944/530,4331.10010,220.70000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
.target Amaan the Wise
.turnin 9427 >>Turn in Cleansing the Waters
.turnin 9430 >>Turn in Sha'naar Relics
.accept 9545 >>Accept The Seer's Relic
step << !Shaman
.goto 1944/530,4341.30029,217.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsaana|r
.target Elsaana
.accept 9383 >>Accept An Ambitious Plan
step
#requires dpred2
#completewith next
.goto Hellfire Peninsula,25.19,37.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuma|r
.fly Honor Hold >> Fly to Honor Hold
.target Kuma
step
#requires dpred2
>>Return to Honor Hold. Go inside the Keep to the top floor
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
.goto 1944/530,2615.0,-810.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warp-Scryer Kryv|r
.target Warp-Scryer Kryv
.turnin 10047 >>Turn in The Path of Glory
.accept 10093 >>Accept The Temple of Telhamat
.turnin 10399 >>Turn in The Heart of Darkness
step
#sticky
#label overlord
.goto 1944/530,2615.30005,-812.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
.target Force Commander Danath Trollbane
.turnin 10400 >>Turn in Overlord
.isQuestComplete 10400
step
.goto 1944/530,2615.30005,-812.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
.target Force Commander Danath Trollbane
.isQuestComplete 10937
.turnin 10937 >>Turn in Drill the Drillmaster
step
#requires overlord
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumphry|r
.goto Hellfire Peninsula,51.30,60.35,20,0
.goto Hellfire Peninsula,51.19,59.99,20,0
.goto Hellfire Peninsula,50.99,60.51
.turnin 10078 >> Turn in Laying Waste to the Unwanted
.target Dumphry
step
#questguide << !tbc
#xprate <1.5 << TBC
>>Return to the Zeppelin Crash
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r and |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
.turnin 9356 >> Turn in Smooth as Butter
.target +Legassi
.goto Hellfire Peninsula,49.24,74.83
.turnin 10161 >> Turn in In Case of Emergency...
.accept 9351 >> Accept Voidwalkers Gone Wild
.goto Hellfire Peninsula,49.15,74.87
.target +"Screaming" Screed Luckheed
step
#xprate >1.499 << TBC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
.turnin 9356 >> Turn in Smooth as Butter
.goto Hellfire Peninsula,49.24,74.83
.target Legassi
step
#questguide << !tbc
#xprate <1.5 << tbc
#completewith next
#optional
>>Kill |cRXP_ENEMY_Rogue Voidwalkers|r and |cRXP_ENEMY_Uncontrolled Voidwalkers|r. Loot them for their |cRXP_LOOT_Essence|r
.complete 9351,1 
.mob Uncontrolled Voidwalker
.mob Rogue Voidwalker
step
.goto Hellfire Peninsula,50.07,83.29,50,0
.goto Hellfire Peninsula,46.25,83.22
.use 23417 >>|cRXP_WARN_Damage an|r |cRXP_ENEMY_Uncontrolled Voidwalker|r |cRXP_WARN_down to 20% or less health, then use the|r |T132878:0|t[Sanctified Crystal] |cRXP_WARN_on it|r
.complete 9383,1 
.mob Uncontrolled Voidwalker
step
#questguide << !tbc
#xprate <1.5 << tbc
#loop
.line Hellfire Peninsula,46.32,81.97,45.65,84.23,47.81,84.70,50.15,83.32,51.18,82.56,50.45,81.79,48.50,81.74,46.32,81.97
.goto Hellfire Peninsula,46.32,81.97,50,0
.goto Hellfire Peninsula,45.65,84.23,50,0
.goto Hellfire Peninsula,47.81,84.70,50,0
.goto Hellfire Peninsula,50.15,83.32,50,0
.goto Hellfire Peninsula,51.18,82.56,50,0
.goto Hellfire Peninsula,50.45,81.79,50,0
.goto Hellfire Peninsula,48.50,81.74,50,0
.goto Hellfire Peninsula,46.32,81.97,50,0
>>Kill |cRXP_ENEMY_Rogue Voidwalkers|r and |cRXP_ENEMY_Uncontrolled Voidwalkers|r. Loot them for their |cRXP_LOOT_Essence|r
.complete 9351,1 
.mob Uncontrolled Voidwalker
.mob Rogue Voidwalker
step
#questguide << !tbc
#xprate <1.5 << tbc
.goto Hellfire Peninsula,49.15,74.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
.turnin 9351 >> Turn in Voidwalkers Gone Wild
.target "Screaming" Screed Luckheed
step
#completewith Temple
.hs >> Hearth to Temple of Telhamat
.cooldown item,6948,>2
step
#completewith next
.goto Hellfire Peninsula,54.68,62.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flightmaster Krill Bitterhue|r
.fly Temple of Telhamat >> Fly to the Temple of Telhamat
.cooldown item,6948,<0
.target Flightmaster Krill Bitterhue
step
#label Temple
>>Return to the Temple of Telhamat
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r and |cRXP_FRIENDLY_Elsaana|r
.turnin 10093 >> Turn in The Temple of Telhamat
.goto Hellfire Peninsula,23.42,36.55
.target +Amaan the Wise
.turnin 9383 >> Turn in An Ambitious Plan
.goto Hellfire Peninsula,23.21,36.66
.target +Elsaana
step
.goto Hellfire Peninsula,26.89,37.44
.cast 30489 >>|cRXP_WARN_Use the|r |T134907:0|t[Seer's Relic] |cRXP_WARN_on |cRXP_FRIENDLY_Sedai's Corpse|r. Do NOT wait for the RP|r

.timer 21,The Seer's Relic RP
.use 23645
.isOnQuest 9545
.target Sedai's Corpse
step
.goto Hellfire Peninsula,23.42,36.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
.turnin 9545 >> Turn in The Seer's Relic
.target Amaan the Wise
step
.goto Hellfire Peninsula,24.99,51.58,60,0
.goto Hellfire Peninsula,23.73,57.53,60,0
.goto Hellfire Peninsula,17.33,53.85
>>Kill |cRXP_ENEMY_Hulking Helboars|r. Loot them for their |cRXP_LOOT_Blood Samples|r
.complete 9372,1 
.mob Hulking Helboar
step
#sticky
#label Thiah
>>Return to Cenarion Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
.turnin 9372 >> Turn in Demonic Contamination
.accept 10255 >> Accept Testing the Antidote
.goto Hellfire Peninsula,15.70,52.08
.target Thiah Redmane
step
#optional
#completewith next
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
.turnin 10132 >>Turn in Colossal Menace
.isQuestComplete 10132
.target Tola'thion
step
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
.turnin 10134 >>Turn in Crimson Crystal Clue
.isOnQuest 10134
.target Tola'thion
step
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
.accept 10349 >>Accept The Earthbinder
.isQuestTurnedIn 10134
.target Tola'thion
step
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
.turnin 10132 >>Turn in Colossal Menace
.isQuestComplete 10132
.target Tola'thion
step
#requires Thiah
.goto Hellfire Peninsula,15.97,51.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r
.turnin 10349 >>Turn in The Earthbinder
.accept 10351 >>Accept Natural Remedies
.isQuestTurnedIn 10134
.target Earthbinder Galandria Nightbreeze
step
.goto Hellfire Peninsula,18.40,52.73,60,0
.goto Hellfire Peninsula,22.17,56.14
.use 23337 >>|cRXP_WARN_Use the|r |T134801:0|t[Cenarion Antidote] |cRXP_WARN_on a|r |cRXP_ENEMY_Hulking Helboar|r to turn them into |cRXP_ENEMY_Dreadtusk|r
>>Kill the |cRXP_ENEMY_Dreadtusk|r
.complete 10255,1 
.mob Dreadtusk
.mob Hulking Helboar
step
#completewith next
.goto Hellfire Peninsula,13.63,39.10
.cast 35413 >>|cRXP_WARN_Channel the|r |T133944:0|t[Seed of Revitalization] |cRXP_WARN_while standing on the green circle to summon|r |cRXP_ENEMY_Goliathon|r
.timer 49,Goliathon Summon RP
step
.goto Hellfire Peninsula,13.52,39.70
>>Kill |cRXP_ENEMY_Goliathon|r
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << tbc/wotlk
.use 29478 >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Goliathon|r has a HUGE (60 yard) knockback|r
.complete 10351,1 
.isQuestTurnedIn 10134
.mob Goliathon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r and |cRXP_FRIENDLY_Thiah Redmane|r
.turnin 10351 >>Turn in Natural Remedies
.goto Hellfire Peninsula,15.97,51.57
.turnin 10255 >> Turn in Testing the Antidote
.goto Hellfire Peninsula,15.70,52.08
.isQuestComplete 10351
.target Earthbinder Galandria Nightbreeze
.target Thiah Redmane
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
.turnin 10255 >> Turn in Testing the Antidote
.goto Hellfire Peninsula,15.70,52.08
.target Thiah Redmane
step
#optional
#sticky
>>Abandon the elite quests if you were unable to complete them
.abandon 10132 >>Abandon Colossal Menace
step
#optional
#sticky
>>Abandon the elite quests if you were unable to complete them
.abandon 10351 >> Abandon Natural Remedies
step
.goto Hellfire Peninsula,12.15,46.50,50,0
.goto Hellfire Peninsula,9.13,49.47,50,0
.goto Hellfire Peninsula,11.60,55.18,50,0
.goto Hellfire Peninsula,7.41,49.74,50,0
.goto Hellfire Peninsula,5.37,51.43,50,0
.goto Hellfire Peninsula,9.13,49.47
>>Kill |cRXP_ENEMY_Thornfang Venomspitters|r and |cRXP_ENEMY_Thornfang Ravagers|r
.complete 10159,2 
.mob +Thornfang Venomspitter
.complete 10159,1 
.mob +Thornfang Ravager
]]);

RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 67-68 Netherstorm
#version 9
#displayname 67-69 Netherstorm << !tbc !wotlk
#next 69-70 Shadowmoon Valley (Aldor) << TBC
#next RXP MoP 60-80 (A)\68-71 Howling Fjord;RXP MoP 60-80 (A)\71-73 Borean Tundra << !TBC
#xprate <1.6 << !tbc !wotlk
step
#include RXPGuides\67-68 Netherstorm
]]);

RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 61-63 Zangarmarsh
#displayname 61-64 Zangarmarsh << !tbc !wotlk
#version 9
#next 63-65 Terokkar Forest;65-67 Blade's Edge << tbc/wotlk
#next 64-66 Nagrand;65-67 Blade's Edge << !tbc !wotlk

step
.goto Zangarmarsh,82.81,64.85
.zone Zangarmarsh >> Travel to Zangarmarsh
step
#completewith next
>>|cRXP_WARN_Below is a list of items that drop in Zangarmarsh that are required for quests. Make a mental note of these items. Save them as they drop. You need a total of:|r
.collect 24291,6,9743,1 
.collect 24245,10,9808,1 
.collect 24401,10,9802,1 
.collect 24449,6,9806,1 
step
.goto 1946/530,5434.70020,-216.70000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
.target Ikeyen
.accept 9747 >>Accept The Umbrafen Tribe
step
.goto 1946/530,5440.10010,-219.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
.target Lauranna Thar'well
.accept 9802 >>Accept Plants of Zangarmarsh
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Wanted Poster|r and |cRXP_FRIENDLY_Warden Hamoot|r upstairs
.accept 9817 >> Accept Leader of the Bloodscale
.accept 9730 >> Accept Leader of the Darkcrest
.goto Zangarmarsh,79.08,64.88
.accept 9728 >> Accept A Warm Welcome
.goto Zangarmarsh,79.09,65.27
.target Warden Hamoot
step
#label RefugeHS
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethyn Moonfire|r and |cRXP_FRIENDLY_Ysiel Windsinger|r
.accept 9895 >> Accept The Dying Balance
.goto Zangarmarsh,78.53,63.15,-1
.target +Lethyn Moonfire
.turnin 9912 >> Turn in The Cenarion Expedition
.accept 9716 >> Accept Disturbance at Umbrafen Lake
.goto Zangarmarsh,78.40,62.02,-1
.target +Ysiel Windsinger
step
#optional << tbc
.goto Zangarmarsh,67.83,51.46
>>Travel to Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munci|r
.fp Telredor >> Get the Telredor flight path
.skill riding,<225,1
.target Munci
step
#completewith Telredor
.goto Zangarmarsh,70.24,49.27,20 >> Use the elevator to get up to Telredor
.skill riding,225,1
step
#sticky
#label deadmire1
.groundgoto 1946/530,6039.70020,258.50000,0,0
.flygoto 1946/530,6039.70020,258.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
.target Vindicator Idaar
.accept 9782 >>Accept The Dead Mire
step
.goto 1946/530,6034.80029,283.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Conall|r
.target Prospector Conall
.accept 9901 >>Accept Unfinished Business
step
.goto 1946/530,6044.70020,283.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
.target Anchorite Ahuurn
.accept 9786 >>Accept The Boha'mu Ruins
step
.goto 1946/530,6033.30029,298.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
.target Ruam
.accept 9777 >>Accept Fulgor Spores
step
#label Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haalrun|r
.accept 9781 >>Accept Too Many Mouths to Feed
.goto 1946/530,6065.60010,328.70001
.target +Haalrun
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noraani|r
.accept 9791 >>Accept Menacing Marshfangs
.goto 1946/530,6074.80029,331.30002
.target +Noraani
step
#completewith Sporewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Abidaar|r
.goto Zangarmarsh,67.14,49.03
.home 3644>> Set your Hearthstone to Telredor
.target Caregiver Abidaar
step
#optional << !tbc
.goto Zangarmarsh,67.83,51.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munci|r
.fp Telredor >> Get the Telredor flight path
.skill riding,225,1
.target Munci
step
#requires deadmire1
step
#optional
#completewith Rippers
>>Kill |cRXP_ENEMY_Fen Striders|r and |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
step
#optional
#completewith Sporewing
>>Kill |cRXP_ENEMY_Marshfang Rippers|r
.complete 9791,1 
.mob Marshfang Ripper
step
#loop
.line Zangarmarsh,68.81,47.75,68.03,48.34,66.01,46.49,65.86,47.37,64.74,49.34,66.46,52.07,70.99,53.95,70.74,50.20,71.57,45.46,68.81,47.75
.goto Zangarmarsh,68.81,47.75,45,0
.goto Zangarmarsh,68.03,48.34,45,0
.goto Zangarmarsh,66.01,46.49,45,0
.goto Zangarmarsh,65.86,47.37,45,0
.goto Zangarmarsh,64.74,49.34,45,0
.goto Zangarmarsh,66.46,52.07,45,0
.goto Zangarmarsh,70.99,53.95,45,0
.goto Zangarmarsh,70.74,50.20,45,0
.goto Zangarmarsh,71.57,45.46,45,0
.goto Zangarmarsh,68.81,47.75,45,0
>>Loot the |cRXP_PICK_Fulgor Spores|r on the ground
.complete 9777,1 
step
#label Sporewing
.goto Zangarmarsh,76.80,45.97,60,0
.goto Zangarmarsh,77.29,45.84,60,0
.goto Zangarmarsh,77.76,45.39,60,0
.goto Zangarmarsh,78.64,45.49,60,0
.goto Zangarmarsh,78.83,46.82,60,0
.goto Zangarmarsh,79.79,47.25,60,0
.goto Zangarmarsh,79.79,47.25,0
.line Zangarmarsh,76.80,45.97,77.29,45.84,77.76,45.39,78.64,45.49,78.83,46.82,79.79,47.25
>>Kill |cRXP_ENEMY_Sporewing|r
>>|cRXP_ENEMY_Sporewing|r |cRXP_WARN_patrol path is marked on your map|r
.complete 9901,1 
.unitscan Sporewing
step
.goto Zangarmarsh,83.82,43.29,-1
.goto Zangarmarsh,80.67,43.45,-1
.goto Zangarmarsh,79.95,42.06,-1
>>Loot the |cRXP_PICK_Dead Mire Soil|r on the ground
.complete 9782,1 
step
#label Rippers
#loop
.line Zangarmarsh,71.61,44.61,76.33,45.27,77.92,46.48,79.79,49.98,84.36,47.15,85.19,47.91,85.42,49.75,84.98,51.50,83.16,52.43,77.63,54.34,76.78,56.41,74.54,54.83,72.82,51.77,71.61,44.61
.goto Zangarmarsh,71.61,44.61,50,0
.goto Zangarmarsh,76.33,45.27,50,0
.goto Zangarmarsh,77.92,46.48,50,0
.goto Zangarmarsh,79.79,49.98,50,0
.goto Zangarmarsh,84.36,47.15,50,0
.goto Zangarmarsh,85.19,47.91,50,0
.goto Zangarmarsh,85.42,49.75,50,0
.goto Zangarmarsh,84.98,51.50,50,0
.goto Zangarmarsh,83.16,52.43,50,0
.goto Zangarmarsh,77.63,54.34,50,0
.goto Zangarmarsh,76.78,56.41,50,0
.goto Zangarmarsh,74.54,54.83,50,0
.goto Zangarmarsh,72.82,51.77,50,0
.goto Zangarmarsh,71.61,44.61,50,0
>>Kill |cRXP_ENEMY_Marshfang Rippers|r
.complete 9791,1 
.mob Marshfang Ripper
step
#completewith next
.hs >> Hearth to Telredor
.cooldown item,6948,>2

step
.goto 1946/530,6074.10010,329.80002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noraani|r
.target Noraani
.turnin 9791 >>Turn in Menacing Marshfangs
.accept 9780 >>Accept Umbrafen Eel Filets
step
.goto 1946/530,6027.70020,302.20001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
.target Ruam
.turnin 9777 >>Turn in Fulgor Spores
step
.goto 1946/530,6030.89990,280.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Conall|r
.target Prospector Conall
.turnin 9901 >>Turn in Unfinished Business
.accept 9896 >>Accept Blacksting's Bane
step
.goto 1946/530,6038.20020,257.20001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
.target Vindicator Idaar
.turnin 9782 >>Turn in The Dead Mire
.accept 9783 >>Accept An Unnatural Drought
step
#optional
#completewith boglash
>>Kill |cRXP_ENEMY_Fen Striders|r and |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
step
#optional
#label Basidium
#completewith next
>>Kill |cRXP_ENEMY_Withered Giants|r. Loot them for their |T134001:0|t[|cRXP_LOOT_Withered Basidium|r]
>>|cRXP_WARN_This is a rare drop, don't go out of your way to loot this|r << !tbc
.collect 24483,1,9827 
.mob Withered Giant
step
#label Giants
#loop
.line Zangarmarsh,82.12,44.97,79.44,42.62,77.86,35.41,80.99,31.26,84.94,36.18,85.96,42.24,82.12,44.97
.goto Zangarmarsh,82.12,44.97,60,0
.goto Zangarmarsh,79.44,42.62,60,0
.goto Zangarmarsh,77.86,35.41,60,0
.goto Zangarmarsh,80.99,31.26,60,0
.goto Zangarmarsh,84.94,36.18,60,0
.goto Zangarmarsh,85.96,42.24,60,0
.goto Zangarmarsh,82.12,44.97,60,0
>>Kill |cRXP_ENEMY_Withered Giants|r, loot the |cRXP_LOOT_Bog Lord Tendrils|r for a quest later
.collect 24291,6,9743,1,1 
.complete 9783,1 
.mob Withered Giant
step
#questguide << !tbc
#label BasidiumX
#loop
.line Zangarmarsh,82.12,44.97,79.44,42.62,77.86,35.41,80.99,31.26,84.94,36.18,85.96,42.24,82.12,44.97
.goto Zangarmarsh,82.12,44.97,60,0
.goto Zangarmarsh,79.44,42.62,60,0
.goto Zangarmarsh,77.86,35.41,60,0
.goto Zangarmarsh,80.99,31.26,60,0
.goto Zangarmarsh,84.94,36.18,60,0
.goto Zangarmarsh,85.96,42.24,60,0
.goto Zangarmarsh,82.12,44.97,60,0
.use 24483 >>Kill |cRXP_ENEMY_Withered Giants|r. Loot them for their |T134001:0|t[|cRXP_LOOT_Withered Basidium|r]
.collect 24291,6,9743,1,1 
.collect 24483,1,9827 
.mob Withered Giant
step
#sticky
#optional
.use 24483>>|cRXP_WARN_Use the|r |T134001:0|t[|cRXP_LOOT_Withered Basidium|r] |cRXP_WARN_to start the quest|r
.itemcount 24483,1
.accept 9827 >> Accept Withered Basidium
step << !Warlock
#completewith eels
#optional
.cast 22807 >> |cRXP_WARN_Use the|r |T134716:0|t[Potion of Water Breathing]
.use 25539
.itemcount 25539,1
step
#label Scales
#completewith lakeEnd
>>Kill |cRXP_ENEMY_Mire Hydras|r
.complete 9781,1 
.mob Mire Hydra
step
#label eels
#loop
.line Zangarmarsh,73.89,61.37,75.28,63.48,76.32,66.48,76.78,71.37,76.74,75.66,76.76,79.11,74.88,81.27,73.91,79.38,71.94,81.30,73.44,76.43,73.94,72.76,72.92,69.75,73.98,67.64,72.26,66.54,71.63,62.34,73.89,61.37
.goto Zangarmarsh,73.89,61.37,50,0
.goto Zangarmarsh,75.28,63.48,50,0
.goto Zangarmarsh,76.32,66.48,50,0
.goto Zangarmarsh,76.78,71.37,50,0
.goto Zangarmarsh,76.74,75.66,50,0
.goto Zangarmarsh,76.76,79.11,50,0
.goto Zangarmarsh,74.88,81.27,50,0
.goto Zangarmarsh,73.91,79.38,50,0
.goto Zangarmarsh,71.94,81.30,50,0
.goto Zangarmarsh,73.44,76.43,50,0
.goto Zangarmarsh,73.94,72.76,50,0
.goto Zangarmarsh,72.92,69.75,50,0
.goto Zangarmarsh,73.98,67.64,50,0
.goto Zangarmarsh,72.26,66.54,50,0
.goto Zangarmarsh,71.63,62.34,50,0
.goto Zangarmarsh,73.89,61.37,50,0
.use 25539 >>Kill |cRXP_ENEMY_Umbrafen Eels|r. Loot them for their |cRXP_LOOT_Filets|r
.complete 9780,1 
.mob Umbrafen Eel
step
.goto Zangarmarsh,70.57,80.28
>>Travel near to the Water Pump
.complete 9716,1 
step
#label lakeEnd
.goto Zangarmarsh,85.29,90.93,160 >> Head to Umbrafen Village
.isOnQuest 9747
.subzoneskip 3641
step
#completewith Kataru2
>>Kill |cRXP_ENEMY_Umbrafen Oracles|r, |cRXP_ENEMY_Umbrafen Seers|r and |cRXP_ENEMY_Umbrafen Witchdoctors|r
.complete 9747,2 
.mob +Umbrafen Oracle
.complete 9747,3 
.mob +Umbrafen Seer
.complete 9747,4 
.mob +Umbrafen Witchdoctor
step
#label Kataru2
.groundgoto Zangarmarsh,84.99,90.27,20,0
.goto Zangarmarsh,85.29,90.93
>>Kill |cRXP_ENEMY_Kataru|r atop the tower
.complete 9747,1 
.unitscan Kataru
step
#loop
.line Zangarmarsh,83.52,89.16,83.76,88.09,85.50,88.89,84.45,86.16,85.14,82.69,85.71,81.14,85.10,81.08,83.64,81.11,83.60,79.54,83.07,81.06,83.72,82.93,83.38,84.68,82.37,84.73,83.52,89.16
.goto Zangarmarsh,83.52,89.16,50,0
.goto Zangarmarsh,83.76,88.09,50,0
.goto Zangarmarsh,85.50,88.89,50,0
.goto Zangarmarsh,84.45,86.16,50,0
.goto Zangarmarsh,85.14,82.69,50,0
.goto Zangarmarsh,85.71,81.14,50,0
.goto Zangarmarsh,85.10,81.08,50,0
.goto Zangarmarsh,83.64,81.11,50,0
.goto Zangarmarsh,83.60,79.54,50,0
.goto Zangarmarsh,83.07,81.06,50,0
.goto Zangarmarsh,83.72,82.93,50,0
.goto Zangarmarsh,83.38,84.68,50,0
.goto Zangarmarsh,82.37,84.73,50,0
.goto Zangarmarsh,83.52,89.16,50,0
>>Kill |cRXP_ENEMY_Umbrafen Oracles|r, |cRXP_ENEMY_Umbrafen Seers|r and |cRXP_ENEMY_Umbrafen Witchdoctors|r
.complete 9747,2 
.mob +Umbrafen Oracle
.complete 9747,3 
.mob +Umbrafen Seer
.complete 9747,4 
.mob +Umbrafen Witchdoctor
step
.goto Zangarmarsh,83.38,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayra Longmane|r
*|cRXP_WARN_You may need to wait for |cRXP_FRIENDLY_Kayra Longmane|r to respawn|r
.accept 9752 >> Accept Escape from Umbrafen
.target Kayra Longmane
step
#optional
#completewith next
.goto Zangarmarsh,83.89,78.58,100,0
.goto Zangarmarsh,82.63,77.98,80,0
.goto Zangarmarsh,81.72,75.58,60,0
.goto Zangarmarsh,82.11,73.88,60,0
.goto Zangarmarsh,81.73,72.94,60,0
.goto Zangarmarsh,81.75,72.20
.line Zangarmarsh,83.89,78.58,82.63,77.98,81.72,75.58,82.11,73.88,81.73,72.94,81.75,72.20
>>Kill |cRXP_ENEMY_Boglash|r using |cRXP_FRIENDLY_Kayra Longmane|r to assist you
>>|cRXP_WARN_Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << tbc
.complete 9895,1 
.unitscan Boglash
.target Kayra Longmane
step
.goto Zangarmarsh,79.83,71.17
>>Escort |cRXP_FRIENDLY_Kayra Longmane|r. She can heal and assist you in combat
.complete 9752,1 
.target Kayra Longmane
step
.goto Zangarmarsh,83.89,78.58,60,0
.goto Zangarmarsh,82.63,77.98,60,0
.goto Zangarmarsh,81.72,75.58,60,0
.goto Zangarmarsh,82.11,73.88,60,0
.goto Zangarmarsh,81.73,72.94,60,0
.goto Zangarmarsh,81.75,72.20
.line Zangarmarsh,83.89,78.58,82.63,77.98,81.72,75.58,82.11,73.88,81.73,72.94,81.75,72.20
>>Kill |cRXP_ENEMY_Boglash|r
>>|cRXP_WARN_Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << tbc
.complete 9895,1 
.unitscan Boglash
step
#label boglash
>>Kill any mob in Zangarmarsh
.collect 24401,10,9802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
.target Ikeyen
.goto Zangarmarsh,80.39,64.15
.turnin 9747 >>Turn in The Umbrafen Tribe
.accept 9788 >>Accept A Damp, Dark Place
step
.goto Zangarmarsh,80.32,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
.target Lauranna Thar'well
.turnin 9802 >>Turn in Plants of Zangarmarsh
.accept 10096 >>Accept Saving the Sporeloks
step
#sticky
#label blessing1a
.goto 1946/530,5434.60010,-233.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
.target Windcaller Blackhoof
.accept 9785 >>Accept Blessings of the Ancients
.reputation 942,friendly,<0,1
step
.goto 1946/530,5434.60010,-233.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
.target Windcaller Blackhoof
.accept 9894 >>Accept Safeguarding the Watchers
step
#requires blessing1a
.goto 1946/530,5525.50000,-182.30000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethyn Moonfire|r
.target Lethyn Moonfire
.turnin 9895 >>Turn in The Dying Balance
step
.goto 1946/530,5533.39990,-145.20000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
.target Ysiel Windsinger
.turnin 9752 >> Turn in Escape from Umbrafen
.isQuestComplete 9752
step
#label CenarionPost2
.goto 1946/530,5533.39990,-145.20000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
.target Ysiel Windsinger
.turnin 9716 >>Turn in Disturbance at Umbrafen Lake
.accept 9718 >>Accept As the Crow Flies
step
.goto Zangarmarsh,78.40,62.02
>>|cRXP_WARN_Use the|r |T134911:0|t[Stormcrow Amulet]
.complete 9718,1 
.cast 31606
.timer 155,As the Crow Flies RP
.use 25465
step
.goto Zangarmarsh,78.40,62.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
.turnin 9718 >> Turn in As the Crow Flies
.accept 9720 >> Accept Balance Must Be Preserved
.target Ysiel Windsinger
step
#optional
#completewith Klaq
>>Kill |cRXP_ENEMY_Fen Striders|r and |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
.subzoneskip 3652
step
#sticky
#label q10096
#loop
.goto Zangarmarsh,74.44,92.06,0
.goto Zangarmarsh,72.39,93.82,0
.waypoint Zangarmarsh,74.44,92.06,50,0
.waypoint Zangarmarsh,72.39,93.82,50,0
>>Kill |cRXP_ENEMY_Marsh Dredgers|r and |cRXP_ENEMY_Marsh Lurkers|r inside the Cavern. Loot them for their |cRXP_LOOT_Plant Parts|r
.complete 10096,1 
.mob +Marsh Dredger
.complete 10096,2 
.mob +Marsh Lurker
step
#label Klaq
.goto Zangarmarsh,74.44,92.06,60,0
.goto Zangarmarsh,72.39,93.82
>>Enter the Funggor Cavern. Drop down into the middle of the Cavern
>>Kill |cRXP_ENEMY_Lord Klaq|r
.complete 9894,1 
.unitscan Lord Klaq
step
#label Ikeyen
.goto Zangarmarsh,72.94,96.60,20,0
.goto Zangarmarsh,70.53,97.91
>>Loot |cRXP_PICK_Ikeyen's Belongings|r in the back of the Cavern
.complete 9788,1 
step
#requires q10096
step
#optional
#completewith Blacksting
>>Kill |cRXP_ENEMY_Fen Striders|r and |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
step
#completewith hydra1end
>>Kill |cRXP_ENEMY_Darkcrest Nagas|r. Loot them for their |cRXP_LOOT_Claws|r
.complete 9728,1 
.mob *Darkcrest Siren
.mob *Darkcrest Slaver
.mob *Darkcrest Sorceress
.mob *Darkcrest Taskmaster
.subzoneskip 3642
step
#completewith Lagoon
.use 24330 >>Kill |cRXP_ENEMY_Steam Pump Overseers|r that spawn after using the |T136074:0|t[Ironvine Seeds] on the Lake Controls. Loot them for their |T134944:0|t[|cRXP_LOOT_Drain Schematics|r]
.collect 24330,1,9731 
.mob Steam Pump Overseer
step
.goto Zangarmarsh,70.60,80.29
.use 24355 >>|cRXP_WARN_Use the|r |T136074:0|t[Ironvine Seeds] |cRXP_WARN_Lake Controls|r
.complete 9720,1 
step
#label Rajah
.goto Zangarmarsh,65.10,68.67
>>Kill |cRXP_ENEMY_Rajah Haghazed|r
>>|cRXP_WARN_Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r << tbc/wotlk
.complete 9730,1 
.unitscan Rajah Haghazed
step
#label Lagoon
.goto Zangarmarsh,63.11,64.09
>>|cRXP_WARN_Use the|r |T136074:0|t[Ironvine Seeds] |cRXP_WARN_Lake Controls|r
.complete 9720,4 
.use 24355
step
.goto Zangarmarsh,63.11,64.09
.use 24355 >>|cRXP_WARN_Keep using the|r |T136074:0|t[Ironvine Seeds] |cRXP_WARN_on the Lake Controls to spawn and kill|r |cRXP_ENEMY_Steam Pump Overseers|r. Loot them for their |T134944:0|t[|cRXP_LOOT_Drain Schematics|r]
>>Farm |cRXP_LOOT_Naga Claws|r while you wait for the Seeds to come off cooldown
.collect 24330,1,9731 
step
#sticky
.use 24330 >>|cRXP_WARN_Click the|r |T134944:0|t[|cRXP_LOOT_Drain Schematics|r] |cRXP_WARN_to start the quest|r
.accept 9731 >> Accept Drain Schematics
.mob Steam Pump Overseer
.itemcount 24330,1
step
#label hydra1end
.goto Zangarmarsh,53.79,66.14
>>Kill |cRXP_ENEMY_Mire Hydras|r
.complete 9781,1 
.mob Mire Hydra
step
#label Blacksting
.goto Zangarmarsh,49.80,59.44
>>Kill |cRXP_ENEMY_Blacksting|r. Loot him for his |cRXP_LOOT_Stinger|r
.complete 9896,1 
.mob Blacksting
step
.goto Zangarmarsh,44.13,68.91
>>Enter the Boha'mu Ruins
>>|cRXP_WARN_You don't need to pull the elite!|r
.complete 9786,1 
step
.goto Zangarmarsh,50.39,40.92
>>Head to the middle of the lake, then dive underwater toward the drain
.complete 9731,1 
step
#optional
#completewith next
>>Loot the |cRXP_PICK_Orange Mushrooms|r on the ground throughout Zangarmarsh
.collect 24245,10,9808,1 
step
#completewith next
.goto Zangarmarsh,41.28,29.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halu|r
.fp Orebor Harborage >> Get the Orebor Harborage flight path
.target Halu
step << !Shaman
#completewith next
.goto Zangarmarsh,41.28,29.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halu|r
.fly Telredor >> Fly to Telredor
.target Halu
step << Shaman
#completewith next
.hs >>Hearth to Telredor
step << !Shaman
.goto 1946/530,6040.00000,257.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
.target Vindicator Idaar
.turnin 9783 >>Turn in An Unnatural Drought
.accept 9793 >>Accept The Fate of Tuurem << tbc/wotlk
step << !Shaman
.goto 1946/530,6044.89990,278.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
.target Anchorite Ahuurn
.turnin 9786 >>Turn in The Boha'mu Ruins
.accept 9787 >>Accept Idols of the Feralfen
.accept 9776 >>Accept The Orebor Harborage
step << !Shaman
.goto 1946/530,6030.89990,283.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Conall|r
.target Prospector Conall
.turnin 9896 >>Turn in Blacksting's Bane
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noraani|r
.turnin 9780 >>Turn in Umbrafen Eel Filets
.target +Noraani
.goto 1946/530,6075.50000,329.39999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haalrun|r
.turnin 9781 >>Turn in Too Many Mouths to Feed
.accept 9790 >>Accept Diaphanous Wings
.goto 1946/530,6065.70020,327.50000
.target +Haalrun
step
.goto Zangarmarsh,68.62,48.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
.target Ruam
.turnin 9827 >> Turn in Withered Basidium
.isOnQuest 9827
step << Shaman
.goto 1946/530,6030.89990,283.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Conall|r
.target Prospector Conall
.turnin 9896 >>Turn in Blacksting's Bane
step << Shaman
.goto 1946/530,6044.89990,278.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
.target Anchorite Ahuurn
.turnin 9786 >>Turn in The Boha'mu Ruins
.accept 9787 >>Accept Idols of the Feralfen
.accept 9776 >>Accept The Orebor Harborage
step << Shaman
.goto 1946/530,6040.00000,257.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
.target Vindicator Idaar
.turnin 9783 >>Turn in An Unnatural Drought
.accept 9793 >>Accept The Fate of Tuurem << tbc/wotlk
step << !tbc
.goto 1946/530,5534.89990,-142.30000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
.target Ysiel Windsinger
.turnin 9731 >>Turn in Drain Schematics
.accept 9724 >>Accept Warning the Cenarion Circle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
.turnin 9802 >>Turn in Plants of Zangarmarsh
.turnin 10096 >>Turn in Saving the Sporeloks
.goto 1946/530,5438.20020,-215.70000
.target +Lauranna Thar'well
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
.turnin 9788 >>Turn in A Damp, Dark Place
.goto 1946/530,5434.70020,-215.40001
.target +Ikeyen
step
.goto 1946/530,5438.20020,-215.70000
.dailyturnin 9784>>Talk to |cRXP_FRIENDLY_Lauranna Thar'well|r
.disablecheckbox
+Turn in all your |T133940:0|t[Unidentified Plant Parts]
.itemcount 24401,10
.reputation 942,honored,0,1
.target Lauranna Thar'well
step
.goto 1946/530,5434.10010,-234.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
.target Windcaller Blackhoof
.turnin 9894 >>Turn in Safeguarding the Watchers
.accept 9785 >> Accept Blessings of the Ancients
step
#sticky
#label ashyen
.goto Zangarmarsh,81.11,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashyen|r
.complete 9785,1 
.skipgossip
.target Ashyen
step
#loop
.goto Zangarmarsh,81.11,64.37,40,0
.goto Zangarmarsh,79.57,64.48,40,0
.goto Zangarmarsh,78.25,63.88,40,0
.goto Zangarmarsh,78.24,65.82,40,0
.goto Zangarmarsh,78.71,66.49,40,0
.goto Zangarmarsh,78.96,67.44,40,0
.line Zangarmarsh,78.96,67.44,78.71,66.49,78.24,65.82,78.25,63.88,79.57,64.48,81.11,64.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keleth|r
>>|cRXP_FRIENDLY_Keleth|r |cRXP_WARN_patrols slighty|r
.complete 9785,2 
.skipgossip
.unitscan Keleth
step
#requires ashyen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
.turnin 9785 >> Turn in Blessings of the Ancients
.goto Zangarmarsh,80.37,64.73
.target Windcaller Blackhoof
step
#sticky
#label hamoot1a
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r in the Tower
.turnin 9728 >> Turn in A Warm Welcome
.isQuestComplete 9728
.target Warden Hamoot
step
#sticky
#label hamoot2a
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r in the Tower
.turnin 9817 >> Turn in Leader of the Bloodscale
.isQuestComplete 9817
.target Warden Hamoot
step
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r in the Tower
.turnin 9730 >> Turn in Leader of the Darkcrest
.isQuestComplete 9730
.target Warden Hamoot
step
#requires hamoot1a
step
#requires hamoot2a
.goto Zangarmarsh,78.53,63.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethyn Moonfire|r
.accept 9697 >> Accept Watcher Leesa'oh
.accept 9957 >> Accept What's Wrong at Cenarion Thicket? << tbc/wotlk
.target Lethyn Moonfire
step << tbc
.goto 1946/530,5534.89990,-142.30000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
.target Ysiel Windsinger
.turnin 9731 >>Turn in Drain Schematics
.accept 9724 >>Accept Warning the Cenarion Circle
step
>>Travel to Cenarion Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahuram Stouthoof|r and |cRXP_FRIENDLY_Amythiel Mistwalker|r
.turnin -10159 >> Turn in Keep Thornfang Hill Clear!
.goto Hellfire Peninsula,15.65,52.15
.turnin 9724 >> Turn in Warning the Cenarion Circle
.accept 9732 >> Accept Return to the Marsh
.goto Hellfire Peninsula,16.04,52.15
.target Mahuram Stouthoof
.target Amythiel Mistwalker
step << Shaman (tbc/wotlk)
#completewith next
.hs >> Hearth to Telredor
.skill riding,225,1
step << tbc/wotlk
#completewith Adal
.goto Hellfire Peninsula,25.19,37.23 << !Shaman
.goto Zangarmarsh,67.83,51.46 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuma|r << !Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munci|r << Shaman
.fly Shattrath >> Fly to Shattrath City
.skill riding,225,1
.target Kuma << !Shaman
.target Munci << Shaman
step << tbc/wotlk
#completewith Adal
.goto Shattrath City,59.66,41.45
.zone Shattrath City >> Travel to Shattrath City
.skill riding,<225,1
step << tbc/wotlk
#label Adal
.goto 1955/530,5362.10010,-1832.90002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggard War Veteran|r
.target Haggard War Veteran
.accept 10210 >>Accept A'dal
step << tbc/wotlk
.goto 1955/530,5426.70020,-1862.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
.target A'dal
.turnin 10210 >>Turn in A'dal
step << tbc/wotlk
.goto 1955/530,5421.80029,-1859.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.target Khadgar
.accept 10211 >>Accept City of Light
.timer 462,City of Light RP
step << tbc/wotlk
#completewith next
#xprate <1.5
>>Whilst following |cRXP_FRIENDLY_Khadgar's Servant|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seth|r
.accept 10037 >> Accept Rather Be Fishin'
.target +Seth
.goto Shattrath City,63.94,15.52
.goto Shattrath City,52.54,21.03
.target Khadgar's Servant
step << tbc/wotlk
.goto Shattrath City,50.36,42.87
>>Follow |cRXP_FRIENDLY_Khadgar's Servant|r << wotlk
>>Head up to the second floor with |cRXP_FRIENDLY_G'eras|r and wait out the RP. If someone elses |cRXP_FRIENDLY_Khadgar's Servant|r arrives in the meantime, you can target it and it will complete the quest for you. If the quest fails, abandon it, accept the quest from |cRXP_FRIENDLY_Khadgar's Servant|r again, then follow the |cRXP_FRIENDLY_Khadgar's Servant|r around << tbc
.complete 10211,1 
.target Khadgar's Servant
step << Mage (tbc/wotlk)
.goto Shattrath City,58.77,47.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iorioa|r
.train 35715 >> Train Teleport: Shattrath and Portal: Shattrath
.target Iorioa
step << tbc/wotlk
.goto Shattrath City,54.74,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.turnin 10211 >> Turn in City of Light
.target Khadgar
step << tbc/wotlk
.goto Shattrath City,54.74,44.32
.turninmultiple 10551,10552>>Talk to |cRXP_FRIENDLY_Khadgar's Servant|r. Pledge your Allegiance to either the Aldor or Scryers
*If you do not see Aldor or Scryer specific quest steps after this, type "/reload" into your ingame chat box
.target Khadgar
.isQuestAvailable 10551
.isQuestAvailable 10552
step << tbc/wotlk
#scryer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.goto Shattrath City,54.74,44.32
.accept 10553 >>Accept Voren'thal the Seer
.target Khadgar
step << tbc/wotlk
#aldor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.goto Shattrath City,54.74,44.32
.accept 10554 >> Accept Ishanah
.target Khadgar
step << (Warlock/Shaman/Paladin/Mage) (tbc/wotlk)
#completewith next
.goto Shattrath City,55.7,36.9 << !Mage
.zone Stormwind City >> Take the portal to Stormwind << !Mage
.zone Stormwind City >> Teleport to Stormwind << Mage
step << (Warlock/Shaman/Paladin/Mage) (tbc/wotlk)
.goto StormwindClassic,25.3,78.7 << Warlock
.goto StormwindClassic,38.6,32.8 << Paladin
.goto StormwindClassic,61.9,84.0 << Shaman
.goto StormwindClassic,39.6,79.6 << Mage
.trainer >> Train your class spells
.target Ursula Deline << Warlock
.target Demisette Cloyce << Warlock
.target Sandahl << Warlock
.target Arthur the Faithful << Paladin
.target Katherine the Pure << Paladin
.target Lord Grayson Shadowbreaker << Paladin
.target Farseer Umbrua << Shaman
.target Elsharin << Mage
.target Jennea Cannon << Mage
step << (Warrior/Hunter/Rogue/Priest) (tbc/wotlk)
#completewith next
.goto Shattrath City,55.2,36.5
.zone Darnassus >> Take the portal to Darnassus
step << (Warrior/Hunter/Rogue/Priest) (tbc/wotlk)
.goto Darnassus,39.0,83.2 << Priest
.goto Darnassus,40.6,9.2 << Hunter
.goto Darnassus,31.5,17.4 << Rogue
.goto Darnassus,58.75,35.16 << Warrior
.trainer >> Train your class spells
.target Jandria << Priest
.target Jocaste << Hunter
.target Anishar << Rogue
.target Erion Shadewhisper << Rogue
.target Syurna << Rogue
.target Arias'ta Bladesinger << Warrior

step << Druid (tbc/wotlk)
>>Teleport to Moonglade
.goto Moonglade,52.4,40.6
.trainer 12042 >> Train your class spells
.target Loganaar << Druid
step << DK (tbc/wotlk)
#completewith next
.cast 50977 >> Cast Death Gate
.zoneskip Eastern Plaguelands
step << DK (tbc/wotlk)
.goto Eastern Plaguelands,80.3,48.0
>>Go through the Death Gate
.trainer >> Train your class spells from |cRXP_FRIENDLY_Amal'thazad|r in Acherus
.target Amal'thazad
step
#completewith Vial
.hs >> Hearth to Telredor

step
#completewith next
.goto Zangarmarsh,67.83,51.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munci|r
.fly Orebor Harborage >> Fly to Orebor Harborage
.skill riding,300,1
.target Munci
step
.goto 1946/530,7400.70020,973.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timothy Daniels|r
.target Timothy Daniels
.accept 9848 >>Accept Secrets of the Daggerfen
step
.goto 1946/530,7376.20020,1019.90002
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Wanted Poster|r
.accept 10116 >>Accept Wanted: Chieftain Mummaki
step
.goto 1946/530,7367.70020,1022.60004
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikuti|r
.target Ikuti
.accept 9835 >>Accept Ango'rosh Encroachment
.accept 10115 >>Accept Daggerfen Deviance
.turnin 9776 >>Turn in The Orebor Harborage
step
#optional
#completewith Vial
>>Kill |cRXP_ENEMY_Greater Sporebats|r and |cRXP_ENEMY_Marsh Walkers|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
.subzoneskip 3640
step
#optional
#completewith Vial
>>Loot the |cRXP_PICK_Orange Mushrooms|r on the ground throughout Zangarmarsh
.collect 24245,10,9808,1 
step
#optional
#completewith Mummaki
>>Kill |cRXP_ENEMY_Daggerfen Assassins|r and |cRXP_ENEMY_Daggerfen Muckdwellers|r
.complete 10115,1 
.mob +Daggerfen Assassin
.complete 10115,2 
.mob +Daggerfen Muckdweller
step
#label Vial
.goto Zangarmarsh,26.40,22.85
>>Loot the small |cRXP_PICK_Daggerfen Poison Vial|r on the ground
.complete 9848,2 
step
#label Mummaki
>>Kill |cRXP_ENEMY_Chieftain Mummaki|r atop the tower. Loot him for his |cRXP_LOOT_Totem|r
>>Loot the |cRXP_PICK_Daggerfen Poison Manual|r book on the top floor near |cRXP_ENEMY_Mummaki|r
.complete 10116,1 
.goto Zangarmarsh,23.77,26.74,-1
.complete 9848,1 
.goto Zangarmarsh,24.40,27.00,-1
.unitscan Chieftain Mummaki
step
#optional
#completewith Oreboring
>>Kill |cRXP_ENEMY_Greater Sporebats|r and |cRXP_ENEMY_Marsh Walkers|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#loop
.line Zangarmarsh,24.58,26.44,25.83,27.17,27.06,25.42,28.18,23.79,28.50,22.23,26.24,22.36,26.31,20.43,25.00,20.56,24.87,22.28,22.89,21.07,22.24,22.32,24.22,24.50,25.74,24.95,24.58,26.44
.goto Zangarmarsh,24.58,26.44,50,0
.goto Zangarmarsh,25.83,27.17,50,0
.goto Zangarmarsh,27.06,25.42,50,0
.goto Zangarmarsh,28.18,23.79,50,0
.goto Zangarmarsh,28.50,22.23,50,0
.goto Zangarmarsh,26.24,22.36,50,0
.goto Zangarmarsh,26.31,20.43,50,0
.goto Zangarmarsh,25.00,20.56,50,0
.goto Zangarmarsh,24.87,22.28,50,0
.goto Zangarmarsh,22.89,21.07,50,0
.goto Zangarmarsh,22.24,22.32,50,0
.goto Zangarmarsh,24.22,24.50,50,0
.goto Zangarmarsh,25.74,24.95,50,0
.goto Zangarmarsh,24.58,26.44,50,0
>>Kill |cRXP_ENEMY_Daggerfen Assassins|r and |cRXP_ENEMY_Daggerfen Muckdwellers|r
.complete 10115,1 
.mob +Daggerfen Assassin
.complete 10115,2 
.mob +Daggerfen Muckdweller
step
#optional
#completewith Oreboring
>>Loot |cRXP_PICK_Glowcaps|r on the ground throughout Zangarmarsh
.collect 24245,10,9808,1 
step
#loop
.line Zangarmarsh,28.90,27.88,29.29,26.89,30.66,26.89,32.03,27.30,33.20,28.97,35.19,26.85,37.09,26.88,38.88,28.22,37.80,28.63,36.08,29.61,36.41,32.55,36.40,33.65,35.11,34.53,34.27,33.37,34.45,31.45,33.94,30.16,32.44,32.76,31.67,30.44,29.97,30.13,28.90,27.88
.goto Zangarmarsh,28.90,27.88,50,0
.goto Zangarmarsh,29.29,26.89,50,0
.goto Zangarmarsh,30.66,26.89,50,0
.goto Zangarmarsh,32.03,27.30,50,0
.goto Zangarmarsh,33.20,28.97,50,0
.goto Zangarmarsh,35.19,26.85,50,0
.goto Zangarmarsh,37.09,26.88,50,0
.goto Zangarmarsh,38.88,28.22,50,0
.goto Zangarmarsh,37.80,28.63,50,0
.goto Zangarmarsh,36.08,29.61,50,0
.goto Zangarmarsh,36.41,32.55,50,0
.goto Zangarmarsh,36.40,33.65,50,0
.goto Zangarmarsh,35.11,34.53,50,0
.goto Zangarmarsh,34.27,33.37,50,0
.goto Zangarmarsh,34.45,31.45,50,0
.goto Zangarmarsh,33.94,30.16,50,0
.goto Zangarmarsh,32.44,32.76,50,0
.goto Zangarmarsh,31.67,30.44,50,0
.goto Zangarmarsh,29.97,30.13,50,0
.goto Zangarmarsh,28.90,27.88,50,0
>>Kill |cRXP_ENEMY_Ango'rosh Shamans|r and |cRXP_ENEMY_Ogres|r
.complete 9835,1 
.mob +Ango'rosh Shaman
.complete 9835,2 
.mob +Ango'rosh Ogre
step
#label Oreboring
.goto Zangarmarsh,41.94,27.19
>>Return to Orebor Harborage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikuti|r
.turnin 9835 >> Turn in Ango'rosh Encroachment
.accept 9839 >> Accept Overlord Gorefist
.turnin 10115 >> Turn in Daggerfen Deviance
.turnin 10116 >> Turn in Wanted: Chieftain Mummaki
.target Ikuti
step
#completewith Sporelings
.goto Zangarmarsh,41.85,26.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kerp|r
.home >> Set your Hearthstone to Orebor Harborage
.target Innkeeper Kerp
step
.goto 1946/530,7382.50000,1019.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maktu|r
.target Maktu
.accept 9834 >>Accept Natural Armor
step
.goto 1946/530,7401.50000,976.40002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timothy Daniels|r
.target Timothy Daniels
.turnin 9848 >>Turn in Secrets of the Daggerfen
step
.goto 1946/530,7421.0,976.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Puluu|r
.target Puluu
.accept 9830 >>Accept Stinger Venom
.accept 9833 >>Accept Lines of Communication
.accept 9902 >>Accept The Terror of Marshlight Lake
step
#optional
#completewith Sporelings
>>Loot |cRXP_PICK_Glowcaps|r on the ground throughout Zangarmarsh
.collect 24245,10,9808,1 
step
#optional
#completewith Sporelings
>>Kill |cRXP_ENEMY_Greater Sporebats|r and |cRXP_ENEMY_Marsh Walkers|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#optional
#completewith Sporelings
>>Kill |cRXP_ENEMY_Marshfang Slicers|r
.complete 9833,1 
.mob Marshfang Slicer
step
#label Leesa1
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
.turnin 9697 >> Turn in Watcher Leesa'oh
.accept 9701 >> Accept Observing the Sporelings
.target Watcher Leesa'oh
step
#label Sporelings
.goto Zangarmarsh,19.03,62.34,50,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r. He patrols around slightly
.accept 9739 >> Accept The Sporelings' Plight
.accept 9743 >> Accept Natural Enemies
.target Fahssn
step
#optional
#completewith Tendrils
>>Collect |cRXP_PICK_Sacs|r (they look like balloons) on the ground
.complete 9739,1 
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Bog Lords|r. Loot them for their |cRXP_LOOT_Tendrils|r
.complete 9743,1 
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
.goto Zangarmarsh,14.95,59.88
>>Travel near to the Spawning Glen
.complete 9701,1 
step
#label Tendrils
#loop
.line Zangarmarsh,13.76,57.97,10.51,60.28,10.53,62.68,13.24,63.84,17.35,63.48,17.46,57.13,13.76,57.97
.goto Zangarmarsh,13.76,57.97,60,0
.goto Zangarmarsh,10.51,60.28,60,0
.goto Zangarmarsh,10.53,62.68,60,0
.goto Zangarmarsh,13.24,63.84,60,0
.goto Zangarmarsh,17.35,63.48,60,0
.goto Zangarmarsh,17.46,57.13,60,0
.goto Zangarmarsh,13.76,57.97,60,0
>>Kill |cRXP_ENEMY_Bog Lords|r. Loot them for their |cRXP_LOOT_Tendrils|r
.complete 9743,1 
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#loop
.line Zangarmarsh,13.76,57.97,10.51,60.28,10.53,62.68,13.24,63.84,17.35,63.48,17.46,57.13,13.76,57.97
.goto Zangarmarsh,13.76,57.97,60,0
.goto Zangarmarsh,10.51,60.28,60,0
.goto Zangarmarsh,10.53,62.68,60,0
.goto Zangarmarsh,13.24,63.84,60,0
.goto Zangarmarsh,17.35,63.48,60,0
.goto Zangarmarsh,17.46,57.13,60,0
.goto Zangarmarsh,13.76,57.97,60,0
>>Collect |cRXP_PICK_Sacs|r (they look like balloons) on the ground
.complete 9739,1 
step
#optional
#completewith Idols
>>Loot |cRXP_PICK_Glowcaps|r on the ground throughout Zangarmarsh
.collect 24245,10,9808,1 
step
#optional
#completewith Ungula
>>Kill |cRXP_ENEMY_Marshfang Slicers|r
.complete 9833,1 
.mob Marshfang Slicer
step
.goto Zangarmarsh,19.03,62.34,50,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r. He patrols around slightly
.turnin 9739 >> Turn in The Sporelings' Plight
.turnin 9743 >> Turn in Natural Enemies
.target Fahssn
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Greater Sporebats|r and |cRXP_ENEMY_Marsh Walkers|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#label Lessa2
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
.turnin 9701 >> Turn in Observing the Sporelings
.accept 9702 >> Accept A Question of Gluttony
.target Watcher Leesa'oh
step
#label Nutriment
#loop
.line Zangarmarsh,26.31,62.73,27.31,66.10,28.34,63.77,29.80,65.23,31.36,67.21,32.31,65.48,33.59,65.76,32.31,65.48,30.89,63.10,31.89,60.49,29.28,59.50,29.10,62.48,26.31,62.73
.goto Zangarmarsh,26.31,62.73,60,0
.goto Zangarmarsh,27.31,66.10,60,0
.goto Zangarmarsh,28.34,63.77,60,0
.goto Zangarmarsh,29.80,65.23,60,0
.goto Zangarmarsh,31.36,67.21,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,33.59,65.76,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,30.89,63.10,60,0
.goto Zangarmarsh,31.89,60.49,60,0
.goto Zangarmarsh,29.28,59.50,60,0
.goto Zangarmarsh,29.10,62.48,60,0
.goto Zangarmarsh,26.31,62.73,60,0
>>Loot the |cRXP_PICK_Discarded Nutriments|r (small mushrooms) on the ground
.complete 9702,1 
step << !tbc
.goto Zangarmarsh,32.86,59.52
.use 25459 >>Kill |cRXP_ENEMY_"Count" Ungula|r. Loot him for his |cRXP_LOOT_Mandible|r. Click |T135592:0|t["Count" Ungula's Mandible] in your bags
.collect 25459,1,9911 
.accept 9911 >> Accept The Count of the Marshes
.unitscan "Count" Ungula
step << tbc
#loop
.line Zangarmarsh,26.31,62.73,27.31,66.10,28.34,63.77,29.80,65.23,31.36,67.21,32.31,65.48,33.59,65.76,32.31,65.48,30.89,63.10,31.89,60.49,29.28,59.50,29.10,62.48,26.31,62.73
.goto Zangarmarsh,26.31,62.73,60,0
.goto Zangarmarsh,27.31,66.10,60,0
.goto Zangarmarsh,28.34,63.77,60,0
.goto Zangarmarsh,29.80,65.23,60,0
.goto Zangarmarsh,31.36,67.21,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,33.59,65.76,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,30.89,63.10,60,0
.goto Zangarmarsh,31.89,60.49,60,0
.goto Zangarmarsh,29.28,59.50,60,0
.goto Zangarmarsh,29.10,62.48,60,0
.goto Zangarmarsh,26.31,62.73,60,0
>>Kill |cRXP_ENEMY_Bog Lords|r. Loot them for their |cRXP_LOOT_Tendrils|r
.collect 24291,6 
.reputation 970,neutral,0,1
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#loop
.line Zangarmarsh,26.31,62.73,27.31,66.10,28.34,63.77,29.80,65.23,31.36,67.21,32.31,65.48,33.59,65.76,32.31,65.48,30.89,63.10,31.89,60.49,29.28,59.50,29.10,62.48,26.31,62.73
.goto Zangarmarsh,26.31,62.73,60,0
.goto Zangarmarsh,27.31,66.10,60,0
.goto Zangarmarsh,28.34,63.77,60,0
.goto Zangarmarsh,29.80,65.23,60,0
.goto Zangarmarsh,31.36,67.21,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,33.59,65.76,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,30.89,63.10,60,0
.goto Zangarmarsh,31.89,60.49,60,0
.goto Zangarmarsh,29.28,59.50,60,0
.goto Zangarmarsh,29.10,62.48,60,0
.goto Zangarmarsh,26.31,62.73,60,0
.reputation 970,neutral,0 >> Grind |cRXP_ENEMY_Bog Lords|r until you're |cRXP_WARN_Neutral|r with Sporeggar
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step << !tbc
.goto Zangarmarsh,19.03,62.34,50,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r. He patrols around slightly
.accept 9919 >> Accept Sporeggar
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#questguide << !tbc
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9702 >> Turn in A Question of Gluttony
.accept 9708 >> Accept Familiar Fungi
.target Watcher Leesa'oh
step << tbc
#label Ungula
.goto Zangarmarsh,32.86,59.52
.use 25459 >>Kill |cRXP_ENEMY_"Count" Ungula|r. Loot him for his |cRXP_LOOT_Mandible|r. Click |T135592:0|t["Count" Ungula's Mandible] in your bags
.collect 25459,1,9911 
.accept 9911 >> Accept The Count of the Marshes
.unitscan "Count" Ungula
step << !tbc
#label Ungula
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9911 >> Turn in The Count of the Marshes
.turnin 9702 >> Turn in A Question of Gluttony
.target Watcher Leesa'oh
step
#optional
#completewith Idols
>>Kill |cRXP_ENEMY_Fen Striders|r and |cRXP_ENEMY_Greater Sporebats|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
step
#loop
.line Zangarmarsh,32.12,59.16,32.87,60.25,34.12,62.12,35.08,63.37,37.14,62.08,39.08,63.53,38.99,59.32,36.85,56.26,34.96,59.53,33.60,57.06,32.12,59.16
.goto Zangarmarsh,32.12,59.16,50,0
.goto Zangarmarsh,32.87,60.25,50,0
.goto Zangarmarsh,34.12,62.12,50,0
.goto Zangarmarsh,35.08,63.37,50,0
.goto Zangarmarsh,37.14,62.08,50,0
.goto Zangarmarsh,39.08,63.53,50,0
.goto Zangarmarsh,38.99,59.32,50,0
.goto Zangarmarsh,36.85,56.26,50,0
.goto Zangarmarsh,34.96,59.53,50,0
.goto Zangarmarsh,33.60,57.06,50,0
.goto Zangarmarsh,32.12,59.16,50,0
>>Kill |cRXP_ENEMY_Marshfang Slicers|r
.complete 9833,1 
.mob Marshfang Slicer
step
#label Idols
.goto Zangarmarsh,46.09,57.76,20,0
.goto Zangarmarsh,46.17,59.79,20,0
.goto Zangarmarsh,45.93,60.71,20,0
.goto Zangarmarsh,46.25,60.96,20,0
.goto Zangarmarsh,47.46,61.77,20,0
.goto Zangarmarsh,49.09,61.27,20,0
.goto Zangarmarsh,49.24,60.72,20,0
.goto Zangarmarsh,49.70,61.09,20,0
.goto Zangarmarsh,48.19,63.81,20,0
.goto Zangarmarsh,47.90,64.20,20,0
.goto Zangarmarsh,48.59,64.71,20,0
.goto Zangarmarsh,43.24,62.40
>>Loot the small stone |cRXP_PICK_Idols|r on the ground
.complete 9787,1 
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Fen Striders|r and |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.subzoneskip 3653
step << !Warlock
#completewith next
.cast 22807 >> Use the |T134716:0|t[Potion of Water Breathing] in your bags
.use 25539
step
#loop
.line Zangarmarsh,48.35,45.31,49.52,44.88,50.82,45.18,51.57,44.16,51.35,42.51,52.25,43.34,52.99,42.77,53.30,41.79,52.45,41.36,52.67,39.01,50.99,37.35,50.26,36.26,48.89,38.04,48.07,39.03,48.73,40.09,47.66,40.78,47.74,41.81,49.00,42.23,48.35,45.31
.goto Zangarmarsh,48.35,45.31,50,0
.goto Zangarmarsh,49.52,44.88,50,0
.goto Zangarmarsh,50.82,45.18,50,0
.goto Zangarmarsh,51.57,44.16,50,0
.goto Zangarmarsh,51.35,42.51,50,0
.goto Zangarmarsh,52.25,43.34,50,0
.goto Zangarmarsh,52.99,42.77,50,0
.goto Zangarmarsh,53.30,41.79,50,0
.goto Zangarmarsh,52.45,41.36,50,0
.goto Zangarmarsh,52.67,39.01,50,0
.goto Zangarmarsh,50.99,37.35,50,0
.goto Zangarmarsh,50.26,36.26,50,0
.goto Zangarmarsh,48.89,38.04,50,0
.goto Zangarmarsh,48.07,39.03,50,0
.goto Zangarmarsh,48.73,40.09,50,0
.goto Zangarmarsh,47.66,40.78,50,0
.goto Zangarmarsh,47.74,41.81,50,0
.goto Zangarmarsh,49.00,42.23,50,0
.goto Zangarmarsh,48.35,45.31,50,0
>>Kill |cRXP_ENEMY_Fenclaw Thrashers|r underwater. Loot them for their |cRXP_LOOT_Hides|r
.complete 9834,1 
.mob Fenclaw Thrasher
step << Shaman
#completewith next
.hs >> Hearth to Orebor Harborage
step
#optional
#completewith Orebor1
>>Kill |cRXP_ENEMY_Greater Sporebats|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#optional
#completewith FSpores
>>Loot |cRXP_PICK_Glowcaps|r on the ground throughout Zangarmarsh
.collect 24245,10,9808,1 
step
.goto 1946/530,7383.70020,1020.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maktu|r
.target Maktu
.turnin 9834 >>Turn in Natural Armor
.accept 9905 >>Accept Maktu's Revenge
step
.goto 1946/530,7422.10010,974.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Puluu|r
.target Puluu
.turnin 9833 >>Turn in Lines of Communication
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Bogflare Needlers|r. Loot them for their |cRXP_LOOT_Wings|r
.complete 9790,1 
.mob Bogflare Needler
step
.goto Zangarmarsh,42.24,41.40
>>Kill |cRXP_ENEMY_Mragesh|r
.complete 9905,1 
.unitscan Mragesh
step
#questguide << !tbc
#loop
.line Zangarmarsh,28.90,27.88,29.29,26.89,30.66,26.89,32.03,27.30,33.20,28.97,35.19,26.85,37.09,26.88,38.88,28.22,37.80,28.63,36.08,29.61,36.41,32.55,36.40,33.65,35.11,34.53,34.27,33.37,34.45,31.45,33.94,30.16,32.44,32.76,31.67,30.44,29.97,30.13,28.90,27.88
.goto Zangarmarsh,28.90,27.88,50,0
.goto Zangarmarsh,29.29,26.89,50,0
.goto Zangarmarsh,30.66,26.89,50,0
.goto Zangarmarsh,32.03,27.30,50,0
.goto Zangarmarsh,33.20,28.97,50,0
.goto Zangarmarsh,35.19,26.85,50,0
.goto Zangarmarsh,37.09,26.88,50,0
.goto Zangarmarsh,38.88,28.22,50,0
.goto Zangarmarsh,37.80,28.63,50,0
.goto Zangarmarsh,36.08,29.61,50,0
.goto Zangarmarsh,36.41,32.55,50,0
.goto Zangarmarsh,36.40,33.65,50,0
.goto Zangarmarsh,35.11,34.53,50,0
.goto Zangarmarsh,34.27,33.37,50,0
.goto Zangarmarsh,34.45,31.45,50,0
.goto Zangarmarsh,33.94,30.16,50,0
.goto Zangarmarsh,32.44,32.76,50,0
.goto Zangarmarsh,31.67,30.44,50,0
.goto Zangarmarsh,29.97,30.13,50,0
.goto Zangarmarsh,28.90,27.88,50,0
>>Kill |cRXP_ENEMY_Ango'rosh Ogres|r, |cRXP_ENEMY_Ango'rosh Sentries|r and |cRXP_ENEMY_Ango'rosh Shamans|r. Loot them for their |cRXP_LOOT_Mushrooms|r
.complete 9708,1 
.mob Ango'rosh Ogre
.mob Ango'rosh Sentry
.mob Ango'rosh Shaman
.mob Boss Grog'ak
step
#optional
#completewith MarshControls
>>Kill |cRXP_ENEMY_Marshlight Bleeders|r. Loot them for their |cRXP_LOOT_Venom|r and |cRXP_LOOT_Wings|r
.complete 9830,1 
.complete 9790,1 
.mob Marshlight Bleeder
step
#questguide << !tbc
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9708 >> Turn in Familiar Fungi
.accept 9709 >> Accept Stealing Back the Mushrooms
.turnin 9911 >> Turn in The Count of the Marshes
.target Watcher Leesa'oh
step
#label Orebor1
step << tbc
#optional
#completewith next
>>Kill |cRXP_ENEMY_Greater Sporebats|r and |cRXP_ENEMY_Marsh Walkers|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob Greater Sporebat
.mob Marsh Walker
step << tbc
#label Sporeggar
.goto Zangarmarsh,19.03,62.34,60,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r. He patrols around slightly
.accept 9919 >> Accept Sporeggar
.turnin 9744 >> Turn in More Tendrils!
.target Fahssn
step
#label FSpores
#loop
.line Zangarmarsh,20.87,66.51,21.59,60.30,22.02,58.36,20.27,57.74,18.36,55.46,21.05,52.64,25.47,57.26,20.87,66.51
.goto Zangarmarsh,20.87,66.51,50,0
.goto Zangarmarsh,21.59,60.30,50,0
.goto Zangarmarsh,22.02,58.36,50,0
.goto Zangarmarsh,20.27,57.74,50,0
.goto Zangarmarsh,18.36,55.46,50,0
.goto Zangarmarsh,21.05,52.64,50,0
.goto Zangarmarsh,25.47,57.26,50,0
.goto Zangarmarsh,20.87,66.51,50,0
>>Kill |cRXP_ENEMY_Greater Sporebats|r and |cRXP_ENEMY_Marsh Walkers|r. Loot them for their |cRXP_LOOT_Fertile Spores|r
.collect 24449,6,9806,1 
.mob Greater Sporebat
.mob Marsh Walker
step
#loop
.line Zangarmarsh,19.40,64.97,22.18,63.38,32.63,54.20,27.28,52.55,27.74,47.76,21.27,54.58,19.70,51.18,19.40,64.97
.goto Zangarmarsh,19.40,64.97,50,0
.goto Zangarmarsh,22.18,63.38,50,0
.goto Zangarmarsh,32.63,54.20,50,0
.goto Zangarmarsh,27.28,52.55,50,0
.goto Zangarmarsh,27.74,47.76,50,0
.goto Zangarmarsh,21.27,54.58,50,0
.goto Zangarmarsh,19.70,51.18,50,0
.goto Zangarmarsh,19.40,64.97,50,0
>>Loot |cRXP_PICK_Glowcaps|r on the ground throughout Zangarmarsh
.collect 24245,10,9808,1 
step
.goto 1946/530,8487.50000,191.90001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Msshi'fn|r
.target Msshi'fn
.turnin 9919 >>Turn in Sporeggar
.accept 9808 >>Accept Glowcap Mushrooms
.turnin 9808 >>Turn in Glowcap Mushrooms
step
.goto 1946/530,8511.79980,278.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gshaff|r
.target Gshaff
.accept 9806 >>Accept Fertile Spores
.turnin 9806 >>Turn in Fertile Spores
step
#questguide << !tbc
.goto Zangarmarsh,15.58,60.02
.reputation 970,friendly >> Grind |cRXP_ENEMY_Bog Lords|r until you're at |cRXP_FRIENDLY_Friendly|r Reputation
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#questguide << !tbc
>>Talk to |cRXP_FRIENDLY_Gzhun'tt|r
.accept 9726 >> Accept Now That We're Friends...
.goto Zangarmarsh,19.54,50.04
.target Gzhun'tt
step
.goto Zangarmarsh,22.34,45.89
>>Kill |cRXP_ENEMY_Terroclaw|r on the island
.complete 9902,1 
.unitscan Terrorclaw
step
#optional
#completewith Bloodscale
>>Kill |cRXP_ENEMY_Bloodscale Slavedrivers|r and |cRXP_ENEMY_Bloodscale Enchantresses|r. Loot them for their |cRXP_LOOT_Claws|r
.complete 9728,1 
.mob Bloodscale Enchantress
.mob Bloodscale Slavedriver
step
#questguide << !tbc
#optional
#completewith next
>>Kill |cRXP_ENEMY_Bloodscale Slavedrivers|r and |cRXP_ENEMY_Bloodscale Enchantresses|r
.complete 9726,1 
.mob +Bloodscale Slavedriver
.complete 9726,2 
.mob +Bloodscale Enchantress
.isOnQuest 9726
step
#label MarshControls
.goto Zangarmarsh,25.41,42.86
.use 24355 >>|cRXP_WARN_Use the|r |T136074:0|t[Ironvine Seeds] |cRXP_WARN_on the Lake Controls|r
.complete 9720,2 
step
#questguide << !tbc
#loop
.line Zangarmarsh,24.93,41.85,26.13,40.93,25.79,39.22,24.82,38.46,24.94,36.37,26.38,35.80,28.29,36.89,29.06,38.57,28.49,40.87,28.02,41.90,29.07,44.08,27.72,44.48,26.80,43.70,26.68,46.24,25.85,47.27,25.18,43.82,24.93,41.85
.goto Zangarmarsh,24.93,41.85,50,0
.goto Zangarmarsh,26.13,40.93,50,0
.goto Zangarmarsh,25.79,39.22,50,0
.goto Zangarmarsh,24.82,38.46,50,0
.goto Zangarmarsh,24.94,36.37,50,0
.goto Zangarmarsh,26.38,35.80,50,0
.goto Zangarmarsh,28.29,36.89,50,0
.goto Zangarmarsh,29.06,38.57,50,0
.goto Zangarmarsh,28.49,40.87,50,0
.goto Zangarmarsh,28.02,41.90,50,0
.goto Zangarmarsh,29.07,44.08,50,0
.goto Zangarmarsh,27.72,44.48,50,0
.goto Zangarmarsh,26.80,43.70,50,0
.goto Zangarmarsh,26.68,46.24,50,0
.goto Zangarmarsh,25.85,47.27,50,0
.goto Zangarmarsh,25.18,43.82,50,0
.goto Zangarmarsh,24.93,41.85,50,0
>>Kill |cRXP_ENEMY_Bloodscale Slavedrivers|r and |cRXP_ENEMY_Bloodscale Enchantresses|r
.complete 9726,1 
.mob +Bloodscale Slavedriver
.complete 9726,2 
.mob +Bloodscale Enchantress
.isOnQuest 9726
step
#label Bloodscale
step
#optional
#completewith Gorefist
.goto Zangarmarsh,27.73,32.32,60,0
.goto Zangarmarsh,25.87,33.28,60,0
.goto Zangarmarsh,25.71,31.64,60,0
.goto Zangarmarsh,24.78,29.79,60,0
.goto Zangarmarsh,24.27,31.62,60,0
.goto Zangarmarsh,22.83,31.15,60,0
.goto Zangarmarsh,21.23,32.21,60,0
.goto Zangarmarsh,20.51,31.27,60,0
.goto Zangarmarsh,18.84,35.49,60,0
>>Kill |cRXP_ENEMY_Marshlight Bleeders|r. Loot them for their |cRXP_LOOT_Venom|r and |cRXP_LOOT_Wings|r
.complete 9830,1 
.complete 9790,1 
.mob Marshlight Bleeder
.subzoneskip 3651
step
#completewith Gorefist
.goto Zangarmarsh,17.08,13.10,40 >> Cross the Mushroom bridge
.skill riding,225,1
step
#sticky
#label Gorefist
.goto Zangarmarsh,18.40,7.79
>>Kill |cRXP_ENEMY_Gorefist|r inside the building
.complete 9839,1 
.unitscan Overlord Gorefist
step
#questguide << !tbc
#loop
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,0
>>Kill |cRXP_ENEMY_Ango'rosh Maulers|r. Loot them for their |cRXP_LOOT_Boxes of Mushrooms|r
>>You can also loot |cRXP_LOOT_Boxes of Mushrooms|r on the ground
.complete 9839,2 
.disablecheckbox
.complete 9709,1 
.mob Ango'rosh Mauler
step
#loop
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,0
>>Finish off |cRXP_ENEMY_Ango'rosh Maulers|r
.complete 9839,2 
.mob Ango'rosh Mauler
step
#requires Gorefist
.goto Zangarmarsh,27.73,32.32,60,0
.goto Zangarmarsh,25.87,33.28,60,0
.goto Zangarmarsh,25.71,31.64,60,0
.goto Zangarmarsh,24.78,29.79,60,0
.goto Zangarmarsh,24.27,31.62,60,0
.goto Zangarmarsh,22.83,31.15,60,0
.goto Zangarmarsh,21.23,32.21,60,0
.goto Zangarmarsh,20.51,31.27,60,0
.goto Zangarmarsh,18.84,35.49,60,0
.goto Zangarmarsh,16.37,37.32,60,0
.goto Zangarmarsh,15.49,40.37,60,0
.goto Zangarmarsh,15.15,45.80,60,0
.goto Zangarmarsh,16.70,45.10,60,0
.goto Zangarmarsh,19.25,46.80
>>Kill |cRXP_ENEMY_Marshlight Bleeders|r and |cRXP_ENEMY_Fenglow Stingers|r. Loot them for their |cRXP_LOOT_Venom|r and |cRXP_LOOT_Wings|r
.complete 9830,1 
.complete 9790,1 
.mob Marshlight Bleeder
.mob Fenglow Stinger
step
#questguide << !tbc
.goto Zangarmarsh,19.54,50.04
>>Return to Sporeggar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gzhun'tt|r
.turnin 9726 >> Turn in Now That We're Friends...
.target Gzhun'tt
step
#questguide << !tbc
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9709 >> Turn in Stealing Back the Mushrooms
.target Watcher Leesa'oh
step
#xprate <1.5 << !Shaman
#completewith next
.hs >> Hearth to Orebor Harborage
step
.goto 1946/530,7364.00000,1023.79999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikuti|r
.target Ikuti
.turnin 9839 >>Turn in Overlord Gorefist
step
.goto 1946/530,7383.10010,1019.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maktu|r
.target Maktu
.turnin 9905 >>Turn in Maktu's Revenge
step
.goto 1946/530,7419.39990,976.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Puluu|r
.target Puluu
.turnin 9830 >>Turn in Stinger Venom
.turnin 9902 >>Turn in The Terror of Marshlight Lake
step
#completewith next
.goto Zangarmarsh,41.28,29.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halu|r
.fly Telredor >> Fly to Telredor
.target Halu
step
#questguide << !tbc
>>Return to Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r and |cRXP_FRIENDLY_Haalrun|r
.turnin 9787 >> Turn in Idols of the Feralfen
.goto Zangarmarsh,68.20,49.37
.accept 9801 >>Accept Gathering the Reagents
.turnin 9790 >> Turn in Diaphanous Wings
.goto Zangarmarsh,68.81,48.91
.target Anchorite Ahuurn
.target Haalrun
step
#sticky
#label idols1
.goto 1946/530,6045.39990,279.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
.target Anchorite Ahuurn
.turnin 9787 >>Turn in Idols of the Feralfen
step
#questguide << !tbc
.goto 1946/530,6045.39990,279.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
.target Anchorite Ahuurn
.accept 9801 >>Accept Gathering the Reagents
step
#requires idols1
.goto 1946/530,6066.80029,328.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haalrun|r
.target Haalrun
.turnin 9790 >>Turn in Diaphanous Wings
step
#questguide << !tbc
#completewith NagaC
>>Kill |cRXP_ENEMY_Fen Striders|r. Loot them for their |cRXP_LOOT_Tentacles|r
>>Kill |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Eyes|r
.complete 9801,2 
.mob +Fen Strider
.complete 9801,1 
.mob +Young Sporebat
.mob +Greater Sporebat
.mob +Sporebat
step
#optional
#completewith Rajis
>>Kill |cRXP_ENEMY_Bloodscale Overseers|r and |cRXP_ENEMY_Bloodscale Wavecallers|r. Loot them for their |cRXP_LOOT_Claws|r
.complete 9728,1 
.mob Bloodscale Overseer
.mob Bloodscale Wavecaller
step
.goto Zangarmarsh,61.97,40.84
.use 24355 >>|cRXP_WARN_Use the|r |T136074:0|t[Ironvine Seeds] |cRXP_WARN_on the Lake Controls|r
.complete 9720,3 
step
#label Rajis
.goto Zangarmarsh,65.15,40.91
>>Kill |cRXP_ENEMY_Rajis Fyashe|r
>>|cRXP_WARN_Find a group for her if needed. Skip this step if you're unable to find a group or solo her|r << tbc/wotlk
>>|cRXP_WARN_Try to Line of Sight her spells. Run away from the|r |T135833:0|t[Freezing Circle] |cRXP_WARN_she casts|r << tbc/wotlk
.complete 9817,1 
.isOnQuest 9817
.mob Rajis Fyashe
step
#label NagaC
#loop
.line Zangarmarsh,62.09,38.27,63.29,37.85,64.54,40.10,65.71,39.87,66.39,41.25,63.82,43.15,63.34,44.22,63.15,41.53,61.93,40.26,62.09,38.27
.goto Zangarmarsh,62.09,38.27,55,0
.goto Zangarmarsh,63.29,37.85,55,0
.goto Zangarmarsh,64.54,40.10,55,0
.goto Zangarmarsh,65.71,39.87,55,0
.goto Zangarmarsh,66.39,41.25,55,0
.goto Zangarmarsh,63.82,43.15,55,0
.goto Zangarmarsh,63.34,44.22,55,0
.goto Zangarmarsh,63.15,41.53,55,0
.goto Zangarmarsh,61.93,40.26,55,0
.goto Zangarmarsh,62.09,38.27,55,0
>>Kill |cRXP_ENEMY_Bloodscale Overseers|r and |cRXP_ENEMY_Bloodscale Wavecallers|r. Loot them for their |cRXP_LOOT_Claws|r
.complete 9728,1 
.mob Bloodscale Overseer
.mob Bloodscale Wavecaller
step
#questguide << !tbc
#completewith next
.goto Zangarmarsh,68.48,43.46,60,0
.goto Zangarmarsh,72.01,43.27,60,0
.goto Zangarmarsh,74.14,40.66,60,0
.goto Zangarmarsh,74.75,41.17,60,0
.goto Zangarmarsh,74.61,46.52,60,0
.goto Zangarmarsh,75.22,48.26,60,0
.goto Zangarmarsh,73.70,48.35,60,0
.goto Zangarmarsh,73.50,50.21,60,0
.goto Zangarmarsh,76.75,55.29,60,0
.goto Zangarmarsh,73.96,56.23,60,0
.goto Zangarmarsh,71.85,55.12,60,0
.goto Zangarmarsh,68.41,57.39,60,0
.goto Zangarmarsh,69.72,59.22,60,0
>>Kill |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Eyes|r
>>Kill |cRXP_ENEMY_Fen Striders|r. Loot them for their |cRXP_LOOT_Tentacles|r
.complete 9801,1 
.mob +Young Sporebat
.mob +Greater Sporebat
.mob +Sporebat
.complete 9801,2 
.unitscan +Fen Strider
step
.goto Zangarmarsh,78.40,62.02
>>Return to the Cenarion Refuge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
.turnin 9720 >> Turn in Balance Must Be Preserved
.turnin 9732 >> Turn in Return to the Marsh
.target Ysiel Windsinger
step
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r upstairs in the tower
.turnin 9728 >> Turn in A Warm Welcome
.turnin 9817 >> Turn in Leader of the Bloodscale
.isQuestComplete 9817
.target Warden Hamoot
step
#optional
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r upstairs in the tower
.turnin 9728 >> Turn in A Warm Welcome
.target Warden Hamoot
step
#questguide << !tbc
.goto Zangarmarsh,80.66,69.19,60,0
.goto Zangarmarsh,81.79,72.99,60,0
.goto Zangarmarsh,78.58,82.28,60,0
.goto Zangarmarsh,76.14,84.24,60,0
.goto Zangarmarsh,73.71,87.66,60,0
.goto Zangarmarsh,79.51,87.69,60,0
.goto Zangarmarsh,80.66,69.19,60,0
.goto Zangarmarsh,81.79,72.99,60,0
.goto Zangarmarsh,78.58,82.28,60,0
.goto Zangarmarsh,76.14,84.24,60,0
.goto Zangarmarsh,73.71,87.66,60,0
.goto Zangarmarsh,79.51,87.69
>>Kill |cRXP_ENEMY_Sporebats|r. Loot them for their |cRXP_LOOT_Eyes|r
>>Kill |cRXP_ENEMY_Fen Striders|r. Loot them for their |cRXP_LOOT_Tentacles|r
.complete 9801,1 
.mob +Young Sporebat
.mob +Greater Sporebat
.mob +Sporebat
.complete 9801,2 
.unitscan +Fen Strider
step << !tbc !wotlk
.goto 1955/530,5362.10010,-1832.90002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggard War Veteran|r
.target Haggard War Veteran
.accept 10210 >>Accept A'dal
step << !tbc !wotlk
.goto 1955/530,5426.70020,-1862.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
.target A'dal
.turnin 10210 >>Turn in A'dal
step << !tbc !wotlk
.goto 1955/530,5421.80029,-1859.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.target Khadgar
.accept 10211 >>Accept City of Light
.timer 462,City of Light RP
step << !tbc !wotlk
.goto Shattrath City,50.36,42.87
>>Follow |cRXP_FRIENDLY_Khadgar's Servant|r << wotlk
>>Head up to the second floor with |cRXP_FRIENDLY_G'eras|r and wait out the RP. If someone elses |cRXP_FRIENDLY_Khadgar's Servant|r arrives in the meantime, you can target it and it will complete the quest for you. If the quest fails, abandon it, accept the quest from |cRXP_FRIENDLY_Khadgar's Servant|r again, then follow the |cRXP_FRIENDLY_Khadgar's Servant|r around << tbc
.complete 10211,1 
.target Khadgar's Servant
step << Mage !tbc !wotlk
.goto Shattrath City,58.77,47.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iorioa|r
.train 35715 >> Train Teleport: Shattrath and Portal: Shattrath
.target Iorioa
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.turnin 10211 >> Turn in City of Light
.target Khadgar
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
.accept 10551 >>Allegiance to the Aldor
.turnin 10551>>Talk to |cRXP_FRIENDLY_Khadgar|r. Pledge your Allegiance to the Aldor
.target Khadgar
step << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.goto Shattrath City,54.74,44.32
.accept 10554 >> Accept Ishanah
.target Khadgar
step << !tbc !wotlk
#xprate >1.499
.goto 1955/530,5821.60010,-1732.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ishanah|r
.target Ishanah
.turnin 10554 >>Turn in Ishanah
step
#xprate >1.499
.hs >> Hearth to Orebor Harborage
.cooldown item,6948,>0
]]);

RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 64-66 Nagrand
#defaultfor !wotlk
#version 9
#next 65-67 Blade's Edge
#xprate <1.5 << tbc/wotlk
step << !tbc !wotlk
.goto 1955/530,5362.10010,-1832.90002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggard War Veteran|r
.target Haggard War Veteran
.accept 10210 >>Accept A'dal
step << !tbc !wotlk
.goto 1955/530,5426.70020,-1862.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
.target A'dal
.turnin 10210 >>Turn in A'dal
step << !tbc !wotlk
.goto 1955/530,5421.80029,-1859.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.target Khadgar
.accept 10211 >>Accept City of Light
.timer 462,City of Light RP
step << !tbc !wotlk
.goto Shattrath City,50.36,42.87
>>Follow |cRXP_FRIENDLY_Khadgar's Servant|r << wotlk
>>Head up to the second floor with |cRXP_FRIENDLY_G'eras|r and wait out the RP. If someone elses |cRXP_FRIENDLY_Khadgar's Servant|r arrives in the meantime, you can target it and it will complete the quest for you. If the quest fails, abandon it, accept the quest from |cRXP_FRIENDLY_Khadgar's Servant|r again, then follow the |cRXP_FRIENDLY_Khadgar's Servant|r around << tbc
.complete 10211,1 
.target Khadgar's Servant
step << Mage !tbc !wotlk
.goto Shattrath City,58.77,47.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iorioa|r
.train 35715 >> Train Teleport: Shattrath and Portal: Shattrath
.target Iorioa
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.turnin 10211 >> Turn in City of Light
.target Khadgar
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
.accept 10551 >>Allegiance to the Aldor
.turnin 10551>>Talk to |cRXP_FRIENDLY_Khadgar|r. Pledge your Allegiance to the Aldor
.target Khadgar
step << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar's Servant|r
.goto Shattrath City,54.74,44.32
.accept 10554 >> Accept Ishanah
.target Khadgar
step << Rogue !tbc !wotlk
.goto 1955/530,5357.10010,-1880.09998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ifram|r
.trainer >>Train your class spells
.target Windstalker Ifram
step << Shaman !tbc !wotlk
.goto 1955/530,5367.80029,-1890.09998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Luknar|r
.trainer >>Train your class spells
.target Luknar
step << Warlock !tbc !wotlk
.goto 1955/530,5371.10010,-1892.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel-Caller Guloto|r
.trainer >>Train your class spells
.target Fel-Caller Guloto
step << Mage !tbc !wotlk
.goto 1955/530,5412.70020,-1792.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raluhi|r
.trainer >>Train your class spells
.target Raluhi
step << Priest !tbc !wotlk
.goto 1955/530,5409.20020,-1789.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salha|r
.trainer >>Train your class spells
.target Salha
step << Paladin !tbc !wotlk
.goto 1955/530,5402.50000,-1796.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ordo|r
.trainer >>Train your class spells
.target Ordo
step << Warrior !tbc !wotlk
.goto 1955/530,5399.89990,-1798.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bratu|r
.trainer >>Train your class spells
.target Bratu
step << Hunter !tbc !wotlk
.goto 1955/530,5403.10010,-1800.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Irva|r
.trainer >>Train your class spells
.target Irva
step << !tbc !wotlk
.goto 1955/530,5821.60010,-1732.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ishanah|r
.target Ishanah
.turnin 10554 >>Turn in Ishanah
step
#aldor
.goto Shattrath City,21.62,50.35,30,0
.goto Nagrand,78.23,54.62
.zone Nagrand >> Travel to Aldor Rise. Take the backdoor to Nagrand
.skill riding,<225,1
step
#scryer
.goto Shattrath City,21.62,50.35,30,0
.goto Nagrand,78.23,54.62
.zone Nagrand >> Travel to Aldor Rise. Take the backdoor to Nagrand
>>Make sure to avoid the |cRXP_WARN_Aldor Vindicators|r that roam the area, if they engage you, you will get teleported out of the Aldor Rise, you can spot them by hovering your mouse over them
.skill riding,<225,1
.target Aldor Vindicator
step << !tbc
#completewith Wazat
.goto Nagrand,61.6,67.0
.zone Nagrand >> Travel to Nagrand
.skill riding,225,1
step
#completewith next
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#label Wazat
.goto Nagrand,61.70,67.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
.accept 10109 >> Accept I Must Have Them!
.target Wazat
step
#optional
.goto Nagrand,55.05,70.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
.accept 9917 >> Accept Do My Eyes Deceive Me
.reputation 978,neutral,0,1
.target Huntress Bintook
step
#optional
.goto Nagrand,62.89,73.28,40,0
.goto Nagrand,62.74,71.49
>>Kill |cRXP_ENEMY_Boulderfist Ogres|r. Loot them for their |cRXP_LOOT_Plans|r
.complete 9917,1 
.mob Boulderfist Hunter
.reputation 978,neutral,0,1
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
.goto Nagrand,55.05,70.54
.turnin 9917 >> Turn in Do My Eyes Deceive Me
.accept 9918 >> Accept Not On My Watch!
.reputation 978,neutral,0,1
.target Huntress Bintook
step
#optional
.goto Nagrand,62.74,71.48
>>Damage |cRXP_ENEMY_Lump|r to 30% or less health
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lump|r
.skipgossip
.complete 9918,1 
.target Lump
.reputation 978,neutral,0,1
step
#optional
.goto Nagrand,55.05,70.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
.turnin 9918 >> Turn in Not On My Watch!
.target Huntress Bintook
.isQuestComplete 9918
step
.goto 1951/530,7253.600,-2557.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
.target Huntress Bintook
.accept 9917 >>Accept Do My Eyes Deceive Me
step
.goto 1951/530,7259.100,-2551.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shotgun" Jones|r
.target "Shotgun" Jones
.accept 10113 >>Accept The Nesingwary Safari
step
.goto 1951/530,7229.100,-2492.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Ioki|r
.target Elementalist Ioki
.accept 9869 >>Accept The Throne of the Elements
step
.goto 1951/530,7273.300,-2567.000
>>Click the |cRXP_FRIENDLY_Telaar Bulletin Board|r
.accept 9936 >>Accept Wanted: Giselda the Crone
.accept 9940 >>Accept Wanted: Zorbo the Advisor
step
.goto 1951/530,7286.100,-2613.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otonbu the Sage|r
.target Otonbu the Sage
.accept 9874 >>Accept Stopping the Spread
step
.goto 1951/530,7287.600,-2623.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Poli'lukluk the Wiser|r
.target Poli'lukluk the Wiser
.accept 9878 >>Accept Solving the Problem
step
#completewith BPlans
.goto Nagrand,54.21,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Isel|r
.home >> Set your Hearthstone to Telaar
.target Caregiver Isel
step
.goto Nagrand,54.17,75.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furgu|r on the balcony at the top of the building
.fp Telaar >> Get the Telaar flight path
.target Furgu
step
#optional
#completewith Staghoofs
.use 24504 >>Kill |cRXP_ENEMY_Dust Howlers|r. Loot them for their |cRXP_LOOT_Elemental Gas|r and |cRXP_LOOT_Howling Wind|r. Click the |T135988:0|t[Howling Wind] in your bags
.complete 10109,1 
.collect 24504,1,9861 
.accept 9861 >> Accept The Howling Wind
.mob Dust Howler
step
#label BPlans
.goto Nagrand,62.89,73.28,40,0
.goto Nagrand,62.74,71.49
>>Kill |cRXP_ENEMY_Boulderfist Ogres|r. Loot them for their |cRXP_LOOT_Plans|r
.complete 9917,1 
.mob Boulderfist Hunter
step
#completewith Throne1
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#sticky
#hidewindow
#label saved1a
#completewith Safari1
.subzone 3673 >> 1
step
#requires saved1a
#completewith Safari1
>>Sometimes |cRXP_ENEMY_Gankly|r can appear at the Safari. This is a rare event
>>Kill |cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristen Dipswitch|r
.accept 9897 >> Accept I'm Saved!
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#label Safari1
>>Travel to the Nesingwary Safari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r, |cRXP_FRIENDLY_Harold Lane|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 10113 >>Turn in The Nesingwary Safari
.accept 9854 >>Accept Windroc Mastery
.goto Nagrand,71.57,40.52,-1
.target +Shado 'Fitz' Farstrider
.accept 9857 >>Accept Talbuk Mastery
.goto Nagrand,71.38,40.62,-1
.target +Harold Lane
.accept 9789 >>Accept Clefthoof Mastery
.goto Nagrand,71.52,40.82,-1
.target +Hemet Nesingwary
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
.turnin 9897 >> Turn in I'm Saved!
.target Harold Lane
.goto Nagrand,71.38,40.62
.isOnQuest 9897
step
#completewith Throne1
.goto Nagrand,70.22,38.37,60,0
.goto Nagrand,68.58,40.18,60,0
.goto Nagrand,62.42,35.46,60,0
>>Kill |cRXP_ENEMY_Windrocs|r
.complete 9854,1 
.mob Windroc
.subzoneskip 3614
.subzoneskip 3615
step
#label Throne1
.goto 1951/530,6945.300,-793.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Untrag|r
.target Elementalist Untrag
.accept 9818 >>Accept The Underneath
step
.goto 1951/530,6936.700,-783.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
.target Elementalist Lo'ap
.accept 9800 >>Accept A Rare Bean
.accept 9815 >>Accept Muck Diving
step
.goto 1951/530,6944.600,-773.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Sharvak|r
.target Elementalist Sharvak
.turnin 9869 >>Turn in The Throne of the Elements
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
.turnin 9861 >> Turn in The Howling Wind
.accept 9862 >>Accept Murkblood Corrupters
.goto Nagrand,60.50,22.37
.isOnQuest 9861
.target Elementalist Morgh
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
.accept 9862 >>Accept Murkblood Corrupters
.goto Nagrand,60.50,22.37
.isQuestTurnedIn 9861
.target Elementalist Morgh
step
#loop
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54,50,0
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.turnin 9818 >>Turn in The Underneath
.accept 9819 >>Accept The Tortured Earth
.unitscan Gordawg
step
#optional
#completewith Throne2
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Tortured Earth Spirits|r usually near small hills or the base of the mountain
.complete 9819,1 
.mob Tortured Earth Spirit
step
#loop
.goto Nagrand,62.64,48.31,60,0
.goto Nagrand,62.42,35.46,60,0
.goto Nagrand,68.58,40.18,60,0
.goto Nagrand,70.22,38.37,60,0
.goto Nagrand,62.64,48.31,0
.goto Nagrand,62.42,35.46,0
.goto Nagrand,68.58,40.18,0
.goto Nagrand,70.22,38.37,0
>>Kill |cRXP_ENEMY_Windrocs|r
.complete 9854,1 
.mob Windroc
step
#optional
#completewith next
.goto Nagrand,62.42,35.46,60,0
.goto Nagrand,66.64,38.34,60,0
>>Kill |cRXP_ENEMY_Talbuk Stags|r and |cRXP_ENEMY_Clefthoofs|r
.complete 9857,1 
.mob +Talbuk Stag
.complete 9789,1 
.mob +Clefthoof
step
#loop
.goto Nagrand,65.00,51.32,60,0
.goto Nagrand,61.94,54.94,60,0
.goto Nagrand,65.00,51.32,0
.goto Nagrand,61.94,54.94,0
>>Kill |cRXP_ENEMY_Tortured Earth Spirits|r
.complete 9819,1 
.mob Tortured Earth Spirit
step
#label Staghoofs
#loop
.line Nagrand,57.61,60.98,59.50,58.79,61.32,62.32,70.43,56.50,65.39,63.76,71.13,62.77,70.44,72.05,66.97,75.29,66.01,67.94,57.61,60.98
.goto Nagrand,57.61,60.98,60,0
.goto Nagrand,59.50,58.79,60,0
.goto Nagrand,61.32,62.32,60,0
.goto Nagrand,70.43,56.50,60,0
.goto Nagrand,65.39,63.76,60,0
.goto Nagrand,71.13,62.77,60,0
.goto Nagrand,70.44,72.05,60,0
.goto Nagrand,66.97,75.29,60,0
.goto Nagrand,66.01,67.94,60,0
.goto Nagrand,57.61,60.98,60,0
>>Kill |cRXP_ENEMY_Talbuk Stags|r and |cRXP_ENEMY_Clefthoofs|r
.complete 9857,1 
.mob +Talbuk Stag
.complete 9789,1 
.mob +Clefthoof
step
.goto Nagrand,66.11,62.07,60,0
.goto Nagrand,68.76,63.70,60,0
.goto Nagrand,67.52,65.69,60,0
.goto Nagrand,66.10,72.83,60,0
.goto Nagrand,67.50,74.48,60,0
.goto Nagrand,60.33,63.82,60,0
.goto Nagrand,60.85,61.08,60,0
.goto Nagrand,62.41,59.43,60,0
.goto Nagrand,66.11,62.07,60,0
.goto Nagrand,68.76,63.70,60,0
.goto Nagrand,67.52,65.69,60,0
.goto Nagrand,66.10,72.83,60,0
.goto Nagrand,67.50,74.48,60,0
.goto Nagrand,60.33,63.82,60,0
.goto Nagrand,60.85,61.08,60,0
.goto Nagrand,62.41,59.43
.use 24504 >>Kill |cRXP_ENEMY_Dust Howlers|r. Loot them for their |cRXP_LOOT_Elemental Gas|r and |cRXP_LOOT_Howling Wind|r. Click the |T135988:0|t[Howling Wind] in your bags
.complete 10109,1 
.collect 24504,1,9861 
.accept 9861 >> Accept The Howling Wind
.unitscan Dust Howler
step
#sticky
#hidewindow
#label saved2a
#completewith Safari1
.subzone 3673 >> 1
step
#requires saved2a
#completewith Safari2
>>Sometimes |cRXP_ENEMY_Gankly|r can appear at the Safari. This is a rare event
>>Kill |cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristen Dipswitch|r
.accept 9897 >> Accept I'm Saved!
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#label Safari2
>>Return to the Safari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r, |cRXP_FRIENDLY_Hemet Nesingwary|r and |cRXP_FRIENDLY_Harold Lane|r
.turnin 9854 >>Turn in Windroc Mastery
.accept 9855 >>Accept Windroc Mastery
.target +Shado 'Fitz' Farstrider
.goto Nagrand,71.57,40.52
.turnin 9789 >>Turn in Clefthoof Mastery
.accept 9850 >>Accept Clefthoof Mastery
.target +Hemet Nesingwary
.goto Nagrand,71.52,40.82
.turnin 9857 >>Turn in Talbuk Mastery
.accept 9858 >>Accept Talbuk Mastery
.target +Harold Lane
.goto Nagrand,71.38,40.62
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
.turnin 9897 >> Turn in I'm Saved!
.target Harold Lane
.goto Nagrand,71.38,40.62
.isOnQuest 9897
step
#label Throne2
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.turnin 9819 >>Turn in The Tortured Earth
.accept 9821 >>Accept Eating Damnation
.unitscan Gordawg
step
#completewith Caracoli
.destroy 24475 >> You can delete |T135241:0|t[Gordawg's Imprint] from your bags. It's no longer needed
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
.turnin 9861 >> Turn in The Howling Wind
.accept 9862 >>Accept Murkblood Corrupters
.goto Nagrand,60.50,22.37
.isOnQuest 9861
.target Elementalist Morgh
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
.accept 9862 >>Accept Murkblood Corrupters
.goto Nagrand,60.50,22.37
.isQuestTurnedIn 9861
.target Elementalist Morgh
step
#optional
#completewith Gordawg3
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#completewith Dung
#optional
>>Kill |cRXP_ENEMY_Clefthoof Bulls|r and |cRXP_ENEMY_Talbuk Thorngrazers|r
.complete 9850,1,20 
.mob +Clefthoof Bull
.complete 9858,1 
.mob +Talbuk Thorngrazer
step
#completewith eccore
>>Loot the |cRXP_PICK_Digested Caracoli|r dung on the ground
.complete 9800,1 
step
#label eccore
#loop
.goto Nagrand,56.76,18.16,60,0
.goto Nagrand,55.16,20.27,60,0
.goto Nagrand,51.36,19.50,60,0
.goto Nagrand,48.73,18.92,60,0
.goto Nagrand,56.76,18.16,60,0
.goto Nagrand,55.16,20.27,60,0
.goto Nagrand,51.36,19.50,60,0
.goto Nagrand,48.73,18.92,60,0

.goto Nagrand,56.76,18.16,0
.goto Nagrand,55.16,20.27,0
.goto Nagrand,51.36,19.50,0
.goto Nagrand,48.73,18.92,0
.goto Nagrand,56.76,18.16,0
.goto Nagrand,55.16,20.27,0
.goto Nagrand,51.36,19.50,0
.goto Nagrand,48.73,18.92,0
>>Kill |cRXP_ENEMY_Enraged Crushers|r. Loot them for their |cRXP_LOOT_Cores|r
.complete 9821,1 
.mob Enraged Crusher
step
#label Dung
#loop
.line Nagrand,53.23,28.38,53.12,25.86,54.63,23.85,57.92,23.11,57.71,20.88,55.71,20.76,52.57,22.34,50.79,19.94,51.26,24.12,51.50,26.70,50.31,27.35,48.83,27.92,46.77,28.29,47.42,33.33,53.23,28.38
.goto Nagrand,53.23,28.38,60,0
.goto Nagrand,53.12,25.86,60,0
.goto Nagrand,54.63,23.85,60,0
.goto Nagrand,57.92,23.11,60,0
.goto Nagrand,57.71,20.88,60,0
.goto Nagrand,55.71,20.76,60,0
.goto Nagrand,52.57,22.34,60,0
.goto Nagrand,50.79,19.94,60,0
.goto Nagrand,51.26,24.12,60,0
.goto Nagrand,51.50,26.70,60,0
.goto Nagrand,50.31,27.35,60,0
.goto Nagrand,48.83,27.92,60,0
.goto Nagrand,46.77,28.29,60,0
.goto Nagrand,47.42,33.33,60,0
.goto Nagrand,53.23,28.38,60,0
>>Loot the |cRXP_PICK_Digested Caracoli|r dung on the ground
.complete 9800,1 
step
.goto Nagrand,60.81,22.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
.turnin 9800 >>Turn in A Rare Bean
.accept 9804 >>Accept Agitated Spirits of Skysong
.target Elementalist Lo'ap
step
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.turnin 9821 >>Turn in Eating Damnation
.unitscan Gordawg
.isQuestComplete 9821
step
#questguide << !tbc
#label Gordawg3
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.accept 9849 >>Accept Shattering the Veil
.unitscan Gordawg
.isQuestTurnedIn 9821
step << !Warlock
#completewith next
.cast 31920 >> Use the |T133999:0|t[Nagrand Cherry] in your bags
.use 24421
step
.goto Nagrand,61.62,29.65,60,0
.goto Nagrand,60.41,27.38,60,0
.goto Nagrand,59.40,27.55,60,0
.goto Nagrand,54.80,25.90,60,0
.goto Nagrand,61.62,29.65,60,0
.goto Nagrand,60.41,27.38,60,0
.goto Nagrand,59.40,27.55,60,0
.goto Nagrand,54.80,25.90
.use 24421 >>Kill |cRXP_ENEMY_Lake Spirits|r
.complete 9804,1 
.mob Lake Spirit
step
.goto Nagrand,60.81,22.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
.turnin 9804 >>Turn in Agitated Spirits of Skysong
.accept 9805 >>Accept Blessing of Incineratus
.target Elementalist Lo'ap
step
#optional
#completewith Telaar2
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#optional
#completewith ThorngrazersEnd
>>Kill |cRXP_ENEMY_Clefthoof Bulls|r
.complete 9850,1 
.mob Clefthoof Bull
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Talbuk Thorngrazers|r
.complete 9858,1 
.mob Talbuk Thorngrazer
step
.goto Nagrand,47.37,34.95,60,0
.goto Nagrand,46.08,33.41,60,0
.goto Nagrand,42.95,30.75,60,0
.goto Nagrand,41.16,26.99,60,0
.goto Nagrand,40.03,26.17,60,0
.goto Nagrand,38.03,27.55,60,0
.goto Nagrand,36.34,26.96,60,0
.goto Nagrand,35.40,25.60,60,0
.goto Nagrand,34.49,21.76,60,0
.goto Nagrand,33.78,20.12,60,0
.goto Nagrand,40.03,26.17
.line Nagrand,47.37,34.95,46.08,33.41,42.95,30.75,41.16,26.99,40.03,26.17,38.03,27.55,36.34,26.96,35.40,25.60,34.49,21.76,33.78,20.12
.use 24559 >>Kill the |cRXP_ENEMY_Murkblood Invaders|r. Loot them for their |cRXP_LOOT_Plans|r. Click the |T134269:0|t[Murkblood Invasion Plans] in your bags
.collect 24559,1,9871 
.accept 9871 >>Accept Murkblood Invaders
.unitscan Murkblood Invader
step
#label ThorngrazersEnd
#loop
.line Nagrand,53.23,28.38,53.12,25.86,54.63,23.85,57.92,23.11,57.71,20.88,55.71,20.76,52.57,22.34,50.79,19.94,51.26,24.12,51.50,26.70,50.31,27.35,48.83,27.92,46.77,28.29,47.42,33.33,53.23,28.38
.goto Nagrand,53.23,28.38,60,0
.goto Nagrand,53.12,25.86,60,0
.goto Nagrand,54.63,23.85,60,0
.goto Nagrand,57.92,23.11,60,0
.goto Nagrand,57.71,20.88,60,0
.goto Nagrand,55.71,20.76,60,0
.goto Nagrand,52.57,22.34,60,0
.goto Nagrand,50.79,19.94,60,0
.goto Nagrand,51.26,24.12,60,0
.goto Nagrand,51.50,26.70,60,0
.goto Nagrand,50.31,27.35,60,0
.goto Nagrand,48.83,27.92,60,0
.goto Nagrand,46.77,28.29,60,0
.goto Nagrand,47.42,33.33,60,0
.goto Nagrand,53.23,28.38,60,0
>>Kill |cRXP_ENEMY_Talbuk Thorngrazers|r
.complete 9858,1 
.mob Talbuk Thorngrazer
step
#loop
.line Nagrand,50.79,27.99,48.31,31.88,47.13,39.34,48.66,40.86,51.65,39.18,50.33,35.67,50.95,31.54,52.50,29.87,50.79,27.99
.goto Nagrand,50.79,27.99,60,0
.goto Nagrand,48.31,31.88,60,0
.goto Nagrand,47.13,39.34,60,0
.goto Nagrand,48.66,40.86,60,0
.goto Nagrand,51.65,39.18,60,0
.goto Nagrand,50.33,35.67,60,0
.goto Nagrand,50.95,31.54,60,0
.goto Nagrand,52.50,29.87,60,0
.goto Nagrand,50.79,27.99,60,0
>>Kill |cRXP_ENEMY_Clefthoof Bulls|r
.complete 9850,1 
.mob Clefthoof Bull
step
.goto Nagrand,41.18,44.33
>>Travel to Halaa if the Alliance is controlling it
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartos|r
*If the Horde or nobody is controlling Halaa, skip this step
.accept 10076 >> Accept Oshu'gun Crystal Powder
.turnin 10076 >> Turn in Oshu'gun Crystal Powder
.itemcount 26043,20 
.target Chief Researcher Kartos
step
#questguide << !tbc
#optional
#completewith next
>>Kill |cRXP_ENEMY_Ravenous Windrocs|r
.complete 9855,1 
.mob Ravenous Windroc
step
#questguide << !tbc
.goto Nagrand,51.82,56.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r on the bottom floor inside the building
.turnin 10251 >> Turn in The Master's Grand Design?
.accept 10252 >> Accept Vision of the Dead
.isQuestTurnedIn 10231
.target Nitrin the Learned
step
#loop
.line Nagrand,49.47,58.46,51.83,61.23,50.08,63.89,49.10,61.11,47.43,60.82,43.08,56.34,43.82,54.76,47.43,60.82,49.47,58.46
.goto Nagrand,49.47,58.46,60,0
.goto Nagrand,51.83,61.23,60,0
.goto Nagrand,50.08,63.89,60,0
.goto Nagrand,49.10,61.11,60,0
.goto Nagrand,47.43,60.82,60,0
.goto Nagrand,43.08,56.34,60,0
.goto Nagrand,43.82,54.76,60,0
.goto Nagrand,47.43,60.82,60,0
.goto Nagrand,49.47,58.46,60,0
>>Kill |cRXP_ENEMY_Ravenous Windrocs|r
.complete 9855,1 
.mob Ravenous Windroc
step
.goto Nagrand,29.1,56.9
.use 24559 >>Kill the |cRXP_ENEMY_Murkblood Invaders|r. Loot them for their |cRXP_LOOT_Plans|r. Click the |T134269:0|t[Murkblood Invasion Plans] in your bags
.collect 24559,1,9871 
.accept 9871 >>Accept Murkblood Invaders
.unitscan Murkblood Invader
step << !Shaman
.goto Nagrand,51.11,69.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Consortium Recruiter|r
.accept 9913 >>Accept The Consortium Needs You!
.target Consortium Recruiter
step << Shaman
#completewith next
.hs >> Hearth to Telaar
.cooldown item,6948,>2
step
#label Telaar2
.goto 1951/530,7231.500,-2489.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
.target Arechron
.turnin 9871 >>Turn in Murkblood Invaders
.accept 9873 >>Accept Ortor My Old Friend...
step
.goto 1951/530,7255.800,-2556.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
.target Huntress Bintook
.turnin 9917 >>Turn in Do My Eyes Deceive Me
.accept 9918 >>Accept Not On My Watch!
step
.goto Nagrand,62.74,71.48
>>Damage |cRXP_ENEMY_Lump|r to 30% or less health
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lump|r
.skipgossip
.complete 9918,1 
.target Lump
step
.goto 1951/530,7252.400,-2556.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
.target Huntress Bintook
.turnin 9918 >>Turn in Not On My Watch!
.accept 9920 >>Accept Mo'mor the Breaker
step
.goto 1951/530,7278.300,-2618.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mo'mor the Breaker|r
.target Mo'mor the Breaker
.turnin 9920 >>Turn in Mo'mor the Breaker
.accept 9921 >>Accept The Ruins of Burning Blade
step
.goto Nagrand,61.68,67.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
.turnin 10109 >> Turn in I Must Have Them!
.accept 10111 >> Accept Bring Me The Egg!
.target Wazat
step
#completewith next
.goto Nagrand,61.82,68.84,30 >>Use the Jump-A-Tron 4000 next to Wazat to get the Slowfall buff. Mount up then run up the cliff to your south and jump toward the tree with the nest of eggs
.skill riding,225,1
step
.goto Nagrand,61.33,66.98
>>Click on the egg inside the nest in the tree. A |cRXP_ENEMY_Windroc Matriach|r will spawn after you loot the egg.
.complete 10111,1 
.cast 3365
.timer 37,Bring Me The Egg! RP
step
>>Kill the |cRXP_ENEMY_Windroc Matriach|r
>>Kite it back to Telaar so that the guards help you. Remember that you need the majority damage over either of the guards to get kill credit, or you'll have to summon the |cRXP_ENEMY_Matriach|r again. Loot it for its |cRXP_LOOT_Talon|r. This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him. <<tbc/wotlk
*|cRXP_WARN_The Matriarch IS slowable|r << tbc/wotlk
.goto Nagrand,61.57,66.52,0
.goto Nagrand,57.09,70.21
.complete 10111,2 
.unitscan Windroc Matriarch
step
.goto Nagrand,61.68,67.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
.turnin 10111 >> Turn in Bring Me The Egg!
.target Wazat
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#completewith CorkiC
>>Kill |cRXP_ENEMY_Boulderfist Ogres|r
.complete 9921,1 

.complete 9921,2 

step
.goto Nagrand,72.53,70.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corki|r
.accept 9923 >> Accept HELP!
.target Corki
step
#loop
.line Nagrand,72.24,70.14,73.43,71.66,74.64,71.55,73.99,70.78,72.45,67.91,72.24,70.14,72.45,67.91,75.82,68.49,75.56,64.67,76.17,62.47,78.16,58.99,76.17,62.47,73.67,62.37,74.25,64.80,75.82,68.49,72.45,67.91
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,73.43,71.66,50,0
.goto Nagrand,74.64,71.55,50,0
.goto Nagrand,73.99,70.78,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,75.56,64.67,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,78.16,58.99,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,73.67,62.37,50,0
.goto Nagrand,74.25,64.80,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,72.45,67.91,50,0
>>Kill |cRXP_ENEMY_Boulderfist Ogres|r. Loot them for the |cRXP_LOOT_Boulderfist Key|r
.collect 25490,1,9923,1 
.mob Boulderfist Crusher
.mob Boulderfist Mystic
step
#label CorkiC
.goto Nagrand,72.53,70.74
>>Click on |cRXP_FRIENDLY_Corki's|r Cage
.complete 9923,1 
.target Corki
step
#loop
.line Nagrand,72.24,70.14,73.43,71.66,74.64,71.55,73.99,70.78,72.45,67.91,72.24,70.14,72.45,67.91,75.82,68.49,75.56,64.67,76.17,62.47,78.16,58.99,76.17,62.47,73.67,62.37,74.25,64.80,75.82,68.49,72.45,67.91
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,73.43,71.66,50,0
.goto Nagrand,74.64,71.55,50,0
.goto Nagrand,73.99,70.78,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,75.56,64.67,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,78.16,58.99,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,73.67,62.37,50,0
.goto Nagrand,74.25,64.80,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,72.45,67.91,50,0
>>Kill |cRXP_ENEMY_Boulderfist Ogres|r
.complete 9921,1 
.mob +Boulderfist Crusher
.complete 9921,2 
.mob +Boulderfist Mystic
step
#optional
#completewith Throne3
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
.use 24467 >> Use the |T134813:0|t[Living Fire] in your bags on the Huts in Windyreed Village
.complete 9805,4 
.goto Nagrand,72.74,54.68
.complete 9805,3 
.goto Nagrand,71.22,53.24
.complete 9805,2 
.goto Nagrand,70.75,51.11
.complete 9805,1 
.goto Nagrand,72.38,50.39
step
#label Saved3
#completewith Safari3
>>Sometimes |cRXP_ENEMY_Gankly|r can appear at the Safari. This is a rare event
>>Kill |cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristen Dipswitch|r
.accept 9897 >> Accept I'm Saved!
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#requires Saved3
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
.turnin 9897 >> Turn in I'm Saved!
.goto Nagrand,71.38,40.62
.target Harold Lane
step
#label Safari3
>>Return to Nesingwary's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r, |cRXP_FRIENDLY_Hemet Nesingwary|r and |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
.turnin 9858 >>Turn in Talbuk Mastery
.accept 9859 >>Accept Talbuk Mastery
.target +Harold Lane
.goto Nagrand,71.38,40.62
.turnin 9850 >>Turn in Clefthoof Mastery
.accept 9851 >>Accept Clefthoof Mastery
.target +Hemet Nesingwary
.goto Nagrand,71.52,40.82
.turnin 9855 >> Turn in Windroc Mastery
.accept 9856 >> Accept Windroc Mastery
.goto Nagrand,71.57,40.52
.target +Shado 'Fitz' Farstrider
step
#questguide << !tbc
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.turnin 9821 >>Turn in Eating Damnation
.accept 9849 >>Accept Shattering the Veil
.unitscan Gordawg
step << !tbc
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.turnin 9821 >>Turn in Eating Damnation
.unitscan Gordawg
step
#label Throne3
.goto Nagrand,60.81,22.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
.turnin 9805 >>Turn in Blessing of Incineratus
.accept 9810 >>Accept The Spirit Polluted
.target Elementalist Lo'ap
step
#completewith Telaar3
.hs >> Hearth to Telaar
step
#sticky
#label caravan1
.waypoint Nagrand,53.69,68.70,40,0
.waypoint Nagrand,54.01,69.11,40,0
.waypoint Nagrand,54.33,70.32,40,0
.waypoint Nagrand,54.75,70.41,40,0
.waypoint Nagrand,54.97,70.91,40,0
.waypoint Nagrand,55.30,71.42,40,0
.waypoint Nagrand,55.70,72.60,40,0
.waypoint Nagrand,55.61,73.18,40,0
.waypoint Nagrand,54.71,73.30,40,0
.waypoint Nagrand,54.53,73.66,40,0
.waypoint Nagrand,54.53,72.64,40,0
.waypoint Nagrand,54.30,72.28,40,0
.waypoint Nagrand,53.71,72.24,40,0
.waypoint Nagrand,53.52,71.94,40,0
.waypoint Nagrand,53.82,71.30,40,0
.waypoint Nagrand,53.42,70.82,40,0
.waypoint Nagrand,52.93,70.80,40,0
.waypoint Nagrand,53.16,70.24,40,0
.waypoint Nagrand,53.56,70.43,40,0
.waypoint Nagrand,54.10,69.56,40,0
.waypoint Nagrand,54.03,69.16,40,0
.waypoint Nagrand,53.69,68.70,40,0
.line Nagrand,53.69,68.70,54.03,69.16,54.10,69.56,53.56,70.43,53.16,70.24,52.93,70.80,53.42,70.82,53.82,71.30,53.52,71.94,53.71,72.24,54.30,72.28,54.53,72.64,54.53,73.66,54.71,73.30,55.61,73.18,55.70,72.60,55.30,71.42,54.97,70.91,54.75,70.41,54.33,70.32,54.01,69.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kima|r. She patrols counter-clockwise around Telaar
.accept 9956 >> Accept The Ravaged Caravan
.accept 9982 >> Accept He Called Himself Altruis...
.unitscan Huntress Kima
.xp <66,1
step
#label kima2
#optional
#requires caravan1
#sticky
.waypoint Nagrand,53.69,68.70,40,0
.waypoint Nagrand,54.01,69.11,40,0
.waypoint Nagrand,54.33,70.32,40,0
.waypoint Nagrand,54.75,70.41,40,0
.waypoint Nagrand,54.97,70.91,40,0
.waypoint Nagrand,55.30,71.42,40,0
.waypoint Nagrand,55.70,72.60,40,0
.waypoint Nagrand,55.61,73.18,40,0
.waypoint Nagrand,54.71,73.30,40,0
.waypoint Nagrand,54.53,73.66,40,0
.waypoint Nagrand,54.53,72.64,40,0
.waypoint Nagrand,54.30,72.28,40,0
.waypoint Nagrand,53.71,72.24,40,0
.waypoint Nagrand,53.52,71.94,40,0
.waypoint Nagrand,53.82,71.30,40,0
.waypoint Nagrand,53.42,70.82,40,0
.waypoint Nagrand,52.93,70.80,40,0
.waypoint Nagrand,53.16,70.24,40,0
.waypoint Nagrand,53.56,70.43,40,0
.waypoint Nagrand,54.10,69.56,40,0
.waypoint Nagrand,54.03,69.16,40,0
.waypoint Nagrand,53.69,68.70,40,0
.line Nagrand,53.69,68.70,54.03,69.16,54.10,69.56,53.56,70.43,53.16,70.24,52.93,70.80,53.42,70.82,53.82,71.30,53.52,71.94,53.71,72.24,54.30,72.28,54.53,72.64,54.53,73.66,54.71,73.30,55.61,73.18,55.70,72.60,55.30,71.42,54.97,70.91,54.75,70.41,54.33,70.32,54.01,69.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kima|r. She patrols counter-clockwise around Telaar
.accept 9956 >> Accept The Ravaged Caravan
.unitscan Huntress Kima
step
#label Telaar3
.goto 1951/530,7278.200,-2618.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mo'mor the Breaker|r
.target Mo'mor the Breaker
.turnin 9921 >>Turn in The Ruins of Burning Blade
.accept 9922 >>Accept The Twin Clefts of Nagrand
step
.goto 1951/530,7231.100,-2489.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
.target Arechron
.turnin 9923 >>Turn in HELP!
.accept 9924 >>Accept Corki's Gone Missing Again!
step
#requires kima2
.goto Nagrand,51.11,69.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Consortium Recruiter|r
.accept 9913 >>Accept The Consortium Needs You!
.target Consortium Recruiter
step
#optional
#completewith Corki2
.goto Nagrand,40.0,30.0,0
.goto Nagrand,50.0,56.0,0
>>Kill |cRXP_ENEMY_Boulderfist Warriors|r and |cRXP_ENEMY_Mages|r
.complete 9922,1 
.mob +Boulderfist Warrior
.complete 9922,2 
.mob +Boulderfist Mage
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Boulderfist Warriors|r and |cRXP_ENEMY_Mages|r. Loot them for the |cRXP_LOOT_Cleft Key|r
.collect 25509,1,9924,1 
.mob Boulderfist Warrior
.mob Boulderfist Mage
step
#loop
.goto Nagrand,44.87,49.83,60,0
.goto Nagrand,40.15,46.19,60,0
.goto Nagrand,39.99,37.46,60,0
.goto Nagrand,42.11,37.80,60,0
.goto Nagrand,45.28,42.85,60,0
.goto Nagrand,45.28,42.85,0
>>Kill |cRXP_ENEMY_Muck Spawns|r. Loot them for their |cRXP_LOOT_Cores|r
.complete 9815,1 
.mob Muck Spawn
step
#loop
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,40.16,29.45,0
>>Kill |cRXP_ENEMY_Boulderfist Warriors|r and |cRXP_ENEMY_Mages|r. Loot them for the |cRXP_LOOT_Cleft Key|r
.collect 25509,1,9924,1 
.mob Boulderfist Warrior
.mob Boulderfist Mage
step
#label Corki2
.goto Nagrand,39.25,27.43
>>Click on |cRXP_FRIENDLY_Corki's|r Cage inside the Cave
.complete 9924,1 
.target Corki
step
#loop
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,40.16,29.45,0
>>Kill |cRXP_ENEMY_Boulderfist Warriors|r and |cRXP_ENEMY_Mages|r
.complete 9922,1 
.mob +Boulderfist Warrior
.complete 9922,2 
.mob +Boulderfist Mage
step
#questguide << !tbc
#optional
#completewith Beaks
.goto Nagrand,35.2,61.2,0
>>Kill |cRXP_ENEMY_Aged Clefthoofs|r. Loot them for their |cRXP_LOOT_Blubber|r
.complete 10252,3 
.isOnQuest 10252
.mob Aged Clefthoof
step
#questguide << !tbc
#optional
#completewith next
>>Kill |cRXP_ENEMY_Greater Windrocs|r. Loot them for their |cRXP_LOOT_Beak|r
.complete 10252,2 
.isOnQuest 10252
.mob Greater Windroc
step
#loop
.line Nagrand,32.66,24.25,33.01,20.84,34.16,20.04,35.46,19.31,36.93,20.77,35.87,23.93,33.32,27.93,31.32,30.74,32.95,28.13,32.66,26.83,32.66,24.25
.goto Nagrand,32.66,26.83,60,0
.goto Nagrand,32.95,28.13,60,0
.goto Nagrand,31.32,30.74,60,0
.goto Nagrand,33.32,27.93,60,0
.goto Nagrand,35.87,23.93,60,0
.goto Nagrand,36.93,20.77,60,0
.goto Nagrand,35.46,19.31,60,0
.goto Nagrand,34.16,20.04,60,0
.goto Nagrand,33.01,20.84,60,0
.goto Nagrand,32.66,24.25,60,0
>>Kill |cRXP_ENEMY_Gutripper|r. Loot him for his |cRXP_LOOT_Eye|r. He patrols around clockwise and may be too high to pull at times. He runs VERY fast.
>>This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.<< tbc/wotlk
.complete 9856,1 
.unitscan Gutripper
step
#questguide << !tbc
#label Beaks
#loop
.line Nagrand,35.97,29.37,35.71,18.67,32.69,22.30,33.39,26.11,30.88,32.97
.goto Nagrand,35.97,29.37,55,0
.goto Nagrand,35.71,18.67,55,0
.goto Nagrand,32.69,22.30,55,0
.goto Nagrand,33.39,26.11,55,0
.goto Nagrand,30.88,32.97,55,0
>>Kill |cRXP_ENEMY_Greater Windrocs|r. Loot them for their |cRXP_LOOT_Beak|r
.complete 10252,2 
.isOnQuest 10252
.mob Greater Windroc
step
#optional
#completewith Murkblood
.use 24560 >>Use the |T135432:0|t[Torch of Liquid Fire] in your bags on Villager Corpses
.complete 9874,1 
.target Sunspring Villager
step
#optional
#completewith StayCaptive
.goto Nagrand,33.2,46.6,0
>>Kill |cRXP_ENEMY_Murkblood Putrefiers|r, |cRXP_ENEMY_Scavengers|r and |cRXP_ENEMY_Raiders|r
.complete 9862,1 
.mob +Murkblood Putrifier
.complete 9878,1 
.mob +Murkblood Scavenger
.complete 9878,2 
.mob +Murkblood Raider
step
.goto Nagrand,30.83,42.36
>>Kill |cRXP_ENEMY_Ortor of Murkblood|r
.complete 9873,1 
.mob Ortor of Murkblood
step
.goto Nagrand,33.19,42.30
>>Clear all the mobs around the hut and make sure you're at full health/mana before talking to the |cRXP_FRIENDLY_Kurenai Captive|r inside << !Rogue !Warrior !DK
>>Clear all the mobs around the hut and make sure you're at full health before talking to the |cRXP_FRIENDLY_Kurenai Captive|r inside << Rogue/Warrior/DK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Kurenai Captive|r
.accept 9879 >> Accept The Totem of Kar'dash
.target Kurenai Captive
step
#label StayCaptive
.goto Nagrand,32.37,40.04,50,0
.goto Nagrand,31.57,38.77
>>Escort the |cRXP_FRIENDLY_Kurenai Captive|r. Be ready with cooldowns for an ambush close to the fork in the road
.complete 9879,1 
.target Kurenai Captive
step
#label Murkblood
>>Kill |cRXP_ENEMY_Murkblood Putrefiers|r, |cRXP_ENEMY_Scavengers|r and |cRXP_ENEMY_Raiders|r
.complete 9862,1 
.mob +Murkblood Putrifier
.goto Nagrand,31.49,46.91,50,0
.goto Nagrand,32.98,46.84,50,0
.goto Nagrand,33.98,47.50,50,0
.goto Nagrand,34.28,45.97,50,0
.goto Nagrand,33.49,43.25,50,0
.goto Nagrand,32.24,43.46
.complete 9878,2 
.mob +Murkblood Raider
.goto Nagrand,31.48,42.47,50,0
.goto Nagrand,31.14,43.33,50,0
.goto Nagrand,32.10,46.26,50,0
.goto Nagrand,32.77,45.08,50,0
.goto Nagrand,33.31,42.50,50,0
.goto Nagrand,32.24,43.46
.complete 9878,1 
.mob +Murkblood Scavenger
.goto Nagrand,32.20,45.33,50,0
.goto Nagrand,33.31,44.25,50,0
.goto Nagrand,32.84,42.59,50,0
.goto Nagrand,33.23,40.93,50,0
.goto Nagrand,31.58,39.66,50,0
.goto Nagrand,30.66,41.29,50,0
.goto Nagrand,31.14,41.52,50,0
.goto Nagrand,32.24,43.46
step
#optional
#completewith Surgers
.goto Nagrand,33.17,48.36,50,0
.use 24560 >>Use the |T135432:0|t[Torch of Liquid Fire] in your bags on Villager Corpses
.complete 9874,1 
.target Sunspring Villager
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Lake Surgers|r << !Mage
>>Kill |cRXP_ENEMY_Lake Surgers|r. Be careful as they are immune to frost << Mage
.complete 9810,2 
.mob Lake Surger
step
>>Kill |cRXP_ENEMY_Watoosun's Polluted Essence|r
.complete 9810,1 
.goto Nagrand,33.03,50.86
.mob Watoosun's Polluted Essence
step
#label Surgers
.goto Nagrand,30.98,50.56,60,0
.goto Nagrand,33.23,48.87,60,0
.goto Nagrand,35.17,46.01,60,0
.goto Nagrand,36.91,46.72,60,0
.goto Nagrand,33.26,54.42,60,0
.goto Nagrand,30.98,50.56
>>Kill |cRXP_ENEMY_Lake Surgers|r << !Mage
>>Kill |cRXP_ENEMY_Lake Surgers|r. Be careful as they are immune to frost << Mage
.complete 9810,2 
.mob Lake Surger
step
.goto Nagrand,33.17,48.36,50,0
.goto Nagrand,34.52,47.21,50,0
.goto Nagrand,34.96,46.15
.use 24560 >>Use the |T135432:0|t[Torch of Liquid Fire] in your bags on Villager Corpses
.complete 9874,1 
.target Sunspring Villager
step
#optional
#completewith next
.line Nagrand,26.34,51.07,25.93,53.93,25.27,51.74,24.45,50.91,23.69,49.61,24.47,49.04,23.93,48.94,24.36,46.98,23.77,44.47,25.33,41.39,25.72,40.82,26.35,39.23,28.22,38.16,28.35,37.22,28.12,35.92,29.35,34.24,30.07,34.90,30.64,35.79,30.65,37.70,28.90,38.17,28.49,39.43,27.84,42.01,27.25,45.30,26.91,46.66,26.65,48.17,26.34,51.07
>>Kill |cRXP_ENEMY_Bach'lor|r. Loot him for his |cRXP_LOOT_Hoof|r. He patrols around counter-clockwise.
>>This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.<< tbc/wotlk
.complete 9859,1 
.unitscan Bach'lor
step
.goto Nagrand,27.33,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kima|r
.turnin 9982 >> Turn in He Called Himself Altruis...
.isOnQuest 9982
.target Altruis the Sufferer
step
#questguide << tbc/wotlk
.goto Nagrand,27.33,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
.accept 9991 >> Accept Surveying the Land
.timer 135,Surveying the Land RP
.target Altruis the Sufferer
.xp <66,1
step
#questguide << tbc/wotlk
.goto Nagrand,27.33,43.09
>>Wait out the flight
.turnin 9991 >> Turn in Surveying the Land
.accept 9999 >> Accept Buying Time
.target Altruis the Sufferer
.xp <66,1
step
#questguide << tbc/wotlk
#loop
.goto 1951/530,8987.400,-1346.100,60,0
.goto 1951/530,8975.500,-1357.300,60,0
.goto 1951/530,8853.800,-1347.800,60,0
.goto 1951/530,8987.400,-1346.100,0
.goto 1951/530,8975.500,-1357.300,0
.goto 1951/530,8853.800,-1347.800,0
>>Kill |cRXP_ENEMY_Gan'arg Tinkerer|r, |cRXP_ENEMY_Mo'arg Engineer|r and |cRXP_ENEMY_Felguard Legionnaire|r
.complete 9999,3 
.mob +Gan'arg Tinkerer
.complete 9999,2 
.mob +Mo'arg Engineer
.complete 9999,1 
.mob +Felguard Legionnaire
.xp <66,1
step
#questguide << tbc/wotlk
.goto 1951/530,8785.601,-1543.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
.target Altruis the Sufferer
.turnin 9999 >>Turn in Buying Time
.accept 10001 >>Accept The Master Planner
.xp <66,1
step
#questguide << tbc/wotlk
.goto 1951/530,8990.500,-1234.000
>>Kill |cRXP_ENEMY_The Master Planner|r and loot his |cRXP_LOOT_Blueprints|r
.complete 10001,1 
.xp <66,1
.mob Mo'arg Master Planner
step
#questguide << tbc/wotlk
.goto 1951/530,8785.500,-1545.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
.target Altruis the Sufferer
.turnin 10001 >>Turn in The Master Planner
.xp <66,1
step
#questguide << !tbc
#optional
#completewith Banthar
.goto Nagrand,35.2,61.2,0
>>Kill |cRXP_ENEMY_Aged Clefthoofs|r. Loot them for their |cRXP_LOOT_Blubber|r
.complete 10252,3 
.isOnQuest 10252
.mob Aged Clefthoof
step
#questguide << !tbc
#optional
#completewith next
.goto Nagrand,24.37,41.81,0
>>Kill a |cRXP_ENEMY_Mountain Gronn|r. Loot it for its |cRXP_LOOT_Eyeball|r
.complete 10252,1 
.isOnQuest 10252
.unitscan Mountain Gronn
step
#label Bachlor
#loop
.goto Nagrand,26.34,51.07,60,0
.goto Nagrand,25.93,53.93,60,0
.goto Nagrand,25.27,51.74,60,0
.goto Nagrand,24.45,50.91,60,0
.goto Nagrand,23.69,49.61,60,0
.goto Nagrand,24.47,49.04,60,0
.goto Nagrand,23.93,48.94,60,0
.goto Nagrand,24.36,46.98,60,0
.goto Nagrand,23.77,44.47,60,0
.goto Nagrand,25.33,41.39,60,0
.goto Nagrand,25.72,40.82,60,0
.goto Nagrand,26.35,39.23,60,0
.goto Nagrand,28.22,38.16,60,0
.goto Nagrand,28.35,37.22,60,0
.goto Nagrand,28.12,35.92,60,0
.goto Nagrand,29.35,34.24,60,0
.goto Nagrand,30.07,34.90,60,0
.goto Nagrand,30.64,35.79,60,0
.goto Nagrand,30.65,37.70,60,0
.goto Nagrand,28.90,38.17,60,0
.goto Nagrand,28.49,39.43,60,0
.goto Nagrand,27.84,42.01,60,0
.goto Nagrand,27.25,45.30,60,0
.goto Nagrand,26.91,46.66,60,0
.goto Nagrand,26.65,48.17,60,0
.line Nagrand,26.34,51.07,25.93,53.93,25.27,51.74,24.45,50.91,23.69,49.61,24.47,49.04,23.93,48.94,24.36,46.98,23.77,44.47,25.33,41.39,25.72,40.82,26.35,39.23,28.22,38.16,28.35,37.22,28.12,35.92,29.35,34.24,30.07,34.90,30.64,35.79,30.65,37.70,28.90,38.17,28.49,39.43,27.84,42.01,27.25,45.30,26.91,46.66,26.65,48.17,26.34,51.07
>>Kill |cRXP_ENEMY_Bach'lor|r. Loot him for his |cRXP_LOOT_Hoof|r. He patrols around counter-clockwise.
>>This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.<<tbc/wotlk
.complete 9859,1 
.unitscan Bach'lor
step
#questguide << !tbc
.goto Nagrand,24.37,41.81
>>Kill a |cRXP_ENEMY_Mountain Gronn|r. Loot it for its |cRXP_LOOT_Eyeball|r
.complete 10252,1 
.isOnQuest 10252
.unitscan Mountain Gronn
step
.goto 1951/530,8540.400,-2049.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadrek|r
.target Shadrek
.accept 9914 >>Accept A Head Full of Ivory
.turnin 9914 >>Turn in A Head Full of Ivory
.itemcount 25463,3
step
.goto 1951/530,8562.300,-2085.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
.target Gezhe
.turnin 9913 >>Turn in The Consortium Needs You!
.accept 9882 >>Accept Stealing from Thieves
step
.goto 1951/530,8594.900,-2099.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerid|r
.target Zerid
.accept 9900 >>Accept Gava'xi
.accept 9925 >>Accept Matters of Security
step
#optional
#completewith Voidspawns
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
.collect 25463,3,9914,1 
.unitscan Wild Elekk
step
#optional
#completewith Gava
>>Kill |cRXP_ENEMY_Raiders|r. Loot them for their |cRXP_LOOT_Crystals|r. The |cRXP_LOOT_Crystals|r can also be found on the ground
>>Kill |cRXP_ENEMY_Voidspawns|r
.complete 9882,1 
.mob +Vir'aani Raider
.complete 9925,1 
.mob +Voidspawn
step
#questguide << !tbc
.goto Nagrand,25.84,73.34,60,0
.goto Nagrand,27.73,74.09,60,0
.goto Nagrand,28.36,78.70,60,0
.goto Nagrand,32.07,81.44,60,0
.goto Nagrand,40.34,84.18
.use 24501 >>Use |T135242:0|t[Gordawg's Boulder] on |cRXP_ENEMY_Shattered Rumblers|r to spawn the |cRXP_ENEMY_Minions of Gurok|r. Kill them. You can use the |T135242:0|tBoulder while moving
.complete 9849,1 
.mob Shattered Rumbler
.mob Minion of Gurok
step
#label Gava
.goto Nagrand,42.39,73.49,50,0
.goto Nagrand,43.65,74.59,50,0
.goto Nagrand,43.47,72.86,50,0
.goto Nagrand,42.45,72.32,50,0
.goto Nagrand,41.53,71.33
>>Kill |cRXP_ENEMY_Gava'xi|r. He patrols around from the little cliff to the crystal slightly north of it
.complete 9900,1 
.unitscan Gava'xi
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Voidspawns|r
.complete 9925,1 
.mob Voidspawn
step
#loop
.goto Nagrand,41.61,70.68,50,0
.goto Nagrand,36.88,66.96,50,0
.goto Nagrand,34.53,62.93,60,0
.goto Nagrand,30.53,76.12,60,0
.goto Nagrand,41.61,70.68,0
.goto Nagrand,36.88,66.96,0
.goto Nagrand,34.53,62.93,0
.goto Nagrand,30.53,76.12,0
>>Kill |cRXP_ENEMY_Raiders|r. Loot them for their |cRXP_LOOT_Crystals|r. The |cRXP_LOOT_Crystals|r can also be found on the ground
.complete 9882,1 
.mob Vir'aani Raider
step
#label Voidspawns
#loop
.line Nagrand,30.51,66.79,32.23,69.85,31.75,74.99,36.51,77.38,38.03,79.58,40.19,77.22,37.87,76.04,39.87,72.76,39.35,67.61,41.46,62.82,37.64,66.21,34.90,65.37,32.91,67.36,30.51,66.79
.goto Nagrand,30.51,66.79,60,0
.goto Nagrand,32.23,69.85,60,0
.goto Nagrand,31.75,74.99,60,0
.goto Nagrand,36.51,77.38,60,0
.goto Nagrand,38.03,79.58,60,0
.goto Nagrand,40.19,77.22,60,0
.goto Nagrand,37.87,76.04,60,0
.goto Nagrand,39.87,72.76,60,0
.goto Nagrand,39.35,67.61,60,0
.goto Nagrand,41.46,62.82,60,0
.goto Nagrand,37.64,66.21,60,0
.goto Nagrand,34.90,65.37,60,0
.goto Nagrand,32.91,67.36,60,0
.goto Nagrand,30.51,66.79,60,0
>>Kill |cRXP_ENEMY_Voidspawns|r
.complete 9925,1 
.mob Voidspawn
step
#optional
#completewith AerisL
>>Kill |cRXP_ENEMY_Banthar|r. Loot him for his |cRXP_LOOT_Horn|r. He patrols around.
>>This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.<<tbc/wotlk
.complete 9851,1 
.unitscan Banthar
step
#loop
.line Nagrand,44.13,76.74,35.70,58.91,29.60,61.89,33.11,77.90,44.13,76.74
.goto Nagrand,44.13,76.74,60,0
.goto Nagrand,35.70,58.91,60,0
.goto Nagrand,29.60,61.89,60,0
.goto Nagrand,33.11,77.90,60,0
.goto Nagrand,44.13,76.74,60,0
>>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for their |cRXP_LOOT_Tusks|r
>>|cRXP_WARN_Bull Elekks do NOT drop them!|r
.collect 25463,3,9914,1 
.unitscan Wild Elekk
step
#label AerisL
.goto 1951/530,8595.000,-2100.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerid|r
.target Zerid
.turnin 9900 >>Turn in Gava'xi
.turnin 9925 >>Turn in Matters of Security
step
.goto 1951/530,8563.800,-2086.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
.target Gezhe
.turnin 9882 >>Turn in Stealing from Thieves
step
.goto Nagrand,31.77,56.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadrek|r
.accept 9914 >>Accept A Head Full of Ivory
.turnin 9914 >>Turn in A Head Full of Ivory
.target Shadrek
step
#loop
.line Nagrand,30.88,63.61,32.53,61.08,33.99,60.44,36.31,58.76,37.39,58.63,38.67,59.52,40.46,60.74,44.52,61.64,46.20,63.09,46.71,66.40,46.31,67.69,45.46,68.24,43.63,68.35,43.05,67.77,42.75,66.72,42.56,64.36,41.98,62.64,40.82,61.30,38.67,59.52
.goto Nagrand,30.88,63.61,50,0
.goto Nagrand,32.53,61.08,50,0
.goto Nagrand,33.99,60.44,50,0
.goto Nagrand,36.31,58.76,50,0
.goto Nagrand,37.39,58.63,50,0
.goto Nagrand,38.67,59.52,50,0
.goto Nagrand,40.46,60.74,50,0
.goto Nagrand,44.52,61.64,50,0
.goto Nagrand,46.20,63.09,50,0
.goto Nagrand,46.71,66.40,50,0
.goto Nagrand,46.31,67.69,50,0
.goto Nagrand,45.46,68.24,50,0
.goto Nagrand,43.63,68.35,50,0
.goto Nagrand,43.05,67.77,50,0
.goto Nagrand,42.75,66.72,50,0
.goto Nagrand,42.56,64.36,50,0
.goto Nagrand,41.98,62.64,50,0
.goto Nagrand,40.82,61.30,50,0
.goto Nagrand,38.67,59.52,50,0
>>Kill |cRXP_ENEMY_Banthar|r. Loot him for his |cRXP_LOOT_Horn|r. He patrols around.
>>This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.<<tbc/wotlk
.complete 9851,1 
.unitscan Banthar
step
#questguide << !tbc
#loop
.line Nagrand,30.88,63.61,32.53,61.08,33.99,60.44,36.31,58.76,37.39,58.63,38.67,59.52,40.46,60.74,44.52,61.64,46.20,63.09,46.71,66.40,46.31,67.69,45.46,68.24,43.63,68.35,43.05,67.77,42.75,66.72,42.56,64.36,41.98,62.64,40.82,61.30,38.67,59.52
.goto Nagrand,30.88,63.61,50,0
.goto Nagrand,32.53,61.08,50,0
.goto Nagrand,33.99,60.44,50,0
.goto Nagrand,36.31,58.76,50,0
.goto Nagrand,37.39,58.63,50,0
.goto Nagrand,38.67,59.52,50,0
.goto Nagrand,40.46,60.74,50,0
.goto Nagrand,44.52,61.64,50,0
.goto Nagrand,46.20,63.09,50,0
.goto Nagrand,46.71,66.40,50,0
.goto Nagrand,46.31,67.69,50,0
.goto Nagrand,45.46,68.24,50,0
.goto Nagrand,43.63,68.35,50,0
.goto Nagrand,43.05,67.77,50,0
.goto Nagrand,42.75,66.72,50,0
.goto Nagrand,42.56,64.36,50,0
.goto Nagrand,41.98,62.64,50,0
.goto Nagrand,40.82,61.30,50,0
.goto Nagrand,38.67,59.52,50,0
>>Kill |cRXP_ENEMY_Aged Clefthoofs|r. Loot them for their |cRXP_LOOT_Blubber|r
.complete 10252,3 
.isOnQuest 10252
.unitscan Aged Clefthoof
step
#questguide << !tbc
.goto Nagrand,51.82,56.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r on the bottom floor
.turnin 10252 >> Turn in Vision of the Dead
.isQuestComplete 10252
.target Nitrin the Learned
step
#questguide << !tbc
#sticky
#optional
.abandon 10252 >> Abandon Vision of the Dead
step << Shaman
#completewith next
.hs >> Hearth to Telaar
step
#sticky
#label problem
.goto 1951/530,7286.700,-2622.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Poli'lukluk the Wiser|r
.target Poli'lukluk the Wiser
.turnin 9878 >>Turn in Solving the Problem
step
.goto 1951/530,7278.000,-2618.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mo'mor the Breaker
.turnin 9922 >>Turn in The Twin Clefts of Nagrand
.accept 10108 >>Accept Diplomatic Measures
.target Mo'mor the Breaker
step
.goto 1951/530,7286.000,-2612.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Otonbu the Sage|r
.target Otonbu the Sage
.turnin 9874 >>Turn in Stopping the Spread
step
#requires problem
.goto 1951/530,7270.600,-2568.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Moi'bff Jill|r
.target Warden Moi'bff Jill
.accept 10476 >>Accept Fierce Enemies
.turnin 10476 >>Turn in Fierce Enemies
.itemcount 25433,10 
step
.goto 1951/530,7231.500,-2489.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
.target Arechron
.turnin 9873 >>Turn in Ortor My Old Friend...
.turnin 9924 >>Turn in Corki's Gone Missing Again!
.turnin 9879 >>Turn in The Totem of Kar'dash
.accept 9954 >>Accept Corki's Ransom
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
.complete 10108,1 
.skipgossip 18261,1
.target Lantresor of the Blade
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
.turnin 10108 >> Turn in Diplomatic Measures
.accept 9928 >> Accept Armaments for Deception
.accept 9927 >> Accept Ruthless Cunning
.target Lantresor of the Blade
step
#optional
#aldor
#completewith ksf1
>>Kill |cRXP_ENEMY_Kil'sorrow|r orcs. Loot them for their |cRXP_LOOT_Marks of Kil'jaeden|r, save them for a quest later
.collect 29425,10,10325,1 
step
#optional
#completewith next
.goto Nagrand,70.51,79.79,0
.use 25552 >>Kill |cRXP_ENEMY_Orcs|r. Use the |T132484:0|t[Warmaul Ogre Banner] in your bags on their corpses
>>Loot the |cRXP_PICK_Wooden Boxes|r on the ground
.complete 9936,2 
.complete 9927,1 
.complete 9928,1 
.mob Kil'sorrow Spellbinder
.mob Kil'sorrow Cultist
.mob Kil'sorrow Deathsworn
.mob Kil'sorrow Invader
.mob Kil'sorrow Ritualist
.mob Kil'sorrow Agent
step
.goto Nagrand,70.98,81.48,30,0
.goto Nagrand,71.16,82.36
>>Kill |cRXP_ENEMY_Giselda|r inside the Fortress
.complete 9936,1 
.unitscan Giselda the Crone
step
#label ksf1
#loop
.line Nagrand,71.70,80.65,72.14,82.16,71.70,79.25,70.26,79.11,69.46,79.66,68.34,82.79,69.64,81.65,70.83,80.61,71.70,80.65
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.use 25552 >>Kill |cRXP_ENEMY_Orcs|r. Use the |T132484:0|t[Warmaul Ogre Banner] in your bags on their corpses
>>Loot the wooden boxes on the ground
.complete 9936,2 
.complete 9927,1 
.complete 9928,1 
.mob Kil'sorrow Spellbinder
.mob Kil'sorrow Cultist
.mob Kil'sorrow Deathsworn
.mob Kil'sorrow Invader
.mob Kil'sorrow Ritualist
.mob Kil'sorrow Agent
step
#aldor
#loop
.line Nagrand,71.70,80.65,72.14,82.16,71.70,79.25,70.26,79.11,69.46,79.66,68.34,82.79,69.64,81.65,70.83,80.61,71.70,80.65
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
>>Kill |cRXP_ENEMY_Kil'sorrow|r orcs. Loot them for their |cRXP_LOOT_Marks of Kil'jaeden|r, save them for a quest later
.collect 29425,10,10325,1 
.mob Kil'sorrow Spellbinder
.mob Kil'sorrow Cultist
.mob Kil'sorrow Deathsworn
.mob Kil'sorrow Invader
.mob Kil'sorrow Ritualist
.mob Kil'sorrow Agent
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
.turnin 9928 >>Turn in Armaments for Deception
.turnin 9927 >>Turn in Ruthless Cunning
.accept 9931 >>Accept Returning the Favor
.accept 9932 >>Accept Body of Evidence
.target Lantresor of the Blade
step
#sticky
#hidewindow
#label saved4a
#completewith Safari4
.subzone 3673 >> 1
step
#requires saved4a
#label Saved4
#completewith Safari4
>>Sometimes |cRXP_ENEMY_Gankly|r can appear at the Safari. This is a rare event
>>Kill |cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristen Dipswitch|r
.accept 9897 >> Accept I'm Saved!
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#requires Saved4
#completewith Safari4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
.turnin 9897 >> Turn in I'm Saved!
.goto Nagrand,71.38,40.62
.target Harold Lane
step
#sticky
#label talbuk3
.goto 1951/530,6350.300,-1455.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
.target Harold Lane
.turnin 9859 >>Turn in Talbuk Mastery
.isQuestComplete 9859
step
#sticky
#label windroc3
.goto 1951/530,6342.000,-1451.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
.target Shado 'Fitz' Farstrider
.turnin 9856 >>Turn in Windroc Mastery
.isQuestComplete 9856
step
.goto 1951/530,6343.300,-1461.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.target Hemet Nesingwary
.turnin 9851 >>Turn in Clefthoof Mastery
.isQuestComplete 9851
step
#requires windroc3
step
#requires talbuk3
#label Safari4
.goto Nagrand,71.52,40.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 9852 >>Accept The Ultimate Bloodsport
.isQuestTurnedIn 9856
.isQuestTurnedIn 9859
.isQuestTurnedIn 9851
.target Hemet Nesingwary
step
#optional
#questguide << !tbc
#completewith next
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.turnin 9849 >>Turn in Shattering the Veil
.isQuestComplete 9849


.unitscan Gordawg
step
.goto 1951/530,6937.200,-782.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
.target Elementalist Lo'ap
.turnin 9810 >> Turn in The Spirit Polluted
.turnin 9815 >>Turn in Muck Diving
step
.goto 1951/530,6952.800,-782.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
.target Elementalist Morgh
.turnin 9862 >>Turn in Murkblood Corrupters
step
#questguide << !tbc
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r patrolling clockwise at the Throne of the Elements
.turnin 9849 >>Turn in Shattering the Veil

.unitscan Gordawg
step
#optional
#completewith Zorbo
.use 25555 >>Kill |cRXP_ENEMY_Orcs|r. Use the |T132484:0|t[Kil'sorrow Banner] in your bags on their corpses
.complete 9940,2 
.mob +Warmaul Shaman
.complete 9940,3 
.complete 9931,1 
.mob +Warmaul Reaver
step
#completewith next
.goto Nagrand,46.57,24.40
.cast 32408 >> Use the |T133680:0|t[Damp Woolen Blanket] in your bags at the Funeral Pyre. Kill any |cRXP_ENEMY_Ogres|r the |cRXP_FRIENDLY_Saboteurs|r are attacking
.timer 62,Body of Evidence RP
.use 25658 

step
.goto Nagrand,46.57,24.40
>>Kill |cRXP_ENEMY_Ogres|r until the objective completes
.complete 9932,1 
step
#label Zorbo
.goto Nagrand,46.21,18.79,30,0
.goto Nagrand,46.49,18.18
>>Kill |cRXP_ENEMY_Zorbo|r
.complete 9940,1 
.mob Zorbo the Advisor
step
.goto Nagrand,49.22,21.66,50,0
.goto Nagrand,48.24,23.60,50,0
.goto Nagrand,46.59,24.43,50,0
.goto Nagrand,45.44,22.01,50,0
.goto Nagrand,43.65,21.51,50,0
.goto Nagrand,42.54,22.55
.use 25555 >>Kill |cRXP_ENEMY_Orcs|r. Use the |T132484:0|t[Kil'sorrow Banner] in your bags on their corpses
.complete 9940,2 
.mob +Warmaul Shaman
.complete 9940,3 
.complete 9931,1 
.mob +Warmaul Reaver
step
.goto Nagrand,42.77,20.73
>>Look for a group for The Ring of Blood questline. There are 6 elite quests that give a LOT of fast xp and a weapon that'll last you to 70. Only accept this when your party is ready and on the same quest progression as you. (Auto-accept is disabled for this questline). Skip this step if you can't find a group for it
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
.accept 9962,1 >> Accept The Ring of Blood: Brokentoe
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>Kill |cRXP_ENEMY_Brokentoe|r in the Ring of Blood
.complete 9962,1 
.isOnQuest 9962
.mob Brokentoe
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
.turnin 9962 >> Turn in The Ring of Blood: Brokentoe
.isQuestComplete 9962
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
.accept 9967,1 >> Accept The Ring of Blood: The Blue Brothers
.isQuestTurnedIn 9962
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>Kill the |cRXP_ENEMY_Blue Brothers|r in the Ring of Blood
.complete 9967,1 
.isOnQuest 9967
.mob Murkblood Twin
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
.turnin 9967 >> Turn in The Ring of Blood: The Blue Brothers
.isQuestComplete 9967
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
.accept 9970,1 >> Accept The Ring of Blood: Rokdar the Sundered Lord
.isQuestTurnedIn 9967
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>Kill |cRXP_ENEMY_Rokdar the Sundered Lord|r in the Ring of Blood
.complete 9970,1 
.isOnQuest 9970
.mob Rokdar the Sundered Lord
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
.turnin 9970 >> Turn in The Ring of Blood: Rokdar the Sundered Lord
.isQuestComplete 9970
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
.accept 9972,1 >> Accept The Ring of Blood: Skra'gath
.isQuestTurnedIn 9970
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>Kill |cRXP_ENEMY_Skra'gath|r in the Ring of Blood
.complete 9972,1 
.isOnQuest 9972
.mob Skra'gath
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
.turnin 9972 >> Turn in The Ring of Blood: Skra'gath
.isQuestComplete 9972
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
.accept 9973,1 >> Accept The Ring of Blood: The Warmaul Champion
.isQuestTurnedIn 9972
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>Kill |cRXP_ENEMY_The Warmaul Champion|r in the Ring of Blood
.complete 9973,1 
.isOnQuest 9973
.mob Warmaul Champion
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
.turnin 9973 >> Turn in The Ring of Blood: The Warmaul Champion
.isQuestComplete 9973
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
.accept 9977,1 >> Accept The Ring of Blood: The Final Challenge
.isQuestTurnedIn 9973
.target Gurgthock
step
.goto Nagrand,43.43,20.57
>>Kill |cRXP_ENEMY_Mogor|r in the Ring of Blood (twice)
.complete 9977,1 
.isOnQuest 9977
.mob Mogor
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
.turnin 9977 >> Turn in The Ring of Blood: The Final Challenge
.isQuestComplete 9977
.target Wodin the Troll-Servant
step
#completewith Corki4
.goto Nagrand,26.50,22.70,0
>>Loot the silver |cRXP_PICK_Supply Crates|r on the ground in the caves and outside
.complete 9956,1 
step
#completewith SupplyC
>>Kill |cRXP_ENEMY_Ogres|r. Loot them for their |cRXP_LOOT_Warbeads|r
.collect 25433,10,10476,1 
.mob Warmaul Brute
.mob Warmaul Warlock
step
#optional
#completewith next
.goto Nagrand,28.69,30.85,40,0
.goto Nagrand,25.93,28.93,40,0
.goto Nagrand,24.57,24.66,40 >> Take the path up to the top of the mountain
.skill riding,225,1
step
#label Corki4
.goto Nagrand,29.54,26.06
>>Go into the southern ogre cave atop the mountain.
>>|cRXP_FRIENDLY_Corki|r is guarded by an |cRXP_WARN_Elite Ogre|r, |cRXP_ENEMY_Bufferlo|r. You |cRXP_WARN_DO NOT|r have to kill |cRXP_ENEMY_Bufferlo|r. Just talk to |cRXP_FRIENDLY_Corki|r and run away<<tbc/wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corki|r
.turnin 9954 >> Turn in Corki's Ransom
.target Corki
step
#questguide << tbc/wotlk
.goto Nagrand,29.54,26.06
>>Go into the southern ogre cave atop the mountain.
>>|cRXP_FRIENDLY_Corki|r is guarded by an |cRXP_WARN_Elite Ogre|r, |cRXP_ENEMY_Bufferlo|r. You |cRXP_WARN_DO NOT|r have to kill |cRXP_ENEMY_Bufferlo|r. Just talk to |cRXP_FRIENDLY_Corki|r and run away<<tbc/wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corki|r
.accept 9955 >> Accept Cho'war the Pillager
.target Corki
step
#questguide << tbc/wotlk
#completewith next
.flygoto Nagrand,27.55,11.22,45 >> Fly up to the back entrance of the cave
step
#questguide << tbc/wotlk
.goto Nagrand,25.38,15.31,30,0
.goto Nagrand,26.23,15.61,30,0
.goto Nagrand,25.91,13.72
>>Kill |cRXP_ENEMY_Cho'war the Pillager|r. Loot him for his |cRXP_LOOT_Key|r. This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.
.collect 25648,1,9955,1 
.mob Cho'war the Pillager
step
#questguide << tbc/wotlk
#label Corki4
.goto Nagrand,29.54,26.06
>>Go into the southern ogre cave atop the mountain. Click on |cRXP_FRIENDLY_Corki's|r Cage.
>>|cRXP_FRIENDLY_Corki|r is guarded by an |cRXP_WARN_Elite Ogre|r, |cRXP_ENEMY_Bufferlo|r. You will have to kill or distract him in order to open the cage << tbc/wotlk
.complete 9955,1 
step
#label SupplyC
#loop
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,50,0
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,0
>>Loot the silver |cRXP_PICK_Supply Crates|r on the ground in the caves and outside
.complete 9956,1 
step
#loop
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,50,0
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,0
>>Kill |cRXP_ENEMY_Ogres|r. Loot them for their |cRXP_LOOT_Warbeads|r
.collect 25433,10,10476,1 
.mob Warmaul Brute
.mob Warmaul Warlock
step
#completewith next
.hs >> Hearth to Telaar
step
#sticky
#label HuntKima
.goto Nagrand,53.69,68.70,40,0
.goto Nagrand,54.01,69.11,40,0
.goto Nagrand,54.33,70.32,40,0
.goto Nagrand,54.75,70.41,40,0
.goto Nagrand,54.97,70.91,40,0
.goto Nagrand,55.30,71.42,40,0
.goto Nagrand,55.70,72.60,40,0
.goto Nagrand,55.61,73.18,40,0
.goto Nagrand,54.71,73.30,40,0
.goto Nagrand,54.53,73.66,40,0
.goto Nagrand,54.53,72.64,40,0
.goto Nagrand,54.30,72.28,40,0
.goto Nagrand,53.71,72.24,40,0
.goto Nagrand,53.52,71.94,40,0
.goto Nagrand,53.82,71.30,40,0
.goto Nagrand,53.42,70.82,40,0
.goto Nagrand,52.93,70.80,40,0
.goto Nagrand,53.16,70.24,40,0
.goto Nagrand,53.56,70.43,40,0
.goto Nagrand,54.10,69.56,40,0
.goto Nagrand,54.03,69.16,40,0
.goto Nagrand,53.69,68.70,40,0
.line Nagrand,53.69,68.70,54.03,69.16,54.10,69.56,53.56,70.43,53.16,70.24,52.93,70.80,53.42,70.82,53.82,71.30,53.52,71.94,53.71,72.24,54.30,72.28,54.53,72.64,54.53,73.66,54.71,73.30,55.61,73.18,55.70,72.60,55.30,71.42,54.97,70.91,54.75,70.41,54.33,70.32,54.01,69.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kima|r. She patrols counter-clockwise around Telaar
.turnin 9956 >> Turn in The Ravaged Caravan
.unitscan Huntress Kima
step
.goto 1951/530,7270.600,-2568.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Moi'bff Jill|r
.target Warden Moi'bff Jill
.accept 10476 >>Accept Fierce Enemies
.turnin 10476 >>Turn in Fierce Enemies
.turnin 9936 >>Turn in Wanted: Giselda the Crone
.turnin 9940 >>Turn in Wanted: Zorbo the Advisor
.accept 9938 >>Accept Wanted: Durn the Hungerer << !tbc !wotlk
step
#optional << tbc/wotlk
#requires HuntKima
.goto 1951/530,7230.800,-2489.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
.target Arechron
.turnin 9955 >>Turn in Cho'war the Pillager
.isQuestComplete 9955
step
>>Kill |cRXP_ENEMY_Tusker|r. Loot her for her |cRXP_LOOT_Heart|r
>>You can kite her back to Telaar if needed. She is NOT slowable, but moves at only about 110% movespeed. This quest is difficult. Find a group for her if needed. Skip this step if you're unable to find a group or solo her.<<tbc/wotlk
.goto Nagrand,44.50,65.24
.complete 9852,1 
.isOnQuest 9852
.mob Tusker
step << !tbc !wotlk
#loop
.goto Nagrand,46.6,61.4,60,0
.goto Nagrand,43.6,75.8,60,0
.goto Nagrand,34.4,78.0,60,0
.goto Nagrand,30.2,62.0,60,0
.goto Nagrand,40,60,90,0
.goto Nagrand,46.6,61.4,0
.goto Nagrand,43.6,75.8,0
.goto Nagrand,34.4,78.0,0
.goto Nagrand,30.2,62.0,0
.goto Nagrand,40,60,0
>>Kill |cRXP_ENEMY_Durn the Hungerer|r, he patrols around Oshu'gun
.complete 9938,1 
.mob Durn the Hungerer
step << Mage
#completewith next
.zone Shattrath City >> Teleport to Shattrath
.skill riding,<225,1
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
.turnin 9931 >> Turn in Returning the Favor
.turnin 9932 >> Turn in Body of Evidence
.accept 9933 >> Accept Message to Telaar
.target Lantresor of the Blade
step
#completewith next
.hs >> Hearth to Telaar
.cooldown item,6948,>2
step << !tbc !wotlk
.goto 1951/530,7270.600,-2569.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Moi'bff Jill|r
.target Warden Moi'bff Jill
.turnin 9938 >>Turn in Wanted: Durn the Hungerer
step
.goto Nagrand,55.48,68.70
>>Return to Telaar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
.turnin 9933 >> Turn in Message to Telaar
.target Arechron
step
#label Saved5
#completewith Safari5
>>Sometimes |cRXP_ENEMY_Gankly|r can appear at the Safari. This is a rare event
>>Kill |cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristen Dipswitch|r
.accept 9897 >> Accept I'm Saved!
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#requires Saved5
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
.turnin 9897 >> Turn in I'm Saved!
.goto Nagrand,71.38,40.62
.target Harold Lane
step
#label Safari5
.goto Nagrand,71.52,40.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 9852 >>Turn in The Ultimate Bloodsport
.isQuestComplete 9852
.target Hemet Nesingwary
step
#aldor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adyen the Lightwarden|r
.goto Shattrath City,30.72,34.63
.accept 10325 >> Accept Marks of Kil'jaeden
.turnin 10325 >> Turn in Marks of Kil'jaeden
.target Adyen the Lightwarden
.itemcount 29425,10
]]);

RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 65-67 Blade's Edge
#version 9

#next 67-69 Netherstorm << TBC
#next 67-67 Blade's Edge Turn-ins << !TBC
step << !tbc !wotlk
#xprate >1.59
#optional
.maxlevel 67,endOfTheGuide
step
#completewith next
.goto Shattrath City,64.05,41.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
.fly Telredor >> Fly to Telredor
.zoneskip Nagrand
.zoneskip Zangarmarsh
.skill riding,300,1
.target Nutral
step
#questguide << !tbc
.goto Zangarmarsh,68.3,49.4
>>Return to Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
.turnin 9801 >>Turn in Gathering the Reagents
.isQuestComplete 9801
.target Anchorite Ahuurn
step
#optional
#completewith Moonwhisper
.goto Shattrath City,64.05,41.12,-1
.goto Zangarmarsh,67.83,51.46,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r or |cRXP_FRIENDLY_Munci|r
>>|cRXP_WARN_The arrow will point you to the closest Flight Master|r
.fly Orebor Harborage >> Fly to Orebor Harborage
.skill riding,300,1
.target Nutral
.target Munci
step
.goto Zangarmarsh,41.21,28.68
>>Travel to Orebor Harborage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timothy Daniels|r
.accept 9794 >> Accept No Time for Curiosity
.maxlevel 66,bemend	<< !tbc
.target Timothy Daniels
step
#label Moonwhisper
.goto Blade's Edge Mountains,32.20,91.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Moonwhisper|r outside the tunnel entrance
.accept 10927 >> Accept Killing the Crawlers
.maxlevel 66,bemend	<< !tbc
.target Sentinel Moonwhisper
step
.goto Blade's Edge Mountains,34.61,88.05,40,0
.goto Blade's Edge Mountains,35.00,85.60,40,0
.goto Blade's Edge Mountains,36.83,83.44,40,0
.goto Blade's Edge Mountains,37.20,81.01
>>Kill |cRXP_ENEMY_Cavern Crawlers|r
>>|cRXP_WARN_You can mount up inside the cave|r
.complete 10927,1 
.isOnQuest 10927
.mob Cavern Crawler
step
>>Travel to Sylvanaar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kialon Nightblade|r, |cRXP_FRIENDLY_Rina Moonspring|r, |cRXP_FRIENDLY_The Wanted Poster|r and |cRXP_FRIENDLY_Commander Skyshadow|r
.turnin 9794 >> Turn in No Time for Curiosity
.goto Blade's Edge Mountains,35.97,67.76,30,0
.goto Blade's Edge Mountains,36.61,67.34
.target +Kialon Nightblade
.accept 10455 >> Accept The Encroaching Wilderness
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.accept 10690 >> Accept The Den Mother
.goto Blade's Edge Mountains,36.61,67.29
.accept 10502 >> Accept The Bloodmaul Ogres
.turnin 10927 >> Turn in Killing the Crawlers
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.maxlevel 66,bemend	<< !tbc
step
#completewith Lashh
.goto Blade's Edge Mountains,35.80,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shaunessy|r
.home >> Set your Hearthstone to Sylvanaar
.maxlevel 66,bemend	<< !tbc
.target Innkeeper Shaunessy
step
.goto Blade's Edge Mountains,37.82,61.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amerun Leafshade|r
.fp Sylvanaar >> Get the Sylvanaar flight path
.maxlevel 66,bemend	<< !tbc
.target Amerun Leafshade
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgrim Stouthammer|r, |cRXP_FRIENDLY_Bronwyn Stouthammer|r inside and |cRXP_FRIENDLY_Daranelle|r outside
.accept 10511 >> Accept Strange Brew
.goto Blade's Edge Mountains,37.40,64.66
.target +Borgrim Stouthammer
.accept 10510 >> Accept Into the Draenethyst Mine
.goto Blade's Edge Mountains,37.41,65.05
.target +Bronwyn Stouthammer
.accept 10555 >> Accept Malaise
.goto Blade's Edge Mountains,37.07,65.62
.target +Daranelle
.maxlevel 66,bemend	<< !tbc
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Grovestalker Lynxes|r
.complete 10455,1 
.isOnQuest 10455
.mob Grovestalker Lynx
step
#label Lashh
.goto Blade's Edge Mountains,35.75,73.61,40,0
.goto Blade's Edge Mountains,34.23,75.61,40,0
.goto Blade's Edge Mountains,34.92,78.78,40,0
.goto Blade's Edge Mountains,35.72,75.07,40,0
.goto Blade's Edge Mountains,34.31,77.40
>>Kill |cRXP_ENEMY_Lashh'an|r. Loot them for their |cRXP_LOOT_Feathers|r
.complete 10555,1 
.isOnQuest 10555
.mob Lashh'an Matriarch
.mob Lashh'an Talonite
.mob Lashh'an Windwalker
.mob Lashh'an Windwalker
step
.goto Blade's Edge Mountains,34.31,77.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome|r atop the tree platform
.turnin 10555 >> Turn in Malaise
.accept 10556 >> Accept Scratches
.maxlevel 66,bemend	<< !tbc
step << !tbc !wotlk
#xprate >1.59
#optional
.maxlevel 67,endOfTheGuide
step
.goto Blade's Edge Mountains,35.23,77.31
.cast 36904 >> |cRXP_WARN_Use the|r |T132926:0|t[Fistful of Feathers] |cRXP_WARN_at the summoning circle|r
.use 30530
.isOnQuest 10556
step
.goto Blade's Edge Mountains,35.23,77.31,0
.goto Blade's Edge Mountains,36.94,79.00,50,0
.goto Blade's Edge Mountains,38.17,79.10,50,0
.goto Blade's Edge Mountains,37.94,73.50,50,0
.goto Blade's Edge Mountains,39.44,71.43,50,0
.goto Blade's Edge Mountains,41.51,67.91,50,0
.goto Blade's Edge Mountains,39.59,67.21,50,0
.goto Blade's Edge Mountains,37.84,71.74,50,0
.goto Blade's Edge Mountains,35.44,71.09
>>|cRXP_WARN_After using the|r |T132926:0|t[Fistful of Feathers]|cRXP_WARN_, a |cRXP_FRIENDLY_Small Bird Companion|r will follow you around|r
>>|cRXP_WARN_Be aware that the |cRXP_FRIENDLY_Bird|r can't keep up with you if you run off on your mount|r
>>Kill |cRXP_ENEMY_Grovestalker Lynxes|r
.complete 10455,1 
.isOnQuest 10455
.use 30530
.mob Grovestalker Lynx
.target Kaliri Totem
step
>>Escort the |cRXP_FRIENDLY_Bird|r back to Sylvanaar
>>|cRXP_WARN_Be aware that the |cRXP_FRIENDLY_Bird|r can't keep up with you if you run off on your mount|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daranelle|r and |cRXP_FRIENDLY_Rina Moonspring|r
.turnin 10556 >> Turn in Scratches
.goto Blade's Edge Mountains,37.07,65.62
.target +Daranelle
.turnin 10455 >> Turn in The Encroaching Wilderness
.accept 10456 >> Accept Marauding Wolves
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.use 30530
.target Kaliri Totem
.maxlevel 66,bemend	<< !tbc
step
#optional
#completewith next
.goto Blade's Edge Mountains,41.81,65.64,50,0
.goto Blade's Edge Mountains,48.40,65.00,50 >> Cross the bridge to the Jagged Ridge
.skill riding,225,1
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Thunderlord Dire Wolves|r. Loot them for their |cRXP_LOOT_Tails|r
.complete 10456,1 
.isOnQuest 10456
.mob Thunderlord Dire Wolf
step
.goto Blade's Edge Mountains,51.62,74.97
>>Kill |cRXP_ENEMY_Rema|r
.complete 10690,1 
.isOnQuest 10690
.mob Rema
step
#loop
.line Blade's Edge Mountains,51.93,73.59,51.99,72.57,52.51,71.54,52.53,69.57,55.12,68.14,54.67,65.56,52.94,67.62,51.69,66.58,50.94,65.14,50.61,60.12,49.31,62.79,50.28,67.75,49.33,69.22,50.32,70.41,51.93,73.59
.goto Blade's Edge Mountains,51.93,73.59,50,0
.goto Blade's Edge Mountains,51.99,72.57,50,0
.goto Blade's Edge Mountains,52.51,71.54,50,0
.goto Blade's Edge Mountains,52.53,69.57,50,0
.goto Blade's Edge Mountains,55.12,68.14,50,0
.goto Blade's Edge Mountains,54.67,65.56,50,0
.goto Blade's Edge Mountains,52.94,67.62,50,0
.goto Blade's Edge Mountains,51.69,66.58,50,0
.goto Blade's Edge Mountains,50.94,65.14,50,0
.goto Blade's Edge Mountains,50.61,60.12,50,0
.goto Blade's Edge Mountains,49.31,62.79,50,0
.goto Blade's Edge Mountains,50.28,67.75,50,0
.goto Blade's Edge Mountains,49.33,69.22,50,0
.goto Blade's Edge Mountains,50.32,70.41,50,0
.goto Blade's Edge Mountains,51.93,73.59,50,0
>>Kill |cRXP_ENEMY_Thunderlord Dire Wolves|r. Loot them for their |cRXP_LOOT_Tails|r
.complete 10456,1 
.isOnQuest 10456
.mob Thunderlord Dire Wolf
step
#optional
#completewith next
.goto Blade's Edge Mountains,56.09,72.09,50,0
.goto Blade's Edge Mountains,56.81,70.12,50,0
.goto Blade's Edge Mountains,57.72,70.31,50 >> Go up the path toward Toshley's Station
.skill riding,225,1
step
.goto Blade's Edge Mountains,61.16,70.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rip Pedalslam|r
.fp Toshley's Station >> Get the Toshley's Station flight path
.target Rip Pedalslam
step
#completewith SylHS
.hs >> Hearth to Sylvanaar
.cooldown item,6948,>2
step
#optional
#completewith next
.goto Blade's Edge Mountains,61.16,70.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rip Pedalslam|r
.fly Sylvanaar >> Fly to Sylvanaar
.cooldown item,6948,<0
.target Rip Pedalslam
step
#label SylHS
>>Return to Sylvanaar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r and |cRXP_FRIENDLY_Rina Moonspring|r
.turnin 10690 >> Turn in The Den Mother
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.turnin 10456 >> Turn in Marauding Wolves
.accept 10457 >> Accept Protecting Our Own
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.maxlevel 66,bemend	<< !tbc
step
#loop
.line Blade's Edge Mountains,36.43,69.86,36.44,71.16,35.95,71.95,37.26,72.60,37.73,73.94,38.27,72.71,38.85,73.59,39.01.71.93,40.24,70.33,39.85,69.00,38.21,69.06,36.43,69.86
.goto Blade's Edge Mountains,36.43,69.86,30,0
.goto Blade's Edge Mountains,36.44,71.16,30,0
.goto Blade's Edge Mountains,35.95,71.95,30,0
.goto Blade's Edge Mountains,37.26,72.60,30,0
.goto Blade's Edge Mountains,37.73,73.94,30,0
.goto Blade's Edge Mountains,38.27,72.71,30,0
.goto Blade's Edge Mountains,38.85,73.59,30,0
.goto Blade's Edge Mountains,70.33,40.24,30,0
.goto Blade's Edge Mountains,69.00,39.85,30,0
.goto Blade's Edge Mountains,69.06,38.21,30,0
.goto Blade's Edge Mountains,69.86,36.43,30,0
>>Click the |cRXP_PICK_Grove Seedlings|r on the ground
.complete 10457,1 
.isOnQuest 10457
step
>>Return to Sylvanaar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
.turnin 10457 >> Turn in Protecting Our Own
.accept 10506 >> Accept A Dire Situation
.goto Blade's Edge Mountains,36.21,67.13
.maxlevel 66,bemend	<< !tbc
.target Rina Moonspring
step
#optional
#completewith MineC
>>Kill |cRXP_ENEMY_Bloodmaul Ogres|r. Loot |cRXP_ENEMY_Bloodmaul Brewmasters|r for their |cRXP_LOOT_Bloodmaul Brutebane Brew|r
>>Open the |cRXP_PICK_Bloodmaul Brew Kegs|r. Loot them for the |cRXP_LOOT_Bloodmaul Brutebane Brew|r
.use 30251 >> |cRXP_WARN_Use|r |T133852:0|t[Rina's Diminution Powder] |cRXP_WARN_on|r |cRXP_ENEMY_Bloodmaul Wolves|r
.complete 10502,1 
.complete 10511,1 
.complete 10506,1 
.mob +Bloodmaul Dire Wolf
.isOnQuest 10502
.isOnQuest 10506
.isOnQuest 10511
.mob Bloodmaul Skirmisher
.mob Bloodmaul Geomancer
.mob Bloodmaul Lookout
.mob Bloodmaul Brewmaster
.mob Bloodmaul Shaman
.mob Bloodmaul Brute
.mob Bloodmaul Drudger
step
#completewith next
.goto Blade's Edge Mountains,42.48,83.51,40 >>Enter the mine
step
#label MineC
.goto Blade's Edge Mountains,42.38,84.54,30,0
.goto Blade's Edge Mountains,41.15,85.56,30,0
.goto Blade's Edge Mountains,40.59,83.58,30,0
.goto Blade's Edge Mountains,39.73,83.35,30,0
.goto Blade's Edge Mountains,39.45,85.72,30,0
.goto Blade's Edge Mountains,40.09,85.42
>>Kill |cRXP_ENEMY_Bloodmaul Drudgers|r. Loot them for their |cRXP_LOOT_Draenethyst Crystals|r
>>|cRXP_WARN_The|r |cRXP_LOOT_Draenethyst Crystals|r |cRXP_WARN_can also be looted inside the mine|r
.complete 10510,1 
.isOnQuest 10510
.mob Bloodmaul Drudger
step
#loop
.line Blade's Edge Mountains,46.38,76.02,47.76,74.83,46.81,79.64,45.90,77.84,44.37,82.35,43.36,81.29,41.88,83.17,42.07,79.05,43.73,77.33,42.78,73.28,46.38,76.02
.goto Blade's Edge Mountains,46.38,76.02,55,0
.goto Blade's Edge Mountains,47.76,74.83,55,0
.goto Blade's Edge Mountains,46.81,79.64,55,0
.goto Blade's Edge Mountains,45.90,77.84,55,0
.goto Blade's Edge Mountains,44.37,82.35,55,0
.goto Blade's Edge Mountains,43.36,81.29,55,0
.goto Blade's Edge Mountains,41.88,83.17,55,0
.goto Blade's Edge Mountains,42.07,79.05,55,0
.goto Blade's Edge Mountains,43.73,77.33,55,0
.goto Blade's Edge Mountains,42.78,73.28,55,0
.goto Blade's Edge Mountains,46.38,76.02,55,0
>>Kill |cRXP_ENEMY_Bloodmaul Ogres|r. Loot |cRXP_ENEMY_Bloodmaul Brewmasters|r for their |cRXP_LOOT_Bloodmaul Brutebane Brew|r
>>Open the |cRXP_PICK_Bloodmaul Brew Kegs|r. Loot them for the |cRXP_LOOT_Bloodmaul Brutebane Brew|r
.use 30251 >> |cRXP_WARN_Use|r |T133852:0|t[Rina's Diminution Powder] |cRXP_WARN_on|r |cRXP_ENEMY_Bloodmaul Wolves|r
.complete 10502,1 
.complete 10511,1 
.complete 10506,1 
.mob +Bloodmaul Dire Wolf
.isOnQuest 10502
.isOnQuest 10506
.isOnQuest 10511
.mob Bloodmaul Skirmisher
.mob Bloodmaul Geomancer
.mob Bloodmaul Lookout
.mob Bloodmaul Brewmaster
.mob Bloodmaul Shaman
.mob Bloodmaul Brute
.mob Bloodmaul Drudger
step
#completewith next
.hs >> Hearth to Sylvanaar
.cooldown item,6948,>2
step
>>Return to Sylvanaar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r, |cRXP_FRIENDLY_Commander Skyshadow|r, |cRXP_FRIENDLY_Bronwyn Stouthammer|r and |cRXP_FRIENDLY_Borgrim Stouthammer|r
.turnin 10506 >> Turn in A Dire Situation
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.turnin 10502 >> Turn in The Bloodmaul Ogres
.accept 10504 >> Accept The Bladespire Ogres
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.turnin 10510 >> Turn in Into the Draenethyst Mine
.goto Blade's Edge Mountains,37.41,65.05
.target +Bronwyn Stouthammer
.turnin 10511 >> Turn in Strange Brew
.accept 10512 >> Accept Getting the Bladespire Tanked
.goto Blade's Edge Mountains,37.40,64.66
.target +Borgrim Stouthammer
.maxlevel 66,bemend	<< !tbc
step << !tbc !wotlk
#xprate >1.59
#optional
.maxlevel 67,endOfTheGuide
step
#optional
#completewith BladeDrunk
>>Kill |cRXP_ENEMY_Bladespire Ogres|r
.complete 10504,1 
.isOnQuest 10504
.mob Bladespire Shaman
.mob Bladespire Cook
.mob Bladespire Champion
.mob Bladespire Sober Defender
.mob Bladespire Brute
step
#optional
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
>>|cRXP_WARN_You can carefully jump down the northern side of Sylvanaar to get to her|r
.accept 10516 >> Accept The Trappings of a Vindicator
.skill riding,225,1
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
.accept 10516 >> Accept The Trappings of a Vindicator
.skill riding,<225,1
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,38.77,52.61
>>|cRXP_WARN_Kill the two |cRXP_ENEMY_Ogres|r nearest to the door|r
>>|cRXP_WARN_Use the|r |T132621:0|t[Brutebane Keg] |cRXP_WARN_to lure |cRXP_ENEMY_Droggam|r away from the elite guards|r
>>Kill |cRXP_ENEMY_Droggam|r. Loot him for the |cRXP_LOOT_Blade|r
.complete 10516,1 
.use 30353
.isOnQuest 10516
.mob Bladespire Shaman
.mob Bladespire Brute
.unitscan Droggam
step
.goto Blade's Edge Mountains,42.46,58.96
>>|cRXP_WARN_Kill the three |cRXP_ENEMY_Ogres|r nearest to the door|r
>>|cRXP_WARN_Use the|r |T132621:0|t[Brutebane Keg] |cRXP_WARN_to lure |cRXP_ENEMY_Mugdorg|r away from the elite guards|r
>>Kill |cRXP_ENEMY_Mugdorg|r. Loot him for the |cRXP_LOOT_Shield|r
.complete 10516,2 
.use 30353
.isOnQuest 10516
.mob Bladespire Shaman
.mob Bladespire Brute
.unitscan Mugdorg
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
.turnin 10516 >> Turn in The Trappings of a Vindicator
.accept 10517 >> Accept Gorr'Dim, Your Time Has Come...
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,39.38,49.06
>>|cRXP_WARN_Kill the three |cRXP_ENEMY_Ogres|r nearest to the door|r
>>|cRXP_WARN_Use the|r |T132621:0|t[Brutebane Keg] |cRXP_WARN_to lure |cRXP_ENEMY_Gorr'Dim|r away from the elite guards|r
>>Kill |cRXP_ENEMY_Gorr'Dim|r. Loot him for the |cRXP_LOOT_Shield|r
.complete 10517,1 
.use 30353
.isOnQuest 10517
.mob Bladespire Shaman
.mob Bladespire Brute
.unitscan Gorr'Dim
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
.turnin 10517 >> Turn in Gorr'Dim, Your Time Has Come...
.accept 10518 >> Accept Planting the Banner
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,41.29,46.72
>>Kill the |cRXP_ENEMY_Bladespire Champion|r. Loot him for his |cRXP_LOOT_Banner|r
.complete 10518,1 
.isOnQuest 10518
.mob Bladespire Champion
step
#label BladeDrunk
#loop
.line Blade's Edge Mountains,43.48,46.85,41.40,46.63,39.81,49.22,38.90,52.64,38.44,56.05,38.99,57.99,40.23,58.34,42.32,58.35,42.57,54.37,42.11,52.30,47.50,52.35,49.61,50.17,42.91,48.97,43.48,46.85
.goto Blade's Edge Mountains,43.48,46.85,60,0
.goto Blade's Edge Mountains,41.40,46.63,60,0
.goto Blade's Edge Mountains,39.81,49.22,60,0
.goto Blade's Edge Mountains,38.90,52.64,60,0
.goto Blade's Edge Mountains,38.44,56.05,60,0
.goto Blade's Edge Mountains,38.99,57.99,60,0
.goto Blade's Edge Mountains,40.23,58.34,60,0
.goto Blade's Edge Mountains,42.32,58.35,60,0
.goto Blade's Edge Mountains,42.57,54.37,60,0
.goto Blade's Edge Mountains,42.11,52.30,60,0
.goto Blade's Edge Mountains,47.50,52.35,60,0
.goto Blade's Edge Mountains,49.61,50.17,60,0
.goto Blade's Edge Mountains,42.91,48.97,60,0
.goto Blade's Edge Mountains,43.48,46.85,60,0
>>|cRXP_WARN_Use the|r |T132621:0|t[Brutebane Keg] |cRXP_WARN_near |cRXP_ENEMY_Ogres|r to get them drunk|r
.complete 10512,1 
.use 30353
.isOnQuest 10512
.mob Bladespire Shaman
.mob Bladespire Cook
.mob Bladespire Champion
.mob Bladespire Sober Defender
.mob Bladespire Brute
step
#loop
.line Blade's Edge Mountains,43.48,46.85,41.40,46.63,39.81,49.22,38.90,52.64,38.44,56.05,38.99,57.99,40.23,58.34,42.32,58.35,42.57,54.37,42.11,52.30,47.50,52.35,49.61,50.17,42.91,48.97,43.48,46.85
.goto Blade's Edge Mountains,43.48,46.85,60,0
.goto Blade's Edge Mountains,41.40,46.63,60,0
.goto Blade's Edge Mountains,39.81,49.22,60,0
.goto Blade's Edge Mountains,38.90,52.64,60,0
.goto Blade's Edge Mountains,38.44,56.05,60,0
.goto Blade's Edge Mountains,38.99,57.99,60,0
.goto Blade's Edge Mountains,40.23,58.34,60,0
.goto Blade's Edge Mountains,42.32,58.35,60,0
.goto Blade's Edge Mountains,42.57,54.37,60,0
.goto Blade's Edge Mountains,42.11,52.30,60,0
.goto Blade's Edge Mountains,47.50,52.35,60,0
.goto Blade's Edge Mountains,49.61,50.17,60,0
.goto Blade's Edge Mountains,42.91,48.97,60,0
.goto Blade's Edge Mountains,43.48,46.85,60,0
>>Kill |cRXP_ENEMY_Bladespire Ogres|r
.complete 10504,1 
.isOnQuest 10504
.mob Bladespire Shaman
.mob Bladespire Cook
.mob Bladespire Champion
.mob Bladespire Sober Defender
.mob Bladespire Brute
step
.goto Blade's Edge Mountains,46.66,74.82
>>|cRXP_WARN_Use the|r |T132484:0|t[Bladespire Banner] |cRXP_WARN_atop the tower to start the event. You will have to deal with 3 waves of 3 mobs|r
>>|cRXP_WARN_Use the|r |T132621:0|t[Brutebane Keg] |cRXP_WARN_at the end of the ramp to pick them apart and only deal with 1 or 2 |cRXP_ENEMY_Ogres|r at a time|r
>>|cRXP_WARN_Be aware that |cRXP_ENEMY_Gurn|r enrages after a few seconds, increasing attack speed by 300% for 6 seconds, but stunning him at the end for 3 seconds. You can jump off the tower and heal if you need to|r
.complete 10518,2 
.use 30416 
.use 30353
.isOnQuest 10518
.mob Gurn Grubnosh
step
#completewith next
.hs >> Hearth to Sylvanaar
.cooldown item,6948,>2
step
>>Return to Sylvanaar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r and |cRXP_FRIENDLY_Borgrim Stouthammer|r
.turnin 10504 >> Turn in The Bladespire Ogres
.turnin 10518 >> Turn in Planting the Banner
.accept 10580 >> Accept Where Did Those Darn Gnomes Go?
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.turnin 10512 >> Turn in Getting the Bladespire Tanked
.goto Blade's Edge Mountains,37.40,64.66
.target +Borgrim Stouthammer
.maxlevel 66,bemend	<< !tbc
step << !tbc !wotlk
#xprate >1.59
#optional
.maxlevel 67,endOfTheGuide
step
#completewith Tally
.goto Blade's Edge Mountains,37.82,61.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amerun Leafshade|r
.fly Toshley's Station >> Fly to Toshley's Station
.skill riding,300,1
.target Amerun Leafshade
step
#completewith TestTally
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.accept 10632 >> Accept Cutting Your Teeth
.maxlevel 66,bemend << !tbc
.target Razak Ironsides
step
#label Tally
>>Travel to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r and |cRXP_FRIENDLY_Tally Zapnabber|r
.accept 10608 >> Accept Crystal Clear
.goto Blade's Edge Mountains,60.22,68.94
.target +Nickwinkle the Metro-Gnome
.accept 10557 >> Accept Test Flight: The Zephyrium Capacitorium
.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,60.175,68.794
.gossipoption 92114 >> Talk to |cRXP_FRIENDLY_Rally Zapnabber|r
.timer 48,Test Flight RP
.skipgossip
.isOnQuest 10557
.target Rally Zapnabber
step
#label TestTally
>>Wait out the RP
.complete 10557,1 
.isOnQuest 10557
step
.goto Blade's Edge Mountains,55.11,72.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
.turnin 10580 >> Turn in Where Did Those Darn Gnomes Go?
.accept 10581 >> Accept Follow the Breadcrumbs
.maxlevel 66,bemend << !tbc
.target R-3D0
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.accept 10632 >> Accept Cutting Your Teeth
.maxlevel 66,bemend << !tbc
.target Razak Ironsides
step
>>Return to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r, |cRXP_FRIENDLY_Tally Zapnabber|r and |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
.turnin 10581 >> Turn in Follow the Breadcrumbs
.accept 10584 >> Accept Picking Up Some Power Converters
.goto Blade's Edge Mountains,60.53,68.97
.target +Toshley
.turnin 10557 >> Turn in Test Flight: The Zephyrium Capacitorium
.accept 10710 >> Accept Test Flight: The Singing Ridge
.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.accept 10609 >> Accept What Came First, the Drake or the Egg?
.goto Blade's Edge Mountains,60.98,68.11
.target +Fizit "Doc" Clocktock
.maxlevel 66,bemend << !tbc
step
#completewith ToshStation
.goto Blade's Edge Mountains,60.98,68.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
.home >> Set your Hearthstone to Toshley's Station
.target Fizit "Doc" Clocktock
step
.use 30540 >>|cRXP_WARN_Use|r |T134939:0|t[Tally's Waiver]
.collect 30539,1,10710,1 
.isOnQuest 10710
step
#requires ToshleyHS
#loop
.line Blade's Edge Mountains,57.94,60.39,58.24,59.08,58.54,57.48,57.74,57.20,57.51,55.84,58.14,55.17,56.95,55.01,56.45,59.74,57.94,60.39
.goto Blade's Edge Mountains,57.94,60.39,30,0
.goto Blade's Edge Mountains,58.24,59.08,30,0
.goto Blade's Edge Mountains,58.54,57.48,30,0
.goto Blade's Edge Mountains,57.74,57.20,30,0
.goto Blade's Edge Mountains,57.51,55.84,30,0
.goto Blade's Edge Mountains,58.14,55.17,30,0
.goto Blade's Edge Mountains,56.95,55.01,30,0
.goto Blade's Edge Mountains,56.45,59.74,30,0
.goto Blade's Edge Mountains,57.94,60.39,30,0
.use 30656 >>|cRXP_WARN_Click the|r |cRXP_WARN_Power Converters|r |cRXP_WARN_to spawn|r |cRXP_ENEMY_Electromentals|r
>>|cRXP_WARN_Use the|r |T132488:0|t[Protovoltaic Magneto Collector] |cRXP_WARN_on the |cRXP_ENEMY_Electromentals|r to make it an|r |cRXP_ENEMY_Encased Electromental|r
>>Kill the |cRXP_ENEMY_Encased Electromentals|r
.complete 10584,1 
.isOnQuest 10584
.mob Electromental
.mob Encased Electromental
step
#optional
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.accept 10632 >> Accept Cutting Your Teeth
.maxlevel 66,bemend << !tbc
.target Razak Ironsides
step
#label ToshStation
>>Return to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r and |cRXP_FRIENDLY_Dizzy Dina|r
.turnin 10584 >> Turn in Picking Up Some Power Converters
.goto Blade's Edge Mountains,60.53,68.97
.target +Toshley
.accept 10620 >> Accept Ridgespine Menace
.goto Blade's Edge Mountains,60.40,68.75
.target +Dizzy Dina
.maxlevel 66,bemend << !tbc
step
#loop
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37,30,0
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.accept 10632 >> Accept Cutting Your Teeth
.unitscan Razak Ironsides
.maxlevel 66,bemend << !tbc
step
#completewith next
.goto Blade's Edge Mountains,60.175,68.794
.gossip 21461,1 >> Talk to |cRXP_FRIENDLY_Rally Zapnabber|r
.timer 30,Test Flight RP
.isOnQuest 10710
step
>>Wait out the RP
.goto Blade's Edge Mountains,60.175,68.794
.complete 10710,1 
.skipgossip 21461,1
.isOnQuest 10710
.target Rally Zapnabber
step
.goto Blade's Edge Mountains,67.71,72.74,50,0
.goto Blade's Edge Mountains,68.61,70.81,50,0
.goto Blade's Edge Mountains,69.40,66.26,50,0
.goto Blade's Edge Mountains,68.47,64.72,50,0
.goto Blade's Edge Mountains,66.98,63.63,50,0
.goto Blade's Edge Mountains,67.05,58.87,50,0
.goto Blade's Edge Mountains,67.90,49.98,50,0
.goto Blade's Edge Mountains,64.44,51.45,50,0
.goto Blade's Edge Mountains,62.32,52.92,50,0
.goto Blade's Edge Mountains,65.52,55.81
>>Kill |cRXP_ENEMY_Ridgespine Stalkers|r. |cRXP_WARN_They are stealthed so listen for the stealth sound|r
>>Kill |cRXP_ENEMY_Daggermaws|r. Loot them for their |cRXP_LOOT_Teeth|r
.complete 10632,1 
.mob +Daggermaw Lashtail
.complete 10620,1 
.mob +Ridgespine Stalker
.isOnQuest 10620
.isOnQuest 10632
step
#completewith next
.hs >> Hearth to Toshley's Station
.cooldown item,6948,>2
step
#optional
#completewith next
>>Click the |cRXP_PICK_Nether Drake Eggs|r to spawn a |cRXP_ENEMY_Nether Whelp|r
>>|cRXP_WARN_Use the|r |T133869:0|t[Temporal Phase Modulator] |cRXP_WARN_on the |cRXP_ENEMY_Nether Whelps|r that spawn to convert it into a|r |cRXP_ENEMY_Nether Drake|r
>>|cRXP_WARN_You can use the|r |T133869:0|t[Temporal Phase Modulator] |cRXP_WARN_multiple times on the same |cRXP_ENEMY_Nether Drake|r to change it to a different type|r
.complete 10609,1 
.mob +Proto-Nether Drake
.complete 10609,2 
.mob +Adolescent Nether Drake
.complete 10609,3 
.mob +Mature Nether Drake
.use 30742
.isOnQuest 10609
step
#loop
.line Blade's Edge Mountains,67.28,75.42,68.41,76.83,67.75,76.85,66.11,77.96,65.14,78.62,64.55,77.86,62.33,79.30,61.64,79.15,59.69,79.16,59.65,78.19,60.16,75.98,61.24,75.24,62.18,76.39,62.56,76.54,63.56,77.26,64.49,75.34,65.35,76.09,65.54,75.34,66.42,74.79,67.28,75.42
.goto Blade's Edge Mountains,67.28,75.42,40,0
.goto Blade's Edge Mountains,68.41,76.83,40,0
.goto Blade's Edge Mountains,67.75,76.85,40,0
.goto Blade's Edge Mountains,66.11,77.96,40,0
.goto Blade's Edge Mountains,65.14,78.62,40,0
.goto Blade's Edge Mountains,64.55,77.86,40,0
.goto Blade's Edge Mountains,62.33,79.30,40,0
.goto Blade's Edge Mountains,61.64,79.15,40,0
.goto Blade's Edge Mountains,59.69,79.16,40,0
.goto Blade's Edge Mountains,59.65,78.19,40,0
.goto Blade's Edge Mountains,60.16,75.98,40,0
.goto Blade's Edge Mountains,61.24,75.24,40,0
.goto Blade's Edge Mountains,62.18,76.39,40,0
.goto Blade's Edge Mountains,62.56,76.54,40,0
.goto Blade's Edge Mountains,63.56,77.26,40,0
.goto Blade's Edge Mountains,64.49,75.34,40,0
.goto Blade's Edge Mountains,65.35,76.09,40,0
.goto Blade's Edge Mountains,65.54,75.34,40,0
.goto Blade's Edge Mountains,66.42,74.79,40,0
.goto Blade's Edge Mountains,67.28,75.42,40,0
>>Kill |cRXP_ENEMY_Crystal Flayers|r
.complete 10608,1 
.isOnQuest 10608
.mob Crystal Flayer
step
#loop
.line Blade's Edge Mountains,67.28,75.42,68.41,76.83,67.75,76.85,66.11,77.96,65.14,78.62,64.55,77.86,62.33,79.30,61.64,79.15,59.69,79.16,59.65,78.19,60.16,75.98,61.24,75.24,62.18,76.39,62.56,76.54,63.56,77.26,64.49,75.34,65.35,76.09,65.54,75.34,66.42,74.79,67.28,75.42
.goto Blade's Edge Mountains,67.28,75.42,40,0
.goto Blade's Edge Mountains,68.41,76.83,40,0
.goto Blade's Edge Mountains,67.75,76.85,40,0
.goto Blade's Edge Mountains,66.11,77.96,40,0
.goto Blade's Edge Mountains,65.14,78.62,40,0
.goto Blade's Edge Mountains,64.55,77.86,40,0
.goto Blade's Edge Mountains,62.33,79.30,40,0
.goto Blade's Edge Mountains,61.64,79.15,40,0
.goto Blade's Edge Mountains,59.69,79.16,40,0
.goto Blade's Edge Mountains,59.65,78.19,40,0
.goto Blade's Edge Mountains,60.16,75.98,40,0
.goto Blade's Edge Mountains,61.24,75.24,40,0
.goto Blade's Edge Mountains,62.18,76.39,40,0
.goto Blade's Edge Mountains,62.56,76.54,40,0
.goto Blade's Edge Mountains,63.56,77.26,40,0
.goto Blade's Edge Mountains,64.49,75.34,40,0
.goto Blade's Edge Mountains,65.35,76.09,40,0
.goto Blade's Edge Mountains,65.54,75.34,40,0
.goto Blade's Edge Mountains,66.42,74.79,40,0
.goto Blade's Edge Mountains,67.28,75.42,40,0
>>Click the |cRXP_PICK_Nether Drake Eggs|r to spawn a |cRXP_ENEMY_Nether Whelp|r
>>|cRXP_WARN_Use the|r |T133869:0|t[Temporal Phase Modulator] |cRXP_WARN_on the |cRXP_ENEMY_Nether Whelps|r that spawn to convert it into a|r |cRXP_ENEMY_Nether Drake|r
>>|cRXP_WARN_You can use the|r |T133869:0|t[Temporal Phase Modulator] |cRXP_WARN_multiple times on the same |cRXP_ENEMY_Nether Drake|r to change it to a different type|r
.use 30742
.isOnQuest 10609
.complete 10609,1 
.mob +Proto-Nether Drake
.complete 10609,2 
.mob +Adolescent Nether Drake
.complete 10609,3 
.mob +Mature Nether Drake
step
#completewith CrystalClear
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.turnin 10632 >> Turn in Cutting Your Teeth
.unitscan Razak Ironsides
.maxlevel 66,bemend << !tbc
step
#questguide
>>Return to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r and |cRXP_FRIENDLY_Dizzy Dina|r
.turnin 10608 >> Turn in Crystal Clear
.accept 10594 >> Accept Gauging the Resonant Frequency
.goto Blade's Edge Mountains,60.22,68.94
.target +Nickwinkle the Metro-Gnome
.turnin 10620 >> Turn in Ridgespine Menace
.accept 10671 >> Accept More than a Pound of Flesh
.goto Blade's Edge Mountains,60.40,68.75
.target +Dizzy Dina
.maxlevel 66,bemend << !tbc
step << !tbc !wotlk
#xprate >1.59
#optional
.maxlevel 67,endOfTheGuide
step
#label CrystalClear
>>Return to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r and |cRXP_FRIENDLY_Dizzy Dina|r
.turnin 10608 >> Turn in Crystal Clear
.accept 10594 >> Accept Gauging the Resonant Frequency
.goto Blade's Edge Mountains,60.22,68.94
.target +Nickwinkle the Metro-Gnome
.turnin 10620 >> Turn in Ridgespine Menace

.goto Blade's Edge Mountains,60.40,68.75
.target +Dizzy Dina
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.turnin 10632 >> Turn in Cutting Your Teeth
.unitscan Razak Ironsides
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,60.21,74.83
>>|cRXP_WARN_Use the|r |T132995:0|t[Oscillating Frequency Scanners] |cRXP_WARN_to plant a rod in the ground. You need to position them in a pentagonal formation 40 yards from each other. After planting 5 rods, stand in the middle of it|r
.complete 10594,1 
.use 30701
.isOnQuest 10594
step
#questguide
>>Return to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r, |cRXP_FRIENDLY_Tally Zapnabber|r and |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
Talk to Nickwinkle, Tally, and Fizit
.turnin 10594 >> Turn in Gauging the Resonant Frequency
.goto Blade's Edge Mountains,60.22,68.94
.target +Nickwinkle the Metro-Gnome
.turnin 10710 >> Turn in Test Flight: The Singing Ridge
.accept 10711 >> Accept Test Flight: Razaan's Landing
.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.turnin 10609 >> Turn in What Came First, the Drake or the Egg?
.goto Blade's Edge Mountains,60.98,68.11
.target +Fizit "Doc" Clocktock
.maxlevel 66,bemend << !tbc
step
>>Return to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r, |cRXP_FRIENDLY_Tally Zapnabber|r and |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
.turnin 10594 >> Turn in Gauging the Resonant Frequency
.goto Blade's Edge Mountains,60.22,68.94
.target +Nickwinkle the Metro-Gnome
.turnin 10710 >> Turn in Test Flight: The Singing Ridge

.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.turnin 10609 >> Turn in What Came First, the Drake or the Egg?
.goto Blade's Edge Mountains,60.98,68.11
.target +Fizit "Doc" Clocktock
.maxlevel 66,bemend << !tbc
step
#questguide
.goto Blade's Edge Mountains,60.175,68.794
.gossipoption 92112 >> Talk to |cRXP_FRIENDLY_Rally Zapnabber|r
.timer 40,Test Flight RP
.skipgossip
.isOnQuest 10711
.target Rally Zapnabber
step
#questguide
.complete 10711,1 
.goto Blade's Edge Mountains,66.98,48.90,300 >> Wait out the RP
.isOnQuest 10711
step
#questguide
.goto Blade's Edge Mountains,67.2,43.6
>>Kill |cRXP_ENEMY_Fiendling Flesh Beasts|r. Loot them for their |cRXP_LOOT_Flesh|r
.complete 10671,1 
.isOnQuest 10671
.target Fiendling Flesh Beast
step
>>Travel to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r and |cRXP_FRIENDLY_Tree Warden Chawn|r
.accept 10567 >>Accept Creating the Pendant
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.accept 10682 >>Accept A Time for Negotiation...
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,61.68,39.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fhyn Leafshadow|r
.fp Evergrove >> Get the Evergrove flight path
.target Fhyn Leafshadow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r, |cRXP_FRIENDLY_Commander Haephus Stonewall|r, |cRXP_FRIENDLY_Lieutenant Fairweather|r and |cRXP_FRIENDLY_Faradrella|r
.accept 10770 >>Accept Little Embers
.accept 10771 >>Accept From the Ashes
.goto Blade's Edge Mountains,61.25,38.46
.target +Mosswood the Ancient
.accept 10795 >> Accept A Date with Dorgok
.goto Blade's Edge Mountains,61.98,37.98
.target +Commander Haephus Stonewall
.accept 10796 >> Accept Crush the Bloodmaul Camp!
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.accept 10753 >>Accept Culling the Wild
.goto Blade's Edge Mountains,62.56,38.23
.target +Faradrella
.maxlevel 66,bemend << !tbc
step << !tbc !wotlk
#xprate >1.59
#optional
.maxlevel 67,endOfTheGuide
step
#completewith Damaged
.goto Blade's Edge Mountains,62.86,38.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Aelerya|r
.home >> Set your Hearthstone to Evergrove
.maxlevel 66,bemend << !tbc
.target Innkeeper Aelerya
step
#completewith next
.goto Blade's Edge Mountains,65.43,39.76,40,0
.goto Blade's Edge Mountains,66.89,38.38,40 >> Run up the mountain path
.skill riding,225,1
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Felsworn Scalewings|r and |cRXP_ENEMY_Daggermaws|r
.complete 10753,1 
.mob +Felsworn Scalewing
.complete 10753,2 
.mob +Felsworn Daggermaw
.isOnQuest 10753
step
#label Damaged
.goto Blade's Edge Mountains,69.23,37.45,60,0
.goto Blade's Edge Mountains,68.66,33.30,60,0
.goto Blade's Edge Mountains,71.75,32.63,60,0
.goto Blade's Edge Mountains,70.98,27.92
.use 31384 >>Kill |cRXP_ENEMY_Fel Corrupters|r. Loot them for their |T133133:0|t[|cRXP_LOOT_Damaged Mask|r]
>>|cRXP_WARN_Use the|r |T133133:0|t[|cRXP_LOOT_Damaged Mask|r] |cRXP_WARN_to start the quest|r
.complete 10753,3 
.collect 31384,1,10810,1 
.accept 10810 >>Accept Damaged Mask
.unitscan Fel Corrupter
.isOnQuest 10753
step
#loop
.line Blade's Edge Mountains,68.77,34.63,68.31,30.34,70.65,30.50,70.91,26.73,73.67,26.67,73.39,30.11,71.84,34.87,68.77,34.63
.goto Blade's Edge Mountains,68.77,34.63,60,0
.goto Blade's Edge Mountains,68.31,30.34,60,0
.goto Blade's Edge Mountains,70.65,30.50,60,0
.goto Blade's Edge Mountains,70.91,26.73,60,0
.goto Blade's Edge Mountains,73.67,26.67,60,0
.goto Blade's Edge Mountains,73.39,30.11,60,0
.goto Blade's Edge Mountains,71.84,34.87,60,0
.goto Blade's Edge Mountains,68.77,34.63,60,0
>>Kill |cRXP_ENEMY_Felsworn Scalewings|r and |cRXP_ENEMY_Daggermaws|r
.complete 10753,1 
.mob +Felsworn Scalewing
.complete 10753,2 
.mob +Felsworn Daggermaw
.isOnQuest 10753
step
#completewith next
>>Kill |cRXP_ENEMY_Scorch Imps|r
.complete 10770,1 
.isOnQuest 10770
.mob Scorch Imp
step
.use 31300 >>|cRXP_WARN_Use the|r |T134059:0|t[Ironroot Seeds] |cRXP_WARN_on the patches of|r |cRXP_PICK_Volcanic Soil|r
.complete 10771,1 
.goto Blade's Edge Mountains,71.66,22.38
.complete 10771,2 
.goto Blade's Edge Mountains,71.61,20.31
.complete 10771,3 
.goto Blade's Edge Mountains,71.59,18.50
.isOnQuest 10771
step
#loop
.line Blade's Edge Mountains,70.65,18.63,70.63,20.56,70.65,22.68,71.06,23.80,71.92,24.64,72.31,22.97,71.71,21.21,73.06,20.10,73.44,18.06,70.65,18.63
.goto Blade's Edge Mountains,70.65,18.63,50,0
.goto Blade's Edge Mountains,70.63,20.56,50,0
.goto Blade's Edge Mountains,70.65,22.68,50,0
.goto Blade's Edge Mountains,71.06,23.80,50,0
.goto Blade's Edge Mountains,71.92,24.64,50,0
.goto Blade's Edge Mountains,72.31,22.97,50,0
.goto Blade's Edge Mountains,71.71,21.21,50,0
.goto Blade's Edge Mountains,73.06,20.10,50,0
.goto Blade's Edge Mountains,73.44,18.06,50,0
.goto Blade's Edge Mountains,70.65,18.63,50,0
>>Kill |cRXP_ENEMY_Scorch Imps|r
.complete 10770,1 
.isOnQuest 10770
.mob Scorch Imp
step
#completewith next
.hs >>Hearth to Evergrove
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r, |cRXP_FRIENDLY_Mosswood the Ancient|r and |cRXP_FRIENDLY_O'Mally Zapnabber|r
.turnin 10753 >>Turn in Culling the Wild
.goto Blade's Edge Mountains,62.56,38.23
.target +Faradrella
.turnin 10770 >>Turn in Little Embers
.turnin 10771 >>Turn in From the Ashes
.goto Blade's Edge Mountains,61.25,38.46
.target +Mosswood the Ancient
.turnin 10810 >>Turn in Damaged Mask
.accept 10812 >> Accept Mystery Mask
.goto Blade's Edge Mountains,62.66,40.38
.target +O'Mally Zapnabber
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.turnin 10812 >>Turn in Mystery Mask
.accept 10819 >> Accept Felsworn Gas Mask
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
#completewith next
.equip 1,10819 >> |cRXP_WARN_Equip the|r |T133133:0|t[Felsworn Gas Mask] |cRXP_WARN_to be able to talk to the|r |cRXP_FRIENDLY_Legion Communicator|r
.use 10819
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.goto Blade's Edge Mountains,73.27,40.03
.turnin 10819 >>Turn in Felsworn Gas Mask
.accept 10820 >>Accept Deceive thy Enemy
.use 31366
.maxlevel 66,bemend << !tbc
step
#loop
.line Blade's Edge Mountains,74.28,38.54,75.39,39.66,74.93,40.17,75.30,41.73,74.22,42.56,73.77,41.02,74.28,38.54
.goto Blade's Edge Mountains,74.28,38.54,40,0
.goto Blade's Edge Mountains,75.39,39.66,40,0
.goto Blade's Edge Mountains,74.93,40.17,40,0
.goto Blade's Edge Mountains,75.30,41.73,40,0
.goto Blade's Edge Mountains,74.22,42.56,40,0
.goto Blade's Edge Mountains,73.77,41.02,40,0
.goto Blade's Edge Mountains,74.28,38.54,40,0
>>|cRXP_WARN_Re-equip your normal helmet|r
>>Kill |cRXP_ENEMY_Doomforge Attendants|r and |cRXP_ENEMY_Engineers|r
.complete 10820,1 
.mob +Doomforge Attendant
.complete 10820,2 
.mob +Doomforge Engineer
.isOnQuest 10820
step
#completewith next
.equip 1,10819 >> |cRXP_WARN_Equip the|r |T133133:0|t[Felsworn Gas Mask] |cRXP_WARN_to be able to talk to the|r |cRXP_FRIENDLY_Legion Communicator|r
.use 10819
step
.goto Blade's Edge Mountains,73.27,40.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.turnin 10820 >>Turn in Deceive thy Enemy
.accept 10821 >> Accept You're Fired!
.maxlevel 66,bemend << !tbc

step
#loop
.line Blade's Edge Mountains,73.63,39.14,72.82,40.35,72.90,40.76,72.92,41.50,72.90,41.96,73.36,42.46,73.39,43.64,74.38,41.90,74.01,38.52,73.63,39.14
.goto Blade's Edge Mountains,73.63,39.14,40,0
.goto Blade's Edge Mountains,72.82,40.35,40,0
.goto Blade's Edge Mountains,72.90,40.76,40,0
.goto Blade's Edge Mountains,72.92,41.50,40,0
.goto Blade's Edge Mountains,72.90,41.96,40,0
.goto Blade's Edge Mountains,73.36,42.46,40,0
.goto Blade's Edge Mountains,73.39,43.64,40,0
.goto Blade's Edge Mountains,74.38,41.90,40,0
.goto Blade's Edge Mountains,74.01,38.52,40,0
.goto Blade's Edge Mountains,73.63,39.14,40,0
>>Kill |cRXP_ENEMY_Anger Guards|r. Loot them for |cRXP_LOOT_Camp Anger Keys|r
>>|cRXP_WARN_Don't click any |cRXP_WARN_Obelisks|r yet|r
.collect 31536,5,10821,1 
.isOnQuest 10821
.mob Anger Guard
step
#completewith Doomcryer
#label FirstO
.goto Blade's Edge Mountains,73.53,43.51
.cast 38746 >>Click the |cRXP_PICK_First Obelisk|r
>>|cRXP_WARN_*If you cannot click it, skip this step|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires FirstO
#label SecondO
.goto Blade's Edge Mountains,73.82,41.03
.cast 38746 >>Click the |cRXP_PICK_Second Obelisk|r
>>|cRXP_WARN_*If you cannot click it, skip this step|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires SecondO
#label ThirdO
.goto Blade's Edge Mountains,73.94,39.89
.cast 38746 >>Click the |cRXP_PICK_Third Obelisk|r
>>|cRXP_WARN_*If you cannot click it, skip this step|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires ThirdO
#label FourthO
.goto Blade's Edge Mountains,75.45,40.52
.cast 38746 >>Click the |cRXP_PICK_Fourth Obelisk|r
>>|cRXP_WARN_*If you cannot click it, skip this step|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires FourthO
.goto Blade's Edge Mountains,75.33,41.74
.cast 38746 >>Click the |cRXP_PICK_Fifth Obelisk|r
>>|cRXP_WARN_*If you cannot click it, skip this step|r
.timer 30,Doomcryer Spawn
.isOnQuest 10821
step
#label Doomcryer
.goto Blade's Edge Mountains,74.32,42.52
>>Click the |cRXP_PICK_Five Obelisks|r around the camp to summon |cRXP_ENEMY_Doomcryer|r
>>Kill |cRXP_ENEMY_Doomcryer|r
>>|cRXP_ENEMY_Doomcryer|r |cRXP_WARN_can be affected by a number of crowd-controlling abilities such as Slows and Fear|r
>>|cRXP_WARN_This quest is difficult. Find a group for her if needed. Skip this step if you're unable to find a group or solo her|r
.complete 10821,1 
.isOnQuest 10821
.mob Doomcryer
step
#completewith Nuaar
.hs >>Hearth to Evergrove
.cooldown item,6948,>2
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.turnin 10821 >> Turn in You're Fired!
.isQuestComplete 10821
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.accept 10910 >> Accept Death's Door
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
#label Nuaar
.line Blade's Edge Mountains,62.82,25.94,63.12,27.41,63.34,27.87,63.28,28.37,62.73,28.77,62.45,29.31,62.37,29.65,62.44,31.66,62.11,33.34,61.80,34.00,61.43,34.10,60.61,33.98,60.12,34.47,60.01,34.80,60.08,35.15,59.90,35.72,59.60,36.07,59.11,36.21,58.96,36.61,58.65,36.91,58.18,36.96,57.90,37.34,57.84,37.81,59.13,39.47,59.90,40.27,60.51,40.90,61.50,42.02,61.78,42.41,62.62,43.95,62.97,45.05,63.06,46.38
63.06,46.38
.goto Blade's Edge Mountains,63.06,46.38,60,0
.goto Blade's Edge Mountains,62.97,45.05,60,0
.goto Blade's Edge Mountains,62.62,43.95,60,0
.goto Blade's Edge Mountains,61.78,42.41,60,0
.goto Blade's Edge Mountains,61.50,42.02,60,0
.goto Blade's Edge Mountains,60.51,40.90,60,0
.goto Blade's Edge Mountains,59.90,40.27,60,0
.goto Blade's Edge Mountains,59.13,39.47,60,0
.goto Blade's Edge Mountains,57.84,37.81,60,0
.goto Blade's Edge Mountains,57.90,37.34,60,0
.goto Blade's Edge Mountains,58.18,36.96,60,0
.goto Blade's Edge Mountains,58.65,36.91,60,0
.goto Blade's Edge Mountains,58.96,36.61,60,0
.goto Blade's Edge Mountains,59.11,36.21,60,0
.goto Blade's Edge Mountains,59.60,36.07,60,0
.goto Blade's Edge Mountains,59.90,35.72,60,0
.goto Blade's Edge Mountains,60.08,35.15,60,0
.goto Blade's Edge Mountains,60.01,34.80,60,0
.goto Blade's Edge Mountains,60.12,34.47,60,0
.goto Blade's Edge Mountains,60.61,33.98,60,0
.goto Blade's Edge Mountains,61.80,34.00,60,0
.goto Blade's Edge Mountains,62.11,33.34,60,0
.goto Blade's Edge Mountains,62.44,31.66,60,0
.goto Blade's Edge Mountains,62.37,29.65,60,0
.goto Blade's Edge Mountains,62.45,29.31,60,0
.goto Blade's Edge Mountains,62.73,28.77,60,0
.goto Blade's Edge Mountains,63.28,28.37,60,0
.goto Blade's Edge Mountains,63.34,27.87,60,0
.goto Blade's Edge Mountains,63.12,27.41,60,0
.goto Blade's Edge Mountains,62.82,25.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Nuaar|r
>>|cRXP_FRIENDLY_Overseer Nuaar|r |cRXP_WARN_patrols the Wyrmcult camps of Ruuan Weald|r
.complete 10682,1 
.unitscan Overseer Nuaar
.skipgossip
.isOnQuest 10682
step
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r and |cRXP_FRIENDLY_Samia Inkling|r
.turnin 10682 >>Turn in A Time for Negotiation...
.accept 10713 >>Accept ...and a Time for Action
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.accept 10717 >>Accept Poaching from Poachers
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
#completewith next
#loop
.line Blade's Edge Mountains,63.61,34.11,65.32,34.83,65.52,31.59,65.32,29.29,63.99,31.39,63.61,34.11
.goto Blade's Edge Mountains,63.61,34.11,50,0
.goto Blade's Edge Mountains,65.32,34.83,50,0
.goto Blade's Edge Mountains,65.52,31.59,50,0
.goto Blade's Edge Mountains,65.32,29.29,50,0
.goto Blade's Edge Mountains,63.99,31.39,50,0
.goto Blade's Edge Mountains,63.61,34.11,50,0
>>Kill the |cRXP_ENEMY_Ruuan'ok|r. Loot them for their |cRXP_LOOT_Claws|r
.collect 30704,6,10567,1 
.isOnQuest 10567
.mob Ruuan'ok Cloudgazer
.mob Ruuan'ok Skyfury
.mob Ruuan'ok Ravenguard
.mob Ruuan'ok Matriarch
step
.goto Blade's Edge Mountains,64.48,33.09
.use 30704 >>|cRXP_WARN_Use the|r |T134295:0|t[Ruuan'ok Claws] |cRXP_WARN_in the green circle to summon the|r |cRXP_ENEMY_Harbinger of the Raven|r
>>Kill the |cRXP_ENEMY_Harbinger of the Raven|r. Loot him for his |cRXP_LOOT_Pendant|r
.cast 37426
.timer 8,Creating the Pendant RP
.complete 10567,1 
.isOnQuest 10567
.mob Harbinger of the Raven
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Wyrmcult Hewers|r and |cRXP_ENEMY_Wyrmcult Poachers|r. Loot them for the |T134942:0|t[|cRXP_LOOT_Meeting Note|r]
.use 31120 >>|cRXP_WARN_Use the|r |T134942:0|t[|cRXP_LOOT_Meeting Note|r] |cRXP_WARN_to start the quest|r
.collect 31120,1,10719,1 
.accept 10719 >>Accept Did You Get The Note?
.isOnQuest 10713
step
#loop
.line Blade's Edge Mountains,59.62,38.72,57.43,39.14,57.71,37.76,59.10,36.09,59.93,35.16,60.82,33.54,62.10,32.35,61.78,27.86,62.89,25.82,63.56,27.91,62.10,32.35,61.55,34.48,60.09,36.97,59.62,38.72
.goto Blade's Edge Mountains,59.62,38.72,50,0
.goto Blade's Edge Mountains,57.43,39.14,50,0
.goto Blade's Edge Mountains,57.71,37.76,50,0
.goto Blade's Edge Mountains,59.10,36.09,50,0
.goto Blade's Edge Mountains,59.93,35.16,50,0
.goto Blade's Edge Mountains,60.82,33.54,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.78,27.86,50,0
.goto Blade's Edge Mountains,62.89,25.82,50,0
.goto Blade's Edge Mountains,63.56,27.91,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.55,34.48,50,0
.goto Blade's Edge Mountains,60.09,36.97,50,0
.goto Blade's Edge Mountains,59.62,38.72,50,0
>>Kill |cRXP_ENEMY_Wyrmcult Poachers|r and |cRXP_ENEMY_Wyrmcult Hewers|r. Loot the |cRXP_ENEMY_Poachers|r for their |cRXP_LOOT_Nets|r
.complete 10717,1 
.mob +Wyrmcult Poacher
.mob +Wyrmcult Hewer
.complete 10713,1 
.mob +Wyrmcult Hewer
.isOnQuest 10713
step
#loop
.line Blade's Edge Mountains,59.62,38.72,57.43,39.14,57.71,37.76,59.10,36.09,59.93,35.16,60.82,33.54,62.10,32.35,61.78,27.86,62.89,25.82,63.56,27.91,62.10,32.35,61.55,34.48,60.09,36.97,59.62,38.72
.goto Blade's Edge Mountains,59.62,38.72,50,0
.goto Blade's Edge Mountains,57.43,39.14,50,0
.goto Blade's Edge Mountains,57.71,37.76,50,0
.goto Blade's Edge Mountains,59.10,36.09,50,0
.goto Blade's Edge Mountains,59.93,35.16,50,0
.goto Blade's Edge Mountains,60.82,33.54,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.78,27.86,50,0
.goto Blade's Edge Mountains,62.89,25.82,50,0
.goto Blade's Edge Mountains,63.56,27.91,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.55,34.48,50,0
.goto Blade's Edge Mountains,60.09,36.97,50,0
.goto Blade's Edge Mountains,59.62,38.72,50,0
>>Kill |cRXP_ENEMY_Wyrmcult Hewers|r and |cRXP_ENEMY_Wyrmcult Poachers|r. Loot them for the |T134942:0|t[|cRXP_LOOT_Meeting Note|r]
.use 31120 >>|cRXP_WARN_Use the|r |T134942:0|t[|cRXP_LOOT_Meeting Note|r] |cRXP_WARN_to start the quest|r
.collect 31120,1,10719,1 
.accept 10719 >>Accept Did You Get The Note?
.isOnQuest 10713
.mob Wyrmcult Hewer
.mob Wyrmcult Poacher
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Bloodmaul Maulers|r and |cRXP_ENEMY_Bloodmaul Warlocks|r
.complete 10796,1 
.mob +Bloodmaul Mauler
.complete 10796,2 
.mob +Bloodmaul Warlock
.isOnQuest 10796
step
.goto Blade's Edge Mountains,54.80,24.71,30,0
.goto Blade's Edge Mountains,55.15,24.05
>>|cRXP_WARN_Head upstairs|r
.use 31363 >>Kill |cRXP_ENEMY_Dorgok|r. Loot him for the |T134451:0|t[|cRXP_LOOT_Favor of the Gronn|r]
>>|cRXP_WARN_Use the|r |T134451:0|t[|cRXP_LOOT_Favor of the Gronn|r] |cRXP_WARN_to start the quest|r
.complete 10795,1 
.collect 31363,1,10797,1 
.accept 10797 >> Accept Favor of the Gronn
.isOnQuest 10796
.mob Dorgok
step
#loop
.line Blade's Edge Mountains,57.05,27.86,55.30,27.11,55.18,24.26,56.40,22.11,57.70,24.45,56.91,25.87,57.93,29.95,54.68,33.92,57.05,27.86
.goto Blade's Edge Mountains,57.05,27.86,50,0
.goto Blade's Edge Mountains,55.30,27.11,50,0
.goto Blade's Edge Mountains,55.18,24.26,50,0
.goto Blade's Edge Mountains,56.40,22.11,50,0
.goto Blade's Edge Mountains,57.70,24.45,50,0
.goto Blade's Edge Mountains,56.91,25.87,50,0
.goto Blade's Edge Mountains,57.93,29.95,50,0
.goto Blade's Edge Mountains,54.68,33.92,50,0
.goto Blade's Edge Mountains,57.05,27.86,50,0
>>Kill |cRXP_ENEMY_Bloodmaul Maulers|r and |cRXP_ENEMY_Bloodmaul Warlocks|r
.complete 10796,1 
.mob +Bloodmaul Mauler
.complete 10796,2 
.mob +Bloodmaul Warlock
.isOnQuest 10796
step
#completewith Evergrove2
.goto Blade's Edge Mountains,59.12,32.12,40,0
.goto Blade's Edge Mountains,60.38,28.77,40,0
.goto Blade's Edge Mountains,61.54,29.73,40 >> Ride up the mountain path
.cooldown item,6948,<0
.skill riding,225,1
step
#optional
#completewith next
.hs >>Hearth to Evergrove
.cooldown item,6948,>2
step
#label Evergrove2
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r, |cRXP_FRIENDLY_Commander Haephus Stonewall|r, |cRXP_FRIENDLY_Timeon|r, |cRXP_FRIENDLY_Tree Warden Chawn|r and |cRXP_FRIENDLY_Samia Inkling|r
.turnin 10796 >> Turn in Crush the Bloodmaul Camp!
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.turnin 10795 >> Turn in A Date with Dorgok
.turnin 10797 >> Turn in Favor of the Gronn
.accept 10798 >> Accept Pay the Baron a Visit
.goto Blade's Edge Mountains,61.98,37.98
.target +Commander Haephus Stonewall
.turnin 10567 >>Turn in Creating the Pendant
.accept 10607 >>Accept Whispers of the Raven God
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.turnin 10713 >>Turn in ...and a Time for Action
.turnin 10719 >>Turn in Did You Get The Note?
.accept 10894 >>Accept Wyrmskull Watcher
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.turnin 10717 >>Turn in Poaching from Poachers
.accept 10747 >>Accept Whelps of the Wyrmcult
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
.turnin 10798 >> Turn in Pay the Baron a Visit
.accept 10799 >> Accept Into the Churning Gulch
.maxlevel 66,bemend << !tbc
.target Baron Sablemane
step
#loop
.line Blade's Edge Mountains,51.18,37.94,48.99,41.05,49.28,44.96,47.16,45.03,45.19,47.89,44.82,44.78,47.03,43.18,48.99,41.05
.goto Blade's Edge Mountains,51.18,37.94,50,0
.goto Blade's Edge Mountains,48.99,41.05,50,0
.goto Blade's Edge Mountains,49.28,44.96,50,0
.goto Blade's Edge Mountains,47.16,45.03,50,0
.goto Blade's Edge Mountains,45.19,47.89,50,0
.goto Blade's Edge Mountains,44.82,44.78,50,0
.goto Blade's Edge Mountains,47.03,43.18,50,0
.goto Blade's Edge Mountains,48.99,41.05,50,0
>>Kill |cRXP_ENEMY_Young Crust Bursters|r and |cRXP_ENEMY_Greater Crust Bursters|r. Loot them for their |cRXP_LOOT_Venom Glands|r
.complete 10799,1 
.isOnQuest 10799
.mob Greater Crust Burster
.mob Young Crust Burster
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
.turnin 10799 >> Turn in Into the Churning Gulch
.accept 10800 >> Accept Goodnight, Gronn
.maxlevel 66,bemend << !tbc
.target Baron Sablemane
step
#completewith next
.cast 38510 >> |cRXP_WARN_Use|r |T132858:0|t[Sablemane's Sleeping Powder] |cRXP_WARN_on|r |cRXP_ENEMY_Grulloc|r
.use 31403
.isOnQuest 10800
.target Grulloc
step
.goto Blade's Edge Mountains,60.90,47.77
>>|cRXP_WARN_If the|r |T132858:0|t[Sleeping Powder] |cRXP_WARN_resists, use it on|r |cRXP_ENEMY_Grulloc|r |cRXP_WARN_again|r. Loot the |cRXP_LOOT_Sack|r next to |cRXP_ENEMY_Grulloc|r
.complete 10800,1 
.use 31403
.isOnQuest 10800
.target Grulloc
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
.turnin 10800 >> Turn in Goodnight, Gronn
.accept 10801 >> Accept It's a Trap!
.maxlevel 66,bemend << !tbc
.target Baron Sablemane
step << !Shaman
#completewith Evergrove3
.goto Blade's Edge Mountains,58.64,46.20,40,0
.goto Blade's Edge Mountains,59.95,44.60,40,0
.goto Blade's Edge Mountains,58.50,43.70,40,0
.goto Blade's Edge Mountains,59.40,42.14,40 >> Ride up the mountain path
.cooldown item,6948,<0
.skill riding,225,1
step << Shaman
#completewith next
.hs >>Hearth to Evergrove
.cooldown item,6948,>2
step
#label Evergrove3
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r and |cRXP_FRIENDLY_Lieutenant Fairweather|r
.turnin 10801 >> Turn in It's a Trap!
.accept 10802 >> Accept Gorgrom the Dragon-Eater
.goto Blade's Edge Mountains,61.98,37.98
.target +Commander Haephus Stonewall
.accept 10803 >> Accept Slaughter at Boulder'mok
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.maxlevel 66,bemend << !tbc
step
#completewith Evergrove3
.goto Blade's Edge Mountains,55.90,39.76,60,0
.goto Blade's Edge Mountains,59.40,42.14,40 >> Cross the bridge
.skill riding,225,1
step
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r atop the bridge
.turnin 10894 >>Turn in Wyrmskull Watcher
.accept 10893 >>Accept Longtail is the Lynchpin
.maxlevel 66,bemend << !tbc
.target Watcher Moonshade
step
>>Kill |cRXP_ENEMY_Draaca Longtail|r inside of the tunnel
.goto Blade's Edge Mountains,46.03,32.93,40,0
.goto Blade's Edge Mountains,45.81,32.90,40,0
.goto Blade's Edge Mountains,44.78,32.07
.complete 10893,1 
.unitscan Draaca Longtail
.isOnQuest 10893
step
.goto Blade's Edge Mountains,49.92,35.92,20,0
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
.turnin 10893 >>Turn in Longtail is the Lynchpin
.accept 10722 >>Accept Meeting at the Blackwing Coven
.maxlevel 66,bemend << !tbc
.target Watcher Moonshade
step
#optional
#completewith Prophecy
>>Kill |cRXP_ENEMY_Grishna|r. Loot them for the |T136210:0|t[|cRXP_LOOT_Orb of the Grishna|r]
.use 31489 >>|cRXP_WARN_Use the|r |T136210:0|t[|cRXP_LOOT_Orb of the Grishna|r] |cRXP_WARN_to start the quest|r
.collect 31489,1,10825,1 
.accept 10825 >>Accept The Truth Unorbed
.isOnQuest 10607
.mob Grishna Falconwing
.mob Grishna Harbinger
.mob Grishna Matriarch
.mob Grishna Scorncrow
step
#optional
#completewith Prophecy
+Kill |cRXP_ENEMY_Grishna|r
>>|cRXP_WARN_Stand next to them when they die for a chance to gain the|r |T132188:0|t[Understanding Ravenspeech] |cRXP_WARN_buff which is needed to receive the|r |cRXP_PICK_Prophecies|r
.aura 37642
.aura 37466
.isOnQuest 10607
.mob Grishna Falconwing
.mob Grishna Harbinger
.mob Grishna Matriarch
.mob Grishna Scorncrow
step
>>|cRXP_WARN_Go to the |cRXP_PICK_Prophecies|r in Grishnath to receive them|r
.complete 10607,4 
.goto Blade's Edge Mountains,40.18,23.02
.complete 10607,3 
.goto Blade's Edge Mountains,40.67,18.63
.isOnQuest 10607
step
#completewith next
.goto Blade's Edge Mountains,40.61,17.46,20,0
.goto Blade's Edge Mountains,39.92,16.42,20,0
.goto Blade's Edge Mountains,39.02,17.25,20 >>|cRXP_WARN_Go up the tree platform on the west side. Cross the bridge, then click the|r |cRXP_PICK_Prophecy|r
.skill riding,225,1
step
>>|cRXP_WARN_Go to the |cRXP_PICK_Prophecy|r on the tree platform|r
.complete 10607,1 
.goto Blade's Edge Mountains,39.02,17.25
.isOnQuest 10607
step
#completewith next
.goto Blade's Edge Mountains,41.08,18.18,20,0
.goto Blade's Edge Mountains,42.35,19.18,20,0
.goto Blade's Edge Mountains,42.47,21.63,20 >>|cRXP_WARN_Go up the tree platform on the east side. Cross the bridge, go down a floor, then click the|r |cRXP_PICK_Prophecy|r
.skill riding,225,1
step
#label Prophecy
>>|cRXP_WARN_Go to the |cRXP_PICK_Prophecy|r on the bottom floor of the tree platform|r
.goto Blade's Edge Mountains,42.47,21.63
.complete 10607,2 
.isOnQuest 10607
step
#loop
.line Blade's Edge Mountains,42.30,24.63,41.37,20.69,39.96,22.83,38.41,20.01,39.33,17.50,40.80,17.74,42.15,18.55,42.73,21.32,42.30,24.63
.goto Blade's Edge Mountains,42.30,24.63,60,0
.goto Blade's Edge Mountains,41.37,20.69,60,0
.goto Blade's Edge Mountains,39.96,22.83,60,0
.goto Blade's Edge Mountains,38.41,20.01,60,0
.goto Blade's Edge Mountains,39.33,17.50,60,0
.goto Blade's Edge Mountains,40.80,17.74,60,0
.goto Blade's Edge Mountains,42.15,18.55,60,0
.goto Blade's Edge Mountains,42.73,21.32,60,0
.goto Blade's Edge Mountains,42.30,24.63,60,0
>>Kill |cRXP_ENEMY_Grishna|r. Loot them for the |T136210:0|t[|cRXP_LOOT_Orb of the Grishna|r]
.use 31489 >>|cRXP_WARN_Use the|r |T136210:0|t[|cRXP_LOOT_Orb of the Grishna|r] |cRXP_WARN_to start the quest|r
.collect 31489,1,10825,1 
.accept 10825 >>Accept The Truth Unorbed
.isOnQuest 10607
.mob Grishna Falconwing
.mob Grishna Harbinger
.mob Grishna Matriarch
.mob Grishna Scorncrow
step
#optional
#completewith Plant
>>Kill |cRXP_ENEMY_Boulder'mok Brutes|r and |cRXP_ENEMY_Boulder'mok Shaman|r
.complete 10803,1 
.mob +Boulder'mok Brute
.complete 10803,2 
.mob +Boulder'mok Shaman
.isOnQuest 10803
step
#loop
.line Blade's Edge Mountains,31.88,21.40,31.59,22.91,30.89,24.19,29.49,23.96,30.41,22.68,30.38,21.06,31.19,19.79,31.88,21.40
.goto Blade's Edge Mountains,31.88,21.40,60,0
.goto Blade's Edge Mountains,31.59,22.91,60,0
.goto Blade's Edge Mountains,30.89,24.19,60,0
.goto Blade's Edge Mountains,29.49,23.96,60,0
.goto Blade's Edge Mountains,30.41,22.68,60,0
.goto Blade's Edge Mountains,30.38,21.06,60,0
.goto Blade's Edge Mountains,31.19,19.79,60,0
.goto Blade's Edge Mountains,31.88,21.40,60,0
>>Kill |cRXP_ENEMY_Boulder'mok Ogres|r. Loot them for their |cRXP_LOOT_Totems|r
.collect 31754,3,10802,1 
.isOnQuest 10802
.mob Boulder'mok Chieftain
.mob Boulder'mok Brute
.mob Boulder'mok Shaman
step
#completewith next
.goto Blade's Edge Mountains,30.58,22.18
.cast 39264 >>|cRXP_WARN_Click |cRXP_PICK_Gorgrom's Altar|r to start the RP|r
.timer 12,Gorgrom RP
.isOnQuest 10802
step
#label Plant
.goto Blade's Edge Mountains,30.64,22.13
.use 31754 >>|cRXP_WARN_Wait for the short RP|r
>>|cRXP_WARN_When |cRXP_ENEMY_Gorgrom|r dies, use|r |T132352:0|t[Grisly Totems] |cRXP_WARN_on him 3 times|r
.complete 10802,1 
.isOnQuest 10802
.mob Gorgrom the Dragon-Eater
step
#loop
.line Blade's Edge Mountains,31.88,21.40,31.59,22.91,30.89,24.19,29.49,23.96,30.41,22.68,30.38,21.06,31.19,19.79,31.88,21.40
.goto Blade's Edge Mountains,31.88,21.40,60,0
.goto Blade's Edge Mountains,31.59,22.91,60,0
.goto Blade's Edge Mountains,30.89,24.19,60,0
.goto Blade's Edge Mountains,29.49,23.96,60,0
.goto Blade's Edge Mountains,30.41,22.68,60,0
.goto Blade's Edge Mountains,30.38,21.06,60,0
.goto Blade's Edge Mountains,31.19,19.79,60,0
.goto Blade's Edge Mountains,31.88,21.40,60,0
>>Kill |cRXP_ENEMY_Boulder'mok Brutes|r and |cRXP_ENEMY_Boulder'mok Shaman|r
.complete 10803,1 
.mob +Boulder'mok Brute
.complete 10803,2 
.mob +Boulder'mok Shaman
.isOnQuest 10803
step
#loop
.line Blade's Edge Mountains,30.77,31.59,31.05,33.60,33.35,32.28,33.10,30.99,30.77,31.59
.goto Blade's Edge Mountains,30.77,31.59,50,0
.goto Blade's Edge Mountains,31.05,33.60,50,0
.goto Blade's Edge Mountains,33.35,32.28,50,0
.goto Blade's Edge Mountains,33.10,30.99,50,0
.goto Blade's Edge Mountains,30.77,31.59,50,0
>>Kill |cRXP_ENEMY_Wyrmcult|r. Loot them for their |cRXP_LOOT_Costume Scraps|r
.collect 31121,3,10747,1 
.isOnQuest 10722
.mob Wyrmcult Acolyte
.mob Wyrmcult Blessed
.mob Wyrmcult Zealot
.mob Wyrmcult Scout
step
#completewith Scraps
.goto Blade's Edge Mountains,32.04,33.87,20 >> Enter the Blackwing Coven
step
#optional
#completewith Kolphis
>>|cRXP_WARN_Use the|r |T134325:0|t[Blackwhelp Net] |cRXP_WARN_on|r |cRXP_ENEMY_Wyrmcult Blackwhelps|r
>>|cRXP_WARN_You can step on the eggs in the cave to spawn more|r |cRXP_ENEMY_Wyrmcult Blackwhelps|r
.complete 10747,1 
.use 31129
.isOnQuest 10747
.mob Wyrmcult Blackwhelp
step
#label Scraps
.goto Blade's Edge Mountains,32.25,34.77,30,0
.goto Blade's Edge Mountains,33.90,34.36,30,0
.goto Blade's Edge Mountains,31.55,36.03,40,0
.goto Blade's Edge Mountains,31.85,37.27,30,0
.goto Blade's Edge Mountains,32.25,34.77,30,0
.goto Blade's Edge Mountains,33.90,34.36,30,0
.goto Blade's Edge Mountains,31.55,36.03,40,0
.goto Blade's Edge Mountains,31.85,37.27,30,0
>>Kill |cRXP_ENEMY_Wyrmcult|r. Loot them for their |cRXP_LOOT_Costume Scraps|r
>>|cRXP_WARN_You can get more outside if needed|r
.collect 31121,5,10747,1 
.isOnQuest 10722
.mob Wyrmcult Acolyte
.mob Wyrmcult Blessed
.mob Wyrmcult Zealot
.mob Wyrmcult Scout
step
.use 31121 >> |cRXP_WARN_Use the|r |T132911:0|t[Costume Scraps] |cRXP_WARN_to make the|r |T132760:0|t[Overseer Disguise]
.collect 31122,1,10747,1 
.isOnQuest 10722
step
.cast 38157 >>|cRXP_WARN_Use the|r |T132760:0|t[Overseer Disguise]
.use 31122
.isOnQuest 10722
step
#label Kolphis
.goto Blade's Edge Mountains,32.66,37.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kolphis Darkscale|r at the end of the cave while disguised
>>|cRXP_WARN_Be careful as the disguise only lasts 3 minutes|r
.complete 10722,1 
.use 31122
.skipgossip
.isOnQuest 10722
.target Kolphis Darkscale
step
.goto Blade's Edge Mountains,33.62,37.14,30,0
.goto Blade's Edge Mountains,33.64,35.63,30,0
.goto Blade's Edge Mountains,33.92,34.33,30,0
.goto Blade's Edge Mountains,31.41,36.29,30,0
.goto Blade's Edge Mountains,33.62,37.14,30,0
.goto Blade's Edge Mountains,33.64,35.63,30,0
.goto Blade's Edge Mountains,33.92,34.33,30,0
.goto Blade's Edge Mountains,31.41,36.29
>>|cRXP_WARN_Use the|r |T134325:0|t[Blackwhelp Net] |cRXP_WARN_on|r |cRXP_ENEMY_Wyrmcult Blackwhelps|r
>>|cRXP_WARN_You can step on the eggs in the cave while undisguised to spawn more|r |cRXP_ENEMY_Blackwhelps|r
.complete 10747,1 
.use 31129
.isOnQuest 10747
.mob Wyrmcult Blackwhelp
step
#completewith next
.hs >>Hearth to Evergrove
step
#questguide
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r, |cRXP_FRIENDLY_Commander Haephus Stonewall|r, |cRXP_FRIENDLY_Timeon|r, |cRXP_FRIENDLY_Tree Warden Chawn|r and |cRXP_FRIENDLY_Samia Inkling|r
.turnin 10803 >> Turn in Slaughter at Boulder'mok
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.turnin 10802 >> Turn in Gorgrom the Dragon-Eater
.accept 10818 >> Accept Baron Sablemane Has Requested Your Presence
.goto Blade's Edge Mountains,61.98,37.98
.target +Commander Haephus Stonewall
.turnin 10607 >> Turn in Whispers of the Raven God
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.turnin 10722 >> Turn in Meeting at the Blackwing Coven
.turnin 10825 >> Turn in The Truth Unorbed
.accept 10748 >> Maxnar Must Die!
.accept 10829 >> Treebole Must Know
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.turnin 10747 >> Turn in Whelps of the Wyrmcult
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r, |cRXP_FRIENDLY_Commander Haephus Stonewall|r, |cRXP_FRIENDLY_Timeon|r, |cRXP_FRIENDLY_Tree Warden Chawn|r and |cRXP_FRIENDLY_Samia Inkling|r
.turnin 10803 >> Turn in Slaughter at Boulder'mok
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.turnin 10802 >> Turn in Gorgrom the Dragon-Eater

.goto Blade's Edge Mountains,61.98,37.98
.target +Commander Haephus Stonewall
.turnin 10607 >> Turn in Whispers of the Raven God
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.turnin 10722 >> Turn in Meeting at the Blackwing Coven
.turnin 10825 >> Turn in The Truth Unorbed


.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.turnin 10747 >> Turn in Whelps of the Wyrmcult
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
#completewith Signal
.goto Blade's Edge Mountains,61.68,39.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fhyn Leafshadow|r
.fly Toshley >> Fly to Toshley's Station
.skill riding,300,1
.isQuestTurnedIn 10821
.target Fhyn Leafshadow
step
#questguide
>>Travel to Toshley's Station
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Zapnabber|r and |cRXP_FRIENDLY_Dizzy Dina|r
.turnin 10711 >> Turn in Test Flight: Razaan's Landing
.goto Blade's Edge Mountains,60.28,68.39
.turnin 10671 >> Turn in More than a Pound of Flesh
.goto Blade's Edge Mountains,60.40,68.75
.maxlevel 66,bemend << !tbc
.target Tally Zapnabber
.target Dizzy Dina
step
#optional
#completewith Signal
.goto Blade's Edge Mountains,64.31,70.67
>>|cRXP_WARN_Carefully jump down east of Toshley's Station to Death's Door|r
.cast 38782 >>|cRXP_WARN_Use the|r |T135815:0|t[Druid Signal] |cRXP_WARN_to summon an |cRXP_FRIENDLY_Evergrove Druid|r at Death's Door|r
.timer 18,Druid Signal RP
.skill riding,225,1
.isOnQuest 10910
step
#completewith next
.goto Blade's Edge Mountains,64.31,70.67
.cast 38782 >>|cRXP_WARN_Use the|r |T135815:0|t[Druid Signal] |cRXP_WARN_to summon an |cRXP_FRIENDLY_Evergrove Druid|r at Death's Door|r
.timer 18,Druid Signal RP
.skill riding,<225,1
.isOnQuest 10910
step
#label Signal
.goto Blade's Edge Mountains,64.31,70.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Evergrove Druid|r
.turnin 10910 >> Turn in Death's Door
.accept 10904 >> Accept Harvesting the Fel Ammunition
.use 31763
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Evergrove Druid
step
#loop
.line Blade's Edge Mountains,63.79,70.87,63.76,68.70,63.08,66.67,62.35,61.39,61.57,59.57,63.39,59.88,63.07,63.93,64.96,67.57,63.79,70.87
.goto Blade's Edge Mountains,63.79,70.87,45,0
.goto Blade's Edge Mountains,63.76,68.70,45,0
.goto Blade's Edge Mountains,63.08,66.67,45,0
.goto Blade's Edge Mountains,62.35,61.39,45,0
.goto Blade's Edge Mountains,61.57,59.57,45,0
.goto Blade's Edge Mountains,63.39,59.88,45,0
.goto Blade's Edge Mountains,63.07,63.93,45,0
.goto Blade's Edge Mountains,64.96,67.57,45,0
.goto Blade's Edge Mountains,63.79,70.87,45,0
>>Kill the |cRXP_ENEMY_Deathforge|r and |cRXP_ENEMY_Death Demons|r. Loot them for their |cRXP_LOOT_Cannonballs|r
.complete 10904,1 
.isOnQuest 10904
.mob Death's Might
.mob Death's Watch
.mob Deathforge Over-Smith
.mob Deathforge Technician
step
#completewith next
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
.cast 38782 >>|cRXP_WARN_Use the|r |T135815:0|t[Druid Signal] |cRXP_WARN_to summon an |cRXP_FRIENDLY_Evergrove Druid|r at Death's Door|r
.timer 18,Druid Signal RP
.isOnQuest 10904
step
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Evergrove Druid|r
.turnin 10904 >> Turn in Harvesting the Fel Ammunition
.accept 10911 >> Accept Fire At Will!
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Evergrove Druid
step
>>|cRXP_WARN_Use the|r |T136030:0|t[Naturalized Ammunition] |cRXP_WARN_to take control of a|r |cRXP_ENEMY_Fel Cannon|r
>>|cRXP_WARN_Cast|r |T135803:0|t[Artillery on the Warp-Gate] (1) |cRXP_WARN_to destroy the |cRXP_ENEMY_Warp-Gates|r while defending it|r
.complete 10911,1 
.goto Blade's Edge Mountains,64.81,68.32,-1
.complete 10911,2 
.goto Blade's Edge Mountains,61.96,60.29,-1
.isOnQuest 10911
.isQuestTurnedIn 10821
.use 31807
step
#completewith next
.goto Blade's Edge Mountains,62.50,60.17
.cast 38782 >>|cRXP_WARN_Use the|r |T135815:0|t[Druid Signal] |cRXP_WARN_to summon an |cRXP_FRIENDLY_Evergrove Druid|r at Death's Door|r
.timer 18,Druid Signal RP
.isOnQuest 10911
step
.goto Blade's Edge Mountains,62.50,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Evergrove Druid|r
.turnin 10911 >> Turn in Fire At Will!
.accept 10912 >> Accept The Hound-Master
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Evergrove Druid
step
.goto Blade's Edge Mountains,63.62,59.11
.use 31809 >>|cRXP_WARN_Use the|r |T133749:0|t[Evergrove Wand] |cRXP_WARN_to summon |cRXP_FRIENDLY_Evergorve Ancients|r. They will help you fight|r |cRXP_ENEMY_Baelmon the Hound-Master|r
>>Kill |cRXP_ENEMY_Baelmon the Hound-Master|r
>>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r <<tbc/wotlk
.complete 10912,1 
.use 31809
.isQuestTurnedIn 10821
.isOnQuest 10912
.mob Baelmon the Hound-Master
step
#completewith HoundMaster
.goto Blade's Edge Mountains,61.15,70.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rip Pedalslam|r
.fly Evergrove >> Fly to Evergrove
.cooldown item,6948,<0
.skill riding,225,1
.isQuestTurnedIn 10821
.target Rip Pedalslam
step
#optional
#completewith next
.hs >>Hearth to Evergrove
.cooldown item,6948,>2
.isQuestTurnedIn 10821
step
#label HoundMaster
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.turnin 10912 >> Turn in The Hound-Master
.isQuestComplete 10912
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
.abandon 10912 >> Abandon The Hound-Master
step << skip
.goto Blade's Edge Mountains,60.3,68.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Zapnabber|r
.accept 10712 >> Accept Test Flight: Ruuan Weald
.target Tally Zapnabber
step << skip
.goto Blade's Edge Mountains,60.2,68.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Zapnabber|r to launch you towards Ruaan Weald
.complete 10712,1 
>>IMPORTANT: Use the item in your bags during the flight
.complete 10712,2 
.target Tally Zapnabber
step << skip
.goto Blade's Edge Mountains,62.7,40.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
.turnin 10712 >> Turn in Test Flight: Ruuan Weald
.target O'Mally Zapnabber
step
#questguide
#label Treebole
.goto Blade's Edge Mountains,37.1,22.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
.turnin 10829 >> Turn in Treebole Must Know
.accept 10830 >> Accept Exorcising the Trees
.maxlevel 66,bemend << !tbc
.target Treebole
step
#questguide
#completewith leafbeardE
.goto Blade's Edge Mountains,34.3,19.8
.goto Blade's Edge Mountains,40.3,23.0,0
.goto Blade's Edge Mountains,40.0,22.8,0
.goto Blade's Edge Mountains,40.2,20.6,0
.goto Blade's Edge Mountains,39.3,17.4,0
.goto Blade's Edge Mountains,41.3,21.9,0
>>Kill |cRXP_ENEMY_Dire Ravens|r. Loot them for their |cRXP_LOOT_Pinfeathers|r
>>Loot the |cRXP_LOOT_Grishnath Orbs|r on the ground
.collect 31495,5 
.collect 31517,5 
.maxlevel 66,bemend << !tbc
.mob Dire Raven
step
#questguide
#label leafbeardE
.goto Blade's Edge Mountains,34.3,19.8
>>|cRXP_WARN_Use the|r |T136210:0|t[Grishnath Orb] |cRXP_WARN_and|r |T132915:0|t[Dire Pinfeather] |cRXP_WARN_to create an|r |T132920:0|t[Exorcism Feather]
>>|cRXP_WARN_Use them on the|r |cRXP_ENEMY_Raven's Wood Leafbeards|r
>>|cRXP_WARN_The |cRXP_ENEMY_Raven's Wood Leafbeards|r will become friendly after you kill the|r |cRXP_ENEMY_Koi-Koi Spirits|r
.use 31518
.use 31495
.complete 10830,1 
.maxlevel 66,bemend << !tbc
.mob Raven's Wood Leafbeard
.mob Koi-Koi Spirit
step
#questguide
.goto Blade's Edge Mountains,37.1,22.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
.turnin 10830 >>Turn in Exorcising the Trees
.maxlevel 66,bemend << !tbc
.target Treebole
step
#questguide
.goto Blade's Edge Mountains,33.7,35.9
>>Run to the back of the Blackwing Coven
>>Kill |cRXP_ENEMY_Maxnar the Ashmaw|r
.complete 10748,1 
.maxlevel 66,bemend << !tbc
.mob Maxnar the Ashmaw
step
#questguide
.goto Blade's Edge Mountains,62.0,39.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
.turnin 10748 >>Turn in Maxnar Must Die!
.maxlevel 66,bemend << !tbc
.target Tree Warden Chawn
step
#label bemend
step << !tbc !wotlk
#xprate >1.59
#optional
#label endOfTheGuide
]]);

RXPGuides.RegisterGuide([[
#version 9
#cata
#mop
#wotlk
#group RXP MoP 60-80 (A)
<< Alliance
#name 67-67 Blade's Edge Turn-ins
#version 9
#next 67-68 Netherstorm;71-73 Borean Tundra
#defaultfor !tbc
step
+As you're now Level 67 (or higher) and have completed all of your current Blade's Edge objectives, the guide will now turn in all remaining quests before sending you off to Netherstorm.
*Click the box here to begin this process
.isQuestAvailable 10912
.xp 67,1

step
#optional
#completewith HoundMaster
.goto Shattrath City,64.05,41.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
.fly Telredor >> Fly to Telredor
.zoneskip Nagrand
.zoneskip Zangarmarsh
.skill riding,300,1
.target Nutral
step
#questguide << !tbc
.goto Zangarmarsh,68.3, 49.4
>>Return to Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
.turnin 9801 >>Turn in Gathering the Reagents
.isQuestComplete 9801
.target Anchorite Ahuurn
step
#optional
#completewith HoundMaster
.goto Shattrath City,64.05,41.12,-1
.goto Zangarmarsh,67.83,51.46,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r or |cRXP_FRIENDLY_Munci|r
>>|cRXP_WARN_The arrow will point you to the closest Flight Master|r
.fly Orebor Harborage >> Fly to Orebor Harborage
.skill riding,300,1
.target Nutral
.target Munci
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kialon Nightblade|r
.turnin 9794 >> Turn in No Time for Curiosity
.goto Blade's Edge Mountains,35.97,67.76,30,0
.goto Blade's Edge Mountains,36.61,67.34
.isQuestComplete 9794
.target Kialon Nightblade
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
.turnin 10927 >> Turn in Killing the Crawlers
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10927
.target Commander Skyshadow
step
.goto Blade's Edge Mountains,34.31,77.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Tome|r atop the tree platform
.turnin 10555 >> Turn in Malaise
.isQuestComplete 10555
step
#completewith next
.goto Blade's Edge Mountains,35.23,77.31
.cast 36904 >> Use the |T132926:0|t[Fistful of Feathers] in your bags at the summoning circle
.use 30530
.isOnQuest 10556
step
.goto Blade's Edge Mountains,37.07,65.62
>>After using the |T132926:0|tFeathers, a |cRXP_FRIENDLY_Small Bird Companion|r will follow you around
>>|cRXP_WARN_Be aware|r that the |cRXP_FRIENDLY_Bird|r can't keep up with you if you run off on your mount
>>Escort the |cRXP_FRIENDLY_Bird|r back to |cRXP_FRIENDLY_Daranelle|r
.complete 10556,1 
.isOnQuest 10556
.target Daranelle
step
#label Scratches
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daranelle|r
.turnin 10556 >> Turn in Scratches
.goto Blade's Edge Mountains,37.07,65.62
.isQuestComplete 10556
.target Daranelle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
.turnin 10455 >> Turn in The Encroaching Wilderness
.goto Blade's Edge Mountains,36.21,67.13
.isQuestComplete 10455
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
.turnin 10690 >> Turn in The Den Mother
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10690
.target Commander Skyshadow
step
#label SylHS
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
.turnin 10456 >> Turn in Marauding Wolves
.goto Blade's Edge Mountains,36.21,67.13
.isQuestComplete 10456
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
.turnin 10457 >> Turn in Protecting Our Own
.isQuestComplete 10457
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
.turnin 10506 >> Turn in A Dire Situation
.goto Blade's Edge Mountains,36.21,67.13
.isQuestComplete 10506
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
.turnin 10502 >> Turn in The Bloodmaul Ogres
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10502
.target Commander Skyshadow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Stouthammer|r
.turnin 10510 >> Turn in Into the Draenethyst Mine
.goto Blade's Edge Mountains,37.41,65.05
.isQuestComplete 10510
.target Bronwyn Stouthammer
step
#label Borgrim2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgrim Stouthammer|r
.turnin 10511 >> Turn in Strange Brew
.goto Blade's Edge Mountains,37.40,64.66
.isQuestComplete 10511
.target Borgrim Stouthammer
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
.turnin 10516 >> Turn in The Trappings of a Vindicator
.accept 10517 >> Accept Gorr'Dim, Your Time Has Come...
.isQuestComplete 10516
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
.accept 10517 >> Accept Gorr'Dim, Your Time Has Come...
.isQuestTurnedIn 10516
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,39.38,49.06
>>Kill the two |cRXP_ENEMY_Ogres|r nearest to the door, then use the |T132621:0|t[Brutebane Keg] in your bags to lure |cRXP_ENEMY_Gorr'Dim|r away from the elite guards. Kill him
.complete 10517,1 
.isOnQuest 10517
.mob Bladespire Shaman
.mob Bladespire Brute
.mob Gorr'Dim
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
.turnin 10517 >> Turn in Gorr'Dim, Your Time Has Come...
.isQuestComplete 10517
.target Vindicator Vuuleen
step
#completewith BorgrimT
.hs >> Hearth to Sylvanaar
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
.turnin 10504 >> Turn in The Bladespire Ogres
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10504
.target Commander Skyshadow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
.turnin 10518 >> Turn in Planting the Banner
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10518
.target Commander Skyshadow
step
#label BorgrimT
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgrim Stouthammer|r
.turnin 10512 >> Turn in Getting the Bladespire Tanked
.goto Blade's Edge Mountains,37.40,64.66
.isQuestComplete 10512
.target Borgrim Stouthammer
step
.goto Blade's Edge Mountains,55.11,72.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
.turnin 10580 >> Turn in Where Did Those Darn Gnomes Go?
.accept 10581 >> Accept Follow the Breadcrumbs
.isQuestComplete 10580
.target R-3D0
step
.goto Blade's Edge Mountains,55.11,72.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
.accept 10581 >> Accept Follow the Breadcrumbs
.isQuestTurnedIn 10580
.target R-3D0
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
.turnin 10581 >> Turn in Follow the Breadcrumbs
.goto Blade's Edge Mountains,60.53,68.97
.isQuestComplete 10581
.target Toshley
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Zapnabber|r
.turnin 10557 >> Turn in Test Flight: The Zephyrium Capacitorium
.goto Blade's Edge Mountains,60.28,68.39
.isQuestComplete 10557
.target Tally Zapnabber
step
#label ToshStation
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
.turnin 10584 >> Turn in Picking Up Some Power Converters
.goto Blade's Edge Mountains,60.53,68.97
.isQuestComplete 10584
.target Toshley
step
#completewith CrystalClear
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.turnin 10632 >> Turn in Cutting Your Teeth
.isQuestComplete 10632
.target Razak Ironsides
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r
.turnin 10608 >> Turn in Crystal Clear
.goto Blade's Edge Mountains,60.22,68.94
.isQuestComplete 10608
.target Nickwinkle the Metro-Gnome
step
#label CrystalClear
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy Dina|r
.turnin 10620 >> Turn in Ridgespine Menace
.goto Blade's Edge Mountains,60.40,68.75
.isQuestComplete 10620
.target Dizzy Dina
step
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r patrolling the Station
.turnin 10632 >> Turn in Cutting Your Teeth
.isQuestComplete 10632
.target Razak Ironsides
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r
.turnin 10594 >> Turn in Gauging the Resonant Frequency
.goto Blade's Edge Mountains,60.22,68.94
.isQuestComplete 10594
.target Nickwinkle the Metro-Gnome
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Zapnabber|r
.turnin 10710 >> Turn in Test Flight: The Singing Ridge
.goto Blade's Edge Mountains,60.28,68.39
.isQuestComplete 10710
.target Tally Zapnabber
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
.turnin 10609 >> Turn in What Came First, the Drake or the Egg?
.goto Blade's Edge Mountains,60.98,68.11
.isQuestComplete 10609
.target Fizit "Doc" Clocktock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r
.turnin 10753 >>Turn in Culling the Wild
.goto Blade's Edge Mountains,62.56,38.23
.isQuestComplete 10753
.target Faradrella
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
.turnin 10770 >>Turn in Little Embers
.goto Blade's Edge Mountains,61.25,38.46
.isQuestComplete 10770
.target Mosswood the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
.turnin 10771 >>Turn in From the Ashes
.goto Blade's Edge Mountains,61.25,38.46
.isQuestComplete 10771
.target Mosswood the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
.turnin 10810 >>Turn in Damaged Mask
.accept 10812 >>Accept Mystery Mask
.goto Blade's Edge Mountains,62.66,40.38
.isQuestComplete 10810
.target O'Mally Zapnabber
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
.accept 10812 >>Accept Mystery Mask
.goto Blade's Edge Mountains,62.66,40.38
.isQuestTurnedIn 10810
.target O'Mally Zapnabber
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.turnin 10812 >>Turn in Mystery Mask
.isQuestComplete 10812
.target Wildlord Antelarion
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.accept 10819 >>Accept Felsworn Gas Mask
.isQuestTurnedIn 10812
.target Wildlord Antelarion
step
#completewith next
.cast 38448 >> Equip the |T133133:0|t[Felsworn Gas Mask] in your bags to be able to talk to the |cRXP_FRIENDLY_Legion Communicator|r

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.goto Blade's Edge Mountains,73.27,40.03
.turnin 10819 >>Turn in Felsworn Gas Mask
.isQuestComplete 10819

step
#completewith next
.cast 38448 >> Equip the |T133133:0|t[Felsworn Gas Mask] in your bags to be able to talk to the |cRXP_FRIENDLY_Legion Communicator|r

step
.goto Blade's Edge Mountains,73.27,40.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.turnin 10820 >>Turn in Deceive thy Enemy
.isQuestComplete 10820

step
#completewith Nuaar
.hs >>Hearth to Evergrove
.cooldown item,6948,>2
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.turnin 10821 >> Turn in You're Fired!
.isQuestComplete 10821
.target Wildlord Antelarion
step
#label Nuaar
.line Blade's Edge Mountains,62.82,25.94,63.12,27.41,63.34,27.87,63.28,28.37,62.73,28.77,62.45,29.31,62.37,29.65,62.44,31.66,62.11,33.34,61.80,34.00,61.43,34.10,60.61,33.98,60.12,34.47,60.01,34.80,60.08,35.15,59.90,35.72,59.60,36.07,59.11,36.21,58.96,36.61,58.65,36.91,58.18,36.96,57.90,37.34,57.84,37.81,59.13,39.47,59.90,40.27,60.51,40.90,61.50,42.02,61.78,42.41,62.62,43.95,62.97,45.05,63.06,46.38
63.06,46.38
.goto Blade's Edge Mountains,63.06,46.38,60,0
.goto Blade's Edge Mountains,62.97,45.05,60,0
.goto Blade's Edge Mountains,62.62,43.95,60,0
.goto Blade's Edge Mountains,61.78,42.41,60,0
.goto Blade's Edge Mountains,61.50,42.02,60,0
.goto Blade's Edge Mountains,60.51,40.90,60,0
.goto Blade's Edge Mountains,59.90,40.27,60,0
.goto Blade's Edge Mountains,59.13,39.47,60,0
.goto Blade's Edge Mountains,57.84,37.81,60,0
.goto Blade's Edge Mountains,57.90,37.34,60,0
.goto Blade's Edge Mountains,58.18,36.96,60,0
.goto Blade's Edge Mountains,58.65,36.91,60,0
.goto Blade's Edge Mountains,58.96,36.61,60,0
.goto Blade's Edge Mountains,59.11,36.21,60,0
.goto Blade's Edge Mountains,59.60,36.07,60,0
.goto Blade's Edge Mountains,59.90,35.72,60,0
.goto Blade's Edge Mountains,60.08,35.15,60,0
.goto Blade's Edge Mountains,60.01,34.80,60,0
.goto Blade's Edge Mountains,60.12,34.47,60,0
.goto Blade's Edge Mountains,60.61,33.98,60,0
.goto Blade's Edge Mountains,61.80,34.00,60,0
.goto Blade's Edge Mountains,62.11,33.34,60,0
.goto Blade's Edge Mountains,62.44,31.66,60,0
.goto Blade's Edge Mountains,62.37,29.65,60,0
.goto Blade's Edge Mountains,62.45,29.31,60,0
.goto Blade's Edge Mountains,62.73,28.77,60,0
.goto Blade's Edge Mountains,63.28,28.37,60,0
.goto Blade's Edge Mountains,63.34,27.87,60,0
.goto Blade's Edge Mountains,63.12,27.41,60,0
.goto Blade's Edge Mountains,62.82,25.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Nuaar|r
>>He patrols the Wyrmcult camps of Ruuan Weald
.complete 10682,1 
.unitscan Overseer Nuaar
.skipgossip
.isOnQuest 10682
step
>>Return to Evergrove. Talk to Chawn
.turnin 10682 >>Turn in A Time for Negotiation...
.goto Blade's Edge Mountains,61.97,39.47
.isQuestComplete 10682
.target Tree Warden Chawn
step
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
.turnin 10795 >> Turn in A Date with Dorgok
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10795
.target Commander Haephus Stonewall
step
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
.turnin 10797 >> Turn in Favor of the Gronn
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10797
.target Commander Haephus Stonewall
step
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r
.turnin 10796 >> Turn in Crush the Bloodmaul Camp!
.goto Blade's Edge Mountains,61.98,37.94
.isQuestComplete 10796
.target Lieutenant Fairweather
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
.turnin 10567 >>Turn in Creating the Pendant
.goto Blade's Edge Mountains,62.16,39.11
.isQuestComplete 10567
.target Timeon
step
.goto Blade's Edge Mountains,61.97,39.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r and |cRXP_FRIENDLY_Samia Inkling|r
.turnin 10713 >>Turn in ...and a Time for Action
.isQuestComplete 10713
.target Tree Warden Chawn
step
.goto Blade's Edge Mountains,61.97,39.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
.turnin 10719 >>Turn in Did You Get The Note?
.target Tree Warden Chawn
.isQuestComplete 10719
step
.goto Blade's Edge Mountains,61.94,39.45
.turnin 10717 >>Turn in Poaching from Poachers
.isQuestComplete 10717
.target Samia Inkling
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
.turnin 10798 >> Turn in Pay the Baron a Visit
.isQuestComplete 10798
.target Baron Sablemane
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
.turnin 10799 >> Turn in Into the Churning Gulch
.isQuestComplete 10799
.target Baron Sablemane
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
.turnin 10800 >> Turn in Goodnight, Gronn
.isQuestComplete 10800
.target Baron Sablemane
step
#label Evergrove3
>>Return to Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
.turnin 10801 >> Turn in It's a Trap!
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10801
.target Commander Haephus Stonewall
step
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r atop the bridge
.turnin 10894 >>Turn in Wyrmskull Watcher
.isQuestComplete 10894
.target Watcher Moonshade
step
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r atop the bridge
.accept 10893 >>Accept Longtail is the Lynchpin
.isQuestTurnedIn 10894
.target Watcher Moonshade
step
>>Kill |cRXP_ENEMY_Draaca|r inside of the tunnel
.goto Blade's Edge Mountains,46.03,32.93,40,0
.goto Blade's Edge Mountains,45.81,32.90,40,0
.goto Blade's Edge Mountains,44.78,32.07
.complete 10893,1 
.unitscan Draaca Longtail
.isOnQuest 10893
step
.goto Blade's Edge Mountains,49.92,35.92,20,0
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
.turnin 10893 >>Turn in Longtail is the Lynchpin
.isQuestComplete 10893
.target Watcher Moonshade
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r
.turnin 10803 >> Turn in Slaughter at Boulder'mok
.goto Blade's Edge Mountains,61.98,37.94
.isQuestComplete 10803
.target Lieutenant Fairweather
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
.turnin 10802 >> Turn in Gorgrom the Dragon-Eater
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10802
.target Commander Haephus Stonewall
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
.turnin 10607 >> Turn in Whispers of the Raven God
.goto Blade's Edge Mountains,62.16,39.11
.isQuestComplete 10607
.target Timeon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
.turnin 10722 >> Turn in Meeting at the Blackwing Coven
.goto Blade's Edge Mountains,61.97,39.47
.isQuestComplete 10722
.target Tree Warden Chawn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
.turnin 10825 >> Turn in The Truth Unorbed
.goto Blade's Edge Mountains,61.97,39.47
.isQuestComplete 10825
.target Tree Warden Chawn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
.turnin 10747 >> Turn in Whelps of the Wyrmcult
.goto Blade's Edge Mountains,61.94,39.45
.isQuestComplete 10747
.target Samia Inkling
step
#completewith next
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
.cast 38782 >>Use the |T135815:0|t[Druid Signal] in your bags to summon an |cRXP_FRIENDLY_Evergrove Druid|r
.timer 18,Druid Signal RP
.isQuestComplete 10904
step
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Evergrove Druid|r
.turnin 10904 >> Turn in Harvesting the Fel Ammunition
.isQuestComplete 10904
.target Evergrove Druid
step
#completewith next
.goto Blade's Edge Mountains,62.50,60.17
.cast 38782 >>Use the |T135815:0|t[Druid Signal] in your bags to summon an |cRXP_FRIENDLY_Evergrove Druid|r
.timer 18,Druid Signal RP
.isOnQuest 10911
step
.goto Blade's Edge Mountains,62.50,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Evergrove Druid|r
.turnin 10911 >> Turn in Fire At Will!
.accept 10912 >> Accept The Hound-Master
.isQuestTurnedIn 10821
.target Evergrove Druid
step
#completewith next
.goto Blade's Edge Mountains,63.62,59.11
.use 31809 >>Use the |T133749:0|t[Evergrove Wand] in your bags to summon |cRXP_FRIENDLY_Evergorve Ancients|r. They will help you fight |cRXP_ENEMY_Baelmon|r
>>Kill |cRXP_ENEMY_Baelmon|r
.isOnQuest 10912
.mob Baelmon the Hound-Master
step
.goto Blade's Edge Mountains,63.62,59.11
>>Kill |cRXP_ENEMY_Baelmon the Hound-Master|r. This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him.
.complete 10912,1 
.use 31809
.isQuestTurnedIn 10821
.isOnQuest 10912
.target Baelmon the Hound-Master
step
#label HoundMaster
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r, he patrols counter-clockwise around the town
.turnin 10912 >> Turn in The Hound-Master
.isQuestComplete 10912
.target Wildlord Antelarion
step
.abandon 10912 >> Abandon The Hound-Master
step << !tbc !wotlk !Mage
#xprate >1.59
#completewith next
.zone Shattrath City >> Travel to Shattrath City
step << !tbc !wotlk
#xprate >1.59
.goto Shattrath City,57.217,48.257
.zone 84 >> Take the portal to Stormwind City << !Mage
.zone 84 >> Teleport to Stormwind City << Mage
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup August Celestials
#name 1_August Celestials Daillies_1a
#displayname |cFF1EFF001|r - Daily Quests
#title August Celestials Dailies
<< Alliance
step
#include RXP-Pandaria\1-August Celestials
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#version 9
#group RXP MoP 80-85 (A)
#cata
#mop
#name 82-83 Deepholm
#next 83-84 Uldum
step
#include RXPGuides\82-83 Deepholm
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#version 9
#group RXP MoP 80-85 (A)
#cata
#mop
#name 80-82 Mount Hyjal
#next 82-83 Deepholm
step
#include RXPGuides\80-82 Mount Hyjal
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#version 9
#group RXP MoP 80-85 (A)
#cata
#mop
#name 84-85 Twilight Highlands
step
#include RXPGuides\84-85 Twilight Highlands
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#version 9
#group RXP MoP 80-85 (A)
#cata
#mop
#name 83-84 Uldum
#next 84-85 Twilight Highlands
step
#include RXPGuides\83-84 Uldum
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#name 45-47 Badlands
#version 9
#group RXP MoP 1-80 (A)
#cata
#mop
#next 47-50 Searing Gorge
step
.goto 15,92.64,38.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eddie Flofizzle|r
.turnin -27762 >>Turn in Fuselight, Ho!
.accept 27763 >>Accept To Fuselight Proper
.target Eddie Flofizzle
.isNotOnQuest 28579
step
.goto 15,87.98,32.45,10,0
.goto 15,82.75,33.91,10 >> Step onto the Transporter
.subzoneskip 5497,1
step
#completewith next
.goto 15,75.52,33.34,30,0
.goto 15,68.88,31.07,30,0
.goto 15,70.19,35.56,30,0
.goto 15,68.62,35.03,50 >> Travel to Fuselight
.subzoneskip 5496
step << skip 
.goto 15,65.815,35.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sally Gearwell|r
.target Sally Gearwell
.home >>Set your Hearthstone to Fuselight
step
.goto 15,64.335,35.024
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixi Sweetride|r
.fp Fuselight >>Get the Fuselight Flight Path
.target Mixi Sweetride
step
.goto 15,65.07,38.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolph Blastus|r
.turnin -27763 >>Turn in To Fuselight Proper
.target Dolph Blastus
step
#optional
.maxlevel 47,endOfTheGuide
step
.goto 15,65.07,38.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolph Blastus|r
.turnin 27763 >>Turn in To Fuselight Proper
.accept 27774 >>Accept Easily Swayed
.target Dolph Blastus
step
.goto 15,64.27,38.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
.accept 27775 >>Accept When the Going Gets Tough, Cheat
.target Garyanne Fleezlebop
step
#sticky
#label instructor1
#loop
.goto 15,56.914,25.044,40,0
.goto 15,60.457,20.680,40,0
.goto 15,57.618,20.775,40,0
.goto 15,59.499,21.028,0
>>Kill a |cRXP_ENEMY_Dustbelcher Instructor|r. Loot him for his |cRXP_LOOT_Instructor's Rod|r
.complete 27775,1 
.mob Dustbelcher Instructor
step
#loop
.goto 15,56.914,25.044,40,0
.goto 15,60.457,20.680,40,0
.goto 15,57.618,20.775,40,0
.goto 15,59.499,21.028,0
>>Kill |cRXP_ENEMY_Dustbelcher Ogres|r
.complete 27774,1 
.mob Dustbelcher Trainee
.mob Dustbelcher Initiate
step
#requires instructor1
.goto 15,64.262,38.138
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
.target Garyanne Fleezlebop
.turnin 27775 >>Turn in When the Going Gets Tough, Cheat
.accept 27776 >>Accept It's Goat Time, Baby
step
.goto 15,65.074,38.397
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolph Blastus|r
.target Dolph Blastus
.turnin 27774 >>Turn in Easily Swayed
.accept 27764 >>Accept A Strange Request
step
#loop
.goto 15,62.94,34.16,20,0
.goto 15,61.450,36.771,20,0
.goto 15,62.94,34.16,0
.goto 15,61.450,36.771,0
.use 62397 >>|cRXP_WARN_Use the|r |T133832:0|t[Billy Goat Blaster] |cRXP_WARN_on |cRXP_ENEMY_Billy Goats|r on the surrounding cliffs|r
.complete 27776,1 
.mob Billy Goat
step
.goto 15,64.25,38.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
.turnin 27776 >>Turn in It's Goat Time, Baby
.target Garyanne Fleezlebop
step
#completewith next
.goto 15,66.39,55.51,50 >> Travel toward |cRXP_FRIENDLY_Rhea|r
step
.goto 15,66.39,55.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
.turnin 27764 >>Turn in A Strange Request
.accept 27765 >>Accept First Sample: Wild Eggs
.accept 27766 >>Accept Second Sample: Whelps
.target Rhea
step
#completewith next
>>Kill |cRXP_ENEMY_Scalding Whelps|r. Loot them for their |cRXP_LOOT_Scalding Whelp Corpses|r
.complete 27766,1 
.mob Scalding Whelp
step
#loop
.goto 15,68.317,53.093,40,0
.goto 15,70.449,50.878,40,0
.goto 15,73.956,45.356,40,0
.goto 15,69.615,41.872,40,0
.goto 15,68.318,45.985,40,0
.goto 15,65.636,48.136,40,0
.goto 15,65.388,52.038,40,0
.goto 15,69.504,48.206,0
>>Loot the |cRXP_LOOT_Wild Black Dragon Eggs|r on the ground
>>|cRXP_WARN_A |cRXP_ENEMY_Scorched Guardian|r may agro you after you loot the eggs|r
.complete 27765,1 
step
#loop
.goto 15,68.317,53.093,40,0
.goto 15,70.449,50.878,40,0
.goto 15,73.956,45.356,40,0
.goto 15,69.615,41.872,40,0
.goto 15,68.318,45.985,40,0
.goto 15,65.636,48.136,40,0
.goto 15,65.388,52.038,40,0
.goto 15,69.504,48.206,0
>>Kill |cRXP_ENEMY_Scalding Whelps|r. Loot them for their |cRXP_LOOT_Scalding Whelp Corpses|r
.complete 27766,1 
.mob Scalding Whelp
step
.goto 15,66.37,55.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
.turnin 27765 >>Turn in First Sample: Wild Eggs
.turnin 27766 >>Turn in Second Sample: Whelps
.accept 27770 >>Accept Lifting the Veil
.target Rhea
step
.goto 15,66.37,55.49
>>|cRXP_WARN_Wait as |cRXP_FRIENDLY_Rhea|r finishes her studies|r
.complete 27770,1 
step
.goto 15,66.41,55.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
.turnin 27770 >>Turn in Lifting the Veil
.accept 27771 >>Accept Third Sample: Implanted Eggs
.target Rhea
step
.goto 15,65.89,56.78
>>Attack |cRXP_ENEMY_Nyxondra|r, then loot |cRXP_LOOT_Nyxondra's Eggs|r from the ground
.complete 27771,1 
.mob Nyxondra
step
.goto 15,66.40,55.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
.turnin 27771 >>Turn in Third Sample: Implanted Eggs
.accept 27769 >>Accept Rhea Revealed
.target Rhea
step
.goto 15,66.40,55.48
>>|cRXP_WARN_Wait for |cRXP_FRIENDLY_Rhea|r to reveal her true identity|r
.complete 27769,1 
.target Rhea
step
.goto 15,66.52,55.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rheastrasza|r
.turnin 27769 >>Turn in Rhea Revealed
.accept 27772 >>Accept The Venerable Doctor Blam
.target Rheastrasza
step
.goto 15,60.53,44.07,50,0
.goto 15,46.83,56.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r
.turnin 27772 >>Turn in The Venerable Doctor Blam
.accept 27789 >>Accept Troggish Troubles
.target Dr. Hieronymus Blam

step
#completewith next
.goto 15,49.36,55.23
.vehicle >> |cRXP_WARN_Mount a|r |cRXP_FRIENDLY_Blam Turret|r
.target Blam Turret
step
.goto 15,49.36,55.23
>>|cRXP_WARN_Cast|r |T252185:0|t[Shoot] (1) |cRXP_WARN_to kill the|r |cRXP_ENEMY_Stonevault Troggs|r
>>|cRXP_WARN_Cast|r |T136050:0|t[Power Burst] (2) |cRXP_WARN_to deal large AoE damage to |cRXP_ENEMY_Stonevault Troggs|r in close range|r
.complete 27789,1 
.complete 27789,2 
.complete 27789,3 
.complete 27789,4 
step
.goto 15,47.13,56.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r
.turnin 27789 >>Turn in Troggish Troubles
.accept 27791 >>Accept Dustwind Dig
.target Dr. Hieronymus Blam
step
.goto 15,49.354,36.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Prospector Durdin|r
.target Lead Prospector Durdin
.turnin 27791 >>Turn in Dustwind Dig
.accept 27792 >>Accept All's Fair in Love, War, and Archaeology
step
.goto 15,49.494,36.991
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.accept 27823 >>Accept A Dwarf's Got Needs
.target Sigrun Ironhew
step
.goto 15,48.997,36.211
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nancy Skybrew|r
.fp Dustwind Dig >>Get the Dustwind Dig flight path
.target Nancy Skybrew
step
.goto 15,48.803,28.048
>>Kill |cRXP_ENEMY_Shadowforge Darkweavers|r and |cRXP_ENEMY_Shadowforge Tunnelers|r. Loot them for their |cRXP_LOOT_Shadowstouts|r
.complete 27823,1 
.mob Shadowforge Darkweaver
.mob Shadowforge Tunneler
step
.goto 15,49.494,36.991
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.target Sigrun Ironhew
.turnin 27823 >>Turn in A Dwarf's Got Needs
.accept 27824 >>Accept The Good Stuff
step
#completewith GolgannethTablet
.goto 15,40.405,25.785,30 >> Enter Angor Fortress
step
#label GolgannethTablet
.goto 15,39.72,23.01,15,0
.goto 15,40.069,25.076
>>Open |cRXP_PICK_Angor's Coffer|r. Loot it for the the |cRXP_LOOT_Engraved Tablets of Golganneth|r
>>|cRXP_WARN_Travel downstairs. |cRXP_PICK_Angor's Coffer|r is located in the centre of the room|r
.complete 27824,1 
step
.goto 15,49.498,36.975
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.target Sigrun Ironhew
.turnin 27824 >>Turn in The Good Stuff
step
#optional
.maxlevel 47,endOfTheGuide


step
#loop
.goto 15,50.217,51.011,40,0
.goto 15,57.311,58.663,40,0
.goto 15,50.217,51.011,0
.goto 15,57.311,58.663,0
>>Kill |cRXP_ENEMY_Reliquary Excavators|r. Loot them for a |cRXP_LOOT_Broken Chalice|r, |cRXP_LOOT_Dusty Vase|r, |cRXP_LOOT_Earthen Hieroglyph|r and |cRXP_LOOT_Trogg Tool|r
.complete 27792,1 
.complete 27792,2 
.complete 27792,3 
.complete 27792,4 
.mob Reliquary Excavator
step
.goto 15,49.248,36.953
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Prospector Durdin|r
.target Lead Prospector Durdin
.turnin 27792 >>Turn in All's Fair in Love, War, and Archaeology
.accept 27796 >>Accept The Warden's Pawn
.accept 27797 >>Accept The Sentinel's Pawn
step
#completewith next
.goto 15,50.41,48.52,20,0
.goto 15,50.20,50.61,15,0
.goto 15,49.37,51.01,15 >> Travel down into the Tomb of the Watchers
step
.goto 15,48.016,50.920
>>Click the |cRXP_PICK_Marble Slab|r on the ground
.turnin 27797 >>Turn in The Sentinel's Pawn
.accept 27709 >>Accept The Sentinel's Game
step
.goto 15,47.983,53.236
>>|cRXP_WARN_Solve the puzzle by rotating the grey statues to guide the purple beam to the red statue located on the other side of the room|r

.complete 27709,1 
step
.goto 15,47.976,53.232
.turnin 27709 >>Turn in The Sentinel's Game
step
#completewith next
.goto 15,51.13,53.49,15,0
.goto 15,51.83,53.72,15,0
.goto 15,51.76,54.76,15,0
.goto 15,50.84,54.84,10 >> Travel to the opposite room
step
.goto 15,50.25,54.32
>>Click the |cRXP_PICK_Stone Slab|r on the ground
.turnin 27796 >>Turn in The Warden's Pawn
.accept 27693 >>Accept The Warden's Game
step
.goto 15,50.25,54.26
>>|cRXP_WARN_Move the pieces opposite from each other until all pieces are facing inward. They can be moved diagonally|r
.complete 27693,1 
step
.goto 15,50.25,54.26
.turnin 27693 >>Turn in The Warden's Game
.accept 27793 >>Accept Ancient Protectors
step
#completewith next
.gossip 46768,0 >> Talk to |cRXP_FRIENDLY_The Warden|r
.skipgossip 46768,1
.target The Warden
step
.goto 15,50.29,52.58
>>Kill |cRXP_ENEMY_The Warden|r
.complete 27793,1 
.mob The Warden
.skipgossip
step
#completewith next
.gossip 46769,0 >> Talk to |cRXP_FRIENDLY_The Sentinel|r
.skipgossip 46769,1
.target The Sentinel
step
.goto 15,50.31,51.66
>>Kill |cRXP_ENEMY_The Sentinel|r
.complete 27793,2 
.mob The Sentinel
.skipgossip
step
.goto 15,50.31,51.50
.turnin 27793 >>Turn in Ancient Protectors
.accept 27912 >>Accept The Titans' Trove
step
.goto 15,50.25,53.29
>>Click the |cRXP_PICK_Trove of the Watchers|r
.turnin 27912 >>Turn in The Titans' Trove
.accept 27794 >>Accept Return to Blam
step
#completewith next
.goto 15,50.45,47.61,25 >> Exit the Tomb of the Watchers
step
.goto 15,46.868,56.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r
.target Dr. Hieronymus Blam
.turnin 27794 >>Turn in Return to Blam
.accept 27826 >>Accept Into the Dragon's Mouth

step << skip
#completewith next
.hs >> Hearth to Fuselight
.subzoneskip 5525
.subzoneskip 5496
step << skip

.goto 15,64.313,35.096,-1
.goto 15,48.997,36.211,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixi Sweetride|r or |cRXP_FRIENDLY_Nancy Skybrew|r
.fly Dragon's Mouth >>Fly to Dragon's Mouth
.target Mixi Sweetride
.target Nancy Skybrew
step
.goto 15,21.710,57.803
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jake Badlands|r
.fp Dragon's Mouth >> Get the Dragon's Mouth flight path
.target Jake Badlands


step
.isOnQuest 27826
.goto 15,21.279,57.749
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
.target Rhea
.turnin 27826 >>Turn in Into the Dragon's Mouth
step
#optional
.maxlevel 47,endOfTheGuide
step
.goto 15,21.279,57.749
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
.target Rhea
.turnin 27826 >>Turn in Into the Dragon's Mouth
.accept 27827 >>Accept The Swift, the Fierce, and the Stout
.isQuestTurnedIn 27794
step
.goto 15,20.687,56.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric "The Swift"|r, |cRXP_FRIENDLY_Olaf|r and |cRXP_FRIENDLY_Baelog|r
.target Eric "The Swift"
.target Olaf
.target Baelog
.turnin 27827 >>Turn in The Swift, the Fierce, and the Stout
.accept 27828 >>Accept Eric, the Utility Dwarf
.accept 27835 >>Accept Olaf, the Big Fella'
.accept 27834 >>Accept Baelog, the Glass Cannon
.isQuestTurnedIn 27794
step
#sticky
#label vikings1
>>|cRXP_WARN_Use all 6 abilities from your pet bar|r
>>|cRXP_WARN_Your first and third abilities require an enemy target|r
.complete 27828,1 
.complete 27828,2 
.complete 27834,1 
.complete 27834,2 
.complete 27835,1 
.complete 27835,2 
.isQuestTurnedIn 27794
step
#sticky
#label vikings2
#requires vikings1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric "The Swift"|r, |cRXP_FRIENDLY_Olaf|r and |cRXP_FRIENDLY_Baelog|r beside you
.turnin 27834 >>Turn in Baelog, the Glass Cannon
.turnin 27835 >>Turn in Olaf, the Big Fella'
.turnin 27828 >>Turn in Eric, the Utility Dwarf
.accept 27829 >>Accept The Wrath of a Dragonflight
.isQuestTurnedIn 27794

step
.goto 15,20.827,57.363
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrance Storm|r
.target Terrance Storm
.accept 27833 >>Accept Half-Ton Holdouts
step
.goto 15,20.845,55.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victoria Dolen|r
.target Victoria Dolen
.accept 27825 >>Accept Survival of the Fattest
step
#loop
.goto 15,14.64,67.90,0
.goto 15,16.294,60.601,30,0
.goto 15,14.992,66.757,30,0
.goto 15,12.191,63.428,30,0
>>Kill |cRXP_ENEMY_Dustbelcher Maulers|r and |cRXP_ENEMY_Dustbelcher Shamans|r
.complete 27833,1 
.mob Dustbelcher Mauler
.mob Dustbelcher Shaman
step
#completewith next
.goto 15,11.91,71.16,25 >> Enter the cave south
.subzoneskip 347
step
#loop
.goto 15,13.453,73.978,0
.goto 15,12.129,72.749,20,0
.goto 15,12.229,75.659,20,0
.goto 15,12.033,79.426,20,0
.goto 15,13.124,74.913,20,0
.goto 15,13.707,76.533,20,0
>>Loot |cRXP_PICK_Dustbelcher Chests|r for |cRXP_LOOT_Dustbelcher Silk|r
>>Loot |cRXP_LOOT_Dustbelcher Meat|r hanging from the ceiling
.complete 27825,2 
.complete 27825,1 
step
.goto 15,20.860,55.711
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victoria Dolen|r
.target Victoria Dolen
.turnin 27825 >>Turn in Survival of the Fattest
.accept 28512 >>Accept To the Aid of the Thorium Brotherhood
step
.goto 15,20.807,57.333
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrance Storm|r
.target Terrance Storm
.turnin 27833 >>Turn in Half-Ton Holdouts


step
#requires vikings2
.goto 15,23.093,45.851,0
.goto 15,28.069,43.510,0
.goto 15,33.527,41.465,0
.goto 15,23.093,45.851,30,0
.goto 15,28.069,43.510,30,0
.goto 15,33.527,41.465,30,0
>>Kill |cRXP_ENEMY_Darkflight Soldiers|r
>>|cRXP_WARN_Use your|r |cRXP_FRIENDLY_Dwarf Companions|r |cRXP_WARN_to kill|r |cRXP_ENEMY_Kalaran the Annihilator|r
.complete 27829,2 
.complete 27829,1 
.mob Kalaran the Annihilator
.mob Darkflight Soldier
.isQuestTurnedIn 27794
step
.turnin 27829 >>Turn in The Wrath of a Dragonflight
.accept 27830 >>Accept Their Hunt Continues
.isQuestTurnedIn 27794
step
#sticky
#label dspawn
.waypoint 15,19.594,45.657,30,0
.waypoint 15,12.787,44.306,30,0
.waypoint 15,14.550,42.868,30,0
.waypoint 15,21.218,44.060,30,0
.goto 15,16.769,46.368,0
>>Kill |cRXP_ENEMY_Darkflight Shadowspeakers|r and |cRXP_ENEMY_Darkflight Flameblades|r
.complete 27830,3
.mob Darkflight Shadowspeaker
.mob Darkflight Flameblade
.isQuestTurnedIn 27794
step
.goto 15,16.739,49.219
>>|cRXP_WARN_Use your |cRXP_FRIENDLY_Dwarf Companions|r to kill |cRXP_ENEMY_Moldarr|r inside the building|r
.complete 27830,2 
.mob Moldarr
.isQuestTurnedIn 27794
step
.goto 15,15.489,43.192
>>Kill |cRXP_ENEMY_General Jirakka|r at the top of the building
.complete 27830,1
.isQuestTurnedIn 27794
step
#requires dspawn
.turnin 27830 >>Turn in Their Hunt Continues
.accept 27831 >>Accept The Sorrow and the Fury
.isQuestTurnedIn 27794
step
#sticky
#label Nyxondra
.goto 15,10.05,40.02
>>|cRXP_WARN_Use your |cRXP_FRIENDLY_Dwarf Companions|r to take down |cRXP_ENEMY_Nyxondra|r flying around the ruins|r
>>|cRXP_WARN_Make sure to clear the |cRXP_ENEMY_Whelps|r first and then pull |cRXP_ENEMY_Nyxondra|r away from the area, otherwise the 3 |cRXP_FRIENDLY_Dwarves|r will keep pulling more|r |cRXP_ENEMY_Whelps|r
.complete 27831,1 
.mob Nyxondra
.isQuestTurnedIn 27794
step
.goto 15,10.05,40.02
>>Kill |cRXP_ENEMY_Nyxondra's Broodlings|r
.complete 27831,2 
.mob Nyxondra's Broodling
.isQuestTurnedIn 27794
step
#requires Nyxondra
.turnin 27831 >>Turn in The Sorrow and the Fury
.accept 27832 >>Accept The Hidden Clutch
.isQuestTurnedIn 27794
step
.goto 15,16.021,33.418
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
>>|cRXP_WARN_Do not skip the cinematics|r
.target Rhea
.turnin 27832 >>Turn in The Hidden Clutch
.accept 27858 >>Accept Rheastrasza's Gift
.isQuestTurnedIn 27794
step
.goto 15,15.879,32.982
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
>>|cRXP_WARN_You must watch the cinematics to complete the quest!|r
.complete 27858,1 
.skipgossip
.isQuestTurnedIn 27794
step
.turnin 27858 >>Turn in Rheastrasza's Gift
.accept 27930 >>Accept Devastation
.isQuestTurnedIn 27794
step
.goto 15,18.844,30.221
>>Click |cRXP_PICK_Rhea's Final Note|r
.turnin 27930 >>Turn in Devastation
.isQuestTurnedIn 27794
step
.goto 15,18.030,30.533
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r
.target Dr. Hieronymus Blam
.turnin 27859 >>Turn in The Egg Lives On
.isQuestTurnedIn 27794
step
#optional
#label endOfTheGuide
step
.isQuestAvailable 27960,27961,27962
.goto 15,6.132,52.740,0
.goto 15,8.83,51.81,30,0
.goto 32,75.12,56.32
.zone 32 >> Travel to Searing Gorge
step
#optional
.abandon 27792 >> Abandon All's Fair in Love, War, and Archaeology
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#name 55-58 Blasted Lands
#version 9
#group RXP MoP 1-80 (A)
#cata
#mop
#next RXP MoP 60-80 (A)\59-61 Hellfire Peninsula
step
#optional
.maxlevel 57,endOfTheGuide
step
.isOnQuest 27919
.goto 17,61.465,18.645
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
.target Enohar Thunderbrew
.turnin 27919 >>Turn in Onward to the Blasted Lands
.accept 25715 >>Accept A Closer Look
step
.goto 17,61.465,18.645
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
.target Enohar Thunderbrew
.accept 25715 >>Accept A Closer Look
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Morton|r
.target Mama Morton
.goto 17,60.710,14.081
.home >>Set your Hearthstone to Nethergarde Keep
step
.goto 17,60.102,13.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r, at the second floor
.target Quartermaster Lungertz
.accept 25710 >>Accept Minor Distractions
step
.goto Blasted Lands,59.401,14.877
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bernie Heisten|r on the ground floor
>>|cRXP_BUY_Buy a|r |T132791:0|t[|cRXP_LOOT_Nethergarde Bitter|r]
.collect 23848,1,9563,1 
.target Bernie Heisten
step
#loop
.goto 17,57.814,16.598,0
.goto 17,57.804,13.412,0
.goto 17,58.135,18.530,0
.goto 17,62.137,23.345,0
.goto 17,62.737,23.445,0
.goto 17,64.212,23.094,0
.goto 17,57.814,16.598,10,0
.goto 17,57.804,13.412,10,0
.goto 17,58.135,18.530,10,0
.goto 17,62.137,23.345,10,0
.goto 17,62.737,23.445,10,0
.goto 17,64.212,23.094,10,0
>>Kill an |cRXP_ENEMY_Okril'lon Scout|r hiding next to the keep entrances
.complete 25710,1 
.mob Okril'lon Scout
step
.goto 17,60.102,13.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r, at the second floor
.target Quartermaster Lungertz
.turnin 25710 >>Turn in Minor Distractions
.accept 25711 >>Accept Eliminate the Okril'lon
step
.goto 17,60.236,13.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leyan Steelson|r
.target Leyan Steelson
.accept 25712 >>Accept Nethergarde Reigns
step
.goto 17,60.457,13.818
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buttonwillow McKittrick|r
.target Buttonwillow McKittrick
.accept 25713 >>Accept Remove Their Arms
step
#completewith end1
#sticky
#label fragment1
.use 10593>>|cRXP_WARN_As you quest through Blasted lands, keen an eye out for an|r |T134089:0|t[|cRXP_LOOT_Imperfect Draenethyst Fragment|r]
>>|cRXP_WARN_Use the|r |T134089:0|t[|cRXP_LOOT_Imperfect Draenethyst Fragment|r] |cRXP_WARN_to start the quest|r
.collect 10593,1,25771
.accept 25771 >>Accept One Draenei's Junk...
step
#sticky
#loop
#label crates1
.goto 17,53.774,13.500,0
.goto 17,53.224,19.589,0
.goto 17,50.717,11.870,0
.waypoint 17,53.774,13.500,25,0
.waypoint 17,53.224,19.589,25,0
.waypoint 17,50.717,11.870,25,0
.use 57117 >>|cRXP_WARN_Use|r |T330082:0|t[Buttonwillow's Hand Grenade] |cRXP_WARN_to destroy the Horde supply crates scattered around the camp|r
.complete 25713,1
step
.complete 25712,1 
>>Kill |cRXP_ENEMY_Captain Metlek|r
.goto 17,51.004,14.660
.mob +Captain Metlek
step
#loop
.goto 17,53.774,13.500,0
.goto 17,53.224,19.589,0
.goto 17,50.717,11.870,0
.goto 17,53.774,13.500,25,0
.goto 17,53.224,19.589,25,0
.goto 17,50.717,11.870,25,0
>>Kill |cRXP_ENEMY_Okril'lon Infantry|r
.complete 25711,1 
.mob Okril'lon Infantry
step
#requires crates1
.goto 17,60.102,13.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r, at the second floor
.target Quartermaster Lungertz
.turnin 25711 >>Turn in Eliminate the Okril'lon
step
.goto 17,60.242,13.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leyan Steelson|r
.target Leyan Steelson
.turnin 25712 >>Turn in Nethergarde Reigns
step
.goto 17,60.481,13.856
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buttonwillow McKittrick|r
.target Buttonwillow McKittrick
.turnin 25713 >>Turn in Remove Their Arms
step
#optional
.maxlevel 57,endOfTheGuide
step
.goto 17,69.176,32.936
>>|cRXP_WARN_Travel to Shattershore|r
.complete 25715,1 
step
.goto 17,61.479,18.639
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
.target Enohar Thunderbrew
.turnin 25715 >>Turn in A Closer Look
.accept 25708 >>Accept Our Fallen Friends
.accept 25709 >>Accept Curtail the Darktail
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.target Alexandra Constantine
.goto 1419/0,-3437.0,-11111.0
.fp Nethergarde>>Get the Nethergarde Keep Flight Path
step
#sticky
#loop
#label vultures1
.goto 17,68.015,28.625,0
.goto 17,69.181,42.580,0
.goto 17,66.375,34.712,0
.goto 17,68.015,28.625,30,0
.goto 17,69.181,42.580,30,0
.goto 17,66.375,34.712,30,0
.use 57119>>|cRXP_WARN_Use|r |T135503:0|t[Enohar's Explosive Arrows] |cRXP_WARN_to lure down and kill |cRXP_ENEMY_Darktail Bonepickers|r flying in the sky|r
.complete 25709,1 
.mob Darktail Bonepicker
step
#loop
.goto 17,68.015,28.625,0
.goto 17,69.181,42.580,0
.goto 17,66.375,34.712,0
.goto 17,68.015,28.625,30,0
.goto 17,69.181,42.580,30,0
.goto 17,66.375,34.712,30,0
>>Kill |cRXP_ENEMY_Drowned Gilneans|r
.complete 25708,1 
.mob Drowned Gilnean Merchant
.mob Drowned Gilnean Sailor
.mob Drowned Gilnean Settler
.mob Drowned Gilnean Spirit
step
#requires vultures1
.goto 17,61.466,18.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enohar Thunderbrew|r
.target Enohar Thunderbrew
.turnin 25708 >>Turn in Our Fallen Friends
.turnin 25709 >>Turn in Curtail the Darktail
.accept 25714 >>Accept Watcher Mahar Ba
step
.goto 17,63.168,16.876
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Mahar Ba|r at the top of the tower.
.target Watcher Mahar Ba
.turnin 25714 >>Turn in Watcher Mahar Ba
.accept 25716 >>Accept Cultists at our Doorstep
step
#loop
.goto 17,60.071,27.924,0
.goto 17,63.542,34.247,0
.goto 17,58.727,31.261,0
.goto 17,60.071,27.924,25,0
.goto 17,63.542,34.247,25,0
.goto 17,58.727,31.261,25,0
>>Kill |cRXP_ENEMY_Shadowsworn Occultists|r and |cRXP_ENEMY_Shadowsworn Spellblades|r. Loot them for their |cRXP_LOOT_Shadowsworn Spell Focus|r
.complete 25716,1 
.mob Shadowsworn Occultist
.mob Shadowsworn Spellblade
step
.goto 17,63.165,16.853
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Mahar Ba|r at the top of the tower
.target Watcher Mahar Ba
.turnin 25716 >>Turn in Cultists at our Doorstep
.accept 26157 >>Accept Kasim Sharim
step
#completewith next
.goto 17,60.887,29.343,10 >> Enter the Serpent's Coil tunnel
step
.goto 17,62.414,26.051
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26157 >>Turn in Kasim Sharim
.accept 26158 >>Accept Attune the Bloodstone
step
.goto 17,63.226,25.902
>>Click the |cRXP_PICK_Bloodstone Teleporter|r
.complete 26158,1 
step
.goto 17,61.370,29.930
>>Click the |cRXP_PICK_Bloodstone Teleporter|r
.complete 26158,2 
step
.goto 17,62.440,26.063
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26158 >>Turn in Attune the Bloodstone
.accept 26159 >>Accept The First Step
.accept 26172 >>Accept A Bloodmage's Gotta Eat Too
step
#optional
.maxlevel 57,endOfTheGuide
step
#completewith next
.goto 17,63.220,25.910
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to exit the cave
.subzoneskip 1440,1
step
#completewith next
#optional
#requires fragment1
.goto 17,48.811,32.302
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.target Kum'isha the Collector
.turnin 25771 >>Turn in One Draenei's Junk...
.itemcount 10593,1
step
#loop
.goto 17,58.129,25.007,0
.goto 17,48.324,25.734,0
.goto 17,49.240,36.190,0
.goto 17,56.835,39.009,0
.goto 17,57.001,32.470,0
.goto 17,54.338,27.561,0

.goto 17,58.129,25.007,30,0
.goto 17,48.324,25.734,30,0
.goto 17,49.240,36.190,30,0
.goto 17,56.835,39.009,30,0
.goto 17,57.001,32.470,30,0
.goto 17,54.338,27.561,30,0
>>Kill |cRXP_ENEMY_Snickerfang Hyenas|r and |cRXP_ENEMY_Redstone Basilisks|r . Loot them for their |cRXP_LOOT_Blood|r
>>Kill |cRXP_ENEMY_Ashmane Boars|r. Loot them for their |cRXP_LOOT_Ashmane Steak|r
.complete 26159,1 
.mob +Snickerfang Hyena
.complete 26159,2 
.mob +Redstone Basilisk
.complete 26172,1 
.mob +Ashmane Boar
step
#completewith next
.goto 17,61.396,29.893
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to enter the cave
>>|cRXP_WARN_The |cRXP_PICK_Bloodstone Teleporter|r only works if you're out of combat|r
step
.goto 17,62.542,26.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26159 >>Turn in The First Step
.accept 26160 >>Accept Blood Ritual
.turnin 26172 >>Turn in A Bloodmage's Gotta Eat Too

step
.goto 17,62.542,26.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r and start the ritual
.target Kasim Sharim
.skipgossip 42298,1
.complete 26160,1
step
.goto 17,62.536,26.264
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26160 >>Turn in Blood Ritual
step
#optional
.maxlevel 57,endOfTheGuide
step
.goto 17,62.796,26.060
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.accept 26167 >>Accept The Amulet of Allistarj
.accept 26168 >>Accept The Amulet of Sevine
.accept 26169 >>Accept The Amulet of Grol
step
.goto 17,61.580,26.808
>>Open the |cRXP_PICK_Allistarjian Vault|r. Loot it for the |cRXP_LOOT_Amulet of Allistarj|r
.complete 26167,1 
step
.goto 17,62.855,26.050
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26167 >>Turn in The Amulet of Allistarj
step
.goto 17,63.220,25.910
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to exit the cave
.subzoneskip 1440,1
step
#optional
.maxlevel 57,endOfTheGuide
step
#completewith next
.goto 17,71.045,35.414
.isOnQuest 26169
.cast 6477 >>|cRXP_WARN_Click the |cRXP_PICK_Head of Grol|r at the bottom of the ship to summon the|r |cRXP_ENEMY_Spirit of Grol|r
step
>>Kill the |cRXP_ENEMY_Spirit of Grol|r. Loot him for the |cRXP_LOOT_Amulet of Grol|r
.goto 17,71.045,35.414
.complete 26169,1 
.mob Spirit of Grol
step
.goto 17,73.169,47.428
>>Talk to |cRXP_FRIENDLY_Salt-Flop|r to receive the |cRXP_LOOT_Amulet of Sevine|r
.complete 26168,1 
.skipgossip 41265,1
.target Salt-Flop
step
.goto 17,73.169,47.428
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salt-Flop|r
.target Salt-Flop
.accept 25702 >>Accept Home... Gone... Naga...
step
.goto 17,71.049,60.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neptool|r
.target Neptool
.turnin 25702 >>Turn in Home... Gone... Naga...
.accept 25703 >>Accept Atrocities
step
#optional
.maxlevel 57,endOfTheGuide
step
#loop
.goto 17,72.198,61.658,0
.goto 17,69.524,66.570,0
.goto 17,65.973,74.636,0
.goto 17,62.533,75.277,0
.goto 17,72.198,61.658,25,0
.goto 17,69.524,66.570,25,0
.goto 17,65.973,74.636,25,0
.goto 17,62.533,75.277,25,0
>>Kill |cRXP_ENEMY_Bloodwash Barbarians|r and |cRXP_ENEMY_Bloodwash Enchantresses|r
.complete 25703,1 
.mob +Bloodwash Barbarian
.complete 25703,2 
.mob +Bloodwash Enchantress
step
.goto 17,71.049,60.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neptool|r
.target Neptool
.turnin 25703 >>Turn in Atrocities
.accept 25705 >>Accept Flase Idols
.accept 25706 >>Accept Neptool's Revenge
step
#optional
.maxlevel 57,endOfTheGuide
step
#completewith bloodwashcave
>>Click the |cRXP_PICK_Azsh'ir Idols|r on the ground
>>|cRXP_WARN_They look like small naga statues|r
.complete 25705,1 
step
.goto 17,66.485,73.505
>>Kill |cRXP_ENEMY_Bloodwash Gamblers|r
.complete 25706,3 
.mob Bloodwash Gambler
step
.goto 17,60.286,76.036
>>Kill |cRXP_ENEMY_Bloodwash Idolaters|r
.complete 25706,4 
.mob Bloodwash Idolater
step
#loop
#label bloodwashcave
.goto 17,61.518,64.506,0
.goto 17,61.645,56.548,0
.goto 17,63.093,58.740,0
.goto 17,61.518,64.506,20,0
.goto 17,61.645,56.548,20,0
.goto 17,63.093,58.740,20,0
>>Kill |cRXP_ENEMY_Bloodwash Acolytes|r and |cRXP_ENEMY_Bloodwash Zealots|r
.complete 25706,2 
.mob +Bloodwash Acolyte
.goto 17,61.157,65.253
.complete 25706,1 
.mob +Bloodwash Zealot
step
#loop
.goto 17,61.518,64.506,0
.goto 17,61.645,56.548,0
.goto 17,63.093,58.740,0
.goto 17,61.518,64.506,20,0
.goto 17,61.645,56.548,20,0
.goto 17,63.093,58.740,20,0
>>Click the |cRXP_PICK_Azsh'ir Idols|r on the ground
>>|cRXP_WARN_They look like small naga statues|r
.complete 25705,1 
step
.goto 17,71.045,60.026
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neptool|r
.target Neptool
.turnin 25705 >>Turn in False Idols
.turnin 25706 >>Turn in Neptool's Revenge
step
#optional
.maxlevel 57,endOfTheGuide
step
#completewith next
.subzone 5084 >> Travel to Surwich
step
.goto 17,44.360,87.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donna Berrymore|r
.target Donna Berrymore
.home >>Set your Hearthstone to Surwich
step
.goto 17,47.141,89.353
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Graham McAllister|r
.fly Nethergarde Keep >>Fly to Nethergarde Keep
.target Graham McAllister
step
#completewith next
.goto 17,61.396,29.893
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to enter the cave
>>|cRXP_WARN_The |cRXP_PICK_Bloodstone Teleporter|r only works if you're out of combat|r
step
.goto 17,62.552,26.275
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26168 >>Turn in The Amulet of Sevine
.turnin 26169 >>Turn in The Amulet of Grol
.accept 26163 >>Accept Time is Short
step
#completewith next
.goto 17,63.220,25.910
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to exit the cave
.subzoneskip 1440,1
step
.goto 17,55.134,49.571
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Grimeo|r
.target Watcher Grimeo
.turnin 26163 >>Turn in Time is Short
.accept 26164 >>Accept The Charred Granite of the Dark Portal
.accept 26165 >>Accept The Vile Blood of Demons
step
#optional
.maxlevel 57,endOfTheGuide
step
.goto 17,54.684,50.451
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r
.target Watch Commander Relthorn Netherwane
.accept 26173 >>Accept Protecting Our Rear
step
#sticky
#label demons1
.goto 17,50.150,51.598,0
.goto 17,52.009,43.946,0
.goto 17,55.474,43.814,0
.goto 17,58.751,47.068,0
.goto 17,58.600,51.843,0
.waypoint 17,50.150,51.598,30,0
.waypoint 17,52.009,43.946,30,0
.waypoint 17,55.474,43.814,30,0
.waypoint 17,58.751,47.068,30,0
.waypoint 17,58.600,51.843,30,0
>>Mine the |cRXP_PICK_Charred Granite Outcroppings|r on the ground for the |cRXP_LOOT_Granite Chips|r
>>Kill |cRXP_ENEMY_Felguard Sentries|r, |cRXP_ENEMY_Felhounds|r and |cRXP_ENEMY_Oath-Chained Infernals|r. Loot them for their |cRXP_LOOT_Vile Demonic Blood|r
.complete 26164,1 
.complete 26165,1 
.mob Felguard Sentry
.mob Felhound
.mob Oath-Chained Infernal
step
.goto 17,59.951,43.183
>>Kill |cRXP_ENEMY_Shahandana|r
.complete 26173,2 
.mob Shahandana
step
.goto 17,51.784,42.299
>>Kill |cRXP_ENEMY_Gomegaz|r
.complete 26173,3 
.mob Gomegaz
step
.goto 17,43.913,47.825
>>Kill |cRXP_ENEMY_Jarroc Torn-Wing|r
.complete 26173,1 
.mob Jarroc Torn-Wing
step
#requires demons1
.goto 17,55.124,49.531
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Grimeo|r
.target Watcher Grimeo
.turnin 26164 >>Turn in The Charred Granite of the Dark Portal
.turnin 26165 >>Turn in The Vile Blood of Demons
.accept 26166 >>Accept Enhancing the Stone
step
.goto 17,54.660,50.424
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r
.target Watch Commander Relthorn Netherwane
.turnin 26173 >>Turn in Protecting Our Rear
.accept 26174 >>Accept Watching Our Back
step
.goto 17,53.920,49.978
>>Click the |cRXP_PICK_Horde Plans|r
.complete 26174,1 
step
.goto 17,54.660,50.415
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r
.target Watch Commander Relthorn Netherwane
.turnin 26174 >>Turn in Watching Our Back
.accept 26175 >>Accept Surwich
step
#optional
.maxlevel 57,endOfTheGuide
step
#completewith next
.goto 17,61.396,29.893
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to enter the cave
>>|cRXP_WARN_The |cRXP_PICK_Bloodstone Teleporter|r only works if you're out of combat|r
step
.goto 17,62.774,26.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26166 >>Turn in Enhancing the Stone
.accept 26161 >>Accept Not Just Any Body
step
#completewith next
.goto 17,63.220,25.910
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to exit the cave
.subzoneskip 1440,1
step
.goto 17,45.993,38.947,12,0
.goto 17,46.995,39.464
>>Open the |cRXP_PICK_Dreadmaul Cache|r. Loot it for |cRXP_LOOT_Loramus' Legs|r
.complete 26161,3 
step
#completewith next
.goto 17,40.98,33.08
.subzone 5086 >> Enter the Dreadmaul Furnace
step
.goto 17,40.018,37.185
>>Open the |cRXP_PICK_Dreadmaul Cache|r. Loot it for |cRXP_LOOT_Loramus' Torso|r
.complete 26161,2 
step
#completewith next
.goto 17,40.98,33.08,10 >> Exit the Dreadmaul Furnace
step
.goto 17,45.127,30.407,10,0
.goto 17,46.764,26.974
>>Open the |cRXP_PICK_Dreadmaul Cache|r. Loot it for |cRXP_LOOT_Loramus' Head|r
.complete 26161,1 
step
#completewith next
.goto 17,44.786,29.134,10,0
.goto 17,45.10,29.97,10 >> Exit the Rise of the Defiler
step
#completewith next
.goto 17,61.396,29.893
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to enter the cave
>>|cRXP_WARN_The |cRXP_PICK_Bloodstone Teleporter|r only works if you're out of combat|r
step
.goto 17,62.621,26.214
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.turnin 26161 >>Turn in Not Just Any Body
.accept 26162 >>Accept The Altar of Storms
step
.goto 17,63.220,25.910
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to exit the cave
.subzoneskip 1440,1
step
#optional
.maxlevel 57,endOfTheGuide
step
.goto 17,39.307,35.250,20,0
.goto 17,37.25,31.28
.subzone 255>> Travel to the Altar of Storms
.isOnQuest 26162

step
#completewith next
.isOnQuest 26162
.goto 17,36.957,28.364
.cast 6478 >>|cRXP_WARN_Click the |cRXP_PICK_Blood Altar|r begin the ritual|r
.timer 130,The Altar of Storms RP
step
.goto 17,36.957,28.364
>>Kill the |cRXP_ENEMY_Shadowsworn Obstructors|r trying to stop the ritual
.complete 26162,1 
.mob Shadowsworn Obstructor
step
#completewith next
.goto 17,61.396,29.893
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to enter the cave
>>|cRXP_WARN_The |cRXP_PICK_Bloodstone Teleporter|r only works if you're out of combat|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r and |cRXP_FRIENDLY_Kasim Sharim|r
.turnin 26162 >>Turn in The Altar of Storms
.target +Loramus Thalipedes
.goto 17,62.337,26.078
.accept 26170 >>Accept The Final Ritual
.target +Kasim Sharim
.goto 17,62.621,26.214

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kasim Sharim|r
.target Kasim Sharim
.complete 26170,1
.skipgossip 42298,2
step
.goto 17,62.337,26.078
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
.target Loramus Thalipedes
.turnin 26170 >>Turn in The Final Ritual
.accept 26171 >>Accept You Are Rakh'likh, Demon
step
.goto 17,63.220,25.910
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to exit the cave
.subzoneskip 1440,1
step
#optional
.goto 17,48.811,32.302
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.target Kum'isha the Collector
.turnin 25771 >>Turn in One Draenei's Junk...
.itemcount 10593,1
step
#optional
.maxlevel 57,endOfTheGuide
step
#completewith next
.goto 17,46.526,21.573
.gossip 8816,0 >>Talk to the |cRXP_FRIENDLY_Deathly Usher|r to teleport to the top of the mountain
.timer 13,Rakh'likh the Defiler RP
.skipgossip 8816,1
.target Deathly Usher

step
.goto 17,44.879,26.702
>>Defeat |cRXP_ENEMY_Rzelikh the Defiler|r
.complete 26171,1 
.mob Rzelikh the Defiler
step
.goto 17,44.879,26.702
.use 56012>>Defeat |cRXP_ENEMY_Loramus the Defiled|r
>>|cRXP_WARN_Use the|r |T135426:0|t[Stone Knife of Sealing] |cRXP_WARN_on him once he is weakened|r
.complete 26171,2
.mob Loramus the Defiled
step
#completewith next
.hs >>Hearth to Surwich
step
.goto 17,46.335,87.150
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Charlton Connisport|r
.target Mayor Charlton Connisport
.turnin 26175 >>Turn in Surwich
.accept 26184 >>Accept Wormthorn's Dream
step
#optional
.maxlevel 57,endOfTheGuide
step
#loop
.goto 17,39.839,73.901,0
.goto 17,36.251,68.921,0
.goto 17,31.974,71.203,0
.goto 17,34.201,64.586,0
.goto 17,40.078,65.688,0

.goto 17,39.839,73.901,50,0
.goto 17,36.251,68.921,50,0
.goto 17,31.974,71.203,50,0
.goto 17,34.201,64.586,50,0
.goto 17,40.078,65.688,50,0
>>Kill |cRXP_ENEMY_Corrupted Darkwood Treants|r, |cRXP_ENEMY_Doomguard Destroyers|r and |cRXP_ENEMY_Dreadlord Defilers|r
.complete 26184,3 
.mob +Corrupted Darkwood Treant
.complete 26184,1 
.mob +Doomguard Destroyer
.complete 26184,2 
.mob +Dreadlord Defiler
step
.goto 17,33.214,77.746
>>Kill |cRXP_ENEMY_Felspore Bog Lords|r
.complete 26184,4 
.mob Felspore Bog Lord
step
.goto 17,46.369,87.138
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Charlton Connisport|r
.target Mayor Charlton Connisport
.turnin 26184 >>Turn in Wormthorn's Dream
.accept 26185 >>Accept Advice from the Cenarion Circle
step
.goto 17,46.212,85.313
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Observer Shayana|r, she patrols the area around Surwich
.target Cenarion Observer Shayana
.turnin 26185 >>Turn in Advice from the Cenarion Circle
.accept 26186 >>Accept Demoniac Vessel
step
#loop
#completewith vesselend
#hidewindow
.goto 17,38.809,60.472,30,0
.goto 17,40.107,53.558,30,0
.goto 17,35.255,55.397,30,0
+1
step
#label hide1
#sticky
.goto 17,38.809,60.472,0
.goto 17,40.107,53.558,0
.goto 17,35.255,55.397,0
.use 57177>>Kill |cRXP_ENEMY_Tainted Black Bears|r and loot |T134263:0|t[Tainted Hide], then combine 4 hides into a |cRXP_LOOT_Tainted Hide Pouch|r
.collect 57177,4,26186,1,1
.collect 57180,1,26186,1
.mob Tainted Black Bear
step
#label paste1
#sticky
.goto 17,38.809,60.472,0
.goto 17,40.107,53.558,0
.goto 17,35.255,55.397,0
.use 57179>>Kill |cRXP_ENEMY_Tainted Screechers|r and loot |T350574:0|t[Screecher Brain], then click it to transform into |cRXP_LOOT_Screecher Brain Paste|r
.collect 57179,2,26186,1,1
.collect 57182,2,26186,1
.mob Tainted Screecher
step
.goto 17,38.809,60.472,0
.goto 17,40.107,53.558,0
.goto 17,35.255,55.397,0
.use 57178>>Kill |cRXP_ENEMY_Tainted Nightstalkers|r and loot |T236573:0|t[Nightstalker Leg] and click it to turn transform them into |cRXP_LOOT_Crushed Nightstalker Leg|r
.collect 57178,20,26186,1,1
.collect 57181,20,26186,1
.mob Tainted Nightstalker
step
#requires paste1
.use 57182>>Combine the |cRXP_LOOT_Screecher Brain Paste|r and the |cRXP_LOOT_Crushed Nightstalker Legs|r into a |cRXP_LOOT_Demoniac Commixture|r
.collect 57183,1,26186,1
step
#label vesselend
#requires hide1
.use 57183 >>Combine the |cRXP_LOOT_Demoniac Commixture|r and the |cRXP_LOOT_Tainted Hide Pouch|r into a |cRXP_LOOT_Demoniac Vessel|r
.complete 26186,1
step
.goto 17,46.355,87.136
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Charlton Connisport|r
.target Mayor Charlton Connisport
.turnin 26186 >>Turn in Demoniac Vessel
.accept 26187 >>Accept The Downfall of Marl Wormthorn
step
#optional
.maxlevel 57,endOfTheGuide
step
#completewith next
.cast 78985 >> |cRXP_WARN_Use the|r |T133640:0|t[Demoniac Vessel] |cRXP_WARN_on|r |cRXP_ENEMY_Marl Wormthorn|r
.use 57185
step
.goto 17,34.724,67.812
.use 57185 >> Kill |cRXP_ENEMY_Marl Wormthorn|r
.mob Marl Wormthorn
.complete 26187,1
step
.goto 17,46.376,87.161
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Charlton Connisport|r
.target Mayor Charlton Connisport
.turnin 26187 >>Turn in The Downfall of Marl Wormthorn
step
.goto 17,47.141,89.353
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Graham McAllister|r
.fly Nethergarde Keep >>Fly to Nethergarde Keep
.target Graham McAllister
step
#optional
#label endOfTheGuide
step
#optional
.goto 17,63.220,25.910
.cast 3365 >> Click the |cRXP_PICK_Bloodstone Teleporter|r to exit the cave
.subzoneskip 1440,1
step
.goto 17,55.157,49.597
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Grimeo|r
.target Watcher Grimeo
.turnin 26171 >>Turn in You Are Rakh'likh, Demon
.isQuestComplete 26171
step
#optional
#completewith end1
+|cRXP_WARN_Abandon the following quests. You will now begin Outlands|r
step
#optional
.abandon 25715 >>Abandon A Closer Look
step
#optional
.abandon 26159 >>Abandon The First Step
step
#optional
.abandon 26172 >>Abandon A Bloodmage's Gotta Eat Too
step
#optional
.abandon 26168 >>Abandon The Amulet of Sevine
step
#optional
.abandon 26169 >>Abandon The Amulet of Grol
step
#optional
.abandon 25703 >>Abandon Atrocities
step
#optional
.abandon 25705 >>Abandon Flase Idols
step
#optional
.abandon 25706 >>Abandon Neptool's Revenge
step
#optional
.abandon 26164 >>Abandon The Charred Granite of the Dark Portal
step
#optional
.abandon 26165 >>Abandon The Vile Blood of Demons
step
#optional
.abandon 26166 >>Abandon Enhancing the Stone
step
#optional
.abandon 26175 >>Abandon Surwich
step
#optional
.abandon 26162 >>Abandon The Altar of Storms
step
#optional
.abandon 26184 >>Abandon Wormthorn's Dream
step
#optional
.abandon 26186 >>Abandon Demoniac Vessel
step
#optional
.abandon 26187 >>Abandon The Downfall of Marl Wormthorn
step
#optional
.abandon 26171 >>Abandon You Are Rakh'likh, Demon
step
#optional
#label end1
step
#optional
.xp 58 >> Grind to 58 or considering running dungeons
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#name 40-45 Eastern Plaguelands
#version 9
#group RXP MoP 1-80 (A)
#cata
#mop
#next 45-47 Badlands
step
#include RXPGuides\40-45 Eastern Plaguelands
]]);

RXPGuides.RegisterGuide([[
#version 9
#group RXP MoP 1-80 (A)
#cata
#mop
#name 33-35 Southern Barrens
#defaultfor None
<< Alliance

step <<skip
.goto 199,69.224,49.097
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Aubrey|r
.target Admiral Aubrey
.accept 24934 >>Accept Repel Boarders!
step <<skip
.goto 199,69.224,49.097
#completewith next
.skipgossip 38619,1
.vehicle >> Talk to |cRXP_FRIENDLY_Admiral Aubrey|r and secure passage to the ship
.target Admiral Aubrey
step <<skip
.goto 12,57.350,58.865
>>Kill |cRXP_ENEMY_Rageroar Sea Dog|r
.complete 24934,1 
.mob Rageroar Sea Dog
step <<skip
.goto 12,57.479,58.970
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fisher|r
.target Captain Fisher
.turnin 24934 >>Turn in Repel Boarders!
step <<skip
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fisher|r
.vehicle >> Ride back to Nortwatch
.skipgossip
step <<skip
.goto 199,69.227,49.059
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Aubrey|r
.target Admiral Aubrey
.accept 24938 >>Accept The Guns of Northwatch
step
.goto 199,67.016,46.536
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
.target Thomas Paxton
.accept 24941 >>Accept Langridge Shot
step
.goto 199,67.648,46.616
>>|cRXP_WARN_Climb the tower looting crates, chests and broken bottles on your way up|r
.complete 24941,1 
step
.goto 199,66.959,46.595
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
.target Thomas Paxton
.turnin 24941 >>Turn in Langridge Shot
.accept 24943 >>Accept Re-Take the Courtyard
step
.goto 199,66.917,46.839
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolliver Houndstooth|r
.target Tolliver Houndstooth
.accept 24944 >>Accept Back in the Fight
step
#optional
#completewith next
.complete 24943,1
>>Kill |cRXP_ENEMY_Rageroar Grunts|r
.mob *Rageroar Grunt
step
#loop
.goto 199,66.654,44.645,0
.goto 199,67.912,45.353,0
.goto 199,67.912,45.353,20,0
.goto 199,66.654,44.645,20,0
.use 52014 >> Use the |T133681:0|t[Herb-Soaked Bandages] on |cRXP_FRIENDLY_Wounded Defenders|r
.mob Wounded Defender
.complete 24944,1
step <<skip
.goto 199,68.622,44.463
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannoneer Smythe|r
.target Cannoneer Smythe
.turnin 24938 >>Turn in The Guns of Northwatch
.accept 24939 >>Accept Run Out the Guns
step <<skip
#completewith next
.goto 199,68.729,44.584
.vehicle >> Enter the |cRXP_FRIENDLY_Northwatch Shore Battery|r
.target Northwatch Shore Battery
step <<skip
.goto 199,68.709,44.592
>>Use the cannon to sink rowboats coming from the east
.complete 24939,1 
step <<skip
.goto 199,68.635,44.539
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannoneer Smythe|r
.target Cannoneer Smythe
.turnin 24939 >>Turn in Run Out the Guns
step
#loop
.goto 199,66.654,44.645,0
.goto 199,67.912,45.353,0
.goto 199,66.654,44.645,20,0
.goto 199,67.912,45.353,20,0
.complete 24943,1
>>Kill |cRXP_ENEMY_Rageroar Grunts|r
.mob Rageroar Grunt
step
.goto 199,66.915,46.786
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolliver Houndstooth|r
.target Tolliver Houndstooth
.turnin 24944 >>Turn in Back in the Fight
.accept 24956 >>Accept Silencing Rageroar
step
.goto 199,67.029,46.518
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
.target Thomas Paxton
.turnin 24943 >>Turn in Re-Take the Courtyard
.accept 24948 >>Accept Lifting the Siege
step
#optional
#completewith next
>>Kill |cRXP_ENEMY_Rageroar Lieutenants|r
.use 52017 >> Use |T135433:0|t[Paxton's Torch] to burn the catapults around the horde troops
.complete 24956,1
.mob +Rageroar Lieutenant
.complete 24948,1
step
.goto 199,68.557,41.918,30,0
.goto 199,68.186,40.954,20,0
.goto 199,68.814,38.566,20,0
.goto 199,67.510,36.661,20,0
.goto 199,67.500,36.692
.line 199,68.557,41.918,68.186,40.954,68.814,38.566,67.510,36.661,67.500,36.692
>>Kill |cRXP_ENEMY_Hexmaster Bastoon|r and |cRXP_ENEMY_Karga Rageroar|r, loot Karga for his |cRXP_LOOT_helm|r.
.complete 24956,2 
.mob Hexmaster Bastoon
.mob Karga Rageroar
step
.goto 199,67.315,37.497
.use 52017 >> |cRXP_WARN_Use|r |T135433:0|t[Paxton's Torch] |cRXP_WARN_to burn the catapults around the horde troops|r
.complete 24948,2 
step
#loop
.goto 199,67.133,37.216,0
.goto 199,68.818,38.722,0
.goto 199,68.693,40.914,0
.goto 199,67.133,37.216,30,0
.goto 199,68.818,38.722,30,0
.goto 199,68.693,40.914,30,0
.goto 199,67.788,40.121,30,0
.goto 199,68.825,38.590,30,0
>>Kill |cRXP_ENEMY_Rageroar Lieutenants|r
.use 52017 >> |cRXP_WARN_Use|r |T135433:0|t[Paxton's Torch] |cRXP_WARN_to burn the catapults around the horde troops|r
.complete 24956,1
.mob +Rageroar Lieutenant
.complete 24948,1
step
.goto 199,66.917,46.787
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolliver Houndstooth|r
.target Tolliver Houndstooth
.turnin 24956 >>Turn in Silencing Rageroar
step
.goto 199,67.015,46.555
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
.target Thomas Paxton
.turnin 24948 >>Turn in Lifting the Siege
.accept 25036 >>Accept Teegan's Troubles
step
.goto 199,61.834,42.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangled Body|r
.target Mangled Body
.accept 25002 >>Accept Scavenged
step
#completewith next
#optional
>>Kill |cRXP_ENEMY_Terrortooth Raptors|r for their |cRXP_LOOT_Hides|r.
.complete 25000,1
.mob Terrortooth Runner
.mob Terrortooth Scytheclaw
step
#loop
.goto 199,61.229,43.816,30,0
.goto 199,62.239,45.278,30,0
.goto 199,61.229,43.816,0
.goto 199,62.239,45.278,0
>>Loot |cRXP_PICK_Northwatch Supply Crates|r on the ground
.complete 25002,1 
step
#loop
.goto 199,57.216,42.925,30,0
.goto 199,61.229,43.816,30,0
.goto 199,62.239,45.278,30,0
.goto 199,61.229,43.816,30,0
.goto 199,61.229,43.816,0
.goto 199,62.239,45.278,0
.goto 199,57.216,42.925,0
>>Kill |cRXP_ENEMY_Terrortooth Raptors|r for their |cRXP_LOOT_Hides|r.
.complete 25000,1
.mob Terrortooth Runner
.mob Terrortooth Scytheclaw
step
.goto 199,56.116,42.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
.target Corporal Teegan
.turnin 25002 >>Turn in Scavenged
.turnin 25036 >>Turn in Teegan's Troubles
.accept 25015 >>Accept Make 'em Squeal
.accept 25022 >>Accept A Failure to Communicate
step
.goto 199,55.954,42.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goucho|r
.target Goucho
.turnin 25000 >>Turn in Teegan's People
.accept 25008 >>Accept Filthy Animals
step
#optional
#completewith naralex1
>>Click on |cRXP_PICK_Budding Flowers|r, usually located next to trees
.complete 25028,1
step
#optional
#completewith hyenas
>>Kill |cRXP_ENEMY_Hecklefang Scavengers|r
.complete 25008,1
.mob +Hecklefang Scavenger
step
#completewith next
#optional
#loop
>>Kill any type of |cRXP_ENEMY_Quilboar|r
>>Loot a |cRXP_LOOT_Bramblestaff|r from |cRXP_ENEMY_Deviate Thornweavers|r
.complete 25015,1
.complete 25015,2
.mob Deviate Thornweaver
.mob Bristleback Bladewarden
step
.goto 199,53.160,46.717
>>Click on the two bone restraint next to |cRXP_FRIENDLY_Ambassador Gaines|r
.complete 25022,1 
.unitscan Ambassador Gaines
step
#loop
.goto 199,56.057,44.524,0
.goto 199,53.880,48.453,0
.waypoint 199,56.057,44.524,30,0
.waypoint 199,53.880,48.453,30,0
>>Kill any type of |cRXP_ENEMY_Quilboar|r
>>Loot a |cRXP_LOOT_Bramblestaff|r from |cRXP_ENEMY_Deviate Thornweavers|r
.complete 25015,1
.complete 25015,2
.mob Deviate Thornweaver
.mob Bristleback Bladewarden
step
.goto 199,56.111,42.687
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
.target Corporal Teegan
.turnin 25022 >>Turn in A Failure to Communicate
.turnin 25015 >>Turn in Make 'em Squeal
.accept 25027 >>Accept You Flicked a Fine Vine to Leaf Me
step
#label hyenas
.goto 199,52.980,50.093
.use 52073 >> Use the |T135139:0|t[Bramblestaff] on |cRXP_ENEMY_Three-Tooth|r and kill 2 |cRXP_ENEMY_Deviate Crones|r
.complete 25027,1
.complete 25027,2
.mob Three-Tooth
.mob Deviate Crone
step
#loop
.goto 199,55.072,46.104,0
.goto 199,58.704,40.546,0
.goto 199,62.913,40.026,0
.goto 199,55.072,46.104,40,0
.goto 199,58.704,40.546,40,0
.goto 199,62.913,40.026,40,0
>>Kill |cRXP_ENEMY_Hecklefang Scavengers|r
.complete 25008,1
.mob Hecklefang Scavenger
step
.goto 199,56.093,42.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
.target Corporal Teegan
.turnin 25027 >>Turn in You Flicked a Fine Vine to Leaf Me
.accept 25034 >>Accept To the Front!
step
#label naralex1
.goto 199,56.170,42.530
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goucho|r
.target Goucho
.turnin 25008 >>Turn in Filthy Animals
step
.goto 199,55.093,43.087,18,0
.goto 199,54.563,44.532,18,0
.goto 199,52.471,43.844,18,0
.goto 199,50.505,41.747,18,0
.goto 199,49.146,41.848
>>Click on |cRXP_PICK_Budding Flowers|r, usually located next to trees
.complete 25028,1
step
.goto 199,50.412,40.715
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
.target Naralex
.turnin 25028 >>Turn in Trouble From the Ground Up
.accept 24565 >>Accept Biological Intervention
step
.goto 199,50.310,40.397
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
.target Muyoh
.accept 24570 >>Accept Adder Subtraction
.accept 24571 >>Accept Lashvine Seeds
step
#loop
.goto 199,48.365,42.082,0
.goto 199,45.859,38.138,0
.goto 199,45.331,34.399,0
.goto 199,48.902,35.762,0
.goto 199,50.950,37.260,0
.goto 199,51.629,43.631,0

.goto 199,48.365,42.082,40,0
.goto 199,45.859,38.138,40,0
.goto 199,45.331,34.399,40,0
.goto 199,48.902,35.762,40,0
.goto 199,50.950,37.260,40,0
.goto 199,51.629,43.631,40,0
#sticky
#label adder
>>Click on |cRXP_PICK_Enervated Adders|r scattered all around The Overgrowth
.complete 24570,1
.target Enervated Adder
step
#loop
.goto 199,48.365,42.082,0
.goto 199,45.859,38.138,0
.goto 199,45.331,34.399,0
.goto 199,48.902,35.762,0
.goto 199,50.950,37.260,0
.goto 199,51.629,43.631,0

.goto 199,48.365,42.082,40,0
.goto 199,45.859,38.138,40,0
.goto 199,45.331,34.399,40,0
.goto 199,48.902,35.762,40,0
.goto 199,50.950,37.260,40,0
.goto 199,51.629,43.631,40,0
>>Kill |cRXP_ENEMY_Deviate Plainstriders|r and |cRXP_ENEMY_Deviate Terrortooth|r
>>Kill |cRXP_ENEMY_Lashvines|r for |cRXP_LOOT_Writhing Seeds|r

.complete 24565,1
.mob +Deviate Terrortooth
.complete 24565,2
.mob +Deviate Plainstrider
.complete 24571,1
.mob +Lashvine
step
#requires adder
.goto 199,50.296,40.442
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
.target Muyoh
.turnin 24570 >>Turn in Adder Subtraction
.turnin 24571 >>Turn in Lashvine Seeds
.accept 24566 >>Accept Sowing a Solution
step
.goto 199,50.405,40.688
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
.target Naralex
.turnin 24565 >>Turn in Biological Intervention
.accept 24574 >>Accept To Harvest Chaos
step
#sticky
#label seeds
#loop
.goto 199,46.535,31.424,0
.goto 199,48.185,38.154,0
.goto 199,51.990,43.291,0
.waypoint 199,48.365,42.082,40,0
.waypoint 199,45.859,38.138,40,0
.waypoint 199,45.331,34.399,40,0
.waypoint 199,48.902,35.762,40,0
.waypoint 199,50.950,37.260,40,0
.waypoint 199,51.629,43.631,40,0
.use 49882 >> Use the |T133669:0|t[Soothing Seeds] on |cRXP_FRIENDLY_Deviate Terrortooth|r or |cRXP_FRIENDLY_Deviate Plainstrider|r
.complete 24566,1
.target Deviate Terrortooth
.target Deviate Plainstrider
step
#loop
.goto 199,46.535,31.424,0
.goto 199,48.185,38.154,0
.goto 199,51.990,43.291,0
.goto 199,49.536,40.835,40,0
.goto 199,46.717,37.568,40,0
.goto 199,44.634,35.660,40,0
.goto 199,43.250,36.245,40,0
.goto 199,41.882,34.270,40,0
>>Kill |cRXP_ENEMY_Outgrowths|r and loot a |cRXP_LOOT_Squirming Heart|r
.complete 24574,1
.complete 24574,2
.mob Outgrowth
step
#requires seeds
.goto 199,50.291,40.360
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
.target Muyoh
.turnin 24566 >>Turn in Sowing a Solution
step
.goto 199,50.436,40.716
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
.target Naralex
.turnin 24574 >>Turn in To Harvest Chaos
.accept 24601 >>Accept The Nightmare Scar
step
.goto 199,48.168,38.740,40 >> Head to The Nightmare Scar
.subzoneskip 4888
.isOnQuest 24601
step
.goto 199,48.206,38.645
>>Talk to |cRXP_FRIENDLY_Naralex|r to start a RP event, then kill 3 waves of mobs to seal the portal.
.complete 24601,1
.target Naralex
.mob Nightmare Mass
.skipgossip 37570,1
step
.goto 199,48.205,38.631
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
.target Naralex
.turnin 24601 >>Turn in The Nightmare Scar
step
.goto 199,50.006,49.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
.target Ambassador Gaines
.turnin 25034 >>Turn in To the Front!
.accept 25044 >>Accept Diplomacy By Another Means
step
.goto 199,49.924,49.730
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
.target General Hawthorne
.accept 25043 >>Accept Fields of Blood
.accept 25045 >>Accept A Line in the Dirt
step
.goto 199,49.784,50.542
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sam Trawley|r
.target Sam Trawley
.accept 25041 >>Accept Lion's Pride
step
#completewith lions
>>Kill any type of |cRXP_ENEMY_Barrens Lion|r
.complete 25041,1
.mob +Plains Prowler
.mob +Plains Pridemane
step
#optional
#completewith grunt1
>>Kill |cRXP_ENEMY_Desolation Grunts|r
.complete 25043,1 
.mob +Desolation Grunt
step

.goto 199,46.380,47.244
>>Click the |cRXP_PICK_Field Banner|r and defend the area against the incoming enemies
.complete 25045,1 
.complete 25045,2 
step
#label grunt1
.goto 199,43.047,41.805
.use 49782 >> Use the |T134228:0|t[Horn of Challenge] inside the pit to summon |cRXP_ENEMY_Sabersnout|r
.complete 25044,1 
.mob Sabersnout
step
#label lions
#loop
.goto 199,46.918,44.447,0
.goto 199,45.704,43.974,0
.goto 199,44.694,45.395,0
.goto 199,44.694,45.395,40,0
.goto 199,45.704,43.974,40,0
.goto 199,46.918,44.447,40,0
>>Kill |cRXP_ENEMY_Desolation Grunts|r
.complete 25043,1 
.mob Desolation Grunt
step
.goto 199,44.176,46.877,0
.goto 199,46.177,49.753,0
.goto 199,47.155,47.176,0
.goto 199,44.176,46.877,40,0
.goto 199,46.177,49.753,40,0
.goto 199,47.155,47.176,40,0
>>Kill any type of |cRXP_ENEMY_Barrens Lion|r
.complete 25041,1
.mob +Plains Prowler
.mob +Plains Pridemane
step
.goto 199,49.999,49.503
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
.target Ambassador Gaines
.turnin 25044 >>Turn in Diplomacy By Another Means
step
.goto 199,49.928,49.705
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
.target General Hawthorne
.turnin 25043 >>Turn in Fields of Blood
.turnin 25045 >>Turn in A Line in the Dirt
.accept 25057 >>Accept Clap 'Em In Irons
step
.goto 199,50.023,49.495
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
.target Ambassador Gaines
.accept 25059 >>Accept The Taurajo Briefs
step
.goto 199,49.773,50.522
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sam Trawley|r
.target Sam Trawley
.turnin 25041 >>Turn in Lion's Pride
.accept 25042 >>Accept Marching On Our Stomachs
step
#optional
#completewith next
.goto 199,46.987,48.968,0
.goto 199,43.169,49.581,0
.goto 199,42.927,54.286,0
>>Loot |cRXP_LOOT_Stormsnout Steak|r from |cRXP_ENEMY_Stormsnouts|r
.complete 25042,1
.mob Stormsnout
step
#loop
.goto 199,44.544,51.897,0
.goto 199,44.427,50.865,18,0
.goto 199,43.753,52.537,18,0
.goto 199,45.082,51.535,18,0
>>Click on |cRXP_PICK_Taurajo Intelligence|r, they look like small scrolls
>>Talk to |cRXP_ENEMY_Taurajo Looter|r and get them below 30% hp
.use 52271 >> Use the |T135834:0|t[Northwatch Manacles] to arrest them
.complete 25059,1
.complete 25057,1
.mob +Taurajo Looter
.skipgossip
step
#loop
.goto 199,44.301,56.074,0
.goto 199,51.211,52.226,0
.goto 199,51.545,49.032,0
.goto 199,43.216,49.261,0
.goto 199,44.301,56.074,40,0
.goto 199,51.211,52.226,40,0
.goto 199,51.545,49.032,40,0
.goto 199,43.216,49.261,40,0
>>Loot |cRXP_LOOT_Stormsnout Steak|r from |cRXP_ENEMY_Stormsnouts|r
.complete 25042,1
.mob Stormsnout
step
.goto 199,49.787,50.531
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sam Trawley|r
.target Sam Trawley
.turnin 25042 >>Turn in Marching On Our Stomachs
step
.goto 199,49.931,49.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
.target General Hawthorne
.turnin 25057 >>Turn in Clap 'Em In Irons
.accept 25074 >>Accept Meet Me at Triumph
step
.goto 199,49.087,66.891
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Roberts|r
.target Commander Roberts
.turnin 25074 >>Turn in Meet Me at Triumph
.accept 25081 >>Accept Claim the Battlescar
step
.goto 199,49.489,67.519
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mizzy Pistonhammer|r
.target Mizzy Pistonhammer
.accept 25075 >>Accept Pick-a-Part
step
.goto 199,49.214,67.851
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logan Talonstrike|r
.target Logan Talonstrike
.accept 25082 >>Accept Working the Bugs Out
step
.goto 199,48.291,68.583,10,0
.goto 199,48.291,68.583,0
.goto 199,47.701,67.368
.use 50128>>Use the |T132386:0|t[Bucket of Burning Pitch] next to the rock formations right outside Fort Triumph
>>Kill |cRXP_ENEMY_Silithid Swarmers|r
.mob Silithid Swarmer
.complete 25082,1 
step
#sticky
#label flag1
.goto 199,45.338,69.791
>>Head to the flag in the middle of the Battlescar, if the opposite faction controls the area, kill all the horde NPCs around the flag
.complete 25081,2 
step
#loop
.goto 199,44.935,72.573,40,0
.goto 199,44.655,69.875,40,0
.goto 199,45.778,66.372,40,0
.goto 199,45.705,69.789,40,0
.goto 199,45.705,69.789,0
.goto 199,44.935,72.573,0
.goto 199,45.778,66.372,0
>>Click on |cRXP_PICK_Siege Engine Scraps|r scattered around the area
>>Kill |cRXP_ENEMY_Desolation Raiders|r
.complete 25075,1 
.complete 25081,1 
.mob Desolation Raider
step
#requires flag1
.goto 199,49.209,67.836
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logan Talonstrike|r
.target Logan Talonstrike
.turnin 25082 >>Turn in Working the Bugs Out
.accept 25086 >>Accept Firestone Point
step
.goto 199,49.481,67.532
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mizzy Pistonhammer|r
.target Mizzy Pistonhammer
.turnin 25075 >>Turn in Pick-a-Part
.accept 25079 >>Accept Powder Play
step
.goto 199,49.094,66.885
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Roberts|r
.target Commander Roberts
.turnin 25081 >>Turn in Claim the Battlescar
.accept 25087 >>Accept Report to Twinbraid
step
#loop
.goto 199,45.846,68.166,30,0
.goto 199,47.967,68.060,30,0
.goto 199,45.846,68.166,0
.goto 199,47.967,68.060,0
>>Loot a Keg of Blast-O Powder from a |cRXP_ENEMY_Sapper Specialist|r
.complete 25079,1 
.mob Sapper Specialist
step
.goto 199,49.486,67.478
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mizzy Pistonhammer|r
.target Mizzy Pistonhammer
.turnin 25079 >>Turn in Powder Play
.accept 25080 >>Accept Batteries Not Yet Included

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steve Stevenson|r
.fly Theramore >> Fly to Theramore
.target Steve Stevenson
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#name 47-50 Searing Gorge
#version 9
#group RXP MoP 1-80 (A)
#cata
#mop
#next 50-52 Burning Steppes
step
#include RXPGuides\47-50 Searing Gorge
]]);

RXPGuides.RegisterGuide([[
#version 9
#group RXP MoP 1-80 (A)
#cata
#mop
#name 25-30 Northern Stranglethorn
#next 30-35 Southern Stranglethorn
#displayname 26-31 Northern Stranglethorn
<< Alliance
step
.goto 50,51.86,12.01
.zone 50 >> Travel to Northern Stranglethorn
.zoneskip 1434
step
#completewith next
.goto 50,47.74,12.69,30,0
.goto 50,47.87,11.86,60 >> Travel to the Rebel Camp
.subzoneskip 99
step
#completewith next
.goto 50,47.87,11.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James|r
.fp Rebel Camp >>Get the Rebel Camp Flight Path
.target James Stillair
step
.goto 50,47.553,10.305
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.target Lieutenant Doren
.turnin -26838 >>Turn in Rebels Without a Clue
.accept 26735 >>Accept The Fate of Kurzen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaleb|r, and |cRXP_FRIENDLY_Nimetz|r
.accept 26740 >>Accept Krazek's Cookery
.target +Corporal Kaleb
.goto 50,47.10,10.70
.accept 26732 >>Accept Bad Medicine
.goto 50,47.25,11.10
.target +Brother Nimetz
step
.goto 50,44.226,22.160
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.target Barnil Stonepot
.accept 583 >>Accept Welcome to the Jungle
step
.goto 50,44.179,22.965
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr|r
.target Hemet Nesingwary Jr.
.turnin 583 >>Turn in Welcome to the Jungle
.accept 194 >>Accept Raptor Hunting
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r and |cRXP_FRIENDLY_Krazek|r
.accept 26343 >>Accept Supply and Demand
.target +Drizzlik
.goto 50,43.639,23.390
.turnin 26740 >>Turn in Krazek's Cookery
.accept 26763 >>Accept Venture Company Mining
.goto 50,43.692,23.040
.target +Krazek
step << Warrior/Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaquilina Dramet|r
>>|cRXP_BUY_Buy a|r |T135576:0|t[Bullova] >>|cRXP_BUY_from her. Equip it once you are level 30|r
.collect 2523,1 
.target Jaquilina Dramet
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<22.3
.xp >30,1
step << Warrior/Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaquilina Dramet|r
>>|cRXP_BUY_Buy a|r |T135576:0|t[Bullova] >>|cRXP_BUY_from her|r
.collect 2523,1 
.target Jaquilina Dramet
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<22.3
.xp <30,1
step << Rogue/Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaquilina Dramet|r
>>|cRXP_BUY_Buy a|r |T135419:0|t[Crescent Axe] >>|cRXP_BUY_from her. Equip it once you are level 30|r
.collect 2522,1 
.target Jaquilina Dramet
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.0
.xp >30,1
step << Rogue/Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaquilina Dramet|r
>>|cRXP_BUY_Buy a|r |T135419:0|t[Crescent Axe] >>|cRXP_BUY_from her|r
.collect 2522,1 
.target Jaquilina Dramet
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.0
.xp <30,1
step << Warrior/Paladin
#optional
#completewith end
+|cRXP_WARN_Equip the|r |T135576:0|t[Bullova]
.use 2523
.itemcount 2523,1
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<22.3
.xp <30,1
step << Rogue/Shaman
#optional
#completewith end
+|cRXP_WARN_Equip the|r |T135419:0|t[Crescent Axe]
.use 2522
.itemcount 2522,1
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.0
.xp <30,1
step
#requires Jaq
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erlgadin|r, |cRXP_FRIENDLY_Barnil|r, and |cRXP_FRIENDLY_Ajeck|r
.accept 190 >>Accept Panther Hunting
.goto 50,43.717,22.273,10,0
.goto 50,44.25,22.12,10,0
.goto 50,43.717,22.273
.target +Sir S. J. Erlgadin
.accept 26269 >>Accept The Green Hills of Stranglethorn
.goto 50,44.25,22.12
.target +Barnil Stonepot
.accept 185 >>Accept Tiger Hunting
.goto 50,44.50,22.66
.target +Ajeck Rouack
step
#optional
#completewith supplyanddemand
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#loop
.goto 50,45.97,20.58,40,0
.goto 50,43.88,18.04,40,0
.goto 50,41.96,17.77,40,0
.goto 50,41.02,19.93,40,0
.goto 50,42.49,21.96,40,0
.goto 50,38.92,18.96,40,0
.goto 50,45.97,20.58,40,0
.goto 50,43.88,18.04,40,0
.goto 50,41.96,17.77,40,0
.goto 50,41.02,19.93,40,0
.goto 50,42.49,21.96,40,0
.goto 50,38.92,18.96,0
>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 26343,1 
.mob River Crocolisk
step
#label supplyanddemand
.goto 50,43.62,23.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 26343 >>Turn in Supply and Demand
.accept 26344 >>Accept Some Assembly Required
.target Drizzlik
step
.goto 50,37.50,19.98,40,0
.goto 50,39.10,22.12,40,0
.goto 50,40.72,24.52,40,0
.goto 50,42.95,28.10,40,0
.goto 50,44.46,26.17,40,0
.goto 50,46.28,23.20,40,0
.goto 50,37.50,19.98,40,0
.goto 50,39.10,22.12,40,0
.goto 50,40.72,24.52,40,0
.goto 50,42.95,28.10,40,0
.goto 50,44.46,26.17,40,0
.goto 50,46.28,23.20,40,0
.goto 50,42.137,25.002,0
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
.goto 50,43.65,23.46
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 185 >>Turn in Tiger Hunting
.accept 186 >>Accept Tiger Stalking
step
#completewith next
#optional
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1,5 
.mob *Young Panther
.subzoneskip 37
step
#label CrocoSkin
.goto 50,50.67,29.62,40,0
.goto 50,52.15,28.82,40,0
.goto 50,49.99,33.55,40,0
.goto 50,51.20,36.00,40,0
.goto 50,50.13,39.89,40,0
.goto 50,51.70,39.86,40,0
.goto 50,54.32,38.65,40,0
.goto 50,58.336,34.732,0
.goto 50,50.67,29.62,0
.goto 50,52.15,28.82,0
.goto 50,49.99,33.55,0
.goto 50,51.20,36.00,0
.goto 50,50.13,39.89,0
.goto 50,51.70,39.86,0
.goto 50,54.32,38.65,0
>>Kill |cRXP_ENEMY_Snapjaw Crocolisks|r |cRXP_WARN_(even if they're underwater)|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 26344,1 
.mob Snapjaw Crocolisk
step
>>Kill |cRXP_ENEMY_Venture Co. Geologists|r and |cRXP_ENEMY_Venture Co. Shredders|r. Loot them for their |cRXP_LOOT_Crystals|r
.goto 50,54.08,33.65,15,0
.goto 50,54.48,34.08,15,0
.goto 50,54.43,35.29,10,0
.goto 50,55.35,35.7,70,0
.goto 50,55.87,42.43,70,0
.goto 50,59.59,36.22,70,0
.goto 50,55.29,30.48,70,0
.goto 50,55.87,42.43,70,0
.goto 50,59.59,36.22,70,0
.goto 50,55.29,30.48
.complete 26763,1 
.mob Venture Co. Geologist
.mob Venture Co. Shredder
step
.goto 50,56.39,28.08,40,0
.goto 50,58.47,26.80,40,0
.goto 50,60.65,30.98,40,0
.goto 50,61.80,31.60,40,0
.goto 50,60.96,25.20,40,0
.goto 50,56.39,28.08,40,0
.goto 50,58.47,26.80,40,0
.goto 50,60.65,30.98,40,0
.goto 50,61.80,31.60,40,0
.goto 50,60.96,25.20
>>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
.complete 186,1 
.mob Stranglethorn Tiger
step
.goto 50,57.92,23.65
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 186 >>Turn in Tiger Stalking
.accept 187 >>Accept Tiger Prowess
step
#completewith next
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r and |cRXP_ENEMY_Kurzen Jungle Fighters|r. Loot them for their |cRXP_LOOT_Jungle Remedies|r
.complete 26732,1 
.mob Kurzen Medicine Man
.mob Kurzen Jungle Fighter
step
>>Loot the |cRXP_LOOT_Kurzen Compound Officers' Dossier|r and |cRXP_LOOT_Kurzen Compound Prison Records|r on the ground
.complete 26735,2 
.goto 50,57.92,23.66,-1
.complete 26735,1 
.goto 50,57.89,22.86,-1
step
#loop
.goto 50,57.98,22.95,60,0
.goto 50,58.97,21.87,60,0
.goto 50,58.43,19.29,60,0
.goto 50,56.92,20.70,60,0
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r and |cRXP_ENEMY_Kurzen Jungle Fighters|r. Loot them for their |cRXP_LOOT_Jungle Remedies|r
.complete 26732,1 
.mob Kurzen Medicine Man
.mob Kurzen Jungle Fighter
step
>>Click the Quest Accept Pop-Up in your Questlog
.collect 58165,1,26738
.accept 26738 >>Accept Just Hatched
step
#loop
.goto 50,55.65,21.57,60,0
.goto 50,53.30,25.50,60,0
.goto 50,55.65,21.57,60,0
.goto 50,54.69,26.78,60,0
.goto 50,52.56,23.00,60,0
.goto 50,51.76,18.10,60,0
.goto 50,49.00,18.03,60,0
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
.goto 50,47.58,10.25
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 190 >>Turn in Panther Hunting
.accept 191 >>Accept Panther Stalking
step
#completewith next
.goto 50,49.44,14.20,30,0
.goto 50,47.74,12.69,30,0
.goto 50,47.57,10.25,40 >> Return to the Rebel Camp
.subzoneskip 99
step
.goto 50,47.572,10.253
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.target Lieutenant Doren
.turnin 26735 >>Turn in The Fate of Kurzen
.accept 26736 >>Accept Spared from Madness
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sethman|r and |cRXP_FRIENDLY_Nimetz|r
.turnin 26738 >>Turn in Just Hatched
.accept 26739 >>Accept I Think She's Hungry
.goto 50,46.98,10.84
.target +Corporal Sethman
.turnin 26732 >>Turn in Bad Medicine
.accept 26733 >>Accept Control Sample
.goto 50,47.25,11.10
.target +Brother Nimetz
step
.goto 50,56.80,20.75,8,0
.goto 50,56.495,20.282
>>Click the |cRXP_PICK_Kurzen Cage|r upstairs in the house
.complete 26736,1 
.complete 26736,2 
.complete 26736,3 
step
#completewith next
.cast 79648 >>|cRXP_WARN_Use the|r |T132835:0|t[Lashtail Raptor Egg Fragment] |cRXP_WARN_to summon a|r |cRXP_FRIENDLY_Lashtail Hatchling|r
.use 58165
step
#loop
.goto 50,60.48,21.98,70,0
.goto 50,61.73,19.96,70,0
.goto 50,63.63,18.48,70,0
.goto 50,64.67,21.11,70,0
.goto 50,63.17,22.43,70,0
.goto 50,61.43,22.78,70,0
.goto 50,63.44,24.93,70,0
.goto 50,63.65,31.49,70,0
>>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Blood|r
.use 58165 >>|cRXP_WARN_Stay around the corpse after so the |cRXP_FRIENDLY_Lashtail Hatchling|r can eat it for their|r |cRXP_LOOT_Basilisk Meat|r
.complete 26733,1 
.complete 26739,1 
.mob Crystal Spine Basilisk
step
#completewith next
.goto 50,49.44,14.20,30,0
.goto 50,47.74,12.69,30,0
.goto 50,47.57,10.25,40 >> Return to the Rebel Camp
.subzoneskip 99
step
#label rebelcamp1
.goto 50,47.274,11.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.target Brother Nimetz
.turnin 26733 >>Turn in Control Sample
.accept 26734 >>Accept The Source of the Madness
step
.goto 50,46.996,10.897
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.target Corporal Sethman
.turnin 26739 >>Turn in I Think She's Hungry
.accept 26744 >>Accept Deep Roots
step
.goto 50,47.561,10.296
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.target Lieutenant Doren
.turnin 26736 >>Turn in Spared from Madness
.accept 26737 >>Accept Stopping Kurzen's Legacy
step
#completewith next
.goto 50,59.53,18.52,40 >> Enter the Cave north of the compound
.subzoneskip 106
step
#completewith Esquivel
#optional
>>Kill all |cRXP_ENEMY_Kurzen|r inside the cave |cRXP_WARN_EXCEPT Commandos|r. Loot them for the |cRXP_LOOT_Blue Stone|r
.complete 26734,1 
.mob *Kurzen Headshrinker
.mob *Kurzen Witch Doctor
.mob *Kurzen Elite
.mob *Kurzen Shadow Hunter
.mob *Kurzen Subchief
step
.goto 50,60.48,17.05,20,0
.goto 50,62.42,17.61,20,0
.goto 50,63.22,16.90,20,0
.goto 50,63.75,16.74
>>Kill |cRXP_ENEMY_Chief Anders|r
>>|cRXP_WARN_Be careful of the Stealthed Commandos inside the cave as they stun|r.
.complete 26737,1 
.mob Chief Anders
step
.goto 50,63.11,17.66,8,0
.goto 50,62.86,16.66,15,0
.goto 50,62.45,14.07
>>Go downstairs. Kill |cRXP_ENEMY_Chief Gaulus|r
.complete 26737,2 
.mob Chief Gaulus
step
.goto 50,64.09,19.02,20,0
.goto 50,65.78,17.13
>>Kill |cRXP_ENEMY_Chief Miranda|r

.complete 26737,3 
.mob Chief Miranda
step
#label Esquivel
.goto 50,64.20,13.36,20,0
.goto 50,66.09,11.73
>>Go to the end of the cave. Kill |cRXP_ENEMY_Chief Esquivel|r

.complete 26737,4 
.mob Chief Esquivel
step
#loop
.goto 50,59.53,18.52,40,0
.goto 50,63.75,16.74,20,0
.goto 50,62.45,14.07,20,0
.goto 50,65.78,17.13,20,0
.goto 50,66.09,11.73,20,0
.goto 50,59.53,18.52,40,0
.goto 50,63.75,16.74,20,0
.goto 50,62.45,14.07,20,0
.goto 50,65.78,17.13,20,0
.goto 50,66.09,11.73,25,0
.goto 50,62.45,14.07,0
>>Kill all |cRXP_ENEMY_Kurzen|r inside the cave |cRXP_WARN_EXCEPT Commandos|r. Loot them for the |cRXP_LOOT_Blue Stone|r
.complete 26734,1 
.mob Kurzen Headshrinker
.mob Kurzen Witch Doctor
.mob Kurzen Elite
.mob Kurzen Shadow Hunter
.mob Kurzen Subchief
step
.isOnQuest 26734,26737,26795
.hs >> Hearthstone to Darkshire
.cooldown item,6948,>2
step
#optional
.isQuestComplete 26795
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.goto Duskwood,73.67,46.83
.turnin 26795 >>Turn in Mor'Ladim
.accept 26796 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
#optional
.isQuestTurnedIn 26795
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.goto Duskwood,73.67,46.83
.accept 26796 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
#optional
.isQuestTurnedIn 26795
.goto Duskwood,74.49,46.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
>>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols slightly through Darkshire|r
.turnin 26796 >>Turn in The Daughter Who Lived
.accept 26797 >>Accept A Daughter's Love << Rogue
.itemStat 16,QUALITY,<7 << Rogue
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.1 << Rogue
.target Watcher Ladimore
step << Rogue
#optional
.isQuestTurnedIn 26795
.goto Duskwood,74.49,46.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
>>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols slightly through Darkshire|r
.turnin 26796 >>Turn in The Daughter Who Lived
.target Watcher Ladimore
step << Rogue
.isOnQuest 26797
.goto 47,77.48,44.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fly Raven Hill >>Fly to Raven Hill
.target Felicia Maline
step << Rogue
#optional
.isOnQuest 26797
.goto Duskwood,17.1,29.1
>>Click |cRXP_PICK_A Weathered Grave|r
.turnin 26797 >>Turn in A Daughter's Love
step << Rogue
#completewith next
.goto 47,77.48,44.28,-1
.goto 47,21.076,56.448,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r or |cRXP_FRIENDLY_John Shelby|r
.fly Rebel Camp >>Fly to Rebel Camp
.target Felicia Maline
.target John Shelby
.subzoneskip 99
step << !Rogue
#completewith next
.goto 47,77.48,44.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fly Rebel Camp >>Fly to Rebel Camp
.target Felicia Maline
.subzoneskip 99
step
.goto 50,47.98,12.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berrin|r
>>|cRXP_WARN_If he isn't here, either relog, or zone into Duskwood and come back|r
.accept 26742 >>Accept Bloodscalp Insight
.target Berrin Burnquill
step
.goto 50,47.283,11.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.target Brother Nimetz
.turnin 26734 >>Turn in The Source of the Madness
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r and |cRXP_FRIENDLY_Emerine Junis|r
.turnin 26737 >>Turn in Stopping Kurzen's Legacy
.goto 50,47.563,10.332
.target +Lieutenant Doren
.accept 26729 >>Accept Water Elementals
.target +Emerine Junis
.goto 50,47.657,10.356
step
#optional
.isQuestComplete 26269
.goto 50,44.227,22.179
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.target Barnil Stonepot
.turnin 26269 >>Turn in The Green Hills of Stranglethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r and |cRXP_FRIENDLY_Drizzlik|r
.turnin 26763 >>Turn in Venture Company Mining
.accept 26765 >>Accept Return to Corporal Kaleb
.goto 50,43.60,23.13
.target +Krazek
.turnin 26344 >>Turn in Some Assembly Required
.accept 26345 >>Accept Excelsior
.goto 50,43.62,23.40
.target +Drizzlik
step
#optional
#completewith sindall
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
#loop
.goto 50,36.39,32.58,70,0
.goto 50,37.61,33.55,70,0
.goto 50,37.17,36.85,70,0
.goto 50,38.56,36.44,70,0
.goto 50,39.82,32.34,70,0
.goto 50,38.58,28.25,70,0
.goto 50,36.39,32.58,70,0
.goto 50,37.61,33.55,70,0
.goto 50,37.17,36.85,70,0
.goto 50,38.56,36.44,70,0
.goto 50,39.82,32.34,70,0
.goto 50,38.58,28.25,70,0
>>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
>>|cRXP_WARN_Do NOT kill |cRXP_ENEMY_Sin'Dall|r If you see her|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.goto 50,38.48,32.59
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 187 >>Turn in Tiger Prowess
.accept 188 >>Accept Tiger Mastery
step
#label sindall
#loop
.goto 50,38.48,32.46
>>Kill |cRXP_ENEMY_Sin'Dall|r. Loot her for her |cRXP_LOOT_Paw|r
.complete 188,1 
.unitscan Sin'Dall
step
#loop
.goto 50,36.63,27.97,70,0
.goto 50,36.13,30.34,70,0
.goto 50,32.22,26.43,70,0
.goto 50,33.77,25.57,70,0
.goto 50,36.44,22.90,70,0
.goto 50,33.86,18.86,70,0
.goto 50,31.35,20.62,70,0
.goto 50,36.63,27.97,70,0
.goto 50,36.13,30.34,70,0
.goto 50,32.22,26.43,70,0
.goto 50,33.77,25.57,70,0
.goto 50,36.44,22.90,70,0
.goto 50,33.86,18.86,70,0
.goto 50,31.35,20.62,70,0
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
.goto 50,31.13,30.25
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 191 >>Turn in Panther Stalking
.accept 192 >>Accept Panther Prowess
step
#loop
.goto 50,31.23,28.02,70,0
.goto 50,30.31,30.27,70,0
.goto 50,31.66,33.19,70,0
.goto 50,32.11,29.87,70,0
.goto 50,28.93,30.25,70,0
.goto 50,25.03,29.71,70,0
.goto 50,31.23,28.02,70,0
.goto 50,30.31,30.27,70,0
.goto 50,31.66,33.19,70,0
.goto 50,32.11,29.87,70,0
.goto 50,28.93,30.25,70,0
.goto 50,25.03,29.71,70,0
>>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
.complete 194,1 
.mob Stranglethorn Raptor
step
.goto 50,30.86,29.66
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 194 >>Turn in Raptor Hunting
.accept 195 >>Accept Raptor Stalking
step
#loop
.goto 50,22.619,41.013,70,0
.goto 50,20.806,42.934,70,0
.goto 50,19.339,39.761,70,0
>>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 26729,1 
.mob Lesser Water Elemental
step
#completewith next
.cast 82269 >> |cRXP_WARN_Use|r |T348536:0|t[Emerine's Telling-Sphere] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Emerine|r
.use 60273
step
.use 60273 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emerine Junis|r
.turnin 26729 >>Turn in Water Elementals
.accept 26730 >>Accept You Can Take the Murloc Out of the Ocean...
.target Emerine Junis
.itemcount 60273,1
step
#completewith next
.goto 50,33.643,36.903
.subzone 123 >> Travel to the Bal'lal Ruins
step
.goto 50,33.643,36.903
>>Loot the |cRXP_LOOT_Loot the Bloodscalp Lore Tablet|r
.complete 26744,1 
step
#completewith FavoredSkull
.goto 50,33.732,37.186,3 >> |cRXP_WARN_Stand on the |cRXP_PICK_Pile of Skulls|r on the ground|r
step
#completewith next
.cast 79648 >>|cRXP_WARN_Use the|r |T132835:0|t[Lashtail Raptor Egg Fragment] |cRXP_WARN_to summon the|r |cRXP_FRIENDLY_Lashtail Hatchling|r
.use 58165
step
#label FavoredSkull
.goto 50,33.732,37.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Lashtail Hatchling|r beside you
>>|cRXP_WARN_If the |cRXP_FRIENDLY_Lashtail Hatchling|r isn't offering you the quest, run over the |cRXP_PICK_Pile of Skulls|r on the ground|r
.accept 26745 >>Accept Favored Skull
.target Lashtail Hatchling
step
.goto 50,34.49,35.89,60,0
.goto 50,33.68,33.98,60,0
.goto 50,35.49,31.58,60,0
.goto 50,35.89,37.88,60,0
.goto 50,33.73,38.03,60,0
.goto 50,34.49,35.89,60,0
.goto 50,33.68,33.98,60,0
.goto 50,35.49,31.58,60,0
.goto 50,35.89,37.88,60,0
.goto 50,33.73,38.03
>>Kill |cRXP_ENEMY_Bloodscalp Shamans|r. Loot them for the |cRXP_LOOT_Bloodscalp Totem|r
>>|cRXP_WARN_You may need to kill Bloodscalp Warriors to force |cRXP_ENEMY_Bloodscalp Shamans|r to spawn|r
.complete 26742,1 
.mob Bloodscalp Shaman
step
#optional
#completewith MurkgillMurlocs
.subzone 125 >> Travel to Kal'ai Ruins
step
#optional
#completewith MurkgillMurlocs
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
.complete 195,1 
.mob *Lashtail Raptor
step
#loop
#label MurkgillMurlocs
.goto 50,41.612,38.351,0
.goto 50,40.786,34.903,70,0
.goto 50,41.142,39.487,70,0
.goto 50,43.378,42.607,70,0
>>Kill |cRXP_ENEMY_Murkgill Murlocs|r. Loot them for their |cRXP_LOOT_Sea Salt|r
.complete 26730,1
.mob Murkgill Hunter
.mob Murkgill Warrior
.mob Murkgill Forager
.mob Murkgill Oracle
.mob Murkgill Coldbringer
step
#completewith next
.cast 82269 >> |cRXP_WARN_Use|r |T348536:0|t[Emerine's Telling-Sphere] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Emerine|r
.use 60273
step
.use 60273 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emerine Junis|r
.turnin 26730 >>Turn in You Can Take the Murloc Out of the Ocean...
.accept 26731 >>Accept The Altar of Naias
.target Emerine Junis
.itemcount 60273,1
step
#loop
.goto 50,41.152,45.584,0
.goto 50,45.913,43.634,0
.goto 50,48.358,47.810,0
.goto 50,36.462,42.898,0
.goto 50,41.152,45.584,70,0
.goto 50,45.913,43.634,70,0
.goto 50,45.771,46.446,70,0
.goto 50,48.358,47.810,70,0
.goto 50,36.462,42.898,70,0
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
.complete 195,1 
.mob Lashtail Raptor
step
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 195 >>Turn in Raptor Stalking
.accept 196 >>Accept Raptor Prowess
step
#loop
.goto 50,50.508,50.096,0
.goto 50,47.640,56.212,0
.goto 50,50.508,50.096,70,0
.goto 50,47.640,56.212,70,0
>>Kill |cRXP_ENEMY_Elder Snapjaw Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.mob Elder Snapjaw Crocolisk
.complete 26345,1 
step
#completewith next
#optional
>>Kill |cRXP_ENEMY_Jungle Stalkers|r
.complete 196,1 
.mob Jungle Stalker
step
#completewith next
.goto 50,48.510,56.343,10,0
.goto 50,49.722,57.254,10,0
.goto 50,50.194,58.969,10,0
.goto 50,51.119,55.902,10,0
.goto 50,48.510,56.343,0
.goto 50,49.722,57.254,0
.goto 50,50.194,58.969,0
.goto 50,51.119,55.902,0
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
>>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are stealthed near trees|r
>>|cRXP_WARN_Don't go out of your way to complete this, you'll have another chance to do it later|r
.mob Shadowmaw Panther
.complete 192,1
.subzoneskip 128
.subzoneskip 127
.subzoneskip 5320
step
.goto 50,53.375,66.295
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wulfred Harrys|r
.target Wulfred Harrys
.accept 26782 >>Accept The Mosh'Ogg Bounty
step
.goto 50,53.209,66.931
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Livingston Marshal|r
.target Livingston Marshal
.accept 26781 >>Accept The Mind's Eye
step
.goto 50,53.210,66.914
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Livingston Marshal|r
.target Livingston Marshal
.home >>Set your Hearthstone to Fort Livingston
step
.goto 50,52.640,66.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Robert Rhodes|r
.fp Fort Livingston >>Get the Fort Livingston Flight Path
.target Robert Rhodes
step
.goto 50,63.530,55.622,0
.goto 50,63.497,59.625,0
.goto 50,64.848,62.780,0
.goto 50,60.275,63.723,0
.goto 50,59.548,59.619,0
.goto 50,60.275,63.723,70,0
.goto 50,59.548,59.619,70,0
.goto 50,62.737,58.075,70,0
.goto 50,63.530,55.622,70,0
.goto 50,63.497,59.625,70,0
.goto 50,64.848,62.780,70,0
>>Kill |cRXP_ENEMY_Jungle Stalkers|r
>>|cRXP_WARN_Do NOT kill |cRXP_ENEMY_Tethis|r, you'll need him for a quest soon after this|r
.complete 196,1 
.mob Jungle Stalker
step
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 196 >>Turn in Raptor Stalking
.accept 197 >>Turn in Raptor Mastery
step
.goto 50,63.530,55.622,0
.goto 50,63.497,59.625,0
.goto 50,64.848,62.780,0
.goto 50,60.275,63.723,0
.goto 50,59.548,59.619,0
.goto 50,63.530,55.622,70,0
.goto 50,63.497,59.625,70,0
.goto 50,64.848,62.780,70,0
.goto 50,60.275,63.723,70,0
.goto 50,59.548,59.619,70,0
.goto 50,62.737,58.075,70,0
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_ENEMY_Tethis|r |cRXP_WARN_may patrol slightly|r
.unitscan Tethis
.complete 197,1
step
.goto 50,67.217,54.154
>>Loot the |cRXP_LOOT_Mosh'Ogg Bounty|r on top of the stone slab
.complete 26782,1 
step
#completewith next
.goto 50,66.962,49.106,20 >> Enter the Mosh'Ogg Ogre cave
step
.goto 50,70.775,48.486
>>Kill |cRXP_ENEMY_Mai'Zoth|r. Loot him for the |cRXP_LOOT_Mind's Eye|r
.complete 26781,1 
.mob Mai'Zoth
step
#completewith next
.goto 50,66.962,49.106,20 >> Exit the Mosh'Ogg Ogre cave
step
#loop
.goto 50,60.710,50.226,10,0
.goto 50,59.102,47.184,10,0
.goto 50,60.163,46.465,10,0
.goto 50,60.824,47.160,10,0
.goto 50,62.460,48.023,10,0
.goto 50,65.988,38.024,10,0
.goto 50,65.074,36.329,10,0
.goto 50,63.372,36.749,10,0
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
>>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are stealthed near trees|r
.mob Shadowmaw Panther
.complete 192,1
step
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r
.turnin 192 >>Turn in Panther Prowess
.accept 193 >>Accept Panther Mastery
step
#loop
.goto 50,61.469,49.907,20,0
.goto 50,61.469,49.907,0
.goto 50,66.066,43.566,20,0
.goto 50,66.066,43.566,0
.goto 50,64.0,36.4,0
.goto 50,64.0,36.4,20,0
>>Kill |cRXP_ENEMY_Bhag'thera|r. Loot it for the |cRXP_LOOT_Fang of Bhag'thera|r
>>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_has 3 spawn locations|r
.complete 193,1
.unitscan Bhag'thera
step
#completewith next
.goto 50,49.44,14.20,30,0
.goto 50,47.74,12.69,30,0
.goto 50,47.57,10.25,40 >> Travel to the Rebel Camp
.subzoneskip 99
step
.goto 50,46.989,10.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.target Corporal Sethman
.turnin 26744 >>Turn in Deep Roots
step
.goto 50,47.096,10.772
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.target Corporal Kaleb
.turnin 26765 >>Turn in Return to Corporal Kaleb
step
.goto 50,47.182,10.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r
.target Osborn Obnoticus
.turnin 26745 >>Turn in Favored Skull
step
.goto 50,47.182,10.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r
.target Osborn Obnoticus
.accept 26746 >>Accept A Nose for This Sort of Thing
.maxlevel 32
step
.goto 50,47.98,12.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berrin|r
>>|cRXP_WARN_If he isn't here, either relog, or zone into Duskwood and come back|r
.turnin 26742 >>Turn in Bloodscalp Insight
.target Berrin Burnquill
step
.goto 50,47.98,12.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berrin|r
>>|cRXP_WARN_If he isn't here, either relog, or zone into Duskwood and come back|r
.accept 26743 >>Accept Sacred to the Bloodscalp
.target Berrin Burnquill
.maxlevel 32
step
#optional
.isQuestComplete 26269
.goto 50,44.227,22.179
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.target Barnil Stonepot
.turnin 26269 >>Turn in The Green Hills of Stranglethorn
step
.goto 50,44.494,22.668
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.target Ajeck Rouack
.turnin 188 >>Turn in Tiger Mastery
step
.goto 50,43.844,22.397
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.target Sir S. J. Erlgadin
.turnin 193 >>Turn in Panther Mastery
step
.goto 50,44.052,23.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
.target Hemet Nesingwary Jr.
.turnin 197 >>Turn in Raptor Mastery
.accept 208 >>Accept Big Game Hunter
step
.goto 50,43.650,23.349
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.target Drizzlik
.turnin 26345 >>Turn in Excelsior
step
#optional
.maxlevel 32,FortLivingstonTurnins
step
#completewith next
.cast 79648 >>|cRXP_WARN_Use the|r |T132835:0|t[Lashtail Raptor Egg Fragment] |cRXP_WARN_to summon the|r |cRXP_FRIENDLY_Lashtail Hatchling|r
.use 58165
step
.goto 50,37.027,24.605,40,0
.goto 50,41.141,30.733,40,0
.goto 50,37.027,24.605,0
.goto 50,41.141,30.733,0
>>Kill |cRXP_ENEMY_Bloodscap Scavengers|r. Loot them for their |cRXP_LOOT_Icons|r
.use 58165 >>|cRXP_WARN_The |cRXP_FRIENDLY_Lashtail Hatchling|r will dig up |cRXP_LOOT_Tkashi Fetishes|r as you run around|r
.complete 26746,1
.complete 26743,1
.complete 26743,2
.complete 26743,3
.mob Bloodscalp Scavenger
.target Lashtail Hatchling
step
#completewith next
.goto 50,49.44,14.20,30,0
.goto 50,47.74,12.69,30,0
.goto 50,47.25,11.10,40 >> Return to the Rebel Camp
.subzoneskip 99
step
.goto 50,47.144,10.564
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r
.target Osborn Obnoticus
.turnin 26746 >>Turn in A Nose for This Sort of Thing
.accept 26747 >>Accept A Physical Specimen
step
.goto 50,47.98,12.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berrin|r
>>|cRXP_WARN_If he isn't here, either relog, or zone into Duskwood and come back|r
.turnin 26743 >>Turn in Sacred to the Bloodscalp
.target Berrin Burnquill
step
.goto 50,47.540,10.743
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.target Sergeant Yohwa
.accept 26751 >>Accept Population Con-Troll
step
.goto 50,24.805,18.225
>>Kill |cRXP_ENEMY_Gan'zulah|r. Loot him for his |cRXP_LOOT_Body|r
.complete 26747,1 
.mob Gan'zulah
step
#loop
.goto 50,26.740,20.344,30,0
.goto 50,28.193,20.118,30,0
.goto 50,27.758,25.719,30,0
.goto 50,25.678,25.971,30,0
.goto 50,26.722,23.136,30,0
.goto 50,24.942,22.265,30,0
.goto 50,26.510,20.633,30,0
.goto 50,26.884,23.144,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r
.complete 26751,1 
.mob +Bloodscalp Mystic
.complete 26751,2 
.mob +Bloodscalp Scout
.complete 26751,3
.mob +Bloodscalp Hunter
.complete 26751,4 
.mob +Bloodscalp Beastmaster
step
#completewith Naias
.goto 50,19.138,40.750,50 >> Travel to the |cRXP_ENEMY_Water Elemental|r island
step
#completewith next
.goto 50,19.138,40.750
.cast 30015 >> |cRXP_WARN_Use the|r |T136019:0|t[Gift of Naias] |cRXP_WARN_at the|r |cRXP_PICK_Altar of Naias|r
.use 23680
step
#label Naias
.goto 50,19.138,40.750
.use 23680 >>Kill |cRXP_ENEMY_Naias|r. Loot him for his |cRXP_LOOT_Heart|r
.complete 26731,1
.mob Naias
step
#label FortLivingstonTurnins
.isOnQuest 26781,26782,26731
.hs >> Hearthstone to Fort Livingston
.cooldown item,6948,>2
step
.goto 50,53.220,66.890
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Livingston Marshal|r
.target Livingston Marshal
.turnin 26781 >>Turn in The Mind's Eye
step
.goto 50,53.348,66.323
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wulfred Harrys|r
.target Wulfred Harrys
.turnin 26782 >>Turn in The Mosh'Ogg Bounty
step
.isQuestComplete 26731
#completewith next
.cast 82269 >> |cRXP_WARN_Use|r |T348536:0|t[Emerine's Telling-Sphere] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Emerine|r
.use 60273
step
.isQuestComplete 26731
.use 60273 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emerine Junis|r
.turnin 26731 >>Turn in The Altar of Naias
.target Emerine Junis
.itemcount 60273,1
step
#sticky
#optional
.abandon 26731 >> Abandon The Altar of Naias
step
.goto 50,51.314,58.695,20,0
.goto 50,47.229,59.038,20,0
.goto 50,45.61,59.05,20,0
.goto 50,47.229,59.038,20,0
>>Kill |cRXP_ENEMY_King Bangalash|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_King Bangalash|r |cRXP_WARN_patrols slightly and will call for the aid of two |cRXP_ENEMY_Jungle Panthers|r during the fight|r
.complete 208,1
.mob King Bangalash
step
#optional
.maxlevel 32,BangalashTurnin
step
#completewith next
.goto 50,52.635,66.090
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Robert Rhodes|r
.target Robert Rhodes
.fly Rebel Camp >> Fly to Rebel Camp
.subzoneskip 99
step
.goto 50,47.536,10.779
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.target Sergeant Yohwa
.turnin 26751 >>Turn in Population Con-Troll
step
.goto 50,47.173,10.586
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r
.target Osborn Obnoticus
.turnin 26747 >>Turn in A Physical Specimen
step
.goto 50,47.173,10.586
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodlord Mandokir|r
.target Bloodlord Mandokir
.accept 26748 >>Accept Bloodlord Mandokir
.turnin 26748 >>Turn in Bloodlord Mandokir
step
.goto 50,47.173,10.586
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r
.target Osborn Obnoticus
.accept 26749 >>Accept Priestess Thaalia
step
#completewith next
.subzone 100 >> Travel to Nesingwary's Expedition
step
#label BangalashTurnin
.goto 50,44.218,22.974
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
.target Hemet Nesingwary Jr.
.turnin 208 >>Turn in Big Game Hunter
step
#optional
.isQuestComplete 26269
.goto 50,44.227,22.179
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.target Barnil Stonepot
.turnin 26269 >>Turn in The Green Hills of Stranglethorn
step
#sticky
#optional
.abandon 26269 >> The Green Hills of Stranglethorn
step
#completewith endOfTheGuide
.goto 50,47.860,11.857
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James|r
.fly Fort Livingston >>Fly to Fort Livingston
.target James Stillair
step
#optional
.maxlevel 32,endOfTheGuide
step
.goto 50,53.433,66.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
.target Priestess Thaalia
.turnin 26749 >>Turn in Priestess Thaalia
.accept 26772 >>Accept Mind Vision
step
.goto 50,63.530,55.622,0
.goto 50,63.497,59.625,0
.goto 50,64.848,62.780,0
.goto 50,60.275,63.723,0
.goto 50,59.548,59.619,0
.goto 50,60.275,63.723,70,0
.goto 50,59.548,59.619,70,0
.goto 50,62.737,58.075,70,0
.goto 50,63.530,55.622,70,0
.goto 50,63.497,59.625,70,0
.goto 50,64.848,62.780,70,0
>>Kill |cRXP_ENEMY_Jungle Stalkers|r. Loot them for their |cRXP_LOOT_Feathers|r
.complete 26772,1
.mob Jungle Stalker
step
.goto 50,53.448,66.749
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
.target Priestess Thaalia
.turnin 26772 >>Turn in Mind Vision
.accept 26773 >>Accept See Raptor
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r to start the cutscene.
>>Wait it out until it completes
.complete 26773,1
.skipgossip 44017,1

step
.goto 50,53.443,66.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
.target Priestess Thaalia
.turnin 26773 >>Turn in See Raptor
.accept 26774 >>Accept Mind Control
step
.goto 50,53.071,66.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kinnel|r
.target Kinnel
.accept 26780 >>Accept Nighttime in the Jungle
step
.goto 50,52.670,66.822
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghaliri|r
.target Ghaliri
.accept 26779 >>Accept Zul'Mamwe Mambo
step
#loop
#sticky
#label sstrolls
#loop
.goto 50,60.257,71.922,0
.waypoint 50,57.071,67.367,35,0
.waypoint 50,58.198,73.281,35,0
.waypoint 50,60.257,71.922,35,0
.waypoint 50,61.496,71.118,30,0
.waypoint 50,62.508,73.982,30,0
.waypoint 50,62.491,67.004,30,0
.waypoint 50,60.455,66.425,30,0
>>Click the |cRXP_PICK_Zul'Mamwe Braziers|r around Ruins
>>Kill |cRXP_ENEMY_Skullsplitter Trolls|r
.complete 26780,1
.complete 26779,1
.mob +Skullsplitter Hunter
.mob +Skullsplitter Headhunter
.mob +Skullsplitter Beastmaster
.mob +Skullsplitter Troll
.mob +Skullsplitter Witch Doctor
.mob +Skullsplitter Scout
.mob +Skullsplitter Spiritchaser
.mob +Skullsplitter Berserker
step
.goto 50,63.175,74.331
>>Kill |cRXP_ENEMY_Braddok|r. Loot him for his |cRXP_LOOT_Big Brain|r
.complete 26774,1 
.unitscan Braddok
step
#requires sstrolls
.goto 50,53.243,66.547
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kinnel|r
.target Kinnel
.turnin 26780 >>Turn in Nighttime in the Jungle
step
.goto 50,53.441,66.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
.target Priestess Thaalia
.turnin 26774 >>Turn in Mind Control
.accept 26775 >>Accept Be Raptor
step
.goto 50,53.441,66.735
#completewith next
.vehicle >> Speak with |cRXP_FRIENDLY_Priestess Thaalia|r to take control of the |cRXP_FRIENDLY_Hatchling|r
.skipgossip 44017,1
.subzoneskip 19
step
.goto 50,89.078,46.321
>>|cRXP_WARN_Avoid the |cRXP_ENEMY_Troll|r patrols and speak with the |cRXP_FRIENDLY_Tan'shang|r at the exit|r
>>|cRXP_WARN_Cast|r |T132120:0|t[Dash] (1) |cRXP_WARN_to increase your movement speed by 60% for 5 seconds|r
.complete 26775,1 
.skipgossip 42881,1
.target Tan'shang
step
.goto 50,89.963,48.501
>>|cRXP_WARN_Enter the troll hut and click the sleeping |cRXP_ENEMY_Gurubashi Soldier|r to steal the|r |cRXP_LOOT_Raptor Food Pouch|r
.collect 58249,1,26775,2,4
.mob Gurubashi Soldier
step
.goto 50,86.888,44.571
>>Give the |cRXP_LOOT_Raptor Food Pouch|r you stole to |cRXP_FRIENDLY_Tenjiyu|r
.complete 26775,2 
.skipgossip 42882,1
.target Tenjiyu
step
.goto 50,82.767,37.526
>>|cRXP_WARN_Click on the |cRXP_PICK_Gurubashi Braziers|r to charge your|r |T135805:0|t[Light Tiki Fire] (3) |cRXP_WARN_ability, then use it on the |cRXP_PICK_Zul'Gurub Tikis|r to distract the guards on your way to|r |cRXP_FRIENDLY_Chiyu|r
.complete 26775,3 
.skipgossip 42883,1
.target Chiyu
step
.goto 50,73.853,32.889
>>|cRXP_WARN_Click on the|r |cRXP_PICK_Gaint Skullpiles|r |cRXP_WARN_to charge your|r |T133731:0|t[Drop Skull] (4) |cRXP_WARN_ability|r
>>|cRXP_WARN_Use the|r |T133731:0|t[Drop Skull] (4) |cRXP_WARN_to place it on the ground where a |cRXP_ENEMY_Troll Guard|r is patrolling. Once the |cRXP_ENEMY_Troll Guard|r patrols into it, it will flee|r
>>|cRXP_WARN_If you become netted cast|r |T134325:0|t[Eat Through Net] (2)
.complete 26775,4 
step
.goto 50,53.408,66.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
.target Priestess Thaalia
.turnin 26775 >>Turn in Be Raptor
.accept 26776 >>Accept Ghaliri
step
.goto 50,53.408,66.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
.target Priestess Thaalia
.turnin 26775 >>Turn in Be Raptor
.accept 26776 >>Accept Ghaliri
step
.goto 50,52.688,66.828
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghaliri|r
.target Ghaliri
.turnin -26776 >>Turn in Ghaliri
.turnin 26779 >>Turn in Zul'Mamwe Mambo
step
#label endOfTheGuide
.goto 50,53.365,66.311
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wulfred Harrys|r
.target Wulfred Harrys
.accept 26805 >>Accept To the Cape!
step
#label end
.goto 50,52.640,66.096
.gossip 43042,0 >> Talk to |cRXP_FRIENDLY_Robert Rhodes|r to fly to the Explorers' League Digsite
.skipgossip 43042,2
.timer 44,Cape of Stranglethorn Flight Time
.target Robert Rhodes
]]);

RXPGuides.RegisterGuide([[
#version 9
#group RXP MoP 1-80 (A)
#cata
#mop
#name 30-35 Southern Stranglethorn
#displayname 31-35 Southern Stranglethorn
#next 35-40 Western Plaguelands
<< Alliance
step
#optional
.isOnQuest 26805
.goto 210,55.247,42.458
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
.turnin 26805 >>Turn in To the Cape!
.target Bronwyn Hewstrike
.xp <35,1
step
#optional
.maxlevel 34,endOfTheGuide
step
#sticky
#label sltiherdogs
.goto 210,54.808,42.406,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goris|r
>>|cRXP_FRIENDLY_Goris|r |cRXP_WARN_patrols the League Digsite slightly|r
.accept 26822 >>Accept Good-Fer-Nothin' Slither-Dogs
.target Goris
step
.isOnQuest 26805
.goto 210,55.247,42.458
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
.target Bronwyn Hewstrike
.turnin 26805 >>Turn in To the Cape!
step
.goto 210,55.247,42.458
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
.target Bronwyn Hewstrike
.accept 26825 >>Accept Dask "The Flask" Gobfizzle
.disablecheckbox
.questcount <1,26825,26826
.zoneskip 210,1
step
.isOnQuest 26825
.goto 210,55.302,41.931
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
.target Dask "The Flask" Gobfizzle
.turnin 26825 >>Turn in Dask "The Flask" Gobfizzle
.accept 26823 >>Accept Too Big For His Britches
step
.isOnQuest 26826
.goto 210,55.302,41.931
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
.target Dask "The Flask" Gobfizzle
.turnin 26826 >>Turn in Dask "The Flask" Gobfizzle
.accept 26823 >>Accept Too Big For His Britches
step
.isQuestTurnedIn 26825,26826
.goto 210,55.302,41.931
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
.target Dask "The Flask" Gobfizzle
.accept 26823 >>Accept Too Big For His Britches
step
.goto 210,54.755,42.403,10,0
.goto 210,55.049,42.286
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goris|r
>>|cRXP_FRIENDLY_Goris|r |cRXP_WARN_patrols the League Digsite slightly|r
.accept 26822 >>Accept Good-Fer-Nothin' Slither-Dogs
.target Goris
step
.goto 210,55.742,41.221
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Swifthammer|r
.fp Explorers' League Digsite >> Get the Explorers' League Digsite flight path
.target Colin Swifthammer
step
#requires sltiherdogs
#completewith ironjaw
.goto 210,51.747,35.665,35,0
.goto 210,54.953,27.745,35,0
.goto 210,64.890,29.693,35,0
.goto 210,63.17,29.91,70,0
.goto 210,65.39,29.39,50 >> Enter the Crystal Vein Mine
step
#requires sltiherdogs
#sticky
#loop
#label basilisks
.waypoint 210,61.027,29.644,70,0
.waypoint 210,65.635,29.132,70,0
.waypoint 210,68.501,26.484,70,0
.waypoint 210,67.490,22.618,70,0
.waypoint 210,64.858,24.416,70,0
.waypoint 210,65.402,29.272,70,0
.goto 210,67.346,26.425,0
.goto 210,61.254,30.435,0
>>Kill |cRXP_ENEMY_Thrashtail Basilisks|r, |cRXP_ENEMY_Ironjaw Basilisk|r and |cRXP_ENEMY_Stranglethorn Basilisk|r
.complete 26822,1 
.mob Thrashtail Basilisk
.mob Ironjaw Basilisk
.mob Stranglethorn Basilisk
step
#label ironjaw
#requires sltiherdogs
#loop
.goto 210,65.13,24.26
>>Kill the |cRXP_ENEMY_Ironjaw Behemoth|r. Loot it for the |cRXP_LOOT_Ironjaw Humour|r
.complete 26823,1 
.mob Ironjaw Behemoth
step
#completewith next
#requires basilisks
.goto 210,53.24,28.17,70,0
.goto 210,51.77,35.95,55,0
.goto 210,54.40,38.46,70 >> Return to the League Digsite
step
#requires basilisks
.goto 210,55.049,42.286,10,0
.goto 210,54.755,42.403
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goris|r
>>|cRXP_FRIENDLY_Goris|r |cRXP_WARN_patrols the League Digsite slightly|r
.target Goris
.turnin 26822 >>Turn in Good-Fer-Nothin' Slither-Dogs
step
.goto 210,55.307,41.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
.target Dask "The Flask" Gobfizzle
.turnin 26823 >>Turn in Too Big For His Britches
.accept 26817 >>Accept Perfectly Pure
step
#optional
.maxlevel 34,endOfTheGuide
step
.goto 210,55.411,42.216
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linzi Hewstrike|r
.target Linzi Hewstrike
.accept 26818 >>Accept Plush Pelts
.accept 26819 >>Accept Akiris by the Bundle
.accept 26820 >>Accept If They're Just Going to Leave Them Lying Around...
step
#completewith PureWater
.goto 210,44.39,42.33,50,0
.goto 210,41.05,44.16,70 >> Head east towards the coast
step
#completewith PureWater
>>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reeds|r
.complete 26819,1
.mob Naga Explorer
step
#completewith PureWater
>>Loot the |cRXP_LOOT_Naga Icons|r on the ground
.complete 26820,1
step
#label PureWater
.goto 210,41.32,50.68,30,0
.goto 210,43.983,48.882
>>Loot |cRXP_PICK_The Holy Spring|r for the |cRXP_LOOT_Pure Water|r
.complete 26817,1
step
#completewith next
>>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reeds|r
.complete 26819,1
.mob Naga Explorer
step
#loop
.goto 210,42.62,52.79,60,0
.goto 210,40.80,50.32,60,0
.goto 210,40.18,45.15,60,0
.goto 210,38.15,45.56,60,0
.goto 210,38.35,51.69,60,0
>>Loot the |cRXP_LOOT_Naga Icons|r on the ground
.complete 26820,1
step
#loop
.goto 210,42.62,52.79,60,0
.goto 210,40.80,50.32,60,0
.goto 210,40.18,45.15,60,0
.goto 210,38.15,45.56,60,0
.goto 210,38.35,51.69,60,0
>>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reeds|r
.complete 26819,1
.mob Naga Explorer
step
#completewith next
.goto 210,44.514,66.591,20 >> Travel to Booty Bay
step
.goto 210,40.315,67.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.target Captain Hecklebury Smotts
.accept 26599 >>Accept The Captain's Chest
step
.goto 210,41.816,72.855
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.target Fin Fizracket
.accept 26597 >>Accept Stranglethorn Fever
step
.goto 210,42.055,73.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.target "Sea Wolf" MacKinley
.accept 26593 >>Accept Scaring Shaky
step
.isOnQuest 26593,26597,26599
.goto 210,40.880,73.786
.target Innkeeper Skindle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r downstairs
.home 8615>>Set your Hearthstone to Booty Bay
step
.goto 210,41.667,74.544
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.fp Booty Bay>> Get the Booty Bay flight path
.target Gyll
step
#label bottle
#completewith mokk
.waypoint 210,53.327,66.656,25,0
.waypoint 210,55.481,62.990,25,0
.waypoint 210,57.115,59.323,25,0
.waypoint 210,56.976,53.976,25,0
.waypoint 210,57.086,54.462,25,0
.goto 210,56.292,61.480,0
.line 210,53.327,66.656,55.481,62.990,57.115,59.323,56.976,53.976,57.086,54.462
>>Travel north along the coast and look for a |cRXP_PICK_Half-Buried Bottle|r on the ground
>>Don't go out of your way to find it, you'll have another chance to get this later
.accept 26603 >>Accept Message in a Bottle
.subzoneskip 1737
step
#loop
.goto 210,52.461,69.042,0
.goto 210,55.608,63.157,0
.goto 210,52.461,69.042,50,0
.goto 210,55.608,63.157,50,0
>>Kill |cRXP_ENEMY_Gorlash|r. Loot him for |cRXP_LOOT_Smotts' Chest|r
>>|cRXP_ENEMY_Gorlash|r |cRXP_WARN_patrols the coast|r
.mob Gorlash
.complete 26599,1 
step
#requires bottle
#sticky
#label giblets
#loop
.goto 210,50.678,54.725,0
.waypoint 210,53.022,53.320,60,0
.waypoint 210,48.199,57.792,60,0
.waypoint 210,51.358,50.924,60,0
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Mistvale Giblets|r
.mob Elder Mistvale Gorilla
.complete 26593,1
step
#loop
.goto 210,50.678,54.725,0
.goto 210,53.022,53.320,60,0
.goto 210,48.199,57.792,60,0
.goto 210,51.358,50.924,60,0
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for a |cRXP_LOOT_Gorilla Fang|r
.mob Elder Mistvale Gorilla
.collect 2799,1,26597,1
step
#completewith next
.goto 210,54.186,46.438
.dailyturnin 26598 >> Speak with |cRXP_FRIENDLY_Witch Doctor Unbagwa|r to summon |cRXP_ENEMY_Mokk the Savage|r
.target Witch Doctor Unbagwa
step
#label mokk
.goto 210,53.260,48.819
>>|cRXP_WARN_Once you start the event, you'll have to fight through 3 waves of|r |cRXP_ENEMY_Gorillas|r
>>Kill |cRXP_ENEMY_Mokk the Savage|r. Loot him for the |cRXP_LOOT_Heart of Mokk|r
.complete 26597,1
.unitscan Mokk the Savage
step
#requires giblets
.goto 210,55.407,42.195
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linzi Hewstrike|r
.target Linzi Hewstrike
.turnin 26819 >>Turn in Akiris by the Bundle
.accept 26808 >>Accept Maywiki
.turnin 26820 >>Turn in If They're Just Going to Leave Them Lying Around...
step
.goto 210,55.287,41.928
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
.target Dask "The Flask" Gobfizzle
.turnin 26817 >>Turn in Perfectly Pure
.accept 26815 >>Accept Zanzil's Secret
step
.goto 210,55.654,42.234
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki|r behind the boxes
.target Maywiki
.turnin 26808 >>Turn in Maywiki
.accept 26809 >>Accept Backdoor Dealings
step
#completewith next
>>Kill the |cRXP_ENEMY_Zanzils.|r. Loot them for their |cRXP_LOOT_Zanzil's Mixture|r
.complete 26815,1
.mob Zanzil Mindslave
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
.mob Zanzil Witch Doctor
step
.goto 210,54.231,31.422
>>Click on the |cRXP_PICK_Totem of Hir'eek|r
.complete 26809,1 
.timer 78,Backdoor Dealings RP
.skipgossip
step
>>|cRXP_WARN_Wait out the RP|r
.complete 26809,2 
step
#loop
.goto 210,53.483,31.831,0
.goto 210,49.371,33.860,0
.waypoint 210,53.483,31.831,40,0
.waypoint 210,49.371,33.860,40,0
>>Kill the |cRXP_ENEMY_Zanzils.|r. Loot them for their |cRXP_LOOT_Zanzil's Mixture|r
.complete 26815,1
.mob Zanzil Mindslave
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
.mob Zanzil Witch Doctor
step
#requires zanzil
.goto 210,55.653,42.220
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki|r
.target Maywiki
.turnin 26809 >>Turn in Backdoor Dealings
.accept 26810 >>Accept Eliminate the Outcast
step
.goto 210,55.318,41.924
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
.target Dask "The Flask" Gobfizzle
.turnin 26815 >>Turn in Zanzil's Secret
.accept 26816 >>Accept Recipe for Disaster
.accept 26824 >>Accept Results: Inconclusive
step
.goto 210,55.248,42.480
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
.target Bronwyn Hewstrike
.turnin 26824 >>Turn in Results: Inconclusive
.accept 26821 >>Accept Airwyn Bantamflax
step
#loop
.goto 210,42.621,25.546,0
.goto 210,42.475,18.843,0
.goto 210,49.528,10.467,0
.goto 210,42.621,25.546,40,0
.goto 210,46.192,19.184,40,0
.goto 210,48.970,18.793,40,0
.goto 210,51.375,13.037,40,0
.goto 210,49.528,10.467,40,0
.goto 210,45.504,18.639,40,0
.goto 210,42.475,18.843,40,0
>>Kill |cRXP_ENEMY_Elder Shadowmaw Panthers|r and |cRXP_ENEMY_Stranglethorn Tigresses|r. Loot them for their |cRXP_LOOT_Fur|r
>>|cRXP_WARN_The|r |cRXP_ENEMY_Elder Shadowmaw Panthers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
.complete 26818,2 
.mob +Elder Shadowmaw Panther
.complete 26818,1
.mob +Stranglethorn Tigress
step
#optional
.isQuestComplete 26818
.goto 210,55.407,42.195
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linzi Hewstrike|r
.target Linzi Hewstrike
.turnin 26818 >>Turn in Plush Pelts
.xp <35,1
step
#completewith next
.hs >>Hearth to Booty Bay
step
.goto 210,41.828,72.852
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.target Fin Fizracket
.turnin 26597 >>Turn in Stranglethorn Fever
step
.goto 210,40.523,67.736
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
.target "Shaky" Phillipe
.turnin 26593 >>Turn in Scaring Shaky
.accept 26594 >>Accept Return to MacKinley
step
.goto 210,40.307,67.811
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.target Captain Hecklebury Smotts
.turnin 26599 >>Turn in The Captain's Chest
.accept 26600 >>Accept A Giant's Feast
step
.goto 210,42.797,68.972
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Yance|r
>>|cRXP_BUY_Buy a|r |T236995:0|t[Crate of Grade-E Meat] |cRXP_BUY_from him|r
>>|cRXP_FRIENDLY_Kelsey Yance|r |cRXP_WARN_is on the lower level|r
.complete 26600,1 
.target Kelsey Yance
step
.goto 210,42.047,73.407
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.target "Sea Wolf" MacKinley
.turnin 26594 >>Turn in Return to MacKinley
step
.goto 210,42.047,73.407
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.target "Sea Wolf" MacKinley
.accept 26595 >>Accept Kill-Collect
.maxlevel 34
step
.goto 210,42.445,73.203
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Airwyn Bantamflax|r
.target Airwyn Bantamflax
.turnin 26821 >>Turn in Airwyn Bantamflax
step
.goto 210,41.028,74.009
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
>>|cRXP_BUY_Buy a|r |T236996:0|t[Crate of Pupellyverbos Port] |cRXP_BUY_from him|r
.complete 26600,2 
.target Whiskey Slim
step
.goto 210,40.330,67.784
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.target Captain Hecklebury Smotts
.turnin 26600 >>Turn in A Giant's Feast
step
.goto 210,40.330,67.784
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.target Captain Hecklebury Smotts
.accept 26602 >>Accept A Dish Best Served Huge
.maxlevel 34
step
#optional
.maxlevel 34,endOfTheGuide

step
#completewith next
.goto 210,45.591,65.907,20 >> Leave Booty Bay
.subzoneskip 1577
.subzoneskip 43
step
.goto 210,49.686,81.283
>>Click the |cRXP_PICK_Ruined Lifeboat|r to summon |cRXP_ENEMY_Negolash|r
>>|cRXP_ENEMY_Negolash|r |cRXP_WARN_will appear in the water|r
.mob Negolash
.complete 26602,1
.skipgossip
step
#completewith ClubFoot
>>Travel north along the coast and look for a |cRXP_PICK_Half-Buried Bottle|r on the ground
.accept 26603 >>Accept Message in a Bottle
step
#loop
.goto 210,56.64,57.60,20,0
.goto 210,56.715,53.739,20,0
>>Kill |cRXP_ENEMY_Freewheelin' Juntz Fitztittle|r. Loot him for his |cRXP_LOOT_Torque Wrench|r
>>|cRXP_ENEMY_Freewheelin' Juntz Fitztittle|r |cRXP_WARN_may patrol up and down the shoreline|r
.complete 26595,2 
.mob Freewheelin' Juntz Fitztittle
step
.goto 210,54.530,51.510,0
.goto 210,54.530,51.510,40,0
.goto 210,57.947,49.395
>>Kill |cRXP_ENEMY_Ephram "Midriff" Moonfall|r. Loot him for his |cRXP_LOOT_Mirror|r
>>|cRXP_ENEMY_Ephram "Midriff" Moonfall|r |cRXP_WARN_may patrol slightly|r
>>|cRXP_WARN_You may need to talk to him if he is not hostile|r
.complete 26595,3 
.mob Ephram "Midriff" Moonfall
.skipgossip
step
#label ClubFoot
.goto 210,59.544,49.297
>>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r. Loot him for his |cRXP_LOOT_Clubbed Foot|r
.complete 26595,1 
.mob Maury "Club Foot" Wilkins
step
#loop
.goto 210,62.395,46.790,0
.goto 210,57.016,54.510,0
.goto 210,54.262,65.398,0
.goto 210,50.213,76.038,0
.waypoint 210,62.395,46.790,10,0
.waypoint 210,57.016,54.510,10,0
.waypoint 210,54.262,65.398,10,0
.waypoint 210,50.213,76.038,10,0
>>Look for a |cRXP_PICK_Half-Buried Bottle|r on the ground
.accept 26603 >>Accept Message in a Bottle
step
#optional
.goto 210,61.263,43.650,0,0
>>|cRXP_WARN_Enter the Ruins of Aboraz to begin the RP|r
.complete 26810,1 
step
#sticky
#label portal2
.goto 210,61.263,43.650,0,0
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r.
.turnin 26810 >>Turn in Eliminate the Outcast
.accept 26811 >>Accept Through the Troll Hole
step
#loop
.goto 210,60.066,40.887,30,0
.goto 210,62.495,43.134,30,0
.goto 210,60.806,43.554,30,0
.goto 210,60.806,43.554,0
>>Kill |cRXP_ENEMY_Zanzil Witch Doctors|r. Loot them for the |cRXP_LOOT_Zanzil's Formulation|r
>>|cRXP_ENEMY_Zanzil Witch Doctors|r |cRXP_WARN_share spawns with other Trolls. You may have to kill them to force |cRXP_ENEMY_Zanzil Witch Doctors|r to spawn|r
.complete 26816,1 
.subzoneskip 19
.mob Zanzil Witch Doctor
step
#requires portal2
.goto 210,61.194,44.281
>>Enter the |cRXP_PICK_Zanzil's Portal|r
.complete 26811,1 
step
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r.
.turnin 26811 >>Turn in Through the Troll Hole
.accept 26812 >>Accept High Priestess Jeklik
step
.goto 50,78.303,43.899
>>Kill |cRXP_ENEMY_High Priestess Jeklik|r
>>|cRXP_WARN_Interrupt any heals cast by|r |cRXP_ENEMY_Zanzil the Outcast|r
.complete 26812,1 
.mob High Priestess Jeklik
.mob Zanzil the Outcast
step
.goto 50,78.303,43.899
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r.
.turnin 26812 >>Turn in High Priestess Jeklik
.accept 26813 >>Accept Plunging Into Zul'Gurub
step
.goto 50,77.909,44.375
>>Enter the |cRXP_PICK_Zanzil's Portal|r
.complete 26813,1 
step
>>|cRXP_WARN_Click the Quest Turnin Pop-Up in your Questlog|r.
.turnin 26813 >>Turn in Plunging Into Zul'Gurub
.accept 26814 >>Accept High Priest Venoxis
step
.goto 50,83.973,36.729
>>Kill |cRXP_ENEMY_High Priest Venoxis|r
>>|cRXP_WARN_Ensure to kill the adds that spawn throughout fight|r
.complete 26814,1 
.mob High Priest Venoxis
.mob Zanzil the Outcast
step
#completewith next
.subzone 5408 >> Once you defeat Venoxis, click on the ladder that spawns to leave Zul'Gurub
.use 60374 >>In case the ladder doesn't spawn use |T134448:0|t[Maywiki's Fetish] to return to camp
.subzoneskip 311
.isOnQuest 26814
.target Rope Ladder
step
.goto 210,55.658,42.190
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki|r
.target Maywiki
.turnin 26814 >>Turn in High Priest Venoxis
step
#loop
.goto 210,60.066,40.887,30,0
.goto 210,62.495,43.134,30,0
.goto 210,60.806,43.554,30,0
.goto 210,60.806,43.554,0
>>Kill and loot |cRXP_ENEMY_Zanzil Witch Doctors|r
>>They share spawns with other mobs in the area, in case you don't find any, you'll have to clear the area
.complete 26816,1 
step
.goto 210,55.407,42.195
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linzi Hewstrike|r
.target Linzi Hewstrike
.turnin 26818 >>Turn in Plush Pelts
step
.goto 210,55.270,41.914
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
.target Dask "The Flask" Gobfizzle
.turnin 26816 >>Turn in Recipe for Disaster
step
#completewith next
.goto 210,55.742,41.221
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Swifthammer|r
.target Colin Swifthammer
.fly Booty Bay >> Fly to Booty Bay
.subzoneskip 35
step
.goto 210,42.079,73.380
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.target "Sea Wolf" MacKinley
.turnin 26595 >>Turn in Kill-Collect
step
.goto 210,42.590,71.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.target First Mate Crazz
.accept 26609 >>Accept The Bloodsail Buccaneers
step
.goto 210,40.321,67.793
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.target Captain Hecklebury Smotts
.turnin 26602 >>Turn in A Dish Best Served Huge
.accept 26601 >>Accept Mok'rash the Cleaver
step
.goto 210,34.887,65.390
>>Swim to the island west and kill |cRXP_ENEMY_Mok'rash|r
.complete 26601,1 
.mob Mok'rash the Cleaver
step
#completewith next
.use 59143 >>Kill |cRXP_ENEMY_"Good-Boy" Bruce|r. Loot him for the |T133799:0|t[|cRXP_LOOT_Weather-Beaten Coin|r]
>>|cRXP_WARN_Use the|r |T133799:0|t[|cRXP_LOOT_Weather-Beaten Coin|r] |cRXP_WARN_to start the quest|r
.mob "Good-Boy" Bruce
.collect 59143,1,26617
.accept 26617 >>Accept An Old Sea Dog
step
.goto 210,41.252,61.176
>>Click the |cRXP_PICK_Bloodsail Correspondence|r on the barrel
.turnin 26609 >>Turn in The Bloodsail Buccaneers
.accept 26610 >>Accept Bloodsail Treachery
step
.goto 210,41.252,61.176
.use 59143 >>Kill |cRXP_ENEMY_"Good-Boy" Bruce|r. Loot him for the |T133799:0|t[|cRXP_LOOT_Weather-Beaten Coin|r]
>>|cRXP_WARN_Use the|r |T133799:0|t[|cRXP_LOOT_Weather-Beaten Coin|r] |cRXP_WARN_to start the quest|r
.mob "Good-Boy" Bruce
.collect 59143,1,26617
.accept 26617 >>Accept An Old Sea Dog
step
#completewith next
.goto 210,44.514,66.591,20 >> Travel to Booty Bay
.subzoneskip 35
step
.goto 210,40.311,67.783
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.target Captain Hecklebury Smotts
.turnin 26601 >>Turn in Mok'rash the Cleaver
step
.goto 210,42.579,72.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.target First Mate Crazz
.turnin 26610 >>Turn in Bloodsail Treachery
.accept 26611 >>Accept The Baron Must Be Told
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r and |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 26617 >>Turn in An Old Sea Dog
.target +Fleet Master Seahorn
.goto 210,41.093,73.284
.turnin 26611 >>Turn in The Baron Must Be Told
.accept 26612 >>Accept Details of the Attack
.target +Baron Revilgaz
.goto 210,41.177,73.060
step
.goto 210,40.677,73.839
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.target Deeg
.accept 26613 >>Accept Up to Snuff
step
.goto 210,43.383,71.519
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.target Dizzy One-Eye
.accept 26614 >>Accept Keep An Eye Out
step
#completewith next
.goto 210,45.260,65.718,30 >> Leave Booty Bay
.subzoneskip 1577
.subzoneskip 43
step
#optional
#completewith pirate1
>>Kill any kind of |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 26613,1
.complete 26614,1
.mob *Bloodsail Elder Magus
.mob *Bloodsail Sea Dog
.mob *Bloodsail Raider
.mob *Bloodsail Mage
.mob *Bloodsail Swabby
.mob *Bloodsail Corsair
.mob *Bloodsail Warlock
.mob *Bloodsail Swashbuckler
.mob *Bloodsail Corsair
.mob *Bloodsail Hooch-Hound
.mob *Bloodsail Deckhand
step
#sticky
#label charts
#loop
.goto 210,44.957,79.625,0
.goto 210,42.023,83.161,0
.goto 210,40.627,82.215,0
.goto 210,41.142,82.530,0
.goto 210,44.957,79.625,15,0
.goto 210,42.023,83.161,15,0
.goto 210,40.627,82.215,15,0
.goto 210,41.142,82.530,15,0
>>Loot the |cRXP_LOOT_Bloodsail Orders|r and |cRXP_LOOT_Bloodsail Charts|r located near the tents or at the small raft
.complete 26612,4 
.complete 26612,3 
step
#loop
.goto 210,40.443,84.155,0
.goto 210,46.253,79.648,0
.goto 210,40.443,84.155,30,0
.goto 210,45.464,79.527,30,0
>>Kill |cRXP_ENEMY_Bloodsail Sea Dogs|r and |cRXP_ENEMY_Bloodsail Elder Magus|r
>>|cRXP_WARN_They share spawns with each other, you may have to clear out the camp if you can't find enough|r
.complete 26612,1
.complete 26612,2
.mob Bloodsail Sea Dog
.mob Bloodsail Elder Magus
step
#optional
#requires charts
#label pirate1
step
>>Kill any kind of |cRXP_ENEMY_Bloodsail|r pirate.
>>If you're having issues getting the eye to drop kill |cRXP_ENEMY_Brutus|r on the eastern most ship
.goto 210,40.755,82.808,0
.goto 210,45.329,79.633,0
.goto 210,40.755,82.808,30,0
.goto 210,45.329,79.633,30,0
.complete 26613,1
.complete 26614,1
.goto 210,50.374,91.478
.mob Brutus
.mob Bloodsail Elder Magus
.mob Bloodsail Sea Dog
.mob Bloodsail Raider
.mob Bloodsail Mage
.mob Bloodsail Swabby
.mob Bloodsail Corsair
.mob Bloodsail Warlock
.mob Bloodsail Swashbuckler
.mob Bloodsail Corsair
.mob Bloodsail Hooch-Hound
.mob Bloodsail Deckhand
step
.goto 210,59.460,79.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.target Princess Poobah
.turnin 26603 >>Turn in Message in a Bottle
.accept 26604 >>Accept Protecting Her Royal Highness Poobah
step
#loop
.goto 210,56.851,86.976,20,0
.goto 210,56.397,82.044,20,0
.goto 210,57.471,77.872,20,0
.goto 210,58.858,77.282,20,0
.goto 210,59.004,84.853,20,0
.goto 210,60.893,88.031,20,0
.goto 210,57.929,82.401,0
>>Kill |cRXP_ENEMY_Jaguero Stalkers|r
.complete 26604,1 
.mob Jaguero Stalker
step
.goto 210,59.459,79.042
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.target Princess Poobah
.turnin 26604 >>Turn in Protecting Her Royal Highness Poobah
.accept 26605 >>Accept Grubby Little Paws
step
#loop
.goto 210,60.852,77.246,30,0
.goto 210,63.174,75.798,30,0
.goto 210,64.472,85.311,30,0
.goto 210,62.871,80.217,0
>>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Tiara|r, |cRXP_LOOT_Poobah's Scepter|r, |cRXP_LOOT_Poobah's Slippers|r and |cRXP_LOOT_Poobah's Diary|r
>>|cRXP_WARN_Avoid killing |cRXP_ENEMY_King Mukla|r you'll have to fight him shortly after this quest|r
.complete 26605,1
.complete 26605,2
.complete 26605,3
.complete 26605,4
.mob Skymane Gorilla
.mob Skymane Bonobo
step
.goto 210,59.455,79.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.target Princess Poobah
.turnin 26605 >>Turn in Grubby Little Paws
.accept 26606 >>Accept Mukla's Demise
step
.goto 210,63.038,84.092
>>Kill |cRXP_ENEMY_King Mukla|r. Loot him for the |cRXP_LOOT_Shackle Key|r
.complete 26606,1 
.mob King Mukla
step
.goto 210,59.462,79.047
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.target Princess Poobah
.turnin 26606 >>Turn in Mukla's Demise
step
#completewith next
.hs >> Hearth to Booty Bay
.subzoneskip 35
step
.goto 210,40.677,73.839
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.target Deeg
.turnin 26613 >>Turn in Up to Snuff
step
#requires charts
.goto 210,41.161,73.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.target Baron Revilgaz
.turnin 26612 >>Turn in Details of the Attack

step
.goto 210,43.383,71.519
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.target Dizzy One-Eye
.turnin 26614 >>Turn in Keep An Eye Out

step
#optional
#label endOfTheGuide
step
#optional
#completewith next
.subzone 35 >> Travel to Booty Bay
step
.goto 210,41.486,74.362
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_War-Mage Erallier|r
.target War-Mage Erallier
.accept 28749 >>Accept The Battle for Andorhal
step
.isOnQuest 28749
.goto 210,41.486,74.362
.gossip 49635,0 >>Talk to |cRXP_FRIENDLY_War-Mage Erallier|r so he can open a portal to Western Plaguelands
.skipgossip 49635,1
.target War-Mage Erallier
step
.isOnQuest 28749
.goto 210,41.558,74.260
.zone Western Plaguelands >> Take the |cRXP_PICK_Portal to Andorhal|r to Western Plaguelands
.target Portal to Andorhal
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#name 85-86 The Jade Forest
#next 86-87 Valley/Krasarang
step
#include RXP-Pandaria\85-86 The Jade Forest
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#speedrunguide
#name 86-87 Valley/Krasarang
#next 87-88 Kun-Lai Summit
#displayname 86-87 Valley/Krasarang
step
#include RXP-Pandaria\86-87 Valley/Krasarang
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#name 87-88 Kun-Lai Summit
#next 88-89 Townlong Steppes
step
#include RXP-Pandaria\87-88 Kun-Lai Summit
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#name 88-89 Townlong Steppes
#next 89-90 Dread Wastes Part 1
step
#include RXP-Pandaria\88-89 Townlong Steppes
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#name 89-90 Dread Wastes Part 1
#next 89-90 Dread Wastes Part 2
#displayname 89-90 Dread Wastes Part 1
step
#include RXP-Pandaria\89-90 Dread Wastes@pt1start-pt1end
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#name 89-90 Dread Wastes Part 2
#next 89-90 Dread Wastes Part 3
step
#include RXP-Pandaria\1-Klaxxi@dailystart-dailyend
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#name 89-90 Dread Wastes Part 3
#displayname 89-90 Dread Wastes Part 3
step
#include RXP-Pandaria\89-90 Dread Wastes@pt2start-pt2end
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#questguide
#group RXP MoP 85-90 (A)
#name 86-87 Valley of the Four Winds
step
#include RXP-Pandaria\86-87 Valley of the Four Winds
]]);

RXPGuides.RegisterGuide([[
<< Alliance
#mop
#group RXP MoP 85-90 (A)
#name 86-87 Krasarang Wilds
#questguide
step
#include RXP-Pandaria\86-87 Krasarang Wilds
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup August Celestials
#name 0_August Celestials Unlock_1a
#next 1_August Celestials Daillies_1a
#displayname |cFF1EFF000|r - August Celestials Quests
#title August Celestials
<< Alliance
step
#include RXP-Pandaria\0-August Celestials
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup Cloud Serpent
#name 0_Cloud Serpent Unlock_1a
#next 1_Cloud Serpent Daillies_1a
#displayname |cFF1EFF000|r - Cloud Serpent Quests
#title Cloud Serpent
<< Alliance
step
#include RXP-Pandaria\0-Cloud Serpent
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup Shado-Pan
#name 1_Shado-Pan Daillies_1a
#displayname |cFF1EFF001|r - Daily Quests
#title Shado-Pan Dailies
<< Alliance
step
#include RXP-Pandaria\1-Shado-Pan
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup The Anglers
#name 1_The Anglers Daillies_1a
#displayname |cFF1EFF001|r - Daily Quests
#title The Anglers
<< Alliance
step
#include RXP-Pandaria\1-The Anglers
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup The Tillers
#name 1_Tillers Daillies_1a
#displayname |cFF1EFF001|r - Daily Quests
#title Tillers Dailies
<< Alliance
step
#include RXP-Pandaria\1-Tillers
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup Cloud Serpent
#name 1_Cloud Serpent Daillies_1a
#displayname |cFF1EFF001|r - Daily Quests
#title Cloud Serpent
<< Alliance
step
#include RXP-Pandaria\1-Cloud Serpent
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup Golden Lotus
#name 0_Golden Lotus Unlock
#next 1_Golden Lotus Daillies
#displayname |cFF1EFF000|r - Golden Lotus Quests
#title Golden Lotus
<< Alliance
step
#include RXP-Pandaria\0-Golden Lotus
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup Golden Lotus
#name 1_Golden Lotus Daillies
#displayname |cFF1EFF001|r - Daily Quests
#title Golden Lotus Dailies
<< Alliance
step
#include RXP-Pandaria\1-Golden Lotus
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup The Klaxxi
#name 0_Klaxxi Unlock
#next 1_Klaxxi Daillies
#displayname |cFF1EFF000|r - Dread Wastes Quests
#title Dread Wastes
<< Alliance
step
#include RXP-Pandaria\89-90 Dread Wastes@pt1start-DreadWastesEnd
]]);

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP MoP Reputation Guide
#subgroup The Klaxxi
#name 1_Klaxxi Daillies
#displayname |cFF1EFF001|r - Daily Quests
#title The Klaxxi Dailies
<< Alliance
step
#include RXP-Pandaria\1-Klaxxi
]]);

