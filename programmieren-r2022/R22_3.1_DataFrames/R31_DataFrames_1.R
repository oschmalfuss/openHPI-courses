codeoceanR::rt_score()

# A1 ----
# Erstelle eine Tabelle mit den Spalten: person, augenfarbe, einkommen mit den 
# folgenden Inhalten. Nutze Zeilenumbrüche um horizontales Scrollen zu vermeiden.
# t1_start
BeispielTabelle <- data.frame(
                              person=c("Alex","Bela","Chris","Dora","Emil","Fine","Gabi","Hans","Ines"),
                              augenfarbe=c("grau","grün","blau","braun","grau","blau","grau","grün","grau"),
                              einkommen=c(2300, 500, 1500, 700, 900, 2000, 3400, 1500, 600)
                             )
# t1_ende


# A2 ----
# Erinnerung: in R mitgelieferte Datensätze sind dokumentiert, siehe z.B.  ?rock 
# Lade einen Datensatz, um ihn im Rstudio Environment panel zu untersuchen:
data(rock) ; rownames(rock)
# Klicke auf einen Objektnamen für View(), auf den blauen Pfeil für str(rock).
# Hinweis: im Browser geht   View(rock)   nicht!
# Falls du versehentlich einen eingebauten Datensatz überschreibst, führe 
# rm(diesesObject) aus. Dann findet R es beim nächsten Aufruf nicht in globalEnv 
# (wie vorher) und sucht tiefer, bis es in package:datasets gefunden wird.
# Siehe rskey für str auf F3 Taste:
# browseURL("https://github.com/brry/rskey#rskey") # SHIFT + klick in Rstudio

# Zeige die Struktur des eingebauten data.frame 'rock'.
# Vergewissere dich, alle gezeigten Angaben zu verstehen.
# Dieser Befehl ist später sehr wichtig, um eingelesene Daten zu prüfen.
# Kopiere die Ausgabe zwischen die Anführungsstriche.
struktur <- "
'data.frame':   48 obs. of  4 variables:
 $ area : int  4990 7002 7558 7352 7943 7979 9333 8209 8393 6425 ...
 $ peri : num  2792 3893 3931 3869 3949 ...
 $ shape: num  0.0903 0.1486 0.1833 0.1171 0.1224 ...
 $ perm : num  6.3 6.3 6.3 6.3 17.1 17.1 17.1 17.1 119 119 ...
" 

# A3 ----
# Erhalte die ersten 6 Werte der Spalten 3 und 4 aus dem eingebauten 'longley',
longley_subset <- longley[1:6, 3:4]


# A4 ----
# Wähle die Zeilen 5 bis 25 aus dem eingebauten Datensatz 'npk' aus.
npk5_25 <- npk[5:25,]
# Wähle die 'npk' Zeilen aus, bei denen der Ertrag (Engl: Yield) > 60 Pfund beträgt.
npk_ertragreich <- npk[npk$yield>60,]


# Mache weiter in "R31_DataFrames_2.R"
