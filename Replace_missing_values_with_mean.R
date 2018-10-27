m<-read.csv("C:/Users/pradeep/Desktop/cse_a.csv")
m$Marks[is.na(m$Marks)]<-round(mean(m$Marks,na.rm = TRUE))
print(m)

#with using imputeTS package.

m<-read.csv("C:/Users/pradeep/Desktop/cse_a.csv")
print(m)
library(imputeTS)
m$Marks<-round(na.mean(m$Marks))
print(m)
