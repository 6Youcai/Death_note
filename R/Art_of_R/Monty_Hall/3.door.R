# https://en.wikipedia.org/wiki/Monty_Hall_problem
doors <- c("A", "B", "C")

for(i in 1:100000){
  prize <- sample(doors, 1)
  pick <- sample(doors, 1)
  open <- sample(doors[which(doors!=prize & doors!=pick)] , 1)
  repick <- doors[which(doors!=open & doors!=pick)]
}

