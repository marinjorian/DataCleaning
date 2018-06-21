library(plyr)
library(dplyr)
setwd("C:\\Users\\xj713756\\Repos\\DataCleaning\\UCI HAR Dataset")

# Read files
X_train = read.table(".\\train\\X_train.txt", header = F, quote = "") #7352  561
X_test = read.table(".\\test\\X_test.txt", header = F, quote = "") #2947  561
y_train = read.table(".\\train\\y_train.txt", header = F, quote = "") #7352    1
y_test = read.table(".\\test\\y_test.txt", header = F, quote = "") #2947    1
subject_train = read.table(".\\train\\subject_train.txt", header = F, quote = "") #7352    1
subject_test = read.table(".\\test\\subject_test.txt", header = F, quote = "") #2947    1
features = read.table(".\\features.txt", header = F, quote = "")
activity_labels = read.table(".\\activity_labels.txt", header = F, quote = "")

# Merges the training and the test sets to create one data set.
Df = cbind(rbind(subject_train, subject_test), rbind(y_train, y_test), rbind(X_train, X_test)) #10299   563
names(Df) = c("V1", "V2" , as.character(features$V2))

# Extracts only the measurements on the mean and standard deviation for each measurement. (Keep subject and activity)
Df2 = Df[, c(1, 2, grep("mean()", names(Df)), grep("std()" , names(Df)))] #10299    81

# Uses descriptive activity names to name the activities in the data set
Df2$V2 = factor(Df2$V2)
Df2$V2 = mapvalues(Df2$V2, from = levels(Df2$V2),  to = as.character(activity_labels$V2))             

# Appropriately labels the data set with descriptive variable names
names(Df2) = gsub("\\(\\)", "", names(Df2))
names(Df2) = gsub("-", ".", names(Df2))
names(Df2) = sub("^f", "freq", names(Df2))
names(Df2) = sub("^t", "time", names(Df2))
names(Df2)[1:2] = c("subject", "activity")


# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Df_tidy_group = group_by(Df2, subject, activity)
Df_tidy = summarise_all(Df_tidy_group, mean)

