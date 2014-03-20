# dataManipulation2.R:
# --------------------
# this R Script tells some difficult data manipulation in R
#
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

# 1. use `sample` function to generate 10 different integers between -5 and 5
x <- sample(-5:5, 10)
y <- sample(-5:5, 10)
x
y
	
# 2. logical operation
x>0
all(x>0)
any(x>0)

# 3. more logical operation
x > 0 & y > 0
x > 0 | y > 0
!(x>0)
	 
# 4. use `which` function to find where 'x == y'
x == y
which(x == y)

# 5. generate 10 integers between -5 and 5
z <- sample(-5:5, 10, replace=TRUE)
z
		 
# 6. `unique` function
z.unique <- unique(z)
z.unique
		
# 7. generate a set of data within `NA`
x.na <- c(1:5, NA, 2, NA, 3:5)
x.na

# 8. `is.na` function
sum(x.na) # with `NA`
sum(is.na(x.na)) # the counts of 'NA'
sum(x.na, na.rm=TRUE) # without `NA`

# 9. `append` function
x <- append(x, sample(-5:5, 2))
x

# 10. `as.character`,`as.factor`,`as.numeric` functions
x <- as.character(x)
x

x <- as.factor(x)
x

## if you have a factor variable that also looks numeric, 
## always convert it to a character before coverting to numeric value
x <- as.numeric(as.character(x))
x
		 
# 11. `unlist`,`as.data.frame` function
myList <- list()
myList$x1 <- c(1, 2, 3)
myList$x2 <- c(2, 4, 6)
myList

## unlist
uList <- unlist(myList)
uList
x11 x12 x13 x21 x22 x23 
  
# matrix
mList <- matrix(uList, 2, 3, byrow=TRUE)
mList

# dataframe
dfList <- as.data.frame(mList)
dfList

colnames(dfList) <- c("x1", "x2", "x3")
dfList

rownames(dfList) <- c("o1", "o2")
dfList
		
# 12. `table`,`tapply`,`by`,`aggregate` function
x <- list()
x$a <- sample(-10:10, 20, replace=TRUE)
x$b <- as.factor(sample(1:4, 20, replace=TRUE))
x$c <- as.factor(sample(-3:-1, 20, replace=TRUE))
x

table(x$b)
table(x$c)
table(x$b, x$c)

tapply(x$a, x$b, sum)
tapply(x$a, x$c, sum)
tapply(x$a, list(x$b, x$c), sum)

by(x$a, list(x$b, x$c), sum) 

aggregate(a ~ b+c, x, sum)