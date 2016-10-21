# The mapply() function is a multivariate apply of sorts which applies a 
# function in parallel over a set of arguments. Recall that lapply() and friends 
# only iterate over a single R object. What if you want to iterate over multiple 
# R objects in parallel? This is what mapply() is for.

str(mapply)


# The arguments to mapply() are
# • FUN is a function to apply
# • ... contains R objects to apply over
# • MoreArgs is a list of other arguments to FUN.
# • SIMPLIFY indicates whether the result should be simplified

# The mapply() function has a different argument order from lapply() because 
# the function to apply comes first rather than the object to iterate over. 
# The R objects over which we apply the function are given in the ... argument 
# because we can apply over an arbitrary number of R objects.

# For example, the following is tedious to type:
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))

# Instead, mapply() can be used to generate the same sequence:
mapply( rep, 1:4, 4:1 )


# Here’s another example for simulating randon Normal variables

noise <- function( n, mean, sd)
{
    rnorm( n, mean, sd)
}

# Simulate 5 random numbers
noise( 5, 1, 2)

## This only simulates 1 set of numbers, not 5
 noise(1:5, 1:5, 2)
 
 # Here we can use mapply() to pass the sequence 1:5 separately to the noise()
 # function so that we can get 5 sets of random numbers, each with a different 
 # length and mean.
  mapply(noise, 1:5, 1:5, 2)
  
  # The above call to mapply() is the same as
 list( noise(1, 1, 2),
       noise(2, 2, 2),
       noise(3, 3, 2),
       noise(4, 4, 2),
       noise(5, 5, 2))
 
 
 # The mapply function can be used to automatically "vectorize" a function.
 # That is, this can be used to take a function that typically only takes single
 # arguments and create a new function that can take vector arguments.
 # This is often needed when you want to plot functions
 
 # Below is an example of a function that computes the sum of squares given 
 # some data, a mean parameter and a standard deviation.
 # Formula is 
 
 sumsq <- function( mu, sigma, x)
 {
     sum((( x - mu ) / sigma )^2)
 }
 # This function takes a mean mu, a standard deviation sigma, and 
 # some data in a vector x.
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
