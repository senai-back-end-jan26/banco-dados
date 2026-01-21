create table cliente (
	id serial primary key,
	nome varchar(20),
	cpf char(3),
	endereco_id int --chave estrangeira
);

create table endereco (
	id serial primary key,
	rua varchar(10),
	numero int,
	cidade varchar(10)
);

alter table cliente add foreign key 
(endereco_id) references endereco(id);

insert into endereco(rua, numero, cidade)
values('X', 100, 'A'),
('Y', 101, 'B'),
('Z', 200, 'C'),
('W', 300, 'D');

insert into cliente(nome, cpf, endereco_id)
values('Ana', '123', 1),
('César', '456', 2),
('Júlia', '789', 3),
('Amanda', '111', null),
('Cássio', '258', null),
('Gabriel', '614', null);

select * from cliente;
select * from endereco;

--explicação
select
	*
from
	endereco e
right join cliente c on
	c.endereco_id = e.id;

--explicação
select
	*
from
	endereco e
left join cliente c on
	c.endereco_id = e.id;

--explicação
select
	*
from
	endereco e
inner join cliente c on
--join cliente c on
	c.endereco_id = e.id;

--explicação
select
	*
from
	endereco e
full join cliente c on
	c.endereco_id = e.id;









