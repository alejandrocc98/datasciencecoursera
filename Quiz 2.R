library(datasets)
data(iris)

View(iris)
round(tapply(iris$Sepal.Length,iris$Species,mean),0)
#  setosa versicolor  virginica 
#  5          6          7

apply(iris[,1:4],2,mean)
# Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
#   5.843333     3.057333     3.758000     1.199333 

library(datasets)
data(mtcars)

View(mtcars)
tapply(mtcars$mpg,mtcars$cyl,mean)
#        4        6        8 
# 26.66364 19.74286 15.10000 

sapply(split(mtcars$mpg,mtcars$cyl),mean)
#        4        6        8 
# 26.66364 19.74286 15.10000

with(mtcars,tapply(mpg,cyl,mean))
#        4        6        8 
# 26.66364 19.74286 15.10000 
hp_difference <- tapply(mtcars$hp,mtcars$cyl,mean)
as.matrix(hp_difference)
hp_difference <- t(hp_difference)
round(hp_difference[,3]- hp_difference[,1])
#  8 
# 127 

debug(ls)
ls()
