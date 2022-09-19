codeoceanR::rt_score()

# A4 ----
# Schreibe eine Funktion, die den Mittelwert der positiven Zahlen ausgibt.
# Für diese Aufgabe zählt 0 als positiv.
posMittel <- function(zahlen){mean(zahlen[which(zahlen >= 0)])}
  
posMittel(-3:5) # soll 2.5 sein


# A5 ----
# Schreibe eine Funktion, die das n-letzte Maximum ermittelt.
# Per default soll das normale Maximum berechnet werden.
# Hinweis: anders als in 2.2 Logik A10 hilft x[-which.max(x)] hier nicht.
nthMax <- function(x,n=1){
  x <- sort(x)
  x[which(x == max(x)) -n+1]
  }

nthMax(1:9)    # 9
nthMax(1:9, 2) # 8
nthMax(1:9, 3) # 7


# Mache weiter in "R29_Datentypen_3.R"
