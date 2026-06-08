local addonName, addonTable = ...

local WowSimsExport = {}
addonTable.WowSimsExport = WowSimsExport

local function AcquireLibParse(silent)
  local acquireLibrary = addonTable.AcquireLibrary
  if type(acquireLibrary) == "function" then
    return acquireLibrary("LibParse", silent)
  end
  if not silent and type(addonTable.ReportMissingLibrary) == "function" then
    addonTable.ReportMissingLibrary("LibParse")
  end
  if LibStub then
    return LibStub("LibParse", true)
  end
  return nil
end

local LibParse = AcquireLibParse(true)

local EXPORT_VERSION = "v3.2.1"
local UNIT_PLAYER = "player"
local REFORGE_TABLE_BASE = 112

local EQUIPMENT_SLOT_LAYOUT = {
  INVSLOT_HEAD,
  INVSLOT_NECK,
  INVSLOT_SHOULDER,
  INVSLOT_BACK,
  INVSLOT_CHEST,
  INVSLOT_WRIST,
  INVSLOT_HAND,
  INVSLOT_WAIST,
  INVSLOT_LEGS,
  INVSLOT_FEET,
  INVSLOT_FINGER1,
  INVSLOT_FINGER2,
  INVSLOT_TRINKET1,
  INVSLOT_TRINKET2,
  INVSLOT_MAINHAND,
  INVSLOT_OFFHAND,
  INVSLOT_RANGED,
}

local function CreateScanningTooltip()
  if _G.WSEScanningTooltip then
    return _G.WSEScanningTooltip
  end

  local tooltip = CreateFrame("GameTooltip", "WSEScanningTooltip", nil, "GameTooltipTemplate")
  tooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
  tooltip:Hide()
  return tooltip
end

local scanningTooltip = CreateScanningTooltip()

local function BuildProfessionLookup()
  local professionSkillLineIDs = {
    Blacksmithing  = 164,
    Leatherworking = 165,
    Alchemy        = 171,
    Herbalism      = 182,
    Mining         = 186,
    Tailoring      = 197,
    Engineering    = 202,
    Enchanting     = 333,
    Skinning       = 393,
    Jewelcrafting  = 755,
    Inscription    = 773,
  }

  local lookup = {}
  for englishName, skillLine in pairs(professionSkillLineIDs) do
    local localizedName = C_TradeSkillUI and C_TradeSkillUI.GetTradeSkillDisplayName and C_TradeSkillUI.GetTradeSkillDisplayName(skillLine)
    if localizedName then
      lookup[localizedName] = {
        skillLine = skillLine,
        englishName = englishName,
      }
    end
  end

  return lookup
end

local professionLookup = BuildProfessionLookup()

local function CreateProfessionEntry()
  local professions = {}
  for index = 1, GetNumSkillLines() do
    local name, _, _, skillLevel, _, _, skillLine = GetSkillLineInfo(index)
    local data = professionLookup[name]
    if data then
      table.insert(professions, {
        name = data.englishName,
        level = skillLevel,
      })
    end
  end
  return professions
end

local function CreateGlyphEntry()
  local glyphs = {
    prime = {},
    major = {},
    minor = {},
  }

  if not C_SpecializationInfo or not C_SpecializationInfo.GetActiveSpecGroup then
    return glyphs
  end

  local activeSpecGroup = C_SpecializationInfo.GetActiveSpecGroup(false)
  local unit = UNIT_PLAYER
  local numGlyphSockets = GetNumGlyphSockets()

  for slot = 1, numGlyphSockets do
    local enabled, glyphType, _, glyphID = GetGlyphSocketInfo(slot, activeSpecGroup, false, unit)
    if enabled and glyphType and glyphID then
      local targetTable
      if glyphType == 1 then
        targetTable = glyphs.major
      elseif glyphType == 2 then
        targetTable = glyphs.minor
      else
        targetTable = glyphs.prime
      end
      table.insert(targetTable, { spellID = glyphID })
    end
  end

  glyphs.prime = nil
  return glyphs
end

local function CreateTalentString()
  if not C_SpecializationInfo or not C_SpecializationInfo.GetTalentInfo then
    return ""
  end

  local talents = {}
  local activeSpecGroup = C_SpecializationInfo.GetActiveSpecGroup(false)
  for tier = 1, MAX_NUM_TALENT_TIERS do
    local found = false
    for column = 1, 3 do
      local talentInfo = C_SpecializationInfo.GetTalentInfo({
        isInspect = false,
        target = UNIT_PLAYER,
        groupIndex = activeSpecGroup,
        tier = tier,
        column = column,
      })
      if talentInfo and talentInfo.selected then
        found = true
        talents[#talents + 1] = tostring(column)
        break
      end
    end
    if not found then
      talents[#talents + 1] = "0"
    end
  end
  return table.concat(talents)
end

local englishSpecSet = {
  deathknight = { blood = true, frost = true, unholy = true },
  druid = { balance = true, feral = true, guardian = true, restoration = true },
  hunter = { beast_mastery = true, marksman = true, survival = true },
  mage = { arcane = true, fire = true, frost = true },
  monk = { brewmaster = true, mistweaver = true, windwalker = true },
  paladin = { holy = true, protection = true, retribution = true },
  priest = { disc = true, holy = true, shadow = true },
  rogue = { assassination = true, combat = true, subtlety = true },
  shaman = { elemental = true, enhancement = true, restoration = true },
  warlock = { affliction = true, demonology = true, destruction = true },
  warrior = { arms = true, fury = true, protection = true },
}

local localizedSpecMap = {
  deathknight = {
    ["blut"] = "blood",
    ["frost"] = "frost",
    ["unheilig"] = "unholy",
  },
  druid = {
    ["gleichgewicht"] = "balance",
    ["balance"] = "balance",
    ["wildheit"] = "feral",
    ["wildheit_(katze)"] = "feral",
    ["feral"] = "feral",
    ["wächter"] = "guardian",
    ["wächter_(bär)"] = "guardian",
    ["waechter"] = "guardian",
    ["guardian"] = "guardian",
    ["wiederherstellung"] = "restoration",
    ["restauration"] = "restoration",
  },
  hunter = {
    ["tierherrschaft"] = "beast_mastery",
    ["beast mastery"] = "beast_mastery",
    ["beast_mastery"] = "beast_mastery",
    ["treffsicherheit"] = "marksman",
    ["marksmanship"] = "marksman",
    ["marksman"] = "marksman",
    ["überleben"] = "survival",
    ["ueberleben"] = "survival",
    ["survival"] = "survival",
  },
  mage = {
    ["arkane"] = "arcane",
    ["arcane"] = "arcane",
    ["feuer"] = "fire",
    ["fire"] = "fire",
    ["frost"] = "frost",
  },
  monk = {
    ["braumeister"] = "brewmaster",
    ["brewmaster"] = "brewmaster",
    ["nebelwirker"] = "mistweaver",
    ["mistweaver"] = "mistweaver",
    ["windläufer"] = "windwalker",
    ["windlaeufer"] = "windwalker",
    ["windwalker"] = "windwalker",
  },
  paladin = {
    ["heilig"] = "holy",
    ["holy"] = "holy",
    ["schutz"] = "protection",
    ["protection"] = "protection",
    ["vergeltung"] = "retribution",
    ["retribution"] = "retribution",
  },
  priest = {
    ["disziplin"] = "disc",
    ["discipline"] = "disc",
    ["disc"] = "disc",
    ["heilig"] = "holy",
    ["holy"] = "holy",
    ["schatten"] = "shadow",
    ["shadow"] = "shadow",
  },
  rogue = {
    ["meucheln"] = "assassination",
    ["assassination"] = "assassination",
    ["kampf"] = "combat",
    ["combat"] = "combat",
    ["täuschung"] = "subtlety",
    ["taeuschung"] = "subtlety",
    ["subtlety"] = "subtlety",
  },
  shaman = {
    ["elementar"] = "elemental",
    ["elemental"] = "elemental",
    ["verstärkung"] = "enhancement",
    ["verstaerkung"] = "enhancement",
    ["enhancement"] = "enhancement",
    ["wiederherstellung"] = "restoration",
    ["restauration"] = "restoration",
    ["restoration"] = "restoration",
  },
  warlock = {
    ["gebrechen"] = "affliction",
    ["affliction"] = "affliction",
    ["dämonologie"] = "demonology",
    ["daemonologie"] = "demonology",
    ["demonologie"] = "demonology",
    ["demonology"] = "demonology",
    ["zerstörung"] = "destruction",
    ["zerstoerung"] = "destruction",
    ["destruction"] = "destruction",
  },
  warrior = {
    ["waffen"] = "arms",
    ["arms"] = "arms",
    ["furor"] = "fury",
    ["fury"] = "fury",
    ["schutz"] = "protection",
    ["protection"] = "protection",
  },
}

local function normalizeSpecName(className, specName)
  if type(specName) ~= "string" or specName == "" then
    return ""
  end

  local classKey = type(className) == "string" and className:lower() or ""

  local normalized = specName:lower()
  normalized = normalized:gsub("%s+", "_")
  normalized = normalized:gsub("%-", "_")

  if englishSpecSet[classKey] and englishSpecSet[classKey][normalized] then
    return normalized
  end

  local classMap = localizedSpecMap[classKey]
  if classMap then
    local translated = classMap[normalized]
    if translated then
      return translated
    end
  end

  for _, map in pairs(localizedSpecMap) do
    local translated = map[normalized]
    if translated then
      return translated
    end
  end

  local englishSet = englishSpecSet[classKey]
  if englishSet then
    for englishName in pairs(englishSet) do
      if normalized == englishName:gsub("%s+", "_") then
        return englishName
      end
    end
  end

  return normalized
end

local function GetSpecSlug(className)
  if not C_SpecializationInfo or not C_SpecializationInfo.GetSpecialization then
    return ""
  end

  local specIndex = C_SpecializationInfo.GetSpecialization()
  if not specIndex then
    return ""
  end

  local _, specName = C_SpecializationInfo.GetSpecializationInfo(specIndex)
  return normalizeSpecName(className, specName)
end

local function GetSpecDisplay(className)
  if not C_SpecializationInfo or not C_SpecializationInfo.GetSpecialization then
    return ""
  end

  local specIndex = C_SpecializationInfo.GetSpecialization()
  if not specIndex then
    return ""
  end

  local _, specName = C_SpecializationInfo.GetSpecializationInfo(specIndex)
  return normalizeSpecName(className, specName)
end

local function NormalizeGemList(gems)
  for index = #gems, 2, -1 do
    if gems[index] and not gems[index - 1] then
      gems[index - 1] = 0
    end
  end

  local cleaned = {}
  for index = 1, #gems do
    local value = gems[index]
    if value ~= nil then
      cleaned[#cleaned + 1] = value
    end
  end

  return cleaned
end

local function ParseItemLink(itemLink)
  if not itemLink then
    return
  end

  local parseItemLinkData = addonTable.ParseItemLinkData
  local parsed = type(parseItemLinkData) == "function" and parseItemLinkData(itemLink) or nil
  local itemId = parsed and parsed.id
  local enchantId = parsed and parsed.enchant
  local gem1 = parsed and parsed.gems and parsed.gems[1]
  local gem2 = parsed and parsed.gems and parsed.gems[2]
  local gem3 = parsed and parsed.gems and parsed.gems[3]
  local gem4 = parsed and parsed.gems and parsed.gems[4]
  local suffixId = parsed and parsed.random_suffix
  local uniqueId = parsed and parsed.unique_id
  local linkLevel = parsed and parsed.link_level
  local reforgeId = parsed and parsed.refId
  local upgradeId = parsed and parsed.upgrade

  if not parsed then
    local _
    _, itemId, enchantId, gem1, gem2, gem3, gem4, suffixId, uniqueId, linkLevel, reforgeId, _, upgradeId = strsplit(":", itemLink)
  end

  local data = {
    id = tonumber(itemId),
    enchant = tonumber(enchantId),
    gems = NormalizeGemList({ tonumber(gem1), tonumber(gem2), tonumber(gem3), tonumber(gem4) }),
    random_suffix = tonumber(suffixId),
    unique_id = tonumber(uniqueId),
    link_level = tonumber(linkLevel),
    refId = tonumber(reforgeId),
    upgrade = tonumber(upgradeId),
  }
  return data
end

local function GetItemUpgradeLevel(unit, slotId)
  scanningTooltip:ClearLines()
  scanningTooltip:SetInventoryItem(unit, slotId)

  local regions = { scanningTooltip:GetRegions() }
  local pattern = ITEM_UPGRADE_TOOLTIP_FORMAT and ITEM_UPGRADE_TOOLTIP_FORMAT:gsub("%%d", "(%%d)") or nil

  for _, region in ipairs(regions) do
    if region and region:GetObjectType() == "FontString" then
      local text = region:GetText()
      if text and pattern then
        local _, _, currentLevel = text:find(pattern)
        if currentLevel then
          return tonumber(currentLevel)
        end
      end
    end
  end

  return nil
end

local function GetHandTinker(unit)
  scanningTooltip:ClearLines()
  scanningTooltip:SetInventoryItem(unit, INVSLOT_HAND)

  local regions = { scanningTooltip:GetRegions() }
  local onUse = ITEM_SPELL_TRIGGER_ONUSE or "Use:";
  local cdMinutes = ITEM_COOLDOWN_TOTAL_MIN or "min";
  local cdSeconds = ITEM_COOLDOWN_TOTAL_SEC or "sec";

  for _, region in ipairs(regions) do
    if region and region:GetObjectType() == "FontString" then
      local text = region:GetText()
      if text then
        if text:find(onUse .. ".+1.?9.?20.+" .. cdMinutes) then
          return 4898
        end
        if text:find(onUse .. ".+2.?8.?80.+" .. cdMinutes) then
          return 4697
        end
        if text:find(onUse .. ".+42.?0?00.+63.?0?00.+" .. cdSeconds) then
          return 4698
        end
      end
    end
  end

  return nil
end

local function BuildEquipmentSpec(method)
  local equipment = {
    version = EXPORT_VERSION,
    items = {},
  }

  for itemIndex, slotId in ipairs(EQUIPMENT_SLOT_LAYOUT) do
    local itemLink = GetInventoryItemLink(UNIT_PLAYER, slotId)
    if itemLink then
      local parsed = ParseItemLink(itemLink)
      if parsed and parsed.id then
        local itemData = {
          id = parsed.id,
          enchant = parsed.enchant,
        }

        if parsed.gems then
          itemData.gems = parsed.gems
        end

        if parsed.random_suffix and parsed.random_suffix ~= 0 then
          itemData.random_suffix = parsed.random_suffix
        end

        local methodItem = method and method.items and method.items[itemIndex]
        if methodItem then
          if methodItem.reforge and methodItem.reforge > 0 then
            itemData.reforging = REFORGE_TABLE_BASE + methodItem.reforge
          else
            itemData.reforging = nil
          end
        elseif parsed.refId and parsed.refId > 0 then
          itemData.reforging = parsed.refId
        end

        if parsed.upgrade and parsed.upgrade > 0 then
          itemData.upgrade_step = parsed.upgrade
        else
          local upgrade = GetItemUpgradeLevel(UNIT_PLAYER, slotId)
          if upgrade and upgrade > 0 then
            itemData.upgrade_step = upgrade
          end
        end

        if slotId == INVSLOT_HAND then
          local tinker = GetHandTinker(UNIT_PLAYER)
          if tinker and tinker ~= 0 then
            itemData.tinker = tinker
          end
        end

        equipment.items[itemIndex] = itemData
      end
    end
  end

  return equipment
end

local function CreateCharacterSkeleton()
  local name, realm = UnitFullName(UNIT_PLAYER)
  local _, englishClass = UnitClass(UNIT_PLAYER)
  local _, englishRace = UnitRace(UNIT_PLAYER)
  local level = UnitLevel(UNIT_PLAYER)

  local race = englishRace
  if englishRace == "Pandaren" then
    local faction = UnitFactionGroup(UNIT_PLAYER)
    if faction and faction ~= "" then
      race = string.format("%s (%s)", englishRace, faction:sub(1, 1))
    end
  end

  local classSlug = englishClass and englishClass:lower() or ""

  local character = {
    version = EXPORT_VERSION,
    unit = UNIT_PLAYER,
    id = UnitGUID(UNIT_PLAYER) or "",
    name = name,
    realm = realm,
    race = race,
    class = classSlug,
    level = level,
    talents = CreateTalentString(),
    glyphs = CreateGlyphEntry(),
    professions = CreateProfessionEntry(),
    spec = GetSpecSlug(classSlug),
    gear = nil,
  }

  return character
end

local function EnsureLibParse()
  if LibParse then
    return true
  end

  LibParse = AcquireLibParse()

  return LibParse ~= nil
end

function WowSimsExport.Generate(method)
  if not EnsureLibParse() then
    return nil, "LibParse not available"
  end

  local character = CreateCharacterSkeleton()
  character.gear = BuildEquipmentSpec(method)

  if not character.spec or character.spec == "" then
    local specName = GetSpecDisplay(character.class)
    if specName and specName ~= "" then
      character.spec = specName
    end
  end

  local success, result = pcall(function()
    return LibParse:JSONEncode(character)
  end)

  if success then
    return result
  end

  return nil, result
end

function WowSimsExport.GenerateFromMethod(method)
  return WowSimsExport.Generate(method)
end
