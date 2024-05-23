create database bdEscoladeIdiomas

go
use bdEscoladeIdiomas


create table tbAluno(
	codAluno int primary key identity (1,1),
	nomeAluno varchar(30) not null,
	dataNascimentoAluno date not null,
	rgAluno varchar(12) not null,
	naturalidadeAluno varchar(30) not null
)

create table tbCurso(
	codCurso int primary key identity(1,1),
	nomeCurso varchar(30),
	cargaHorariaCurso float,
	valorCurso money
)

create table tbTurma(
	codTurma int primary key identity (1,1),
	nomeTurma varchar(30)not null,
	horarioTurma time not null,
	codCurso int foreign key references tbCurso(codCurso)
)

create table tbMatricula(
	codMatricula int primary key identity (1,1),
	dataMatricula  date not null,
	codAluno int foreign key references tbAluno(codAluno),
	codTurma int foreign key references tbTurma(codTurma)
)