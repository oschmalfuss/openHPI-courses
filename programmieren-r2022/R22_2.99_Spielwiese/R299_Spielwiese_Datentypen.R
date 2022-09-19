# 2.1 Funktionen ----

dividiere <- function(zahl, divisor=5)
  {
  ausgabe <- zahl / divisor
  ausgabe <- round(ausgabe, digits=4)
  return(ausgabe)
  }
dividiere(zahl=23, divisor=7) # jetzt aufrufbar
dividiere(23) # Standardwert (5) für 'divisor' verwendet
par(mar=c(3,3,0.5,0.1), mgp=c(2,0.7,0), cex.axis=0.8, las=1)
x <- seq(-8, 5, len=100)
plot(x, x^2 +3*x -12, type="l", lwd=2, col="red", 
     panel.first=abline(h=0, v=0)   )
pq <- function(p,q) # y = x^2 + px + q
   {
   w <- sqrt( p^2 / 4 - q )
   c(-p/2-w, -p/2+w)
   } 
pq(3, -12)
dividiere <- function(zahl, divisor=5) # Bsp. von vorhin
  {
  ausgabe <- zahl / divisor
  ausgabe <- round(ausgabe, digits=4)
  return(ausgabe)
  }
dividiere <- function(number, divisor=5){
  output <- number / divisor
  round(output, digits=4)
  }
normalisiere <- function(x) (x-min(x)) / (max(x)-min(x))
# von -7 bis 13 normieren auf 0 bis 1
normalisiere(  c(8,-7,13,2,3)  ) 


# 2.2 Logik ----

7 > 4
7 > 42
T # = TRUE. T kann überschrieben werden, nicht nutzen
! 7 > 4            # NICHT-Operator (Negierung, Gegenteil)
TRUE & TRUE                                 # UND-operator
TRUE & FALSE
TRUE | FALSE                               # ODER-operator
x <- c(1, 2, 3, 4, 5)
y <- c(4, 5, 6, 7, 1)
x > 3
y < 6
x>3 & y<6        # für Vektor mit mehreren Wahrheitswerten
x>3 | y<6
x>3 && y<6              # für einen einzigen Wahrheitswert
werte <- c(32, 28, 29, 30, 31, 32)
werte < 30
werte <= 30
werte > 30
werte >= 30
werte == 30
werte != 30
werte <- c(32, 28, 29, 30, 31, 32)
werte < 30
which(werte < 30) # -> Index: Stellen mit TRUE im Vektor
which(werte == max(werte))
which.max(werte) # nur der erste Index!
any(werte < 30) # ist mindestens eins der T/F Werte wahr?
all(werte < 30) # sind alle TRUE?
werte < 30
as.numeric(werte < 30) # intern als Zahl: 0=FALSE, 1=TRUE
sum(werte < 30) # Anzahl TRUEs im Vektor
mean(werte < 30) # Anteil TRUE Werte
werte <- c( 32,  28,  29,  30,  31,  32)
namen <- c("a", "b", "c", "d", "e", "f")
namen[4]
werte < 30
namen[werte < 30]

0.4 - 0.1 == 0.3        # nicht das erwartete Ergebnis!
print(0.4-0.1 , digits=22)
round(0.4 - 0.1, digits=5) == round(0.3, digits=5)   # OK
all.equal(0.4 - 0.1, 0.3) # Hat eine Fehlertoleranz
berryFunctions::almost.equal(c(6.34, 9.69, 3.77), 9.69)
T           # kann abgekürzt werden, allerdings:
T <- 99     # kann T überschrieben werden
T <- FALSE  # Streich: heimlich beim Kollegen eintippen ;)
rm(T) # Nicht in den Folien
TRUE <- 77  # ist geschützt
xor(TRUE, FALSE) # EXKLUSIVES ODER (genau 1 von 2 wahr?)
isTRUE(T); isTRUE(F); isTRUE(NA) # T, F, F (für NAs)
rechnung <- function(out){cat("Rechnung läuft\n") ; out}
# Ausgabe beider 'rechnung'-Aufrufe:
rechnung(FALSE) & rechnung(TRUE) 
# Nur die linke Instanz wird ausgeführt:
rechnung(FALSE) && rechnung(TRUE) 
oop <- options(width=100)
berryFunctions::TFtest(a|b&c, a|(b&c), (a|b)&c, na=FALSE)
options(oop)


# 2.3 Zeichenketten ----

"Moin Moin"  # Anführungsstriche:
'guten Tag'  # beide Sorten möglich
satz <- "Dies ist kein einheitlicher Satz"
class(satz)
nchar(satz) # Anzahl Zeichen
tolower(satz)
toupper(satz)
substr(satz, start=7, stop=16) # Leerzeichen zählen mit
cat(satz) # concatenate and type
paste("Wort", 1:4) # vektorisiert: 'Wort' 4 mal recycelt
paste("Wort", 1:4, sep="_/") # Eigene Trennzeichenkette
paste0("Wort", 1:4) # Leerer charstring '' als separator
paste0("Wort", 1:4, collapse="-")
toString(c("Diese", 1:5, "Wörter")) # kommagetrennt
satz
worte <- strsplit(satz, split=" ")[[1]]
worte
match("kein", worte) # Index des ersten gleichen Eintrages
match("ei", worte)       # nur komplette Übereinstimmungen
"kein" %in% worte    # Logischer Wert, ob Eintrag vorkommt
grep("ei", worte)     # in welchen Elementen 'ei' vorkommt
grep("ei", worte, value=TRUE)  # Worte, die 'ei' enthalten
grepl("ei", worte)   # für jedes Wort: ist 'ei' enthalten?
worte
# Ersetze jeweils den ersten Fund:
sub(pattern="ei", replacement="EI", x=worte)
# Ersetze alle Vorkommnisse (Auftreten) von 'ei'
gsub(pattern="ei", replacement="EI", x=worte)

cat("Satz mit\nZeilenumbruch") # \newline
cat("1\t9","1234\t9","12345678\t9", sep="\n") # \tabstop
cat("Satz mit \" Symbol") # Anführungsstrich
cat('Satz mit " Symbol') # weniger Tipparbeit :)
cat("Satz mit \\ literal") # Backslash selbst
cat("Zeichenkette mit \U{0B00} Grad Symbol") # \Unicode
v <- c("ab-cdefg-hij-k-lmn", "opqrstuv-wxyz")
v
w <- strsplit(v, split="-")
w # Ein Element für jedes Element im Ursprungsvektor
w[[1]]
worte
# für jedes Wort: an welcher Stelle 'ei' anfängt
c(regexpr("ei", worte)) # -1 wenn nicht drin
gregexpr("ei", worte)  # ditto: alle Stellen -> list
cat(sapply(gregexpr("ei", worte), toString), sep="       ")
x <- c("abz", "Abz", "yzab", "abyz", "nichts")
grep("ab", x,v=T) # value=TRUE abgekürzt für kurze Folien
grep("ab", x,v=T, ignore.case=TRUE) # Großschreibung egal
grep("^ab", x,v=T) # caret: Muss anfangen mit
grep("yz", x,v=T)
grep("yz$", x,v=T) # dollar: Muss enden mit
x <- c("cfu", "cfgu", "cfghu", "cnu", "cmu")
grep("c.u", x,v=T) # .: irgendein beliebiges Zeichen
grep("c.*u", x,v=T) # .*: egal wieviele beliebige Zeichen
grep("c.{2}u", x,v=T) # .{2}: genau 2 beliebige Zeichen
grep("c(f|n)u", x,v=T) # (x|y): x oder y
grep("c[kmf]u", x,v=T) # [xyz]: irgendeins dieser Zeichen
grep("c[^km]u", x,v=T) # [^xyz]: nicht diese Zeichen (normal ^anfang)
grep("c[k-o]u", x,v=T) # [a-xA-X]: zwischen a und X
x <- c("cd","cxd","cxxd","cxxxd","cxxxxd")
grep("cxd", x,v=T)
grep("cx?d"    , x,v=T) # ?: 0 oder 1 mal
grep("cx*d"    , x,v=T) # *: 0 oder mehrfach
grep("cx+d"    , x,v=T) # +: einmal oder öfter
grep("cx{2}d"  , x,v=T) # {n}: n mal
grep("cx{2,}d" , x,v=T) # {n,}: n mal oder öfter
grep("cx{2,3}d", x,v=T) # {n,m}: n bis m mal
". \ | ( ) [ { ^ $ * + ?" # regex metacharacters
x <- c("ab.de", "abde", "a^bcde", "bcde")
grep("^bc",   x, value=TRUE)
grep("^bc",   x, value=TRUE, fixed=TRUE) # ohne regex
grep(".de",   x, value=TRUE)
grep("\\.de", x, value=TRUE) # echter Punkt (mit regex)
grep("[UV[:digit:]WX]", c("ab3d","abUd","abcd"), v=T)


# 2.4 Kategorien ----

factor(c("Boot","Auto","Zug","Auto","Boot"))
factor(c("Boot","Auto","Zug","Auto","Boot"), levels=c("Boot", "Zug", "Auto")) 
state.region[37] # eingebauter Datensatz mit factors
class(state.region)
levels(state.region)
op <- options(width=70)
table(state.region) # Anzahl Vorkommen pro Wert
options(op) ; rm(op)
noten <- c(3,5,2,3,1,2,2,3,5,2,2,2,1,3,4,4,2,4,3,6,3,1)
table(noten, dnn=NULL) # dnn: Dimensionsnamen weglassen
names(table(noten))
geschlecht <- c("m","m","m","w","d","w","w","m","m","d","w",
                "d","w","m","w","w","w","w","w","d","m","w")
table(geschlecht, noten) # Kreuztabelle (contingency table)
head(state.name) # Zeichenkette
head(state.region) # Kategorie (factor)
nchar(state.name[1:6])
tapply(X=state.name, INDEX=state.region, FUN=nchar)
mean_charlen <- function(x) mean(nchar(x))
mean_charlen(state.name)
op <- options(width=60)
tapply(X=state.name, INDEX=state.region, FUN=mean_charlen)
options(op) ; rm(op)
tapply(X=state.name, INDEX=state.region, FUN=function(x) mean(nchar(x))   )
as.numeric(state.region)[c(37, 7, 27)]
as.numeric(as.factor(19:17)) 
# NICHT 19,18,17, sondern deren Levels


# 2.5 Pakete ----

## install.packages("ggplot2")
library("ggplot2")
rdwd::findID("Potsdam")
library(rdwd)
findID("Potsdam")
## update.packages()
# Wenn ein Paket nicht verfügbar ist, dann installiere es:
if(!requireNamespace("berryFunctions", quietly=TRUE)) 
  install.packages("berryFunctions")
x <- 1:30
y <- c(3.2, 2.4, -1, 2.6, 3.2, 4.1, 2.5, 2.1, 5.4, 8.2, 
       6.2, 7, 10.6, 0.6, 8.1, 8.3, 11.1, 10, 6.4, 10.7, 
       10.9, 10.7, 17.2, 12.8, 9, 9.5, 9.3, 10.4, 11, 12.8)
par(mar=c(2.7,2.7,1.5,0.1), mgp=c(1.8, 0.7,0), cex=0.9)
berryFunctions::linReg(x, y, pos1="topleft")

