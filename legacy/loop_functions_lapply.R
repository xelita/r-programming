## lapply with an existing function
res = lapply(1:10, sqrt)

## lapply with a user defined function
res = lapply(1:10, function(item) item ^ 2)