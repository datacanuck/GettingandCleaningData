#Describes variables, data, any transformations or work performed to clean up the data.

Added a subjects column to be used to calculate averages.  
Created independent data set, mergedtotal.
Subsetted out just the mean data.  
Subset out training and test data respectively.
Merge training and test data, by Subject and Activities.  (remergedtotal)
Grouped by Activities and Subjects.
Ran summarise_all on the grouped data set to compute the mean of the mean data.  

For more information on data, units used see features_info.txt from the UCI HAR data set. 
Activities data column is taken from y_train.txt and y_test.txt respectively.  Mappings from the activity code to activity is done using activity_labels.txt.
Subjects data column is taken from subject_train.txt and subject_test.txt files.  The numbers are 1-30 for respective subject. 
Features data columns are taken from features.txt, the respective mean() data was extracted.  
Each of the mean variables from features.txt has a corresponding ".x" and ".y" column.  the ".x" column corresponds to training data.  The ".y" column corresponds to test data.

Column names:

Activities
Subjects
tBodyAcc-mean()-X.x
tBodyAcc-mean()-Y.x
tBodyAcc-mean()-Z.x
tGravityAcc-mean()-X.x
tGravityAcc-mean()-Y.x
tGravityAcc-mean()-Z.x
tBodyAccJerk-mean()-X.x
tBodyAccJerk-mean()-Y.x
tBodyAccJerk-mean()-Z.x
tBodyGyro-mean()-X.x
tBodyGyro-mean()-Y.x
tBodyGyro-mean()-Z.x
tBodyGyroJerk-mean()-X.x
tBodyGyroJerk-mean()-Y.x
tBodyGyroJerk-mean()-Z.x
tBodyAccMag-mean().x
tGravityAccMag-mean().x
tBodyAccJerkMag-mean().x
tBodyGyroMag-mean().x
tBodyGyroJerkMag-mean().x
fBodyAcc-mean()-X.x
fBodyAcc-mean()-Y.x
fBodyAcc-mean()-Z.x
fBodyAccJerk-mean()-X.x
fBodyAccJerk-mean()-Y.x
fBodyAccJerk-mean()-Z.x
fBodyGyro-mean()-X.x
fBodyGyro-mean()-Y.x
fBodyGyro-mean()-Z.x
fBodyAccMag-mean().x
fBodyBodyAccJerkMag-mean().x
fBodyBodyGyroMag-mean().x
fBodyBodyGyroJerkMag-mean().x
tBodyAcc-std()-X.x
tBodyAcc-std()-Y.x
tBodyAcc-std()-Z.x
tGravityAcc-std()-X.x
tGravityAcc-std()-Y.x
tGravityAcc-std()-Z.x
tBodyAccJerk-std()-X.x
tBodyAccJerk-std()-Y.x
tBodyAccJerk-std()-Z.x
tBodyGyro-std()-X.x
tBodyGyro-std()-Y.x
tBodyGyro-std()-Z.x
tBodyGyroJerk-std()-X.x
tBodyGyroJerk-std()-Y.x
tBodyGyroJerk-std()-Z.x
tBodyAccMag-std().x
tGravityAccMag-std().x
tBodyAccJerkMag-std().x
tBodyGyroMag-std().x
tBodyGyroJerkMag-std().x
fBodyAcc-std()-X.x
fBodyAcc-std()-Y.x
fBodyAcc-std()-Z.x
fBodyAccJerk-std()-X.x
fBodyAccJerk-std()-Y.x
fBodyAccJerk-std()-Z.x
fBodyGyro-std()-X.x
fBodyGyro-std()-Y.x
fBodyGyro-std()-Z.x
fBodyAccMag-std().x
fBodyBodyAccJerkMag-std().x
fBodyBodyGyroMag-std().x
fBodyBodyGyroJerkMag-std().x
tBodyAcc-mean()-X.y
tBodyAcc-mean()-Y.y
tBodyAcc-mean()-Z.y
tGravityAcc-mean()-X.y
tGravityAcc-mean()-Y.y
tGravityAcc-mean()-Z.y
tBodyAccJerk-mean()-X.y
tBodyAccJerk-mean()-Y.y
tBodyAccJerk-mean()-Z.y
tBodyGyro-mean()-X.y
tBodyGyro-mean()-Y.y
tBodyGyro-mean()-Z.y
tBodyGyroJerk-mean()-X.y
tBodyGyroJerk-mean()-Y.y
tBodyGyroJerk-mean()-Z.y
tBodyAccMag-mean().y
tGravityAccMag-mean().y
tBodyAccJerkMag-mean().y
tBodyGyroMag-mean().y
tBodyGyroJerkMag-mean().y
fBodyAcc-mean()-X.y
fBodyAcc-mean()-Y.y
fBodyAcc-mean()-Z.y
fBodyAccJerk-mean()-X.y
fBodyAccJerk-mean()-Y.y
fBodyAccJerk-mean()-Z.y
fBodyGyro-mean()-X.y
fBodyGyro-mean()-Y.y
fBodyGyro-mean()-Z.y
fBodyAccMag-mean().y
fBodyBodyAccJerkMag-mean().y
fBodyBodyGyroMag-mean().y
fBodyBodyGyroJerkMag-mean().y
tBodyAcc-std()-X.y
tBodyAcc-std()-Y.y
tBodyAcc-std()-Z.y
tGravityAcc-std()-X.y
tGravityAcc-std()-Y.y
tGravityAcc-std()-Z.y
tBodyAccJerk-std()-X.y
tBodyAccJerk-std()-Y.y
tBodyAccJerk-std()-Z.y
tBodyGyro-std()-X.y
tBodyGyro-std()-Y.y
tBodyGyro-std()-Z.y
tBodyGyroJerk-std()-X.y
tBodyGyroJerk-std()-Y.y
tBodyGyroJerk-std()-Z.y
tBodyAccMag-std().y
tGravityAccMag-std().y
tBodyAccJerkMag-std().y
tBodyGyroMag-std().y
tBodyGyroJerkMag-std().y
fBodyAcc-std()-X.y
fBodyAcc-std()-Y.y
fBodyAcc-std()-Z.y
fBodyAccJerk-std()-X.y
fBodyAccJerk-std()-Y.y
fBodyAccJerk-std()-Z.y
fBodyGyro-std()-X.y
fBodyGyro-std()-Y.y
fBodyGyro-std()-Z.y
fBodyAccMag-std().y
fBodyBodyAccJerkMag-std().y
fBodyBodyGyroMag-std().y
fBodyBodyGyroJerkMag-std().y





