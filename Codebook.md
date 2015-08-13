#Codebook

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

##Feature Selection

The features selected for this database come from the Accelerometer and Gyroscope 3-axial raw signals timeAcceleration-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the Acceleration signal was then separated into body and gravity Acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear Acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the Magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Data Set

Each row in the data identifies the unique combination of subject and activity performed. The first two columns of the data set are:  

 [1] "subject" – The ID of the test subject. This ranges from 1 to 30.  
 [2] "activity" – type of activity performed by the subject. There are six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The following are the remaining columns of the data set. “mean” denotes the mean of the measurement and “std” denotes the standard deviation. The actual value we list is the mean of the column heading, for that particular subject and activity.  For example, column 3 is the mean of the mean of the time-Body-Acceleration value in the X-axis.  Column 6 is the mean of the standard deviation of the time-Body-Acceleration value in the X-axis.
                                 
 [3] "timeBodyAcceleration-mean-X"                
 [4] "timeBodyAcceleration-mean-Y"                
 [5] "timeBodyAcceleration-mean-Z"                
 [6] "timeBodyAcceleration-std-X"                 
 [7] "timeBodyAcceleration-std-Y"                 
 [8] "timeBodyAcceleration-std-Z"                 
 [9] "timeGravityAcceleration-mean-X"             
[10] "timeGravityAcceleration-mean-Y"             
[11] "timeGravityAcceleration-mean-Z"             
[12] "timeGravityAcceleration-std-X"              
[13] "timeGravityAcceleration-std-Y"              
[14] "timeGravityAcceleration-std-Z"              
[15] "timeBodyAccelerationJerk-mean-X"            
[16] "timeBodyAccelerationJerk-mean-Y"            
[17] "timeBodyAccelerationJerk-mean-Z"            
[18] "timeBodyAccelerationJerk-std-X"             
[19] "timeBodyAccelerationJerk-std-Y"             
[20] "timeBodyAccelerationJerk-std-Z"             
[21] "timeBodyGyroscope-mean-X"                   
[22] "timeBodyGyroscope-mean-Y"                   
[23] "timeBodyGyroscope-mean-Z"                   
[24] "timeBodyGyroscope-std-X"                    
[25] "timeBodyGyroscope-std-Y"                    
[26] "timeBodyGyroscope-std-Z"                    
[27] "timeBodyGyroscopeJerk-mean-X"               
[28] "timeBodyGyroscopeJerk-mean-Y"               
[29] "timeBodyGyroscopeJerk-mean-Z"               
[30] "timeBodyGyroscopeJerk-std-X"                
[31] "timeBodyGyroscopeJerk-std-Y"                
[32] "timeBodyGyroscopeJerk-std-Z"                
[33] "timeBodyAccelerationMagnitude-mean"         
[34] "timeBodyAccelerationMagnitude-std"          
[35] "timeGravityAccelerationMagnitude-mean"      
[36] "timeGravityAccelerationMagnitude-std"       
[37] "timeBodyAccelerationJerkMagnitude-mean"     
[38] "timeBodyAccelerationJerkMagnitude-std"      
[39] "timeBodyGyroscopeMagnitude-mean"            
[40] "timeBodyGyroscopeMagnitude-std"             
[41] "timeBodyGyroscopeJerkMagnitude-mean"        
[42] "timeBodyGyroscopeJerkMagnitude-std"         
[43] "frequencyBodyAcceleration-mean-X"           
[44] "frequencyBodyAcceleration-mean-Y"           
[45] "frequencyBodyAcceleration-mean-Z"           
[46] "frequencyBodyAcceleration-std-X"            
[47] "frequencyBodyAcceleration-std-Y"            
[48] "frequencyBodyAcceleration-std-Z"            
[49] "frequencyBodyAccelerationJerk-mean-X"       
[50] "frequencyBodyAccelerationJerk-mean-Y"       
[51] "frequencyBodyAccelerationJerk-mean-Z"       
[52] "frequencyBodyAccelerationJerk-std-X"        
[53] "frequencyBodyAccelerationJerk-std-Y"        
[54] "frequencyBodyAccelerationJerk-std-Z"        
[55] "frequencyBodyGyroscope-mean-X"              
[56] "frequencyBodyGyroscope-mean-Y"              
[57] "frequencyBodyGyroscope-mean-Z"              
[58] "frequencyBodyGyroscope-std-X"               
[59] "frequencyBodyGyroscope-std-Y"               
[60] "frequencyBodyGyroscope-std-Z"               
[61] "frequencyBodyAccelerationMagnitude-mean"    
[62] "frequencyBodyAccelerationMagnitude-std"     
[63] "frequencyBodyAccelerationJerkMagnitude-mean"
[64] "frequencyBodyAccelerationJerkMagnitude-std" 
[65] "frequencyBodyGyroscopeMagnitude-mean"       
[66] "frequencyBodyGyroscopeMagnitude-std"        
[67] "frequencyBodyGyroscopeJerkMagnitude-mean"   
[68] "frequencyBodyGyroscopeJerkMagnitude-std"   
