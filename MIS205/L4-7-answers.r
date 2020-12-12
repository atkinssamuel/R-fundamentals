########################### Lecture 4: #########################################
library(tidyverse)

# explain the following functions:
# select, filter, mutate


# load the NA stock market file into a data frame called companies
companies <- readRDS("~/../projects/R-fundamentals/MIS205/North_American_Stock_Market_1994-2013.rds")

# how do you view a saved dataframe?
# View(companies)

# select: extracts columns based on their names


# filter: extracts rows based on values/conditions

# mutate: adds new columns that are functions of existing columns


# select, filter, mutate questions
# show the columns in the companies dataframe using the colnames function
colnames(companies)

# create a new dataframe called "relevant" which has the "gvkey", "fyear", and 
# "tic" columns
relevant <- select(companies, gvkey, fyear, tic)

# return the elements in the companies dataframe in which the headquarter 
# location is "CAN"
print(filter(companies, loc=="CAN"))

# return the elements in the companies dataframe in which the headquarter 
# location is "CAN" and the fyear is greater than 2010
print(filter(companies, loc=="CAN", fyear>2010))

# for "CAN" companies with fyear greater than 2010, save a new dataframe
# called "concise" with columns "gvkey", "fyear", and "loc"
concise <- select(filter(companies, loc=="CAN", fyear>2010), "gvkey", "fyear", "loc")


# for "CAN" companies with fyear greater than 2010, save a new dataframe
# called "pipe_prac" with columns "gvkey", "fyear", and "loc" using the forward
# pipe operator
pipe_prac <- companies %>%
  filter(loc=="CAN", fyear>2010) %>%
  select("gvkey", "fyear", "loc")

# add and show a new column called "thousands" that multiplies the "ch" column 
# by 1000
select(mutate(companies, thousands=ch*1000), thousands)


########################### Lecture 5: #########################################


########################### Lecture 6: #########################################

########################### Lecture 7: #########################################