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
('От томата до заката', '9001234567', crypt('пароль1', gen_salt('bf'))::bytea, 5),
('Журчат рубли', '9116543210', crypt('пароль2', gen_salt('bf'))::bytea, 4),
('Ваше огородие', '9223456789', crypt('пароль3', gen_salt('bf'))::bytea, 3),
('ЛОР уполномочен заявить', '9339876543', crypt('пароль4', gen_salt('bf'))::bytea, 5),
('Женщина легкого похудения', '9447654321', crypt('пароль5', gen_salt('bf'))::bytea, 4),
('Смех с доставкой на дом', '9009876543', crypt('пароль6', gen_salt('bf'))::bytea, 5),
('Таможня дает добро', '9111237890', crypt('пароль7', gen_salt('bf'))::bytea, 4),
('Пора в роддом', '9229871234', crypt('пароль8', gen_salt('bf'))::bytea, 3),
('От рассвета до заката', '9334567890', crypt('пароль9', gen_salt('bf'))::bytea, 4),
('Заливка по вкусу', '9441239876', crypt('пароль10', gen_salt('bf'))::bytea, 5),
('Уральская кухня', '9557891234', crypt('пароль11', gen_salt('bf'))::bytea, 3),
('Друзья за границей', '9663459870', crypt('пароль12', gen_salt('bf'))::bytea, 4),
('Неоплаченный отпуск', '9770983456', crypt('пароль13', gen_salt('bf'))::bytea, 5),
('Мясо по-французски', '9882345678', crypt('пароль14', gen_salt('bf'))::bytea, 4),
('Хлеб да соль', '9995678901', crypt('пароль15', gen_salt('bf'))::bytea, 5),
('Ёлка желаний', '9008765432', crypt('пароль16', gen_salt('bf'))::bytea, 3),
('Юбилей с огоньком', '9116540987', crypt('пароль17', gen_salt('bf'))::bytea, 4),
('Игра на миллион', '9223456789', crypt('пароль18', gen_salt('bf'))::bytea, 5),
('Картошка в мундире', '9334560987', crypt('пароль19', gen_salt('bf'))::bytea, 3),
('Секретный ингредиент', '9440987654', crypt('пароль20', gen_salt('bf'))::bytea, 5),
('Лапша по-уральски', '9554321098', crypt('пароль21', gen_salt('bf'))::bytea, 4),
('Вареники в подарок', '9669871234', crypt('пароль22', gen_salt('bf'))::bytea, 5),
('Рыбный день', '9775432109', crypt('пароль23', gen_salt('bf'))::bytea, 4),
('Огурец, не помидор', '9881230987', crypt('пароль24', gen_salt('bf'))::bytea, 3),
('Салат из ничего', '9996543210', crypt('пароль25', gen_salt('bf'))::bytea, 5),
('Пельмени без фарша', '9009876543', crypt('пароль26', gen_salt('bf'))::bytea, 4),
('Где моя картошка?', '9112340987', crypt('пароль27', gen_salt('bf'))::bytea, 5),
('Тазик оливье', '9220987654', crypt('пароль28', gen_salt('bf'))::bytea, 4),
('Пирог со сметаной', '9337654321', crypt('пароль29', gen_salt('bf'))::bytea, 3),
('Праздник без границ', '9448901234', crypt('пароль30', gen_salt('bf'))::bytea, 5);

INSERT INTO project.points (address, rating, worktime_from, worktime_to, phone_number)
VALUES
('ул. Бауманская, д. 7, Инженерковск', 5, '09:00:00', '21:00:00', '9551234567'),
('пл. Физтеховская, д. 1, Сложный', 4, '08:00:00', '20:00:00', '9667654321'),
('ул. Вышкинская, д. 13, Дорогой', 3, DEFAULT, DEFAULT, '9776543210'),
('ул. Синергии, д. 5, Платниковск', 5, '08:00:00', '18:00:00', '9889876543'),
('пр. Удмуртии, д. 77, Ижевск', 4, '07:00:00', '19:00:00', '9998765432'),
('ул. Транспортная, д. 11, Волжск', 5, '09:00:00', '20:00:00', '9001236789'),
('ул. Горького, д. 25, Екатеринбург', 4, DEFAULT, DEFAULT, '9112345678'),
('пр. Победы, д. 30, Нижний Новгород', 3, '10:00:00', '21:00:00', '9223456789'),
('ул. Ленина, д. 17, Самара', 5, '09:00:00', '19:00:00', '9334567890'),
('ул. Светлая, д. 5, Казань', 4, DEFAULT, DEFAULT, '9445678901'),
('ул. Знаменская, д. 9, Уфа', 3, '10:00:00', '22:00:00', '9556789012'),
('ул. Мира, д. 18, Краснодар', 5, '08:00:00', '18:00:00', '9667890123'),
('ул. Победы, д. 1, Новосибирск', 4, '09:00:00', '20:00:00', '9778901234'),
('ул. Гагарина, д. 27, Челябинск', 5, DEFAULT, DEFAULT, '9889012345'),
('пр. Космонавтов, д. 10, Пермь', 3, '10:00:00', '21:00:00', '9990123456'),
('ул. Зеленая, д. 7, Волгоград', 5, '08:00:00', '22:00:00', '9002345678'),
('ул. Первомайская, д. 4, Ростов-на-Дону', 4, '09:00:00', '21:00:00', '9113456789'),
('ул. Цветочная, д. 12, Сочи', 3, '08:00:00', '18:00:00', '9224567890'),
('пр. Стачек, д. 14, Санкт-Петербург', 5, '10:00:00', '20:00:00', '9335678901'),
('ул. Университетская, д. 3, Томск', 4, '07:00:00', '19:00:00', '9446789012'),
('ул. Кирова, д. 6, Омск', 3, '09:00:00', '22:00:00', '9557890123'),
('пр. Ленина, д. 19, Кемерово', 5, DEFAULT, DEFAULT, '9668901234'),
('ул. Северная, д. 2, Тюмень', 4, '09:00:00', '21:00:00', '9779012345'),
('ул. Южная, д. 8, Иркутск', 3, '10:00:00', '18:00:00', '9880123456'),
('ул. Восточная, д. 16, Барнаул', 5, '07:00:00', '22:00:00', '9991234567'),
('пр. Комсомольский, д. 22, Владивосток', 4, DEFAULT, DEFAULT, '9003456789'),
('ул. Западная, д. 15, Хабаровск', 3, '09:00:00', '19:00:00', '9114567890'),
('ул. Парковая, д. 13, Магнитогорск', 5, '10:00:00', '22:00:00', '9225678901'),
('пр. Центральный, д. 18, Калининград', 4, '08:00:00', '21:00:00', '9336789012'),
('ул. Бульварная, д. 20, Белгород', 5, '07:00:00', '20:00:00', '9447890123');


INSERT INTO project.goods (seller_id, name, description, price, amount, rating, valid_from_dttm, valid_to_dttm)
VALUES
(
    (SELECT seller_id FROM project.sellers WHERE name = 'От томата до заката'),
    'Т-62А',
    'очень играбельно но корпус дырявый',
    262000.00,
    3,
    5,
    '2024-01-01 10:00:00',
    '2024-12-31 23:59:59'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Журчат рубли'),
    'M48 Patton',
    'средний, ни разу мастера не взял',
    326000.00,
    5,
    4,
    '2024-01-15 08:00:00',
    '2024-12-31 23:59:59'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Ваше огородие'),
    'Leopard 1',
    'картонная коробка но быстрая',
    362000.00,
    2,
    4,
    '2024-02-01 09:00:00',
    '2024-11-30 18:00:00'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'ЛОР уполномочен заявить'),
    'IS-7',
    'тяж который скорее ст',
    341000.00,
    1,
    5,
    '2024-03-01 10:30:00',
    '2024-12-31 23:59:59'
),
(
    (SELECT seller_id FROM project.sellers WHERE name = 'Женщина легкого похудения'),
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

INSERT INTO project.clients (first_name, last_name, phone_number, password)
VALUES
('Джо', 'Байден', '9011234567', crypt('америка2024', gen_salt('bf'))::bytea),
('Эммануэль', 'Макрон', '9022345678', crypt('франция2024', gen_salt('bf'))::bytea),
('Владимир', 'Путин', '9033456789', crypt('россия2024', gen_salt('bf'))::bytea),
('Си', 'Цзиньпин', '9044567890', crypt('китай2024', gen_salt('bf'))::bytea),
('Риши', 'Сунак', '9055678901', crypt('британия2024', gen_salt('bf'))::bytea);

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Джо' AND last_name = 'Байден'), 
    (SELECT point_id FROM project.points WHERE address = 'ул. Бауманская, д. 7, Инженерковск'), 
    (SELECT name FROM project.goods WHERE name = 'Т-62А'), 
    12000.00, 
    '2024-06-01 10:00:00', 
    '2024-06-15 18:00:00', 
    1
);

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Эммануэль' AND last_name = 'Макрон'),
    (SELECT point_id FROM project.points WHERE address = 'пл. Физтеховская, д. 1, Сложный'), 
    (SELECT name FROM project.goods WHERE name = 'M48 Patton'),
    15000.00, 
    '2024-06-05 12:00:00', 
    '2024-06-20 20:00:00', 
    1
);

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Владимир' AND last_name = 'Путин'),
    (SELECT point_id FROM project.points WHERE address = 'ул. Вышкинская, д. 13, Дорогой'),
    (SELECT name FROM project.goods WHERE name = 'Leopard 1'),
    13000.00, 
    '2024-06-10 14:00:00', 
    '2024-06-25 22:00:00', 
    1
);

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Си' AND last_name = 'Цзиньпин'),
    (SELECT point_id FROM project.points WHERE address = 'ул. Синергии, д. 5, Платниковск'),
    (SELECT name FROM project.goods WHERE name = 'IS-7'),
    18000.00, 
    '2024-06-15 16:00:00', 
    '2024-06-30 23:59:59', 
    1
);

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount)
VALUES
(
    (SELECT client_id FROM project.clients WHERE first_name = 'Риши' AND last_name = 'Сунак'),
    (SELECT point_id FROM project.points WHERE address = 'пр. Удмуртии, д. 77, Ижевск'),
    (SELECT name FROM project.goods WHERE name = 'Е100'),
    20000.00, 
    '2024-06-20 08:00:00', 
    '2024-07-05 12:00:00', 
    1
);


INSERT INTO project.employees (first_name, last_name, age, phone_number, position, salary)
VALUES
('Ольга', 'Арбузова', 45, '9111234567', 'сотрудник пвз', 50000.00),
('Елена', 'Вылетитнепоймаешь', 38, '9222345678', 'сотрудник пвз', 30000.00),
('Николай', 'Табасков', 29, '9333456789', 'уборщик', 25000.00),
('София', 'Гитару', 33, '9444567890', 'сотрудник пвз', 20000.00),
('Кристина', 'Обтекайте', 41, '9555678901', 'директор склада', 35000.00);

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
(
    (SELECT point_id FROM project.points WHERE address = 'ул. Бауманская, д. 7, Инженерковск'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Ольга' AND last_name = 'Арбузова')
),
(
    (SELECT point_id FROM project.points WHERE address = 'пл. Физтеховская, д. 1, Сложный'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Елена' AND last_name = 'Вылетитнепоймаешь')
),
(
    (SELECT point_id FROM project.points WHERE address = 'ул. Вышкинская, д. 13, Дорогой'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Николай' AND last_name = 'Табасков')
),
(
    (SELECT point_id FROM project.points WHERE address = 'ул. Синергии, д. 5, Платниковск'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'София' AND last_name = 'Гитару')
),
(
    (SELECT point_id FROM project.points WHERE address = 'пр. Удмуртии, д. 77, Ижевск'),
    (SELECT employee_id FROM project.employees WHERE first_name = 'Кристина' AND last_name = 'Обтекайте')
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
