codeoceanR::rt_score()

# A1 ----
# Schreibe die Funktion `doppelterBetrag`. Für einen beliebigen Input soll sie
# das doppelte des Betrages (Absolutwert, siehe 1.1 Syntax) zurückgeben.

doppelterBetrag <- function(d){m = 2; return(m*abs(d))}

# Zum Testen deiner Funktion kannst du die Auskommentierung folgender Zeilen aufheben.
# Markiere die Zeile(n) und drücke STRG + SHIFT + C.
# doppelterBetrag(-5.5) # soll 11 sein
# doppelterBetrag(7)    # soll 14 sein
# Im (dir unsichtbaren) Testskript wird die Funktion mit mehreren Eingaben getestet.


# A2 ----
# Nehmen wir mal an, R hätte keine eingebaute `mad`-Funktion um die 
# mittlere absolute Abweichung (MAD) zu berechnen.
# Welche der folgenden Einzeiler hätte dafür die richtige Syntax?
# 1. function(getMAD) abs(v-median(v)) 
# 2. getMAD <- function(v) dev <- v-median(v) ; median(abs(dev)) 
# 3. getMAD <- function(v) {dev <- v-median(v) ; median(abs(dev))} 
# 4. function(median) abs(deviation(v))
madFunktion <- 3 # change zero to the correct number



# A3 ----
# Schreibe eine Funktion, die zufällig "Kopf" oder "Zahl" ausgibt (ohne if/else).
# Es wird kein Input Argument benötigt. Achte auf Groß- und Kleinschreibung.
# Hinweis: in 1.4 Statistik haben wir eine entsprechende Funktion kennengelernt.
muenzwurf <- function(){c("Kopf","Zahl")[sample(1:2, 1)]}

# Mache weiter in "R21_Funktionen_2.R"
