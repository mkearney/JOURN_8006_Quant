## generate data
x <- seq(-3, 3, .01)
df <- data.frame(x = x, y = pnorm(x))

## load ggplot2
library(ggplot2)

## plot
ggplot(df, aes(x, (1 - y) + .3)) + 
  geom_line(size = 9, alpha = .3, colour = "#000000") + 
  geom_line(aes(x, 1 - y), size = 9, alpha = .5, colour = "#F1B82D") + 
  dataviz::theme_mwk(light = "#ffffff") + 
  theme(axis.title = element_blank(), axis.text = element_blank(),
    plot.margin = margin(0, -45, -4, -48)) + 
  annotate("text", -1.5, .570, label = "JOURN 7462", size = rel(28), 
    fontface = "bold", family = "Avenir Next Condensed", alpha = .8) + 
  annotate("text", -1.5, .050, label = "Emerging Technologies in Journalism",
    size = rel(7.5), family = "Avenir", alpha = .8) +
  scale_x_continuous(breaks = seq(-3, 3, .25)) + 
  scale_y_continuous(breaks = seq(-.1, 1.4, .25), limits = c(-.1, 1.4)) +
  ggsave("~/Desktop/journ7462-canvas-banner.png", width = 12, 
    height = 2, units = "in", bg = "transparent")
