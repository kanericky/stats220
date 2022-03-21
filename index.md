# Stats 220 Documents

This is a summary document page of my Stats 220 works....

<br>

## Assignment1 - Create my own meme image

- <b>Reference Link</b>:
  
  [Link to the origin image](https://pngset.com/images/doge-meme-photos-dog-meme-snout-pet-animal-mammal-transparent-png-59140.png)
  
  ![*Image*](https://pngset.com/images/doge-meme-photos-dog-meme-snout-pet-animal-mammal-transparent-png-59140.png)

- <b>The new meme I have created</b>:

  ![Image](https://github.com/kanericky/stats220/blob/main/STAT220A1_Meme.png)
  
- **Information about the meme**
  
  The origin image caught my eyes with the sunglasses the dog weared. There is a special contrast between the dog itself with an action of human. So I created this meme with two banners on the top and bottom with word "Whats up". The meme can be used to say hi or pretend being cool. 
  
- <b> Code I used to generate the meme image</b>

  ```r
  library(magick)
  library(dplyr)
  bg_image_0 <- image_blank(width = 1000, height = 100, color = "#000000")
  main_image <- image_read("https://pngset.com/images/doge-meme-photos-dog-meme-snout-pet-animal-mammal-transparent-png-59140.png")
  bg_image_1 <- image_blank(width = 1000, height = 100, color = "#000000") %>% image_annotate(text = "Whats up", color = "#FFFFFF", size = 100, gravity = "center")
  total_images <- c(bg_image_0, main_image, bg_image_1)
  meme_image <- image_append(total_images, stack = TRUE)
  image_write(meme_image, "STAT220A1_Meme.png")

  ```
