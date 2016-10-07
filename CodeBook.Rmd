Code Book: Getting and cleaning accelerometers data from the Samsung Galaxy S smartphone

Feature selection:
        
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' denotes time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz: 
        tBodyAcc-XYZ
        tGravityAcc-XYZ


Then, the body linear acceleration and angular velocity are derived in time to obtain Jerk signals:
        tBodyAccJerk-XYZ 
tBodyGyroJerk-XYZ


Also, the size of these 3-dimensional signals are calculated using the Euclidean norm:
        tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag 


Finally, a Fast Fourier Transform is applied to some of the signals producing frequency domain signals (prefix 'f' denotes frequency):
        fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag 


These signals were used to estimate variables of the feature vector for each pattern. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions:
        tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


The data extracted for this assignment includes mean and standard deviation variables estimated from these signals. The data dictionary below explains the data included in the final "secTidySet" submitted for the final consideration for the homework assignment.

The DATA DICTIONARY - Samsung Galaxy S smartphone accelerometers data

1.activityname Name of the activity subject was performing during the experiment, it is a factor variable with 6 levels 1. WALKING 2. WALKING_UPSTAIRS 3. WALKING_DOWNSTAIRS 4. SITTING 5. STANDING 6. LAYING


2.subjectid
identifies each of the 30 participants in the Human activity tracking using Samsun Galaxy S smartphone. It is an integer variable fro 1 thru 30.


3.activityid identifies each of the 6 activities. It is number variable with values from 1 thru 6


Variables 4 thru 82 represent the means and standard deviations (Std) measurements extracted and summarized using mean from the original data source. I do not list the descriptions for the means here but can easily be viewed from the "run_analysis.R" code.
4.timeBodyAcc-Mean-X          
5.timeBodyAcc-Mean-Y        
6.timeBodyAcc-Mean-Z          
7.timeGravityAcc-Mean-X       
8.timeGravityAcc-Mean-Y      
9.timeGravityAcc-Mean-Z      
10.timeBodyAccJerk-Mean-X     
11.timeBodyAccJerk-Mean-Y    
12.timeBodyAccJerk-Mean-Z      
13.timeBodyGyro-Mean-X         
14.timeBodyGyro-Mean-Y        
15.timeBodyGyro-Mean-Z         
16.timeBodyGyroJerk-Mean-X    
17.timeBodyGyroJerk-Mean-Y     
18.timeBodyGyroJerk-Mean-Z     
19.timeBodyAccMag-Mean        
20.timeGravityAccMag-Mean      
21.timeBodyAccJerkMag-Mean     
22.timeBodyGyroMag-Mean       
23.timeBodyGyroJerkMag-Mean   
24.freqBodyAcc-Mean-X          
25.freqBodyAcc-Mean-Y          
26.freqBodyAcc-Mean-Z          
27.freqBodyAcc-meanFreq-X      
28.freqBodyAcc-meanFreq-Y     
29.freqBodyAcc-meanFreq-Z      
30.freqBodyAccJerk-Mean-X     
31.freqBodyAccJerk-Mean-Y      
32.freqBodyAccJerk-Mean-Z     
33.freqBodyAccJerk-meanFreq-X  
34.freqBodyAccJerk-meanFreq-Y  
35.freqBodyAccJerk-meanFreq-Z  
36.freqBodyGyro-Mean-X         
37.freqBodyGyro-Mean-Y        
38.freqBodyGyro-Mean-Z        
39.freqBodyGyro-meanFreq-X    
40.freqBodyGyro-meanFreq-Y    
41.freqBodyGyro-meanFreq-Z     
42.freqBodyAccMag-Mean       
43.freqBodyAccMag-meanFreq     
44.freqBodyAccJerkMag-Mean     
45.freqBodyAccJerkMag-meanFreq 
46.freqBodyGyroMag-Mean       
47.freqBodyGyroMag-meanFreq    
48.freqBodyGyroJerkMag-Mean   
49.freqBodyGyroJerkMag-meanFreq
50.timeBodyAcc-Std-X          
51.timeBodyAcc-Std-Y           
52.timeBodyAcc-Std-Z           
53.timeGravityAcc-Std-X        
54.timeGravityAcc-Std-Y       
55.timeGravityAcc-Std-Z       
56.timeBodyAccJerk-Std-X       
57.timeBodyAccJerk-Std-Y       
58.timeBodyAccJerk-Std-Z       
59.timeBodyGyro-Std-X          
60.timeBodyGyro-Std-Y          
61.timeBodyGyro-Std-Z          
62.timeBodyGyroJerk-Std-X      
63.timeBodyGyroJerk-Std-Y      
64.timeBodyGyroJerk-Std-Z      
65.timeBodyAccMag-Std          
66.timeGravityAccMag-Std      
67.timeBodyAccJerkMag-Std     
68.timeBodyGyroMag-Std         
69.timeBodyGyroJerkMag-Std     
70.freqBodyAcc-Std-X           
71.freqBodyAcc-Std-Y          
72.freqBodyAcc-Std-Z           
73.freqBodyAccJerk-Std-X       
74.freqBodyAccJerk-Std-Y       
75.freqBodyAccJerk-Std-Z       
76.freqBodyGyro-Std-X          
77.freqBodyGyro-Std-Y          
78.freqBodyGyro-Std-Z         
79.freqBodyAccMag-Std          
80.freqBodyAccJerkMag-Std     
81.freqBodyGyroMag-Std         
82.freqBodyGyroJerkMag-Std    

NOTE: Std = Standard deviation.
This completes description of the code table