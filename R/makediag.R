install.packages("ggdag")
library(ggdag)

foo <- function(y, x, data = "data") {
  mytheme <- function() theme_mwk() %+replace%
    theme(axis.text = element_blank(), axis.title = element_blank(),
      legend.position = "none",
      plot.title = element_text(size = rel(2), family = "Consolas", margin = margin(8, 0, 0, 0)))
  theme_set(mytheme())
  asdf <- function(x) {
    x <- as.data.frame(x)
    setNames(x, c("x", "y"))
  }
  xn <- length(x)
  xx <- paste0("x", seq_len(xn))
  f <- as.formula(paste("y ~ ", paste0(xx, collapse = " + ")))
  labs <- c(y, x)
  names(labs) <- c("y", xx)
  if (xn == 4) {
    mat <- asdf(matrix(c(
      -1, 1,
      -1, .333,
      -1, -.333,
      -1, -1,
      1, 0
    ), ncol = 2, byrow = TRUE))
  } else if (xn == 3) {
    mat <- asdf(matrix(c(
      -1, 1,
      -1, 0,
      -1, -1,
      1, 0
    ), ncol = 2, byrow = TRUE))
  } else if (xn == 2) {
    mat <- asdf(matrix(c(
      -1, .9,
      -1, -.9,
      1, 0
    ), ncol = 2, byrow = TRUE))
  } else if (xn == 1) { 
    mat <- asdf(matrix(c(
      -1, 0,
      1, 0
    ), ncol = 2, byrow = TRUE))
  }
  title <- paste0("lm(", as.character(deparse(f)), ", data = ", data, ")")
  dag <- dagify(
    f,
    outcome = "bias",
    labels = labs) %>% 
    tidy_dagitty(layout = "manual", node.positions = mat)
  db <- "#001177"
  dr <- "#bb1111"
  dag$data$outcome <- FALSE
  dag$data$outcome[nrow(dag$data)] <- TRUE
  suppressMessages(suppressWarnings(ggdag(dag, text = FALSE) +
    geom_dag_node(aes(colour = outcome), size = 34) + 
    xlim(-1.3, 1.3) + ylim(-1.3, 1.3) + 
    geom_dag_text(col = "white", size = 10) +
    geom_label(aes(x = x, y = y - .3, label = label), size = 4) + 
    scale_colour_manual(values = c(db, dr)) + 
    mytheme() + 
    labs(title = title)))
}


foo("Perceived as biased", data = "bias", 
  c("Popularity of source")) + 
  ggsave("slides/img/1x.png", width = 9, height = 7, units = "in")

foo("Perceived as biased", data = "bias", 
  c("Partisanship of source", "Popularity of source")) + 
  ggsave("slides/img/2x.png", width = 9, height = 7, units = "in")

foo("Perceived as biased", data = "bias", 
  c("Partisanship of source", "Popularity of source", "Shared via social media")) + 
  ggsave("slides/img/3x.png", width = 9, height = 7, units = "in")

foo("Perceived as biased", data = "bias", 
  c("Partisanship of source", "Popularity of source", "Shared via social media", "Gender of reader")) + 
  ggsave("slides/img/4x.png", width = 9, height = 7, units = "in")
