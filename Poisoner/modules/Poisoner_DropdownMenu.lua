--[[ 

	Poisoner
	¯¯¯¯¯¯¯¯¯¯
	> Dropdown menu for poison presets

]]

local _, _, _, tocversion = GetBuildInfo()
local isClassicSoD = tocversion < 20000
local isCata = tocversion > 40000

local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0")

local width = 100
local buttonWidth = 120

function Poisoner_DropDownMenu_CreateEntry(itemId)
	if not itemId or itemId == "" then return NONE end
	local t = POISONER_CONFIG.Poisons[itemId]
	if not t then return itemId end
	return "|T"..t.Texture..":0|t"..t.Name
end

function Poisoner_DropDownMenu_CreateFrames()

	if not POISONER_CONFIG.Poisons or not POISONER_CONFIG.Poisons[10918] then return end

	local poisons = {
		NONE,	--[1]
		Poisoner_DropDownMenu_CreateEntry(3775),	--CPName,	--[2]
		Poisoner_DropDownMenu_CreateEntry(5237),	--MPName,	--[3]
		Poisoner_DropDownMenu_CreateEntry(2892),	--DPName,	--[4]
		Poisoner_DropDownMenu_CreateEntry(6947),	--IPName,	--[5]
		Poisoner_DropDownMenu_CreateEntry(10918),	--WPName,	--[6]
	}
	if isClassicSoD then
		table.insert(poisons, Poisoner_DropDownMenu_CreateEntry(226374))	--OPName,	--[7]
		table.insert(poisons, Poisoner_DropDownMenu_CreateEntry(217346))	--NPName,	--[8]
		table.insert(poisons, Poisoner_DropDownMenu_CreateEntry(217347))	--APName,	--[9]
		table.insert(poisons, Poisoner_DropDownMenu_CreateEntry(217345))	--SPName,	--[10]
	end
	
	PoisonerDropDown_CreateFrame_Normal(poisons)
	PoisonerDropDown_CreateFrame_SHIFT(poisons)
	PoisonerDropDown_CreateFrame_CTRL(poisons)
	PoisonerDropDown_CreateFrame_ALT(poisons)

end

function PoisonerDropDown_CreateFrame_Normal(poisons)
	
	--
	-- DropDownMenu - Mainhand
	--
	if not Poisoner_DropDownMenu_Mainhand then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Mainhand", PoisonerOptions_DropdownFrame1, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Mainhand", PoisonerOptions_DropdownFrame1)
	end
	 
	Poisoner_DropDownMenu_Mainhand:ClearAllPoints()
	Poisoner_DropDownMenu_Mainhand:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame1, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Mainhand:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Mainhand", id, "Normal")
	end
	 
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Mainhand, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Mainhand, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Mainhand, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Mainhand, "LEFT")



	--
	-- DropDownMenu - Offhand
	--
	if not Poisoner_DropDownMenu_Offhand then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Offhand", PoisonerOptions_DropdownFrame2, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Offhand", PoisonerOptions_DropdownFrame2)
	end
	 
	Poisoner_DropDownMenu_Offhand:ClearAllPoints()
	Poisoner_DropDownMenu_Offhand:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame2, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Offhand:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Offhand", id, "Normal")
	end
	 
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Offhand, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Offhand, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Offhand, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Offhand, "LEFT")
	
	
	if isCata then
		--
		-- DropDownMenu - Throw weapon
		--
		if not Poisoner_DropDownMenu_Throwweapon then
			--CreateFrame("Button", "Poisoner_DropDownMenu_Throwweapon", PoisonerOptions_DropdownFrame3, "UIDropDownMenuTemplate")
			LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Throwweapon", PoisonerOptions_DropdownFrame3)
		end
		 
		Poisoner_DropDownMenu_Throwweapon:ClearAllPoints()
		Poisoner_DropDownMenu_Throwweapon:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame3, "TOPLEFT", -20, -15)
		Poisoner_DropDownMenu_Throwweapon:Show()

		local function OnClick(self)
			LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon, self:GetID())
			local id = self:GetID()
			PoisonerDropDown_SelectPresetPoison("Throwweapon", id, "Normal")
		end
		 
		local function initialize(self, level)
			local info = LibDD:UIDropDownMenu_CreateInfo()
			for k,v in pairs(poisons) do
				info = LibDD:UIDropDownMenu_CreateInfo()
				info.text = v
				info.value = v
				info.func = OnClick
				LibDD:UIDropDownMenu_AddButton(info, level)
			end
		end 
		 
		LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Throwweapon, initialize)
		LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Throwweapon, width);
		LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Throwweapon, buttonWidth)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon, 1)
		LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Throwweapon, "LEFT")
	end
	
end

function PoisonerDropDown_CreateFrame_SHIFT(poisons)
	
	--
	-- DropDownMenu - Mainhand
	--
	if not Poisoner_DropDownMenu_Mainhand_SHIFT then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Mainhand_SHIFT", PoisonerOptions_DropdownFrame_SHIFT1, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Mainhand_SHIFT", PoisonerOptions_DropdownFrame_SHIFT1)
	end
	 
	Poisoner_DropDownMenu_Mainhand_SHIFT:ClearAllPoints()
	Poisoner_DropDownMenu_Mainhand_SHIFT:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_SHIFT1, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Mainhand_SHIFT:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand_SHIFT, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Mainhand", id, "SHIFT")
	end
	 
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Mainhand_SHIFT, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Mainhand_SHIFT, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Mainhand_SHIFT, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand_SHIFT, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Mainhand_SHIFT, "LEFT")



	--
	-- DropDownMenu - Offhand
	--
	if not Poisoner_DropDownMenu_Offhand_SHIFT then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Offhand_SHIFT", PoisonerOptions_DropdownFrame_SHIFT2, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Offhand_SHIFT", PoisonerOptions_DropdownFrame_SHIFT2)
	end
	 
	Poisoner_DropDownMenu_Offhand_SHIFT:ClearAllPoints()
	Poisoner_DropDownMenu_Offhand_SHIFT:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_SHIFT2, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Offhand_SHIFT:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand_SHIFT, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Offhand", id, "SHIFT")
	end
	 
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Offhand_SHIFT, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Offhand_SHIFT, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Offhand_SHIFT, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand_SHIFT, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Offhand_SHIFT, "LEFT")
	

	
	if isCata then
		--
		-- DropDownMenu - Throw weapon
		--
		if not Poisoner_DropDownMenu_Throwweapon_SHIFT then
			--CreateFrame("Button", "Poisoner_DropDownMenu_Throwweapon_SHIFT", PoisonerOptions_DropdownFrame_SHIFT3, "UIDropDownMenuTemplate")
			LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Throwweapon_SHIFT", PoisonerOptions_DropdownFrame_SHIFT3)
		end
		 
		Poisoner_DropDownMenu_Throwweapon_SHIFT:ClearAllPoints()
		Poisoner_DropDownMenu_Throwweapon_SHIFT:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_SHIFT3, "TOPLEFT", -20, -15)
		Poisoner_DropDownMenu_Throwweapon_SHIFT:Show()

		local function OnClick(self)
			LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon_SHIFT, self:GetID())
			local id = self:GetID()
			PoisonerDropDown_SelectPresetPoison("Throwweapon", id, "SHIFT")
		end
		 
		local function initialize(self, level)
			local info = LibDD:UIDropDownMenu_CreateInfo()
			for k,v in pairs(poisons) do
				info = LibDD:UIDropDownMenu_CreateInfo()
				info.text = v
				info.value = v
				info.func = OnClick
				LibDD:UIDropDownMenu_AddButton(info, level)
			end
		end 
		 
		LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Throwweapon_SHIFT, initialize)
		LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Throwweapon_SHIFT, width);
		LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Throwweapon_SHIFT, buttonWidth)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon_SHIFT, 1)
		LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Throwweapon_SHIFT, "LEFT")
	end
	
end

function PoisonerDropDown_CreateFrame_CTRL(poisons)
		
	--
	-- DropDownMenu - Mainhand
	--
	if not Poisoner_DropDownMenu_Mainhand_CTRL then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Mainhand_CTRL", PoisonerOptions_DropdownFrame_CTRL1, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Mainhand_CTRL", PoisonerOptions_DropdownFrame_CTRL1)
	end
	 
	Poisoner_DropDownMenu_Mainhand_CTRL:ClearAllPoints()
	Poisoner_DropDownMenu_Mainhand_CTRL:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_CTRL1, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Mainhand_CTRL:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand_CTRL, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Mainhand", id, "CTRL")
	end
	 
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Mainhand_CTRL, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Mainhand_CTRL, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Mainhand_CTRL, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand_CTRL, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Mainhand_CTRL, "LEFT")



	--
	-- DropDownMenu - Offhand
	--
	if not Poisoner_DropDownMenu_Offhand_CTRL then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Offhand_CTRL", PoisonerOptions_DropdownFrame_CTRL2, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Offhand_CTRL", PoisonerOptions_DropdownFrame_CTRL2)
	end
	 
	Poisoner_DropDownMenu_Offhand_CTRL:ClearAllPoints()
	Poisoner_DropDownMenu_Offhand_CTRL:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_CTRL2, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Offhand_CTRL:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand_CTRL, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Offhand", id, "CTRL")
	end
	 
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Offhand_CTRL, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Offhand_CTRL, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Offhand_CTRL, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand_CTRL, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Offhand_CTRL, "LEFT")
	
	
	
	if isCata then
		--
		-- DropDownMenu - Throw weapon
		--
		if not Poisoner_DropDownMenu_Throwweapon_CTRL then
			--CreateFrame("Button", "Poisoner_DropDownMenu_Throwweapon_CTRL", PoisonerOptions_DropdownFrame_CTRL3, "UIDropDownMenuTemplate")
			LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Throwweapon_CTRL", PoisonerOptions_DropdownFrame_CTRL3)
		end
		 
		Poisoner_DropDownMenu_Throwweapon_CTRL:ClearAllPoints()
		Poisoner_DropDownMenu_Throwweapon_CTRL:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_CTRL3, "TOPLEFT", -20, -15)
		Poisoner_DropDownMenu_Throwweapon_CTRL:Show()

		local function OnClick(self)
			LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon_CTRL, self:GetID())
			local id = self:GetID()
			PoisonerDropDown_SelectPresetPoison("Throwweapon", id, "CTRL")
		end
		 
		local function initialize(self, level)
			local info = LibDD:UIDropDownMenu_CreateInfo()
			for k,v in pairs(poisons) do
				info = LibDD:UIDropDownMenu_CreateInfo()
				info.text = v
				info.value = v
				info.func = OnClick
				LibDD:UIDropDownMenu_AddButton(info, level)
			end
		end 
		 
		LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Throwweapon_CTRL, initialize)
		LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Throwweapon_CTRL, width);
		LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Throwweapon_CTRL, buttonWidth)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon_CTRL, 1)
		LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Throwweapon_CTRL, "LEFT")
	end
	
end

function PoisonerDropDown_CreateFrame_ALT(poisons)
		
	--
	-- DropDownMenu - Mainhand
	--
	if not Poisoner_DropDownMenu_Mainhand_ALT then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Mainhand_ALT", PoisonerOptions_DropdownFrame_ALT1, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Mainhand_ALT", PoisonerOptions_DropdownFrame_ALT1)
	end
	 
	Poisoner_DropDownMenu_Mainhand_ALT:ClearAllPoints()
	Poisoner_DropDownMenu_Mainhand_ALT:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_ALT1, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Mainhand_ALT:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand_ALT, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Mainhand", id, "ALT")
	end
	
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Mainhand_ALT, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Mainhand_ALT, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Mainhand_ALT, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Mainhand_ALT, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Mainhand_ALT, "LEFT")



	--
	-- DropDownMenu - Offhand
	--
	if not Poisoner_DropDownMenu_Offhand_ALT then
		--CreateFrame("Button", "Poisoner_DropDownMenu_Offhand_ALT", PoisonerOptions_DropdownFrame_ALT2, "UIDropDownMenuTemplate")
		LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Offhand_ALT", PoisonerOptions_DropdownFrame_ALT2)
	end
	 
	Poisoner_DropDownMenu_Offhand_ALT:ClearAllPoints()
	Poisoner_DropDownMenu_Offhand_ALT:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_ALT2, "TOPLEFT", -20, -15)
	Poisoner_DropDownMenu_Offhand_ALT:Show()

	local function OnClick(self)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand_ALT, self:GetID())
		local id = self:GetID()
		PoisonerDropDown_SelectPresetPoison("Offhand", id, "ALT")
	end
	 
	local function initialize(self, level)
		local info = LibDD:UIDropDownMenu_CreateInfo()
		for k,v in pairs(poisons) do
			info = LibDD:UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = v
			info.func = OnClick
			LibDD:UIDropDownMenu_AddButton(info, level)
		end
	end 
	 
	LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Offhand_ALT, initialize)
	LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Offhand_ALT, width);
	LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Offhand_ALT, buttonWidth)
	LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Offhand_ALT, 1)
	LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Offhand_ALT, "LEFT")
	
	
	
	if isCata then
		--
		-- DropDownMenu - Throw weapon
		--
		if not Poisoner_DropDownMenu_Throwweapon_ALT then
			--CreateFrame("Button", "Poisoner_DropDownMenu_Throwweapon_ALT", PoisonerOptions_DropdownFrame_ALT3, "UIDropDownMenuTemplate")
			LibDD:Create_UIDropDownMenu("Poisoner_DropDownMenu_Throwweapon_ALT", PoisonerOptions_DropdownFrame_ALT3)
		end
		 
		Poisoner_DropDownMenu_Throwweapon_ALT:ClearAllPoints()
		Poisoner_DropDownMenu_Throwweapon_ALT:SetPoint("TOPLEFT", PoisonerOptions_DropdownFrame_ALT3, "TOPLEFT", -20, -15)
		Poisoner_DropDownMenu_Throwweapon_ALT:Show()

		local function OnClick(self)
			LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon_ALT, self:GetID())
			local id = self:GetID()
			PoisonerDropDown_SelectPresetPoison("Throwweapon", id, "ALT")
		end
		 
		local function initialize(self, level)
			local info = LibDD:UIDropDownMenu_CreateInfo()
			for k,v in pairs(poisons) do
				info = LibDD:UIDropDownMenu_CreateInfo()
				info.text = v
				info.value = v
				info.func = OnClick
				LibDD:UIDropDownMenu_AddButton(info, level)
			end
		end 
		 
		LibDD:UIDropDownMenu_Initialize(Poisoner_DropDownMenu_Throwweapon_ALT, initialize)
		LibDD:UIDropDownMenu_SetWidth(Poisoner_DropDownMenu_Throwweapon_ALT, width);
		LibDD:UIDropDownMenu_SetButtonWidth(Poisoner_DropDownMenu_Throwweapon_ALT, buttonWidth)
		LibDD:UIDropDownMenu_SetSelectedID(Poisoner_DropDownMenu_Throwweapon_ALT, 1)
		LibDD:UIDropDownMenu_JustifyText(Poisoner_DropDownMenu_Throwweapon_ALT, "LEFT")
	end
	
end

function PoisonerDropDown_GetBaseItemId(id)
	if not id or id == 1 then return "" end
	return Poisoner_Categories[Poisoner_PoisonDropDownCats[id]][1]
end

function PoisonerDropDown_SelectPresetPoison(weapon, id, modifier)
	
	local itemId = PoisonerDropDown_GetBaseItemId(id)
	local t = POISONER_CONFIG.Poisons[itemId]
	local itemName = t and t.Name or ""
	
	
	POISONER_CONFIG.Preset[modifier][weapon] = id
	
	local buttonId = (weapon == "Throwweapon" and 3) or (weapon == "Offhand" and 2) or 1
	Poisoner_PoisonSlots[buttonId][modifier] = {
		Name = itemName,
		Id = itemId,
		Texture = t and t.Texture or "",
		MacroText = Poisoner_CreateFullItemMacroString(id, buttonId, modifer~="Normal" and string.lower(modifier) or nil)
	}
	
	if InCombatLockdown() then
		PoisonerStateHeader.needUpdate = true
		PoisonerStateHeader.forceUpdate = true
	else
		Poisoner_GetToolTipTexture()
		Poisoner_CheckQuickButton(true)
	end
	
end


function PoisonerDropDown_UpdateDropDownText(frame, id)
	
	local itemId = PoisonerDropDown_GetBaseItemId(id)
	--local itemName = POISONER_CONFIG.Poisons[itemId].Name or ""
	
	LibDD:UIDropDownMenu_SetSelectedID(frame, id)
	LibDD:UIDropDownMenu_SetText(frame, Poisoner_DropDownMenu_CreateEntry(itemId))
	
end






