Getting and cleaning the data from the Samsung Galaxy S smartphone

Introduction

The sole purpose of this project is to show competence in cleaning a dataset to make it ready for later analysis. A full description of the dataset can be found here <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

The internet url to the data is found here <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The project creates an R-code named "run_analysis.R"" that accomplishes the tasks explained below:
1. Downloads and unzips the data provided at the above URL
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. Creates a tidy dataset using data from step 4.

The code is summarized in 7 steps:
1. Introduction
2. Step 1 thru 5
3. Finalization


Introduction: Getting the main data
1. Loading the relevant R packages used in the code.
2. Check for existence of the 'data' directory in the home directory and create it if it doesn't exist,
3. Check for existence of the 'week_4data.zip' file and delete it if it is there 
4. Next download the file and save it as week_4data.zip in the data directory in the home directory.
5. Next unzip the week_4data.zip file to create a folder "UCI HAR Dataset" under the data directory.


Step 1: Merges the training and the test date sets to create one data set.
1. Read various data files required for the analysis and merge them using the folloing format:
        
"subjectid"         "activityid"   features.txt
subject_train.txt   y_train.txt    x_train.txt
subject_test.txt    y_test.txt     x_test.txt

2. The merged file is in an object 'alldata'.


Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
1. Extract the names containing mean or std() in the features dataset.
2. Append "subjectid" and "activityid" to the extracted variables. The resulting vector represents 
the columns needed from the alldata object
3. Using is vector, and the subset operation, extract the columns needed from alldata. 
This data is in the object 'extract_temp'. This contains 10299 observations of 81 variables.


Step 3: Uses descriptive activity names to name the activities in the data set.
1. There are 6 activities. 'activity' object created in part 1 contains description for each activity.
2. Usinng merge command, merged 'activity' and 'extract_temp' to get description for each activity in the 
resulting object.


Step 4: Appropriately labels the data set with descriptive variable names.
1. Replaces few column names with descriptive names
2. The extract object represents all the data required for further analysis.


Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
1. Summarize the data by getting average of all variables by activity and subject.
2. Summary object is 'summary_data'. It contains 180 observations & 82 variables.


Finalization: Create a text file using summary_data
1. Using write.table command, creates a 'summary_data.txt' file in the 'data' folder under home directory.


Acknowledgements
Many thanks to an unnamed colleague for reviewing my code before submitting again for consideration.