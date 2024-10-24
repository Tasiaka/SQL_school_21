
--устанавливаем необходимый по заданию уровень изоляции в 1-й и 2-й сессиях
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

--запуск режима транзакции 1-й и 2-й сессии
BEGIN;

--проверяем исходные данные в обеих сессиях
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--изменяем данные в 1-й сессии
UPDATE pizzeria SET rating = '4' WHERE name = 'Pizza Hut';

--изменяем данные во 2-й сессии
UPDATE pizzeria SET rating = '3.6' WHERE name = 'Pizza Hut';

--публикуем данные 1-й сессии
COMMIT;

--попытка публикации данных 2-й сессии(не получилось)- "Аномалия потерянного обновления"
COMMIT;

--проверяем исходные данные в обеих сессиях
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';