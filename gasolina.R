#Exportar e archivo con las datos en: Enviroment->Import Dataset->
#From Excel->Browse->Buscar la ubicación del archivo->Import
library(readxl)
gasolina <- read_excel("Dropbox/gasolina.xlsx")
View(gasolina)
#Verificar si se leyó el archivo: Escibir gasolina en la consola.
gasolina
#Escribir cada columna
attach(gasolina)
#Gráficas
stripchart(gasolina[2:5],pch=2,cex = 1.8,col = c("pink3","black","green","salmon"),ylab = "Comparación de precios",xlab = "Tipo de gasolina",main="Comparación de precios",las=1,vertical = TRUE,ylim = c(10,45))
abline(h=c(10,15,20,25,30,35,40,45),lty=3,lwd=0.6,col="snow4")
# Gráfica caja con bigotes
boxplot(gasolina[2:5],col = c("pink3","yellow","green","salmon"),xlab = "Tipo de gasolina",ylab="Precio ($ mexicanos)",main="Comparación de precios por litro",las=1)