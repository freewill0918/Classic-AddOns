--[[
    If you want to customize the settings (add own sounds or spells, for
    example), you can create a new file called "myconfig.lua" and put
    your own variables in it. A good starting point is probably copying
    this file.
]]--

EnhBloodlustConfig = {};

local config = EnhBloodlustConfig;

-- Bloodlust, Heroism, Time Warp, Ancient Hysteria
config.spells = {2825, 32182, 80353, 90355, 160452}

config.sound = {
	-- 加入音樂檔案路徑，一行一首歌，結尾加上逗號，會隨機播放。
	-- 最後一首歌 (最後一行) 的結尾不要加逗號。
	-- 每一行前面加上兩條橫線的歌曲不會播放。
	-- "Interface\\AddOns\\EnhBloodlust\\音樂檔案名稱.副檔名",
	"Interface\\AddOns\\EnhBloodlust\\105C.mp3",
	"Interface\\AddOns\\EnhBloodlust\\alone.mp3",
	"Interface\\AddOns\\EnhBloodlust\\STAY.mp3",
	"Interface\\AddOns\\EnhBloodlust\\BuildaB.mp3",
  "Interface\\AddOns\\EnhBloodlust\\Music.mp3"
}

config.soundShort = {
	-- 喚能師套裝觸發6秒嗜血的短音效，寫法和上述相同。
	-- 不要播放的話，將下面這一行改為 "" 即可。
	""
}

-- 音樂長度建議40秒，剛好是嗜血的時間。
config.length = 40;

-- 嗜血音樂所使用的聲音頻道，可以使用的值有主音量 "Master" 和法術音效 "SFX"。
config.channel = "Master";