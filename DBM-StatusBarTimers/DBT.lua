---@class DBT
local DBT = {
	bars = {},
	numBars = 0,
	lastUpdateTime = 0,
	updateThrottle = 0.05 -- Throttle updates to max 20 times per second
}
_G.DBT = DBT

local standardFont
if LOCALE_koKR then
	standardFont = "Fonts\\2002.TTF"
elseif LOCALE_zhCN then
	standardFont = "Fonts\\ARKai_T.ttf"
elseif LOCALE_zhTW then
	standardFont = "Fonts\\blei00d.TTF"
elseif LOCALE_ruRU then
	standardFont = "Fonts\\FRIZQT___CYR.TTF"
else
	standardFont = "Fonts\\FRIZQT__.TTF"
end

DBT.DefaultOptions = {
	StartColorR = 1,
	StartColorG = 0.7,
	StartColorB = 0,
	EndColorR = 1,
	EndColorG = 0,
	EndColorB = 0,
	--Color 1 (Add)
	StartColorAR = 0.375,
	StartColorAG = 0.545,
	StartColorAB = 1,
	EndColorAR = 0.15,
	EndColorAG = 0.385,
	EndColorAB = 1,
	--Color 2 (AOE)
	StartColorAER = 1,
	StartColorAEG = 0.466,
	StartColorAEB = 0.459,
	EndColorAER = 1,
	EndColorAEG = 0.043,
	EndColorAEB = 0.247,
	--Color 3 (Targeted)
	StartColorDR = 0.9,
	StartColorDG = 0.3,
	StartColorDB = 1,
	EndColorDR = 1,
	EndColorDG = 0,
	EndColorDB = 1,
	--Color 4 (Interrupt)
	StartColorIR = 0.47,
	StartColorIG = 0.97,
	StartColorIB = 1,
	EndColorIR = 0.047,
	EndColorIG = 0.88,
	EndColorIB = 1,
	--Color 5 (Role)
	StartColorRR = 0.5,
	StartColorRG = 1,
	StartColorRB = 0.5,
	EndColorRR = 0.11,
	EndColorRG = 1,
	EndColorRB = 0.3,
	--Color 6 (Phase)
	StartColorPR = 1,
	StartColorPG = 0.776,
	StartColorPB = 0.420,
	EndColorPR = 0.5,
	EndColorPG = 0.41,
	EndColorPB = 0.285,
	--Important Color 7 (Important/User set only)
	StartColorUIR = 1,
	StartColorUIG = 1,
	StartColorUIB = 0.0627450980392157,
	EndColorUIR = 1,
	EndColorUIG = 0.92156862745098,
	EndColorUIB = 0.0117647058823529,
	--Important Color 8 (Important/User set only)
	StartColorI2R = 1,
	StartColorI2G = 0.6745098233222961,
	StartColorI2B = 0,
	EndColorI2R = 1,
	EndColorI2G = 0.5058823823928833,
	EndColorI2B = 0,
	--Important bars options
	Bar7ForceLarge = true,
	Bar7CustomInline = true,
	-- Variance
	VarianceEnabled = true,
	VarColorR = 1,
	VarColorG = 1,
	VarColorB = 1,
	VarianceAlpha = 0.5,
	VarianceBehavior = "ZeroAtMinTimerAndNeg",
	VarianceTexture = "Interface\\AddOns\\DBM-StatusBarTimers\\textures\\default.blp",
	-- Small bar
	BarXOffset = 0,
	BarYOffset = 0,
	Width = 183,
	Height = 20,
	Alpha = 0.8,
	Scale = 0.9,
	TimerX = -223,
	TimerY = -260,
	ExpandUpwards = false,
	FillUpBars = true,
	TimerPoint = "TOPRIGHT",
	Sort = "Sort",
	DesaturateValue = 1,
	-- Huge bar
	EnlargeBarTime = 9.9,
	HugeBarXOffset = 0,
	HugeBarYOffset = 0,
	HugeWidth = 200,
	HugeHeight = 20,
	HugeAlpha = 1,
	HugeScale = 1.03,
	HugeTimerX = 0,
	HugeTimerY = -120,
	ExpandUpwardsLarge = false,
	FillUpLargeBars = true,
	HugeBarsEnabled = false,
	HugeTimerPoint = "CENTER",
	HugeSort = "Sort",
	-- Misc
	TextColorR = 1,
	TextColorG = 1,
	TextColorB = 1,
	TDecimal = 11,
	FontSize = 10,
	FlashBar = false,
	Spark = true,
	ColorByType = true,
	NoBarFade = false,
	InlineIcons = true,
	IconLeft = true,
	IconRight = false,
	IconLocked = true,
	DynamicColor = true,
	ClickThrough = false,
	DisableRightClick = false,
	KeepBars = true,
	FadeBars = true,
	Texture = "Interface\\AddOns\\DBM-StatusBarTimers\\textures\\default.blp",
	Font = "standardFont",
	FontFlag = "None",
	BarStyle = "NoAnim",
	Skin = ""
}

---@class DBTBar
---@field frame Frame
---@field timer number
---@field totalTime number
---@field moving "move"|"enlarge"|"nextEnlarge"|nil
---@field lastUpdate number
---@field colorType number
---@field keep boolean?
---@field isCooldown boolean?
---@field huge boolean
---@field small boolean?
---@field fade boolean?
---@field dummy boolean?
---@field dummyEnlarge boolean? Hack used by GUI for large preview bars
---@field alwaysHuge boolean?
---@field minTimer number|nil
---@field varianceDuration number
---@field hasVariance boolean
local barPrototype = {}
local unusedBarObjects, barIsAnimating = {}, false
local smallBars, largeBars = {}, {}

local smallBarsAnchor, largeBarsAnchor = CreateFrame("Frame", nil, UIParent), CreateFrame("Frame", nil, UIParent)
smallBarsAnchor:SetSize(1, 1)
smallBarsAnchor:SetPoint("TOPRIGHT", 223, -260)
smallBarsAnchor:SetClampedToScreen(true)
smallBarsAnchor:SetMovable(true)
smallBarsAnchor:Show()
largeBarsAnchor:SetSize(1, 1)
largeBarsAnchor:SetPoint("CENTER", 0, -120)
largeBarsAnchor:SetClampedToScreen(true)
largeBarsAnchor:SetMovable(true)
largeBarsAnchor:Show()

local ipairs, pairs, next, type, setmetatable, tinsert, tsort, GetTime = ipairs, pairs, next, type, setmetatable, table.insert, table.sort, GetTime
local UIParent = UIParent

function DBT:AddDefaultOptions(t1, t2)
	for i, v in pairs(t2) do
		if t1[i] == nil then
			t1[i] = v
		elseif type(v) == "table" and type(t1[i]) == "table" then
			self:AddDefaultOptions(t1[i], v)
		end
	end
end

do
	local CreateFrame, IsShiftKeyDown = CreateFrame, IsShiftKeyDown


	local function onUpdate(self)
		if self.obj then
			self.obj.curTime = GetTime()
			self.obj.delta = self.obj.curTime - self.obj.lastUpdate
			--Frequent updates when any bar is moving or large bars so they don't look janky. More efficient bars when non animating small bars
			if (barIsAnimating or self.obj.enlarged) and self.obj.delta >= 0.01 or self.obj.delta >= 0.04 then
				self.obj.lastUpdate = self.obj.curTime
				self.obj:Update(self.obj.delta)
			end
		end
	end

	local function onMouseDown(self, btn)
		if self.obj and btn == "LeftButton" and DBT.movable then
			if self.obj.enlarged then
				largeBarsAnchor:StartMoving()
			else
				smallBarsAnchor:StartMoving()
			end
		end
	end

	local function onMouseUp(self, btn)
		if self.obj then
			smallBarsAnchor:StopMovingOrSizing()
			largeBarsAnchor:StopMovingOrSizing()
			DBT:SavePosition()
			if btn == "RightButton" and not DBT.Options.DisableRightClick then
				self.obj:Cancel()
			elseif btn == "LeftButton" and IsShiftKeyDown() then
				self.obj:Announce()
			end
		end
	end

	local function onHide()
		smallBarsAnchor:StopMovingOrSizing()
		largeBarsAnchor:StopMovingOrSizing()
	end

	local fCounter = 1

	---@param self DBT
	local function createBarFrame(self)
		---@class DBTBarFrame: Frame
		local frame = CreateFrame("Frame", "DBT_Bar_" .. fCounter, smallBarsAnchor)
		frame:SetSize(195, 20)
		frame:SetScript("OnUpdate", onUpdate)
		DBM.Test:RegisterTimeWarpFrame(frame)
		frame:SetScript("OnMouseDown", onMouseDown)
		frame:SetScript("OnMouseUp", onMouseUp)
		frame:SetScript("OnHide", onHide)
		---@type DBTBar
		frame.obj = nil
		local bar = CreateFrame("StatusBar", "$parentBar", frame)
		bar:SetPoint("CENTER", frame, "CENTER")
		bar:SetSize(195, 20)
		bar:SetMinMaxValues(0, 1)
		bar:SetStatusBarTexture(self.Options.Texture)
		bar:SetStatusBarColor(1, 0.7, 0)
		local background = bar:CreateTexture(nil, "BACKGROUND")
		background:SetAllPoints()
		background:SetColorTexture(0, 0, 0, 0.3)
		local spark = bar:CreateTexture("$parentSpark", "OVERLAY")
		spark:SetPoint("CENTER", bar, "CENTER")
		spark:SetSize(32, 64)
		spark:SetTexture("Interface\\AddOns\\DBM-StatusBarTimers\\textures\\Spark.blp")
		spark:SetBlendMode("ADD")
		local timer = bar:CreateFontString("$parentTimer", "OVERLAY", "GameFontHighlightSmall")
		timer:SetPoint("RIGHT", bar, "RIGHT", -1, 0.5)
		local name = bar:CreateFontString("$parentName", "OVERLAY", "GameFontHighlightSmall")
		name:SetPoint("LEFT", bar, "LEFT", 7, 0.5)
		name:SetPoint("RIGHT", timer, "LEFT", -7, 0)
		name:SetWordWrap(false)
		name:SetJustifyH("LEFT")
		local icon1 = bar:CreateTexture("$parentIcon1", "OVERLAY")
		icon1:SetPoint("RIGHT", bar, "LEFT")
		icon1:SetSize(20, 20)
		local icon2 = bar:CreateTexture("$parentIcon2", "OVERLAY")
		icon2:SetPoint("LEFT", bar, "RIGHT")
		icon2:SetSize(20, 20)
		local varianceTex = bar:CreateTexture("$parentVariance", "OVERLAY")
		varianceTex:SetPoint("RIGHT", bar, "RIGHT")
		varianceTex:SetPoint("TOPRIGHT", bar, "TOPRIGHT")
		varianceTex:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT")
		varianceTex:SetTexture(self.Options.VarianceTexture)
		varianceTex:SetWidth(20)
		varianceTex:SetBlendMode("ADD")
		varianceTex:SetVertexColor(1, 1, 1, 0.5)

		local varianceTexBorder = bar:CreateTexture("$parentVarianceBorder", "OVERLAY")
		varianceTexBorder:SetVertexColor(0, 0, 0, 1)
		varianceTexBorder:SetPoint("TOPLEFT", varianceTex, "TOPLEFT", -1, 0)
		varianceTexBorder:SetPoint("BOTTOMLEFT", varianceTex, "BOTTOMLEFT", -1, 0)
		varianceTexBorder:SetTexture("Interface\\Buttons\\WHITE8X8")
		varianceTexBorder:SetWidth(1)
		fCounter = fCounter + 1

		frame:EnableMouse(not self.Options.ClickThrough or self.movable)
		return frame
	end

	local mt = {__index = barPrototype}

	---@param timer string|number
	local function parseTimer(timer)
		if not timer then return end

		if type(timer) == "number" then
			if timer <= 0 then return end

			return timer -- Normal number timer, no variance
		end

		-- Check for variance format like "v30.5-40" or "dv30.5-40"
		if type(timer) == "string" then
			-- ^v matches starting character d (optional) or v
			-- (%d+%.?%d*) matches any number of digits with optional decimal
			-- %- matches literal character "-"
			-- (%d+%.?%d*)$ matches any number of digits with optional decimal, at the end of the string
			if not timer:match("^v(%d+%.?%d*)%-(%d+%.?%d*)$") then return end

			local minTimer, maxTimer = timer:match("v(%d+%.?%d*)%-(%d+%.?%d*)")
			minTimer, maxTimer = tonumber(minTimer), tonumber(maxTimer)
			local varianceDuration = maxTimer - minTimer

			return maxTimer, minTimer, varianceDuration  -- maximum possible timer from the variance window, minimum..., variance duration
		end

		return -- Invalid input
	end

	function DBT:CreateBar(timer, id, icon, huge, small, color, isDummy, colorType, inlineIcon, keep, fade, countdown, countdownMax, isCooldown)
		local varianceMaxTimer, varianceMinTimer, varianceDuration
		varianceMaxTimer, varianceMinTimer, varianceDuration = parseTimer(timer) -- either normal number or with variance
		if self.Options.VarianceEnabled then
			timer = varianceMaxTimer
		else
			timer = varianceMinTimer or varianceMaxTimer -- varianceMaxTimer here could be just normal number timer, so check for varianceMinTimer, which only exists if it's a variant timer
		end
		if not timer or (self.numBars >= 15 and not isDummy) then
			return
		end
		-- Most efficient place to block it, nil colorType instead of checking option every update
		if not self.Options.ColorByType or not colorType then
			colorType = 0
		end
		local newBar = self:GetBar(id)
		if newBar then -- Update an existing bar
			newBar.lastUpdate = GetTime()
			newBar.huge = huge or nil
			newBar.paused = nil
			newBar.minTimer = varianceMinTimer or nil
			newBar.varianceDuration = varianceDuration or 0
			newBar.hasVariance = varianceMinTimer and true or false
			newBar:SetTimer(timer) -- This can kill the timer and the timer methods don't like dead timers
			newBar.keep = keep -- keep this after SetTimer, not before, otherwise the bar will turn dead if Debug mode enabled and switching from var to non-var, since Update(0) will Cancel the timer
			if newBar.dead then
				return
			end
			newBar:SetElapsed(0)
			if newBar.dead then
				return
			end
			newBar:ApplyStyle()
			newBar:SetText(id)
			newBar:SetIcon(icon)
		else -- Create a new bar
			newBar = next(unusedBarObjects)
			if newBar then
				newBar.lastUpdate = GetTime()
				unusedBarObjects[newBar] = nil
				newBar.dead = nil -- Resurrected it :)
				newBar.id = id
				newBar.timer = timer
				newBar.totalTime = timer
				newBar.moving = nil
				newBar.enlarged = nil
				newBar.fadingIn = 0
				newBar.small = small
				newBar.color = color
				newBar.colorType = colorType
				newBar.flashing = nil
				newBar.inlineIcon = inlineIcon
				newBar.keep = keep
				newBar.fade = fade
				newBar.countdown = countdown
				newBar.countdownMax = countdownMax
				newBar.isCooldown = isCooldown
				newBar.alwaysHuge = nil
				newBar.minTimer = varianceMinTimer or nil
				newBar.varianceDuration = varianceDuration or 0
				newBar.hasVariance = varianceMinTimer and true or false
			else -- Duplicate code ;(
				local newFrame = createBarFrame(self)
				---@class DBTBar
				newBar = setmetatable({
					frame = newFrame,
					id = id,
					timer = timer,
					totalTime = timer,
					owner = self,
					moving = nil,
					enlarged = nil,
					alwaysHuge = nil,
					fadingIn = 0,
					small = small,
					color = color,
					flashing = nil,
					colorType = colorType,
					inlineIcon = inlineIcon,
					keep = keep,
					fade = fade,
					countdown = countdown,
					countdownMax = countdownMax,
					isCooldown = isCooldown,
					minTimer = varianceMinTimer or nil,
					varianceDuration = varianceDuration or 0,
					hasVariance = varianceMinTimer and true or false,
					lastUpdate = GetTime(),
				}, mt)
				newFrame.obj = newBar
			end
			newBar.callback = nil
			self.numBars = self.numBars + 1
			-- Bars that start huge by config (important color type or huge flag)
			-- These are never resized to small
			if ((colorType and colorType >= 7 and self.Options.Bar7ForceLarge) or huge) and self.Options.HugeBarsEnabled then
				newBar.alwaysHuge = true
			end
			-- Bars that start huge either by config (above) or because they happen to be short timers
			if (newBar.alwaysHuge or (varianceMinTimer or timer) <= (self.Options.EnlargeBarTime or 11)) and self.Options.HugeBarsEnabled then
				newBar.enlarged = true
				newBar.huge = true
				tinsert(largeBars, newBar)
			else
				newBar.huge = nil
				tinsert(smallBars, newBar)
			end
			newBar:SetText(id)
			newBar:SetIcon(icon)
			self.bars[newBar] = true
			self:UpdateBars(true)
			newBar:ApplyStyle()
			newBar:Update(0)
		end
		return newBar
	end
end

do
	local gsub = string.gsub

	local function fixElv(optionName)
		local value = DBT.Options[optionName]
		if type(value) ~= "string" then
			return
		end
		if value:lower():find("interface\\addons\\elvui\\media\\") then
			DBT.Options[optionName] = gsub(value, gsub("Interface\\AddOns\\ElvUI\\Media\\", "(%a)", function(v)
				return "[" .. v:upper() .. v:lower() .. "]"
			end), "Interface\\AddOns\\ElvUI\\Core\\Media\\")
		end
	end

	function DBT:LoadOptions(id)
		if id == "DBM" then
			DBM.Test:RegisterLocalHook("GetTime", function(val)
				local old = GetTime
				GetTime = val
				return old
			end)
		end
		if not DBT_AllPersistentOptions then
			DBT_AllPersistentOptions = {}
		end
		local DBM_UsedProfile = DBM_UsedProfile or "Default"
		if not DBT_AllPersistentOptions[DBM_UsedProfile] then
			DBT_AllPersistentOptions[DBM_UsedProfile] = {}
		end
		DBT_AllPersistentOptions[DBM_UsedProfile][id] = DBT_AllPersistentOptions[DBM_UsedProfile][id] or {}
		self:AddDefaultOptions(DBT_AllPersistentOptions[DBM_UsedProfile][id], self.DefaultOptions)
		self.Options = DBT_AllPersistentOptions[DBM_UsedProfile][id]
		self:Rearrange()
		-- Fix font if it's nil or set to any of standard font values
		if not self.Options.Font or (self.Options.Font == "Fonts\\2002.TTF" or self.Options.Font == "Fonts\\ARKai_T.ttf" or self.Options.Font == "Fonts\\blei00d.TTF" or self.Options.Font == "Fonts\\FRIZQT___CYR.TTF" or self.Options.Font == "Fonts\\FRIZQT__.TTF") then
			self.Options.Font = self.DefaultOptions.Font
		end
		-- Migrate texture from default skin to internal
		if self.Options.Texture == "Interface\\AddOns\\DBM-DefaultSkin\\textures\\default.blp" then
			self.Options.Texture = self.DefaultOptions.Texture
		end
		-- Migrate sort
		if self.Options.Sort == true then
			self.Options.Sort = "Sort"
		end
		-- Migrate ElvUI changes
		fixElv("Texture")
		fixElv("Font")
	end

	function DBT:CreateProfile(id)
		if not id or id == "" or id:find(" ") then
			DBM:AddMsg(DBM_CORE_L.PROFILE_CREATE_ERROR)
			return
		end
		local DBM_UsedProfile = DBM_UsedProfile or "Default"
		if not DBT_AllPersistentOptions then
			DBT_AllPersistentOptions = {}
		end
		if not DBT_AllPersistentOptions[DBM_UsedProfile] then
			DBT_AllPersistentOptions[DBM_UsedProfile] = {}
		end
		if DBT_AllPersistentOptions[DBM_UsedProfile][id] then
			DBM:AddMsg(DBM_CORE_L.PROFILE_CREATE_ERROR_D:format(id))
			return
		end
		DBT_AllPersistentOptions[DBM_UsedProfile][id] = DBT_AllPersistentOptions[DBM_UsedProfile][id] or {}
		self:AddDefaultOptions(DBT_AllPersistentOptions[DBM_UsedProfile][id], self.DefaultOptions)
		self.Options = DBT_AllPersistentOptions[DBM_UsedProfile][id]
		self:Rearrange()
		DBM:AddMsg(DBM_CORE_L.PROFILE_CREATED:format(id))
	end

	function DBT:ApplyProfile(id, hasPrinted)
		if not DBT_AllPersistentOptions then
			DBT_AllPersistentOptions = {}
		end
		local DBM_UsedProfile = DBM_UsedProfile or "Default"
		if not id or not DBT_AllPersistentOptions[DBM_UsedProfile] or not DBT_AllPersistentOptions[DBM_UsedProfile][id] then
			DBM:AddMsg(DBM_CORE_L.PROFILE_APPLY_ERROR:format(id or DBM_COMMON_L.UNKNOWN))
			return
		end
		self:AddDefaultOptions(DBT_AllPersistentOptions[DBM_UsedProfile][id], self.DefaultOptions)
		self.Options = DBT_AllPersistentOptions[DBM_UsedProfile][id]
		self:Rearrange()
		if not hasPrinted then
			DBM:AddMsg(DBM_CORE_L.PROFILE_APPLIED:format(id))
		end
	end

	function DBT:CopyProfile(name, id, hasPrinted)
		if not DBT_AllPersistentOptions then
			DBT_AllPersistentOptions = {}
		end
		local DBM_UsedProfile = DBM_UsedProfile or "Default"
		if not hasPrinted then
			if not name or not DBT_AllPersistentOptions[name] then
				DBM:AddMsg(DBM_CORE_L.PROFILE_COPY_ERROR:format(name or DBM_COMMON_L.UNKNOWN))
				return
			elseif name == DBM_UsedProfile then
				DBM:AddMsg(DBM_CORE_L.PROFILE_COPY_ERROR_SELF)
				return
			end
		end
		if not DBT_AllPersistentOptions[DBM_UsedProfile] then
			DBT_AllPersistentOptions[DBM_UsedProfile] = {}
		end
		if not DBT_AllPersistentOptions[name] then
			DBT_AllPersistentOptions[name] = {}
		end
		DBT_AllPersistentOptions[DBM_UsedProfile][id] = CopyTable(DBT_AllPersistentOptions[name][id]) or {}
		self:AddDefaultOptions(DBT_AllPersistentOptions[DBM_UsedProfile][id], self.DefaultOptions)
		self.Options = DBT_AllPersistentOptions[DBM_UsedProfile][id]
		self:Rearrange()
		if not hasPrinted then
			DBM:AddMsg(DBM_CORE_L.PROFILE_COPIED:format(name))
		end
	end

	function DBT:DeleteProfile(name, id)
		if not DBT_AllPersistentOptions then
			DBT_AllPersistentOptions = {}
		end
		if name == "Default" or not DBT_AllPersistentOptions[name] then
			return
		end
		DBT_AllPersistentOptions[name] = nil
		local DBM_UsedProfile = DBM_UsedProfile or "Default"
		self.Options = DBT_AllPersistentOptions[DBM_UsedProfile][id]
		self:Rearrange()
	end

	function DBT:Rearrange()
		smallBarsAnchor:ClearAllPoints()
		largeBarsAnchor:ClearAllPoints()
		smallBarsAnchor:SetPoint(self.Options.TimerPoint, UIParent, self.Options.TimerPoint, self.Options.TimerX, self.Options.TimerY)
		largeBarsAnchor:SetPoint(self.Options.HugeTimerPoint, UIParent, self.Options.HugeTimerPoint, self.Options.HugeTimerX, self.Options.HugeTimerY)
		self:ApplyStyle()
	end
end

do
	local oldInfoFrameLocked, oldRangeFrameLocked

	local function updateClickThrough(self, newValue)
		if not self.movable then
			for bar in self:GetBarIterator() do
				if not bar.dummy then
					bar.frame:EnableMouse(not newValue)
				end
			end
		end
	end

	---@param self DBT
	local function moveEnd(self)
		updateClickThrough(self, self.Options.ClickThrough)
		self.movable = false
		DBM.Options.InfoFrameLocked = oldInfoFrameLocked
		DBM.InfoFrame:Hide()
		DBM.Options.RangeFrameLocked = oldRangeFrameLocked
		DBM.RangeCheck:Hide(true)
	end

	function DBT:ShowMovableBar(small, large)
		if small or small == nil then
			self:CreateBar(20, "Move1", 136116, nil, true):SetText(DBM_CORE_L.MOVABLE_BAR)
		end
		if large or large == nil then
			self:CreateBar(20, "Move2", 136116, true):SetText(DBM_CORE_L.MOVABLE_BAR)
		end
		updateClickThrough(self, false)
		self.movable = true
		DBM:Unschedule(moveEnd, self)
		DBM:Schedule(20, moveEnd, self)
		oldInfoFrameLocked = DBM.Options.InfoFrameLocked
		DBM.Options.InfoFrameLocked = false
		DBM.InfoFrame:Show(5, "test")
		oldRangeFrameLocked = DBM.Options.RangeFrameLocked
		DBM.Options.RangeFrameLocked = false
		DBM.RangeCheck:Show(nil, nil, true)
	end

	function DBT:SetOption(option, value, noUpdate)
		if option == "ExpandUpwards" or option == "ExpandUpwardsLarge" or option == "BarYOffset" or option == "BarXOffset" or option == "HugeBarYOffset" or option == "HugeBarXOffset" then
			for bar in self:GetBarIterator() do
				if not bar.dummy then
					if bar.moving == "enlarge" then
						bar.enlarged = true
						bar.moving = nil
						tinsert(largeBars, bar)
					else
						bar.moving = nil
					end
				end
			end
		elseif option == "ClickThrough" then
			updateClickThrough(self, value)
		end
		self.Options[option] = value
		if not noUpdate then
			self:UpdateBars(true)
			self:ApplyStyle()
		end
	end
end

do
	local dummyBars = 0
	local function dummyCancel(self)
		self.timer = self.totalTime
		self:Update(0)
		_G[self.frame:GetName() .. "BarSpark"]:SetAlpha(1)
	end

	function DBT:CreateDummyBar(colorType, inlineIcon, text)
		dummyBars = dummyBars + 1
		local dummy = self:CreateBar("v20-25", "dummy" .. dummyBars, 136116, nil, true, nil, true, colorType, inlineIcon) -- "Interface\\Icons\\Spell_Nature_WispSplode"
		if not dummy then
			error("failed to create dummy bar")
		end
		dummy:SetText(text or "Dummy", inlineIcon)
		dummy:Cancel()
		self.bars[dummy] = true
		unusedBarObjects[dummy] = nil
		dummy.frame:SetParent(UIParent)
		dummy.frame:ClearAllPoints()
		dummy.frame:SetScript("OnUpdate", nil)
		dummy.Cancel = dummyCancel
		dummy:ApplyStyle()
		dummy.dummy = true
		return dummy
	end
end

function DBT:GetBarIterator()
	if not self.bars then
		DBM:Debug("GetBarIterator failed for unknown reasons")
		return
	end
	return pairs(self.bars)
end

---@return DBTBar?
function DBT:GetBar(id)
	for bar in self:GetBarIterator() do
		if id == bar.id then
			return bar
		end
	end
end

function DBT:CancelBar(id)
	for bar in self:GetBarIterator() do
		if id == bar.id then
			bar:Cancel()
			return true
		end
	end
	return false
end

function DBT:CancelAllBars()
	for bar in self:GetBarIterator() do
		bar:Cancel()
	end
end

function DBT:ResetBarVariance(bar)
	if bar.hasVariance then
		bar.minTimer = nil
		bar.varianceDuration = 0
		bar.hasVariance = false
		bar:ApplyStyle() -- Running this here since this is skipped if bar was already enlarged. REVIEW! Will run twice otherwise
	end
end

function DBT:UpdateBar(id, elapsed, totalTime)
	for bar in self:GetBarIterator() do
		if id == bar.id then
			if type(totalTime) == "number" then
				DBT:ResetBarVariance(bar)
			end
			bar:SetTimer(totalTime or bar.totalTime)
			bar:SetElapsed(elapsed or bar.totalTime - bar.timer)
			return true
		end
	end
	return false
end

function DBT:SetAnnounceHook(f)
	self.announceHook = f
end

function DBT:UpdateBars(sortBars, forceUpdate)
	-- Throttle updates unless forced
	local now = GetTime and GetTime() or 0
	if not forceUpdate and (now - self.lastUpdateTime) < self.updateThrottle then
		return
	end
	self.lastUpdateTime = now
	
	if sortBars and self.Options.Sort ~= "None" then
		tsort(largeBars, function(x, y)
			if self.Options.HugeSort == "Invert" then
				return x.timer < y.timer
			end
			return x.timer > y.timer
		end)
		tsort(smallBars, function(x, y)
			if self.Options.Sort == "Invert" then
				return x.timer < y.timer
			end
			return x.timer > y.timer
		end)
	end
	for i, bar in ipairs(largeBars) do
		bar.frame:ClearAllPoints()
		bar.frame:SetPoint("TOP", largeBarsAnchor, "TOP", (i - 1) * self.Options.HugeBarXOffset, ((i - 1) * (self.Options.HugeHeight + self.Options.HugeBarYOffset)) * (self.Options.ExpandUpwardsLarge and 1 or -1))
	end
	for i, bar in ipairs(smallBars) do
		bar.frame:ClearAllPoints()
		bar.frame:SetPoint("TOP", smallBarsAnchor, "TOP", (i - 1) * self.Options.BarXOffset, ((i - 1) * (self.Options.Height + self.Options.BarYOffset)) * (self.Options.ExpandUpwards and 1 or -1))
	end
end

function DBT:ApplyStyle()
	for bar in self:GetBarIterator() do
		bar:ApplyStyle()
	end
end

function DBT:SavePosition()
	local point, _, _, x, y = smallBarsAnchor:GetPoint(1)
	self:SetOption("TimerPoint", point)
	self:SetOption("TimerX", x)
	self:SetOption("TimerY", y)
	point, _, _, x, y = largeBarsAnchor:GetPoint(1)
	self:SetOption("HugeTimerPoint", point)
	self:SetOption("HugeTimerX", x)
	self:SetOption("HugeTimerY", y)
end

function DBT:ShowTestBars()
	self:CreateBar(10, "Test 1", 136116) -- "Interface\\Icons\\Spell_Nature_WispSplode"
	self:CreateBar(14, "Test 2", 136116)
	self:CreateBar(20, "Test 3", 136116)
	self:CreateBar(12, "Test 4", 136116)
	self:CreateBar(21.5, "Test 5", 136116)
end

function barPrototype:SetTimer(timer)
	self.totalTime = timer
	self:Update(0)
end

function barPrototype:ResetAnimations(makeBig)
	self:RemoveFromList()
	self.moving = nil
	if DBT.Options.HugeBarsEnabled and (makeBig or self.alwaysHuge) then
		self.enlarged = true
		tinsert(largeBars, self)
	else
		self.enlarged = nil
		tinsert(smallBars, self)
	end
	self:ApplyStyle()
end

function barPrototype:Pause()
	self.flashing = nil
	self.ftimer = nil
	self:Update(0)
	self.paused = true
	self:ResetAnimations() -- Forces paused bar into small bars so they don't clutter huge bars anchor
	DBT:UpdateBars(true, true)
end

function barPrototype:Resume()
	self.paused = nil
	DBT:UpdateBars(true, true)
end

function barPrototype:SetElapsed(elapsed)
	self.timer = self.totalTime - elapsed
	local enlargeTime = DBT.Options.EnlargeBarTime or 11
	-- Bar was large, or moving (animating from the small to large bar anchor) at time this was called
	-- Force reset animation and move it back to the small anchor since time was added to bar
	if (self.enlarged or self.moving == "enlarge") and self.timer > enlargeTime then
		self:ResetAnimations()
	-- Bar was small, or moving from small to large when time was removed
	-- Also force reset animation but this time move it from small anchor into large one
	elseif not self.paused and (not self.enlarged or self.moving == "enlarge") and self.timer <= enlargeTime then
		self:ResetAnimations(true)
	end
	self:Update(0)
	DBT:UpdateBars(true, true)
end

function barPrototype:SetText(text, inlineIcon)
	if not DBT.Options.InlineIcons then
		inlineIcon = nil
	end
	-- Force change color type 7 to custom inlineIcon
	_G[self.frame:GetName().."BarName"]:SetText(((self.colorType and self.colorType >= 7 and DBT.Options.Bar7CustomInline) and DBM_COMMON_L.IMPORTANT_ICON or inlineIcon or "") .. text)
end

function barPrototype:SetIcon(icon)
	local frame_name = self.frame:GetName()
	_G[frame_name.."BarIcon1"]:SetTexture(icon)
	_G[frame_name.."BarIcon2"]:SetTexture(icon)
end

function barPrototype:SetColor(color)
	-- Fix to allow colors not require the table keys
	if color[1] and not color.r then
		color = {
			r = color[1],
			g = color[2],
			b = color[3]
		}
	end
	self.color = color
	local frame_name = self.frame:GetName()
	_G[frame_name .. "Bar"]:SetStatusBarColor(color.r, color.g, color.b)
	_G[frame_name .. "BarSpark"]:SetVertexColor(color.r, color.g, color.b)
end

function barPrototype:SetVariance()
	local frame_name = self.frame:GetName()
	local varianceTex = _G[frame_name.."BarVariance"]
	local varianceTexBorder = _G[frame_name.."BarVarianceBorder"]
	if DBT.Options.VarianceEnabled and self.hasVariance then
		local varianceWidth = self.frame:GetWidth() * (self.varianceDuration / self.totalTime)
		varianceTex:SetWidth(varianceWidth)

		-- change SetPoints based on fillUpBars
		local bar = _G[frame_name.."Bar"]
		varianceTex:ClearAllPoints()
		varianceTexBorder:ClearAllPoints()
		local isEnlarged = self.enlarged and not self.paused
		local fillUpBars = isEnlarged and DBT.Options.FillUpLargeBars or not isEnlarged and DBT.Options.FillUpBars

		if fillUpBars then
			varianceTex:SetPoint("RIGHT", bar, "RIGHT")
			varianceTex:SetPoint("TOPRIGHT", bar, "TOPRIGHT")
			varianceTex:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT")
			varianceTexBorder:SetPoint("TOPLEFT", varianceTex, "TOPLEFT", -1, 0)
			varianceTexBorder:SetPoint("BOTTOMLEFT", varianceTex, "BOTTOMLEFT", -1, 0)
		else
			varianceTex:SetPoint("LEFT", bar, "LEFT")
			varianceTex:SetPoint("TOPLEFT", bar, "TOPLEFT")
			varianceTex:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT")
			varianceTexBorder:SetPoint("TOPRIGHT", varianceTex, "TOPRIGHT", 1, 0)
			varianceTexBorder:SetPoint("BOTTOMRIGHT", varianceTex, "BOTTOMRIGHT", 1, 0)
		end

		varianceTex:SetVertexColor(DBT.Options.VarColorR, DBT.Options.VarColorG, DBT.Options.VarColorB, DBT.Options.VarianceAlpha)
		varianceTex:SetTexture(DBT.Options.VarianceTexture)

		varianceTex:Show()
		varianceTexBorder:Show()
	else
		varianceTex:Hide()
		varianceTexBorder:Hide()
	end
end

local colorVariables = {
	[0] = "",--Generic
	[1] = "A",--Add
	[2] = "AE",--AoE
	[3] = "D",--Debuff/Targeted attack
	[4] = "I",--Interrupt
	[5] = "R",--Role
	[6] = "P",--Phase
	[7] = "UI",--Important 1
	[8] = "I2",--Important 2
}

function DBT:GetColorForType(colorType)
	if not colorVariables[colorType] then
		return nil
	end
	local colorVar = colorVariables[colorType]
	return DBT.Options["StartColor"..colorVar.."R"], DBT.Options["StartColor"..colorVar.."G"], DBT.Options["StartColor"..colorVar.."B"]
end

local function stringFromTimer(t)
	if t <= DBT.Options.TDecimal then
		return ("%.1f"):format(t)
	elseif t <= 60 then
		return ("%d"):format(t)
	else
		return ("%d:%0.2d"):format(t / 60, math.fmod(t, 60))
	end
end

function barPrototype:Update(elapsed)
	local frame = self.frame
	local frame_name = frame:GetName()
	local bar = _G[frame_name .. "Bar"]
	local spark = _G[frame_name .. "BarSpark"]
	local timer = _G[frame_name .. "BarTimer"]
	local paused = self.paused
	self.timer = self.timer - (paused and 0 or elapsed)
	local timerValue = self.timer
	local timerLowestValueFromVariance = self.hasVariance and self.varianceDuration and timerValue - self.varianceDuration or timerValue
	local totaltimeValue = self.totalTime
	local barOptions = DBT.Options
	local currentStyle = barOptions.BarStyle
	local sparkEnabled = barOptions.Spark
	local isMoving = self.moving
	local isFadingIn = self.fadingIn
	local colorCount = self.colorType or 0
	local enlargeEnabled = DBT.Options.HugeBarsEnabled
	local enlargeHack = self.dummyEnlarge or colorCount >= 7 and barOptions.Bar7ForceLarge and enlargeEnabled
	local enlargeTime = barOptions.EnlargeBarTime or 11
	local isEnlarged = self.enlarged and not paused
	local fillUpBars = isEnlarged and barOptions.FillUpLargeBars or not isEnlarged and barOptions.FillUpBars
	local ExpandUpwards = isEnlarged and barOptions.ExpandUpwardsLarge or not isEnlarged and barOptions.ExpandUpwards
	local varianceEnabled = barOptions.VarianceEnabled
--	local varianceBehaviorZeroMax = varianceEnabled self.hasVariance and barOptions.VarianceBehavior == "ZeroAtMaxTimer"
	local varianceBehaviorNeg = varianceEnabled and self.hasVariance and barOptions.VarianceBehavior == "ZeroAtMinTimerAndNeg"
	local timerCorrectedNegative = varianceBehaviorNeg and timerLowestValueFromVariance or timerValue
	local r, g, b
	if barOptions.DynamicColor and not self.color then
		local colorVar = colorVariables[colorCount]
		if barOptions.NoBarFade then
			r = isEnlarged and barOptions["EndColor"..colorVar.."R"] or barOptions["StartColor"..colorVar.."R"]
			g = isEnlarged and barOptions["EndColor"..colorVar.."G"] or barOptions["StartColor"..colorVar.."G"]
			b = isEnlarged and barOptions["EndColor"..colorVar.."B"] or barOptions["StartColor"..colorVar.."B"]
		else
			r = barOptions["StartColor"..colorVar.."R"] + (barOptions["EndColor"..colorVar.."R"] - barOptions["StartColor"..colorVar.."R"]) * (1 - timerValue/totaltimeValue)
			g = barOptions["StartColor"..colorVar.."G"] + (barOptions["EndColor"..colorVar.."G"] - barOptions["StartColor"..colorVar.."G"]) * (1 - timerValue/totaltimeValue)
			b = barOptions["StartColor"..colorVar.."B"] + (barOptions["EndColor"..colorVar.."B"] - barOptions["StartColor"..colorVar.."B"]) * (1 - timerValue/totaltimeValue)
		end
		if not enlargeEnabled and timerValue > enlargeTime then
			r, g, b = barOptions.DesaturateValue * r, barOptions.DesaturateValue * g, barOptions.DesaturateValue * b
		end
		bar:SetStatusBarColor(r, g, b)
		if sparkEnabled then
			spark:SetVertexColor(r, g, b)
		end
	elseif self.color then
		r = self.color.r
		g = self.color.g
		b = self.color.b
	end
	if timerValue <= 0 and not (barOptions.KeepBars and self.keep) and not (varianceBehaviorNeg and self.varianceDuration and (timerValue < -self.varianceDuration)) then
		return self:Cancel()
	else
		if fillUpBars then
			if currentStyle == "NoAnim" and timerValue <= enlargeTime and not enlargeHack and not self.varianceDuration then
				-- Simple/NoAnim Bar mimics BW in creating a new bar on large bar anchor instead of just moving the small bar
				bar:SetValue(1 - timerValue/(totaltimeValue < enlargeTime and totaltimeValue or enlargeTime))
			else
				bar:SetValue(1 - timerValue/totaltimeValue)
			end
		else
			if currentStyle == "NoAnim" and timerValue <= enlargeTime and not enlargeHack and not self.varianceDuration then
				-- Simple/NoAnim Bar mimics BW in creating a new bar on large bar anchor instead of just moving the small bar
				bar:SetValue(timerValue/(totaltimeValue < enlargeTime and totaltimeValue or enlargeTime))
			else
				bar:SetValue(timerValue/totaltimeValue)
			end
		end
		if self.isCooldown then--inprecise CD bar, signify it with ~ in timer
			timer:SetText("~" .. stringFromTimer(timerCorrectedNegative))
		else
			timer:SetText(stringFromTimer(timerCorrectedNegative))
		end
	end
	if isFadingIn and isFadingIn < 0.5 and currentStyle ~= "NoAnim" then
		self.fadingIn = isFadingIn + elapsed
		if (isEnlarged and barOptions.HugeAlpha == 1) or barOptions.Alpha == 1 then -- Only fade in if alpha is 1, otherwise we already have a faded bar
			frame:SetAlpha((isFadingIn) / 0.5)
		end
	elseif isFadingIn then
		self.fadingIn = nil
	end
	if timerValue <= 7.75 and not self.flashing and barOptions.FlashBar and not paused then
		self.flashing = true
		self.ftimer = 0
	elseif self.flashing and timerValue > 7.75 then
		self.flashing = nil
		self.ftimer = nil
		bar:SetStatusBarColor(r, g, b, 1)
		if sparkEnabled then
			spark:SetAlpha(1)
		end
	end
	if sparkEnabled then
		spark:ClearAllPoints()
		spark:SetSize(12, barOptions[isEnlarged and 'HugeHeight' or 'Height'] * 3)
		spark:SetPoint("CENTER", bar, "LEFT", bar:GetValue() * bar:GetWidth(), -1)
	else
		spark:SetAlpha(0)
	end
	if self.flashing then
		local ftime = self.ftimer % 1.25
		if ftime >= 0.5 then
			bar:SetStatusBarColor(r, g, b, 1)
			if sparkEnabled then
				spark:SetAlpha(1)
			end
		elseif ftime >= 0.25 then
			bar:SetStatusBarColor(r, g, b, 1 - (0.5 - ftime) / 0.25)
			if sparkEnabled then
				spark:SetAlpha(1 - (0.5 - ftime) / 0.25)
			end
		else
			bar:SetStatusBarColor(r, g, b, 1 - (ftime / 0.25))
			if sparkEnabled then
				spark:SetAlpha(1 - (ftime / 0.25))
			end
		end
		self.ftimer = self.ftimer + elapsed
	end
	local melapsed = self.moveElapsed
	if isMoving == "move" and melapsed <= 0.5 then
		barIsAnimating = true
		self.moveElapsed = melapsed + elapsed
		local newX = self.moveOffsetX + (barOptions[isEnlarged and "HugeBarXOffset" or "BarXOffset"] - self.moveOffsetX) * (melapsed / 0.5)
		local newY
		if ExpandUpwards then
			newY = self.moveOffsetY + (barOptions[isEnlarged and "HugeBarYOffset" or "BarYOffset"] - self.moveOffsetY) * (melapsed / 0.5)
		else
			newY = self.moveOffsetY + (-barOptions[isEnlarged and "HugeBarYOffset" or "BarYOffset"] - self.moveOffsetY) * (melapsed / 0.5)
		end
		frame:ClearAllPoints()
		frame:SetPoint(self.movePoint, self.moveAnchor, self.movePoint, newX, newY)
	elseif isMoving == "move" then
		barIsAnimating = false
		self.moving = nil
		isMoving = nil
	elseif isMoving == "enlarge" and melapsed <= 1 then
		barIsAnimating = true
		self:AnimateEnlarge(elapsed)
	elseif isMoving == "enlarge" then
		barIsAnimating = false
		self.moving = nil
		isMoving = nil
		self.enlarged = true
		isEnlarged = true
		tinsert(largeBars, self)
		self:ApplyStyle()
		DBT:UpdateBars(true, true)
	elseif isMoving == "nextEnlarge" then
		barIsAnimating = false
		self.moving = nil
		isMoving = nil
		self.enlarged = true
		isEnlarged = true
		tinsert(largeBars, self)
		self:ApplyStyle()
		DBT:UpdateBars(true, true)
	end
	if not paused and ((barOptions.VarianceEnabled and timerLowestValueFromVariance or timerValue) <= enlargeTime) and not self.small and not isEnlarged and isMoving ~= "enlarge" and enlargeEnabled then
		self:RemoveFromList()
		self:Enlarge()
		DBT:UpdateBars(true, true)
	end
	if self.callback then
		self:callback("OnUpdate", elapsed, timerValue, totaltimeValue)
	end
end

function barPrototype:RemoveFromList()
	if self.moving ~= "enlarge" then
		tDeleteItem(self.enlarged and largeBars or smallBars, self)
	end
end

function barPrototype:Cancel()
	if self.callback then
		self:callback("Cancel")
	end
	self.frame:Hide()
	self:RemoveFromList()
	DBT.bars[self] = nil
	unusedBarObjects[self] = self
	self.dead = true
	self.paused = nil
	DBT.numBars = DBT.numBars - 1
end

function barPrototype:ApplyStyle()
	local frame = self.frame
	local frame_name = frame:GetName()
	local bar = _G[frame_name.."Bar"]
	local spark = _G[frame_name.."BarSpark"]
	local icon1 = _G[frame_name.."BarIcon1"]
	local icon2 = _G[frame_name.."BarIcon2"]
	local name = _G[frame_name.."BarName"]
	local timer = _G[frame_name.."BarTimer"]
	local barOptions = DBT.Options
	local sparkEnabled = barOptions.Spark
	local enlarged = self.enlarged
	if self.color then
		local barRed, barGreen, barBlue = self.color.r, self.color.g, self.color.b
		bar:SetStatusBarColor(barRed, barGreen, barBlue)
		if sparkEnabled then
			spark:SetVertexColor(barRed, barGreen, barBlue)
		end
	else
		local colorVar = colorVariables[self.colorType or 0]
		local barStartRed = barOptions["StartColor"..colorVar.."R"]
		local barStartGreen = barOptions["StartColor"..colorVar.."G"]
		local barStartBlue = barOptions["StartColor"..colorVar.."B"]
		bar:SetStatusBarColor(barStartRed, barStartGreen, barStartBlue)
		if sparkEnabled then
			spark:SetVertexColor(barStartRed, barStartGreen, barStartBlue)
		end
	end
	local barTextColorRed, barTextColorGreen, barTextColorBlue = barOptions.TextColorR, barOptions.TextColorG, barOptions.TextColorB
	local barHeight, barHugeHeight, barWidth, barHugeWidth = barOptions.Height, barOptions.HugeHeight, barOptions.Width, barOptions.HugeWidth
	name:SetTextColor(barTextColorRed, barTextColorGreen, barTextColorBlue)
	timer:SetTextColor(barTextColorRed, barTextColorGreen, barTextColorBlue)
	if barOptions.IconLeft then icon1:Show() else icon1:Hide() end
	if barOptions.IconRight then icon2:Show() else icon2:Hide() end
	if enlarged then
		bar:SetSize(barHugeWidth, barHugeHeight)
		frame:SetScale(barOptions.HugeScale)
		if barOptions.FadeBars and self.fade then
			frame:SetAlpha(barOptions.HugeAlpha / 2)
		else
			frame:SetAlpha(barOptions.HugeAlpha)
		end
	else
		bar:SetSize(barWidth, barHeight)
		frame:SetScale(barOptions.Scale)
		if barOptions.FadeBars and self.fade and barOptions.Alpha ~= 0 then
			frame:SetAlpha(barOptions.Alpha / 2)
		else
			frame:SetAlpha(barOptions.Alpha)
		end
	end
	if barOptions.IconLocked then
		local sizeHeight = enlarged and barHugeHeight or barHeight
		frame:SetSize(enlarged and barHugeWidth or barWidth, sizeHeight)
		icon1:SetSize(sizeHeight, sizeHeight)
		icon2:SetSize(sizeHeight, sizeHeight)
	end
	self:SetVariance()
	self.frame:Show()
	if sparkEnabled then
		spark:SetAlpha(1)
	end
	local r, g, b = bar:GetStatusBarColor()
	bar:SetStatusBarColor(r, g, b, 1)
	bar:SetStatusBarTexture(barOptions.Texture)
	local barFont = barOptions.Font == "standardFont" and standardFont or barOptions.Font
	local barFontSize, barFontFlag = barOptions.FontSize, barOptions.FontFlag
	name:SetFont(barFont, barFontSize, barFontFlag)
	name:SetPoint("LEFT", bar, "LEFT", 3, 0)
	timer:SetFont(barFont, barFontSize, barFontFlag)
	self:Update(0)
end

do
	local tostring, mfloor = tostring, math.floor
	local ChatEdit_GetActiveWindow, SendChatMessage, IsInGroup, IsInRaid = ChatEdit_GetActiveWindow, C_ChatInfo.SendChatMessage or SendChatMessage, IsInGroup, IsInRaid
	function barPrototype:Announce()
		local msg
		if DBT.announceHook then
			msg = DBT.announceHook(self)
		end
		msg = msg or ("%s %d:%02d"):format(tostring(_G[self.frame:GetName().."BarName"]:GetText()):gsub("|T.-|t", ""), mfloor(self.timer / 60), self.timer % 60)
		local chatWindow = ChatEdit_GetActiveWindow()
		if chatWindow then
			chatWindow:Insert(msg)
		else
			SendChatMessage(msg, (IsInGroup(2) and "INSTANCE_CHAT") or (IsInRaid() and "RAID") or "PARTY")
		end
	end
end

function barPrototype:MoveToNextPosition()
	if self.moving == "enlarge" or not self.frame then
		return
	end
	local newAnchor = self.enlarged and largeBarsAnchor or smallBarsAnchor
	local oldX = self.frame:GetRight() - self.frame:GetWidth()/2
	local oldY = self.frame:GetTop()
	local Enlarged = self.enlarged
	local ExpandUpwards = Enlarged and DBT.Options.ExpandUpwardsLarge or not Enlarged and DBT.Options.ExpandUpwards
	self.frame:ClearAllPoints()
	local xOffset = Enlarged and DBT.Options.HugeBarXOffset or DBT.Options.BarXOffset
	local yOffset = Enlarged and DBT.Options.HugeBarYOffset or DBT.Options.BarYOffset
	if ExpandUpwards then
		self.movePoint = "BOTTOM"
		self.frame:SetPoint("BOTTOM", newAnchor, "BOTTOM", xOffset, yOffset)
	else
		self.movePoint = "TOP"
		self.frame:SetPoint("TOP", newAnchor, "TOP", xOffset, -yOffset)
	end
	local newX = self.frame:GetRight() - self.frame:GetWidth()/2
	local newY = self.frame:GetTop()
	if DBT.Options.BarStyle ~= "NoAnim" then
		self.frame:ClearAllPoints()
		self.frame:SetPoint(self.movePoint, newAnchor, self.movePoint, -(newX - oldX), -(newY - oldY))
		self.moving = "move"
	end
	self.moveAnchor = newAnchor
	self.moveOffsetX = -(newX - oldX)
	self.moveOffsetY = -(newY - oldY)
	self.moveElapsed = 0
end

function barPrototype:Enlarge()
	local frameRight = self.frame:GetRight()
	local frameWidth = self.frame:GetWidth()
	local frameTop = self.frame:GetTop()
	
	-- If frame hasn't been rendered yet, use default positions
	if not frameRight or not frameWidth or not frameTop then
		-- Use the anchor point as fallback
		local point, relativeTo, relativePoint, xOfs, yOfs = self.frame:GetPoint()
		if point then
			-- Set some default values or skip the animation
			frameRight = frameRight or 0
			frameWidth = frameWidth or DBT.Options.Width
			frameTop = frameTop or 0
		else
			-- Frame has no position, skip animation
			self.frame:ClearAllPoints()
			local xOffset = DBT.Options.HugeBarXOffset
			local yOffset = DBT.Options.HugeBarYOffset
			if DBT.Options.ExpandUpwardsLarge then
				self.movePoint = "BOTTOM"
				self.frame:SetPoint("BOTTOM", largeBarsAnchor, "BOTTOM", xOffset, yOffset)
			else
				self.movePoint = "TOP"
				self.frame:SetPoint("TOP", largeBarsAnchor, "TOP", xOffset, -yOffset)
			end
			self.moving = "nextEnlarge"
			self.enlarged = true
			return
		end
	end
	
	local oldX = frameRight - frameWidth/2
	local oldY = frameTop
	local Enlarged = self.enlarged
	local ExpandUpwards = Enlarged and DBT.Options.ExpandUpwardsLarge or not Enlarged and DBT.Options.ExpandUpwards
	self.frame:ClearAllPoints()
	local xOffset = Enlarged and DBT.Options.HugeBarXOffset or DBT.Options.BarXOffset
	local yOffset = Enlarged and DBT.Options.HugeBarYOffset or DBT.Options.BarYOffset
	if ExpandUpwards then
		self.movePoint = "BOTTOM"
		self.frame:SetPoint("BOTTOM", largeBarsAnchor, "BOTTOM", xOffset, yOffset)
	else
		self.movePoint = "TOP"
		self.frame:SetPoint("TOP", largeBarsAnchor, "TOP", xOffset, -yOffset)
	end
	local frameRight = self.frame:GetRight()
	local frameWidth = self.frame:GetWidth()
	local frameTop = self.frame:GetTop()
	
	-- If frame hasn't been rendered yet, can't calculate animation positions
	if not frameRight or not frameWidth or not frameTop then
		-- Just position without animation
		self.frame:ClearAllPoints()
		self.frame:SetPoint("TOP", largeBarsAnchor, "TOP", xOffset, -yOffset)
		self.moving = "nextEnlarge"
		self.enlarged = true
		return
	end
	
	local newX = frameRight - frameWidth/2
	local newY = frameTop
	self.frame:ClearAllPoints()
	self.frame:SetPoint("TOP", largeBarsAnchor, "BOTTOM", -(newX - oldX), -(newY - oldY))
	self.moving = DBT.Options.BarStyle == "NoAnim" and "nextEnlarge" or "enlarge"
	self.moveAnchor = largeBarsAnchor
	self.moveOffsetX = -(newX - oldX)
	self.moveOffsetY = -(newY - oldY)
	self.moveElapsed = 0
end

function barPrototype:AnimateEnlarge(elapsed)
	self.moveElapsed = self.moveElapsed + elapsed
	local melapsed = self.moveElapsed
	if melapsed < 1 then
		local calc = melapsed / 1
		local newX = self.moveOffsetX + (DBT.Options.HugeBarXOffset - self.moveOffsetX) * calc
		local newY = self.moveOffsetY + (DBT.Options.HugeBarYOffset - self.moveOffsetY) * calc
		local newWidth = DBT.Options.HugeWidth + (DBT.Options.Width - DBT.Options.HugeWidth) * calc
		local newHeight = DBT.Options.HugeHeight + (DBT.Options.Height - DBT.Options.HugeHeight) * calc
		local newScale = DBT.Options.HugeScale + (DBT.Options.Scale - DBT.Options.HugeScale) * calc
		self.frame:ClearAllPoints()
		self.frame:SetPoint(self.movePoint, self.moveAnchor, self.movePoint, newX, newY)
		self.frame:SetScale(newScale)
		self.frame:SetSize(newWidth, newHeight)
		_G[self.frame:GetName().."Bar"]:SetWidth(newWidth)
	else
		self.moving = nil
		self.enlarged = true
		tinsert(largeBars, self)
		DBT:UpdateBars(true, true)
		self:ApplyStyle()
	end
end

function barPrototype:SetCallback(f)
	self.callback = f
end

do
	local skins = {}

	local skin = {}
	skin.__index = skin

	function DBT:RegisterSkin(id)
		if id == "DefaultSkin" then
			DBM:AddMsg("DBM-DefaultSkin no longer used, please remove")
			DBM:AddMsg("DBM-DefaultSkin no longer used, please remove")
			DBM:AddMsg("DBM-DefaultSkin no longer used, please remove")
			return {}
		end
		if skins[id] then
			error("Skin '" .. id .. "' is already registered.", 2)
		end
		local obj = setmetatable({
			name		= id,
			Defaults	= {},
			Options		= {}
		}, skin)
		skins[id] = obj
		return obj
	end

	function DBT:SetSkin(id)
		if not skins[id] and id ~= 'DBM' then
			error("Skin '" .. id .. "' doesn't exist", 2)
		end
		local DBM_UsedProfile = DBM_UsedProfile or "Default"
		if not DBT_AllPersistentOptions then
			DBT_AllPersistentOptions = {}
		end
		if not DBT_AllPersistentOptions[DBM_UsedProfile] then
			DBT_AllPersistentOptions[DBM_UsedProfile] = {}
		end
		if not DBT_AllPersistentOptions[DBM_UsedProfile][id] then
			DBT_AllPersistentOptions[DBM_UsedProfile][id] = CopyTable(DBT_AllPersistentOptions[DBM_UsedProfile].DBM) or {}
			for option, value in pairs(skins[id].Defaults) do
				DBT_AllPersistentOptions[DBM_UsedProfile][id][option] = value
			end
		end
		self:ApplyProfile(id, true)
		if id ~= 'DBM' then
			for option, value in pairs(skins[id].Options) do
				self:SetOption(option, value, true)
			end
		end
		self:SetOption("Skin", id) -- Forces an UpdateBars and ApplyStyle
	end

	function DBT:ResetSkin()
		local DBM_UsedProfile = DBM_UsedProfile or "Default"
		if not DBT_AllPersistentOptions then
			DBT_AllPersistentOptions = {}
		end
		if not DBT_AllPersistentOptions[DBM_UsedProfile] then
			DBT_AllPersistentOptions[DBM_UsedProfile] = {}
		end
		local skin = self.Options.Skin
		DBT_AllPersistentOptions[DBM_UsedProfile][skin] = self.DefaultOptions
		self.Options = self.DefaultOptions
		self:SetOption("Skin", skin) -- Forces an UpdateBars and ApplyStyle
	end

	function DBT:GetSkins()
		return skins
	end
end
