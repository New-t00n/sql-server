go
use bdLivrariaBrasileira

/*INSERTS E SELECTS*/
select * from tbAutor
insert into tbAutor(nomeAutor) 
values
('Machado de Assis'),
('Cora Coraline'),
('Graciano Ramos'),
('Clarice Lispector'),
('Erico Verissimo')

select * from tbEditora
insert into tbEditora(nomeEditora)
values
('Cia das Letras'),
('Atica'),
('Literatura Brasileira')

select * from tbGenero
insert into tbGenero(nomeGenero)
values 
('Biografia'),
('Romance'),
('Poesia'),
('Literatura Brasileira')

select * from tbLivro
insert into tbLivro(nomeLivro, numPaginas, codGenero,codAutor,codEditora)
values
('Leonardo Da Vinci', 1000, 4, 1, 1 ),
('THG', 115, 1,1,1),
('Divergente',134, 1,1,1),
('Insurgente', 145,1, 1, 1),
('Convergente', 234,1,2,1),
('A redoma de vidro', 234,1,2,1),
('THG In fire', 345,2,2,2),
('IT', 700,2,3,2),
('Monica',45,2,3,2),
('Cebolinha', 23,2,3,2),
('Magali', 56,2,4,2),
('Chico Bento', 89,3,4,3),
('Simpsons', 90,3,4,3),
('Liga da justiça', 456, 3,5,3),
('Sei la', 567,3,5,3),
('La la land', 345,3,5,3)