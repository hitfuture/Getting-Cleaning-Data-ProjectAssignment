install.packages("RMySQL")
library(RMySQL)
connection<-dbConnect(RMySQL::MySQL(),dbname="test")
summary(connection)
all.tables<-db_list_tables(connection)
all.tables
db_create_table(connection,"EMPLOYEE",colnames(staffing))
colnames(staffing)
