source("check.R")

# 4 Ranking hospitals in all states
rankall <- function(outcome, num = "best") {
  ## Read oucome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ## Check that outcome is valid
  outcomeIndex <- checkOutcome(outcome)
  
  # Cleaning data (removing not available values)
  data <- data[data[[outcomeIndex]] != 'Not Available' ,]
  
  # Rate is a numeric value
  data[, outcomeIndex] <- as.numeric(data[, outcomeIndex])
  
  ## For each state, find the hospital of the given rank
  s <- split(data[, c(2, outcomeIndex, 7)], data$State)
  l <- lapply(s, function(x) {
    # Sorting by names (ASC)
    x <- x[order(x[[1]]), ]
    
    # Sorting by rates (ASC)
    x <- x[order(x[[2]]), ]
    
    # Returning the hospital with the given rank
    numIndex = num
    if(num == "best") {
      numIndex = 1
    } else if(num == "worst") {
      numIndex = nrow(x)
    }
  
    x[numIndex, c(1, 3)]
  })

  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
  f <- data.frame(matrix(unlist(l), ncol = 2, byrow = TRUE))
  colnames(f)[1] <- "hospital"
  colnames(f)[2] <- "state"
  
  f
}










