
#####################ATTENTION: WE HAVE REMOVED THE LOCAL PATH & PASSWORD#####################

library(MySQL)

#Get connection


mydb<-dbConnect(MySQL(), user='root', password='######', dbname='mydb',host='127.0.0.1')

# Upload File

rs<- dbSendQuery(mydb, "LOAD DATA LOCAL INFILE 'C:/#####/temp.csv.csv' 
                 INTO TABLE customer FIELDS TERMINATED BY ',' 
                 LINES TERMINATED BY '\n' IGNORE 1 LINES")


data<- fetch(rs, n=-1)


