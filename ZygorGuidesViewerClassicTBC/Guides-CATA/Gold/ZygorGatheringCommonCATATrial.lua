local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherC") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Volatile Life")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Cinderbloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Heartblossom")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Stormvine")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Azshara's Veil")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Twilight Jasmine")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Whiptail")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Elementium Ore (Twilight Highlands)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Elementium Ore (Uldum)")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Savage Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Blackened Dragonscale")
