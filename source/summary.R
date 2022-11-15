install.packages("dplyr")
library("dplyr")

players <- read.csv("C:\\Users\\99773\\Documents\\info201\\Section-AB-Group-2-\\data\\data.csv")

# Mean height of all players in 2012
mean_height_2012 <- players %>%
  filter(YEAR == '2012') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Mean height of guard(G) players in 2012
mean_height_G_2012 <- players %>%
  filter(YEAR == '2012') %>%
  filter(POS == 'G') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Mean height of all players in 2014
mean_height_2014 <- players %>%
  filter(YEAR == '2014') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Mean height of all players in 2016
mean_height_2016 <- players %>%
  filter(YEAR == '2016') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Mean height of all players in 2018
mean_height_2018 <- players %>%
  filter(YEAR == '2018') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Mean height of all players in 2020
mean_height_2020 <- players %>%
  filter(YEAR == '2020') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Mean height of all players in 2022
mean_height_2022 <- players %>%
  filter(YEAR == '2022') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Mean height of guard(G) players in 2022
mean_height_G_2022 <- players %>%
  filter(YEAR == '2022') %>%
  filter(POS == 'G') %>%
  summarize(mean = mean(HEIGHT, na.rm = TRUE))

# Height difference between 2012 and 2022 guard players
height_diff_btwn_2012_2022_G <- mean_height_G_2022 - mean_height_G_2012
# Since the difference in height is positive, NBA teams tend to select 
# relatively higher guards in 2022.

# Height difference between 2012 and 2022 in all players
height_diff_btwn_2012_2022 <- mean_height_2022 - mean_height_2012
# Since the difference in height is negative, NBA teams tend to select 
# relatively higher players in 2012, but the difference is not obvious.