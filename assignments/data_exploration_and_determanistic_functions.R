install.packages("here")
require(here)
read.csv(here("data", "hab.sta.csv"))
dat_habitat = read.csv(here("data", "hab.sta.csv"))
head(dat_habitat)
#3 histogram
(mfrow = c(1, 3))
hist(dat_habitat$elev, main = "Historgam of Sampling Site Elevation" , xlab = "Elevation")
hist(dat_habitat$slope, main = "Historgam of Sampling Site Slope" , xlab = "Slope")
hist(dat_habitat$aspect, main = "Historgam of Sampling Site Aspect" , xlab = "Aspect")
#3 scatter plots
(mfrow = c(1, 3))
plot(x= dat_habitat$elev, y= dat_habitat$ba.tot, main = "Elevation vs Total Basal Area" , xlab = "Elevation", ylab = "Total Basal Area") 
#line_point_slope
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
#Linear function: x-intercept, y-intercept
curve(line_point_slope(x, x1 = 0, y1 = 0, slope = 0.065), add = TRUE, col="red")
plot(x= dat_habitat$slope, y= dat_habitat$ba.tot, main = "Slope vs Total Basal Area" , xlab = "Slope", ylab = "Total Basal Area")
curve(line_point_slope(x, x1 = 0, y1 = 10, slope = 0.25), add = TRUE, col="red")
plot(x= dat_habitat$aspect, y= dat_habitat$ba.tot, main = "Aspect vs Total Basal Area" , xlab = "Aspect", ylab = "Total Basal Area")
curve(line_point_slope(x, x1 = 0, y1 = 18, slope = 0.015), add = TRUE, col="red")

