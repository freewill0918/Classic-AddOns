local lsfdd = LibStub("LibSFDropDown-1.5")
local cur_ver, ver = lsfdd._sv, 7
if cur_ver and cur_ver >= ver then return end
lsfdd._sv = ver
local pairs, pcall = pairs, pcall
local IsAddOnLoaded = IsAddOnLoaded or C_AddOns.IsAddOnLoaded


local skins = {
	ElvUI = function(name)
		local E = ElvUI[1]
		if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.misc) then return end
		local S = E:GetModule("Skins")
		local m = lsfdd._m.__index

		lsfdd:CreateMenuStyle(name, nil, function(parent)
			local f = CreateFrame("FRAME", nil, parent)
			f:SetTemplate("Transparent")
			f.isSkinned = true
			return f
		end)
		lsfdd:SetDefaultStyle(name)
		lsfdd:SetMenuStyle(name)

		local function skinButton(btn)
			if btn.isSkinned then return end
			btn.Left:SetTexture()
			btn.Right:SetTexture()
			btn.Middle:SetTexture()
			btn:CreateBackdrop()
			btn:SetFrameLevel(btn:GetFrameLevel() + 2)
			btn.backdrop:Point("TOPLEFT", 3, 1)
			btn.backdrop:Point("BOTTOMRIGHT", 1, 2)
			btn.Button.SetPoint = E.noop
			S:HandleNextPrevButton(btn.Button, "down", nil, true)
			btn.isSkinned = true
		end

		for i, btn in lsfdd:IterateCreatedButtons() do
			skinButton(btn)
		end

		function lsfdd:CreateButton(...)
			local btn = m.CreateButton(self, ...)
			local status, err = pcall(skinButton, btn)
			if not status then
				self.CreateButton = nil
			end
			return btn
		end

		local function skinModernButton(btn)
			if btn.isSkinned then return end
			btn.Background:SetTexture()
			if not btn.backdrop then
				btn:CreateBackdrop(template)
				btn:SetFrameLevel(btn:GetFrameLevel() + 2)
			end
			btn.backdrop:Point("TOPLEFT", 0, -2)
			btn.backdrop:Point("BOTTOMRIGHT", 0, 2)
			btn.Arrow:SetAlpha(0)
			local tex = btn:CreateTexture(nil, "ARTWORK")
			tex:SetTexture(E.Media.Textures.ArrowUp)
			tex:SetRotation(3.14)
			tex:Point("RIGHT", btn.backdrop, -3, 0)
			tex:Size(14)
			btn.isSkinned = true
		end

		for i, btn in lsfdd:IterateCreatedModernButtons() do
			skinModernButton(btn)
		end

		function lsfdd:CreateModernButton(...)
			local btn = m.CreateModernButton(self, ...)
			local status, err = pcall(skinModernButton, btn)
			if not status then
				self.CreateModernButton = nil
			end
			return btn
		end

		local function skinStretchButton(btn)
			if btn.isSkinned then return end
			btn.Arrow:SetTexture(E.Media.Textures.ArrowUp)
			btn.Arrow:SetRotation(S.ArrowRotation.right)
			btn.Arrow:SetVertexColor(1, 1, 1)
			S:HandleButton(btn)
			btn.isSkinned = true
		end

		for i, btn in lsfdd:IterateCreatedStretchButtons() do
			skinStretchButton(btn)
		end

		function lsfdd:CreateStretchButton(...)
			local btn = m.CreateStretchButton(self, ...)
			local status, err = pcall(skinStretchButton, btn)
			if not status then
				self.CreateStretchButton = nil
			end
			return btn
		end
	end,

	Tukui = function(name)
		lsfdd:CreateMenuStyle(name, nil, function(parent)
			local f = CreateFrame("FRAME", nil, parent)
			f:StripTextures()
			f:CreateBackdrop("Default")
			f:CreateShadow()
			f.IsSkinned = true
			return f
		end)
		lsfdd:SetDefaultStyle(name)
		lsfdd:SetMenuStyle(name)
	end,

	Aurora = function(name)
		local Skin = Aurora.Skin
		local m = lsfdd._m.__index

		lsfdd:CreateMenuStyle(name, nil, function(parent)
			local f = CreateFrame("FRAME", nil, parent, "TooltipBackdropTemplate")
			Skin.TooltipBackdropTemplate(f)
			f.isSkinned = true
			return f
		end)
		lsfdd:SetDefaultStyle(name)
		lsfdd:SetMenuStyle(name)

		local function skinButton(btn)
			if btn.isSkinned then return end
			Skin.UIDropDownMenuTemplate(btn)
			btn:SetBackdropOption("offsets", {
				left = 3,
				right = 24,
				top = 2,
				bottom = 2,
			})
			btn.isSkinned = true
		end

		for i, btn in lsfdd:IterateCreatedButtons() do
			skinButton(btn)
		end

		function lsfdd:CreateButton(...)
			local btn = m.CreateButton(self, ...)
			local status, err = pcall(skinButton, btn)
			if not status then
				self.CreateButton = nil
			end
			return btn
		end

		local function skinStretchButton(btn)
			if btn.isSkinned then return end
			Skin.UIMenuButtonStretchTemplate(btn)
			btn.isSkinned = true
		end

		for i, btn in lsfdd:IterateCreatedStretchButtons() do
			skinStretchButton(btn)
		end

		function lsfdd:CreateStretchButton(...)
			local btn = m.CreateStretchButton(self, ...)
			local status, err = pcall(skinStretchButton, btn)
			if not status then
				self.CreateStretchButton = nil
			end
			return btn
		end
	end,
}


C_Timer.After(0, function()
	for name, func in pairs(skins) do
		if IsAddOnLoaded(name) then
			local status, err = pcall(func, name)
			if not status then
				lsfdd:SetDefaultStyle("backdrop")
				lsfdd:SetMenuStyle("menuBackdrop")
				lsfdd.CreateButton = nil
				lsfdd.CreateStretchButton = nil
			end
			break
		end
	end
end)