# Маркетплейс
## Команда проекта
- Афоничев Артемий ([Win4ap](https://github.com/Win4ap))
- Бердов Игорь ([berdov](https://github.com/berdov))
- Долгих Даниил ([GFGH](https://github.com/1gfgh))
- Пожидаев Филипп ([ilolss](https://github.com/ilolss))

## Описание проекта
В основу проекта легла база данных, предназначенная для хранения информации про некий маркетплейс. Позволяет хранить, обрабатывать и использовать информацию насчет клиентов, работников, ПВЗ, заказов(товары в корзине, история заказов, текущие заказы), товаров и карантина. Подробнее про каждый этап разработки можно посмотреть в секции комментариев пр задачам.

## Комментарии по задачам
#### Задание 1, 2
[Draw.io](https://drive.google.com/file/d/1c1dXtHTS_CsiPY7Cp5EQt0I52vluOhEN/view?usp=sharing)
Спроектированы и представлены концептуальная, логическая и физическая модели базы данных. Для оптимизации обращения к БД была выбрана вторая нормальная форма. У версионных таблиц указан их тип. 
В данных заданиях принимала участие вся команда.

#### Задание 3
Файл project.pgsql
Подготовленны DDL скрипты, создана база в СУБД и схема, а также для таблиц добавлены ограничения.
В данном задании принимала участие вся команда.

#### Задание 4
Файл igor.pgsql
Заполнение БД данными.
Выполнил Игорь Бердов.

#### Задание 5
Файд task_5.pgqsl
CRUD-запросы к таблицам "Клиенты" и "Товары".
Выполнил Филипп Пожидаев.

#### Задание 6
5 смысловых запросов к БД, ожидания от работы запросов:

1. В результате выполнения Запроса 1 будет получен список продавцов, у которых средний рейтинг их товаров выше 3.

2. В результате выполнения Запроса 2 будет получен список клиентов, заказавших товары на общую сумму более 15,000, отсортированный по убыванию суммы заказов.

3. В результате выполнения Запроса 3 будут получен список самых дорогих товаров каждого продавца.

4. В результате выполнения Запроса 4 будет получен список ПВЗ с рейтингом выше среднего по всем ПВЗ, отсортировать по рейтингу.

5. В результате выполнения Запроса 5 будет получен список ПВЗ с количеством работников, отсортированные по убыванию количества работников.

Выполнил Филипп Пожидаев.

#### Задание 7
Файл project_views.pgsql
Создана отдельная схема с представлениями, на каждую таблицу создано по одному представлению. Реализован механизм маскирования персональных данных.
Выполнил Долгих Даниил.

#### Задание 8
Файл project_views.pgsql
Статистика по самым популярным товарам, cтатистика «плохих ПВЗ» и сколько мы на них тратим, статистика по клиентам.
Выполнил Артемий Афоничев.

#### Задание 9
Файл triggers.pgsql
Составлены два триггера, обрабатывающие изменение БД.

1. При добавлении на ПВЗ несовершеннолетнего работника выдает ошибку.

2. При обновлении цены товара, обновляется цена на данный товар в корзинах всех пользователей.

Выполнил Долгих Даниил.

#### Задание 10
Файл functions(task_10).ggsql
Функции для добавления нового товара, помещения товара на карантин.
Выполнил Артемий Афоничев.

#### Задание 11
Файл task_11.pgsql
Выполнил Игорь Бердов.
