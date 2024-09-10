#Confidence interval for a proportion
install.packages("binom", dependencies = TRUE)
library(binom)
setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
#need to use a function called binom.confint(), 
  #Need to specify: x: number of successes 
  # n: the total sample size 

#Example: 87 data points and 30 of them are successes. Finding the 95% confidence interval: 
binom.confint(x=30, n=87, method = "ac")


#Conducting a binom.test() 
binom.test(x=14, n=18, p=.5)
binom.test(x=3,n=100, p=.1666)

#X2 goodness of fit test 
MMlist <- read.csv("MandMlist.csv", stringsAsFactors = TRUE)

#Table summarizes frequency data 
MMtable <- table(MMlist$color)
MMtable
Expected_proportions <- c(.24,.14,.16,.20,.13,.13)
sum(MMtable)
55* Expected_proportions

chisq.test(MMtable, p = Expected_proportions)

extinctData <- read.csv("MassExtinctions.csv", stringsAsFactors = TRUE)
number_of_extinctions <-extinctData$numberOfExtinctions
number_of_extinctions
mean(number_of_extinctions)
#calculates teh prob of a given value under the poisson distribution 
dpois() 

#the prob of getting exactly 3 successes from a Poisson distribution with a mean of 4.21 is 18.5%
dpois(x = 3, lambda = 4.21)
#can create a vector with the Poisson probabilities of each possibility from 0-20: 
Expected_probability <- dpois(x = 0:20, lambda = 4.21)
Expected_probability
#Need to convert these prob into expected values by multiplying them by the total sample size
length(number_of_extinctions) * Expected_probability
expected_combined <- c(5.87, 9.99, 14.032, 14.768, 12.435, 8.725,5.24, 4.91)
observed_combined <- c(13,15,16,7,10,4,2,9)
#to calculate chisq
chisq.test(observed_combined, p = expected_combined, rescale.p = TRUE)$statistic
#to calculate p-value 
pchisq(q=23.97144, df = 6, lower.tail = FALSE)
