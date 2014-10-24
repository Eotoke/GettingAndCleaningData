run_analysis<-function() {
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
	
	### Start of Step 2###
	##Step 2: getting the mean and std columns from feature lookup table ignoring angle and body body columns
	mean_std_columns<-grep("[Mm]ean|std",features[-grep("angle|BodyBody",features$Feature),]$Feature)
	##adding 2 to column count as first 2 columns are Subject and ActivityLabel
	interested_columns<-c(1,2,mean_std_columns+2)
	##extracting out the mean_std_set from the merged_set
	mean_std_set<-merged_set[,interested_columns]
	### End of Step 2###
	
	### Start of Step 3###
	##Step 3: labelling the activity with descriptive activity by merging activity lookup table with mean_std_set
	descriptive_set<-merge(mean_std_set,activity_labels,by.x="ActivityLabel",by.y="ActivityLabel")
	### End of Step 3###

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

	#clearing up
	rm(list=ls())
}	