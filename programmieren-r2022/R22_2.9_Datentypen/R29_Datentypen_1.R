codeoceanR::rt_score()

# Dies ist eine bewertete Aufgabe für ein Zertifikat. 
# Sie muss vor der angegebenen Zeit eingereicht werden (mit rt_submit()).
# Besprich vor der Abgabefrist bitte keine Lösungen im Forum, erst danach.


# A1 ----
Wert <- 678
groesser <- Wert > 600
# Erhalte das Gegenteil von 'groesser'.
# t1_start
nicht_groesser <- ! Wert > 600
# t1_ende


# A2 ----
# An welcher Stelle steht der kleinste Wert im eingebauten Vektor 'rivers'?
positionkleinsterFluss <- which(rivers == min(rivers))


# A3 ----
# `grosseMenschen` soll die namen ausgeben, wo die entsprechende groesse >1.84 ist.
grosseMenschen <- function(namen, groessen){namen[which(groessen>1.84)]}
  
grosseMenschen(namen   =c("John", "Lyndon", "Jimmy", "Bill", "Barack", "Joe", "Berry"),
               groessen=c( 1.83 ,     1.92,    1.77,   1.88,     1.85,  1.83,    1.82) ) 
# sollte "Lyndon", "Bill", "Barack" sein.


# Mache weiter in "R29_Datentypen_2.R"
