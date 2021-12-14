# Bibliotecas -------------------------------------------------------------

library(readr)
library(tidyverse)
library(plotly)


# Importando bases --------------------------------------------------------

atrasados <- read_delim("atrasados_vacinacao_091221.csv", 
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)


# Modificando dados -------------------------------------------------------

mais_80 <- atrasados %>%
  subset(idade > 80)

ggplot(atrasados, aes(idade)) +
  geom_boxplot()

ggplot(atrasados, aes(idade)) +
  geom_density()

ggplot(atrasados, aes(idade, fill = distrito_vinculo)) +
  geom_bar() +
  theme_bw() +
  facet_wrap(~distrito_vinculo)

grafico_1 <- ggplot(atrasados, aes(idade)) +
  geom_bar()

ggplotly(grafico_1)
