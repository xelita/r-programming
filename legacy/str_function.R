## Summary of a method
str(lm)

## Summary with summary function
x <- rnorm(100, 2, 4)
print(summary(x))

## Show what the data look like
x <- rnorm(100, 2, 4)
str(x)

## On a dataset: give more information than head function
library(datasets)
str(airquality)

## On a matrix
m <- matrix(rnorm(100), 10, 10)
str(m)

## Using the split function on a dataframe gives several data frames
s <- split(airquality, airquality$Month)
str(s)



