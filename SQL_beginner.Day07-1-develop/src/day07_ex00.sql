SELECT person.id AS person_id, COUNT(person_visits.person_id) AS count_of_visits
FROM person
FULL JOIN person_visits
ON person_id = person.id
GROUP BY person.id
ORDER BY count_of_visits DESC