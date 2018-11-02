#replace values in dataframe  columns with another values.

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
m$placed.company<-lapply(m$placed.company,function(x){gsub(pattern = "IBM",replacement = "International Business machine",x)})
class(m$SSC.Perc.entage)
m

