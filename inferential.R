data=read.csv("Employee Satisfaction Index.csv")
head(data) #view first few rows
summary(data) #summarise
dim(data) #view dimensions of data
str(data) #another brief overview of data
data$emp_id #to access a column of dataframe

# Visualization
plot(data) #to plot data
plot(data$satisfied) #to plot a given column

plot(data$salary,type="p") #plot in point form
plot(data$salary,type="l") #line plot
#now we add colour,title and axes labels to plot
plot(data$salary,type="p",col="red",main="Graph",xlab="Data",ylab="Frequency")

#Density plot
plot(density(data$rating),main="Density Graph",xlab="Data",ylab="Frequency",lwd=1,xlim=c(-2,7))
#lwd is line width
#xlim is used to increase graph width on right and left
#ylim is used to increase graph width top and bottom
#suppose we want to superimpose certain line on the density plot
lines(density(data$certifications),col="blue",lwd=3)
#adding legends to graph
legend("topleft",c("salary","rating"),fill=c("black","blue"))


#MEASURES OF CENTRALTENDENCY
#represents summary point or typical value of dataset
#MEAN
mymean=function(x){sum(x)/length(x)} #user defined mean
mean(data$rating)#predefined function
#sometimes data may have na values,to solve it use na.rm
mean(data$salary,na.rm = T) 

#MEDIAN
#middle value of dataset 
median(data$salary)

#MODE
#highest frequency in dataset or highest probability density for given values
install.packages("statip")
library(statip)
head(mfv(data$rating),5)#ranks observations according to their frequency

#QUANTILES
#divide data into different buckets
#eg.four quartiles with 25 percent each data
quantile(data$rating)
quantile(data$rating,0.95) #to compute a specific quantile like 95% quantile

quantile(data$rating,seq(0,1,0.2)) #to compute quantiles at cutoff of 20%


#MEASURES OF VARIABILITY
#to describe spread or dispersion of dataset
#RANGE
#describes differnce between largest and smallest data point
#bigger the range ,data is more spread
range(data$salary)

#VARIANCE
#average of square deviations about the arithmetic mean for a set of numbers
var(data$rating)

#STANDARD DEVIATION
#square root of variance
#more spread means higher deviation from mean
sd(data$rating)

#MEAN ABSOLUTE DEVIATION
#average of values of deviation around the mean for a given set of observations
mad(data$rating)


#MEASURES OF SHAPE
install.packages("tseries")
install.packages("moments")
library(tseries,moments)

#skewness
#dist. of data in which right half is mirror image of left half is symmetrical.eg. normal
#normal dist. has 0 skewness
#skewness occurs when dist. is asymmetrical

norm=rnorm(10000)
skewness(norm)
skewness(data$rating)
skewness(data$salary)

#skewness statistical test for more confidence is agostino test from moments
#agostino skewness test-gives z,p value and tests for skewness
agostino.test(norm)
#here pvalue=0.74 so we can check whether null hypothesis can be rejected or not

#kurtosis
#tells about peakness of distribution
#high and thin-leptokurtic-kurtosis value>3
#flat and spread-platokurtic-kurtosis value<3
#normal dist.-mesokurtic-kurtosis value=3

kurtosis(norm) #meso
kurtosis(data$rating) #plato
kurtosis(data$salary) #plato

#kurtosis statistical test for more confidence is anscombe test from moments
anscombe.test(norm)
#hypothesis that kurtosis is equal to 3 cannot be rejected here

anscombe.test(data$rating)
#hypothesis that kurtosis is equal to 3 is rejected here

#NORMALITY
#tests whether overall data is normal or not
#statistical test is jarque bera test from moments and time series package

jarque.bera.test(norm)
jarque.bera.test(data$rating) #here we can reject h0 that data is normal

jarque.test(norm)


#HISTOGRAM
hist(norm)
hist(norm,probability = T) #to have probab density on y axis
#we can superimpose density of lines over this histogram
lines(density(norm),lwd=2,col="red")

hist(data$rating,probability = T)
lines(density(data$rating),lwd=2,col="green")
#hence kurtosis is different than normal dist


