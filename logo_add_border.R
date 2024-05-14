library(magick)
library(glue)
logo <- image_read("logo_new.png")
logo_border <-
  logo |> 
  image_background("white") |> 
  image_border(color = "white", geometry = "5x5")
  
logo_border |> 
  image_write("logo.png")


# possibly add "Data Science" to bottom (allowed?)

x <- image_info(logo_border)$width
y <- image_info(logo_border)$height
ds_height <- 35

logo_border |> 
  image_border(color = "white", geometry = glue("0x{ds_height}")) |> 
  image_annotate(
    text = "{Data Science}",
    gravity = "south",
    font = "Fira Code",
    size = glue("{ds_height - 5}")
  ) |> 
  image_crop(glue("{x}x{y+ds_height}-0+{ds_height}"))
  

