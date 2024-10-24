
WITH tab1 AS (
SELECT gen_id, 19 AS men_id, '2022-02-25'::date AS ord_dat
	FROM generate_series(1, (SELECT max(id) FROM person)) AS gen_id
)

INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT tab1.gen_id + (SELECT max(id) FROM person_order), tab1.gen_id, tab1.men_id, tab1.ord_dat
FROM tab1