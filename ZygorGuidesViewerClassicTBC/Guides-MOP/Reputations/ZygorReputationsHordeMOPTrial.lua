local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive\\Beastmaster Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Chee Chee")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Ella")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Farmer Fung")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Fish Fellreed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Gina Mudclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Haohan Mudclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Jogu the Drunk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Old Hillpaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Sho")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Tina Mudclaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Anglers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Emperor Shaohao")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Forest Hozen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Huojin Pandaren")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Lorewalkers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Nat Pagle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent")
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Shado-Pan",{
description="\nThis guide will walk you through becoming exalted with the Shado-Pan faction.",
achieveid={6366},
patch='50004',
},[[
step
#include "Shado_Pan_Daily_H"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\Sunreaver Onslaught")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputation Guides\\Mists of Pandaria Reputations\\The Tillers")
