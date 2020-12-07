#Question 1
#_______________________________________________________________________________________

#load dataset
attach(airquality)
airquality

# a) Remove missing values
na.omit(airquality)

#compute summary
summary(airquality)

#remove categorical variables
airquality$Month = factor(airquality$Month)
airquality$Day = factor(airquality$Day)
summary(airquality)

#summary seperately

summary(airquality$Ozone)

#b) Ozone, Solar.R, Wind, Temp
hist(airquality$Ozone)
hist(airquality$Solar.R)
hist(airquality$Wind, breaks = 15)
hist(airquality$Temp, breaks = 10)

#c)Draw a normal curve
m<-mean(airquality$Temp); std<- sqrt(var(airquality$Temp))
hist(airquality$Temp, prob=T, main="Temperature")
curve(dnorm(x, mean=m, sd=std), col="red", lwd=2, add=TRUE)

#Question 2
#_______________________________________________________________________________________
random=rnorm(100, mean=10, sd=sqrt(2))
random
hist(random, main = "Histogram", xlab= "random numbers", prob=T)
curve(dnorm(x, 10, sqrt(2)), col="red", lwd=2, add=TRUE)

quantile(random)

1-pnorm(5,10,sqrt(2))

#Question 3
#_______________________________________________________________________________________
#load dataset
attach(iris)
head(iris)
pairs(~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,data=iris, main="Simple Scatterplot Matrix",pch = 21,bg = c("red", "green3", "blue","yellow")[unclass(iris$Species)])

#Question 4
#_______________________________________________________________________________________

#load dataset
library(MASS)
data(cats)
head(cats)
attach(cats)

#a)
plot(Bwt, Hwt, main="Bwt vs. Hwt", xlab="Body weight (Bwt)", ylab="Heart weight (Hwt)", pch=21)

#b)
relation <- lm(Hwt~Bwt)
print(relation)
#to get more details of the model
summary(relation)
plot(Hwt,Bwt,main = "Bwt & Hwt Regression", abline(lm(Bwt~Hwt),col="red"),xlab = "Bwt",ylab = "Hwt")

#c)
par(mfrow=c(2,2)) # partition the graphics device
plot(lm(Bwt~Hwt))
summary(lm(Bwt~Hwt))

# The predictor vector.
a <- data.frame(x = 170)
result <- predict(relation,a)
print(result)
res <-resid(relation)
par(mfrow=c(1,1))
plot(Bwt, res,ylab="Residuals", xlab="Bwt",pch = 19)
abline(0, 0)

# d)
predict(lm(Bwt~Hwt), data.frame(Bwt = 2.52))

