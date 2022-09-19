codeoceanR::rt_score()

# Für alle Funktionsaufgaben gilt (außer wenn explizit angegeben):
# Die Namen der vorgegebenen Argumente dürfen geändert werden.
# In Aufgabe 4 zB muss das Argument nicht 'x' heißen.
# Du darfst es also umbenennen in zB 'zahlen', 'vektor' oder was immer dir
# beim Verständnis des Codes hilft.
# Zum Anfang ist es sinnvoll, den Unterschied zwischen 'x' und 'werte'
# zu verstehen.


# A4 ----
# Wir erweitern jetzt den Code aus R14 Statistik A1.
# `stats` soll einen Vektor ausgeben mit:
# arithmetischer Mittelwert, Standardabweichung, Median, Minimum, 70-Perzentil
stats <- function(x){c(mean(x),sd(x),median(x),min(x),quantile(x, probs=0.7))}
  
werte <- c(82, 146, 202, 258, 206, 335, 137, 169, 99, 190,
           67, 96, 196, 141, 104, 345, 125, 35, 159, 85,
           125, 161, 87, 149, 130, 46, 64, 105, 140, 199,
           128, 205, 228, 85, 140, 166, 73, 123, 62, 270)
stats(werte) # soll sein: 146.575,  71.926,  138.5,  35,  166.9 
andere_werte <- 165:178 
stats(andere_werte) # soll sein: 171.5,  4.1833,  171.5,  165,  174.1


# A5 ----
# `q3` soll das dritte Quartil (75% Quantil) ohne Namen ausgeben.
# Quantile hat ein Argument, was das names-Attribut ausschaltet.
q3 <- function(zahlen){quantile(zahlen, probs=0.75, names=F)}

q3(  rnorm(2000)  )  # sollte ungefähr 0.67 sein (0.55-0.81)


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
