if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------
----- Auctioneers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("auctioneer",[[
		talk Auctioneer Fitch##8719 |goto Stormwind City 61.10,70.60
]])

ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.00,26.50 |only if rep ('The Aldor') >= Friendly
		talk Auctioneer Kalaren##50139 |goto Shattrath City 57.00,63.20 |only if rep ('The Scryers') >= Friendly
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_stormshield",[[
		talk Kong Brewstep##88522 |goto Stormshield/0 54.70,67.70
		|tip He's inside this building.
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_ironforge",[[
		talk Auctioneer Redmuse##8720 |goto Ironforge 24.30,74.60
]])