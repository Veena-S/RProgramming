#### Names
x <- 1:3

x

names(x)


names(x) <- c( "NY", "LA", "KY"  )

x

names(x)


attributes(x)


#### Lists can also have names

x <- list( "AB" = 1, "CD" = 2, "EF" = 3  )

x

names(x)

class(x)

attributes(x)



### Naming in Matrices.
# Create the matrix
m <- matrix( 1:4, nrow = 2, ncol = 2)

# Print the matrix
m

# Set the dimension names through  the function dimnames()
dimnames(m) <- list( c( "RowA", "RowB" ), c( "ColA", "ColB" ))

# Now print the matrix again and see the difference.
m

# Try to set the dimension names by the functions rownames() and colnames()
colnames(m) <- c( "RANew", "RBNew" )
rownames(m) <- c( "CANew", "CBNew" )

# Print the matrix again and check whether the new names are set.
m









