install.packages("magick")
install.packages("dplyr")

library(magick)
library(dplyr)
bg_image_0 <- image_blank(width = 1000, height = 100, color = "#000000")
main_image <- image_read("https://pngset.com/images/doge-meme-photos-dog-meme-snout-pet-animal-mammal-transparent-png-59140.png")
bg_image_1 <- image_blank(width = 1000, height = 100, color = "#000000") %>% image_annotate(text = "Whats up", color = "#FFFFFF", size = 100, gravity = "center")
total_images <- c(bg_image_0, main_image, bg_image_1)
meme_image <- image_append(total_images, stack = TRUE)
image_write(meme_image, "STAT220A1_Meme.png")



