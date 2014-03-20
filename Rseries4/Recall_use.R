# Recall_use.R:
# -------------
# This R Script tells how to use the recursive function in R
#
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

#### Recursive 1:
plusFun1 <- function (x) {
  return(ifelse(x < 10, plusFun(x + 1), x))
}

#### Recursive 2:
plusFun2 <- function (x) {
  return(ifelse(x < 10, Recall(x+1), x))
}
