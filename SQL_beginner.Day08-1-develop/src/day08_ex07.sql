--запуск режима транзакции 1-й и 2-й сессии
BEGIN;

--1 сессия меняем рейтинг пицерии с id = 1
UPDATE pizzeria SET rating = '0' WHERE id = 1;

--2 сессия меняем рейтинг пицерии с id = 2
UPDATE pizzeria SET rating = '0' WHERE id = 2;

--1 сессия меняем рейтинг пицерии с id = 2
UPDATE pizzeria SET rating = '1' WHERE id = 2;

--2 сессия меняем рейтинг пицерии с id = 1 + ловим deadlock
UPDATE pizzeria SET rating = '1' WHERE id = 1;

-- 1-й а потом 2-й сессии
COMMIT;