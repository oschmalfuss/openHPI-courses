codeoceanR::rt_score()

# A7 ----
# Berechne das 95ste Perzentil (=Quantil) der ersten 20 Zahlen im 
# eingebauten Vektor `islands`.
# Das Ergebnis soll ein Vektor (mit Länge 1) ohne Namen sein.
# Hinweis: die benötigte Funktion hat dokumentierte Argumente.
insel95 <- quantile(islands[1:20], names=F, probs=0.95)

# A8 ----
# Transferaufgabe: Bestimme (mit R code), wie viele einmalige Einträge
# im eingebauten Vektor `rivers` enthalten sind.
# Hinweis: im Zusatzmaterial einer der 4 Lektionen steht was Hilfreiches.
anzahlUnikate <- length(unique(rivers))


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
# Beschreibe bitte vor der Abgabefrist noch keine Lösungen im Forum.
