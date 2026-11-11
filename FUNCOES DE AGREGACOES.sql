--FUNÇÕES DE AGREGACOES

/*MIN, MAX, AVG., SUM, COUNT*/

--(*) TODAS AS LINHAS
SELECT COUNT (*) FROM AUTOR;


--O VALOR MAIS ALTO DA COLUNA
SELECT MAX (PrecoLivro) 'Mais Caro' FROM Livro;

--o livro que contem o menor numero de paginas
SELECT MIN(NumeroPagina) 'Menor Número de Páginas' FROM Livro;


--média de todos os precos do livro
SELECT AVG (PrecoLivro) 'Preço Médio' FROM Livro;



--SOMOU TODOS OS LIVROS
SELECT SUM (PrecoLivro) 'Valor Total' FROM Livro;


SELECT COUNT(*) Total FROM Livro
WHERE IdAssunto = 1;


SELECT SUM (PrecoLivro) / COUNT (*) AS 'Preço Médio'
FROM Livro;


SELECT NomeLivro, PrecoLivro FROM Livro
WHERE PrecoLivro = (
		SELECT MAX (PrecoLivro) FROM Livro
					);







