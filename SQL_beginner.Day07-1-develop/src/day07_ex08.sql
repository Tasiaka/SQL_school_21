SELECT person.address, pizzeria.name, COUNT(*) AS count_of_orders
FROM person_visits
INNER JOIN person ON person.id = person_visits.person_id
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
GROUP BY person.address, pizzeria.name
ORDER BY address, name