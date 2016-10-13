#### Subsetting a Vector.

# Vectors are basic objects of R and can be subsetted using the [ operator

x <- c( "a", "b", "c", "d", "a" )

x


class(x)


# Extract the first element.
x[1]


# Extract the second element
x[2]


# To extract four elements of the vector
x[1:4]

# The index sequence need not be in order. 
# i.e. a vector of indices can be specified.
x[c(1, 3, 5)]


# Can also pass a logical sequence to [] operator 
# to extract elements of a vector that satisfy a given condition.
# For example, here we want the elements of x that come 
# lexicographically after the letter “a”.
u <- x > "a"
u
x[u]


# Another way is to skip the creation of logical vector and get the 
# subset vector directly with the logical expression
x[ x > "a" ]

#############################################################
#############################################################

### Subsetting Matrices
# Matrices can be subsetted in the usual way with (i,j) type indices. 
# Here, we create simple 2x3 matrix with the matrix function.

x <- matrix( 1:6, nrow = 2, ncol = 3 )
x


# Access the element (2,1)
x[2, 1]


# Access the element (1, 2)
x[1, 2]


# Indices can also be missing. This behavior is used to access an entire 
# row or column of a matrix
x[1, ]  # Extract the first row


x[ , 2] # Extract the second column


class(x)


y <- x[ , 2]
class(y)# integer. i.e. y is a vector.
typeof(y)  # integer.

z <- x[2, 2]
class(z)    # integer
typeof(z)   # integer


### Dropping Matrix dimensions
# By default, when a single element of a matrix is retrieved, 
# it is returned as a vector of length 1 rather than a 1 x 1 matrix.
# Often, this is exactly what we want, but this behavior can be
# turned off by setting drop = FALSE.

v <- x[1,2]          # Output is a vector
v
class(v)            # integer
typeof(v)           # integer
m <- x[1,2, drop = FALSE]    # Output is a matrix format
m
class(m)            # matirx
typeof(m)           # integer

v1 <- x[1, ]
v1
class(v1)
typeof(v1)
m1 <- x[1, , drop = F]
m1
class(m1)
typeof(m1)


#########################################################################
#########################################################################
### Subsetting Lists
# Lists in R can be subsetted using all the three operators ( [], [[]], $).
# Each of them is used for different purposes

x <- list( foo = 1:4, bar = 0.6 )
x

class(x)
typeof(x)

a <- x[1]
a

class(a)    # [1] "list"
typeof(a)   # [1] "list"


b <- x[[1]] # to extract single elements from a list.
b           # [1] 1 2 3 4


c <- x[["foo"]]
c

d <- x$foo

# [[ ]] operator can be used with compound indices.
# the $ operator can be used with literal names.
x <- list( "aa" = 1:4, "bb" = 0.6, "cc" = "hello" ) 
x
class(x)
typeof(x)


# Create a computed index for "aa" 
name <- "aa"
x[[name]]

# element name doesn't exist
x$name

# element "aa" does exist
x$aa



########################################################################
########################################################################
#### Subsetting Nested Elements of a List

# The [[ ]] operator can take an integer sequence if a nested element of
# a list needs to be extracted.

# Creating a list that contains another list
x <- list( a = list( 10, 12, 14 ), b = c( 3.14, 2.81 ))


# Print x
x 
# $a
# $a[[1]]
# [1] 10
#
#$a[[2]]
#[1] 12
#
#$a[[3]]
#[1] 14
#
#
#$b
#[1] 3.14 2.81

typeof(x)   # list


class(x)    # list


# Extract the first element of x
f <- x[1]
f
# $a
# $a[[1]]
# [1] 10
# 
# $a[[2]]
# [1] 12
# 
# $a[[3]]
# [1] 14
class(f)    # list
typeof(f)   # list


# Extract second element of x
s <- x[2]
s
#$b
#[1] 3.14 2.81
class(s)    # list
typeof(s)   # list

# Get the 3rd element of the first element
x[[c(1, 3)]]    # 14

# OR

x[[1]][[3]]


# first element of the second element
x[[2]][[1]]
x[[c(2, 1)]]



####################################################################
####################################################################
### Extracting Multiple elements of a list
# The [] can be used to extract multiple elements from a list

x <- list( foo = 1:4, bar = 0.6, baz = "hello")

# to extract first and thrid element
x[c(1, 3)]

# x[c(1, 3)] is NOT the same as x[[c(1, 3)]].
x[[c(1, 3)]]




####################################################################
####################################################################
#### Partial Matching


# Partial matching of names is allowed with [[]] and $
x <- list( aardvark = 1:5 )
x
x$a         # returns [1] 1 2 3 4 5
x[["a"]]    # returns NULL
x[["a", exact = FALSE]]      # returns [1] 1 2 3 4 5



####################################################################
####################################################################
#### Removing NA Values

# A common task in data analysis is removing missing values (NAs)
x <- c(1, 2, NA, 4, NA, 5)
x
bad <- is.na(x)
print(bad)
x[bad]
x[!bad]

# If there are multiple R objects and you want to take subset with no
# missing values in any of those objects
x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
print(good)
x[good]
y[good]

# Another example
x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, NA)
good <- complete.cases(x, y) # FALSE, if any of the combining element is NA
print(good)
x[good]
y[good]














































