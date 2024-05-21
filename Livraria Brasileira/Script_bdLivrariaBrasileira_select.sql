go 
use bdLivrariaBrasileira

/*QUERIES*/

/*Livros iniciados com a letra L*/
select COUNT(nomeLivro) AS 'Livros iniciados com L' from tbLivro where nomeLivro like 'l%'

/*Livro com mais p�ginas da livraria*/
select top 1 nomeLivro AS 'Nome do Livro', MAX (numPaginas) AS 'Livro com mais p�ginas' from tbLivro
group by nomeLivro order by MAX (numPaginas) desc  

/*Livro com menos p�ginas da livraria*/
select top 1 nomeLivro AS 'Nome do Livro', MIN (numPaginas) AS 'Livro com menos p�ginas' from tbLivro
group by nomeLivro order by MIN(numPaginas) asc


/*M�dia de p�ginas dos livros de toda livraria*/
select AVG (numPaginas) AS 'M�dia de livros' from tbLivro


/*Soma de todas as p�ginas da editora de c�digo 1 */
select nomeEditora AS 'Editora', SUM (numPaginas) 'Soma das p�ginas' from tbLivro
inner join tbEditora
ON tbLivro.codEditora = tbEditora.codEditora
where tbLivro.codEditora = 1
group by nomeEditora


/*Soma de todas as p�ginas de livros iniciados em "A" */
select SUM (numPaginas) from tbLivro where nomeLivro like 'A%'


/*M�dia de p�gina dos livros do autor com c�digo 3*/
select nomeAutor, AVG (numPaginas) from tbLivro
inner join tbAutor
ON tbLivro.codAutor = tbAutor.codAutor
where tbLivro.codAutor = 3
group by nomeAutor


/*Total de livros da editora de c�digo 2*/
select nomeEditora AS 'Nome da Editora', COUNT (codLivro) AS 'Quantidade de livros' from tbLivro 
inner join tbEditora
on tbLivro.codEditora = tbEditora.codEditora
where tbLivro.codEditora = 2
group by nomeEditora


/*M�dia de p�ginas de livros que possuem a palavra 'estrela no t�tulo'*/
select AVG (numPaginas) as 'com "gente" no t�tulo' from tbLivro where nomeLivro like '%gente%'


/*Total de livros com a palavra "gente" no t�tulo*/
select COUNT (codLivro) as 'com "gente" no t�tulo' from tbLivro where nomeLivro like '%gente%'


/*Quantidade de livros por g�nero*/
select nomeGenero as 'Nome do Livro', COUNT(tbLivro.codGenero) AS 'Quantidade de livros' from tbLivro 
inner join tbGenero
on tbLivro.codGenero = tbGenero.codGenero
group by nomeGenero


/*C�digo do autor, nome do autor e soma total d�s p�ginas de seus livros*/
select tbLivro.codAutor as 'C�digo do Autor', nomeAutor as 'Autor', SUM (numPaginas) as 'Soma das p�ginas' from tbLivro
inner join tbAutor
on tbLivro.codAutor = tbAutor.codAutor
group by nomeAutor, tbLivro.codAutor