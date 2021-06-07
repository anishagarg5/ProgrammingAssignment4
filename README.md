# ProgrammingAssignment4

---
title: "Coursera : Getting and Cleaning Data : Programming Assignment 4"
author: "Anisha"
date: "07/06/2021"
---

One of the most exciting areas in all of data science right now is wearable computing - see for example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was downloaded, cleaned and summarised, to prepare a tidy data that can be used for further analysis.

This repository contains the following files:

1. README.md - provides an overview of the data set and how it was created 
2. tidy_data.txt - text file with the final output
3. CodeBook.md - code book describing the contents of the data set (data, variables and      transformations used to generate the data)
4. run_analysis.R - R script that was used to create the data set

The source data set for this project was obtained from the Human Activity Recognition Using Smartphones Data Set, which describes how the data was initially collected as follows:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. Training and test data were first merged together to create one data set, then the measurements on the mean and standard deviation were extracted for each measurement (79 variables extracted from the original 561), and then the measurements were averaged for each subject and activity, resulting in the final data set.

For further details, you can look at the website here - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

Creating the data set:

The R script run_analysis.R can be used to create the data set. It downloads the source data set and transforms it to produce the final data set by implementing the following steps (see the code book for details, as well as the comments in the script itself):

0. Download and unzip source data if it doesn't exist. Read data. 
1. Merge the training and the test sets to create one data set. 
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set. 
4. Appropriately label the data set with descriptive variable names. 
5. Create a second, independent tidy set with the average of each variable for each activity and each subject. Write the data set to the tidy_data.txt file. 

The above analysis was completed using R version 4.0.3 (2020-10-10) on macOS 10.14.6 and the dplyr package (version 1.0.6 was used).