### LAZY EVALUATION
# In R, arguments to functions are evaluated lazily, so they are evaluated 
# only as needed in the body of the function.

# No error, since the second argument is not used.
fun <- function( a, b )  
{                        
    a ^ 2
}
fun( 2 ) # This function never uses b, so no error and the input 2 
         # postionally matches to a.
fun( b = 9 ) # Returns error, saying argument "a" is missing with no default

# An example of lazy evaluation that result in an error
f <- function( a, b )
{
    print(a)
    print(b)
}
f(45)    # Returns error


# THE ... ARGUMENT
# There is a special argument in R known as the ... argument, 
# which indicate a variable number of arguments that are usually 
# passed on to other functions. The ... argument is often used when
# extending another function and you don’t want to copy the entire
# argument list of the original function
# For example, a custom plotting function may want to make use of the
# default plot() function along with its entire argument list. 
# The function below changes the default for the type argument to the
# value type = "l" (the original default was type = "p").

myplot <- function(x, y, type = "l", ...) 
    {
        plot(x, y, type = type, ...) ## Pass '...' to 'plot' function
}

# Generic functions use ... so that extra arguments can be passed to methods
mean
#function(x, ...)
#UseMethod("mean")
#<bytecode: 0x000000000be007b0>
#<environment: namespace:base>


# The ... argument is necessary when the number of arguments passed
# to the function cannot be known in advance.
# Because both paste() and cat() print out text to the console by combining
# multiple character vectors together, it is impossible for those functions
# to know in advance how many character vectors will be passed to the
# function by the user. So the first argument to either function is ....
args(paste)
   # function (..., sep = " ", collapse = NULL) 
args(cat)

# One catch with ... is that any arguments that appear after ... on the
# argument list must be named explicitly and cannot be partially matched 
# or matched positionally.
# With the paste() function, the arguments sep and collapse must be named
# explicitly and in full if the default values are not going to be used.
# Here I specify that I want “a” and “b” to be pasted together and 
# separated by a colon.
paste( "a", "b", sep = ":" )

# If I don’t specify the sep argument in full and attempt to rely on
# partial matching, I don’t get the expected result.
paste( "a", "b", se = ":" )




