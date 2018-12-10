#Exportar primero el archivo en Excel
#Verificar la lectura de datos
attach(carreras)
stripchart(carreras[1:6],las=1,pch = 11,col = c("pink3","blue","green","salmon","orange","purple"))
abline(h=c(50,100,150,200,250,300),lty=2,lwd=0.6)
legend(250,6.2,c("medicina","derecho","ciencias","letras","inef","otras"), cex = 0.8, fill =  c("pink3","blue","green","salmon","orange","purple"),title="Estudiantes")

stripchart(carreras[1:6],las=1,pch = 11,col = c("pink3","blue","green","salmon","orange","purple"),vertical = TRUE)
abline(h=c(50,100,150,200,250,300),lty=3,lwd=0.4)
legend(5.5,330,c("medicina","derecho","ciencias","letras","inef","otras"), cex = 0.7, fill =  c("pink3","blue","green","salmon","orange","purple"),title="Estudiantes")
