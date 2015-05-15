Getting and Cleaning Data Course Project
========================================
In order to execute the run_analysis.R file, the user must execute the following steps:

* First the user should download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  The data should be unzipped and saved a folder titled "UCI HAR Dataset".

* Next the user should save the run_analysis.R file from my Coursera repo.  Ensure this file is in the root directory of the folder to which the data is downloaded.  Do not save the .R file in the UCI HAR Data set folder - the file should be one folder higher.

* Then, use source("run_analysis.R") command in RStudio to run the program.  Make sure when sourcing the program that you've set your working directory to the location where this file is saved.

* After sourcing the program, two files should be created:
  - tidy_data.txt (8 Mb) containing a dataframe with clean data.
  - tidy_data_averages.txt (220 Kb) containing a dataframe with averages.

* Use data <- read.table("tidy_data_averages.txt") to read the data. The dataframe should contain 180 rows with 66 features.
