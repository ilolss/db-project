create schema if not exists project_views;

drop view if exists project_views.orders_view;

create or replace view project_views.orders_view as 
    select good_name as "Название товара", price as "Цена", amount as "Количество",
    client_id as "ID клиента", point_id as "ID ПВЗ", order_id as "ID заказа" 
    from project.orders;
;

select * from project_views.orders_view;

drop view if exists project_views.quarantine_view;

create or replace view project_views.quarantine_view as
    select good_id as "ID товара", reason as "Причина"
    from project.quarantine;
;

select * from project_views.quarantine_view;

drop view if exists project_views.goods_view;

create or replace view project_views.goods_view as
    select name as "Название товара", 
    CASE
        WHEN description is null THEN 'Описания товара еще нет'
        ELSE description
    END as "Описание товара", 
    price as "Цена", amount as "Количество в наличии", 
    CASE 
        WHEN rating is null THEN 'Рейтинга еще нет'
        ELSE cast(rating as varchar(1))
    END as "Рейтинг",
    good_id as "ID товара", seller_id as "ID продавца" 
    from project.goods;
;

select * from project_views.goods_view;

drop view if exists project_views.points_view;

create or replace view project_views.points_view as
    select address as "Адрес ПВЗ", ('С ' || worktime_from || ' до ' || worktime_to) as "Рабочее время", ('+7' || phone_number) as "Номер телефона", 
    CASE 
        WHEN rating is null THEN 'Рейтинга еще нет'
        ELSE cast(rating as varchar(1))
    END as "Рейтинг", 
    point_id as "ID ПВЗ"
    from project.points;
;

select * from project_views.points_view;

drop view if exists project_views.clients_view;

create or replace view project_views.clients_view as
    select first_name as "Имя клиента", last_name as "Фамилия клиента", 
    ('+7******' || substring(phone_number from 7 for 4)) as "Номер телефона", client_id as "ID клиента" 
    from project.clients;
;

select * from project_views.clients_view;

drop view if exists project_views.sellers_view;

create or replace view project_views.sellers_view as
    select name as "Название продавца", 
    CASE 
        WHEN rating is null THEN 'Рейтинга еще нет'
        ELSE cast(rating as varchar(1))
    END as "Рейтинг", 
    ('+7******' || substring(phone_number from 7 for 4)) as "Номер телефона", 
    seller_id as "ID продавца" 
    from project.sellers;
;

select * from project_views.sellers_view;

drop view if exists project_views.employees_view;

create or replace view project_views.employees_view as
    select first_name as "Имя работника", last_name as "Фамилия работника", 
    position as "Должность", age as "Возраст", salary as "Зарплата", 
    ('+7******' || substring(phone_number from 7 for 4)) as "Номер телефона", 
    employee_id as "ID работника" 
    from project.employees;
;

select * from project_views.employees_view;



-- task 8 — cоздать 3 сложных представления
-- Статистика по самым популярным товарам
drop view if exists project_views.popular_products;

create or replace view project_views.popular_products as
    select
        G.good_id as "ID товара",
        G.name as "Название товара",
        count(OG.good_id) as "Количество заказов с этим товаром",
        sum(O.amount) as "Сколько всего было продано штук"
    from project.goods as G
    left join project.orders_goods as OG
    on G.good_id = OG.good_id
    left join project.orders as O
    on OG.order_id = O.order_id and OG.good_name = O.good_name
    group by "ID товара", "Название товара"
    order by "Количество заказов с этим товаром" desc;

select * from project_views.popular_products;

-- Статистика «плохих ПВЗ», сколько мы на них тратим
drop view if exists project_views.unprofitable_points;

create or replace view project_views.unprofitable_points as
    select
        P.point_id as "ID ПВЗ",
        P.address as "Адрес",
        P.rating as "Рейтинг",
        P.worktime_from as "Время открытия",
        P.worktime_to as "Время закрытия",
        ('+7******' || substring(P.phone_number from 7 for 4)) as "Номер телефона",
        sum(e.salary) as "Сумма зарплат сотрудников"
    from project.points as P
    left join project.points_employees as PE
    on P.point_id = PE.point_id
    left join project.employees as E
    on PE.employee_id = E.employee_id
    group by "ID ПВЗ", "Адрес", "Рейтинг", "Время открытия", "Время закрытия", "Номер телефона"
    having P.rating <= 3 and sum(e.salary) >= 30000
    order by "Рейтинг" asc;

select * from project_views.unprofitable_points;

-- Статистика клиента
drop view if exists project_views.client_summary;

create or replace view project_views.client_summary as
    select 
        C.client_id as "ID клиента",
        C.first_name as "Имя",
        C.last_name as "Фамилия",
        ('+7******' || substring(C.phone_number from 7 for 4)) as "Номер телефона",
        (
            select OG.good_name
            from project.orders_goods as OG
            join project.orders as O2
            on OG.order_id = O2.order_id
            where O2.client_id = C.client_id
            group by OG.good_name
            order by count(*) desc
            limit 1
        ) as "Любимый товар",
        sum(O.price * O.amount) as "Всего потрачено",
        max(O.valid_from_dttm) as "Дата последнего заказа"
    from project.clients as C
    left join project.orders as O
    on C.client_id = O.client_id
    group by "ID клиента", "Имя", "Фамилия", "Номер телефона"
    order by "ID клиента";

select * from project_views.client_summary;