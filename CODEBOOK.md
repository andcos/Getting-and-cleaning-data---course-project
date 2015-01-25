====================================================================
r_analysis script Code book
====================================================================

Data used for the code was provided by www.smartlab.ws
All rights reserved

====================================================================
Initial data is consisting of

 - 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
 - The experiments have been video-recorded to label the data manually. 
 - The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers
    was selected for generating the training data and 30% the test data. 
 - all measurmenst are based on measurments with the gyroscope and the accelerometer
Total number of parameters : 561

=====================================================================
Tidy data consists of 

- 80 mean measurmensts of all the listed parameters

 1                    tBodyAcc-mean()-X
2     2               tBodyAcc-mean()-Y
3     3               tBodyAcc-mean()-Z
4     4                tBodyAcc-std()-X
5     5                tBodyAcc-std()-Y
6     6                tBodyAcc-std()-Z
41   41            tGravityAcc-mean()-X
42   42            tGravityAcc-mean()-Y
43   43            tGravityAcc-mean()-Z
44   44             tGravityAcc-std()-X
45   45             tGravityAcc-std()-Y
46   46             tGravityAcc-std()-Z
81   81           tBodyAccJerk-mean()-X
82   82           tBodyAccJerk-mean()-Y
83   83           tBodyAccJerk-mean()-Z
84   84            tBodyAccJerk-std()-X
85   85            tBodyAccJerk-std()-Y
86   86            tBodyAccJerk-std()-Z
121 121              tBodyGyro-mean()-X
122 122              tBodyGyro-mean()-Y
123 123              tBodyGyro-mean()-Z
124 124               tBodyGyro-std()-X
125 125               tBodyGyro-std()-Y
126 126               tBodyGyro-std()-Z
161 161          tBodyGyroJerk-mean()-X
162 162          tBodyGyroJerk-mean()-Y
163 163          tBodyGyroJerk-mean()-Z
164 164           tBodyGyroJerk-std()-X
165 165           tBodyGyroJerk-std()-Y
166 166           tBodyGyroJerk-std()-Z
201 201              tBodyAccMag-mean()
202 202               tBodyAccMag-std()
214 214           tGravityAccMag-mean()
215 215            tGravityAccMag-std()
227 227          tBodyAccJerkMag-mean()
228 228           tBodyAccJerkMag-std()
240 240             tBodyGyroMag-mean()
241 241              tBodyGyroMag-std()
253 253         tBodyGyroJerkMag-mean()
254 254          tBodyGyroJerkMag-std()
266 266               fBodyAcc-mean()-X
267 267               fBodyAcc-mean()-Y
268 268               fBodyAcc-mean()-Z
269 269                fBodyAcc-std()-X
270 270                fBodyAcc-std()-Y
271 271                fBodyAcc-std()-Z
294 294           fBodyAcc-meanFreq()-X
295 295           fBodyAcc-meanFreq()-Y
296 296           fBodyAcc-meanFreq()-Z
345 345           fBodyAccJerk-mean()-X
346 346           fBodyAccJerk-mean()-Y
347 347           fBodyAccJerk-mean()-Z
348 348            fBodyAccJerk-std()-X
349 349            fBodyAccJerk-std()-Y
350 350            fBodyAccJerk-std()-Z
373 373       fBodyAccJerk-meanFreq()-X
374 374       fBodyAccJerk-meanFreq()-Y
375 375       fBodyAccJerk-meanFreq()-Z
424 424              fBodyGyro-mean()-X
425 425              fBodyGyro-mean()-Y
426 426              fBodyGyro-mean()-Z
427 427               fBodyGyro-std()-X
428 428               fBodyGyro-std()-Y
429 429               fBodyGyro-std()-Z
452 452          fBodyGyro-meanFreq()-X
453 453          fBodyGyro-meanFreq()-Y
454 454          fBodyGyro-meanFreq()-Z
503 503              fBodyAccMag-mean()
504 504               fBodyAccMag-std()
513 513          fBodyAccMag-meanFreq()
516 516      fBodyBodyAccJerkMag-mean()
517 517       fBodyBodyAccJerkMag-std()
526 526  fBodyBodyAccJerkMag-meanFreq()
529 529         fBodyBodyGyroMag-mean()
530 530          fBodyBodyGyroMag-std()
539 539     fBodyBodyGyroMag-meanFreq()
542 542     fBodyBodyGyroJerkMag-mean()
543 543      fBodyBodyGyroJerkMag-std()
552 552 fBodyBodyGyroJerkMag-meanFreq()

===============================================================
Variable naming explanations - from original READme file 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

================================================================
Steps to prepare the data:

 run_analysis.R  does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and std for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of 
each variable for each activity and each subject.




