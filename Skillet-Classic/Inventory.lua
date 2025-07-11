local addonName,addonTable = ...
local DA = LibStub("AceAddon-3.0"):GetAddon("Skillet") -- for DebugAids.lua
--[[
Skillet: A tradeskill window replacement.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]--

local GetItemInfo = C_Item and C_Item.GetItemInfo or GetItemInfo
local GetItemCount = C_Item and C_Item.GetItemCount or GetItemCount

local PT = LibStub("LibPeriodicTable-3.1")

--
-- recursive reagent craftability check
-- not considering alts
-- does consider queued recipes
--
function Skillet:InventoryReagentCraftability(reagentID, playerOverride)
	--DA.DEBUG(2,"InventoryReagentCraftability("..tostring(reagentID)..", "..tostring(playerOverride)..") -- "..tostring((GetItemInfo(reagentID))))
	if self.visited[reagentID] then
		--DA.DEBUG(2,"Been Here Before")
		return 0			-- we've been here before, so bail out to avoid infinite loop
	end
	local player = playerOverride or Skillet.currentPlayer
	self.visited[reagentID] = true
	local recipeSource = self.db.global.itemRecipeSource[reagentID]
	local numReagentsCrafted = 0
	local skillIndexLookup = self.data.skillIndexLookup[player]
	if recipeSource then
		for childRecipeID in pairs(recipeSource) do
			local childRecipe = self:GetRecipe(childRecipeID)
			local childSkillIndex = skillIndexLookup[childRecipeID]		-- only interested in current player for now
			if childSkillIndex and childRecipe and #childRecipe.reagentData > 0 and
			  not Skillet.TradeSkillIgnoredMats[childRecipeID] and not Skillet.db.realm.userIgnoredMats[player][childRecipeID] then
				local numCraftable = 100000
				for i=1,#childRecipe.reagentData,1 do
					local childReagent = childRecipe.reagentData[i]
					--DA.DEBUG(2,"childReagent="..DA.DUMP1(childReagent))
					local numReagentOnHand = GetItemCount(childReagent.id,false) -- Classic can only craft from bags
					local numReagentCraftable = self:InventoryReagentCraftability(childReagent.id, player)
					--DA.DEBUG(2,"id="..childReagent.id.." ("..tostring((GetItemInfo(childReagent.id))).."), numReagentCraftable="..numReagentCraftable..", numReagentOnHand= "..tostring(numReagentOnHand))
					numReagentCraftable = numReagentCraftable + numReagentOnHand
					numCraftable = math.min(numCraftable, math.floor(numReagentCraftable/childReagent.numNeeded))
					--DA.DEBUG(2,"numCraftable="..numCraftable)
				end
				numReagentsCrafted = numReagentsCrafted + numCraftable * (childRecipe.numMade or 1)
				--DA.DEBUG(2,"numReagentsCrafted="..numReagentsCrafted)
			end
		end
	end
	local queued = 0
	if self.db.realm.reagentsInQueue[player] then
		queued = self.db.realm.reagentsInQueue[player][reagentID] or 0
	end
	local numCanUse, numCanMake, numPlusBank = self:GetInventory(player, reagentID)
	local numCrafted = numReagentsCrafted + queued
	--DA.DEBUG(2,"player="..player..", numCrafted="..tostring(numCrafted)..", reagentID="..tostring(reagentID).."("..tostring((GetItemInfo(reagentID)))..")")
	Skillet.db.realm.inventoryData[player][reagentID] = numCanUse.." "..numCrafted.." "..numPlusBank
	self.visited[reagentID] = false -- okay to calculate this reagent again
	return numCrafted
end

--
-- recipe iteration check: calculate how many times a recipe can be iterated with materials available
-- (not to be confused with the reagent craftability which is designed to determine how many 
-- craftable reagents are available for recipe iterations)
--
function Skillet:InventorySkillIterations(tradeID, skillIndex)
	--DA.DEBUG(1,"InventorySkillIterations("..tostring(tradeID)..", "..tostring(skillIndex)..")")
	local player = Skillet.currentPlayer
	local skill = self:GetSkill(player, tradeID, skillIndex)
	local recipe = self:GetRecipe(skill.id)
	if recipe and recipe.reagentData and #recipe.reagentData > 0 then	-- make sure that recipe is in the database before continuing
		local numCraft = 100000
		local numCraftable = 100000
		local numCraftVendor = 100000
		local numCraftAlts = 100000
		local vendorOnly = true
		for i=1,#recipe.reagentData do
			if recipe.reagentData[i].id then
				local reagentID = recipe.reagentData[i].id
				local numNeeded = recipe.reagentData[i].numNeeded
				local reagentAvailable = 0
				local reagentCraftable = 0
				local reagentAvailableAlts = 0
				reagentAvailable, reagentCraftable = self:GetInventory(player, reagentID)
				numCraft = math.min(numCraft, math.floor(reagentAvailable/numNeeded))
				if reagentCraftable > 0 then
					numCraftable = math.min(numCraftable, math.floor(reagentCraftable/numNeeded))
				end
				for alt in pairs(self.db.realm.inventoryData) do
					if alt ~= player then
						local altHave, altCraft, altBoth = self:GetInventory(alt, reagentID)
						if self.db.profile.use_alt_banks then
							reagentAvailableAlts = reagentAvailableAlts + altBoth
						else
							reagentAvailableAlts = reagentAvailableAlts + altHave
						end
					end
				end
				if self.db.profile.use_guildbank_as_alt then
					local guildName = GetGuildInfo("player")
					local cachedGuildbank = self.db.global.cachedGuildbank
					if guildName and cachedGuildbank[guildName] and cachedGuildbank[guildName][reagentID] then
						reagentAvailableAlts = reagentAvailableAlts + cachedGuildbank[guildName][reagentID]
					end
				end
				if self.db.profile.use_bank_as_alt then
					--DA.DEBUG(1,"InventorySkillIterations: reagentID= "..tostring(reagentID)..", reagentAvailable= "..tostring(reagentAvailable)..", GetItemCount(,true)= "..tostring(GetItemCount(reagentID,true)))
					reagentAvailableAlts = reagentAvailableAlts + GetItemCount(reagentID,true) - reagentAvailable
				end
				if self:VendorSellsReagent(reagentID) then	-- if it's available from a vendor, then only worry about bag inventory
					local vendorAvailable, vendorAvailableAlt = Skillet:VendorItemAvailable(reagentID)
					numCraftVendor = math.min(numCraftVendor, vendorAvailable)
					numCraftAlts = math.min(numCraftAlts, vendorAvailableAlt)
				else
					vendorOnly = false
					numCraftVendor = math.min(numCraftVendor, math.floor(reagentAvailable/numNeeded))
					numCraftAlts = math.min(numCraftAlts, math.floor(reagentAvailableAlts/numNeeded))
				end
			else								-- no data means no craftability
				DA.MARK3(L["reagent id seems corrupt!"])
				numCraft = 0
				numCraftable = 0
				numCraftVendor = 0
				numCraftAlts = 0
				self.dataScanned = false		-- mark the data as needing to be rescanned since a reagent id seems corrupt
			end
		end --for
		recipe.vendorOnly = vendorOnly
		if numCraft == numCraftVendor then
			numCraftVendor = 0					-- only keep vendor count if different
		end
		if numCraftable == 100000 then
			numCraftable = 0					-- there were no craftable reagents
		end
--		if numCraft > 0 or numCraftable > 0 or numCraftVendor > 0 or numCraftAlts > 0 then
			--DA.DEBUG(1,"recipe="..DA.DUMP1(recipe))
			--DA.DEBUG(1,"numCraft="..tostring(numCraft)..", numCraftable="..tostring(numCraftable)..", numCraftVendor="..tostring(numCraftVendor)..", numCraftAlts="..tostring(numCraftAlts))
--		end
		local numMade = recipe.numMade or 0
		return numCraft * numMade, numCraftable * numMade, numCraftVendor * numMade, numCraftAlts * numMade
	end
	return 0, 0, 0, 0
end

function Skillet:InventoryScan()
	--DA.DEBUG(0,"InventoryScan()")
	if self.linkedSkill or self.isGuild then
		return
	end
	local player = self.currentPlayer
	local cachedInventory = self.db.realm.inventoryData[player]
	local inventoryData = {}
	local reagent
	local numCanUse
	if self.db.global.itemRecipeUsedIn then
		for reagentID in pairs(self.db.global.itemRecipeUsedIn) do
			local a = GetItemInfo(reagentID)
			local b = inventoryData[reagentID]
			--DA.DEBUG(2,"InventoryScan: reagent "..tostring(a).." "..tostring(b))
			if reagentID and not inventoryData[reagentID] then				-- have we calculated this one yet?
				if self.currentPlayer == (UnitName("player")) then			-- if this is the current player, use the API
					--DA.DEBUG(2,"InventoryScan: Using API")
					if self.db.profile.use_bank_as_alt then 		-- use_bank_as_alt, use_alt_banks
						numCanUse = GetItemCount(reagentID,true)
					else
						numCanUse = GetItemCount(reagentID,false)	-- In Classic just bags
					end
				elseif cachedInventory and cachedInventory[reagentID] then	-- otherwise, use what cached data is available
					--DA.DEBUG(2,"InventoryScan: Using cachedInventory")
					local a,b,c,d = string.split(" ", cachedInventory[reagentID])
					numCanUse = a
				else
					--DA.DEBUG(2,"InventoryScan: Using Zero")
					numCanUse = 0
				end
				inventoryData[reagentID] = tostring(numCanUse)	-- only what we have for now (no craftability info)
				--DA.DEBUG(2,"InventoryScan: inventoryData["..reagentID.."]="..inventoryData[reagentID])
			end
		end
	end
	self.visited = {} -- this is a simple infinite loop avoidance scheme: basically, don't visit the same node twice
	if inventoryData then
		self.db.realm.inventoryData[player] = inventoryData
--
-- now calculate the craftability of these same reagents
--
		for reagentID,inventory in pairs(inventoryData) do
			self:InventoryReagentCraftability(reagentID)
		end
--
-- remove any reagents that don't show up in our inventory
--
		for reagentID,inventory in pairs(inventoryData) do
			if inventoryData[reagentID] == 0 or inventoryData[reagentID] == "0" or inventoryData[reagentID] == "0 0" then
				inventoryData[reagentID] = nil
			end
		end
	end
	--DA.DEBUG(0,"InventoryScan complete for "..tostring(player))
end

--
-- The currentPlayer obeys the Classic crafting from the bags only but
-- everyone else can contribute from their bags or their bank.
--
function Skillet:GetInventory(player, reagentID)
	--DA.DEBUG(0,"GetInventory("..tostring(player)..", "..tostring(reagentID)..")")
	local have, make, plusbank
	if player and reagentID then
		if player == self.currentPlayer then
			have = GetItemCount(reagentID,false)	-- bags only
			plusbank = GetItemCount(reagentID,true)	-- bags + bank
			make = 0
		elseif self.db.realm.inventoryData[player] and self.db.realm.inventoryData[player][reagentID] then
			--DA.DEBUG(1,"inventoryData= "..tostring(self.db.realm.inventoryData[player][reagentID]))
			have, make, plusbank = string.split(" ", self.db.realm.inventoryData[player][reagentID])
		end
	end
	return tonumber(have) or 0, tonumber(make) or 0, tonumber(plusbank) or 0
end

--
-- queries for vendor info for a particular itemID
--
function Skillet:VendorSellsReagent(itemID)
	--DA.DEBUG(0,"VendorSellsReagent("..tostring(itemID)..")")
	if self.db.global.MissingVendorItems[itemID] then
		if type(self.db.global.MissingVendorItems[itemID]) == 'table' then
			if Skillet.db.profile.use_altcurrency_vendor_items then
				return true
			end
		else
			return true
		end
	end
--
-- Check the LibPeriodicTable data next
--
	if PT then
		if itemID~=0 and PT:ItemInSet(itemID,"Tradeskill.Mat.BySource.Vendor") then
			return true
		end
	end
	return false
end

--
-- returns the number of items that can be bought limited by the amount of currency available
--
function Skillet:VendorItemAvailable(itemID)
	--DA.DEBUG(0,"VendorItemAvailable("..tostring(itemID)..")")
	local _, divider, currency, currencyAvailable
	local currencyAvailableAlts = 0
	if self.SpecialVendorItems[itemID] then
		divider = self.SpecialVendorItems[itemID][1]
		currency = self.SpecialVendorItems[itemID][2]
		currencyAvailable = self:GetInventory(self.currentPlayer, currency)
		for alt in pairs(self.db.realm.inventoryData) do
			if alt ~= self.currentPlayer then
				local altBoth = self:GetInventory(alt, currency)
				currencyAvailableAlts = currencyAvailableAlts + (altBoth or 0)
			end
		end
		return math.floor(currencyAvailable / divider), math.floor(currencyAvailableAlts / divider)
	elseif self.db.global.MissingVendorItems[itemID] then
		local MissingVendorItem = self.db.global.MissingVendorItems[itemID]
		if type(MissingVendorItem) == 'table' then	-- table entries are {name, quantity, currencyName, currencyID, currencyCount}
			if Skillet.db.profile.use_altcurrency_vendor_items then
				--DA.DEBUG(1,"MissingVendorItem="..DA.DUMP1(MissingVendorItem))
				if MissingVendorItem[4] > 0 then
					currencyAvailable = self:GetInventory(self.currentPlayer, MissingVendorItem[4])
				else
					_, currencyAvailable = GetCurrencyInfo(-1 * MissingVendorItem[4])
				end
				--DA.DEBUG(1,"currencyAvailable="..tostring(currencyAvailable))
--
-- compute how many this player can buy with alternate currency and return 0 for alts
--
				return math.floor(MissingVendorItem[2] * currencyAvailable / (MissingVendorItem[5] or 1)), 0
			else
				return 0, 0		-- vendor sells item for an alternate currency and we are ignoring it.
			end
		else
			return 100000, 100000	-- vendor sells item for gold, price is not available so assume lots of gold
		end
	else
		return 100000, 100000	-- vendor sells item for gold, price is not available so assume lots of gold
	end
end
