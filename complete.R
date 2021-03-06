########################   ******* PART 2 ******* ###################
# Write a function that reads a directory full of files and reports the
# number of completely observed cases in each data file. The function 
# should return a data frame where the first column is the name of the
# file and the second column is the number of complete cases. 
# A prototype of this function follows

complete <- function( directory, id = 1:332 )
{
    # directory is a character vector of length 1 indicating the location
    # of the CSV files
    
    # 'id' is an integer vector indicating the monitor ID numbers to be used.
    
    # Return a data frame in the form:
    # id nobs
    # 1 117
    # 2 1041
    # ...
    # where id is the monitor id and nobs is the number of complete cases
    
    filesList <- list.files(directory, full.names = TRUE)
    # completeList <- data.frame( id = '', nobs = '' )
    completeList <- data.frame()
    for( i in id )
    {
        fileData <- read.csv( filesList[i])
        
        #completeList <- rbind( completeList, i, sum(complete.cases(fileData)))
        # completeList <- cbind( id = i, mobs = sum(complete.cases(fileData)))
        
        # As cbind returns a data frame, with the specified columns added,
        # that data frame can be row bound to the existing data frame.
        completeList <- rbind( completeList,
                               cbind( id = i, nobs = sum(complete.cases(fileData))))
        
    }
    completeList
}
