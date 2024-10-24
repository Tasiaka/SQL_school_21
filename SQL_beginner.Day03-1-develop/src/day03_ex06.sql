WITH pizz1 AS
(
	SELECT DISTINCT menu.pizza_name ,pizzeria.name AS pizzeria_name1, menu.price AS price1, pizzeria.id AS id1
	FROM pizzeria
	INNER JOIN menu ON menu.pizzeria_id = pizzeria.id 
	
)
SELECT DISTINCT pizz1.pizza_name, pizz1.pizzeria_name1, pizzeria.name AS pizzeria_name2, price
FROM pizzeria
INNER JOIN menu ON menu.pizzeria_id = pizzeria.id 
INNER JOIN pizz1 ON pizz1.price1 = menu.price 
	AND pizz1.pizza_name = menu.pizza_name
	AND pizz1.id1 > pizzeria.id 
ORDER BY pizza_name