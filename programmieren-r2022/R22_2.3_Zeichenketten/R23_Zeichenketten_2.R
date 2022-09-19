codeoceanR::rt_score()

# Die Lösungen in diesem Skript sind vom Code her sehr kurz.
# In der Realität würde dafür keine eigene Funktion geschrieben werden.
# Das ermöglicht hier aber eine umfassende Prüfung deiner Lösung :)

# A5 ----
# Schreibe eine Funktion, die überprüft, ob 'wort' in 'liste' vorkommt.
wort_existiert <- function(wort, liste, value)
{
  any(grepl(wort, liste))
}
  
wort_existiert("rockt", c("R", "rockt", "als", "Programmiersprache") ) # soll TRUE sein
wort_existiert("rockt", c("Andere", "Worte", "ohne", "Felsen") ) # FALSE



# A6 ----
# Welche der 'eingaben' enthalten ein bestimmtes 'muster'? Es sind die Stellen gesucht (Index).
welche_enthalten <- function(muster, eingaben)
{
  grep(muster, eingaben)
}
  
schoko <- c("Milka", "Lindor", "Ritter Sport", "Merci", "Frigor", "Feodora", "Alpia")
welche_enthalten("or", schoko) # 2,3,5,6



# A7 ----
# Gib für jedes Element in 'eingaben' an, ob es 'muster' beinhaltet.
jeweils_enthalten <- function(muster, eingaben)
{
  grepl(muster, eingaben)
}
  
jeweils_enthalten("or", schoko) # FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE



# A8 ----
# Überprüfe, ob 'wort' unabhängig von Groß/Kleinbuchstaben in 'liste' vorkommt.
wort_existiert_case <- function(wort, liste)
  {
    any(grepl(wort, liste, ignore.case=T))
  }

wort_existiert_case("rockt", c("R", "Rockt", "als", "Programmiersprache") ) # TRUE


# Mache weiter in "R23_Zeichenketten_3.R"
