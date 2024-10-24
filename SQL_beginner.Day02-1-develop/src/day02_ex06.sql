WITH pizza_table AS(
	SELECT menu.pizza_name,pizzeria.name as pizzeria_name, person.name AS person_name
	FROM person_order
	INNER JOIN menu
	ON menu.id = person_order.menu_id
	INNER JOIN person
	ON person.id = person_order.person_id
	AND (person.name = 'Anna' OR person.name = 'Denis')
	INNER JOIN pizzeria
	ON menu.pizzeria_id = pizzeria.id
)

SELECT pizza_name, pizzeria_name
FROM pizza_table 
WHERE pizza_name IN
	(SELECT pizza_name
	FROM pizza_table
	GROUP BY pizza_name
	HAVING COUNT(*) > 1)
ORDER BY pizza_name, pizzeria_name