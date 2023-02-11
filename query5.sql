-- Find the film_title of all films which feature both RALPH CRUZ and WILL WILSON
-- Order the results by film_title in ascending order.

SELECT rc.title AS film_title FROM (SELECT film.title FROM film 
JOIN film_actor ON film.film_id = film_actor.film_id 
JOIN actor ON film_actor.actor_id = actor.actor_id 
WHERE actor.first_name = 'Ralph' AND actor.last_name = 'Cruz') AS rc
JOIN
(SELECT film.title FROM film 
JOIN film_actor ON film.film_id = film_actor.film_id 
JOIN actor ON film_actor.actor_id = actor.actor_id 
WHERE actor.first_name = 'Will' AND actor.last_name = 'Wilson') AS ww 
WHERE rc.title = ww.title
ORDER BY rc.title ASC; 