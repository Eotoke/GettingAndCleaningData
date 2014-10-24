---
title: "README.md"
author: "Eotoke"
date: "Thursday, October 23, 2014"
output: html_document
---
The purpose of this document is to share the details for the run analysis course project (Getting and Cleaning Data) in coursera.

This document is divided into 2 parts:

1. steps to setup and run "run_analysis.R" program
2. project background and design considerations of the solution.

### Part 1: Setup and Running "run_analysis.R"

Steps:

1. Download the data files from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
2. Extract and copy all the txt files listed below into your desired working directory:
  + subject_train.txt
  + X_train.txt
  + y_train.txt
  + subject_test.txt
  + X_test.txt
  + y_test.txt
  + activity_labels.txt
  + features.txt
3. Place **"run_analysis.r"** inside the same working directory.
4. Run the following R code:

```
> source("run_analysis.r")
> run_analysis()
```
5. Check your working directory for the output - **"tidy_data.txt"**

### Part 2: Project Background and Design Considerations
Project Background:

+ Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist and collecting data with its embedded accelerometer and gyroscope. 
+ The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Assumptions made:

1. The source txt files and the "run_analysis.R" are assumed to be stored in the same working directory, therefore there is no guide in setting the working directory.
2. Angle() between 2 vectors is not equal to a mean between the vectors.
3. Measures with "BodyBody" are removed as the meaning of these features are not covered in features_info.txt i.e. fBodyBodyAccJerkMag-mean()

Naming Conventions:

1. The names for internal usage tables are all in lowercase and separated with _ i.e. tidy_data.
2. Column names are all UpperCase for first alphabets of each meaning i.e. TimeAccelerationMeanX. All spaces and symbols are also removed from them.
