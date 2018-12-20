# En una industria tres trabajadores en siete dı́as de trabajo, son
# capaces de producir, por dı́a, la siguiente cantidad de árboles de
# manzanas de 90 mm de longitud por 8 mm de diámetro. de acuerdo con 
# la tabla 1. Obténgase:
# a) Producción media de cada trabajador.
# b) Moda del trabajador I, II y del trabajador III.
# c) Mediana del trabajador I, II, y III.
# d) El rango del trabajador I, II, y del trabajador III.
# e) Desviación estándar de los 3 trabajadores (cada uno).
# f) Varianza de los trabajadores (cada uno).
# g) ¿ Cuál trabajo más en la semana?
#Leer el archivo examen.xlsx
library(readxl)
examen <- read_excel("Dropbox/examen.xlsx")
View(examen)
#escribir la variable "examen" que contiene los datos
examen
# Graficar
stripchart(examen[1:3],vertical = TRUE,las=1,pch = 8, cex = 2,ylim = c(98,110),col = c("violetred3","pink3","darkolivegreen3"),ylab="# de árboles plantados",xlab="Trabajador", main="Comparación de la producción de los trabajadores")
abline(h=c(98,100,102,104,106,108,110),col="snow3",lty=3)

boxplot(examen[1:3],las=1, col = c("violetred3","pink3","darkolivegreen3"),ylab="# de árboles plantados",xlab="Trabajador", main="Comparación de la producción de los trabajadores")
