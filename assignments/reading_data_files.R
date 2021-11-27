install.packages("here")
require(here)
#castrate
read.csv(here("data", "catrate.csv"))
dat_catrate = read.csv(here("data", "catrate.csv"))
head(dat_catrate) #4column
#delomys
read.csv(here("data", "delomys.csv"))
dat_delomys = read.csv(here("data", "delomys.csv"))
head(dat_delomys) #5column
#rope
read.csv(here("data", "rope.csv"))
dat_rope = read.csv(here("data", "rope.csv"))
head(dat_rope) #6column
#Scatter Delomys: 
plot(x= dat_delomys$body_mass, y= dat_delomys$body_length, main = "Body Mass vs Body Length | Joshua Ward" , xlab = "Mass", ylab = "Length")
