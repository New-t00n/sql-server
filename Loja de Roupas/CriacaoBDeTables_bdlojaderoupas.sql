create database bdLojaDeRoupas

go 
use bdLojaDeRoupas

create table tbCliente(
	codCliente int primary key identity(1,1),
	nomeCliente varchar(30) not null,
	idadeCliente int not null
)

create table tbVendedor (
	codVendedor int primary key identity(1,1),
	nomeVendedor varchar(30)not null
)

create table tbFabricante(
	codFabricante int primary key identity (1,1),
	nomeFabricante varchar(30) not null
)

create table tbfuncionario (
	codFuncionario int primary key identity (1,1),
	nomeFuncionario varchar (30) not null,
	idadeFuncionario int not null,
	dataAdmissao smalldatetime default getdate()not null,
	salarioFuncionario money not null
)

create table tbVenda(
	codVenda int primary key identity (1,1),
	dataVenda smalldatetime default getdate() not null,
	totalVendas money not null,
	codCliente int foreign key references tbCliente (codCliente),
	codVendedor int foreign key references tbVendedor (codVendedor)
)

create table tbProduto(
	codProduto int primary key identity (1,1),
	nomeProduto varchar (30) not null,
	precoProduto money  not null,
	dataEntradaProduto smalldatetime,
	codFuncionario int foreign key references tbFuncionario(codFuncionario),
	codFabricante int foreign key references tbFabricante (codFabricante)
)

create table tbItensVenda(
	codItensVenda int primary key identity (1,1),
	quantidadeItens int not null,
	subTotalItens money not null,
	codVenda int foreign key references tbVenda (codVenda),
	codProduto int  foreign key references tbProduto(codProduto)
)





