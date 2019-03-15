# ===================================================================
# Title: make-shots-data-script
# Description:
# 
# Input(s): stephen-curry.csv, klay-thompson.csv, kevin-durant.csv, draymond-green.csv,  andre- iguodala.csv
# Output(s): make-shots-data-script.R
# ===================================================================
library(dplyr)

curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)
iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)


#add a new column name
curry <- mutate(curry, name = 'Stephen Curry')
iguodala <- mutate(iguodala, name = 'Andre Iguodala')
green <- mutate(green, name = 'Draymond Green')
durant <- mutate(durant, name = 'Kevin Durant')
thompson <- mutate(thompson, name = 'Klay Thompson')



#edit original values to more descriptive values
curry$shot_made_flag[curry$shot_made_flag == "n"] <- "shot_no"
curry$shot_made_flag[curry$shot_made_flag == "y"] <- "shot_yes"

iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] <- "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] <- "shot_yes"

green$shot_made_flag[green$shot_made_flag == "n"] <- "shot_no"
green$shot_made_flag[green$shot_made_flag == "y"] <- "shot_yes"

durant$shot_made_flag[durant$shot_made_flag == "n"] <- "shot_no"
durant$shot_made_flag[durant$shot_made_flag == "y"] <- "shot_yes"

thompson$shot_made_flag[thompson$shot_made_flag == "n"] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] <- "shot_yes"

#adding a new column "minute"
curry <- mutate(curry, minute = period*12 - minutes_remaining)
iguodala <- mutate(iguodala, minute = period*12 - minutes_remaining)
green <- mutate(green, minute = period*12 - minutes_remaining)
durant <- mutate(durant, minute = period*12 - minutes_remaining)
thompson <- mutate(thompson, minute = period*12 - minutes_remaining)

#sink summry files

sink(file = "../output/stephen-curry.txt")
summary(curry)
sink()

sink(file = "../output/andre-iguodala.txt")
summary(iguodala)
sink()

sink(file = "../output/draymond-green.txt")
summary(green)
sink()

sink(file = "../output/kevin-durant.txt")
summary(durant)
sink()

sink(file = "../output/klay-thompson.txt")
summary(thompson)
sink()

#stack the tables into one single data frame
shots_data <- rbind(curry, iguodala, green, durant, thompson)
#1250+915+578+371+1220 = 4334 rows

#exporting assembled data as csv 
write.csv(x = shots_data,
          file = "../data/shots-data.csv")

#sink summary of assembled data
sink(file = "../output/shots-data-summary.txt")
summary(shots_data)
sink()


