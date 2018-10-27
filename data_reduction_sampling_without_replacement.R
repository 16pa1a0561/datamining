# Sampling without replacement 
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
m1<-m[sample(nrow(m),5),]
print(m1)
