dataset = read.csv('Salary_Data.csv')
x=dataset$YearsExperience[1:15]
y=dataset$Salary[1:15]
x2<-x*x
liner<-function(x)
{
  y=(6853.455*x)+32537.53
  return(y)
}
ploy<-function(x,x2)
{
  y=(6853.455*x)+(1172.782*x2)+20822.22
}
linear_pread<-vector()
poly_pread<-vector()
for(i in 1:15)
{
 linear_pread<-c(linear_pread,liner(x[i]))
  
}
for(i in 1:15)
{
  poly_pread<-c(poly_pread,ploy(x[i],x2[i]))
}