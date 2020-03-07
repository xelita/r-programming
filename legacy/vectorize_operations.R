print("adding operations-----------------------")
x <- 1:3
y <- 4:6
z <- x + y
print(z)

print("multiply operations---------------------")
x <- 1:3
y <- 4:6
z <- x * y
print(z)

print("dividing operations---------------------")
x <- c(2,4,6,8)
y <- c(2,4,6,8)
z <- x / y
print(z)

print("logical operations ---------------------")
x <- 1:10
y <- x > 5
z <- x[y]
print(y)
print(z)