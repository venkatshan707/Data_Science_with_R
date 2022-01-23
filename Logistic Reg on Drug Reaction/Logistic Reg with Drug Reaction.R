#day5
#Logistic Regression with Training & Testing concepts
install.packages(c("ggplot2","lattice","caret","e1071"))
install.packages("MASS")
install.packages("caTools")

library(MASS)
library(caTools)
library(psych)
library(ROCR)

#pima.te= read.csv("..............")

data("Pima.te")
#pima<- Pima.te
View(Pima.te)

head(Pima.te)
tail((Pima.te))
summary(Pima.te)
library(psych)
describe(Pima.te)
describe(Pima.te$glu)
describe(Pima.te$bp)
View(Pima.te)
hist(Pima.te$bp,col="Yellow")
boxplot(Pima.te$bp)

#approach 1 to split data
set.seed(15)

split<-sample.split(Pima.te,SplitRatio = 0.80)
#
split
training<-subset(Pima.te,split==TRUE)
View(training)
testing<-subset(Pima.te,split==FALSE)
View(testing)

#divide the data into training & testing data
#instead of using library caTools and splittin the data 
id<-sample(2,nrow(Pima.te),prob = c(0.8,0.2),replace= TRUE)
id

training<-Pima.te[id==1,]
testing<-Pima.te[id==2,]

#generalised linear model
# ~. means all the predictor variables
Pima.te$type

model<- glm(type ~.,training,family="binomial")
summary(model)

model <-lm(Price~.,data=tra)

library(ROCR)
res4<-predict(model1,training,type="response")
res4

ROCRPred <-prediction(res4,training$type)
ROCRPref<-performance(ROCRPred,"tpr","fpr")
plot(ROCRPref,colorize=TRUE,print.cutoffs.at=seq(0.1,by=0.1))


res<-predict(model,testing,type="response")
res
table(ActualValue=testing$type,PredictedValue = res>0.5)

model1<- glm(type ~.-bp,training,family="binomial")
summary(model1)
res1<-predict(model1,testing,type="response")
table(ActualValue=testing$type,PredictedValue = res1>0.5)

model2<- glm(type ~.-skin,training,family="binomial")
summary(model2)

res2<-predict(model2,testing,type="response")
table(ActualValue=testing$type,PredictedValue = res2>0.5)

model3<- glm(type ~.-skin-bp-age,training,family="binomial")
summary(model3)

res3<-predict(model2,testing,type="response")
table(ActualValue=testing$type,PredictedValue = res3>0.5)
