## This code display how to use the recursive function in R

#### Recursive 1:
plusFun1 <- function (x) {
  return(ifelse(x < 10, plusFun(x + 1), x))
}

#### Recursive 2:
plusFun2 <- function (x) {
  return(ifelse(x < 10, Recall(x+1), x))
}
