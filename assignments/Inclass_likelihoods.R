install.packages("here")
require(here)
#bird.sta.csv
dpois(x = 2, lambda = 4.5)
dpois(x = 6, lambda = 4.5)
dpois(x = 2, lambda = 4.5) * dpois(x = 6, lambda = 4.5)
dat_bird = read.csv(here::here("data", "bird.sta.csv"))
dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)
summary(dat_all$WIWA)
#wiwacount
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)
#histogram
hist(dat_all$WIWA)
hist(dat_all$WIWA, breaks = 7)
hist(dat_all$WIWA, breaks = 0:7)
hist(dat_all$WIWA, breaks = 0:7 - .5)
#discrete count data
par(mfrow = c(1, 2))
dat = dat_all$WIWA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nWilson's Warbler counts")
dat = dat_all$GRJA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nGray Jay counts")
#sum of log likelihoods
sum(log(dpois(x = dat_all$WIWA, lambda = 1.0)))
# Q1 log-likelihood lambda = 4.5
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4)
sum(log(dpois(x = wiwa_counts, lambda = 4.00)))
#Winter wren
datWIWR=dat_all$WIWR
hist(datWIWR, breaks = 0:(max(datWIWR) + 1) - 0.5, main = "Histogram of\nWinter Wren counts", xlab="Winter Wren count")
