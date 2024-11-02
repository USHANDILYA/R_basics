#creating a vector using c() function
v=c(1,2,3,4,'a')
v
head(v) #print first few elements of vector
tail(v) #print last few elements of vector

#creating vector using colon operator and numeric data
v1=5:13 #creating a sequence from 5-13 assigning it to v1
v1

#creating sequence using seq function
v2=seq(5,9,by=0.4) #seq(start,end,gap)
v2
v3=seq(1,10,length=5) #this will produce sequence of 5 numbers from 1 to 10
v3

#vector manipulation
#vectors of same length can be added,sub,mul,div
v4=c(1,5,6)
v5=c(2,3,4)
v4+v5 #this adds index wise elements of both
#vector element recycling
v4+v3

#vector element sorting
v6=c(1,9,2,5,4,6)
sort(v6)
sort(v6,decreasing = T) #sort in decreasing order
color=c("red","blue","green")
sort(color) #sorts alphabetically bgr

#indexing the vectors i.e accessing a particular element
color[1]
color[1:3] 
color[c(1,3)] #access only first and third element
color[-c(1,3)] #exclude first and third element




