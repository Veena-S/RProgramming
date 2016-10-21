# The split() function takes a vector or other objects and splits it
# into groups determined by a factor or list of factors.

# The arguments of split are:
str(split)

# where
# • x is a vector (or list) or data frame
# • f is a factor (or coerced to one) or a list of factors
# • drop indicates whether empty factors levels should be dropped

# Here we simulate some data and split it according to a factor variable. 
# Note that we use the gl() function to “generate levels” in a factor variable.

x <- c( rnorm( 10 ), runif( 10 ), rnorm( 10, 1))

f<- gl( 3, 10 )

split( x, f)

lapply( split( x, f), mean)

library(datasets)
head(airquality)
s<- split(airquality, airquality$Month)
str(s)
lapply( s, function( x ){ colMeans(x[, c( "Ozone", "Solar.R", "Wind" )])})
sapply( s, function( x ){ colMeans(x[, c( "Ozone", "Solar.R", "Wind" )])})
sapply( s, function( x ){ 
               colMeans(x[, c( "Ozone", "Solar.R", "Wind" )], 
                        na.rm = TRUE)})



# Interaction function
x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)
f1
f2
## Create interaction of two factors
interaction(f1, f2)
str(split(x, list(f1, f2)))
str(split(x, list(f1, f2), drop = TRUE))
