######### IF ELSE

x
if( x >3 )
{
    y <- 10
} else
{
    y <- 0
}
y

# OR

y <- if( x > 3 ) { 10 } else { 0 }


### FOR LOOP
# 1.
for( i in 1:10)
{
    print(i)
}
# 2.
x <- c( "a", "b", "c", "d" )
for( idx in 1:4 )
{
    print( x[idx]) # Mere x[idx] doesn't print the value.
}

# 3. Using seq_along()
# The seq_along() function is commonly used in conjunction with 
# for loops in order to generate an integer sequence based on the
# length of an object (in this case, the object x).
for( idx in seq_along(x) )
{
    print( x[idx] )
}
seq_along(x)   # Result: 1 2 3 4

#4. It is not necessary to use an index to be an integer always.
# Instead the index variable can take values from the vector itself.
for( letter in x )
{
    print(letter)
}


# 5. For one line loops, curly braces are not necessary
for( idx in 1:4 )    print( x[idx])


########## NESTED FOR LOOP
x <- matrix( 1:6, 2, 3 )
x
nrow(x)            # Returns the number of rows in matrix
seq_len(nrow(x))   # Creates an integer sequence of specified length.
for( i in seq_len( nrow( x )))
{
    for( j in seq_len( ncol( x )))
    {
        print( x[i, j])
    }
         
}


#### WHILE LOOPS
count <- 0
while( count < 10 )
{
    print( count )
    count <- count + 1
}

# While loops with multiple conditions
z <- 5
set.seed(1)

while( z >= 3 && z <= 10 )
{
    coin <- rbinom( 1, 1, 0.5 )
    if( coin == 1 )
    {
        z <- z + 1
    }
    else
    {
        z <- z - 1
    }
}
print( z )


# repeat LOOPS
#repeat initiates an infinite loop from the start.
# The only way to exit a repeat loop is to call break.
########### DON'T EXECUTE THE BELOW CODE.
x0 <- 1
tol <- 1e-8
x1 <- 0
repeat
{
    # x1 <- computeEstimate()  # it's an imaginary function
    if( abs(x1 - x0) < tol )
    {
        break
    }
    else
    {
        x0 <- x1
    }
    
}
##############

# next is used to skip an iteration of a loop
for( i in 1:100 )
{
    if( i <= 20 )
    {
        # Skip the first iterations
        next
    }
    #### To do
}

# break is used to exit a loop immediately, regardless of what 
# iteration the loop may be on.
for( i in 1:100 )
{
    print( i )
    if( i > 20 )
    {
        # Stop loop after 20 iterations
        break
    }
}
