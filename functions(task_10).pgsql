-- Добавление товара в карантин
drop function if exists project.move_to_quarantine;

create or replace function project.move_to_quarantine(
    p_good_id integer,
    p_reason text,
    p_valid_from timestamp default CURRENT_TIMESTAMP,
    p_valid_to timestamp default null
)
returns void as $$
begin
    if not exists (
        select 1
        from project.goods
        where good_id = p_good_id
    ) then
        raise exception 'Товар с ID % не найден.', p_good_id;
    end if;
    if exists (
        select 1
        from project.quarantine
        where good_id = p_good_id
    ) then
        raise exception 'Товар с ID % уже в карантине.', p_good_id;
    end if;
    insert into project.quarantine (
        good_id, reason, valid_from_dttm, valid_to_dttm
    )
    values (
        p_good_id, p_reason, p_valid_from, p_valid_to
    );
end;
$$ language plpgsql;

-- Добавление нового товара
drop function if exists project.add_new_good;

create or replace function project.add_new_good(
    p_seller_id integer,
    p_name varchar(60),
    p_description text,
    p_price decimal(12, 2),
    p_amount integer,
    p_valid_from timestamp default CURRENT_TIMESTAMP,
    p_valid_to timestamp default null
)
returns void as $$
begin
    if not exists (
        select 1
        from project.sellers
        where seller_id = p_seller_id
    ) then
        raise exception 'Продавец с ID % не найден', p_seller_id;
    end if;
    insert into project.goods (
        seller_id, name, description, price, amount, valid_from_dttm, valid_to_dttm
    )
    values (
        p_seller_id, p_name, p_description, p_price, p_amount, p_valid_from, p_valid_to
    );
end;
$$ language plpgsql;
