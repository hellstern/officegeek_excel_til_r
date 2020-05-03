# ********************************
# Copyright Tue Hellstern
# ********************************

# ***************************
# Genveje
# ***************************

# Windows
# CTRL + Enter - Kør en R kommando
# Genvej for at indsætte "<-" - ALT + -
# Genvej for at indsætte "%>%" - CTRL + SHIFT + M
# TAB - Mulige kommandoer
# CTRL + PIL OP - Afslutter din kommando

# MAC
# CMD + Enter - Kør en R kommando
# Genvej for at indsætte "<-" - Option + -
# Genvej for at indsætte "%>%" - CMD + SHIFT + M


# ********************************
# Kapitel 4
# Pakker
# ********************************


library()                       # Pakker der er på din computer

install.packages("tidyverse")   # install - ggplot
library(tidyverse)              # load - dplyr

update.packages("tidyverse")    # Update - tidyverse
remove.packages("tidyverse")    # Fjern - tidyverse




# ********************************
# Kapitel 5
# Working Directory
# ********************************

getwd()
setwd("~/GitHub/officegeek_excel_til_r")


# ********************************
# Kapitel 6
# Grundlæggende
# ********************************

x <- 10
navn <- "Tue"



ls()   # Vis / List alle objekter

# Fjern et objekt
rm(x)  # Her x

# Funktioner
tal <-  c(1, 2, 3, 4, 5)

sum(tal)
mean(tal)

# Funktioner
length(y)     # Antallet af numre i vektoren
min(y)        # Minimumsværdien
max(y)        # Maksimumværdien
median(y)     # Medianen
sum(y)        # Summen
mean(y)       # Gennemsnittet
var(y)        # Variansen
sd(y)         # Standardafvigelsen


# Logiske operatorer
x
x == 2        # "==" betyder "lig med"
x == 3
x != 2        # "!=" betyder "ikke lig med"
x < 1         # "<" betyder "mindre end"
x > 1         # ">" betyder "større end"
x <= 2        # "<=" betyder "mindre eller lig med
