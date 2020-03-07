print("factors ---------------------------------")
x <- factor(c("yes", "yes", "no"))
print(x)
print(class(x))

print("counting --------------------------------")
y <- table(x)
print(y)

print("unclass  --------------------------------")
y <- unclass(x)
print(y)

print("factor levels ---------------------------")
x <- factor(c("yes", "yes", "no"), levels = c("yes", "no"))
print(x)
print(class(x))