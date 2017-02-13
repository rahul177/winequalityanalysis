path<-"C:/Users/Rahul Kumar/Desktop/Singulariti"
setwd(path)
data<-read.csv("winequality-red.csv",sep=";",header=TRUE)
str(data)
summary(data)
table(is.na(data))
colSums(is.na(data))
library(caret)
n=nrow(data)
data1= sample(1:n, size = round(0.7*n), replace=FALSE)
train = data[data1,]
test = data[-data1,]
library(rpart)
set.seed(333)
buildmodel<-rpart(quality~.,data=train,method="class")
library(rpart.plot)
rpart.plot(buildmodel)
prediction<-predict(buildmodel,newdata=test,type="class")
library(caret)
library(e1071)
confusionMatrix(prediction,test$quality)

