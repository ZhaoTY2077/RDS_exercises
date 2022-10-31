#Using R For Data Science Tutorial 2
#
#Write all your R code following the Tidyverse style guidelines & the guidelines given in class
#Note the example code provided might not yet follow the guidelines exactly- although it is correct R code

#Four files are provided "egtab1.csv", "egtab2.csv", "egtab3.csv", "egtab4.csv"
#These are CSV encoded text files

#We can read each file into R using code similar to this file
#Tab2 <-read.csv("egtab2.csv")

#Write R code to generate a heatmap from the four files after combining all the data 
#into one large file.
#Use the heatmap function as shown in the class lecture

#Calculate a mean for each row in the combined data table 
#and add this to the combined data set
#Write out the results table and save the heatmap as a PNG file
#Check you can view the results table and the PNG file

#Note that the "egtab3.csv" and "egtab4.csv" files contain an extra column for "Week5"
#We do not need to include the Week5 data in our analysis- just Week1 to Week4
#We also do not need to consider the "Colour" column- for the purposes of this class, the Colour column can be removed

#As we expect more example files in the future with "Week1", "Week2", "Week3" and "Week4" data,
#and so it is a good idea to write the reading of each file into a function.  This function
#is responsible for reading each file, extracting the required columns and returning the 
#data converted to a matrix ready for combining with other parts of the data set.

#Note that a function in R can be passed one or more variables such as a filename and this used to read  a file
#We can then load and process the file return the results from each call to this function
#here is an example

#
processFile <-function(file.csv){
Tab2 <-read.csv(file.csv)

#more processing
#more procesing

Tab2 #return Tab2 or an object derived from Tab2
}

#Note that we are sure that "Genes", "Week1", "Week2", "Week3" and "Week4" will exist in each file
#We also know that each row of the "Genes" column will have a unique name across all files
#But the order of the columns "Week1", "Week2", "Week3" and "Week4" might change between different files

#It might be helpful to consider that you can run your code within a for loop
#An example of such a loop is provided below

myNames <-c("egtab1.csv","egtab2.csv")
for (i in myNames){
print(i)
TabX <-read.csv(i)
print(TabX)
}

#During development of  your code write the code in a text editor.
#Copy and paste this code into R to test it














