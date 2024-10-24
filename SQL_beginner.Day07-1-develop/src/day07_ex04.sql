SELECT person.name, COUNT (pizzeria.name) AS count_of_visits FROM person 
INNER JOIN person_visits ON person_visits.person_id = person.id
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
GROUP BY 1
HAVING COUNT(*) > 3