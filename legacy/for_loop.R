## Simple for loops
x <- 1:10
print(x)

for(i in x) {
  print(paste("content is", i))
}

for(i in 1:4) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(paste("element at index", i, "is" , x[i]))
}

## Nested for loops
x <- matrix(1:6, 2, 3)
print(x)

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}
