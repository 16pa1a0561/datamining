library(ggplot2)
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/bbn.csv")
head(m)
stu_clust<-kmeans(m[,c(4,5)],2,nstart = 20)
stu_clust
table(stu_clust$cluster,m$Placement.status)
m$cluster<-stu_clust$cluster
m


class(m$B.Tech.perc)
m$Back.logs<-as.numeric(m$Backlogs)

# Now, let's plot the clusters.
ggplot(m,aes(m$B.Tech.perc,m$inter.Diploma.perc,color=stu_clust$cluster))+geom_point()

