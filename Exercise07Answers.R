#1. R code that replicates functionality of head in bash.
x<-read.csv(file="iris.csv", header=TRUE)
x[1:5,] #replace the 5 with any number of lines you want.

#2. Tasks using R

####prints the last 2 rows in the last 2 columns to the R terminal
lastrows<- tail(x,2)
lastrows[,4:5]

#### get the number of observations for each species included in the data set
setosaobsv<-x[x$Species=="setosa",] #you can replace "setosa" with any of the other species
dim(setosaobsv) #the number of rows is the number of observations (50 observations)

#### get rows with Sepal.Width > 3.5
x[x$Sepal.Width>3.5,] 

#### write the data for the species setosa to a comma-delimeted file named setosa.csv
setosaobsv<-x[x$Species=="setosa",]
write.table(setosaobsv, file="setosa.csv",sep=",")

#### calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginicaobsv<-x[x$Species=="virginica",]
max(virginicaobsv$Petal.Length) #output = 6.9
min(virginicaobsv$Petal.Length) #output = 4.5
mean(virginicaobsv$Petal.Length) #output = 5.552






