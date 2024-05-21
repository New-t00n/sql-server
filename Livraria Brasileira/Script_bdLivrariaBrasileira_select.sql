go 
use bdLivrariaBrasileira

/*QUERIES*/

/*Livros iniciados com a letra L*/
select COUNT(nomeLivro) AS 'Livros iniciados com L' from tbLivro where nomeLivro like 'l%'

/*Livro com mais páginas da livraria*/
select top 1 nomeLivro AS 'Nome do Livro', MAX (numPaginas) AS 'Livro com mais páginas' from tbLivro
group by nomeLivro order by MAX (numPaginas) desc  

/*Livro com menos páginas da livraria*/
select top 1 nomeLivro AS 'Nome do Livro', MIN (numPaginas) AS 'Livro com menos páginas' from tbLivro
group by nomeLivro order by MIN(numPaginas) asc


/*Média de páginas dos livros de toda livraria*/
select AVG (numPaginas) AS 'Média de livros' from tbLivro


/*Soma de todas as páginas da editora de código 1 */
select nomeEditora AS 'Editora', SUM (numPaginas) 'Soma das páginas' from tbLivro
inner join tbEditora
ON tbLivro.codEditora = tbEditora.codEditora
where tbLivro.codEditora = 1
group by nomeEditora


/*Soma de todas as páginas de livros iniciados em "A" */
select SUM (numPaginas) from tbLivro where nomeLivro like 'A%'


/*Média de página dos livros do autor com código 3*/
select nomeAutor, AVG (numPaginas) from tbLivro
inner join tbAutor
ON tbLivro.codAutor = tbAutor.codAutor
where tbLivro.codAutor = 3
group by nomeAutor


/*Total de livros da editora de código 2*/
select nomeEditora AS 'Nome da Editora', COUNT (codLivro) AS 'Quantidade de livros' from tbLivro 
inner join tbEditora
on tbLivro.codEditora = tbEditora.codEditora
where tbLivro.codEditora = 2
group by nomeEditora


/*Média de páginas de livros que possuem a palavra 'estrela no título'*/
select AVG (numPaginas) as 'com "gente" no título' from tbLivro where nomeLivro like '%gente%'


/*Total de livros com a palavra "gente" no título*/
select COUNT (codLivro) as 'com "gente" no título' from tbLivro where nomeLivro like '%gente%'


/*Quantidade de livros por gênero*/
select nomeGenero as 'Nome do Livro', COUNT(tbLivro.codGenero) AS 'Quantidade de livros' from tbLivro 
inner join tbGenero
on tbLivro.codGenero = tbGenero.codGenero
group by nomeGenero


/*Código do autor, nome do autor e soma total dás páginas de seus livros*/
select tbLivro.codAutor as 'Código do Autor', nomeAutor as 'Autor', SUM (numPaginas) as 'Soma das páginas' from tbLivro
inner join tbAutor
on tbLivro.codAutor = tbAutor.codAutor
group by nomeAutor, tbLivro.codAutor