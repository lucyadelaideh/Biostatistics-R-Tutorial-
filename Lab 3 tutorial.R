setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
titanicdata <- read.csv("titanic.csv", stringsAsFactors = TRUE)
titanicdata$age
#to get the mean in a data set where lots of numbers are missing include na.rm = TRUE
mean(titanicdata$age, na.rm = TRUE)
#na.rm=TRUE can be added to other functions such as median 
median(titanicdata$age, na.rm = TRUE)
summary(titanicdata$age)
#to get the variance use var()
var(titanicdata$age, na.rm=TRUE)
sd(titanicdata$age, na.rm=TRUE)
#to get the coefficient of variation do SD/mean *100
100*sd(titanicdata$age, na.rm = TRUE)/mean(titanicdata$age, na.rm = TRUE)
#to get IQR use: 
IQR(titanicdata$age, na.rm = TRUE)
#CONFIDENCE INTERVALS
t.test(titanicdata$age)$conf.int
t.test(titanicdata$age, conf.level = .99)$conf.int
