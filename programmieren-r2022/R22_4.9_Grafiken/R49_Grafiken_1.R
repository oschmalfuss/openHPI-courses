codeoceanR::rt_score()
codeoceanR::rt_plot1()

# Dies ist eine bewertete Aufgabe für ein Zertifikat. 
# Sie muss vor der angegebenen Zeit eingereicht werden (mit rt_submit()).
# Besprich vor der Abgabefrist bitte keine Lösungen im Forum, erst danach.

# A1 ----
# Aus dem eingebauten Datensatz 'airquality',
# - Plotte die Ozonwerte (y) über die Temperatur (x).
# - Verwende gefüllte Punkte (Siehe ?points für eine in-R Übersicht).
# - Verwende die halbtransparente orange Farbe "#FFA50080".
# - Drehe alle numerischen Achsenbeschriftungen aufrecht (horizontal).
# - Die x-Achse soll zwischen 50 und 100 liegen.
# - Die Grafik soll einen informativen Titel haben: "Mehr Ozon an warmen Tagen"
# Wenn wir die Windwerte durch 5 teilen, erhalten wir Werte zwischen 0.3 und 4.1.
# - Verwende diese, um die Punktgröße zu skalieren.
# t1_start
# head(airquality)
plot(Ozone ~ Temp, data = airquality,
     pch=16,
     col="#FFA50080",
     las=1,
     xlim=c(50,100),
     main="Mehr Ozon an warmen Tagen",
     cex=Wind/5,
     ylab="\U00D8 Ozon  [ppb]",
     xlab="Temperatur  [\U{00B0}Fahrenheit]")

# t1_ende



# A2 ----
# Zwei (von vielen) nützliche Unicode-Zeichen sind (Zusatz in 2.3 Zeichenketten):
# https://www.compart.com/unicode/U+00D8 Durchschnittssymbol (SHIFT + Klick auf Link)
# https://www.compart.com/unicode/U+00B0 Grad-Symbol
message("Durchschnitt \U00D8 und Grad \U00B0 Symbole")
# Übersichten z.B. bei https://www.rapidtables.com/code/text/unicode-characters.html
# Unicode ohne Leerzeichen dahinter braucht geschweifte Klammern: \U{00B0}Celsius

# Passe die obige Lösung an:
# - Verwende "DSYMB Ozon  [ppb]" für ylab (mit D8 Durchschnitt Symbol)
# - Verwende "Temperatur  [GSYMBFahrenheit]" für xlab (mit B0 Grad-Symbol)
# Behalte die zwei Leerzeichen für eine schöne visuelle Abtrennung der Einheiten.
plot(Ozone ~ Temp, data = airquality,
     pch=16,
     col="#FFA50080",
     las=1,
     xlim=c(50,100),
     main="Mehr Ozon an warmen Tagen",
     cex=Wind/5,
     ylab="\U00D8 Ozon  [ppb]",
     xlab="Temperatur  [\U{00B0}Fahrenheit]")

# A3 ----
# Füge eine horizontale Linie beim durchschnittlichen Ozonwert ein.
# Erinnere dich an Lektion 3.5 Fehldaten.
# t3_start
abline(h=mean(airquality$Ozone, na.rm=T))
# t3_ende


# A4 ----
# Füge rechtsbündigen Text "30. Mai" an der Koordinate (78, 115) hinzu.
# Für den Test müssen die Argumentnamen explizit angegeben werden.
# t4_start
text(x=78, y=115, labels = "30. Mai", adj=1)
# t4_ende


# A5 ----
# Füge links oben im Diagramm eine Legende hinzu mit den Einträgen
leg_wind <- c(2,5,10,20)
# - Verwende für die Legende den gleichen Punkttyp wie in der Grafik selbst.
# - Verwende die Farbe "orange".
# - Verwende "Windgeschwindigkeit  [mph]" für den Titel der Legende.
# - Die Punktgröße soll proportional zur dargestellten Windgeschwindigkeit sein.
#   Wie auch in A1 muss dazu durch 5 geteilt werden. 
#   (Siehe für das Argument auch 4.4 Hinzufügen A2)
# t5_start

legend("topleft",
       legend= leg_wind,
       pch=16,
       col="orange",
       title="Windgeschwindigkeit  [mph]",
       pt.cex=leg_wind/5)

# t5_ende


# Mache weiter in "R49_Grafiken_2.R"
codeoceanR::rt_plot2() 
