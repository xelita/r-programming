# Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code:
library(datasets)
data(iris)

# Question 1
# There will be an object called 'iris' in your workspace.
# In this dataset, what is the mean of 'Sepal.Length' for the species virginica?
# (Please only enter the numeric result and nothing else.)
question1 <- function() {
  x <- iris
  x <- x[x$Species == "virginica", ]
  mean(x$Sepal.Length)
}
print(question1())

# Question 2
# Continuing with the 'iris' dataset from the previous Question, 
# what R code returns a vector of the means of the variables 
# 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
question2 <- function() {
  apply(iris[, 1:4], 2, mean)
}
print(question2())

# Load the 'mtcars' dataset in R with the following code
library(datasets)
data(mtcars)

# Question 3
# There will be an object names 'mtcars' in your workspace.
# How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
question3 <- function() {
  sapply(split(mtcars$mpg, mtcars$cyl), mean)
}
print(question3())

# Question 4
# Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
question4 <- function() {
  hpAvg <- sapply(split(mtcars$hp, mtcars$cyl), mean)  
  hpAvg["8"] - hpAvg["4"]
}
print(question4())

# Question 5
# If you run
# debug(ls)
# what happens when you next call the 'ls' function?
question5 <- function() {
  "Execution of 'ls' will suspend at the beginning of the function and you will be in the browser."
}
print(question5())







