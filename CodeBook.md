## CodeBook

# Summary
This is a codebook for a tidy data set in file "tidy.data.txt".
This data set has beed prepared following below steps:
* Uses data collected from the accelerometers from the Samsung Galaxy S smartphone which can be found in the below link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

First two columns of this data set containg "activity" & "subject" and rest of the colums contains "mean" for the corresponding measurements denoded the the column name.

# Decsription of each columns in the tidy dataset ""tidy.data.txt"
[1] "activity"    
- Data Type: character
- Activity done by the subject during the original experiment.
- This column will have any of the below values:
	 - WALKING
	 - WALKING_UPSTAIRS
	 - WALKING_DOWNSTAIRS
	 - SITTING
	 - STANDING
	 - LAYING

[2] "subject"    
- Data Type: integer 
- Values of this column are refering to the subject(person) on which the original experiment conducted. This column will have any integer value between 1 to 30 

[3] "time.body.accelerometer.mean.x.axis"  
- Data Type: Numeric (Double)
- Mean of "mean time domain body acceleration signals from accelerometer in x axis" 

[4] "time.body.accelerometer.mean.y.axis"  
- Data Type: Numeric (Double)
- Mean of "mean time domain body acceleration signals from accelerometer in y axis" 
 
[5] "time.body.accelerometer.mean.z.axis"     
- Data Type: Numeric (Double)
- Mean of "mean time domain body acceleration signals from accelerometer in z axis" 
 
[6] "time.body.accelerometer.standard.deviation.x.axis" 
- Data Type: Numeric (Double)
- Mean of "standard devition for time domain body acceleration signals from accelerometer in x axis" 
 
[7] "time.body.accelerometer.standard.deviation.y.axis"  
- Data Type: Numeric (Double)
- Mean of "standard devition for time domain body acceleration signals from accelerometer in y axis" 
 
[8] "time.body.accelerometer.standard.deviation.z.axis"  
- Data Type: Numeric (Double)
- Mean of "standard devition for time domain body acceleration signals from accelerometer in z axis" 
 
[9] "time.gravity.accelerometer.mean.x.axis"  
- Data Type: Numeric (Double)
- Mean of "mean time domain gravity signals from accelerometer in x axis" 
 
[10] "time.gravity.accelerometer.mean.y.axis" 
- Data Type: Numeric (Double)
- Mean of "mean time domain gravity signals from accelerometer in y axis" 
                       
[11] "time.gravity.accelerometer.mean.z.axis"  
- Data Type: Numeric (Double)
- Mean of "mean time domain gravity signals from accelerometer in z axis" 
                      
[12] "time.gravity.accelerometer.standard.deviation.x.axis" 
- Data Type: Numeric (Double)
- Mean of "standard devition for time domain gravity signals from accelerometer in x axis" 
         
[13] "time.gravity.accelerometer.standard.deviation.y.axis"   
- Data Type: Numeric (Double)
- Mean of "standard devition for time domain gravity signals from accelerometer in y axis" 
       
[14] "time.gravity.accelerometer.standard.deviation.z.axis"  
- Data Type: Numeric (Double)
- Mean of "standard devition for time domain gravity signals from accelerometer in z axis" 
        
[15] "time.body.accelerometer.jerk.mean.x.axis"                      
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk signals from accelerometer in x axis" 

[16] "time.body.accelerometer.jerk.mean.y.axis"                      
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk signals from accelerometer in y axis" 

[17] "time.body.accelerometer.jerk.mean.z.axis"                      
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk signals from accelerometer in z axis" 

[18] "time.body.accelerometer.jerk.standard.deviation.x.axis"      
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk signals from accelerometer in x axis" 
  
[19] "time.body.accelerometer.jerk.standard.deviation.y.axis"        
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk signals from accelerometer in y axis" 

[20] "time.body.accelerometer.jerk.standard.deviation.z.axis"        
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk signals from accelerometer in z axis" 

[21] "time.body.gyroscope.mean.x.axis"                               
- Data Type: Numeric (Double)
- Mean of "mean time domain body Angular velocity from gyroscope in x axis" 

[22] "time.body.gyroscope.mean.y.axis"                               
- Data Type: Numeric (Double)
- Mean of "mean time domain body Angular velocity from gyroscope in y axis" 

[23] "time.body.gyroscope.mean.z.axis"                             
- Data Type: Numeric (Double)
- Mean of "mean time domain body Angular velocity from gyroscope in z axis" 

[24] "time.body.gyroscope.standard.deviation.x.axis"                 
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body Angular velocity from gyroscope in x axis" 

[25] "time.body.gyroscope.standard.deviation.y.axis"                 
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body Angular velocity from gyroscope in y axis" 

[26] "time.body.gyroscope.standard.deviation.z.axis"
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body Angular velocity from gyroscope in z axis" 

[27] "time.body.gyroscope.jerk.mean.x.axis"                          
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk Angular velocity from gyroscope in x axis" 

[28] "time.body.gyroscope.jerk.mean.y.axis"                          
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk Angular velocity from gyroscope in y axis" 

[29] "time.body.gyroscope.jerk.mean.z.axis"                          
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk Angular velocity from gyroscope in z axis" 

[30] "time.body.gyroscope.jerk.standard.deviation.x.axis"            
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk Angular velocity from gyroscope in x axis" 

[31] "time.body.gyroscope.jerk.standard.deviation.y.axis"            
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk Angular velocity from gyroscope in y axis" 

[32] "time.body.gyroscope.jerk.standard.deviation.z.axis"            
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk Angular velocity from gyroscope in z axis" 

[33] "time.body.accelerometer.magnitude.mean"                        
- Data Type: Numeric (Double)
- Mean of "mean time domain body magnitude from accelerometer" 

[34] "time.body.accelerometer.magnitude.standard.deviation"          
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body magnitude from accelerometer" 

[35] "time.gravity.accelerometer.magnitude.mean"                     
- Data Type: Numeric (Double)
- Mean of "mean time domain gravity magnitude from accelerometer" 

[36] "time.gravity.accelerometer.magnitude.standard.deviation"       
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain gravity magnitude from accelerometer" 

[37] "time.body.accelerometer.jerk.magnitude.mean"                   
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk magnitude from accelerometer" 

[38] "time.body.accelerometer.jerk.magnitude.standard.deviation"     
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk magnitude from accelerometer" 

[39] "time.body.gyroscope.magnitude.mean"                            
- Data Type: Numeric (Double)
- Mean of "mean time domain body magnitude from gyroscope" 

[40] "time.body.gyroscope.magnitude.standard.deviation"
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body magnitude from gyroscope" 
              
[41] "time.body.gyroscope.jerk.magnitude.mean"                       
- Data Type: Numeric (Double)
- Mean of "mean time domain body jerk magnitude from gyroscope" 

[42] "time.body.gyroscope.jerk.magnitude.standard.deviation"         
- Data Type: Numeric (Double)
- Mean of "standard deviation for time domain body jerk magnitude from gyroscope" 

[43] "frequency.body.accelerometer.mean.x.axis"                      
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body acceleration signals from accelerometer in x axis" 

[44] "frequency.body.accelerometer.mean.y.axis"                      
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body acceleration signals from accelerometer in y axis" 

[45] "frequency.body.accelerometer.mean.z.axis"                      
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body acceleration signals from accelerometer in z axis" 

[46] "frequency.body.accelerometer.standard.deviation.x.axis"        
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body acceleration signals from accelerometer in x axis" 

[47] "frequency.body.accelerometer.standard.deviation.y.axis"        
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body acceleration signals from accelerometer in y axis" 

[48] "frequency.body.accelerometer.standard.deviation.z.axis"        
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body acceleration signals from accelerometer in z axis" 

[49] "frequency.body.accelerometer.jerk.mean.x.axis"
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body jerk signals from accelerometer in x axis" 
                 
[50] "frequency.body.accelerometer.jerk.mean.y.axis"                 
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body jerk signals from accelerometer in y axis" 

[51] "frequency.body.accelerometer.jerk.mean.z.axis"                 
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body jerk signals from accelerometer in z axis" 

[52] "frequency.body.accelerometer.jerk.standard.deviation.x.axis"
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body jerk signals from accelerometer in x axis" 

[53] "frequency.body.accelerometer.jerk.standard.deviation.y.axis"   
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body jerk signals from accelerometer in y axis" 

[54] "frequency.body.accelerometer.jerk.standard.deviation.z.axis"   
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body jerk signals from accelerometer in z axis" 

[55] "frequency.body.gyroscope.mean.x.axis"                          
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body Angular velocity from gyroscope in x axis" 

[56] "frequency.body.gyroscope.mean.y.axis"                          
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body Angular velocity from gyroscope in y axis" 

[57] "frequency.body.gyroscope.mean.z.axis"                          
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body Angular velocity from gyroscope in z axis" 

[58] "frequency.body.gyroscope.standard.deviation.x.axis"            
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body Angular velocity from gyroscope in x axis" 

[59] "frequency.body.gyroscope.standard.deviation.y.axis"            
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body Angular velocity from gyroscope in y axis" 

[60] "frequency.body.gyroscope.standard.deviation.z.axis"            
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body Angular velocity from gyroscope in z axis" 

[61] "frequency.body.accelerometer.magnitude.mean"  
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body magnitude from accelerometer" 

[62] "frequency.body.accelerometer.magnitude.standard.deviation"     
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body magnitude from accelerometer" 

[63] "frequency.body.accelerometer.jerk.magnitude.mean"              
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body jerk magnitude from accelerometer" 

[64] "frequency.body.accelerometer.jerk.magnitude.standard.deviation"
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body jerk magnitude from accelerometer" 

[65] "frequency.body.gyroscope.magnitude.mean"    
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body magnitude from gyroscope" 

[66] "frequency.body.gyroscope.magnitude.standard.deviation" 
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body magnitude from gyroscope" 

[67] "frequency.body.gyroscope.jerk.magnitude.mean"                  
- Data Type: Numeric (Double)
- Mean of "mean frequency domain body jerk magnitude from gyroscope" 

[68] "frequency.body.gyroscope.jerk.magnitude.standard.deviation"
- Data Type: Numeric (Double)
- Mean of "standard deviation for frequency domain body jerk magnitude from gyroscope" 
