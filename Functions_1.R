# Functions are created using the function() directive and are stored as R 
# objects. i.e. they are "first class objects". In particular, they are R objects of class "function". 
# Functions can be passed as arguments to other functions.
# Functions can be nested
# Functions are defuned using the function() directive and are stored as 
# R objects.
# In R, the return value of a function is always the very last expression 
# that is evaluated.

# NB:- there is a return() function that can be used to return an explicitly
# value from a function, but it is rarely used in R

# The formal arguments are the arguments included in the function
# definition. The formals() function returns the a list of all the formal 
# arguments of a function.

f <- function()
{
    # This is an empty function
}

### Functions have their own class
class(f)

# Executing the function 
f()

f <- function()
{
    cat( "Hello, World! \n" )
}
f()


f <- function( num )
{
    for( i in seq_len( num ))
    {
        cat( "Hello, World! \n" )
    }
}

f(3)


# Function to add two numbers
add <- function( x, y )
{
    x + y
}

aboveTen <- function(x) # x is a vector here
{
    use <- x > 10       # Logical 
    x[use]              # Returns vector with values greater than 10
}

above <- function( x, n = 10 )
{
    use <- x > n
    x[use]
}

formals( above )

columnMean <- function( m, removeNA = TRUE )   # m is matrix or dataframe
{
    numCol <- ncol(m)
    means <- numeric(numCol)   # Creating a numeric vector with size numCol
    for( idx in 1:numCol )
    {
        means[idx] <- mean( m[, idx], na.rm = removeNA  )
    }
    means       # i.e. return the means vector.
}

