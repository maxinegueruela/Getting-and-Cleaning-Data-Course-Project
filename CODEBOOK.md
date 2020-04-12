# Getting-and-Cleaning-Data-Course-Project


## This project use the information of the data analysis from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## The files that are used from the original dataset are:

  features.txt - includes the descriptions for the features measured
  activity_labels.txt - includes the descriptions of the activities 
  train/X_train.txt - includes the measurements of the features in train set
  test/X_test.txt - includes the measurements of the features in test set
  train/subject_train.txt - subject for each measurement from the train set
  test/subject_test.txt - subject for each measurement from the test set
  train/y_train.txt - activity for each measurement from the train set
  test/y_test.txt - activity for each measurement from the test set


## Development of the script: 

1) downloead the previously detailed data from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  It is supposed that the first archive (.zip) is extracted to the working directory
2) read and store the train data (X, Y and Subjetc)
3) read and store the test data (X, Y and Subjetc)
4) Merge data into one file for the train data, one for test and one for subject
5) Extract the data only from columns that have mean or std data
6) Uses descriptive activity names to name the activities in the data set
7) Appropriately labels the data set with descriptive variable 
8) Merge all the data frames into one
9) From the data set in step 8, creates a second, independent tidy data set with the average of each variable for each activity and each subject
10) Finally stores the new "tidy data" into the working directory. File name "merged_and_cleaned_data.txt"

The file "merged_and_cleaned_data.txt" can then be used to make more analysis




# Decription of the data used

## The first two columns - Subject and Activity - are Identifiers.

* Subject: the ID of the Subject
* Activity: the Name of the Activity performed by the subject when measurements were taken

## Measurements

The final variables that will be stored in the final data set are only the ones that contain the mean or standad devitation..
The original names are the following:

* subject: The subject's unique IDs - Range: (1-30)

* activity.name (The action the subject is taking)
* possible values
  * LAYING
  * SITTING
  * STANDING
  * WALKING
  * WALKING_DOWNSTAIRS
  * WALKING_UPSTAIRS


* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd
* fBodyBodyGyroJerkMagMeanFreq




