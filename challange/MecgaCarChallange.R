library(dplyr)
MechaCar_mpg<-read_csv("MechaCar_mpg.csv")
head(MechaCar_mpg)
lm(mpg~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar_mpg)
model_summary <- summary(lm(mpg~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar_mpg))
model_summary

#model_summary2 <- summary(lm(mpg~ vehicle_length+ground_clearance, data=MechaCar_mpg))
#model_summary2


suspension_coil_data <- read.csv("Suspension_Coil.csv", check.names = F,stringsAsFactors = F)
head(suspension_coil_data)
library(tidyverse)
suspension_coil_data$PSI <- as.numeric(suspension_coil_data$PSI)

total_summary <- suspension_coil_data %>% summarise(Mean= mean(suspension_coil_data$PSI),
                                                    Median= median(suspension_coil_data$PSI),
                                                    Variance = (sd(suspension_coil_data$PSI))**2,
                                                    SD= sd(suspension_coil_data$PSI),.groups = 'keep')
total_summary

lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot)%>% summarize(Mean= mean(PSI),Median= median(PSI),
            Variance = (sd(PSI))**2,
            SD= sd(PSI),.groups = 'keep')
lot_summary

#t-tests

all_PSI_test <- t.test(suspension_coil_data$PSI, mu=1500)
all_PSI_test

#each lot t-test

lot_1_sample <- suspension_coil_data %>% filter(suspension_coil_data$Manufacturing_Lot=="Lot1")
lot_2_sample <- suspension_coil_data %>% filter(suspension_coil_data$Manufacturing_Lot=="Lot2")
lot_3_sample <- suspension_coil_data %>% filter(suspension_coil_data$Manufacturing_Lot=="Lot3")

lot1_test <- t.test(lot_1_sample$PSI, mu=1500)
lot2_test <- t.test(lot_2_sample$PSI, mu=1500)
lot3_test <- t.test(lot_3_sample$PSI, mu=1500)




