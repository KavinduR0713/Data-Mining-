
library(readr)
testss <- read_csv("diabetes.csv")

names(testss)
head(testss)
tail(testss)
dim(testss)

library(caTools) 
library(dplyr) 
library(ggplot2) 
library(caret) 
library(class) 
library(corrplot) 

summary(testss)
str(testss)

standard.features = scale(testss[,1:8])

data = cbind(standard.features,testss[9])

head(data)
summary(data)
dim(data)

anyNA(data)

corrplot(cor(data[,-9]))

set.seed(550)

sample = sample.split(data$Outcome, SplitRatio = 0.70)

train = subset(data, sample==TRUE)
dim(train)
train

test = subset(data, sample==FALSE)
dim(test)
test


predicted.type = knn(train[1:9], test[1:9], train$Outcome, k=1)
predicted.type

error = mean(predicted.type!=test$Outcome)
error

confusionMatrix(predicted.type, as.factor(test$Outcome))
#The above results reveal that our model achieved an accuracy of 89.57%.

predicted.type = NULL
error.rate = NULL

for (i in 1:10){
  predicted.type = knn(train[1:9], test[1:9], train$Outcome, k=i)
  error.rate[i] = mean(predicted.type!=test$Outcome)
}

knn.error = as.data.frame(cbind(k=1:10, error.type=error.rate))
knn.error

ggplot(knn.error, aes(k,error.type))+
  geom_point()+
  geom_line()+
  scale_x_continuous(breaks = 1:10)+
  theme_bw()+
  xlab("Value of k")+
  ylab("Error")
#The above plot reveals that error is lowest when k=5

predicted.type = knn(train[1:9], test[1:9], train$Outcome, k=5)

error = mean(predicted.type!=test$Outcome)
error

confusionMatrix(predicted.type, as.factor(test$Outcome))
#Above Model gave us an accuracy of 92.17 %. 















