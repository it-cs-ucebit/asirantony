# barplot
Numbers<-table(mtcars$cyl,mtcars$gear)
barplot(Numbers,main='Automobile cylinder number grouped by number of gears', 
        col=c('red','orange', 'steelblue'),legend=rownames(Numbers),xlab='Number of Gears',
        ylab='count')
# histogram of frequency of ozone values in 'airquality' dataset
hist(airquality$Temp,col='steelblue',main='Maximum Daily Temperature',
     xlab='Temperature (degrees Fahrenheit)')
# heatmap
# simulate a dataset of 10 points
x<-rnorm(10,mean=rep(1:5,each=2),sd=0.7) 
y<-rnorm(10,mean=rep(c(1,9),each=5),sd=0.1)
dataFrame<-data.frame(x=x,y=y)
set.seed(143)
dataMatrix<-as.matrix(dataFrame)[sample(1:10),] # convert to class 'matrix', then shuffle the rows of the matrix
heatmap(dataMatrix) # visualize hierarchical clustering via a heatmap 
# Scatter plot
# Plot Ozone and Temperature measurements for only the month of September 
with(subset(airquality,Month==9),plot(Wind,Ozone,col='steelblue',pch=20,cex=1.5)) 
title('Wind and Temperature in NYC in September of 1973')
mtcars<-transform(mtcars,cyl=factor(cyl)) # convert 'cyl' column from class 'numeric' to class 'factor'
class(mtcars$cyl) # 'cyl' is now a categorical variable 
boxplot(mpg~cyl,mtcars,xlab='Number of Cylinders',ylab='miles per gallon',main='miles per gallon for varied cylinders in automobiles',cex.main=1.2)
    
