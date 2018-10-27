m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
head(m)
relation1<-lm(m$B.Tech.perc~m$inter.Diploma.perc)
summary(relation1)
