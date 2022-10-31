#Q1
myvector1 <-c(1,2,3,5,77,4,3,5,7,5,-1)
#method1
myvector_minzero <- which(myvector1<0)
myvectorq1 <- myvector1[-myvector_minzero]
#method2
for (nums in myvector1){
  if(nums > 0){
    append(myvector2, nums)
  }
  else{
    next
  }
}
myvectorq1

#Q2
myvector2 <-c("apple", "orange", "mango" ,"lemon","cabage", "carrot", "onion", "potato")
which(myvector2 == "carrot")
mangoindex <- which(myvector2 =="mango")
replace(myvector2, mangoindex, "pear")

#Q3
myvector3a <-c(1,2,3,4,5,6,7,45,2,3)
myvector3b <-c(1,11,3,34,5,61,7,45,2,3)
myvector3c <-c(1,2,3,4,5,6,7,45,2,3)
myvector3d <-c(1,2,3,41,5,61,7,45,21,3)
mydata <- rbind(myvector3a, myvector3b, myvector3c, myvector3d)


rbind(myvector3a, myvector3b, myvector3c)





