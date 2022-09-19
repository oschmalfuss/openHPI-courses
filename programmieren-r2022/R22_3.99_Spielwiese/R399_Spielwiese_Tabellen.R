
# 3.1 DataFrames ----

?data.frame
bdf <- data.frame(Zahlen=11:14, Buchstaben=letters[1:4], Booleans=(1:4)>2)
bdf # bdf: BeispielDataFrame
str(bdf)
summary(bdf) # Hilfreiche Info pro Spalte
bdf[ 3 , 1 ] # Wert in der dritten Zeile, erste Spalte
bdf[   , 2 ] # Alle Zeilen, zweite Spalte (-> Vektor)
bdf[2, ] # Alle Spalten = komplette Zeile (-> data.frame)
?"[" # für die Dokumentation über Subsetting
nrow(bdf)
ncol(bdf) # Siehe auch dim(bdf)
bdf[,"Booleans"]
bdf$Booleans
colnames(bdf)
colnames(bdf)[2] <- "Zeichen"    # Ändert das Objekt bdf
bdf
bdf[2:3, ] # Zeilen 2 bis 3
bdf[c(4,1), ] # Vektoren zum Indizieren
bdf[bdf$Buchstaben=="c", ] # Logische Werte: 'Filtern"
bdf[-2, 2:1] # Negativ-auswahl wie bei Vektoren
# bestehende Spalte überschreiben:
bdf$Zahlen <- 45:48 
# neue Spalte am Ende hinzufügen:
bdf$Zeit3000m <- c(12.08, 10.27, 11.79, 13.50)
bdf
# Spalte entfernen:
bdf$Zeichen <- NULL
bdf

bdf[ , "Booleans"]                 # -> Vektor
bdf[ , "Booleans", drop=FALSE ]  # -> data.frame
bdf["Booleans"]       # Ohne Komma -> data.frame   ACHTUNG
rownames(bdf) <- c("Alex", "Berry", "Christoph", "Daniel")
bdf
bdf["Berry", ]


# 3.2 Matrizen ----

matrix(data=1:6 , nrow=2, ncol=3)
m <- matrix(1:6 , nrow=2, ncol=3, byrow=TRUE)
m
dim(m) ;  nrow(m) ;  ncol(m) ;  length(m)
class(m) # zwei Klassen: array ist Überklasse von matrix
m
m * 2   # Multiplikation per Element
n <- matrix(rep(0:1,each=3), ncol=3)  ;  n
m * n                     # pro Element, auch für +,-, etc
colnames(m) <- c("A", "B", "C")   # wie bei data.frames
rownames(m) <- c("row1", "row2")
m[1,1] <- c(989) # Matrix ändern (manipulation)
m
m[1,1] <- "a"
m
m["row1", ]
class(m["row1", ])                             # -> vector
is.vector(m["row1", ])        # nur 1 Datentyp -> downcast
m <- matrix(1:12, ncol=4)  ;  m 
rowSums(m) # + colSums. Achtung: rowsum() ist was anderes
colMeans(m) # siehe auch rowMeans
# Funktion 'median' auf Spalten anwenden:
apply(m, MARGIN=2, median) 
m
# MARGIN=1: x Dimension behalten:
apply(m, MARGIN=1, FUN=median) 
# Weitere Argumente, die an 'median' weitergegeben werden
apply(m, MARGIN=1, FUN=median, na.rm=TRUE) 
apply(m, 1, function(x) sum(x==2)) # anonyme Funktion 
apply(m, 1, FUN=function(x) cat(toString(x)," -  "))

m
t(m) # transponieren
m <- matrix(1:6 , nrow=2, ncol=3, byrow=TRUE)
m
n <- matrix(rep(1:5,each=3), ncol=5)
n
m %*% n
?"%*%"  # für die Dokumentation Anführungsstriche setzen
d <- data.frame(AA=5:8, BB=6:9)
class(d)
dm <- as.matrix(d)   ;  dm
class(dm)


# 3.3 Einlesen ----

eine_tabelle <- read.table(file="dateiname.txt")
daten_objekt_name <- read.table("Datei.txt")
str(daten_objekt_name)
# Häufig benötigte Argumente:
read.table("Datei.txt", header=TRUE, dec=",", sep="\t")
read.table(file="Dateiname.txt",  # kann auch URL sein
   header=TRUE,      # Erste Zeile als Spaltennamen lesen
   dec=",",          # Komma als Dezimaltrennzeichen
   sep="_",          # Unterstrich als Spaltentrenner ("\t" -> tabstop)
   fill=TRUE,        # unvollständige Zeilen mit NAs am Ende füllen
   skip=12,          # Erste 12 Zeilen ignorieren (zB mit Metadaten)
   comment.char="%", # Zeilen ab % ignorieren (Standard: # wie in R Code)
   na.strings=c(-999, "NN"), # Kennzeichnung Fehlwerte
   stringsAsFactors=FALSE,   # Zeichenketten nicht in factors umwandeln
   text="1,2,3",             # kleiner Beispieldatensatz im Skript
   ...)                      # Weitere Argumente, siehe ?read.table
read.table(header=TRUE, sep=",", text="
Beispiel, Spalte
Sinn, 42
Bond, 007")
# Daten mit Tausenderzeichen "3,590.18" einlesen:
df$spalte <- as.numeric( gsub(",", "", df$spalte) )
# Riskant: Kommas manuell ersetzen:
df$spalte <- as.numeric( gsub(",", ".", df$spalte) )
setwd("C:/Users/berry/Projekt_XY") # set working directory
tabelle <- read.table("Unterordner/Datei.txt")
dir() # Verfügbare Dateinamen im WD anzeigen
getwd() # Aktuelles Working Directory (WD) zeigen
setwd("..") # WD eine Ebene höher setzen
dir() # Dateien / Ordner im WD auflisten
dir(recursive=TRUE) # Auch Items in Unterordner anzeigen
dir("../other_subfolder") # in anderem Ordner
file.create() # Dateien erstellen
file.rename() # Dateien umbenennen
file.remove() # Dateien löschen, siehe auch unlink()
file.copy()   # Dateien kopieren
file.exists() # Dateinamen auf Existenz prüfen
dir.create()  # Ordner erstellen
dir.exists()  # Ordnerpräsenz prüfen
write.table(x=mynewdata, file="output.txt",
            quote=FALSE, row.names=FALSE,
            fileEncoding="UTF-8")
newtable <- edit(oldtable)
# oder auch kürzer:
fix(mytable) # behält nichtmal die alten Daten
mytable[265, "Temperatur"] <- 17.53 # original 175.3 vermutlich Typo
mytable[1:24, "Messwert"] <- NA # falsche Messmethode am ersten Tag


# 3.4 Zusammenführen ----

bdf <- data.frame(Zahl=11:13, Gruppe=letters[1:3])
set.seed(42)
cbind(Poisson=rpois(3,80), bdf) # column-bind
zeile <- data.frame(Zahl=2, Gruppe="neu") ; zeile
rbind(bdf, zeile) # row-bind: Spaltennamen müssen gleich sein
p <- matrix(11:16, ncol=3) #  2 x 3
q <- matrix(21:32, ncol=4) #  3 x 4
r <- matrix(31:39, ncol=3) #  3 x 3
rbind(p,r) # row-bind: Anzahl Spalten muss gleich sein
rbind(p,q) # Error: 3 und 4 Spalten
p <- matrix(11:16, ncol=3) #  2 x 3
q <- matrix(21:32, ncol=4) #  3 x 4
r <- matrix(31:39, ncol=3) #  3 x 3
cbind(q,r) # column-bind: nrow muss gleich sein
cbind(p,r) # Error: 2 und 3 Zeilen
Teilnehmer <- read.table(header=TRUE, text="
Name  Alter
Alexa 27
Berry 32
Chris 14
David 45")
Probanden <- read.table(header=TRUE, text="
Person Groesse Gewicht
Berry  1.83    82
Chris  1.43    51
David  1.75    72
Erika  1.67    57")
merge(Teilnehmer, Probanden, by.x="Name", by.y="Person")
colnames(Probanden)[1] <- "Name"
merge(Teilnehmer, Probanden)
merge(Teilnehmer, Probanden, all=TRUE) # all.x / all.y

LIST_WITH_DFS <- list(
 data.frame(date=1:4, AA=11:14),
 data.frame(date=2:6, BB=22:26),
 data.frame(date=3:7, CC=33:37)
)
LIST_WITH_DFS
Reduce(merge, LIST_WITH_DFS)
Reduce(function(...) merge(..., all=TRUE), LIST_WITH_DFS)
LIST_WITH_DFS <- lapply(LIST_WITH_DFS, function(x) 
                      {colnames(x) <- c("date", "XX"); x})
LIST_WITH_DFS
do.call(rbind, LIST_WITH_DFS)


# 3.5 Fehldaten ----

df <- data.frame(x=11:20, y=21:30)
df[3,2] <- NA
df
is.na(df)
na.omit(df)
df
mean(df$x)
mean(df$y)
mean(df$y, na.rm=TRUE)
mean(21:30)
sum(df$y, na.rm=TRUE)
sum(21:30) # na.rm unterschätzt Summe !!
df$y[is.na(df$y)] <- mean(df$y, na.rm=TRUE)
df$y[is.na(df$y)] <- median(df$y, na.rm=TRUE)
df[3,2] <- NA
# install.packages("zoo") # Nicht in den Folien - nur bei Bedarf nötig
zoo::na.locf(df$y)
approx(df$y, n=length(df$y))$y
zoo::na.approx(df$y) # weniger Tippen :)


# 3.6 Datenquellen ----

# install.packages("rdwd")
library(rdwd)
link <- selectDWD("Potsdam", res="daily", var="kl", per="r")
clim <- dataDWD(link, varnames=TRUE, dir=locdir(), force=NA, overwrite=TRUE, quiet=TRUE)
plotDWD(clim, "TMK.Lufttemperatur", line0=TRUE, mar=c(2.6, 3.1, 0.5, 0.5))
link <- "hourly/radolan/historical/bin/2020/RW202004.tar.gz"
rad <- dataDWD(link, base=gridbase, joinbf=TRUE, selection=702, dir=locdir())
plotRadar(rad$dat, main="2020-04-30 05:50  [mm]")

