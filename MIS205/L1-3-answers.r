########################### Lecture 1: #########################################
# if a^2 + b^2 = c^2 and a = 3 and b = 4, what is c?
a <- 3
b <-4
c <- sqrt(a^2 + b^2)
cat("c =", c)

# -3 + 2x = 11 what is x?
x <-  (11 + 3)/2
cat("x =", x)

# if x = 3, y = 2, evaluate (4x - y)^3
x <- 3
y <- 2
result <- (4*x - y)^3
cat("result =", result)

# get the info on the sum function
?sum

# get the info on the print function
?print

# set x to the integer 3
x <- 3L

# show the type of x
typeof(x)

# define y to be any string
y <- "my_string"

# determine the output
# remember: "upper" > "lower" > digit
#             Z-A   >   z-a   >  9-1
# "me" > "you"
# FALSE

# 1 < "hello"
# TRUE

# 2 == 3
# FALSE

# "me" == "Me"
# FALSE

# 1 == TRUE
# TRUE

# FALSE < 1
# TRUE

# TRUE != FALSE
# TRUE

# "a" + 1
# Error

# TRUE + TRUE
# 2

# TRUE - TRUE + FALSE
# 0

# "jordan" > "gunnar"
# TRUE

# "hi" < "Hey"
# FALSE

# "ya" > "Yo"
# FALSE

########################### Lecture 2: #########################################
# determine the output
# remember: <, <=, >, >=, ==, !=    ->    !    ->    &    ->    |
TRUE | !FALSE & FALSE
# TRUE

toronto <- 2790
vancouver <- 632
toronto > 2000 & vancouver < 700
# TRUE

!vancouver > toronto & !toronto < 3000 | TRUE
# TRUE

# create a vector called my_vector with elements 10, 23, 12, 4
my_vector <- c(10, 23, 12, 4)

# determine the type of my_vector
typeof(my_vector)

# determine the output
my_vector + 2
# 12, 25, 14, 6

my_vector - c(3, 1, 3, 0)
# 7, 22, 9, 4

my_vector > c(12, 12, 12, 12)
# FALSE, TRUE, FALSE, FALSE

# determine the length of my_vector
length(my_vector)

# extract the third element in my_vector and put it in a new variable, third
third <- my_vector[3]

# print the first, second, and fourth elements in my_vector
print(my_vector[c(1, 2, 4)])

# print all but the second element in my_vector
print(my_vector[-2])

# print elements 3 through 10 in my_long_vector
my_long_vector = c(13, 12, 65, 123, 56, 31, 523, 1, 984, 43, 12, 45)
print(my_long_vector[3:10])

# add my_vector to my_long_vector and store it in mega_vector
# step 1: what is the length of my_long_vector?
print(length(my_long_vector))

# step 2: what is the length of my_vector?
print(length(my_vector))

# step 3: add my_vector to my_long_vector
my_long_vector[13:16] = my_vector

# step 4: set mega_vector to my_long_vector
mega_vector = my_long_vector

# consider the following dataset:
cities = c("Vancouver", "Toronto", "New York", "Los Angeles")
population = c(631500, 2790000, 8491000, 3929000)
country = c("Canadian", "Canadian", "American", "American")

# which cities have a population greater than 2,000,000?
print(cities[which(population>2000000)])

# which cities are Canadian cities?
print(cities[which(country=="Canadian")])

# which Canadian cities have less than 1,000,000 people?
print(cities[which(country=="Canadian" & population < 1000000)])


# basic functions:
# explain the following functions:
# max, min, range, length, sum, mean, sd, var, sqrt, sort

# create a vector called vec with elements 3, 2, 5, 7, 1, 10
vec <- c(3, 2, 5, 7, 1, 10)

# find the min and maximum values of vec
print(range(vec))

# determine the mean of vec
print(mean(vec))

# what is the standard deviation of vec?
print(sd(vec))

# sort vec and store it in a new variable called sorted_vec
sorted_vec <- sort(vec)

# type coercion:
# determine the types of the below vectors
# remember: logical -> integer -> double -> character
x <- c(FALSE, TRUE, "char")
typeof(x)
# char

x <- c(1L, 3L)
typeof(x)
# int

x <- c(TRUE, FALSE, 3)
typeof(x)
# double

x <- c("character", 3, 5)
typeof(x)
# char

x <- c(TRUE, FALSE, 2)
typeof(x)
# double

x <- c(3L, "2")
typeof(x)
# char

x <- c(TRUE, 1L, 2L)
typeof(x)
# int

########################### Lecture 3: #########################################
library(tidyverse)


# construct a tibble dataframe using the vectors below:
cities = c("Vancouver", "Toronto", "New York", "Los Angeles")
population = c(631500, 2790000, 8491000, 3929000)
country = c("Canadian", "Canadian", "American", "American")

my_df = tibble(cities=cities, population=population, country=country)

# what is the element in the 2nd row and the third column?
print(my_df[2, 3])
# or 
print(my_df[[2, 3]])


# what is the difference between the following expressions?
my_df[2, 1]
my_df[[2, 1]]

# print the "country" column
print(my_df$country)

# which cities have a population greater than 3,000,000?
print(my_df$cities[which(my_df$population>3000000)])

# update the population of Toronto to be 3,100,000
my_df$population[which(my_df$cities=="Toronto")] <- 3100000

# make a new logical column called large_population that is TRUE when the population of a given city is greater than 4,000,000
my_df$large_population = my_df$population > 4000000


# evaluate the following:
1 + NA
# NA

NA + 3
# NA

NA == "Hello"
# NA


my_df$num_americans = c(300, 1200, NA, NA)

# which cities have NA values in the num_americans column?
print(my_df$cities[which(is.na(my_df$num_americans))])

