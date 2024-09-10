setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
caffeine <- read.csv("caffeine.csv", stringsAsFactors = TRUE)
head(caffeine)
#Probem 1------
mean(caffeine$caffeine_mg_16oz, na.rm=TRUE)
t.test(caffeine$caffeine_mg_16oz, conf.level = .95)$conf.int
library(ggplot2)
ggplot(caffeine, aes(x=caffeine_mg_16oz)) + geom_histogram()
sd(caffeine$caffeine_mg_16oz, na.rm = TRUE)
100*(sd(caffeine$caffeine_mg_16oz, na.rm = TRUE)/mean(caffeine$caffeine_mg_16oz, na.rm = TRUE))
#to find standard error subtract the mean from the upper bound of the confidence interval and divide by 2 
(208.6049-188.0643)/2
caffeinestarbucks<-read.csv("caffeineStarbucks.csv", stringsAsFactors = TRUE)
mean(caffeinestarbucks$caffeine_mg_16oz, na.rm = TRUE)
t.test(caffeinestarbucks$caffeine_mg_16oz, conf.level = .95)$conf.int

#Problem 2-----
t.test(caffeine$caffeine_mg_16oz, conf.level = .99)$conf.int
#to get quantiles 
quantile(caffeine$caffeine_mg_16oz, c(0.025, 0.975), na.rm =TRUE)

#problem 3 -----

countries<-read.csv("countries.csv", stringsAsFactors = TRUE)
ggplot(countries, aes(x=ecological_footprint_2000)) +geom_histogram()
ggplot(countries, aes(x=cell_phone_subscriptions_per_100_people_2012)) +geom_histogram(bins=10)
ggplot(countries, aes(x=life_expectancy_at_birth_female)) +geom_histogram(bins=20)
mean(countries$ecological_footprint_2000, na.rm = TRUE)
median(countries$ecological_footprint_2000, na.rm = TRUE)
mean(countries$cell_phone_subscriptions_per_100_people_2012, na.rm = TRUE)
median(countries$cell_phone_subscriptions_per_100_people_2012, na.rm = TRUE)
mean(countries$life_expectancy_at_birth_female, na.rm = TRUE)
median(countries$life_expectancy_at_birth_female, na.rm = TRUE)
