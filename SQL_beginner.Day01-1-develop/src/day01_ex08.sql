ALTER TABLE person RENAME COLUMN id TO person_id;
SELECT order_date, CONCAT (name, ' (age:', age, ')') AS person_information
FROM person 
NATURAL JOIN person_order 
ORDER BY order_date ASC,
		 person_information ASC