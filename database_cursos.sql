create database central_cursos;

go 
use central_cursos;

create table aluno (
	cod_aluno int primary key identity(1,1),
	nome_aluno varchar (255),
	cpf_aluno varchar(14),
	data_nasc date,
	logradouro varchar(255),
	numero varchar(20),
	bairro varchar(255),
	cidade varchar(255),
);

create table telefone_aluno(
	cod_telefone_aluno int primary key identity(1,1),
	num_telefone_aluno varchar(13),
	cod_aluno int FOREIGN KEY REFERENCES aluno(cod_aluno)
);


insert into aluno (nome_aluno,cpf_aluno, data_nasc, logradouro, numero, bairro, cidade)
values ('Newton Paul Aranha', '481.093.308-35', '18-06-2000', 'Rua Vinhático', '64', 'Guaianazes', 'São Paulo');

select * from aluno;

insert into telefone_aluno (num_telefone_aluno, cod_aluno)
values ('11 91111-1901', 1), ('11 92222-1901', 1), ('11 92222-1871', 1)

select num_telefone_aluno FROM telefone_aluno where cod_aluno = 1

SELECT nome_aluno AS 'Nome', num_telefone_aluno AS 'Telefone' FROM aluno
LEFT JOIN telefone_aluno
ON  aluno.cod_aluno = telefone_aluno.cod_aluno