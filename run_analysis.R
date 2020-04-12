#Consider to work under working directory
rm(list=ls())  # clear workspace

library(data.table)
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
  unzip("UCI HAR Dataset.zip", exdir = getwd())
}

#ACTIVITY 1: Merges the training and the test sets to create one data set.

#Read and store activity and features data
activity<-read.table("UCI HAR Dataset/activity_labels.txt")
features<-read.table("UCI HAR Dataset/features.txt")

#Read and store train data
XTrain.data <- read.table("UCI HAR Dataset/train/X_train.txt")
YTrain.data <- read.table("UCI HAR Dataset/train/Y_train.txt")
subjectTrain.data <-read.table("UCI HAR Dataset/train/subject_train.txt")

#Read and store test data
XTest.data<- read.table("UCI HAR Dataset/test/X_test.txt")
YTest.data<- read.table("UCI HAR Dataset/test/Y_test.txt")
subjectTest.data <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Merge X train and test data
Xdata<- rbind(XTrain.data,XTest.data)

#Merge Y train and test data
Ydata<- rbind(YTrain.data,YTest.data)

#Merge subject data
Subjectdata.all <- rbind(subjectTrain.data,subjectTest.data)

#Check if dim() is the same for Xdata, Ydata and Subjectdata.all
dim(Xdata)
dim(Ydata)
dim(Subjectdata.all)

#ACTIVITY 2:Extracts only the measurements on the mean and standard deviation for each measurement
#Search for the columns that have mean() and std() and then extract the values of Xdata into a new data (Xextracted)

index<-grep("mean\\(\\)|std\\(\\)", features[,2])
Xextracted <- Xdata[,index]
dim(Xextracted)


#ACTIVITY 3: Uses descriptive activity names to name the activities in the data set
#Set names
names(Ydata)<- c("activity")
names(Subjectdata.all)<-c("subject")
Ydata[,1]<-activity[Ydata[,1],2] ## replacing numeric values with lookup value from activity.txt; won't reorder Y set
head(Ydata) 

#ACTIVITY 4: Appropriately labels the data set with descriptive variable 
names<-features[index,2]
names(Xextracted) <- names 
names(Xextracted) <- tolower(names(Xextracted))

#Merge all the data frames into one
Final.data <- cbind(Subjectdata.all, Ydata, Xextracted)
#First 3 rows of the new data frame
head(Final.data,3)

#ACTIVIY 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
Final.data <- data.table(Final.data)
Tidy.data<-aggregate(. ~subject + activity, Final.data, mean)
Tidy.data<-Tidy.data[order(Tidy.data$subject,Tidy.data$activity),]

write.table(Tidy.data, file = "merged_and_cleaned_data.txt",row.name=FALSE)
