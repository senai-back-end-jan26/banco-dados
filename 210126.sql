--1- Qual foi a quantia que cada funcionário recebeu?
--seleciona todas as colunas da tabela funcionário
select
	s.staff_id,
	s.first_name,
	s.last_name,
	SUM(p.amount) 
from
	staff s
inner join payment p on
	s.staff_id = p.staff_id
group by
	s.staff_id,
	s.first_name,
	s.last_name;

--2- Quantos filmes há em cada categoria?
select
	c."name",
	COUNT(f.film_id)
from
	film f
inner join film_category fc on
	f.film_id = fc.film_id
inner join category c on
	c.category_id = fc.category_id
group by
	c."name";

--3- Quantos funcionários residem em cada cidade?
select
	c.city,
	COUNT(s.staff_id)
from
	staff s
inner join address a on
	s.address_id = a.address_id
inner join city c on
	c.city_id = a.city_id
group by
	c.city;

--4- Selecione os campos: título do filme, idioma, categoria,
--quantia(aluguel), loja, país. (View)
select
	f.title,
	l."name",
	c."name",
	f.rental_rate,
	a.address,
	co.country
from
	film f
inner join language l on
	f.language_id = l.language_id
inner join film_category fc on
	fc.film_id = f.film_id
inner join category c on
	c.category_id = fc.category_id
inner join inventory i on
	i.film_id = f.film_id
inner join rental r on
	r.inventory_id = i.inventory_id
inner join staff s on 
	s.staff_id = r.staff_id 
inner join address a on 
	a.address_id = s.address_id
inner join city ci on
	ci.city_id = a.city_id 
inner join country co on
	co.country_id = ci.country_id;










