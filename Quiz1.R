#Quiz 1
library(xlsx)
library(dplyr)
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,destfile="id.data.csv",method="curl")
data<-tbl_df(read.csv("id.data.csv"))
             
millionPlus<-data%>%group_by(VAL)%>%summarise(dollar_count=count(VAL))
millionPlus
data$VAL==24
guess<-c(5,2,3,NA)
guess[!is.na(guess)]
d2<-data$VAL[!is.na(data$VAL)]
length(d2[d2==24])
urlxls<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(urlxls,destfile="ngap.csv",method="curl")
dat<-read.xlsx("ngap.csv",sheetIndex=1,rowIndex=18:23,colIndex=7:15,header=TRUE)
View(dat)
sum(dat$Zip*dat$Ext,na.rm=T) 

library(XML)
urlxml<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(urlxml,destfile="restaurants.xml",method="curl")
doc<-xmlTreeParse("restaurants.xml",useInternalNodes = TRUE)
root<-xmlRoot(doc)
xmlName(root)
xmlSize(root)
ans <- getNodeSet(root, "//zipcode")
ans2 <- as.vector(xpathApply(root, "//zipcode","xmlValue"))
sum(ans2=="21231")
#Question 5
install.packages("data.table")
library(data.table)
url5<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url5,destfile="id.data.2.csv",method="curl")
DT<-fread("id.data.2.csv")
timing<-data.frame()
v1<-system.time({for(i in 1:1000) {mean(DT$pwgtp15,by=DT$SEX)}})
v2<-system.time({for(i in 1:1000) {mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)}})
v3<-system.time({for(i in 1:1000) {sapply(split(DT$pwgtp15,DT$SEX),mean)})
v4<-system.time({for(i in 1:1000) {tapply(DT$pwgtp15,DT$SEX,mean)}})
#v5<-system.time({rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]})
v6<-system.time({for(i in 1:1000) {DT[,mean(pwgtp15),by=SEX]}})
rbind(v1,v2,v3,v4,v6)
