
## run_analysis.r for coursera Cleaning Data course
##--------------------------------------------------------------------
## assigment - V1
###-------------------------------------------------------------------
## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and std for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of 
##each variable for each activity and each subject.


## data path
## add the path of the - UCI HAR Dataset - folder
## the code has to be also saved in this folder
## manually
##setwd("C:/DATA/COURSERA/03_CLEANING-DATA/COURSE-PROJECT/UCI HAR Dataset")



print("---Determining working directory...")
if(!file.exists("activity_labels.txt")){
    Dir <- "./UCI HAR Dataset/"
    while (!file.exists(file.path(Dir, "activity_labels.txt"), showWarnings=FALSE)) Dir <- readline(paste("WRONG directory in\n",normalizePath(Dir),"\nPlease choose directory ( with 'activity_labels.txt' etc.):"))
    setwd(Dir);
}


## load librarys - just in case

if (!require("data.table")) {
    install.packages("data.table")
}

if (!require("reshape2")) {
    install.packages("reshape2")
}

if (!require("dplyr")) {
    install.packages("dplyr")
}


library(data.table)
library(reshape2)
library(dplyr)


##-------------
##STEP 1
##-------------

## read the data
## train data
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
x_train_subject <- read.table("train/subject_train.txt")

## test data
x_test<-read.table("test/X_test.txt")
y_test<-read.table("test/y_test.txt")
y_test_subject<-read.table("test/subject_test.txt")

features<-read.table("features.txt")
activity_labels<- read.table("activity_labels.txt")

## merge the data

## train - per columns
y_train_activity<-merge(y_train,activity_labels, by="V1")
train<-cbind(x_train,y_train_activity,x_train_subject)

## test - per columns
y_test_activity<-merge(y_test,activity_labels, by="V1")
test<-cbind(x_test,y_test_activity,y_test_subject)

## merge all data to create one data set
dt<-rbind(train,test)

##-------------
##STEP 2
##-------------

## find and extract mean and std from all measurments
mean_std_c<- grep(".*mean.*|.*std.*", features[,2])

# the name of the columns
features<-features[mean_std_c,]

## add 3 more columns - 2 for activity and one for test_subject
mean_std_c<-c(mean_std_c,562,563,564)

dt<-dt[,mean_std_c]

##-------------
##STEP 3
##-------------

## add the column names to dt
colnames<- c(as.character(features$V2), "activity_V1", "activity", "subject")
colnames(dt)<-colnames

##-------------
##STEP 4
##-------------

tidy<-aggregate(dt,list(subject=dt$subject, activity=dt$activity), mean)
## remove the last 3 columns from tidy
drops <- c("activity_V1", "activity", "subject")
tidy <-tidy[!(names(tidy) %in% drops)]

##-------------
##STEP 5
##-------------

## write to file the dataset
write.table(tidy, file = "./tidy_data.txt", row.name=FALSE)



