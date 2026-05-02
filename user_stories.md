# User Stories - PowerSqueak

## Layout-Verwaltung

### Layout löschen
**Als** Präsentationsersteller **möchte ich** ein Layout löschen können, **um** meine Layout-Liste aufzuräumen.

**Akzeptanzkriterien:**
- Gegebenn ein custom Layout "Mein Template" existiert, wenn ich es lösche, dann taucht es nicht mehr im Layout-Chooser auf
- Wenn nur noch ein Layout übrig ist, kann man es nicht löschen (Fehlermeldung)
- Nach speichern und neu laden ist das gelöschte Layout immernoch weg

---

### Layout umbenennen
**Als** Präsentationsersteller **möchte ich** ein Layout umbenennen, **um** Tippfehler zu korrigieren ohne das Layout neu erstellen zu müssen.

**Akzeptanzkriterien:**
- Layout "Alter Name" kann in "Neuer Name" umbenannt werden, alter Name verschwindet aus dem Chooser
- Doppelte Namen werden abgelehnt mit Fehlermeldung
- Umbenennung bleibt nach Save/Load erhalten

---

### Layout-Vorschau im Chooser
**Als** Präsentationsersteller **möchte ich** eine Vorschau eines Layouts sehen bevor ich es anwende, **um** nicht raten zu müssen welches Layout sich hinter welchem Namen verbirgt.

**Akzeptanzkriterien:**
- Im Layout-Chooser wird neben jedem Namen ein Thumbnail angezeigt
- Das Thumbnail zeigt die Struktur des Layouts (Textfelder, Positionen usw.)

---

## Textformatierung

### Fett, Kursiv, Unterstrichen
**Als** Präsentationsersteller **möchte ich** Text fett, kursiv oder unterstrichen formatieren können, **um** wichtige Inhalte hervorzuheben.

**Akzeptanzkriterien:**
- Selektierten Text als Bold/Italic/Underline formatieren funktioniert
- Formatierung lässt sich wieder entfernen (toggle)
- Kombinationen gehen (z.B. fett + kursiv gleichzeitig)
- Optionen sind über Kontextmenü erreichbar

---

### Aufzählungslisten
**Als** Präsentationsersteller **möchte ich** Bullet-Point-Listen erstellen, **um** strukturierte Inhalte übersichtlich darzustellen.

**Akzeptanzkriterien:**
- Mehrzeiliger Text kann als Aufzählung formatiert werden (Bullet-Zeichen + Einrückung)
- Mindestens 2 Einrückungsebenen (z.B. • und –)
- Bullets lassen sich wieder entfernen
- Skalierung mit PSScalingFontAttribute funktioniert weiterhin korrekt

---

### Textausrichtung
**Als** Präsentationsersteller **möchte ich** Text links, zentriert oder rechts ausrichten können, **um** das Layout meiner Slides flexibler zu gestalten.

**Akzeptanzkriterien:**
- Alle drei Ausrichtungen (links, mitte, rechts) funktionieren
- Umschaltung über Kontextmenü möglich
- Ausrichtung bleibt nach Save/Load erhalten

---

## Slide Sections

### Slides in Sektionen gruppieren
**Als** Präsentationsersteller **möchte ich** meine Slides in benannte Sektionen einteilen, **um** meine Präsentation in logische Kapitel zu gliedern.

**Akzeptanzkriterien:**
- Sektionen können erstellt und benannt werden (z.B. "Einleitung", "Methoden")
- In der Miniatur-Seitenleiste sind Sektions-Header über den jeweiligen Slide-Gruppen sichtbar
- Wenn ein Slide verschoben wird, gehört es zur Sektion an der neuen Position
- Sektionsstruktur bleibt nach Save/Load erhalten

---

### Sektionsweise Navigation in der Präsentation
**Als** Präsentierender **möchte ich** während der Präsentation zur nächsten/vorherigen Sektion springen können, **um** schnell zum richtigen Thema zu navigieren ohne jeden einzelnen Slide durchklicken zu müssen.

**Akzeptanzkriterien:**
- Tastenkürzel für "nächste Sektion" und "vorherige Sektion" im Präsentationsmodus
- Springt jeweils zum ersten Slide der Zielsektion
- Am Ende/Anfang passiert nichts (kein Crash, kein Wrap-around)

*Hängt ab von: Slides in Sektionen gruppieren*

---

## Ausführbare Codebeispiele

### Code-Block mit Syntax-Highlighting
**Als** Präsentierender **möchte ich** einen Code-Block auf mein Slide setzen der Smalltalk-Code mit Syntax-Highlighting darstellt, **um** meinem Publikum lesbaren Code zu zeigen.

**Akzeptanzkriterien:**
- Neuer Morph-Typ "Code-Block" kann auf Slides platziert werden
- Monospace-Schrift und Code-typischer Hintergrund
- Keywords, Strings, Symbole und Kommentare werden farblich hervorgehoben
- Code-Block skaliert proportional beim Resize (wie PSTextMorph)

---

### Code im Präsentationsmodus ausführen
**Als** Präsentierender **möchte ich** ein Codebeispiel per Klick während der Präsentation ausführen, **um** Live-Demos zu geben ohne in ein anderes Tool wechseln zu müssen.

**Akzeptanzkriterien:**
- Im interaktiven Modus kann ich auf einen "Run"-Button am Code-Block klicken
- Code wird evaluiert und das Ergebnis wird unterhalb des Codes angezeigt
- Bei Fehlern (z.B. Division durch 0) wird die Fehlermeldung angezeigt statt die Präsentation abzuschiessen

*Hängt ab von: Code-Block mit Syntax-Highlighting*

---

## Qualität / Stabilität

### Kein Crash beim Resize mit Text-Morphs
**Als** Präsentierender **möchte ich** das Präsentationsfenster resizen können ohne dass die Anwendung abstürzt, **um** meine Präsentation zuverlässig auf verschiedenen Bildschirmen zu nutzen.

**Akzeptanzkriterien:**
- Slides mit mehreren Text-Morphs lassen sich fehlerfrei resizen
- Leere Text-Morphs verursachen keinen Crash beim Resize
- Slides mit gemischten Morph-Typen (Text + Bilder) resizen ohne doesNotUnderstand-Fehler

---

### Robustes Laden von beschädigten Präsentationen
**Als** Präsentationsersteller **möchte ich** eine klare Fehlermeldung bekommen wenn eine Präsentationsdatei beschädigt ist, **um** zu verstehen was schief gelaufen ist anstatt einen stillen Fehler oder Crash zu erleben.

**Akzeptanzkriterien:**
- Fehlende Morph-Datei: restliche Morphs laden + Warnung
- Kaputte metadata.dict: Slide lädt mit Standardwerten + Warnung
- Fehlendes Layout-Verzeichnis: restliche Layouts laden + Warnung

---

### Kein Crash bei unbekannten Tasteneingaben
**Als** Präsentierender **möchte ich** beliebige Tasten während der Präsentation drücken können ohne einen Crash auszulösen, **um** sorgenfrei zu präsentieren.

**Akzeptanzkriterien:**
- Tasten ohne zugewiesene Aktion (z.B. 'x', 'q') machen einfach nichts
- Modifier-Kombinationen (Ctrl+Z etc.) verursachen keinen Crash
