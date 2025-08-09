local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Arena of Annihilation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm (Heroic)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Brewmoon Festival")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings (Heroic)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Greenstone Village")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Unga Ingoo")
