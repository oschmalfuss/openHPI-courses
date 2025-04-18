codeoceanR::rt_score()

# A5 ----
# Welche Spalten hat der eingebaute Datensatz 'longley'?
# Hinweis: hier ist ein einziger Funktionsaufruf verlangt.
spaltenNamen <- colnames(longley)
spaltenNamen

# Wähle die aus 'longley' die Spalten 'Year' und 'Population' aus für die separate Tabelle 'bevoelkerung'.
# Eine schlichte Auswahl zweier Spalten reicht, da bleiben die Zeilennamen erhalten. 
# Bei anderen Ansätzen musst du ggf. selbst Zeilennamen setzen (Zusatzfolien).
bevoelkerung <- longley[, c("Year", "Population")]
head(bevoelkerung)


# A6 ----
# Führe 3 verschiedene Wege auf, die Spalte 'y2' aus 'anscombe' auszuwählen.
# Schreibe je eine Zeile pro Lösungsansatz.
# t6_start
# head(anscombe)

anscombe$y2
anscombe[, "y2"]
anscombe[, 6]
# t6_ende


# A7 ----
# Korrigiere den folgenden Code.
# head(BOD)
sauerstoffBedarf <- BOD$demand
sauerstoffBedarf


# A8 ----
# Füge der eingebauten Tabelle 'women' die Spalte 'BMI' hinzu.
# Die Formel für die vorliegenden Einheiten [lb] und [in] ist: weight / height^2 * 703
women$BMI <- women$weight / women$height ^ 2 * 703

# In "R31_DataFrames_3.R" sind noch weiterführende Bonus Aufgaben.
# Diese sind nicht bepunktet und optional. Löse sie nur, wenn du die Zeit dafür hast.


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
