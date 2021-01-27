#1. Write a R code to Generate 6X6 matrix 
#(A) using the random numbers between 1 to 100 generate another 6x6 matrix 
#(B) using random numbers between 500 to 600.

a <- sample(1:100)
b <- sample(500:600)
A <- matrix(a, nrow = 6, ncol = 6)
B <- matrix(b, nrow = 6, ncol = 6)

# a. Find the range of matrices A and B.

range(A)
range(B)

# b. Find the max value from each row of the matrices A and B.

apply(A, 1, max)
apply(B, 1, max)

# c. Find the diagonal values of matrices A&B.

x <- A / B
diag(t(x))

# d. Multiply matrices A and B

A %*% B

# e. Replace the 4th row of Matrix A with diagonal values of matrix B

A[4] <- diag(t(B))

# f. Multiply matrices A & B and store the values on X.

X <- A %*% B

# g. Divide the matrix A with matrix B.

A/B


# 2. Create a table using dataframe/tibble with the following categories(a to f) 

# a. First name,

fn <- c("Johny","Ben","Sopheap","Pisith","Oudom","Meyly","Sovan","Sara","Sophon","Samnang")

# b. Second Name,

sn <- c("Bill","Sopher","Ly","Som","Pitou","Lee","Pit","Pich","Toch","So")

# c. Age,

age <- c(30,31,23,14,17,28,22,20,21,18)

# d. Occupation,

ocp <- c("Teacher","Policeman","Student","Student","Student","Admin","Student","Student","Student","Student")
  
# e. Place,

pla <- c("US","AUS","CAM","CAM","CAM","THAI","CAM","CAM","CAM","CAM")  

# f. Random numbers( between 1 to 10)  

rn <- sample (1:10, 10, replace = TRUE )
datatab <- data.frame(FirstName = fn, SecondName = sn, Age = age, Occupation = ocp, Place = pla, RamdomNumbers = rn)
datatab

# g. Extract the last column (f)

lastcol <- datatab$rn

# h. Find the sum, mean and length of the extracted column

sum(lastcol)
mean(lastcol)
length(lastcol)


#3. Create a .txt file (Minimum : 150 words) with the latest news (In English) in cambodia from the official news agency’s website (Note: Include the reference link) 
# a. Read the .txt file

library(tokenizers)
data <- read.delim("camnews.txt")

# b. Perform the Tokenization & count the words

words <- paste0(data)
token <- tokenize_words(words)
count <- count_words(words)
count

# c. Identify the most repeated word and replace that word with “KIT”

mw <- names(table(token))[as.vector(table(token))==max(table(token))]
mwcount <- max(table(token))
rep <- gsub("the","KIT",token)
mw
mwcount
rep

# d. Perform the Sentiment analysis

# e. Plot the graph between “words count” and “words” using geom_col()

  # e.1. X-axis title =“Number of words”, Size=10, Bold, Text in Blue color, Center, space between graph and title = 20.

  # e.2. Y-axis title =“List of words”, Size=10, Bold, Text in Red color, Center, space between graph and title = 20.

  #  e.3. Graph title =”Text Mining using R”,Size = 25, Bold, Center, Text in Yellow color, space between graph and title = 25.



# 4. Find the assigned Dataset from the list below and perform the following 

  # a. Import and Clean the dataset.

library(tidyverse)
data <- read_csv("https://github.com/fivethirtyeight/data/blob/master/mueller-polls/mueller-approval-
polls.csv")
data[] <- lapply(dataset, function(a)
  {
  a[is.na(a)] <- mean(a, na.rm = TRUE)
  a
})
data

  # b. Find the x and y variables(axis) from the assigned dataset and give the reason for selecting the x and y axis.

#Select "Pollster" as X & select "Approve" as Y because we could know the number of approve from each pollster of each poll 

plot <- ggplot(data,aes(x=pollster,y=apprive)) + xlab("Pollster") + ylab("Number of Approve") 

  # c. Plot the graph using geom_col()  

plot <- plot + geom_col()

  # perform the linear model in statistics.

plot <- plot + geom_smooth(method = "lm")
plot

  # d. Perform the facet with the available columns(Choose the any two variables from the columns)
  
# choose Approve (Republican) & Approve (Democrat)

plot + facet_grid(Total_approved)

  # e. Use the theme layer to do the following (Note: Based on dataset, name the x and y axis & graph)
   
    # e.1. x-axis title =“________”, Size=10, Bold, Text in Green color, Center, space between graph and title = 20.
    # e.2. y-axis title =“________”, Size=10, Bold, Text in Yellow color, Center, space between graph and title = 20.
    # e.3. Graph title =”_________”,Size = 25, Bold, Center, Text in Blue color, space between graph and title = 25.

plot <- plot + ggtitle("Pollster") + theme(size = 10, face = "bold", color = "green", margin = margin(t=20,r=20,b=0,l=0))
axis.title.y=element_text(size=10, color="yellow", face="bold", margin=margin(t=0,r=20,b=0,l=20))
plot.title=element_text(size=25, color="blue", face="bold", margin=margin(t=25,r=0,b=25,l=0))
plot
    