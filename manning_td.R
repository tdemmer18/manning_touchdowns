library(readr)
manning <- read_csv("~/Desktop/manning.csv")
View(manning)

library(tidyverse)
library(ggthemes)


ggplot(manning, aes(Year, TD, fill = Tm)) + 
  geom_bar(stat = "identity") + 
  scale_fill_manual(values = c("IND" = "#003A70", "DEN" = "#FC4C02")) +
  geom_text(aes(label = TD), vjust = 2, color = "white", size = 3.5) +
  theme_fivethirtyeight() +
  theme(legend.position = c(0.25, 0.975),
        legend.title = element_text(face = "bold"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.text.y = element_blank(),
        plot.background = element_rect(fill = "#EFF2F4"),
        plot.title = element_text(hjust = 0.5)) +
  guides(fill = guide_legend(title = "PEYTON MANNING TOUCHDOWNS    ", reverse = "TRUE")) +
  scale_x_continuous(breaks = pretty(manning$Year, n = 20)) +
  labs(caption = "@tdemmer18")
