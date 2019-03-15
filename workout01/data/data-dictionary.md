Data Dictionary
=========================

# Title : **_2016 GSW Shot Chart_**

------------------------------------------------

Source information
----------------------------
- [Klay Thompson](https://raw.githubusercontent.com/ucb-stat133/stat133-spring-2018/master/data/klay-thompson.csv)
- [Kevin Durant](https://raw.githubusercontent.com/ucb-stat133/stat133-spring-2018/master/data/kevin-durant.csv)
- [Stephen Curry](https://raw.githubusercontent.com/ucb-stat133/stat133-spring-2018/master/data/stephen-curry.csv)
- [Andre Iguadala](https://raw.githubusercontent.com/ucb-stat133/stat133-spring-2018/master/data/andre-iguodala.csv)
- [Draymond Green](https://raw.githubusercontent.com/ucb-stat133/stat133-spring-2018/master/data/draymond-green.csv)

Description 
----------------------------
> Each 5 data files indicates the shot chart of 5 best members(klay thompson, kevin durant, stephen curry, andre iguadala, draymond green) in GSW in season 2016-2017. 
consist of 5 types of entities: 
(1) When the player attempted the shot (2) the shot was made or not (3) what type of shot did the player attempted (4) where did the player attempted the shot on a court (5) who was the opponent.


------------------------------------------------------------------

Variables Information
-----------------------------------------------
|        |variables:           |variables info.:                     |
|--------|---------------------|-------------------------------------|
|1.      |team_name            |GSW (chr)                            |
|2.      |game_date            |mm/dd/yyyy (chr)                     |
|3.      |season               |2016 (int)                           |
|4.      |period               |1,2,3,4 (int)                        |
|5.      |minutes_remaining    |0 to 11 (int)                        |
|6.      |seconds_remaining    |0 to 59 (int)                        |
|7.      |shot_made_flag       |n, y (chr)                           |
|8.      |action_type          |Alley Oop Dunk Shot, Alley Oop Layup shot, Cutting Dunk Shot, Cutting Finger Roll Layup Shot, Cutting Layup Shot, Driving Bank shot, etc.(chr)  |
|9.      |shot_type            |2PT Field Goal, 3PT Field Goal(chr)  |
|10.      |shot_distance(feet)   |0 to 71 (int)                      |
|11.      |opponent            |the other NBA teams (chr)            |
|12.      |x(the court coordinate, inch)   |-248 to 246   (int)      |
|13.      |y(the court coordinate, inch)   |-39 to 717  (int)        |
----------------------------------------------------------------------
                               
Variables Description
----------------------------------------------------------------------
* period: an NBA game is divided in 4 periods of 12 mins each. For example, a value
for period = 1 refers to the first period (the first 12 mins of the game)
* minutes_remaining and seconds_remaining: They have to do with the amount of time in
minutes and seconds, respectively, that remained to be played in a given period.
* action_type: It has to do with the basketball moves used by players, either to pass by
defenders to gain access to the basket, or to get a clean pass to a teammate to score a
two pointer or three pointer.
* shot_type: It indicates whether a shot is a 2-point field goal, or a 3-point field goal.
* shot_distance:  distance to the basket (measured in feet).
* x and y:They refer to the court coordinates (measured in inches) where a shot occurred. 
