### Based on the lecture "12-ReadingTabularData"

data <- read.table( "subtitle.txt" ) ## ERROR

data <- read.csv( "hw1_data.csv" )

txtdata <- read.table( "TestTable.txt" )


### Based on the lecture "13-ReadingLargeTables"

initial <- read.csv( "hw1_data.csv", nrows = 10 )
classes <- sapply( initial, class)
tabAll <- read.csv("hw1_data.csv", colClasses = classes)
tabAll
initial
classes