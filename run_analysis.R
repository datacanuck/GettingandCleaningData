library(dplyr)
library(tidyr)
library(lubridate)


run_analysis <- function(){
    trainingset <- read.table("GettingCleaningData/UCI HAR Dataset/train/X_train.txt")
    testset <- read.table("GettingCleaningData/UCI HAR Dataset/test/X_test.txt")
    
    #features
    features <- read.table("GettingCleaningData/UCI HAR Dataset/features.txt")
    features <- t(features[,2])
    
    #Activities
    activities_training <- read.table("GettingCleaningData/UCI HAR Dataset/train/y_train.txt")
    activities_test <- read.table("GettingCleaningData/UCI HAR Dataset/test/y_test.txt")
    activities <- rbind(activities_training, activities_test)
    
    #Subjects
    subjects_training <- read.table("GettingCleaningData/UCI HAR Dataset/train/subject_train.txt")
    subjects_test <- read.table("GettingCleaningData/UCI HAR Dataset/test/subject_test.txt")
    subjects <- rbind(subjects_training, subjects_test)
    
    #Merges the training and the test sets to create one data set.
    merged<-rbind(trainingset, testset)
    dim(merged)
    head(merged)
    
    #Appropriately labels the data set with descriptive variable names.
    #For now, just leave the feature names as is.
    names(merged) <- features
    
    #Extracts only the measurements on the mean and standard deviation for each measurement.
    #grabs the parameters with mean() or std() in the header names.
    #something like meansmerged <- select(merged, contains("mean"))
    #Same for std
    #Mean: 1-3, 41-43, 81-83, 121-123, 161-163, 201, 214, 227, 240, 253, 266-268, 345-347, 424-426, 503, 516, 529, 542
    #STD: 4-6, 44 - 46, 84-86, 124-126, 164-166, 202, 215, 228, 241, 254, 269-271, 348-350, 427-429, 504, 517, 530, 543
    meansmerged <- merged[,c(1:3, 41:43, 81:83, 121:123, 161:163, 201, 214, 227, 240, 253, 266:268, 345:347, 424:426, 503, 516, 529, 542)]
    stdsmerged <-merged[,c(4:6, 44:46, 84:86, 124:126, 164:166, 202, 215, 228, 241, 254, 269:271, 348:350, 427:429, 504, 517, 530, 543)]
    mergedmeansstds <- cbind(meansmerged, stdsmerged)
    
    #Uses descriptive activity names to name the activities in the data set
    activities[activities == 1] <- "WALKING"               #1 WALKING
    activities[activities == 2] <- "WALKING_UPSTAIRS"      #2 WALKING_UPSTAIRS
    activities[activities == 3] <- "WALKING_DOWNSTAIRS"    #3 WALKING_DOWNSTAIRS
    activities[activities == 4] <- "SITTING"               #4 SITTING
    activities[activities == 5] <- "STANDING"              #5 STANDING
    activities[activities == 6] <- "LAYING"                #6 LAYING
    
    names(activities) <- "Activities"
    mergedmeansstds$Activities <- activities$Activities
    
    #From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    names(subjects) <- "Subjects"
    mergedmeansstds$Subjects <- subjects$Subjects
    
    
    mergedtotal <- mergedmeansstds
    #mergedtotal <- mergedtotal[,-(34:66)]
    
    #Clean data set
    mergedtotal_training <- mergedtotal[1:7352,]
    mergedtotal_test <- mergedtotal[7353:10299,]
    
    remergedtotal <- merge(mergedtotal_training, mergedtotal_test, by = c("Subjects","Activities"), all = TRUE)
    
    by_Activities_Subjects <- group_by(remergedtotal, Activities, Subjects)
    mysummary <- summarise_all(by_Activities_Subjects, mean, rm.na = TRUE)
    
    #Write out the data frame to a file
    write.table(x= mysummary, file = "outputfile.txt", sep = "@", na = "??", quote = FALSE, row.names = FALSE)
    
}
