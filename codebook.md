---
title: "CodeBook.md"
author: "Eotoke"
date: "Thursday, October 23, 2014"
output: html_document
---
The purpose of this document is to share on the details and definition of each field inside **tidy_data.txt**

Fields:

1. Subject
  + Subject Number for the person who performed the activity for each window sample.
  + type: int
  + values: 1..30
  
2. Activity
  + Activity performed by the subject
  + type: factor
  + values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

3. TimeBodyAccelerationMeanX
  + Average for Mean of body acceleration signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

4. TimeBodyAccelerationMeanY
  + Average for Mean of body acceleration signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1

5. TimeBodyAccelerationMeanZ
  + Average for Mean of body acceleration signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

6. TimeBodyAccelerationStdDeviationX
  + Average for Standard Deviation of body acceleration signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

7. TimeBodyAccelerationStdDeviationY
  + Average for Standard Deviation of body acceleration signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1
  
8. TimeBodyAccelerationStdDeviationZ
  + Average for Standard Deviation of body acceleration signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1
  
9. TimeGravityAccelerationMeanX
  + Average for Mean of gravity acceleration signal in X-axis derived in time.
  + type: numeric
  + values: -1..1
  
10. TimeGravityAccelerationMeanY
  + Average for Mean of gravity acceleration signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1
  
11. TimeGravityAccelerationMeanZ
  + Average for Mean of gravity acceleration signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1
  
12. TimeGravityAccelerationStdDeviationX
  + Average for Standard Deviation of gravity acceleration signal in X-axis derived in time.
  + type: numeric
  + values: -1..1
  
13. TimeGravityAccelerationStdDeviationY
  + Average for Standard Deviation of gravity acceleration signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1

14. TimeGravityAccelerationStdDeviationZ
  + Average for Standard Deviation of gravity acceleration signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

15. TimeBodyAccelerationJerkMeanX
  + Average for Mean of body acceleration jerk signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

16. TimeBodyAccelerationJerkMeanY
  + Average for Mean of body acceleration jerk signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1

17. TimeBodyAccelerationJerkMeanZ
  + Average for Mean of body acceleration jerk signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

18. TimeBodyAccelerationJerkStdDeviationX
  + Average for Standard Deviation of body acceleration jerk signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

19. TimeBodyAccelerationJerkStdDeviationY
  + Average for Standard Deviation of body acceleration jerk signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1
  
20. TimeBodyAccelerationJerkStdDeviationZ
  + Average for Standard Deviation of body acceleration jerk signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

21. TimeBodyGyroscopeMeanX
  + Average for mean of body gyroscope signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

22. TimeBodyGyroscopeMeanY
  + Average for mean of body gyroscope signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1

23. TimeBodyGyroscopeMeanZ
  + Average for mean of body gyroscope signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

24. TimeBodyGyroscopeStdDeviationX
  + Average for Standard Deviation of body gyroscope signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

25. TimeBodyGyroscopeStdDeviationY
  + Average for Standard Deviation of body gyroscope signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1

26. TimeBodyGyroscopeStdDeviationZ
  + Average for Standard Deviation of body gyroscope signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

27. TimeBodyGyroscopeJerkMeanX
  + Average for mean of body gyroscope jerk signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

28. TimeBodyGyroscopeJerkMeanY
  + Average for mean of body gyroscope jerk signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1

29. TimeBodyGyroscopeJerkMeanZ
  + Average for mean of body gyroscope jerk signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

30. TimeBodyGyroscopeJerkStdDeviationX
  + Average for Standard Deviation of body gyroscope jerk signal in X-axis derived in time.
  + type: numeric
  + values: -1..1

31. TimeBodyGyroscopeJerkStdDeviationY
  + Average for Standard Deviation of body gyroscope jerk signal in Y-axis derived in time.
  + type: numeric
  + values: -1..1

32. TimeBodyGyroscopeJerkStdDeviationZ
  + Average for Standard Deviation of body gyroscope jerk signal in Z-axis derived in time.
  + type: numeric
  + values: -1..1

33. TimeBodyAccelerationMagnitudeMean
  + Average for Mean Magnitude of body acceleration signal derived in time.
  + type: numeric
  + values: -1..1

34. TimeBodyAccelerationMagnitudeStdDeviation
  + Average for Standard Deviation of Magnitude of body acceleration signal derived in time.
  + type: numeric
  + values: -1..1

35. TimeGravityAccelerationMagnitudeMean
  + Average for Mean Magnitude of gravity acceleration signal derived in time.
  + type: numeric
  + values: -1..1

36. TimeGravityAccelerationMagnitudeStdDeviation
  + Average for Standard Deviation of Magnitude of gravity acceleration signal derived in time.
  + type: numeric
  + values: -1..1

37. TimeBodyAccelerationJerkMagnitudeMean
  + Average for Mean Magnitude of body acceleration jerk signal derived in time.
  + type: numeric
  + values: -1..1

38. TimeBodyAccelerationJerkMagnitudeStdDeviation
  + Average for Standard Deviation of Magnitude of body acceleration jerk signal derived in time.
  + type: numeric
  + values: -1..1

39. TimeBodyGyroscopeMagnitudeMean
  + Average for Mean Magnitude of body gyroscope signal derived in time.
  + type: numeric
  + values: -1..1

40. TimeBodyGyroscopeMagnitudeStdDeviation
  + Average for Standard Deviation of Magnitude of body gyroscope signal derived in time.
  + type: numeric
  + values: -1..1

41. TimeBodyGyroscopeJerkMagnitudeMean
  + Average for Mean Magnitude of body gyroscope jerk signal derived in time.
  + type: numeric
  + values: -1..1

42. TimeBodyGyroscopeJerkMagnitudeStdDeviation
  + Average for Standard Deviation of Magnitude of body gyroscope jerk signal derived in time.
  + type: numeric
  + values: -1..1

43. FreqBodyAccelerationMeanX
  + Average for Mean of body acceleration frequency domain signal in X-axis.
  + type: numeric
  + values: -1..1

44. FreqBodyAccelerationMeanY
  + Average for Mean of body acceleration frequency domain signal in Y-axis.
  + type: numeric
  + values: -1..1

45. FreqBodyAccelerationMeanZ
  + Average for Mean of body acceleration frequency domain signal in Z-axis.
  + type: numeric
  + values: -1..1
  
46. FreqBodyAccelerationStdDeviationX
  + Average for Standard Deviation of body acceleration frequency domain signal in X-axis.
  + type: numeric
  + values: -1..1

47. FreqBodyAccelerationStdDeviationY
  + Average for Standard Deviation of body acceleration frequency domain signal in Y-axis.
  + type: numeric
  + values: -1..1

48. FreqBodyAccelerationStdDeviationZ
  + Average for Standard Deviation of body acceleration frequency domain signal in Z-axis.
  + type: numeric
  + values: -1..1

49. FreqBodyAccelerationMeanFreqX
  + Average for Mean Frequency of body acceleration frequency domain signal in X-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1

50. FreqBodyAccelerationMeanFreqY
  + Average for Mean Frequency of body acceleration frequency domain signal in Y-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1

51. FreqBodyAccelerationMeanFreqZ
  + Average for Mean Frequency of body acceleration frequency domain signal in Z-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1

52. FreqBodyAccelerationJerkMeanX
  + Average for Mean of body acceleration jerk frequency domain signal in X-axis.
  + type: numeric
  + values: -1..1

53. FreqBodyAccelerationJerkMeanY
  + Average for Mean of body acceleration jerk frequency domain signal in Y-axis.
  + type: numeric
  + values: -1..1

54. FreqBodyAccelerationJerkMeanZ
  + Average for Mean of body acceleration jerk frequency domain signal in Z-axis.
  + type: numeric
  + values: -1..1

55. FreqBodyAccelerationJerkStdDeviationX
  + Average for Standard Deviation of body acceleration jerk frequency domain signal in X-axis.
  + type: numeric
  + values: -1..1

56. FreqBodyAccelerationJerkStdDeviationY
  + Average for Standard Deviation of body acceleration jerk frequency domain signal in Y-axis.
  + type: numeric
  + values: -1..1
  
57. FreqBodyAccelerationJerkStdDeviationZ
  + Average for Standard Deviation of body acceleration jerk frequency domain signal in Z-axis.
  + type: numeric
  + values: -1..1

58. FreqBodyAccelerationJerkMeanFreqX
  + Average for Mean Frequency of body acceleration jerk frequency domain signal in X-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1

59. FreqBodyAccelerationJerkMeanFreqY
  + Average for Mean Frequency of body acceleration jerk frequency domain signal in Y-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1
  
60. FreqBodyAccelerationJerkMeanFreqZ
  + Average for Mean Frequency of body acceleration jerk frequency domain signal in Z-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1
  
61. FreqBodyGyroscopeMeanX
  + Average for Mean of body gyroscope frequency domain signal in X-axis.
  + type: numeric
  + values: -1..1

62. FreqBodyGyroscopeMeanY
  + Average for Mean of body gyroscope frequency domain signal in Y-axis.
  + type: numeric
  + values: -1..1

63. FreqBodyGyroscopeMeanZ
  + Average for Mean of body gyroscope frequency domain signal in Z-axis.
  + type: numeric
  + values: -1..1

64. FreqBodyGyroscopeStdDeviationX
  + Average for Standard Deviation of body gyroscope frequency domain signal in X-axis.
  + type: numeric
  + values: -1..1

65. FreqBodyGyroscopeStdDeviationY
  + Average for Standard Deviation of body gyroscope frequency domain signal in Y-axis.
  + type: numeric
  + values: -1..1

66. FreqBodyGyroscopeStdDeviationZ
  + Average for Standard Deviation of body gyroscope frequency domain signal in Z-axis.
  + type: numeric
  + values: -1..1

67. FreqBodyGyroscopeMeanFreqX
  + Average for Mean Frequency of body gyroscope frequency domain signal in X-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1

68. FreqBodyGyroscopeMeanFreqY
  + Average for Mean Frequency of body gyroscope frequency domain signal in Y-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1
  
69. FreqBodyGyroscopeMeanFreqZ
  + Average for Mean Frequency of body gyroscope frequency domain signal in Z-axis. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1

70. FreqBodyAccelerationMagnitudeMean
  + Average for Mean Magnitude of body acceleration frequency domain signal. 
  + type: numeric
  + values: -1..1

71. FreqBodyAccelerationMagnitudeStdDeviation
  + Average for Standard Deviation of Magnitude of body acceleration frequency domain signal. 
  + type: numeric
  + values: -1..1

72. FreqBodyAccelerationMagnitudeMeanFreq
  + Average for Mean Frequency of Magnitude of body acceleration frequency domain signal. Mean Frequency is based on weighted averaging.
  + type: numeric
  + values: -1..1