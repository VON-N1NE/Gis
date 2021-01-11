#### Linear Regression for 33 boroughs

data <- read.csv("C:/Users/98001/Desktop/R/data.csv",encoding="UTF-8")


data2 <- data[,-1]

     
fit <- lm(Pedal.cyclist.casualty.rate~.,data2)
summary (fit)


set.seed(123)
train <- sample (1:nrow(data2), round(0.7*nrow(data2), 0))
data_train <- data2[train,]
data_test <- data[-train,]

fit <- lm(Pedal.cyclist.casualty.rate~., data=data_train)
summary(fit)

pre <- predict(fit, data_test)

plot(data_test$Pedal.cyclist.casualty.rate, type="o",
     
     ylim = c(0,2000), lwd = 2.5,
     ylab = "The number of pedal cyclist casualty rates per million population", pch=16,
     xlab = "30% of total pedal cyclist casualty rates data from 2015 to 2019 of 33 boroughs in Greater London")
points(pre, col="red", lwd=2.5, type="o", pch=16)
title("Comparison of linear regression predictive values and true values")
legend("topright", legend=c("True value","Predictive value"), col=c("black","red"), lty=1, lwd=2.5)



#### Linear Regression for group 1


data3 <- read.csv("C:/Users/98001/Desktop/R/data-group1.csv",encoding="UTF-8")


data_group1 <- data3 [,-1]

     
     
fit3 <- lm (Pedal.cyclist.casualty.rate~.,data_group1)
summary (fit3)


#### Linear Regression for group 2


data4 <- read.csv("C:/Users/98001/Desktop/R/data-group2.csv",encoding="UTF-8")


data_group2 <- data4[,-1]

     
fit4 <- lm(Pedal.cyclist.casualty.rate~.,data_group2)
summary (fit4)

















