--1- Há quantos atores registrados no banco?
select count(*) from actor;
select count(actor_id) from actor;

--2- Há quantos filmes registrados no banco?
select count(*) from film;

--3- Quantos filmes começam com a letra 'B'?
select count(*) from film where title like 'B%';
select count(*) from film where title like '%i';
select * from film where title like '%y%';

--4- Qual é a cidade de id igual 7?
select * from city where city_id = 7;
select * from city where city = 'Aden';
select city_id, city from city where country_id = 107;

--5- Qual o maior valor registrado em payment(amount)?
select MAX(amount) from payment;
select MIN(amount) from payment;
select AVG(amount) from payment;

--6- Quantos filmes o ator de id igual 5 fez?
select * from film_actor where actor_id = 5;

select count(*) from film f
inner join film_actor fa on f.film_id = fa.film_id
inner join actor a on a.actor_id = fa.actor_id
where a.actor_id = 5;

select
	count(*),
	a.first_name
from
	film f
inner join film_actor fa on
	f.film_id = fa.film_id
inner join actor a on
	a.actor_id = fa.actor_id
where
	a.actor_id = 5
group by
	a.first_name;

--7- Qual categoria possui mais filmes?
select count(c."name"), c."name" from category c
inner join film_category fc on c.category_id = fc.category_id
group by c."name"
order by count(c."name") desc
limit 1; 

--8- Selecione os atores em ordem alfabética
--(pelo primeiro nome) e mostre apenas os 10 primeiros.
select * from actor a
order by a.first_name asc 
limit 10;
