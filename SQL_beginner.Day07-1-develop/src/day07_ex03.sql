WITH tab1 AS 
		((SELECT pizzeria.name AS name, COUNT(person_visits.person_id), 'visit' AS action_type
		FROM pizzeria
		FULL JOIN person_visits
		ON person_visits.pizzeria_id = pizzeria.id
		GROUP BY name
		ORDER BY action_type ASC, count DESC
				LIMIT 3)
	UNION
		(SELECT pizzeria.name AS name, COUNT(person_order.person_id), 'order' AS action_type
		FROM pizzeria
		FULL JOIN menu
		ON menu.pizzeria_id = pizzeria.id
		FULL JOIN person_order
		ON menu.id = person_order.menu_id
		GROUP BY name
		ORDER BY action_type ASC, count DESC
				LIMIT 3))
SELECT name, sum(count) AS total_count
FROM tab1
GROUP BY name
ORDER BY total_count DESC, name ASC
