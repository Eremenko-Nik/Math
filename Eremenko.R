#1 задание

iris
mean(iris$Sepal.Length)
x=mean(iris$Sepal.Length)
x
mean(iris$Sepal.Width)
y=mean(iris$Sepal.Width)
y
mean(iris$Petal.Length)
z=mean(iris$Petal.Length)
z
mean(iris$Petal.Width)
e=mean(iris$Petal.Width)
e
list(x,y,z,e)




#2 задание

iris
apply(iris[,1:4],1,mean)


#3 задание

DNA = c("A","G","T","C")

DNA=sample(DNA, size = 1000, rep=T)

DNA=factor(DNA)

summary(DNA)/length(DNA)

dna_at=c(DNA[1],DNA[4]); dna_at 

dna_at



#4 задание 

letters

sample(letters,size = 1000, replace = TRUE)

sampleabc = c(sample(letters, size = 1000, replace = TRUE))
summary(sampleabc)

GLAS = sampleabc[sampleabc %in% c("a","e","i","o","u")] 

length(GLAS)


#5 задание

iris
setosa=c(iris$Petal.Length[1:50])
mean(setosa)

versicolor=c(iris$Petal.Length[51:100])
mean(versicolor)

virginica=c(iris$Petal.Length[101:150])
mean(virginica)

species=c(mean(setosa),mean(versicolor),mean(virginica))

x=factor(species)

names(x)<-c("setosa","versicolor", "virginica")

x


#6 задание

median <- function(x) { 
  z=sort(x) 
  if((length(z)%%2)!=0){ 
    result = z[(length(x)/2)+1] } 
  else 
    result = (z[length(x)/2]+z[length(x)/2+1])/2 
  return(result)} 

#primer
median(iris$Sepal.Length) 


#7 задание

##1
iris
x=iris$Sepal.Length[1:50]

y=iris$Petal.Length[1:50]

plot(x,y,main="setosa", xlab="Sepal.Length",ylab="$Petal.Length", col="pink")


##2
x=iris$Sepal.Length[51:100]

y=iris$Petal.Length[51:100]

plot(x,y,main="versicolor", xlab="Sepal.Length",ylab="$Petal.Length", col="orange")

##3
x=iris$Sepal.Length[101:150]
                    
y=iris$Petal.Length[101:150]

plot(x,y,main="virginica", xlab="Sepal.Length",ylab="$Petal.Length", col="blue")


#8 задание

library("ggplot2")

diamonds

levels(factor(diamonds$clarity))

a=levels(factor(diamonds$clarity))

b=vector()

for (i in 1:length(a)) {b[i]=mean(diamonds$price[(diamonds$price>1000) & diamonds$clarity==a[i]])}

a
b

