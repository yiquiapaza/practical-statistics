df <- read.csv('./data/state.csv')
dfw <- read.csv('./data/dfw_airline.csv') # nolint
stock_returns <- read.csv('./data/sp500_data.csv.gz', row.names=1)

print(df)
print(stock_returns)

# Mean
poma <- mean(df[["Population"]])
mrma <- mean(df[["Murder.Rate"]])
print(poma)
print(mrma)

# Median
pome <- median(df[["Population"]])
mrme <- median(df[["Murder.Rate"]])
print(pome)
print(mrme)

# Trimmed mean
print(weighted.mean(df[["Murder.Rate"]], w=df[["Population"]]))

# The standard deviation
print(sd(df[["Population"]]))

# The interquartile range IQR
print(IQR(df[["Population"]]))

# The median absolute deviation
print(mad(df[["Population"]]))

# Percentiles
quantile(df[["Murder.Rate"]], p=c(.05, .25, .5, .75, .95))

# Box plot
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
lines(density(df[["Murder.Rate"]]), lwd= 4, col="blue")

# DFW AIRLINE
barplot(as.matrix(dfw) / 6, cex.axis=0.8, cex.names=0.7, xlab='Cause of delay', ylab='Count')

# Scatter Plot 

plot(stock_returns$T, stock_returns$VZ, xlab = 'ATT (T)', ylab = 'Verizon (VZ)')














