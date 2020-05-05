# ********************************
# Copyright Tue Hellstern
# ********************************


# ********************************
# Kapitel 10
#
# dplyr
# ******************************


# Eksempel
library(readxl)
library(dplyr)

# Northwind data
northwind_samlet <- read_excel("northwind.xlsx",  sheet = "samlet")

# mutate - nyt felt
northwind_samlet <- mutate(northwind_samlet, Total = Quantity * UnitPrice)
northwind_samlet <- mutate(northwind_samlet, Weekday = weekdays(ShippedDate))


# filter
northwind_samlet <- filter(northwind_samlet, is.na(ShippedDate) == FALSE)
northwind_samlet


# select
northwind_ugedag_salg <- select(northwind_samlet, Weekday, Total)
northwind_ugedag_salg

# group By og summarise
northwind_ugedag_salg <- northwind_samlet %>%
  group_by(Weekday) %>%
  summarise(sum(Total))

northwind_ugedag_salg

# Alt samlet i en sætning med pipe %>%
northwind_ugedag_salg <- northwind_samlet %>%
  mutate(Total = Quantity * UnitPrice) %>%
  mutate(Weekday = weekdays(ShippedDate)) %>%
  filter(is.na(ShippedDate) == FALSE) %>%
  select(Weekday, Total) %>%
  group_by(Weekday) %>%
  summarise(sum(Total))

northwind_ugedag_salg
