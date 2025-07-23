local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Brown Dragon Turtle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Purple Dragon Turtle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Blue Dragon Turtle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Brown Dragon Turtle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Great Red Dragon Turtle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Primal Direhorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Armored Blue Dragonhawk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Grand Gryphon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Grand Armored Gryphon")
