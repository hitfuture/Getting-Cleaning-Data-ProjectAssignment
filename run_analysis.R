#Author: Brett R. Taylor
#Date: 2/22/2015
#This is the instruction set that will process data from the ICU data set
#Please install package dplyr if it is not resident on your system.
#install.packages("dplyr")

library(dplyr)
 
#normalize.features() 
#This function creates unique feature names based on the source data file "features.txt".  
#It concatenates the "id" column to the "feature" column to ensure that the column names are unique.
#It returns a vector of these unique column names with substitutions for abbreviations.
normalize.features <- function () {
        #Read in the features 
        features<-read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE)
        #Prepend the feature id to the feature name to create a name that has the source column in it.
        features<-features %>% mutate(feature.name = paste(sprintf("fid%03d", id),feature,sep="-")) 
        #Substitute -frequency for the -f and time for -t to make the column names more legible
        names<-features$feature.name
        names<-gsub("-f","-frequency",names)
        names<-gsub("-t","-time",names)
        names<-gsub("\\()$|)$","",names) #Get rid of right and left parenthesis at end of the name
        names<-gsub("\\()|\\(|)","_",names) #Get rid of the rest of the left and right parenthesis
        names<-gsub("[,-]","_",names)
        names<-gsub("__","_",names)
        names<-gsub("BodyBody","Body",names) #There is set of features with incorrect names
        names
}

feature.names <- normalize.features()
#Read in the training and test sets
X_test<-read.table("data/UCI-HAR/test/X_test.txt")
X_train<-read.table("data/UCI-HAR/train/X_train.txt")

#Set the column names for the X data sets as feature names
colnames(X_test)<-feature.names
colnames(X_train)<-feature.names

#Read in the Y data
y_test<-read.table("data/UCI-HAR/test/y_test.txt",col.names="y")
y_train<-read.table("data/UCI-HAR/train/y_train.txt",col.names="y")

#Read Subject data
subject.test<-read.table("data/UCI-HAR/test/subject_test.txt",col.names="subject_id")
subject.train<-read.table("data/UCI-HAR/train/subject_train.txt",col.names="subject_id")

#Combine the data frames by columns
test.data<-cbind(subject.test,y_test,X_test)
train.data<-cbind(subject.train,y_train,X_train)

#Merge the training and the test sets to create one data set.
all.data<-rbind(test.data,train.data)

#Use descriptive activity names to name the activities in the data set
activity.labels<-read.table("data/UCI-HAR/activity_labels.txt",col.names=c("id","activity"))
all.data.labeled <-all.data %>% merge(activity.labels,by.x="y",by.y="id")
 
#Remove the y variable because it is of little value since the activity is in text format.
all.data.labeled <- all.data.labeled %>% select(-y)

#Extract out only the columns with mean and standard deviation
#This method includes all columns in this category whether they are frequency or time based.
#We will eliminate the angle features because they are combinations of other features which
#may be based on features with mean.  This does not mean they are a mean function.  
all.data.labeled<-all.data.labeled%>%select(matches("(([M,m]ean|[S,s]td))|activity|subject_id"),-matches("angle"))
 
#Ceate a second, independent tidy data set with the average of each variable 
#for each activity and each subject.  

#Get the list of columns that we will use to perform the mean function on.  This should
#not include the Activity, or Subject columns.
column.names.mean<-setdiff(names(all.data.labeled),c("subject_id","activity")) #setdiff removes the second vector from the first.
#This is a method of performing a group by on activity, and subject_Id.  It applies the mean function
#to the all.data columns from excluding Activity and Subject.
tidy.data <-aggregate(all.data.labeled[,column.names.mean], list(Activity=all.data.labeled$activity,Subject=all.data.labeled$subject_id), FUN=mean)

#Sort the data by Activity and Subject
tidy.data <- arrange(tidy.data,Activity,Subject)

#Write the tidy.data data frame to the output file.
write.table(tidy.data,"activity-summary.txt",row.names = FALSE)
