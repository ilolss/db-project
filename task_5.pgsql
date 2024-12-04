-- CRUD-запросы к таблице "Клиент"

-- Добавление нового клиента
insert into project.clients (first_name, last_name, phone_number, password)
values ('Иван', 'Иванов', '9551234567', 'пароль6');

-- Получение списка клиентов по номеру телефона
select client_id, first_name, last_name, password
from project.clients
where phone_number = '9551234567';

-- Обновление номера телефона клиента
update project.clients
set phone_number = '9669876543'
where client_id = 6;

-- Удаление клиента по ID
delete from project.clients
where client_id = 6;

-- CRUD-запросы к таблице "Товары"

-- Добавление нового товара
insert into project.goods (seller_id, name, description, price, amount, rating, valid_from_dttm)
values (1, 'Samsung 100', 'Убийца Iphone', 39999.99, 10, 5, now());

-- Получение списка товаров с фильтрацией по цене
select good_id, name, price, amount
from project.goods
where price > 10000;

-- Изменение количества товара в наличии
update project.goods
set amount = 5
where good_id = 6;

-- Удаление товара с истёкшим сроком актуальности
delete from project.goods
where valid_to_dttm < now();
