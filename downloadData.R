##run_analysis.R that does the following. 
#0. Download and extract the data if necessary
#1. Merge the training and the test sets to create one data set.
#2. Extract only the measurements on the mean and standard deviation for each measurement. 
#3. Use descriptive activity names to name the activities in the data set
#4. Label the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Description of data set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Step 0. Download data
if(!file.exists("/data")) {
        dir.create("data") 
}

if(!file.exists("./data/projdata.zip")) {
        data.source.url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url=data.source.url,destfile="./data/projdata.zip",method="curl")
        #unzip the data
        download.date<-date()
        
}

