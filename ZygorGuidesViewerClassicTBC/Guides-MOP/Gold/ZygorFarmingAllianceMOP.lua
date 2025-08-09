local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldFarmAMOP") then return end
if UnitFactionGroup("player")~="Alliance" then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Clam Meat, Small Lustrous Pearl",{
meta={goldtype="route",levelreq={7},itemtype="misc"},
items={{5503,196},{5498,4},{2592,216,'crap'},{2589,292,'crap'}},
maps={"Redridge Mountains"},
},[[
step
kill Murloc Nightcrawler##544+
|tip When you kill all six, two more will spawn instantly.
use the Small Barnacled Clam##5523+
|goldcollect 196 Clam Meat##5503 |goto Redridge Mountains/0 71.80,56.10
|goldcollect 4 Small Lustrous Pearl##5498
|meta crap_items_follow=1
|goldcollect 216 Wool Cloth##2592
|goldcollect 292 Linen Cloth##2589
|goldtracker
Click Here to Sell Items |confirm
step
#include "auctioneer"
]])
