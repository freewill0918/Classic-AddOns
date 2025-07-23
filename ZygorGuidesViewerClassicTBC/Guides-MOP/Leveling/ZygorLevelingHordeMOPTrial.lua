local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\Valley of the Four Winds (86-87)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\Krasarang Wilds (87)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\Kun-Lai Summit (87-88)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\Townlong Steppes (88-89)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\Dread Wastes (89-90)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Daily")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling\\Mists of Pandaria Quest Stacking\\Launch Turnin Guide")
