## This R Script tells how to do descriptvie statistics in R
############################################################
##
## The data used here is from the builtin dataset `mtcars`
############################################################

# Single set of data
str(mtcars)
summary(mtcars$mpg)
mean(mtcars$mpg)
sd(mtcars$mpg)
quantile(mtcars$mpg, 0.25)
quantile(mtcars$mpg, c(0.25, 0.75))

desc.stats <- function(x, na.omit=FALSE) {
	if (na.omit)
		x <- x[!is.na(x)]
	
	n <- length(x)
	mean <- mean(x)
	var <- var(x)
	sd <- sd(x)
	skew <- sum((x-mean)^3/sd^3)/n
	kurt <- sum((x-mean)^4/sd^4)/n - 3
	
	return(list(mean=mean, Variance=var, skewness=skew, kurtosis=kurt))
}
desc.stats(mtcars$mpg)

############################################################

# Multiple sets of data
mtcars.sub <- data.frame(mpg=mtcars$mpg, wt=mtcars$wt)
summary(mtcars.sub)
sapply(mtcars.sub, desc.stats)

############################################################

# Descriptive statistics by group
mtcars.sub2 <- data.frame(mpg=mtcars$mpg, am=mtcars$am, carb=mtcars$carb)
tapply(mtcars.sub2$mpg, mtcars.sub2$am, summary)
by(mtcars.sub2$mpg, mtcars.sub2$am, summary)
aggregate(mpg ~ am, mtcars.sub2, summary)

aggregate(mpg ~ am+carb, mtcars.sub2, summary)