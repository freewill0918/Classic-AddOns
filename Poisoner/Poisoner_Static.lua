local _, _, _, tocversion = GetBuildInfo()
local isClassicSoD = tocversion < 20000
local isCata = tocversion > 40000

if not isClassicSoD then
	Poisoner_Categories = {
		["DP"] = {
			2892,	--Tödliches Gift
			2893,	--Tödliches Gift II
			8984,	--Tödliches Gift III
			8985,	--Tödliches Gift IV
			20844,	--Tödliches Gift V
			22053,	--Tödliches Gift VI
			22054,	--Tödliches Gift VII
			43232,	--Tödliches Gift VIII
			43233,	--Tödliches Gift IX
		},
		["CP"] = {
			3775,	--Verkrüppelndes Gift
		--	3776,	--Verkrüppelndes Gift II	--removed with WotLK
		},
		["MP"] = {
			5237,	--Gedankenbenebelndes Gift
		--	6951,	--Gedankenbenebelndes Gift II	--removed with WotLK
		--	9186,	--Gedankenbenebelndes Gift III	--removed with WotLK
		},
		["IP"] = {
			6947,	--Sofort wirkendes Gift
			6949,	--Sofort wirkendes Gift II
			6950,	--Sofort wirkendes Gift III
			8926,	--Sofort wirkendes Gift IV
			8927,	--Sofort wirkendes Gift V
			8928,	--Sofort wirkendes Gift VI
			21927,	--Sofort wirkendes Gift VII
			43230,	--Sofort wirkendes Gift VIII
			43231,	--Sofort wirkendes Gift IX
		},
		["WP"] = {
			10918,	--Wundgift I
			10920,	--Wundgift II
			10921,	--Wundgift III
			10922,	--Wundgift IV
			22055, 	--Wundgift V
			43234, 	--Wundgift VI
			43235, 	--Wundgift VII
		},
--[[		["AP"] = {
			21835,	--Beruhigendes Gift
			43237,	--Beruhigendes Gift II
		},]]
		
		["SS"] = {
			2862,	--Rauer Wetzstein
			2863,	--Grober Wetzstein
			2871,	--Schwerer Wetzstein
			7964,	--Robuster Wetzstein
			12404,	--Verdichteter Wetzstein
			23528,	--Teuflischer Wetzstein
			23529,	--Adamantitwetzstein
		},
		["WS"] = {
			3239,	--Rauer Gewichtsstein
			3240,	--Grober Gewichtsstein
			3241,	--Schwerer Gewichtsstein
			7965,	--Robuster Gewichtsstein
			12643,	--Verdichteter Gewichtsstein
			18262,	--Elementarwetzstein
			28420,	--Teufelsgewichtsstein
			28421,	--Adamantitgewichtsstein
		},
		
		--for testing
	--[[	["HS"] = {
			6948,
		},
	]]
	}
else
	Poisoner_Categories = {
		["DP"] = {
			2892,	--Tödliches Gift
			2893,	--Tödliches Gift II
			8984,	--Tödliches Gift III
			8985,	--Tödliches Gift IV
			20844,	--Tödliches Gift V
		},
		["CP"] = {
			3775,	--Verkrüppelndes Gift
			3776,	--Verkrüppelndes Gift II
		},
		["MP"] = {
			5237,	--Gedankenbenebelndes Gift
			6951,	--Gedankenbenebelndes Gift II
			9186,	--Gedankenbenebelndes Gift III
		},
		["IP"] = {
			6947,	--Sofort wirkendes Gift
			6949,	--Sofort wirkendes Gift II
			6950,	--Sofort wirkendes Gift III
			8926,	--Sofort wirkendes Gift IV
			8927,	--Sofort wirkendes Gift V
			8928,	--Sofort wirkendes Gift VI
		},
		["WP"] = {
			10918,	--Wundgift I
			10920,	--Wundgift II
			10921,	--Wundgift III
			10922,	--Wundgift IV
		},
		["OP"] = {
			226374,	--Okkultes Gift I
			234444,	--Okkultes Gift II
		},
		["NP"] = {
			217346,	--Betäubendes Gift
		},
		["AP"] = {
			217347,	--Atrophisches Gift
		},
		["SP"] = {
			217345,	--Zähes Gift
		},
		
		["SS"] = {
			2862,	--Rauer Wetzstein
			2863,	--Grober Wetzstein
			2871,	--Schwerer Wetzstein
			7964,	--Robuster Wetzstein
			12404,	--Verdichteter Wetzstein
		},
		["WS"] = {
			3239,	--Rauer Gewichtsstein
			3240,	--Grober Gewichtsstein
			3241,	--Schwerer Gewichtsstein
			7965,	--Robuster Gewichtsstein
			12643,	--Verdichteter Gewichtsstein
			18262,	--Elementarwetzstein
		},
		
		--for testing
	--[[	["HS"] = {
			6948,
		},
	]]
	}

end

Poisoner_Patterns = {}
for n,t in pairs(Poisoner_Categories) do
	for i=1,#t do
		Poisoner_Patterns[t[i]] = n..i
	end
end

if not isClassicSoD then
	Poisoner_SpellIDs = {
		[2823] = "DP1",	--Tödliches Gift
		[2824] = "DP2",	--Tödliches Gift II
		[11355] = "DP3",	--Tödliches Gift III
		[11356] = "DP4",	--Tödliches Gift IV
		[25351] = "DP5",	--Tödliches Gift V
		[26967] = "DP6",	--Tödliches Gift VI
		[27186] = "DP7",	--Tödliches Gift VII
		[57972] = "DP8",	--Tödliches Gift VIII
		[57973] = "DP9",	--Tödliches Gift IX

		[3408] = "CP1",	--Verkrüppelndes Gift
	--	[11202] = "CP2",	--Verkrüppelndes Gift II	--removed with WotLK

		[5761] = "MP1",	--Gedankenbenebelndes Gift
	--	[8693] = "MP2",	--Gedankenbenebelndes Gift II	--removed with WotLK
	--	[11399] = "MP3",	--Gedankenbenebelndes Gift III	--removed with WotLK

		[8679] = "IP1",	--Sofort wirkendes Gift
		[8686] = "IP2",	--Sofort wirkendes Gift II
		[8688] = "IP3",	--Sofort wirkendes Gift III
		[11338] = "IP4",	--Sofort wirkendes Gift IV
		[11339] = "IP5",	--Sofort wirkendes Gift V
		[11340] = "IP6",	--Sofort wirkendes Gift VI
		[26891] = "IP7",	--Sofort wirkendes Gift VII
		[57967] = "IP8",	--Sofort wirkendes Gift VIII
		[57968] = "IP9",	--Sofort wirkendes Gift IX

		[13219] = "WP1",	--Wundgift
		[13225] = "WP2",	--Wundgift II
		[13226] = "WP3",	--Wundgift III
		[13227] = "WP4",	--Wundgift IV
		[27188] = "WP5",	--Wundgift V
		[57977] = "WP5",	--Wundgift VI
		[57978] = "WP5",	--Wundgift VII
		
		[26785] = "AP1",	--Beruhigendes Gift
		[57982] = "AP2",	--Beruhigendes Gift II
	}
else
	Poisoner_SpellIDs = {
		[2823] = "DP1",	--Tödliches Gift
		[2824] = "DP2",	--Tödliches Gift II
		[11355] = "DP3",	--Tödliches Gift III
		[11356] = "DP4",	--Tödliches Gift IV
		[25351] = "DP5",	--Tödliches Gift V

		[3408] = "CP1",	--Verkrüppelndes Gift
		[11202] = "CP2",	--Verkrüppelndes Gift II

		[5761] = "MP1",	--Gedankenbenebelndes Gift
		[8693] = "MP2",	--Gedankenbenebelndes Gift II
		[11399] = "MP3",	--Gedankenbenebelndes Gift III

		[8679] = "IP1",	--Sofort wirkendes Gift
		[8686] = "IP2",	--Sofort wirkendes Gift II
		[8688] = "IP3",	--Sofort wirkendes Gift III
		[11338] = "IP4",	--Sofort wirkendes Gift IV
		[11339] = "IP5",	--Sofort wirkendes Gift V
		[11340] = "IP6",	--Sofort wirkendes Gift VI

		[13219] = "WP1",	--Wundgift
		[13225] = "WP2",	--Wundgift II
		[13226] = "WP3",	--Wundgift III
		[13227] = "WP4",	--Wundgift IV
		
		[458821] = "OP1",	--Okkultes Gift I
		[1214171] = "OP2",	--Okkultes Gift II
		[439464] = "NP1",	--Betäubendes Gift
		[439465] = "AP1",	--Atrophisches Gift
		[439462] = "SP1", 	--Zähes Gift
	}

end

if not isClassicSoD then
	Poisoner_PoisonDropDownCats = {
		"",
		"CP",
		"MP",
		"DP",
		"IP",
		"WP",
	}
else
	Poisoner_PoisonDropDownCats = {
		"",
		"CP",
		"MP",
		"DP",
		"IP",
		"WP",
		"OP",
		"NP",
		"AP",
		"SP"
	}
end


Poisoner_PoisonDropDownIDs = {}
for k,v in pairs(Poisoner_PoisonDropDownCats) do
	Poisoner_PoisonDropDownIDs[v] = k
end

