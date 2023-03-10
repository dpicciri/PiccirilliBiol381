x<-1.1
a<-2.2
b<-3.3
## Problem 1

z<-x^a^b
print(z)
### 3.61714
z<-(x^a)^b
print(z)
### 1.997611
z<-3*(x^3)+2*(x^2)+1
print(z)
### 7.413

c(seq(1,8),seq(7,1))
#### output: 1 2 3 4 5 6 7 8 7 6 5 4 3 2 1

rep(1:5,c(1,2,3,4,5))
#### output:1 2 2 3 3 3 4 4 4 4 5 5 5 5 5

rep(5:1, c(1,2,3,4,5))
#### output:5 4 4 3 3 3 2 2 2 2 1 1 1 1 1

set.seed(0)
v<-runif(2)
y<-v[1]
x<-v[2]
r<- sqrt((x^2)+(y^2))
print(r)
#### output:0.9351795
theta<- atan(y/x)
print(theta)
#### output:1.282925

queue<-c("sheep","fox","owl","ant")
queue<-append(queue,"serpent")
queue<-queue[-1]
queue<-append(queue,"donkey",0)
queue<-queue[-5]  
queue<-queue[-3] 
queue<-append(queue,"aphid",2)


print(queue)
#### output:"donkey" "fox" "aphid"  "ant"
which(queue=="aphid")
##### aphid is in the 3rd spot


v<- (1:100)
which(v%%2!=0 & v%%3!=0 & v%%7!=0)
1  5 11 13 17 19 23 25 29 31 37 41 43 47 53 55
59 61 65 67 71 73 79 83 85 89 95 97