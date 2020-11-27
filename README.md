# R-Fundamentals

# Data Types
## Booleans
TRUE/FALSE  
T/F

## Numerics
2, 2.5, 3.1415
### Integers
2, 2L, 3, 5, 7L  
```R
class(2) > "integer"  
class(2L) > "integer"  
is.numeric(2) > TRUE  
```
### Double
- Used for higher precision  

2.4345, 6.2, etc.

## Character
"I love data science!"  
```R
class("I love data science!") > "character"
```

# Data Type Coercion
```R
as.numeric(TRUE) > 1  
as.numeric(FALSE) > 0  
as.character(4) > "4"  
as.numeric("4.5") > 4.5  
as.integer(4.5) > 4  
as.numeric("Hello") > ERROR
```

# Variables
- R does not discern between variables and vectors
- All variables are vectors of length 1
- Vectors are homogenous, i.e. vectors can only hold elements of the same type. Automatic coercion happens if necessary
## Variable Declaration
```R
my_apples = 5  
my_oranges = "six"  
is.vector(my_apples) > TRUE  
```

## Vector Declaration
```R
number_list = c(88, 87, 91, 8)
player_list = c("Kane", "Crosby", "Stamkos", "Ovechkin")
```

## Vector Indexing
- Indexing starts at 1 like MATLAB
    ```R
    number_list[0] # yields numeric(0)
    ```

```R
number_list[3]
```

*Indexing multiple elements simultaneously:*
```R
number_list[c(1, 3)] # selects the first and third elements
```


## Dictionary/Named Vector
```R
number_list = c("Kane"=88, "Crosby"=87, "Stamkos"=91, "Ovechkin"=8)
# or 
names(number_list) <- player_list
```

### Length Property
```R
length(number_list) > 4
length(my_apples) > 1
```

## Matrix Declaration
```R
number_matrix = matrix(1:6, nrow=2, ncol=3) # ncol optional
# 1 3 5
# 2 4 6
# or 
number_matrix = cbind(1:3, 1:3)
# 1 1
# 2 2
# 3 3 
# or 
number_matrix = rbind(1:3, 1:3)
# 1 2 3 
# 1 2 3 
```

If we wish to specify the row names and column names in the declaration we can do so:
```R
number_matrix = matrix(1:6, nrow=2, byrow=TRUE, dimnames=list(c("row1", "row2"), c("col1", "col2", "col3")))
```
## Matrix Indexing
*Single element:*
```R
number_matrix[row, column]
```

*By row name and column name:*
```R
number_matrix[row_name, column_name]
# example:
number_matrix["r2", "c1"]

# by row/column name and row/column index is also possible:
number_matrix["r2", c(2, 3)] # elements in "r2" and in column positions 2 and 3
```

*Multiple elements:*
```R
number_matrix[2, c(2, 3)] # returns the elements on row 2 and in columns 2 and 3
number_matrix[c(1, 2), c(2, 3)] # returns a sub-matrix of the elements on row 1 and columns 2 and 3 and row 2 and columns 2 and 3
```

*Row/Column:*
```R
number_matrix[row,]
# for column
number_matrix[, column]
```

*Matrix element number indexing:*
```R
number_matrix = matrix(1:6, nrow=2, ncol=3)optional
# 1 3 5
# 2 4 6
number_matrix[4] # yields 4, R goes through matrix column by column
```

## Appending Rows/Columns Using rbind/cbind
```R
number_matrix = matrix(1:6, nrow=2)
# 1 3 5
# 2 4 6
rbind(number_matrix, 1:3)
# 1 3 5
# 2 4 6
# 1 2 3
cbind(number_matrix, 1:2)
# 1 3 5 1
# 2 4 6 2
```

- Using cbind/rbind on matrices/vectors that have different types will coerce the numerics into characters

## Naming Rows/Columns Using rownames(), colnames()
```R
rownames(number_matrix) = c("row_1", "row_2")
colnames(number_matrix) = c("col_1", "col_2", "col_3")
```

