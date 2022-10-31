myvector1 <-c(1,2,3,5,77,4,3,5,7,5,-1)

myvector_times2 <- myvector1*2

print(myvector_times2)

deleteminzero <- function(list){
  newlist <- c()
  for (i in 1:length(c))
  {
    newlist[i]=list[i]
    if (list[i]>=0){
      next
    }
  }
}