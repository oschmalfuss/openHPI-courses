codeoceanR::rt_score()

person <-     c("Alex","Bela","Chris","Dora","Emil","Fine","Gabi","Hans","Ines")
augenfarbe <- c("grau","grün","blau","braun","grau","blau","grau","grün","grau")
einkommen <-  c(  2300,   500,  1500,    700,   900,  2000,  3400,  1500,  600)

# A1 ----
# Konvertiere "Augenfarbe", um den richtigen Datentyp für Kategorien zu verwenden.
augenfarbe <- as.factor(augenfarbe)

# A2 ----
# Welche Augenfarben kommen wie oft vor?
tabelleAugen <- table(augenfarbe)


# A3 ----
# Was ist das mittlere Einkommen (mean) pro Augenfarbe?
farbeEinkommen <- tapply(X=as.numeric(einkommen), INDEX=augenfarbe, FUN=function(X) mean(X))


# Die folgenden Aufgaben sind etwas komplizierter.


# A4 ----
mehraugen <- augenfarbe
# Füge dem Vektor 'mehraugen' einen Eintrag "nussbraun" an.
# Hinweis: Füge zuerst dem Faktor ein level hinzu.
# as.character(augenfarbe)
mehraugen <- c(as.character(augenfarbe), "nussbraun")
mehraugen <- as.factor(mehraugen)

# A5 ----
# Welche Personen haben die häufigste Augenfarbe?
personenMitFarbe <- function(namen, farben){namen[names(which.max(table(farben))) == farben]}
  
personenMitFarbe(person, augenfarbe) # Alex, Emil, Gabi, Ines


# A6 -----
# Erhalte 'min', 'median', 'mean' sowie 'max' Einkommen pro Farbe.
# Die Ausgabe soll aussehen wie bei 'nchar' in den Folien.
mmmmEinkommen <- tapply(X=as.numeric(einkommen), INDEX=augenfarbe,  FUN=function(x) summary(x)[-c(2,5)])
mmmmEinkommen

# B1 ----
# Unbewerteter Godegolf Bonus: Was ist die kürzeste Lösung für Aufgabe 6? 
# Leerzeichen werden nicht gezählt.
# tb_start
mmmmEinkommenKurz <- 
  tapply(einkommen, augenfarbe, function(x) summary(x)[-c(2,5)])
# tb_ende


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
