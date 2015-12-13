path <- "~/Documents/dev/projects/r-programming"
filePath <- paste(path, "/data.csv", sep = "")

## In the dataset provided for this Quiz, what are the column names of the dataset?
x <- read.table(filePath, sep = ",")
print(x[1, ]) 
## res: Ozone Solar.R Wind Temp Month Day

## Extract the first 2 rows of the data frame and print them to the console.
## What does the output look like?
x <- read.csv(filePath)
print(x[1:2, ])

## How many observations (i.e. rows) are in this data frame?
x <- read.csv(filePath)
print(dim(x)[1]) 
## res: 153

## Extract the last 2 rows of the data frame and print them to the console.
## What does the output look like?
x <- read.csv(filePath)
print(x[152:153,]) 

## What is the value of Ozone in the 47th row?
x <- read.csv(filePath)
print(x$Ozone[47]) 
## res: 21

## How many missing values are in the Ozone column of this data frame?
x <- read.csv(filePath)
bad <- is.na(x$Ozone)
print(dim(x[bad,])[1]) 
## res: 37

## What is the mean of the Ozone column in this dataset? 
## Exclude missing values (coded as NA) from this calculation.
x <- read.csv(filePath)
x <- x[!is.na(x$Ozone), ]
print(mean(x$Ozone)) 
## res: 42.12931

## Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
## What is the mean of Solar.R in this subset?
x <- read.csv(filePath)
x <- x[x$Ozone > 31, ]
x <- x[x$Temp > 90, ]
x <- x$Solar.R[!is.na(x$Ozone)]
print(mean(x))

## What is the mean of "Temp" when "Month" is equal to 6?
x <- read.csv(filePath)
x <- x[x$Month == 6, ]
x <- x$Temp[!is.na(x$Temp)]
print(mean(x))
## res: 79.1

## What was the maximum ozone value in the month of May (i.e. Month = 5)?
x <- read.csv(filePath)
x <- x[x$Month == 5, ]
x <- x$Ozone[!is.na(x$Ozone)]
print(max(x))
## res: 115

