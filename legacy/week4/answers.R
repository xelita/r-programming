# Question 1
# What is produced at the end of this snippet of R code?
question1 <- function() {
    set.seed(1)
    rpois(5, 2)
}
print(question1())

# Question 2
# What R function can be used to generate standard Normal random variables?
question2 <- function() {
  "rnorm"  
}
print(question2())

# Question 3
# When simulating data, why is using the set.seed() function important?
question3 <- function() {
  "It ensures that the sequence of random numbers starts in a specific place and is therefore reproducible."  
}
print(question3())

# Question 4
# Which function can be used to evaluate the inverse cumulative distribution function for the Poisson distribution?
question4 <- function() {
  "qpos"  
}
print(question4())

# Question 5
# What does the following code do?
question5 <- function() {
  set.seed(10)
  x <- rep(0:1, each = 5)
  e <- rnorm(10, 0, 20)
  y <- 0.5 + 2 * x + e  
  "Generate data from a Normal linear model"
}
print(question5())

# Question 6
# What R function can be used to generate Binomial random variables?
question6 <- function() {
  "rbinom"
}
print(question6())


# Question 7
# What aspect of the R runtime does the profiler keep track of when an R expression is evaluated?
question7 <- function() {
  "the function call stack"
}
print(question7())

# Question 8
# Consider the following R code
# library(datasets)
# Rprof()
# fit <- lm(y ~ x1 + x2)
# Rprof(NULL)
# (Assume that y, x1, and x2 are present in the workspace.) 
# Without running the code, what percentage of the run time is spent in the 'lm' function, based on the 'by.total' method of normalization shown in 'summaryRprof()'?
question8 <- function() {
  "100%"
}
print(question8())

# Question 9
# When using 'system.time()', what is the user time?
question9 <- function() {
  "It is the time spent by the CPU evaluating an expression"
}
print(question9())

# Question 10
# If a computer has more than one available processor and R is able to take advantage of that,
# then which of the following is true when using 'system.time()'?
question10 <- function() {
  "elapsed time may be smaller than user time"
}
print(question10())