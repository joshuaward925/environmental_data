#BINOMIAL
#What is the probability of observing a count of exactly 3 
#successes in a binomial distribution with parameters n = 4 and p = 0.75?
#dbinom(x, size=n, prob=)
dbinom(3, size = 4, prob = 0.75)
#observing a count of 3 successes or fewer
pbinom(3,size=4, 0.75)
#observing a count of 3 successes or more
pbinom(3,size=5,0.75, lower.tail = FALSE) #or
1 - pbinom(3,size=5,0.75)
#NORMAL
#a value of less than 1.2 from a normally-distributed population with mean = 2 and standard deviation = 2
pnorm(1.2, mean = 2, sd = 2)
#a value of greater than 1.2 from a normally-distributed population with mean = 2 and standard deviation = 2
pnorm(1.2, mean = 2, sd = 2, lower.tail = FALSE) #or
1-pnorm(1.2, mean = 2, sd = 2)
#a value between 1.2 and 3.2 from a normally-distributed population with mean = 2 and standard deviation = 2
pnorm(3.2, mean = 2, sd = 2) - pnorm(1.2, mean = 2, sd = 2)
