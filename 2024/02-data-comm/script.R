library(dplyr)
library(palmerpenguins) 
library(ggplot2)

# Load data

data(penguins)

penguins <- penguins |>
  filter(!is.na(sex))

# Default plot

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() 

# Themes #### 

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme_bw()

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme_void()

?theme_void

# Modifying theme elements #### 

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) 


ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank(),
        panel.grid.major = element_line(color = "black", linewidth = .5))


ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  theme(panel.grid.major = element_line(color = "black", linewidth = .5))  +
  theme(panel.grid.major.x = element_line(color = "red", linewidth = .1))

# Facetting #### 

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  facet_wrap(vars(island))


ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  facet_wrap(vars(island), 
              ncol = 1)


ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  facet_grid(rows = vars(island), 
              cols = vars(sex))

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  facet_grid(rows = vars(island), 
              cols = vars(sex), 
              switch = "y")

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  facet_grid(rows = vars(island), 
              cols = vars(sex), 
              switch = "y", 
              scales = "free_y")

# Modifying facet themes

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  facet_grid(rows = vars(island), 
              cols = vars(sex), 
              switch = "y") +
  theme(strip.background = element_blank())

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm,
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  facet_grid(rows = vars(island), 
              cols = vars(sex), 
              switch = "y") +
  theme(legend.position = "bottom")


# Counterintuitive marks and channels! #### 

ggplot(penguins, aes(sex, species, size = body_mass_g)) +
  geom_jitter() +
  theme(panel.background = element_blank())


# Better marks and channels #### 

ggplot(penguins, aes(body_mass_g)) +
  geom_histogram() +
  theme(panel.background = element_blank()) +
  facet_grid(rows = vars(species),
             cols = vars(sex), 
             switch = "y")

# Marks and channels options

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm, 
                     shape = species)) +
  geom_point() +
  theme(panel.background = element_blank()) 

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm, 
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) 

# cols4all

install.packages("cols4all", dependencies = TRUE)

library(cols4all)

c4a_gui()

ggplot(penguins, aes(body_mass_g, 
                     bill_depth_mm, 
                     color = species)) +
  geom_point() +
  theme(panel.background = element_blank()) +
  scale_color_discrete_c4a_cat(palette = "carto.vivid")



# esquisse #### 

install.packages("esquisse")

esquisse::esquisser(penguins)

