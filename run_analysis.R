#Author: Brett R. Taylor
#Date: 2/13/2015

library(dplyr)
library(data.table)
#This function creates of unique feature names based on the source data file "features.txt".  
#It concatenates the "id" column to the "feature" column to ensure that the column names are unique.
#It returns a vector of these unique column names.
unique.features <- function () {
        #Read in the features 
        features<-tbl_df(read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE))
        result<-features %>% mutate(feature.names = paste(paste("c",id,sep=""),feature,sep="-")) 
        result$feature.names
}

feature.names <- unique.features()
#Read in the training and test sets
X_test<-read.table("data/UCI-HAR/test/X_test.txt")
X_train<-read.table("data/UCI-HAR/train/X_train.txt")
#Set the feature names for the columns names
colnames(X_test)<-feature.names
colnames(X_train)<-feature.names


#Extract out only the columns with mean and standard deviation
# This method includes all columns in this category whether they are frequency or time based.
X_test.std.mean<-tbl_df(X_test)%>%select(matches("(mean|std)"))
X_train.std.mean<-tbl_df(X_train)%>%select(matches("(mean|std)"))

#Read in the Y data
y_test<-read.table("data/UCI-HAR/test/y_test.txt",col.names="y")
y_train<-read.table("data/UCI-HAR/train/y_train.txt",col.names="y")

##Use descriptive activity names to name the activities in the data set
activity.labels<-read.table("data/UCI-HAR/activity_labels.txt",col.names=c("id","activity"))
y_test.labeled <-y_test %>% merge(activity.labels,by.x="y",by.y="id")
y_train.labeled <-y_train %>% merge(activity.labels,by.x="y",by.y="id")
#Read Subject data
subject.test<-read.table("data/UCI-HAR/test/subject_test.txt",col.names=c("subject_id"))
subject.train<-read.table("data/UCI-HAR/train/subject_train.txt",col.names=c("subject_id"))


#Combine the data frames by columns
test.data<-cbind(subject.test,y_test.labeled,X_test.std.mean)
train.data<-cbind(subject.train,y_train.labeled,X_train.std.mean)

#Merge the training and the test sets to create one data set.
all.data<-rbind(test.data,train.data)


#Label the data set with descriptive variable names. 
##Remove the y variable because it is of little value since the activity is in text format.
all.data <- all.data %>% select(-y)

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

grouped.data<-all.data %>% group_by(activity,subject_id ) 
data.counts<-summarize(grouped.data,n_obs=n())

cols<-names(all.data)[3:length(names(all.data))]
tidy.data <-aggregate(all.data[,cols], list(Activity=all.data$activity,Subject=all.data$subject_id), FUN=mean)
tidy.data <- arrange(tidy.data,Activity,Subject)
