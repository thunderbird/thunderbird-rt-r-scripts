library(tidyverse)
library(ggpmisc)
library(ggrepel)
library(geomtextpath)
lims <- as.Date(c("2024-06-01", "2024-10-17"))
ggplot(head(tb_2023_04_01_2024_10_18_daily_question_count, -1),
       aes(yyyy_mm_dd, count)) +
  #geom_vline(xintercept = as.numeric(as.Date('2024-07-08')), linetype="dotted", 
  #           color = "blue", linewidth=1.5)+
  #annotate("text", x=as.numeric(as.Date("2024-07-08")), y = 10,  label="Some text", angle=90)+
  geom_textvline(label="AAQ-sidebar08Jul24", xintercept = as.numeric(as.Date('2024-07-08')), vjust = -0.7, color="darkgreen", linetype ="dotted") +
  geom_textvline(label="TB128-11Jul24", xintercept = as.numeric(as.Date('2024-07-11')), hjust = 0.8, vjust = 1.7, color="darkred", , linetype ="dotted") +
  geom_line() +
  scale_x_date(date_labels = "%Y-%m-%d", 
                  date_breaks = "1 day", 
                 limits = lims,
                  expand = c(0, 0)) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) + 
#  geom_point()+
#  geom_text(aes(yyyy_mm_dd, count,label=count), subset = .(yyy_mm_dd > '2024-07-08'))+
 # geom_text(data=subset(head(tb_2023_04_01_2024_10_18_daily_question_count, -1), yyyy_geom_text_repel(data=subset(mtcars, wt > 4 | mpg > 25), aes(label=name))mm_dd > '2024-07-08'), aes(yyyy_mm_dd, count, label=count))+
  geom_text_repel(color="purple", data=subset(
    head(tb_2023_04_01_2024_10_18_daily_question_count, -1), 
    yyyy_mm_dd > '2024-07-05' # &
    #yyyy_mm_dd < '2024-07-20'  #& # count > 45 # &
      #as.numeric(as.Date(yyyy_mm_dd)) %% 2,
      ), aes(label=count)) +
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
    x.label.fmt = "at %Y-%m-%d",
    y.label.fmt = " Max count: %.0f",
    colour = "blue",
    arrow = grid::arrow(length = unit(0.1, "inches")),
    position = position_nudge_keep(x = 10, y = 0),
    hjust = 0
  ) +
  stat_valleys(
    span = NULL,
    geom = "text_s",
    mapping = aes(label = paste(
      after_stat(y.label), after_stat(x.label)
    )),
    x.label.fmt = "at %Y-%m-%d",
    y.label.fmt = " Min count: %.0f",
    colour = "blue",
    arrow = grid::arrow(length = unit(0.1, "inches")),
    position = position_nudge_keep(x = 10, y = -1),
    hjust = 0
  ) +
  geom_smooth() + 
  #geom_smooth(method = 'lm') +
  labs(x = 'Date', y = '# of TB SUMO questions', title = 'Daily Thunderbird SUMO questions 2024-06-01 2024-10-17') +
  theme(plot.title = element_text(hjust = 0.5, size = 20, face = 'bold'))
