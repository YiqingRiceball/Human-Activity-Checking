Human Activity Recognition Average Dataset 
=================
Yiqing Liu
email: yiqingliu44@gmail.com
=================

This dataset-- Human Activity Recognition Average Dataset, is created based on the Human Activity Recognition Dataset. The Human Activity Recognition Dataset is gathered from 30 subjects wearing smartphone (Samsung Galaxy S II) on their waist. 

The unique subject number (from 1~30) for each subject is illustrated in the 'subject' column of the Human Activity Recognition Average Dataset. 

The activities each subject are grouped into six categories: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING, which is illustrated in the 'activity' column.

The Human Activity Recognition Dataset divides its observations in the 2 parts-- the test dataset and the train data set, both measuring the same variables. The activity checking data set does not differentiate the data from this two sources, since the two sources, according to the creators of the Human Activity Recognition Dataset, are randomly partioned into two from the data collected in the same way. The test and the train are merged by rbind() in R.

From the merged test and train dataset, which has 561 measurements for the subjects’ activities, only the measurements regarding the means and standard deviation of the activities are extracted into the Human Activity Recognition Average Dataset. The variables in the Human Activity Recognition Dataset measuring the measuring the mean of frequency are not included in the Human Activity Recognition Average Dataset, leaving the Human Activity Recognition Average Dataset a 68-column dataset including the "subject" column and the "activity" column.

The value in the Human Activity Recognition Average Dataset is the average value of different aspects of each subject performing each activity. The variable names in the Human Activity Recognition Average Dataset uses almost the same names as the Human Activity Recognition Dataset.However, it replaced "t" and "f" with “time” and “freq” to denote time domain variables and frequency domain variables, turned all letters into lower case, and removed “-“ and “()” in variable names. For the meanings of each abbreviation in the data set, here I cite from the “feature_infro.text” in the Human Activity Recognition Dataset package :

“ The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag ”

The Human Activity Recognition Dataset contains variable names in which “Body” appears repeatedly, since the creators of the Human Activity Recognition Dataset did not specify what does repeated “Body” mean, I regard “BodyBody” as having the same meaning as “Body” and replace all “BodyBody” in variable names with “Body”. 

The “mean” or “std” in the variable names denotes whether the value is the average of the mean or the average of the standard deviation.
 
When reading in the data into R, please use read.table() and specifying “header=TRUE”[1]

======================================
Reference:

[1] https://class.coursera.org/getdata-007/forum/thread?thread_id=49
