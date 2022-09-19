codeoceanR::rt_score()

# A6 ----
# Schreibe eine Funktion, die eine Zeichenkette als Eingabe nimmt und
# alle Einträge entfernt, die mit "fake_" beginnen, sowie
# alle Vorkommnisse von "dummy" mit "--" ersetzt.
textVerarbeiten <- function(z){
  gsub("dummy","--", z[grep("^fake_", z, invert=T)])
}
textVerarbeiten(c("Sachen","mit","fake_zeug","und dummy Code")) 
# Soll sein: "Sachen",  "mit",  "und -- Code"


# A7 ----
# Schreibe eine Funktion, die den Median für jede Gruppe berechnet.
gruppenMedian <- function(values, groups)
{
  tapply(values, groups, median)
}
gruppenMedian(1:14, c("A","B","A","C","U","S","B","A","R","A","C","C","U","S")) 
 #   A    B    C    R    S    U 
 # 5.5  4.5 11.0  9.0 10.0  9.0 


# A8 ----
# Mit welchem Befehl kannst du alle installierten CRAN Pakete aktualisieren?
aktualisierBefehl <- "update.packages"
# Pro Tipp: führe diesen Befehl regelmäßig aus, zB jetzt :).


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
# Beschreibe bitte vor der Abgabefrist noch keine Lösungen im Forum.
