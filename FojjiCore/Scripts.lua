local SharedMedia = LibStub("LibSharedMedia-3.0")
FojjiCore = {}
FojjiCore_Version = "1.6.4"

-- Get Font
function FojjiCore:GetFontFromAura(auraName)
    local data = WeakAuras.GetData(auraName)
    if data and data.config and data.config.option and data.config.option.font then
        local path = SharedMedia:Fetch("font", data.config.option.font)
        return path
    end
end

-- Apply Font to Single Region
function FojjiCore:ApplyFontToRegion(region, fontPath)
    if not region or not fontPath then return end

    for i, subRegion in ipairs(region.subRegions or {}) do
        if subRegion.type == "subtext" then
			local _, size, flags = subRegion.text:GetFont()
            subRegion.text:SetFont(fontPath, size, flags)
        end
    end
end

-- Apply Font to a Dynamic Group
function FojjiCore:ApplyFontToGroup(activeRegions, fontPath)
    if not fontPath then
        return
    end

    for _, regionData in ipairs(activeRegions or {}) do
        local region = regionData.region
        self:ApplyFontToRegion(region, fontPath)
    end
end

-- Update All Fonts in a Group
function FojjiCore:PatchFontForGroup(groupName, fontName, isRecursive)
    local icon = "|TInterface\\AddOns\\FojjiCore\\textures\\FojjiBlue.tga:12:12|t"
    local prefix = string.format("%s |cff66ccffFojji|cffff4444Core|r", icon)

    local groupData = WeakAuras.GetData(groupName)
    if not groupData or not groupData.controlledChildren then return end

    if not isRecursive then
        print(string.format("%s Fonts patched for group: |cffddeeff%s|r", prefix, groupName))
    end

    for _, childName in ipairs(groupData.controlledChildren) do
        local childData = WeakAuras.GetData(childName)

        if childData and (childData.regionType == "group" or childData.regionType == "dynamicgroup") and childData.controlledChildren then
            self:PatchFontForGroup(childName, fontName, true)
        else
            local saved = WeakAurasSaved and WeakAurasSaved.displays and WeakAurasSaved.displays[childName]
				if saved then
					if saved.regionType == "text" then
						saved.font = fontName
					end
				if saved.subRegions then
					for _, sub in ipairs(saved.subRegions) do
						if sub.type == "subtext" then
							sub.text_font = fontName
						end
					end
				end
			end
        end
    end

    if not isRecursive then
        print(string.format("%s |cff99ccffType /reload to apply font changes.|r", prefix))
    end
end

