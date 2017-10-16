# 1) install the 'datasets' package from CRAN and load the packages

install.packages('datasets')
library(datasets)
data("airquality")

glimpse(airquality)

mean(airquality$Ozone, na.rm = T)

solarR_greater119 <- filter(airquality, Solar.R > 119, !is.na(Ozone))

glimpse(solarR_greater119)# you now have a data set call airquality to look at

View(solarR_greater119)
# what are some ways I can look at the data?

# what is a function?

# how do I see the structure of the data frame?

summary(airquality$Ozone, na.rm = T)

head(airquality)

mean(airquality$Solar.R, na.rm = T)

mean(airquality$Ozone)

mean(airquality$Day)


#Working with strings:

airquality$test_column <- ifelse(airquality$Solar.R > 119, "Treatment", "Control")
airquality2 <- mutate(airquality, mutate_column = Month + Day)
