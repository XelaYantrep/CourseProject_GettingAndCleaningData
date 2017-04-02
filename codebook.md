# Codebook for Xela Yantrep`s course project

This code book describes the variable names and types included in tidy_averages.txt.

## Notes about the original data

We originally obtained this data from [UCI Machine Learning](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  If anything in this codebook should be lacking in detail the variable names are identical to the original set with the exception of `subject` and `activity`, described below:

## Data types

Subject and activity are factor variables with 30 and 6 levels respectively.  All the rest are numerics.  

## Variable descriptions and units.

### `subject` and `activity`

* `subject` is an integer identifier that describes which (anonymous) person performed the task as it was recorded.  There are 30 total subjects, all human.

* `activity` is one of 6 activities, descriptive names have been substituted for numbers.  These were classified manually by watching a video of the subject wearing the accelerometer.

### All the other variables.

These have several things in common, so let`s list these ahead of time:

* All of these are mean (average) values computed for each (subject, activity) pair.  We will not redundantly state this below!
* The original data in this experiment came from the varaibles named tAcc-XYZ and tGyro-XYZ, and everything else is estimated/derived from that information. 
* In particular, all of these represent a mean (denoted by `mean()` at the end) or standard deviation (`std()`) of one of these signals.  
* f indicates a frequency domain signal. and t indicates a time domain signal.
* Acceleration units use the `g` units, as in g-forces = 9.8m/s^2.  All radial measurements (gyro) use radians per second.

That being said, here are the variables included in this dataset, excluding subject and activity since they`re described above:

* `tBodyAcc-mean()-X` - Mean linear acceleration in the X direciton (g)
* `tBodyAcc-mean()-Y` - Mean linear acceleration in the Y direction (g)
* `tBodyAcc-mean()-Z` - Mean linear acceleration in the Z direction (g)
* `tBodyAcc-std()-X` - Standard deviation of acceleration in the X diretion (g)
* `tBodyAcc-std()-Y` - Standard deviation of acceleration in the Y diretion (g)
* `tBodyAcc-std()-Z` - Standard deviation of acceleration in the Z diretion (g)
* `tGravityAcc-mean()-X` - Gravity acceleration mean (g), X
* `tGravityAcc-mean()-Y` - Gravity acceleration mean (g), Y
* `tGravityAcc-mean()-Z` - Gravity acceleration mean (g), Z
* `tGravityAcc-std()-X` - Gravity acceleration standard deviation (g), X
* `tGravityAcc-std()-Y` - Gravity acceleration standard deviation (g), Y
* `tGravityAcc-std()-Z` - Gravity acceleration standard deviation (g), Z
* `tBodyAccJerk-mean()-X` - Jerk is derived from the Acceleration (g/s), X
* `tBodyAccJerk-mean()-Y` - Jerk is derived from the Acceleration (g/s), Y
* `tBodyAccJerk-mean()-Z` - Jerk is derived from the Acceleration (g/s), Z
* `tBodyAccJerk-std()-X` - Jerk is derived from the Acceleration (g/s), X
* `tBodyAccJerk-std()-Y` - Jerk is derived from the Acceleration (g/s), Y
* `tBodyAccJerk-std()-Z` - Jerk is derived from the Acceleration (g/s), Z
* `tBodyGyro-mean()-X` - The calculated mean gyro speed (radians/s), X
* `tBodyGyro-mean()-Y` - The calculated mean gyro speed (radians/s), Y
* `tBodyGyro-mean()-Z` - The calculated mean gyro speed (radians/s), Z
* `tBodyGyro-std()-X` - The standard deviation of gyro speed (radians/s), X
* `tBodyGyro-std()-Y` - The standard deviation of gyro speed (radians/s), Y
* `tBodyGyro-std()-Z` - The standard deviation of gyro speed (radians/s), Z
* `tBodyGyroJerk-mean()-X` - Gyro jerk is derived from gyro acc (radians/s), X
* `tBodyGyroJerk-mean()-Y` - Gyro jerk is derived from gyro acc (radians/s), Y
* `tBodyGyroJerk-mean()-Z` - Gyro jerk is derived from gyro acc (radians/s), Z
* `tBodyGyroJerk-std()-X` - Gyro jerk is derived from gyro acc (radians/s), X
* `tBodyGyroJerk-std()-Y` - Gyro jerk is derived from gyro acc (radians/s), Y
* `tBodyGyroJerk-std()-Z` - Gyro jerk is derived from gyro acc (radians/s), Z
* `tBodyAccMag-mean()` - Mean magnitude of acceleration derived from X/Y/Z (g)
* `tBodyAccMag-std()`- Standard deviation of acceleration derived from X/Y/Z (g)
* `tGravityAccMag-mean()` - Mean magnitude of acceleration derived from X/Y/Z (g)
* `tGravityAccMag-std()`- Standard deviation of acceleration derived from X/Y/Z (g)
* `tBodyAccJerkMag-mean()` - Mean directionless jerk (g/s)
* `tBodyAccJerkMag-std()` - Std. dev. of directionless jerk (g/s)
* `tBodyGyroMag-mean()` - Gyro mean magnitude (radians/sec)
* `tBodyGyroMag-std()` - Gyro standard deviation (radians/sec)
* `tBodyGyroJerkMag-mean()` - Jerk magnitude = derivative of accel (g)
* `tBodyGyroJerkMag-std()`- Jerk magnitude = derivative of accel (g)
* `fBodyAcc-mean()-X` - Frequency domain acceleration (g), direction X
* `fBodyAcc-mean()-Y` - Frequency domain acceleration (g), direction Y
* `fBodyAcc-mean()-Z` - Frequency domain acceleration (g), direction Z
* `fBodyAcc-std()-X` - Frequency domain standard deviation (g), direction X
* `fBodyAcc-std()-Y` - Frequency domain standard deviation (g), direction Y
* `fBodyAcc-std()-Z` - Frequency domain standard deviation (g), direction Z
* `fBodyAccJerk-mean()-X` - Frequency domain jerk mean (g/s), direction X
* `fBodyAccJerk-mean()-Y` - Frequency domain jerk mean (g/s), direction Y
* `fBodyAccJerk-mean()-Z` - Frequency domain jerk mean (g/s), direction Z
* `fBodyAccJerk-std()-X` - Frequency domain jerk standard deviation (g/s), direction X
* `fBodyAccJerk-std()-Y` - Frequency domain jerk standard deviation (g/s), direction Y
* `fBodyAccJerk-std()-Z` - Frequency domain jerk standard deviation (g/s), direction Z
* `fBodyGyro-mean()-X` - Frequency domain gyro mean (radians/s), direction X
* `fBodyGyro-mean()-Y` - Frequency domain gyro mean (radians/s), direction Y
* `fBodyGyro-mean()-Z` - Frequency domain gyro mean (radians/s), direction Z
* `fBodyGyro-std()-X` - Frequency domain gyro standard deviation (radians/s), direction X
* `fBodyGyro-std()-Y` - Frequency domain gyro standard deviation (radians/s), direction Y
* `fBodyGyro-std()-Z` - Frequency domain gyro standard deviation (radians/s), direction Z
* `fBodyAccMag-mean()` - Frequency domain mean acceleration magnitude (g)
* `fBodyAccMag-std()` - Frequency domain standard deviation acceleration magnitude (g)
* `fBodyBodyAccJerkMag-mean()` - Frequency domain acceleration jerk mean (g/s)
* `fBodyBodyAccJerkMag-std()` - Frequency domain acceleration jerk standard deviation (g/s)
* `fBodyBodyGyroMag-mean()` - Frequency domain gyro magnitude mean (radians/s)
* `fBodyBodyGyroMag-std()` - Frequency domain gryo magnitude standard deviation (radians/s)
* `fBodyBodyGyroJerkMag-mean()` - Frequency domain gryo jerk (radians/s^2) mean
* `fBodyBodyGyroJerkMag-std()` - Frequency domain gyro standard deviation of jerk (radians/s^2)

## Original information

We will include the information provided by UC irvine here for convenience:

> Feature Selection 
> ================= 
>
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 
>
> tBodyAcc-XYZ
>
> tGravityAcc-XYZ
> 
> tBodyAccJerk-XYZ
> 
> tBodyGyro-XYZ
> 
> tBodyGyroJerk-XYZ
> 
> tBodyAccMag
> 
> tGravityAccMag
> 
> tBodyAccJerkMag
> 
> tBodyGyroMag
> 
> tBodyGyroJerkMag
> 
> fBodyAcc-XYZ
> 
> fBodyAccJerk-XYZ
> 
> fBodyGyro-XYZ
> 
> fBodyAccMag
> 
> fBodyAccJerkMag
> 
> fBodyGyroMag
> 
> fBodyGyroJerkMag 
>
> The set of variables that were estimated from these signals are: 
>
>
> mean(): Mean value
>
> std(): Standard deviation
>
> mad(): Median absolute deviation 
>
> max(): Largest value in array
>
> min(): Smallest value in array
>
> sma(): Signal magnitude area
>
> energy(): Energy measure. Sum of the squares divided by the number of values. 
>
> iqr(): Interquartile range 
>
> entropy(): Signal entropy
>
> arCoeff(): Autorregresion coefficients with Burg order equal to 4
>
> correlation(): correlation coefficient between two signals
>
> maxInds(): index of the frequency component with largest magnitude
>
> meanFreq(): Weighted average of the frequency components to obtain a mean frequency
>
> skewness(): skewness of the frequency domain signal 
>
> kurtosis(): kurtosis of the frequency domain signal 
>
> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
>
> angle(): Angle between to vectors.
>
> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
>
> gravityMean
>
> tBodyAccMean
>
> tBodyAccJerkMean
>
> tBodyGyroMean
>
> tBodyGyroJerkMean
>
> The complete list of variables of each feature vector is available in 'features.txt'

