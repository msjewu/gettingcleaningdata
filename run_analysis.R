fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile="dataset.zip")
unzip("dataset.zip")

# Unzipped files are in the folder "UCI HAR Dataset"
# View listed files
files <- list.files("./UCI HAR Dataset",recursive=TRUE)
files

# Don't need "Inertial Signals" files
# Read in the relevant files
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

features_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
features_train <- read.table("./UCI HAR Dataset/train/x_train.txt")

feature_names <- read.table("./UCI HAR Dataset/features.txt",
                            stringsAsFactors=FALSE)[,2]

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                              stringsAsFactors=FALSE)[,2]

# 1. Merge training and test sets to create one data set
subject <- rbind(subject_test,subject_train)
activity <- rbind(activity_test,activity_train)
features <- rbind(features_test,features_train)

all_data <- cbind(subject, activity, features)
names(all_data) <- c("subject", "activity", feature_names)
all_data[1:10,1:10]

# 2. Extract only the measurements on the mean and standard deviation
# for each measurement.

# Find columns with only "mean()" and "std" in the column heading
mean_std_col <- grep("mean\\(\\)|std\\(\\)",names(all_data))

# Check work
names(all_data)[mean_std_col]

# Subset data using "subject" and "activity" as the first two columns 
# and include "mean()" and "std()" columns after
data <- subset(all_data, select=c(1,2,mean_std_col))

# 3. Use descriptive activity names to name the activities in the data set.
data$activity <- factor(data$activity, ordered=TRUE,
                        labels=activity_labels)

# 4. Label the data set with descriptive variable names
names(data)<-sub("^t","time",names(data))
names(data)<-sub("^f","frequency",names(data))
names(data)<-sub("Acc","Acceleration",names(data))
names(data)<-sub("Gyro","Gyroscope",names(data))
names(data)<-sub("Mag","Magnitude",names(data))
names(data)<-sub("BodyBody","Body",names(data))
names(data)<-sub("\\(\\)","",names(data))
# Check work
names(data)

# 5. Create a second, independent tidy data set with the average of
# each variable for each activity and each subject
library(dplyr)
new_data <- group_by(data,activity,subject) %>% summarise_each(funs(mean))
write.table(new_data,"tidy_data_set.txt",row.name=FALSE)
