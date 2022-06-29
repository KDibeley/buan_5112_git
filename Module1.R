# New Script 
library(tidyverse)
library(haven)

nfhs <- read_dta("IAHR52FL.dta")

new_def <- nfhs %>%
select(hhid:shstruc)




