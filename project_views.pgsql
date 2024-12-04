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
        ELSE cast(rating as varchar(1))(rating as varchar(1))
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
create or replace view project_views.popular_products as
select G.good_id, G.name as product_name, count(OG.good_id) as order_count, sum(O.amount) as total_amount
from project.goods as G
left join project.orders_goods as OG
on G.good_id = OG.good_id
left join project.orders as O
on OG.order_id = O.order_id and OG.good_name = O.good_name
group by G.good_id, G.name
order by order_count desc;

select * from project_views.popular_products;

-- 2


-- 3

