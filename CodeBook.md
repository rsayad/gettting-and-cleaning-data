# Codebook

## all_data 
### Answer to question 1
all_data contains the merged input files x_test and x_train as well as the y_test and y_train data sources.
y_test and y_train are renamed to y (this is a positive whole number).
y column contains the activity that is performed in code format as indicated by the activity file:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

# only_mean_std
## Answer to question 2
only_mean_std is the result of a filter for all columns where the columns contain either 'std' or 'mean' in the label. The subject identifier and the activity in code format is retained in the list of columns:

* subject: this is the person that is being monitored given as a number
* y: this is the activity given as a number

all other columns are as defined by the original specification

# merged_data
## Answer to question 3
The activity labels in y are converted to the text version of the activity and a new column called activity is created.
y : removed from the set
activity : text version of the activity

# final_dataset
## Answer to question 5

The final_dataset contains the final dataset that calculates the mean of all the columns except for the activity and subject columns which will remain the same.

The final list of columns and the data types are listed below:
subject: whole positive number that identifies the person whom we are measuring
activity: the type of activity for which the measurements apply in text
y: the integer identifier that represents the activity
The following columns are the floating point averages of the original columns which we will not re-describe here (please refer to the source for the codebook on these columns)
"tBodyAcc.std...X"               
"tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
"tGravityAcc.std...X"             "tGravityAcc.std...Y"            
"tGravityAcc.std...Z"             "tBodyAccJerk.std...X"           
"tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
"tBodyGyro.std...X"               "tBodyGyro.std...Y"              
"tBodyGyro.std...Z"               "tBodyGyroJerk.std...X"          
"tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
"tBodyAccMag.std.."               "tGravityAccMag.std.."           
"tBodyAccJerkMag.std.."           "tBodyGyroMag.std.."             
"tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"               
"fBodyAcc.std...Y"                "fBodyAcc.std...Z"               
"fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"           
"fBodyAccJerk.std...Z"            "fBodyGyro.std...X"              
"fBodyGyro.std...Y"               "fBodyGyro.std...Z"              
"fBodyAccMag.std.."               "fBodyBodyAccJerkMag.std.."      
"fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."     
"tBodyAcc.mean...X"               "tBodyAcc.mean...Y"              
"tBodyAcc.mean...Z"               "tGravityAcc.mean...X"           
"tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"           
"tBodyAccJerk.mean...X"           "tBodyAccJerk.mean...Y"          
"tBodyAccJerk.mean...Z"           "tBodyGyro.mean...X"             
"tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"             
"tBodyGyroJerk.mean...X"          "tBodyGyroJerk.mean...Y"         
"tBodyGyroJerk.mean...Z"          "tBodyAccMag.mean.."             
"tGravityAccMag.mean.."           "tBodyAccJerkMag.mean.."         
"tBodyGyroMag.mean.."             "tBodyGyroJerkMag.mean.."        
"fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
"fBodyAcc.mean...Z"               "fBodyAcc.meanFreq...X"          
"fBodyAcc.meanFreq...Y"           "fBodyAcc.meanFreq...Z"          
"fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"          
"fBodyAccJerk.mean...Z"           "fBodyAccJerk.meanFreq...X"      
"fBodyAccJerk.meanFreq...Y"       "fBodyAccJerk.meanFreq...Z"      
"fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
"fBodyGyro.mean...Z"              "fBodyGyro.meanFreq...X"         
"fBodyGyro.meanFreq...Y"          "fBodyGyro.meanFreq...Z"         
"fBodyAccMag.mean.."              "fBodyAccMag.meanFreq.."         
"fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.meanFreq.." 
"fBodyBodyGyroMag.mean.."         "fBodyBodyGyroMag.meanFreq.."    
"fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.meanFreq.."


