# Select the dataset
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/bbn.csv")
head(m)

# Apply K-means algorithm, the number of clusters choosen as 
clust<-kmeans(m$B.Tech.perc,2)
print(clust)


plot(m$B.Tech.perc,type = "n")
text(x=m$B.Tech.perc,labels = m$Placement.status, col = clust$cluster)

