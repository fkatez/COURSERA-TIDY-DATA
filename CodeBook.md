

Summarizing the steps involved...Ready?...Here we go..

First one has to download the sourse data from the following link and unzip it to your working directory of R Studio.
You have to run the R script in the repository.

A quick overview regarding the source data

As sourse data for work was used Human Activity Recognition Using Smartphones Data Set. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones Here are the main datasets for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

About the R-code

File with R code "run_analysis.R" performs the five (5) steps outlined in the course project: To be in accordance with the five steps outlined in the assignment, simply follow the series of steps outline hear in the given order.

Merging the training and the test sets to create one data set. Reading files Reading trainings tables Reading testing tables Reading feature vector Reading activity labels Assigning column names
Merging all data in one set
Extracting only the measurements on the mean and standard deviation for each measurement Reading column names Create vector for defining ID, mean and standard deviation Making nessesary subset from setAllInOne
Using descriptive activity names to name the activities in the data set Appropriately labeling the data set with descriptive variable names
Creating a second, independent tidy data set with the average of each variable for each activity and each subject Making second tidy data set Writing second tidy data set in txt file

NOTE: The code takes for granted all the data is present in the same folder, un-compressed and without names altered. About variables (see my note in the main R-code where i copied all the datasets into one folder):
        
        x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files. x_data, y_data and subject_data merge the previous datasets to further analysis. features contains the correct names for the x_data dataset, which are applied to the column names stored in
