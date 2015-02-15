#Author: Brett R. Taylor
#Date: 2/13/2015

library(dplyr)
#Read in the features 
features<-read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE)
feature.names<-as.vector(features$feature)
#Add a column identifier to ensure the column names are identifiable and unique
i <-0
feature.names<-sapply(feature.names,function(x){i<<-i+1; paste(i,x,sep="-")})

#Read in the training and test sets
X_test<-read.table("data/UCI-HAR/test/X_test.txt")
X_train<-read.table("data/UCI-HAR/train/X_train.txt")
#Set the feature names for the columns
colnames(X_test)<-feature.names
colnames(X_train)<-feature.names

#Read Subject data
subject.test<-read.table("data/UCI-HAR/test/subject_test.txt",col.names=c("subject_id"))
subject.train<-read.table("data/UCI-HAR/train/subject_train.txt",col.names=c("subject_id"))


#Merge the training and the test sets to create one data set.


#Extracts only the measurements on the mean and standard deviation for each measurement.

#Uses descriptive activity names to name the activities in the data set
activity.labels<-read.table("data/UCI-HAR/activity_labels.txt",col.names=c("id","activity"))
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#group_by(.data = )