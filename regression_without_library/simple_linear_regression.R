setwd("C:/Users/jagad/OneDrive/Desktop/Machine Learning A-Z New/Part 2 - Regression/Section 4 - Simple Linear Regression")
data<-read.csv("Salary_Data.csv")
test_data_indep<-data$YearsExperience[21:30]
test_data_dep<-data$Salary[21:30]
train_data_indep<-data$YearsExperience
train_data_dep<-data$Salary

r<-cor(train_data_indep,train_data_dep)
m<-r*(sd(train_data_dep)/sd(train_data_indep))
c<-mean(train_data_dep)-(m*mean(train_data_indep))
testfun<-function(x)
{
 y<-(m*x)+c
 return(y)
}
a<-vector()
for(i in test_data_indep)
{
 a<-c(a,testfun(i))
}
for(i in 1:length(test_data_dep))
{
  cat(test_data_dep[i],"\t",a[i],"\n")
 
}





