min_max <- function(x,new_max=5,new_min=1)
{
  a= (((x-min(x))* (new_max-new_min))/(max(x)-min(x)))+new_min
  return(a)
}

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
m["SSC.Perc.entage"]<-(lapply(m["SSC.Perc.entage"],min_max))
class(m)
head(m)