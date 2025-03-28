---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local professionLocals = {
    ["First Aid"] = {
        ["enUS"] = true,
        ["deDE"] = "Erste Hilfe",
        ["esES"] = "Primeros auxilios",
        ["esMX"] = "Primeros auxilios",
        ["frFR"] = "Secourisme",
        ["koKR"] = "응급치료",
        ["ptBR"] = "Primeiros Socorros",
        ["ruRU"] = "Первая помощь",
        ["zhCN"] = "急救",
        ["zhTW"] = "急救",
    },
    ["Blacksmithing"] = {
        ["enUS"] = true,
        ["deDE"] = "Schmiedekunst",
        ["esES"] = "Herrería",
        ["esMX"] = "Herrería",
        ["frFR"] = "Forge",
        ["koKR"] = "대장기술",
        ["ptBR"] = "Ferraria",
        ["ruRU"] = "Кузнечное дело",
        ["zhCN"] = "锻造",
        ["zhTW"] = "鍛造",
    },
    ["Leatherworking"] = {
        ["enUS"] = true,
        ["deDE"] = "Lederverarbeitung",
        ["esES"] = "Peletería",
        ["esMX"] = "Peletería",
        ["frFR"] = "Travail du cuir",
        ["koKR"] = "가죽세공",
        ["ptBR"] = "Couraria",
        ["ruRU"] = "Кожевничество",
        ["zhCN"] = "制皮",
        ["zhTW"] = "製皮",
    },
    ["Alchemy"] = {
        ["enUS"] = true,
        ["deDE"] = "Alchemie",
        ["esES"] = "Alquimia",
        ["esMX"] = "Alquimia",
        ["frFR"] = "Alchimie",
        ["koKR"] = "연금술",
        ["ptBR"] = "Alquimia",
        ["ruRU"] = "Алхимия",
        ["zhCN"] = "炼金术",
        ["zhTW"] = "鍊金術",
    },
    ["Herbalism"] = {
        ["enUS"] = true,
        ["deDE"] = "Kräuterkunde",
        ["esES"] = "Herboristería",
        ["esMX"] = "Herboristería",
        ["frFR"] = "Herboristerie",
        ["koKR"] = "약초채집",
        ["ptBR"] = "Herborismo",
        ["ruRU"] = "Травничество",
        ["zhCN"] = "草药学",
        ["zhTW"] = "草藥學",
    },
    ["Cooking"] = {
        ["enUS"] = true,
        ["deDE"] = "Kochkunst",
        ["esES"] = "Cocina",
        ["esMX"] = "Cocina",
        ["frFR"] = "Cuisine",
        ["koKR"] = "요리",
        ["ptBR"] = "Culinária",
        ["ruRU"] = "Кулинария",
        ["zhCN"] = "烹饪",
        ["zhTW"] = "烹飪",
    },
    ["Mining"] = {
        ["enUS"] = true,
        ["deDE"] = "Bergbau",
        ["esES"] = "Minería",
        ["esMX"] = "Minería",
        ["frFR"] = "Minage",
        ["koKR"] = "채광",
        ["ptBR"] = "Mineração",
        ["ruRU"] = "Горное дело",
        ["zhCN"] = "采矿",
        ["zhTW"] = "採礦",
    },
    ["Tailoring"] = {
        ["enUS"] = true,
        ["deDE"] = "Schneiderei",
        ["esES"] = "Sastrería",
        ["esMX"] = "Sastrería",
        ["frFR"] = "Couture",
        ["koKR"] = "재봉술",
        ["ptBR"] = "Alfaiataria",
        ["ruRU"] = "Портняжное дело",
        ["zhCN"] = "裁缝",
        ["zhTW"] = "裁縫",
    },
    ["Engineering"] = {
        ["enUS"] = true,
        ["deDE"] = "Ingenieurskunst",
        ["esES"] = "Ingeniería",
        ["esMX"] = "Ingeniería",
        ["frFR"] = "Ingénierie",
        ["koKR"] = "기계공학",
        ["ptBR"] = "Engenharia",
        ["ruRU"] = "Инженерное дело",
        ["zhCN"] = "工程学",
        ["zhTW"] = "工程學",
    },
    ["Enchanting"] = {
        ["enUS"] = true,
        ["deDE"] = "Verzauberkunst",
        ["esES"] = "Encantamiento",
        ["esMX"] = "Encantamiento",
        ["frFR"] = "Enchantement",
        ["koKR"] = "마법부여",
        ["ptBR"] = "Encantamento",
        ["ruRU"] = "Наложение чар",
        ["zhCN"] = "附魔",
        ["zhTW"] = "附魔",
    },
    ["Fishing"] = {
        ["enUS"] = true,
        ["deDE"] = "Angeln",
        ["esES"] = "Pesca",
        ["esMX"] = "Pesca",
        ["frFR"] = "Pêche",
        ["koKR"] = "낚시",
        ["ptBR"] = "Pescaria",
        ["ruRU"] = "Рыбная ловля",
        ["zhCN"] = "钓鱼",
        ["zhTW"] = "釣魚",
    },
    ["Skinning"] = {
        ["enUS"] = true,
        ["deDE"] = "Kürschnerei",
        ["esES"] = "Desuello",
        ["esMX"] = "Desuello",
        ["frFR"] = "Dépeçage",
        ["koKR"] = "무두질",
        ["ptBR"] = "Esfolamento",
        ["ruRU"] = "Снятие шкур",
        ["zhCN"] = "剥皮",
        ["zhTW"] = "剝皮",
    },
    ["Jewelcrafting"] = {
        ["enUS"] = true,
        ["deDE"] = "Juwelierskunst",
        ["esES"] = "Joyería",
        ["esMX"] = "Joyería",
        ["frFR"] = "Joaillerie",
        ["koKR"] = "보석세공",
        ["ptBR"] = "Joalheria",
        ["ruRU"] = "Ювелирное дело",
        ["zhCN"] = "珠宝加工",
        ["zhTW"] = "珠寶設計",
    },
    ["Riding"] = {
        ["enUS"] = true,
        ["deDE"] = "Reiten",
        ["esES"] = "Equitación",
        ["esMX"] = "Equitación",
        ["frFR"] = "Monte",
        ["koKR"] = "탈것 타기",
        ["ptBR"] = "Montaria",
        ["ruRU"] = "Верховая езда",
        ["zhCN"] = "骑术",
        ["zhTW"] = "騎術",
    },
    ["Inscription"] = {
        ["enUS"] = true,
        ["deDE"] = "Inschriftenkunde",
        ["esES"] = "Inscripción",
        ["esMX"] = "Inscripción",
        ["frFR"] = "Calligraphie",
        ["koKR"] = "주문각인",
        ["ptBR"] = "Escrivania",
        ["ruRU"] = "Начертание",
        ["zhCN"] = "铭文",
        ["zhTW"] = "銘文學",
    },
    ["Archaeology"] = {
        ["enUS"] = true,
        ["deDE"] = "Archäologie",
        ["esES"] = "Arqueología",
        ["esMX"] = "Arqueología",
        ["frFR"] = "Archéologie",
        ["koKR"] = "고고학",
        ["ptBR"] = "Arqueologia",
        ["ruRU"] = "Археология",
        ["zhCN"] = "考古学",
        ["zhTW"] = "考古學",
    },
}

for k, v in pairs(professionLocals) do
    l10n.translations[k] = v
end
