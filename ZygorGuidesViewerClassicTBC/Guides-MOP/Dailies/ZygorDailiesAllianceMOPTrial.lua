local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuidePlaceholder("Daily Guides\\Mists of Pandaria Dailies\\Operation: Shieldwall")
ZGV.BETAEND()
