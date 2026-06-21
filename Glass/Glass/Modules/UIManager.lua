local Core, Constants, Utils = unpack(select(2, ...))
local UIManager = Core:GetModule("UIManager")

local CreateChatDock = Core.Components.CreateChatDock
local CreateChatTab = Core.Components.CreateChatTab
local CreateEditBox = Core.Components.CreateEditBox
local CreateMainContainerFrame = Core.Components.CreateMainContainerFrame
local CreateMoverDialog = Core.Components.CreateMoverDialog
local CreateMoverFrame = Core.Components.CreateMoverFrame
local CreateSlidingMessageFramePool = Core.Components.CreateSlidingMessageFramePool

-- luacheck: push ignore 113
local BNToastFrame = BNToastFrame
local C_Timer = C_Timer
local ChatAlertFrame = ChatAlertFrame
local ChatFrameChannelButton = ChatFrameChannelButton
local ChatFrameMenuButton = ChatFrameMenuButton
local CreateFrame = CreateFrame
local FCFDock_UpdateTabs = FCFDock_UpdateTabs
local GeneralDockManager = GeneralDockManager
local GetCVar = C_CVar and C_CVar.GetCVar or GetCVar
local IsAddOnLoaded = C_AddOns and C_AddOns.IsAddOnLoaded or IsAddOnLoaded
local NUM_CHAT_WINDOWS = NUM_CHAT_WINDOWS
local QuickJoinToastButton = QuickJoinToastButton
local SetCVar = C_CVar and C_CVar.SetCVar or SetCVar
local UIParent = UIParent
-- luacheck: pop

----
-- UIManager Module
function UIManager:OnInitialize()
  self.state = {
    frames = {},
    tabs = {},
    temporaryFrames = {},
    temporaryTabs = {}
  }
end

function UIManager:OnEnable()
  self.tickerFrame = CreateFrame("Frame", "GlassUpdaterFrame", UIParent)

  -- Mover
  self.moverFrame = CreateMoverFrame("GlassMoverFrame", UIParent)
  self.moverDialog = CreateMoverDialog("GlassMoverDialog", UIParent)

  -- Main Container
  self.container = CreateMainContainerFrame("GlassFrame", UIParent)
  self.container:SetPoint("TOPLEFT", self.moverFrame)

  -- Chat dock
  self.dock = CreateChatDock(self.container)

  -- SlidingMessageFrames
  self.slidingMessageFramePool = CreateSlidingMessageFramePool(self.container)

  for i=1, NUM_CHAT_WINDOWS do
    local chatFrame = _G["ChatFrame"..i]
    local smf = self.slidingMessageFramePool:Acquire()
    smf:Init(chatFrame)

    self.state.frames[i] = smf
    self.state.tabs[i] = CreateChatTab(smf)
  end

  -- 重排 dock 標題列 tab：Glass 在上面把 tab 字型/寬度改窄後，暴雪先前用原生
  -- 寬度算好的 tab 位置就過時了，必須再跑一次 FCFDock_UpdateTabs 才會對齊，
  -- 否則登入後要手動 click 一下 tab 才會排版正常。延遲一個 frame 等寬度套用完。
  C_Timer.After(0, function ()
    if GeneralDockManager and FCFDock_UpdateTabs then
      FCFDock_UpdateTabs(GeneralDockManager, true)
    end
  end)

  -- Edit box
  self.editBox = CreateEditBox(self.container)

  -- Fix Battle.net Toast frame position
  BNToastFrame:ClearAllPoints()
  BNToastFrame:SetPoint("BOTTOMLEFT", ChatAlertFrame, "BOTTOMLEFT", 0, 0)

  ChatAlertFrame:ClearAllPoints()
  ChatAlertFrame:SetPoint("BOTTOMLEFT", self.container, "TOPLEFT", 15, 10)

  local isTinyChatEnabled = IsAddOnLoaded("TinyChat") -- TinyChat 相容性修正

  -- Hide other chat elements
  if Constants.ENV == "retail" and not isTinyChatEnabled then -- TinyChat 相容性修正
    QuickJoinToastButton:Hide()
  end

  ChatFrameChannelButton:Hide()
  if not isTinyChatEnabled then -- TinyChat 相容性修正
	ChatFrameMenuButton:Hide()
  end

  -- New version alert
  --@non-debug@
  if Core.db.global.version == nil or Utils.versionGreaterThan(Core.Version, Core.db.global.version) then
    -- Utils.notify('Glass has just been updated. |cFFFFFF00|Hgarrmission:Glass:opennews|h[See what’s new]|h|r')
    Core.db.global.version = Core.Version
  end
  --@end-non-debug@--

  -- Force classic chat style
  if GetCVar("chatStyle") ~= "classic" then
    SetCVar("chatStyle", "classic")
    -- Utils.notify('Chat Style set to "Classic Style"')

    -- Resets the background that IM style causes
    self.editBox:SetFocus()
    self.editBox:ClearFocus()
  end

  -- Handle temporary chat frames (whisper popout, pet battle)
  self:RawHook("FCF_OpenTemporaryWindow", function (...)
    local chatFrame = self.hooks["FCF_OpenTemporaryWindow"](...)
    local smf = self.slidingMessageFramePool:Acquire()
    smf:Init(chatFrame)

    self.state.temporaryFrames[chatFrame:GetName()] = smf
    self.state.temporaryTabs[chatFrame:GetName()] = CreateChatTab(smf)
    return chatFrame
  end, true)

  -- Close window
  self:RawHook("FCF_Close", function (chatFrame)
    self.hooks["FCF_Close"](chatFrame)

    local temporaryFrame = self.state.temporaryFrames[chatFrame:GetName()]
    if temporaryFrame then
      self.slidingMessageFramePool:Release(temporaryFrame)
    end
    self.state.temporaryFrames[chatFrame:GetName()] = nil
    self.state.temporaryTabs[chatFrame:GetName()] = nil
  end, true)

  -- 切換 dock 視窗時，同步顯示對應的 Glass 訊息框。
  -- Glass 讓原生聊天視窗永遠保持隱藏，所以暴雪 dock 是用 alpha 淡入來「顯示」被選取的
  -- 視窗（不會呼叫 Show），Glass 只攔了 Show/Hide，因此只攔到被取消選取視窗的 Hide，
  -- 攔不到被選取視窗的 Show → 新選取的視窗 SlidingMessageFrame 一直不顯示、看起來是空的。
  -- 這裡直接依 dock 的選取結果同步每個 smf 的顯示/隱藏（戰鬥記錄維持原生，不處理）。
  if FCFDock_SelectWindow then
    self:SecureHook("FCFDock_SelectWindow", function (_, selectedFrame)
      for _, smf in ipairs(self.state.frames) do
        if not smf.state.isCombatLog then
          if smf.chatFrame == selectedFrame then
            smf:Show()
          else
            smf:Hide()
          end
        end
      end
      for _, smf in pairs(self.state.temporaryFrames) do
        if smf.chatFrame == selectedFrame then
          smf:Show()
        else
          smf:Hide()
        end
      end
    end)
  end

  -- Start rendering
  self.timeElapsed = 0
  self.tickerFrame:SetScript("OnUpdate", function (_, elapsed)
    self.timeElapsed = self.timeElapsed + elapsed

    while (self.timeElapsed > 0.01) do
      self.timeElapsed = self.timeElapsed - 0.01

      self.container:OnFrame()

      for _, smf in ipairs(self.state.frames) do
        smf:OnFrame()
      end

      for _, smf in pairs(self.state.temporaryFrames) do
        smf:OnFrame()
      end
    end
  end)
end
