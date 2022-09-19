codeoceanR::rt_score()

# A4 ----
# Schreibe eine Funktion mit den Argumenten A, B, C
# Sie soll die R Variante von Wahr/Falsch herausgeben:
# Wahr, wenn A und B wahr sind oder C wahr ist, sonst Falsch.

logischeFunktion <- function(A,B,C)
{
  A & B | C 
}
logischeFunktion(FALSE,TRUE,TRUE)

logischeFunktion(FALSE,TRUE,TRUE) # soll TRUE ausgeben


# A5 ----
# Eingebaute (built-in) Datensätze sind dokumentiert, siehe   ?rivers
# Verwende `data` um Datensätze im globalEnv Panel anzuzeigen:
data("rivers")

# Wähle vom eingebauten Vektor 'rivers' alle Werte aus,
# die kleiner/gleich 350 oder größer als 750 sind.
# Die Auftretensreihenfolge ist beizubehalten.
kleineGrosseFluesse <- rivers[rivers<=350 | rivers>750]


# A6 ----
# Welche Elemente im eingebauten Vektor 'state.area' sind kleiner als 50k?
state.area
state_index_klein <- which(state.area<50000)


# A7 ----
# Welche der eingebauten Buchstaben `LETTERS` sind nicht gleich "K"?
# Nutze den kurzmöglichsten Code (19 Zeichen).
index_ungleich_K <- which(LETTERS!="K")


# Now continue in "ex_02_6_Logic_3.R"
