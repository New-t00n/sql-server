create database bdVendas

go 
use bdVendas

create table tbFabricante(
	codFabricante int primary key identity (1,1),
	nomeFabricante varchar(30),
	cnpjFabricante varchar(18),
)

create table tbProduto(
	codProduto int primary key identity (1000,1),
	nomeProduto varchar (30),
	precoProduto money,
	pesoProduto float,
	codFabricante int foreign key references tbFabricante(codFabricante)
)