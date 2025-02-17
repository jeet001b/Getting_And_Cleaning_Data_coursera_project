# reading data (features and activity labels) and assigning their column names 
#for features.txt
features<- read.table("features.txt", col.names = c("n", "functions"))
# for activity_labels.txt
activity<- read.table("activity_labels.txt", col.names = c("code", "activity"))
# reading train data set
#X_train.txt
x_train<- read.table("X_train.txt", col.names = features$functions)# this line will take the names from the column "functions" created for "feature" dataset
y_train<- read.table("y_train.txt",col.names = "code") # y_train.txt
sub_train<- read.table("subject_train.txt", col.names = "subject")#subject_train.txt
# have to do the same for test datasets
# X_test.txt
x_test<- read.table("X_test.txt", col.names = features$functions)
y_test<- read.table("y_test.txt", col.names = "code")
sub_test<- read.table("subject_test.txt", col.names = "subject")
##---------------------------***********--------------------------------------------##
# Task 1: Merges the training and the test sets to create one data set.
# now just merge the data using "rbind()" and "cbind()" accordingly
x<- rbind(x_train, x_test)#combining x_train and x_test
y<- rbind(y_train, y_test)#combining y_train and y_test
sub<- rbind(sub_train, sub_test)#combining sub_train and sub_test
df<- cbind(x,y,sub) # making a single dataset of above three variables
#------------------------------------------------------------------------------------
# Task 2:Extracts only the measurements on the mean and standard deviation.
library(dplyr)
data <- select(df,subject,code,contains("mean"),contains("std"))
#------------------------------------------------------------------------------------
# Task 3: Use descriptive activity names to name the activities in the data set.
data$code<- activity[data$code, 1]#This takes the code values from the data dataset and uses them as row indices 
#------------------------------------------------------------------------------------
# Task 4: label the data set with descriptive variable names.
colnames(data) <- gsub("Acc", "Accelerometer", colnames(data))
colnames(data) <- gsub("Gyro", "Gyroscope", colnames(data))
colnames(data) <- gsub("BodyBody", "Body", colnames(data))
colnames(data) <- gsub("Mag", "Magnitude", colnames(data))
colnames(data) <- gsub("^t", "Time", colnames(data))
colnames(data) <- gsub("^f", "Frequency", colnames(data))
#-------------------------------------------------------------------------------------
# Task 5:independent tidy data set with the average of each variable 
tidy_set <- data %>%
  group_by(subject,code) %>%
  summarise_all(mean)
