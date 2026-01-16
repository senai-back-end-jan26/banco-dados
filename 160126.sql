--criar banco de dados chamado teste
create database teste;

create table PRODUTO (
	id int primary key,
	regra text,
	disciplina varchar(30),
	data_inicial date,
	data_final date
);

--seleciona todas as colunas da tabela produto
select id, * from PRODUTO;

--seleciona as colunas id e regra da tabela produto
select id, regra from PRODUTO;

--alias para renomear colunas
select
	p.id as "id tipo 1",
	p.id as "id tipo 2"
from
	PRODUTO p;

--altera a tabela produto
alter table PRODUTO alter column id serial; --ERRO

--apaga a tabela produto
drop table PRODUTO;

--apaga uma coluna da tabela produto
alter table PRODUTO drop column id;

--adicionando a coluna id do tipo serial e chave primária
alter table PRODUTO add column id serial primary key;

--insere dados/registro na tabela produto
insert into PRODUTO(regra, disciplina, data_inicial, data_final)
values('- Aqui serão definidas as regras', 'Banco de Dados', '2026-01-14', '2026-01-23');

--insere vários dados/registro na tabela produto
insert into PRODUTO(regra, disciplina, data_inicial, data_final)
values('- Aqui serão definidas as regras', 'Lógica de Programação', '2026-01-05', '2026-01-13'),
('- Aqui serão definidas as regras', 'Programação Orientada a Objetos', '2026-01-26', '2026-02-03'),
('- Aqui serão definidas as regras', 'Desenvolvimento de API', '2026-02-04', '2026-02-26'),
('- Aqui serão definidas as regras', 'Integração de Competências Profissionais', '2026-02-27', '2026-03-05');

--altera o tamanho de uma coluna específica
alter table PRODUTO alter column disciplina type varchar(50);

select * from PRODUTO;


delete from PRODUTO where id = 4;
delete from PRODUTO where id = :id;






