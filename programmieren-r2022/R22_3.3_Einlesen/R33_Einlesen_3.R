codeoceanR::rt_score()

# B1 ----
# Erstelle (mit R Code) den Ordner "BonusOrdner". Großschreibung B+O beachten!
# Hinweis: Beim zweiten Ausführen dieses Skriptes kommt die Warnung "'BonusOrdner' existiert bereits".
# Ignoriere diese oder setze 'showWarnings=FALSE' im Befehl zum Erstellen des Ordners.
dir.create("BonusOrdner", showWarnings = FALSE)

# B2 ----
# Kopiere die Dateien "R33db_ToothGrowth.txt" und "R33db_Loblolly.txt" 
# mit einem einzigen Befehlsaufruf in den Ordner hinein.
file.copy(from = c("R33db_ToothGrowth.txt", "R33db_Loblolly.txt"), to = "BonusOrdner")

# B3 ----
# Benenne die Loblolly Datei innerhalb des BonusOrdner um:
# hänge "_Kopie" (mit upper case K) vor der Dateiendung an.
file.rename(from = "BonusOrdner/R33db_Loblolly.txt", to = "BonusOrdner/R33db_Loblolly_Kopie.txt")


# B4 ----
# Zeige die jetzt verfügbaren Dateien an, inkl. der Dateien in Unterordnern.
# Die Dokumentation des entsprechenden Befehls weist dafür ein Argument aus.
vorhandeneDateien <- dir(recursive = T)



# B5 ----
# Die R33db_complicated.txt Datei braucht nach dem Einlesen einen zweiten Schritt 
# für die Tausender-Trennzeichen.
complicated <- read.table("R33db_complicated.txt",
                          skip = 7,
                          header = T,
                          sep = "\t",
                          dec = ",")
complicated$ThouSand <- as.numeric(gsub("`", "", complicated$ThouSand))

# B6 ----
# Die R33db_days1.txt Datei hat zwei Spaltentrenner.
# Das lässt sich gut zeilenweise einlesen, ein Trenner mit dem anderen ersetzen 
# und das dann an das 'text'-Argument von read.table weitergeben.
days1 <- read.table(text = gsub(":", "-", readLines("R33db_days1.txt")), sep = "-")


# B7 ----
# Mit 'scan("file.name", what="")' lässt sich Text einlesen.
# Optional: quote="", quiet=TRUE
if(FALSE){ # die nächsten Zeilen nicht ausführen, wenn die Datei gesourced wird
cat("Dies ist G Text mit G Zeilen-
    umbrüchen, 'Strichen der Anführung' und Leerzeichen", file="bissl_text.txt")
file.show("bissl_text.txt")
scan("bissl_text.txt", "") # Strichen der Anführung" ist ein Element
scan("bissl_text.txt", "", quote="") # Wortbezogen, geht auch mit quote=NULL
scan("bissl_text.txt", "", quote="G") # " Text mit " ist jetzt ein einziger Eintrag
scan("bissl_text.txt", "", quiet=TRUE) # "Read x items"-Nachricht unterdrückt
unlink("bissl_text.txt")
}

# Wie oft kommt 'Peter' im E-book R33db_peterpan.txt vor? Ignoriere hier bitte "PETER".
anzahlPeter <- length(grep("Peter", scan("R33db_peterpan.txt", "", quote = "", quiet = TRUE)))
# Beachte, dass auch mit dem quote-Argument Wörter Satzzeichen enthalten können
# und nicht _gleich_ "Peter" sind, aber dennoch "Peter" _enthalten_.
# Tipp: Schau die table() der Einträge mit "Peter" an, um einen Eindruck zu bekommen. 

