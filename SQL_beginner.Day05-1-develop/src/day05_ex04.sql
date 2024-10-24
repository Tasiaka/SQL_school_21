CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);
SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE
SELECT * FROM menu where pizzeria_id = 3 and  pizza_name = 'cheese pizza';