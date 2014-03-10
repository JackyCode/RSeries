## this R Script tells how to built a steady function

# the initial function
Summary.MeanAndSd <- function (x) {
  mean <- mean(x)
  sd <- sd(x)
}

# generate a set of data to test the function
set.seed(10)  # 设定种子
x <- rnorm(20, 0, 1)

Summary.MeanAndSd(x)
result <- Summary.MeanAndSd(x)

# add `return` sentence and then test the function
Summary.MeanAndSd <- function (x) {
  mean <- mean(x)
  sd <- sd(x)
  
  return(c(mean, sd))
}

Summary.MeanAndSd(x)

# add the parameter `alpha`
Summary.MeanAndSd <- function (x, alpha) {
mean <- mean(x)
sd <- sd(x)
upper <- 1 - alpha/2
ci <- mean + c(-1, 1) * qnorm(alpha/2, 0, 1)*sd/sqrt(length(x)) # qnorm计算正态分布的分位数

return(list(mean = mean, sd = sd, ci = ci)) # 使用列表输出结果是常用方式
}

Summary.MeanAndSd(x, 0.05)

# set a default value to alpha
Summary.MeanAndSd <- function (x, alpha=0.05) {
  mean <- mean(x)
  sd <- sd(x)
  upper <- 1 - alpha/2
  ci <- mean + c(-1, 1) * qnorm(alpha/2, 0, 1)*sd/sqrt(length(x)) # qnorm计算正态分布的分位数
  
  return(list(mean = mean, sd = sd, ci = ci)) # 使用列表输出结果是常用方式
}

# add some `if-else` sentence to avoid some mistakes maybe happen in some case
Summary.MeanAndSd <- function (x, alpha=0.05) {
  if (alpha <= 0 || alpha >= 1) {
    stop("The argument 'alpha' should be between 0 and 1!" )
  } else if (alpha > 0.5) {
    warning("The argument 'alpha' is often smaller than 0.5 and  close to 0!")
  }
  
  mean <- mean(x)
  sd <- sd(x)
  upper <- 1 - alpha/2
  ci <- mean + c(-1, 1) * qnorm(alpha/2, 0, 1)*sd/sqrt(length(x)) # qnorm计算正态分布的分位数
  
  return(list(mean = mean, sd = sd, ci = ci)) # 使用列表输出结果是常用方式
}

Summary.MeanAndSd(x, 1.5)
Summary.MeanAndSd(x, 0.8)

# generate a set of data within `NA` data and then test the function above
set.seed(10)
y <- rnorm(20, 0, 1)
y <- c(y, NA)

Summary.MeanAndSd(y)

# problem-solve1: use `na.rm`
Summary.MeanAndSd <- function (x, alpha=0.05) {
  if (alpha <= 0 || alpha >= 1) {
    stop("The argument 'alpha' should be between 0 and 1!" )
  } else if (alpha > 0.5) {
    warning("The argument 'alpha' is often smaller than 0.5 and  close to 0!")
  }
  if (any(is.na(y))) {
    warning("There are any 'NA' in the data, we'll ignore these datas!")
  }
  
  mean <- mean(x, na.rm=TRUE)
  sd <- sd(x, na.rm=TRUE)
  n <- ifelse(any(is.na(y)), length(x)-sum(is.na(x)), length(x)) # n <- length(x)-sum(is.na(x)) 也可以
  upper <- 1 - alpha/2
  ci <- mean + c(-1, 1) * qnorm(alpha/2, 0, 1)*sd/sqrt(n) # qnorm计算正态分布的分位数
  
  return(list(mean = mean, sd = sd, ci = ci)) # 使用列表输出结果是常用方式
}

# test
Summary.MeanAndSd(y)

# problem-solve2: use `...`
Summary.MeanAndSd <- function (x, alpha=0.05, ...) {
  if (alpha <= 0 || alpha >= 1) {
    stop("The argument 'alpha' should be between 0 and 1!" )
  } else if (alpha > 0.5) {
    warning("The argument 'alpha' is often smaller than 0.5 and  close to 0!")
  }
  # ellipsis.arguments <- list(...)
  
  mean <- mean(x, ...)
  sd <- sd(x, ...)
  n <- ifelse(any(is.na(y)), length(x)-sum(is.na(x)), length(x))
  upper <- 1 - alpha/2
  ci <- mean + c(-1, 1) * qnorm(alpha/2, 0, 1)*sd/sqrt(n) # qnorm计算正态分布的分位数
  
  return(list(mean = mean, sd = sd, ci = ci)) # 使用列表输出结果是常用方式
}

# test
Summary.MeanAndSd(y, na.rm=TRUE)