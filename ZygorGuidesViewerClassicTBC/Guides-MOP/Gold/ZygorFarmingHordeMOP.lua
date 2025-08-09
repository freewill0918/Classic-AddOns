local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmHMOP") then return end
if UnitFactionGroup("player")~="Horde" then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Clam Meat, Small Lustrous Pearl",{
meta={goldtype="route",levelreq={1},itemtype="misc"},
items={{5503,324},{5498,8}},
maps={"Echo Isles"},
},[[
step
map Echo Isles/0
path follow smart; loop on; ants curved
path	64.90,25.90	67.20,18.30	65.20,10.40
path	59.40,9.30	54.90,13.10	56.70,23.70
Kill Spitescale enemies around this area
|tip Follow the path as well as enter the cave when you come across them.
use the Small Barnacled Clam##5523
|goldcollect 324 Clam Meat##5503
|goldcollect 8 Small Lustrous Pearl##5498
|meta crap_items_follow=1
|goldtracker
Click Here to Sell Items |confirm
step
#include "auctioneer"
]])
