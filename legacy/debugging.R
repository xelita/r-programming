## traceback
## By default traceback() prints the call stack of the last uncaught error
tracebackTest <- function() {
  # mean(x)
  # traceback() 
}

## Debug
debugTest <- function() {
  debug(lm)
  lm(x - y)  
}

## recover
recoverTest <- function() {
  options(error = recover)
  read.csv("unknown.csv") 
}