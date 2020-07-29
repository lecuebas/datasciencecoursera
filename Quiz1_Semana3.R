#Take a look at the ‘iris’ dataset that comes with R. The data can be loaded 
#with the code:

library(datasets)
data(iris)
head(iris) #checa as 6 primeiras linhas da tabela
tail(iris)
dim(iris) #verifica as dimensões da tabela(linha, coluna)
class(iris)  #classe das variáveis, visão global "data.frame"
cls_list <- lapply(iris, class) # o l de lapply é lista, mostra cada coluna em uma
#linha com $descrição da coluna
class(cls_list) #mostra a classe: lista
as.character(cls_list)
cls_vect<-sapply(flags, class) #s de simplificar
class(cls_vect)
sum(flags$orange) #mostrou quantos países tinham laranja na bandeira
flag_colors <- flags[, 11:17]
lapply(flag_colors, sum) #mostra extenso
sapply(flag_colors, sum) #mostra tabelado
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat<-sapply(flag_shapes, range)
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals<-lapply(flags, unique)
sapply(unique_vals, length)
lapply(unique_vals, function(elem) elem[2])
vapply(flags,class, character(1))
table(flags$landmass)
tapply(flags$animate, flags$landmass, mean) #a fx está aplicada no animate 
#separada para cada landmass
tapply(flags$population, flags$red, summary)

#Q1: what is the mean of ‘Sepal.Length’ for the species virginica? Please round 
# your answer to the nearest whole number.
  
tapply(iris$Sepal.Length, iris$Species, summary)
tapply(iris$Sepal.Length, iris$Species, mean)

#Q2: Continuing with the ‘iris’ dataset from the previous Question, what R code 
#returns a vector of the means of the variables ‘Sepal.Length’, ‘Sepal.Width’, 
#‘Petal.Length’, and ‘Petal.Width’?

apply(iris[, 1:4], 2, mean)

#Q3: Load the ‘mtcars’ dataset in R with the following code, How can one 
#calculate the average miles per gallon (mpg) by number of cylinders in the 
#car (cyl)? Select all that apply.

library(datasets)
data(mtcars)
head(mtcars)
dim(mtcars)

tapply(mtcars$mpg, mtcars$cyl, mean) #OU
sapply(split(mtcars$mpg,mtcars$cyl), mean) #OU
with(mtcars, tapply(mpg, cyl, mean))

#Q4; what is the absolute difference between the average horsepower of 4-cylinder
#cars and the average horsepower of 8-cylinder cars?

head(mtcars)
diff_cars <- tapply(mtcars$hp, mtcars$cyl, mean)
diff_cars[3]-diff_cars[1]
