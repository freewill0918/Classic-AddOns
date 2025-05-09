local mod	= DBM:NewMod(324, "DBM-Raids-Cata", 1, 187)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,normal25,heroic,heroic25,lfr"

mod:SetRevision("20250208214513")
mod:SetCreatureID(55308)
mod:SetEncounterID(1294)
mod:SetZone(967)
--mod:DisableRegenDetection()--Uncomment in next dbm release
mod:SetUsedIcons()
--mod:SetModelSound("sound\\CREATURE\\WarlordZonozz\\VO_DS_ZONOZZ_INTRO_01.OGG", "sound\\CREATURE\\WarlordZonozz\\VO_DS_ZONOZZ_SPELL_05.OGG")

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 104322",
	"SPELL_AURA_APPLIED 104377 104378 104543 106836 103434",
	"SPELL_AURA_APPLIED_DOSE 104543 106836",
	"UNIT_SPELLCAST_SUCCEEDED boss1",
	"CHAT_MSG_MONSTER_YELL"
)

local warnVoidDiffusion			= mod:NewStackAnnounce(106836, 2)
local warnFocusedAnger			= mod:NewStackAnnounce(104543, 3, nil, false)
local warnPsychicDrain			= mod:NewSpellAnnounce(104322, 4)
local warnShadows				= mod:NewTargetAnnounce(103434, 3)

local specWarnVoidofUnmaking	= mod:NewSpecialWarningSpell(103571, nil, nil, nil, 2, 2)
local specWarnBlackBlood		= mod:NewSpecialWarningSpell(104378, nil, nil, nil, 2, 2)
local specWarnShadows			= mod:NewSpecialWarningMoveAway(103434, nil, nil, nil, 1, 2)
local yellShadows				= mod:NewYell(103434, nil, false, L.ShadowYell)--Requested by 10 man guilds, but a spammy mess in 25s, so off by default. With the option to enable when desired.

local timerVoidofUnmakingCD		= mod:NewNextTimer(90.3, 103571, nil, nil, nil, 5, 103527)
local timerVoidDiffusionCD		= mod:NewCDTimer(5, 106836, nil, nil, nil, 5)
local timerFocusedAngerCD		= mod:NewCDTimer(6, 104543, nil, false)--Off by default as it may not be entirely useful information to know, but an option just for heck of it. You know SOMEONE is gonna request it
local timerPsychicDrainCD		= mod:NewVarTimer("v20-25", 104322, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--Every 20-25 seconds, variates.
local timerShadowsCD			= mod:NewVarTimer("v25-30", 103434, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)--Every 25-30, variates
local timerBlackBlood			= mod:NewBuffActiveTimer(30, 104378, nil, nil, nil, 6)

local berserkTimer				= mod:NewBerserkTimer(360)

local shadowsTargets = {}
local phase2Started = false
local voidWarned = false

local function warnShadowsTargets()
	warnShadows:Show(table.concat(shadowsTargets, "<, >"))
	timerShadowsCD:Start()
	table.wipe(shadowsTargets)
end

local function blackBloodEnds()
	voidWarned = false
	phase2Started = false
	timerFocusedAngerCD:Start(6)
	timerShadowsCD:Start(6)
end

function mod:OnCombatStart(delay)
	voidWarned = false
	phase2Started = false
	table.wipe(shadowsTargets)
	timerVoidofUnmakingCD:Start(5.5-delay)
	timerFocusedAngerCD:Start(10.5-delay)
	timerPsychicDrainCD:Start(13-delay)
	timerShadowsCD:Start(-delay)
	if not self:IsDifficulty("lfr25") then
		berserkTimer:Start(-delay)
	end
end

function mod:OnCombatEnd()
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 104322 then
		warnPsychicDrain:Show()
		timerPsychicDrainCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if args:IsSpellID(104377, 104378) and not phase2Started then--Might not need both, but leave just in case, removed the 2 non existant ones though.
		phase2Started = true
		timerFocusedAngerCD:Cancel()
		timerPsychicDrainCD:Cancel()
		timerShadowsCD:Cancel()
		specWarnBlackBlood:Show()
		specWarnBlackBlood:Play("phasechange")
		timerBlackBlood:Start()
		self:Schedule(30, blackBloodEnds)
		if self:IsDifficulty("heroic10", "heroic25") then
			--Heroic has a failsafe in place, if CD ends before 15 seconds after black phase ending, it's extended
			if timerVoidofUnmakingCD:GetTime() > 45.3 then
				timerVoidofUnmakingCD:Update(45.3, 90.3)
			end
		else
			--Normal also has a failsafe but much smaller
			if timerVoidofUnmakingCD:GetTime() > 54.3 then
				timerVoidofUnmakingCD:Update(54.3, 90.3)
			end
		end
	elseif spellId == 104543 then
		warnFocusedAnger:Show(args.destName, args.amount or 1)
		timerFocusedAngerCD:Start()
	elseif spellId == 106836 then--Do NOT add 103527 to this, that's a seperate spellid for when BOSS is affected by diffusion, this warning is counting the ball stacks.
		warnVoidDiffusion:Show(args.destName, args.amount or 1)
		timerVoidDiffusionCD:Start()
	elseif spellId == 103434 then
		shadowsTargets[#shadowsTargets + 1] = args.destName
		if args:IsPlayer() and self:IsDifficulty("heroic10", "heroic25") then
			specWarnShadows:Show()
			specWarnShadows:Play("runout")
			yellShadows:Yell()
		end
		self:Unschedule(warnShadowsTargets)
		if (self:IsDifficulty("normal10") and #shadowsTargets >= 3) then--Don't know the rest yet, will tweak as they are discovered
			warnShadowsTargets()
		else
			self:Schedule(0.3, warnShadowsTargets)
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	--Void of the unmaking cast, do not use spellname because we want to ignore events using spellid 103627 which fires when the sphere dispurses on the boss.
	--It looks this event doesn't fire in raid finder. It seems to still fire in normal and heroic modes.
	if spellId == 103571 and not voidWarned then
		if timerPsychicDrainCD:GetTime() == 0 then--Just a hack to prevent this from overriding first timer on pull, which is only drain that doesn't follow this rule
			timerPsychicDrainCD:Start(8.5)
		end
		timerVoidofUnmakingCD:Start()
		voidWarned = true
		specWarnVoidofUnmaking:Show()
		specWarnVoidofUnmaking:Play("phasechange")
	end
end

--Backup trigger for LFR where UNIT_SPELLCAST_SUCCEEDED doesn't fire for void cast
function mod:CHAT_MSG_MONSTER_YELL(msg)
	if (msg == L.voidYell or msg:find(L.voidYell)) and not voidWarned then
		timerPsychicDrainCD:Start(8.3)--Yell comes .2 after unit event in normal and heroic, so we adjust the timers for LFR for yell being later.
		timerVoidofUnmakingCD:Start(90.1)
		voidWarned = true
		specWarnVoidofUnmaking:Show()
		specWarnVoidofUnmaking:Play("phasechange")
	end
end
