install.packages("here")
require(here)
#ginkgo_data_2021.csv
ginkgo = read.csv(here("data", "ginkgo_data_2021.csv"))
head(ginkgo)
summary(ginkgo)
#boxplot
boxplot (ginkgo)
boxplot(ginkgo$notch_depth, ginkgo$seeds_present)
plot(ginkgo$max_depth, ginkgo$max_width,main="Max leaf depth vs Max leaf width", 
     xlab="max leaf depth", ylab="max leaf width",)

