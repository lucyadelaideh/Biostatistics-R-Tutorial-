#problem 1 -----
15*17
13^3
log(14)
log10(100)
sqrt(81)
#problem 2 -----
concentration_ACE_ngperL <- c(640, 1070, 780, 70, 160, 130, 60, 50, 2110, 70, 350, 30, 210, 90, 470, 580, 250, 310, 460, 430, 140, 1070, 130)
mean(concentration_ACE_ngperL)
concentration_ACE_perliter <- (concentration_ACE_ngperL/4000)
concentration_ACE_perliter
mean(concentration_ACE_perliter)
sum(concentration_ACE_perliter)/length(concentration_ACE_perliter)
(mean(concentration_ACE_perliter)*500000)*1000
#problem 3 -----
oxygen_consumption_feeding<- c(71.0, 77.3, 82.6, 96.1, 106.6, 112.8, 121.2, 126.4, 127.5, 143.1)
oxygen_consumption_nonfeeding <- c(42.2, 51.7, 59.8, 66.5, 81.9, 82.0, 81.3, 81.3, 96.0, 104.1)
length(oxygen_consumption_feeding)
length(oxygen_consumption_nonfeeding)
MetabolismDifference<-(oxygen_consumption_feeding)-(oxygen_consumption_nonfeeding)
mean(MetabolismDifference)
Ratio_Oxygen_Consumption <- c(oxygen_consumption_feeding/oxygen_consumption_nonfeeding)
LogRatio_Oxygen_Consumption <- c(log(Ratio_Oxygen_Consumption))
mean(LogRatio_Oxygen_Consumption)
#problem 4 ------
setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
countries <- read.csv("countries.csv")
library(dplyr)
summary(countries)
head(countries)
countriesAfricaonly <- filter(countries, continent == "Africa")
length(countriesAfricaonly)
summary(countries$continent)
names(countries) #to see column names
countries$difference = (countries$ecological_footprint_2000)-(countries$ecological_footprint_2012) 
head(countries)
mean(countries$difference, na.rm = TRUE) 
#problem 5 ------
AfricaData <- countriesAfricaonly
sum(AfricaData$total_population_in_thousands_2015)


