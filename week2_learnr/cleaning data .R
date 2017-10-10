# 1) install the 'datasets' package from CRAN and load the packages

install.packages('datasets')

data("airquality")

# you now have a data set call airquality to look at

# what are some ways I can look at the data?

# what is a function?

# how do I see the structure of the data frame?

summary(airquality$Ozone, na.rm = T)

head(airquality)

mean(airquality$Solar.R, na.rm = T)

mean(airquality$Ozone)

mean(airquality$Day)


#Working with strings:


