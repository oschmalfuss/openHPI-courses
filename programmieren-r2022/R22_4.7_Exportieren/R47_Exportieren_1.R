codeoceanR::rt_score()

# A1-5 ----
# Öffne das pdf-Grafikgerät mit der Datei iris_hist.
# Beachte, dass Dateinamen immer die richtige Dateierweiterung enthalten sollten.
# Die PDF soll im Format 10x6 (Inches=Zoll) querformatig sein.
# t1_start
#head(iris)
pdf("iris_hist.pdf", width=10, height=6)
# t1_ende
# Stelle die Device-parameter so ein, dass 2 Grafikpanels nebeneinander liegen.
# An dieser Stelle ist nur eine der beiden Optionen akzeptiert.
# So ist der Test einfach zu halten. In real life geht natürlich auch die andere.
# t2_start
par(mfrow = c(1, 2))

# t2_ende
# Erstelle ein Histogramm von iris$Sepal.Length. Verschönere die Grafik nach Belieben.
# t3_start
hist(iris$Sepal.Length)

# t3_ende
# Zeichne ein histogram von iris$Sepal.Width.
# t4_start
hist(iris$Sepal.Width)

# t4_ende
# Schließe das PDF-Gerät.
# t5_start
dev.off()
# t5_ende


# Mache weiter in "R47_Exportieren_2.R"
