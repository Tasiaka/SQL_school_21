SELECT menu.id
FROM menu
WHERE id NOT in (
	SELECT menu_id
	FROM person_order
)
ORDER BY id
