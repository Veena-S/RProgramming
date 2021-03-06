########################   ******* PART 3 ******* ###################
# Write a function that takes a directory of data files and a threshold for 
# complete cases and calculates the correlation between sulfate and nitrate for
# monitor locations where the number of completely observed cases 
# (on all variables) is greater than the threshold. The function should return
# a vector of correlations for the monitors that meet the threshold requirement.
# If no monitors meet the threshold requirement, then the function should return
# a numeric vector of length 0. 
# 
# 
# For this function you will need to use the 'cor' function in R which calculates
# the correlation between two vectors. Please read the help page for this
# function via '?cor' and make sure that you know how to use it.
# 
# A prototype of this function follows

corr <- function( directory, threshold = 0 )
{
    #directory is a character vector of length 1 indicating the location of the
    # csv files
    
    # threshold is a numeric vector of length 1 indicating the number of 
    # completely observed observations (on all variables) required to compute 
    # the correlation between nitrate and sulfate; the default is zero
    
    # Return a numeric vector of correlations 
    # NOTE: Do not round the result
    # 
    
    
    # directory <- "specdata"
    # threshold <- 150
    
    
    filesList <- list.files(directory, full.names = TRUE)
    corVect <- numeric()
    for( file in filesList )
    {
        # print( file )
        
        csvData <- read.csv(file)
        good <- complete.cases(csvData)
        numCompleteCases <- sum( good )
        
        # print(  numCompleteCases)
        
        if( numCompleteCases <= threshold )
        {
            
            # print("Skipping")
            
            # Need to find correlation, only if the number of completely 
            # observed cases is greater than the threshold. 
            # Currently, it is less. So skipping the current iteration.
            next
        }
        corVal <- cor( csvData$nitrate[good], csvData$sulfate[good])
        
        # print(  corVal )
        
        corVect <- c( corVect, corVal)
        
    }
    corVect
}
