print("NaN is a NA -----------------------------")
x <- NaN
print(x)
print(is.na(x))

print("NA is not a NaN -------------------------")
x <- NA
print(x)
print(is.nan(x))

print("on vectors ------------------------------")
x <- c(1, 2, 3, NA, NaN, 6)
print(x)
print(is.na(x))
print(is.nan(x))