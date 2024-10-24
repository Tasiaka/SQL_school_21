SET ENABLE_SEQSCAN TO OFF;
-- EXPLAIN ANALYZE
SELECT pizza_name, name  AS pizzeria_name
FROM menu JOIN pizzeria  on menu.pizzeria_id = pizzeria.id