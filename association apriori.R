# import the dataset arules

library(arules)

# below is the command to read the data in csv format.
# G<-read.transactions("C:/Users/pradeep/OneDrive/datasets/Groceries.csv,sep=" "" " ")


# use the dataset groceries. this dataset is along with the arules package.
G<-Groceries

# Now apply the apriori algorithm to get the frequent rules and specify support and confidence
G_rules<- apriori(G,parameter = list(supp=0.001,conf=0.9))
?apriori

# To see the rules, use the command inspect.
inspect(G_rules[1:5])

# sort the rules as per confidence.
G_rules<-sort(G_rules,by="confidence",decreasing = TRUE)
