# Datatyper {#datatyper}
Alle programmeringssprog arbejder med variabler eller objekter til at gemme data i - R er ingen undtagelse.

R er et såkaldt "*weakly typed language*", hvilket betyder at datatypen "gættes/antages", fremfor at blive erklæret.   
Det kan gøre det nemmere at komme i gang med R, da du ikke skal tage hensyn til typen af din variabel, det gør R for dig. Det er dog muligt at ændre datatypen af en variabel, hvis det R har valgt ikke passer med det du ønsker.

Nogle sprog, f.eks. C, er "*strongly typed language*", på disse sprog skal datatypen udtrykkeligt angives, før den bruges. Dette har også sine fordele, såsom at vide, at datatypen ikke kan ændres ved et uheld.

## Typer af data
Her er en liste over de 6 mest almindelige datatyper i R.

| Datatype             | Eksempel                    |
|----------------------|-----------------------------|
| Numbers              | 1  1.25  -34                |
| Text (strings)       | "abc"                       |
| Categories (factors) | months("Jan", "Feb", "Mar") |
| Dates and times      | 2020-02-05                  |
| Logicals             | TRUE / FALSE                |
| Missing values       | NA eller NaN                |


## Numbers
*Numbers* eller tal er nok den mest bruge datatype.

*Integer* er heltal, altså tal der ikke har nogle decimaler
*Rael numbers* bliver også kaldt *numerics* eller *doubles*, tal der kan indeholde decimaler

```{r eval=FALSE}
x <- 100
y <- 25,75

class(x) # Retunere typen
```


## Text (strings)
Næst efter *numbers* kommer nok *Text* som den mest brugte datatype.

**Escape karakter** - Kan bruges i dine *Text stings*

* \' - Enkelt anførselstegn
* \" - Doblet anførselstegn
* \n - Ny linje
* \\ - Backslash 

```{r eval=FALSE}
navn <- "Tue"
class(navn) # Retunere typen
```


## Dates and times
Når du arbejder med data, kommer du også hurtigt til at arbejde med datoer eller tidsangivelser.
Dan kan nogle gang godt give lidt problemer, f.eks. når en dato er gemt på den danske måde at skrive en dato på.

Her kommer R funktionen *as.Date* sammen med *format* dig til undsætning.

| Kode   | Betydning      | Område |
|--------|----------------|--------|
| **%Y** | Year           | 1–9999 |
| **%m** | Month          | 01–12  |
| **%d** | Day            | 01–31  |
| **%H** | Hour           | 00–23  |
| **%M** | Minute         | 00–59  |
| **%S** | Second         | 00–59  |
| **%a** | Weekday - kort |        |
| **%A** | Weekday - Lang |        |
| **%b** | Month - Kort   |        |
| **%B** | Month - Lang   |        |

```{r eval=FALSE}
Sys.time()

format(Sys.time(), "%Y")
format(Sys.time(), "%m")
format(Sys.time(), "%d")
format(Sys.time(), "%H")
format(Sys.time(), "%M")
format(Sys.time(), "%S")

dagsdato <- Sys.time()
dagsdato <- format(Sys.time(), "%d-%m-%y")
dagsdato <- format(Sys.time(), "%a")
dagsdato <- format(Sys.time(), "%A")
dagsdato <- format(Sys.time(), "%b")
dagsdato <- format(Sys.time(), "%B")

dagsdato

mindato_1 <- as.Date("2019-12-24")
mindato_2 <- as.Date("22-JAN-2020", "%d-%b-%y")
mindato_3 <- as.Date("24-12-2019", "%d-%m-%y")
```

## Logicals
Værdierne SAND og FALSE kan være ekstremt nyttige, der er mange funktioner der returnere TRUE eller FALSE.

Du vil også kunne se *Logicals* omtalt som *boolean*

```{r eval=FALSE}
x <- 10
y <- "Hej med dig"

is.numeric(x)  # Retunere TRUE
is.numeric(y)  # Retunere FALSE
```

*Husk at TRUE og FALSE er reserverede ord i R*

## Missing values
Du sikkert komme ud for at der *"huller"* i dine data - Værdier der burde have været der, men af en eller anden grund ikke er tilstede. Fra databaser kender du måske udtrykket "*NULL*".

R håndtere normal disse værdier som NA (*Not Available*). Som standard er NA en logisk type

```{r eval=FALSE}
typeof(x <- NA)
salgstal <-c(120, NA, 110, 140, NA)

mean(salgstal)
mean(salgstal, na.rm = TRUE)
```
Selvom en værdi ikke er til stede (*NA*), holder R styr på hviklen datatype værdien skulle have været.


## Vectors
**Vectors** er det mest bruget object i R.

Der er seks typer af **vectors**:

1. logical
2. integer
3. double
4. complex
5. character
6. raw

**Oprettelse af vektor**
Selv når du kun skriver en enkelt værdi i R, bliver det til en *vector*, med længden 1.

```{r eval=FALSE}
my_character <- "abc"         # character
my_double <- 12.5             # double
my_integer <- 27              # integer
my_logical <- TRUE            # logical
my_complex <- 2+3i            # complex
my_raw <- charToRaw('hello')  # raw
```
Funktionen **c()** kan du bruge til at oprette en "samling" af *Vectors* af sammen type.

```{r eval=FALSE}
mk <- c("M", "K", "K", "M", "M")
svar <-  c(1, "ja", 1, "Nej", 2) # chr vector
value <- c(12, 45, 23, 45, 78)   # num vector

saelger <- c("Ole", "Pia", "Kim", "Ole", "Pia", "Pia", "Kim")
salg <- c(124, 345, 763, 456, 673, 349, 298)
dato <- as.Date(c("2020-04-02", "2020-04-02", "2020-04-03", "2020-04-03", "2020-04-04", "2020-04-05", "2020-04-05"))
```

## Factors
*Factors* er dataobjekter, der bruges til at kategorisere dataene og gemme dem som niveaue

*Factors* kan indeholde både *character* og *integer*. 

De er nyttige i kolonner, der har et begrænset antal unikke værdier. 
Som f.eks. *Mand*, *Kvinde* eller *Sand*, *Falsk* osv. 

De er nyttige i dataanalyse til statistisk modellering.

Faktorer oprettes ved hjælp af funktionen **factor()** ved at tage en *vector* som input.

```{r eval=FALSE}
mk <- c("M", "K", "K", "M", "M")
mk_factor <- factor(mk)
levels(mk_factor) <- c("Mand", "Kvinde")

class(mk)
class(mk_factor)
nlevels(mk_factor)
```