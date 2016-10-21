# R has developed a special representation for dates and times. 
# Dates are represented by the Date class and 
# times are represented by the POSIXct or the POSIXlt class. 
# Dates are stored internally as the number of days since 1970-01-01 
# while times are stored internally as the number of seconds since 1970-01-01.

### DATES
# represented by Date class
# can be coerced from a character string using the as.Date() function
# can see the internal representation of a Date object by using the unclass()

x <- as.Date("1970-01-01")
x   # Prints the date as "1970-01-01"

unclass(x) # Gives 0, as the no: of days starting from 1970-01-01 is zero.

unclass( as.Date( "1970-01-02" )) # Gives 1, as the no: of days starting 
                                  # from 1970-01-01 is one.


### TIMES
# Times are represented by the POSIXct or the POSIXlt class. 
# POSIXct is just a very large integer under the hood. 
# It use a useful class when you want to store times in something like a 
# data frame. POSIXlt is a list underneath and it stores a bunch of 
# other useful information like the day of the week, day of the year, 
# month, day of the month.

# There are a number of generic functions that work on dates and times 
# to help you extract pieces of dates and/or times
# • weekdays: give the day of the week
# • months: give the month name
# • quarters: give the quarter number (“Q1”, “Q2”, “Q3”, or “Q4”)

# Times can be coerced from a character string using the as.POSIXlt or
# as.POSIXct function.
x <- Sys.time()
x
class(x)
unclass(x)

p <- as.POSIXlt(x)
p
pc <- unclass(p)
pc
names(pc)
#  [1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"  
#  [8] "yday"   "isdst"  "zone"   "gmtoff"
p$wday    # day of the week


# strptime() takes a character vector that has dates and times and
# converts them into to a POSIXlt object.
datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10" )
x <- strptime( datestring, "%B %d, %Y %H:%M" )
x
class(x)


### Operations on Dates and Times
x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x-y
# Error in x - y : non-numeric argument to binary operator
#In addition: Warning message:
#Incompatible methods ("-.Date", "-.POSIXt") for "-" 
x <- as.POSIXlt(x)
x-y


# The nice thing about the date/time classes is that they keep track 
# of all the annoying things about dates and times, like leap years, 
# leap seconds, daylight savings, and time zones.
# Here’s an example where a leap year gets involved.
x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x-y

# With two differnet time zones
# Local time zone
x <- as.POSIXct("2012-10-25 24:00:00")
y <- as.POSIXct("2012-10-25 24:00:00", tz = "GMT")
y-x



