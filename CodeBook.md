#Code Book

#Introduction

The script **run_analysis.R** runs an analysis on the data provided in the project in the below 5 steps sequentially as defined in the project.

* The script used the **rbind()** function to read and then merge the training and the test sets to create one data set. 
* Then only the columns containing the mean and std information are filtered and the columns are given proper names as mentioned in the **features.txt**. We use the **grep** function the filter the columns.
* Then the activity ids present in the dataset are replaced by their respective labels as present in the **activity_labels.txt**
* Then we assign the appriopriate label for the subject column and then we merge all the datasets (x ,y and subject) into a single dataset using **cbind** function.
* Then we create a second, independent tidy data set with the average of each variable for each activity and each subject. The data is saved into the file **averages.txt** which is saved into this repository.

#Variables

*  'x_train', 'y_train', 'subject_train', 'x_test', 'y_test', 'subject_test'  contains the
data that has been downloaded.
*  'x_data', 'y_data', 'subject_data'  contains the merged dataset of x, y and subjects dataset from training and test.
*  'features', 'mean_std_features'  contains all features and features that contain either mean or std.
*  'x_mean_std_data'  contains the dataset with columns containing either mean or std information.
*  'activity_lables'  contains all the labels of the different activities.
*  'all_mean_std_data'  is the combined result of the datasets  'x_mean_std_data', 'y_data', 'subject_data' 
*  'all_data_cols_count'  contains the count of the columns in the  'all_mean_std_data' 
* Finally  'averages_data'  contains the final tidy dataset that has to be presented.

#Identifiers

* Subject - The ID of the test subject
* Activity - The type of activity performed when the corresponding measurements were taken

#Activity Labels

* WALKING (value 1)				: subject was walking during the test
* WALKING_UPSTAIRS (value 2)	: subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3)	: subject was walking down a staircase during the test
* SITTING (value 4)				: subject was sitting during the test
* STANDING (value 5)			: subject was standing during the test
* LAYING (value 6)				: subject was laying down during the test

# Measurements (Features - Mean/Std)
* tBodyAcc-mean
* tBodyAcc-mean
* tBodyAcc-mean
* tBodyAcc-std
* tBodyAcc-std
* tBodyAcc-std
* tGravityAcc-mean
* tGravityAcc-mean
* tGravityAcc-mean
* tGravityAcc-std
* tGravityAcc-std
* tGravityAcc-std
* tBodyAccJerk-mean
* tBodyAccJerk-mean
* tBodyAccJerk-mean
* tBodyAccJerk-std
* tBodyAccJerk-std
* tBodyAccJerk-std
* tBodyGyro-mean
* tBodyGyro-mean
* tBodyGyro-mean
* tBodyGyro-std
* tBodyGyro-std
* tBodyGyro-std
* tBodyGyroJerk-mean
* tBodyGyroJerk-mean
* tBodyGyroJerk-mean
* tBodyGyroJerk-std
* tBodyGyroJerk-std
* tBodyGyroJerk-std
* tBodyAccMag-mean
* tBodyAccMag-std
* tGravityAccMag-mean
* tGravityAccMag-std
* tBodyAccJerkMag-mean
* tBodyAccJerkMag-std
* tBodyGyroMag-mean
* tBodyGyroMag-std
* tBodyGyroJerkMag-mean
* tBodyGyroJerkMag-std
* fBodyAcc-mean
* fBodyAcc-mean
* fBodyAcc-mean
* fBodyAcc-std
* fBodyAcc-std
* fBodyAcc-std
* fBodyAccJerk-mean
* fBodyAccJerk-mean
* fBodyAccJerk-mean
* fBodyAccJerk-std
* fBodyAccJerk-std
* fBodyAccJerk-std
* fBodyGyro-mean
* fBodyGyro-mean
* fBodyGyro-mean
* fBodyGyro-std
* fBodyGyro-std
* fBodyGyro-std
* fBodyAccMag-mean
* fBodyAccMag-std
* fBodyBodyAccJerkMag-mean
* fBodyBodyAccJerkMag-std
* fBodyBodyGyroMag-mean
* fBodyBodyGyroMag-std
* fBodyBodyGyroJerkMag-mean
* fBodyBodyGyroJerkMag-std
