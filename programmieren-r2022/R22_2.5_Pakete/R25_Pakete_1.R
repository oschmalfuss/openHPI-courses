codeoceanR::rt_score()

# A1 ----
# Lese die Dokumentation der Funktion zum Herunterladen und Einrichten externer Pakete.
# Sie speichert Pakete lokal auf dem Rechner.
# Dies erfolgt standardmäßig (by default) in einem bestimmten Ordner.
# Wie heißt die Funktion, deren erster Ausgabewert dafür verwendet wird?
# install.packages
funktionsName <- ".libPaths"


# A2 ----
# Prüfe, ob das Paket 'parallel' verfügbar und verwendbar ist.
# t2_start
requireNamespace("parallel")
# t2_ende


# A3 ----
# Wann ist    library(pack) ; packfun(x)    besser als     pack::packfun(x)   ?
# Mehrfachnennung ist möglich (als Vektor).
# Dies ist eine der ganz wenigen Fragen mit einem gewissen Meinungsspielraum.
# Diskutiere gerne im Forum, ob die akzeptierte Lösung deiner Meinung entspricht :)
# 1. Für Menschen soll klar sein, aus welchem Paket die Funktion verwendet wird.
# 2. Es existiert kein anderes CRAN Paket mit einer gleichnamigen Funktion.
# 3. Mehrere Funktionen aus dem Paket werden verwendet.
# 4. Im Skript werden viele Funktionen aus vielen Paketen verwendet.
# 5. Der Paketname ist sehr lang und soll nicht mehrfach im Code ausgeschrieben werden.
# 6. Die library Aufrufe am Skriptanfang machen klar, welche Pakete benötigt werden.
paketSyntax <- c(3,5)


# A4 ----
# Schau dir den Quellcode von 'sample' an.
# Welche Funktion ruft diese für die eigentliche Ausführung auf?
sampleFunktion <- "sample.int"


# A5 ----
# Schau dir den Quellcode von 'library' auf github an.
# Ab welcher Zeile wird die Funktion selbst definiert?
# Generiere den Direktlink, indem du auf die Zeilennummer klickst und die Adresse kopierst.
libraryURL <- "https://github.com/wch/r-source/blob/trunk/src/library/base/R/library.R#L54"

#berryFunctions::funSource(library)

# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
