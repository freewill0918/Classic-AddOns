  ---------------------------------------
  -- VARIABLES
  ---------------------------------------

  --get the addon namespace
  local addon, ns = ...

  --get the config values
  local cfg = ns.cfg

  --MoP Classic 5.5.x: IsAddOnLoaded moved to C_AddOns
  local IsAddOnLoaded = C_AddOns and C_AddOns.IsAddOnLoaded or IsAddOnLoaded

  local classcolor = RAID_CLASS_COLORS[select(2, UnitClass("player"))]
  local dominos = IsAddOnLoaded("Dominos")
  local bartender4 = IsAddOnLoaded("Bartender4")

  if cfg.color.classcolored then
    cfg.color.normal = classcolor
  end

  --backdrop settings
  local bgfile, edgefile = "", ""
  if cfg.background.showshadow then edgefile = cfg.textures.outer_shadow end
  if cfg.background.useflatbackground and cfg.background.showbg then bgfile = cfg.textures.buttonbackflat end

  --backdrop
  local backdrop = {
    bgFile = bgfile,
    edgeFile = edgefile,
    tile = false,
    tileSize = 32,
    edgeSize = cfg.background.inset,
    insets = {
      left = cfg.background.inset,
      right = cfg.background.inset,
      top = cfg.background.inset,
      bottom = cfg.background.inset,
    },
  }

  ---------------------------------------
  -- FUNCTIONS
  ---------------------------------------

	if IsAddOnLoaded("Masque") and (dominos or bartender4) then
		return
	end

  local function applyBackground(bu)
    if not bu or (bu and bu.bg) then return end
    --shadows+background
    if bu:GetFrameLevel() < 1 then bu:SetFrameLevel(1) end
    if cfg.background.showbg or cfg.background.showshadow then
      bu.bg = CreateFrame("Frame", nil, bu, "BackdropTemplate")
     -- bu.bg:SetAllPoints(bu)
      bu.bg:SetPoint("TOPLEFT", bu, "TOPLEFT", -4, 4)
      bu.bg:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", 4, -4)
      bu.bg:SetFrameLevel(bu:GetFrameLevel()-1)
      if cfg.background.classcolored then
        cfg.background.backgroundcolor = classcolor
        cfg.background.shadowcolor = classcolor
      end
      if cfg.background.showbg and not cfg.background.useflatbackground then
        local t = bu.bg:CreateTexture(nil,"BACKGROUND",nil,-8)
        t:SetTexture(cfg.textures.buttonback)
        --t:SetAllPoints(bu)
        t:SetVertexColor(cfg.background.backgroundcolor.r,cfg.background.backgroundcolor.g,cfg.background.backgroundcolor.b,cfg.background.backgroundcolor.a)
      end
      bu.bg:SetBackdrop(backdrop)
      if cfg.background.useflatbackground then
        bu.bg:SetBackdropColor(cfg.background.backgroundcolor.r,cfg.background.backgroundcolor.g,cfg.background.backgroundcolor.b,cfg.background.backgroundcolor.a)
      end
      if cfg.background.showshadow then
        bu.bg:SetBackdropBorderColor(cfg.background.shadowcolor.r,cfg.background.shadowcolor.g,cfg.background.shadowcolor.b,cfg.background.shadowcolor.a)
      end
    end
  end

  --registry of buttons we've styled, so the delayed re-scans can re-suppress the modern
  --frame art (it is created lazily on button update, after the first suppress pass).
  local styledButtons = {}

  --MoP Classic 5.5.x: the modern button frame is built from many textures whose fileIDs
  --change between sessions, so matching by id/atlas is unreliable. Instead hide EVERY
  --texture region except the spell icon and the mouseover highlight. Our gloss border lives
  --on a child frame (not in bu:GetRegions()), so it is never touched by this.
  local function suppressArt(bu)
    if not bu or not bu.GetRegions then return end
    local name = bu.GetName and bu:GetName()
    local icons = {}
    if bu.icon then icons[bu.icon] = true end
    if bu.Icon then icons[bu.Icon] = true end
    if name and _G[name.."Icon"] then icons[_G[name.."Icon"]] = true end
    for _, r in ipairs({ bu:GetRegions() }) do
      if r.GetObjectType and r:GetObjectType() == "Texture" and not icons[r]
        and r ~= bu.lortiBorder and r:GetDrawLayer() ~= "HIGHLIGHT" then
        r:SetAlpha(0)
      end
    end
  end

  --shared gloss border. Drawn UNDER the icon (low BACKGROUND sublayer) like the original Lorti
  --design, so it only shows in the ring around the inset icon and never covers the icon art or
  --the hotkey/count text. suppressArt (which clears the modern frame art) explicitly skips it.
  local function addLortiBorder(bu)
    if not bu or bu.lortiBorder then return end
    local border = bu:CreateTexture(nil, "BACKGROUND", nil, -7)
    border:SetTexture(cfg.textures.normal)
    border:SetTexCoord(0, 1, 0, 1)
    border:SetAllPoints(bu)
    border:SetVertexColor(cfg.color.normal.r, cfg.color.normal.g, cfg.color.normal.b, 1)
    bu.lortiBorder = border
    styledButtons[#styledButtons + 1] = bu
  end

  --initial style func
  local function styleActionButton(bu)
    if not bu or (bu and bu.rabs_styled) then
      return
    end
    local action = bu.action
    local name = bu:GetName()
    local ic  = _G[name.."Icon"]
    local co  = _G[name.."Count"]
    local bo  = _G[name.."Border"]
    local ho  = _G[name.."HotKey"]
    local cd  = _G[name.."Cooldown"]
    local na  = _G[name.."Name"]
    local fl  = _G[name.."Flash"]
    local nt  = _G[name.."NormalTexture"]
    local fbg  = _G[name.."FloatingBG"]
    local fob = _G[name.."FlyoutBorder"]
    local fobs = _G[name.."FlyoutBorderShadow"]
    if fbg then fbg:Hide() end  --floating background
    --flyout border stuff
    if fob then fob:SetTexture(nil) end
    if fobs then fobs:SetTexture(nil) end
    bo:SetTexture(nil) --hide the border (plain ugly, sry blizz)
    --hotkey
    ho:SetFont(cfg.font, cfg.hotkeys.fontsize, "OUTLINE")
    ho:ClearAllPoints()
    ho:SetPoint(cfg.hotkeys.pos1.a1,bu,cfg.hotkeys.pos1.x,cfg.hotkeys.pos1.y)
    ho:SetPoint(cfg.hotkeys.pos2.a1,bu,cfg.hotkeys.pos2.x,cfg.hotkeys.pos2.y)
    if not dominos and not bartender4 and not cfg.hotkeys.show then
      ho:Hide()
    end
    --macro name
    na:SetFont(cfg.font, cfg.macroname.fontsize, "OUTLINE")
    na:ClearAllPoints()
    na:SetPoint(cfg.macroname.pos1.a1,bu,cfg.macroname.pos1.x,cfg.macroname.pos1.y)
    na:SetPoint(cfg.macroname.pos2.a1,bu,cfg.macroname.pos2.x,cfg.macroname.pos2.y)
    if not dominos and not bartender4 and not cfg.macroname.show then
      na:Hide()
    end
    --item stack count
    co:SetFont(cfg.font, cfg.itemcount.fontsize, "OUTLINE")
    co:ClearAllPoints()
    co:SetPoint(cfg.itemcount.pos1.a1,bu,cfg.itemcount.pos1.x,cfg.itemcount.pos1.y)
    if not dominos and not bartender4 and not cfg.itemcount.show then
      co:Hide()
    end
    --applying the textures
    fl:SetTexture(cfg.textures.flash)
    --bu:SetHighlightTexture(cfg.textures.hover)
    bu:SetPushedTexture(cfg.textures.pushed)
    --bu:SetCheckedTexture(cfg.textures.checked)
    bu:SetNormalTexture(cfg.textures.normal)
    if not nt then
      --fix the non existent texture problem (no clue what is causing this)
      nt = bu:GetNormalTexture()
    end
    --cut the default border of the icons and make them shiny. Inset the icon 2.5px so the gloss
    --border underneath shows as a ring around it.
    ic:SetTexCoord(0.1,0.9,0.1,0.9)
    ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2.5, -2.5)
    ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2.5, 2.5)
    --adjust the cooldown frame
    cd:SetPoint("TOPLEFT", bu, "TOPLEFT", cfg.cooldown.spacing, -cfg.cooldown.spacing)
    cd:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -cfg.cooldown.spacing, cfg.cooldown.spacing)
    --apply the normaltexture
    if action and  IsEquippedAction(action) then
      --bu:SetNormalTexture(cfg.textures.equipped)
      nt:SetVertexColor(cfg.color.equipped.r,cfg.color.equipped.g,cfg.color.equipped.b,1)
    else
      bu:SetNormalTexture(cfg.textures.normal)
      nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
    end
    --make the normaltexture match the buttonsize
    nt:SetAllPoints(bu)
    --hook to prevent Blizzard from reseting our colors
    hooksecurefunc(nt, "SetVertexColor", function(nt, r, g, b, a)
      local bu = nt:GetParent()
      local action = bu.action
      --print("bu"..bu:GetName().."R"..r.."G"..g.."B"..b)
      if r==1 and g==1 and b==1 and action and (IsEquippedAction(action)) then
        if cfg.color.equipped.r == 1 and  cfg.color.equipped.g == 1 and  cfg.color.equipped.b == 1 then
          nt:SetVertexColor(0.999,0.999,0.999,1)
        else
          nt:SetVertexColor(cfg.color.equipped.r,cfg.color.equipped.g,cfg.color.equipped.b,1)
        end
      elseif r==0.5 and g==0.5 and b==1 then
        --blizzard oom color
        if cfg.color.normal.r == 0.5 and  cfg.color.normal.g == 0.5 and  cfg.color.normal.b == 1 then
          nt:SetVertexColor(0.499,0.499,0.999,1)
        else
          nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
        end
      elseif r==1 and g==1 and b==1 then
        if cfg.color.normal.r == 1 and  cfg.color.normal.g == 1 and  cfg.color.normal.b == 1 then
          nt:SetVertexColor(0.999,0.999,0.999,1)
        else
          nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
        end
      end
    end)
    --MoP Classic 5.5.x: modern buttons re-apply their own normal texture/atlas on update; force Lorti's to persist
    hooksecurefunc(nt, "SetTexture", function(self, tex)
      if tex ~= cfg.textures.normal then self:SetTexture(cfg.textures.normal) end
    end)
    if nt.SetAtlas then
      hooksecurefunc(nt, "SetAtlas", function(self) self:SetTexture(cfg.textures.normal) end)
    end
    nt:SetTexture(cfg.textures.normal)
    --MoP Classic 5.5.x: modern Dominos/Blizzard buttons swap out their whole NormalTexture
    --object on update, so hooking nt loses the war. Use an independent gloss border instead,
    --then hide the modern frame art so only our border shows.
    addLortiBorder(bu)
    suppressArt(bu)
    --shadows+background
    if not bu.bg then applyBackground(bu) end
    bu.rabs_styled = true
    if bartender4 then --fix the normaltexture
      nt:SetTexCoord(0,1,0,1)
      nt.SetTexCoord = function() return end
      bu.SetNormalTexture = function() return end
    end
  end
  -- style leave button
  local function styleLeaveButton(bu)
    if not bu or (bu and bu.rabs_styled) then return end
	--local region = select(1, bu:GetRegions())
	local name = bu:GetName()
	local nt = bu:GetNormalTexture()
	local bo = bu:CreateTexture(name.."Border", "BACKGROUND", nil, -7)
	nt:SetTexCoord(0.2,0.8,0.2,0.8)
	nt:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
    nt:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
	bo:SetTexture(cfg.textures.normal)
	bo:SetTexCoord(0, 1, 0, 1)
	bo:SetDrawLayer("BACKGROUND",- 7)
	bo:SetVertexColor(0.4, 0.35, 0.35)
	bo:ClearAllPoints()
	bo:SetAllPoints(bu)
    --shadows+background
    if not bu.bg then applyBackground(bu) end
    bu.rabs_styled = true
  end

  --style pet buttons
  local function stylePetButton(bu)
    if not bu or (bu and bu.rabs_styled) then return end
    local name = bu:GetName()
    local ic  = _G[name.."Icon"]
    local fl  = _G[name.."Flash"]
    local nt  = _G[name.."NormalTexture2"] or _G[name.."NormalTexture"] or bu.NormalTexture
    if nt then
      nt:SetAllPoints(bu)
      nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
    end
    --setting the textures
    if fl then fl:SetTexture(cfg.textures.flash) end
    bu:SetPushedTexture(cfg.textures.pushed)
    bu:SetNormalTexture(cfg.textures.normal)
    hooksecurefunc(bu, "SetNormalTexture", function(self, texture)
      --make sure the normaltexture stays the way we want it
      if texture and texture ~= cfg.textures.normal then
        self:SetNormalTexture(cfg.textures.normal)
      end
    end)
    --cut the default border of the icons and make them shiny
    if ic then
      ic:SetTexCoord(0.1,0.9,0.1,0.9)
      ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
      ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
    end
    --modern buttons fight the NormalTexture; use our own overlay border and hide their art
    addLortiBorder(bu)
    suppressArt(bu)
    --shadows+background
    if not bu.bg then applyBackground(bu) end
    bu.rabs_styled = true
  end

  --style stance buttons
  local function styleStanceButton(bu)
    if not bu or (bu and bu.rabs_styled) then return end
    local name = bu:GetName()
    local ic  = name and _G[name.."Icon"]
    local fl  = name and _G[name.."Flash"]
    local nt  = (name and (_G[name.."NormalTexture2"] or _G[name.."NormalTexture"])) or bu.NormalTexture
    if nt then
      nt:SetAllPoints(bu)
      nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
    end
    --setting the textures
    if fl then fl:SetTexture(cfg.textures.flash) end
    bu:SetPushedTexture(cfg.textures.pushed)
    bu:SetNormalTexture(cfg.textures.normal)
    --cut the default border of the icons and make them shiny
    if ic then
      ic:SetTexCoord(0.1,0.9,0.1,0.9)
      ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
      ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
    end
    --modern buttons fight the NormalTexture; use our own overlay border and hide their art
    addLortiBorder(bu)
    suppressArt(bu)
    --shadows+background
    if not bu.bg then applyBackground(bu) end
    bu.rabs_styled = true
  end

  --style possess buttons
  local function stylePossessButton(bu)
    if not bu or (bu and bu.rabs_styled) then return end
    local name = bu:GetName()
    local ic  = name and _G[name.."Icon"]
    local fl  = name and _G[name.."Flash"]
    local nt  = (name and _G[name.."NormalTexture"]) or bu.NormalTexture
    if nt then
      nt:SetAllPoints(bu)
      nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
    end
    --setting the textures
    if fl then fl:SetTexture(cfg.textures.flash) end
    bu:SetPushedTexture(cfg.textures.pushed)
    bu:SetNormalTexture(cfg.textures.normal)
    --cut the default border of the icons and make them shiny
    if ic then
      ic:SetTexCoord(0.1,0.9,0.1,0.9)
      ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
      ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
    end
    --modern buttons fight the NormalTexture; use our own overlay border and hide their art
    addLortiBorder(bu)
    suppressArt(bu)
    --shadows+background
    if not bu.bg then applyBackground(bu) end
    bu.rabs_styled = true
  end

-- style bags
local function styleBag(bu)
	if not bu or (bu and bu.rabs_styled) then return end
	local name = bu:GetName()
	local ic  = _G[name.."IconTexture"]
	local nt  = _G[name.."NormalTexture"]
	nt:SetTexCoord(0,1,0,1)
	nt:SetDrawLayer("BACKGROUND", -7)
	nt:SetVertexColor(0.4, 0.35, 0.35)
	nt:SetAllPoints(bu)
	local bo = bu.IconBorder
	bo:Hide()
	bo.Show = function() end
	ic:SetTexCoord(0.1,0.9,0.1,0.9)
    	ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
    	ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
  	bu:SetNormalTexture(cfg.textures.normal)
	--bu:SetHighlightTexture(cfg.textures.hover)
    	bu:SetPushedTexture(cfg.textures.pushed)
    	--bu:SetCheckedTexture(cfg.textures.checked)

      --make sure the normaltexture stays the way we want it
	hooksecurefunc(bu, "SetNormalTexture", function(self, texture)
      		if texture and texture ~= cfg.textures.normal then
        		self:SetNormalTexture(cfg.textures.normal)
      		end
   	 end)
	bu.Back = CreateFrame("Frame", nil, bu, "BackdropTemplate")
		bu.Back:SetPoint("TOPLEFT", bu, "TOPLEFT", -4, 4)
		bu.Back:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", 4, -4)
		bu.Back:SetFrameLevel(bu:GetFrameLevel() - 1)
		bu.Back:SetBackdrop(backdrop)
		bu.Back:SetBackdropBorderColor(0, 0, 0, 0.9)
end

  --update hotkey func
  local function updateHotkey(self, actionButtonType)
    local ho = _G[self:GetName().."HotKey"]
    if ho and not cfg.hotkeys.show and ho:IsShown() then
      ho:Hide()
    end
  end

  ---------------------------------------
  -- INIT
  ---------------------------------------

  local function init()
    --style the actionbar buttons. MoP Classic 5.5.x renamed the secondary bars'
    --buttons (e.g. MultiBarLeftButton -> MultiBarLeftActionButton), so try the modern
    --name first and fall back to the old one. The main bar (ActionButton) is unchanged.
    for i = 1, NUM_ACTIONBAR_BUTTONS do
      styleActionButton(_G["ActionButton"..i])
      styleActionButton(_G["MultiBarBottomLeftActionButton"..i] or _G["MultiBarBottomLeftButton"..i])
      styleActionButton(_G["MultiBarBottomRightActionButton"..i] or _G["MultiBarBottomRightButton"..i])
      styleActionButton(_G["MultiBarRightActionButton"..i] or _G["MultiBarRightButton"..i])
      styleActionButton(_G["MultiBarLeftActionButton"..i] or _G["MultiBarLeftButton"..i])
      styleActionButton(_G["MultiBar5ActionButton"..i])
      styleActionButton(_G["MultiBar6ActionButton"..i])
      styleActionButton(_G["MultiBar7ActionButton"..i])
    end
    --naming-agnostic catch-all: modern action bars expose their buttons via bar.actionButtons
    for _, bar in ipairs({ MultiBarBottomLeft, MultiBarBottomRight, MultiBarRight, MultiBarLeft,
                           MultiBar5, MultiBar6, MultiBar7 }) do
      if bar and bar.actionButtons then
        for _, b in ipairs(bar.actionButtons) do styleActionButton(b) end
      end
    end
	--style bags
    for i = 0, 3 do
		styleBag(_G["CharacterBag"..i.."Slot"])
    end
	styleBag(MainMenuBarBackpackButton)
    for i = 1, 6 do
      styleActionButton(_G["OverrideActionBarButton"..i])
    end
    --style leave button
	styleLeaveButton(MainMenuBarVehicleLeaveButton)
    styleLeaveButton(rABS_LeaveVehicleButton)
    --petbar buttons
    for i=1, NUM_PET_ACTION_SLOTS do
      stylePetButton(_G["PetActionButton"..i])
    end
    --stancebar buttons (modern client may name them StanceBarButton or expose StanceBar.actionButtons)
    for i=1, (NUM_STANCE_SLOTS or 10) do
      styleStanceButton(_G["StanceButton"..i] or _G["StanceBarButton"..i])
    end
    if StanceBar and StanceBar.actionButtons then
      for _, b in ipairs(StanceBar.actionButtons) do styleStanceButton(b) end
    end
    --dominos styling
    if dominos then
      --print("Dominos found")
      for i = 1, 120 do
        styleActionButton(_G["DominosActionButton"..i])
      end
    end
    --bartender4 styling
    if bartender4 then
      --print("Bartender4 found")
      for i = 1, 120 do
        styleActionButton(_G["BT4Button"..i])
		stylePetButton(_G["BT4PetButton"..i])
      end
    end

    --hide the hotkeys if needed
    if not dominos and not bartender4 and not cfg.hotkeys.show then
      if type(ActionButton_UpdateHotkeys) == "function" then
        hooksecurefunc("ActionButton_UpdateHotkeys", updateHotkey)
      elseif ActionBarActionButtonMixin and ActionBarActionButtonMixin.UpdateHotkeys then
        hooksecurefunc(ActionBarActionButtonMixin, "UpdateHotkeys", updateHotkey)
      end
    end

    --re-hide the modern frame art on every pass (it is rebuilt lazily after we first style)
    for _, bu in ipairs(styledButtons) do suppressArt(bu) end

  end

  ---------------------------------------
  -- CALL
  ---------------------------------------

  local a = CreateFrame("Frame")
  a:RegisterEvent("PLAYER_LOGIN")
  a:SetScript("OnEvent", init)
  --Dominos/Bartender often build their extra bars after PLAYER_LOGIN, so re-scan a few
  --times to catch buttons that didn't exist yet (styleActionButton is idempotent).
  if C_Timer and C_Timer.After then
    C_Timer.After(2, init)
    C_Timer.After(5, init)
    C_Timer.After(10, init)
  end
