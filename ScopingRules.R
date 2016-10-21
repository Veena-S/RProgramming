search()
# The global environment or the user’s workspace is always the first 
# element of the search list and the base package is always the last.

# When a user loads a package with library() the namespace of that package
# gets put in position 2 of the search list (by default) and everything else
# gets shifted down the list.

make.pow <- function( n )
{
    pow <- function(x)
    {
        x ^ n
    }
    pow
}

cube <- make.pow(3)
square <- make.pow(2)
cube(3)
square(3)

cube

ls( environment(cube))
get( "n", environment( cube ))
ls( environment(square))
get( "n", environment( square ))



# Lexical Vs Dynamic Scoping
y <- 10
f <- function(x)
{
    y <- 2
    y ^ 2 + g(x)
}

g <- function(x)
{
    x * y
    
}

f(3)   # Result = 34
       # In function g(), the value of y is 10. i.e. Lexical scoping

# With lexical scoping the value of y in the function g is looked up
# in the environment in which the function was defined, in this case 
# the global environment, so the value of y is 10. With dynamic
# scoping, the value of y is looked up in the environment from which
# the function was called (sometimes referred to as the calling 
# environment). In R the calling environment is known as the
# parent frame. In this case, the value of y would be 2.

# When a function is defined in the global environment and is 
# subsequently called from the global environment, then the
# defining environment and the calling environment are the same. 
# This can sometimes give the appearance of dynamic scoping.

g <- function(x)
{
    a <- 3
    print(y)   # If the global y was not defined, it will be an error.
    x + a + y
    # y is a free variable
}
g(2) # Error: object y not found.
y <- 3
g(2)

