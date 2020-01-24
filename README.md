# Course project for the Coursera - Getting and Cleaning Data course.

Several files are provided:
- The R script 'run_analysis.R' that contains code to build the required datasets
- Codebook that explains data
- tidy_data_table.txt that is the resulting dataset
- tidy_data_table_summary.txt that is subset of the dataset

Basically the R script does the following:
1. Load the activity and features data
2. Load the training and test datasets, using the column names from features data
3. Merge the two datasets into one consolidated dataset
4. Select the columns that contains mean or standard deviation
5. Rename the column names
6. Save the whole dataset in tidy_data_table.txt
7. Create another dataset by computing the average (mean) value of each variable for each subject and activity.
8. The result is saved in the file tidy_data_table_summary.txt.

We take the assumption that the UCI HAR dataset has already been downloaded in the working directory in R.