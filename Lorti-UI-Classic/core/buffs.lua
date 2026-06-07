
  --get the addon namespace
  local addon, ns = ...
  --get the config values
  local cfg = ns.cfg
  local dragFrameList = ns.dragFrameList

  -----------------------------
  -- GLOBAL FUNCTIONS
  -----------------------------

  --rCreateDragFrame func
  function rCreateDragFrame(self, dragFrameList, inset, clamp)
    if not self or not dragFrameList then return end
    --save the default position for later
    self.defaultPoint = rGetPoint(self)
    table.insert(dragFrameList,self) --add frame object to the list
    --anchor a dragable frame on self
    local df = CreateFrame("Frame",nil,self)
    df:SetAllPoints(self)
    df:SetFrameStrata("HIGH")
    df:SetHitRectInsets(inset or 0,inset or 0,inset or 0,inset or 0)
    df:EnableMouse(true)
    df:RegisterForDrag("LeftButton")
    df:SetScript("OnDragStart", function(self) if IsAltKeyDown() and IsShiftKeyDown() then self:GetParent():StartMoving() end end)
    df:SetScript("OnDragStop", function(self) self:GetParent():StopMovingOrSizing() end)
    df:SetScript("OnEnter", function(self)
      GameTooltip:SetOwner(self, "ANCHOR_TOP")
      GameTooltip:AddLine(self:GetParent():GetName(), 0, 1, 0.5, 1, 1, 1)
      GameTooltip:AddLine("Hold down ALT+SHIFT to drag!", 1, 1, 1, 1, 1, 1)
      GameTooltip:Show()
    end)
    df:SetScript("OnLeave", function(s) GameTooltip:Hide() end)
    df:Hide()
    --overlay texture
    local t = df:CreateTexture(nil,"OVERLAY",nil,6)
    t:SetAllPoints(df)
    t:SetTexture(0,1,0)
    t:SetAlpha(0.2)
    df.texture = t
    --self stuff
    self.dragFrame = df
    self:SetClampedToScreen(clamp or false)
    self:SetMovable(true)
    self:SetUserPlaced(true)
  end

  ---------------------------------------
  -- LOCALS
  ---------------------------------------

  --rewrite the oneletter shortcuts
  if cfg.adjustOneletterAbbrev then
    HOUR_ONELETTER_ABBR = "%dh"
    DAY_ONELETTER_ABBR = "%dd"
    MINUTE_ONELETTER_ABBR = "%dm"
    SECOND_ONELETTER_ABBR = "%ds"
  end

  --classcolor
  local classColor = RAID_CLASS_COLORS[select(2, UnitClass("player"))]

  --backdrop debuff
  local backdropDebuff = {
    bgFile = nil,
    edgeFile = cfg.debuffFrame.background.edgeFile,
    tile = false,
    tileSize = 32,
    edgeSize = cfg.debuffFrame.background.inset,
    insets = {
      left = cfg.debuffFrame.background.inset,
      right = cfg.debuffFrame.background.inset,
      top = cfg.debuffFrame.background.inset,
      bottom = cfg.debuffFrame.background.inset,
    },
  }

  --backdrop buff
  local backdropBuff = {
    bgFile = nil,
    edgeFile = cfg.buffFrame.background.edgeFile,
    tile = false,
    tileSize = 32,
    edgeSize = cfg.buffFrame.background.inset,
    insets = {
      left = cfg.buffFrame.background.inset,
      right = cfg.buffFrame.background.inset,
      top = cfg.buffFrame.background.inset,
      bottom = cfg.buffFrame.background.inset,
    },
  }

  local ceil, min, max = ceil, min, max
  local ShouldShowConsolidatedBuffFrame = ShouldShowConsolidatedBuffFrame
  
  local buffFrameHeight = 0

  ---------------------------------------
  -- FUNCTIONS
  ---------------------------------------

  --apply aura frame texture func
  local function applySkin(b)
    if not b or (b and b.styled) then return end
    --button name
    local name = b:GetName()
    --check the button type
    local tempenchant, consolidated, debuff, buff = false, false, false, false
    if (name:match("TempEnchant")) then
      tempenchant = true
    elseif (name:match("Consolidated")) then
      consolidated = true
    elseif (name:match("Debuff")) then
      debuff = true
    else
      buff = true
    end
    --get cfg and backdrop
    local cfg, backdrop
    if debuff then
      cfg = ns.cfg.debuffFrame
      backdrop = backdropDebuff
    else
      cfg = ns.cfg.buffFrame
      backdrop = backdropBuff
    end
    --check class coloring options
    if cfg.border.classcolored then
      cfg.border.color = classColor
    end
    if cfg.background.classcolored then
      cfg.background.color = classColor
    end

    --button
    b:SetSize(cfg.button.size, cfg.button.size)

    --icon
    local icon = _G[name.."Icon"]
    if consolidated then
	if select(1,UnitFactionGroup("player")) == "Alliance" then	
     		icon:SetTexture(select(3,GetSpellInfo(61573)))
	elseif select(1,UnitFactionGroup("player")) == "Horde" then
		icon:SetTexture(select(3,GetSpellInfo(61574)))
	end
    end
    icon:SetTexCoord(0.1,0.9,0.1,0.9)
    icon:ClearAllPoints()
    icon:SetPoint("TOPLEFT", b, "TOPLEFT", -cfg.icon.padding, cfg.icon.padding)
    icon:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", cfg.icon.padding, -cfg.icon.padding)
    icon:SetDrawLayer("BACKGROUND",-8)
    b.icon = icon

    --border
    local border = _G[name.."Border"] or b:CreateTexture(name.."Border", "BACKGROUND", nil, -7)
    border:SetTexture(cfg.border.texture)
    border:SetTexCoord(0,1,0,1)
    border:SetDrawLayer("BACKGROUND",-7)
    if tempenchant then
      border:SetVertexColor(0.7,0,1)
    elseif not debuff then
      border:SetVertexColor(cfg.border.color.r,cfg.border.color.g,cfg.border.color.b)
    end
    border:ClearAllPoints()
    border:SetAllPoints(b)
    b.border = border

    --duration
    b.duration:SetFont(cfg.duration.font, cfg.duration.size, "THINOUTLINE")
    b.duration:ClearAllPoints()
    b.duration:SetPoint(cfg.duration.pos.a1,cfg.duration.pos.x,cfg.duration.pos.y)

    --count
    b.count:SetFont(cfg.count.font, cfg.count.size, "THINOUTLINE")
    b.count:ClearAllPoints()
    b.count:SetPoint(cfg.count.pos.a1,cfg.count.pos.x,cfg.count.pos.y)

    --shadow
    if cfg.background.show then
      local back = CreateFrame("Frame", nil, b, "BackdropTemplate")
      back:SetPoint("TOPLEFT", b, "TOPLEFT", -cfg.background.padding, cfg.background.padding)
      back:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", cfg.background.padding, -cfg.background.padding)
      back:SetFrameLevel(b:GetFrameLevel() - 1)
      back:SetBackdrop(backdrop)
      back:SetBackdropBorderColor(cfg.background.color.r,cfg.background.color.g,cfg.background.color.b,cfg.background.color.a)
      b.bg = back
    end

    --set button styled variable
    b.styled = true
  end

  --update debuff anchors
  local function updateDebuffAnchors(buttonName,index)
    local button = _G[buttonName..index]
    if not button then return end
    --apply skin
    if not button.styled then applySkin(button) end
    --position button
    button:ClearAllPoints()
    if index == 1 then
      if cfg.combineBuffsAndDebuffs then
        button:SetPoint("TOPRIGHT", rBFS_BuffDragFrame, "TOPRIGHT", 0, -buffFrameHeight)
      else
        --debuffs and buffs are not combined anchor the debuffs to its own frame
        button:SetPoint("TOPRIGHT", rBFS_DebuffDragFrame, "TOPRIGHT", 0, 0)      
      end
    elseif index > 1 and mod(index, cfg.debuffFrame.buttonsPerRow) == 1 then
      button:SetPoint("TOPRIGHT", _G[buttonName..(index-cfg.debuffFrame.buttonsPerRow)], "BOTTOMRIGHT", 0, -cfg.debuffFrame.rowSpacing)
    else
      button:SetPoint("TOPRIGHT", _G[buttonName..(index-1)], "TOPLEFT", -cfg.debuffFrame.colSpacing, 0)
    end
  end
  --update buff anchors
  local function updateAllBuffAnchors()
    --variables
    local buttonName  = "BuffButton"
    local numEnchants = BuffFrame.numEnchants
    local numBuffs    = BUFF_ACTUAL_DISPLAY
    local offset      = numEnchants
    local realIndex, previousButton, aboveButton
    --position the tempenchant button depending on the consolidated button status
   -- if ShouldShowConsolidatedBuffFrame() then
     -- TempEnchant1:ClearAllPoints()
     -- TempEnchant1:SetPoint("TOPRIGHT", ConsolidatedBuffs, "TOPLEFT", -cfg.buffFrame.colSpacing, 0)
      --offset = offset + 1
   -- else
      TempEnchant1:ClearAllPoints()
      TempEnchant1:SetPoint("TOPRIGHT", rBFS_BuffDragFrame, "TOPRIGHT", 0, 0)
    --end
    
    --calculate the previous button in case tempenchant or consolidated buff are loaded
    if BuffFrame.numEnchants > 0 then
      previousButton = _G["TempEnchant"..numEnchants]
    end
   -- elseif ShouldShowConsolidatedBuffFrame() then
     -- previousButton = ConsolidatedBuffs
   -- end
    --calculate the above button in case tempenchant or consolidated buff are loaded
   -- if ShouldShowConsolidatedBuffFrame() then
    --  aboveButton = ConsolidatedBuffs
    if numEnchants > 0 then
      aboveButton = TempEnchant1
    end
    --loop on all active buff buttons
    local buffCounter = 0
    for index = 1, numBuffs do
      local button = _G[buttonName..index]
      if not button then return end
      if not button.consolidated then
        buffCounter = buffCounter + 1
        --apply skin
        if not button.styled then applySkin(button) end
        --position button
        button:ClearAllPoints()
        realIndex = buffCounter+offset
        if realIndex == 1 then
          button:SetPoint("TOPRIGHT", rBFS_BuffDragFrame, "TOPRIGHT", 0, 0)
          aboveButton = button
        elseif realIndex > 1 and mod(realIndex, cfg.buffFrame.buttonsPerRow) == 1 then
          button:SetPoint("TOPRIGHT", aboveButton, "BOTTOMRIGHT", 0, -cfg.buffFrame.rowSpacing)
          aboveButton = button
        else
          button:SetPoint("TOPRIGHT", previousButton, "TOPLEFT", -cfg.buffFrame.colSpacing, 0)
        end
        previousButton = button
        
      end
    end
    --calculate the height of the buff rows for the debuff frame calculation later
    local rows = ceil((buffCounter+offset)/cfg.buffFrame.buttonsPerRow)
    local height = cfg.buffFrame.button.size*rows + cfg.buffFrame.rowSpacing*rows + cfg.buffFrame.gap*min(1,rows)
    buffFrameHeight = height
    --make sure the debuff frames update the position asap
    if DebuffButton1 and cfg.combineBuffsAndDebuffs then    
      updateDebuffAnchors("DebuffButton", 1)
    end
  end

  ---------------------------------------
  -- INIT
  ---------------------------------------

  --buff drag frame
  local bf = CreateFrame("Frame", "rBFS_BuffDragFrame", UIParent)
  bf:SetSize(cfg.buffFrame.button.size,cfg.buffFrame.button.size)
  bf:SetPoint(cfg.buffFrame.pos.a1,cfg.buffFrame.pos.af,cfg.buffFrame.pos.a2,cfg.buffFrame.pos.x,cfg.buffFrame.pos.y)
  if cfg.buffFrame.userplaced then
    rCreateDragFrame(bf, dragFrameList, -2 , true) --frame, dragFrameList, inset, clamp
  end

  if not cfg.combineBuffsAndDebuffs then
    --debuff drag frame
    local df = CreateFrame("Frame", "rBFS_DebuffDragFrame", UIParent)
    df:SetSize(cfg.debuffFrame.button.size,cfg.debuffFrame.button.size)
    df:SetPoint(cfg.debuffFrame.pos.a1,cfg.debuffFrame.pos.af,cfg.debuffFrame.pos.a2,cfg.debuffFrame.pos.x,cfg.debuffFrame.pos.y)
    if cfg.debuffFrame.userplaced then
      rCreateDragFrame(df, dragFrameList, -2 , true) --frame, dragFrameList, inset, clamp
    end
  end

  --temp enchant stuff
  --MoP Classic 5.5.x replaced the classic BuffFrame; TempEnchant1/2/3 globals no longer exist.
  --No reliable reference for the new structure, so skip skinning these (Blizzard default look).
  if TempEnchant1 then
    applySkin(TempEnchant1)
    applySkin(TempEnchant2)
    applySkin(TempEnchant3)

    --position the temp enchant buttons
    TempEnchant1:ClearAllPoints()
    TempEnchant1:SetPoint("TOPRIGHT", rBFS_BuffDragFrame, "TOPRIGHT", 0, 0) --button will be repositioned later in case temp enchant and consolidated buffs are both available
    TempEnchant2:ClearAllPoints()
    TempEnchant2:SetPoint("TOPRIGHT", TempEnchant1, "TOPLEFT", -cfg.buffFrame.colSpacing, 0)
    TempEnchant3:ClearAllPoints()
    TempEnchant3:SetPoint("TOPRIGHT", TempEnchant2, "TOPLEFT", -cfg.buffFrame.colSpacing, 0)
  end
  
  --consolidated buff stuff
  --ConsolidatedBuffs:SetScript("OnLoad", nil) --do not fuck up the icon anymore
  --applySkin(ConsolidatedBuffs)
  --position the consolidate buff button
  --ConsolidatedBuffs:ClearAllPoints()
  --ConsolidatedBuffs:SetPoint("TOPRIGHT", rBFS_BuffDragFrame, "TOPRIGHT", 0, 0)
  --ConsolidatedBuffsTooltip:SetScale(cfg.consolidatedTooltipScale)
  
  --hook Blizzard functions (removed in MoP Classic 5.5.x; only hook if they still exist)
  if type(BuffFrame_UpdateAllBuffAnchors) == "function" then
    hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", updateAllBuffAnchors)
  end
  if type(DebuffButton_UpdateAnchors) == "function" then
    hooksecurefunc("DebuffButton_UpdateAnchors", updateDebuffAnchors)
  end

  ---------------------------------------
  -- MoP Classic 5.5.x: retail-style BuffFrame/DebuffFrame
  ---------------------------------------
  -- The player buff/debuff frames were rewritten as pooled, nameless aura buttons
  -- (b.Icon / b.Duration / b.Count, no b.Border, no global BuffButton1), so the old
  -- hook-driven applySkin above can't reach them. Skin them directly on aura updates.
  --BuffFrame.auraFrames mixes two templates: some elements have .Icon as a Texture,
  --others (isAuraAnchor) wrap it in a Frame. Dig out the real Texture either way.
  local function iconTex(b)
    local ic = b.Icon
    if not ic then return nil end
    if ic.GetTexture then return ic end                       --Icon is itself a Texture
    if ic.Icon and ic.Icon.GetTexture then return ic.Icon end --Icon is a Frame wrapping a Texture
    if ic.Texture and ic.Texture.GetTexture then return ic.Texture end
    if ic.GetRegions then
      for _, r in ipairs({ ic:GetRegions() }) do
        if r.GetObjectType and r:GetObjectType() == "Texture" then return r end
      end
    end
    return nil
  end
  local function fontStr(o)
    if not o then return nil end
    if o.SetFont then return o end
    if o.GetRegions then
      for _, r in ipairs({ o:GetRegions() }) do
        if r.GetObjectType and r:GetObjectType() == "FontString" then return r end
      end
    end
    return nil
  end

  local function skinAuraButton(b, conf)
    if not b or not b.CreateTexture then return end
    --icon (crop the default border)
    local icon = iconTex(b)
    if icon and icon.SetTexCoord then icon:SetTexCoord(0.1, 0.9, 0.1, 0.9) end
    --anchor decorations to the icon, not the frame: the modern aura frame is taller than
    --the icon (extra room for the duration text below), so framing the whole frame looks oversized
    local anchor = icon or b
    --border: drawn on an overlay frame above the icon (gloss sheen), created once
    if not b.lortiBorder then
      local ov = CreateFrame("Frame", nil, b)
      ov:SetAllPoints(b)
      ov:SetFrameLevel(b:GetFrameLevel() + 4)
      local border = ov:CreateTexture(nil, "OVERLAY")
      border:SetTexture(conf.border.texture)
      border:SetTexCoord(0, 1, 0, 1)
      border:SetAllPoints(anchor)
      local col = conf.border.classcolored and classColor or conf.border.color
      border:SetVertexColor(col.r, col.g, col.b)
      b.lortiBorder = border
    end
    --shadow backdrop (behind the button), created once
    if not b.lortiBg and conf.background.show then
      local back = CreateFrame("Frame", nil, b, "BackdropTemplate")
      back:SetPoint("TOPLEFT", anchor, "TOPLEFT", -conf.background.padding, conf.background.padding)
      back:SetPoint("BOTTOMRIGHT", anchor, "BOTTOMRIGHT", conf.background.padding, -conf.background.padding)
      back:SetFrameLevel(max(0, b:GetFrameLevel() - 1))
      back:SetBackdrop({ edgeFile = conf.background.edgeFile, edgeSize = conf.background.inset })
      back:SetBackdropBorderColor(conf.background.color.r, conf.background.color.g, conf.background.color.b, conf.background.color.a)
      b.lortiBg = back
    end
    --fonts
    local dur = fontStr(b.Duration)
    if dur then
      dur:SetFont(conf.duration.font, conf.duration.size, "THINOUTLINE")
      --the modern frame re-anchors the duration below the whole (taller) frame every update,
      --leaving a gap under the icon. Hook SetPoint to keep pulling it back under the icon.
      if icon and not dur.lortiAnchored then
        dur.lortiAnchored = true
        local function reanchor()
          if dur.lortiBusy then return end
          dur.lortiBusy = true
          dur:ClearAllPoints()
          dur:SetPoint("TOP", icon, "BOTTOM", 0, -1)
          dur.lortiBusy = false
        end
        reanchor()
        hooksecurefunc(dur, "SetPoint", reanchor)
      end
    end
    local cnt = fontStr(b.Count)
    if cnt then cnt:SetFont(conf.count.font, conf.count.size, "THINOUTLINE") end
    --only show our decorations when the slot actually holds an aura (the pool keeps
    --empty, still-shown frames; without this they render as bare black boxes)
    local active = b:IsShown() and icon and icon.GetTexture and icon:GetTexture() and true or false
    if b.lortiBorder then b.lortiBorder:SetShown(active) end
    if b.lortiBg then b.lortiBg:SetShown(active) end
  end

  local function skinAllAuras()
    if BuffFrame and BuffFrame.auraFrames then
      for _, b in ipairs(BuffFrame.auraFrames) do skinAuraButton(b, ns.cfg.buffFrame) end
    end
    if DebuffFrame and DebuffFrame.auraFrames then
      for _, b in ipairs(DebuffFrame.auraFrames) do skinAuraButton(b, ns.cfg.debuffFrame) end
    end
  end

  if BuffFrame and BuffFrame.auraFrames then
    local af = CreateFrame("Frame")
    af:RegisterUnitEvent("UNIT_AURA", "player")
    af:RegisterEvent("PLAYER_ENTERING_WORLD")
    af:SetScript("OnEvent", skinAllAuras)
    skinAllAuras()
  end
