SELECT * FROM film;

SELECT AVG(rental_rate) as "Average cost"
from film;

SELECT rating, AVG(rental_rate) AS "Average COST per rating"
FROM film
GROUP BY rating
ORDER BY "Average COST per rating" DESC;

SELECT SUM(replacement_cost)
FROM film

SELECT rating, SUM(replacement_cost) AS "Average COST per rating"
FROM film
GROUP BY rating
ORDER BY "Average COST per rating" DESC;

SELECT MAX(length) AS "The le"