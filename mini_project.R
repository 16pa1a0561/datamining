#1) There are some missing values in SSC and Inter Percentage. - find the missing values by using any mathematical method. 
#2) Now you have preprocessed the data. Before applying any data mining algorithm, we should understand the data. Visualization helps us here. Draw bar-Graph and histograms and understand your data.
#3) After getting a good idea on your data, We can apply classification now.
#4) Divide your data into training and test data.
#5) Apply Decision tree and naive-Bayes classification on the training data.
#6) Draw the confusion matrix and find the accuracy of both classifiers.
#7) And conclude your mini project by just saying. which classifier is better.


m<-read.csv("C:/Users/pradeep/OneDrive/datasets/students_placement_data_ms.csv")
head(m)


print(anyNA(m$SSC.Percentage))# Find for any NA in SSC.Percentage.
anyNA(m$inter_Diploma_percentage)# Find for any NA in inter_Diploma_percentage
anyNA(m$B.Tech_percentage)# Find for any NA in B.Tech_percentage

# Remove NA's using mean in SSC percentage
m$SSC.Percentage[is.na(m$SSC.Percentage)]<-mean(m$SSC.Percentage,na.rm = TRUE)
anyNA(m$SSC.Percentage)




# Remove NA's using mean in Intermediate percentage
m$inter_Diploma_percentage[is.na(m$inter_Diploma_percentage)]<-mean(m$inter_Diploma_percentage,na.rm = TRUE)
anyNA(m$inter_Diploma_percentage)

#Draw a histogram for SSC percentage
hist(m$SSC.Percentage)

# Draw a histogram fo inter percentage
hist(m$inter_Diploma_percentage)

# Draw a histogram for B.Tech percentage
hist(m$B.Tech_percentage)

#Draw a bar chart for gender
barplot(table(m$Gender))

# Draw a bar chart for placement status
barplot(table(m$placement.status))

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

# Now apply decision tree induction.
library(rpart)
stu_model<-rpart(formula =placement.status~ Backlogs+Gender+B.Tech_percentage+SSC.Percentage+inter_Diploma_percentage, data=train_data,method = "class",parms = list(split="gini"))

# Now let's do prediction.
p<-predict(stu_model,test_data,type="class")
print(p)

t<-table(test_data[,9],p)
print(t)

# Accuracy of decision tree
sum(diag(t))/sum(t)

# Now apply naive bayes classifier
library(e1071)

stu_model1<-naiveBayes(placement.status~ Backlogs+Gender+B.Tech_percentage+SSC.Percentage+inter_Diploma_percentage, data=train_data)

# Now let's do prediction.
q<-predict(stu_model1,test_data,type="class")


t1<-table(test_data[,9],q)
print(t1)
sum(diag(t1))/sum(t1)


