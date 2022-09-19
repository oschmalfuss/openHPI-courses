codeoceanR::rt_score()

# A1 ----
# Lese beide Birnen Dateien ein und füge sie untereinander zusammen.
birnen <- rbind(read.table("R34d_Birnen1.txt", header = T), read.table("R34d_Birnen2.txt", header = T))


# A2 ----
# Lies die Alter Datei ein und verknüpfe beide Datensäze. 
# Nur vollständige Einträge (complete records) werden benötigt.
# Setze die Argumente für die DataFrames so, dass die Reihenfolge Alter, birnen ist (nicht umgekehrt).
birnenAlter <- merge(x=read.table("R34d_Alter.txt", header = TRUE), y=birnen, by.x="Name", by.y="Person")


# A3 ----
# Verknüpfe erneut die Altersdaten mit den Birnendaten.
# Behalte diesmal alle Einträge aus Alter.
# Birnenbesitzer mit unbekanntem Alter werden nicht benötigt.
birnenAlterKomplett <- merge(x=read.table("R34d_Alter.txt", header = TRUE), y=birnen, by.x="Name", by.y="Person", all.x = T)


# A4 ----
# Zum visuellen Verständnis von merge ist folgende Webseite hilfreich:
if(FALSE) # die nächste Zeile nicht ausführen, wenn das Skript ausgeführt wird:
browseURL("https://www.datasciencemadesimple.com/join-in-r-merge-in-r/")
# Welchem Verknüpfen entspricht merge mit all=TRUE?
# 1. self join
# 2. inner join
# 3. outer join
# 4. cross join
join <- 3



# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
