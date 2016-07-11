Identifiers (1st and 2nd columns): subjectsId activities

activities (2nd column): 1 WALKING

2 WALKING\_UPSTAIRS

3 WALKING\_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

Performed tasks to produce tidy data: 1) Load required libraries 2)
Download (if does not exist) the training and the test sets and unzip it
3) Loads the data for indices contain std and mean 4) Organize the
feature names 5) Organize the activity names 6) Produce the average of
each variable for each activity and each subject

Detail of the organization of the feature names: "-" is removed "std" is
substituted by "STD" "mean" is substituted by "Mean" "()" is removed "t"
is substituted by "Time" "f" is substituted by "Force" "Gravi" is
substituted by "Gravity" "Acc" is substituted by "Acceleration" "Mag" is
substituted by "Magnitude"

Features (3rd to 81 column) [3]
"TimeBodyAccelerationeleraTimeioneleraTimeionMeanX"\
[4] "TimeBodyAccelerationeleraTimeioneleraTimeionMeanY"\
[5] "TimeBodyAccelerationeleraTimeioneleraTimeionMeanZ"\
[6] "TimeBodyAccelerationeleraTimeioneleraTimeionSTDX"\
[7] "TimeBodyAccelerationeleraTimeioneleraTimeionSTDY"\
[8] "TimeBodyAccelerationeleraTimeioneleraTimeionSTDZ"\
[9]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionMeanX"\
[10]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionMeanY"\
[11]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionMeanZ"\
[12]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionSTDX"\
[13]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionSTDY"\
[14]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionSTDZ"\
[15] "TimeBodyAccelerationeleraTimeioneleraTimeionJerkMeanX"\
[16] "TimeBodyAccelerationeleraTimeioneleraTimeionJerkMeanY"\
[17] "TimeBodyAccelerationeleraTimeioneleraTimeionJerkMeanZ"\
[18] "TimeBodyAccelerationeleraTimeioneleraTimeionJerkSTDX"\
[19] "TimeBodyAccelerationeleraTimeioneleraTimeionJerkSTDY"\
[20] "TimeBodyAccelerationeleraTimeioneleraTimeionJerkSTDZ"\
[21] "TimeBodyGyroMeanX"\
[22] "TimeBodyGyroMeanY"\
[23] "TimeBodyGyroMeanZ"\
[24] "TimeBodyGyroSTDX"\
[25] "TimeBodyGyroSTDY"\
[26] "TimeBodyGyroSTDZ"\
[27] "TimeBodyGyroJerkMeanX"\
[28] "TimeBodyGyroJerkMeanY"\
[29] "TimeBodyGyroJerkMeanZ"\
[30] "TimeBodyGyroJerkSTDX"\
[31] "TimeBodyGyroJerkSTDY"\
[32] "TimeBodyGyroJerkSTDZ"\
[33]
"TimeBodyAccelerationeleraTimeioneleraTimeionMagnitudeniTimeudeniTimeudeMean"\
[34]
"TimeBodyAccelerationeleraTimeioneleraTimeionMagnitudeniTimeudeniTimeudeSTD"\
[35]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionMagnitudeniTimeudeniTimeudeMean"
[36]
"TimeGravityTimeyTimeyTimeyAccelerationeleraTimeioneleraTimeionMagnitudeniTimeudeniTimeudeSTD"
[37]
"TimeBodyAccelerationeleraTimeioneleraTimeionJerkMagnitudeniTimeudeniTimeudeMean"\
[38]
"TimeBodyAccelerationeleraTimeioneleraTimeionJerkMagnitudeniTimeudeniTimeudeSTD"\
[39] "TimeBodyGyroMagnitudeniTimeudeniTimeudeMean"\
[40] "TimeBodyGyroMagnitudeniTimeudeniTimeudeSTD"\
[41] "TimeBodyGyroJerkMagnitudeniTimeudeniTimeudeMean"\
[42] "TimeBodyGyroJerkMagnitudeniTimeudeniTimeudeSTD"\
[43] "ForceBodyAccelerationeleraTimeioneleraTimeionMeanX"\
[44] "ForceBodyAccelerationeleraTimeioneleraTimeionMeanY"\
[45] "ForceBodyAccelerationeleraTimeioneleraTimeionMeanZ"\
[46] "ForceBodyAccelerationeleraTimeioneleraTimeionSTDX"\
[47] "ForceBodyAccelerationeleraTimeioneleraTimeionSTDY"\
[48] "ForceBodyAccelerationeleraTimeioneleraTimeionSTDZ"\
[49] "ForceBodyAccelerationeleraTimeioneleraTimeionMeanFreqX"\
[50] "ForceBodyAccelerationeleraTimeioneleraTimeionMeanFreqY"\
[51] "ForceBodyAccelerationeleraTimeioneleraTimeionMeanFreqZ"\
[52] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkMeanX"\
[53] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkMeanY"\
[54] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkMeanZ"\
[55] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkSTDX"\
[56] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkSTDY"\
[57] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkSTDZ"\
[58] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkMeanFreqX"\
[59] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkMeanFreqY"\
[60] "ForceBodyAccelerationeleraTimeioneleraTimeionJerkMeanFreqZ"\
[61] "ForceBodyGyroMeanX"\
[62] "ForceBodyGyroMeanY"\
[63] "ForceBodyGyroMeanZ"\
[64] "ForceBodyGyroSTDX"\
[65] "ForceBodyGyroSTDY"\
[66] "ForceBodyGyroSTDZ"\
[67] "ForceBodyGyroMeanFreqX"\
[68] "ForceBodyGyroMeanFreqY"\
[69] "ForceBodyGyroMeanFreqZ"\
[70]
"ForceBodyAccelerationeleraTimeioneleraTimeionMagnitudeniTimeudeniTimeudeMean"\
[71]
"ForceBodyAccelerationeleraTimeioneleraTimeionMagnitudeniTimeudeniTimeudeSTD"\
[72]
"ForceBodyAccelerationeleraTimeioneleraTimeionMagnitudeniTimeudeniTimeudeMeanFreq"\
[73]
"ForceBodyBodyAccelerationeleraTimeioneleraTimeionJerkMagnitudeniTimeudeniTimeudeMean"\
[74]
"ForceBodyBodyAccelerationeleraTimeioneleraTimeionJerkMagnitudeniTimeudeniTimeudeSTD"\
[75]
"ForceBodyBodyAccelerationeleraTimeioneleraTimeionJerkMagnitudeniTimeudeniTimeudeMeanFreq"\
[76] "ForceBodyBodyGyroMagnitudeniTimeudeniTimeudeMean"\
[77] "ForceBodyBodyGyroMagnitudeniTimeudeniTimeudeSTD"\
[78] "ForceBodyBodyGyroMagnitudeniTimeudeniTimeudeMeanFreq"\
[79] "ForceBodyBodyGyroJerkMagnitudeniTimeudeniTimeudeMean"\
[80] "ForceBodyBodyGyroJerkMagnitudeniTimeudeniTimeudeSTD"\
[81] "ForceBodyBodyGyroJerkMagnitudeniTimeudeniTimeudeMeanFreq"
