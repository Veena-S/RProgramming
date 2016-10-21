log(-1)

printMessage <- function(x)
{
    if( x > 0 )
    {
        print( "x is greater than zero" )
    }
    else
    {
        print( "x is less than or equal to zero" )
    }
    invisible(x)
}


printMessage(1)

printMessage(NA)