## Simple function adding to number
add <- function(x, y) {
  x + y
}
two <- add(1, 1)
print(two)

## Functions can be passed as parameters
three <- add(1, add(1, 1))
print(three)

## Omit some paramters if needed
above <- function(x, y = 10) {
  x[x > y]
}
print(above(1:20))
print(above(1:20, 15))

## Lazy evaluation
sqrtLazy <- function(x, y) {
  sqrt(x)
}
print(sqrtLazy(4))

## ... argument
hello <- function(..., sep = " ") {
  print("hello")  
}
hello()