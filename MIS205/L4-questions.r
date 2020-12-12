########################### Lecture 4: #########################################
library(tidyverse)

# explain the following functions:
# select, filter, mutate


# load the NA stock market file into a data frame called companies

# how do you view a saved dataframe?

# select: extracts columns based on their names

# filter: extracts rows based on values/conditions

# mutate: adds new columns that are functions of existing columns


# select, filter, mutate questions
# show the columns in the companies dataframe using the colnames function

# create a new dataframe called "relevant" which has the "gvkey", "fyear", and 
# "tic" columns

# return the elements in the companies dataframe in which the headquarter 
# location is "CAN"

# return the elements in the companies dataframe in which the headquarter 
# location is "CAN" and the fyear is greater than 2010

# for "CAN" companies with fyear greater than 2010, save a new dataframe
# called "concise" with columns "gvkey", "fyear", and "loc"


# for "CAN" companies with fyear greater than 2010, save a new dataframe
# called "pipe_prac" with columns "gvkey", "fyear", and "loc" using the forward
# pipe operator


# add and show a new column called "thousands" that multiplies the "ch" column 
# by 1000

