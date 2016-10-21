# tapply() is used to apply a function over subsets of a vector. 
# It can be thought of as a combination of split() and sapply() for vectors only.
str(tapply)

# The arguments to tapply() are as follows:
#   • X is a vector
#   • INDEX is a factor or a list of factors (or else they are coerced to factors)
#   • FUN is a function to be applied
#   • … contains other arguments to be passed FUN
#   • simplify, should we simplify the result?
# Given a vector of numbers, one simple operation is to take group means.

# Simulate some data
x <- c( rnorm(10), runif(10), rnorm(10, 1))
# Define some groups with a factor variable
f <- gl(3, 10)

tapply(x, f, mean)

tapply(x, f, mean, simplify = FALSE)

tapply(x, f, range)
