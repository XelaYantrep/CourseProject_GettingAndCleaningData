## Xela Yantrep
## JHU Cousera squence: 3rd course, Getting and Cleaning Data

###############################################################################
## DESCRIPTION:  The purpose of this file is to load and clean up the UCI
## accelerometer data gathered from some Samsung S5 phones.  For details
## and variable names please see the codebook and readme associated with this
## github repo.
###############################################################################

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("GCD")){ #making a directory for the project.
    dir.create("GCD")
}
file <- "GCDProj.zip"
setwd("./GCD/")
download.file(url, paste0(getwd(),"/",file)) #no method = curl because run on linux
if(!file.exists("UCI HAR Dataset")) {
    unzip(file)
}

###############################################################################
## Step 1 : Merge the data into one data set.  We will do a lot of cleaning as
## we laod which will help with subsequent steps.
###############################################################################
library(dplyr)
rm(list = ls())
# Load in the features and activity labels:
features <- read.table(file.path("UCI HAR Dataset","features.txt"),as.is=TRUE)
features <- features[,2] #extracts just the names into a vector
featInd <- grep("(mean|std)\\(\\)", features)
ourfeatures <- features[featInd]
# I considered "(mean|std)\\(\\)""[Mm]ean|[Ss]td" which gives a different result but decided against it, see readme for more information.
activities <- read.table(file.path("UCI HAR Dataset","activity_labels.txt"), as.is = TRUE)
activities <- activities[,2]
    
# Load in and name the training data:
xtrain <- read.table(file.path("UCI HAR Dataset", "train","X_train.txt"))[featInd]
names(xtrain) <- ourfeatures
ytrain <- read.table(file.path("UCI HAR Dataset", "train","y_train.txt"))
names(ytrain) <- "activity"
subtrain <- read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"))
names(subtrain) <- "subject"

# Load in and name the test data:
xtest <- read.table(file.path("UCI HAR Dataset", "test","X_test.txt"))[featInd]
names(xtest) <- ourfeatures
ytest <- read.table(file.path("UCI HAR Dataset", "test","y_test.txt"))
names(ytest) <- "activity"
subtest <- read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"))
names(subtest) <- "subject"

testdata <- cbind(subtest,ytest,xtest)
traindata <- cbind(subtrain,ytrain,xtrain) #the first 7352 rows will be training
all <- rbind(traindata,testdata)

###############################################################################
## Step 2: This was completed above with the read.table()[] commands.
###############################################################################
## Step 3: Label the activies with descriptive names:
###############################################################################

all$activity <- factor(all$activity, levels = 1:6, labels = activities)

###############################################################################
## Step 4: Completed above with the line beginning "featInd" and again using
## read.table()[] to extract only those rows.  
###############################################################################
## Step 5:  Create and independent tidy dataset with averages.
###############################################################################
str(all)
tidyset <- group_by(all,subject,activity)
tidyset <- summarize_each(tidyset, funs(mean))
# One more thing, per Leek's suggestion that thing should be factors:
tidyset$subject <- as.factor(tidyset$subject)
# Now we write the table
write.table(tidyset, "tidy_averages.txt", row.names = FALSE, quote = FALSE)
# We use the quote = FALSE parameter only after checking that none of our 
# variables have spaces in their names, which they do not.
write.table(names(tidyset), "tidy_names.txt", row.names = FALSE, quote = FALSE)
str(tidyset)
