
str(iris)

head(iris)

head(iris,n=10)

tail(iris)

tail(iris,n=10)

table(iris$Species)

min(iris$Sepal.Length)

max(iris$Sepal.Width)

mean(iris$Petal.Length)

range(iris$Petal.Width)

if(iris$Sepal.Length[1]>4){
  print("The Sepal Length is greater than 4")
}

if(iris$Sepal.Length[1]<4){
  print("The Sepal Length is less than 4")
}else{
  print("The Sepal Length is greater than 4")
}

vec1 <- c(1:9)
for (i in vec1){
  print(i+5)
}


i = 1
while (i<9){
  print(i+5)
  i = i+1
}











