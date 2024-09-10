library(ggplot2)
setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
titanicdata <- read.csv("titanic.csv", stringsAsFactors = TRUE)
#Histogram------
#aes() determines variables 
ggplot(titanicdata, aes(x=age)) + geom_histogram(bins = 10)
#to change bin size bins = x within the geom_histogram() function
#BarGraph----
ggplot(titanicdata, aes(x=sex)) + geom_bar(stat = "count")
#Boxplots-----
ggplot(titanicdata, aes(x=sex, y = age)) +geom_boxplot()
#Scatterplots -----
guppyfathersondata <- read.csv("chap02e3bGuppyFatherSonAttractiveness.csv")
ggplot(guppyfathersondata,aes(x=fatherOrnamentation, y = sonAttractiveness)) + geom_point()
#to change the labels on the x and y axis to better names
#to change theme to not have gray background add + theme_classic 
ggplot(guppyfathersondata,aes(x=fatherOrnamentation, y = sonAttractiveness)) + geom_point() + xlab("Father's ornamentation") + ylab("Son's Attractiveness") + theme_classic()
