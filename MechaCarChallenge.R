# Adding libraries
library(dplyr)

# ---------------Deliverable 1 ---------------

# Read the file
mc_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors = FALSE)

# Create linear regression using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mc_mpg)

# Create a summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mc_mpg))

# ---------------Deliverable 2 ---------------

# Read the file
sc <- read.csv('Suspension_Coil.csv', check.names = FALSE, stringsAsFactors = FALSE)

# Create total_summary dataframe using summarized() function to get
# the mean, median, variance, and standard deviation of PSI
total_summary <- sc %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")

# Create a lot_summary dataframe using group_by() and summarize() 
# functions to group each manufacturing lot by the mean, median, 
# variance, and stdDev of PSI
lot_summary <- sc %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")

# ---------------Deliverable 3 ---------------

# Run t.test() function to determine if the PSI across manufacturing
# lots is statistically different from the pop mean of 1,500 PSI
t.test(sc$PSI,mu = 1500)

# Run t.test() function on Lot 1
t.test(subset(sc, Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Run t.test() function on Lot 2
t.test(subset(sc, Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Run t.test() function on Lot 3
t.test(subset(sc, Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
