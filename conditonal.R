a=4
class(a) #to check data type
b=6.2
class(b)
z=a>b
z
class(z)

v1=c("my","name","is","utkarsh")
class(v1)
summary(v1) #summarise vector
nchar(v1) #number of characters in each element of vector
v2=as.factor(c("M","F")) #creating a factor variable with 2 levels m and f
class(v2)
v2

#user defined functions
x=c(1,2,3)
mean(x) #inbuilt function to calculate mean
mymean=function(x){sum(x)/length(x)} #user defined function to calculate mean
mymean(x)

sd(x) #inbuilt function for standard deviation
mystd=function(x){sqrt(sum((x-mymean(x))^2)/(length(x)-1))} #udf to calculate sd
mystd(x) 


#conditional statements
#ifelse(condition,expression1,expression2)
gender=c("m","f","m","f")
ifelse(gender=="m",print("Male"),print("Female"))
length(gender)
for(i in 1:length(gender)){
  ifelse(gender[i]=="m",print("Male"),print("Female"))
}
