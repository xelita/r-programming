path <- "~/Documents/dev/projects/r-programming"
filePath <- paste(path, "/data.csv", sep = "")

print("Reading from file --------------------------")
x <- read.table(filePath, TRUE, ",")
print(x)

print("Reading from CSV ---------------------------")
x <- read.csv(filePath)

print("CSV header ---------------------------------")
print(names(x))

print("First 2 rows -------------------------------")
