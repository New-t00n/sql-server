go
use bdLojaDeRoupas

/*INSERT E SELECTS*/
select * from tbCliente
insert into tbCliente (nomeCliente,idadeCliente)
values
('João Lima', 15),
('Amanda Santana', 21),
('Carlos Santana',22)


select * from tbFabricante
insert into tbFabricante(nomeFabricante)
values
('C&E'),
('Piticas'),
('Pernambucanas')


select * from tbfuncionario
insert into tbfuncionario(nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
values 
('Joel Chan', 25, 15/02/2017, 1.500),
('Samuel', 22, 08/02/2000, 2.000),
('Edward',26, 02/05/2001,5.000)


select * from tbVendedor
insert into tbVendedor(nomeVendedor)
values
('Jack'),
('Jeremy'),
('Newman')


select * from tbProduto
insert into tbProduto(nomeProduto, codFabricante, codFuncionario, dataEntradaProduto,precoProduto)
values
('Calça', 1, 1, 02/05/2000,50.00 ),
('Camiseta',2,2,02/05/2017, 30.00),
('Tenis',3,3,03/05/2017,100,00)
