create database bdEscola

go 
use bdEscola

create table tbCurso(
	codCurso int primary key identity(1,1),
	nomeCurso char (20) not null,
	cargaHorarioCurso int not null,
	valorCurso smallmoney not null
)

create table tbAluno(
	codAluno int primary key identity (1,1),
	nomeAluno char (40) not null,
	dataNascimentoAluno datetime not null ,
	rgAluno varchar(14) not null,
	naturalidadeAluno char(20) not null
)

create table tbTurma(
	codTurma int primary key identity (1,1),
	nomeTurma varchar(5)not null,
	horarioTurma time not null,
	codCurso int foreign key references tbCurso(codCurso)
)

create table tbMatricula(
	codMatricula int primary key identity (1,1),
	dataMatricula datetime not null,
	codAluno int foreign key references tbAluno(codAluno),
	codTurma int foreign key references tbTurma(codTurma)
)

 