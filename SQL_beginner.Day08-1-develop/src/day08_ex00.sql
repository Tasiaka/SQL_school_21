--входим в нашу базу данных в 2-х терминалах
psql DO8 

--проверяем на 2 сессии исходник
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--запуск режима транзакции 1-й сессии
BEGIN;

--обновляем данные
UPDATE pizzeria SET rating = '5' WHERE name = 'Pizza Hut';
 
--снова проверяем 2-ю сессию (изменений нет)
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--публикуем изменения, сделанные в 1-й сессии
COMMIT;

--снова проверяем 2-ю сессию (есть изменения)
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
