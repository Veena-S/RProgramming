# The lapply() function does the following simple series of operations:
#     1. it loops over a list, iterating over each element in that list
#     2. it applies a function to each element of the list
#         (a function that you specify)
#     3. and returns a list (the l is for “list”).
#     
# This function takes three arguments: 
#     (1) a list X; 
#     (2) a function (or the name of a function) FUN; 
#     (3) other arguments via its ... argument. 
# If X is not a list, it will be coerced to a list using as.list().



q <- list( a = 1: 5, b = rnorm(10))
lapply(q, mean)


q <- list( a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm( 100, 5 ))
lapply(q, mean)


# You can use lapply() to evaluate a function multiple times each with a 
# different argument. Below, is an example where I call the runif() function 
# (to generate uniformly distributed random variables) four times,
# each time generating a different number of random numbers.
# When you pass a function to lapply(), lapply() takes elements of the list
# and passes them as the first argument of the function you are applying.
# In the above example, the first argument of runif() is n, 
# and so the elements of the sequence 1:4 all got passed to the n argument 
# of runif().

q <- 1:4
lapply(q, runif)

# Functions that you pass to lapply() may have other arguments
# Here is where the ... argument to lapply() comes into play. 
# Any arguments that you place in the ... argument will get passed down
# to the function being applied to the elements of the list

# Here, the min = 0 and max = 10 arguments are passed down to runif() 
# every time it gets called

q <- 1 : 4
lapply(q, runif, min = 0, max = 10)


# The lapply() function and its friends make heavy use of anonymous functions. 
# Anonymous functions have no names. These are functions are generated 
# “on the fly” as you are using lapply(). Once the call to lapply() is finished,
# the function disappears and does not appear in the workspace.

# Create a list containing two matrices:

doubleMatList <- list( a = matrix( 1:4, 2, 2), b = matrix( 1:6, 3, 2) )
doubleMatList

# Suppose I wanted to extract the first column of each matrix in the list. 
# I could write an anonymous function for extracting the first column of each
# matrix
lapply( doubleMatList, function( elt ) { elt[, 1] })





