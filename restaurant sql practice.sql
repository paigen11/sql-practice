-- 1. The names of the restaurants that you gave a 5 stars to
/* SELECT name FROM restaurants
	WHERE stars = 5 */
	
-- 2. The favorite dishes of all 5-star restaurants	
/* SELECT favorite_dish FROM restaurants
	WHERE stars = 5 */
	
-- 3. The the id of a restaurant by a specific restaurant name, say 'NaanStop'	
	/* SELECT id FROM restaurants
	WHERE name = 'Aria' */
	
-- 4. restaurants in the category of 'BBQ'	
	/* SELECT * FROM restaurants
	WHERE category = 'BBQ' */
	
-- 5. restaurants that do take out	
	/* SELECT * FROM restaurants
	WHERE takeout = true */
	
-- 6. restaurants that do take out and is in the category of 'BBQ'	
	/* SELECT * FROM restaurants
	WHERE takeout = true
	AND category = 'BBQ' */
	
-- 7. restaurants within 2 miles	
	/* SELECT * FROM restaurants
	WHERE distance <= 2 */
	
-- 8. restaurants you haven't ate at in the last week	
	/* SELECT * FROM restaurants 
	WHERE DATEDIFF(CURDATE(), last_time_dined_there) < 365 */
	
-- 9. restaurants you haven't ate at in the last week and has 5 stars	
	/* SELECT * FROM restaurants 
	WHERE DATEDIFF(CURDATE(), last_time_dined_there) < 365
	AND stars  = 5 */
	
	/* UPDATE restaurants SET stars = 5 where id = 12;
	SELECT * FROM restaurants WHERE 1;
	
	DELETE FROM restaurants WHERE stars < 3;
	SELECT * FROM restaurant WHERE 1; */
	
-- 1. get the average stars by restaurant (restaurant name, average star rating)	
-- 	SELECT name, stars FROM restaurant;

-- 2. get the average stars by user (user name, average star rating)
-- SELECT DISTINCT id2.name, AVG(id1.stars) FROM reviews AS id1 JOIN users AS id2 ON id1.a_id = id2.id GROUP BY id2.name;

-- 3. get the lowest star rating for each user (user name, lowest star rating)
-- SELECT DISTINCT users.name, MIN(reviews.stars) FROM reviews JOIN users ON a_id = users.id GROUP BY users.id;  	

-- 4. get the number of reviews by restaurant (restaurant name, review count)
-- SELECT DISTINCT restaurant.name, COUNT(reviews.restaurant_id) FROM restaurant JOIN reviews ON restaurant.id = reviews.restaurant_id GROUP BY restaurant.id;

-- 5. get the number of restaurants in each category (category name, restaurant count)
-- SELECT DISTINCT restaurant.category, COUNT(restaurant.category) FROM restaurant GROUP BY restaurant.category;

-- 6. get number of 5 star reviews by restaurant (restaurant name, 5-star count)
-- SELECT DISTINCT restaurant.name, COUNT(restaurant.stars) FROM restaurant WHERE restaurant.stars = 5;

-- 7. average star rating for a food category (category name, average star rating)
-- SELECT DISTINCT restaurant.category, AVG(restaurant.stars) FROM restaurant GROUP BY restaurant.category;

