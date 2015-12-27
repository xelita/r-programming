## lapply with an existing function
res <- lapply(1:10, sqrt)
print(res)

## lapply with a user defined function
res <- lapply(1:10, function(item) item ^ 2)
print(res)

## mapply
res <- mapply(rep, 1:4, 1:4)
print(res)

## mapply
res <- mapply(rep, 1:4, 1:4)
print(res)

## tapply
f <- gl(3, 10)
print(f)

## split
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
res <- split(x, f)
print(res)
