library(dplyr)
library(ggdist)
library(ggplot2)
library(distributional)
library(palmerpenguins)

theme_set(theme_bw())

penguins <- penguins

penguins %>%
  ggplot(aes(x = body_mass_g, y = species)) +
  geom_dotsinterval()

penguins |>  
  ggplot(aes(x = body_mass_g, y = species)) +
  stat_slab() +
  stat_dotsinterval(side = "bottom") 


penguins |>  
  ggplot(aes(x = body_mass_g, fill = species)) +
  stat_slab(alpha = .5) +
  stat_dotsinterval(side = "bottom") 

penguins %>%
  ggplot(aes(x = year, y = bill_depth_mm)) +
  stat_lineribbon() +
  scale_fill_brewer() +
  facet_wrap(vars(species), ncol = 1)

