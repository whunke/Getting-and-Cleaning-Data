# The purpose of this script is to pull and clean wearable computing data to create a tidy data set.
# The source for this data is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

# The first portion of this code merges the training and test sets to create one single data set.

tmp1 <- read.table("UCI HAR Dataset/train/X_train.txt")
tmp2 <- read.table("UCI HAR Dataset/test/X_test.txt")
X <- rbind(tmp1, tmp2)

tmp1 <- read.table("UCI HAR Dataset/train/subject_train.txt")
tmp2 <- read.table("UCI HAR Dataset/test/subject_test.txt")
S <- rbind(tmp1, tmp2)

tmp1 <- read.table("UCI HAR Dataset/train/y_train.txt")
tmp2 <- read.table("UCI HAR Dataset/test/y_test.txt")
Y <- rbind(tmp1, tmp2)

# The second portion of this code extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("UCI HAR Dataset/features.txt")
mean_and_std_dev <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, mean_and_std_dev]
names(X) <- features[mean_and_std_dev, 2]

# The third portion of this code uses descriptive activity names to name the activities in the data set.

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
Y[, 1] <- activities[Y[, 1], 2]
names(Y) <- "activity"

# The fourth portion of this code appropriately labels the dataset with descriptive variable names.

names(S) <- "subject"
cleaned <- cbind(S, Y, X)
write.table(cleaned, "clean_data.txt")

