go
use bdEscoladeIdiomas

/*INSERTS E SELECTS*/

select * from tbAluno
insert into tbAluno(nomeAluno, dataNascimentoAluno,rgAluno,naturalidadeAluno)
values
('Paulo Santos', '03/10/2000','82.292.122-0','SP' ),
('Maria da Glória','1999/03/10','45.233.123-0','SP'),
('Perla Nogueira', '1998/04/04', '23.533.211-9','SP'),
('Gilson Barros Slva', '1995/09/09','34.221.111-x','PE'),
('Mariana Barbosa Santos', '2001/10/10','54.222.122-9','RJ')


select * from tbCurso
insert into tbCurso(nomeCurso, cargaHorariaCurso,valorCurso)
values
('Inglês',2000,356),
('Alemão',3000,478)

select * from tbTurma
insert into tbTurma(nomeTurma,codCurso,horarioTurma)
values
('1|A',1,'12:00'),
('1|B',1,'18:00'),
('1AA',2,'19:00')

select * from tbMatricula
insert into tbMatricula(dataMatricula,codAluno,codTurma)
values
('2015/03/10',1,2),
('2014/04/05',2,2),
('2012/03/05',3,3),
('2016/03/03',1,5),
('2015/07/05',4,3),
('2015/05/07',4,5),
('2015/06/06',5,2),
('2015/05/05',5,5)

/*QUERIES*/

delete tbAluno
where codAluno = 10

/*1*/
select nomeAluno as 'Nome', rgAluno as 'RG', dataNascimentoAluno as 'Data de Nascimento' from tbAluno
where naturalidadeAluno = 'SP'

/*2*/
select nomeAluno as 'Nome', rgAluno as 'RG' from tbAluno
where nomeAluno like 'P%'

/*3*/
select nomeCurso as 'Nome do Curso' from tbCurso
where cargaHorariaCurso>2000

/*4*/
select nomeAluno as 'Nome', rgAluno as 'RG' FROM tbAluno
where nomeAluno like '%Silva%'  

/*5*/
select nomeAluno as 'Nome', dataNascimentoAluno as 'Data de Nascimento' from tbAluno
where  DATEPART (MONTH,dataNascimentoAluno)=3  

/*6*/
select codAluno as 'Código do Aluno', dataMatricula as 'Data de Matrícula' from tbMatricula
where DATEPART (MONTH, dataMatricula)=5

/*7*/
select codAluno as 'Código do Aluno' from tbMatricula
where codCurso = 1

/*8*/
select codAluno as 'Código do Aluno' from tbMatricula
where codTurma = 5

/*9*/
select * from tbAluno

/*10*/
select * from tbTurma
