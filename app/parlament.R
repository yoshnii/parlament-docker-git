library(ggpol)
library(ggplot2)
library(dplyr)

party_seats <- data.frame(
  party  = factor(
    c(
      "Communist Party of China",
      "Jiusan Society",
      "China Democratic League",
      "China National Democratic Construction Association",
      "China Association for Promoting Democracy",
      "Chinese Peasants' and Workers' Democratic Party",
      "China Zhi Gong Party",
      "Taiwan Democratic Self-Government League",
      "Non-Partisan Deputies"
    ),
    levels = c(
      "Communist Party of China",
      "Jiusan Society",
      "China Democratic League",
      "China National Democratic Construction Association",
      "China Association for Promoting Democracy",
      "Chinese Peasants' and Workers' Democratic Party",
      "China Zhi Gong Party",
      "Taiwan Democratic Self-Government League",
      "Non-Partisan Deputies"
    )
  ),
  seats  = c(2119, 64, 64, 57, 55, 54, 43, 13, 479),
  colors = c(
    "#FF0000",  # red for CCP
    "#377eb8",
    "#4daf4a",
    "#984ea3",
    "#ff7f00",
    "#ffff33",
    "#a65628",
    "#f781bf",
    "#999999"
  ),
  stringsAsFactors = FALSE
)


p<-ggplot(party_seats, aes(seats = seats, fill = party)) +
  # force a circle with a border so fill is used
  geom_parliament(shape = 21, colour = "black", size = 2, stroke = 0.01) +
  scale_fill_manual(values = party_seats$colors,
                    labels = levels(party_seats$party),
                    guide  = guide_legend(nrow = 3, byrow = TRUE)) +
  coord_fixed() +
  theme_void() +
  theme(legend.position = "bottom") +
  labs(title = "NPC XIII Distribution", fill = "Party")

ggsave("plot.png", p, width = 15, height = 9, dpi = 300, units = "in")
