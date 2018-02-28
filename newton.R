# Remueve todos los objetos creados
rm(list=ls())
# Halla la raiz de Fx
Fx <- function(x) exp(-x) + x -2
F1x <- function(x) 1-exp(-x)

newton <- function(x) {
for(i in 1:20) {
x<-x-Fx(x)/F1x(x)
if (Fx(x) == 0) break
error<-abs(Fx(x)/F1x(x))
cat("X=",x,"\t","E=",error,"\n")
}
}
