#Problem 1
x<-3:10
n_dims<-sample(x, 1,replace=TRUE,prob=NULL) 
print(n_dims)

my_vec<-1:n_dims^2
v<-sample(my_vec)
m<-matrix(data=v,nrow=n_dims,byrow=TRUE)
print(m)
m_transposed<-t(m) #transposed the matrix

sum(c(m[1,]))#sum of row 1
mean(c(m[1,])) #mean of row 1
sum(c(m[n_dims,])) #sum of last row
mean(c(m[n_dims,]))#mean of last row

eigen_type<-eigen(m)
typeof(eigen_type$values)
typeof(eigen_type$vectors)

#Problem 2

my_matrix<-matrix(runif(16),nrow=4,ncol=4,byrow=TRUE)
print(my_matrix)

my_logical<-runif(100)<0.5
print(my_logical)

my_letters<-sample(letters,26)
print(my_letters)

liz<-list(my_matrix[2,2],my_logical[2],my_letters[2])

typeof(liz[[1]])
typeof(liz[[2]])
typeof(liz[[3]])

newvec<-c(unlist(liz))# take the values out of the list and then make a new vector 
print(newvec)
typeof(newvec)# now the vector is a character
str(newvec)

#Problem 3
my_unis<-runif(26,0,10)
my_letters<-sample(LETTERS,26)
dataframe<-data.frame(my_unis,my_letters,stringsAsFactors=FALSE)

dataframe[sample(1:26,4),1]<-NA
print(dataframe)
which(!complete.cases(dataframe))

d_frame1<-dataframe[order(dataframe$my_letters),]#order the letters in alphabetical order
print(d_frame1)

mean(complete.cases(d_frame1[1]))# take the mean without the NA in the data
