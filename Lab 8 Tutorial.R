setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
titanicdata <- read.csv("titanic.csv", stringsAsFactors = TRUE)
library(ggplot2)
library(car)
#to make a strip chart:
titanic_strip <- ggplot(titanicdata, aes(x=survive, y=age)) + geom_jitter(position = position_jitter(.05)) + theme_minimal()
titanic_strip
#to make multiple histograms, facet_wrap: tells R whcih variable to used to seperate teh data into different plots
ggplot(titanicdata, aes(x=age))+ geom_histogram()+ facet_wrap(~survive, ncol = 1) + stat_bin(bins = 30)
#to make Violin plot: 
ggplot(titanicdata, aes(x=survive, y=age, fill= survive))+ geom_violin() + xlab("Survival") + ylab("Age")+ 
  theme_classic() + scale_fill_manual(values = c("#FFB531", "#BC211A"))+
  stat_summary(fun.y = mean, geom = "point", color = "black") +
  theme(legend.position = "none")+
  theme(aspect.ratio = 1)
#Two sample t-test
t.test(age~survive, data = titanicdata, var.equal = TRUE)
#Welch's t-test done when assumption of equal variance is not met 
t.test(age~survive, data = titanicdata, var.equal = FALSE)
#paired t-test
blackbird <- read.csv("chap12e2BlackbirdTestosterone.csv", stringsAsFactors = TRUE)
t.test(blackbird$logAfterImplant, blackbird$logBeforeImplant, paired = TRUE)
#to compare variances between two different groups use a levene test: 
# levene test uses the package car 
library(car)
leveneTest(data=titanicdata, age~survive, center = mean)





