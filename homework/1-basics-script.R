## read data into R
data <- read.csv("practice-data.csv")

## print first 6 rows in R
head(data)

## change the names all lower case
names(data) <- toupper(names(data))

## get a summary of the data
summary(data)

## TURN IN THE FOLLOWING

## 1. What are the names of the variables in data? (copy and paste output into Canvas assignment submission link)
names(data)

## 2. How many rows and columns are in data (copy and paste output and include in Canvas assignment submission)?
nrow(data)
ncol(data)
