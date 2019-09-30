head(cars)  
linearMod <- lm(dist ~ speed, data=cars)  # build linear regression model on full data
print(linearMod)
summary(linearMod)  # model summary
scatter.smooth(x=cars$speed, y=cars$dist, main="Dist ~ Speed")  # scatterplot
cor(cars$speed, cars$dist)  # calculate correlation between speed and distance 

