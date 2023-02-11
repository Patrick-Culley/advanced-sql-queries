-- Find the film_title of all films which feature both RALPH CRUZ and WILL WILSON
-- Order the results by film_title in ascending order.
--  Warning: this is a tricky one and while the syntax is all things you know, you have to think a bit oustide the box to figure out how to get a table that shows pairs of actors in movies.


-- Put your query for q5 here.
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