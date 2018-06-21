# DataCleaning

To use "run_analysis.R", modify working directory at line 3 as the path to the Samsung data ("UCI HAR Dataset").

# Code book

This tidy datasets has 180 rows and 68 columns, which contains the average of each varable for each activity and each subject.

Subjects

The first column contains 30 unique subjects.

Activity

The second column contains the following actvity types, which a factor variable with 6 levels:

    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

Average values of the signals

Columns 3 - 68 are numerical variables that contains the average values of variables that were estimated from following signals:

timeBodyAcc.mean.X
timeBodyAcc.mean.Y
timeBodyAcc.mean.Z
timeGravityAcc.mean.X
timeGravityAcc.mean.Y
timeGravityAcc.mean.Z
timeBodyAccJerk.mean.X
timeBodyAccJerk.mean.Y
timeBodyAccJerk.mean.Z
timeBodyGyro.mean.X
timeBodyGyro.mean.Y
timeBodyGyro.mean.Z
timeBodyGyroJerk.mean.X
timeBodyGyroJerk.mean.Y
timeBodyGyroJerk.mean.Z
timeBodyAccMag.mean
timeGravityAccMag.mean
timeBodyAccJerkMag.mean
timeBodyGyroMag.mean
timeBodyGyroJerkMag.mean
freqBodyAcc.mean.X
freqBodyAcc.mean.Y
freqBodyAcc.mean.Z
freqBodyAcc.meanFreq.X
freqBodyAcc.meanFreq.Y
freqBodyAcc.meanFreq.Z
freqBodyAccJerk.mean.X
freqBodyAccJerk.mean.Y
freqBodyAccJerk.mean.Z
freqBodyAccJerk.meanFreq.X
freqBodyAccJerk.meanFreq.Y
freqBodyAccJerk.meanFreq.Z
freqBodyGyro.mean.X
freqBodyGyro.mean.Y
freqBodyGyro.mean.Z
freqBodyGyro.meanFreq.X
freqBodyGyro.meanFreq.Y
freqBodyGyro.meanFreq.Z
freqBodyAccMag.mean
freqBodyAccMag.meanFreq
freqBodyBodyAccJerkMag.mean
freqBodyBodyAccJerkMag.meanFreq
freqBodyBodyGyroMag.mean
freqBodyBodyGyroMag.meanFreq
freqBodyBodyGyroJerkMag.mean
freqBodyBodyGyroJerkMag.meanFreq
timeBodyAcc.std.X
timeBodyAcc.std.Y
timeBodyAcc.std.Z
timeGravityAcc.std.X
timeGravityAcc.std.Y
timeGravityAcc.std.Z
timeBodyAccJerk.std.X
timeBodyAccJerk.std.Y
timeBodyAccJerk.std.Z
timeBodyGyro.std.X
timeBodyGyro.std.Y
timeBodyGyro.std.Z
timeBodyGyroJerk.std.X
timeBodyGyroJerk.std.Y
timeBodyGyroJerk.std.Z
timeBodyAccMag.std
timeGravityAccMag.std
timeBodyAccJerkMag.std
timeBodyGyroMag.std
timeBodyGyroJerkMag.std
freqBodyAcc.std.X
freqBodyAcc.std.Y
freqBodyAcc.std.Z
freqBodyAccJerk.std.X
freqBodyAccJerk.std.Y
freqBodyAccJerk.std.Z
freqBodyGyro.std.X
freqBodyGyro.std.Y
freqBodyGyro.std.Z
freqBodyAccMag.std
freqBodyBodyAccJerkMag.std
freqBodyBodyGyroMag.std
freqBodyBodyGyroJerkMag.std

The set of variables that were estimated from these signals are:

mean: Mean value
std: Standard deviation
