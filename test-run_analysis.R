#install.packages("testthat")
library(testthat)
#source("run_analysis.R")

subject.test<-fread("data/UCI-HAR/test/subject_test.txt",header=FALSE,colClasses=c("integer"))
X_test.foo<-fread("data/UCI-HAR/test/X_test.txt",header=FALSE,colClasses = c("numeric"))
feature.names <- function () {
        #Read in the features 
        features<-read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE)
        feature.names<-as.vector(features$feature)
        #Add a column identifier to ensure the column names are identifiable and unique
        i <-0
        feature.names<-sapply(feature.names,function(x){i<<-i+1; paste(i,x,sep="-")})
        feature.names 
}
f.names <- normalize.features()

expect_equal(length(grep("\\(",c("one","(two"))),0)

expect_equal(length(grep("\\(",f.names)),0)
#This function creates of unique feature names based on the source data file "features.txt".  
#It concatenates the "id" column to the "feature" column to ensure that the column names are unique.
#It returns a vector of these unique column names.
unique.features <- function () {
        #Read in the features 
        features<-tbl_df(read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE))
        result<-features %>% mutate(feature.names = paste(id,feature,sep="-")) 
        result$feature.names
        }

our.features<-feature.names()
expect_equal(length(our.features) , length(unique(our.features)))
#feature.names2 makes the column  names unique
expect_equal(unique.features(),unique(feature.names2()))

test.vals1<-feature.names()
test.vals2<-unique.features()


#Let's read in the data
feature.names <- normalized.features()
#Read in the training and test sets
X_test<-read.table("data/UCI-HAR/test/X_test.txt")
X_train<-read.table("data/UCI-HAR/train/X_train.txt")

#Set the feature names for the columns names
colnames(X_test)<-feature.names
colnames(X_train)<-feature.names


#Extract out only the columns with mean and standard deviation
#This method includes all columns in this category whether they are frequency or time based.
X_test.std.mean<-X_test%>%select(matches("([M,m]ean|[S,s]td)"))
X_train.std.mean<-X_train%>%select(matches("([M,m]ean|[S,s]td)"))

#Read in the Y data
y_test<-read.table("data/UCI-HAR/test/y_test.txt",col.names="y")
y_train<-read.table("data/UCI-HAR/train/y_train.txt",col.names="y")

#Use descriptive activity names to name the activities in the data set
activity.labels<-read.table("data/UCI-HAR/activity_labels.txt",col.names=c("id","activity"))
y_test.labeled <-y_test %>% merge(activity.labels,by.x="y",by.y="id")
y_train.labeled <-y_train %>% merge(activity.labels,by.x="y",by.y="id")

#Read Subject data
subject.test<-read.table("data/UCI-HAR/test/subject_test.txt",col.names=c("subject_id"))
subject.train<-read.table("data/UCI-HAR/train/subject_train.txt",col.names=c("subject_id"))


#Combine the data frames by columns
test.data<-cbind(subject.test,y_test,X_test)
train.data<-cbind(subject.train,y_train,X_train)

#Merge the training and the test sets to create one data set.
all.data.for.testing<-rbind(test.data,train.data)
before.count<-nrow(all.data.for.testing)
all.data.for.testing<-all.data.for.testing %>% merge(activity.labels,by.x="y",by.y="id")
after.count<-nrow(all.data.for.testing)
expect_equal(before.count,after.count)


g_data<-all.data.for.testing%>%group_by(subject_id,activity)%>%summarize(obs.count=n())%>%arrange(subject_id,activity)
View(g_data)
sum(g_data$obs.count)

total.obs<-nrow(y_test)+nrow(y_train)
#We expect that the total number of rows in y data frames will equal the total number 
#of the calculated observations in the summarized data
expect_equal(total.obs,sum(g_data$obs.count))
val <- "c('1','2')"
result<-eval(parse(text=val))
val<-"{'This is text'}"
val<-'{c("LAYING","SITTING","STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"  )}'
value.of<-function(val) {eval(parse(text=val))}
value.of(val)
rules<-read.csv("column_rules.csv",header=TRUE)
rules


gsub("fid[0-9][0-9][0-9]_(time|frequency|angle)","","fid001_timeBodyAcc_mean_X")

measures<-unique(c("BodyAcc",
                   "GravityAcc",
                   "BodyAccJerk",
                   "BodyGyro",
                   "BodyGyroJerk",
                   "BodyAccMag",
                   "GravityAccMag",
                   "BodyAccJerkMag",
                   "BodyGyroMag",
                   "BodyGyroJerkMag",
                   "BodyAcc",
                   "BodyAccJerk",
                   "BodyGyro",
                   "BodyAccMag",
                   "BodyAccJerkMag",
                   "BodyGyroMag",
                   "BodyGyroJerkMag"
))
