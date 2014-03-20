# config_set.R:
# -------------
# This R Script tells how to change the configuration of R
############################################################
# license:
# --------
# Copyright (c) 2014 JackyCode
# Distributed under the [MIT License][MIT].
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
############################################################

# show or change the configuartion
options()
getOption("digits")
options(digits=3)
getOption("digits")