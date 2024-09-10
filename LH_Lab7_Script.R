normal_vector <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector
hist(normal_vector)
qqnorm(normal_vector)
qqline(normal_vector)
#repeat 12 times 
normal_vector1 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector1
hist(normal_vector1)
qqnorm(normal_vector1)
qqline(normal_vector1)

normal_vector2 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector2
hist(normal_vector2)
qqnorm(normal_vector2)
qqline(normal_vector2)

normal_vector3 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector3
hist(normal_vector3)
qqnorm(normal_vector3)
qqline(normal_vector3)

normal_vector4 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector4
hist(normal_vector4)
qqnorm(normal_vector4)
qqline(normal_vector4)

normal_vector5 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector5
hist(normal_vector5)
qqnorm(normal_vector5)
qqline(normal_vector5)

normal_vector6 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector6
hist(normal_vector6)
qqnorm(normal_vector6)
qqline(normal_vector6)


normal_vector7 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector7
hist(normal_vector7)
qqnorm(normal_vector7)
qqline(normal_vector7)

normal_vector8 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector8
hist(normal_vector8)
qqnorm(normal_vector8)
qqline(normal_vector8)

normal_vector9 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector9
hist(normal_vector9)
qqnorm(normal_vector9)
qqline(normal_vector9)

normal_vector10 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector10
hist(normal_vector10)
qqnorm(normal_vector10)
qqline(normal_vector10)


normal_vector11 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector11
hist(normal_vector11)
qqnorm(normal_vector11)
qqline(normal_vector11)

normal_vector12 <- rnorm(n = 10, mean = 15, sd = 3)
normal_vector12
hist(normal_vector12)
qqnorm(normal_vector12)
qqline(normal_vector12)

#2
vector_large <- rnorm(n = 250, mean = 15, sd = 3)
vector_large
hist(vector_large)
qqnorm(vector_large)
qqline(vector_large)

#3
bumpusdata <- read.csv("bumpus.csv", stringsAsFactors = TRUE)
bumpusdata$total_length_mm
ggplot(bumpusdata, aes(x=total_length_mm))+geom_histogram(binwidth = 1)
hist(bumpusdata$total_length_mm)
ggplot(titanicdata, aes(x=age))+geom_histogram(binwidth=10)

qqnorm(bumpusdata$total_length_mm)
qqline(bumpusdata$total_length_mm)

mean(bumpusdata$total_length_mm)
library(dplyr)
t.test(bumpusdata$total_length_mm)

#4 
mammals <- read.csv("mammals.csv", stringsAsFactors = TRUE)
hist(mammals$body_mass_kg)
log_mammals <- log(mammals$body_mass_kg)
hist(log_mammals)
qqnorm(log_mammals)
qqline(log_mammals)
