#install.packages("testthat")
library(testthat)
#source("run_analysis.R")
feature.names <- function () {
        #Read in the features 
        features<-read.table("data/UCI-HAR/features.txt",col.names=c("id","feature"),stringsAsFactors=FALSE)
        feature.names<-as.vector(features$feature)
        #Add a column identifier to ensure the column names are identifiable and unique
        i <-0
        feature.names<-sapply(feature.names,function(x){i<<-i+1; paste(i,x,sep="-")})
        feature.names
}
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
