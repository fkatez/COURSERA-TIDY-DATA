## Getting and Cleaning the Data project assignment

library(tools) 
library(data.table) 
library(dplyr) 

### Here i download and unzip the main files from the given internet link  


if(!file.exists("./data")){ 
        print("creating the directoy of the data in home directory") 
        dir.create("./data") 
} 


### here i delete the zipped file/s from the working directory if it all it exists 

if(file.exists("./data/week_4data.zip")) { 
        filenm <- file_path_as_absolute("./data/week_4data.zip") 
        if (file.remove(filenm)) { 
                print(c("deleting existing zip file from the directory: file name=",filenm)) 
        } else { 
                stop("Error deleting existing zip file") 
        } 
} 

#this is the internet path to the original data
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 


print("downloading the project dataset as week_4data.zip") 
download.file(fileUrl,destfile="./data/week_4data.zip") 

print("unzipping the files in a folder under data directory") 
unzip("./data/week_4data.zip",exdir="./data",overwrite = TRUE) 


print("### completed downloading and unzipping the files ###") 


###Step 1: The first step here merges the training & test datasets to have one dataset. 


# Reading numerous data files needed for the analysis 
#read activity labels 
activity <- read.table("c:./data/UCI HAr Dataset/activity_labels.txt")      

#reading features data
features <- read.table("c:./data/UCI HAr Dataset/features.txt")             


sub_train <- read.table("c:./data/UCI HAr Dataset/train/subject_train.txt")  
y_train <- read.table("c:./data/UCI HAr Dataset/train/Y_train.txt")         
x_train <- read.table("c:./data/UCI HAr Dataset/train/X_train.txt")         


sub_test <- read.table("c:./data/UCI HAr Dataset/test/subject_test.txt")     
y_test <- read.table("c:./data/UCI HAr Dataset/test/Y_test.txt")                   
x_test <- read.table("c:./data/UCI HAr Dataset/test/X_test.txt")            

#combining the subject, activity & measurements in the training data 
training_data <- cbind(sub_train, y_train,x_train) 

#combining subject, activity and measurements in the test data
test_data <- cbind(sub_test, y_test,x_test)                                  

#merging the training and test observations into one dataset
alldata <- rbind(training_data,test_data)                                    


#transposing the features data to create header rows
features_t <- t(features) 

#lets append the data here
header_t <- cbind("subjectid","activityid",features_t)                       
header <- header_t[2,]                                                      
colnames(alldata) <- header  #step 1 ends here
print("### step 1 of the project is done here to have a merged dataset with the needed data files  ###") 



### Step 2: Extracting the measurements: mean and standard deviations 

hdr_std <- grep("std()",features_t,value=TRUE)                               
hdr_mean <- grep("mean",features_t,value=TRUE)                               
hdr_alldata <- c("subjectid","activityid",hdr_mean,hdr_std)                  

extract_temp <- alldata[hdr_alldata]                                         

print("### Step 2 of project of extracting the means and standard deviations ends here.###") 



### Step 3: Naming activities in the main data set. ###  

extract <- merge(activity,extract_temp,by.x="V1",by.y="activityid",all=FALSE)      


print("### End of step 3 of the project that adds activity names. ###") 


### Step 4: Labeling the data with appropriate data labels 

colnames(extract)[1] <- "activityid"                          
colnames(extract)[2] <- "activityname" 
colnames(extract) <- gsub("^t","time",names(extract)) 
colnames(extract) <- gsub("^f","freq",names(extract)) 
colnames(extract) <- gsub("mean\\(\\)","Mean",names(extract)) 
colnames(extract) <- gsub("std\\(\\)","Std",names(extract)) 
colnames(extract) <- gsub("meanFreq\\(\\)","meanFreq",names(extract)) 
colnames(extract) <- gsub("BodyBody","Body",names(extract)) 


print("### Step 4 of the project ends here. ###") 


### Step 5: Creating the tidy dataset using data from step 4  

exttbl <- data.table(extract) 
summary_temp <- exttbl[, lapply(.SD,mean), by=c("activityname","subjectid")] 
summary_data <- arrange(summary_temp,activityid,subjectid)                         


print("### End of step 5 ###") 


write.table(summary_data,file="./data/secTidySet.txt",row.name=FALSE) 


print("Finished writing the data to the data directory") 
print("End of R-code") 








