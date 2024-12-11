TRUNCATE TABLE project.orders_goods CASCADE;
TRUNCATE TABLE project.points_employees CASCADE;
TRUNCATE TABLE project.orders CASCADE;
TRUNCATE TABLE project.clients CASCADE;
TRUNCATE TABLE project.points CASCADE;
TRUNCATE TABLE project.quarantine CASCADE;
TRUNCATE TABLE project.goods CASCADE;
TRUNCATE TABLE project.sellers CASCADE;
TRUNCATE TABLE project.employees CASCADE;

INSERT INTO project.sellers (name, phone_number, password) VALUES
('Иван Иванов', '9012345676', crypt('1234567890abcdef', gen_salt('bf'))::bytea),
('Алексей Петров', '9032345677', crypt('abcdef1234567890', gen_salt('bf'))::bytea),
('Мария Смирнова', '9033456788', crypt('234567890abcdef1', gen_salt('bf'))::bytea),
('Дмитрий Кузнецов', '9034567890', crypt('34567890abcdef12', gen_salt('bf'))::bytea),
('Ольга Васильева', '9035678901', crypt('4567890abcdef123', gen_salt('bf'))::bytea),
('Владимир Сидоров', '9036789012', crypt('567890abcdef1234', gen_salt('bf'))::bytea),
('Наталья Алексеева', '9037890123', crypt('67890abcdef12345', gen_salt('bf'))::bytea),
('Петр Попов', '9038901234', crypt('7890abcdef123456', gen_salt('bf'))::bytea),
('Марина Соколова', '9031234569', crypt('7890abcdef1234567', gen_salt('bf'))::bytea),
('Андрей Морозов', '9032345670', crypt('890abcdef12345678', gen_salt('bf'))::bytea),
('Елена Тихонова', '9033456781', crypt('1234567890abcdef1', gen_salt('bf'))::bytea),
('Константин Степанов', '9034567892', crypt('234567890abcdef12', gen_salt('bf'))::bytea),
('Ирина Чернова', '9035678903', crypt('34567890abcdef1235', gen_salt('bf'))::bytea),
('Руслан Рябов', '9036789014', crypt('4567890abcdef1236', gen_salt('bf'))::bytea),
('Ксения Шмидт', '9037890125', crypt('567890abcdef123456', gen_salt('bf'))::bytea),
('Анатолий Иванов', '9038901236', crypt('67890abcdef1234567', gen_salt('bf'))::bytea);

INSERT INTO project.sellers (name, phone_number, password, rating) VALUES
('Галина Кузнецова', '9031234568', crypt('890abcdef1234567', gen_salt('bf'))::bytea, 5),
('Сергей Егоров', '9032345679', crypt('123456abcdef7890', gen_salt('bf'))::bytea, 4),
('Юлия Михайлова', '9033456780', crypt('abcdef1234567891', gen_salt('bf'))::bytea, 3),
('Анна Павлова', '9034567891', crypt('23456789abcdef12', gen_salt('bf'))::bytea, 2),
('Максим Орлов', '9035678902', crypt('34567890abcdef123', gen_salt('bf'))::bytea, 1),
('Тимур Александров', '9036789013', crypt('4567890abcdef1234', gen_salt('bf'))::bytea, 5),
('Дарина Романова', '9037890124', crypt('567890abcdef12345', gen_salt('bf'))::bytea, 4),
('Федор Воробьев', '9038901235', crypt('67890abcdef123456', gen_salt('bf'))::bytea, 3),
('Татьяна Федорова', '9039923456', crypt('890abcdef12345679', gen_salt('bf'))::bytea, 5);

INSERT INTO project.points (address, phone_number) VALUES
('ул. Пушкина, д. 1', '9123456789'),
('ул. Лермонтова, д. 3', '9231234567'),
('пр. Мира, д. 45', '9505559922'),
('ул. Красной Армии, д. 15', '9005554433'),
('ул. Октябрьская, д. 12', '9305556677'),
('пл. Победы, д. 7', '9603334455'),
('ул. Ленинская, д. 8', '9005557788'),
('пр. Гагарина, д. 5', '9115552211'),
('ул. Центральная, д. 20', '9504443322'),
('ул. Школьная, д. 22', '9221223344'),
('ул. Дружбы, д. 10', '9607778899'),
('пр. Энергетиков, д. 11', '9007771122'),
('ул. Спортивная, д. 30', '9105557766'),
('пр. Строителей, д. 18', '9207778800'),
('ул. Южная, д. 5', '9507773388'),
('ул. Северная, д. 25', '9004443388'),
('ул. Морская, д. 17', '9222557700'),
('ул. Речной, д. 33', '9608889955'),
('пр. Комсомольский, д. 27', '9502223377');

INSERT INTO project.points (address, rating, worktime_from, worktime_to, phone_number) VALUES
('ул. Чехова, д. 5', 4, '09:00:00', '20:00:00', '9123456789'),
('ул. Тимирязева, д. 12', NULL, '10:00:00', '22:00:00', '9231234567'),
('пр. Победы, д. 8', 5, '08:00:00', '21:00:00', '9505559922'),
('ул. Маяковского, д. 30', 3, '11:00:00', '20:00:00', '9005554433'),
('ул. Пионерская, д. 7', NULL, '10:00:00', '19:00:00', '9305556677'),
('пл. Конституции, д. 14', 5, '09:30:00', '22:30:00', '9603334455'),
('ул. Лесная, д. 2', 4, '09:00:00', '19:00:00', '9005557788'),
('пр. Революции, д. 3', NULL, '10:00:00', '20:00:00', '9115552211'),
('ул. Загородная, д. 9', 2, '08:00:00', '17:00:00', '9504443322'),
('ул. Московская, д. 45', 5, '09:00:00', '21:00:00', '9221223344'),
('ул. Будапештская, д. 20', 1, '10:00:00', '18:00:00', '9607778899'),
('пр. Солнечный, д. 1', NULL, '09:30:00', '19:30:00', '9007771122'),
('ул. Зелёная, д. 35', 4, '08:00:00', '20:00:00', '9105557766'),
('пр. Южный, д. 17', 3, '11:00:00', '22:00:00', '9207778800'),
('ул. Кленовая, д. 22', 4, '09:00:00', '19:00:00', '9507773388'),
('ул. Вишнёвая, д. 12', NULL, '10:00:00', '20:00:00', '9004443388'),
('ул. Пролетарская, д. 40', 5, '08:00:00', '21:00:00', '9222557700'),
('ул. Советская, д. 5', 2, '10:00:00', '18:00:00', '9608889955');


INSERT INTO project.clients (first_name, last_name, phone_number, password) VALUES
('Иван', 'Петров', '8905123456', crypt('1234abcd5678ef90', gen_salt('bf'))::bytea),
('Мария', 'Иванова', '8916123456', crypt('xa1b2c3d4e5f67890', gen_salt('bf'))::bytea),
('Прилипп', 'Подождет', '8956123456', crypt('1011121314151617', gen_salt('bf'))::bytea),
('Алексей', 'Смирнов', '8926123456', crypt('4567bcde89f01234', gen_salt('bf'))::bytea),
('Екатерина', 'Кузнецова', '8936123456', crypt('ffee112233445566', gen_salt('bf'))::bytea),
('Артем', 'Афафаф', '8956123457', crypt('1011121314151617', gen_salt('bf'))::bytea),
('Дмитрий', 'Михайлов', '8946123456', crypt('9a8b7c6d5e4f3d21', gen_salt('bf'))::bytea),
('Игрь', 'Берцов', '8956123458', crypt('1011121314151617', gen_salt('bf'))::bytea),
('Юрий', 'Попов', '8966123456', crypt('20a1b2c3d4e5f678', gen_salt('bf'))::bytea),
('Андрей', 'Чернов', '8976123456', crypt('11c9d8e7f6b50431', gen_salt('bf'))::bytea),
('Наталья', 'Морозова', '8986123456', crypt('93b4a7c8d9f01124', gen_salt('bf'))::bytea),
('Ольга', 'Соколова', '8956123459', crypt('1011121314151617', gen_salt('bf'))::bytea),
('Сергей', 'Фролов', '8996123456', crypt('6768e1a2b3c4d5e6', gen_salt('bf'))::bytea),
('Виктория', 'Николаева', '8906223456', crypt('9abcf6de0d415e70', gen_salt('bf'))::bytea),
('Егор', 'Романов', '8916223456', crypt('abcd1234def56789', gen_salt('bf'))::bytea),
('Анастасия', 'Васильева', '8926223456', crypt('13457890ab9c0de1', gen_salt('bf'))::bytea),
('Ольга', 'Зайка', '8956123460', crypt('1011121314151617', gen_salt('bf'))::bytea),
('Максим', 'Лебедев', '8936223456', crypt('23456789abcd1234', gen_salt('bf'))::bytea),
('Владимир', 'Григорьев', '8946223456', crypt('90a1b2c3d4e5f678', gen_salt('bf'))::bytea),
('Марина', 'Калинина', '8956223456', crypt('77ff112233445566', gen_salt('bf'))::bytea),
('Константин', 'Жуков', '8966223456', crypt('223344aabbee9900', gen_salt('bf'))::bytea),
('Далин', 'Долгий', '8956123461', crypt('1011121314151617', gen_salt('bf'))::bytea),
('София', 'Козлова', '8976223456', crypt('55aabbccddeeff00', gen_salt('bf'))::bytea),
('Артем', 'Орлов', '8986223456', crypt('1112131415f67890', gen_salt('bf'))::bytea);

INSERT INTO project.goods (seller_id, name, description, price, amount, valid_from_dttm) VALUES
((SELECT seller_id FROM project.sellers WHERE phone_number = '9012345676'), 'Смартфон Samsung Galaxy S23', 'Смартфон с экраном 6.1 дюйма, камера 50 Мп', 64999.99, 10, '2024-01-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9032345677'), 'Ноутбук ASUS ZenBook 14', 'Ноутбук с процессором Intel i7, 16 ГБ оперативной памяти', 85999.00, 5, '2024-02-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9033456788'), 'Наушники Sony WH-1000XM5', 'Беспроводные наушники с активным шумоподавлением', 24999.50, 20, '2024-03-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9034567890'), 'Телевизор LG OLED55C1', '55-дюймовый OLED телевизор с разрешением 4K', 159999.00, 8, '2024-04-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9035678901'), 'Робот-пылесос Xiaomi Mi Robot Vacuum', 'Умный робот-пылесос с поддержкой управления через приложение', 14999.99, 12, '2024-05-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9036789012'), 'Микроволновая печь Samsung MS23K3513AS', 'Микроволновка с инверторным нагревом и 23 литра объема', 8999.00, 15, '2024-06-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9037890123'), 'Планшет Apple iPad Pro 11', 'Планшет с процессором M1 и экраном 11 дюймов', 79999.00, 6, '2024-07-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9038901234'), 'Смарт-часы Garmin Forerunner 945', 'Часы с GPS, мониторингом здоровья и спорта', 24999.00, 10, '2024-08-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9031234569'), 'Холодильник Bosch KGN39VL35', 'Холодильник с системой No Frost и размораживанием', 37999.00, 4, '2024-09-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9032345670'), 'Кофеварка Philips 3000 Series', 'Кофеварка с функцией капучино и регулируемой крепостью', 12999.00, 14, '2024-10-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9033456781'), 'Видеокамера GoPro HERO11', 'Экшен-камера с 5.3K видео и стабилизацией', 29999.99, 7, '2024-11-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9034567892'), 'Геймерская клавиатура Razer Huntsman Elite', 'Механическая клавиатура с RGB подсветкой', 16999.00, 18, '2024-12-01 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9035678903'), 'Смартфон Xiaomi Mi 13', 'Смартфон с экраном 6.36 дюйма и процессором Snapdragon 8', 42999.00, 13, '2024-01-15 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9036789014'), 'Электрический самокат Kugoo M4 Pro', 'Самокат с мощным двигателем и большими колесами', 44999.00, 9, '2024-02-15 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9037890125'), 'Метеостанция Netatmo', 'Интеллектуальная метеостанция с подключением к приложению', 12999.00, 3, '2024-03-15 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9038901236'), 'Шлем для виртуальной реальности Oculus Quest 2', 'Шлем с поддержкой VR и автономной работой', 25999.00, 8, '2024-04-15 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9031234568'), 'Смарт-колонка Apple HomePod Mini', 'Мини-версия умной колонки с поддержкой Siri', 8999.00, 11, '2024-05-15 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9032345679'), 'Фитнес-браслет Xiaomi Mi Band 7', 'Браслет с мониторингом активности и сердечного ритма', 2999.00, 30, '2024-06-15 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9033456780'), 'Блендер Philips HR3652', 'Мощный блендер с функцией измельчения и защиты от перегрева', 7999.00, 17, '2024-07-15 00:00:00'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9034567891'), 'Машина для стрижки волос Philips QC5580', 'Машинка для стрижки с несколькими насадками', 2499.00, 25, '2024-08-15 00:00:00');


INSERT INTO project.goods (seller_id, name, description, price, amount, rating, valid_from_dttm, valid_to_dttm) VALUES
((SELECT seller_id FROM project.sellers WHERE phone_number = '9031234568'), 'Камера Canon EOS 90D', 'Цифровая зеркальная камера с 32.5 Мп, 4K видео', 84999.99, 5, 5, '2024-01-10 00:00:00', '2025-01-10 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9032345679'), 'Портативная колонка JBL Charge 5', 'Беспроводная колонка с защитой от воды, до 20 часов работы', 13999.00, 15, 4, '2024-02-01 00:00:00', '2025-02-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9033456780'), 'Беспроводной пылесос Dyson V11', 'Мощный вертикальный пылесос с функцией автоматического регулирования мощности', 46999.00, 8, 5, '2024-03-01 00:00:00', '2025-03-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9034567891'), 'Игровая приставка Sony PlayStation 5', 'Следующее поколение консоли с поддержкой 4K, 120 FPS и SSD', 49999.99, 12, 4, '2024-04-01 00:00:00', '2025-04-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9035678902'), 'Электрический гриль Tefal Optigrill+', 'Гриль с несколькими режимами готовки и автоматической настройкой температуры', 17999.00, 10, 3, '2024-05-01 00:00:00', '2025-05-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9036789013'), 'Фотоаппарат Fujifilm X-T4', 'Беззеркальная камера с 26.1 Мп, видео 4K', 129999.00, 4, 5, '2024-06-01 00:00:00', '2025-06-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9037890124'), 'Миксер Bosch MFQ40304', 'Ручной миксер с несколькими насадками, 500 Вт', 3499.00, 18, 5, '2024-07-01 00:00:00', '2025-07-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9038901235'), 'Электрическая зубная щетка Oral-B Genius', 'Зубная щетка с Bluetooth, несколько режимов чистки', 8999.00, 25, 4, '2024-08-01 00:00:00', '2025-08-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9039923456'), 'Смарт-термометр Xiaomi Mi Temperature', 'Термометр с подключением к мобильному приложению', 1499.00, 50, 3, '2024-09-01 00:00:00', '2025-09-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9031234568'), 'Вакуумный упаковщик FoodSaver', 'Устройство для упаковки продуктов в вакуумные пакеты', 7999.00, 20, 5, '2024-10-01 00:00:00', '2025-10-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9032345679'), 'Радио-работающая колонка Marshall Stanmore II', 'Колонка с классическим дизайном и отличным качеством звука', 25999.99, 7, 4, '2024-11-01 00:00:00', '2025-11-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9033456780'), 'Шлифмашина Makita BO3710', 'Шлифмашина с пылеудалением и регулировкой скорости', 5999.00, 30, 3, '2024-12-01 00:00:00', '2025-12-01 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9034567891'), 'Проектор Anker Nebula Capsule', 'Портативный проектор с разрешением 720p и встроенным аккумулятором', 17999.00, 6, 5, '2024-01-15 00:00:00', '2025-01-15 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9035678902'), 'Набор инструментов DeWalt DCK2110M2', 'Профессиональный набор инструментов для работы с деревом и металлом', 24999.00, 9, 4, '2024-02-15 00:00:00', '2025-02-15 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9036789013'), 'Гриль-барбекю Weber Spirit II E-210', 'Газовый гриль с двумя горелками, встроенный термометр', 34999.00, 5, 5, '2024-03-15 00:00:00', '2025-03-15 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9037890124'), 'Автономный генератор Hyundai HHY 3000', 'Генератор с мощностью 3 кВт, 2 розетки', 24999.00, 8, 2, '2024-04-15 00:00:00', '2024-05-15 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9038901235'), 'Лодочный мотор Mercury 9.9 HP', 'Мотор для малых лодок с надежной системой охлаждения', 79999.00, 3, 4, '2024-05-15 00:00:00', '2024-06-15 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9039923456'), 'Фен Dyson Supersonic', 'Профессиональный фен с инновационным двигателем и защита от перегрева', 24999.00, 20, 5, '2024-06-15 00:00:00', '2024-07-15 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9031234568'), 'Умный термостат Nest Learning Thermostat', 'Умный термостат с возможностью управления через приложение', 19999.00, 15, 5, '2024-07-15 00:00:00', '2024-08-15 23:59:59'),
((SELECT seller_id FROM project.sellers WHERE phone_number = '9032345679'), 'Кофемашина Nespresso Expert', 'Кофемашина с поддержкой функции капучино и удаленным управлением', 21999.00, 10, 4, '2024-08-15 00:00:00', '2024-09-15 23:59:59');


INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Камера Canon EOS 90D', 84999.99
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8905123456' 
AND project.points.address = 'ул. Пушкина, д. 1';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Портативная колонка JBL Charge 5', 13999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8916123456' 
AND project.points.address = 'ул. Лермонтова, д. 3';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Игровая приставка Sony PlayStation 5', 49999.99
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8956123456' 
AND project.points.address = 'пр. Мира, д. 45';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Беспроводной пылесос Dyson V11', 46999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8926123456' 
AND project.points.address = 'ул. Красной Армии, д. 15';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Фотоаппарат Fujifilm X-T4', 129999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8936123456' 
AND project.points.address = 'ул. Октябрьская, д. 12';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Миксер Bosch MFQ40304', 3499.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8956123456' 
AND project.points.address = 'пл. Победы, д. 7';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Электрическая зубная щетка Oral-B Genius', 8999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8966123456' 
AND project.points.address = 'ул. Ленинская, д. 8';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Вакуумный упаковщик FoodSaver', 7999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8986123456' 
AND project.points.address = 'ул. Центральная, д. 20';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Радио-работающая колонка Marshall Stanmore II', 25999.99
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8996123456' 
AND project.points.address = 'ул. Школьная, д. 22';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Шлифмашина Makita BO3710', 5999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8906223456' 
AND project.points.address = 'ул. Дружбы, д. 10';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Проектор Anker Nebula Capsule', 17999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8916223456' 
AND project.points.address = 'пр. Энергетиков, д. 11';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Набор инструментов DeWalt DCK2110M2', 24999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8926223456' 
AND project.points.address = 'ул. Спортивная, д. 30';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Гриль-барбекю Weber Spirit II E-210', 34999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8936223456' 
AND project.points.address = 'пр. Строителей, д. 18';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Автономный генератор Hyundai HHY 3000', 24999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8946223456' 
AND project.points.address = 'ул. Южная, д. 5';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Лодочный мотор Mercury 9.9 HP', 79999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8956223456' 
AND project.points.address = 'ул. Северная, д. 25';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Фен Dyson Supersonic', 24999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8966223456' 
AND project.points.address = 'ул. Морская, д. 17';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Умный термостат Nest Learning Thermostat', 19999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8976223456' 
AND project.points.address = 'ул. Речной, д. 33';

INSERT INTO project.orders (client_id, point_id, good_name, price) 
SELECT client_id, point_id, 'Кофемашина Nespresso Expert', 21999.00
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8986223456' 
AND project.points.address = 'пр. Комсомольский, д. 27';

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount) 
SELECT client_id, point_id, 'Смартфон Samsung Galaxy S23', 74999.99, '2024-01-05 10:00:00', '2025-01-05 23:59:59', 1
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8905123456' 
AND project.points.address = 'ул. Пушкина, д. 1';

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount) 
SELECT client_id, point_id, 'Наушники Sony WH-1000XM5', 26999.00, '2024-02-10 12:00:00', '2025-02-10 23:59:59', 2
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8916123456' 
AND project.points.address = 'ул. Лермонтова, д. 3';

INSERT INTO project.orders (client_id, point_id, good_name, price, valid_from_dttm, valid_to_dttm, amount) 
SELECT client_id, point_id, 'Электрическая зубная щетка Philips Sonicare', 8999.00, '2024-03-15 09:00:00', '2025-03-15 23:59:59', 3
FROM project.clients, project.points 
WHERE project.clients.phone_number = '8956123456' 
AND project.points.address = 'пр. Мира, д. 45';


INSERT INTO project.employees (first_name, last_name, age, phone_number, position, salary)
VALUES
('Ольга', 'Арбузова', 45, '9111234567', 'сотрудник пвз', 50000.00),
('Елена', 'Вылетитнепоймаешь', 38, '9222345678', 'сотрудник пвз', 30000.00),
('Николай', 'Табасков', 29, '9333456789', 'уборщик', 25000.00),
('София', 'Гитару', 33, '9444567890', 'сотрудник пвз', 20000.00),
('Кристина', 'Обтекайте', 41, '9555678901', 'директор склада', 35000.00),
('Александр', 'Неуловимов', 37, '9112345670', 'сотрудник пвз', 31000.00),
('Мария', 'Обходите', 29, '9223456781', 'уборщик', 27000.00),
('Владимир', 'Прилетайло', 43, '9334567892', 'кладовщик', 32000.00),
('Наталья', 'Говоритескромно', 35, '9445678903', 'менеджер склада', 40000.00),
('Игорь', 'Подскользнулся', 39, '9556789014', 'сотрудник пвз', 29000.00),
('Анна', 'Зашагала', 32, '9117890125', 'кассир', 27000.00),
('Сергей', 'Размотайлов', 40, '9228901236', 'директор склада', 55000.00),
('Олеся', 'Шепеляво', 30, '9339012347', 'сотрудник пвз', 31000.00),
('Дмитрий', 'Бегомносуков', 28, '9440123458', 'курьер', 22000.00),
('Ксения', 'Скользилова', 36, '9551234569', 'кладовщик', 28000.00),
('Екатерина', 'Несуразьева', 33, '9112345671', 'кассир', 26000.00),
('Григорий', 'Захламилов', 42, '9223456782', 'уборщик', 25000.00),
('Юлия', 'Обогатите', 27, '9334567893', 'менеджер склада', 39000.00),
('Константин', 'Находкин', 34, '9445678904', 'курьер', 23000.00),
('Виктория', 'Рассыпалось', 39, '9556789015', 'сотрудник пвз', 31000.00),
('Татьяна', 'Проносите', 31, '9117890126', 'кладовщик', 27000.00),
('Анатолий', 'Грустный', 47, '9228901237', 'директор склада', 60000.00),
('София', 'Переместите', 29, '9339012348', 'сотрудник пвз', 32000.00),
('Михаил', 'Растеряшкин', 38, '9440123459', 'уборщик', 24000.00),
('Евгения', 'Поздняк', 40, '9551234570', 'кассир', 26000.00),
('Владислав', 'Догоняев', 35, '9112345672', 'курьер', 23000.00),
('Надежда', 'Удивите', 32, '9223456783', 'менеджер склада', 42000.00),
('Андрей', 'Расширяйлов', 37, '9334567894', 'кладовщик', 28000.00),
('Полина', 'Забирайте', 30, '9445678905', 'сотрудник пвз', 31000.00),
('Роман', 'Подходите', 45, '9556789016', 'директор склада', 57000.00);

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Пушкина, д. 1'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Ольга' AND last_name = 'Арбузова'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Загородная, д. 9'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Елена' AND last_name = 'Вылетитнепоймаешь'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Загородная, д. 9'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Николай' AND last_name = 'Табасков'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'пр. Мира, д. 45'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'София' AND last_name = 'Гитару'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'пр. Мира, д. 45'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Кристина' AND last_name = 'Обтекайте'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'пр. Мира, д. 45'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Александр' AND last_name = 'Неуловимов'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Октябрьская, д. 12'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Мария' AND last_name = 'Обходите'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Октябрьская, д. 12'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Владимир' AND last_name = 'Прилетайло'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Октябрьская, д. 12'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Наталья' AND last_name = 'Говоритескромно'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Октябрьская, д. 12'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Игорь' AND last_name = 'Подскользнулся'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Центральная, д. 20'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Анна' AND last_name = 'Зашагала'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Центральная, д. 20'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Сергей' AND last_name = 'Размотайлов'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Центральная, д. 20'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Олеся' AND last_name = 'Шепеляво'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Центральная, д. 20'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Дмитрий' AND last_name = 'Бегомносуков'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Центральная, д. 20'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Ксения' AND last_name = 'Скользилова'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Школьная, д. 22'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Екатерина' AND last_name = 'Несуразьева'));

INSERT INTO project.points_employees (point_id, employee_id)
VALUES
((SELECT point_id FROM project.points WHERE address = 'ул. Школьная, д. 22'),
 (SELECT employee_id FROM project.employees WHERE first_name = 'Григорий' AND last_name = 'Захламилов'));




INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Камера Canon EOS 90D';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Портативная колонка JBL Charge 5';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Игровая приставка Sony PlayStation 5';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Беспроводной пылесос Dyson V11';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Фотоаппарат Fujifilm X-T4';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Миксер Bosch MFQ40304';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Электрическая зубная щетка Oral-B Genius';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Вакуумный упаковщик FoodSaver';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Радио-работающая колонка Marshall Stanmore II';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Шлифмашина Makita BO3710';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Проектор Anker Nebula Capsule';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Набор инструментов DeWalt DCK2110M2';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Гриль-барбекю Weber Spirit II E-210';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Автономный генератор Hyundai HHY 3000';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Лодочный мотор Mercury 9.9 HP';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Фен Dyson Supersonic';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Умный термостат Nest Learning Thermostat';

INSERT INTO project.orders_goods (order_id, good_id, good_name)
SELECT o.order_id, g.good_id, g.name
FROM project.orders o
JOIN project.goods g ON o.good_name = g.name
WHERE o.good_name = 'Кофемашина Nespresso Expert';
