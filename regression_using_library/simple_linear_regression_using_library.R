data<-read.csv('Salary_Data.csv',header = TRUE)

library('caTools')
set.seed(1)
split<-sample.split(data$Salary,SplitRatio = 2/3)
test_data<-subset(data,split==TRUE)
training_data<-subset(data,split==FALSE)

regerssor<-lm(formula <- Salary~YearsExperience,data = data)
y_pred=predict(regerssor,newdata <- test_data)



