Study Design
------------

### The steps to producing the data set.

variables, the data, and any transformations or work that you performed to clean up the data Transformations Variables

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
|variable\_name|This the name of the column displayed in the summary data set.|
|feature\_id|This is the identifier associated with the feature|
|domain:|na|
|measure|na|
|Function|na|
|dimension|na|

                                Variable.Name Feature.Id    Domain
                                     Activity       <NA>      <NA>
                                      Subject       <NA>      <NA>
                    fid001_timeBodyAcc_mean_X        001      time
                    fid002_timeBodyAcc_mean_Y        002      time
                    fid003_timeBodyAcc_mean_Z        003      time
                     fid004_timeBodyAcc_std_X        004      time
                     fid005_timeBodyAcc_std_Y        005      time
                     fid006_timeBodyAcc_std_Z        006      time
                 fid041_timeGravityAcc_mean_X        041      time
                 fid042_timeGravityAcc_mean_Y        042      time
                 fid043_timeGravityAcc_mean_Z        043      time
                  fid044_timeGravityAcc_std_X        044      time
                  fid045_timeGravityAcc_std_Y        045      time
                  fid046_timeGravityAcc_std_Z        046      time
                fid081_timeBodyAccJerk_mean_X        081      time
                fid082_timeBodyAccJerk_mean_Y        082      time
                fid083_timeBodyAccJerk_mean_Z        083      time
                 fid084_timeBodyAccJerk_std_X        084      time
                 fid085_timeBodyAccJerk_std_Y        085      time
                 fid086_timeBodyAccJerk_std_Z        086      time
                   fid121_timeBodyGyro_mean_X        121      time
                   fid122_timeBodyGyro_mean_Y        122      time
                   fid123_timeBodyGyro_mean_Z        123      time
                    fid124_timeBodyGyro_std_X        124      time
                    fid125_timeBodyGyro_std_Y        125      time
                    fid126_timeBodyGyro_std_Z        126      time
               fid161_timeBodyGyroJerk_mean_X        161      time
               fid162_timeBodyGyroJerk_mean_Y        162      time
               fid163_timeBodyGyroJerk_mean_Z        163      time
                fid164_timeBodyGyroJerk_std_X        164      time
                fid165_timeBodyGyroJerk_std_Y        165      time
                fid166_timeBodyGyroJerk_std_Z        166      time
                   fid201_timeBodyAccMag_mean        201      time
                    fid202_timeBodyAccMag_std        202      time
                fid214_timeGravityAccMag_mean        214      time
                 fid215_timeGravityAccMag_std        215      time
               fid227_timeBodyAccJerkMag_mean        227      time
                fid228_timeBodyAccJerkMag_std        228      time
                  fid240_timeBodyGyroMag_mean        240      time
                   fid241_timeBodyGyroMag_std        241      time
              fid253_timeBodyGyroJerkMag_mean        253      time
               fid254_timeBodyGyroJerkMag_std        254      time
               fid266_frequencyBodyAcc_mean_X        266 frequency
               fid267_frequencyBodyAcc_mean_Y        267 frequency
               fid268_frequencyBodyAcc_mean_Z        268 frequency
                fid269_frequencyBodyAcc_std_X        269 frequency
                fid270_frequencyBodyAcc_std_Y        270 frequency
                fid271_frequencyBodyAcc_std_Z        271 frequency
           fid294_frequencyBodyAcc_meanFreq_X        294 frequency
           fid295_frequencyBodyAcc_meanFreq_Y        295 frequency
           fid296_frequencyBodyAcc_meanFreq_Z        296 frequency
           fid345_frequencyBodyAccJerk_mean_X        345 frequency
           fid346_frequencyBodyAccJerk_mean_Y        346 frequency
           fid347_frequencyBodyAccJerk_mean_Z        347 frequency
            fid348_frequencyBodyAccJerk_std_X        348 frequency
            fid349_frequencyBodyAccJerk_std_Y        349 frequency
            fid350_frequencyBodyAccJerk_std_Z        350 frequency
       fid373_frequencyBodyAccJerk_meanFreq_X        373 frequency
       fid374_frequencyBodyAccJerk_meanFreq_Y        374 frequency
       fid375_frequencyBodyAccJerk_meanFreq_Z        375 frequency
              fid424_frequencyBodyGyro_mean_X        424 frequency
              fid425_frequencyBodyGyro_mean_Y        425 frequency
              fid426_frequencyBodyGyro_mean_Z        426 frequency
               fid427_frequencyBodyGyro_std_X        427 frequency
               fid428_frequencyBodyGyro_std_Y        428 frequency
               fid429_frequencyBodyGyro_std_Z        429 frequency
          fid452_frequencyBodyGyro_meanFreq_X        452 frequency
          fid453_frequencyBodyGyro_meanFreq_Y        453 frequency
          fid454_frequencyBodyGyro_meanFreq_Z        454 frequency
              fid503_frequencyBodyAccMag_mean        503 frequency
               fid504_frequencyBodyAccMag_std        504 frequency
          fid513_frequencyBodyAccMag_meanFreq        513 frequency
          fid516_frequencyBodyAccJerkMag_mean        516 frequency
           fid517_frequencyBodyAccJerkMag_std        517 frequency
      fid526_frequencyBodyAccJerkMag_meanFreq        526 frequency
             fid529_frequencyBodyGyroMag_mean        529 frequency
              fid530_frequencyBodyGyroMag_std        530 frequency
         fid539_frequencyBodyGyroMag_meanFreq        539 frequency
         fid542_frequencyBodyGyroJerkMag_mean        542 frequency
          fid543_frequencyBodyGyroJerkMag_std        543 frequency
     fid552_frequencyBodyGyroJerkMag_meanFreq        552 frequency
             Measure Function Dimension
                <NA>     <NA>      <NA>
                <NA>     <NA>      <NA>
             BodyAcc     mean         X
             BodyAcc     mean         Y
             BodyAcc     mean         Z
             BodyAcc      std         X
             BodyAcc      std         Y
             BodyAcc      std         Z
          GravityAcc     mean         X
          GravityAcc     mean         Y
          GravityAcc     mean         Z
          GravityAcc      std         X
          GravityAcc      std         Y
          GravityAcc      std         Z
         BodyAccJerk     mean         X
         BodyAccJerk     mean         Y
         BodyAccJerk     mean         Z
         BodyAccJerk      std         X
         BodyAccJerk      std         Y
         BodyAccJerk      std         Z
            BodyGyro     mean         X
            BodyGyro     mean         Y
            BodyGyro     mean         Z
            BodyGyro      std         X
            BodyGyro      std         Y
            BodyGyro      std         Z
        BodyGyroJerk     mean         X
        BodyGyroJerk     mean         Y
        BodyGyroJerk     mean         Z
        BodyGyroJerk      std         X
        BodyGyroJerk      std         Y
        BodyGyroJerk      std         Z
          BodyAccMag     mean      <NA>
          BodyAccMag      std      <NA>
       GravityAccMag     mean      <NA>
       GravityAccMag      std      <NA>
      BodyAccJerkMag     mean      <NA>
      BodyAccJerkMag      std      <NA>
         BodyGyroMag     mean      <NA>
         BodyGyroMag      std      <NA>
     BodyGyroJerkMag     mean      <NA>
     BodyGyroJerkMag      std      <NA>
             BodyAcc     mean         X
             BodyAcc     mean         Y
             BodyAcc     mean         Z
             BodyAcc      std         X
             BodyAcc      std         Y
             BodyAcc      std         Z
             BodyAcc meanFreq         X
             BodyAcc meanFreq         Y
             BodyAcc meanFreq         Z
         BodyAccJerk     mean         X
         BodyAccJerk     mean         Y
         BodyAccJerk     mean         Z
         BodyAccJerk      std         X
         BodyAccJerk      std         Y
         BodyAccJerk      std         Z
         BodyAccJerk meanFreq         X
         BodyAccJerk meanFreq         Y
         BodyAccJerk meanFreq         Z
            BodyGyro     mean         X
            BodyGyro     mean         Y
            BodyGyro     mean         Z
            BodyGyro      std         X
            BodyGyro      std         Y
            BodyGyro      std         Z
            BodyGyro meanFreq         X
            BodyGyro meanFreq         Y
            BodyGyro meanFreq         Z
          BodyAccMag     mean      <NA>
          BodyAccMag      std      <NA>
          BodyAccMag meanFreq      <NA>
      BodyAccJerkMag     mean      <NA>
      BodyAccJerkMag      std      <NA>
      BodyAccJerkMag meanFreq      <NA>
         BodyGyroMag     mean      <NA>
         BodyGyroMag      std      <NA>
         BodyGyroMag meanFreq      <NA>
     BodyGyroJerkMag     mean      <NA>
     BodyGyroJerkMag      std      <NA>
     BodyGyroJerkMag meanFreq      <NA>

This activity\_summary.txt file has a total of `nrow(td)` observations. \#\#\# License

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
