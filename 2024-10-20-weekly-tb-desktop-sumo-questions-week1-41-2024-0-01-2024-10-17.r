library(tidyverse)
library(ggpmisc)
library(ggrepel)
library(geomtextpath)
lims <- as.Date(c("2024-06-01", "2024-10-17"))
tb_question_count_by_isoweek <- read_csv(
  "https://raw.githubusercontent.com/thunderbird/github-action-thunderbird-aaq/refs/heads/main/ALLTIME/2024-thunderbird-question-count-by-iso-week.csv"
)
ggplot(head(tb_question_count_by_isoweek, -1),
       aes(iso_week, count, group = 1)) +
  geom_point() +
  geom_line() +
  geom_textvline(
    label = "AAQ-sidebar08Jul24, TB128 11Jul",
    xintercept = 28,
    vjust = -0.7,
    color = "darkgreen",
    linetype = "dotted"
  ) +
  theme(axis.text.x = element_text(
    angle = 45,
    vjust = 1,
    hjust = 1
  )) +
  geom_text_repel(
    color = "purple",
    data = subset(
      head(tb_question_count_by_isoweek, -1),
      iso_week > '25'), 
      aes(label = count)
    ) +
    stat_peaks(
        span = NULL,
        geom = "text_s",
        mapping = aes(label = paste(
          after_stat(y.label), after_stat(x.label)
        )),
        # stat_peaks and stat_valleys labels will work with dates in POSIXct format from:
        # https://stackoverflow.com/questions/57836633/labeling-extrema-with-stat-peaks-stat-valleys-produces-duplicate-labels
        # The formatting is determined by a format string compatible with sprintf() or strftime(). from:
        # https://cran.r-project.org/web/packages/ggpmisc/ggpmisc.pdf
        x.label.fmt = "at %d",
        y.label.fmt = " Max count: %.0f",
        colour = "blue",
        arrow = grid::arrow(length = unit(0.1, "inches")),
        position = position_nudge_keep(x = -4, y = 2.6),
        hjust = 0
      ) +
      stat_valleys(
        span = NULL,
        geom = "text_s",
        mapping = aes(label = paste(
          after_stat(y.label), after_stat(x.label)
        )),
        x.label.fmt = "at %d",
        y.label.fmt = " Min count: %.0f",
        colour = "blue",
        arrow = grid::arrow(length = unit(0.1, "inches")),
        position = position_nudge_keep(x = 10, y = -1),
        hjust = 0
      ) +
      geom_smooth() +
      labs(x = 'ISO Week', y = '# of TB SUMO questions', title = 'Weekly Thunderbird SUMO questions 1 to 41') +
      theme(plot.title = element_text(
        hjust = 0.5, size = 20, face = 'bold'
      ))
    