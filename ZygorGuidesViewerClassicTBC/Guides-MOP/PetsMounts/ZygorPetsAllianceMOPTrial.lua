local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Fishy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Sumprush Rodent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Air Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Earth Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Fire Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Water Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Chi-ji Kite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Jade Crane Chick")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yu'lon Kite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Mountain Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Red Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Snowy Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Sunfur Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Jade Owl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Clock'em")
