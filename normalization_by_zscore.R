zscorenorm<-function(x)
{
  a=((x-mean(x))/sd(x))
}

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
m["SSC.Perc.entage"]<-(lapply(m["SSC.Perc.entage"],zscorenorm))
class(m)
head(m)