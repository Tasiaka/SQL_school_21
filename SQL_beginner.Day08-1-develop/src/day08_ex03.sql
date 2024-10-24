--устанавливаем уровень изоляции READ COMMITTED
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL READ COMMITTED;

--запуск режима транзакции 1-й и 2-й сессии
BEGIN;

--проверяем исходные данные в 1-й сессии
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';   

--изменяем данные во 2-й сессии
UPDATE pizzeria SET rating = '3.6' WHERE name = 'Pizza Hut';

--публикуем данные в 2-й сессии
COMMIT;

--проверяем исходные данные в 1-й сессии
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; 

--публикуем данные 1-й сессии
COMMIT;

--проверяем исходные данные в 1-й и 2-й сессии
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; 