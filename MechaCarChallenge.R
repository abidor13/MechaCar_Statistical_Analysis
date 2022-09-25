# Deliverable 1

# Download dplyr library:
library(dplyr)
# Import & Read CSV file:
mechachar <- read.csv(file="MechaCar_mpg.csv")
# Perform linear regression:
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechachar )
# Determine p-value 
summary(reg)
# Determine r-squared value
summary(reg)$r.squared

# Deliverable 2:

# Import & Read CSV file:
suspensioncoil <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors = F)
# Create a total_summary dataframe using the summarize() function:
total_summary <- summarize(suspensioncoil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Create a lot_summary dataframe using the group_by() and the summarize() function:
lot_summary <- suspensioncoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# Deliverable 3:

# Use t.test() to determine if PSI is different in manufacturing lots:
t.test(suspensioncoil$PSI, mu=1500)
# Write three more RScripts to determine if the PSI per lot is different from the population mean of 1,500 PSI

PSIlot1 <- subset(suspensioncoil, Manufacturing_Lot =="Lot1")
PSIlot2 <- subset(suspensioncoil, Manufacturing_Lot =="Lot2")
PSIlot3 <- subset(suspensioncoil, Manufacturing_Lot =="Lot3")


t.test(PSIlot1$PSI, mu=1500)
t.test(PSIlot2$PSI, mu=1500)
t.test(PSIlot3$PSI, mu=1500)
