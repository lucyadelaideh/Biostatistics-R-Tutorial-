setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/Labs/Lab 4-20240214")
species_data <- read.csv("species_data.csv")
sample1 <- read.csv("sample1.csv")
mean(species_data$Lion_weights)
mean(sample1$sample1weights)
#To sample randomly use the function: sample.int()
sample.int(n=25, size = 5 )
sample2<- read.csv("sample2.csv")
mean(sample2$sample2weights)
sample3 <- read.csv("sample3.csv")
mean(sample3$sample3weights)
# to get samples from your data use: 
    #mean_from_a_sample <- function(datalist,sample_size) {
    #population_size = length(datalist)  # Establish the size of the "population"
    #sample_numbers = sample.int(population_size,sample_size)  # chooses which individuals to sample
    #sample_values = datalist[sample_numbers]  # Looks up the values for those individuals in the data
    #sample_mean = mean(sample_values,na.rm=TRUE)   # Calculates the mean of those sampled individuals
    #sample_mean}

mean_from_a_sample <- function(datalist,sample_size) {
  population_size = length(datalist)  # Establish the size of the "population"
  sample_numbers = sample.int(population_size,sample_size)  # chooses which individuals to sample
  sample_values = datalist[sample_numbers]  # Looks up the values for those individuals in the data
  sample_mean = mean(sample_values,na.rm=TRUE)   # Calculates the mean of those sampled individuals
  sample_mean
}
#call this function by typing: mean_from_a_sample(population_data$weight, sample_size  = 5)

mean_from_a_sample(species_data$Lion_weights, sample_size = 5)

#to make a vector for 1000 random samples called "Sample_mean_weight": 

sample_mean_weight = rep(0,1000)
for(i in 1:1000) sample_mean_weight[i] = 
  mean_from_a_sample(species_data$Lion_weights,5)

summary(sample_mean_weight)
head(sample_mean_weight)
#Next we want to plot the data in a histogram, in order to do this we need to create a data frame. To do this use: data.frame(meanweight=sample_mean_weight))
samples = data.frame(meanweight=sample_mean_weight)

library(ggplot2)
ggplot(samples, aes(x=meanweight)) + geom_histogram(bins=40, fill = "blue",color = "black")  
mean(samples$meanweight)
classsamples<- read.csv("classsamples.csv")
first_sample_error <- (classsamples$population)-(classsamples$Class_samples)
mean(first_sample_error)

ggplot(classsamples, aes(x=Class_samples)) +geom_histogram(bins=40, fill = "blue",color = "black")  

