Codebook for UCI HAR Dataset Analysis
Overview
This codebook describes the variables and data transformations used in the analysis of the UCI Human Activity Recognition (HAR) dataset. The goal of the project was to clean and analyze sensor data collected from wearable devices during various activities. The final tidy dataset contains measurements for different subjects and activities, with averages for key variables (mean and standard deviation).

Dataset Description
Source Data
The dataset includes the following files:

features.txt: List of feature names (sensor variables).
activity_labels.txt: Mapping of numeric activity codes to descriptive activity names.
X_train.txt: Training dataset with sensor readings for each feature.
y_train.txt: Activity labels (numeric codes) for training data.
subject_train.txt: Subject identifiers for training data.
X_test.txt: Test dataset with sensor readings for each feature.
y_test.txt: Activity labels (numeric codes) for test data.
subject_test.txt: Subject identifiers for test data.
Data Transformation Steps
1. Merging the Data
The training and test datasets were combined into one unified dataset for the measurements, activity labels, and subject identifiers.

2. Extracting Mean and Standard Deviation
Only the columns corresponding to the mean and standard deviation of each measurement were kept in the dataset.

3. Descriptive Activity Names
The numeric activity codes were replaced with descriptive activity names by using the mapping from the activity_labels.txt file.

4. Renaming Columns
Column names were made more descriptive by replacing abbreviations with full words (e.g., "Acc" was changed to "Accelerometer" and "Gyro" to "Gyroscope").

5. Creating the Tidy Dataset
The final dataset was grouped by subject and activity, and the mean for each variable was calculated.

