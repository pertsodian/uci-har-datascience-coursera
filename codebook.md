# Codebook

This Codebook describes the structure and layout of the dataset avaible in [tidyDataSet.csv](https://github.com/pertsodian/uci-har-datascience-coursera/blob/master/tidyDataSet.csv)
It uses the features_info.txt and README.txt files provided in the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) as an template.

## Background
This section is an excerpt from README.txt file in [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

## Data

[tidyDataSet.csv](https://github.com/pertsodian/uci-har-datascience-coursera/blob/master/tidyDataSet.csv) focuses on the mean() and std() entries of each measurement available in both training and testing set of the original [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

For each combination of test subsject (volunteer) and activity, the average of each mean and standard-deviation entries was recorded.

## Identifiers

* `subject` - The ID of the test subject, in range of [1..30]
* `activity` - The type of activity performed, in set of following possible values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

## Variables

The variables are split in two different domains, time and frequency.

__Average variables of signals in Time domain:__
* `timeBodyAccelerometerMeanX`
* `timeBodyAccelerometerMeanY`
* `timeBodyAccelerometerMeanZ`
* `timeBodyAccelerometerSTDX`
* `timeBodyAccelerometerSTDY`
* `timeBodyAccelerometerSTDZ`
* `timeGravityAccelerometerMeanX`
* `timeGravityAccelerometerMeanY`
* `timeGravityAccelerometerMeanZ`
* `timeGravityAccelerometerSTDX`
* `timeGravityAccelerometerSTDY`
* `timeGravityAccelerometerSTDZ`
* `timeBodyAccelerometerJerkMeanX`
* `timeBodyAccelerometerJerkMeanY`
* `timeBodyAccelerometerJerkMeanZ`
* `timeBodyAccelerometerJerkSTDX`
* `timeBodyAccelerometerJerkSTDY`
* `timeBodyAccelerometerJerkSTDZ`
* `timeBodyGyroscopeMeanX`
* `timeBodyGyroscopeMeanY`
* `timeBodyGyroscopeMeanZ`
* `timeBodyGyroscopeSTDX`
* `timeBodyGyroscopeSTDY`
* `timeBodyGyroscopeSTDZ`
* `timeBodyGyroscopeJerkMeanX`
* `timeBodyGyroscopeJerkMeanY`
* `timeBodyGyroscopeJerkMeanZ`
* `timeBodyGyroscopeJerkSTDX`
* `timeBodyGyroscopeJerkSTDY`
* `timeBodyGyroscopeJerkSTDZ`
* `timeBodyAccelerometerMagnitudeMean`
* `timeBodyAccelerometerMagnitudeSTD`
* `timeGravityAccelerometerMagnitudeMean`
* `timeGravityAccelerometerMagnitudeSTD`
* `timeBodyAccelerometerJerkMagnitudeMean`
* `timeBodyAccelerometerJerkMagnitudeSTD`
* `timeBodyGyroscopeMagnitudeMean`
* `timeBodyGyroscopeMagnitudeSTD`
* `timeBodyGyroscopeJerkMagnitudeMean`
* `timeBodyGyroscopeJerkMagnitudeSTD`

__Average variables of signals in Frequency domain:__
* `frequencyBodyAccelerometerMeanX`
* `frequencyBodyAccelerometerMeanY`
* `frequencyBodyAccelerometerMeanZ`
* `frequencyBodyAccelerometerSTDX`
* `frequencyBodyAccelerometerSTDY`
* `frequencyBodyAccelerometerSTDZ`
* `frequencyBodyAccelerometerJerkMeanX`
* `frequencyBodyAccelerometerJerkMeanY`
* `frequencyBodyAccelerometerJerkMeanZ`
* `frequencyBodyAccelerometerJerkSTDX`
* `frequencyBodyAccelerometerJerkSTDY`
* `frequencyBodyAccelerometerJerkSTDZ`
* `frequencyBodyGyroscopeMeanX`
* `frequencyBodyGyroscopeMeanY`
* `frequencyBodyGyroscopeMeanZ`
* `frequencyBodyGyroscopeSTDX`
* `frequencyBodyGyroscopeSTDY`
* `frequencyBodyGyroscopeSTDZ`
* `frequencyBodyAccelerometerMagnitudeMean`
* `frequencyBodyAccelerometerMagnitudeSTD`
* `frequencyBodyBodyAccelerometerJerkMagnitudeMean`
* `frequencyBodyBodyAccelerometerJerkMagnitudeSTD`
* `frequencyBodyBodyGyroscopeMagnitudeMean`
* `frequencyBodyBodyGyroscopeMagnitudeSTD`
* `frequencyBodyBodyGyroscopeJerkMagnitudeMean`
* `frequencyBodyBodyGyroscopeJerkMagnitudeSTD`

For more technical details of these variable, please refer to the 'features_info.txt' file.
