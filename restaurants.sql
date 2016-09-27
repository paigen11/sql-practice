CREATE DATABASE IF NOT EXISTS restaurant_db;

DROP TABLE IF EXISTS restaurant;

CREATE TABLE IF NOT EXISTS restaurant
(
id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
distance FLOAT(255,2) DEFAULT NULL,
stars int(5) DEFAULT NULL,
category VARCHAR(255) DEFAULT NULL,
favorite_dish VARCHAR(255) DEFAULT NULL,
takeout TINYINT(1) DEFAULT 1,
last_visited VARCHAR(255) DEFAULT NULL,
PRIMARY KEY (id)
);

INSERT INTO restaurant VALUES (DEFAULT, 'Lovies BBQ', 0.03, 5, "Barbecue", "Pulled Pork Platter", 1, 'Sept 15, 2016'),
	(DEFAULT, "Jason's Deli", 0.2, 4, "Deli, Sandwich", "Turkey Sandwich", 1, 'Oct 12, 2015'),
	(DEFAULT, 'Chick-fil-A', 0.4, 4, "Sandwich", "Chicken Sandwich", 1, 'Sept 12, 2016'),
	(DEFAULT, 'Southern Art and Bourbon Bar', 0.4, 4, "Bar Food, Southern", "Country Chicken", 0, NULL),
	(DEFAULT, "Maggiano's Little Italy", 0.4, 4, "Italian", "Parmesian Chicken", 1, 'Mar 4, 2014'),
    (DEFAULT, 'Two Urban Licks', '10.4', 4, 'american', 'smoked salmon chips', 0, 'July 30th, 2016'),
    (DEFAULT, 'Buttermilk Kitchen', '1.7', 4, 'southern/breakfast', 'Fried chicken sandwich', 1, 'August 28th, 2016'),
    (DEFAULT, 'Bar Taco', '1.2', 2, 'tacos/mexican', 'fish taco', 0, 'June 7th, 2016'),
    (DEFAULT, 'The Ivy', '1.1', 1, 'american/bar', 'the water', 1, 'february 6th, 2016'),
    (DEFAULT, 'True Food', '0.9', 4, 'modern american', 'The salad', 1, 'July 24th, 2016');


DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
total_posts INT(1), 
PRIMARY KEY (id)
);


DROP TABLE IF EXISTS reviews;

CREATE TABLE IF NOT EXISTS reviews (
id INT(11) NOT NULL AUTO_INCREMENT ,
a_id INT(11) NOT NULL REFERENCES users(id),
stars INT(1) NOT NULL ,
title VARCHAR(60),
review LONGTEXT,
restaurant_id INT(11) REFERENCES restaurant(id),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS comments;

CREATE TABLE IF NOT EXISTS comments(
id INT(11) NOT NULL AUTO_INCREMENT,
u_id INT(11) NOT NULL REFERENCES reviews(id),
a_id INT(11) NOT NULL REFERENCES users(id),
comment LONGTEXT NOT NULL
);