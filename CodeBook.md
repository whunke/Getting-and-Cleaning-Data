Code Book
=========

###Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The dataset includes the following files:
------------------------------------------

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

###Changes that have been made to the data set
- Data set has been cleaned to only take the mean and std values included in the data sets
- The activity label has been matched with the number included in the data sets
- A new data set was created with only the mean, std
- A tidy data set was created that averaged each variable

### Analysis Variables (available in .txt files within dataset)
| Variable | Descritpion
| -------- |---------
| Activity | The activity peformed.
| Subject | The ID of the subject.
| tBodyAcc-mean()-X | Mean time for acceleration of body for X direction.
| tBodyAcc-mean()-Y | Mean time for acceleration of body for Y direction.
| tBodyAcc-mean()-Z | Mean time for acceleration of body for Z direction.
| tBodyAcc-std()-X | Standard deviation of time for acceleration of body for X direction.
| tBodyAcc-std()-Y | Standard deviation of time for acceleration of body for Y direction.
| tBodyAcc-std()-Z | Standard deviation of time for acceleration of body for Z direction.
| tGravityAcc-mean()-X | Mean time of acceleration of gravity for X direction.
| tGravityAcc-mean()-Y | Mean time of acceleration of gravity for Y direction.
| tGravityAcc-mean()-Z | Mean time of acceleration of gravity for Z direction.
| tGravityAcc-std()-X | Standard deviation of time of acceleration of gravity for X direction.
| tGravityAcc-std()-Y | Standard deviation of time of acceleration of gravity for Y direction.
| tGravityAcc-std()-Z | Standard deviation of time of acceleration of gravity for Z direction.
| tBodyAccJerk-mean()-X | Mean time of body acceleration jerk for X direction.
| tBodyAccJerk-mean()-Y | Mean time of body acceleration jerk for Y direction
| tBodyAccJerk-mean()-Z | Mean time of body acceleration jerk for Z direction
| tBodyAccJerk-std()-X | Standard deviation of time of body acceleration jerk for X direction.
| tBodyAccJerk-std()-Y | Standard deviation of time of body acceleration jerk for Y direction.
| tBodyAccJerk-std()-Z | Standard deviation of time of body acceleration jerk for Z direction.
| tBodyGyro-mean()-X | Mean body gyroscope measurement for X direction.
| tBodyGyro-mean()-Y | Mean body gyroscope measurement for Y direction.
| tBodyGyro-mean()-Z | Mean body gyroscope measurement for Z direction.
| tBodyGyro-std()-X | Standard deviation of body gyroscope measurement for X direction.
| tBodyGyro-std()-Y | Standard deviation of body gyroscope measurement for Y direction.
| tBodyGyro-std()-Z | Standard deviation of body gyroscope measurement for Z direction.
| tBodyGyroJerk-mean()-X | Mean jerk signal of body for X direction.
| tBodyGyroJerk-mean()-Y | Mean jerk signal of body for Y direction.
| tBodyGyroJerk-mean()-Z | Mean jerk signal of body for Z direction.
| tBodyGyroJerk-std()-X | Standard deviation of jerk signal of body for X direction.
| tBodyGyroJerk-std()-Y | Standard deviation of jerk signal of body for Y direction.
| tBodyGyroJerk-std()-Z | Standard deviation of jerk signal of body for Z direction.
| tBodyAccMag-mean() | Mean magnitude of body Acc
| tBodyAccMag-std() | Standard deviation of magnitude of body Acc
| tGravityAccMag-mean() | Mean gravity acceleration magnitude.
| tGravityAccMag-std() | Standard deviation of gravity acceleration magnitude.
| tBodyAccJerkMag-mean() | Mean magnitude of body acceleration jerk.
| tBodyAccJerkMag-std() | Standard deviation of magnitude of body acceleration jerk.
| tBodyGyroMag-mean() | Mean magnitude of body gyroscope measurement.
| tBodyGyroMag-std() | Standard deviation of magnitude of body gyroscope measurement.
| tBodyGyroJerkMag-mean() | Mean magnitude of body body gyroscope jerk measurement.
| tBodyGyroJerkMag-std() | Standard deviation of magnitude of body body gyroscope jerk measurement.
| fBodyAcc-mean()-X | Mean frequency of body acceleration for X direction.
| fBodyAcc-mean()-Y | Mean frequency of body acceleration for Y direction.
| fBodyAcc-mean()-Z | Mean frequency of body acceleration for Z direction.
| fBodyAcc-std()-X | Standard deviation of frequency of body acceleration for X direction.
| fBodyAcc-std()-Y | Standard deviation of frequency of body acceleration for Y direction.
| fBodyAcc-std()-Z | Standard deviation of frequency of body acceleration for Z direction.
| fBodyAccJerk-mean()-X | Mean frequency of body accerlation jerk for X direction.
| fBodyAccJerk-mean()-Y | Mean frequency of body accerlation jerk for Y direction.
| fBodyAccJerk-mean()-Z | Mean frequency of body accerlation jerk for Z direction.
| fBodyAccJerk-std()-X | Standard deviation frequency of body accerlation jerk for X direction.
| fBodyAccJerk-std()-Y | Standard deviation frequency of body accerlation jerk for Y direction.
| fBodyAccJerk-std()-Z | Standard deviation frequency of body accerlation jerk for Z direction.
| fBodyGyro-mean()-X | Mean frequency of body gyroscope measurement for X direction.
| fBodyGyro-mean()-Y | Mean frequency of body gyroscope measurement for Y direction.
| fBodyGyro-mean()-Z | Mean frequency of body gyroscope measurement for Z direction.
| fBodyGyro-std()-X | Standard deviation frequency of body gyroscope measurement for X direction.
| fBodyGyro-std()-Y | Standard deviation frequency of body gyroscope measurement for Y direction.
| fBodyGyro-std()-Z | Standard deviation frequency of body gyroscope measurement for Z direction.
| fBodyAccMag-mean() | Mean frequency of body acceleration magnitude.
| fBodyAccMag-std() | Standard deviation of frequency of body acceleration magnitude.
| fBodyBodyAccJerkMag-mean() | Mean frequency of body acceleration jerk magnitude.
| fBodyBodyAccJerkMag-std() | Standard deviation of frequency of body acceleration jerk magnitude.
| fBodyBodyGyroMag-mean() | Mean frequency of magnitude of body gyroscope measurement.
| fBodyBodyGyroMag-std() | Standard deviation of frequency of magnitude of body gyroscope measurement.
| fBodyBodyGyroJerkMag-mean() | Mean frequency of magnitude of body gyroscope jerk measurement.