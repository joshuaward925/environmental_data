install.packages("palmerpenguins")
install.packages("here")
require(palmerpenguins)
require(here)
penguins = data.frame(penguins)
#T-test compared to 0
t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)
#T-test compared to 218mm
t.test(x = subset(penguins, species == "Gentoo")$flipper_length_mm, mu = 218)
#T-test smaller than 218 mm:
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218,
  alternative = "less"
)
#T-test flipper lengths of two species:
t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))
#histogram & density plot
par(mfrow = c(1, 2))
hist(penguins$body_mass_g, breaks = 80, main = "histogram of body mass", xlab = "body mass (g)")
plot(density(penguins$body_mass_g, na.rm = TRUE), main = "density plot of body mass")
#Conditional boxplots 
require(palmerpenguins)
boxplot(body_mass_g ~ species, data = penguins)
#test whether within-group data are normally-distributed
#Extract the measurements for each species.
dat_chinstrap = subset(penguins, species == "Chinstrap")
#Calculate the mean body mass for each species.
mean(dat_chinstrap$body_mass_g, na.rm = TRUE)
#Conduct Shapiro tests on each species’ body mass
#Shapiro test null hypothesis: “The data are drawn from a normally-distributed population.”
shapiro.test(dat_chinstrap$body_mass_g)
#aggregate mass
aggregate(body_mass_g ~ species, data = penguins, FUN = mean)
#aggregate Shapiro test
aggregate(
  body_mass_g ~ species,
  data = penguins,
  FUN = function(x) shapiro.test(x)$p.value)
#Fit a linear model
fit_species = lm(body_mass_g ~ species, data = penguins)
#ANOVA (incls table)
anova(fit_species)
#Two-Way Additive model.
par(mfrow = c(1,1))
boxplot(body_mass_g ~ species, data = penguins)
#Fit a 2-way, additive model.
fit_additive = lm(body_mass_g ~ sex + species, data = penguins)
#Two-Way interactive (factorial) ANOVA
fit_interactive = lm(body_mass_g ~ sex * species, data = penguins)
anova(fit_interactive)
#Simple Linear Regression: Penguin Bills and Body Mass
lm(bill_length_mm ~ body_mass_g, data = penguins)

#Questions
#Q1
boxplot(body_mass_g ~ sex * species, data = penguins, main = "Body mass conditioned\non both sex and species", xlab =" ", ylab = "body mass (g)", las = 2,
        names = c("Female\nAdelie", "Male\nAdelie","Female\nChinstrap","Male\nChinstrap","Female\nGentoo", "Male\nGentoo"))
#Q4
fit_both=lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_both)
#Q8
aggregate(body_mass_g ~ sex * species, data = penguins, FUN = mean)

