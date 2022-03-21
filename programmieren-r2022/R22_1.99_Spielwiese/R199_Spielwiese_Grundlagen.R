# Spielwiese mit dem Code aus den Folien
# An einigen Stellen wird Code in den Folien nicht gezeigt (aber beim Erstellen 
# der Folien ausgeführt) und ist hier einfach mit gelistet.
# Da sind machnmal noch nicht behandelte Sachen dabei, die du gerne ignorieren darfst.
# Schalte die Outline (Strg + Shift + O) ein, um zu einem Abschnitt zu springen.

# 1.1 Syntax ----
4*9 
2 + 4.8 # Punkt als Dezimaltrennzeichenzeichen
2+4.8 # Leerzeichen egal für R, hilfreich für Lesbarkeit
3^2
sqrt(81) # Wurzel (square root)
abs(-12) # Betrag (absolute value)
log(100) # natürlicher Logarithmus (ln) mit Basis e (2.72)
log10(100) # Logarithmus mit Basis 10
exp(3) # Exponentialfunktion e^3
alter <- 15.4
alter # ist jetzt im Workspace (quasi der R Speicher)
alter + 5
alter <- 37.1
alter # immer die aktuelle Version, keine Geschichte dabei
#Alter # ist kein existierendes Object
ls() # Eigene Objekte im Workspace auflisten
rm(alter) # ein Objekt löschen
pi # Eingebaute Konstante
pi <- 3 # das kann überschrieben werden
sin(pi/2) # aber dann kommt nicht mehr ganz 1 raus ...
rm(pi) # Nicht in den Folien: eigene Variante wieder aus dem Workspace löschen
log(7.4) # Funktionsaufruf
log(x=7.4) # explizite Benennung des Arguments
log(x=200, base=12)
log(200, b=12)

sin(15 * pi/180) # Grad zu dezimal
factorial(5) # Fakultät: n! = 1*2*3*4*...*n
exp(1) # eulersche Zahl e
#e^3 # geht so nicht
3.91 * 10^-3 # wissenschaftliche Schreibweise: 3,91 E-3
3.91e-3 # scientific notation: keine Leerzeichen erlaubt
1e6 # schnell eine Million schreiben (ohne 6 Nullen)
options(scipen=9) # bis 1e9 wird ab jetzt ausgeschrieben
1e6 ; 1e14


# 1.2 Hilfe ----

help("append") # Doku der Funktion 'append' öffnen
?append # Schnellvariante um weniger zu tippen
help.search("append") # Alle verfügbaren Doks mit Bezug
??append # auch hier wieder eine kürzere Variante
help.start() # offline Handbücher und Material


# 1.3 Vektoren ----

zahlen <- c(3, 7, -2.7654321, 11, 3.8, 9)
zahlen
print(zahlen, digits=3) # Explizit anzeigen, mit Optionen
1:5  # Ganze Zahlen (integers)  von : bis
rep(1:4, times=3) # Zahlen mehrfach wiederholen
rep(1:3, each=3, times=2)
seq(from=3, to=-1, by=-0.5) # Sequenz
# Für absteigende Folgen muss 'by' negativ sein
seq(1.32, 6.1, length.out=9) # 9 Elemente
seq(1.32, 6.1, len=15) # Argumentnamen abkürzbar
vek <- c(3, 7, -2, 11, 4, 9)
vek[1] # Erstes Element zurückgeben
vek[2:4] # Mehrere Elemente auswählen
vek[ c(2,5,1,6,1) ] # Flexible Reihenfolge
vek[-2] # Alle Elemente außer das zweite
vek[-(1:3)] # Alle Elemente außer den ersten drei
# vek[-1:3] # geht nicht
-1:3      # weil -1 und 1 nicht beides erfüllt werden kann
a <- seq(from=1, to=100, by=0.1)
head(a) # Die ersten 6 Elemente anzeigen
tail(a, 8) # Die letzten 8 Elemente
a[2] <- 87 # Einzelnes Element eines Objekts ändern
head(a) # das Objekt 'a' ist jetzt anders
str(a) # Struktur: Datentyp, [Dimension], erste Werte
class(a) # primär: numeric, logical, factor, character
length(a) # Länge (Anzahl Elemente) des Vektors
2 * 7
2:9 * 7        # 7 wird so oft wiederholt wie nötig
2:9 * c(7,1)   # Dieses Konzept heißt "Recycling"
2:9 * c(7,1,2) # Ergebnis mit Warnung, wenn's nicht passt

Punktestand <- c(Christoph=19, Berry=17, "Anna Lena"=22)
Punktestand[2] # Index: Position
Punktestand["Berry"] # Index: Name
names(Punktestand) # 'Punktestand' ist ein "named vector"
names(Punktestand) <- LETTERS[1:3]
names(Punktestand)[2] <- "NeuerName"
Punktestand


# 1.4 Statistik ----

# Vektor mit Körpergrößen:
groesse <- c(149.3, 173.6, 172.2, 172.9, 161.6, 179.2, 
             164.8, 162.8, 180.5, 165.1, 181.7, 171.4, 
             172.1, 148.1, 161.1, 171.9, 186.9) # cm
mean(groesse)   # Mittelwert
var(groesse)    # Varianz: cm^2
sd(groesse)     # Standardabweichung: cm
min(groesse)    # Minimum
max(groesse)    # Maximum
range(groesse)  # Wertebereich
median(groesse) # Ausreißer-unabhängig (anders als mean)
mad(groesse)    # Median absolute deviation
quantile(groesse) # Anteil < bestimmte Werte
quantile(groesse, probs=0.80) # 80% ist hier drunter
summary(groesse)
groesse <- round(groesse[1:8])    ;    groesse
sort(groesse) # Aufsteigend sortieren
sort(groesse, decreasing=TRUE)
order(groesse)
#gewicht <- 25 * (groesse/100)^2 ; set.seed(1); dput(round(gewicht+rnorm(length(gewicht),0,10)))
gewicht <- c(49, 77, 66, 91, 69, 72, 73, 74)
gewicht[order(groesse)] # Sortieren nach Reihenfolge Größe
oop <- options(digits=3)
set.seed(12345)
sample(0:9, size=7)          # Zufällig Werte aus Vektor ziehen
sample(0:9, size=7, replace=TRUE)      # Ziehen mit Zurücklegen
rnorm(n=5, mean=20, sd=3.5)              # aus Normalverteilung
rexp(n=5, rate=1/20)                    # Exponentialverteilung
runif(n=5, min=15, max=25)         # Gleichverteilung (uniform)
rbeta(n=5, shape1=3, shape2=9)                # Beta-verteilung
rpois(n=5, lambda=20)                      # Poisson-verteilung
rbinom(n=5, size=100, prob=1/5)           # Binomial-verteilung
options(oop)  ;  rm(oop)

val <- c(1, 7, 3, 3, 8, 5, 6, 6, 6, 7)
unique(val) # ursprüngliche Reihenfolge beibehalten
duplicated(val)
duplicated(val, fromLast=TRUE)
werte <- c(149.3, 173.6, 172.2, 172.9, 161.6, 179.2, 164.8, 142.8)
round(werte, digits=-1) # Auf 10er runden
round(werte, -2) # Auf 100er runden
round(werte/5)*5 # Auf 5er runden
pi
oo <- options(digits=3) # ca 2 Nachkommastellen anzeigen
oo # bisheriger Wert jetzt in oo (old options)
pi
options(oo)  ;  rm(oo) # Einstellungen zurücksetzen
set.seed(77)
sample(1:50, 3)
sample(1:50, 3)
set.seed(12345)
sample(1:50, 3)
set.seed(12345)
sample(1:50, 3)
