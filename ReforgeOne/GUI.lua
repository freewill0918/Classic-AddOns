local addonName, addonTable = ...
local GUI = {}

local theme = addonTable.THEME or {}
addonTable.THEME = theme

local DEFAULT_THEME_VALUES = {
  background = {0.06, 0.08, 0.12, 0.9},
  backgroundAlt = {0.08, 0.11, 0.16, 0.95},
  border = {0.22, 0.28, 0.38, 0.92},
  headerBackground = {0.08, 0.11, 0.16, 0.96},
  inactiveHeaderBackground = {0.05, 0.09, 0.13, 0.85},
  headerAccent = {0.35, 0.62, 0.99, 1},
  panelBackground = {0.06, 0.08, 0.12, 0.9},
  blockBackground = {0.06, 0.08, 0.12, 0.9},
  blockBorder = {0.25, 0.33, 0.47, 0.92},
  controlBackground = {0.17, 0.21, 0.29, 0.95},
  controlBackgroundDisabled = {0.09, 0.12, 0.18, 0.65},
  controlBorder = {0.3, 0.38, 0.5, 0.9},
  controlBorderDisabled = {0.18, 0.23, 0.32, 0.6},
  accent = {0.02, 0.72, 0.86, 1},
  accentSoft = {0.12, 0.46, 0.58, 1},
  accentHighlight = {0.35, 0.62, 0.99, 1},
  highlight = {0.02, 0.58, 0.72, 0.6},
  highlightSoft = {0.15, 0.4, 0.52, 0.2},
  glow = {0.25, 0.62, 0.88, 0.35},
  textPrimary = {0.94, 0.97, 1, 1},
  textMuted = {0.75, 0.82, 0.92, 1},
  textDim = {0.55, 0.63, 0.76, 1},
  textDisabled = {0.55, 0.6, 0.68, 1},
  positive = {0.43, 0.78, 0.58, 1},
  negative = {0.92, 0.38, 0.42, 1},
  neutral = {0.6, 0.68, 0.84, 1},
}

local PANEL_BUTTON_LEGACY_THEME = {
  accent = {0.33, 0.56, 0.85, 1},
  accentSoft = {0.23, 0.4, 0.66, 1},
  accentHighlight = {0.53, 0.73, 0.94, 1},
  highlight = {0.53, 0.73, 0.94, 0.28},
  highlightSoft = {0.69, 0.82, 0.95, 0.2},
}

local function NormalizeThemeColor(value, fallback)
  if type(value) == "table" then
    if value.GetRGBA then
      return value
    end
    local r = value.r or value[1] or fallback[1]
    local g = value.g or value[2] or fallback[2]
    local b = value.b or value[3] or fallback[3]
    local a = value.a or value[4] or fallback[4]
    return CreateColor(r, g, b, a)
  end

  return CreateColor(fallback[1], fallback[2], fallback[3], fallback[4])
end

for key, fallback in pairs(DEFAULT_THEME_VALUES) do
  theme[key] = NormalizeThemeColor(theme[key], fallback)
end

if type(addonTable.GetThemeColor) ~= "function" then
  function addonTable.GetThemeColor(name, fallbackR, fallbackG, fallbackB, fallbackA)
    local color = theme[name]
    if color then
      if color.GetRGBA then
        return color:GetRGBA()
      elseif type(color) == "table" then
        local r = color.r or color[1]
        local g = color.g or color[2]
        local b = color.b or color[3]
        local a = color.a or color[4]
        if r and g and b then
          return r, g, b, a or fallbackA or 1
        end
      end
    end

    local fallback = DEFAULT_THEME_VALUES[name]
    if fallback then
      return fallback[1], fallback[2], fallback[3], fallback[4]
    end

    return fallbackR or 1, fallbackG or 1, fallbackB or 1, fallbackA or 1
  end
end

local function CreateFontColor(themeKey)
  local r, g, b, a = addonTable.GetThemeColor(themeKey)
  return CreateColor(r, g, b, a)
end

addonTable.FONTS = addonTable.FONTS or {}
local fonts = addonTable.FONTS

local GetThemeColor = addonTable.GetThemeColor

fonts.grey = CreateFontColor("textDim")
fonts.lightgrey = CreateFontColor("textMuted")
fonts.white = CreateFontColor("textPrimary")
fonts.green = CreateFontColor("positive")
fonts.red = CreateFontColor("negative")
fonts.panel = CreateFontColor("backgroundAlt")
fonts.gold = GOLD_FONT_COLOR
fonts.darkyellow = DARKYELLOW_FONT_COLOR
fonts.disabled = CreateFontColor("textDim")
fonts.normal = CreateFontColor("textPrimary")

GUI.widgetCount = 0
function GUI:GenerateWidgetName ()
  self.widgetCount = self.widgetCount + 1
  return addonName .. "Widget" .. self.widgetCount
end
GUI.defaultParent = nil
function GUI:ClearEditFocus()
  if MenuUtil and MenuUtil.CloseMenu then
    MenuUtil.CloseMenu()
  end
  for _,v in ipairs(self.editBoxes) do
    v:ClearFocus()
  end
end

function GUI:ClearFocus()
  self:ClearEditFocus()
end

local function ApplyFontColor(target)
  if not target or not target.SetTextColor then
    return
  end

  if addonTable.FONTS and addonTable.FONTS.white then
    target:SetTextColor(addonTable.FONTS.white:GetRGB())
  else
    target:SetTextColor(1, 1, 1)
  end
end

local WHITE_TEXTURE = "Interface\\Buttons\\WHITE8X8"

local function Clamp01(value)
  if value <= 0 then
    return 0
  end
  if value >= 1 then
    return 1
  end
  return value
end

local function ScaleColor(r, g, b, factor)
  return Clamp01(r * factor), Clamp01(g * factor), Clamp01(b * factor)
end

local function ApplyGradient(texture, topColor, bottomColor)
  if not texture or not texture.SetGradient then
    return
  end
  texture:SetTexture(WHITE_TEXTURE)
  texture:SetGradient("VERTICAL", topColor, bottomColor)
end

local function CopyColorOverrides(overrides)
  if type(overrides) ~= "table" then
    return nil
  end

  local copy = {}
  for key, color in pairs(overrides) do
    if type(color) == "table" then
      copy[key] = {color[1], color[2], color[3], color[4]}
    end
  end

  return next(copy) and copy or nil
end

local function GetPanelButtonThemeColor(button, key)
  if button and button._reforgePanelColorOverrides then
    local override = button._reforgePanelColorOverrides[key]
    if override then
      return override[1], override[2], override[3], override[4]
    end
  end

  return GetThemeColor(key)
end

local function EnsurePanelButtonArt(button)
  if button._reforgePanelArtInitialized then
    return
  end

  for _, regionName in ipairs({
    "Left", "Right", "Middle",
    "TopLeft", "TopRight", "TopMiddle",
    "BottomLeft", "BottomRight", "BottomMiddle",
    "Top", "Bottom", "Center",
    "MiddleLeft", "MiddleRight",
    "Bg", "Background",
    "LeftDisabled", "RightDisabled", "MiddleDisabled",
    "LeftHighlight", "RightHighlight", "MiddleHighlight",
  }) do
    local region = button[regionName]
    if region then
      region:SetAlpha(0)
      region:Hide()
    end
  end

  button:SetNormalTexture("")
  button:SetPushedTexture("")
  button:SetDisabledTexture("")
  button:SetHighlightTexture("")

  local shadow = button:CreateTexture(nil, "BACKGROUND", nil, -3)
  shadow:SetPoint("TOPLEFT", -2, 2)
  shadow:SetPoint("BOTTOMRIGHT", 2, -2)
  shadow:SetTexture(WHITE_TEXTURE)
  button._reforgePanelShadow = shadow

  local background = button:CreateTexture(nil, "BACKGROUND", nil, -2)
  background:SetPoint("TOPLEFT", 1, -1)
  background:SetPoint("BOTTOMRIGHT", -1, 1)
  background:SetTexture(WHITE_TEXTURE)
  button._reforgePanelBackground = background

  local sheen = button:CreateTexture(nil, "BACKGROUND", nil, -1)
  sheen:SetPoint("TOPLEFT", background, "TOPLEFT")
  sheen:SetPoint("TOPRIGHT", background, "TOPRIGHT")
  sheen:SetHeight(math.max(10, math.floor((button:GetHeight() or 20) * 0.45)))
  sheen:SetTexture(WHITE_TEXTURE)
  button._reforgePanelSheen = sheen

  local outline = {}
  outline.top = button:CreateTexture(nil, "BORDER")
  outline.top:SetTexture(WHITE_TEXTURE)
  outline.top:SetPoint("TOPLEFT")
  outline.top:SetPoint("TOPRIGHT")
  outline.top:SetHeight(1)

  outline.bottom = button:CreateTexture(nil, "BORDER")
  outline.bottom:SetTexture(WHITE_TEXTURE)
  outline.bottom:SetPoint("BOTTOMLEFT")
  outline.bottom:SetPoint("BOTTOMRIGHT")
  outline.bottom:SetHeight(1)

  outline.left = button:CreateTexture(nil, "BORDER")
  outline.left:SetTexture(WHITE_TEXTURE)
  outline.left:SetPoint("TOPLEFT")
  outline.left:SetPoint("BOTTOMLEFT")
  outline.left:SetWidth(1)

  outline.right = button:CreateTexture(nil, "BORDER")
  outline.right:SetTexture(WHITE_TEXTURE)
  outline.right:SetPoint("TOPRIGHT")
  outline.right:SetPoint("BOTTOMRIGHT")
  outline.right:SetWidth(1)
  button._reforgePanelOutline = outline

  local highlight = button:CreateTexture(nil, "HIGHLIGHT")
  highlight:SetPoint("TOPLEFT", background, "TOPLEFT")
  highlight:SetPoint("BOTTOMRIGHT", background, "BOTTOMRIGHT")
  highlight:SetTexture(WHITE_TEXTURE)
  highlight:SetBlendMode("ADD")
  button:SetHighlightTexture(highlight)
  button._reforgePanelHighlight = highlight

  button._reforgePanelArtInitialized = true
end

local function UpdatePanelButtonVisualState(button)
  if not button or not button.IsEnabled then
    return
  end

  EnsurePanelButtonArt(button)

  local accentR, accentG, accentB = GetPanelButtonThemeColor(button, "accent")
  local accentSoftR, accentSoftG, accentSoftB = GetPanelButtonThemeColor(button, "accentSoft")
  local borderR, borderG, borderB = GetPanelButtonThemeColor(button, "border")
  local highlightR, highlightG, highlightB, highlightA = GetPanelButtonThemeColor(button, "highlight")
  local accentHighlightR, accentHighlightG, accentHighlightB = GetPanelButtonThemeColor(button, "accentHighlight")
  local dimR, dimG, dimB = GetPanelButtonThemeColor(button, "textDim")

  local isEnabled = button:IsEnabled()
  local isPressed = button._reforgePanelPressed

  local baseR, baseG, baseB
  if not isEnabled then
    baseR, baseG, baseB = dimR, dimG, dimB
  elseif isPressed then
    baseR, baseG, baseB = accentSoftR, accentSoftG, accentSoftB
  else
    baseR, baseG, baseB = accentR, accentG, accentB
  end

  local topR, topG, topB = ScaleColor(baseR, baseG, baseB, isPressed and 0.85 or 1.1)
  local bottomR, bottomG, bottomB = ScaleColor(baseR, baseG, baseB, isPressed and 0.65 or 0.92)
  ApplyGradient(button._reforgePanelBackground, CreateColor(topR, topG, topB, 1), CreateColor(bottomR, bottomG, bottomB, 1))

  local sheenAlpha = isEnabled and 0.35 or 0.18
  ApplyGradient(button._reforgePanelSheen, CreateColor(accentHighlightR, accentHighlightG, accentHighlightB, sheenAlpha), CreateColor(accentHighlightR, accentHighlightG, accentHighlightB, 0))

  local shadowTopAlpha = isEnabled and 0.45 or 0.25
  local shadowBottomAlpha = isEnabled and 0.1 or 0.05
  ApplyGradient(button._reforgePanelShadow, CreateColor(0, 0, 0, shadowTopAlpha), CreateColor(0, 0, 0, shadowBottomAlpha))

  for _, outlineTex in pairs(button._reforgePanelOutline or {}) do
    outlineTex:SetVertexColor(borderR, borderG, borderB, isEnabled and 0.9 or 0.6)
  end

  local highlightTexture = button._reforgePanelHighlight or button:GetHighlightTexture()
  if highlightTexture then
    highlightTexture:SetVertexColor(highlightR, highlightG, highlightB, (highlightA or 0.3) * (isEnabled and 1 or 0.4))
  end
end

local function UpdatePanelButtonTextColor(button)
  if not button or not button.IsEnabled then
    return
  end

  local fontString = button.Text or button:GetFontString()
  if fontString then
    local colorKey = button:IsEnabled() and "textPrimary" or "textDim"
    local r, g, b = addonTable.GetThemeColor(colorKey)
    fontString:SetTextColor(r, g, b)
  end

  UpdatePanelButtonVisualState(button)
end

local function ApplyPanelButtonTheme(button)
  if not button then
    return
  end

  EnsurePanelButtonArt(button)

  if not button._reforgePanelButtonThemeHooked then
    button._reforgePanelButtonThemeHooked = true
    button:HookScript("OnEnable", function(btn)
      btn._reforgePanelPressed = false
      UpdatePanelButtonTextColor(btn)
    end)
    button:HookScript("OnDisable", function(btn)
      btn._reforgePanelPressed = false
      UpdatePanelButtonTextColor(btn)
    end)
    button:HookScript("OnMouseDown", function(btn)
      if btn:IsEnabled() then
        btn._reforgePanelPressed = true
        UpdatePanelButtonVisualState(btn)
      end
    end)
    button:HookScript("OnMouseUp", function(btn)
      if btn._reforgePanelPressed then
        btn._reforgePanelPressed = false
        UpdatePanelButtonVisualState(btn)
      end
    end)
    button:HookScript("OnHide", function(btn)
      if btn._reforgePanelPressed then
        btn._reforgePanelPressed = false
        UpdatePanelButtonVisualState(btn)
      end
    end)
    button:HookScript("OnShow", UpdatePanelButtonVisualState)
  end

  UpdatePanelButtonTextColor(button)
end

GUI.ApplyPanelButtonTheme = ApplyPanelButtonTheme

function GUI:ApplyEditBoxStyle(box)
  if not box then
    return
  end

  local bgR, bgG, bgB, bgA = GetThemeColor("controlBackground", 0.17, 0.21, 0.29, 0.95)
  local borderR, borderG, borderB, borderA = GetThemeColor("controlBorder", 0.3, 0.38, 0.5, 0.9)
  local accentR, accentG, accentB, accentA = GetThemeColor("accent", 0.02, 0.72, 0.86, 0.85)
  local highlightR, highlightG, highlightB, highlightA = GetThemeColor("highlight", accentR, accentG, accentB, 0.25)

  for _, regionName in ipairs({"Left", "Right", "Middle"}) do
    local region = box[regionName]
    if region then
      region:SetAlpha(0)
    end
  end

  if not box.modernBorder then
    box.modernBorder = box:CreateTexture(nil, "BACKGROUND", nil, -8)
    box.modernBorder:SetPoint("TOPLEFT", -2, 2)
    box.modernBorder:SetPoint("BOTTOMRIGHT", 2, -2)
  end
  box.modernBorder:SetColorTexture(borderR, borderG, borderB, borderA)
  box.modernBorder.originalColor = {borderR, borderG, borderB, borderA}

  if not box.modernBackground then
    box.modernBackground = box:CreateTexture(nil, "BACKGROUND", nil, -7)
    box.modernBackground:SetPoint("TOPLEFT", -1, 1)
    box.modernBackground:SetPoint("BOTTOMRIGHT", 1, -1)
  end
  box.modernBackground:SetColorTexture(bgR, bgG, bgB, bgA)

  if not box.modernFocusOverlay then
    box.modernFocusOverlay = box:CreateTexture(nil, "BORDER", nil, -6)
    box.modernFocusOverlay:SetPoint("TOPLEFT", -2, 2)
    box.modernFocusOverlay:SetPoint("BOTTOMRIGHT", 2, -2)
    box.modernFocusOverlay:Hide()
  end
  box.modernFocusOverlay:SetColorTexture(accentR, accentG, accentB, 0.35)

  if not box.modernHoverOverlay then
    box.modernHoverOverlay = box:CreateTexture(nil, "BORDER", nil, -7)
    box.modernHoverOverlay:SetPoint("TOPLEFT", -2, 2)
    box.modernHoverOverlay:SetPoint("BOTTOMRIGHT", 2, -2)
    box.modernHoverOverlay:Hide()
  end
  box.modernHoverOverlay:SetColorTexture(highlightR, highlightG, highlightB, highlightA)

  box:SetTextInsets(4, 4, 2, 2)
  box:SetFontObject(GameFontHighlightSmall)
  local textR, textG, textB = GetThemeColor("textPrimary", 0.94, 0.97, 1.0)
  if box.SetTextColor then
    box:SetTextColor(textR, textG, textB)
  end

  if not box._modernFocusHooked then
    box._modernFocusHooked = true
    box:HookScript("OnEditFocusGained", function(edit)
      local focusAccentR, focusAccentG, focusAccentB, focusAccentA = GetThemeColor("accent", accentR, accentG, accentB, accentA)
      if edit.modernBorder then
        edit.modernBorder:SetColorTexture(focusAccentR, focusAccentG, focusAccentB, focusAccentA)
      end
      if edit.modernFocusOverlay then
        edit.modernFocusOverlay:SetColorTexture(focusAccentR, focusAccentG, focusAccentB, 0.4)
        edit.modernFocusOverlay:Show()
      end
      if edit.modernHoverOverlay then
        edit.modernHoverOverlay:Hide()
      end
    end)
    box:HookScript("OnEditFocusLost", function(edit)
      if edit.modernBorder and edit.modernBorder.originalColor then
        edit.modernBorder:SetColorTexture(unpack(edit.modernBorder.originalColor))
      end
      if edit.modernFocusOverlay then
        edit.modernFocusOverlay:Hide()
      end
      if edit.modernHoverOverlay then
        if edit:IsMouseOver() then
          edit.modernHoverOverlay:Show()
        else
          edit.modernHoverOverlay:Hide()
        end
      end
    end)
    box:HookScript("OnEnter", function(edit)
      if edit:HasFocus() then
        return
      end
      if edit.modernHoverOverlay then
        edit.modernHoverOverlay:Show()
      end
    end)
    box:HookScript("OnLeave", function(edit)
      if edit:HasFocus() then
        return
      end
      if edit.modernHoverOverlay then
        edit.modernHoverOverlay:Hide()
      end
    end)
  end
end

function GUI:SetPanelButtonColorOverrides(button, overrides)
  if not button then
    return
  end

  if overrides then
    button._reforgePanelColorOverrides = CopyColorOverrides(overrides)
  else
    button._reforgePanelColorOverrides = nil
  end

  UpdatePanelButtonVisualState(button)
end

function GUI:GetLegacyPanelButtonTheme()
  return CopyColorOverrides(PANEL_BUTTON_LEGACY_THEME)
end

local function DropdownIsEnabled(dropdown)
  if not dropdown then
    return false
  end

  if dropdown.IsEnabled then
    local ok, enabled = pcall(dropdown.IsEnabled, dropdown)
    if ok then
      return enabled and true or false
    end
  end

  return dropdown.isDisabled == nil or dropdown.isDisabled == false
end

local function StripDropdownTextures(frame)
  if not frame then
    return
  end

  local ignored = {}
  if frame.Arrow and frame.Arrow.GetObjectType and frame.Arrow:GetObjectType() == "Texture" then
    ignored[frame.Arrow] = true
  end

  for _, regionName in ipairs({
    "Left", "Right", "Middle", "Center", "Top", "Bottom", "TopLeft", "TopRight", "BottomLeft", "BottomRight",
    "BG", "Background", "Border", "BorderLeft", "BorderRight", "BorderMiddle", "BorderTop", "BorderBottom",
    "BorderCenter", "NineSlice",
  }) do
    local region = frame[regionName]
    if region then
      if region.Hide then
        region:Hide()
      end
      if region.SetAlpha then
        region:SetAlpha(0)
      end
      if region.SetVertexColor then
        region:SetVertexColor(0, 0, 0, 0)
      end
    end
  end

  local regions = {frame:GetRegions()}
  for _, region in ipairs(regions) do
    if region and region.GetObjectType and region:GetObjectType() == "Texture" and not ignored[region] then
      region:SetAlpha(0)
      region:Hide()
    end
  end

  if frame.SetNormalTexture then
    frame:SetNormalTexture("")
  end
  if frame.SetPushedTexture then
    frame:SetPushedTexture("")
  end
  if frame.SetDisabledTexture then
    frame:SetDisabledTexture("")
  end
  if frame.SetHighlightTexture then
    frame:SetHighlightTexture("")
  end
end

local function UpdateDropdownSheenHeight(dropdown)
  if not dropdown or not dropdown._reforgeDropdownSheen then
    return
  end

  local height = dropdown:GetHeight() or 20
  dropdown._reforgeDropdownSheen:SetHeight(math.max(10, math.floor(height * 0.45)))
end

local function EnsureDropdownArt(dropdown)
  if not dropdown or dropdown._reforgeDropdownArtInitialized then
    return
  end

  StripDropdownTextures(dropdown)
  StripDropdownTextures(dropdown.Button)

  local shadow = dropdown:CreateTexture(nil, "BACKGROUND", nil, -3)
  shadow:SetPoint("TOPLEFT", -2, 2)
  shadow:SetPoint("BOTTOMRIGHT", 2, -2)
  shadow:SetTexture(WHITE_TEXTURE)
  dropdown._reforgeDropdownShadow = shadow

  local background = dropdown:CreateTexture(nil, "BACKGROUND", nil, -2)
  background:SetPoint("TOPLEFT", 1, -1)
  background:SetPoint("BOTTOMRIGHT", -1, 1)
  background:SetTexture(WHITE_TEXTURE)
  dropdown._reforgeDropdownBackground = background

  local sheen = dropdown:CreateTexture(nil, "BACKGROUND", nil, -1)
  sheen:SetPoint("TOPLEFT", background, "TOPLEFT")
  sheen:SetPoint("TOPRIGHT", background, "TOPRIGHT")
  sheen:SetTexture(WHITE_TEXTURE)
  dropdown._reforgeDropdownSheen = sheen

  local outline = {}
  outline.top = dropdown:CreateTexture(nil, "BORDER")
  outline.top:SetTexture(WHITE_TEXTURE)
  outline.top:SetPoint("TOPLEFT")
  outline.top:SetPoint("TOPRIGHT")
  outline.top:SetHeight(1)

  outline.bottom = dropdown:CreateTexture(nil, "BORDER")
  outline.bottom:SetTexture(WHITE_TEXTURE)
  outline.bottom:SetPoint("BOTTOMLEFT")
  outline.bottom:SetPoint("BOTTOMRIGHT")
  outline.bottom:SetHeight(1)

  outline.left = dropdown:CreateTexture(nil, "BORDER")
  outline.left:SetTexture(WHITE_TEXTURE)
  outline.left:SetPoint("TOPLEFT")
  outline.left:SetPoint("BOTTOMLEFT")
  outline.left:SetWidth(1)

  outline.right = dropdown:CreateTexture(nil, "BORDER")
  outline.right:SetTexture(WHITE_TEXTURE)
  outline.right:SetPoint("TOPRIGHT")
  outline.right:SetPoint("BOTTOMRIGHT")
  outline.right:SetWidth(1)
  dropdown._reforgeDropdownOutline = outline

  local highlight = dropdown:CreateTexture(nil, "HIGHLIGHT")
  highlight:SetPoint("TOPLEFT", background, "TOPLEFT")
  highlight:SetPoint("BOTTOMRIGHT", background, "BOTTOMRIGHT")
  highlight:SetTexture(WHITE_TEXTURE)
  highlight:SetBlendMode("ADD")
  dropdown._reforgeDropdownHighlight = highlight

  dropdown._reforgeDropdownArtInitialized = true
  UpdateDropdownSheenHeight(dropdown)
end

local function UpdateDropdownTextColor(dropdown)
  if not dropdown then
    return
  end

  local text = dropdown.Text
  if text then
    local colorKey = DropdownIsEnabled(dropdown) and "textPrimary" or "textDim"
    local r, g, b = addonTable.GetThemeColor(colorKey)
    text:SetTextColor(r, g, b)
  end
end

local function UpdateDropdownVisualState(dropdown)
  if not dropdown then
    return
  end

  EnsureDropdownArt(dropdown)

  local isEnabled = DropdownIsEnabled(dropdown)
  local isPressed = dropdown._reforgeDropdownPressed
  local isHovered = dropdown._reforgeDropdownHovered

  local baseKey = isPressed and "accentSoft" or "backgroundAlt"
  local baseR, baseG, baseB = addonTable.GetThemeColor(baseKey)
  local accentHighlightR, accentHighlightG, accentHighlightB = addonTable.GetThemeColor("accentHighlight")
  local highlightR, highlightG, highlightB, highlightA = addonTable.GetThemeColor("highlight")
  local borderR, borderG, borderB = addonTable.GetThemeColor("border")
  local dimR, dimG, dimB = addonTable.GetThemeColor("textDim")

  local hoverBoost = isHovered and 0.08 or 0
  local topFactor = isPressed and 0.92 or (1.02 + hoverBoost)
  local bottomFactor = isPressed and 0.72 or (0.85 + hoverBoost * 0.5)
  local topR, topG, topB = ScaleColor(baseR, baseG, baseB, topFactor)
  local bottomR, bottomG, bottomB = ScaleColor(baseR, baseG, baseB, bottomFactor)
  ApplyGradient(dropdown._reforgeDropdownBackground, CreateColor(topR, topG, topB, 1), CreateColor(bottomR, bottomG, bottomB, 1))

  local sheenAlpha
  if not isEnabled then
    sheenAlpha = 0.18
  elseif isPressed then
    sheenAlpha = 0.22
  elseif isHovered then
    sheenAlpha = 0.42
  else
    sheenAlpha = 0.32
  end
  ApplyGradient(dropdown._reforgeDropdownSheen, CreateColor(accentHighlightR, accentHighlightG, accentHighlightB, sheenAlpha), CreateColor(accentHighlightR, accentHighlightG, accentHighlightB, 0))

  local shadowTopAlpha = isEnabled and (isPressed and 0.55 or 0.45) or 0.25
  local shadowBottomAlpha = isEnabled and 0.12 or 0.06
  ApplyGradient(dropdown._reforgeDropdownShadow, CreateColor(0, 0, 0, shadowTopAlpha), CreateColor(0, 0, 0, shadowBottomAlpha))

  for _, outlineTex in pairs(dropdown._reforgeDropdownOutline or {}) do
    outlineTex:SetVertexColor(borderR, borderG, borderB, isEnabled and 0.9 or 0.55)
  end

  if dropdown._reforgeDropdownHighlight then
    local highlightAlpha
    if not isEnabled then
      highlightAlpha = (highlightA or 0.25) * 0.35
    elseif isHovered then
      highlightAlpha = (highlightA or 0.25) * 1.35
    else
      highlightAlpha = (highlightA or 0.25)
    end
    dropdown._reforgeDropdownHighlight:SetVertexColor(highlightR, highlightG, highlightB, highlightAlpha)
  end

  local arrow = dropdown.Arrow or (dropdown.Button and dropdown.Button.Arrow)
  if arrow and arrow.SetVertexColor then
    if isEnabled then
      local arrowR, arrowG, arrowB = addonTable.GetThemeColor(isHovered and "accent" or "accentHighlight")
      arrow:SetVertexColor(arrowR, arrowG, arrowB, 1)
    else
      arrow:SetVertexColor(dimR, dimG, dimB, 0.6)
    end
  end

  UpdateDropdownTextColor(dropdown)
end

local function UpdateDropdownTheme(dropdown)
  if not dropdown then
    return
  end

  EnsureDropdownArt(dropdown)
  UpdateDropdownSheenHeight(dropdown)
  UpdateDropdownVisualState(dropdown)
end

local function ApplyDropdownTheme(dropdown)
  if not dropdown then
    return
  end

  EnsureDropdownArt(dropdown)

  if not dropdown._reforgeDropdownThemeHooked then
    dropdown._reforgeDropdownThemeHooked = true

    dropdown:HookScript("OnShow", function(frame)
      frame._reforgeDropdownPressed = false
      frame._reforgeDropdownHovered = false
      UpdateDropdownTheme(frame)
    end)
    dropdown:HookScript("OnHide", function(frame)
      frame._reforgeDropdownPressed = false
      frame._reforgeDropdownHovered = false
    end)
    dropdown:HookScript("OnSizeChanged", function(frame)
      UpdateDropdownSheenHeight(frame)
      UpdateDropdownVisualState(frame)
    end)

    local button = dropdown.Button or dropdown
    if button and button.HookScript then
      button:HookScript("OnEnter", function()
        dropdown._reforgeDropdownHovered = true
        UpdateDropdownVisualState(dropdown)
      end)
      button:HookScript("OnLeave", function()
        dropdown._reforgeDropdownHovered = false
        dropdown._reforgeDropdownPressed = false
        UpdateDropdownVisualState(dropdown)
      end)
      button:HookScript("OnMouseDown", function()
        if DropdownIsEnabled(dropdown) then
          dropdown._reforgeDropdownPressed = true
          UpdateDropdownVisualState(dropdown)
        end
      end)
      button:HookScript("OnMouseUp", function()
        if dropdown._reforgeDropdownPressed then
          dropdown._reforgeDropdownPressed = false
          UpdateDropdownVisualState(dropdown)
        end
      end)
    end
  end

  UpdateDropdownTheme(dropdown)
end

GUI.ApplyDropdownTheme = ApplyDropdownTheme

local function ToggleMethod(frame, enabled, enableName, disableName, useBooleanArg)
  if not frame then
    return
  end

  if enabled then
    local method = enableName and frame[enableName]
    if method then
      if useBooleanArg then
        method(frame, true)
      else
        method(frame)
      end
    end
    return
  end

  local methodName = disableName or enableName
  local method = methodName and frame[methodName]
  if method then
    if useBooleanArg then
      method(frame, false)
    else
      method(frame)
    end
  end
end

function GUI:SetDropdownEnabled(dropdown, enabled)
  if not dropdown then
    return
  end

  ToggleMethod(dropdown, enabled, "SetEnabled", "SetEnabled", true)
  ToggleMethod(dropdown, enabled, "EnableDropdown", "DisableDropdown")
  ToggleMethod(dropdown, enabled, "Enable", "Disable")

  local button = dropdown.Button
  if button then
    if button.SetEnabled then
      ToggleMethod(button, enabled, "SetEnabled", "SetEnabled", true)
    else
      ToggleMethod(button, enabled, "Enable", "Disable")
    end
  end

  dropdown.isDisabled = not enabled
  UpdateDropdownTheme(dropdown)
end

local function ForEachDropdown(self, handler)
  for _, dropdown in pairs(self.dropdowns) do
    handler(dropdown, false)
  end
  if self.filterDropdowns then
    for _, dropdown in pairs(self.filterDropdowns) do
      handler(dropdown, true)
    end
  end
end

function GUI:Lock()
  for _, frames in ipairs({self.panelButtons, self.imgButtons, self.editBoxes, self.checkButtons}) do
    for _, frame in pairs(frames) do
      if frame:IsEnabled() then
        frame.locked = true
        frame:Disable()
        if frame:IsMouseEnabled() then
          frame:EnableMouse(false)
          frame.mouseDisabled = true
        elseif frame:IsMouseMotionEnabled() then
          frame:SetMouseMotionEnabled(false)
          frame.mouseMotionDisabled = true
        end
        if frame.SetTextColor then
          frame.prevColor = {frame:GetTextColor()}
          frame:SetTextColor (0.5, 0.5, 0.5)
        end
      end
    end
  end
  ForEachDropdown(self, function(dropdown, isFilter)
    if DropdownIsEnabled(dropdown) and (not isFilter or not dropdown.preventLock) then
      self:SetDropdownEnabled(dropdown, false)
      dropdown.locked = true
    end
  end)
end

function GUI:Unlock()
  for _, frames in ipairs({self.panelButtons, self.imgButtons, self.editBoxes, self.checkButtons}) do
    for _, frame in pairs(frames) do
      if frame.locked then
        frame:Enable()
        frame.locked = nil
        if frame.mouseDisabled then
          frame:EnableMouse(true)
          frame.mouseDisabled = nil
        elseif frame.mouseMotionDisabled then
          frame:SetMouseMotionEnabled(true)
          frame.mouseMotionDisabled = nil
        end
        if frame.prevColor then
          frame:SetTextColor (unpack(frame.prevColor))
          frame.prevColor = nil
        end
      end
    end
  end
  ForEachDropdown(self, function(dropdown)
    if dropdown.locked then
      self:SetDropdownEnabled(dropdown, true)
      dropdown.locked = nil
    end
  end)
end

function GUI:SetTooltip (widget, tip)
  if tip then
    widget:SetScript ("OnEnter", function (tipFrame)
      local tooltipFunc = "AddLine"
      local tipText
      if type(tip) == "function" then
        tipText = tip()
      else
        tipText = tip
      end
      if type(tipText) == "table" then
        if tipText.spellID ~= nil then
          tooltipFunc = "SetSpellByID"
          tipText = tipText.spellID
        end
      end
      if tipText then
        GameTooltip:SetOwner(tipFrame, "ANCHOR_LEFT")
        GameTooltip[tooltipFunc](GameTooltip, tipText, nil, nil, nil, true)
        GameTooltip:Show()
      end
    end)
    widget:SetScript ("OnLeave", GameTooltip_Hide)
  else
    widget:SetScript ("OnEnter", nil)
    widget:SetScript ("OnLeave", nil)
  end
end

GUI.editBoxes = {}
GUI.unusedEditBoxes = {}
function GUI:CreateEditBox (parent, width, height, default, setter, opts)
  opts = opts or {}
  local box
  if #self.unusedEditBoxes > 0 then
    box = tremove (self.unusedEditBoxes)
    box:SetParent (parent)
    box:Show ()
    box:EnableMouse (true)
    self.editBoxes[box:GetName()] = box
  else
    box = CreateFrame ("EditBox", self:GenerateWidgetName (), parent, "InputBoxTemplate")
    self.editBoxes[box:GetName()] = box
    box:SetAutoFocus (false)
    box:SetNumeric ()
    box:SetMaxLetters (8)
    box.Recycle = function (box)
      box:Hide ()
      box:SetScript ("OnEditFocusLost", nil)
      box:SetScript ("OnEditFocusGained", nil)
      box:SetScript ("OnEnterPressed", nil)
      box:SetScript ("OnEnter", nil)
      box:SetScript ("OnLeave", nil)
      box:SetScript ("OnTabPressed", nil)
      self.editBoxes[box:GetName()] = nil
      tinsert (self.unusedEditBoxes, box)
    end
  end
  if width then
    box:SetWidth (width)
  end

  local effectiveHeight = height or box:GetHeight() or 30
  if not opts.preserveHeight then
    effectiveHeight = math.max(14, math.floor((effectiveHeight * 0.5) + 0.5))
  end
  box:SetHeight(effectiveHeight)

  box:SetFontObject(GameFontHighlightSmall)
  local textR, textG, textB = GetThemeColor("textPrimary", 0.94, 0.97, 1.0)
  if box.SetTextColor then
    box:SetTextColor(textR, textG, textB)
  end
  box:SetTextInsets(4, 4, 2, 2)

  box:SetText (default)
  box:SetScript ("OnEnterPressed", box.ClearFocus)
  box:SetScript ("OnEditFocusGained", function(frame)
    frame.prevValue = tonumber(frame:GetText())
    frame:HighlightText()
  end)
  box:SetScript ("OnEditFocusLost", function (frame)
    local value = tonumber(frame:GetText())
    if not value then
      value = frame.prevValue or 0
    end
    frame:SetText (value)
    if setter then
      setter (value)
    end
    frame.prevValue = nil
  end)
  box:SetScript ("OnTabPressed", opts.OnTabPressed)
  self:ApplyEditBoxStyle(box)
  return box
end


GUI.dropdowns = {}
GUI.unusedDropdowns = {}
GUI.filterDropdowns = {}
GUI.unusedFilterDropdowns = {}

local function AcquireDropdownFrame(self, parent, cache, unused, template)
  local dropdown
  if #unused > 0 then
    dropdown = tremove(unused)
    dropdown:SetParent(parent)
    dropdown:Show()
    cache[dropdown:GetName()] = dropdown
    return dropdown, false
  end

  dropdown = CreateFrame("DropdownButton", self:GenerateWidgetName(), parent, template)
  cache[dropdown:GetName()] = dropdown
  dropdown:Show()
  return dropdown, true
end

function GUI:CreateFilterDropdown (parent, text, options)
  options = options or {}
  local dropdown, isNew = AcquireDropdownFrame(self, parent, self.filterDropdowns, self.unusedFilterDropdowns, "WowStyle1FilterDropdownTemplate")

  if isNew then
    dropdown.originalResizeToTextPadding = dropdown.resizeToTextPadding
    dropdown.Recycle = function(frame)
      frame:Hide()
      frame.originalResizeToTextPadding = frame.resizeToTextPadding
      frame.resizeToTextPadding = nil
      self.filterDropdowns[frame:GetName()] = nil
      tinsert(self.unusedFilterDropdowns, frame)
    end
  else
    dropdown:SetEnabled(true)
    if dropdown.originalResizeToTextPadding then
      dropdown.resizeToTextPadding = dropdown.originalResizeToTextPadding
      dropdown.originalResizeToTextPadding = nil
    end
  end

  if options.resizeToTextPadding then
    dropdown.resizeToTextPadding = options.resizeToTextPadding
  end
  dropdown:SetText(text)
  self:SetTooltip(dropdown, options.tooltip)
  ApplyDropdownTheme(dropdown)
  return dropdown
end

function GUI:CreateDropdown (parent, values, options)
  options = options or {}
  local sel, isNew = AcquireDropdownFrame(self, parent, self.dropdowns, self.unusedDropdowns, "WowStyle1DropdownTemplate")

  if isNew then
    if sel.Text then
      sel.Text:ClearAllPoints()
      sel.Text:SetPoint("RIGHT", sel.Arrow, "LEFT")
      sel.Text:SetPoint("LEFT", sel, "LEFT", 9, 0)
      ApplyFontColor(sel.Text)
    end

    sel.GetValues = function(frame)
      return GetValueOrCallFunction(frame, 'values')
    end

    sel.SetValue = function(dropdown, value)
      dropdown.value = value
      dropdown.selectedValue = value
      local list = dropdown:GetValues()
      if not list then
        if dropdown.Text then
          dropdown.Text:SetText("")
        end
        UpdateDropdownTheme(dropdown)
        return
      end
      for _, v in ipairs(list) do
        if v.value == value then
          if dropdown.Text then
            local name = GetValueOrCallFunction(v, "name")
            dropdown.Text:SetText(name or "")
          end
          UpdateDropdownTheme(dropdown)
          return
        end
      end
      if dropdown.Text then
        dropdown.Text:SetText("")
      end
      UpdateDropdownTheme(dropdown)
    end

    sel.Recycle = function(frame)
      frame:Hide()
      frame.setter = nil
      frame.value = nil
      frame.selectedName = nil
      frame.selectedID = nil
      frame.selectedValue = nil
      frame.menuItemDisabled = nil
      frame.menuItemHidden = nil
      frame.values = nil
      if frame.Text then
        frame.Text:SetText("")
      end
      frame._reforgeDropdownPressed = nil
      frame._reforgeDropdownHovered = nil
      self.dropdowns[frame:GetName()] = nil
      tinsert(self.unusedDropdowns, frame)
    end
  end

  sel.values = values
  sel.setter = options.setter
  sel.menuItemDisabled = options.menuItemDisabled
  sel.menuItemHidden = options.menuItemHidden

  sel:SetupMenu(function(dropdown, rootDescription)
    GUI:ClearEditFocus()
    local list = dropdown:GetValues()
    if not list then
      return
    end
    for _, item in ipairs(list) do
      if not (dropdown.menuItemHidden and dropdown.menuItemHidden(item)) then
        local name = GetValueOrCallFunction(item, "name") or ""
        local button = rootDescription:CreateRadio(name, function()
          return dropdown.value == item.value
        end, function()
          local oldValue = dropdown.value
          dropdown.value = item.value
          dropdown.selectedValue = item.value
          if dropdown.Text then
            dropdown.Text:SetText(name)
          end
          if dropdown.setter then
            dropdown.setter(dropdown, item.value, oldValue)
          end
          UpdateDropdownTheme(dropdown)
        end, item.value)

        if dropdown.menuItemDisabled and dropdown.menuItemDisabled(item.value, dropdown) then
          button:SetEnabled(false)
        end
      end
    end
  end)

  if not sel.EnableDropdown then
    sel.EnableDropdown = function(dropdown)
      dropdown:SetEnabled(true)
      dropdown.isDisabled = false
      UpdateDropdownTheme(dropdown)
    end
  end
  if not sel.DisableDropdown then
    sel.DisableDropdown = function(dropdown)
      dropdown:SetEnabled(false)
      dropdown.isDisabled = true
      UpdateDropdownTheme(dropdown)
    end
  end

  sel:SetHeight(options.height or 20)
  self:SetDropdownEnabled(sel, true)
  sel:SetValue(options.default)
  if options.width then
    sel:SetWidth(options.width)
  end
  ApplyDropdownTheme(sel)
  return sel
end

GUI.checkButtons = {}
GUI.unusedCheckButtons = {}
function GUI:CreateCheckButton (parent, text, default, setter, forceNew)
  local btn
  if #self.unusedCheckButtons > 0 and not forceNew then
    btn = tremove (self.unusedCheckButtons)
    btn:SetParent (parent)
    btn:Show ()
    self.checkButtons[btn:GetName()] = btn
  else
    local name = self:GenerateWidgetName ()
    btn = CreateFrame ("CheckButton", name, parent, "UICheckButtonTemplate")
    self.checkButtons[btn:GetName()] = btn
    btn.Recycle = function (btn)
      btn:Hide ()
      btn:SetScript ("OnEnter", nil)
      btn:SetScript ("OnLeave", nil)
      btn:SetScript ("OnClick", nil)
      self.checkButtons[btn:GetName()] = nil
      tinsert (self.unusedCheckButtons, btn)
    end
  end
  btn.Text:SetText(text)
  btn:SetChecked (default)
  if setter then
    btn:SetScript ("OnClick", function (self)
      setter (self:GetChecked ())
    end)
  end
  return btn
end

GUI.imgButtons = {}
GUI.unusedImgButtons = {}
function GUI:CreateImageButton (parent, width, height, img, pus, hlt, disabledTexture, handler)
  local btn
  if #self.unusedImgButtons > 0 then
    btn = tremove (self.unusedImgButtons)
    btn:SetParent (parent)
    btn:Show ()
  else
    local name = self:GenerateWidgetName ()
    btn = CreateFrame ("Button", name, parent)
    self.imgButtons[btn:GetName()] = btn
    btn.Recycle = function (f)
      f:Hide ()
      f:SetScript ("OnEnter", nil)
      f:SetScript ("OnLeave", nil)
      f:SetScript ("OnClick", nil)
      self.imgButtons[f:GetName()] = nil
      tinsert (self.unusedImgButtons, f)
    end
  end
  btn:SetNormalTexture (img)
  btn:SetPushedTexture (pus)
  btn:SetHighlightTexture (hlt or img)
  btn:SetDisabledTexture(disabledTexture or img)
  btn:SetSize(width, height)
  if handler then
    btn:SetScript ("OnClick", handler)
  end
  return btn
end

GUI.panelButtons = {}
GUI.unusedPanelButtons = {}
function GUI:CreatePanelButton(parent, text, handler, options)
  options = options or {}
  local btn
  if #self.unusedPanelButtons > 0 then
    btn = tremove(self.unusedPanelButtons)
    btn:SetParent(parent)
    btn:Show()
    self.panelButtons[btn:GetName()] = btn
    btn._reforgePanelColorOverrides = nil
  else
    local name = self:GenerateWidgetName ()
    btn = CreateFrame("Button", name, parent, "UIPanelButtonTemplate")
    self.panelButtons[btn:GetName()] = btn
    btn.Recycle = function (f)
      f:SetText("")
      f:Hide ()
      f:SetScript ("OnEnter", nil)
      f:SetScript ("OnLeave", nil)
      f:SetScript ("OnPreClick", nil)
      f:SetScript ("OnClick", nil)
      self.panelButtons[btn:GetName()] = nil
      tinsert (self.unusedPanelButtons, f)
      f._reforgePanelColorOverrides = nil
    end
    btn.RenderText = function(f, ...)
      f:SetText(...)
      f:FitToText()
    end
  end
  btn:RenderText(text)
  btn:SetScript("OnClick", handler)
  ApplyPanelButtonTheme(btn)
  self:SetPanelButtonColorOverrides(btn, options.colorOverrides)
  return btn
end

function GUI:CreateColorPicker (parent, width, height, color, handler)
  local box = CreateFrame ("Frame", nil, parent)
  box:SetSize(width, height)
  box:EnableMouse (true)
  box.texture = box:CreateTexture (nil, "OVERLAY")
  box.texture:SetAllPoints ()
  box.texture:SetColorTexture (unpack (color))
  box.glow = box:CreateTexture (nil, "BACKGROUND")
  box.glow:SetPoint ("TOPLEFT", -2, 2)
  box.glow:SetPoint ("BOTTOMRIGHT", 2, -2)
  box.glow:SetColorTexture (addonTable.GetThemeColor("glow"))
  box.glow:Hide ()

  box:SetScript ("OnEnter", function (b) b.glow:Show() end)
  box:SetScript ("OnLeave", function (b) b.glow:Hide() end)
  box:SetScript ("OnMouseDown", function (b)
    local function applyColor(func)
      return function()
        local prevR, prevG, prevB = func(ColorPickerFrame)
        color[1], color[2], color[3] = prevR, prevG, prevB
        b.texture:SetColorTexture(prevR, prevG, prevB)
        if handler then
          handler()
        end
      end
    end
    ColorPickerFrame:SetupColorPickerAndShow({
      r = color[1], g = color[2], b = color[3],
      swatchFunc = applyColor(ColorPickerFrame.GetColorRGB),
      cancelFunc = applyColor(ColorPickerFrame.GetPreviousValues),
    })
  end)

  return box
end

-------------------------------------------------------------------------------

function GUI:CreateHLine (x1, x2, y, w, color, parent)
  parent = parent or self.defaultParent
  local line = parent:CreateTexture (nil, "ARTWORK")
  line:SetDrawLayer ("ARTWORK")
  line:SetColorTexture (unpack(color))
  if x1 > x2 then
    x1, x2 = x2, x1
  end
  line:ClearAllPoints ()
  line:SetTexCoord (0, 0, 0, 1, 1, 0, 1, 1)
  line.width = w
  line:SetPoint ("BOTTOMLEFT", parent, "TOPLEFT", x1, y - w / 2)
  line:SetPoint ("TOPRIGHT", parent, "TOPLEFT", x2, y + w / 2)
  line:Show ()
  line.SetPos = function (self, x1, x2, y)
    if x1 > x2 then
      x1, x2 = x2, x1
    end
    self:ClearAllPoints ()
    self:SetPoint ("BOTTOMLEFT", parent, "TOPLEFT", x1, y - self.width / 2)
    self:SetPoint ("TOPRIGHT", parent, "TOPLEFT", x2, y + self.width / 2)
  end
  return line
end

function GUI:CreateVLine (x, y1, y2, w, color, parent)
  parent = parent or self.defaultParent
  local line = parent:CreateTexture (nil, "ARTWORK")
  line:SetDrawLayer ("ARTWORK")
  line:SetColorTexture (unpack(color))
  if y1 > y2 then
    y1, y2 = y2, y1
  end
  line:ClearAllPoints ()
  line:SetTexCoord (1, 0, 0, 0, 1, 1, 0, 1)
  line.width = w
  line:SetPoint ("BOTTOMLEFT", parent, "TOPLEFT", x - w / 2, y1)
  line:SetPoint ("TOPRIGHT", parent, "TOPLEFT", x + w / 2, y2)
  line:Show ()
  line.SetPos = function (self, x, y1, y2)
    if y1 > y2 then
      y1, y2 = y2, y1
    end
    self:ClearAllPoints ()
    self:SetPoint ("BOTTOMLEFT", parent, "TOPLEFT", x - self.width / 2, y1)
    self:SetPoint ("TOPRIGHT", parent, "TOPLEFT", x + self.width / 2, y2)
  end
  return line
end

--------------------------------------------------------------------------------

function GUI:CreateTable (rows, cols, firstRow, firstColumn, gridColor, parent)
  parent = parent or self.defaultParent
  firstRow = firstRow or 0
  firstColumn = firstColumn or 0

  local t = CreateFrame ("Frame", nil, parent)
  t:ClearAllPoints ()
  t:SetSize(400, 400)
  t:SetPoint ("TOPLEFT")

  t.rows = rows
  t.cols = cols
  t.gridColor = gridColor
  t.autoWidthColumns = {}
  t.rowPos = {}
  t.colPos = {}
  t.rowHeight = {}
  t.colWidth = {}
  t.rowPos[-1] = 0
  t.rowPos[0] = firstRow
  t.colPos[-1] = 0
  t.colPos[0] = firstColumn
  t.rowHeight[0] = firstRow
  t.colWidth[0] = firstColumn

  t.SetRowHeight = function (self, n, h)
    if h then
      if n < 0 or n > self.rows then
        return
      end
      self.rowHeight[n] = h
      if n == 0 and self.hlines then
        self.hlines[-1]:SetShown(h ~= 0)
      end
    else
      for i = 1, self.rows do
        self.rowHeight[i] = n
      end
    end
    self:OnUpdateFix ()
  end
  t.SetColumnWidth = function (self, n, w)
    if w then
      if n < 0 or n > self.cols then
        return
      end
      self.colWidth[n] = w
      if n == 0 and self.vlines then
        self.vlines[-1]:SetShown(w ~= 0)
      end
    else
      for i = 1, self.cols do
        self.colWidth[i] = n
      end
    end
    self:OnUpdateFix ()
  end
  t.SetColumnAutoWidth = function (self, n, enabled)
    if n < 0 or n > self.cols then
      return
    end
    self.autoWidthColumns[n] = enabled
  end
  t.EnableColumnAutoWidth = function (self, ...)
    for _, v in ipairs({...}) do
      self:SetColumnAutoWidth(v, true)
    end
  end
  t.AddRow = function (self, i, n)
    i = i or (self.rows + 1)
    n = n or 1
    local height = ((i == self.rows + 1) and self.rowHeight[i - 1] or self.rowHeight[i])
    for r = self.rows, i, -1 do
      self.cells[r + n] = self.cells[r]
      self.rowHeight[r + n] = self.rowHeight[r]
    end
    for r = i, i + n - 1 do
      self.cells[r] = {}
      self.rowHeight[r] = height
      self.rows = self.rows + 1
      if self.gridColor then
        if self.hlines[self.rows] then
          self.hlines[self.rows]:Show ()
        else
          self.hlines[self.rows] = GUI:CreateHLine (0, 0, 0, 1.5, self.gridColor, self)
        end
      end
    end
    self:OnUpdateFix ()
  end
  t.MoveRow = function (self, i, to)
    local height = self.row[i] - self.rowPos[i - 1]
    local cells = self.cells[i]
    if to > i then
      for r = i + 1, to do
        self.cells[r - 1] = self.cells[r]
        self.rowHeight[r - 1] = self.rowHeight[r]
      end
    elseif to < i then
      for r = i - 1, to, -1 do
        self.cells[r + 1] = self.cells[r]
        self.rowHeight[r + 1] = self.rowHeight[r]
      end
    end
    self.cells[to] = cells
    self.rowHeight[to] = height
    self:OnUpdateFix ()
  end
  t.DeleteRow = function (self, i)
    for j = 0, self.cols do
      if self.cells[i][j] then
        if type (self.cells[i][j].Recycle) == "function" then
          self.cells[i][j]:Recycle ()
        else
          self.cells[i][j]:Hide ()
        end
      end
    end
    for r = i + 1, self.rows do
      self.cells[r - 1] = self.cells[r]
      self.rowHeight[r - 1] = self.rowHeight[r]
    end
    if self.hlines and self.hlines[self.rows] then
      self.hlines[self.rows]:Hide ()
    end
    self.rows = self.rows - 1
    self:OnUpdateFix ()
  end
  t.ClearCells = function (self)
    for i = 0, self.rows do
      for j = 0, self.cols do
        if self.cells[i][j] then
          if type (self.cells[i][j].Recycle) == "function" then
            self.cells[i][j]:Recycle ()
          else
            self.cells[i][j]:Hide ()
          end
        end
      end
      self.cells[i] = {}
    end
  end

  t.GetCellY = function (self, i)
    local n = ceil (i)
    if n < 0 then n = 0 end
    if n > self.rows then n = self.rows end
    return - (self.rowPos[n] + (self.rowPos[n - 1] - self.rowPos[n]) * (n - i))
  end
  t.GetCellX = function (self, j)
    local n = ceil (j)
    if n < 0 then n = 0 end
    if n > self.cols then n = self.cols end
    return self.colPos[n] + (self.colPos[n - 1] - self.colPos[n]) * (n - j)
  end
  t.GetRowHeight = function (self, i)
    return self.rowPos[i] - self.rowPos[i - 1]
  end
  t.GetColumnWidth = function (self, j)
    return self.colPos[j] - self.colPos[j - 1]
  end
  t.AlignCell = function (self, i, j)
    local cell = self.cells[i][j]
    local x = cell.offsX or 0
    local y = cell.offsY or 0
    if cell.align == "FILL" then
      cell:SetPoint ("TOPLEFT", self, "TOPLEFT", self:GetCellX (j - 1) + x, self:GetCellY (i - 1) + y)
      cell:SetPoint ("BOTTOMRIGHT", self, "BOTTOMRIGHT", self:GetCellX (j) + x, self:GetCellY (i) + y)

    elseif cell.align == "TOPLEFT" then
      cell:SetPoint ("TOPLEFT", self, "TOPLEFT", self:GetCellX (j - 1) + 2 + x, self:GetCellY (i - 1) - 2 + y)
    elseif cell.align == "LEFT" then
      cell:SetPoint ("LEFT", self, "TOPLEFT", self:GetCellX (j - 1) + 2 + x, self:GetCellY (i - 0.5) + y)
    elseif cell.align == "BOTTOMLEFT" then
      cell:SetPoint ("BOTTOMLEFT", self, "TOPLEFT", self:GetCellX (j - 1) + 2 + x, self:GetCellY (i) + 2 + y)

    elseif cell.align == "TOP" then
      cell:SetPoint ("TOP", self, "TOPLEFT", self:GetCellX (j - 0.5) + x, self:GetCellY (j - 1) - 2 + y)
    elseif cell.align == "CENTER" then
      cell:SetPoint ("CENTER", self, "TOPLEFT", self:GetCellX (j - 0.5) + x, self:GetCellY (i - 0.5) + y)
    elseif cell.align == "BOTTOM" then
      cell:SetPoint ("BOTTOM", self, "TOPLEFT", self:GetCellX (j - 0.5) + x, self:GetCellY (j) + 2 + y)

    elseif cell.align == "TOPRIGHT" then
      cell:SetPoint ("TOPRIGHT", self, "TOPLEFT", self:GetCellX (j) - 2 + x, self:GetCellY (i - 1) - 2 + y)
    elseif cell.align == "RIGHT" then
      cell:SetPoint ("RIGHT", self, "TOPLEFT", self:GetCellX (j) - 2 + x, self:GetCellY (i - 0.5) + y)
    elseif cell.align == "BOTTOMRIGHT" then
      cell:SetPoint ("BOTTOMRIGHT", self, "TOPLEFT", self:GetCellX (j) - 2 + x, self:GetCellY (i) + 2 + y)
    end
  end
  t.OnUpdateFix = function (self)
    self:SetScript ("OnSizeChanged", nil)

    local numAutoRows = 0
    local totalHeight = 0
    for i = 0, self.rows do
      if self.rowHeight[i] == "AUTO" then
        numAutoRows = numAutoRows + 1
      else
        totalHeight = totalHeight + self.rowHeight[i]
      end
    end
    if numAutoRows == 0 then
      self:SetHeight (totalHeight)
    end
    local remHeight = self:GetHeight () - totalHeight
    for i = 0, self.rows do
      if self.rowHeight[i] == "AUTO" then
        self.rowPos[i] = self.rowPos[i - 1] + remHeight / numAutoRows
      else
        self.rowPos[i] = self.rowPos[i - 1] + self.rowHeight[i]
      end
    end
    local numAutoCols = 0
    local totalWidth = 0
    for i = 0, self.cols do
      if self.colWidth[i] == "AUTO" then
        numAutoCols = numAutoCols + 1
      else
        totalWidth = totalWidth + self.colWidth[i]
      end
    end
    if numAutoCols == 0 then
      self:SetWidth (totalWidth)
    end
    local remWidth = self:GetWidth () - totalWidth
    for i = 0, self.cols do
      if self.colWidth[i] == "AUTO" then
        self.colPos[i] = self.colPos[i - 1] + remWidth / numAutoCols
      else
        self.colPos[i] = self.colPos[i - 1] + self.colWidth[i]
      end
    end

    if self.gridColor then
      for i = -1, self.rows do
        self.hlines[i]:SetPos (0, self.colPos[self.cols], -self.rowPos[i])
      end
      for i = -1, self.cols do
        self.vlines[i]:SetPos (self.colPos[i], 0, -self.rowPos[self.rows])
      end
    end
    for i = -1, self.rows do
      for j = -1, self.cols do
        if self.cells[i][j] then
          self:AlignCell (i, j)
        end
      end
    end

    self:SetScript ("OnSizeChanged", function (self)
      RunNextFrame(function() self:OnUpdateFix() end)
    end)

    if self.onUpdate then
      self.onUpdate ()
    end
  end

  if gridColor then
    t.hlines = {}
    t.vlines = {}
    for i = -1, rows do
      t.hlines[i] = self:CreateHLine (0, 0, 0, 1.5, gridColor, t)
    end
    for i = -1, cols do
      t.vlines[i] = self:CreateVLine (0, 0, 0, 1.5, gridColor, t)
    end
    if firstRow == 0 then
      t.hlines[-1]:Hide ()
    end
    if firstColumn == 0 then
      t.vlines[-1]:Hide ()
    end
  end
  t.cells = {}
  for i = -1, rows do
    t.cells[i] = {}
  end

  for i = 1, t.rows do
    t.rowHeight[i] = "AUTO"
  end
  for j = 1, t.cols do
    t.colWidth[j] = "AUTO"
  end
  t:OnUpdateFix ()

  t:SetScript ("OnSizeChanged", function (self)
    RunNextFrame(function() self:OnUpdateFix() end)
  end)

  t.AutoSizeColumns = function(self, columnIndex)
    local columnsToProcess = {}
    if columnIndex then
      if self.autoWidthColumns[columnIndex] then
        columnsToProcess[columnIndex] = true
      end
    else
      for index, enabled in pairs(self.autoWidthColumns) do
        if enabled then
          columnsToProcess[index] = true
        end
      end
    end

    if not next(columnsToProcess) then
      return
    end

    local maxWidths = {}
    for _, row in pairs(self.cells) do
      for colIndex in pairs(columnsToProcess) do
        local cell = row[colIndex]
        if cell then
          local foundWidth = 0
          if cell.GetStringWidth then
            foundWidth = cell:GetStringWidth()
          elseif cell.GetWidth then
            foundWidth = cell:GetWidth()
          end
          local currentMax = maxWidths[colIndex] or 0
          if foundWidth > currentMax then
            maxWidths[colIndex] = ceil(foundWidth) + 10
          end
        end
      end
    end

    for colIndex, width in pairs(maxWidths) do
      self.colWidth[colIndex] = width
    end
    self:OnUpdateFix()
  end

  t.SetCell = function (self, i, j, value, align, offsX, offsY)
    align = align or "CENTER"
    self.cells[i][j] = value
    self.cells[i][j].align = align
    self.cells[i][j].offsX = offsX
    self.cells[i][j].offsY = offsY
    self:AlignCell (i, j)
    self:AutoSizeColumns(j)
  end
  t.textTagPool = {}
  t.SetCellText = function (self, i, j, text, align, color, font)
    align = align or "CENTER"
    color = color or (addonTable.FONTS and addonTable.FONTS.white) or {1, 1, 1}
    font = font or "GameFontNormalSmall"

    if self.cells[i][j] and not self.cells[i][j].istag then
      if type (self.cells[i][j].Recycle) == "function" then
        self.cells[i][j]:Recycle ()
      else
        self.cells[i][j]:Hide ()
      end
      self.cells[i][j] = nil
    end

    if self.cells[i][j] then
      self.cells[i][j]:SetFontObject (font)
      self.cells[i][j]:Show ()
    elseif #self.textTagPool > 0 then
      self.cells[i][j] = tremove (self.textTagPool)
      self.cells[i][j]:SetFontObject (font)
      self.cells[i][j]:Show ()
    else
      self.cells[i][j] = self:CreateFontString (nil, "OVERLAY", font)
      self.cells[i][j].Recycle = function (tag)
        tag:Hide ()
        tinsert (self.textTagPool, tag)
      end
    end
    self.cells[i][j].istag = true
    local r, g, b
    if type(color) == "table" then
      if type(color.GetRGB) == "function" then
        r, g, b = color:GetRGB()
      elseif color.r and color.g and color.b then
        r, g, b = color.r, color.g, color.b
      else
        r, g, b = unpack(color)
      end
    elseif type(color) == "userdata" and type(color.GetRGB) == "function" then
      r, g, b = color:GetRGB()
    end
    if not r then
      r, g, b = 1, 1, 1
    end
    self.cells[i][j]:SetTextColor (r, g, b)
    self.cells[i][j]:SetText (text)
    self.cells[i][j].align = align
    self:AlignCell (i, j)
    self:AutoSizeColumns(j)
  end
  t.CollapseRow = function(self, i)
    if not self.rowHeight or i < 0 or i > self.rows then
      return
    end
    if not self.collapsedRows then
      self.collapsedRows = {}
    end
    if self.collapsedRows[i] then
      return
    end
    local originalHeight = self.rowHeight[i]
    if not originalHeight or originalHeight == 0 then
      originalHeight = self.defaultRowHeight or "AUTO"
    end
    self.collapsedRows[i] = originalHeight
    self.rowHeight[i] = 0
    if self.cells[i] then
      for j = 0, self.cols do
        if self.cells[i][j] then
          self.cells[i][j]:SetAlpha(0)
        end
      end
    end
    self:OnUpdateFix()
  end
  t.ExpandRow = function(self, i)
    if not (self.collapsedRows and self.collapsedRows[i]) then
      return
    end
    local restoredHeight = self.collapsedRows[i]
    if restoredHeight == "AUTO" then
      restoredHeight = "AUTO"
    elseif type(restoredHeight) ~= "number" or restoredHeight <= 0 then
      restoredHeight = self.defaultRowHeight or self.rowHeight[i] or "AUTO"
    end
    self.rowHeight[i] = restoredHeight
    self.collapsedRows[i] = nil
    if self.cells[i] then
      for j = 0, self.cols do
        if self.cells[i][j] then
          self.cells[i][j]:SetAlpha(1)
        end
      end
    end
    self:OnUpdateFix()
  end
  t.SetRowExpanded = function(self, i, expanded)
    if expanded then
      self:ExpandRow(i)
    else
      self:CollapseRow(i)
    end
  end

  t.CollapseColumn = function(self, j)
    if not j or j < 0 or j > self.cols then
      return
    end

    self.collapsedColumns = self.collapsedColumns or {}
    if not self.collapsedColumns[j] then
      local storedWidth = self:GetColumnWidth(j)
      if type(storedWidth) ~= "number" or storedWidth <= 0 then
        storedWidth = self.colWidth[j]
      end
      if type(storedWidth) ~= "number" or storedWidth <= 0 then
        local defaultWidth = self.defaultColumnWidth and self.defaultColumnWidth[j]
        if type(defaultWidth) == "number" and defaultWidth > 0 then
          storedWidth = defaultWidth
        else
          storedWidth = 0
        end
      end
      self.collapsedColumns[j] = storedWidth
    end

    self.colWidth[j] = 0
    for rowIndex = -1, self.rows do
      local row = self.cells[rowIndex]
      if row then
        local cell = row[j]
        if cell then
          if cell.Hide then
            cell:Hide()
          elseif cell.SetAlpha then
            cell:SetAlpha(0)
          end
        end
      end
    end
    self:OnUpdateFix()
  end

  t.ExpandColumn = function(self, j)
    if not j or j < 0 or j > self.cols then
      return
    end

    local storedWidth
    if self.collapsedColumns then
      storedWidth = self.collapsedColumns[j]
      self.collapsedColumns[j] = nil
    end

    if type(storedWidth) ~= "number" or storedWidth <= 0 then
      if self.defaultColumnWidth and self.defaultColumnWidth[j] then
        storedWidth = self.defaultColumnWidth[j]
      elseif self.minColumnWidth and self.minColumnWidth[j] then
        storedWidth = self.minColumnWidth[j]
      elseif type(self.colWidth[j]) == "number" and self.colWidth[j] > 0 then
        storedWidth = self.colWidth[j]
      else
        storedWidth = nil
      end
    end

    if storedWidth and storedWidth > 0 then
      self.colWidth[j] = storedWidth
    elseif self.autoWidthColumns and self.autoWidthColumns[j] then
      self.colWidth[j] = self.colWidth[j] == 0 and "AUTO" or self.colWidth[j]
    end

    for rowIndex = -1, self.rows do
      local row = self.cells[rowIndex]
      if row then
        local cell = row[j]
        if cell then
          if cell.Show then
            cell:Show()
          elseif cell.SetAlpha then
            cell:SetAlpha(1)
          end
        end
      end
    end

    if self.autoWidthColumns and self.autoWidthColumns[j] then
      self:AutoSizeColumns(j)
    else
      self:OnUpdateFix()
    end
  end

  t.CollapseColumn = function(self, j)
    if not j or j < 0 or j > self.cols then
      return
    end

    self.collapsedColumns = self.collapsedColumns or {}
    if not self.collapsedColumns[j] then
      local storedWidth = self:GetColumnWidth(j)
      if type(storedWidth) ~= "number" or storedWidth <= 0 then
        storedWidth = self.colWidth[j]
      end
      if type(storedWidth) ~= "number" or storedWidth <= 0 then
        local defaultWidth = self.defaultColumnWidth and self.defaultColumnWidth[j]
        if type(defaultWidth) == "number" and defaultWidth > 0 then
          storedWidth = defaultWidth
        else
          storedWidth = 0
        end
      end
      self.collapsedColumns[j] = storedWidth
    end

    self.colWidth[j] = 0
    for rowIndex = -1, self.rows do
      local row = self.cells[rowIndex]
      if row then
        local cell = row[j]
        if cell then
          if cell.Hide then
            cell:Hide()
          elseif cell.SetAlpha then
            cell:SetAlpha(0)
          end
        end
      end
    end
    self:OnUpdateFix()
  end

  t.ExpandColumn = function(self, j)
    if not j or j < 0 or j > self.cols then
      return
    end

    local storedWidth
    if self.collapsedColumns then
      storedWidth = self.collapsedColumns[j]
      self.collapsedColumns[j] = nil
    end

    if type(storedWidth) ~= "number" or storedWidth <= 0 then
      if self.defaultColumnWidth and self.defaultColumnWidth[j] then
        storedWidth = self.defaultColumnWidth[j]
      elseif self.minColumnWidth and self.minColumnWidth[j] then
        storedWidth = self.minColumnWidth[j]
      elseif type(self.colWidth[j]) == "number" and self.colWidth[j] > 0 then
        storedWidth = self.colWidth[j]
      else
        storedWidth = nil
      end
    end

    if storedWidth and storedWidth > 0 then
      self.colWidth[j] = storedWidth
    elseif self.autoWidthColumns and self.autoWidthColumns[j] then
      self.colWidth[j] = self.colWidth[j] == 0 and "AUTO" or self.colWidth[j]
    end

    for rowIndex = -1, self.rows do
      local row = self.cells[rowIndex]
      if row then
        local cell = row[j]
        if cell then
          if cell.Show then
            cell:Show()
          elseif cell.SetAlpha then
            cell:SetAlpha(1)
          end
        end
      end
    end

    if self.autoWidthColumns and self.autoWidthColumns[j] then
      self:AutoSizeColumns(j)
    else
      self:OnUpdateFix()
    end
  end

  return t
end

function GUI.CreateStaticPopup(name, text, options, legacyOpts)
  local onAccept
  local opts
  if type(options) == "function" then
    onAccept = options
    opts = legacyOpts or {}
  else
    opts = options or {}
    onAccept = opts.func or opts.OnAccept
  end

  if type(onAccept) ~= "function" then
    error("GUI.CreateStaticPopup requires an onAccept function")
  end

  local hasEditBox = opts.hasEditBox
  if hasEditBox == nil then
    hasEditBox = true
  end

  local dialogWidth = opts.dialogWidth
  local dialogWidthPadding = opts.dialogWidthPadding
  local customOnShow = opts.onShow or opts.OnShow
  local customOnHide = opts.onHide or opts.OnHide

  local helpText = opts.helpText
  local helpTextFont = opts.helpTextFont or "GameFontHighlightSmall"

  local dialogDefinition = {
    text = text,
    button1 = opts.button1 or ACCEPT,
    button2 = opts.button2 or CANCEL,
    hasEditBox = hasEditBox,
    editBoxWidth = opts.editBoxWidth or 350,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    OnAccept = function(self)
      onAccept(self)
    end,
    OnShow = function(self)
      local editBox = self:GetEditBox()
      local desiredWidth = dialogWidth
      if not desiredWidth and dialogWidthPadding and editBox then
        desiredWidth = editBox:GetWidth() + dialogWidthPadding
      end
      if desiredWidth then
        self:SetWidth(desiredWidth)
        if self.text then
          self.text:SetWidth(math.max(desiredWidth - 40, 0))
        end
      end
      if editBox and hasEditBox then
        editBox:SetFocus()
        self:GetButton1():Disable()
      else
        self:GetButton1():Enable()
      end
      self:GetButton2():Enable()

      if type(customOnShow) == "function" then
        customOnShow(self, {
          editBox = editBox,
          hasEditBox = hasEditBox,
        })
      end

      if type(helpText) == "string" and helpText ~= "" then
        local helpTextFrame = self._reforgeHelpTextFrame
        if not helpTextFrame then
          helpTextFrame = self:CreateFontString(nil, "ARTWORK", helpTextFont)
          helpTextFrame:SetJustifyH("LEFT")
          helpTextFrame:SetJustifyV("TOP")
          self._reforgeHelpTextFrame = helpTextFrame
        end

        helpTextFrame:ClearAllPoints()
        local anchorFrame = (hasEditBox and editBox) or self.text
        if anchorFrame then
          helpTextFrame:SetPoint("TOPLEFT", anchorFrame, "BOTTOMLEFT", 0, -8)
        else
          helpTextFrame:SetPoint("TOPLEFT", self, "TOPLEFT", 25, -60)
        end
        helpTextFrame:SetPoint("RIGHT", self, "RIGHT", -40, 0)

        local availableWidth = desiredWidth or self:GetWidth() or 0
        if availableWidth > 0 then
          helpTextFrame:SetWidth(math.max(availableWidth - 60, 0))
        end

        helpTextFrame:SetText(helpText)
        helpTextFrame:Show()
      elseif self._reforgeHelpTextFrame then
        self._reforgeHelpTextFrame:Hide()
      end
    end,
    EditBoxOnEnterPressed = function(editBox)
      local parent = editBox:GetParent()
      if parent:GetButton1():IsEnabled() then
        onAccept(parent)
        parent:Hide()
      end
    end,
    EditBoxOnTextChanged = function(editBox)
      local parent = editBox:GetParent()
      parent:GetButton1():SetEnabled(editBox:GetText() ~= "")
    end,
    EditBoxOnEscapePressed = function(editBox)
      editBox:GetParent():Hide()
    end,
  }

  if type(customOnHide) == "function" then
    dialogDefinition.OnHide = function(self)
      if self._reforgeHelpTextFrame then
        self._reforgeHelpTextFrame:Hide()
      end
      customOnHide(self, {
        editBox = hasEditBox and self:GetEditBox() or nil,
        hasEditBox = hasEditBox,
      })
    end
  elseif type(helpText) == "string" and helpText ~= "" then
    dialogDefinition.OnHide = function(self)
      if self._reforgeHelpTextFrame then
        self._reforgeHelpTextFrame:Hide()
      end
    end
  end

  StaticPopupDialogs[name] = dialogDefinition
end

addonTable.GUI = GUI
