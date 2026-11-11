/*COMBINAR CONSULTAS COM O OPERADOR UNION

SELECT COLUNAS FROM  TABELA1
UNION 
SELECT COLUNAS FROM TABELA2...
*/

--EXEMPLO 1

SELECT NomeAutor as Nome, 'Autor' AS Tipo FROM Autor
UNION
SELECT NomeEditora AS Nome, 'Editora' AS Tipo FROM Editora;

--EXEMPLO 2

SELECT NomeLivro AS Nome, 'Livro' AS Tipo FROM Livro
UNION
SELECT NomeAssunto AS Assunto, 'Assunto' AS Tipo FROM Assunto;


--EXEMPLO 3
SELECT NomeAutor AS Nome, 'Autor' AS Tipo FROM Autor
UNION
SELECT NomeEditora AS Nome, 'Editora' AS Tipo FROM Editora
UNION
SELECT NomeAssunto AS Nome, 'Assunto' AS Tipo FROM Assunto
UNION
SELECT NomeLivro AS Nome, 'Livro' AS Tipo FROM Livro;

