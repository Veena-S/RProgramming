# The apply() function is used to a evaluate a function (often an anonymous one) 
# over the margins of an array. It is most often used to apply a function to the
# rows or columns of a matrix (which is just a 2-dimensional array). 
# However, it can be used with general arrays, for example, to take the
# average of an array of matrices. Using apply() is not really faster than 
# writing a loop, but it works in one line and is highly compact.


str(apply)

# The arguments to apply are:
# • X is an array
# • MARGIN is an integer vector indicating which margins should be “retained”.
# • FUN is a function to be applied
# • ... is for other arguments to be passed to FUN

# Here I create a 20 by 10 matrix of Normal random numbers.
# I then compute the mean of each column.

x <- matrix( rnorm(200), 20, 10)
apply( x, 2, mean)   # Take the mean of each column
# Computing sum of each row
apply(x, 1, sum)



# Note that in both calls to apply(), the return value was a vector of numbers.
# You’ve probably noticed that the second argument is either a 1 or a 2, 
# depending on whether we want row statistics or column statistics. 
# What exactly is the second argument to apply()?
# The MARGIN argument essentially indicates to apply() which dimension of the
# array you want to preserve or retain. So when taking the mean of each column,
# I specify 
# > apply(x, 2, mean)
# because I want to collapse the first dimension (the rows) by taking the mean 
# and I want to preserve the number of columns. Similarly, when I want the 
# row sums, I run
# > apply(x, 1, mean)
# because I want to collapse the columns (the second dimension) and preserve 
# the number of rows (the first dimension).

# 
# For the special case of column/row sums and column/row means of matrices,
# we have some useful shortcuts.
# • rowSums = apply(x, 1, sum)
# • rowMeans = apply(x, 1, mean)
# • colSums = apply(x, 2, sum)
# • colMeans = apply(x, 2, mean)
# The shortcut functions are heavily optimized and hence are much faster, 
# but you probably won’t notice unless you’re using a large matrix. 
# Another nice aspect of these functions is that they are a bit more descriptive.
# It’s arguably more clear to write colMeans(x) in your code than
# apply(x, 2, mean)                                                                                             mean).

# you can compute quantiles of the rows of a matrix using quantile() function.
x <- matrix( rnorm( 200 ), 20, 10)
# Get row quantiles
# Notice that I had to pass the probs = c(0.25, 0.75) argument to quantile()
# via the ... argument to apply().
apply( x, 1, quantile, probs = c( 0.25, 0.75 ))

# For a higher dimensional example, I can create an array of 2 * 2 matrices
# and the compute the average of the matrices in the array.
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)

# In the call to apply() here, I indicated via the MARGIN argument that I
# wanted to preserve the first and second dimensions and to collapse the third
# dimension by taking the mean.
# There is a faster way to do this specific operation

rowMeans( a, dims = 2)









