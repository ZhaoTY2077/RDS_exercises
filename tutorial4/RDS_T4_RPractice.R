########################################################################
#         R for Data Science- R Questions 24/10/2022                   #
#                                                                      #
#        Load this worksheet into RStudio and fill in the answers      #
#                                                                      #
########################################################################

#Question 0
#Write a function that prints "Hello World" one or more times
#Design this function so that it can be passed an integer that 
#determines how many times to print out "Hello World"
#Provide an example of how to call this function
#Document the function

#Question 1
myvector1 <-c(1,2,3,5,77,4,3,5,7,5,-1)
#Write R code that multiples all elements by two
#Write R code delete any elements that are <0
#Output the final result with values log base 2 transformed

#Question 2
myvector2 <-c("apple", "orange", "mango" ,"lemon","cabage", "carrot", "onion", "potato")

#What is the index position of "carrot" ?
#Replace "mango" with "pear"
#Fix the typo- change "cabage" to "cabbage"

#Question 3a
myvector3a <-c(1,2,3,4,5,6,7,45,2,3)
myvector3b <-c(1,11,3,34,5,61,7,45,2,3)
myvector3c <-c(1,2,3,4,5,6,7,45,2,3)
myvector3d <-c(1,2,3,41,5,61,7,45,21,3)

#Write a program to calculare the median of each index position across the vectors
#Find the row index with the largest mean (hint consider using a data frame and apply

#Question 3b
#From the table of results from Question 3a combine these into a table
##Add the following header

myvector4c <-c("A","B","C","D","E","F","G","H","I","J")

#Write the table to a comma delimited file

#Question 5
myvector5 <-c(1,2,3,41,5,61,7,45,21,3,7,8,11)
#Write a simple loop that will multiply the first element and then every second element (1st, 3rd, 5th etc) in the vector by 2 and then add 7
#Output the result of this transformation with each number presented as the remainder after dviding each number by 7

#Question 6
#You have a list of filenames
myvector6 <-c("file5", "file4", "file7" ,"File2","file13", "file20", "file5", "file20")

#You would like all the names to begin with a capital "F"
#You want to append the year "_2021" to the end of each file name

#Question 7
mygenes <-c("gene1","gene2","gene3","gene4","gene5","gene6","gene7","gene8","gene9","gene10","gene10","gene9")
mychrs <-c("chr1","chr3","chr3","chr4","chr5","chr1","chr2","chr3","chr4","chr7","chr7","chr4")

#make a vector of gene names and chromosomes that can be used to label a plot

#Question 7b
#Some of the labels made for Question 7 are not unique- write some R code that fixes this by appending "_b" to the duplicates

#Question 7c
#Make a new table of all genes on chr2 or chr7 and write out a table containing only these gene names to a file

#Question 8

vec_v <-c(1,2,3,4)
vec_w <-c(3,4,2,4)

#What do you expect the value of vec_result to be of the following multiplication?
#Why?

vec_vv <-c(1,21,3,4)
vec_ww <-c("3",4,2,4)

vec_result <-vec_vv[4] * vec_ww[4]


#Question 9
data(mtcars)
head(mtcars)

#These two commands grab some example data called "mtcars" that  describes the
#performance characteristics of different types of motor car.

#Make a data frame for the "mpg","hp" columns of this data (include all rows)
#Plot the values of mpg vs hp in a scatter plot.
#What do you conclude from this plot?


#Question 10 
#Go back over the code you have written and make sure it conforms to the style guide and that follows the defensive coding approach 