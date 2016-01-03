source("check.R")

# 3 Ranking hospitals by outcome in a state
rankhospital <- function(state, outcome, num = "best") {
  ## Read oucome data
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ## Check that state and outcome are valid
  checkState(state, data)
  outcomeIndex <- checkOutcome(outcome)
  
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  
  # Keep only data related to the state
  stateData <- data[data$State == state, c(2, outcomeIndex)]
  stateData <- stateData[stateData[[2]] != 'Not Available' ,]

  # Rate is a numeric value
  stateData[, 2] <- as.numeric(stateData[, 2])
  
  # Sorting by names (ASC)
  sortedHospitals <- stateData[order(stateData[[1]]), ]
  
  # Sorting by rates (ASC)
  sortedHospitals <- sortedHospitals[order(sortedHospitals[[2]]), ]
  
  # Returning the hospital with the given rank
  numIndex = num
  if(num == "best") {
    numIndex = 0
  } else if(num == "worst") {
    numIndex = nrow(sortedHospitals)
  }

  result <- sortedHospitals[numIndex, 1]
  if(is.na(result)) {
    "NA"
  } else {
    result
  }
}










