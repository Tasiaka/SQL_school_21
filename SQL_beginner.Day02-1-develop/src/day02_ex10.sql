WITH city AS(
	SELECT DISTINCT name, address, id
	FROM person
)
SELECT DISTINCT city.name AS person_name1, person.name AS person_name2,city.address AS common_address
FROM city
LEFT JOIN person
ON city.address = person.address
WHERE city.id > person.id 
AND city.name <> person.name
ORDER BY city.name, person.name