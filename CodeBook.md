Study Design
------------

### The steps to producing the data set.

variables, the data, and any transformations or work that you performed to clean up the data Transformations Variables \#Reference: [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 \#\#Code Book \#\#\#Includes a list of the variables

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

Variables
---------

The variables included in this data set follow a naming pattern that can help you understand its nature "fid[0-9][0-9][0-9](time|frequency)"

                                  variable_name    domain         measure
                                       Activity      <NA>            <NA>
                                        Subject      <NA>            <NA>
                      fid001_timeBodyAcc_mean_X      time         BodyAcc
                      fid002_timeBodyAcc_mean_Y      time         BodyAcc
                      fid003_timeBodyAcc_mean_Z      time         BodyAcc
                       fid004_timeBodyAcc_std_X      time         BodyAcc
                       fid005_timeBodyAcc_std_Y      time         BodyAcc
                       fid006_timeBodyAcc_std_Z      time         BodyAcc
                   fid041_timeGravityAcc_mean_X      time      GravityAcc
                   fid042_timeGravityAcc_mean_Y      time      GravityAcc
                   fid043_timeGravityAcc_mean_Z      time      GravityAcc
                    fid044_timeGravityAcc_std_X      time      GravityAcc
                    fid045_timeGravityAcc_std_Y      time      GravityAcc
                    fid046_timeGravityAcc_std_Z      time      GravityAcc
                  fid081_timeBodyAccJerk_mean_X      time     BodyAccJerk
                  fid082_timeBodyAccJerk_mean_Y      time     BodyAccJerk
                  fid083_timeBodyAccJerk_mean_Z      time     BodyAccJerk
                   fid084_timeBodyAccJerk_std_X      time     BodyAccJerk
                   fid085_timeBodyAccJerk_std_Y      time     BodyAccJerk
                   fid086_timeBodyAccJerk_std_Z      time     BodyAccJerk
                     fid121_timeBodyGyro_mean_X      time        BodyGyro
                     fid122_timeBodyGyro_mean_Y      time        BodyGyro
                     fid123_timeBodyGyro_mean_Z      time        BodyGyro
                      fid124_timeBodyGyro_std_X      time        BodyGyro
                      fid125_timeBodyGyro_std_Y      time        BodyGyro
                      fid126_timeBodyGyro_std_Z      time        BodyGyro
                 fid161_timeBodyGyroJerk_mean_X      time    BodyGyroJerk
                 fid162_timeBodyGyroJerk_mean_Y      time    BodyGyroJerk
                 fid163_timeBodyGyroJerk_mean_Z      time    BodyGyroJerk
                  fid164_timeBodyGyroJerk_std_X      time    BodyGyroJerk
                  fid165_timeBodyGyroJerk_std_Y      time    BodyGyroJerk
                  fid166_timeBodyGyroJerk_std_Z      time    BodyGyroJerk
                     fid201_timeBodyAccMag_mean      time      BodyAccMag
                      fid202_timeBodyAccMag_std      time      BodyAccMag
                  fid214_timeGravityAccMag_mean      time   GravityAccMag
                   fid215_timeGravityAccMag_std      time   GravityAccMag
                 fid227_timeBodyAccJerkMag_mean      time  BodyAccJerkMag
                  fid228_timeBodyAccJerkMag_std      time  BodyAccJerkMag
                    fid240_timeBodyGyroMag_mean      time     BodyGyroMag
                     fid241_timeBodyGyroMag_std      time     BodyGyroMag
                fid253_timeBodyGyroJerkMag_mean      time BodyGyroJerkMag
                 fid254_timeBodyGyroJerkMag_std      time BodyGyroJerkMag
                 fid266_frequencyBodyAcc_mean_X frequency         BodyAcc
                 fid267_frequencyBodyAcc_mean_Y frequency         BodyAcc
                 fid268_frequencyBodyAcc_mean_Z frequency         BodyAcc
                  fid269_frequencyBodyAcc_std_X frequency         BodyAcc
                  fid270_frequencyBodyAcc_std_Y frequency         BodyAcc
                  fid271_frequencyBodyAcc_std_Z frequency         BodyAcc
             fid294_frequencyBodyAcc_meanFreq_X frequency         BodyAcc
             fid295_frequencyBodyAcc_meanFreq_Y frequency         BodyAcc
             fid296_frequencyBodyAcc_meanFreq_Z frequency         BodyAcc
             fid345_frequencyBodyAccJerk_mean_X frequency     BodyAccJerk
             fid346_frequencyBodyAccJerk_mean_Y frequency     BodyAccJerk
             fid347_frequencyBodyAccJerk_mean_Z frequency     BodyAccJerk
              fid348_frequencyBodyAccJerk_std_X frequency     BodyAccJerk
              fid349_frequencyBodyAccJerk_std_Y frequency     BodyAccJerk
              fid350_frequencyBodyAccJerk_std_Z frequency     BodyAccJerk
         fid373_frequencyBodyAccJerk_meanFreq_X frequency     BodyAccJerk
         fid374_frequencyBodyAccJerk_meanFreq_Y frequency     BodyAccJerk
         fid375_frequencyBodyAccJerk_meanFreq_Z frequency     BodyAccJerk
                fid424_frequencyBodyGyro_mean_X frequency        BodyGyro
                fid425_frequencyBodyGyro_mean_Y frequency        BodyGyro
                fid426_frequencyBodyGyro_mean_Z frequency        BodyGyro
                 fid427_frequencyBodyGyro_std_X frequency        BodyGyro
                 fid428_frequencyBodyGyro_std_Y frequency        BodyGyro
                 fid429_frequencyBodyGyro_std_Z frequency        BodyGyro
            fid452_frequencyBodyGyro_meanFreq_X frequency        BodyGyro
            fid453_frequencyBodyGyro_meanFreq_Y frequency        BodyGyro
            fid454_frequencyBodyGyro_meanFreq_Z frequency        BodyGyro
                fid503_frequencyBodyAccMag_mean frequency      BodyAccMag
                 fid504_frequencyBodyAccMag_std frequency      BodyAccMag
            fid513_frequencyBodyAccMag_meanFreq frequency      BodyAccMag
            fid516_frequencyBodyAccJerkMag_mean frequency  BodyAccJerkMag
             fid517_frequencyBodyAccJerkMag_std frequency  BodyAccJerkMag
        fid526_frequencyBodyAccJerkMag_meanFreq frequency  BodyAccJerkMag
               fid529_frequencyBodyGyroMag_mean frequency     BodyGyroMag
                fid530_frequencyBodyGyroMag_std frequency     BodyGyroMag
           fid539_frequencyBodyGyroMag_meanFreq frequency     BodyGyroMag
           fid542_frequencyBodyGyroJerkMag_mean frequency BodyGyroJerkMag
            fid543_frequencyBodyGyroJerkMag_std frequency BodyGyroJerkMag
       fid552_frequencyBodyGyroJerkMag_meanFreq frequency BodyGyroJerkMag
              fid555_angle_tBodyAccMean_gravity      <NA>         BodyAcc
      fid556_angle_tBodyAccJerkMean_gravityMean      <NA>     BodyAccJerk
         fid557_angle_tBodyGyroMean_gravityMean      <NA>        BodyGyro
     fid558_angle_tBodyGyroJerkMean_gravityMean      <NA>    BodyGyroJerk
                     fid559_angle_X_gravityMean      <NA>            <NA>
                     fid560_angle_Y_gravityMean      <NA>            <NA>
                     fid561_angle_Z_gravityMean      <NA>            <NA>
     calculation
            <NA>
            <NA>
            mean
            mean
            mean
             std
             std
             std
            mean
            mean
            mean
             std
             std
             std
            mean
            mean
            mean
             std
             std
             std
            mean
            mean
            mean
             std
             std
             std
            mean
            mean
            mean
             std
             std
             std
            mean
             std
            mean
             std
            mean
             std
            mean
             std
            mean
             std
            mean
            mean
            mean
             std
             std
             std
        meanFreq
        meanFreq
        meanFreq
            mean
            mean
            mean
             std
             std
             std
        meanFreq
        meanFreq
        meanFreq
            mean
            mean
            mean
             std
             std
             std
        meanFreq
        meanFreq
        meanFreq
            mean
             std
        meanFreq
            mean
             std
        meanFreq
            mean
             std
        meanFreq
            mean
             std
        meanFreq
            <NA>
            <NA>
            <NA>
            <NA>
            <NA>
            <NA>
            <NA>
