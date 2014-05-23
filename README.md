## Readme

# Summary
This is a readme file for the R script: run_analysis.R
This R Script has been prepated as a part of Course Project in course "Getting and Cleaning Data"
In short it does as mention below. Data Source for this script has been provided in the following "Data Source" section.  
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Data Source 
Data collected from the accelerometers from the Samsung Galaxy S smartphone which can be found in the below link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Note: Here files inside "Inertial Signals" folder have been ommited. These signals were used to estimate variables of the feature vectors for each pattern in X_train and X_test file.

# Output
The output of the script is a file name "tidy.data.txt" which covers all the conditions & steps mentioned in the "summary section".
For detail description on the variables/columns of this file please refer to codebook for this dataset ("CodeBook.md")

# How to Run?
Please follow below steps to run this script:

1. unzip the source data. It will create a forder under the current directory.

2. change your current directory location inside the directory that was created while uncompresing the zip file in the avobe step.

3. open rstudio/r-console and set working directory to the directory (as in step 2)

4. copy the scrip(run_analysis.R)t to current location

5. run the script as below:
   source("run_analysis.R")

6. It will create a space(" ") seperated file "tidy.data.txt" with required tidy data under current working directory

## Running "run_analysis.R", example(on windows): 
- Let's say, the downloaded zip file name is "UCI HAR Dataset.zip" and it is kept under directory "c:\data\" 
- After uncompress the zip directly on the current location(someting like using "Extract here"). It will create a folder "UCI HAR Dataset" under "c:\data\"
- cd "UCI HAR Dataset".So, now current location is "c:\data\UCI HAR Dataset"
- This directory("c:\data\UCI HAR Dataset") will have below components
	- Two directories : test & train
	- Four files: activity_labels.txt, features.txt, features_info.txt & README.txt
- Copy the script "run_analysis.R" to current directory("c:\data\UCI HAR Dataset") 
- Open rstudio/r-console and set working directory to the "c:\data\UCI HAR Dataset"
- Run the script using below command
	source("run_analysis.R")
- It will create a space(" ") seperated file "tidy.data.txt" with required tidy data under "c:\data\UCI HAR Dataset"


# Anslysis Steps
1. Read features data from file "features.txt" store it is a data frame
2. Filter the features names that has "mean()" or "std()" in the name and store the column positions in vector "columnLabelsIdx" [row label/positions in the data frame of step 1] 
3. The script filters the features names that has "mean()" or "std()" in the name and store filtered names in vector "columnLabels"
4. The script also have some codes to check all the column are filtered out properly. These will not be useful if we run the script as whole, but will be useful if anybody runs the script step by step.
5. Then it uses a series of "gsub" commands to cleanup default features names and convers it to standard readable column names.
Here it uses below considerations while renaming the features names:
	- Use only lower case
	- Although having dot "." in variable names is not encouraged some standards, we are using dot ".". Because these features names are very complex and combination to many components(like time, gyroscope etc..). Using dots makes it easy to seperate each of the components in the column names.
	- Other that dot no other symbols are used here
	- It used regular expressions with "perl = TRUE" in "gsub" for search and replace.
	Below is the list of filters that are used, first string before comma is the search string and second string after comma is the replace string: 
		- "^f","frequency"
		- "^t","time"
		- "Acc",".accelerometer"
		- "Gravity",".gravity"
		- "BodyBody",".body" 
		- "Body",".body"
		- "Jerk",".jerk"
		- "Mag",".magnitude"
		- "Gyro",".gyroscope"
		- "-mean\\(\\)",".mean"
		- "-std\\(\\)",".standard.deviation"
		- "-X",".x.axis"
		- "-Y",".y.axis"
		- "-Z",".z.axis"

6. After celaning columns name we it stored final column names in vector "columnLabelsClean"

7. Append  "subject" & "activity" column names in sequence in the final columns (in vector "columnLabelsClean"). As these columns will be added at the end of the merged data set in the following spets.

8. Read train data file "X_train.txt" and store in data frame "trainData"

9. Use "columnLabelsIdx"(step 2) to find out the required columns and in "trainData" keep only required columns

10. Read read related subject data from file subject_train.txt and store in data frame "trainSubject"

11. Read read related activity data from file y_train.txt and store in data frame "trainActivity"

12. Append related train subject("trainSubject") & train activity("trainActivity") data in the main train data set ("trainData").
Add subject followed by activity in sequence as we have prepared column names in this sequence(step 7)
 
13. Now train data frame having complete data set for tarin with subject & activity. 
Now update column names in main train data frame("trainData") using character vector "columnLabelsClean" (step 7)

14. Read test data file "X_test.txt" and store in data frame "testData"

15. Use "columnLabelsIdx"(step 2) to find out the required columns and in "testData" keep only required columns

16. Read read related subject data from file subject_test.txt and store in data frame "testSubject"

17. Read read related activity data from file y_test.txt and store in data frame "testActivity"

18. Append related test subject("testSubject") & test activity("testActivity") data in the main test data set ("testData").
Add subject followed by activity in sequence as we have prepared column names in this sequence(step 7)
 
19. Now train data frame having complete data set for test with subject & activity. 
Now update column names in main test data frame("testData") using character vector "columnLabelsClean" (step 7)

20. Combine train & test data frames to create a single data frame having both train and test data together and store it in data frame "trainAndTestData". Here the script used rbind to combin all the rows of both data frames.

21. Read activity description from file "activity_labels.txt" and store it in data frame "activityLabels"

22. Replace the activity type numeric code with activity type strings using "merge" function. 
This process will place the curent numeric activity column at the beginning with same column name and add the new string activity name at the end. Now "trainAndTestData" having activity numeric column as first column and string activity column at the end.

23. Drop the previous numerical activity column(at the beginning) and rename the newly added activity string column (at the end) to "activity" in the combined data frame ("trainAndTestData") 

24. Now "trainAndTestData" having all the related both train & test data with related subject and descriptive activity column. Also all the column names in the data set are descriptive.

25. Convert data frame ("trainAndTestData" ) to table to use lapply for final aggration.

26. Now calculate Average(mean) of each variable for each activity and each subject. 
Use "lapply" function over "trainAndTestData" calculating mean by column "subject" & "activity". Store the output in data frame "tidyData"

27. Process in previous step(step 26) will place the "activity" & "subject" columns at the beginning in data farme "tidyData", but the column names will be different. So, rename those respective columns names to "activity" & "subject".

28. Now data frame "tidyData" having required tidy data. Write the tidy data ("tidyData") to file using "write.table" usining space (" ") seperator and exculding row names.
