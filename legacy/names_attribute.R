print("Names ----------------------------------")
x <- 1:3
print(x)
print(names(x))

names(x) <- c("A", "B", "C")
print(x)
print(names(x))

print("Names on lists -------------------------")
x <- list( A = 1, B = 2, C = 3)
print(x)
print(names(x))

print("Names on matrix ------------------------")
x <- matrix(1:6, nrow = 2, ncol = 3)
dimnames(x) <- list(c("ROW1", "ROW2"), c("COL1", "COL2", "COL3"))
print(x)
