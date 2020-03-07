print("vector ---------------------------------")
x <- 1:10
print(x)
print(class(x))

print("list -----------------------------------")
x <- list(1:10, "a")
print(x)
print(class(x))

print("adding vector---------------------------")
x <- 1:10
y <- 2
z <- x + y
print(z)
print(class(z))

print("cleaning--------------------------------")
x <- 1:10
x[x <= 5] <- 0
print(x)
print(class(x))
