if GetLocale() ~= "deDE" then
	return
end

local _, ns = ...
local L = ns.L

L["author"] = "Autor"
L["%s Configuration"] = "%s Konfiguration"
L["Profile"] = "Profil"
L["New profile"] = "Neues Profil"
L["Create"] = "Erstellen"
L["Copy current"] = "Kopie der aktuellen"
L["Set as default"] = "Als Standard festlegen"
L["A profile with the same name exists."] = "Es existiert ein Profil mit demselben Namen."
L["Are you sure you want to delete profile %s?"] = "Bist Du dir sicher, dass Du das Profil %s löschen möchten?"
L["RELOAD_INTERFACE_QUESTION"] = "Du musst dein Interface neu laden, um die Änderungen zu übernehmen. Jetzt neu laden?"
L["ADD_IGNORE_MBTN_QUESTION"] = "Bist du dir sicher, dass du %s zur Ignorierliste  hinzufügen möchtest?"
L["REMOVE_IGNORE_MBTN_QUESTION"] = "Bist du dir sicher, dass du das Ignorieren von %s aufheben willst?"
L["ADD_CUSTOM_GRAB_BTN_QUESTION"] = "Bist Du dir sicher, dass Du %s in die Greiferliste übernehmen willst?"
L["REMOVE_CUSTOM_GRAB_BTN_QUESTION"] = "Bist Du dir sicher, dass Du %s aus der Greiferliste entfernen willst?"
L["Add bar"] = "Leiste hinzufügen"
L["A bar with the same name exists."] = "Es gibt eine Leiste mit demselben Namen."
L["Are you sure you want to delete bar %s?"] = "Bist Du dir sicher, dass Du die Leiste %s löschen möchtest?"
L["Bar"] = "Leiste"
L["Source:"] = "Quelle:"
L["Manually added"] = "Manuell hinzugefügt"
L["Move to"] = "Verschieben nach"
L["Clip button"] = "Clip Button"
L["Prevents button elements from going over the edges."] = "Verhindert, dass Buttonelemente über die Ränder hinausgehen."
L["Auto show/hide"] = "Automatisch anzeigen/ausblenden"
L["Allow the button to control its own visibility"] = "Erlauben der Schaltfläche, ihre Sichtbarkeit selbst zu steuern."
L["Disable Masque"] = "Deaktivieren Masque"
L["Add to ignore list"] = "Zur Ignorierliste hinzufügen"
L["Options of adding buttons"] = "Optionen zum Hinzufügen von Buttons"
L["Bar settings"] = "Leisten Einstellungen"
L["Button settings"] = "Button Einstellungen"
L["SETTINGS_DESCRIPTION"] = "Wenn du auf die |cff%sLinie|r klickst:\n•|cffffd200LMB|r - Leiste verschieben.\n•|cffffd200RMB + Shift|r - Öffnen der Einstellungen.\n•|cffffd200RMB + Alt|r - Die Position der Leiste sperren."
L["TEXTURES_HELP_TOOLTIP"] = "Einige Texturen werden von anderen Addons hinzugefügt, so dass sie fehlen können, wenn das Addon nicht vorhanden ist."
L["Line"] = "Linie"
L["Background"] = "Hintergrund"
L["Fade out line"] = "|cff%sLinie|r ausblenden"
L["Fade out bar"] = "Balken ausblenden"
L["Opacity"] = "Deckkraft"
L["Hide the bar in Pet Battle"] = "Die Leiste im Haustierkampf ausblenden"
L["Line width"] = "|cff%sLinien|rbreite"
L["Line Border"] = "Linien-Rand"
L["Line Border Offset"] = "|cff%sLinien|r-Rand Versatz"
L["Line Border Size"] = "|cff%sLinien|r Rand Größe"
L["Distance from line to bar"] = "Abstand von der |cff%sLinie|r zur Leiste"
L["Orientation"] = "Orientierung"
L["Auto"] = "Automatisch"
L["Horizontal"] = "Horizontal"
L["Vertical"] = "Vertikal"
L["Strata of panel"] = "Ebene der Leiste"
L["Lock the bar's location"] = "Sperre die Leistenposition"
L["Expand to"] = "Erweitern nach"
L["Right / Bottom"] = "Rechts / Unten"
L["Left / Top"] = "Links / Oben"
L["Both direction"] = "In beide Richtung"
L["Add buttons from DataBroker"] = "Button von DataBroker hinzufügen"
L["Add buttons of any data type"] = "Hinzufügen von Buttons mit beliebigen Dateitypen"
L["Grab default buttons on minimap"] = "Standard-Buttons auf der Minimap übernehmen"
L["Grab addon buttons on minimap"] = "Addon-Buttons auf der Minimap übernehmen"
L["Try to grab after"] = "Versuche zum übernehmen nach"
L["sec."] = "sek."
L["Grab buttons without a name"] = "Buttons ohne Namen übernehmen (|cffff2020nicht empfohlen|r)"
L["Add button manually"] = "Button manuell hinzufügen"
L["Point to button"] = "Auf Button zeigen"
L["Number of buttons"] = "Anzahl der Buttons in einer Reihe / Spalte"
L["Buttons Size"] = "Größe der Buttons"
L["Distance to bar border"] = "Abstand zum Balkenrand"
L["Distance between buttons"] = "Abstand zwischen den Buttons"
L["Position of minimap buttons"] = "Position des Minimap Buttons"
L["A new line"] = "Eine neue Linie"
L["Followed"] = "Gefolgt von"
L["Mixed"] = "Gemischt"
L["Direction of buttons"] = "Richtung der Buttons"
L["Right to left"] = "Von rechts nach links"
L["Left to right"] = "Von links nach rechts"
L["Top to bottom"] = "Von oben nach unten"
L["Bottom to top"] = "Von unten nach oben"
L["Intercept the position of tooltips"] = "Erfasst die Position von Tooltips"
L["Top"] = "Oben"
L["Top left"] = "Oben links"
L["Top right"] = "Oben rechts"
L["Bottom"] = "Unten"
L["Bottom left"] = "Unten links"
L["Bottom right"] = "Unten rechts"
L["Left"] = "Links"
L["Left top"] = "Links oben"
L["Left bottom"] = "Links unten"
L["Right"] = "Rechts"
L["Right top"] = "Rechts oben"
L["Right bottom"] = "Rechts unten"
L["Buttons"] = "Buttons"
L["Ignore list"] = "Ignorier-Liste"
L["BUTTON_TOOLTIP"] = "|cffffd200LMB|r - zum Aktivieren/Deaktivieren von Buttons oder verschieben durch Ziehen.\n|cffffd200RMB|r - um das Kontextmenü zu öffnen."
L["IGNORE_DESCRIPTION"] = "Du kannst einen Teil des Namens angeben.\n\nZum Beispiel ignoriert |cffffd200HidingBar|r:\n|cffffd200HidingBar1|r\n|cffffd200HidingBar2|r\n|cffffd200HidingBar3|r\n..."
L["DataBroker Buttons"] = "DataBroker-Buttons"
L["Minimap Buttons"] = "Minimap Buttons"
L["Manually Grabbed Buttons"] = "Manuell erfasste Buttons"
L["Own Minimap Button"] = "Eigener Minimap Button"
L["Show on"] = "Zeigen wenn"
L["Hover"] = "Schweben"
L["Click"] = "Klicken"
L["Hover or Click"] = "Schweben oder Klicken"
L["Allways"] = "Immer"
L["Delay to show"] = "Verzögerung\nzum Einblenden"
L["Hide by"] = "Ausblenden durch"
L["Timer"] = "Timer"
L["Clicking on a free place"] = "Einen freien Platz anklicken"
L["Timer or clicking on a free place"] = "Timer oder Anklicken eines freien Platzes"
L["Clicking on a line or button"] = "Klicken auf eine Zeile oder Schaltfläche"
L["Delay to hide"] = "Verzögerung\nzum Ausblenden"
L["Display"] = "Display"
L["Border"] = "Rand"
L["Border Size"] = "Rand Größe"
L["Border Offset"] = "Randversatz"
L["Bar position"] = "Balkenposition"
L["Bar attached to the side"] = "Seitlich angebrachte Leiste"
L["Bar moves freely"] = "Leiste bewegt sich frei"
L["Bar like a minimap button"] = "Leiste wie eine Minimap-Button"
L["Icon"] = "Symbol"
L["Hiding to left"] = "Nach links ausblenden"
L["Hiding to right"] = "Nach rechts ausblenden"
L["Hiding to up"] = "Nach oben ausblenden"
L["Hiding to down"] = "Nach unten ausblenden"
L["Show to left"] = "Nach links zeigen"
L["Show to right"] = "Nach rechts zeigen"
L["Show to up"] = "Nach oben zeigen"
L["Show to down"] = "Nach unten zeigen"
L["Button Size"] = "Button Größe"
L["Distance from button to bar"] = "Abstand vom Button zur Leiste"
L["Bar offset relative to the button"] = "Leistenversatz relativ zur Schaltfläche"
L["The button can be grabbed"] = "Die Schaltfläche kann erfasst werden"
L["If a suitable bar exists then the button will be grabbed"] = "Wenn ein passender Balken vorhanden ist, wird die Schaltfläche erfasst"
L["About"] = "Über"
L["Help with translation of %s. Thanks."] = "Helfe bei der Übersetzung von %s. Danke."
L["Localization Translators:"] = "Lokalisierungsübersetzer:"