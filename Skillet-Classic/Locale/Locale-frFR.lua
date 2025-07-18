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

local L = LibStub("AceLocale-3.0"):NewLocale("Skillet", "frFR")
if not L then return end

L[" days"] = " jours"
L["About"] = "À propos"
L["ABOUTDESC"] = "Affiche les informations sur Skillet"
L["Add Recipe to Ignored List"] = "Ajouter une recette à la liste ignorée"
L["Add to Ignore Materials"] = "Ajouter aux matériaux ignorés"
L["alts"] = "alts"
L["Appearance"] = "Apparence"
L["APPEARANCEDESC"] = "Paramètres d'affichage de Skillet"
L["Auction"] = "Hôtel des ventes"
L["Bank"] = "Banque"
L["bank"] = "Banque"
L["Blizzard"] = "Blizzard"
L["Buy Reagents"] = "Acheter des composants"
L["buyable"] = "Achetable"
L["Buyout"] = "Rachat"
L["By Difficulty"] = "Par Difficulté"
L["By Item Level"] = "Par Niveau d'objet"
L["By Level"] = "Par Niveau"
L["By Name"] = "Par Nom"
L["By Quality"] = "Par Qualité"
L["By Skill Level"] = "Par Niveau de Compétence"
L["can be created by crafting reagents"] = "Peut être crée en fabriquant les composants"
L["can be created from reagents in your inventory"] = "peut être créé à partir des composants de votre inventaire"
L["can be created from reagents on all characters"] = "peut être créé à partir des composants sur tous les personnages"
L["can be created from reagents on other characters"] = "Peut être créé à partir des composants sur tous vos personnages"
L["can be created with reagents bought at vendor"] = "peut être créé avec des composants achetés chez le vendeur"
L["Changing profession to"] = "Changer la profession en"
L["CLAMPTOSCREENDESC"] = "Forcer les cadres à rester à l'écran"
L["CLAMPTOSCREENNAME"] = "Fixez les cadres à l'écran"
L["Clear"] = "Nettoyer"
L["Click"] = "Cliquez"
L["click here to add a note"] = "Cliquez pour ajouter une note"
L["Click to toggle favorite"] = "Clique pour afficher favoris"
L["Collapse all groups"] = "Replier tous les groupes"
L["Config"] = "Configuration"
L["CONFIGDESC"] = "Ouvre la fenêtre de configuration de Skillet"
L["CONFIRMQUEUECLEARDESC"] = "Utilisez Alt-clic gauche au lieu de clic gauche pour effacer la file d'attente"
L["CONFIRMQUEUECLEARNAME"] = "Utilisez Alt-clic pour effacer la file d'attente"
L["Conflict with the addon TradeSkillMaster"] = "Conflit avec l'add-on TradeSkillMaster"
L["Copy"] = "Copier"
--[[Translation missing --]]
L["Cost"] = "Cost"
L["Could not find bag space for"] = "Plus de place dans vos sacs pour"
L["craftable"] = "Réalisable"
L["CRAFTBUTTONSDESC"] = "Inclure des boutons d'artisanat dans le cadre"
L["CRAFTBUTTONSNAME"] = "Inclure des boutons d'artisanat"
L["Crafted By"] = "Créé par"
L["Create"] = "Créer"
L["Create All"] = "Créer Tous"
L["Cut"] = "Couper"
L["DBMarket"] = "DBMarket"
L["Delete"] = "Supprimer"
L["DISPLAYITEMLEVELDESC"] = "Si l'objet à fabriquer possède un niveau d'objet, l'afficher à côté de la recette"
L["DISPLAYITEMLEVELNAME"] = "Afficher le niveau d'objet"
L["DISPLAYREQUIREDLEVELDESC"] = "Si l'objet à créer a un niveau minimum requis, ce niveau sera affiché avec la recette"
L["DISPLAYREQUIREDLEVELNAME"] = "Afficher le niveau requis"
L["DISPLAYSHOPPINGLIST"] = "Afficher la liste de courses sur :"
L["DISPLAYSHOPPINGLISTATAUCTIONDESC"] = "Affiche une liste d'achats d'objets nécessaires à la réalisation des recettes en file d'attente mais qui ne sont pas dans vos sacs."
L["DISPLAYSHOPPINGLISTATAUCTIONNAME"] = "Afficher liste d'achats à l'hôtel des ventes."
L["DISPLAYSHOPPINGLISTATBANKDESC"] = "Affiche une liste d'achats d'objet requis à la création des objets en file d'attente dont vous ne disposez pas"
L["DISPLAYSHOPPINGLISTATBANKNAME"] = "Afficher liste d'achats à la banque"
L["DISPLAYSHOPPINGLISTATGUILDBANKDESC"] = "Affiche une liste d'achats d'objet requis à la création des objets en file d'attente dont vous ne disposez pas"
L["DISPLAYSHOPPINGLISTATGUILDBANKNAME"] = "Afficher liste d'achats à la banque de guilde"
L["DISPLAYSHOPPINGLISTATMERCHANTDESC"] = "Montre une liste d'achats d'objets nécessaires à la création des recettes en attente mais qui ne sont pas dans vos sacs."
L["DISPLAYSHOPPINGLISTATMERCHANTNAME"] = "Montre la liste d'achats chez les marchands."
L["Draenor Engineering"] = "Ingénierie de Draenor"
L["Empty Group"] = "Groupe vide"
L["Enabled"] = "Activé"
L["Enchant"] = "Enchanter"
--[[Translation missing --]]
L["ENCHANTSCROLLSDESC"] = "Use the enchant scroll item for links"
--[[Translation missing --]]
L["ENCHANTSCROLLSNAME"] = "Use enchant scrolls"
L["ENHANCHEDRECIPEDISPLAYDESC"] = "Si activé, les noms de recettes auront un ou plusieurs '+' derrière leur nom pour indiquer la difficulté de la recette."
L["ENHANCHEDRECIPEDISPLAYNAME"] = "Montrer la difficulté des recettes comme texte"
L["Expand all groups"] = "Développer tous les groupes"
L["Features"] = "Fonctionnalités"
L["FEATURESDESC"] = "Réglages optionnels qui peuvent être activés et désactivés"
L["Filter"] = "Filtrer"
L["Filter recipes by source"] = "Filtrer les recettes par source"
--[[Translation missing --]]
L["FLASHONEMPTYQUEUEDESC"] = "Flash icon when the queue is empty"
--[[Translation missing --]]
L["FLASHONEMPTYQUEUENAME"] = "Flash on Empty Queue"
--[[Translation missing --]]
L["FLASHONREMOVEQUEUEDESC"] = "Flash icon when an entry is removed from the queue"
--[[Translation missing --]]
L["FLASHONREMOVEQUEUENAME"] = "Flash on Remove Queue Entry"
L["Flat"] = "Plat"
L["Flush All Data"] = "Supprimer toutes les données"
L["Flush Player Data"] = "Supprimer les données du joueur"
L["Flush Recipe Data"] = "Vider les données de recettes"
L["FLUSHALLDATADESC"] = "Supprime toutes les données de Skillet"
L["FLUSHPLAYERDATADESC"] = "Supprime les données de ce personnage"
L["FLUSHRECIPEDATADESC"] = "Supprime les données Skillet de recettes"
L["From Selection"] = "Depuis la sélection"
L["Glyph "] = "Glyphe "
L["Gold earned"] = "Or gagné"
L["Grouping"] = "Grouper"
L["Guild bank"] = "Banque de guilde"
L["has cooldown of"] = "A un temps de recharge de"
L["have"] = "Possession"
L["Hide trivial"] = "Cacher les triviaux"
L["Hide uncraftable"] = "Cacher les non-réalisables"
L["HIDEBLIZZARDFRAMEDESC"] = "Cacher la fenêtre de métier de Blizzard lorsque celle de Skillet est visible"
L["HIDEBLIZZARDFRAMENAME"] = "Cacher la fenêtre de Blizzard"
--[[Translation missing --]]
L["HIGHERVELLUMDESC"] = "Use a higher level of vellum when correct vellum is unavailable."
--[[Translation missing --]]
L["HIGHERVELLUMNAME"] = "Use higher vellum"
L["Ignore"] = "Ignorer"
--[[Translation missing --]]
L["Ignore on hand"] = "Ignore on hand"
L["IGNOREBANKEDREAGENTSDESC"] = "Ignorer les composants en banque lors de la mise en file d'attente de composants artisanaux"
L["IGNOREBANKEDREAGENTSNAME"] = "Ignorer les composants en banque"
--[[Translation missing --]]
L["IGNORECHANGEDESC"] = "Ignore first profession change"
--[[Translation missing --]]
L["IGNORECHANGENAME"] = "Ignore first profession change"
L["IGNORECLEARDESC"] = "Supprimer toutes les entrées de la liste des Matériaux Ignorés"
L["Ignored List"] = "Liste ignorée"
L["Ignored Materials Clear"] = "Vider les Matériaux Ignorés"
L["Ignored Materials List"] = "Liste des Matériaux Ignorés"
L["IGNORELISTDESC"] = "Ouvrir la liste des Matériaux Ignorés"
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSDESC"] = "Ignore queued reagents"
--[[Translation missing --]]
L["IGNOREQUEUEDREAGENTSNAME"] = "Ignore queued reagents"
L["Illusions"] = "Illusions"
L["in your bank"] = "dans votre banque"
L["in your inventory"] = "dans votre inventaire"
L["Include alts"] = "Inclure les alts"
L["Include bank"] = "Inclure la banque"
L["Include guild"] = "Inclure la guilde"
L["INCLUDEREAGENTSDESC"] = "Ajouter les composants au texte de l'objet recherché"
L["INCLUDEREAGENTSNAME"] = "Ajouter les composants dans la recherche"
L["INTERRUPTCLEARDESC"] = "Déplacer, sauter, fermer le cadre ou cliquer sur le bouton Pause efface l'entrée de la file d'attente en cours"
L["INTERRUPTCLEARNAME"] = "L'interruption de sorts efface l'entrée de la file d'attente"
L["inventory"] = "inventaire"
L["Inventory"] = "Inventaire"
L["INVENTORYDESC"] = "Informations sur l'inventaire"
L["InvSlot"] = "InvSlot"
L["is now disabled"] = "est maintenant désactivé"
L["is now enabled"] = "est maintenant activé"
L["Learned"] = "Appris"
L["Left-Click to toggle"] = "Clic gauche pour basculer"
L["Library"] = "Bibliothèque"
L["Link Recipe"] = "Liens de la recette"
L["LINKCRAFTABLEREAGENTSDESC"] = "Si vous pouvez créer un composant requis pour la recette actuelle, cliquer sur ce composant vous emmènera à sa recette."
L["LINKCRAFTABLEREAGENTSNAME"] = "Rendre composants cliquables"
--[[Translation missing --]]
L["List Reagents"] = "List Reagents"
L["Load"] = "Charger"
L["Lock/Unlock"] = "Verrouiller / déverrouiller"
L["Market"] = "Marché"
L["Merchant"] = "Marchand"
L["Merge items"] = "Regrouper les objets"
--[[Translation missing --]]
L["Most Sold"] = "Most Sold"
L["Move Down"] = "Descendre"
L["Move to Bottom"] = "Déplacer à la fin"
L["Move to Top"] = "Déplacer au début"
L["Move Up"] = "Monter"
L["need"] = "Besoin"
L["New"] = "Nouveau"
L["New Group"] = "Nouveau groupe"
L["No Data"] = "Aucune donnée"
L["No headers, try again"] = "Aucun en-tête, réessayez"
L["No such queue saved"] = "Aucune file d'attente correspondante sauvée"
L["None"] = "Aucun"
L["not yet cached"] = "Pas encore en cache"
L["Notes"] = "Notes"
L["Number of items to queue/create"] = "Nombre d'objets à créer/mettre en file d'attente"
L["Options"] = "Options"
L["Order by item"] = "Ordonner par objet"
L["Paste"] = "Coller"
L["Pause"] = "Pause"
--[[Translation missing --]]
L["Percent"] = "Percent"
L["Plugins"] = "Plugins"
L["Press"] = "Appuie"
L["Press Okay to continue changing professions"] = "Appuyez sur OK pour continuer à changer de profession"
L["Press Process to continue"] = "Cliquer sur Traiter pour continuer"
L["Process"] = "Traiter"
--[[Translation missing --]]
L["Profit"] = "Profit"
L["Purchased"] = "Achetés"
L["Queue"] = "Mettre en file"
L["Queue All"] = "Tout mettre en file"
L["Queue is empty"] = "La file d'attente est vide"
L["Queue is not empty. Overwrite?"] = "La file d'attente n'est pas vide. La remplacer ?"
L["Queue with this name already exsists. Overwrite?"] = "Une file d'attente avec ce nom existe déjà. La remplacer ?"
L["QUEUECRAFTABLEREAGENTSDESC"] = "Si vous pouvez créer un composant dont vous manquez pour la recette actuelle, alors ce composant sera ajouté à la file."
L["QUEUECRAFTABLEREAGENTSNAME"] = "Mettre en file d'attente les composants réalisables"
L["QUEUECRAFTSDESC"] = "Permettre aux enchantements d'être mis en file d'attente, ce qui ajoute les réactifs nécessaires à la liste d'achats. Les enchantements ne peuvent pas être traités de la file d'attente et seront supprimés."
L["QUEUECRAFTSNAME"] = "Réactifs d'enchantement de file d'attente"
L["QUEUEGLYPHREAGENTSDESC"] = "Si vous pouvez créer un composant dont vous manquez pour la recette actuelle, alors ce composant sera ajouté à la file. Cette option est séparée pour les glyphes uniquement."
L["QUEUEGLYPHREAGENTSNAME"] = "Mettre en file d'attente les composants pour glyphes"
L["QUEUEONLYVIEWDESC"] = "Afficher la fenêtre de file d'attente autonome uniquement lorsqu'elle est définie, afficher à la fois la fenêtre de file d'attente autonome et la fenêtre de skillet lorsqu'elle est désactivée."
L["QUEUEONLYVIEWNAME"] = "Afficher uniquement la file d'attente autonome"
L["Queues"] = "Files d'attente"
--[[Translation missing --]]
L["QUEUETOOLSDESC"] = "Add missing tools to shopping list"
--[[Translation missing --]]
L["QUEUETOOLSNAME"] = "Queue tools"
L["reagent id seems corrupt!"] = "l'ID du composant semble corrompu!"
L["Reagents"] = "Composants"
L["reagents in inventory"] = "composants dans l'inventaire"
L["Really delete this queue?"] = "Voulez-vous vraiment supprimer cette file d'attente ?"
L["Remove Favorite"] = "Retirer des favoris"
L["Remove Recipe from Ignored List"] = "Supprimer la recette de la liste ignorée"
L["Rename"] = "Renommer"
L["Rename Group"] = "Renommer le groupe"
L["Request to queue %s items.\\n Are you sure?"] = "Demande de mise en file d'attente des objets %s.\\n Es-tu sûr?"
L["Rescan"] = "Actualiser"
L["Reset"] = "Réinitialiser"
L["Reset Recipe Filter"] = "Réinitialiser le filtre de recette"
L["RESETDESC"] = "Réinitialiser la position de Skillet"
L["RESETRECIPEFILTERDESC"] = "Réinitialiser le filtre de recette"
L["Retrieve"] = "Récupérer"
L["Right-Click for filtering options"] = "Cliquez avec le bouton droit pour afficher les options de filtrage"
--[[Translation missing --]]
L["Sales for "] = "Sales for "
--[[Translation missing --]]
L["Sales Rate"] = "Sales Rate"
L["Same faction"] = "Même faction"
L["Save"] = "Sauver"
L["Scale"] = "Échelle"
L["SCALEDESC"] = "Échelle de la fenêtre (1.0 par défaut)"
L["SCALETOOLTIPDESC"] = "Définissez l'échelle des infobulles des compétences et des composants pour correspondre à l'info-bulle de la recette (uiscale globale)."
L["SCALETOOLTIPNAME"] = "Mettre à l'échelle toutes les infobulles"
L["Scan completed"] = "Balayage terminé"
L["Scanning tradeskill"] = "Balayage en cours"
L["Search"] = "Recherche"
L["Select All"] = "Tout sélectionner"
L["Select None"] = "Ne rien sélectionner"
L["Select skill difficulty threshold"] = "Sélectionner le seuil de difficulté"
L["Selected Addon"] = "Add-on sélectionné"
L["Selection"] = "Sélection"
--[[Translation missing --]]
L["SELECTTOPRECIPEDESC"] = "Pre-select the top recipe"
--[[Translation missing --]]
L["SELECTTOPRECIPENAME"] = "Select top recipe"
--[[Translation missing --]]
L["Sellout"] = "Sellout"
L["Sells for "] = "Se vend pour"
L["Set Favorite"] = "Mettre en favoris"
L["shift-click to link"] = "Maj-clic pour lier"
L["Shopping Clear"] = "Liste de courses effacée"
L["Shopping List"] = "Liste d'achats"
L["SHOPPINGCLEARDESC"] = "Vider la liste de course"
L["SHOPPINGLISTDESC"] = "Affiche la liste d'achats"
L["Show favorite recipes only. Click on a star on the left side of a recipe to set favorite."] = "Montre seulement la recette favorite. Clique sur une étoile sur le côté gauche d'une recette pour la mettre en favorite."
--[[Translation missing --]]
L["Show News"] = "Show News"
--[[Translation missing --]]
L["Show news when a new version is released"] = "Show news when a new version is released"
L["SHOWBANKALTCOUNTSDESC"] = "Lors du calcul et de l'affichage du nombre d'objets réalisables, inclure les objets de votre banque et de vos autres personnages"
L["SHOWBANKALTCOUNTSNAME"] = "Inclure le contenu de votre banque et de vos autres personnages"
L["SHOWCRAFTCOUNTSDESC"] = "Afficher le nombre de fois que vous pouvez réaliser une recette, et pas le nombre total d'objets possibles à fabriquer"
L["SHOWCRAFTCOUNTSNAME"] = "Afficher le nombre de réalisations possibles"
L["SHOWCRAFTERSTOOLTIPDESC"] = "Afficher les autres personnages qui peuvent fabriquer un objet dans l'infobulle"
L["SHOWCRAFTERSTOOLTIPNAME"] = "Afficher les artisans dans les infobulles"
L["SHOWDETAILEDRECIPETOOLTIPDESC"] = "Affiche une infobulle quand la souris survole les recettes dans le panneau de gauche"
L["SHOWDETAILEDRECIPETOOLTIPNAME"] = "Afficher une infobulle pour les recettes"
L["SHOWFULLTOOLTIPDESC"] = "Afficher toutes les informations sur un objet à produire. Si vous le désactivez, vous ne verrez qu'une infobulle compacte (maintenez Ctrl pour l'infobulle complète)"
L["SHOWFULLTOOLTIPNAME"] = "Utiliser les infobulles classiques"
L["SHOWITEMNOTESTOOLTIPDESC"] = "Ajoute des notes que vous fournissez pour un objet dans son infobulle"
L["SHOWITEMNOTESTOOLTIPNAME"] = "Ajoute des notes de l'utilisateur dans l'infobulle"
L["SHOWITEMTOOLTIPDESC"] = "Afficher l'infobulle de l'objet réalisable au lieu de celui de la recette."
L["SHOWITEMTOOLTIPNAME"] = "Afficher l'infobulle de l'objet quand c'est possible"
L["SHOWMAXUPGRADEDESC"] = "Une fois défini, affichez les recettes que vous pouvez mettre à niveau en tant que \"(actuel / maximum)\". Lorsqu'il n'est pas défini, afficher comme \"(actuel)\""
L["SHOWMAXUPGRADENAME"] = "Afficher les recettes que vous pouvez mettre à niveau en tant que (actuel / max)"
L["SHOWRECIPESOURCEFORLEARNEDDESC"] = "Montre les sources des recettes pour les recettes apprises"
L["SHOWRECIPESOURCEFORLEARNEDNAME"] = "Montre les sources des recettes pour les recettes apprises"
L["Skillet Trade Skills"] = "Skillet-Classique"
L["Skipping"] = "Sauter"
L["Sold amount"] = "Montant vendu"
L["SORTASC"] = "Trier la liste des patrons du plus élevé (haut) vers le plus faible (en bas)"
L["SORTDESC"] = "Trier la liste des patrons du plus faible (haut) vers le plus élevé (en bas)"
L["Sorting"] = "Tri"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUEDESC"] = "Play a sound when the queue is empty"
--[[Translation missing --]]
L["SOUNDONEMPTYQUEUENAME"] = "Sound on Empty Queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUEDESC"] = "Play a sound when an entry is removed from the queue"
--[[Translation missing --]]
L["SOUNDONREMOVEQUEUENAME"] = "Sound on Remove Queue Entry"
L["Source:"] = "Source : "
L["STANDBYDESC"] = "Activer/désactiver le mode veille"
L["STANDBYNAME"] = "veille"
L["Start"] = "Commencer"
L["Stop"] = "Arrêt"
L["SubClass"] = "SubClasse"
--[[Translation missing --]]
L["Suffix"] = "Suffix"
L["SUPPORTCRAFTINGDESC"] = "Inclure un support pour les professions (Nécessite /reload)"
L["SUPPORTCRAFTINGNAME"] = "Supporter l'artisanat"
L["Supported Addons"] = "Add-ons Compatibles"
L["SUPPORTEDADDONSDESC"] = "Add-ons reconnus pouvant ou étant utilisés pour surveiller l'inventaire"
L["This merchant sells reagents you need!"] = "Ce marchand vend des composants dont vous avez besoin!"
L["TOOLTIPSCALEDESC"] = "Met à l'échelle la liste des recettes, les détails des objets et les infobulles des composants"
L["Total Cost:"] = "Coût total :"
L["Total spent"] = "Total dépensé"
L["TRADEBUTTONSDESC"] = "Incluez des boutons de profession dans le cadre"
L["TRADEBUTTONSNAME"] = "Inclure des boutons de profession"
L["TradeSkillMaster must be in 'WOW UI' mode to use Skillet-Classic"] = "TradeSkillMaster doit être en mode \"WOW UI\" pour utiliser Skillet-Classic"
L["Trained"] = "Enseignée"
L["TRANSPARAENCYDESC"] = "Transparence de la fenêtre principale"
L["Transparency"] = "Transparence"
L["Unknown"] = "Inconnue"
L["Unlearned"] = "Non-appris"
L["Use Action Bar button to change professions"] = "Utilisez le bouton de la barre d'action pour changer de profession"
--[[Translation missing --]]
L["USEALTBANKSDESC"] = "Include alt bank items when calculating number of crafts"
--[[Translation missing --]]
L["USEALTBANKSNAME"] = "Use alt banks"
L["USEALTCURRVENDITEMSDESC"] = "Les objets du vendeur achetés avec d'autres devises sont considérés comme fournis par le vendeur."
L["USEALTCURRVENDITEMSNAME"] = "Utiliser des objets fournisseur achetés avec d'autres devises"
--[[Translation missing --]]
L["USEBANKASALTDESC"] = "Use the contents of the bank as if it was another alternate."
--[[Translation missing --]]
L["USEBANKASALTNAME"] = "Use bank as another alt"
L["USEBLIZZARDFORFOLLOWERSDESC"] = "Utilisez l'interface Blizzard pour les compétences de suivant de fief"
L["USEBLIZZARDFORFOLLOWERSNAME"] = "Utiliser l'interface Blizzard pour les suivants"
L["USEGUILDBANKASALTDESC"] = "Utilisez le contenu de la banque de guilde comme s'il s'agissait d'un autre remplaçant."
L["USEGUILDBANKASALTNAME"] = "Utiliser la banque de guilde comme autre alt"
L["Using Bank for"] = "Utilise la banque pour"
L["Using Reagent Bank for"] = "Utilise la banque des composants pour"
L["VENDORAUTOBUYDESC"] = "Si vous avez des recettes en file d'attente et que vous parlez à un vendeur proposant quelque chose de nécessaire à ces recettes, il sera automatiquement acheté."
L["VENDORAUTOBUYNAME"] = "Acheter les composants automatiquement"
L["VENDORBUYBUTTONDESC"] = "Afficher un bouton en parlant aux vendeurs qui vous permet d'acheter les composants nécessaires pour toutes les recettes en file d'attente."
L["VENDORBUYBUTTONNAME"] = "Montrer le bouton d'achat des composants chez les vendeurs"
L["View Crafters"] = "Voir Artisans"
--[[Translation missing --]]
L["VProfit"] = "VProfit"

