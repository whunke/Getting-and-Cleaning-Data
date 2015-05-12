# The purpose of this script is to pull and clean wearable computing data to create a tidy data set. The source for this data is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

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