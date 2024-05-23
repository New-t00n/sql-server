go
use bdVendas

/*INSERTS*/
select*from tbFabricante
insert into tbFabricante(nomeFabricante,cnpjFabricante)
values
('Visconti', '12.345.878/0001-90'),
('Lacta',	'34.567.989/0001-34'),
('Garoto',	'56.784.564/0001-93'),
('Nestle',	'98.543.234/0001-03'),
('Arcor',	'14.545.765/0002-65'),
('Topcau',	'43.876.543/0001-76')


select* from tbProduto
insert into tbProduto (nomeProduto,precoProduto,pesoProduto,codFabricante)
values
('Ovo ao leite',19.50, 300, 01),
('Ovo Bis',	22.90,	400, 02),
('Ovo Laka',	21.98,400, 02),
('Ovo Shot',	24.56,	400, 02),
('Ovo Batom ao leite',	26.70,	500,	03),
('Ovo Batom branco',	28.90,	500,	03),
('Ovo Tortuguita morango',	18.90,	400,	04),
('Ovo Aerado',	19.00,	400,	04),
('Ovo Twist',	19.90,	400,	04),
('Ovo Toy Story',	12.50,	100,	05)


/*QUERIES*/
update tbFabricante
set nomeFabricante= 'Bauducco'
where nomeFabricante = 'Visconti'

update tbProduto
set precoProduto = precoProduto*1.2
where precoProduto<19.00

update tbProduto
set precoProduto = (precoProduto-(precoProduto*0.05))
where precoProduto >=19.00

update tbProduto
set precoProduto = 18.90
where codProduto = 1007

update tbProduto
set nomeProduto = 'Ovo Tradicional'
where codProduto = 1000

delete tbProduto
where  codProduto between 1005 and 1008

delete tbProduto
where pesoProduto < 400 and  codFabricante <> 2 
