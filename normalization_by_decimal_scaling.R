
normalize_ds<-function(x)
{
  a=x/100
  return(a)
}

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
m["SSC.Perc.entage"]<-(lapply(m["SSC.Perc.entage"],normalize_ds))
class(m)
head(m)