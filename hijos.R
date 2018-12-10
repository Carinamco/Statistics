# El gobierno desea saber si el número promedio de hijos por 
#familia ha descendido los últimos años. Para ello ha encuestado
# a 20 familias preguntando su número de hijos, y ha obtenido:
# 2, 4, 5, 3, 1, 2, 4, 2, 3, 0, 3, 3, 4, 5, 5, 0, 3, 2, 1, 2

#Crear una lista de los datos
hijos=c(2,4,5,3,1,2,4,2,3,0,3,3,4,5,5,0,3,2,1,2)
# Contar la frecuencuencia de repetición de cada número
fabs<-table(hijos)
fabs
frel<- fabs/length(hijos)
frel
fabsacum<- cumsum(fabs)
fabsacum
frelacum<- fabsacum/20
frelacum
tablafrecuencias<-cbind(fabs, frel,fabsacum,frelacum)
tablafrecuencias
barplot(fabs,ylab="Frec. absoluta",xlab="Número de hijos",main="Número de hijos
+ de las familias")
media<-mean(hijos)
media
mediana<-median(hijos)
mediana
q1<-quantile(hijos,.25)
q1
q2<-quantile(hijos,.5)
q2
q3<-quantile(hijos,.75)
q3
varianza<-var(hijos)
varianza
desvioestandar<-sd(hijos)
desvioestandar
barplot(fabsacum,ylab="Frec. acumulada",xlab="Número de hijos",main="Número de hijos de las familias vs frec. acumulada", col = c("dodgerblue4","deeppink3","indianred2","lightpink3","hotpink3","yellowgreen"),lwd=5,space = 0,ylim = c(0,22))
abline(h=c(2,4,6),lty=2,lwd=1,col="snow3")
barplot(fabsacum,ylab="Frec. acumulada",xlab="Número de hijos",main="Número de hijos de las familias vs frec. acumulada", col = c("dodgerblue4","deeppink3","indianred2","lightpink3","hotpink3","yellowgreen"),lwd=5,space = 0,ylim = c(0,22),las=1)
abline(h=c(5,10,15,20),lty=2,lwd=1,col="snow3")
etiqueta<-c("0 hijos 10%","1hijo 10%","2hijos-25%","3hijos 25%","4hijos 15%","5hijos 15%")
pie(fabs,labels = etiqueta,col = c("dodgerblue4","deeppink3","indianred2","lightpink3","hotpink3","yellowgreen"),main = "Número de hijos de las familias")
