library(tidyverse)
library(urbnthemes)
library(hexSticker)
library(extrafont)

set_urbn_defaults(style = "print")

urbntemplates <- ggplot() +
  annotate("rect", xmin = 0, xmax = 1.5, ymin = 0.3, ymax = 1.3, fill = "#1696d2", color = "white") +
  annotate("text", x = 0.02, y = 0.45, label = "urbntemplates", size = 4, hjust = 0, color = "white", family = "Lato") +
  annotate("rect", xmin = 0.1, xmax = 1.6, ymin = 0.2, ymax = 1.2, fill = "#1696d2", color = "white") +
  annotate("text", x = 0.12, y = 0.35, label = "urbntemplates", size = 4, hjust = 0, color = "white") +
  annotate("rect", xmin = 0.2, xmax = 1.7, ymin = 0.1, ymax = 1.1, fill = "#1696d2", color = "white") +
  annotate("text", x = 0.22, y = 0.25, label = "urbntemplates", size = 4, hjust = 0, color = "white") +
  annotate("rect", xmin = 0.3, xmax = 1.8, ymin = 0, ymax = 1, fill = "#1696d2", color = "white") +
  annotate("text", x = 0.32, y = 0.15, label = "urbntemplates", size = 4, hjust = 0, color = "white") +
  # grid box
  annotate("rect", xmin = 0.4, xmax = 1.7, ymin = 0.3, ymax = 0.4, fill = "#1696d2", color = "white", size = 0.2) +
  annotate("rect", xmin = 0.4, xmax = 1.7, ymin = 0.4, ymax = 0.5, fill = "#1696d2", color = "white", size = 0.2) +
  annotate("rect", xmin = 0.4, xmax = 1.7, ymin = 0.5, ymax = 0.6, fill = "#1696d2", color = "white", size = 0.2) +
  annotate("rect", xmin = 0.4, xmax = 1.7, ymin = 0.6, ymax = 0.7, fill = "#1696d2", color = "white", size = 0.2) +
  annotate("rect", xmin = 0.4, xmax = 1.7, ymin = 0.7, ymax = 0.8, fill = "#1696d2", color = "white", size = 0.2) +
  annotate("rect", xmin = 0.4, xmax = 1.7, ymin = 0.8, ymax = 0.9, fill = "#1696d2", color = "white", size = 0.2) +
  annotate("segment", x = 0.5, xend = 0.5, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 0.6, xend = 0.6, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 0.7, xend = 0.7, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 0.8, xend = 0.8, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 0.9, xend = 0.9, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 1.0, xend = 1.0, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 1.1, xend = 1.1, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 1.2, xend = 1.2, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 1.3, xend = 1.3, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 1.4, xend = 1.4, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 1.5, xend = 1.5, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  annotate("segment", x = 1.6, xend = 1.6, y = 0.3, yend = 0.9, color = "white", size = 0.2) +
  # apartment
  annotate("rect", xmin = 0.9, xmax = 1.6, ymin = 0.6, ymax = 0.8, fill = "#1696d2",
           color = "white", size = 0.6, alpha = 0) +
  annotate("rect", xmin = 0.5, xmax = 1.4, ymin = 0.4, ymax = 0.8, fill = "#1696d2",
           color = "white", size = 0.6, alpha = 0) +
  geom_point(aes(x = 0.7, y = 0.6), size = 5, color = "white", shape = 21) +
  annotate("segment", x = 0.5, xend = 0.9, y = 0.8, yend = 0.4, color = "white", size = 0.2) +
  annotate("segment", x = 0.9, xend = 0.5, y = 0.8, yend = 0.4, color = "white", size = 0.2) +
  annotate("segment", x = 1.4, xend = 1.6, y = 0.4, yend = 0.6, color = "white", size = 0.6) +
  theme_void() +
  coord_equal()

sticker(urbntemplates,
        package = "",
        filename = "man/figures/hexsticker.png",
        p_size = 8,
        s_x = 1,           # subplot position
        s_y = 1,           # subplot position
        s_width = 1.8,          # subplot width
        s_height = 1.2,         # subplot height
        p_color = "#1696d2",
        h_fill = "#1696d2",
        h_size = 0,           # no border
        h_color = "#d2d2d2"
)
