# State
s <- c("Alabama", "Alaska", "Arizona", "Arkansas", "Califormia", "Colorado", "Connecticut", "Delaware") #nolint
# Population
po <- c(4779736, 710231, 6392017, 2915918, 37253956, 5029196, 3574097, 897934)
# Murder Rate
mr <- c(5.7, 5.6, 4.7, 5.6, 4.4, 2.8, 2.4, 5.8)
# Abbreviation
a <- c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE")
# Data Frame
df <- data.frame(s, po, mr, a)
df <- read.csv('./data/state.csv')
print(df)

# Mean
poma <- mean(df[["Population"]])
mrma <- mean(df[["Murder.Rate"]])
print(poma)
print(mrma)

# Median
pome <- median(df[["po"]])
mrme <- median(df[["mr"]])
print(pome)
print(mrme)

# Trimmed mean
print(weighted.mean(df[["mr"]], w=df[["po"]])) # nolint

# The starndar deviation
print(sd(df[["po"]]))

# The interquartile range IQR
print(IQR(df[["po"]]))

# The median absolute deviation
print(mad(df[["po"]]))

# Percentiles
quantile(df[["mr"]], p=c(.05, .25, .5, .75, .95)) # nolint

# Boxplot
boxplot(df[["Population"]] / 1000000, ylab = "Pulation (millons)")

min(df[["po"]])

# Breaks
breaks <- seq(from=min(df[["Population"]]), to=max(df[["Population"]]), length.out = 11)

pop_freq <- cut(df[["Population"]], breaks = breaks, right=TRUE, include.lowest=TRUE)

# Create table
table(pop_freq)

# Histogram
hist(df[["Population"]], breaks = breaks)
hist(df[["Murder.Rate"]], freq = FALSE)
lines(density(df[["Murder.Rate"]]), lwd= 3, col="blue")

