library("cluster")
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/hclustdata.csv")
head(m)
clust<-agnes(x = m,stand = TRUE,metric = "euclidean",method = "average")
pltree(clust)
m[c(14,16),]























