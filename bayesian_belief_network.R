library(bnlearn)
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/bbn.csv")
head(m)
m$Back.logs<-as.numeric(m$Back.logs)
str(m)
res<-tabu(m)
plot(res)

fittedbn<-bn.fit(res,data=m)
print(fittedbn)

# Now, we can make queries.
cpquery(fittedbn,event = (Placement.status=="placed"),evidence = (Gender=="F"))