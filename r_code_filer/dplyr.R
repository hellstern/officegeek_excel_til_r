# ************************
# Datamanipulation
# dplyr
# ************************


# Pakke
library(readxl)
library(dplyr)

# Import
order_details <- read_excel("order_details.xlsx", sheet = "order_details")
products <- read_excel("products.xlsx", sheet = "products")

#Select - Kun de felter vi skal bruge
products <- select(products, ProductID, ProductName)

products


# Join
# left_join()
# VLOOKUP (Exact Match)
productsale <- order_details %>%
  left_join(products, by = c("ProductID" = "ProductID"))

productsale




mean(1:10)


1:10 %>%
  mean()
