# Here we use chisquare test to find the relation between 
place_stats<-read.csv("C:/Users/pradeep/OneDrive/datasets/chisq_placements.csv")
head(place_stats)
# Apply chi-square test
chisq.test(place_stats$Gender,place_stats$Placement.status)
