# MechaCar_Statistical_Analysis

## Analysis of manufacturing production data 

The purpose of this analysis is to review the manufacturing production data of AutosRUs newest prototype.  The company is suffering from production troubles that are blocking the manufacturing team’s progress.  Upper management has asked the team to review the manufacturing data and provide insights to help the manufacturing team move forward.

The review will consist of multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, show a summary on the PSI of the suspension coils from the manufacturing lots, and t-tests to determine if the manufacturing lots are statistically different from the mean population.  

## Linear Regression to Predict MPG: 

The prototypes were produced using multiple designs to find the design with the best fit.  After the prototypes were designed, they were tested and information collected on several data points, such as vehicle length, width, spoiler angle, and MPG.  The following information are the results of the linear regression run to predict MPG:

-	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

	Based on the summary, the vehicle length and ground clearance provided a non-random amount of variance   to the MPG values.  The intercept 5.08e-08 shows as statistically significant.  This means it’s         probable there are other variables that may contribute to the variation in MPG that haven’t been         included in the dataset.

-	Is the slope of the linear model considered to be zero? Why or why not?

	The p-value is 5.35e-11 which is much smaller than the .05% (95%) confidence level.  Based on this the   slope is not considered to be zero.

-	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

	The multiple R-squared value is 0.7149 (71%), meaning that approximately 71% of the MPG predictions     will be correct when using the model.  I would consider the model fairly effective at predicting the     MPG.

This image shows the model’s Linear Regression Summary:
![Linear Regression Summary](https://user-images.githubusercontent.com/99366022/175835583-340f7b15-cbc3-44ba-8ad4-082538d88c32.png)
 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 lbs. per square inch.  Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?  Why or why not?

The requirement dictating that the suspension coils to not exceed 100 lbs. per square inch for the all lot total met the design specifications as shown in the table below in variance:

![Total Summary](https://user-images.githubusercontent.com/99366022/175835547-94c1901d-7d2c-49b2-9428-08b7871dd62c.png)

However, when information was broken down into a summary for each lot it shows the requirement was met by lots 1 and 2 but not by lot 3, given the variance.  This can be reviewed in further detail in the table below:

![Lot Summary](https://user-images.githubusercontent.com/99366022/175835543-53277493-4c69-46a3-be8f-94485c330df2.png)


## t-Tests on Suspension Coils

T-tests were conducted on all lots as well as lot 1, lot 2, and lot 3 individually to determine if there is a statistical difference between the mean of sample dataset and the population dataset.  

The null hypothesis is that there is no difference between the sample coil dataset mean and the population dataset mean of 1,500 PSI.  

The alternative hypothesis is there is a statistical difference between the mean of the sample dataset and the mean of the population dataset of 1,500 PSI.

This image shows the population mean PSI t-Test:
![All lots 1500 PSI](https://user-images.githubusercontent.com/99366022/175835504-eec05e53-5310-45da-9f0c-2f0a807a67ee.png)
 
This image shows the Lot 1 sample mean PSI t-Test:
![Lot1 PSI](https://user-images.githubusercontent.com/99366022/175835506-d294b374-cf9a-4628-a7c2-cf4e515cd77b.png)

This image shows the Lot 2 sample mean PSI t-Test:
![Lot2 PSI](https://user-images.githubusercontent.com/99366022/175835511-569616ac-b19f-409f-9f96-70926009b753.png)
 
This image shows the Lot 3 sample mean PSI t-Test:
![Lot3 PSI](https://user-images.githubusercontent.com/99366022/175835513-66b7ad5f-6666-43bc-ad3d-5feecd81df90.png)
 
A review of the p-value for each of the T-test shown above, shows there is not sufficient evidence to reject the null hypothesis.  This means the mean of the sample and population datasets are statistically similar and the sample dataset is a statically representative of the population dataset. 

## Study Design: MechaCar vs. Competition

It would be interesting to conduct a statistical study to quantify how the MechaCar performs against the competition in relation to highway fuel efficiency.  I believe , this information is one of the main factors used by consumers when deciding to purchase a vehicle.

-	What metric or metrics are you going to test?

	The metrics are the type of driving system (2-wheel, 4-wheel, AWD) and Fuel tank capacity. 

-	What is the null hypothesis or alternative hypothesis?

	The null hypothesis is the fuel efficiency mean of all groups are equal.

-	What statistical test would you use to test the hypothesis? And why?

	I would use the ANOVA statistical test to determine if there is a statistical difference between the     distribution means from multiple samples.

-	What data is needed to run the statistical test?

	The MPG and the type of vehicle
