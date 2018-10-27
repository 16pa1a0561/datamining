# correlation between two variables

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
head(m)
cor(m$SSC.Perc.entage,m$inter.Diploma.perc)
cor(m$inter.Diploma.perc,m$B.Tech.perc)
cor(m$SSC.Perc.entage,m$B.Tech.perc)
