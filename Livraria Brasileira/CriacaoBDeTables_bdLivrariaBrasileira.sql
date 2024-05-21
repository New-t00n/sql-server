create database bdLivrariaBrasileira

go 
use bdLivrariaBrasileira

create table tbAutor(
	codAutor int primary key identity (1,1),
	nomeAutor char(40) not null
)

create table tbEditora(
	codEditora int primary key identity (1,1),
	nomeEditora char(40) not null
) 

create table tbGenero(
	codGenero int primary key identity (1,1),
	nomeGenero char (40) not null
)

create table tbLivro(
	codLivro int primary key identity (1,1),
	nomeLivro char (40) not null,
	numPaginas int not null,
	codGenero int foreign key references tbGenero(codGenero) not null,
	codEditora int foreign key references tbEditora(codEditora) not null,
	codAutor int foreign key references tbAutor(codAutor) not null
)