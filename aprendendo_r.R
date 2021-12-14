library(readr)

atrasados <- read_delim("atrasados_vacinacao_091221.csv", 
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)
