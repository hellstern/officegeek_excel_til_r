# ********************************
# Copyright Tue Hellstern
# ********************************


# ********************************
# Kapitel 8
# Rens
# ******************************

# WD
setwd("~/GitHub/officegeek_excel_til_r/data")

# Pakker - readxl - tidyr
library(tidyverse)
library(readxl)
library(tidyr)

# Data
is_salg_1 <- read_xlsx("is_salg.xlsx", sheet = "is_salg_historisk_data_1")

view(is_salg_1)

is_salg_2 <- read_xlsx("is_salg.xlsx", sheet = "is_salg_historisk_data_2")

view(is_salg_2)

# tidyr - separate()
is_salg_hist <- is_salg_2 %>%
  separate(aar_kvartal, c("aar", "kvartal"), sep = "_" )

view(is_salg_hist)

# tidyr - gather
is_salg_hist_2 <- is_salg_1 %>%
  gather(kvartal, salg, kvt_1:kvt_4)

view(is_salg_hist_2)


# separate
