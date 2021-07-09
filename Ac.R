#TASK-1

#Prediction using Supervised Machine Learning
#Linear Regression with two variables


library(readxl)
w= read_excel("C:/Users/yashi/Downloads/linear regression.xlsx")
w
#assigning required data to variables for better effiency in future
h<-w$Hours
s<-w$Scores

#Creating Linear MOdel
lr<-lm(formula=s~h)
lr
#plotting the 2 variables and display linear regression
plot(h,s,main="Hours vs Scores",ylab="Scores",xlab="Hours")
abline(r)

#Comparing Actual vs Predicted values
Actual<- w$Scores
newHours<-data.frame(h)
Predicted<-predict(lr,newHours)
cblind(Actual,Predicted)

#What will be predicted score if a student studies for 9.25 hours/day?
test<-data.frame(h=9.25)
predict(lr,test)

#Evaluating the model - Mean Absolute Error
install.package("Metrics")
library(Metrics)
mae(Actual,Predicted)

