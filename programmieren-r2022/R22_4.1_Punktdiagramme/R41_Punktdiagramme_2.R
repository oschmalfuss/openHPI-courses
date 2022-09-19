codeoceanR::rt_score()
codeoceanR::rt_plot1() # Außerhalb von CodeOcean tut dieser Befehl nichts

# B1 ----
# Kopiere den Code des letzten Skriptes.
# Verwende blaue semitransparente (#0000CD5D) Punkte für Provinzen,
# in denen die Mehrheit der Bevölkerung (>50%) katholisch ist.
# Es gibt mehrere Lösungen, die im Forum diskutiert werden können :)
# https://open.hpi.de/courses/programmieren-r2022/question/05ee67c5-33b5-4d36-85df-c503e80c72e7
# tb1_start
plot(
  x = swiss$Education,
  y = swiss$Examination,
  xlab = "Hochschulbildung  [%]",
  ylab = "höchste Note in der Armeeprüfung  [%]",
  main = "Schweiz, 1888",
  las = 1,
  pch = 16,
  cex = swiss$Fertility/15,
  col=c("#00CD005D", "#0000CD5D")[factor(swiss$Catholic > 50)]
)

# tb1_ende

codeoceanR::rt_plot2()
