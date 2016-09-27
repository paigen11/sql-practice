DROP TABLE IF EXISTS restaurants;
CREATE TABLE IF NOT EXISTS restaurants
(
id INT(11 )
name VARCHAR(60),
distance INT(4),
stars INT(1),
category VARCHAR(60),
favorite_dish VARCHAR(60),
takeout TINYINT(1),
last_time_dined_there DATE
)

