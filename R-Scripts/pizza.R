# Alan Arnholt
# Class Notes from 9/15/15
library(PASWR2)
# ? before a function or data set open help file
?EPIDURALF
str(EPIDURALF)  # structure for data set
library(dplyr)  # puts package on search path
head(EPIDURALF)
116/(172/100)^2
a1 <- mutate(EPIDURALF, BMI = kg/(cm/100)^2)
head(a1, n = 10)
a2 <- select(a1, doctor, BMI, ease, treatment)
head(a2)
a3 <- filter(a2, BMI > 45)
a3
a4 <- filter(a3, doctor == "D")
a4

library(MASS)
filter(quine, Days >=5, Lrn == "AL")

library(ggplot2)
ggplot(data = quine, aes(x = Days)) + 
  geom_histogram(binwidth = 10, fill= "turquoise") + 
  theme_bw() + facet_grid(Sex~Lrn)

