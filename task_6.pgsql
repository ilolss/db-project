-- Вывести продавцов, у которых средний рейтинг их товаров выше 3.

select 
    s.seller_id,
    s.name,
    avg(g.rating) as avg_product_rating
from 
    project.sellers s
join 
    project.goods g on s.seller_id = g.seller_id
group by 
    s.seller_id, s.name
having 
    avg(g.rating) > 3;


-- Вывести список клиентов, заказавших товары на общую сумму более 15,000, отсортированный по убыванию суммы заказов.

select 
    c.client_id,
    c.first_name,
    c.last_name,
    sum(o.price) as total_spent
from 
    project.clients c
join 
    project.orders o on c.client_id = o.client_id
group by 
    c.client_id
having 
    sum(o.price) > 15000
order by 
    total_spent desc;


-- Вывести самые дорогие товары каждого продавца.
   
select
	s.seller_id,
	rp.name,
	rp.price,
	rp.price_rank
from 
	project.sellers s 
left join (
	select 
		rp.seller_id,
		rp.name,
		rp.price,
		rp.price_rank
	from (
		select 
		    g.seller_id as seller_id,
		    g.name as name,
		    g.price as price,
		    rank() over (partition by g.seller_id order by g.price desc) as price_rank
		from 
		    project.goods g
	) rp
	where 
	    rp.price_rank = 1
) rp on s.seller_id = rp.seller_id;

-- Вывести ПВЗ с рейтингом выше среднего по всем ПВЗ, отсортировать по рейтингу.

with avg_rating as (
    select avg(p.rating) as avg_rating
    from project.points p
)
select 
    p.point_id,
    p.address,
    p.rating
from 
    project.points p, avg_rating
where 
    p.rating > avg_rating.avg_rating
order by 
    p.rating desc;

-- Вывести ПВЗ с количеством работников, отсортированные по убыванию количества работников.

select 
    p.point_id,
    p.address,
    count(pe.employee_id) as worker_count
from 
    project.points p
left join 
    project.points_employees pe on p.point_id = pe.point_id
group by 
    p.point_id, p.address
order by 
    worker_count desc;