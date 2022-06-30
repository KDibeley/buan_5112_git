# New Script 
library(tidyverse)
library(haven)
library(vtable)
library(dplyr)
library(ggplot2)

# loads the given data as nfhs
nfhs <- read_dta("IAHR52FL.dta") 

# Selects the data between hhid:shstruc
new_def <- nfhs %>% 
  select(hhid:shstruc)

# Plots the distribution of the number of listed household members for the entire sample 
ggplot(data = nfhs, mapping = aes(x = hv009)) +  
  geom_histogram(binwidth = 1) + 
  xlab("Number of Listed Household Members")

#5 Create a new data frame that contains only urban households (the variable is "hv025").

new_data_urban_household <- nfhs %>%
  select(hv025)

box_plot <- ggplot(data = new_data_urban_household, mapping = aes(x = is.factor(hv025))) + 
  geom_boxplot()


#6 



