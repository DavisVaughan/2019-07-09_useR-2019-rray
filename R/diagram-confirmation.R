source("R/reprex-in-env.R")

library(rray)

bag <- matrix(
  c(15, 10, 8, 6, 12, 9),
  ncol = 3,
  dimnames = list(c("pb", "plain"), c("green", "red", "blue"))
) 

bag[,1:2]

bag[,1]

bag[,1, drop = FALSE]

bag

bag_rray <- as_rray(bag)

bag_rray

bag / sum(bag)
sweep(bag, 1, apply(bag, 1, sum), "/")
sweep(bag, 2, apply(bag, 2, sum), "/")
