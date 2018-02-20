
## create some data

## latent var X
x <- rnorm(100)

## outcome y (likert type item) as function of x
y <- round(x + rnorm(100, 4, .75), 0)
y[y < 1] <- 1L
y[y > 7] <- 7L

## x indicators, z groups, and y outcome likert variable
df <- data.frame( 
  x1 = rnorm(100) + x,
  x2 = rnorm(100) + x,
  x3 = rnorm(100) + x,
  z = sample(letters[1:3], 100, replace = TRUE),
  y = y, 
  stringsAsFactors = FALSE)

## save as practice-data.csv file
write.csv(df, "../data/practice-data.csv", row.names = FALSE)
