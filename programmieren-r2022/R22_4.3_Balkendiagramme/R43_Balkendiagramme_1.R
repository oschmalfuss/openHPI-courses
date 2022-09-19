codeoceanR::rt_score()
codeoceanR::rt_plot1()

# Vorbemerkung: der Begriff Balkendiagramm wird manchmal auch als Überbegriff 
# für Säulendiagramm mit verwendet.

# Wenn du die Formelschnittstelle für Koordinaten verwendest (dringend empfohlen),
# wird das im Testskript in 'xy.coords' zugeordnet. Etwaige Meldungen beziehen sich darauf.

# A1 ----
# Erstelle einen Vektor (mit Namen) mit den median Sepal- und Petal-größen im 'iris'-Datensatz.
# Die 5. Spalte ist hier ausgeschlossen
# In 3.2 Matrizen steht eleganter Code um pro Spalte einen Wert zu erhalten.
# Siehe die beiden Folien "Funktion anwenden auf Zeilen / Spalten einer Matrix".
# Siehe auch 3.2 Matrizen Programmieraufgabe A6
# Achtung, erwünscht ist der Median (zB 5.800), nicht der Mittelwert (5.843).

# head(iris)
iris_med <- apply(iris[1:4], MARGIN=2, median)

# Zeichne ein Balkendiagramm von iris_med mit steelblue Balken und aufrechten Achsennummern.
# t1_start
barplot(iris_med,
        las = 1,
        col = "steelblue")
# t1_ende


# A2 ----
# Erstelle ein Balkendiagramm mit der Anzahl der Staaten innerhalb jeder 
# 'state.region' (eingebaut). Häufigkeit zählen steht in Lektion 2.4 (Kategorien).
# t2_start

# head(state.region)
barplot(table(state.region))
# t2_ende


# Mache weiter in "R43_Balkendiagramme_2.R"
codeoceanR::rt_plot2() 
