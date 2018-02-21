R basics/Homework \#1
================
JOURN 8006

Values
------

Values are data points. In the R environment, there are multiple types (classes) of values. To combine multiple values of the same class together, use the `c()` function. When values of different classes are combined together, they are coerced into the least restrictive class (so combining a numeric value with a character value will result in a character vector).

### Numeric class

Numeric, or floating point, values are **numeric** (the class) objects.

``` r
## numeric value
3.1
> [1] 3.1

## numeric values
c(2000, 0.25, -1.5, 3, -.8, -2001)
> [1]  2000.00     0.25    -1.50     3.00    -0.80 -2001.00

## store numeric values as object "x"
x <- c(2000, 0.25, -1.5, 3, -.8, -2001)

## length of x
length(x)
> [1] 6

## class of x
class(x)
> [1] "numeric"
```

### Integer class

Integer, or whole number, values are **integer** (the class) objects. R assumes whole numbers are numeric unless you explicitly specify them as integer. To indicate a whole number should be treated as an integer, append the value(s) with an `L`.

``` r
## integer value
3L
> [1] 3

## integer values
c(-1L, 2L, 10L)
> [1] -1  2 10

## store integer values as object "x"
x <- c(-1L, 2L, 10L)

## length of x
length(x)
> [1] 3

## class of x
class(x)
> [1] "integer"
```

### Character class

Character, or text, values are **character** (the class) objects.

``` r
## character value
"a string of text"
> [1] "a string of text"

## character values
c("two or more text strings", "makes a character vector")
> [1] "two or more text strings" "makes a character vector"

## store character values as object "x"
x <- c("two or more text strings", "makes a character vector")

## length of x
length(x)
> [1] 2

## class of x
class(x)
> [1] "character"
```

### Factor class

Factor, or text with specified/finite levels, values are **factor** (the class) objects. The difference between characters and factors is that factor values are finite. In other words, factors are like character vectors but with only values limited to a set of a known **levels**. A vector of responses to a likert-type item (i.e., `strongly agree`, `agree`, `neither agree nor disagree`, `disagree`, `strongly agree`) would typically be treated as a factor. A vector of responses to an open-ended question would typcially be treated as a character.

``` r
## 3 factor values (a b c) stored as object "x"
x <- factor(c("a", "b", "c"), levels = letters)

## printing a factor should reveal it's levels
x
> [1] a b c
> Levels: a b c d e f g h i j k l m n o p q r s t u v w x y z

## length of x
length(x)
> [1] 3

## class of x
class(x)
> [1] "factor"
```

Functions
---------

In R, pre-defined tasks (or operations) are referred to as **functions**. Technically, functions include mathematical operations (e.g., `+`, `-`, `/`).

``` r
10.25 + 5 - 5 * 2
> [1] 5.25
x <- c(-.25, 5, -10, -1, 20)
x + x
> [1]  -0.5  10.0 -20.0  -2.0  40.0
x / 2
> [1] -0.125  2.500 -5.000 -0.500 10.000
```

But most functions, like the functions `c()`, `length()`, and `class()` used above, work a little differently. When functions are called in the R syntax, the function names are accompanied with a pair of parentheses. The function is then applied to the data within the parentheses.

``` r
## the c function
x <- c(2, 4, 6, 8, 10)

## find the average (mean) of values in x
mean(x)
> [1] 6

## find the total (sum) of values in x
sum(x)
> [1] 30

## the c function
x <- c("a", "b", "c")

## capitalize values in x
toupper(x)
> [1] "A" "B" "C"
```

A quick note about "vectors"
----------------------------

In computing, a **scalar** refers to a single value while a **vector** refers to a set of multiple values. R actually ignores this distinction and instead treats everything as a vector. So, in R, a single numeric value and a set of 100 numeric values are both considered vectors.

################################################################# 

Homework
--------

For this homework assignment, create a new folder on your computer called `JOURN_8006_Quant`. Inside the this `JOURN_8006_Quant` folder, create a sub-folder called `homework`. In the homework folder, save the data file `1-basics-data.csv` and the homework script file `1-basics-script.R`. Once both files are saved, right-click the `1-script.R` file and open with Rstudio. Execute the code (a copy of the code is included below). Submit the output of the last three lines of code (the names of the variables, the number of rows, and the number of columns).

``` r
## read data into R
data <- read.csv("1-basics-data.csv")

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
```
