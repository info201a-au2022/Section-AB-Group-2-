library("dplyr")
library("ggplot2")

players <- read.csv("C:\\Users\\99773\\Documents\\info201\\Section-AB-Group-2-\\data\\data.csv")


avg_height_guard <- players %>%
  filter(POS == 'G') %>%
  group_by(YEAR) %>%
  summarize(guard = mean(HEIGHT)) %>%
  select(YEAR, guard)

avg_height_front <- players %>%
  filter(POS == 'F') %>%
  group_by(YEAR) %>%
  summarize(front = mean(HEIGHT)) %>%
  select(YEAR, front)

avg_height_center <- players %>%
  filter(POS == 'C') %>%
  group_by(YEAR) %>%
  summarize(center = mean(HEIGHT)) %>%
  select(YEAR, center)

plot_avg_height_guard <- ggplot() + 
  geom_line(data = avg_height_guard, aes(x = YEAR, y = guard, color = 'guard')) +
  geom_line(data = avg_height_front, aes(x = YEAR, y = front, color = 'front')) +
  geom_line(data = avg_height_center, aes(x = YEAR, y = center, color = 'center')) +
  ggtitle("Average Height Change Per Posistion Each Year from NBA Draft")

print(plot_avg_height_guard + labs(x = "Year", y = "Height"))
