CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
(
SELECT pizzeria.name
FROM person_visits
	INNER JOIN person
		ON person_visits.person_id = person.id
		AND (person.name = 'Dmitriy')
	FULL JOIN pizzeria
		ON pizzeria.id = person_visits.pizzeria_id
	FULL JOIN menu
		ON pizzeria.id = menu.pizzeria_id
		AND (menu.price <= '800')
WHERE (visit_date = '2022-01-08')
ORDER BY pizzeria.name
);