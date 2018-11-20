library("fpc")
library("dbscan")
# load the dataset
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/hclustdata.csv")
head(m)
# Consider only b.tech and backlogs.
m1<-m[,c(5,6)]
head(m1)



# this function is used to determine optimal value of eps. 
#Note the y value at the curve in the graph is the optimal value.
dbscan::kNNdistplot(m1, k =  10)

# apply dbscan algoithm
db<-dbscan(m1,eps=4,MinPts = 10)
# Plot it
plot(db,m1)



