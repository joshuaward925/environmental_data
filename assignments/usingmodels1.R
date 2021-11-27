install.packages("here")
require(here)
#catrate.csv
catrate = read.csv(here("data", "catrate.csv"))
head(catrate)
summary(catrate)
#Histogram Catastrophe Rate
hist(catrate$cat.rate, breaks = 5,xlab = "Catastrophe Rate", main = "Histogram of Catastrophe Rate")
#shapiro.test
shapiro.test(catrate$cat.rate)
#One sample, one tailed T-test; mu = observed late-filling rate
t.test(catrate$cat.rate, mu=0.28)
#Two sample, two tailed T-test
t.test(catrate$cat.rate,catrate$pond)
#Non-Parametric One-Sample Test: The Wilcoxon Rank Sum Test
wilcox.test(catrate$cat.rate, mu =0.28)
#Penguin data
require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)
#Boxplot
boxplot(
  flipper_length_mm ~ species, 
  data = penguin_dat,
  ylab = "Flipper Length (mm)")
# Extract species penguin data
dat_adelie = subset(penguin_dat, species == "Adelie")
dat_chinstrap = subset(penguin_dat, species == "Chinstrap")
dat_biscoe = subset(penguin_dat, species == "Biscoe")
dat_dream = subset(penguin_dat, species == "Dream")
dat_torgersen = subset(penguin_dat, species == "Torgersen")
#shapiro.test dat_adelie vs flipper length
shapiro.test(dat_adelie$flipper_length_mm)
#shapiro.test dat_chinstrap vs flipper length
shapiro.test(dat_chinstrap$flipper_length_mm)
#histograms of flipper lengths of Adelie and Chinstrap penguins
par(mfrow=c(1,2))
hist(dat_adelie$flipper_length_mm, xlab = "Flipper Length (mm)", main = "Histogram of \n Adelie Flipper Length")
hist(dat_chinstrap$flipper_length_mm, xlab = "Flipper Length (mm)", main = "Histogram of \n Chinstrap Flipper Length")
#T test comparing flipper length
t.test(dat_adelie$flipper_length_mm,dat_chinstrap$flipper_length_mm)
