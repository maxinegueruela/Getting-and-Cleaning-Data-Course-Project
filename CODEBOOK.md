# Getting and cleaning data course project

The goal is to prepare tidy data that can be used for later analysis from the original data of the project http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Modifications from original data


* Merge the training and test data to create one data set for each one. One for X and one for Y
* Extract onlye the mean and standar deviation measurements.
* Use descriptive activity names to name the activities in the data set
* Appropriately labeling the data set with descriptive variable names
* Creating a second, independent tidy data set with the average of each variable for each activity and each subject.


# Decription of the data used

## The first two columns - Subject and Activity - are Identifiers.

* Subject: the ID of the Subject
* Activity: the Name of the Activity performed by the subject when measurements were taken

## Measurements

The final variables that will be stored in the final data set are only the ones that contain the mean or standad devitation..
The original names are the following:

*tBodyAccMeanX
*tBodyAccMeanY
*tBodyAccMeanZ
*tBodyAccStdX
*tBodyAccStdY
*tBodyAccStdZ
*tGravityAccMeanX
*tGravityAccMeanY
*tGravityAccMeanZ
*tGravityAccStdX
*tGravityAccStdY
*tGravityAccStdZ
*tBodyAccJerkMeanX
*tBodyAccJerkMeanY
*tBodyAccJerkMeanZ
*tBodyAccJerkStdX
*tBodyAccJerkStdY
*tBodyAccJerkStdZ
*tBodyGyroMeanX
*tBodyGyroMeanY
*tBodyGyroMeanZ
*tBodyGyroStdX
*tBodyGyroStdY
*tBodyGyroStdZ
*tBodyGyroJerkMeanX
*tBodyGyroJerkMeanY
*tBodyGyroJerkMeanZ
*tBodyGyroJerkStdX
*tBodyGyroJerkStdY
*tBodyGyroJerkStdZ
*tBodyAccMagMean
*tBodyAccMagStd
*tGravityAccMagMean
*tGravityAccMagStd
*tBodyAccJerkMagMean
*tBodyAccJerkMagStd
*tBodyGyroMagMean
*tBodyGyroMagStd
*tBodyGyroJerkMagMean
*tBodyGyroJerkMagStd
*fBodyAccMeanX
*fBodyAccMeanY
*fBodyAccMeanZ
*fBodyAccStdX
*fBodyAccStdY
*fBodyAccStdZ
*fBodyAccMeanFreqX
*fBodyAccMeanFreqY
*fBodyAccMeanFreqZ
*fBodyAccJerkMeanX
*fBodyAccJerkMeanY
*fBodyAccJerkMeanZ
*fBodyAccJerkStdX
*fBodyAccJerkStdY
*fBodyAccJerkStdZ
*fBodyAccJerkMeanFreqX
*fBodyAccJerkMeanFreqY
*fBodyAccJerkMeanFreqZ
*fBodyGyroMeanX
*fBodyGyroMeanY
*fBodyGyroMeanZ
*fBodyGyroStdX
*fBodyGyroStdY
*fBodyGyroStdZ
*fBodyGyroMeanFreqX
*fBodyGyroMeanFreqY
*fBodyGyroMeanFreqZ
*fBodyAccMagMean
*fBodyAccMagStd
*fBodyAccMagMeanFreq
*fBodyBodyAccJerkMagMean
*fBodyBodyAccJerkMagStd
*fBodyBodyAccJerkMagMeanFreq
*fBodyBodyGyroMagMean
*fBodyBodyGyroMagStd
*fBodyBodyGyroMagMeanFreq
*fBodyBodyGyroJerkMagMean
*fBodyBodyGyroJerkMagStd
*fBodyBodyGyroJerkMagMeanFreq


