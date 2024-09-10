setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
#1
bumpusdata <- read.csv("bumpus.csv")
bumpusdata
ggplot(bumpusdata, aes(x=weight_g))+ geom_histogram()+ facet_wrap(~survival, ncol = 1) + stat_bin(bins = 30)
t.test(weight_g~survival, data = bumpusdata, var.equal = FALSE)
library(car)
leveneTest(data=bumpusdata, weight_g~survival, center = mean)
#2
countriesdata <- read.csv("countries.csv", stringsAsFactors = TRUE)
countriesdifference <- ((countriesdata$ecological_footprint_2012)-(countriesdata$ecological_footprint_2000))
hist(countriesdifference)
countriesdifference
t.test(countriesdata$ecological_footprint_2012, countriesdata$ecological_footprint_2000, paired = TRUE)
#3
shavingdata <- read.csv("leg shaving.csv", stringsAsFactors = TRUE)
t.test(shavingdata$hair_width_change_test, shavingdata$hair_width_change_control, data=shavingdata, paired = TRUE)
