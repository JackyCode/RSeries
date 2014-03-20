###############################################################
## descriptive_statistics2.R:
## --------------------------
## This R Script tells how to do descriptvie statistics in R (2)
##
## The data used here is from the builtin dataset `mtcars`
################################################################
##
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

# table
# one-dimension
dataSub <- data.frame(am=mtcars$am, gear=mtcars$gear, carb=mtcars$carb)
head(dataSub)
with(dataSub, {
	mytable <- list(table(am), table(gear), table(carb))
	mytable
	prop.table(mytable[[1]])
	mytable[[1]]/sum(mytable[[1]])
})

# two-dimension
with(dataSub, {
	mytable2 <- list(table(am, carb), table(carb, am))
	mytable2
	prop.table(mytable2[[1]])
	mytable2[[1]]/sum(mytable2[[1]])
})

# convert two-dimension to one-dimension
with(dataSub, {
	mytable2 <- list(table(am, carb), table(carb, am))
	mytableConvert <- list(margin.table(mytable2[[1]], 1), 
		margin.table(mytable2[[1]], 2))
	mytableConvert
})

# three-dimension
with(dataSub, {
	mytable3 <- table(am, carb, gear)
	mytable3
	prop.table(mytable3)
	mytable3/sum(mytable3)
})

################################################################

# Histogram
str(mtcars)
range(mtcars$mpg)
hist(mtcars$mpg)
hist(mtcars$mpg, probability=TRUE)
dens <- density(mtcars$mpg)
mean <- mean(mtcars$mpg)
sd <- sd(mtcars$mpg)
lines(dens, col='red', lty=2)
curve(dnorm(x, mean, sd), col='blue', add=TRUE, lty=1)
legend("topright", inset = 0.05, c("density", "normal"),
    lty = c(2, 1), col = c("red", "blue"))
	
# Scatter
str(mtcars)
range(mtcars$disp)
plot(mtcars$disp ~ mtcars$mpg)
lines(lowess(mtcars$mpg, mtcars$disp), lwd=2, col='blue')

# box
boxplot(mtcars$mpg)
boxplot(mpg ~ am, data=mtcars)

