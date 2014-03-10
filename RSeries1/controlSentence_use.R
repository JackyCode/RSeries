## This R Script tells how to use the `Control Sentences` in R

# for loop
x <- c()
for (i in c(1, 2, 3)) x[i]<-i*i

# while loop
i <- 1
while (i <= 3) {
	x[i] <- i*i
	i <- i+1
}

# another while loop
i <- 1
while (TRUE) {
    x[i] <- i*i
    i <- i+1
    if (i > 3) break
}

# repeat loop
i <- 1
repeat {
    x[i] <- i*i
    i <- i+1
    if (i > 3) break
}

# use `lapply` function to avoid loops
i <- c(1, 2, 3)
Fun <- function(x) {
	y <- x*x
}
x <- lapply(i, Fun)

a <- matrix(1:12, nrow=4)
b <- apply(a, 1, sum)
c <- apply(a, 2, sum)

# if-else sentence
r <- 3
if (r == 4) {
    x <- 1
} else {
    x <- 3
}

# custom function
Fun <- function(x) {
	y <- x*x
}
a <- 2
b <- Fun(a)