# Download and Extract the data set

dataSetURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zippedDataSetName <- "uci_har_dataset.zip"
extractedDataSetName <- "UCI HAR Dataset"

if (!file.exists(extractedDataSetName)) {
	if (!file.exists(zippedDataSetName)) {
		message("Downloading dataset from URL ", dataSetURL)
		download.file(dataSetURL, zippedDataSetName)
		message("Download completed")
	}
	
	message("Extracting dataset ", zippedDataSetName)
	unzip(zippedDataSetName)
	message("Extraction completed")
}

message("Found expected directory ", extractedDataSetName)

#############################################################################

# Load train/test data and merge into single data set

message("Loading data...")

measurementName <- read.table(file.path(extractedDataSetName, "features.txt"), as.is = TRUE)[, 2]

trainSubjects <- read.table(file.path(extractedDataSetName, "train", "subject_train.txt"))
trainValues <- read.table(file.path(extractedDataSetName, "train", "X_train.txt"))
trainActivities <- read.table(file.path(extractedDataSetName, "train", "y_train.txt"))
trainDataSet <- cbind(trainSubjects, trainActivities, trainValues)

testSubjects <- read.table(file.path(extractedDataSetName, "test", "subject_test.txt"))
testValues <- read.table(file.path(extractedDataSetName, "test", "X_test.txt"))
testActivities <- read.table(file.path(extractedDataSetName, "test", "y_test.txt"))
testDataSet <- cbind(testSubjects, testActivities, testValues)

mergedDataSet <- rbind(trainDataSet, testDataSet)
colnames(mergedDataSet) <- c("subject", "activityID", measurementName)

rm(list = ls(pattern="^(train|test).*"))

message("Loading data completed")

#############################################################################

# Extract only the measurements on the mean and standard deviation

message("Extracting only mean() and std() data...")

targetMeasurements <- grep("subject|activityID|mean\\(\\)|std\\(\\)", colnames(mergedDataSet))

library("data.table")
summaryDT <- data.table(mergedDataSet)
summaryDT <- summaryDT[, ..targetMeasurements]

rm("mergedDataSet", "targetMeasurements")

message("Data extraction completed")

#############################################################################

# Use descriptive activity names to name the activities in the data set

message("Merging data with activity labels...")

activities <- read.table(file.path(extractedDataSetName, "activity_labels.txt"), col.names = c("activityID", "activity"))

summaryDT = merge(summaryDT, activities)
summaryDT[, activityID := NULL]

message("Activity label merge completed")

#############################################################################

# Appropriately label the data set with descriptive variable names

message("Renaming measurement columns...")

library("dplyr")
colnames(summaryDT) <-
	colnames(summaryDT) %>%
	{ gsub("^f", "frequency", .) } %>%
	{ gsub("^t", "time", .) } %>%
	{ gsub("Acc", "Accelerometer", .) } %>%
	{ gsub("Gyro", "Gyroscope", .) } %>%
	{ gsub("Mag", "Magnitude ", .) } %>%
	{ gsub("mean\\(\\)", "Mean", .) } %>%
	{ gsub("std\\(\\)", "STD", .) } %>%
	{ gsub(" ", "", .) } %>%
	{ gsub("-", "", .) }

message("Measurement columns rename completed")
	
#############################################################################

# Average each measurement for each subject and activity

message("Averaging measurements for each subject/activity...")

averageDT <-
  	group_by(summaryDT, subject, activity) %>%
	summarise_all(funs(mean))

message("Averaging measurements completed")

#############################################################################

# Export averageDT to a csv file

message("Exporting average data table...")

tidyDataSetName <- "tidyDataSet.csv"
write.table(averageDT, tidyDataSetName, row.names = FALSE, quote = FALSE, sep=",")

message("Data table export completed")
