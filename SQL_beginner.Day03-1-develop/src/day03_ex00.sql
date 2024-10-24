SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name, person_visits.visit_date
	FROM menu
		FULL JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
		FULL JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
	ORDER BY menu.pizza_name, menu.price, pizzeria_name
		INNER JOIN person ON person.id = person_visits.person_id AND person.name = 'Kate'
	WHERE price BETWEEN 800 AND 1000