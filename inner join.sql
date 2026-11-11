use biblioteca;


--joins: INNER JOIN

/*
SINTAXE:

SELECT colunas 
FROM tabela1
[INNER] JOIN tabela2
ON tabela1.coluna = tabela2.coluna
[INNER] JOIN tabelaN
ON tabela1.coluna = tabelaN.coluna
*/


--A TABELA LIVRO POSSUI DADOS DA TABELA ASSUNTO (IDASSUNTO), DEPOIS VOCE VAI
-- IDENTIFICAR A TABELA ASSUNTO E A COLUNA PRECISA SER A MESMA Livro.IdAssunto = Assunto.IdAssunto
SELECT * 
FROM Livro
INNER JOIN Assunto
ON Livro.IdAssunto = Assunto.IdAssunto;


SELECT NomeLivro, NomeAssunto 
FROM Livro
INNER JOIN Assunto
On Livro.IdAssunto = Assunto.IdAssunto;

SELECT NomeLivro AS Livros, NomeEditora AS Editoras
FROM Livro
INNER JOIN Editora
ON Livro.IdEditora = Editora.IdEditora
WHERE Editora.NomeEditora LIKE '[MH]%'
ORDER BY Livro.NomeLivro;

--otimizando o codigo (identifica o lIVRO COMO L E EDITORA COMO E)
SELECT L.NomeLivro Livros, E.NomeEditora Editoras
FROM Livro L
INNER JOIN Editora E
ON L.IdEditora = E.IdEditora
WHERE E.NomeEditora LIKE '[MH]%'
ORDER BY L.NomeLivro;



SELECT L.NomeLivro Livro, A.NomeAutor Autor, A.SobrenomeAutor Sobrenome
FROM LivroAutor LA
INNER JOIN AUTOR A
ON LA.IdAutor = A.IdAutor
INNER JOIN Livro L
ON L.IdLivro = LA.IdLivro
ORDER BY Livro;


SELECT * FROM LIVROAUTOR;
select * from autor;

SELECT * FROM LIVRO;


SELECT L.NomeLivro Livro, A.NomeAutor Autor, A.SobrenomeAutor Sobrenome,
E.NomeEditora Editora
FROM LivroAutor LA
INNER JOIN AUTOR A
ON LA.IdAutor = A.IdAutor
INNER JOIN Livro L
ON L.IdLivro = LA.IdLivro
INNER JOIN Editora E
ON L.IdEditora = E.IdEditora
ORDER BY Livro;