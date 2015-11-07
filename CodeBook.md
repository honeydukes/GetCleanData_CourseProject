CodeBook 
=========

Input Data Info : (taken from original data set)
------------------------------------------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


Output Data Summary
--------------------

(a) Each row in the output data set consists of the following :
- An identifier of the subject who carried out the experiment.
- Its activity label descriptor.  
- And 88 columns of feature vectors.

(b) Each feature vector indicates the AVERAGE of the selected feature variables, for each subject and segragated by each activity.

(c) Units : The AVERAGE values for each features have been NORMALIZED and bounded within [-1,1].

(d) Only feature variables with "Mean", "mean" and "std" in their name descriptor were extracted from the original data set.

(e) The complete list of column names in the output file is as follows : 

1.  subject
2.  activity
3.  average_time_body_acceleration_mean_X
4.  average_time_body_acceleration_mean_Y
5.  average_time_body_acceleration_mean_Z
6.  average_time_body_acceleration_std_X
7.  average_time_body_acceleration_std_Y
8.  average_time_body_acceleration_std_Z
9.  average_time_gravity_acceleration_mean_X
10. average_time_gravity_acceleration_mean_Y
11. average_time_gravity_acceleration_mean_Z
12. average_time_gravity_acceleration_std_X
13. average_time_gravity_acceleration_std_Y
14. average_time_gravity_acceleration_std_Z
15. average_time_body_acceleration_jerk_mean_X
16. average_time_body_acceleration_jerk_mean_Y
17. average_time_body_acceleration_jerk_mean_Z
18. average_time_body_acceleration_jerk_std_X
19. average_time_body_acceleration_jerk_std_Y
20. average_time_body_acceleration_jerk_std_Z
21. average_time_body_gyroscope_mean_X
22. average_time_body_gyroscope_mean_Y
23. average_time_body_gyroscope_mean_Z
24. average_time_body_gyroscope_std_X
25. average_time_body_gyroscope-std_Y
26. average_time_body_gyroscope_std_Z
27. average_time_body_gyroscope_jerk_mean_X
28. average_time_body_gyroscope_jerk_mean_Y
29. average_time_body_gyroscope_jerk_mean_Z
30. average_time_body_gyroscope_jerk_std_X
31. average_time_body_gyroscope_jerk_std_Y
32. average_time_body_gyroscope_jerk_std_Z
33. average_time_body_acceleration_magnitude_mean
34. average_time_body_acceleration_magnitude_std
35. average_time_gravity_acceleration_magnitude_mean
36. average_time_gravity_acceleration_magnitude_std
37. average_time_body_acceleration_jerk_magnitude_mean
38. average_time_body_acceleration_jerk_magnitude_std
39. average_time_body_gyroscope_magnitude_mean
40. average_time_body_gyroscope_magnitude_std
41. average_time_body_gyroscope_jerk_magnitude_mean
42. average_time_body_gyroscope_jerk_magnitude_std
43. average_freq_body_acceleration_mean_X
44. average_freq_body_acceleration_mean_Y
45. average_freq_body_acceleration_mean_Z
46. average_freq_body_acceleration_std_X
47. average_freq_body_acceleration_std_Y
48. average_freq_body_acceleration_std_Z
49. average_freq_body_acceleration_meanFreq_X
50. average_freq_body_acceleration_meanFreq_Y
51. average_freq_body_acceleration_meanFreq_Z
52. average_freq_body_acceleration_jerk_mean_X
53. average_freq_body_acceleration_jerk_mean_Y
54. average_freq_body_acceleration_jerk_mean_Z
55. average_freq_body_acceleration_jerk_std_X
56. average_freq_body_acceleration_jerk_std_Y
57. average_freq_body_acceleration_jerk_std_Z
58. average_freq_body_acceleration_jerk_meanFreq_X
59. average_freq_body_acceleration_jerk_meanFreq_Y
60. average_freq_body_acceleration_jerk_meanFreq_Z
61. average_freq_body_gyroscope_mean_X
62. average_freq_body_gyroscope_mean_Y
63. average_freq_body_gyroscope_mean_Z
64. average_freq_body_gyroscope_std_X
65. average_freq_body_gyroscope_std_Y
66. average_freq_body_gyroscope_std_Z
67. average_freq_body_gyroscope_meanFreq_X
68. average_freq_body_gyroscope_meanFreq_Y
69. average_freq_body_gyroscope_meanFreq_Z
70. average_freq_body_acceleration_magnitude_mean
71. average_freq_body_acceleration_magnitude_std
72. average_freq_body_acceleration_magnitude_meanFreq
73. average_freq_body_acceleration_jerk_magnitude_mean
74. average_freq_body_acceleration_jerk_magnitude_std
75. average_freq_body_acceleration_jerk_magnitude_meanFreq
76. average_freq_body_gyroscope_magnitude_mean
77. average_freq_body_gyroscope_magnitude_std
78. average_freq_body_gyroscope_magnitude_meanFreq
79. average_freq_body_gyroscope_jerk_magnitude_mean
80. average_freq_body_gyroscope_jerk_magnitude_std
81. average_freq_body_gyroscope_jerk_magnitude_meanFreq
82. avg_angle_time_body_accelerationMean_gravity
83. avg_angle_time_body_acceleration_jerkMean_gravityMean
84. avg_angle_time_body_gyroscopeMean_gravityMean
85. avg_angle_time_body_gyroscope_jerkMean_gravityMean
86. avg_angle_X_gravityMean
87. avg_angle_Y_gravityMean
88. avg_angle_Z_gravityMean
