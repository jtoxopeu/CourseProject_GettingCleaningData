Human Activity Recognition Using Smartphones Dataset
=================================

This repository contains an R script, "run_analysis.R" that generates a tidy data set human activity recognition data from [this zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), downloaded on May 12, 2014 at 3:00 pm AST.  

The original data includes measurements of the activity of 30 volunteers via a Samsung Galaxy SII attached to their waists. The "run_analysis.R" script merges the "train" and "test" data, subsets out only variables pertaining to mean and standard deviation values, appropriately names the variables and the activities, and creates a new data set where the mean of each variable is calculated for each subject (volunteer) and each activity type. That is, for each subject, the mean of each variable is calculated for every activity that subject performs.  

More detail on the transformations applied to the original data, as well as the activity names and variable names, are available in the "CodeBook.md" document in this repository.

Additional information on the original data can be obtained from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
