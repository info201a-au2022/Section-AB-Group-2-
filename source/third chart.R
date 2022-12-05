library("dplyr")
library("ggplot2")

players <- read.csv("C:\\Users\\99773\\Documents\\info201\\Section-AB-Group-2-\\data\\data.csv")

G_2012 <- players %>%
  filter(YEAR == '2012') %>%
  filter(POS == 'G') 

F_2012 <- players %>%
  filter(YEAR == '2012') %>%
  filter(POS == 'F')

C_2012 <- players %>%
  filter(YEAR == '2012') %>%
  filter(POS == 'C')
#---
G_2013 <- players %>%
  filter(YEAR == '2013') %>%
  filter(POS == 'G') 

F_2013 <- players %>%
  filter(YEAR == '2013') %>%
  filter(POS == 'F')

C_2013 <- players %>%
  filter(YEAR == '2013') %>%
  filter(POS == 'C')
#---
G_2014 <- players %>%
  filter(YEAR == '2014') %>%
  filter(POS == 'G') 

F_2014 <- players %>%
  filter(YEAR == '2014') %>%
  filter(POS == 'F')

C_2014 <- players %>%
  filter(YEAR == '2014') %>%
  filter(POS == 'C')
#---
G_2015 <- players %>%
  filter(YEAR == '2015') %>%
  filter(POS == 'G') 

F_2015 <- players %>%
  filter(YEAR == '2015') %>%
  filter(POS == 'F')

C_2015 <- players %>%
  filter(YEAR == '2015') %>%
  filter(POS == 'C')
#---
G_2016 <- players %>%
  filter(YEAR == '2016') %>%
  filter(POS == 'G') 

F_2016 <- players %>%
  filter(YEAR == '2016') %>%
  filter(POS == 'F')

C_2016 <- players %>%
  filter(YEAR == '2016') %>%
  filter(POS == 'C')
#---
G_2017 <- players %>%
  filter(YEAR == '2017') %>%
  filter(POS == 'G') 

F_2017 <- players %>%
  filter(YEAR == '2017') %>%
  filter(POS == 'F')

C_2017 <- players %>%
  filter(YEAR == '2017') %>%
  filter(POS == 'C')
#---
G_2018 <- players %>%
  filter(YEAR == '2018') %>%
  filter(POS == 'G') 

F_2018 <- players %>%
  filter(YEAR == '2018') %>%
  filter(POS == 'F')

C_2018 <- players %>%
  filter(YEAR == '2018') %>%
  filter(POS == 'C')
#---
G_2019 <- players %>%
  filter(YEAR == '2019') %>%
  filter(POS == 'G') 

F_2019 <- players %>%
  filter(YEAR == '2019') %>%
  filter(POS == 'F')

C_2019 <- players %>%
  filter(YEAR == '2019') %>%
  filter(POS == 'C')
#---
G_2020 <- players %>%
  filter(YEAR == '2020') %>%
  filter(POS == 'G') 

F_2020 <- players %>%
  filter(YEAR == '2020') %>%
  filter(POS == 'F')

C_2020 <- players %>%
  filter(YEAR == '2020') %>%
  filter(POS == 'C')
#---
G_2021 <- players %>%
  filter(YEAR == '2021') %>%
  filter(POS == 'G') 

F_2021 <- players %>%
  filter(YEAR == '2021') %>%
  filter(POS == 'F')

C_2021 <- players %>%
  filter(YEAR == '2021') %>%
  filter(POS == 'C')
#---
G_2022 <- players %>%
  filter(YEAR == '2022') %>%
  filter(POS == 'G') 

F_2022 <- players %>%
  filter(YEAR == '2022') %>%
  filter(POS == 'F')

C_2022 <- players %>%
  filter(YEAR == '2022') %>%
  filter(POS == 'C')

number_position <- data.frame(year = c(2012, 2012, 2012, 
                                       2013, 2013, 2013,
                                       2014, 2014, 2014,
                                       2015, 2015, 2015, 
                                       2016, 2016, 2016,
                                       2017, 2017, 2017, 
                                       2018, 2018, 2018,
                                       2019, 2019, 2019, 
                                       2020, 2020, 2020, 
                                       2021, 2021, 2021, 
                                       2022, 2022, 2022),
                              position = c("G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C",
                                           "G", "F", "C"),
                              number = c(nrow(G_2012), nrow(F_2012), nrow(C_2012),
                                         nrow(G_2013), nrow(F_2013), nrow(C_2013),
                                         nrow(G_2014), nrow(F_2014), nrow(C_2014),
                                         nrow(G_2015), nrow(F_2015), nrow(C_2015),
                                         nrow(G_2016), nrow(F_2016), nrow(C_2016),
                                         nrow(G_2017), nrow(F_2017), nrow(C_2017),
                                         nrow(G_2018), nrow(F_2018), nrow(C_2018),
                                         nrow(G_2019), nrow(F_2019), nrow(C_2019),
                                         nrow(G_2020), nrow(F_2020), nrow(C_2020),
                                         nrow(G_2021), nrow(F_2021), nrow(C_2021),
                                         nrow(G_2022), nrow(F_2022), nrow(C_2022)))
plot_number_position <- ggplot(number_position, aes(x=year, y=number, fill=position)) +
  geom_bar(stat="identity") +
  ggtitle("Number of Players in Each Position in NBA Draft")


print(plot_number_position)

