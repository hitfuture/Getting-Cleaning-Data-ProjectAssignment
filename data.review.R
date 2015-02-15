#Test the data so I can understand it.

library(dplyr)

activity.labels<-read.table("data/UCI-HAR/activity_labels.txt",col.names=c("id","activity"))

features<-read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE)
feature.names<-as.vector(features$feature)
#Test Arena
subject.test<-read.table("data/UCI-HAR/test/subject_test.txt",col.names=c("subject_id"))
X_test<-read.table("data/UCI-HAR/test/X_test.txt")
#Ensure the column name is unique by adding a column number to each name.  
i <-0
feature.names<-sapply(feature.names,function(x){i<<-i+1; paste(i,x,sep="-")})
#Set names for the columns
colnames(X_test)<-feature.names

y_test<-read.table("data/UCI-HAR/test/y_test.txt",col.names="y")
y.test<-merge(y_test,activity.labels,by.x="y",by.y="id")
#Only include the columns with either mean or std in them.
x.test.std.mean<-tbl_df(X_test)%>%select(matches("(mean|std)"))
#Include all of the right column data
test.data<-tbl_df(cbind(subject.test,y.test,x.test.std.mean))
128/2.56

#Train Arena
subject.train<-read.table("data/UCI-HAR/train/subject_train.txt",col.names=c("subject_id"))
X_train<-read.table("data/UCI-HAR/train/X_train.txt")
colnames(X_train)<-feature.names
y_train<-read.table("data/UCI-HAR/train/y_train.txt",col.names="y")
y.train<-merge(y_train,activity.labels,by.x="y",by.y="id")
x.train.std.mean<-tbl_df(X_train)%>%select(matches("(mean|std)"))
train.data<-tbl_df(cbind(subject.train,y.train,x.train.std.mean))
#Combine both the test and training data.
all.data<-rbind(test.data,train.data)
 