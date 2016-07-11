#---directory
#setwd("C:\\Users\\hafezasg\\Desktop\\DataScientist\\Getting and Cleaning Data\\Project")
#getwd()

#This code is written in windows system. Some changes might be needed in download part other
systems.

#1---libraries
library(data.table)


#2---download 
filename="projectData"
setInternet2(TRUE) #This is require for windows system
if (!file.exists(filename)){
  fileURL="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
}  
#---unzip
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

#---activity labels & featurs
activityLabels=read.table("UCI HAR Dataset\\activity_labels.txt")
features=read.table("UCI HAR Dataset\\features.txt")
#---find mean & std
featuresWantedNames=grep("mean|std",features[,2],value=T)
featuresWantedIndices=grep("mean|std",features[,2])


#3---Load data for indices contain std and mean 
train=read.table("UCI HAR Dataset\\train\\X_train.txt")[featuresWantedIndices]
trainActivities=read.table("UCI HAR Dataset\\train\\Y_train.txt")
trainSubjects=read.table("UCI HAR Dataset\\train\\subject_train.txt")

test=read.table("UCI HAR Dataset\\test\\X_test.txt")[featuresWantedIndices]
testActivities=read.table("UCI HAR Dataset\\test\\Y_test.txt")
testSubjects=read.table("UCI HAR Dataset\\test\\subject_test.txt")

trainAll=cbind(trainSubjects, trainActivities, train)
testAll=cbind(testSubjects, testActivities, test)

dataAll=rbind(trainAll,testAll)


#4---Organize the feature names 
featuresWantedNames=gsub("-","",featuresWantedNames)
featuresWantedNames=gsub("std","STD",featuresWantedNames)
featuresWantedNames=gsub("mean","Mean",featuresWantedNames)
featuresWantedNames=gsub("[()]","",featuresWantedNames)
featuresWantedNames=gsub("t","Time",featuresWantedNames)
featuresWantedNames=gsub("f","Force",featuresWantedNames)
featuresWantedNames=gsub("Gravi","Gravity",featuresWantedNames)
featuresWantedNames=gsub("Acc","Acceleration",featuresWantedNames)
featuresWantedNames=gsub("Mag","Magnitude",featuresWantedNames)

len=length(featuresWantedNames)+2
names(dataAll)[1:2] = c("subjectsId","activities")
names(dataAll)[3:len] = featuresWantedNames 

#5---Replace Activity ID by its label
dataAll$activities=factor(dataAll$activities, levels = activityLabels[,1], labels = activityLabels[,2])
dataAll$subjectsId=as.factor(dataAll$subjectsId)

write.table(dataAll, "tidyDataAll.txt", row.names = FALSE, quote = FALSE)

#6---The average of each variable for each activity and each subject
dataAllMelted=melt(dataAll, id = c("subjectsId", "activities")) #variable: all columns except "subjectsId", "activities"
dataAllMean=dcast(dataAllMelted, subjectsId+activities~variable, mean)

write.table(dataAllMean, "tidy.txt", row.names = FALSE, quote = FALSE)


