## Linear Regression to Predict MPG ##

# load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg)

# linear regression model using lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=mechacar_mpg)

# summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=mechacar_mpg))

## Summary Statistics on Suspension Coils ##

# import csv and read as a table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(Suspension_Coil)
#stat summary with summarize()
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI),
                                               Median = median(PSI), 
                                               Variance = var(PSI), 
                                               SD = sd(PSI), 
                                               .groups = 'keep')
# stat summary with group_by()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI), 
                                                                             Variance = var(PSI), 
                                                                             SD = sd(PSI) , 
                                                                             .groups = 'keep') 

## T-Tests on Suspension Coils ##

# Population mu = 1,500 per square inch
t.test(Suspension_Coil$PSI, mu=1500)

#t-test for lot 1-3
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
