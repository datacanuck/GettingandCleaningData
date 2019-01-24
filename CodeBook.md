#Describes variables, data, any transformations or work performed to clean up the data.

Added a subjects column to be used to calculate averages.  
Created independent data set, mergedtotal.
Subsetted out just the mean data.  
Grouped by Activities and Subjects.
Ran summarise_all on the grouped data set to compute the mean of the mean data.  

For more information on data, units used see features_info.txt from the UCI HAR data set. 
Activities data column is taken from y_train.txt and y_test.txt respectively.  Mappings from the activity code to activity is done using activity_labels.txt.
Subjects data column is taken from subject_train.txt and subject_test.txt files.  The numbers are 1-30 for respective subject. 
Features data columns are taken from features.txt, the respective mean() data was extracted.  

