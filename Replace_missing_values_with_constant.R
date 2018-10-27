# Replace missing values using a constant- In this case zero
m<-read.csv("C:/Users/pradeep/Desktop/cse_a.csv")
print(m)
m$Marks[is.na(m$Marks)]<-0
print(m)
