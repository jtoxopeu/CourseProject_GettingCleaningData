Human Activity Recognition Using Smartphones Dataset
========================================================
Data for this analysis was obtained from [this zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), downloaded on May 12, 2014 at 3:00 pm AST.

The original data was obtained from 30 volunteers. Participants wore a smartphone (Samsung Galaxy SII) on their waist and performed six different activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying. Participants were video-recorded to manually categorize their activities. Linear acceleration and angular velocity data from the accelerometer and gyroscope embedded within the Samsung phones were extracted. The authors then randomly assigned each subject's data to one of two sets: "train" (21 volunteers), and "test" (9 volunteers).

Additional information on the original data can be obtained from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data set associated with this codebook contains a subset of the original data. The following transformations were applied:  
* The "train" and "test" data were merged into one data set that included activity codes (1 through 6) and subject IDs (1 through 30).   
* Of the 561 variables in the data set, only 66 were retained. These variables were ones that included mean or standard deviation (std) values of the measured data. Variables that measured mean frequency (meanFreq) were not retained.   
* Activity codes (1 through 6) were replaced with the more meaningful designations of "walking", "walking.upstairs", "walking.downstairs", "sitting", "standing", and "laying", respectively.   
* Descriptive names were added to the 66 variables (see below for interpretation of these variable names).   
* For each subject, 6 mean values (1 per activity) were calculated for each of the 66 variables. This resulted in 180 rows (30 subjects x 6 activities) of mean values for each variable.   

### Row names:
Each row name consists of the activity description followed by the numeric subject ID. For example, "walking.1" indicates mean data for the activity of "walking"" by subject #1. Activity categories include "walking", "walking.upstairs", "walking.downstairs", "sitting", "standing", and "laying". Subject IDs include 1 through 30, inclusive.  

Each observation is the mean value of several replicate measurements taken for the particular activity the subject was doing.  

### Column names:
In general, "time" indicates a time domain signal, whereas "frequency" indicates a frequency domain signal. Measured accelerated signals have been separated into "body" and "gravity" signals. "Accelerometer" and "gyroscope" indicate which instrument was used to obtain the measurements. "Mean" and "std" indicate mean and standard deviation, respectively. More detailed descriptions are below. 

1. **time.body.accelerometer.mean.x**    
Mean value of time measured by the accelerometer of body acceleration in the x-plane of an axial coordinate system.   
2. **time.body.accelerometer.mean.y**   
Mean value of time measured by the accelerometer of body acceleration in the y-plane of an axial coordinate system.  
3. **time.body.accelerometer.mean.z**   
Mean value of time measured by the accelerometer of body acceleration in the z-plane of an axial coordinate system.  
4. **time.body.accelerometer.std.x**    
Standard deviation value of time measured by the accelerometer of body acceleration in the x-plane of an axial coordinate system.   
5. **time.body.accelerometer.std.y**   
Standard deviation value of time measured by the accelerometer of body acceleration in the y-plane of an axial coordinate system.  
6. **time.body.accelerometer.std.z**   
Standard deviation value of time measured by the accelerometer of body acceleration in the z-plane of an axial coordinate system.   
7. **time.gravity.accelerometer.mean.x**    
Mean value of time measured by the accelerometer of gravity acceleration in the x-plane of an axial coordinate system.   
8. **time.gravity.accelerometer.mean.y**   
Mean value of time measured by the accelerometer of gravity acceleration in the y-plane of an axial coordinate system.  
9. **time.gravity.accelerometer.mean.z**   
Mean value of time measured by the accelerometer of gravity acceleration in the z-plane of an axial coordinate system.  
10. **time.gravity.accelerometer.std.x**    
Standard deviation value of time measured by the accelerometer of gravity acceleration in the x-plane of an axial coordinate system.   
11. **time.gravity.accelerometer.std.y**   
Standard deviation value of time measured by the accelerometer of gravity acceleration in the y-plane of an axial coordinate system.  
12. **time.gravity.accelerometer.std.z**   
Standard deviation value of time measured by the accelerometer of gravity acceleration in the z-plane of an axial coordinate system.  
13. **time.body.accelerometer.jerk.mean.x**    
Mean value of time measured by the accelerometer of body jerk in the x-plane of an axial coordinate system.   
14. **time.body.accelerometer.jerk.mean.y**   
Mean value of time measured by the accelerometer of body jerk in the y-plane of an axial coordinate system.  
15. **time.body.accelerometer.jerk.mean.z**   
Mean value of time measured by the accelerometer of body jerk in the z-plane of an axial coordinate system.  
16. **time.body.accelerometer.jerk.std.x**    
Standard deviation value of time measured by the accelerometer of body jerk in the x-plane of an axial coordinate system.   
17. **time.body.accelerometer.jerk.std.y**   
Standard deviation value of time measured by the accelerometer of body jerk in the y-plane of an axial coordinate system.  
18. **time.body.accelerometer.jerk.std.z**   
Standard deviation value of time measured by the accelerometer of body jerk in the z-plane of an axial coordinate system.  
19. **time.body.gyroscope.mean.x**  
Mean value of time measured by the gyroscope of body angular velocity in the x-plane of an axial coordinate system.  
20. **time.body.gyroscope.mean.y**  
Mean value of time measured by the gyroscope of body angular velocity in the y-plane of an axial coordinate system.  
21. **time.body.gyroscope.mean.z**  
Mean value of time measured by the gyroscope of body angular velocity in the z-plane of an axial coordinate system.  
22. **time.body.gyroscope.std.x**  
Standard deviation value of time measured by the gyroscope of body  angular velocity in the x-plane of an axial coordinate system.  
23. **time.body.gyroscope.std.y**  
Standard deviation value of time measured by the gyroscope of body  angular velocity in the y-plane of an axial coordinate system.  
24. **time.body.gyroscope.std.z**  
Standard deviation value of time measured by the gyroscope of body  angular velocity in the z-plane of an axial coordinate system.  
25. **time.body.gyroscope.jerk.mean.x**  
Mean value of time measured by the gyroscope of body angular jerk in the x-plane of an axial coordinate system.  
26. **time.body.gyroscope.jerk.mean.y**  
Mean value of time measured by the gyroscope of body angular jerk in the y-plane of an axial coordinate system.  
27. **time.body.gyroscope.jerk.mean.z**  
Mean value of time measured by the gyroscope of body angular jerk in the z-plane of an axial coordinate system.  
28. **time.body.gyroscope.jerk.std.x**  
Standard deviation value of time measured by the gyroscope of body  angular jerk in the x-plane of an axial coordinate system.  
29. **time.body.gyroscope.jerk.std.y**  
Standard deviation value of time measured by the gyroscope of body  angular jerk in the y-plane of an axial coordinate system.  
30. **time.body.gyroscope.jerk.std.z**  
Standard deviation value of time measured by the gyroscope of body  angular jerk in the z-plane of an axial coordinate system.  
31. **time.body.accelerometer.magnitude.mean**  
Mean value of the magnitude of body acceleration determined from the 3 axial values in time.body.accelerometer.mean.x/y/z.  
32. **time.body.accelerometer.magnitude.std**  
Standard deviation value of the magnitude of body acceleration determined from the 3 axial values in time.body.accelerometer.std.x/y/z. 
33. **time.gravity.accelerometer.magnitude.mean**  
Mean value of the magnitude of gravity acceleration determined from the 3 axial values in time.gravity.accelerometer.mean.x/y/z.  
34. **time.gravity.accelerometer.magnitude.std**  
Standard deviation value of the magnitude of gravity acceleration determined from the 3 axial values in time.gravity.accelerometer.std.x/y/z.  
35. **time.body.accelerometer.jerk.magnitude.mean**  
Mean value of the magnitude of body acceleration jerk determined from the 3 axial values in time.body.accelerometer.jerk.mean.x/y/z.  
36. **time.body.accelerometer.jerk.magnitude.std**  
Standard deviation value of the magnitude of body acceleration jerk determined from the 3 axial values in time.body.accelerometer.jerk.std.x/y/z.  
37. **time.body.gyroscope.magnitude.mean**  
Mean value of the magnitude of body angular velocity determined from the 3 axial values in time.body.gyroscope.mean.x/y/z.  
38. **time.body.gyroscope.magnitude.std**  
Standard deviation value of the magnitude of body angular velocity determined from the 3 axial values in time.body.gyroscope.std.x/y/z.  
39. **time.body.gyroscope.jerk.magnitude.mean**  
Mean value of the magnitude of body angular velocity jerk determined from the 3 axial values in variables 25, 26, and 27.  
40. **time.body.gyroscope.jerk.magnitude.std**  
Standard deviation value of the magnitude of body angular velocity jerk determined from the 3 axial values in variables 28, 29, and 30.  
41. **frequency.body.accelerometer.mean.x**    
Mean value of frequency measured by the accelerometer of body acceleration in the x-plane of an axial coordinate system.   
42. **frequency.body.accelerometer.mean.y**   
Mean value of frequency measured by the accelerometer of body acceleration in the y-plane of an axial coordinate system.  
43. **frequency.body.accelerometer.mean.z**   
Mean value of frequency measured by the accelerometer of body acceleration in the z-plane of an axial coordinate system.  
44. **frequency.body.accelerometer.std.x**    
Standard deviation value of frequency measured by the accelerometer of body acceleration in the x-plane of an axial coordinate system.   
45. **frequency.body.accelerometer.std.y**   
Standard deviation value of frequency measured by the accelerometer of body acceleration in the y-plane of an axial coordinate system.  
46. **frequency.body.accelerometer.std.z**   
Standard deviation value of frequency measured by the accelerometer of body acceleration in the z-plane of an axial coordinate system.   
47. **frequency.body.accelerometer.jerk.mean.x**    
Mean value of frequency measured by the accelerometer of body jerk in the x-plane of an axial coordinate system.   
48. **frequency.body.accelerometer.jerk.mean.y**   
Mean value of frequency measured by the accelerometer of body jerk in the y-plane of an axial coordinate system.  
49. **frequency.body.accelerometer.jerk.mean.z**   
Mean value of frequency measured by the accelerometer of body jerk in the z-plane of an axial coordinate system.  
50. **frequency.body.accelerometer.jerk.std.x**    
Standard deviation value of frequency measured by the accelerometer of body jerk in the x-plane of an axial coordinate system.   
51. **frequency.body.accelerometer.jerk.std.y**   
Standard deviation value of frequency measured by the accelerometer of body jerk in the y-plane of an axial coordinate system.  
52. **frequency.body.accelerometer.jerk.std.z**   
Standard deviation value of frequency measured by the accelerometer of body jerk in the z-plane of an axial coordinate system.  
53. **frequency.body.gyroscope.mean.x**  
Mean value of frequency measured by the gyroscope of body angular velocity in the x-plane of an axial coordinate system.  
54. **frequency.body.gyroscope.mean.y**  
Mean value of frequency measured by the gyroscope of body angular velocity in the y-plane of an axial coordinate system.  
55. **frequency.body.gyroscope.mean.z**  
Mean value of frequency measured by the gyroscope of body angular velocity in the z-plane of an axial coordinate system.  
56. **frequency.body.gyroscope.std.x**  
Standard deviation value of frequency measured by the gyroscope of body  angular velocity in the x-plane of an axial coordinate system.  
57. **frequency.body.gyroscope.std.y**  
Standard deviation value of frequency measured by the gyroscope of body  angular velocity in the y-plane of an axial coordinate system.  
58. **frequency.body.gyroscope.std.z**  
Standard deviation value of frequency measured by the gyroscope of body  angular velocity in the z-plane of an axial coordinate system.  
59. **frequency.body.accelerometer.magnitude.mean**  
Mean value of the magnitude of body acceleration frequency determined from the 3 axial values in frequency.body.accelerometer.mean.x/y/z.  
60. **frequency.body.accelerometer.magnitude.std**  
Standard deviation value of the magnitude of body acceleration frequency determined from the 3 axial values in frequency.body.accelerometer.std.x/y/z. 
61. **frequency.body.accelerometer.jerk.magnitude.mean**  
Mean value of the magnitude of body acceleration jerk frequency determined from the 3 axial values in frequency.body.accelerometer.jerk.mean.x/y/z.  
62. **frequency.body.accelerometer.jerk.magnitude.std**  
Standard deviation value of the magnitude of body acceleration jerk frequency determined from the 3 axial values in frequency.body.accelerometer.jerk.std.x/y/z.   
63. **frequency.body.gyroscope.magnitude.mean**  
Mean value of the magnitude of body angular velocity frequency determined from the 3 axial values in frequency.body.gyroscope.mean.x/y/z.  
64. **frequency.body.gyroscope.magnitude.std**  
Standard deviation value of the magnitude of body angular velocity frequency determined from the 3 axial values in frequency.body.gyroscope.std.x/y/z.  
39. **frequency.body.gyroscope.jerk.magnitude.mean**  
Mean value of the magnitude of body angular velocity jerk frequency determined from the 3 axial values in frequency.body.gyroscope.jerk.mean.x/y/z.  
40. **frequency.body.gyroscope.jerk.magnitude.std**  
Standard deviation value of the magnitude of body angular velocity jerk frequency determined from the 3 axial values in frequency.body.gyroscope.jerk.std.x/y/z.  
