m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
head(m)
cov(m$SSC.Perc.entage,m$inter.Diploma.perc)
cov(m$inter.Diploma.perc,m$B.Tech.perc)
cov(m$SSC.Perc.entage,m$B.Tech.perc)

