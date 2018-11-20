# Select the dataset
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/hclustdata.csv")
head(m)
# Remove NA's if any
m<-na.omit(m)
# Remove non numeric attributes and normalize numeric attributes
m1<-scale(m[,c(-1,-2)])
head(m1)
# Caliculate distance matrix
d<-dist(m1)
d
# Use the hclust function to find clusters
clust<-hclust(d,method = "complete")
#plot the dentogram
plot(clust)
m[c(81,83),]

