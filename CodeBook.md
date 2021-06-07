Code book for Coursera : Getting and Cleaning Data : Programming Assignment 4

The data set that this code book pertains to is located in the tidy_data.txt file of this repository.

Refer to the README.md file of this repository for background information on this data set.

The structure of the data set, its variables and the transformations carried on it to obtain the final output are described in the 'Data' section, the 'Variables' section and the 'Transformations' section below, respectively.

Data

The tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the 'Variables' section, and the rows thereafter contain the values of these variables.

Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

There are two identifiers, which are described as below:
1. subject - Subject identifier, integer, ranges from 1 to 30.
2. activity - Activity identifier, string with 6 possible values:
            a. WALKING: subject was walking 
            b. WALKING_UPSTAIRS: subject was walking upstairs 
            c. WALKING_DOWNSTAIRS: subject was walking downstairs 
            d. SITTING: subject was sitting 
            e. STANDING: subject was standing 
            f. LAYING: subject was laying Average of measurements

All measurements are floating-point values, normalised and bounded within [-1,1].
Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measurements are classified in two domains:
1. Time-domain signals (variables prefixed by timeDomain), resulting from the capture of      accelerometer and gyroscope raw signals.
2. Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

Time-domain signals

Average time-domain body acceleration in the X, Y and Z directions:

timeDomainBodyAccelerometerMeanX timeDomainBodyAccelerometerMeanY timeDomainBodyAccelerometerMeanZ Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

timeDomainBodyAccelerometerStandardDeviationX timeDomainBodyAccelerometerStandardDeviationY timeDomainBodyAccelerometerStandardDeviationZ Average time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerMeanX timeDomainGravityAccelerometerMeanY timeDomainGravityAccelerometerMeanZ Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerStandardDeviationX timeDomainGravityAccelerometerStandardDeviationY timeDomainGravityAccelerometerStandardDeviationZ Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkMeanX timeDomainBodyAccelerometerJerkMeanY timeDomainBodyAccelerometerJerkMeanZ Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkStandardDeviationX timeDomainBodyAccelerometerJerkStandardDeviationY timeDomainBodyAccelerometerJerkStandardDeviationZ Average time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeMeanX timeDomainBodyGyroscopeMeanY timeDomainBodyGyroscopeMeanZ Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeStandardDeviationX timeDomainBodyGyroscopeStandardDeviationY timeDomainBodyGyroscopeStandardDeviationZ Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkMeanX timeDomainBodyGyroscopeJerkMeanY timeDomainBodyGyroscopeJerkMeanZ Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkStandardDeviationX timeDomainBodyGyroscopeJerkStandardDeviationY timeDomainBodyGyroscopeJerkStandardDeviationZ Average and standard deviation of the time-domain magnitude of body acceleration:

timeDomainBodyAccelerometerMagnitudeMean timeDomainBodyAccelerometerMagnitudeStandardDeviation Average and standard deviation of the time-domain magnitude of gravity acceleration:

timeDomainGravityAccelerometerMagnitudeMean timeDomainGravityAccelerometerMagnitudeStandardDeviation Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

timeDomainBodyAccelerometerJerkMagnitudeMean timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation Average and standard deviation of the time-domain magnitude of body angular velocity:

timeDomainBodyGyroscopeMagnitudeMean timeDomainBodyGyroscopeMagnitudeStandardDeviation Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

timeDomainBodyGyroscopeJerkMagnitudeMean timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation Frequency-domain signals

Average frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerMeanX frequencyDomainBodyAccelerometerMeanY frequencyDomainBodyAccelerometerMeanZ Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerStandardDeviationX frequencyDomainBodyAccelerometerStandardDeviationY frequencyDomainBodyAccelerometerStandardDeviationZ Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerMeanFrequencyX frequencyDomainBodyAccelerometerMeanFrequencyY frequencyDomainBodyAccelerometerMeanFrequencyZ Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkMeanX frequencyDomainBodyAccelerometerJerkMeanY frequencyDomainBodyAccelerometerJerkMeanZ Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkStandardDeviationX frequencyDomainBodyAccelerometerJerkStandardDeviationY frequencyDomainBodyAccelerometerJerkStandardDeviationZ Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkMeanFrequencyX frequencyDomainBodyAccelerometerJerkMeanFrequencyY frequencyDomainBodyAccelerometerJerkMeanFrequencyZ Average frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeMeanX frequencyDomainBodyGyroscopeMeanY frequencyDomainBodyGyroscopeMeanZ Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeStandardDeviationX frequencyDomainBodyGyroscopeStandardDeviationY frequencyDomainBodyGyroscopeStandardDeviationZ Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeMeanFrequencyX frequencyDomainBodyGyroscopeMeanFrequencyY frequencyDomainBodyGyroscopeMeanFrequencyZ Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

frequencyDomainBodyAccelerometerMagnitudeMean frequencyDomainBodyAccelerometerMagnitudeStandardDeviation frequencyDomainBodyAccelerometerMagnitudeMeanFrequency Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

frequencyDomainBodyAccelerometerJerkMagnitudeMean frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

frequencyDomainBodyGyroscopeMagnitudeMean frequencyDomainBodyGyroscopeMagnitudeStandardDeviation frequencyDomainBodyGyroscopeMagnitudeMeanFrequency Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

frequencyDomainBodyGyroscopeJerkMagnitudeMean frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

Transformations

The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were applied to the source data:

The training and test sets were merged to create one data set.

The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement, and the others were discarded.

The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see Identifiers section).

The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules: Special characters (i.e. (, ), and -) were removed The initial f and t were expanded to frequencyDomain and timeDomain respectively. Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StandardDeviation respectively. Replaced (supposedly incorrect as per source's features_info.txt file) BodyBody with Body.

From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R R script (see README.md file for usage instructions).