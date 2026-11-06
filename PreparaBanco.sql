create database myfinance;
go

use myfinance;

create table planoconta(
	id int identity(1,1) not null,
	descricao varchar(50) not null,
	tipo char(1) not null,
	primary key (id)
);

create table transacao(
	id int identity(1,1) not null,
	historico text null,
	data date not null,
	valor decimal(9,2),
	planocontaid int not null,
	primary key (id),
	foreign key(planocontaid) references planoconta(id)
);

insert into planoconta(descricao, tipo) values('Combustível', 'D')

select * from planoconta;

insert into transacao(historico,data,valor,planocontaid) 
values('Salário do Mês','2026-01-05',1000,4);

select * from transacao;
