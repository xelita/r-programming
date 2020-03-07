checkState <- function(state, data) {
  existingState <- nrow(data[data$State == state, ]) != 0
  if(!existingState) {
    stop("invalid state")
  }
}

checkOutcome <- function(outcome) {
  validOutcomes <- list("heart attack" = 11, "heart failure" = 17, "pneumonia" = 23)
  outcomeIndex <- validOutcomes[[outcome]]
  if(is.null(outcomeIndex)) {
    stop("invalid outcome")
  }
  outcomeIndex
}
