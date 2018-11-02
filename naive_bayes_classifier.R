
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/students_placement_data.csv")
head(m)


# divide the data into training data and test data.
n=nrow(m)
print(n)
set.seed(101)

# Here 85 percent is training data and 15 percent is test data.
data_index=sample(1:n, size = round(0.85*n),replace = TRUE)
train_data=m[data_index,]
test_data=m[-data_index,]
print(train_data)
library(e1071)


stu_model<-naiveBayes(placement.status~ Backlogs+Gender+B.Tech_percentage+SSC.Percentage+inter_Diploma_percentage, data=train_data)

# Now let's do prediction.
p<-predict(stu_model,test_data,type="class")


t<-table(test_data[,9],p)
print(t)

# Missclassification error can be found as.


1-sum(diag(t))/sum(t)
                      