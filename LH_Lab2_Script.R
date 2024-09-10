setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
#problem 2 -----
countriesdata <- read.csv("countries.csv")
library(ggplot2)
#problem 2C
ggplot(countriesdata, aes(x=measles_immunization_oneyearolds)) + geom_histogram(bins = 15)+ labs(x="Measles Immunizations in One Year Olds", y= "Frequency of Immunization" , title = "Measles Immunizations") + theme_classic()
#problem 2D
head(countriesdata)
ggplot(countriesdata, aes(x=continent)) + geom_bar(stat = "count") + labs(x="Continent", y= "Number of Countries" , title = "Countries per Continent") + theme_classic()
#problem 2E
ggplot(countriesdata,aes(x=life_expectancy_at_birth_male , y = life_expectancy_at_birth_female)) + geom_point()+ labs(x="Male Life Expectancy At Birth", y= "Female Life Expectancy at Birth" , title = "Life Expectancy At Birth Per Sex ") + theme_classic()
#Problem 3 -----
ggplot(countriesdata,aes(x= ecological_footprint_2000 , y = ecological_footprint_2012)) + geom_point() + geom_abline(intercept = 0, slope = 1) + labs(x="2000 Ecological Footprint", y= "2012 Ecological Footprint" , title = "Ecological Footprint Comparison") + theme_classic() 
#Problem 4-----
head(countriesdata)
ggplot(countriesdata, aes(x=continent, y=life_expectancy_at_birth_female)) + geom_boxplot() + labs(x="Continent", y= "Female Life Expectancy at Birth" , title = "Life Expectancy at Birth Per Continent") + theme_classic()
#problem 5 ----
bat_tongues <- read.csv("BatTongues.csv")
summary(bat_tongues)
ggplot(bat_tongues,aes(x= palate_length , y = tongue_length)) + geom_point() + labs(x="Palate Length", y= "Tongue Length" , title = "Bat Tongue and Palate Length") + theme_classic()
library(dplyr)
filter(bat_tongues,tongue_length>80) #following command will pull out the rows of the data frame bat_tongues that have tongue_length greater than 80 mm
#Problem 6 ------
library(ggplot2)
titanicdata <- read.csv("titanic.csv", stringsAsFactors = TRUE)
head(titanicdata)
ggplot(titanicdata, aes(x=survive, y=age, color=survive)) +geom_boxplot(fill = "purple", colour = "black") + labs(x="Survival", y = "Age at Time of Death", title = "Titanic Deaths by Age") + theme_classic() 
summary(titanicdata)

