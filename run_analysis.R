# assuming that the file current working directory is in the directory 
# which has been created after extracting "UCI HAR Dataset.zip" has been 

#load the required library
library(data.table)

# read features data
features <- read.table("./features.txt")

# Findout features index having  mean and standard deviation
# we have filter out some column angle(...) as they are 
# not calculating amy mean or std, 
# So, we are applying below filter:
# values having "mean()" or "std()"
# Filterout our column positions
columnLabelsIdx <- grep("mean\\(\\)|std\\(\\)",features$V2, ignore.case= T)

# Filterout our column names
columnLabels <- features[grep("mean\\(\\)|std\\(\\)",
                              features$V2, ignore.case= T), "V2"]
columnLabels <- as.character(columnLabels)

# check all the column are filtered out properly, 
# below should retrun a integer vector with 0 elements 
which(features[columnLabelsIdx,"V2"] != columnLabels)
#integer(0)

any(features[columnLabelsIdx,"V2"] != columnLabels)
#[1] FALSE

# check uniquness of the featires names
which(data.frame(table(columnLabels))[,2] > 1)
#integer(0)

all(data.frame(table(columnLabels))[,2] == 1)
#[1] TRUE

# prepare clean column Labels
columnLabelsClean <- gsub("^f","frequency",columnLabels,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("^t","time",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("Acc",".accelerometer",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("Gravity",".gravity",columnLabelsClean,
                          ignore.case = FALSE, perl = TRUE)
## "BodyBody" should be replaced before "Body"
columnLabelsClean <- gsub("BodyBody",".body",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE) 
columnLabelsClean <- gsub("Body",".body",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("Jerk",".jerk",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("Mag",".magnitude",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("Gyro",".gyroscope",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("-mean\\(\\)",".mean",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("-std\\(\\)",".standard.deviation",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("-X",".x.axis",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("-Y",".y.axis",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)
columnLabelsClean <- gsub("-Z",".z.axis",columnLabelsClean,
                                ignore.case = FALSE, perl = TRUE)

# add  subject & activity column names in sequence
columnLabelsClean <- append(columnLabelsClean, c("subject","activity"))


# read train data
trainData <- read.table("./train/X_train.txt")
# only keep required columns and listed in columnLabelsIdx & columnLabels
trainData <- trainData[,columnLabelsIdx]
# read related subject & activity data
trainSubject <- read.table("./train/subject_train.txt")
trainActivity <- read.table("./train/y_train.txt")
# add sing sunject & activity columns
trainData <- cbind(trainData,trainSubject,trainActivity)
# add columns name
names(trainData) <- columnLabelsClean

# read test data
testData <- read.table("./test/X_test.txt")
# only keep required columns and listed in columnLabelsIdx & columnLabels
testData <- testData[,columnLabelsIdx]
# read related subject & activity data
testSubject <- read.table("./test/subject_test.txt")
testActivity <- read.table("./test/y_test.txt")
# add sing sunject & activity columns
testData <- cbind(testData,testSubject,testActivity)
# add columns name
names(testData) <- columnLabelsClean

# merge/append train and test data
trainAndTestData <- rbind(trainData,testData)

# read activity data
activityLabels <- read.table("./activity_labels.txt")

# replace the activity type numeric code with activity type strings
# it will place the curent numeric activity column 
# at the beginning with same column name
# and add the new string activity name at the end
trainAndTestData <- merge(trainAndTestData, activityLabels ,
                          by.x="activity", by.y="V1")

# drop the previous numerical activity column
trainAndTestData$activity <- NULL
# rename the newly added(at the end) descriptive 
# activity column name to acivity
names(trainAndTestData)[ncol(trainAndTestData)] <- "activity"

# prepare tidy dataset 
# convert data frame to table to use lapply
trainAndTestData <- data.table(trainAndTestData)
# average of each variable for each activity and each subject
# it will place the activity & subject column at the beginning
# .SD which refers to the Subset of the Data.table for each group 
# (excluding the grouping columns)
tidyData <- trainAndTestData[, lapply(.SD,mean), 
                by=list(trainAndTestData$activity,trainAndTestData$subject)]

setnames(tidyData, tidyData[,1], "activity")
setnames(tidyData, tidyData[,2], "subject")

#write the tidy data to file
write.table(tidyData,"tidy.data.txt", row.names = FALSE)


