#Test the data so I can understand it.
library(dplyr)
activity.labels<-read.table("data/UCI-HAR/activity_labels.txt",col.names=c("id","activity"))

features<-read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE)
feature.names<-as.vector(features$feature)
#Test Arena
subject.test<-read.table("data/UCI-HAR/test/subject_test.txt",col.names=c("subject_id"))
X_test<-read.table("data/UCI-HAR/test/X_test.txt")
colnames(X_test)<-feature.names
length(feature.names)
length(unique(feature.names))
y_test<-read.table("data/UCI-HAR/test/y_test.txt",col.names="y")
y.test<-merge(y_test,activity.labels,by.x="y",by.y="id")
test.data<-tbl_df(cbind(subject.test,y.test,X_test))
select(test.data,contains("mean"))

#Train Arena
subject.train<-read.table("data/UCI-HAR/train/subject_train.txt",col.names=c("subject_id"))
X_train<-read.table("data/UCI-HAR/train/X_train.txt")
colnames(X_train)<-feature.names
y_train<-read.table("data/UCI-HAR/train/y_train.txt",col.names="y")
y.train<-merge(y_train,activity.labels,by.x="y",by.y="id")
train.data<-tbl_df(cbind(subject.train,y.train,X_train))

 