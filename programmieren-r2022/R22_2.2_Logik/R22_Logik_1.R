codeoceanR::rt_score()

# A1 ----
zahlen <- c(  5, 14, 13,  9,  3,  2, 10, 12, 11,  6,  7,  8,  1,  4, 15)
gruppe <- c("b","c","d","c","a","d","b","d","b","b","d","c","a","b","a")
# Wähle alle Zahlen aus, die kleiner gleich 9 sind.
# Die Auftretensreihenfolge ist beizubehalten.
kleineZahlen <- zahlen[which(zahlen <= 9)]


# A2 ----
# Wähle alle Zahlen aus, die zur Gruppe "b" gehören.
zahlen_b <- zahlen[which(gruppe == "b")]


# A3 ----
3 < "b" # zeigt, dass R Zahlen als "kleiner" als Buchstaben betrachtet.

# Bringe folgende Einträge in die richtige Reihenfolge (aufsteigend).
# Tipp: vergleiche jeden Eintrag miteinander, zB prüfe:
3 > "b" # oder verwende eine clevere Herangehensweise :)
# Pro Tipp: ALT Taste gedrückt halten + Pfeil hoch/runter verschiebt Zeile

# t3_start # Lösung unter dieser Zeile behalten
1
"2"
3
"a"
"b"
"B"
# t3_ende


# Now continue in "ex_02_6_Logic_2.R"
