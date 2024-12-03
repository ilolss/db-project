TRUNCATE TABLE project.orders_goods CASCADE;
TRUNCATE TABLE project.points_employees CASCADE;
TRUNCATE TABLE project.orders CASCADE;
TRUNCATE TABLE project.clients CASCADE;
TRUNCATE TABLE project.points CASCADE;
TRUNCATE TABLE project.quarantine CASCADE;
TRUNCATE TABLE project.goods CASCADE;
TRUNCATE TABLE project.sellers CASCADE;
TRUNCATE TABLE project.employees CASCADE;

INSERT INTO project.sellers (name, phone_number, password, rating)
VALUES
('Артемий Афоничев', '9001234567', 'пароль1', 5),
('Филипп Пожидаев', '9116543210', 'пароль2', 4),
('Даниил Долгих', '9223456789', 'пароль3', 3),
('Игорь Бердов', '9339876543', 'пароль4', 5),
('Яне Придумал', '9447654321', 'пароль5', 4);

INSERT INTO project.goods (seller_id, name, description, price, count, rating, valid_from_dttm, valid_to_dttm)
VALUES
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Артемий Афоничев'),
    'Т-62А',
    'очень играбельно но корпус дырявый',
    262000.00,
    3,
    5,
    '2024-01-01 10:00:00',
    '2024-12-31 23:59:59'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Даниил Долгих'),
    'M48 Patton',
    'средний, ни разу мастера не взял',
    326000.00,
    5,
    4,
    '2024-01-15 08:00:00',
    '2024-12-31 23:59:59'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Яне Придумал'),
    'Leopard 1',
    'картонная коробка но быстрая',
    362000.00,
    2,
    4,
    '2024-02-01 09:00:00',
    '2024-11-30 18:00:00'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Филипп Пожидаев'),
    'IS-7',
    'тяж который скорее ст',
    341000.00,
    1,
    5,
    '2024-03-01 10:30:00',
    '2024-12-31 23:59:59'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Игорь Бердов'),
    'Е100',
    'любимаый тт',
    375000.00,
    4,
    5,
    '2024-04-01 11:00:00',
    '2024-10-31 20:00:00'
);

INSERT INTO project.quarantine (good_id, reason, valid_from_dttm, valid_to_dttm)
VALUES
(
    (SELECT good_id FROM project.goods WHERE name = 'Leopard 1'),
    'Leopard 1 есть пробитие',
    '2024-07-01 12:00:00',
    '2024-07-31 23:59:59'
),
(
    (SELECT good_id FROM project.goods WHERE name = 'Е100'),
    'E100 на складе дефект брони',
    '2024-08-01 08:00:00',
    '2024-08-31 18:00:00'
);

INSERT INTO project.points (address, rating, worktime, phone_number)
VALUES
('ул. Бауманская, д. 7, Инженерковск', 5, 'с 9 до 21', '9551234567'),
('пл. Физтеховская, д. 1, Сложный', 4, 'с 8 до 20', '9667654321'),
('ул. Вышкинская, д. 13, Дорогой', 3, 'с 10 до 22', '9776543210'),
('ул. Синергии, д. 5, Платниковск', 5, 'с 8 до 18', '9889876543'),
('пр. Удмуртии, д. 77, Ижевск', 4, 'с 7 до 19', '9998765432');

INSERT INTO project.clients (first_name, last_name, phone_number, password)
VALUES
('Джо', 'Байден', '9011234567', 'америка2024'),
('Эммануэль', 'Макрон', '9022345678', 'франция2024'),
('Владимир', 'Путин', '9033456789', 'россия2024'),
('Си', 'Цзиньпин', '9044567890',  'китай2024' ),
('Риши', 'Сунак', '9055678901', 'британия2024');

INSERT INTO project.orders (client_id, point_id, order_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Джо' AND last_name = 'Байден'), 
    (SELECT point_id FROM project.points WHERE address = 'ул. Бауманская, д. 7, Инженерковск'), 
    1, 
    (SELECT name FROM project.goods WHERE name = 'Т-62А'), 
    12000.00, 
    '2024-06-01 10:00:00', 
    '2024-06-15 18:00:00', 
    1
);

INSERT INTO project.orders (client_id, point_id, order_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Эммануэль' AND last_name = 'Макрон'),
    (SELECT point_id FROM project.points WHERE address = 'пл. Физтеховская, д. 1, Сложный'), 
    2, 
    (SELECT name FROM project.goods WHERE name = 'M48 Patton'),
    15000.00, 
    '2024-06-05 12:00:00', 
    '2024-06-20 20:00:00', 
    1
);

INSERT INTO project.orders (client_id, point_id, order_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Владимир' AND last_name = 'Путин'),
    (SELECT point_id FROM project.points WHERE address = 'ул. Вышкинская, д. 13, Дорогой'),
    3, 
    (SELECT name FROM project.goods WHERE name = 'Leopard 1'),
    13000.00, 
    '2024-06-10 14:00:00', 
    '2024-06-25 22:00:00', 
    1
);

INSERT INTO project.orders (client_id, point_id, order_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Си' AND last_name = 'Цзиньпин'),
    (SELECT point_id FROM project.points WHERE address = 'ул. Синергии, д. 5, Платниковск'),
    4, 
    (SELECT name FROM project.goods WHERE name = 'IS-7'),
    18000.00, 
    '2024-06-15 16:00:00', 
    '2024-06-30 23:59:59', 
    1
);

INSERT INTO project.orders (client_id, point_id, order_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Риши' AND last_name = 'Сунак'),
    (SELECT point_id FROM project.points WHERE address = 'пр. Удмуртии, д. 77, Ижевск'),
    5, 
    (SELECT name FROM project.goods WHERE name = 'Е100'),
    20000.00, 
    '2024-06-20 08:00:00', 
    '2024-07-05 12:00:00', 
    1
);


INSERT INTO project.employees (first_name, last_name, age, phone_number, position, salary)
VALUES
('Виталий', 'Паркинсон', 45, '9111234567', 'сотрудник пвз', 50000.00),
('Наталья', 'Спидова', 38, '9222345678', 'сотрудник пвз', 30000.00),
('Надежда', 'Артрозных', 29, '9333456789', 'уборщик', 25000.00),
('Илья', 'Бесплодных', 33, '9444567890', 'сотрудник пвз', 20000.00),
('Марфа', 'Слепая', 41, '9555678901', 'директор склада', 35000.00);

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
(
    (SELECT point_id FROM project.points WHERE address = 'ул. Бауманская, д. 7, Инженерковск'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Виталий' AND last_name = 'Паркинсон')
),
(
    (SELECT point_id FROM project.points WHERE address = 'пл. Физтеховская, д. 1, Сложный'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Илья' AND last_name = 'Бесплодных')
),
(
    (SELECT point_id FROM project.points WHERE address = 'ул. Вышкинская, д. 13, Дорогой'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Марфа' AND last_name = 'Слепая')
),
(
    (SELECT point_id FROM project.points WHERE address = 'ул. Синергии, д. 5, Платниковск'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Наталья' AND last_name = 'Спидова')
),
(
    (SELECT point_id FROM project.points WHERE address = 'пр. Удмуртии, д. 77, Ижевск'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Надежда' AND last_name = 'Артрозных')
);

INSERT INTO project.orders_goods (order_id, good_id, good_name)
VALUES
(
    (SELECT order_id 
     FROM project.orders 
     WHERE client_id = (SELECT client_id FROM project.clients WHERE first_name = 'Джо' AND last_name = 'Байден') 
     AND good_name = 'Т-62А'),
    (SELECT good_id 
     FROM project.goods 
     WHERE name = 'Т-62А'),
    'Т-62А'
),
(
    (SELECT order_id 
     FROM project.orders 
     WHERE client_id = (SELECT client_id FROM project.clients WHERE first_name = 'Эммануэль' AND last_name = 'Макрон') 
     AND good_name = 'M48 Patton'),
    (SELECT good_id 
     FROM project.goods 
     WHERE name = 'M48 Patton'),
    'M48 Patton'
),
(
    (SELECT order_id 
     FROM project.orders 
     WHERE client_id = (SELECT client_id FROM project.clients WHERE first_name = 'Владимир' AND last_name = 'Путин') 
     AND good_name = 'Leopard 1'),
    (SELECT good_id 
     FROM project.goods 
     WHERE name = 'Leopard 1'),
    'Leopard 1'
),
(
    (SELECT order_id 
     FROM project.orders 
     WHERE client_id = (SELECT client_id FROM project.clients WHERE first_name = 'Си' AND last_name = 'Цзиньпин') 
     AND good_name = 'IS-7'),
    (SELECT good_id 
     FROM project.goods 
     WHERE name = 'IS-7'),
    'IS-7'
),
(
    (SELECT order_id 
     FROM project.orders 
     WHERE client_id = (SELECT client_id FROM project.clients WHERE first_name = 'Риши' AND last_name = 'Сунак') 
     AND good_name = 'Е100'),
    (SELECT good_id 
     FROM project.goods 
     WHERE name = 'Е100'),
    'Е100'
);
