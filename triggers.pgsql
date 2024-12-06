create or replace function project.update_price_fn()
returns trigger as $$
    begin 
        update project.orders as ord
        set price = new.price
        where ord.valid_from_dttm is null and exists(
            select o.order_id 
            from project.orders_goods as og
            join project.orders as o
            on o.order_id = og.order_id
            where good_id = old.good_id
        );
        return null;
    end;
$$ LANGUAGE plpgsql;


create or replace TRIGGER update_price 
    AFTER UPDATE of price on project.goods
    for each row execute function project.update_price_fn();

update project.goods
set price = 100.10
where name = 'M48 Patton';


select * from project.goods;
select * from project.orders;


create or replace function project.check_employee_age_fn()
returns trigger as $$
        begin 
        if new.age < 18 
            THEN raise exception 'Вы пытаетесь добавить несовершеннолетнего рабоника!';
        end IF;

        return new;
    end;
$$ LANGUAGE plpgsql;


create or replace TRIGGER check_employee_age
    before INSERT on project.employees
    for each row execute FUNCTION project.check_employee_age_fn();


insert into project.employees (first_name, last_name, age, phone_number, position, salary)
values ('Дианочка', '14.1', 14, '8005553535', 'Хранитель подвала', 500.00);


select * from project.employees;