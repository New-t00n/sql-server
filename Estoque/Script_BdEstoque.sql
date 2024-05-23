go
use bdEstoque


/*INSERTS*/
select * from tbCliente
insert into tbCliente (nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascimentoCliente)
values 
('Amando José Santana' ,'12345678900', 'amandojsantana@outlook.com', 'm', '21/02/1961'),
('Sheila Carvalho Leal','45678909823','scarvalho@ig.com.br', 'f', '13/09/1978'),
('Carlos Henrique Souza','76598278299', 'chenrique@ig.com.br', 'm' ,'08/09/1981'),
('Maria Aparecida Souza', '87365309899', 'mapdasouza@outlook.com', 'f' ,'07/07/1962'),
('Adriana Nogueira Silva', '76354309388', 'drica1977@ig.com.br', 'f', '09/04/1977'),
('Paulo Henrique Silva', '87390123111', 'phsilca80@hotmail.com' ,'m' ,'02/02/1987')


select * from tbFornecedor

insert into tbFornecedor(nomeFornecedor, contatoFornecedor)
values
('Atacadao', 'Carlos Santos'),
('Assai', 'Maria Stella'),
('Roldao', 'Paulo Cesar')


select * from tbFabricante

insert into tbFabricante (nomeFabricante)
values 
('Unilever'),
('P&G'),
('Bunge')


select * from tbProduto 
insert into tbProduto (descricaoProduto, valorProduto, quantidadeProduto, codFabricante, codFornecedor)
values 
('Amaciante Downy',5.76, 1500,2,1 ),
('Amaciante Comfort', 5.45, 2300,1,1),
('Sabão em pó OMO',5.99,1280,1,2),
('Margarida Qually',4.76,2500,3,1),
('Salsicha Hot Dog Sadia',6.78,2900,3,2),
('Mortadela Perdigão',2.50,1200,3,3),
('Hamburguer Sadia',9.89,1600,3,1),
('Fralda Pampers',36.00,340,2,3),
('Xampu Seda',5.89,800,1,2),
('Condicionador seda',6.50,700,1,3)


select * from tbVenda 
insert into tbVenda (dataVenda, valorTotalVenda,codCliente)
values 
('07/05/2014',3400.00,1),
('05/05/2014',4000.00,2),
('01/02/2014', 4500.00, 1),
('03/02/2014', 3400.00,1),
('10/02/2014', 2100.00, 2),
('15/02/2014', 2700.00, 3),
('17/03/2014', 560.00, 3),
('07/04/2014', 1200.00,4),
('07/05/2014', 3500.00,5),
('07/05/2014', 3500.00,5)


select * from tbItensVenda
insert into tbItensVenda(codVenda, codProduto, quantidadeItensVenda, subTotalItensVenda)
values
(1,2,200,1500.00),
(1,2,300,3000.00),
(2,4,120,1400.00),
(2,2,200,1000.00),
(2,3,130,1000.00),
(3,5,200,2100.00),
(4,4,120,1000.00),
(4,5,450,700.00),
(5,5,200,560.00),
(6,7,200,600.00),
(6,6,300,600.00),
(8,2,300,2500.00),
(8,2,200,1000.00),
(9,6,250,1700.00),
(9,5,200,1700.00),
(10,4,1000,4000.00)

/*QUERIES*/
select * from tbProduto

delete tbVenda
where codVenda = 7

update tbProduto
set valorProduto = valorProduto*1.1
where codFabricante = 1
select * from tbProduto

update tbProduto
set valorProduto = (valorProduto-(valorProduto*0.7))
where codFabricante = 2

update tbProduto
set quantidadeProduto= quantidadeProduto-30
where codFornecedor=1

update tbCliente
set nomeCliente = 'Adriana Nogueira Silva Campos'
where codCliente = 5

select * from tbVenda

update tbVenda
set valorTotalVenda = (valorTotalVenda-(valorTotalVenda*0.05))
where cast (dataVenda AS date) between '2014/02/01'  and '2014/02/28' 

update tbVenda
set valorTotalVenda = 2700.00 
where codVenda = 4

delete tbItensVenda
where codProduto=6