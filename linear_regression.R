# Read the data into a dataframe. say "m1"
m1<-read.csv("C:/Users/pradeep/OneDrive/datasets/ssc_inter.csv")
head(m1)

# Apply linear regression. Here "SSC" is predictor and "INTER" is responce
relation<-lm(INTER~SSC,data = m1)
print(relation)

# Now, read the data having errors "noisedata.csv" into a dataframe "m2"
m2<-read.csv("C:/Users/pradeep/OneDrive/datasets/noisedata.csv")
head(m2)
# now create a dataframe a with only 1 colomn i.e "SSC". 
# Note: The name of the predictor variable in "m1" and "a" should be same.
a <- data.frame(SSC = m2$SSC..)
print(a)
# now predict the "INTER" percentage using "predict" function 
result <-  predict(relation,a)
print(result)
# save the predicted "INTER percentage in dataframe "m2"- "INTER" colomn.
m2$INTER..<-result
head(m2)
# Now save the dataframe in  ".csv" format in your local system
write.csv(m2,"C:/Users/pradeep/OneDrive/datasets/noisedatamod.csv")
