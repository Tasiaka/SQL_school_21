CREATE VIEW v_price_with_discount AS
(
	SELECT name, menu.pizza_name, menu.price, ROUND(menu.price * 0.9, 0) AS discount_price
	FROM person_order 
	INNER JOIN person ON person.id = person_order.person_id
	INNER JOIN menu ON menu.id = person_order.menu_id
	ORDER BY person.name,pizza_name
);