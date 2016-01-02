## Generating Random Numbers

# rnorm: random distribution
x <- rnorm(10)
print(x)

# rnorm with a mean and a standard deviation
x <- rnorm(10, 20, 2)
print(x)

# Setting the random number seed with set.seed ensures reproducibility
set.seed(1)
x <- rnorm(5)
print(x)

x <- rnorm(5)
print(x)

set.seed(1)
x <- rnorm(5)
print(x)

# Generating Poisson data
print(rpois(10, 1))
print(rpois(10, 2))
print(rpois(10, 20))

# cumulative distribution
print(ppois(2, 2))
print(ppois(4, 2))
print(ppois(6, 2))