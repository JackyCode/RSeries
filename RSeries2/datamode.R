## this R Script tells the data mode in R

# View the objects' mode and class
mode(sum)
class(sum)

# use `sapply` function to view the mode and class of a `list` in R
create.list <- list(name = c("Li", "Wang"," Xue"), age = c(21, 22, 24), sex = factor("b", "g", "b"))
# 使用sapply查看模式和类（回想上一节内容）
sapply(create.list, mode)
sapply(create.list, class)