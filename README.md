# uci-har-datascience-coursera

This is a programming assignment from Coursera Data Science specification. It makes use of the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

As of now, this repository contains the R scripts for:
* Getting and Cleaning Data Course Project: __run_analysis.R__

## Getting and Cleaning Data - Course project

All processing and transformation steps for this project are contained in the R script `run_analysis.R`, namely:
1. Download and Extract the data set, if not already exists
2. Load train/test data and merge into single data set
3. Extract only the measurements on the `mean` and `standard deviation`
4. Use descriptive activity names to name the activities in the data set
5. Appropriately label the data set with descriptive variable names
6. Average each measurement for each subject and activity, store this into a new independent data set
7. Export the newly created average data set into a CSV file - `tidyDataSet.csv`

Make sure to change your working directory to the same directory containing `run_analysis.R` before sourcing the script.
