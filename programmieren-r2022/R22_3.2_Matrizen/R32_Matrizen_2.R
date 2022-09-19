codeoceanR::rt_score()

# A5 ----
# Berechne den Median jeder Zeile der eingebauten Matrix 'VADeaths'.
VADeaths
VAmedian <- apply(VADeaths, 1, median)


# A6 ----
# Berechne die Mittelwerte der dafür geeigneten Spalten im eingebauten data.frame 'iris'.
# Manuelle Spaltenselektion ist hier voll in Ordnung.
# Hinweis: die Lösung kann sehr kurz sein (19 Zeichen), siehe Folien zu dieser Lektion.
irisSpaltenMittel <- colMeans(iris[, -5])


# A7 ----
# Wiederholung aus 2.2 Logik A10:
# Schreibe eine Funktion, die den zweitgrößten Wert der Eingabe zurückgibt.
zweitesMaximum <- function(x) max(x[-(which.max(x))])
zweitesMaximum(   c(9,6,4) ) # soll 6 sein
zweitesMaximum( c(9,9,6,4) ) # soll 9 sein


# A8 ----
# Wende die Funktion aus A7 auf jede Spalte der eingebauten Matrix 'stack.x' an.
stackZweitMax <- apply(stack.x, MARGIN = 2, FUN=zweitesMaximum)


# In "R32_Matrizen_3.R" sind noch weiterführende Bonus Aufgaben.
# Diese sind nicht bepunktet und optional. Löse sie nur, wenn du die Zeit dafür hast.


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
