# GettingandCleaningData
Course Project for JHU's Getting and Cleaning Data course.

Run the run_analysis.R script.  It uses a number of the input data sets from the UCI HAR data set. These input data filenames are hardcoded into the script.

For training and test data it uses:
train/X_train.txt
test/X_test.txt

For features data it uses:
features.txt

For the activities data it uses:
train/y_train.txt
test/y_test.txt

For the subjects data it uses:
train/subject_train.txt
test/subject_test.txt

How the script works:

The script works by reading in input data sets (training, test, features, activities, subjects).  
It then merges the training and test data sets together. 
It then appropriately labels the data set with descriptive variable names.  
It then extracts only the measurements on the mean and standard deviation for each measurement.  
It then uses descriptive activity names to name the activities in the data set using the activity names given with the UCI data set.  
It then creates a second, independent tidy data set with the average of each variable for each activity and each subject.
