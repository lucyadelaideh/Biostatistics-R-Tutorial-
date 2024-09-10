#section 1-----
Basics: 
2+2
log(42) #Log, not log base 10 
sqrt(16) #squareroot
x = 4
x+3
x = 32
#to make a vector use c()
temperaturef = c(78,85,64,54,102,98.6)
temperaturec = (temperaturef - 32)*5/9
view(temperaturec)
temperaturec
temperaturec[2] #to select specific positions within the vector
mean(temperaturec)
sum(temperaturec)
length(temperaturec)

#setting the working directory 
setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
titanicData<-read.csv("titanic.csv", stringsAsFactors = TRUE) #stringsAsfactors = True asks R to interpret the columns with non-numerical information as "factor" and allows you to have the same categorical variable
titanicData
titanicData$log_age = log(titanicData$age)
head(titanicData)
library(dplyr)
titanicDataFemalesOnly<-filter(titanicData, sex == "female")






