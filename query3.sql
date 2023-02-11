-- Find the first_name, last_name and total_combined_film_length of Animation films for every actor.
-- Order your results by the actor_id in ascending order.

SELECT actor.actor_id, actor.first_name, actor.last_name, IFNULL(SUM(film.length), 0) AS total_combined_film_length FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id 
JOIN film_category ON film_actor.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id 
LEFT JOIN film ON film_actor.film_id = film.film_id AND category.name = 'Animation'
GROUP BY actor.actor_id
ORDER BY actor.actor_id ASC; 
