# ********************************
# Copyright Tue Hellstern
# ********************************


# ********************************
# Kapitel 8
# Import
# ******************************


# readr - Excel
library(readxl)

salg <- read_xlsx("webinar_data.xlsx")                          # Indlæser første ark
salg <- read_xlsx("webinar_data.xlsx", sheet = "salgs_data")    # Indlæser arket "salgs_data"
salg <- read_xlsx("webinar_data.xlsx", sheet = 3)               # Indlæser ark 3


# Workflow
# Import
library(readxl)

categories <- read_excel("data/northwind.xlsx",
                        sheet = "categories")

customers <- read_excel("data/northwind.xlsx",
                         sheet = "customers")

employess <- read_excel("data/northwind.xlsx",
                         sheet = "employess")

order_details <- read_excel("data/northwind.xlsx",
                         sheet = "order_details")

orders <- read_excel("data/northwind.xlsx",
                         sheet = "orders")

products <- read_excel("data/northwind.xlsx",
                            sheet = "products")

suppliers <- read_excel("data/northwind.xlsx",
                     sheet = "suppliers")
