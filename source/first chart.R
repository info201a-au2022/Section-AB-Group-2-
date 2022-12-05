library("dplyr")
library("ggplot2")

players <- read.csv("C:\\Users\\99773\\Documents\\info201\\Section-AB-Group-2-\\data\\data.csv")

plot_height_by_year <- ggplot(players, aes(x = YEAR, y = HEIGHT, group = YEAR, color = YEAR)) + 
  geom_boxplot() +
  ggtitle("The Change of Average Height of NBA Draft From 2012 to 2022")

print(plot_height_by_year + labs(x = "Year", y = "Height"))
