codeoceanR::rt_score()

# A4 ----
zufallsZahlen <- rbinom(n=sample(1:200,1), size=17, prob=0.34)
# Korrigiere den folgenden Code.
anzahl <- length(zufallsZahlen)


# A5 ----
# Was ist der Median der Flächengrößen im eingebauten Datensatz `state.area`?
flaecheMedian <- median(state.area)


# A6 ----
# Wiederhole die Zahlen 1,2,5,10,20,50 je 15 mal (Ziel: 1,1,1...1, 2,2,2...2, 5,...).
# Jede Zahl soll nur einmal in der Lösung vorkommen!
# Hinweis: Copypaste die unterschiedliche Zahlen und füge sie zu einem Vektor zusammen. 
wiederholteZahlen <- rep(c(1,2,5,10,20,50), each=15)


# Mache weiter in "R19_Grundlagen_3.R"
