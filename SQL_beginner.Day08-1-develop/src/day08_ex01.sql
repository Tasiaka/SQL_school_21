--проверяем уровень изоляци(надо, чтобы был (read committed))
SHOW TRANSACTION ISOLATION LEVEL;

--запуск режима транзакции 1-й и 2-й сессии 
BEGIN;

--смотрим исходник на 1-й и 2-й сессиях
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--делаем обнову на 1-й сессии 
UPDATE pizzeria SET rating = '4' WHERE name = 'Pizza Hut';

--делаем обнову на 2-й сессии 
UPDATE pizzeria SET rating = '3.6' WHERE name = 'Pizza Hut';

--публикуем данные в 1-й сессии
COMMIT;

--публикуем данные в 2-й сессии
COMMIT;

--смотрим, что в итоге у нас в базе в 1-й и во 2-й
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';