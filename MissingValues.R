#### Missing Values ###

### Create a vector with NA in it.
x <- c(1, 2, NA, 10, 3)
class(x)
x
is.na(x)
is.nan(x)



### Create a vector with both NA and NaN values in it.

x <- c( 1, 2, NA, NaN, 4 )

### Print x
x

### Check for NA
is.na(x)


### Check for NaN
is.nan(x)
