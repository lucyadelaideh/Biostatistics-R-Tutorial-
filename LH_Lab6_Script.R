setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
#1
oswego <- read.csv("oswego.csv", stringsAsFactors = TRUE)
levels(oswego$ill)
oswego$ill <- factor(oswego$ill, levels = c("Healthy", "Sick"))
levels(oswego$ill)
oswego$baked_ham <- factor(oswego$ill, levels = c("Y", "N"))
levels(oswego$baked_ham)
oswego$spinach <- factor(oswego$ill, levels = c("Y", "N"))
oswego$mashed_potato <- factor(oswego$ill, levels = c("Y", "N"))
oswego$cabbage_salad <- factor(oswego$ill, levels = c("Y", "N"))
oswego$jello <- factor(oswego$ill, levels = c("Y", "N"))
oswego$rolls <- factor(oswego$ill, levels = c("Y", "N"))
oswego$brown_bread <- factor(oswego$ill, levels = c("Y", "N"))
oswego$milk <- factor(oswego$ill, levels = c("Y", "N"))
oswego$coffee <- factor(oswego$ill, levels = c("Y", "N"))
oswego$water <- factor(oswego$ill, levels = c("Y", "N"))
oswego$cakes <- factor(oswego$ill, levels = c("Y", "N"))
oswego$vanilla_ice_cream <- factor(oswego$ill, levels = c("Y", "N"))
oswego$chocolate_ice_cream <- factor(oswego$ill, levels = c("Y", "N"))
oswego$fruit_salad <- factor(oswego$ill, levels = c("Y", "N"))
oswego <- read.csv("oswego.csv", stringsAsFactors = TRUE)
fruitsalad_ill <- table(oswego$ill, oswego$fruit_salad)
fruitsalad_ill
fruitsalad_direct <- data.frame(Y = c(2, 4), N = c(27, 42), row.names = c("Healthy","Sick"))
fruitsalad_direct
chisq.test(fruitsalad_ill)$expected
VIC_Sick
Spinach_Sick <- table(oswego$ill, oswego$spinach)
Ham_Sick <- table(oswego$ill, oswego$baked_ham)
VIC_Sick <- table(oswego$ill, oswego$vanilla_ice_cream)

CIC_Sick <- table(oswego$ill, oswego$chocolate_ice_cream)

fisher.test(fruitsalad_ill)
fisher.test(Spinach_Sick)
fisher.test(VIC_Sick)
fisher.test(CIC_Sick)
CIC_Sick

mosaicplot(CIC_Sick)
mosaicplot(CIC_Sick, color = c("blue", "green"), xlab = "Health Status", ylab = "Ate Vanilla Ice Cream")

#2

setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
shufflebottoms <- read.csv("shufflebottoms.csv")

shufflebottoms_table <- table(shufflebottoms$movement_type, shufflebottoms$name)
shufflebottoms_table

fisher.test(shufflebottoms_table)
mean(shufflebottoms_table)

chisq.test(shufflebottoms_table)$expected
chisq.test(shufflebottoms_table, correct = FALSE)

#3

stoppingfalls <- read.csv("stopping_falls.csv")
stoppingfalls_table <- table(stoppingfalls$stopped_to_talk, stoppingfalls$fall)
stoppingfalls_table
mosaicplot(stoppingfalls_table, color = c("lightblue", "turquoise"), xlab = "Stopped to Talk", ylab = "Falling Status")

fisher.test(stoppingfalls_table)
chisq.test(stoppingfalls_table)$expected
chisq.test(stoppingfalls_table, Correct = FALSE)

#4
tCountTable <- data.frame(Common = c (19, 10), Uncommon = c(35, 31), row.names = c("Found", "Not found"))
fisher.test(tCountTable)
chisq.test(tCountTable)$expected
chisq.test(tCountTable, correct = FALSE)
