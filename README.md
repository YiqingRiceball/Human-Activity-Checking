
Human Activity Recognition Average Dataset 
=========================================

This dataset-- Human Activity Recognition Average Dataset, is created based on the Human Activity Recognition Dataset. It extracts the observations in the Human Activity Recognition Dataset related to mean and standard deviation, and calculates the average of them for each combination of subject and activity.

For each record, it is provided:
======================================
 
- An identifier of the subject who carried out the experiment.
- The activity the subject performs.
- A 66-feature vector shows the average of means or standard deviations in under different measurement for the each subject performing different activities. 


The dataset includes the following files:
=========================================

- 'README.md'

- 'activity_average.txt': Dataset generated from the 'UCI HAR Dataset'. It extracts only the records measuring the mean and standard deviation of activities. 

- 'Codebook.md': File explaining the variables ,data, and transformations done to creat'activity_average.txt'.

- 'run_analysis.R': R code that generates 'activity_average.txt' from 'UCI HAR Dataset'

- 'UCI HAR Dataset': Data set containing the human activity checking data gathered from Samsung Galaxy S

Notes: 
======

To read the 'activity_average.txt' into R, use the read.table() specifying "header=TRUE".
