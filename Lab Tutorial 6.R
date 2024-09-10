setwd("/Users/lucyhensley/Documents/Bates 2023-24/Biostats/ABDLabs/DataForLabs")
titanicData <-read.csv("titanic.csv", stringsAsFactors = TRUE)
levels(titanicData$survive)
#to change the order of no and yes use factor(levels = c(""))
titanicData$survive <- factor(titanicData$survive, levels = c("yes", "no"))
levels(titanicData$survive)
sex_survive_table <- table(titanicData$sex, titanicData$survive)
sex_survive_table
#to create a data table directly from the counts: 
sex_survive_table_direct <- data.frame(yes = c(307, 142), no = c(156, 708), row.names = c("female","male"))
#To create a mosaic plot
mosaicplot(sex_survive_table)
#to change the color of the mosaic plot: include ,color = c("Red", etc), xlab = "", ylab = ""
mosaicplot(sex_survive_table, color = c("darkred", "gold"), xlab = "Sex", ylab = "Survival")

#to measure the strength of the association between two categorical variables: us eteh odds ratio
sex_survive_fisher <- fisher.test(sex_survive_table)
sex_survive_fisher$estimate
#the fisher.test function also can give you other info like the confidence interval
sex_survive_fisher$conf.int
# chi-squared test: x2 
chisq.test(sex_survive_table)$expected
# since all of teh expected values are over 5, add correct = FALSE to tell R to not do a Yate's correction which is overly conservative and only appropriate if your expected values don't meet the assumptions of a chi-square test
chisq.test(sex_survive_table, correct = FALSE)
# For more exact for testing independence of two categorical variables use: "FISHER's exaxt test
fisher.test(sex_survive_table)
