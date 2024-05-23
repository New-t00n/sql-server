create database bdEmpresa

go 
use bdEmpresa


create table tbFunc(
	codFunc int primary key identity (1,1),
	nomeFunc varchar(30) not null,
	uf char(30) not null,
	idade int not null,
	quantFilhos int not null
)

create table tbFuncional(
	codFuncional int primary key identity (1,1),
	cargo varchar (30) not null,
	salario money not null,
	tempoEmpresa int not null,
	tempoCargo int not null,
	sindicalizado varchar(30) not null,
	codFunc int foreign key references tbFunc (codFunc)  
)