-- Find all films with minimum length or maximum rental duration (compared to all other % films).
-- Order your results by film_id in descending order.

SELECT film_id FROM film 
WHERE length = (SELECT MIN(length) FROM film)
OR rental_duration = (SELECT MAX(rental_duration) FROM film)
ORDER BY film_id DESC; 