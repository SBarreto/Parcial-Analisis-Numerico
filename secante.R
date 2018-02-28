# Remueve todos los objetos creados
rm(list=ls())
Fx <- function(x) exp(-x) + x -2
F1x <- function(x) 1-exp(-x)
# Metodo de la Secante
# Halla la raiz de Fx
secante <- function(x0,x1) {
x<-(Fx(x1)*x0-Fx(x0)*x1)/(Fx(x1)-Fx(x0))
error <-1
while (error > 1.e-5) {
x0<-x1
x1<-x
x<-(Fx(x1)*x0-Fx(x0)*x1)/(Fx(x1)-Fx(x0))
if (Fx(x) == 0) break
error<-abs(Fx(x)/F1x(x))
cat("X=",x,"\t","E=",error,"\n")
}
}
