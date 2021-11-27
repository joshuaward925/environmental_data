dpois(x = 7, lambda = 10.4)
?dbinom
#4 of 6
dbinom(4, size=6, prob=0.67)
#0 of 6
dbinom(0, size=6, prob=0.67)
#Cumulative probability: The p-functions
ppois(q = 7, lambda = 10.4)
#Law of Total Probability and Complementary Events
1 - ppois(q = 7, lambda = 10.4)
#Q4 four or fewer
pbinom(4, size=6, prob=0.67)
#Q5 - four or more
1 - pbinom(3, size=6, prob=0.67)
