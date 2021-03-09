# tidyverse package for tidying and sorting the data
library(tidyverse)

# Creating file for the data
file_data <- "../raw_data.csv"

data <- read.csv(file_data) %>%
  janitor::clean_names()

str(data)

ggplot(data = data, aes(x = temperature_c )) + 
  geom_density(fill = "blue")

ggplot(data = data, aes(x = rh)) + 
  geom_density(fill = "blue")

ggplot(data = data, aes(x = survival_time_hrs)) + 
  geom_density(fill = "blue")


library(ggplot2)

unique(data$virus)


