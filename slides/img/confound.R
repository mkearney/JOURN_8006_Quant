library(tidygraph)
library(ggraph)

gr <- create_complete(5) %>%
  activate(nodes) %>%
  mutate(class = sample(c('a', 'b'), 5, TRUE)) %>%
  activate(edges) %>%
  arrange(from)


df <- tibble::data_frame(
  from = c("Confound", "Confound", "Confound", "Independent", "Independent"),
  to = c("Independent", rep("Dependent", 4))
)

gr <- df %>%
  as_tbl_graph(directed = TRUE)

ggraph(gr, layout = "auto", x = c(-1, -.75, 1), y = c(-1, 1, 0)) +
  geom_edge_link(
    arrow = arrow(type = "closed", length = unit(4, 'mm')),
    end_cap = circle(2.4, 'cm')) +
  geom_node_point(size = 60,
                  shape = 21, fill = col2hex("slategrey", alpha = 1)) +
  geom_node_text(colour = "white",
                 fontface = "bold", size = 6,
                 label = c("Confound", "Independent", "Dependent")) +
  xlim(-1.25, 1.25) + ylim(-1.33, 1.33) +
  theme_mwk(base_family = "Roboto Condensed") +
  theme(axis.text = element_blank(),
        text = element_text(size = 30)) +
  labs(title = "Confounding or \"third variable\" problem",
       subtitle = "Confound in the relationship between independent and dependent variables",
       x = NULL, y = NULL) +
  ggsave("confound.png")

# The above could be achieved using the special pipes as well
gr <- create_complete(5) %N>%
  mutate(class = sample(c('a', 'b'), 5, TRUE)) %E>%
  arrange(from)


layout <- create_layout(gr, layout = "manual", x = c(-1, 0, 1), y = c(-1, 1, 0))

ggraph(gr, layout)

# But as you can see it obscures what part of the graph is being targeted




plot(gr)



library(ggraph)
library(tidygraph)

set_graph_style(plot_margin = margin(1,1,1,1))
gr <- as_tbl_graph(highschool)

ggraph(gr, layout = 'kk') +
  geom_point(aes(x=x, y=y))