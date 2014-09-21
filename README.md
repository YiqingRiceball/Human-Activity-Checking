==================================================================

==================================================================

==================================================================


For each record it is provided:
======================================

- Its activity label. 
- An identifier of the subject who carried out the experiment.


The dataset includes the following files:
=========================================

- 'README.md'

- 'activity_checking.txt': Data set generated from the 'UCI HAR Dataset'.It extracts only the records measuring the mean and standard deviation of activities and shows the average value for each activity and subject combination. This data set should be read into R with read.table() specifying "header=TRUE".

- 'Codebook.md': File explains the variables,data, and transformations done to creat'activity_checking.txt'.

- 'run_analysis.R': R code that generates 'activity_checking.txt' from 'UCI HAR Dataset'

- 'UCI HAR Dataset': Data set containing the human activity checking data gathered from Samsung Galaxy S

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: 

License:
========
Use of the UCI HAR Dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
