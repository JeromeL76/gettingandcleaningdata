# run_analysis.R
# This analysis is part of the Course Project of the Coursera - Getting and Cleaning Data course
# The instructions were:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
library(dplyr)
 
# Step 1: Read files
 
## Activities
activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_name"))
 
## Features
features <- read.table("~/UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature_name"))
 
## Train data
X_train <- read.table("~/UCI HAR Dataset/train/X_train.txt", col.names = features$feature_name)
y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt", col.names = c("activity_id"))
subject_train <- read.table("~/UCI HAR Dataset/train/subject_train.txt", col.names = c("subject_id"))
 
## Test data
X_test <- read.table("~/UCI HAR Dataset/test/X_test.txt", col.names = features$feature_name)
y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt", col.names = c("activity_id"))
subject_test <- read.table("~/UCI HAR Dataset/test/subject_test.txt", col.names = c("subject_id"))
 
## Creating the one dataset by adding columns and rows from train dataset and test dataset
one_dataset <- rbind(cbind(subject_train, y_train, X_train),
                     cbind(subject_test, y_test, X_test))
 
 
# Step 2: Only select the columns that contains mean or standard deviation data
select_dataset <- one_dataset[, c(1, 2, grep("mean()|std()", features$feature_name) + 2)]
 
 
# Step 3: Replacing the activity ids by the activity name
select_dataset <- select_dataset %>% left_join(activity_labels, by = c("activity_id")) %>% select(-activity_id)
 

# Step 4: Setting the column names
## Note: Re-apply the column names as in read.table, the column names are truncated if too long
colnames(one_dataset) <- c("subject_id", "activity_id", as.character(features$feature_name))
 
# Write the dataset in a file
write.table(select_dataset, "tidy_data_table.txt", row.names = FALSE)
 
 
# Step 5: Summarising data by calculating means
summary_dataset <- select_dataset %>% group_by(subject_id, activity_name) %>% summarise_all(list(mean = mean))
 
# Write the dataset in a file
write.table(summary_dataset, "tidy_data_table_summary.txt", row.names = FALSE)
 
print("All done!")