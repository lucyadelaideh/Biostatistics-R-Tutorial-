setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
titanicdata <- read.csv("titanic.csv", stringsAsFactors = TRUE)
library(ggplot2)
ggplot(titanicdata, aes(x=age))+geom_histogram(binwidth=10)
#To easily create a histogram to visualize data
hist(titanicdata$age)
#to create a QQ (Quantile) plot which allows us to visualize whether data is normally distributed 
qqnorm(titanicdata$age)
qqline(titanicdata$age)
#to help us visualize use r(norm)
rnorm(n=20, mean= 13, sd =4)
normal_vector <- rnorm(n=100, mean= 13, sd =4)
qqnorm(normal_vector)
qqline(normal_vector)
#can transform teh data to make it a normal distribution 
log(titanicdata$age)
