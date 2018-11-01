# Import the data set
m<-read.csv("C:/Users/pradeep/OneDrive/datasets/students_placement_data.csv")

# View the first 8 rows in dataset 
head(m)

# divide the data into training data and test data.
n=nrow(m)
print(n)
set.seed(101)

# Here 85 percent is training data and 15 percent is test data.
data_index=sample(1:n, size = round(0.85*n),replace = TRUE)
train_data=m[data_index,]
test_data=m[-data_index,]

# Now, let's check the structure of train_data and test_data.
str(train_data)
str(test_data)

# Import library rpart and provide the class label(placement.stats) and attributes/variables.
# Here method is class because we are going to classification and not prediction.
# Two types of split criterias can be used. Gini and entropy(information).
# default split criteria is Gini.

library(rpart)
stu_model<-rpart(formula =placement.status~ Backlogs+Gender+B.Tech_percentage+SSC.Percentage+inter_Diploma_percentage, data=train_data,method = "class",parms = list(split="gini"))

# Regular plot function create a messy tree. So, rpart.plot library is used for good visualization.
library(rpart.plot)
rpart.plot(stu_model,type=5,extra = 2 )

# Now let's do prediction.
p<-predict(stu_model,test_data,type="class")


t<-table(test_data[,9],p)
print(t)

# Missclassification error can be found as.


1-sum(diag(t))/sum(t)