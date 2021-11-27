require(palmerpenguins)
## Loading required package: palmerpenguins
## Warning: package 'palmerpenguins' was built under R version 4.0.3
dat_ade = droplevels(subset(penguins, species == "Adelie"))
hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")
# Boxplot
boxplot(body_mass_g~sex,data=dat_ade, main="Body Mass of Adelie Penguins", 
        xlab="Sex", ylab="Mass")
# Perform a one-sample t-test of the alternative hypothesis 
#that female Adelie penguins have a body mass different from zero grams.
dat_ade_female = subset(dat_ade, sex=="female")
dat_ade_male = subset(dat_ade, sex=="male")
t.test(dat_ade_female$body_mass_g, mu=0)
#a one-sample t-test of the null hypothesis that male Adelie penguins have a mean body mass greater than 4000 grams
t.test(dat_ade_male$body_mass_g,alternative = c("greater"), mu=4000)
#two-sample t-test of the alternative hypothesis that male and female Adelie penguins have different mean body masses
#are they different?
t.test(dat_ade_male$body_mass_g,dat_ade_female$body_mass)
