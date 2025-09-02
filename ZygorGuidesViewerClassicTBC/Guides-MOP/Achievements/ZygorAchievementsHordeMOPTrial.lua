local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Celestial Family",{
achieveid={8519},
patch='50400',
description="Complete the Celestial Tournament Scenario",
},[[
step
label "start"
This achievement requires you to obtain all 4 of the celesital pets on the Timeless Isle.
In order to do so, you must complete the _Celestial Tournament_ every week to earn _Celestial Coins_. These are used to purchase the 4 pets.
|confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have _3 Celestial Coins_ in order to obtain each pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Yu'la, Broodling of Yu'lon##102147 |next "yulal" |only if not achieved(8519,3) |or |goto Timeless Isle/0 34.80,59.70
buy 1 Xu-Fu, Cub of Xuen##101771 |next "xuful" |only if not achieved(8519,1) |or |goto Timeless Isle/0 34.80,59.70
buy 1 Zao, Calfling of Niuzao##102146 |next "zaol" |only if not achieved(8519,4) |or |goto Timeless Isle/0 34.80,59.70
buy 1 Chi-Chi, Hatchling of Chi-Ji##102145 |next "chichil" |only if not achieved(8519,2) |or |goto Timeless Isle/0 34.80,59.70
step
label "yulal"
Use the _Yu'la Broodling of Yu'lon_ in your bags. |use Yu'la Broodling of Yu'lon##102147
learnpet Yu'la, Broodling of Yu'lon##72463
|next "check"
|only if not achieved(8519,3)
step
label "chichil"
Use the _Chi-Chi Hatchling of Chi-Ji_ in your bags. |use Chi-Chi Hatchling of Chi-Ji##102145
learnpet Chi-Chi, Hatchling of Chi-Ji##72462
|next "check"
|only if not achieved(8519,2)
step
label "zaol"
Use the _Zao Calfling of Niuzao_ in your bags. |use Zao Calfling of Niuzao##102146
learnpet Zao, Calfling of Niuzao##72464
|next "check"
|only if not achieved(8519,4)
step
label "xuful"
Use the _Xu-Fu Cub of Xuen_ in your bags. |use Xu-Fu Cub of Xuen##101771
learnpet Xu-Fu, Cub of Xuen##71942
|next "check"
|only if not achieved(8519,1)
step
label "check"
This will display your progress up to this point:
Yu'la obtained |achieve 8519/3
Xu-Fu obtained |achieve 8519/1
Zao obtained |achieve 8519/4
Chi-Chi obtained |achieve 8519/2
|confirm |next "start"
step
Congratulations, you have obtained the _Celestial Family_ achievement!
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Crazy for Cats")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Going to Need More Traps")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\He's Mine!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Master Pet Hunter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Pandaria Safari")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes II: Attunement Edition")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes III: Drinkin' From the Sunwell")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Raiding with Leashes IV: Wrath of the Lich King")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\That was Close!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Zen Pet Hunter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawlin' - Alliance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Big City Pet Brawlin' - Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Cat Fight!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\The Celestial Tournament")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Deadly Pet Brawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Experienced Pet Battler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Experienced Pet Brawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Grand Master Pet Battler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Grand Master Pet Brawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Legendary Pet Battler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Legendary Pet Brawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Local Pet Mauler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Master of the Masters")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Master Pet Battler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Master Pet Brawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\No Time To Heal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Pet Brawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Take 'Em All On!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle\\Win Streak")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Level\\All Growns Up!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Level\\Growing Up")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Level\\Just a Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Level\\Newbie")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Level\\Old Timer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Level\\Time for a Leash")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Battle Master")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Fabled Pandaren Tamer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\I Choose You")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\The Longest Day")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Time to Open a Pet Store")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Trainer Extraordinaire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Ultimate Trainer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\Going to Need More Leashes")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Pet Battles\\Collect\\That's a Lot of Pet Food")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Player vs. Player\\The Timeless Isle\\Emissary of Ordos")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Player vs. Player\\The Timeless Isle\\Kilnmaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Ironpaw Chef")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Master of the Brew")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Master of the Grill")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Master of the Oven")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Master of Pandaren Cooking")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Master of the Pot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Master of the Steamer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\Master of the Wok")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Cooking\\The Pandaren Gourmet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Professions\\Fishing\\The Pandarian Angler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\A Taste of History")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\A Taste of Things to Come")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Ain't Lost No More")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Amber is the Color of My Energy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Blue Response")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Boop")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Champion of Chi-Ji")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Collateral Damage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\The Crumble Bundle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Defender of Gods")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Direhorn in a China Shop")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Dog Pile")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Dread Haste Makes Dread Waste")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Every Day I'm Pand-a-ren")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Finish Them!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Fire in the Yaung-hole!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\For the Ward!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Getting Around with the Shado-Pan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Green Acres")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\How to Strain Your Dragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\In a Trail of Smoke")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Isle of Thunder")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\It Was Worth Every Ritual Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Know Your Role")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Listen to the Drunk Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Loner and a Rebel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Mighty Roamin' Krasaranger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\The Mogu Have Gotta Go-gu")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\One Many Army")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\One Step at a Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\One Steppe Forward, Two Steppes Back")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Our Powers Combined")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Over Their Heads")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Pay to Slay")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Platform Hero")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Proven Strength")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Rally the Valley")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Ready for RAAAAIIIIDDD?!?ing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Ready for Raiding III")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Roll Club")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Savior of Stoneplow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Shadow Hopper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Silent Assassin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Slum It in the Summit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Speed Metal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Spreading the Warmth!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Stay Klaxxi")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Stormbreaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Test Drive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\These Mogu Have Gotta Go-gu")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\This Isn't Even My Final Form")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Thunder Plunder")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Till the Break of Dawn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Upjade Complete")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\When in Ihgaluk, Do as the Skumblade Do")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Yak Attack")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\You Made Me Bleed My Own Blood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Mists of Pandaria\\Zandalari Library Card")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Loremaster of Pandaria")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Reputation\\Mists of Pandaria\\Dominance Offensive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Reputation\\Mists of Pandaria\\Sunreaver Onslaught")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\A Brewing Storm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Accelerated Archaeology")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Arena of Annihilation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Beat the Heat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Binan Village All-Star")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Bubbletrapped!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Cannonballer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Don't Shake the Keg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Fancy Footwork")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\The Few, the Proud, the Gob Squad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Fight Anger with Anger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\For the Swarm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Heed the Weed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Hekima's Heal-Halter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\I Used To Love Them")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\In the Eye of the Tiger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\It's a Trap!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Keep those Bombs Away! (From Me)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\The Keg Runner")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Kite Fight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Monkey in the Middle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Monkey See, Monkey Kill")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\No Egg Left Behind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\No Tank You")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Party of Six")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Perfect Delivery")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\The Perfect Pour")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Queuing Spree")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Save it for Later")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Spill No Evil")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Waste Not, Want Not")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Watery Grave")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\We've Been Dancin'")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Which Came First?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\Yaungolian Barbecue")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\You Mean That Wasn't a Void Zone?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Scenarios\\Mists of Pandaria\\You're Doing it Wrong")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\Bottle Service")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\Collect Your Deck")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\Deck Your Collection (Season 1)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\Haters Gonna Hate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\I'm Your Number One Fan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\I've Got the Biggest Brawls of Them All")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\Now You're Just Showing Off")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\World Events\\Brawler's Guild\\Rabble Rabble Rabble")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Dungeons & Raids\\Pandaria Dungeons\\Glory of the Pandaria Raider")
