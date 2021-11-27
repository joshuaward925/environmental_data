#Actual data exploration 1
dat_birds = read.csv("https://michaelfrancenelson.github.io/environmental_data/data/bird.sta.csv")
dat_habitat = read.csv("https://michaelfrancenelson.github.io/environmental_data/data/hab.sta.csv")
head(dat_habitat)
#pair plots w/ selection
pairs(dat_habitat[, c("elev", "slope", "aspect", "snag.dc1", "ba.tot")])
#histogram chickadee abundance 
hist(dat_birds$CBCH, main = "Histogram of Beaked Chickadee Abundance" , xlab = "Number of birds counted")
hist(dat_birds$CBCH, main = "Histogram of Beaked Chickadee Abundance" , xlab = "Number of birds counted", breaks = 0:7 - 0.5)
#histogram Swaison's Thrush abundance
hist(dat_birds$SWTH, main = "Histogram of Swaison's Thrush Abundance" , xlab = "Number of birds counted")
hist(dat_birds$SWTH, main = "Histogram of Swaison's Thrush Abundance" , xlab = "Number of birds counted", breaks = 0:6 - 0,)
#max()
max(dat_birds$SWTH)
