#1. Calculate the following

#a. With loop

sum <- 0
for (a in 5:100)
{
  sum <- sum + (a^4+5*a^3)
}

sum

# Without loop

a = 5:100
sum(a^4+5*a^3)

#b. Calculate U40 which is a series, Un =Un-1 + Un-2 , with U1 = 1 and U2 = 2

u <- 1:2

for( i in 3:40)
{
  u <- append(u, u[i-1] + u[i-2])
}
u[40]

#c. Write a program to calculate cos x, sin x(Taylor series), Get the input(x) from the user and n=45

library(pracma)
x <- as.numeric(readline(prompt="Enter value of x: "))
n = 45
taylor(cos, x, n)
taylor(sin, x, n)

#d. Create a vector of the values of ex cos(x) at x = 3, 3.1, 3.2, . . . , 6

x <- seq(3, 6, by=0.1)
result <- exp(x)*cos(x)
result

#e. x <- 1:300. How many numbers in x are divisible by 2? (Use the modulo operator: %% )

s = 0
for (i in 1:300)
{
  if (i %% 2)
  {
    s = s + 1
  }
}

s

#2. Solve the following system of linear equations using Gaussian elimination (Ax=y)

library(matlib)
A <- matrix(c(1, 2, 3,
              2, -1, 2,
              3,  3, 1), 3, 3, byrow=TRUE)
b <- c(9, -3, 5)
result <- gaussianElimination(A, b)
result
paste("Result is x =",result[10],' y = ', result[11], ' z =',result[12])

#3. Use outer function to create the following matrix

row <- 0:4
col <- 0:4
outer(col, row, "+")

#4. 
#a. Data Source detail(Ex: Link)
library(tidyverse)
dataset <- read_csv("covid_19_data.csv")
chinaCovidDataSet <- dataset
chinaCovidDataSet

#b. Explain the Unit & Necessity of each variable

#ObservationDate: specify the observed date of covid19
#Province/State: specify the province or state of covid19
#Country/Region: specify the country or region of covid19
#Last Update: the date that they lastly update the case
#Confirmed: specify number of confirmed case of covid-19
#Deaths: specify number of death with covid-19 
#Recovered: specify number of recovered from covid-19

names(chinaCovidDataSet)

#c. Find the missing values(rows & columns) and replace them with mean(Tidy Dataset)

chinaCovidDataSet[] <- lapply(chinaCovidDataSet, function(a) { 
  a[is.na(a)] <- mean(a, na.rm = TRUE)
  a
})
chinaCovidDataSet

#d. Generate the two new variables(Var1:Mean, Var2: Median from available variable)

chinaCovidDataSet %>% mutate(Mean = mean(Confirmed),Median = median(Confirmed))

#e. Rename the two existing variables

chinaCovidDataSet %>% rename( Date = ObservationDate,Total_Case_Comfirmed = Confirmed)

#f. Create a plot using following instructions (using 7 layers of Grammar of Graphics)

# i. Choose x and y axis(aes) 

# ObservationDate as x and Confirmed as y

data <- chinaCovidDataSet %>% count(ObservationDate, wt = Confirmed)
ObservationDate <- data[['ObservationDate']]
Confirmed <- data[['n']]
data

# ii. geom_point() - specify the parameters, size : 5, color: red, alpha: 1/5 

library(ggplot2)
gp = geom_point(alpha = 1/5, color = "red", size = 5)
gp
p <- ggplot(x = data, mapping = aes(x = ObservationDate, y = Confirmed)) + gp
p

# iii. Use Facet grid, cartesian coordinates & geom_smooth()

p + facet_grid(Confirmed)
p + coord_cartesian(expand = FALSE)
p + geom_smooth()

# iv. Assign the title to x, y and graph 

p <- p + ggtitle("Number of death reported in England: ") +
  xlab("Date") + ylab("Number of death with postivive cases")
p

# v. Export the graph to your working directory with the title called "covid_19_ dataset.png"

ggsave(filename = "./covid_19_dataset.png", units = "cm", width = 25, height = 25)
