
#################################################################

## R objects
10

10 + 5 - 5 * 2

x <- c(2, 4, 6)

x / 2

## R functions
mean(x)

sum(x)


#################################################################

## open data in excel

## read data into R
x <- read.csv("../data/practice-data.csv")

## view data in R
View(x)

## print first 6 rows in R
head(x)

## create copy of x data
data <- x

## summarize data
summary(data)

## R packages

## install new packages
install.packages("psych")

## load package
library(psych)

## use package function to summarise data
describe(data)

## 
