mad_libs <- function(...){
    # Do your argument unpacking here!
    args <- list( ... )
    # place <- args[["place"]]
    # adjective <- args[["adjective"]]
    # noun <- args[["noun"]]
    
    place <- args[[1]]
    adjective <- args[[2]]
    noun <- args[[3]]
    
    print( args)
    print( place)
    print(adjective)
    print(noun)
    
    # Don't modify any code below this comment.
    # Notice the variables you'll need to create in order for the code below to
    # be functional!
    paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
