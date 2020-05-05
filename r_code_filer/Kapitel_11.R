# ***************************
# Tue Hellstern
# Visualiser
# ggplot2
# ***************************


# ***************************
# ggplot2 - Is salg
# ***************************
?ggplot2
browseURL("https://ggplot2.tidyverse.org")
library(ggplot2)

# Data / Is salg
library(readxl)
getwd()
issalg <- read_excel("webinar_data.xlsx", sheet = "issalg")


# ******************************
# Plot ggplot2 - Is salg
# ******************************
ggplot(data=issalg) +
  geom_point(mapping = aes(x=Temperatur, y=Salg, color=Butik_Placering, size=Salg)) +
  geom_smooth(mapping = aes(x=Temperatur, y=Salg, color=Butik_Placering), se=FALSE) +
  geom_hline(yintercept = mean(issalg$Salg)) +
  annotate("text", label="Middel Salg", x=15, vjust = 0, y=mean(issalg$Salg+200)) +
  geom_vline(xintercept = mean(issalg$Temperatur)) +
  annotate("text", label="Middel Temperatur", y=100, hjust = 0, x=mean(issalg$Temperatur-0.5), angle = 90) +
  theme(panel.background = element_blank()) +
  theme(plot.background = element_blank()) +
  scale_x_continuous(name="Temperatur") +
  scale_y_continuous(name="Total Salg") +
  scale_color_discrete(name="Placering af butiken") +
  scale_size_continuous(name="Salg") +
  theme_classic()


# ******************************
# Plot ggplo2 - Salg - Group By
# ******************************
library(tidyverse)

# Group by Category + ggplot
salg %>%
  group_by(CategoryName) %>%
  summarise(totalsale=sum(Sale)) %>%
  ggplot() +
  geom_col(mapping = aes(x=CategoryName, y=totalsale)) +
  xlab("Categoryname") +
  ylab("Sale") +
  ggtitle("Sales by category",
          subtitle = "2016 to 2018")



# ***************************
# Save plots
# ***************************
?ggsave

ggsave("Sidste_plot.pdf")
