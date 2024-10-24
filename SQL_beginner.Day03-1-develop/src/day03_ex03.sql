WITH visits AS
(
	SELECT person.name, person.gender, person.id AS person_id, pizzeria.name AS pizzeria_name, person_visits.visit_date
	FROM person
	FULL JOIN person_visits ON person_visits.person_id = person.id
	LEFT JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id 
),
women AS 
(
	SELECT pizzeria_name, COUNT(person_id) AS count_f FROM visits WHERE gender = 'female'
	GROUP BY pizzeria_name
	ORDER BY count_f DESC
),
men AS 
(
	SELECT pizzeria_name, COUNT(person_id) AS count_m FROM visits WHERE gender = 'male'
	GROUP BY pizzeria_name
	ORDER BY count_m DESC
)
SELECT men.pizzeria_name FROM men
INNER JOIN women ON women.pizzeria_name = men.pizzeria_name 
AND women.count_f <> men.count_m
ORDER BY pizzeria_name