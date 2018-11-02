#2) If you want NA's to be converted to some other text

m<-read.csv("C:/Users/pradeep/OneDrive/datasets/2011-15 placements data.csv",na.strings=c("","NA"))
head(m)

# Now say i want NA's in placement status to be replaced with Not_placed.
# Here, placement status is a factor and not a character. It's not possible to add the test directly into a factor.
# So, convert placement status to characters, put the text and convert back to factors.

m$placement.status<-as.character(m$placement.status)
# check the class of placement status now.
class(m$placement.status)

# put the text in place of na.
m$placement.status[is.na(m$placement.status)]<-"Not_placed"

# Now, convert back to factor
m$placement.status<-as.factor(m$placement.status)
class(m$placement.status)
levels(m$placement.status)