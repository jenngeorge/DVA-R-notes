reddit <- read.csv('reddit.csv')
table(reddit$employment.status)
summary(reddit)

levels(reddit$age.range)
library(ggplot2)
qplot(data = reddit, x = age.range)

# ordering factors for age.range 
is.factor(reddit$age.range)
reddit$age.range <- ordered(reddit$age.range, levels = c('Under 18', '18-24', '25-35', '35-44', '45-54', '55-64', '65 or above'))

# alt solution 
reddit$age.range <- factor(reddit$age.range, levels = c('Under 18', '18-24', '25-35', '35-44', '45-54', '55-64', '65 or above'), ordered = T)
