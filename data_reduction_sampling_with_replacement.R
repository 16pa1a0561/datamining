# Sampling with replacement 
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
str(m)
m1<-m[sample(nrow(m),10,replace = TRUE),]
print(m1)

