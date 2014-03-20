# data_manipulation.R:
# --------------------
# this RScript tells data manipulation in R
#
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

## begin

# get the current path
getwd()
# switch to the target directory
setwd("~/DataInR")

##################################################
## vector in R

# use `c` function to merge data
x <- c(1, 2, 3)
y <- c("abc", "bc", "c")

# use `seq` function to generate a set of data
z <- seq(1, 21, 1) # equals to `z <- 1:21`

# view the data
head(z)
tail(z)
head(z, 3)
tail(z, 3)
nchar(y) # be careful about the space character
z[1]
z[1:5]

# merge data
mode(x)
mode(y)
xy <- c(x, y)
mode(xy)
## The coercion rules:
## 1. Logical values are convert to numbers: TRUE is convert to 1 and FALSE to 0.
## 2. Values are convert to the simplest type required to represent all information.
## 3. The ordering is roughly logical < integer < numeric < complex < character < list.
## 4. Objects of type raw are not converted to other types.
## 5. Objects attributes are dropped when an object is coerced from one type to another.

# simple operation
z + 1
z + x # be careful of the length
k <- 1:20
z + k # be careful of the `warning`

##################################################
## matrix in R

# create a matrix
v <- 1:12
m <- matrix(v, nrow = 3, ncol = 4)
m1 <- matrix(v, 3, 4)
m2 <- matrix(v, 3)
m3 <- matrix(v, 4)

m4 <- matrix(0, 3, 4) # zero matrix
m5 <- matrix(1, 3, 4) 
m6 <- matrix(1:3, 3, 4)
m7 <- matrix(1:4, 3, 4)
m8 <- matrix(1:5, 3, 4)

# view the data
m[1, 1]
m[2:3, 3:4]
dim(m)
length(m)
head(m, 2)
tail(m, 1)

