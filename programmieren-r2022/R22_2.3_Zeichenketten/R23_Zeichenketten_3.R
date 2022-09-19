codeoceanR::rt_score()

# A9 ----
heinz <- c("Getränk","gefällig","?", 
           "Genialer","Gedanke",".", "Gerade","Gewürzgurke","gegessen",".", 
           "Glas","Grog","?", 
           "Gern",".", "Gieß","!","Gieß","!")
# Finde alle Worte aus dem Dialog, die mit 'Ge' oder 'ge' anfangen.
Gworte <- grep("^ge", heinz, v=T, ignore.case=T)


# A10 ----
# Finde alle Worte, die mit g enden.
worteG <- grep("g$", heinz, v=T, ignore.case=T)


# A11 ----
# Schreibe eine Funktion, die alle 'eingaben' ausgibt, die mit 'anfang' beginnen.
# Die 'anfang' Werte enthalten nicht die benötigte Regex-anweisung.
# Pro-Tipp: Wenn dies (oder irgendetwas anderes) schwierig erscheint, 
# zeigt eine Online-Suche oft, dass die Lösung kurz sein kann...
anfangende_eingaben <- function(anfang, eingaben)
{
  grep(paste0("^",anfang),eingaben,v=T)
}
  
anfangende_eingaben("ab", c("außer", "abc", "nichts", "mit abkürzungen")) # nur 'abc', nicht das letzte


# A12 -----
# Ersetze alle Eingaben zwischen 'viel' und 'Gerede' (inklusive) mit '[...]'
abkuerzen <- function(eingabe)
{
  sub(pattern = "viel.*Gerede", replacement = "[...]", x=eingabe)
}
  
abkuerzen("Lange Zitate mit viel mehr als nötigem Gerede bitte kürzen.")
# soll werden: 'Lange Zitate mit [...] bitte kürzen.'


# Mache weiter in "R23_Zeichenketten_4.R"
