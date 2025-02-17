#Getting_And_cleaning_Data
UCI HAR Dataset Analysis
This project focuses on cleaning and analyzing the UCI Human Activity Recognition (HAR) dataset, which contains data collected from sensors during various activities. The goal is to create a tidy dataset with the mean and standard deviation of each measurement, grouped by subject and activity.

Steps Performed
Merging Data: Combined the training and test datasets into a single dataset.
Extracting Relevant Features: Selected only the mean and standard deviation measurements.
Descriptive Activity Labels: Replaced numeric activity codes with descriptive activity names.
Renaming Columns: Cleaned column names to make them more descriptive (e.g., "Acc" → "Accelerometer", "Gyro" → "Gyroscope").
Creating Tidy Data: Grouped the data by subject and activity and calculated the average of each variable.
Files
Code.R: R script that performs data processing and analysis.
tidy_dataset.txt: Final tidy dataset with averages of each variable for each subject and activity.
