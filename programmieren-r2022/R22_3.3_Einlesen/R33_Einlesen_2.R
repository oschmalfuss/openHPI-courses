codeoceanR::rt_score()

# A5 ----
# Warum sollte setwd nicht verwendet werden? 3 Antworten sind hier korrekt.
# 1. Weil der Befehl Ende 2022 aus dem base Package entfernt werden soll.
# 2. Andere Nutzer werden das gleiche Verzeichnis oft nicht haben.
# 3. Das stimmt so nicht. Wenn es im Skript am Ende steht, ist es OK.
# 4. Nach etwaigem Verschieben von Ordnern habe ich selbst den Pfad nicht mehr.
# 5. Auf einem zweiten (synchronisierten) Rechner habe ich den Pfad ggf. nicht.
# 6. Dateinamen sollten immer mit komplettem (absolutem) Pfad angegeben werden.
WD_auswahl <- c(2,4,5)
# -> Diskussion zur akzeptierten Lösung gerne im Forum!


# A6 ----
# Die R33d6 Datei ist mit read.csv einzulesen.
# Beachte die Kennzeichnung für Fehldaten.
insurances <- read.csv("R33d6_insurances.csv",
                       header=T,
                       na.strings = "unknown",
                       stringsAsFactors = T
                       )


# A7 ----
# R33d7_tage.txt hat keine einheitlichen Spaltentrenner - aber konsistente Spaltenbreiten.
# Tipp: Die benötigte Lesefunktion ist in den Folien an geeigneter Stelle aufgeführt.
# Tipp: nutze teilweise negative Angaben zur Spaltenbreiten, siehe 
#       Beispiele am Ende der Doku der Funktion.
# Falls du das nicht machst und die Spaltentrenner als eigene Spalten einliest, 
#       lösche diese Spalten dann heraus. 
# `tage` soll hier 3 Spalten haben. (In der Realität siehe as.Date, aber das führt hier zu weit.)
tage <- read.fwf("R33d7_tage.txt",
                 widths = c(4,-1,2,-1,2)
                 )


# A8 ----
data(iris)  ;  head(iris)
# Schreibe die eingebauten 'iris'-Daten in eine Datei namens "iris.txt".
# Ich empfehle die Funktion aus der Folie 'Daten schreiben' :)
# Verwende Tab-Stopp als Spaltentrennzeichen.
# Unterdrücke die Anführungszeichen in (Spalten-)Namen
# Unterdrücke die Einbindung von rownames.
# Verwende Kommas als Dezimaltrennzeichen.
write.table(iris, "iris.txt",
            sep="\t",
            quote = F,
            row.names = F,
            dec = ",")

# In "R33_Einlesen_3.R" sind noch weiterführende Bonus Aufgaben.
# Diese sind nicht bepunktet und optional. Löse sie nur, wenn du die Zeit dafür hast.


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
