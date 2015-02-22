Getting and Cleaning Data Course Project
========================================

This course project is focused on collecting, work with and cleaning data, and ultimately creating a tidy data set. The data source is based on a study

1.  Merge the training and the test sets to create one data set.
2.  Extract only the measurements on the mean and standard deviation for each measurement.
3.  Use descriptive activity names to name the activities in the data set
4.  Appropriately label the data set with descriptive variable names.
5.  From the data set in step 4, create a second, independent tidy data set with the *average* of each variable for each activity and each subject.

Note that the actual process I used to does not follow the exact sequence shown above, and it does end up with the outcome that is shown in step 5.
**Script:** "run\_analysis.R" The purpose of this script is to retrieve the data from the UCI-HAR dataset,

*Script requirements* Packages that must be installed:

    install.packages("dplyr")

Data that must be installed:
The UCI-HAR data set is required to process run this script. Download the data to an existing directory named data. If the directory does not exist it will be created.

    if(!file.exists("/data")) {
            dir.create("data") 
    }
    if(!file.exists("./data/projdata.zip")) {
            data.source.url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
            download.file(url=data.source.url,destfile="./data/projdata.zip",method="curl")
            download.date<-date()
            
    }

Information about the column names from the data set created in the study.
[feature\_info.txt](data/UCI-HAR/feature_info.txt "Describes the feature names that were collected in the original study")

Detailed documentation on the study [A Public Domain Dataset for Human Activity Recognition Using Smartphones](https://www.elen.ucl.ac.be/Proceedings/esann/esannpdf/es2013-84.pdf "A Public Domain Dataset for Human Activity Recognition Using Smartphones")

<table>
<colgroup>
<col width="5%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left">Human Activity Recognition Using Smartphones Dataset Version 1.0</td>
</tr>
<tr class="even">
<td align="left">Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Universit? degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. <script type="text/javascript">
<!--
h='&#x73;&#x6d;&#x61;&#114;&#116;&#108;&#x61;&#98;&#46;&#x77;&#x73;';a='&#64;';n='&#x61;&#x63;&#116;&#x69;&#118;&#x69;&#116;&#x79;&#114;&#x65;&#x63;&#x6f;&#x67;&#110;&#x69;&#116;&#x69;&#x6f;&#110;';e=n+a+h;
document.write('<a h'+'ref'+'="ma'+'ilto'+':'+e+'">'+e+'<\/'+'a'+'>');
// -->
</script><noscript>&#x61;&#x63;&#116;&#x69;&#118;&#x69;&#116;&#x79;&#114;&#x65;&#x63;&#x6f;&#x67;&#110;&#x69;&#116;&#x69;&#x6f;&#110;&#32;&#x61;&#116;&#32;&#x73;&#x6d;&#x61;&#114;&#116;&#108;&#x61;&#98;&#32;&#100;&#x6f;&#116;&#32;&#x77;&#x73;</noscript> (<a href="http://www.smartlab.ws">http://www.smartlab.ws</a>)</td>
</tr>
</tbody>
</table>
