CREATE DATABASE restaurant_db;

CREATE TABLE restaurants
(
name VARCHAR(60),
distance INT(4),
stars INT(1),
category VARCHAR(60),
favorite_dish VARCHAR(60),
takeout TINYINT(1)
last_time_dined_there DATE()
)

