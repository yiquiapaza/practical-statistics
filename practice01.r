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

print(df)

# Mean
poma <- mean(df[["po"]])
mrma <- mean(df[["mr"]])
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
boxplot(df[["po"]]/1000000, ylab="Pulation (millons)")
