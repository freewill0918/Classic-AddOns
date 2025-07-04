local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmC") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Volatile Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Volatile Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Volatile Earth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Volatile Air")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Embersilk Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Dragon Flank")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Basilisk Liver")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Crocolisk Tail")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Snake Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Farming\\Giant Turtle Tongue")
