### *** This program assumes that the R file is in the same folder as the
###     dataset has been extracted  ****

library(plyr)

# Step-1: 
# Merges the training and the test sets to create one data set.
####################################################

# Read x, y and subject training dataset
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# Read x, y and subject test dataset
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Merge x, y and subject data set
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_test, subject_train)

####################################################

# Step-2:
# Extracts only the measurements on the mean 
#   and standard deviation for each measurement. 
####################################################

features <- read.table("features.txt")
mean_std_features <- grep("(mean|std)\\(\\)", features[,2])
x_mean_std_data <- x_data[, mean_std_features]

# assigning the column names
names(x_mean_std_data) <- features[mean_std_features, 2]

####################################################

# Step-3:
# Uses descriptive activity names to name the activities in the data set
####################################################

activity_lables <- read.table("activity_labels.txt")

# assigning the activity names in the data set
y_data[,1] <- activity_lables[y_data[,1], 2]

names(y_data) <- "activity"

####################################################

# Step-4:
# Appropriately labels the data set with descriptive variable names. 
####################################################

# Assigning the appropriate label name
names(subject_data) <- "subject"

# Combining all data into a single data set
all_mean_std_data <- cbind(x_mean_std_data, y_data, subject_data)

####################################################

# Step-5:
# From the data set in step 4, creates a second, independent tidy data 
#   set with the average of each variable for each activity and each subject.
####################################################

# get the count of the columns in the dataset excluding 'activity' and 'subject'
all_data_cols_count <- length(all_mean_std_data) - 2

# tydying up the dataset
averages_data <- ddply(all_mean_std_data, c("subject", "activity"), function(x) colMeans(x[, 1:all_data_cols_count]))

# writing the dataset to a text file
write.table(averages_data, "averages.txt", row.names = FALSE)

####################################################
