---
title: "Untitled"
author: "B.A. Strom"
date: "June 21, 2015"
output: html_document
---

# Coursera - Getting and Cleaning Data - Course Project
# Human Activity Recognition

## Data

These Human Activity Recognition data are from the UCI Machine Learning Repository.  They include experimental results using 30 volunteers performing 6 different activities.

## Variables

The variables included are the means and standard deviations of each metric recorded:

tBodyAcc-mean-X
tBodyAcc-mean-Y
tBodyAcc-mean-Z
tGravityAcc-mean-X
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tBodyAccJerk-mean-X
tBodyAccJerk-mean-Y
tBodyAccJerk-mean-Z
tBodyGyro-mean-X
tBodyGyro-mean-Y
tBodyGyro-mean-Z
tBodyGyroJerk-mean-X
tBodyGyroJerk-mean-Y
tBodyGyroJerk-mean-Z
tBodyAccMag-mean
tGravityAccMag-mean
tBodyAccJerkMag-mean
tBodyGyroMag-mean
tBodyGyroJerkMag-mean
fBodyAcc-mean-X
fBodyAcc-mean-Y
fBodyAcc-mean-Z
fBodyAccJerk-mean-X
fBodyAccJerk-mean-Y
fBodyAccJerk-mean-Z
fBodyGyro-mean-X
fBodyGyro-mean-Y
fBodyGyro-mean-Z
fBodyAccMag-mean
fBodyBodyAccJerkMag-mean
fBodyBodyGyroMag-mean
fBodyBodyGyroJerkMag-mean
tBodyAcc-std-X
tBodyAcc-std-Y
tBodyAcc-std-Z
tGravityAcc-std-X
tGravityAcc-std-Y
tGravityAcc-std-Z
tBodyAccJerk-std-X
tBodyAccJerk-std-Y
tBodyAccJerk-std-Z
tBodyGyro-std-X
tBodyGyro-std-Y
tBodyGyro-std-Z
tBodyGyroJerk-std-X
tBodyGyroJerk-std-Y
tBodyGyroJerk-std-Z
tBodyAccMag-std
tGravityAccMag-std
tBodyAccJerkMag-std
tBodyGyroMag-std
tBodyGyroJerkMag-std
fBodyAcc-std-X
fBodyAcc-std-Y
fBodyAcc-std-Z
fBodyAccJerk-std-X
fBodyAccJerk-std-Y
fBodyAccJerk-std-Z
fBodyGyro-std-X
fBodyGyro-std-Y
fBodyGyro-std-Z
fBodyAccMag-std
fBodyBodyAccJerkMag-std
fBodyBodyGyroMag-std
fBodyBodyGyroJerkMag-std

## Transformations

The original data were split into test and training data; these were merged into one dataset.

The original data had the subject identifiers and activity identifiers separate from the observations; these were merged.

The original data had no labels on the observations; these were added using the feature descriptions included in the source zip file, with the parentheses removed from the feature descriptions.

Activity labels were added to the activity numbers using a reference table in the source zip file.

Only the mean and standard deviations of each measurement timeframe were retained.

The script creates a clean dataset, and a summary dataset including the mean of each measurement by the Activity and Subject.