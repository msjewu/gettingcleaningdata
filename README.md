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
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. The output is called "tidy_data_set.txt"

Please refer to "Codebook.md" for a description of the variables.
Please refer to "run_analysis.R" for further comments on the script.
