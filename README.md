---
title: "README.md"
author: "Eotoke"
date: "Thursday, October 23, 2014"
output: html_document
---
The purpose of this document is to share the details for the run analysis course project (Getting and Cleaning Data) in coursera.

This document is divided into 3 parts:

1. Steps to setup and run "run_analysis.R" program.
2. Project Background and Design Considerations of the solution.
3. Explanation of the solution in details.

### Part 1: Setup and Running "run_analysis.R"

Steps:

1. Download the data files from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
2. Extract and copy all the txt files listed below into your desired working directory:
  + subject_train.txt : Identifies the subject in the training set who performed the activity for each window sample. 
  + X_train.txt : Training set.
  + y_train.txt : Training labels.
  + subject_test.txt : Identifies the subject in the test set who performed the activity for each window sample. 
  + X_test.txt : Test set.
  + y_test.txt : Test labels.
  + activity_labels.txt : Links the class labels with their activity name.
  + features.txt : List of all features.
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
4. All temporary tables created will be removed after the output of the tidy data set.

Naming Conventions:

1. The names for internal usage tables are all in lowercase and separated with _ i.e. tidy_data.
2. Column names are all UpperCase for first alphabets of each meaning i.e. TimeAccelerationMeanX. All spaces and symbols are also removed from them.

### Part 3: Explanation of the run_analysis program

Note **bold** denotes data.frame

Step 1: Merge the training and the test sets to create one data set.

1. Read in "activity_label.txt" and "features.txt" and store these lookup tables into **activity_labels** and **features** respectively.
2. Prepare the training sets by reading in "subject_train.txt","X_train.txt","y_train.txt" and column binding them into **training_set** with Subject, ActivityLabel and the measurements.
3. Prepare the testing sets by reading in "subject_test.txt","X_test.txt","y_test.txt" and column binding them into **test_set** with Subject, ActivityLabel and the measurements.
4. Merge **training_set** and **test_set** by row binding them together into **merged_set**

```{r}
	### Start of Step 1 ###
	##Step 1: merging training set and test set into merged data set
	##reading in the lookup tables
	activity_labels<-read.table("activity_labels.txt",sep="",col.names=c("ActivityLabel","Activity"))
	features<-read.table("features.txt",sep="",col.names=c("FeatureLabel","Feature"))

	##preparing the training data set
	subject_train<-read.table("subject_train.txt",sep="",col.names="Subject")
	X_train<-read.table("X_train.txt",sep="")
	y_train<-read.table("y_train.txt",sep="",col.names="ActivityLabel")
	training_set<-cbind(subject_train,y_train,X_train)

	##preparing the testing data set
	subject_test<-read.table("subject_test.txt",sep="",col.names="Subject")
	X_test<-read.table("X_test.txt",sep="")
	y_test<-read.table("y_test.txt",sep="",col.names="ActivityLabel")
	test_set<-cbind(subject_test,y_test,X_test)

	##merging training set and test set into merged data set
	merged_set<-rbind(training_set,test_set)
	### End of Step 1 ###
```

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

1. As described in the assumptions, angle() and BodyBody measurements are assumed to be features we are not interested in.
  + Remove them by finding and removing them from feature lookup table.
  + At the same time, we look for the columns numbers with the "mean" and "std" and store these interested columns into **mean_std_columns**.
2. Prepare **interested_columns** by also adding in Subject (col 1) and ActivityLabel (2)
3. Extract out these columns into **mean_std_set**

```{r}
	### Start of Step 2###
	##Step 2: getting the mean and std columns from feature lookup table ignoring angle and body body columns
	mean_std_columns<-grep("[Mm]ean|std",features[-grep("angle|BodyBody",features$Feature),]$Feature)
	##adding 2 to column count as first 2 columns are Subject and ActivityLabel
	interested_columns<-c(1,2,mean_std_columns+2)
	##extracting out the mean_std_set from the merged_set
	mean_std_set<-merged_set[,interested_columns]
	### End of Step 2###
```

Step 3: Uses descriptive activity names to name the activities in the data set.

1. Merge **mean_std_set** and **activity_labels** into **descriptive_set** by joining by "ActivityLabel" column. This will result in a data set with the descriptive "Activity" column.

```{r}
	### Start of Step 3###
	##Step 3: labelling the activity with descriptive activity by merging activity lookup table with mean_std_set
	descriptive_set<-merge(mean_std_set,activity_labels,by.x="ActivityLabel",by.y="ActivityLabel")
	### End of Step 3###
```

Step 4: Appropriately labels the data set with descriptive variable names. 

1. Get the values of the mean and std columns from **features** into **mean_std_column2**
2. Remove unwanted symbols and do renaming on **mean_std_column2** to make the column names more meaningful.
3. Sort **descriptive_set** by "Subject","Activity" and remove "ActivityLabel" to make it more orderly.
4. Assign the desriptive column names from **mean_std_column2** into **descriptive_set**

```{r}
	### Start of Step 4###
	###Step 4: labelling the columns meaningfully
	##getting the values of the feature column in mean_std_column2
	mean_std_column2<-features[mean_std_columns,"Feature"]
	##remove unwanted symbols like () and - and ,
	mean_std_column2<-gsub("\\(|\\)|,|\\-","",mean_std_column2)
	##changing description to make it more meaningful
	mean_std_column2<-gsub("mean","Mean",mean_std_column2)
	mean_std_column2<-gsub("std","StdDeviation",mean_std_column2)
	mean_std_column2<-gsub("^t","Time",mean_std_column2)
	mean_std_column2<-gsub("^f","Freq",mean_std_column2)
	mean_std_column2<-gsub("Acc","Acceleration",mean_std_column2)
	mean_std_column2<-gsub("Gyro","Gyroscope",mean_std_column2)
	mean_std_column2<-gsub("Mag","Magnitude",mean_std_column2)
	##selecting the list of interested data into descriptive_set ordering by Subject, Activity and remove away ActivityLabel field.
	descriptive_set<-descriptive_set[order(descriptive_set$Subject,descriptive_set$Activity),-1]
	##renaming descriptive_set with the relevant column names
	colnames(descriptive_set)<-c("Subject",mean_std_column2,"Activity")
	### End of Step 4###
```	

Step 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

1. Using library dplyr, group by "Subject" and "Activity" and average each measurement.

```{r}
	### Start of Step 5###
	##create a second independent set of data and summarise each value before writing out the data.
	library(dplyr)
	tidy_set<-tbl_df(descriptive_set)
	tidy_data<-tidy_set %>%
		group_by(Subject,Activity) %>% 
		summarise_each(funs(mean))
		
	#writing the final set of data to tidy_data.txt
	write.table(tidy_data,"tidy_data.txt",row.names=F)
	### End of Step 5###
```