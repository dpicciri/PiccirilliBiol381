#Homework 10
#DAP 
# April 5, 2023

d<-(c(0, 5,6 ,7, 8, 1, 3, 0, 0, 0, 9, 6, 4, 2, 3, 4, 5, 6, 7, 0, 0))
counter<- 0 
# find the number of zeros in the list numbers
for(i in 1:length(d)){
  if (d[i]==0){
counter<-  counter+1
  }}

# find how many zeros are in the list again

zeros<- d[d==0]
length(zeros)

new_matrix<-function(i, j){
d<- matrix(runif(i*j), nrow = i, ncol=j)

for(i in 1:nrow(d)){
  for(j in 1:ncol(d)){
    d[i,j]<- i*j
  }
}
return(d)
}

new_matrix(4,5)


# ------------Question #3------------------
library(tidyverse)
# generate random data and take the means of the new random data
x<-abs(rnorm(runif(20)))
y<-abs(rnorm(runif(20)))
z<-abs(rnorm(runif(20)))
mean_x<-mean(x)
mean_y<-mean(y)
mean_z<-mean(z)

d<-data.frame(x,y,z)

# function to reshuffle the data
shuffle_data<- function(d) {
  d<- pivot_longer(d, cols=c(x,y,z), names_to= "Group", values_to="Response")
  # pivot the data
d[,2]<- sample(d$Response)

d<-group_by(d,Group)
mean<- summarize(d, Mean=mean(Response))
}
shuffle_data(d)

d_new<- data.frame(ID=1:100,
                   mean_x,
                   mean_y,
                   mean_z)
# make new data frame with the means of the original random data
for (i in 1:100){
  new_means<- shuffle_data(d)
  d_new[i,2]<- new_means[1,2]
  d_new[i,3]<- new_means[2,2]
  d_new[i,4]<- new_means[3,2]
  
}
print(d_new)


##### Graph Data ##### 
library(ggplot2)
ggplot(d_new, aes(x=mean_x))+ geom_histogram() 
# histogram of x mean
ggplot(d_new, aes(x=mean_y))+ geom_histogram() 
# histogram of y mean
ggplot(d_new, aes(x=mean_z))+ geom_histogram() 
# histogram of z mean
