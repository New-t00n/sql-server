go 
use bdEscola

select * from tbCurso
insert into tbCurso(nomeCurso, cargaHorarioCurso, valorCurso)
values 
('Inglês', 360, 356.00),
('Alemão', 500, 478.00)


select * from tbAluno
insert into tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
values 
('Paulo Santos', '2000-10-03 ', '82.292.122-0', 'SP'),
('Maria da Gloria', '1999-03-10 ', '45.233.123-0', 'SP'),
('Perla Nogueira Silva','1998-04-04 ' , '23.533.21','SP'),
('Gilson Barros Silva', '1995-09-09','34.221.111-X','PE'),
('Mariana Barbosa Santos', '2001-10-10', '54.222.122-9', 'RJ')


select * from tbTurma
insert into tbTurma(nomeTurma, horarioTurma, codCurso)
values
('1º A','12:00:00', 1),
('1º B','18:00:00', 1),
('2º C',' 19:00:00', 2)

select * from tbMatricula
insert into tbMatricula(dataMatricula, codAluno, codTurma)
values 
('2014-04-05',2,2),
('2012-03-05',3,3),
('2016-03-03',1,4),
('2015-07-05',4,4),
('2015-05-07',4,4),
('2015-06-06',5,2),
('2015-05-05',5,3)