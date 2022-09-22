# MechaCar_Statistical_Analysis-

## Linear Regression to Predict MPG
![LinearRegress](https://github.com/Aceofhearts1/MechaCar_Statistical_Analysis-/blob/main/Images/Linear_Regression.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
   - **Vehicle Length and Ground Clearance** provided a non-random amount of variance as determined by their extremely small p-values. Significantly under .05. 2.6x10<sup>-12</sup> and 5.21x10<sup>-8</sup> as seen with the green highlight and Top two black arrows.

2. Is the slope of the linear model considered to be zero? Why or why not?
   - The slope is not considered 0. The  ***p-Value = 5.35x10<sup>-11</sup>*** Shown with the purple highlight and third arrow on the right side. That is enough to reject our null hypothesis. Significantly under .05% The coefficiants are not zero however close they may be.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
   - The ```r-squared value = 0.7149``` which tells us that this model does predict the mpg of MechaCar prototypes effectively. The model is 71.5% accurate. I like higher numbers but that is not bad.

## Summary Statistics on Suspension Coils

![sum1](https://github.com/Aceofhearts1/MechaCar_Statistical_Analysis-/blob/main/Images/Summary_Statistics1.png)

![sum2](https://github.com/Aceofhearts1/MechaCar_Statistical_Analysis-/blob/main/Images/Summary_Statistics2.png)

1. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
   - The total variance is fine. 62 is under 100. Lot 1 and 2 are fine with a variance of 1 and 7.5 rounded. However, when we look at lot 3, we a large variance over 100. Lot 3 has a ```variance of 170!``` It does not meet the design specifications.

## T-Tests on Suspension Coils

![t-test](https://github.com/Aceofhearts1/MechaCar_Statistical_Analysis-/blob/main/Images/T-Test.png)

###summary

- Total t-test results show a p-value of .06. That is higher than .05. We ***cannot reject the null hypothesis***
- ```T-test 1:``` the p-value is 1 so we ***cannot reject the null hypothesis***
- ```T-test 2:``` the p-value is .607 so we ***cannot reject the null hypothesis***
- ```T-test 3:``` the p-value is .04168 so we ***can reject the null hypothesis*** and the mean is slightly different than the population mean. T-test Lot 3 needs further investigation.

## Study Design: MechaCar vs Competition

A big topic for cars right now are how high gas prices are as well as prices in general. So in a world where everyone is watching their money, we need to see which car is giving the most bang for its buck.

- Value
- Resale Value
- MPG
- Safety

### Hypothesis:
- ***Null Hypothesis:*** MechaCar is priced favorably for what each car offers
- ***Alternative Hypothesis:*** MechaCar is not priced favorably for what each car offers

### Statistical Test Needed:
- ```Multiple Linear Regression``` because we want to show the correlation between multiple categories

### Data Needed:

- Value and Competition Value
- Resale Value and Competition Resale Value
- MPG and Competition MPG
- Safety Ratings and Competition Safety Ratings
