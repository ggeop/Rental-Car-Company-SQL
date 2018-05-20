#######################################     Library     ######################################
library("RMySQL")

####################################### Make a Connection #####################################
mydb<-dbConnect(MySQL(), user='root', password='####', dbname='mydb',host='127.0.0.1')

#######################################   First Query  ########################################
rs<- dbSendQuery(mydb, "SELECT MONTH(RENT.PICKUP_DATE) AS M1, RENT.AMOUNT AS S1
                        FROM RENT
                        WHERE YEAR(RENT.PICKUP_DATE)=2015")
t<-fetch(rs, n=-1)

# Order the data
t<-t[order(t$M1),]

###############################    A Function Instead of 'Group by'  ##########################

f<- function(x){

  #Initialization
  suma<-numeric(length(x$M1))
  suma[x$M1[1]]<-x$S1[1]
  names(suma)[1]<-x$M1[1]

  for(i in c(1:length(x$M1)))
  {
   if(!is.na(x$M1[i+1]))
    {
      if(x$M1[i]==x$M1[i+1])
        {
          suma[x$M1[i]]<-suma[x$M1[i]]+x$S1[i+1]
          names(suma)[x$M1[i]]<-x$M1[i]
        }
      else
        {
          suma[x$M1[i+1]]<-x$S1[i+1]
          names(suma)[x$M1[i+1]]<-x$M1[i+1]
        }

    }
   }
  suma<-suma[suma!=0]
  suma<-data.frame(suma,names(suma))
  names(suma)[1]<-paste("S1")
  names(suma)[2]<-paste("M1")
  return(suma)
}

# Create the table V1 #####################################################################
v1<-f(t)

# Create sum of NEXT months ###############################################################
next_month<-c()
for(i in c(1:length(v1$M1)))
{
  next_month[i]<-sum(v1$S1[(i+1):12], na.rm=TRUE)
}

# Create sum of PREVIOUS months ###########################################################
previous_month<-c()
for(i in c(1:length(v1$M1)))
{
  previous_month[i]<-sum(v1$S1[(1):i-1], na.rm=TRUE)
}

# Final table #############################################################################
table<-cbind(v1,previous_month,next_month)
print(table[,c(2,3,1,4)])  #Re-order the columns in order to be more easy to read
