print("subsetting basics ----------------------")
x <- c("a", "b", "c", "c", "d", "e", "e", "e")
y <- x > "c"
print(x[y])

print("subsetting lists -----------------------")
x <- list(k = 1:3, v = 4:6)
print(x[1])
print(x[[1]])
print(x$k)

print(x[2])
print(x[[2]])
print(x$v)

print("subsetting nested elements inlists -----")
x <- list(a = list(1, 2, 3), b = list(4,5,6))
print(x[[c(1,3)]])
print(x[[c(2,1)]])

print("subsetting matrix ----------------------")
x <- matrix(1:6, 2, 3)
print(x)
print(x[1,3])
print(x[2,1])
print(x[1,])
print(x[2,])
print(x[,1])

print("subsetting with names (partial matchig)-")
x <- list(ben = 1:10)
print(x$be)
print(x[["be", exact = FALSE]])

print("removing NA values ---------------------")
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x <- x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
print(x[good])
print(y[good])