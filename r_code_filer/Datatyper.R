# ********************************
# Copyright Tue Hellstern
# ********************************


# ********************************
# Kapitel
# Datatyper
# ******************************

# Numbers

x <-  10
y <- 3.45

str(x)
str(y)

typeof(x = 7L)
typeof(y = 3.5L)

# Text

navn <- "Tue Hellstern"


# Categories (factor)
produkt_grupper <-  factor(x = c( "Benzin bil", "Diesel bil", "El bil", "Hybrid bil" ))





# Date and times
Sys.time()

format(Sys.time(), "%Y")
format(Sys.time(), "%m")
format(Sys.time(), "%d")
format(Sys.time(), "%H")
format(Sys.time(), "%M")
format(Sys.time(), "%S")

mindato <- as.Date("2019-12-24")
mindato <- as.Date("22-JAN-19", "%d-%b-%y")
mindato <- as.Date("24-12-2019", "%d-%m-%Y")

mindato

?strptime

# Logicals
x <- 10
y <- "Hej med dig"

is.numeric(x)
is.numeric(y)


# Missing values
typeof(x <- NA)

salgstal <-c(120, NA, 110, 140, NA)

mean(salgstal)
mean(salgstal, na.rm = TRUE)

