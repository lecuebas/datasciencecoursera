#1

x<-list(a=1:5, b=rnorm(10))   #crio uma lista com dois vetores
lapply(x, mean)               #a função lapply atua sobre a lista com a função média


#2

x<-1:4
lapply(x, runif)              #runif cria 1 vetor aleatorio se runif1, 2 vetores aleatorios se
#runif2, etc


#3
x<-list(a=1:4,b=rnorm(10), c=rnorm(20,1), d=rnorm(100,5)) #apresenta o lapply em um 
sapply(x, mean)                                           #único vetor

#4
x<-matrix(rnorm(200), 20, 10)
apply(x,2,mean) #calcula a média de cada uma das 10 colunas

#5 calculam soma ou média de colunas ou linhas
rowSums() = apply(x,1, sum)
rowMeans()=apply(x,1, mean)
colSums()=apply(x,2, sum)
colMeans()=aplly(x, 2, mean)

#6
x<-matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs=c(0.25,0.75))

#7
a<-array(rnorm(2*2*10), c(2,2,10))
aplly(a, c(1,2), mean)


#8
library(datasets)
head(airquality)
s<- split(airquality,airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],na.rm=TRUE))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],na.rm=TRUE)) #MAIS ORGANIZADO


#9
x<-rnorm(10)
f1<-gl(2,5) #dois níveis repetidos 5 vezes
f2<-gl(5,2) #cinco níveis repetidos 2 vezes
interaction(f1,f2)

#9
str(split(x, list(f1,f2)))
str(split(x, list(f1,f2), drop=TRUE))

#10
as.character(cls_list) #transforma em "character vector"

#11
#vapply ao invés de sapply (+ seguro)
#tapply
