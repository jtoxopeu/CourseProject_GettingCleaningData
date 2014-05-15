## This code generates a tidy data set of values based on data downloaded
## from a zip file on 12 May 2014, 3:00 pm AST. The zip file url is:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# 1. Merge training and test datasets.

## Read data sets into R from working directory
## Activity labels, subject IDs, and data for "train" set
trainlabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainsubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainset <- read.table("./UCI HAR Dataset/train/X_train.txt")
## 561 columns (variables), 7352 rows (observations)

## Activity labels, subject IDs, and data for "test" set
testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testset <- read.table("./UCI HAR Dataset/test/X_test.txt")
## 561 columns (variables), 2947 rows (observations)

## Combine subjects, labels, and data for each data set
traindata <- data.frame(cbind(trainsubjects, trainlabels, trainset))
testdata <- data.frame(cbind(testsubjects, testlabels, testset))

## Merge traindata and testdata - combine all common variable names
mergedData <- merge(traindata, testdata, all=TRUE)

# 2. Extract only measurements for mean and stdev

## First, read in variable names
features <- read.table("./UCI HAR Dataset/features.txt")
head(features)
## 2 columns (variables), 561 rows (observations)
## The number in V1 corresponds to the variable number in the
## test and training datasets. V2 contains the name for the variable.
featurenames <- as.character(features[,2]) ## vector of variable names

## Determine locations at which feature name contains either 
## "mean" (but not meanFreq) or "std" (standard deviation)
meanstd <- which(grepl("mean", featurenames) & ! grepl("Freq", featurenames) 
                 | grepl("std", featurenames))
## Subset out columns containing mean or std information using 
## the integer vector above. (Columns 1 & 2 are Subject ID & Activity)
mergedDataSub <- mergedData[,c(1,2,meanstd+2)]

# 3. Use descriptive activity labels

## Read "activity labels" file from working directory and print
## each number in V1 corresponds to the labels8 in testlabels and trainlabels
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activitylabels

## Format activity labels to lowercase, replace underscores with dots
activitylab <- tolower(activitylabels[,2])
activitylab <- gsub("-", ".", activitylab)

## Create "activity" factor with activity name for each activity code 
## in mergedDataSub (second column, #2, contains codes) 
activitycodes <- mergedDataSub[, 2]
activity <- factor(activitycodes, labels=activitylab)

## Replace activity codes column with activity factor
mergedDataSub[,2] <- activity

# 4. Appropriately name the dataset with descriptive variable names

## Subset out variable names from features.txt using same method as in 2.
featuresub <- featurenames[meanstd]
## Modify variable names to be lowercase and contain descriptive information
dots <- gsub("-", ".", featuresub) ## replace hyphens with dots
noparenth <- gsub("()", "", dots, fixed=TRUE) ## remove all "()"
lowercase <- tolower(noparenth) ## all letters lowercase
removedoubles <- gsub("bodybody", "body", lowercase)
## remove duplications of the word "body"
fullacc <- gsub("acc", ".accelerometer", removedoubles) ## expand abbreviation
fullgyro <- gsub("gyro", ".gyroscope", fullacc) ## expand abbreviation
jerk <- gsub("jerk", ".jerk", fullgyro) ## insert "." before "jerk"
fullmag <- gsub("mag", ".magnitude", jerk) ## expand abbreviation
addtime <- paste("time", fullmag[1:40], sep="")
addtime <- gsub("timet", "time.", addtime) ## replace "t" with "time"
addfreq <- paste("frequency", fullmag[41:66], sep="")
addfreq <- gsub("frequencyf", "frequency.", addfreq) ## replace "f" with "frequency"
varnames <- c(addtime, addfreq)

## Add column names to dataset
colnames(mergedDataSub) <- c("subject.id", "activity", varnames)

# 5. Create a second, tidy dataset with the average of each variable
#    for each activity and each subject

## Split data set by activity and subject id
activityfactor <- factor(mergedDataSub$activity)
subjectfactor <- factor(mergedDataSub$subject)
s <- split(mergedDataSub[,3:68], list(activityfactor, subjectfactor))

## Calculate means per subject per activity
means <- sapply(s, colMeans)
## Variables ended up as rows, so reset variables as columns
means <- data.frame(t(means))
## data arranged so activities are grouped by subject
## subject id is at the end of the row name

## Write tidy data to file.
write.csv(means, "./tidydata.csv")