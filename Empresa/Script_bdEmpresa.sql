go 
use bdEmpresa


/*INSERTS e SELECTS*/

select * from tbFunc
insert into tbFunc(nomeFunc, uf, idade, quantFilhos)
values
('Jailson','Paraná', 35, 2),
('Jeferson','Pernambuco',32,5),
('Michele', 'Acre', 30, 2),
('Juninho','São Paulo',22,0),
('Paulinho','Bahia', 21, 2),
('Isaque','Mato Grosso',19,6),
('Carlos', 'São Paulo', 35, 1 ),
('Larissa', 'Paulista', 42, 1),
('Nicochele', 'Mato Grosso do Sul', 51, 2),
('Pedro', 'Acre', 39, 3)


select * from tbFuncional
insert into tbFuncional(cargo, salario, tempoEmpresa, tempoCargo, sindicalizado, codFunc)
values
('Ator', 1780, 5, 4, 'Não', 11),
('Jogador de Futebol', 3500, 3, 4, 'Não',12 ),
('DBA', 2500, 5,5,'Sim', 13 ),
('Programador', 3600,3,3,'Sim',14),
('Programador', 2500,2,1,'Não',15),
('Chef', 3000, 3,5,'Sim',16),
('Youtuber', 2000, 4,4, 'Não',17),
('Programador', 3600,5,3, 'Sim',18),
('Web Designer',2500,3,3,'Não',19),
('Web Designer', 3000,4,1,'Sim',20)



/*QUERIES*/

/*Todos os funcionários com salário maior ou igual a 3600 terão um aumento para 4000 */
update tbFuncional
set salario = 4000
where salario >= 3600


/*Total de funcionários cadastrados */
select  COUNT(codFunc) as Total from tbFunc

/*Soma total da idade dos funcionários*/
select SUM (idade) as Total from tbFunc

/*Soma total de filhos dos funcionários*/
select SUM (quantFilhos) as 'Quantidade de filhos' from tbFunc

/*Soma total do salário dos funcionários*/
select SUM (salario) as Total from tbFuncional

/*Soma total do tempo de empresa dos funcionários*/
select SUM (tempoEmpresa) as Total from tbFuncional

/*Soma total do tempo de cargo dos funcionários*/
select SUM (tempoCargo) as Total from tbFuncional

/*7*/
select MAX(codFunc)as Total from tbFunc

/*8*/
select MIN(codFunc) as Total from tbFunc 

/*9*/
select MAX(idade) as Total from tbFunc

/*10*/
select MIN (idade) as Total from tbFunc

/*11*/
select MAX (quantFilhos) as Total from tbFunc

/*12*/
select MIN (quantFilhos) as Total from tbFunc

/*13*/
select MAX (salario) as Total from tbFuncional

/*14*/
select MIN (salario) as Total from tbFuncional

/*15*/
select MAX (tempoEmpresa) as Total from tbFuncional

/*16*/
select MIN (tempoEmpresa) as Total from tbFuncional

/*17*/
select MAX (tempoCargo) as Total from tbFuncional

/*18*/
select MIN (tempoCargo) as Total from tbFuncional

/*19*/
select AVG (codFunc) as Total from tbFunc

/*20*/
select AVG (idade) as Total from tbFunc

/*21*/
select AVG (quantFilhos) as Total from tbFunc

/*22*/
select AVG (salario) as Total from tbFuncional

/*23*/
select AVG (tempoEmpresa) as Total from tbFuncional

/*24*/
select AVG (tempoCargo) as Total from tbFuncional

/*25*/
select COUNT(salario) as Total from tbFuncional
where salario>800

/*26*/
select COUNT (salario) as Total from tbFuncional
where salario>1000

/*27*/
select COUNT (salario) as Total from tbFuncional
where salario<400

/*28*/
select COUNT (salario) as Total from tbFuncional
where salario<2000

/*29*/
select COUNT (salario) as Total from tbFuncional
where salario>8000

/*30*/
select COUNT (salario) as Total  from tbFuncional
where salario<1000

/*31*/
select COUNT (tempoCargo) as Total from tbFuncional
where tempoCargo like 1

/*32*/
select COUNT (tempoCargo) as Total from  tbFuncional
where tempoCargo like 3

/*33*/
select COUNT (tempoCargo) as Total from tbFuncional
where tempoCargo like 4

/*34*/
select COUNT (tempoCargo) as Total from tbFuncional
where tempoCargo>10

/*35*/
select COUNT (idade) as Total from tbFunc
where  idade>20

/*36*/
select COUNT (idade) as Total  from tbFunc
where idade>40

/*37*/
select COUNT (idade) as Total from tbFunc
where idade<80

/*38*/
select COUNT (idade) as Total from tbFunc
where idade<200


/*39*/
select COUNT (cargo ) as  Total  from tbFuncional
where cargo = 'Gerente'

/*40*/
select COUNT (cargo) as Total from tbFuncional
where cargo= 'analista'

/*41*/
select COUNT (cargo) as Total from tbFuncional
where cargo= 'Web Designer'

/*42*/
select COUNT (cargo) as Total from tbFuncional
where cargo = 'programador'

/*43*/
Select SUM (salario) as Total from tbFuncional
where cargo = 'analista'

/*44*/
select SUM (salario) as Total from tbFuncional
where cargo= 'gerente'

/*45*/
select COUNT (uf) as Total from tbFunc
where uf= 'São Paulo'

/*46*/
select COUNT (uf) as Total from tbFunc
where uf='Bahia'

/*47*/
select COUNT (uf) as Total from tbFunc
where uf= 'Ceará'

/*48*/
select  COUNT (uf) as Total from tbFunc
where uf='Rio de Janeiro'

/*49*/
select COUNT (uf) as Total  from tbFunc
where uf not like 'Rio de Janeiro'

/*50*/
select COUNT (sindicalizado) as Total from tbFuncional
where sindicalizado='sim'

/*51*/
select COUNT (sindicalizado) as Total from tbFuncional
where sindicalizado='Não'

 
