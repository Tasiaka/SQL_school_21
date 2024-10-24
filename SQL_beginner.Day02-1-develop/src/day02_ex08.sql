SELECT name FROM person
WHERE id IN ( 
	SELECT person_id 
	FROM person_order 
	WHERE menu_id IN
		(SELECT id
		 FROM menu 
		 WHERE pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza'))
AND (address = 'Moscow' OR address = 'Samara')
AND gender = 'male'
ORDER BY name DESC