local AUCTIONATOR_EVENTS = {
  -- AH Window Initialization Events
  "AUCTION_HOUSE_SHOW",
  "PLAYER_INTERACTION_MANAGER_FRAME_SHOW",
  -- Trade Window Initialization Events
  "TRADE_SKILL_SHOW",
  -- Cache vendor prices event
  "MERCHANT_SHOW",
}

AuctionatorInitializeClassicMixin = {}

function AuctionatorInitializeClassicMixin:OnLoad()
  FrameUtil.RegisterFrameForEvents(self, AUCTIONATOR_EVENTS)
end

function AuctionatorInitializeClassicMixin:OnEvent(event, ...)
  if event == "AUCTION_HOUSE_SHOW" or (event == "PLAYER_INTERACTION_MANAGER_FRAME_SHOW" and (...) == Enum.PlayerInteractionType.Auctioneer) then
    self:AuctionHouseShown()
  elseif event == "TRADE_SKILL_SHOW" then
    Auctionator.CraftingInfo.Initialize()
  elseif event == "MERCHANT_SHOW" then
    Auctionator.CraftingInfo.CacheVendorPrices()
  end
end

function AuctionatorInitializeClassicMixin:AuctionHouseShown()
  Auctionator.Debug.Message("AuctionatorInitializeClassicMixin:AuctionHouseShown()")

  -- Prevents a lot of errors if loaded in retail
  if (Auctionator.Constants.IsLegacyAH and AuctionFrame == nil) or (not Auctionator.Constants.IsLegacyAH and AuctionHouseFrame == nil) then
    return
  end

  Auctionator.AH.Initialize()

  if Auctionator.State.AuctionatorFrame == nil then
    Auctionator.State.AuctionatorFrame = CreateFrame("FRAME", "AuctionatorAHFrame", AuctionFrame, "AuctionatorAHFrameTemplate")
  end

  FrameUtil.RegisterFrameForEvents(Auctionator.State.AuctionatorFrame, { "AUCTION_HOUSE_SHOW", "AUCTION_HOUSE_CLOSED" })
end
