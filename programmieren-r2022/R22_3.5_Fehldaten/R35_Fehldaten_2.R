codeoceanR::rt_score()

luft <- airquality
luft$Wind[c(50,111)] <- NA
# Für die nachfolgenden Aufgaben ist 'luft' zu verwenden.
# Lektion 2.5 Pakete behandelt, wie Packages bei Bedarf installiert werden können.
# Auf CodeOcean kannst du keine Pakete installieren.
# Skripte sollten das auch lokal nicht bedingungslos tun, weil dann Source so lange dauert.


# A5 ----
# Siehe   ?airquality   Abschnitt 'Details' zu den Spaltennamen.
# Fülle die fehlenden Ozonwerte mit der jeweils letzten vorhandenen Beobachtung.
# Belasse die NAs in den anderen Spalten: für Strahlung und Wind siehe A6 und A7.
luft$Ozone <- zoo::na.locf(luft$Ozone)

# A6 ----
# Ersetze die fehlenden Strahlungswerte mit dem Median der vorhandenen Werte.
luft$Solar.R[is.na(luft$Solar.R)] <- median(luft$Solar.R, na.rm = T)

# A7 ----
# Die NAs beim Wind sollen linear zwischen Vorgänger und Nachfolger interpoliert werden.
luft$Wind <- zoo::na.approx(luft$Wind)

# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
