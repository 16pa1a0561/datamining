normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
m1<-as.data.frame(lapply(m["SSC.Perc.entage"],normalize1))
class(m1)
m$SSC.Perc.entage<- m1
m

normalize1 <- function(x,new_max=5,new_min=1)
  {
  a= (((x-min(x))* (new_max-new_min))/(max(x)-min(x)))+new_min
  return(a)
}






zscorenorm<-function(x)
{
  a=((x-mean(x))/sd(x))
}

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv")
m1<-as.data.frame(lapply(m["SSC.Perc.entage"],zscorenorm))
class(m1)
m$SSC.Perc.entage<- m1
m




# Age vector
age <- c(25, 35, 50)
# Salary vector
salary <- c(200000, 1200000, 2000000)
# Data frame created using age and salary
df <- data.frame( "Age" = age, "Salary" = salary, stringsAsFactors = FALSE)
df

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
dfNorm <- as.data.frame(lapply(df["Salary"], normalize))
class(dfNorm)
df$Salary<-dfNorm
df












