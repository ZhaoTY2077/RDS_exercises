# read the annotation file ENSEMBLMay2021_annot.csv as "annot"
annot <- read.csv("./ENSEMBLMay2021_annot.csv")
#read genes data file tab1.csv as "data"
data <- read.csv("./tab1.csv")
#read one of the genenames files in genelist
genelist <- read.csv("./genelist/day6/day6d/day6d.csv")

#check variables and class of them
#ls()
#class(annot)

#check the head information of variables
#head(annot)

#check the rownames and colnames of the annot object
head(rownames(data))
head(colnames(data))

#set the rownames
rownames(data) <- data$ID
#Use genelist as an index to pull out only those elements needed
#Gene list is currently a data frame, we need it to be a vector 
#to use as an index. To convert here we just use the column name 
#in the genelist to pull out the single column from the 
#genelist. This column is automatically a vector (or #character type).

plot40 <- genelist[,"plot40"]
# class(plot40)
# typeof(plot40)
#just grab the parts of the data table we need to plot
plotme <- data[plot40,]
#head(plotme)

head(rownames(annot))
# colnames(annot)
# rownames(annot) <- annot$ID
#the command above will give an error: some of the IDs are not 
#unique, for our purposes we can remove the 'duplicate' elements
#using the command duplicated()

duplicates <- duplicated(annot$ID)
head(annot$ID)
head(duplicates)

#then just remove the FALSE elements by indexing with the logical vector
annot <- annot[!duplicates,]
head(duplicates)
head(!duplicates)
rownames(annot) <- annot$ID
head(annot)
plotme_annot <- annot[plot40,]

plotme_annot
plotme
#we can check if the rows are exactly the same use identical()
identical(rownames(plotme_annot), rownames(plotme))

plotme_new_rownames <- cbind(plotme_annot$GeneName,rownames(plotme))

#write a small function that makes the combined names for each row
comb <- function(arow){
  aline <- paste(arow[1], arow[2], sep="_")
  return(aline)
}

combined_names <- apply(plotme_new_rownames,1,comb)
#apply函数：X:数组、矩阵、数据框
#MARGIN: 按行计算或按按列计算，1表示按行，2表示按列
#FUN: 自定义的调用函数
plotme_combined <- cbind(combined_names,plotme)
rownames(plotme_combined) <- plotme_combined$combined_names
colnames(plotme_combined)
plotme_combined <- as.matrix(plotme_combined[3:14])
write.csv(plotme_combined,file="plotme_combined.csv")
heatmap(plotme_combined)
