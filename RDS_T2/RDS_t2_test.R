for (i in 1:4){
  assign(paste("tab", i, sep = ""),
  read.csv(paste(paste("egtab", i, sep = ""), ".csv", sep = "")))
}


