library(ggplot2)
loans_income <- read.csv('./data/loans_income.csv')
loans_income <- loans_income[,1]

# Take a sample random sample
samp_data <- data.frame(income=sample(loans_income, 1000), type='data_dist')

# Take a sample of means of 5 values
samp_mean_05 <- data.frame(
  income=tapply(sample(loans_income, 1000*5),
                rep(1:1000, rep(5, 1000)), FUN=mean), type='mean_of_5')

samp_mean_20 <- data.frame(
  income=tapply(sample(loans_income, 1000*20),
                rep(1:1000, rep(20, 1000)), FUN=mean), type='mean_of_20')


# bind the data.frame and covner type to a factor
income <- rbind(samp_data, samp_mean_05, samp_mean_20)
income$type = factor(income$type, 
                     levels=c('data_dist', 'mean_of_5', 'mean_of_20'),
                     labels=c('Data', 'Mean of 5', 'Mean of 20'))

# Plot the histograms
ggplot(income, aes(x=income)) +
  geom_histogram(bins = 40) +
  facet_grid(type ~ .)
