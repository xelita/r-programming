## Date usage
x <- as.Date("1970-01-01")
print(x)
print(quarters(x))
print(unclass(x))

## Time usage
x <- Sys.time()
print(x)

p <- as.POSIXlt(x)
print(p$hour)

## Dates difference
x <- as.Date("2016-06-01")
y <- as.Date("2016-01-01")
print(x - y)