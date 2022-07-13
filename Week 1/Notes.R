library(dslabs)

data(murders)
head(murders)

names

## -------------------------------------Distributions----------------------------------------
# Key Points: 
#   Frequency tables are the simplest way to show categorical distribution (through prop.table)
#   Cumulative distribution function is a function used to report proportion of data below a certain value a F(a) = Pr(x <= a)

library(dslabs)
data(heights)

#Proportion of the table heights that is divided into the subcategories in the row 'sex'
prop.table(table(heights$sex))

names(heights)

my_data = heights['height']

a = seq(min(my_data), max(my_data), length=100)
cdf_function = function(x){
  mean(my_data <= x)
}
cdf_values = sapply(a, cdf_function)
plot(a, cdf_values)

# The CDF defines a proportion of data below the cutoff a. Meaning that to determine the proportion of values above A,
# we would compute 1 - cdf. 

# Smooth Density Plots

# Normal Distributions (Bell Curve; Gaussian Distributions)

# z = (x - average)/(Standard Deviation)

library(tidyverse)
library(dslabs)
data(heights)

index = heights$sex == "Male" #checking the data table HEIGHTS under the row SEX for all that == "Male"
#heights ....full table
#heights$sex ....'sex' column
x = heights$height[index]
heights$height[index]

#calculating mean and standard deviation without builtin functions
average = sum(x)/length(x)
SD = sum((x - average)^2/length(x)) %>% sqrt()
