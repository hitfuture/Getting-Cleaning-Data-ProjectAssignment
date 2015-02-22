Study Design
------------

### The steps to producing the data set.

*Processing Overview* The script was developed to properly load the data, and process it in a simplified method. The following are the steps taken to retrieve, and clean the data. The script that performed this process is found in the file "run\_analysis.txt"

**1 Clean Feature names**

The process includes first, reading in the feature\_names, and cleaning them up. The feature names that were included in the data from the file features.txt had several issues, including duplicate names, embedding of characters that would not work well as column names, and abbreviations that are difficult to understand. A function, normalize.features() is created that replaces these issues with more detail. I also created a prefix *fid[0-9,0-9,0-9]* that includes the feature identifier from the source features.txt file. This allows for simplified tracing of the data back to the source.

**2 Read Source Data**
The next step is to read in all of the source data files. The files that were required include the following:

|File|Obs \#|Description|
|----|------|-----------|
|subject\_train.txt|7352|This associates the subject identifier with the x and y training observations.|
|subject\_test.txt|2947|This associates the subject identifier with the x and y testing observations.|
|X\_train.txt|7352|561 feature measurement columns for each observation. This is the data was sampled for ML training.|
|X\_test.txt|2947|561 feature measurement columns for each observation. This is the data was sampled for testing the outcome of the ML training.|
|y\_train.txt|7352|This includes a single attribute that represents the activity code. This is the data was sampled for ML training.|
|y\_test.txt|2947|This includes a single attribute that represents the activity code. This is the data was sampled for testing the outcome of the ML training.|
|features.txt|561|This includes columns for feature identifier, and the feature description.|
|activity.txt|6|Columns include activity id, and activity description.|
|**activity\_summary.txt**|180|The final summarized output file that includes the average of the mean, and standard deviation features aggregated by Activity and Subject.|

**3 Combine & Merge data frames**

First combine the columns together from each of the data sets. This creats a test and training data set. Next combine the the test and training data set.

Output: data.frame all.data

**4 Label all.data**

Add the activity labels to the all.data dataframe.

Output: data.frame all.data.labeled

*5* **Select the correct variables for all.data.labeled** Only keep the columns that are the subject, activity, and those that include the mean or standard deviation. The decision was made to not include angle measurements because they are synthesis of other vectors that happen to have the term mean in their name. Use regular expressions to eliminate the other columns.

Output: data.frame all.data.labeled
**6 **Summarize all.data.labeled\_\_

Create a summary of the aggregates grouped by Activity and Subject. Apply to function mean() to all of the numeric measurement columns. Sort the data by Activity, and Subject

Output: data.frame tidy.data

**7 Write tidy.data to file**
 This file is the final output that contains the summary data from the tidy.data dataframe. The activity\_summary file meets the requirements of the Course project 5 step (see above).

Output: file "activity\_summary.txt"

### Reference:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Code Book
---------

### Includes a list of the variables

Functions
---------

        Function                       Description
            mean                        Mean value
             std                Standard deviation
             mad             Median absolute value
             max           Largest values in array
             min           Smallest value in array
             sma             Signal magnitude area
          energy       Average sum of the squares 
             iqr               Interquartile range
         entropy                    Signal Entropy
         arCoeff      Autorregresion coefficients 
     correlation           Correlation coefficient
      maxFreqInd       Largest frequency component
        meanFreq Frequency signal weighted average
        skewness        Frequency signal Skewness 
        kurtosis         Frequency signal Kurtosis
      energyBand   Energy of a frequency interval 
           angle        Angle between two vectors 

* * * * *

Variables
---------

The variables included in this data set follow a naming pattern that can help you understand its nature.

|Column|Description|
|------|-----------|
|variable\_name|This the name of the column label displayed in the activity\_summary.txt data set.|
|feature\_id|This is the identifier associated with the feature.txt file. It will allow you to trace back to the source column in the X\_(train|test).txt file.|
|domain:|the measures were are either in the time or frequency domain. This was translated from -f for frequency, or a -t time. The frequency domain was converted from the signal data by fourier transform in the initial data sets.|
|signal|The measure is based on the following values {BodyAcc,BodyAccJerk, BodyGyro,BodyGyroJerk,BodyAccMag,BodyAccJerk,BodyGyroMag,BodyGyroJerkMag,GravityAcc,GravityAccMag}. Acc==Acceleration, Gyro=Gyration|
|Function|The functions applied to the signals. The list that were selected are mean(),std(),meanFreq().|
|dimension|This indicates the direction of the vector. values are {X,Y,Z}|

* * * * *

This activity\_summary.txt file has a total of 180 observations, and 81 columns.

### Primary Variables

-   **Subject**

        This is an integer in the range 1:30 of the subjects that were engaged in the experiment.

-   **Activity** This is the type of action the subject was performing during the measurement. Values range from {Laying,Sitting,Standing, Walking,Walking\_Downstairs,Walking\_Upstairs}

### Signal Variable Descriptions - Variable, Feature.Id and Dimension

The following is a description of the fields:

    ##                             Variable.Name Feature.Id Dimension
    ##                                  Activity       <NA>      <NA>
    ##                                   Subject       <NA>      <NA>
    ##                 fid001_timeBodyAcc_mean_X        001         X
    ##                 fid002_timeBodyAcc_mean_Y        002         Y
    ##                 fid003_timeBodyAcc_mean_Z        003         Z
    ##                  fid004_timeBodyAcc_std_X        004         X
    ##                  fid005_timeBodyAcc_std_Y        005         Y
    ##                  fid006_timeBodyAcc_std_Z        006         Z
    ##              fid041_timeGravityAcc_mean_X        041         X
    ##              fid042_timeGravityAcc_mean_Y        042         Y
    ##              fid043_timeGravityAcc_mean_Z        043         Z
    ##               fid044_timeGravityAcc_std_X        044         X
    ##               fid045_timeGravityAcc_std_Y        045         Y
    ##               fid046_timeGravityAcc_std_Z        046         Z
    ##             fid081_timeBodyAccJerk_mean_X        081         X
    ##             fid082_timeBodyAccJerk_mean_Y        082         Y
    ##             fid083_timeBodyAccJerk_mean_Z        083         Z
    ##              fid084_timeBodyAccJerk_std_X        084         X
    ##              fid085_timeBodyAccJerk_std_Y        085         Y
    ##              fid086_timeBodyAccJerk_std_Z        086         Z
    ##                fid121_timeBodyGyro_mean_X        121         X
    ##                fid122_timeBodyGyro_mean_Y        122         Y
    ##                fid123_timeBodyGyro_mean_Z        123         Z
    ##                 fid124_timeBodyGyro_std_X        124         X
    ##                 fid125_timeBodyGyro_std_Y        125         Y
    ##                 fid126_timeBodyGyro_std_Z        126         Z
    ##            fid161_timeBodyGyroJerk_mean_X        161         X
    ##            fid162_timeBodyGyroJerk_mean_Y        162         Y
    ##            fid163_timeBodyGyroJerk_mean_Z        163         Z
    ##             fid164_timeBodyGyroJerk_std_X        164         X
    ##             fid165_timeBodyGyroJerk_std_Y        165         Y
    ##             fid166_timeBodyGyroJerk_std_Z        166         Z
    ##                fid201_timeBodyAccMag_mean        201      <NA>
    ##                 fid202_timeBodyAccMag_std        202      <NA>
    ##             fid214_timeGravityAccMag_mean        214      <NA>
    ##              fid215_timeGravityAccMag_std        215      <NA>
    ##            fid227_timeBodyAccJerkMag_mean        227      <NA>
    ##             fid228_timeBodyAccJerkMag_std        228      <NA>
    ##               fid240_timeBodyGyroMag_mean        240      <NA>
    ##                fid241_timeBodyGyroMag_std        241      <NA>
    ##           fid253_timeBodyGyroJerkMag_mean        253      <NA>
    ##            fid254_timeBodyGyroJerkMag_std        254      <NA>
    ##            fid266_frequencyBodyAcc_mean_X        266         X
    ##            fid267_frequencyBodyAcc_mean_Y        267         Y
    ##            fid268_frequencyBodyAcc_mean_Z        268         Z
    ##             fid269_frequencyBodyAcc_std_X        269         X
    ##             fid270_frequencyBodyAcc_std_Y        270         Y
    ##             fid271_frequencyBodyAcc_std_Z        271         Z
    ##        fid294_frequencyBodyAcc_meanFreq_X        294         X
    ##        fid295_frequencyBodyAcc_meanFreq_Y        295         Y
    ##        fid296_frequencyBodyAcc_meanFreq_Z        296         Z
    ##        fid345_frequencyBodyAccJerk_mean_X        345         X
    ##        fid346_frequencyBodyAccJerk_mean_Y        346         Y
    ##        fid347_frequencyBodyAccJerk_mean_Z        347         Z
    ##         fid348_frequencyBodyAccJerk_std_X        348         X
    ##         fid349_frequencyBodyAccJerk_std_Y        349         Y
    ##         fid350_frequencyBodyAccJerk_std_Z        350         Z
    ##    fid373_frequencyBodyAccJerk_meanFreq_X        373         X
    ##    fid374_frequencyBodyAccJerk_meanFreq_Y        374         Y
    ##    fid375_frequencyBodyAccJerk_meanFreq_Z        375         Z
    ##           fid424_frequencyBodyGyro_mean_X        424         X
    ##           fid425_frequencyBodyGyro_mean_Y        425         Y
    ##           fid426_frequencyBodyGyro_mean_Z        426         Z
    ##            fid427_frequencyBodyGyro_std_X        427         X
    ##            fid428_frequencyBodyGyro_std_Y        428         Y
    ##            fid429_frequencyBodyGyro_std_Z        429         Z
    ##       fid452_frequencyBodyGyro_meanFreq_X        452         X
    ##       fid453_frequencyBodyGyro_meanFreq_Y        453         Y
    ##       fid454_frequencyBodyGyro_meanFreq_Z        454         Z
    ##           fid503_frequencyBodyAccMag_mean        503      <NA>
    ##            fid504_frequencyBodyAccMag_std        504      <NA>
    ##       fid513_frequencyBodyAccMag_meanFreq        513      <NA>
    ##       fid516_frequencyBodyAccJerkMag_mean        516      <NA>
    ##        fid517_frequencyBodyAccJerkMag_std        517      <NA>
    ##   fid526_frequencyBodyAccJerkMag_meanFreq        526      <NA>
    ##          fid529_frequencyBodyGyroMag_mean        529      <NA>
    ##           fid530_frequencyBodyGyroMag_std        530      <NA>
    ##      fid539_frequencyBodyGyroMag_meanFreq        539      <NA>
    ##      fid542_frequencyBodyGyroJerkMag_mean        542      <NA>
    ##       fid543_frequencyBodyGyroJerkMag_std        543      <NA>
    ##  fid552_frequencyBodyGyroJerkMag_meanFreq        552      <NA>

### Signal Variable Descriptions (cont.) - Variable, Domain and Signal

    ##                             Variable.Name    Domain          Signal
    ##                                  Activity      <NA>            <NA>
    ##                                   Subject      <NA>            <NA>
    ##                 fid001_timeBodyAcc_mean_X      time         BodyAcc
    ##                 fid002_timeBodyAcc_mean_Y      time         BodyAcc
    ##                 fid003_timeBodyAcc_mean_Z      time         BodyAcc
    ##                  fid004_timeBodyAcc_std_X      time         BodyAcc
    ##                  fid005_timeBodyAcc_std_Y      time         BodyAcc
    ##                  fid006_timeBodyAcc_std_Z      time         BodyAcc
    ##              fid041_timeGravityAcc_mean_X      time      GravityAcc
    ##              fid042_timeGravityAcc_mean_Y      time      GravityAcc
    ##              fid043_timeGravityAcc_mean_Z      time      GravityAcc
    ##               fid044_timeGravityAcc_std_X      time      GravityAcc
    ##               fid045_timeGravityAcc_std_Y      time      GravityAcc
    ##               fid046_timeGravityAcc_std_Z      time      GravityAcc
    ##             fid081_timeBodyAccJerk_mean_X      time     BodyAccJerk
    ##             fid082_timeBodyAccJerk_mean_Y      time     BodyAccJerk
    ##             fid083_timeBodyAccJerk_mean_Z      time     BodyAccJerk
    ##              fid084_timeBodyAccJerk_std_X      time     BodyAccJerk
    ##              fid085_timeBodyAccJerk_std_Y      time     BodyAccJerk
    ##              fid086_timeBodyAccJerk_std_Z      time     BodyAccJerk
    ##                fid121_timeBodyGyro_mean_X      time        BodyGyro
    ##                fid122_timeBodyGyro_mean_Y      time        BodyGyro
    ##                fid123_timeBodyGyro_mean_Z      time        BodyGyro
    ##                 fid124_timeBodyGyro_std_X      time        BodyGyro
    ##                 fid125_timeBodyGyro_std_Y      time        BodyGyro
    ##                 fid126_timeBodyGyro_std_Z      time        BodyGyro
    ##            fid161_timeBodyGyroJerk_mean_X      time    BodyGyroJerk
    ##            fid162_timeBodyGyroJerk_mean_Y      time    BodyGyroJerk
    ##            fid163_timeBodyGyroJerk_mean_Z      time    BodyGyroJerk
    ##             fid164_timeBodyGyroJerk_std_X      time    BodyGyroJerk
    ##             fid165_timeBodyGyroJerk_std_Y      time    BodyGyroJerk
    ##             fid166_timeBodyGyroJerk_std_Z      time    BodyGyroJerk
    ##                fid201_timeBodyAccMag_mean      time      BodyAccMag
    ##                 fid202_timeBodyAccMag_std      time      BodyAccMag
    ##             fid214_timeGravityAccMag_mean      time   GravityAccMag
    ##              fid215_timeGravityAccMag_std      time   GravityAccMag
    ##            fid227_timeBodyAccJerkMag_mean      time  BodyAccJerkMag
    ##             fid228_timeBodyAccJerkMag_std      time  BodyAccJerkMag
    ##               fid240_timeBodyGyroMag_mean      time     BodyGyroMag
    ##                fid241_timeBodyGyroMag_std      time     BodyGyroMag
    ##           fid253_timeBodyGyroJerkMag_mean      time BodyGyroJerkMag
    ##            fid254_timeBodyGyroJerkMag_std      time BodyGyroJerkMag
    ##            fid266_frequencyBodyAcc_mean_X frequency         BodyAcc
    ##            fid267_frequencyBodyAcc_mean_Y frequency         BodyAcc
    ##            fid268_frequencyBodyAcc_mean_Z frequency         BodyAcc
    ##             fid269_frequencyBodyAcc_std_X frequency         BodyAcc
    ##             fid270_frequencyBodyAcc_std_Y frequency         BodyAcc
    ##             fid271_frequencyBodyAcc_std_Z frequency         BodyAcc
    ##        fid294_frequencyBodyAcc_meanFreq_X frequency         BodyAcc
    ##        fid295_frequencyBodyAcc_meanFreq_Y frequency         BodyAcc
    ##        fid296_frequencyBodyAcc_meanFreq_Z frequency         BodyAcc
    ##        fid345_frequencyBodyAccJerk_mean_X frequency     BodyAccJerk
    ##        fid346_frequencyBodyAccJerk_mean_Y frequency     BodyAccJerk
    ##        fid347_frequencyBodyAccJerk_mean_Z frequency     BodyAccJerk
    ##         fid348_frequencyBodyAccJerk_std_X frequency     BodyAccJerk
    ##         fid349_frequencyBodyAccJerk_std_Y frequency     BodyAccJerk
    ##         fid350_frequencyBodyAccJerk_std_Z frequency     BodyAccJerk
    ##    fid373_frequencyBodyAccJerk_meanFreq_X frequency     BodyAccJerk
    ##    fid374_frequencyBodyAccJerk_meanFreq_Y frequency     BodyAccJerk
    ##    fid375_frequencyBodyAccJerk_meanFreq_Z frequency     BodyAccJerk
    ##           fid424_frequencyBodyGyro_mean_X frequency        BodyGyro
    ##           fid425_frequencyBodyGyro_mean_Y frequency        BodyGyro
    ##           fid426_frequencyBodyGyro_mean_Z frequency        BodyGyro
    ##            fid427_frequencyBodyGyro_std_X frequency        BodyGyro
    ##            fid428_frequencyBodyGyro_std_Y frequency        BodyGyro
    ##            fid429_frequencyBodyGyro_std_Z frequency        BodyGyro
    ##       fid452_frequencyBodyGyro_meanFreq_X frequency        BodyGyro
    ##       fid453_frequencyBodyGyro_meanFreq_Y frequency        BodyGyro
    ##       fid454_frequencyBodyGyro_meanFreq_Z frequency        BodyGyro
    ##           fid503_frequencyBodyAccMag_mean frequency      BodyAccMag
    ##            fid504_frequencyBodyAccMag_std frequency      BodyAccMag
    ##       fid513_frequencyBodyAccMag_meanFreq frequency      BodyAccMag
    ##       fid516_frequencyBodyAccJerkMag_mean frequency  BodyAccJerkMag
    ##        fid517_frequencyBodyAccJerkMag_std frequency  BodyAccJerkMag
    ##   fid526_frequencyBodyAccJerkMag_meanFreq frequency  BodyAccJerkMag
    ##          fid529_frequencyBodyGyroMag_mean frequency     BodyGyroMag
    ##           fid530_frequencyBodyGyroMag_std frequency     BodyGyroMag
    ##      fid539_frequencyBodyGyroMag_meanFreq frequency     BodyGyroMag
    ##      fid542_frequencyBodyGyroJerkMag_mean frequency BodyGyroJerkMag
    ##       fid543_frequencyBodyGyroJerkMag_std frequency BodyGyroJerkMag
    ##  fid552_frequencyBodyGyroJerkMag_meanFreq frequency BodyGyroJerkMag

Note
----

It was attended that the variable descriptions would be in a single table. This had to be modified due to issues with the ability to fit the six columns in a single table. This will be researched in the future.

License
=======

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
