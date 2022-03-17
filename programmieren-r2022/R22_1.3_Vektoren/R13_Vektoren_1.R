codeoceanR::rt_score()

# A1 ----
# Füge folgende Zahlen zu einem Vektor zusammen: 8, -5.5, 27, 110

vektorZahlen <- c(8, -5.5, 27, 110)

# Letzte Erinnerung: Löse sehr oft eine Bewertung aus (STRG + SHIFT + S).


# A2 ----
# Wiederhole die Zahl 5 77 mal.

wiederholteZahl <- rep(5, times=77)

# A3 ----
# Erstelle eine Sequenz von 500 bis 1 in Einserschritten.
# CodeGolf Pro Tipp: Diese Aufgabe ist mit 5 Symbolen lösbar.

zahlenSequenz1 <- 500:1

# A4 ----
# Erstelle eine Sequenz von 500 bis 0 in Abständen von 25.

zahlenSequenz25 <- seq(from=500, to=0, by=-25)

# A5 ----
# Erstelle eine Sequenz von 500 bis 0 mit 30 Zahlen (in je gleichem Abstand).

zahlenSequenz30 <- seq(from=500, to=0, len=30)

# A6 ----
zahlenSequenz31 <- zahlenSequenz30
# Füge der 'zahlenSequenz31' die Zahl -5 am Ende hinzu.

zahlenSequenz31[length(zahlenSequenz31)+1] <- -5

# Mache weiter in "R13_Vektoren_2.R"