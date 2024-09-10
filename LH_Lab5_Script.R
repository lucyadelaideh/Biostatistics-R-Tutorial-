library(binom)
setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
binom.confint(x=6, n=510,  method = "ac")
binom.confint(x=0, n=300,  method = "ac")
#2 
Stockings <- read.csv("stockings.csv", stringsAsFactors = TRUE)
StockingsTable <- table(Stockings$choice)
StockingsTable
6/52
9/52
16/52
21/52


stockings_choice <- c(0.1153846,0.1730769,0.3076923,0.4038462)
chisq.test(StockingsTable, p = stockings_choice)
chisq.test(x = c(6,9,16,21), p = c(0.1153846,0.1730769,0.3076923,0.4038462))

#3
read.csv("soccer_birth_quarter.csv", stringsAsFactors = TRUE)
soccer_birth <- read.csv("soccer_birth_quarter.csv", stringsAsFactors = TRUE)
library(ggplot2)
ggplot(data = soccer_birth, mapping = aes(x=birth_quarter))+geom_bar()
Observedtable <-table(soccer_birth$birth_quarter)
Observedtable
sum(Observedtable)
135/288
37/288
22/288
94/288
observeddata<-c(.46875,.1284722,.07638889,.3263889)
canadian_birth <- read.csv("Canadian_births.csv", stringsAsFactors = TRUE)
canadian_birth
ggplot(data = canadian_birth, mapping = aes(x=month, y=canada_births_proportion))+geom_col()
Birthtable <- table(canadian_birth$canada_births_proportion)
canadian_birth
sum(.0865,.0863,.0780)
sum(.0757,.0860,.0847)
sum(.0880,.0854,.0881)
sum(.0776,.0780,.0804)
Expected_proportions_canada <- c(0.2508,.246,0.2615,0.236)
chisq.test(observeddata, p = Expected_proportions_canada, rescale.p = TRUE)$statistic

#4: 

cardiac_arrests <- read.csv("cardiac arrests out of hospital.csv")
cardiac_arrests
Cardiactable <- table(cardiac_arrests$out_of_hospital_cardiac_arrests)
Cardiactable
mean(cardiac_arrests$out_of_hospital_cardiac_arrests)
(dpois(x= 0, lambda = 2.015326))*261

Expectedcardiac <- c(34.785295,70.103698,70.640891,47.454800,23.909219,9.636973,4.469124)
observedcardiac <- c(36, 79, 60, 41, 28, 10,  7 )
chisq.test(observedcardiac, p = Expectedcardiac, rescale.p = TRUE)$statistic
pchisq(q=5.799068, df = 6, lower.tail = FALSE)
