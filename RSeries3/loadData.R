## this R Script tells how to load datas to R
#####################################################

## use `scan` function
x <- scan()
# 1: 1 2 3
# 4: 2 3 4
# 7: 
# Read 6 items
# > x
# [1] 1 2 3 2 3 4

## use `scan` function 2
y <- scan(what="") # load character datas
# 1: 1 2 3
# 4: 2 3 4
# 7: 
# Read 6 items
# > y
# [1] "1" "2" "3" "2" "3" "4"

## use `scan` function to load a TXT file
z <- scan("example.txt")

## create a data frame
name <- c("Li", "Wang", "Sun")
age <- c(21, 22, 23)
Datafr <- data.frame(name = name, age = age)
Datafr

## data manipulation in data frame
Datafr2 <- data.frame(name = name, age = age, age.u = age-18)
Datafr2

## use `read.table` to load data
example <- read.table("example.txt", header=FALSE)
example

example <- read.table("example.txt", header=FALSE, col.names=c("x1", "x2", "x3"))
example

## use `read.csv` and `read.delim` to load CSV file and TXT file
dataCsv <- read.csv("example.csv", header=FALSE)
dataTxt <- read.delim("example.txt", header=FALSE)

