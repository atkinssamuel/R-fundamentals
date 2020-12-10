########################### Lecture 1: #########################################
# if a^2 + b^2 = c^2 and a = 3 and b = 4, what is c?

# -3 + 2x = 11 what is x?

# if x = 3, y = 2, evaluate (4x - y)^3

# get the info on the sum function

# get the info on the print function

# set x to the integer 3

# show the type of x

# define y to be any string

# determine the output
# remember: "upper" > "lower" > digit
#             Z-A   >   z-a   >  9-1
# "me" > "you"

# 1 < "hello"

# 2 == 3

# "me" == "Me"

# 1 == TRUE

# FALSE < 1

# TRUE != FALSE

# "a" + 1

# TRUE + TRUE

# TRUE - TRUE + FALSE

# "jordan" > "gunnar"

# "hi" < "Hey"

# "ya" > "Yo"

########################### Lecture 2: #########################################
# determine the output
# remember: <, <=, >, >=, ==, !=    ->    !    ->    &    ->    |
TRUE | !FALSE & FALSE

toronto <- 2790
vancouver <- 632
toronto > 2000 & vancouver < 700

!vancouver > toronto & !toronto < 3000 | TRUE

# create a vector called my_vector with elements 10, 23, 12, 4

# determine the type of my_vector

# determine the output
my_vector + 2

my_vector - c(3, 1, 3, 0)

my_vector > c(12, 12, 12, 12)

# determine the length of my_vector

# extract the third element in my_vector and put it in a new variable, third

# print the first, second, and fourth elements in my_vector

# print all but the second element in my_vector

# print elements 3 through 10 in my_long_vector
my_long_vector = c(13, 12, 65, 123, 56, 31, 523, 1, 984, 43, 12, 45)

# add my_vector to my_long_vector and store it in mega_vector
# step 1: what is the length of my_long_vector?

# step 2: what is the length of my_vector?

# step 3: add my_vector to my_long_vector

# step 4: set mega_vector to my_long_vector

# consider the following dataset:
cities = c("Vancouver", "Toronto", "New York", "Los Angeles")
population = c(631500, 2790000, 8491000, 3929000)
country = c("Canadian", "Canadian", "American", "American")

# which cities have a population greater than 2,000,000?

# which cities are Canadian cities?

# which Canadian cities have less than 1,000,000 people?


# basic functions:
# explain the following functions:
# max, min, range, length, sum, mean, sd, var, sqrt, sort

# create a vector called vec with elements 3, 2, 5, 7, 1, 10

# find the min and maximum values of vec

# determine the mean of vec

# what is the standard deviation of vec?

# sort vec and store it in a new variable called sorted_vec

# type coercion:
# determine the types of the below vectors
# remember: logical -> integer -> double -> character
x <- c(FALSE, TRUE, "char")
typeof(x)

x <- c(1L, 3L)
typeof(x)

x <- c(TRUE, FALSE, 3)
typeof(x)

x <- c("character", 3, 5)
typeof(x)

x <- c(TRUE, FALSE, 2)
typeof(x)
# double

x <- c(3L, "2")
typeof(x)

x <- c(TRUE, 1L, 2L)
typeof(x)

########################### Lecture 3: #########################################
library(tidyverse)


# construct a tibble dataframe using the vectors below:
cities = c("Vancouver", "Toronto", "New York", "Los Angeles")
population = c(631500, 2790000, 8491000, 3929000)
country = c("Canadian", "Canadian", "American", "American")


# what is the element in the 2nd row and the third column?


# what is the difference between the following expressions?
my_df[2, 1]
my_df[[2, 1]]

# print the "country" column

# which cities have a population greater than 3,000,000?

# update the population of Toronto to be 3,100,000

# make a new logical column called large_population that is TRUE when the population of a given city is greater than 4,000,000


# evaluate the following:
1 + NA

NA + 3

NA == "Hello"


my_df$num_americans = c(300, 1200, NA, NA)

# which cities have NA values in the num_americans column?

