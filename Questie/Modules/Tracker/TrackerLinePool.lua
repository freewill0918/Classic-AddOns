---@class TrackerLinePool
local TrackerLinePool = QuestieLoader:CreateModule("TrackerLinePool")
-------------------------
--Import QuestieTracker modules.
-------------------------
---@type QuestieTracker
local QuestieTracker = QuestieLoader:ImportModule("QuestieTracker")
---@type TrackerBaseFrame
local TrackerBaseFrame = QuestieLoader:ImportModule("TrackerBaseFrame")
---@type TrackerUtils
local TrackerUtils = QuestieLoader:ImportModule("TrackerUtils")
---@type TrackerQuestTimers
local TrackerQuestTimers = QuestieLoader:ImportModule("TrackerQuestTimers")
---@type TrackerMenu
local TrackerMenu = QuestieLoader:ImportModule("TrackerMenu")
---@type TrackerFadeTicker
local TrackerFadeTicker = QuestieLoader:ImportModule("TrackerFadeTicker")
---@type TrackerItemButton
local TrackerItemButton = QuestieLoader:ImportModule("TrackerItemButton")
-------------------------
--Import Questie modules.
-------------------------
---@type QuestieLink
local QuestieLink = QuestieLoader:ImportModule("QuestieLink")
---@type QuestieCombatQueue
local QuestieCombatQueue = QuestieLoader:ImportModule("QuestieCombatQueue")
---@type DistanceUtils
local DistanceUtils = QuestieLoader:ImportModule("DistanceUtils")

---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local LibDropDown = LibStub:GetLibrary("LibUIDropDownMenuQuestie-4.0")
local LSM30 = LibStub("LibSharedMedia-3.0")

local linePoolSize = 250
local lineIndex = 0
local buttonPoolSize = 25
local buttonIndex = 0
local linePool = {}
local buttonPool = {}
local lineMarginLeft = 10

---@param questFrame Frame
function TrackerLinePool.Initialize(questFrame)
    local trackerQuestFrame = questFrame
    local trackerFontSizeQuest = Questie.db.profile.trackerFontSizeQuest

    -- create linePool for quests/achievements
    local nextFrame
    for i = 1, linePoolSize do
        local timeElapsed = 0
        local line = CreateFrame("Button", "linePool" .. i, trackerQuestFrame.ScrollChildFrame)
        line:SetWidth(1)
        line:SetHeight(1)
        line.label = line:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        line.label:SetJustifyH("LEFT")
        line.label:SetJustifyV("TOP")
        line.label:SetPoint("TOPLEFT", line)
        line.label:Hide()

        -- autoadjust parent size for clicks
        line.label._SetText = line.label.SetText
        line.label.frame = line
        line.label.SetText = function(self, text)
            self:_SetText(text)
            self.frame:SetWidth(self:GetWidth())
            self.frame:SetHeight(self:GetHeight())
        end

        if nextFrame then
            -- Second lineIndex hearafter
            line:SetPoint("TOPLEFT", nextFrame, "BOTTOMLEFT", 0, 0)
        else
            -- First lineIndex
            line:SetPoint("TOPLEFT", trackerQuestFrame.ScrollChildFrame, "TOPLEFT", lineMarginLeft, 0)
        end

        line.SetMode = TrackerLinePool.SetMode

        function line:SetZone(ZoneId)
            if type(ZoneId) == "string" then
                self.expandZone.zoneId = ZoneId
            elseif type(ZoneId) == "number" then
                self.ZoneId = TrackerUtils:GetZoneNameByID(ZoneId)
                self.expandZone.zoneId = ZoneId
            end
        end

        function line:SetQuest(Quest)
            if type(Quest) == "number" then
                Quest = {
                    Id = Quest
                }
                self.Quest = Quest
                self.expandQuest.questId = Quest.Id
            else
                self.Quest = Quest
                self.expandQuest.questId = Quest.Id
            end

            -- Set Timed Quest Flag
            if Quest.trackTimedQuest then
                self.trackTimedQuest = Quest.trackTimedQuest
            end
        end

        function line:SetObjective(Objective)
            self.Objective = Objective
        end

        line.OnUpdate = function(self, elapsed)
            if Questie.IsWotlk or Questie.IsCata then
                timeElapsed = timeElapsed + elapsed

                if timeElapsed > 1 and self.trackTimedQuest and self.label.activeTimer then
                    local _, timeRemaining = TrackerQuestTimers:GetRemainingTimeByQuestId(self.Quest.Id)

                    if timeRemaining ~= nil then
                        if timeRemaining > 1 then
                            TrackerQuestTimers:UpdateTimerFrame()
                        end

                        if timeRemaining == 1 then
                            TrackerQuestTimers:UpdateTimerFrame()
                        end

                        timeElapsed = 0
                    else
                        timeElapsed = 0
                        return
                    end
                end
            else
                return
            end
        end

        function line:SetVerticalPadding(amount)
            if self.mode == "zone" then
                self:SetHeight(Questie.db.profile.trackerFontSizeZone + amount)
            elseif self.mode == "quest" or "achieve" then
                self:SetHeight(Questie.db.profile.trackerFontSizeQuest + amount)
            else
                self:SetHeight(Questie.db.profile.trackerFontSizeObjective + amount)
            end
        end

        line:EnableMouse(true)
        line:RegisterForDrag("LeftButton")
        line:RegisterForClicks("RightButtonUp", "LeftButtonUp")

        function line:SetOnClick(onClickmode)
            if onClickmode == "quest" then
                self:SetScript("OnClick", TrackerLinePool.OnClickQuest)
            elseif onClickmode == "achieve" then
                self:SetScript("OnClick", TrackerLinePool.OnClickAchieve)
            end
        end

        line:SetScript("OnDragStart", TrackerBaseFrame.OnDragStart)
        line:SetScript("OnDragStop", TrackerBaseFrame.OnDragStop)

        line:SetScript("OnEnter", function(self)
            TrackerLinePool.OnHighlightEnter(self)
            TrackerFadeTicker.Unfade()
        end)

        line:SetScript("OnLeave", function(self)
            TrackerLinePool.OnHighlightLeave(self)
            TrackerFadeTicker.Fade()
        end)

        -- create objective complete criteria marks
        local criteriaMark = CreateFrame("Button", "linePool.criteriaMark" .. i, line)
        criteriaMark.texture = criteriaMark:CreateTexture(nil, "OVERLAY", nil, 0)
        criteriaMark.texture:SetWidth(Questie.db.profile.trackerFontSizeObjective)
        criteriaMark.texture:SetHeight(Questie.db.profile.trackerFontSizeObjective)
        criteriaMark.texture:SetAllPoints(criteriaMark)

        criteriaMark:SetWidth(1)
        criteriaMark:SetHeight(1)
        criteriaMark:SetPoint("RIGHT", line.label, "LEFT", -4, 0)
        criteriaMark:SetFrameLevel(100)

        criteriaMark.SetCriteria = function(self, criteria)
            if criteria ~= self.mode then
                self.mode = criteria

                if criteria == true then
                    self.texture:SetTexture("Interface\\Addons\\Questie\\Icons\\Checkmark")
                    ---------------------------------------------------------------------
                    -- Just in case we decide to show the minus sign for incompletes
                    ---------------------------------------------------------------------
                    --self.texture:SetAlpha(1)
                    --else
                    --self.texture:SetTexture("Interface\\Addons\\Questie\\Icons\\Minus")
                    --self.texture:SetAlpha(0.5)
                    ---------------------------------------------------------------------
                end

                self:SetWidth(Questie.db.profile.trackerFontSizeObjective)
                self:SetHeight(Questie.db.profile.trackerFontSizeObjective)
            end
        end

        criteriaMark:SetCriteria(false)
        criteriaMark:Hide()

        line.criteriaMark = criteriaMark

        -- create expanding zone headers for quests sorted by zones
        local expandZone = CreateFrame("Button", "linePool.expandZone" .. i, line)
        expandZone:SetWidth(1)
        expandZone:SetHeight(1)
        expandZone:SetPoint("TOPLEFT", line, "TOPLEFT", 0, 0)

        expandZone.SetMode = function(self, mode)
            if mode ~= self.mode then
                self.mode = mode
            end
        end

        expandZone:SetMode(1) -- maximized
        expandZone:EnableMouse(true)
        expandZone:RegisterForDrag("LeftButton")
        expandZone:RegisterForClicks("LeftButtonUp", "LeftButtonDown", "RightButtonUp", "RightButtonDown")

        expandZone:SetScript("OnMouseDown", function(self, button)
            if button == "LeftButton" then
                if IsShiftKeyDown() then
                    -- This sets up the minAllQuestsInZone table upon first click
                    if not Questie.db.char.collapsedZones[self.zoneId] then
                        if not Questie.db.char.minAllQuestsInZone[self.zoneId] then
                            Questie.db.char.minAllQuestsInZone[self.zoneId] = {}
                            -- This flag prevents repopulating QuestID's where we don't want them.
                            Questie.db.char.minAllQuestsInZone[self.zoneId].isTrue = true

                            QuestieCombatQueue:Queue(function()
                                QuestieTracker:Update()
                            end)
                        end
                    end
                end
            end
        end)

        expandZone:SetScript("OnMouseUp", function(self, button)
            if button == "LeftButton" then
                if IsShiftKeyDown() then
                    if not Questie.db.char.collapsedZones[self.zoneId] then
                        C_Timer.After(0.1, function()
                            if Questie.db.char.minAllQuestsInZone[self.zoneId].isTrue then
                                -- Places all QuestID's into the collapsedQuests table and keeps the Min/Max buttons in sync.
                                Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:minAllQuestsInZone] - Minimize")
                                for questId, _ in pairs(Questie.db.char.minAllQuestsInZone[self.zoneId]) do
                                    if type(questId) == "number" then
                                        Questie.db.char.collapsedQuests[questId] = true
                                    end
                                end

                                Questie.db.char.minAllQuestsInZone[self.zoneId].isTrue = nil
                            else
                                -- Removes all QuestID's from the collapsedQuests table.
                                Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:minAllQuestsInZone] - Maximize")
                                for questId, _ in pairs(Questie.db.char.minAllQuestsInZone[self.zoneId]) do
                                    if type(questId) == "number" then
                                        Questie.db.char.collapsedQuests[questId] = nil
                                    end
                                end

                                Questie.db.char.minAllQuestsInZone[self.zoneId] = nil
                            end

                            QuestieCombatQueue:Queue(function()
                                QuestieTracker:Update()
                            end)
                        end)
                    end
                else
                    if self.mode == 1 then
                        self:SetMode(0)
                        Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:expandZone] - Minimize")
                    else
                        self:SetMode(1)
                        Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:expandZone] - Maximize")
                    end

                    if Questie.db.char.collapsedZones[self.zoneId] == true then
                        Questie.db.char.collapsedZones[self.zoneId] = nil
                    else
                        Questie.db.char.collapsedZones[self.zoneId] = true
                    end

                    QuestieCombatQueue:Queue(function()
                        QuestieTracker:Update()
                    end)
                end
            end
        end)

        expandZone:SetScript("OnEnter", function(self)
            TrackerLinePool.OnHighlightEnter(self)
            TrackerFadeTicker.Unfade()
        end)

        expandZone:SetScript("OnLeave", function(self)
            TrackerLinePool.OnHighlightLeave(self)
            TrackerFadeTicker.Fade()
        end)

        expandZone:Hide()

        line.expandZone = expandZone

        -- create play buttons for AI_VoiceOver
        local playButton = CreateFrame("Button", "linePool.playButton" .. i, line)
        playButton:SetWidth(20)
        playButton:SetHeight(20)
        playButton:SetHitRectInsets(2, 2, 2, 2)
        playButton:SetPoint("RIGHT", line.label, "LEFT", -4, 0)
        playButton:SetFrameLevel(0)
        playButton:SetNormalTexture("Interface\\Addons\\Questie\\Icons\\QuestLogPlayButton")
        playButton:SetHighlightTexture("Interface\\BUTTONS\\UI-Panel-MinimizeButton-Highlight")

        playButton.SetPlayButton = function(self, questId)
            if questId ~= self.mode then
                self.mode = questId

                if questId and TrackerUtils:IsVoiceOverLoaded() then
                    self:Show()
                else
                    self.mode = nil
                    self:SetAlpha(0)
                    self:Hide()
                end
            end
        end

        playButton:EnableMouse(true)
        playButton:RegisterForClicks("LeftButtonUp")

        playButton:SetScript("OnClick", function(self)
            if self.mode ~= nil then
                if TrackerUtils:IsVoiceOverLoaded() then
                    local button = VoiceOver.QuestOverlayUI.questPlayButtons[self.mode]
                    if button then
                        if not VoiceOver.QuestOverlayUI.questPlayButtons[self.mode].soundData then
                            local type, id = VoiceOver.DataModules:GetQuestLogQuestGiverTypeAndID(self.mode)
                            local title = GetQuestLogTitle(GetQuestLogIndexByID(self.mode))
                            VoiceOver.QuestOverlayUI.questPlayButtons[self.mode].soundData = {
                                event = VoiceOver.Enums.SoundEvent.QuestAccept,
                                questID = self.mode,
                                name = id and VoiceOver.DataModules:GetObjectName(type, id) or "Unknown Name",
                                title = title,
                                unitGUID = id and VoiceOver.Enums.GUID:CanHaveID(type) and VoiceOver.Utils:MakeGUID(type, id) or nil
                            }
                        end

                        local soundData = VoiceOver.QuestOverlayUI.questPlayButtons[self.mode].soundData
                        local isPlaying = VoiceOver.SoundQueue:Contains(soundData)

                        if not isPlaying then
                            VoiceOver.SoundQueue:AddSoundToQueue(soundData)
                            VoiceOver.QuestOverlayUI:UpdatePlayButtonTexture(self.mode)

                            soundData.stopCallback = function()
                                VoiceOver.QuestOverlayUI:UpdatePlayButtonTexture(self.mode)
                                VoiceOver.QuestOverlayUI.questPlayButtons[self.mode].soundData = nil
                            end
                        else
                            VoiceOver.SoundQueue:RemoveSoundFromQueue(soundData)
                        end

                        isPlaying = button.soundData and VoiceOver.SoundQueue:Contains(button.soundData)
                        local texturePath = isPlaying and "Interface\\Addons\\Questie\\Icons\\QuestLogStopButton" or "Interface\\Addons\\Questie\\Icons\\QuestLogPlayButton"
                        self:SetNormalTexture(texturePath)

                        -- Move the VoiceOverFrame below the DurabilityFrame if it's present and not already moved
                        if (Questie.db.profile.stickyDurabilityFrame and DurabilityFrame:IsVisible()) and select(5, VoiceOverFrame:GetPoint()) < -125 then
                            QuestieTracker:UpdateVoiceOverFrame()
                        end
                    end
                end
            end
        end)

        playButton:SetAlpha(0)
        playButton:Hide()

        line.playButton = playButton

        -- create expanding buttons for quests with objectives
        local expandQuest = CreateFrame("Button", "linePool.expandQuest" .. i, line)
        expandQuest.texture = expandQuest:CreateTexture(nil, "OVERLAY", nil, 0)
        expandQuest.texture:SetWidth(trackerFontSizeQuest)
        expandQuest.texture:SetHeight(trackerFontSizeQuest)
        expandQuest.texture:SetAllPoints(expandQuest)

        expandQuest:SetWidth(trackerFontSizeQuest)
        expandQuest:SetHeight(trackerFontSizeQuest)
        expandQuest:SetPoint("RIGHT", line, "LEFT", 0, 0)
        expandQuest:SetFrameLevel(100)

        expandQuest.SetMode = function(self, mode)
            if mode ~= self.mode then
                self.mode = mode
                if mode == 1 then
                    self.texture:SetTexture("Interface\\Buttons\\UI-MinusButton-Up")
                else
                    self.texture:SetTexture("Interface\\Buttons\\UI-PlusButton-Up")
                end
                self:SetWidth(Questie.db.profile.trackerFontSizeQuest + 3)
                self:SetHeight(Questie.db.profile.trackerFontSizeQuest + 3)
            end
        end

        expandQuest:SetMode(1) -- maximized
        expandQuest:EnableMouse(true)
        expandQuest:RegisterForClicks("LeftButtonUp", "RightButtonUp")

        expandQuest:SetScript("OnClick", function(self)
            if self.mode == 1 then
                self:SetMode(0)
                Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:expandQuest] - Minimize")
            else
                self:SetMode(1)
                Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:expandQuest] - Maximize")
            end
            if Questie.db.char.collapsedQuests[self.questId] then
                Questie.db.char.collapsedQuests[self.questId] = nil

                -- This keeps both tables in sync so we can use them to maintain Min/Max states.
                if Questie.db.char.minAllQuestsInZone[self.zoneId] and Questie.db.char.minAllQuestsInZone[self.zoneId][self.questId] then
                    Questie.db.char.minAllQuestsInZone[self.zoneId][self.questId] = nil
                end
            else
                Questie.db.char.collapsedQuests[self.questId] = true

                -- This keeps both tables in sync so we can use them to maintain Min/Max states.
                if Questie.db.char.minAllQuestsInZone[self.zoneId] then
                    Questie.db.char.minAllQuestsInZone[self.zoneId][self.questId] = true
                end
            end
            QuestieCombatQueue:Queue(function()
                QuestieTracker:Update()
            end)
        end)

        if Questie.IsWotlk or Questie.IsCata then
            line:HookScript("OnUpdate", line.OnUpdate)
        end

        if Questie.db.profile.trackerFadeMinMaxButtons then
            expandQuest:SetAlpha(0)
        end

        expandQuest:SetScript("OnEnter", function()
            TrackerFadeTicker.Unfade()
        end)

        expandQuest:SetScript("OnLeave", function()
            TrackerFadeTicker.Fade()
        end)

        expandQuest:Hide()

        line.expandQuest = expandQuest

        linePool[i] = line
        nextFrame = line
    end

    -- create buttonPool for quest items
    for i = 1, C_QuestLog.GetMaxNumQuestsCanAccept() do
        local btn = TrackerItemButton.New("Questie_ItemButton" .. i)

        buttonPool[i] = btn
        buttonPool[i]:Hide()
    end
end

function TrackerLinePool.ResetLinesForChange()
    if TrackerBaseFrame.isSizing == true or TrackerBaseFrame.isMoving == true then
        Questie:Debug(Questie.DEBUG_SPAM, "[TrackerLinePool:ResetLinesForChange]")
    else
        Questie:Debug(Questie.DEBUG_INFO, "[TrackerLinePool:ResetLinesForChange]")
    end

    if InCombatLockdown() or not Questie.db.profile.trackerEnabled then
        return
    end

    for _, line in pairs(linePool) do
        line.mode = nil
        line.trackTimedQuest = nil
        if line.expandQuest then
            line.expandQuest.mode = nil
            line.expandQuest.questId = nil
        end
        if line.expandZone then
            line.expandZone.mode = nil
            line.expandZone.zoneId = nil
        end
        if line.criteriaMark then
            line.criteriaMark.mode = nil
            line.criteriaMark:SetCriteria(false)
            line.criteriaMark:Hide()
        end
        if line.playButton then
            line.playButton.mode = nil
            line.playButton:SetAlpha(0)
            line.playButton:Hide()
        end
    end

    lineIndex = 0
end

function TrackerLinePool.ResetButtonsForChange()
    if TrackerBaseFrame.isSizing == true or TrackerBaseFrame.isMoving == true then
        Questie:Debug(Questie.DEBUG_SPAM, "[TrackerLinePool:ResetButtonsForChange]")
    else
        Questie:Debug(Questie.DEBUG_INFO, "[TrackerLinePool:ResetButtonsForChange]")
    end

    if InCombatLockdown() or not Questie.db.profile.trackerEnabled then
        return
    end

    buttonIndex = 0
end

function TrackerLinePool.UpdateWrappedLineWidths(trackerLineWidth)
    local trackerFontSizeQuest = Questie.db.profile.trackerFontSizeQuest
    local trackerMarginLeft = 14
    local trackerMarginRight = 30
    local questMarginLeft = (trackerMarginLeft + trackerMarginRight) - (18 - trackerFontSizeQuest)
    local objectiveMarginLeft = questMarginLeft + trackerFontSizeQuest
    local questItemButtonSize = 12 + trackerFontSizeQuest

    -- Updates all the line.label widths in the linePool for wrapped text only
    for _, line in pairs(linePool) do
        if Questie.db.profile.TrackerWidth == 0 then
            if line.mode == "objective" then
                if line.label:GetNumLines() > 1 and line:GetHeight() > Questie.db.profile.trackerFontSizeObjective then
                    line.label:SetText(line.label:GetText())

                    if line.altButton then
                        line.label:SetWidth(trackerLineWidth - objectiveMarginLeft - questItemButtonSize)
                        line:SetWidth(trackerLineWidth + questItemButtonSize)
                    else
                        line.label:SetWidth(trackerLineWidth - objectiveMarginLeft)
                        line:SetWidth(trackerLineWidth)
                    end

                    line:SetHeight(line.label:GetStringHeight() + 2 + Questie.db.profile.trackerQuestPadding)
                    line.label:SetHeight(line:GetHeight() - 2 - Questie.db.profile.trackerQuestPadding)
                end
            end
        end
    end
end

---@return table|nil lineIndex linePool[lineIndex + 1]
function TrackerLinePool.GetNextLine()
    lineIndex = lineIndex + 1
    if not linePool[lineIndex] then
        return nil -- past the line limit
    end

    return linePool[lineIndex]
end

---@return table|nil buttonIndex buttonPool[buttonIndex]
function TrackerLinePool.GetNextItemButton()
    buttonIndex = buttonIndex + 1
    if not buttonPool[buttonIndex] then
        return nil -- past the line limit
    end

    return buttonPool[buttonIndex]
end

---@return number lineIndex lineIndex == 1
function TrackerLinePool.IsFirstLine()
    return linePool[1]
end

---@param index number
---@return table index linePool[index]
function TrackerLinePool.GetLine(index)
    return linePool[index]
end

---@return table lineIndex linePool[lineIndex]
function TrackerLinePool.GetCurrentLine()
    return linePool[lineIndex]
end

---@return table buttonIndex buttonPool[buttonIndex]
function TrackerLinePool.GetCurrentButton()
    return buttonPool[buttonIndex]
end

---@return table|nil lineIndex linePool[lineIndex - 1]
function TrackerLinePool.GetPreviousLine()
    lineIndex = lineIndex - 1
    if not linePool[lineIndex] then
        return nil -- past the line limit
    end

    return linePool[lineIndex]
end

---@return table linePool linePool[1]
function TrackerLinePool.GetFirstLine()
    return linePool[1]
end

---@return table linePool linePool[linePoolSize]
function TrackerLinePool.GetLastLine()
    return linePool[linePoolSize]
end

function TrackerLinePool.HideUnusedLines()
    if TrackerBaseFrame.isSizing == true or TrackerBaseFrame.isMoving == true then
        Questie:Debug(Questie.DEBUG_SPAM, "[TrackerLinePool:HideUnusedLines]")
    else
        Questie:Debug(Questie.DEBUG_INFO, "[TrackerLinePool:HideUnusedLines]")
    end
    local startUnusedLines = 0

    if Questie.db.char.isTrackerExpanded then
        startUnusedLines = lineIndex + 1
    end

    for i = startUnusedLines, linePoolSize do
        local line = linePool[i]
        if line then -- Safe Guard to really concurrent triggers
            line:Hide()
            line.mode = nil
            line.ZoneId = nil
            line.Quest = nil
            line.Objective = nil
            line.Button = nil
            line.altButton = nil
            line.trackTimedQuest = nil
            line.expandQuest.mode = nil
            line.expandQuest.questId = nil
            line.expandZone.mode = nil
            line.expandZone.zoneId = nil
            line.criteriaMark.mode = nil
            line.playButton.mode = nil
        end
    end
end

function TrackerLinePool.HideUnusedButtons()
    if TrackerBaseFrame.isSizing == true or TrackerBaseFrame.isMoving == true then
        Questie:Debug(Questie.DEBUG_SPAM, "[TrackerLinePool:HideUnusedButtons]")
    else
        Questie:Debug(Questie.DEBUG_INFO, "[TrackerLinePool:HideUnusedButtons]")
    end
    local startUnusedButtons = 0

    if Questie.db.char.isTrackerExpanded then
        startUnusedButtons = buttonIndex + 1
    end

    for i = startUnusedButtons, buttonPoolSize do
        local button = buttonPool[i]
        if button then
            button:FakeHide()
            button.itemId = nil
            button.itemName = nil
            button.lineID = nil
            button.fontSize = nil
            button:ClearAllPoints()
            button:SetParent(UIParent)
            button:Hide()
        end
    end
end

---@return number lineIndex
function TrackerLinePool.GetHighestIndex()
    return lineIndex > linePoolSize and linePoolSize or lineIndex
end

---@param alpha number
function TrackerLinePool.SetAllPlayButtonAlpha(alpha)
    if TrackerUtils:IsVoiceOverLoaded() then
        local highestIndex = TrackerLinePool.GetHighestIndex()
        for i = 1, highestIndex do
            local line = linePool[i]
            local questId = line.playButton.mode
            local button = VoiceOver.QuestOverlayUI.questPlayButtons[questId]
            local sound = VoiceOver.DataModules:PrepareSound({ event = 1, questID = questId })

            if button then
                local isPlaying = button.soundData and VoiceOver.SoundQueue:Contains(button.soundData)
                local texturePath = isPlaying and "Interface\\Addons\\Questie\\Icons\\QuestLogStopButton" or "Interface\\Addons\\Questie\\Icons\\QuestLogPlayButton"

                line.playButton:SetNormalTexture(texturePath)
            end

            if IsShiftKeyDown() then
                if sound then
                    line.playButton:SetAlpha(alpha)
                else
                    line.playButton:SetAlpha(0.33)
                end

                line.playButton:SetFrameLevel(200)
            else
                line.playButton:SetAlpha(alpha)
                line.playButton:SetFrameLevel(0)
            end
        end
    end
end

---@param alpha number
function TrackerLinePool.SetAllExpandQuestAlpha(alpha)
    local highestIndex = TrackerLinePool.GetHighestIndex()
    for i = 1, highestIndex do
        linePool[i].expandQuest:SetAlpha(alpha)
    end
end

---@param alpha number
function TrackerLinePool.SetAllItemButtonAlpha(alpha)
    for i = 1, buttonIndex do
        local button = buttonPool[i]
        if (not button) then
            -- This should not happen as we keep track of the buttonIndex
            break
        end

        button:SetAlpha(alpha)
    end
end

---@param button string
TrackerLinePool.OnClickQuest = function(self, button)
    Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:_OnClickQuest]")
    if (not self.Quest) then
        return
    end

    if TrackerMenu.menuFrame:IsShown() then
        LibDropDown:CloseDropDownMenus()
    end

    if TrackerUtils:IsBindTrue(Questie.db.profile.trackerbindSetTomTom, button) then
        local spawn, zone, name = DistanceUtils.GetNearestSpawnForQuest(self.Quest)
        if spawn then
            TrackerUtils:SetTomTomTarget(name, zone, spawn[1], spawn[2])
        end
    elseif TrackerUtils:IsBindTrue(Questie.db.profile.trackerbindUntrack, button) then
        if (IsModifiedClick("CHATLINK") and ChatEdit_GetActiveWindow()) then
            if Questie.db.profile.trackerShowQuestLevel then
                ChatEdit_InsertLink(QuestieLink:GetQuestLinkString(self.Quest.level, self.Quest.name, self.Quest.Id))
            else
                ChatEdit_InsertLink("[" .. self.Quest.name .. " (" .. self.Quest.Id .. ")]")
            end
        else
            QuestieTracker:UntrackQuestId(self.Quest.Id)
            local questLogFrame = QuestLogExFrame or ClassicQuestLog or QuestLogFrame
            if questLogFrame:IsShown() then
                QuestLog_Update()
            end
        end
    elseif TrackerUtils:IsBindTrue(Questie.db.profile.trackerbindOpenQuestLog, button) then
        TrackerUtils:ShowQuestLog(self.Quest)
    elseif button == "RightButton" then
        local menu = TrackerMenu:GetMenuForQuest(self.Quest)
        LibDropDown:EasyMenu(menu, TrackerMenu.menuFrame, "cursor", 0, 0, "MENU")
    end
end

---@param button string
TrackerLinePool.OnClickAchieve = function(self, button)
    Questie:Debug(Questie.DEBUG_DEVELOP, "[TrackerLinePool:_OnClickAchieve]")
    if (not self.Quest) then
        return
    end

    if TrackerMenu.menuFrame:IsShown() then
        LibDropDown:CloseDropDownMenus()
    end

    if TrackerUtils:IsBindTrue(Questie.db.profile.trackerbindUntrack, button) then
        if (IsModifiedClick("CHATLINK") and ChatEdit_GetActiveWindow()) then
            ChatEdit_InsertLink(GetAchievementLink(self.Quest.Id))
        else
            if Questie.db.char.trackedAchievementIds[self.Quest.Id] then
                QuestieTracker:UntrackAchieveId(self.Quest.Id)
                QuestieTracker:UpdateAchieveTrackerCache(self.Quest.Id)

                if (not AchievementFrame) then
                    AchievementFrame_LoadUI()
                end

                AchievementFrameAchievements_ForceUpdate()

                QuestieCombatQueue:Queue(function()
                    QuestieTracker:Update()
                end)
            else
                -- Assume this is an Objective of an Achievement
                UIErrorsFrame:AddMessage(format(l10n("You can't untrack an objective of an achievement.")), 1.0, 0.1, 0.1, 1.0)
            end
        end
    elseif TrackerUtils:IsBindTrue(Questie.db.profile.trackerbindOpenQuestLog, button) then
        if (not AchievementFrame) then
            AchievementFrame_LoadUI()
        end

        if (not AchievementFrame:IsShown()) then
            AchievementFrame_ToggleAchievementFrame()
            AchievementFrame_SelectAchievement(self.Quest.Id)
        else
            if (AchievementFrameAchievements.selection ~= self.Quest.Id) then
                AchievementFrame_SelectAchievement(self.Quest.Id)
            end
        end
    elseif button == "RightButton" then
        local menu = TrackerMenu:GetMenuForAchievement(self.Quest)
        LibDropDown:EasyMenu(menu, TrackerMenu.menuFrame, "cursor", 0, 0, "MENU")
    end
end

TrackerLinePool.OnHighlightEnter = function(self)
    local highestIndex = TrackerLinePool.GetHighestIndex()
    for i = 1, highestIndex do
        local line = linePool[i]
        line:SetAlpha(0.5)

        if (line.Quest ~= nil and line.Quest == self.Quest) or (line.expandZone ~= nil and self:GetParent().expandZone ~= nil and line.expandZone.zoneId == self:GetParent().expandZone.zoneId) then
            line:SetAlpha(1)
        end
    end
end

TrackerLinePool.OnHighlightLeave = function()
    local highestIndex = TrackerLinePool.GetHighestIndex()
    for i = 1, highestIndex do
        linePool[i]:SetAlpha(1)
    end
end

---@param mode string
TrackerLinePool.SetMode = function(self, mode)
    if mode ~= self.mode then
        self.mode = mode
        if mode == "zone" then
            local trackerFontSizeZone = Questie.db.profile.trackerFontSizeZone
            self.label:SetFont(LSM30:Fetch("font", Questie.db.profile.trackerFontZone), trackerFontSizeZone, Questie.db.profile.trackerFontOutline)
            self.label:SetHeight(trackerFontSizeZone)
        elseif mode == "quest" or mode == "achieve" then
            local trackerFontSizeQuest = Questie.db.profile.trackerFontSizeQuest
            self.label:SetFont(LSM30:Fetch("font", Questie.db.profile.trackerFontQuest), trackerFontSizeQuest, Questie.db.profile.trackerFontOutline)
            self.label:SetHeight(trackerFontSizeQuest)
        elseif mode == "objective" then
            local trackerFontSizeObjective = Questie.db.profile.trackerFontSizeObjective
            self.label:SetFont(LSM30:Fetch("font", Questie.db.profile.trackerFontObjective), trackerFontSizeObjective, Questie.db.profile.trackerFontOutline)
            self.label:SetHeight(trackerFontSizeObjective)
        end
    end
end

return TrackerLinePool
