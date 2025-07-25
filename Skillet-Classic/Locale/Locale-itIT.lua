--[[
 Skillet: A tradeskill window replacement.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]--

local L = LibStub("AceLocale-3.0"):NewLocale("Skillet", "itIT")
if not L then return end

L[" days"] = " giorni"
L["About"] = "Riguardo a"
L["ABOUTDESC"] = "Stampa le informazioni riguardo a Skillet"
L["Add Recipe to Ignored List"] = "Add Recipe to Ignored List"
L["Add to Ignore Materials"] = "Add to Ignore Materials"
L["alts"] = "alts"
L["Appearance"] = "Aspetto"
L["APPEARANCEDESC"] = "Le opzioni che controllano come Skillet viene mostrato"
--[[Translation missing --]]
L["Auction"] = "Auction"
--[[Translation missing --]]
L["Bank"] = "Bank"
L["bank"] = "banca"
L["Blizzard"] = "Tempesta"
L["Buy Reagents"] = "Compra Reagenti"
L["buyable"] = "comprabile"
L["Buyout"] = "Buyout"
L["By Difficulty"] = "Per Difficolta'"
L["By Item Level"] = "Per Livello Oggetto"
L["By Level"] = "Per Livello"
L["By Name"] = "Per Nome"
L["By Quality"] = "Per Qualita'"
L["By Skill Level"] = "Per Livello Abilita'"
L["can be created by crafting reagents"] = "can be created by crafting reagents"
L["can be created from reagents in your inventory"] = "can be created from reagents in your inventory"
L["can be created from reagents on all characters"] = "can be created from reagents on all characters"
L["can be created from reagents on other characters"] = "puo' essere creato con i reagenti presenti su tutti i tuoi personaggi"
L["can be created with reagents bought at vendor"] = "can be created with reagents bought at vendor"
L["Changing profession to"] = "Changing profession to"
--[[Translation missing --]]
L["CLAMPTOSCREENDESC"] = "Force frames to remain on screen"
--[[Translation missing --]]
L["CLAMPTOSCREENNAME"] = "Clamp frames to screen"
L["Clear"] = "Pulisci"
L["Click"] = "Click"
L["click here to add a note"] = "premere qui per aggiungere una nota"
L["Click to toggle favorite"] = "Click to toggle favorite"
L["Collapse all groups"] = "Collassa tutti i gruppi"
L["Config"] = "Configura"
L["CONFIGDESC"] = "Apre la finestra di configurazione di Skillet"
L["CONFIRMQUEUECLEARDESC"] = "Use Alt-left-click instead of left-click to clear the queue"
L["CONFIRMQUEUECLEARNAME"] = "Use Alt-click to clear queue"
L["Conflict with the addon TradeSkillMaster"] = "Conflict with the addon TradeSkillMaster"
L["Copy"] = "Copy"
--[[Translation missing --]]
L["Cost"] = "Cost"
L["Could not find bag space for"] = "Non trovo spazio nell borse per"
L["craftable"] = "crabile"
L["CRAFTBUTTONSDESC"] = "Include Craft buttons in frame"
L["CRAFTBUTTONSNAME"] = "Include Craft buttons"
L["Crafted By"] = "Crato da"
L["Create"] = "Crea"
L["Create All"] = "Crea Tutti"
L["Cut"] = "Cut"
L["DBMarket"] = "DBMarket"
L["Delete"] = "Cancella"
L["DISPLAYITEMLEVELDESC"] = "If the item to be crafted has an item level, that level will be displayed along with the recipe"
L["DISPLAYITEMLEVELNAME"] = "Display item level"
L["DISPLAYREQUIREDLEVELDESC"] = "Se l'oggetto creato richiede un livello minimo per essere usato, questo livello viene mostrato a fianco della ricetta"
L["DISPLAYREQUIREDLEVELNAME"] = "Mostra livello richiesto"
--[[Translation missing --]]
L["DISPLAYSHOPPINGLIST"] = "Display shopping list at:"
L["DISPLAYSHOPPINGLISTATAUCTIONDESC"] = "Mostra una lista della spesa per gli oggetti richiesti, ma non presenti nelle borse, per creare le ricette accodate"
L["DISPLAYSHOPPINGLISTATAUCTIONNAME"] = "Mostra lista della spesa alla casa d'aste"
L["DISPLAYSHOPPINGLISTATBANKDESC"] = "Mostra una lista della spesa per gli oggetti richiesti, ma non presenti nelle borse, per creare le ricette accodate"
L["DISPLAYSHOPPINGLISTATBANKNAME"] = "Mostra una lista della spesa alla banca"
L["DISPLAYSHOPPINGLISTATGUILDBANKDESC"] = "Mostra una lista della spesa per gli oggetti richiesti, ma non presenti nelle borse, per creare le ricette accodate"
L["DISPLAYSHOPPINGLISTATGUILDBANKNAME"] = "Mostra una lista della spesa alla banca di gilda"
L["DISPLAYSHOPPINGLISTATMERCHANTDESC"] = "Display a shopping list of the items that are needed to craft queued recipes but are not in your bags"
L["DISPLAYSHOPPINGLISTATMERCHANTNAME"] = "Display Shopping List at Merchants"
L["Draenor Engineering"] = "Draenor Engineering"
L["Empty Group"] = "Empty Group"
L["Enabled"] = "Attivato"
L["Enchant"] = "Incantamento"
--[[Translation missing --]]
L["ENCHANTSCROLLSDESC"] = "Use the enchant scroll item for links"
--[[Translation missing --]]
L["ENCHANTSCROLLSNAME"] = "Use enchant scrolls"
L["ENHANCHEDRECIPEDISPLAYDESC"] = "Quando abilitato, le ricette avranno uno o piu' '+' per indicarne la difficolta'."
L["ENHANCHEDRECIPEDISPLAYNAME"] = "Mostra la difficolta' delle ricette come testo"
L["Expand all groups"] = "Espandi tutti i gruppi"
L["Features"] = "Caratteristiche"
L["FEATURESDESC"] = "Comportamenti opzionali che possono essere attivati o disattivati"
L["Filter"] = "Filtro"
--[[Translation missing --]]
L["Filter recipes by source"] = "Filter recipes by source"
--[[Translation missing --]]
L["FLASHONEMPTYQUEUEDESC"] = "Flash icon when the queue is empty"
--[[Translation missing --]]
L["FLASHONEMPTYQUEUENAME"] = "Flash on Empty Queue"
--[[Translation missing --]]
L["FLASHONREMOVEQUEUEDESC"] = "Flash icon when an entry is removed from the queue"
--[[Translation missing --]]
L["FLASHONREMOVEQUEUENAME"] = "Flash on Remove Queue Entry"
L["Flat"] = "Flat"
L["Flush All Data"] = "Flush All Data"
L["Flush Player Data"] = "Flush Player Data"
L["Flush Recipe Data"] = "Flush Recipe Data"
L["FLUSHALLDATADESC"] = "Flush all Skillet data"
L["FLUSHPLAYERDATADESC"] = "Flush this character's data"
L["FLUSHRECIPEDATADESC"] = "Flush Skillet recipe data"
L["From Selection"] = "From Selection"
L["Glyph "] = "Glifo"
L["Gold earned"] = "Oro guadagnato"
L["Grouping"] = "Raggruppamento"
--[[Translation missing --]]
L["Guild bank"] = "Guild bank"
L["has cooldown of"] = "has cooldown of"
L["have"] = "hanno"
L["Hide trivial"] = "Nascondi Banali"
L["Hide uncraftable"] = "Nascondi non creabili"
L["HIDEBLIZZARDFRAMEDESC"] = "Hide Blizzard TradeSkill frame when showing Skillet frame"
L["HIDEBLIZZARDFRAMENAME"] = "Hide Blizzard Frame"
--[[Translation missing --]]
L["HIGHERVELLUMDESC"] = "Use a higher level of vellum when correct vellum is unavailable."
--[[Translation missing --]]
L["HIGHERVELLUMNAME"] = "Use higher vellum"
L["Ignore"] = "Ignore"
--[[Translation missing --]]
L["Ignore on hand"] = "Ignore on hand"
--[[Translation missing --]]
L["IGNOREBANKEDREAGENTSDESC"] = "Ignore banked reagents when queuing craftable reagents"
--[[Translation missing --]]
L["IGNOREBANKEDREAGENTSNAME"] = "Ignore banked reagents"
--[[Translation missing --]]
L["IGNORECHANGEDESC"] = "Ignore first profession change"
--[[Translation missing --]]
L["IGNORECHANGENAME"] = "Ignore first profession change"
L["IGNORECLEARDESC"] = "Clear all entries from the Ignored Materials list."
L["Ignored List"] = "Ignored List"
L["Ignored Materials Clear"] = "Ignored Materials Clear"
L["Ignored Materials List"] = "Ignored Materials List"
L["IGNORELISTDESC"] = "Open the Ignored Materials list frame."
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSDESC"] = "Ignore queued reagents"
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSNAME"] = "Ignore queued reagents"
L["Illusions"] = "Illusions"
L["in your bank"] = "in your bank"
L["in your inventory"] = "in your inventory"
L["Include alts"] = "Includi alt"
L["Include bank"] = "Include bank"
L["Include guild"] = "Include gilda"
L["INCLUDEREAGENTSDESC"] = "Add reagent names to the item text that is searched."
L["INCLUDEREAGENTSNAME"] = "Include Reagents in Search"
--[[Translation missing --]]
L["INTERRUPTCLEARDESC"] = "Moving, jumping, closing the frame, or clicking the Pause button clears the in progress queue entry"
--[[Translation missing --]]
L["INTERRUPTCLEARNAME"] = "Spell interrupt clears queue entry"
--[[Translation missing --]]
L["inventory"] = "inventory"
L["Inventory"] = "Inventario"
L["INVENTORYDESC"] = "Informazioni dell'Inventario"
L["InvSlot"] = "InvSlot"
L["is now disabled"] = "e' ora disabilitato"
L["is now enabled"] = "e' ora abiltiato"
L["Learned"] = "Learned"
--[[Translation missing --]]
L["Left-Click to toggle"] = "Left-Click to toggle"
L["Library"] = "Libreria"
L["Link Recipe"] = "Link Recipe"
L["LINKCRAFTABLEREAGENTSDESC"] = "Se puoi creare un reagente necessario alla ricetta, cliccando il reagente ti portera' alla sua ricetta"
L["LINKCRAFTABLEREAGENTSNAME"] = "Rendi reagenti clickabili"
--[[Translation missing --]]
L["List Reagents"] = "List Reagents"
L["Load"] = "Carica"
L["Lock/Unlock"] = "Lock/Unlock"
L["Market"] = "Market"
--[[Translation missing --]]
L["Merchant"] = "Merchant"
L["Merge items"] = "Unisce oggetti"
--[[Translation missing --]]
L["Most Sold"] = "Most Sold"
L["Move Down"] = "Muovi verso il basso"
L["Move to Bottom"] = "Muovi al fondo"
L["Move to Top"] = "Muovi all'inizio"
L["Move Up"] = "Muovi verso l'alto"
L["need"] = "necessario"
L["New"] = "New"
L["New Group"] = "New Group"
L["No Data"] = "Nessun Dato"
L["No headers, try again"] = "No headers, try again"
L["No such queue saved"] = "Nessuna lista simile salvata"
L["None"] = "Nessuno"
L["not yet cached"] = "non ancora salvato"
L["Notes"] = "Note"
L["Number of items to queue/create"] = "Numero di oggetti da accodare/creare"
L["Options"] = "Opzioni"
L["Order by item"] = "Ordina per oggetto"
L["Paste"] = "Paste"
L["Pause"] = "Pausa"
--[[Translation missing --]]
L["Percent"] = "Percent"
L["Plugins"] = "Plugins"
L["Press"] = "Press"
L["Press Okay to continue changing professions"] = "Press Okay to continue changing professions"
L["Press Process to continue"] = "Press Process to continue"
L["Process"] = "Processo"
--[[Translation missing --]]
L["Profit"] = "Profit"
L["Purchased"] = "Comprato"
L["Queue"] = "Coda"
L["Queue All"] = "Accoda Tutti"
L["Queue is empty"] = "La coda e' vuota"
L["Queue is not empty. Overwrite?"] = "La coda non e' vuota. Sovrascrivere?"
L["Queue with this name already exsists. Overwrite?"] = "Una coda con questo nome esiste gia'. Sovrascrivere?"
L["QUEUECRAFTABLEREAGENTSDESC"] = "Se puoi creare il reagente per la ricetta corrente, e non ne hai a sufficenza, allora il reagente verra' aggiunto alla coda"
L["QUEUECRAFTABLEREAGENTSNAME"] = "Accoda reagenti creabili"
L["QUEUECRAFTSDESC"] = "Allow enchants to be queued which adds needed reagents to the shopping list. Enchants cannot be processed from the queue and will be removed."
L["QUEUECRAFTSNAME"] = "Queue enchant reagents"
L["QUEUEGLYPHREAGENTSDESC"] = "Se puoi creare il reagente per la ricetta corrente, e non ne hai a sufficenza, allora il reagente verra' aggiunto alla coda. Questa opzione e' separata solo per i Glifi."
L["QUEUEGLYPHREAGENTSNAME"] = "Accoda reagenti per Glifi"
L["QUEUEONLYVIEWDESC"] = "Show Standalone Queue Window only when set, show both Standalone Queue Window and Skillet Window when clear."
L["QUEUEONLYVIEWNAME"] = "Only show Standalone Queue"
L["Queues"] = "Code"
--[[Translation missing --]]
L["QUEUETOOLSDESC"] = "Add missing tools to shopping list"
--[[Translation missing --]]
L["QUEUETOOLSNAME"] = "Queue tools"
L["reagent id seems corrupt!"] = "reagent id seems corrupt!"
L["Reagents"] = "Reagenti"
L["reagents in inventory"] = "reagenti in inventario"
L["Really delete this queue?"] = "Vuoi cancellare veramente questa coda?"
L["Remove Favorite"] = "Remove Favorite"
L["Remove Recipe from Ignored List"] = "Remove Recipe from Ignored List"
L["Rename"] = "Rename"
L["Rename Group"] = "Rename Group"
--[[Translation missing --]]
L["Request to queue %s items.\\n Are you sure?"] = "Request to queue %s items.\\n Are you sure?"
L["Rescan"] = "Riscansiona"
L["Reset"] = "Comando di reimpostazione posizione"
L["Reset Recipe Filter"] = "Reset Recipe Filter"
L["RESETDESC"] = "Descrizione del comando di reimpostazione posizione"
L["RESETRECIPEFILTERDESC"] = "Reset Recipe Filter"
L["Retrieve"] = "Recupera"
--[[Translation missing --]]
L["Right-Click for filtering options"] = "Right-Click for filtering options"
--[[Translation missing --]]
L["Sales for "] = "Sales for "
--[[Translation missing --]]
L["Sales Rate"] = "Sales Rate"
L["Same faction"] = "Same faction"
L["Save"] = "Salva"
L["Scale"] = "Scala"
L["SCALEDESC"] = "Scala la finestra delle professioni (di base 1.0)"
L["SCALETOOLTIPDESC"] = "Set scale of skill and reagent tooltips to match recipe tooltip (global uiscale)."
L["SCALETOOLTIPNAME"] = "Scale All Tooltips"
L["Scan completed"] = "Scansione Completa"
L["Scanning tradeskill"] = "Scansionamento Professioni"
L["Search"] = "Search"
L["Select All"] = "Select All"
L["Select None"] = "Select None"
L["Select skill difficulty threshold"] = "Seleziona limite della difficolta' per le professioni"
L["Selected Addon"] = "Addon Selezionato"
L["Selection"] = "Selection"
--[[Translation missing --]]
L["SELECTTOPRECIPEDESC"] = "Pre-select the top recipe"
--[[Translation missing --]]
L["SELECTTOPRECIPENAME"] = "Select top recipe"
--[[Translation missing --]]
L["Sellout"] = "Sellout"
L["Sells for "] = "Vendibile per "
L["Set Favorite"] = "Set Favorite"
L["shift-click to link"] = "shift-click to link"
L["Shopping Clear"] = "Lista della Spesa pulita"
L["Shopping List"] = "Lista della Spesa"
L["SHOPPINGCLEARDESC"] = "Pulisci la Lista della Spesa"
L["SHOPPINGLISTDESC"] = "Mostra la lista della spesa"
L["Show favorite recipes only. Click on a star on the left side of a recipe to set favorite."] = "Show favorite recipes only. Click on a star on the left side of a recipe to set favorite."
--[[Translation missing --]]
L["Show News"] = "Show News"
--[[Translation missing --]]
L["Show news when a new version is released"] = "Show news when a new version is released"
L["SHOWBANKALTCOUNTSDESC"] = "Quando vengono calcolati e mostrati i conteggi per gli oggetti, includere quelli presenti in banca e su altri personaggi"
L["SHOWBANKALTCOUNTSNAME"] = "Includi banca e alt"
L["SHOWCRAFTCOUNTSDESC"] = "Mostra il numero di volte che puoi creare una ricetta, non il totale di oggetti producibili"
L["SHOWCRAFTCOUNTSNAME"] = "Mostra conteggio creabili"
L["SHOWCRAFTERSTOOLTIPDESC"] = "Mostra l'alt che e' in grado di creare l'oggetto nelle informazioni"
L["SHOWCRAFTERSTOOLTIPNAME"] = "Mostra creatori nelle informazioni"
L["SHOWDETAILEDRECIPETOOLTIPDESC"] = "Mostra un'informazione quando si passa sopra una ricetta"
L["SHOWDETAILEDRECIPETOOLTIPNAME"] = "Mostra informazioni per le ricette"
L["SHOWFULLTOOLTIPDESC"] = "Mostra tutte le informazioni su un oggetto che puo' essere creato. Se si disattiva questa opzione si vedranno solo informazioni compresse (tenere premuto Ctrl per mostrare le informazioni complete)"
L["SHOWFULLTOOLTIPNAME"] = "Usa informazioni di base"
L["SHOWITEMNOTESTOOLTIPDESC"] = "Aggiungi note pesonalizzate alle informazioni di un oggetto"
L["SHOWITEMNOTESTOOLTIPNAME"] = "Aggiungi note personalizzate alle informazioni"
L["SHOWITEMTOOLTIPDESC"] = "Mostra informazioni oggetto, invece che le informazioni ricetta."
L["SHOWITEMTOOLTIPNAME"] = "Mostra informazioni oggetto quando possibile"
L["SHOWMAXUPGRADEDESC"] = "When set, show upgradable recipes as \"(current/maximum)\". When not set, show as \"(current)\""
L["SHOWMAXUPGRADENAME"] = "Show upgradable recipes as (current/max)"
L["SHOWRECIPESOURCEFORLEARNEDDESC"] = "Show Recipe Source for Learned Recipes"
L["SHOWRECIPESOURCEFORLEARNEDNAME"] = "Show Recipe Source for Learned Recipes "
L["Skillet Trade Skills"] = "Skillet Abilità di Commercio"
L["Skipping"] = "Saltare"
L["Sold amount"] = "Ammontare di vendita"
L["SORTASC"] = "Elenca la lista ricette dal piu' alto al piu' basso"
L["SORTDESC"] = "Elenca la lista delle ricette dal piu' basso al piu' alto"
L["Sorting"] = "Riordinango"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUEDESC"] = "Play a sound when the queue is empty"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUENAME"] = "Sound on Empty Queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUEDESC"] = "Play a sound when an entry is removed from the queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUENAME"] = "Sound on Remove Queue Entry"
L["Source:"] = "Sorgente:"
L["STANDBYDESC"] = "Scambia stato di attesa acceso/spento"
L["STANDBYNAME"] = "attesa"
L["Start"] = "Inizia"
--[[Translation missing --]]
L["Stop"] = "Stop"
L["SubClass"] = "SubClass"
--[[Translation missing --]]
L["Suffix"] = "Suffix"
L["SUPPORTCRAFTINGDESC"] = "Include support for Crafting professions (requires a /reload)"
L["SUPPORTCRAFTINGNAME"] = "Support Crafting"
L["Supported Addons"] = "Addon Supportati"
L["SUPPORTEDADDONSDESC"] = "Addon supportati che possono o sono utilizzati per esaminare l'inventario"
L["This merchant sells reagents you need!"] = "Questo mercante vende i reagenti che ti servono!"
L["TOOLTIPSCALEDESC"] = "Scales the recipe list, detail item and reagent tooltips"
L["Total Cost:"] = "Costo totale:"
L["Total spent"] = "Totale speso"
L["TRADEBUTTONSDESC"] = "Include TradeSkill buttons in frame"
L["TRADEBUTTONSNAME"] = "Include TradeSkill buttons"
L["TradeSkillMaster must be in 'WOW UI' mode to use Skillet-Classic"] = ""
L["Trained"] = "Allenato"
L["TRANSPARAENCYDESC"] = "Trasparenza della finestra principale"
L["Transparency"] = "Trasparenza"
L["Unknown"] = "Sconosciuto"
L["Unlearned"] = "Unlearned"
--[[Translation missing --]]
L["Use Action Bar button to change professions"] = "Use Action Bar button to change professions"
--[[Translation missing --]]
L["USEALTBANKSDESC"] = "Include alt bank items when calculating number of crafts"
--[[Translation missing --]]
L["USEALTBANKSNAME"] = "Use alt banks"
L["USEALTCURRVENDITEMSDESC"] = "Vendor items bought with alternate currencies are considered vendor supplied."
L["USEALTCURRVENDITEMSNAME"] = "Use vendor items bought with alternate currencies"
--[[Translation missing --]]
L["USEBANKASALTDESC"] = "Use the contents of the bank as if it was another alternate."
--[[Translation missing --]]
L["USEBANKASALTNAME"] = "Use bank as another alt"
L["USEBLIZZARDFORFOLLOWERSDESC"] = "Use the Blizzard UI for garrison follower tradeskills"
L["USEBLIZZARDFORFOLLOWERSNAME"] = "Use Blizzard UI for followers"
L["USEGUILDBANKASALTDESC"] = "Use the contents of the guildbank as if it was another alternate."
L["USEGUILDBANKASALTNAME"] = "Use guildbank as another alt"
L["Using Bank for"] = "Using Bank for"
L["Using Reagent Bank for"] = "Using Reagent Bank for"
L["VENDORAUTOBUYDESC"] = "Se hai accodato ricette e parli con un mercante che vende qualdoca che ti serve per quelle ricette, verra' automaticamente acquistato."
L["VENDORAUTOBUYNAME"] = "Compra reagenti in automatico"
L["VENDORBUYBUTTONDESC"] = "Mostra un bottone quando parli ad un mercante che permette di comprare i reagenti necessari per le ricette accodate."
L["VENDORBUYBUTTONNAME"] = "Mostra pulsante dai mercanti"
L["View Crafters"] = "Mostra Creatori"
--[[Translation missing --]]
L["VProfit"] = "VProfit"

