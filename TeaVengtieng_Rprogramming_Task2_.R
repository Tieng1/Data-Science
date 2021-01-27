
#1 Object x <-1:15 
#Construct a 5x3 matrix for the value of x. 

x <- matrix(1:15, 5, 3) #matrix(num,row,col)
print(x)
  
#2 Write a program to generate the following 4x4 matrix 
#0 0 0 0 
#0 0 0 0 
#0 0 0 0 
  
a <- matrix(0, 4, 4)
a

#3 The object x<-1:8 
#Write a program to generate the following 3x8 matrix using "cbind(),rbind(),rev(),rep()" 
#1 2 3 4 5 6 7 8 
#8 7 6 5 4 3 2 1 
#3 3 3 3 3 3 3 3 
  
x <- 1:8
y <- rev(x)
z <- rep(3, each=8)

rbind(x,y,z)
  
#4 Chose two different(x,y) 4x4 matrix to perform the following arithmetic operations 

x <- matrix(11:20, 4, 4)
y <- matrix(21:30, 4, 4)

#(a). x + y 

print('(ans). x + y')
a <- x + y
a

#(b). x - y 

print('(b). x - y')
b <- x - y
b

#(c). x*y 

print('(b). x * y')
c <- x * y
c

#(d). x%*%y 

print('(d). x%*%y')
d <- x%*%y
d

#(e). Difference between (c) &(d) 

e <- c - d
e

#(f). Inverse of y 

print('(f). Inverse of y')
solve(y)
print('Error occured')

#(g). z<-x/y 

print('(g). z<-x/y')
z <- x / y
z

#(h). Transpose of z 

print('(h). Transpose of z')
h <- t(z)
h

#(i). Diagonal of transpose matrix 

print('(i). Diagonal of transpose matrix')
dotm <- diag(h)
dotm
  
#5 Difference between (i) & (ii) 
#(i). x<-matrix(x<-1:9,3,3,byrow = TRUE) 
#(ii). x<-matrix(x<-1:9,3,3) 

i <- matrix(x<-1:9,3,3,byrow = TRUE)
ii <- matrix(x<-1:9,3,3)  

diff <- i - ii
diff

#6 Which function can we use for inner product and outer product in matrix calculation? 

print('Inner Product use A %*% B')
print('Outer Product use A %o% B')

#7 Explain the use of all.equal() function in Matrix with a sample program. 

print('all.equal(x,y) function is utility to compare R object x and y testing "near equality".')
x <- matrix(11:20, 4, 4)
y <- matrix(21:30, 4, 4)

all.equal(x,y)

#8 Explain the use of dim() function with a sample program. 

print('dim() function gets or sets the dimension of a matrix, array or data frame.')
x <- matrix(1:12, 3, 4)
dim(x)

#9 Use of $ operator, and square brackets [] in List with example program.

print('Dollar sign ($) is used to subset the data if the elements are named.')
print('Square brackets [] is used to subset the data either the elements are named or not.')

df <- data.frame(cilantro = c('good food', 'taste good'), potato = c('bad food', 'taste bad'))
df[2]
df$cilantro

#10 Explain ifelse() with example. 
  
print('ifelse() is used to check and execute based on the condition')

authorized <- c('tieng', 'vengtieng', 'teavengtieng')
accessed <- FALSE
name <- readline(prompt="Enter your name: ")

for (i in authorized)
{
  if(name == i)
  {
    accessed <- TRUE
    break
  }
}

if(accessed)
{
  print("Welcome!")
}else {
  print('Wrong name')
}

#11 Write a program to get the weight and height from the user to calculate the following cases 
#a. If your BMI is less than 18.5, it falls within the underweight range. 
#b. If your BMI is 18.5 to <25, it falls within the normal. 
#c. If your BMI is 25.0 to <30, it falls within the overweight range. 
#d. If your BMI is 30.0 or higher, it falls within the obese range.
  
print("Check whether your weight is normal!")
weight <- as.numeric(readline(prompt="Enter your weight(kg): "))
height <- as.numeric(readline(prompt="Enter your height(m): "))
BMI <- (weight/(height)^2)
round(BMI, 1)
BMI

if(BMI >= 30){
  print("obese")
}else if(BMI >=25){
  print("overweight")
}else if(BMI >=18.5){
print("normal")
}else
print("underweight")


#12 Difference between List and Data frame with an example program. 

print('R list data type refers to an object consisting of an ordered collection of elements. The elements may be of different mode or type.')
print('R data frame is a powerful data type, especially when processing table (.csv). It can store the data as row and columns according to the table. The difference between data frame and list is that the column data of data frame may be of different modes and attributes.')
  
df <- data.frame(cilantro = c('bad food', 'taste bad'), salad = c('healthy', 'taste good'))
ls <- list(cilantro = c('bad food', 'taste bad'), salad = c('healthy', 'taste good'))
print("data frame: ")
df
print("list: ")
ls

#13 Difference between repeat and while loop with example program. 

print('Repeat loop just repeats a block of code indefinitely. In this loop, no condition checking is performed in order to end the loop.To stop repeating the loop, you must put a condition explicitly inside it with break statement. Failing to do so will create an infinite/endless loop.')
print('While loop is used when you want to perform a task indefinitely, until a particular condition is met.')

a <- 10
repeat {
  print(a)
  if (a == 5)
    break
  a <- a-1
}


a <- 10
while (a){
  if (a %% 3 == 0)
    print(a)
  a <- a-1
}




