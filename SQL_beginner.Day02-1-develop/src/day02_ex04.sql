SELECT pizza_name, name as pizzeria_name, price
FROM menu
INNER JOIN pizzeria
ON menu.pizzeria_id = pizzeria.id
WHERE (menu.pizza_name = 'mushroom pizza' OR menu.pizza_name = 'pepperoni pizza')
ORDER BY pizza_name, pizzeria_name