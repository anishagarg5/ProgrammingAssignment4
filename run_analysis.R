##############################################################################
#
# Script : run_analysis.R
# 
# Description : Using data collected from the accelerometers and gyroscopes 
#               from the Samsung Galaxy S smartphone, creating a tidy data set
#               after cleaning and summarising the data. For more details,
#               refer to Read.md

library(dplyr)

##############################################################################
# Step 0 - Gets and reads data
##############################################################################

# check the working directory, if required
getwd()
setwd("~/Desktop/Coursera R")

# download zip file containing data, if not already downloaded
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "UCI HAR Dataset.zip"

if (!file.exists(file)) {
  download.file(url, file, method = "curl", mode = "wb")
}

# unzip zip file containing data, if data directory doesn't already exist
path <- "UCI HAR Dataset"
if (!file.exists(path)) {
  unzip(file)
}

# read training data
trainingSubjects <- read.table(file.path(path, "train", "subject_train.txt"))
trainingValues <- read.table(file.path(path, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(path, "train", "y_train.txt"))

# read test data
testSubjects <- read.table(file.path(path, "test", "subject_test.txt"))
testValues <- read.table(file.path(path, "test", "X_test.txt"))
testActivity <- read.table(file.path(path, "test", "y_test.txt"))

# read features, don't convert text labels to factors
features <- read.table(file.path(path, "features.txt"), as.is = TRUE)
  ## note: feature names (in features[, 2]) are not unique
  ##       e.g. fBodyAcc-bandsEnergy()-1,8

# read activity labels
activities <- read.table(file.path(path, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

##############################################################################
# Step 1 - Merges the training and the test sets to create one data set
##############################################################################

# concatenate individual data tables to make single data table
humanActivity <- rbind(
  cbind(trainingSubjects, trainingValues, trainingActivity),
  cbind(testSubjects, testValues, testActivity)
)
  ## note: alternatively, we can first rbind the training and test corresponding sets,
  ##       and then cbind the resulting 3 data sets


# remove individual data tables to save memory
rm(trainingSubjects, trainingValues, trainingActivity, 
   testSubjects, testValues, testActivity)

# assign column names
colnames(humanActivity) <- c("subject", features[, 2], "activity")

##############################################################################
# Step 2 - Extracts only the measurements on the mean and standard deviation
#          for each measurement
##############################################################################

# determine columns of data set to keep based on column name
columnsToKeep <- grepl("subject|activity|mean|std", colnames(humanActivity))

# keep data in these columns only
humanActivity <- humanActivity[, columnsToKeep]


##############################################################################
# Step 3 - Uses descriptive activity names to name the activities in the data
#          set
##############################################################################

# replace activity values with named factor levels
humanActivity$activity <- factor(humanActivity$activity, 
  levels = activities[, 1], labels = activities[, 2])

##############################################################################
# Step 4 - Appropriately labels the data set with descriptive variable names
##############################################################################

# get column names
humanActivityCols <- colnames(humanActivity)

# remove special characters
humanActivityCols <- gsub("[\\(\\)-]", "", humanActivityCols)

# expand abbreviations and clean up names
humanActivityCols <- gsub("^f", "frequencyDomain", humanActivityCols)
humanActivityCols <- gsub("^t", "timeDomain", humanActivityCols)
humanActivityCols <- gsub("Acc", "Accelerometer", humanActivityCols)
humanActivityCols <- gsub("Gyro", "Gyroscope", humanActivityCols)
humanActivityCols <- gsub("Mag", "Magnitude", humanActivityCols)
humanActivityCols <- gsub("Freq", "Frequency", humanActivityCols)
humanActivityCols <- gsub("mean", "Mean", humanActivityCols)
humanActivityCols <- gsub("std", "StandardDeviation", humanActivityCols)

# correct typo
humanActivityCols <- gsub("BodyBody", "Body", humanActivityCols)

# use new labels as column names
colnames(humanActivity) <- humanActivityCols

##############################################################################
# Step 5 - From the data set in step 4, creates a second, independent tidy 
#          output data set with the average of each variable for each activity 
#          and each subject
##############################################################################

# group by subject and activity and summarise using mean
humanActivityMeans <- humanActivity %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

# wite output to file "tidy_data.txt"
write.table(humanActivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)
##############################################################################