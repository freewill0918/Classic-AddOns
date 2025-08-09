local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherHMOP") then return end
if UnitFactionGroup("player")~="Horde" then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Peacebloom/Silverleaf/Earthroot")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Rain Poppy")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Alabaster Pigment")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Copper Ore/Rough Stone (Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Ruined Leather Scraps/Light Leather(Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Light Leather/Medium Leather/Light Hide/Medium Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Light Leather/Medium Leather/Light Hide/Medium Hide (Hillsbrad Foothills)")
