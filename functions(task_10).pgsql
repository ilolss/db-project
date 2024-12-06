-- Добавление товара в карантин
drop function if exists project.move_to_quarantine;

create or replace function project.move_to_quarantine(
    p_good_id integer,
    p_reason text,
    p_valid_from timestamp,
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