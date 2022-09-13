# State
s <- c("Alabama", "Alaska", "Arizona", "Arkansas", "Califormia", "Colorado", "Connecticut", "Delaware") 
# Population
po <- c(4779736, 710231, 6392017, 2915918, 37253956, 5029796, 3574097, 897934)
# Murder Rate
mr <- c(5.7, 5.6, 4.7, 5.6, 4.4, 2.8, 2.4, 5.8)
# Abbreviation
a <- c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE")
# Data Frame
df <- data.frame(s, po, mr, a)

print(df)

# Mean
poma <- mean(df[['po']])
mrma <- mean(df[['mr']])
print(pom)
print(mrna)

# Median
pome <- median(df[['po']])
mrme <- median(df[['mr']])
print(pome)
print(mrme)
