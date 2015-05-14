library(plyr)

# The purpose of this script is to pull and clean wearable computing data to create a tidy data set.
# The source for this data is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

# The first portion of this code merges the training and test sets to create one single data set.

tmp1 <- read.table("UCI HAR Dataset/train/X_train.txt")
tmp2 <- read.table("UCI HAR Dataset/test/X_test.txt")
x <- rbind(tmp1, tmp2)

tmp1 <- read.table("UCI HAR Dataset/train/subject_train.txt")
tmp2 <- read.table("UCI HAR Dataset/test/subject_test.txt")
s <- rbind(tmp1, tmp2)

tmp1 <- read.table("UCI HAR Dataset/train/y_train.txt")
tmp2 <- read.table("UCI HAR Dataset/test/y_test.txt")
y <- rbind(tmp1, tmp2)

# The second portion of this code extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("UCI HAR Dataset/features.txt")
mean_and_std_dev <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x <- x[, mean_and_std_dev]
names(x) <- features[mean_and_std_dev, 2]

# The third portion of this code uses descriptive activity names to name the activities in the data set.

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
y[, 1] <- activities[y[, 1], 2]
names(y) <- "activity"

# The fourth portion of this code appropriately labels the dataset with descriptive variable names.

names(s) <- "subject"
cleaned <- cbind(s, y, x)
write.table(cleaned, "tidy_data.txt")

# The fifth portion of this code creates a second, independent tidy data set with the average of each variable for each activity and each subject.

uniqueSubjects = unique(s)[,1]
numSubjects = length(unique(s)[,1])
numActivities = length(activities[,1])
numCols = dim(cleaned)[2]
result = cleaned[1:(numSubjects*numActivities), ]
row = 1
for (s in 1:numSubjects) {
    for (a in 1:numActivities) {
        result[row, 1] = uniqueSubjects[s]
        result[row, 2] = activities[a, 2]
        tmp <- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ]
        result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
        row = row+1
    }
}
write.table(result, "tidy_data_averages.txt")

