local mod	= DBM:NewMod(613, "DBM-Party-WotLK", 3, 279)
local L		= mod:GetLocalizedStrings()

if mod:IsRetail() then
	mod.statTypes = "normal,heroic,duos"
end

mod:SetRevision("20250609053724")
mod:SetCreatureID(26532)
mod:SetEncounterID(2003)
mod:SetZone(279, 2849)--Culling of Stratholm, Duos

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 58848 52766",
	"SPELL_AURA_APPLIED 52772",
	"SPELL_AURA_REMOVED 52772"
)

local warningTime 	= mod:NewSpellAnnounce(58848, 3)
local warningCurse 	= mod:NewTargetNoFilterAnnounce(52772, 2, nil, "RemoveCurse", 2)

local timerCurse	= mod:NewTargetTimer(10, 52772, nil, "RemoveCurse", nil, 5, nil, DBM_COMMON_L.CURSE_ICON)
local timerTimeCD	= mod:NewCDTimer(25, 58848, nil, nil, nil, 2)

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(58848, 52766)  then
		warningTime:Show()
		timerTimeCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 52772 then
		warningCurse:Show(args.destName)
		timerCurse:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 52772 then
		timerCurse:Cancel(args.destName)
	end
end
