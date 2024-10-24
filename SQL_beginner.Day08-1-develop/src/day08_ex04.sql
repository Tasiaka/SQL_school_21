--меняем урвоень изоляции
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE;

--запуск режима транзакции 1-й и 2-й сессии
BEGIN;

--проверяем исходные данные в 1-й сессии
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';   

--изменяем данные во 2-й сессии
UPDATE pizzeria SET rating = '3' WHERE name = 'Pizza Hut';

--публикуем данные в 2-й сессии
COMMIT;

--проверяем исходные данные в 1-й сессии
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; 

--выход из режима транзакции
COMMIT;

--проверяем исходные данные в 1-й и 2-й сессии
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; 
