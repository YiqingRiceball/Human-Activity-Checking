
# 1. Merges the training and the test sets to create one data set
library(dplyr)
# Load test data
setwd("/Users/defaultuser/Desktop/Getting and Cleaning Data/UCI HAR Dataset/test")
test_data<-read.table("X_test.txt")
test_label<-read.table("y_test.txt")
test_subject<-read.table("subject_test.txt")

# Load train data
setwd("/Users/defaultuser/Desktop/Getting and Cleaning Data/UCI HAR Dataset/train")
train_data<-read.table("X_train.txt")
train_label<-read.table("y_train.txt")
train_subject<-read.table("subject_train.txt")

# Merge the data with its labels 
test_data$activity<-test_label[,1]
train_data$activity<-train_label[,1]

# Merge the data with its subjects 
test_data$subject<-test_subject[,1]
train_data$subject<-train_subject[,1]

# Combine the test and train data
complete<-rbind(test_data,train_data)

#==========================================================================================

# 2 Extracts only the measurements on the mean and standard deviation for each measurement

# Find features measures means and sd
setwd("/Users/defaultuser/Desktop/Getting and Cleaning Data/UCI HAR Dataset")
features<-read.table("features.txt",colClasses="character")

# Assign column names
colnames(complete)<-c(features$V2,"activity","subject")

# Subset columns only containing the mean and standard deviation 
complete<-select(complete,contains("subject"),contains("activity"),contains("mean"),contains("std"),-contains("Freq"),-contains("angle"))

#==========================================================================================

#3. Uses descriptive activity names to name the activities in the data set

# Read activity names 
activity_name<-read.table("activity_labels.txt",colClasses=c("numeric","character"))

# Replace each label in the data frame with its activity name
for (i in 1:length(complete$activity)){
    if (complete$activity[i]==1){
        complete$activity[i]<-activity_name$V2[1]
    }
    if (complete$activity[i]==2){
        complete$activity[i]<-activity_name$V2[2]
    }
    if (complete$activity[i]==3){
        complete$activity[i]<-activity_name$V2[3]
    }
    if (complete$activity[i]==4){
        complete$activity[i]<-activity_name$V2[4]
    }
    if (complete$activity[i]==5){
        complete$activity[i]<-activity_name$V2[5]
    }
    if (complete$activity[i]==6){
        complete$activity[i]<-activity_name$V2[6]
    }
    
}

#==========================================================================================

# 4. Appropriately labels the data set with descriptive variable names.

# Extract column names from the data frame from last step
oldname<-names(complete)
# Turn all the names into lower case
newname<-tolower(oldname)
# Replace the less understandable "t" and "f" with the more understandable "time" and "freq"
newname<-sub("^t","time",newname)
newname<-gsub("^f","freq",newname)
# Replace the confusing "bodyboday" with "body"
newname<-gsub("bodybody","body",newname)
newname<-gsub("\\(|\\)|\\-|\\_","",newname)
# assign the new names to the merged data
colnames(complete)<-newname

#==========================================================================================

# 5. From the data set in step 4, creates a second, independent 
# tidy data set with the average of each variable for each activity 
# and each subject.

# Melt the data according to Subject and Activity
library(reshape2)
columnname<-names(complete)
melted_data<-melt(complete,id=c("subject","activity"),measure.var=columnname[3:length(columnname)])

# Cast the mean of the melted data to a new data frame called newdata
newdata<-dcast(melted_data,subject+activity~variable,mean)

# Arrange the new data frame according to subject and labels
newdata<-arrange(newdata,subject,activity)

# Output the data
setwd("/Users/defaultuser/Desktop/Getting and Cleaning Data/courseproject")
write.table(newdata,file="/Users/defaultuser/Desktop/Getting and Cleaning Data/courseproject/activity_average.txt",row.name=FALSE)


