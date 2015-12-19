## Simple repeat loops
x <- 0

repeat {
  if(x == 100) {
    break
  } else if(x > 50) {
    next
  }
  print(paste("hello with number", x))
  x <- x + 1
}