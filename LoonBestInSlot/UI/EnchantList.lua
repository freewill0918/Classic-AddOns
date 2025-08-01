LBIS.EnchantList = {};

local itemSlotOrder = {}
itemSlotOrder[LBIS.L["Head"]] = 0;
itemSlotOrder[LBIS.L["Shoulder"]] = 1;
itemSlotOrder[LBIS.L["Back"]] = 2;
itemSlotOrder[LBIS.L["Chest"]] = 3;
itemSlotOrder[LBIS.L["Wrist"]] = 4;
itemSlotOrder[LBIS.L["Hands"]] = 5;
itemSlotOrder[LBIS.L["Waist"]] = 6;
itemSlotOrder[LBIS.L["Legs"]] = 7;
itemSlotOrder[LBIS.L["Feet"]] = 8;
itemSlotOrder[LBIS.L["Neck"]] = 9;
itemSlotOrder[LBIS.L["Ring"]] = 10;
itemSlotOrder[LBIS.L["Trinket"]] = 11;
itemSlotOrder[LBIS.L["Main Hand"]] = 12;
itemSlotOrder[LBIS.L["Off Hand"]] = 13;
itemSlotOrder[LBIS.L["Ranged/Relic"]] = 14;

local function itemSortFunction(table, k1, k2)

    local item1 = table[k1];
    local item2 = table[k2];

    local item1Score = 0;
    local item2Score = 0;

    local item1Slot = strsplit("~", item1.Slot);
    local item2lot = strsplit("~", item2.Slot);

    if itemSlotOrder[item1Slot] < itemSlotOrder[item2lot] then
        item1Score = item1Score + 1000;
    end
    if itemSlotOrder[item1Slot] > itemSlotOrder[item2lot] then
        item2Score = item2Score +  1000;
    end

    if item1Score == item2Score then
        return item1.Id > item2.Id;
    else
        return item1Score > item2Score
    end
end

local function IsInSlot(specItem)
    local slot1, slot2, slot3, slot4 = strsplit("~", specItem.Slot);
    if LBISSettings.SelectedSlot == LBIS.L["All"] then
        return true;
    elseif slot1 ~= nil and strfind(slot1, LBISSettings.SelectedSlot) ~= nil then
        return true;
    elseif slot2 ~= nil and strfind(slot2, LBISSettings.SelectedSlot) ~= nil then
        return true;
    elseif slot3 ~= nil and strfind(slot3, LBISSettings.SelectedSlot) ~= nil then
        return true;
    elseif slot4 ~= nil and strfind(slot4, LBISSettings.SelectedSlot) ~= nil then
        return true;
    end
    return false;
end

local function createItemRow(f, specEnchant, specEnchantSource)

    LBIS:GetSpellInfo(specEnchant.Id, function(item)
        local window = LBIS.BrowserWindow.Window;

        local b = CreateFrame("Button", nil, f);
        b:SetSize(32, 32);
        local bt = b:CreateTexture();
        bt:SetAllPoints();
        
        if specEnchantSource.TextureId ~= nil and specEnchantSource.TextureId ~= "" and tonumber(specEnchantSource.TextureId) > 0 and tonumber(specEnchantSource.TextureId) < 99999 then
            LBIS:GetItemInfo(tonumber(specEnchantSource.TextureId), function(textureItem)
                bt:SetTexture(textureItem.Texture);
            end);
        else
            bt:SetTexture(item.Texture);
        end

        b:SetPoint("TOPLEFT", f, 2, -5);

        LBIS:SetTooltipOnButton(b, item, true);

        local t = f:CreateFontString(nil, nil, "GameFontNormal");
        t:SetText((item.Link or item.Name):gsub("[%[%]]", ""));
        t:SetPoint("TOPLEFT", b, "TOPRIGHT", 2, -2);

        local st = f:CreateFontString(nil, nil,"GameFontNormalGraySmall");
        st:SetText(specEnchant.Slot:gsub("~", "/"));
        st:SetPoint("BOTTOMLEFT", b, "BOTTOMRIGHT", 2, 2);
        
        if tonumber(specEnchantSource.DesignId) > 0 and tonumber(specEnchantSource.DesignId) < 99999 then
            LBIS:GetItemInfo(tonumber(specEnchantSource.DesignId), function(designItem)

                if designItem.Name == nil then
                    return;
                end

                local b2 = CreateFrame("Button", nil, f);
                b2:SetSize(32, 32);
                local bt2 = b2:CreateTexture();
                bt2:SetAllPoints();
                bt2:SetTexture(designItem.Texture);
                b2:SetPoint("TOPLEFT", (window.ScrollFrame:GetWidth() / 2), -5);

                LBIS:SetTooltipOnButton(b2, designItem);

                local d = f:CreateFontString(nil, nil, "GameFontNormal");
                d:SetText(specEnchantSource.Source);
                d:SetJustifyH("LEFT");
                d:SetPoint("TOPLEFT", b2, "TOPRIGHT", 2, -2);

                local dl = f:CreateFontString(nil, nil, "GameFontNormalSmall");
                dl:SetText(specEnchantSource.SourceLocation);
                dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
            end);
        else
            local d = f:CreateFontString(nil, nil, "GameFontNormal");
            d:SetText(specEnchantSource.Source);
            d:SetJustifyH("LEFT");
            d:SetWidth(window.ScrollFrame:GetWidth() / 2);
            d:SetPoint("TOPLEFT", (window.ScrollFrame:GetWidth() / 2), -5);

            local dl = f:CreateFontString(nil, nil, "GameFontNormalSmall");
            dl:SetText(specEnchantSource.SourceLocation);
            dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
        end
    end);

    -- even if we are reusing, it may not be in the same order
    local _, count = string.gsub(specEnchantSource.Source, "/", "")
    if count > 1 then
        count = count - 1;
    else 
        count = 0;
    end
    return (46 + (count * 10));
end

function LBIS.EnchantList:UpdateItems()

    LBIS.BrowserWindow.Window.SlotDropDown:Show();
    LBIS.BrowserWindow.Window.PhaseDropDown:Hide();
    LBIS.BrowserWindow.Window.RankDropDown:Hide();
    LBIS.BrowserWindow.Window.SourceDropDown:Hide();
    LBIS.BrowserWindow.Window.RaidDropDown:Hide();

    LBIS.BrowserWindow:UpdateItemsForSpec(function(point)

        local specEnchants = LBIS.EnchantsBySpecAndId[LBIS.NameToSpecId[LBISSettings.SelectedSpec]];

        if specEnchants == nil then
            LBIS.BrowserWindow.Window.ShowUnavailable();
        end

        for enchantId, specEnchant in LBIS:spairs(specEnchants, itemSortFunction) do

            local specEnchantSource = LBIS.EnchantSources[specEnchant.Id];

            if specEnchantSource == nil then
                LBIS:Error("Missing Enchant source: ", specEnchant);
            else
                if LBIS:IsInSlot(specEnchant) then
                    point = LBIS.BrowserWindow:CreateItemRow(specEnchant, specEnchantSource, LBISSettings.SelectedSpec.."_"..specEnchantSource.Name.."_"..specEnchant.Id, point, createItemRow)
                end
            end
        end
    end);
end