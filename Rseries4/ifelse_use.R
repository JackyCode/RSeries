# ifelse_use.R:
# -------------
# this R Script tells how to use `ifelse` function
#
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

# generate a score data
scoreList <- list()
scoreList$name <- c("Wang", "Li", "Sun")
scoreList$score <- c(90, 50, 70)

# use 'ifelse' function to classify
con <- scoreList$score > 60
scoreList$level <- ifelse(con, "good", "not good")

# or use 'with' function
scoreList$level2 <- rep("good", 3)
scoreList$level2[which(scoreList$score<60)] <- "not good"