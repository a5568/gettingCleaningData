# README
Codebook for Coursera exercise - Getting and Cleaning Data Course Project

This repository contains the file **run_analysis.R** with the script to transform the data received and for create the submitted file.

## run_analysis

This script do the following process:
- Import the data:

- Import and adjust the columns names:

- Join the tables:

- Import the column names:

- Join the tables:

- Join and export the final dataset:

## Codebook
The generated file have the folloing columns:

- subjectId

    The ID of each volunteer for the test - values: \[1 - 30\]

- activity

    The activity that the subject was performing - values: - \[LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS\]


- Variables
The sensors capture several informations, these informations are saved in the following variables.

    timeBodyAccelerometer-mean()-X

    timeBodyAccelerometer-mean()-Y

    timeBodyAccelerometer-mean()-Z

    timeBodyAccelerometer-std()-X

    timeBodyAccelerometer-std()-Y

    timeBodyAccelerometer-std()-Z

    timeGravityAccelerometer-mean()-X

    timeGravityAccelerometer-mean()-Y

    timeGravityAccelerometer-mean()-Z

    timeGravityAccelerometer-std()-X

    timeGravityAccelerometer-std()-Y

    timeGravityAccelerometer-std()-Z

    timeBodyAccelerometerJerk-mean()-X

    timeBodyAccelerometerJerk-mean()-Y

    timeBodyAccelerometerJerk-mean()-Z

    timeBodyAccelerometerJerk-std()-X

    timeBodyAccelerometerJerk-std()-Y

    timeBodyAccelerometerJerk-std()-Z

    timeBodyGyroscope-mean()-X

    timeBodyGyroscope-mean()-Y

    timeBodyGyroscope-mean()-Z

    timeBodyGyroscope-std()-X

    timeBodyGyroscope-std()-Y

    timeBodyGyroscope-std()-Z

    timeBodyGyroscopeJerk-mean()-X

    timeBodyGyroscopeJerk-mean()-Y

    timeBodyGyroscopeJerk-mean()-Z

    timeBodyGyroscopeJerk-std()-X

    timeBodyGyroscopeJerk-std()-Y

    timeBodyGyroscopeJerk-std()-Z

    timeBodyAccelerometerMag-mean()

    timeBodyAccelerometerMag-std()

    timeGravityAccelerometerMag-mean()

    timeGravityAccelerometerMag-std()

    timeBodyAccelerometerJerkMag-mean()

    timeBodyAccelerometerJerkMag-std()

    timeBodyGyroscopeMag-mean()

    timeBodyGyroscopeMag-std()

    timeBodyGyroscopeJerkMag-mean()

    timeBodyGyroscopeJerkMag-std()

    frequencyBodyAccelerometer-mean()-X

    frequencyBodyAccelerometer-mean()-Y

    frequencyBodyAccelerometer-mean()-Z

    frequencyBodyAccelerometer-std()-X

    frequencyBodyAccelerometer-std()-Y

    frequencyBodyAccelerometer-std()-Z

    frequencyBodyAccelerometerJerk-mean()-X

    frequencyBodyAccelerometerJerk-mean()-Y

    frequencyBodyAccelerometerJerk-mean()-Z

    frequencyBodyAccelerometerJerk-std()-X

    frequencyBodyAccelerometerJerk-std()-Y

    frequencyBodyAccelerometerJerk-std()-Z

    frequencyBodyGyroscope-mean()-X

    frequencyBodyGyroscope-mean()-Y

    frequencyBodyGyroscope-mean()-Z

    frequencyBodyGyroscope-std()-X

    frequencyBodyGyroscope-std()-Y

    frequencyBodyGyroscope-std()-Z

    frequencyBodyAccelerometerMag-mean()

    frequencyBodyAccelerometerMag-std()

    frequencyBodyBodyAccelerometerJerkMag-mean()

    frequencyBodyBodyAccelerometerJerkMag-std()

    frequencyBodyBodyGyroscopeMag-mean()

    frequencyBodyBodyGyroscopeMag-std()

    frequencyBodyBodyGyroscopeJerkMag-mean()

    frequencyBodyBodyGyroscopeJerkMag-std()

- Variable explanation:
    - time: a variable computed in the time domain
    - frequency: a vriable computed in the frequency domain
    
    - mean: the variable is the mean of the captured information
    - std: the variable is the standard deviation of the captured information
    
    - X - Y - Z: the axis of the measured force
    
    - accelerometer: the information was captured by an cccelerometer
    - gyroscope: the information was captured by an gyroscope
    
    - body: the data is related to the subject body
    - gravity: the data is related to the gravity during the activity
    
    - jerk: the Jerk signal obtained throught body linear acceleration and angular velocity
