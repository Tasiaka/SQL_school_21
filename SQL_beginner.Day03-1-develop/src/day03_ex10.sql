INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES ((SELECT MAX(id)+1 FROM person_order), 4, 20, '2022-02-24');


INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((SELECT MAX(id)+1 FROM person_order), 6, 20, '2022-02-24');