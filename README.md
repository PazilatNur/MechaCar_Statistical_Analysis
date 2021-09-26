# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Based on the Pr(>|t|) value from the summary:

vehilcle length, ground_clearance as well as intercept are statistically unlikely to provide random amounts of variance to the linear model. 


2. Is the slope of the linear model considered to be zero? Why or why not?

It's not zero.
Beacuse the p-value: 5.35e-11 is significantly smaller than 0.05%, hence we need to reject our null hypothesis that slope equal to zero. 


3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

I believe it is. R-squared: is 0.7149. 

This means that over 70% of variability of our dependent variable is explianed by this model. 


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- Given the manufactuer's spac: product must not exceeded 100 pounds per square inch. Summary of total PSI gives us 62.3 variance, which is within our tolerance. 

- total lots product falls in between 1482.92 and 1514.32 

- Lot 1 and Lot 2 products meet the expectation, given variance below 100. Both lots products falls in between 2 stdv of population mean

- Lot 3 variance is too big, this exceed the tolerance amount of specification. 

## T-Tests on Suspension Coils

1. All lots PSI compare to population mean of 1500

-  p-value = 0.06028

Our Null Hypothes is the mean of all lots is equal to population mean of 1500. Our p-value is higher than our threashold of 0.05, hence we are fail to reject this null hypothsis. This means that all lots mean are almost the same as population, and there is no significant difference. 

Each Lots samples comparison to population mean:

- lOT 1 and 2 p-values are significantly higher than our threashold of significance level of 0.05. Lot1 p-value is 1.0 and Lot2 p-value is 0.6.
Hence we are fail to reject this null hypothsis. This means that both lots mean are almost the same as population, and there is no significant difference from our population. These 2 lots product meet expectation.

- However, Lot3 p-value of 0.04 is lower than our significance level of 0.05. This means that we have to reject our hypothesis of there is no difference between sample and population mean. This indicates that Lot3 product mean has difference from population mean, so there are could be defects. 


## Study Design: MechaCar vs Competition

1. What metric or metrics are you going to test?
2. What is the null hypothesis or alternative hypothesis?
3. What statistical test would you use to test the hypothesis? And why?
4. What data is needed to run the statistical test?

Metrics that are interest to consumers: cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. 

Compare performance of MechaCar to competitors. 

- Test safety rating between MechaCar and one of the main competitors A. 
- Our Null hypothesis is that there is no significant difference between Mechacar safety rating and the competitor A's same type of cars' safety rating. 
- I would choose two-sample T-test to conduct this analysis. two-sample t-test allows us to compare two samples each from a different population. In this case, population 1 is MechaCar and population 2 is competitor A. 
- We need to collect both MechaCar and competitor A's car safety ratings numeric data. And, the sample data of both parties should be randomly selected large sample size and considered as normally distributed.
- Set our significant threshold at 0.05. If our test result p-value is significantly lower than the threashole we set, then there is a significant difference between 2 types sample safety rating means. Based on the means of each sample result, determind if there is a need for further investigation of the Mechacar safety measurements.  





