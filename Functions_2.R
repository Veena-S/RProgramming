### ARGUMENT MATCHING
# Calling an R function with arguments can be done in a variety of ways
# R functions' arguments can be matched positionally or by name
# Positional Matching means, R assigns the first value to the first
# argument, the second value to second argument etc.
# 

# The following calls to the sd() function (which computes the empirical 
# standard deviation of a vector of numbers) are all equivalent.
# Note that sd() has two arguments: x indicates the vector of
# numbers and na.rm is a logical indicating whether missing values
# should be removed or not.

myData <- rnorm( 100 )    # Generate some data
sd(myData)                # By Position
sd( x = myData )          # By name
sd( x = myData, na.rm = FALSE ) # By Name
sd( na.rm = FALSE, x = myData ) # By Name. Order not important
# You can mix positional matching with matching by name. 
# When an argument is matched by name, it is “taken out” of 
# the argument list and the remaining unnamed arguments are matched in the
# order that they are listed in the function definition
# Here, the mydata object is assigned to the x argument, 
# because it’s the only argument not yet specified.
sd( na.rm = FALSE, myData )


### Getting the argument list of the function lm(), which fits linear model
# to a dataset
args(lm)
#function (formula, data, subset, weights, na.action, method = "qr", 
#          model = TRUE, x = FALSE, y = FALSE, qr = TRUE, singular.ok = TRUE, 
#          contrasts = NULL, offset, ...) 
#    NULL

## Partial Matching
# Function arguments can also be partially matched, which is useful
# for interactive work. The order of operations when given an argument is
#1. Check for exact match for a named argument
#2. Check for a partial match
#3. Check for a positional match

# In addition to not speciying a default value, one can also set an 
# argument value to NULL
f <- function(a, b = 1, c = 2, d = NULL)
{
    
}
# We can check whether an R object is NULL with the is.NULL() function.
# It is sometimes useful to allow an argument to take the NULL value, 
# which might indicate that the function should take some specific action.