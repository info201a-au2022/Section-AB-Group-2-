install.packages("dplyr")
library("dplyr")

players <- read.csv("C:\\Users\\99773\\Documents\\info201\\Section-AB-Group-2-\\data\\data.csv")

# Main height of Guard(G) in 2012
main_height_G_2012 <- players %>%
  filter(YEAR == 2012) %>%
  summarise(mean = mean(HEIGHT, na.rm = TRUE))