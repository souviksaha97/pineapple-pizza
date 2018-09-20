library(dslabs)
library(dplyr)
library(ggplot2)
ds_theme_set()
data(us_contagious_diseases)
states = c("New York", "California", "Massachusetts")
diseases = c("Polio", "Hepatitis A", "Mumps")

test <- test <- us_contagious_diseases %>% filter(state %in% states)

test %>% ggplot(aes(year, count, color = state)) + geom_point() + geom_smooth() + facet_wrap(state~disease, ncol=3)
