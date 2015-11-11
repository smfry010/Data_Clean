---
title: "Codebook template"
author: Michael Fry
date: 11/11/2015
output:
  html_document:
    keep_md: yes
---

## Project Description
The Internet of Things (IoT) has lead to a boom in big data sets.  For this 
purposes of this project, we have been asked to produce a tidy dataset of
the physical activity camptured by Samsung Galaxy S III smartphones.  The
data are then manipulated to produce the tidy data set.

##Study design and data processing
rStudio has been used to create the tidy dat set.  The function run_analysis.r
has been produced to accomplish this task.  

###Collection of the raw data
http://bit.ly/1BQZaFw
The above link provides a detailed article explaining the source of the dataset.
The Samsung Galaxy S III smartphone is essentially the container for the initial
data whieh is then stored on a cloud server, allowing for the querying of these
data.

##Creating the tidy datafile

###Guide to create the tidy data file
1.  The data used for this project are downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
2.  The general steps for this project are to merge the X Train and Y Train datasets
into a single dataset. The X Test and Y Test files must then be merged together, 
inserting a column in both the Train and Test datasets specifying the type of
data (xtest, ytest, xtrain, or xtrain).    
3.  The raw data files did not contain headings, though a list file does include
each of the headings. The next step is to loop through the cached list file and
append the headings to the previously merged datasets.
4.  An additional list file has been created that contains the activity_label.
This activity_label file is cached and will part of the finishing process of the
tidy data file.
5.  All columns with the name of 'std' or 'mean' have been retained while the
other numeric columns have been omitted.  The grep function allows for a type of
wildcard selection around heading names.
6.  Setkeys for the final tidy data set as well as the activity_label file was
applied, the files are then merged based on the key association.
7.  Grouping around the activity_level and averaging the std and mean columns
produce the final tidy data set.
8.  The tidy data set is written to a text file.

###Cleaning of the data
The data are manipulated by selecting std and mean columns and aggregating data
around activity_level
[link to the readme document that describes the code in greater detail]()

##Description of the variables in the tiny_data.txt file
 The final file contains the following properties
 - 6 rows of data (reported by activity_level)
 - 81 columns of data (standard deviation and mean averages)


###Variables and datatypes
description	: chr
activity_label	: num
tBodyAcc-mean()-X	: num
tBodyAcc-mean()-Y	: num
tBodyAcc-mean()-Z	: num
tGravityAcc-mean()-X	: num
tGravityAcc-mean()-Y	: num
tGravityAcc-mean()-Z	: num
tBodyAccJerk-mean()-X	: num
tBodyAccJerk-mean()-Y	: num
tBodyAccJerk-mean()-Z	: num
tBodyGyro-mean()-X	: num
tBodyGyro-mean()-Y	: num
tBodyGyro-mean()-Z	: num
tBodyGyroJerk-mean()-X	: num
tBodyGyroJerk-mean()-Y	: num
tBodyGyroJerk-mean()-Z	: num
tBodyAccMag-mean()	: num
tGravityAccMag-mean()	: num
tBodyAccJerkMag-mean()	: num
tBodyGyroMag-mean()	: num
tBodyGyroJerkMag-mean()	: num
fBodyAcc-mean()-X	: num
fBodyAcc-mean()-Y	: num
fBodyAcc-mean()-Z	: num
fBodyAcc-meanFreq()-X	: num
fBodyAcc-meanFreq()-Y	: num
fBodyAcc-meanFreq()-Z	: num
fBodyAccJerk-mean()-X	: num
fBodyAccJerk-mean()-Y	: num
fBodyAccJerk-mean()-Z	: num
fBodyAccJerk-meanFreq()-X	: num
fBodyAccJerk-meanFreq()-Y	: num
fBodyAccJerk-meanFreq()-Z	: num
fBodyGyro-mean()-X	: num
fBodyGyro-mean()-Y	: num
fBodyGyro-mean()-Z	: num
fBodyGyro-meanFreq()-X	: num
fBodyGyro-meanFreq()-Y	: num
fBodyGyro-meanFreq()-Z	: num
fBodyAccMag-mean()	: num
fBodyAccMag-meanFreq()	: num
fBodyBodyAccJerkMag-mean()	: num
fBodyBodyAccJerkMag-meanFreq()	: num
fBodyBodyGyroMag-mean()	: num
fBodyBodyGyroMag-meanFreq()	: num
fBodyBodyGyroJerkMag-mean()	: num
fBodyBodyGyroJerkMag-meanFreq()	: num
tBodyAcc-std()-X	: num
tBodyAcc-std()-Y	: num
tBodyAcc-std()-Z	: num
tGravityAcc-std()-X	: num
tGravityAcc-std()-Y	: num
tGravityAcc-std()-Z	: num
tBodyAccJerk-std()-X	: num
tBodyAccJerk-std()-Y	: num
tBodyAccJerk-std()-Z	: num
tBodyGyro-std()-X	: num
tBodyGyro-std()-Y	: num
tBodyGyro-std()-Z	: num
tBodyGyroJerk-std()-X	: num
tBodyGyroJerk-std()-Y	: num
tBodyGyroJerk-std()-Z	: num
tBodyAccMag-std()	: num
tGravityAccMag-std()	: num
tBodyAccJerkMag-std()	: num
tBodyGyroMag-std()	: num
tBodyGyroJerkMag-std()	: num
fBodyAcc-std()-X	: num
fBodyAcc-std()-Y	: num
fBodyAcc-std()-Z	: num
fBodyAccJerk-std()-X	: num
fBodyAccJerk-std()-Y	: num
fBodyAccJerk-std()-Z	: num
fBodyGyro-std()-X	: num
fBodyGyro-std()-Y	: num
fBodyGyro-std()-Z	: num
fBodyAccMag-std()	: num
fBodyBodyAccJerkMag-std()	: num
fBodyBodyGyroMag-std()	: num
fBodyBodyGyroJerkMag-std()	: num
