--меняем урвоень изоляции
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

--запуск режима транзакции 1-й и 2-й сессии
BEGIN;

--смотрим сумму рейтинга в 1-й сессии
SELECT SUM(rating) FROM pizzeria; 

--выполняем вставку во 2-й сессии
INSERT INTO pizzeria (id, name, rating) VALUES (11, 'Kazan Pizza ',4);

--обновляем данные во 2-й сессии
COMMIT;

--снова смотрим сумму рейтинга в 1-й сессии
SELECT SUM(rating) FROM pizzeria;

--выходим из режима транзакции в 1-я сессии
COMMIT;

--снова смотрим сумму рейтинга в 1-й и в 2-й сессии 
SELECT SUM(rating) FROM pizzeria; 