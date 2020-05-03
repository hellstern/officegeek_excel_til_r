# ********************************
# Kapitel 7
# Datatyper
# ********************************


# Number
x <- 10
y <- 25.75

class(x)


# Text
navn <- "Tue"

class(navn)

# Date Times
dagsdato <- Sys.time()
dagsdato <- format(Sys.time(), "%d-%m-%y")

mindato_1 <- as.Date("2019-12-24")
mindato_2 <- as.Date("22-JAN-2020", "%d-%b-%y")
mindato_3 <- as.Date("24-12-2019", "%d-%m-%y")

class(dagsdato)

# Logicals - TRUE/FALSE
is.numeric(x)
is.character(navn)


# Missing value - NA
x <- NA
typeof(x <-  NA)

salgstal <- c(120, , 110, 140, )       # Virker ikke! - Grund NA
salgstal <-  c(120, NA, 110, 140, NA)  # NA for tomme værdier
mean(salgstal)
mean(salgstal, na.rm = TRUE)


# Vector - Længde 1
my_character <- "abc" # character
my_double <- 12.5 # double
my_integer <- 27 # integer
my_logical <- TRUE # logical
my_complex <- 2+3i # complex
my_raw <- charToRaw('hello') # raw

print(my_raw)

# Vector

svar <-  c(1, "ja", 1, "Nej", 2) # chr vector
value <- c(12, 45, 23, 45, 78)   # num vector

# Vector
saelger <- c("Ole", "Pia", "Kim", "Ole", "Pia", "Pia", "Kim")
salg <- c(124, 345, 763, 456, 673, 349, 298)
dato <- as.Date(c("2020-04-02", "2020-04-02", "2020-04-03", "2020-04-03", "2020-04-04", "2020-04-05", "2020-04-05"))

mk <- c("M", "K", "K", "M", "M")

# Vectores overført til dataframe
resultat <- data.frame(saelger, salg, dato)


# Factor
# M/K
mk <- c("M", "K", "K", "M", "M")
mk_factor <- factor(mk)
levels(mk_factor) <- c("Mand", "Kvinde")


class(mk)
class(mk_factor)
nlevels(mk_factor)
