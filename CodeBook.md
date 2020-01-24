# CodeBook

This document explains the code and data used in the R script

## Input datasets
URI HAR Dataset has been used for this project and contains the following:
- training dataset: `X_train.txt`, `y_train.txt` and `subject_train.txt`
- test dataset: `X_test.txt`, `y_test.txt` and `subject_test.txt`
- features.txt: contains the variables (features) names of `X_train` and `X_test`
- activity labels: contains the names of activities

The datasets are available on this site:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Objectives

The objectives were to:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output dataset
Both files tidy_data_table.txt and tidy_data_table_summary.txt are spaced-separated files.
The first row contains the names of the variables.

### Variables
- subjet_id: Subjet identifier, integer ranging from 1 to 6
- activity_name: Activity of the subject (and their id- among WALKING (1), WALKING_UPSTAIRS (2), WALKING_DOWNSTAIRS (3), SITTING (4), STANDING (5), LAYING (6)

The following variables are available in the tidy_data_table.txt file. The original naming was mostly kept for better readability when displaying tables, knowing that:
* First letter t means time; f means frequence
* Acc means Accelerometer
* Gyro means Gyroscope
* Mag means Magnitude
* Freq means Frequency
* mean means Mean :-)
* std means StandardDeviation  

Variable list:
+ tBodyAcc-mean()-X
+ tBodyAcc-mean()-Y
+ tBodyAcc-mean()-Z
+ tBodyAcc-std()-X
+ tBodyAcc-std()-Y
+ tBodyAcc-std()-Z
+ tGravityAcc-mean()-X
+ tGravityAcc-mean()-Y
+ tGravityAcc-mean()-Z
+ tGravityAcc-std()-X
+ tGravityAcc-std()-Y
+ tGravityAcc-std()-Z
+ tBodyAccJerk-mean()-X
+ tBodyAccJerk-mean()-Y
+ tBodyAccJerk-mean()-Z
+ tBodyAccJerk-std()-X
+ tBodyAccJerk-std()-Y
+ tBodyAccJerk-std()-Z
+ tBodyGyro-mean()-X
+ tBodyGyro-mean()-Y
+ tBodyGyro-mean()-Z
+ tBodyGyro-std()-X
+ tBodyGyro-std()-Y
+ tBodyGyro-std()-Z
+ tBodyGyroJerk-mean()-X
+ tBodyGyroJerk-mean()-Y
+ tBodyGyroJerk-mean()-Z
+ tBodyGyroJerk-std()-X
+ tBodyGyroJerk-std()-Y
+ tBodyGyroJerk-std()-Z
+ tBodyAccMag-mean()
+ tBodyAccMag-std()
+ tGravityAccMag-mean()
+ tGravityAccMag-std()
+ tBodyAccJerkMag-mean()
+ tBodyAccJerkMag-std()
+ tBodyGyroMag-mean()
+ tBodyGyroMag-std()
+ tBodyGyroJerkMag-mean()
+ tBodyGyroJerkMag-std()
+ fBodyAcc-mean()-X
+ fBodyAcc-mean()-Y
+ fBodyAcc-mean()-Z
+ fBodyAcc-std()-X
+ fBodyAcc-std()-Y
+ fBodyAcc-std()-Z
+ fBodyAcc-meanFreq()-X
+ fBodyAcc-meanFreq()-Y
+ fBodyAcc-meanFreq()-Z
+ fBodyAccJerk-mean()-X
+ fBodyAccJerk-mean()-Y
+ fBodyAccJerk-mean()-Z
+ fBodyAccJerk-std()-X
+ fBodyAccJerk-std()-Y
+ fBodyAccJerk-std()-Z
+ fBodyAccJerk-meanFreq()-X
+ fBodyAccJerk-meanFreq()-Y
+ fBodyAccJerk-meanFreq()-Z
+ fBodyGyro-mean()-X
+ fBodyGyro-mean()-Y
+ fBodyGyro-mean()-Z
+ fBodyGyro-std()-X
+ fBodyGyro-std()-Y
+ fBodyGyro-std()-Z
+ fBodyGyro-meanFreq()-X
+ fBodyGyro-meanFreq()-Y
+ fBodyGyro-meanFreq()-Z
+ fBodyAccMag-mean()
+ fBodyAccMag-std()
+ fBodyAccMag-meanFreq()
+ fBodyBodyAccJerkMag-mean()
+ fBodyBodyAccJerkMag-std()
+ fBodyBodyAccJerkMag-meanFreq()
+ fBodyBodyGyroMag-mean()
+ fBodyBodyGyroMag-std()
+ fBodyBodyGyroMag-meanFreq()
+ fBodyBodyGyroJerkMag-mean()
+ fBodyBodyGyroJerkMag-std()
+ fBodyBodyGyroJerkMag-meanFreq()

In the file tidy_data_table_summary.txt, as the average of each variable is calculated for each subject and activity, the same variables as above are taken plus a suffix (_mean).
