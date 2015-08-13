# Description of run_analysis.R

Here we analyze data collected from accelerometers from the Samsung Galaxy S smartphone. 
Details of the experiment are on the following website.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data was obtained from this website:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

We begin by downloading the zip files, unzipping them, and reading them into R.
The files used in our analysis are listed as follows:
- test/subject_test.txt
- test/X_test.txt
- test/y_test.txt
- train/subject_train.txt
- train/X_train.txt
- train/y_train.txt

The R script then does the following:

1. Merges the training and the test sets to create one data set.  
  - This is done using rbind and cbind.

2. Extracts only the measurements on the mean and standard deviation for each measurement.  
  - We use only those measurements that include mean() and std() at the end. Exclude meanFreq() measurements because these are weighted averages, not true means. Exclude the angle() measurements because they not actual means, but angles between two vectors.

3. Uses descriptive activity names to name the activities in the data set.  
  - Change the activity labels from numeric to character form, using named activities such as "Walking," "Sitting," "Standing," etc.

4. Appropriately labels the data set with descriptive variable names.  
  - Replace abbreviations with the full word.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
  - Use dplyr to group and summarize the data.  
  - The output is called "tidy_data_set.txt"

Please refer to "Codebook.md" for a description of the variables.  

Please refer to "run_analysis.R" for further comments on specific script commands.  
