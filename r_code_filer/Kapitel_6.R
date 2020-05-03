# ********************************
# Copyright Tue Hellstern
# ********************************


# ********************************
# Kapitel 6
# Grundlæggende R
# ********************************


# Funktioner
y <- c(5, 6, 7, 8, 9, 10)

length(y)     # Antallet af numre i vektoren
min(y)        # Minimumsværdien
max(y)        # Maksimumværdien
median(y)     # Medianen
sum(y)        # Summen
mean(y)       # Gennemsnittet
var(y)        # Variansen
sd(y)         # Standardafvigelsen


# Logiske operatorer
x <- 2

x == 2        # "==" betyder "lig med"
x != 2        # "!=" betyder "ikke lig med"
x < 1         # "<" betyder "mindre end"
x > 1         # ">" betyder "større end"
x <= 2        # "<=" betyder "mindre eller lig med


# Hjælp

# Funktioner
help("mean") # Hjælp til en specifik funktion - mean
help("plot")

?mean
?plot

# Pakker
help(package = "base")
help(package = "tidyverse")


# Tidyverse
library(tidyverse)


mean(1:10)    # Uden Pipe %>%

1:10 %>%      # Med Pipe %>%
  mean()


