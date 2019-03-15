# ====================================================
# Title: make-shot-sharts-cript
# Description: Use the data to analyze shot chart of 5 best members in GSW
#
# Input(s): data title 'andre-iguodala.csv, klay-thompson.csv, draymond-green.csv, kevin-durant.csv, stephen-curry.csv, nba-court.jpg'
# Output(s): pdf files ' andre-iguodala-shot-chart.pdf, draymond-green-shot-chart.pdf, kevin-durant-shot-chart.pdf, klay-thompson-shot-chart.pdf, stephen-curry-shot-chart.pdf, gsw-shot-charts.pdf.'
# =====================================================

library(ggplot2)
library(grid)
library(jpeg)

# court image (to be used as background of plot)
court_file <- "../images/nba-court.jpg"
# create raste object
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))

# exporting as pdf includes file shot chart of player with court background 

pdf(file = "../images/stephen-curry-shot-chart.pdf",
    width = 6.5, height = 5)
ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Sthephen Curry (2016 season)') + theme_minimal()
dev.off()

pdf(file = "../images/andre-iguodala-shot-chart.pdf",
    width = 6.5, height = 5)
ggplot(data = iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') + theme_minimal()
dev.off()

pdf(file = "../images/draymond-green-shot-chart.pdf",
    width = 6.5, height = 5)
ggplot(data = green) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') + theme_minimal()
dev.off()

pdf(file = "../images/kevin-durant-shot-chart.pdf",
    width = 6.5, height = 5)
ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') + theme_minimal()
dev.off()

pdf(file = "../images/klay-thompson-shot-chart.pdf",
    width = 6.5, height = 5)
ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()
dev.off()


#facetting
pdf(file = "../images/gsw-shot-charts.pdf",
    width = 8, height = 7)
ggplot(data = shots_data) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') + theme_minimal()  +
  facet_wrap(~name)
dev.off()

png(filename = "../images/gsw-shot-charts.png",
  width = 800, height = 700,  pointsize = 24)
ggplot(data = shots_data) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') + theme_minimal()  +
  facet_wrap(~name)
dev.off()

