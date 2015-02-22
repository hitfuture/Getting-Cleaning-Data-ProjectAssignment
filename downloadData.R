# downloadData.R

#Step 0. Download data
## Create the ./data directory if it does not exist.
if(!file.exists("/data")) {
        dir.create("data") 
}
## Download the data from the Internet if it does not exist.
if(!file.exists("./data/projdata.zip")) {
        data.source.url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url=data.source.url,destfile="./data/projdata.zip",method="curl")
        download.date<-date()
##Manually unzip the file so that it can be processed.        
        
        
}

