-- EXERCÍCIO 1
SELECT L.NomeLivro Livro, A.NomeAssunto Assunto from Livro L
INNER JOIN Assunto A
ON L.IdAssunto = A.IdAssunto;

select * from assunto;

-- EXERCÍCIO 2
SELECT A.NomeAutor Autor, A.SobrenomeAutor Sobrenome,
L.NomeLivro Livro, AO.NomeAssunto Assunto
FROM LivroAutor LA
INNER JOIN Autor A
ON LA.IdAutor = A.IdAutor
INNER JOIN Livro L
ON LA.IdLivro = L.IdLivro 
INNER JOIN ASSUNTO AO
ON L.IdAssunto = AO.IdAssunto;

SELECT * FROM LIVRO;

--EXERCÍCIO 3
SELECT L.NomeLivro, L.PrecoLivro, E.NomeEditora, A.NomeAssunto
FROM Livro L
INNER JOIN Editora E
ON L.IdEditora = E.IdEditora
INNER JOIN Assunto A
ON L.IdAssunto = A.IdAssunto
ORDER BY NomeLivro;

--EXERCÍCIO 4

SELECT L.NomeLivro Livro, L.DataPub 'Data de Publicação', A.SobrenomeAutor Sobrenome
FROM Livro L
INNER JOIN  LivroAutor LA
ON L.IdLivro = LA.IdLivro
INNER JOIN AUTOR A
ON LA.IdAutor = A.IdAutor
WHERE A.SobrenomeAutor LIKE 'B%';


select * from LIVRO;


--EXERCÍCIO 5

SELECT A.NomeAssunto Assunto, AO.SobrenomeAutor Sobrenome, L.PrecoLivro Preco
FROM Livro L
INNER JOIN LivroAutor LA
ON L.IdLivro = LA.IdLivro
INNER JOIN Autor AO 
ON LA.IdAutor = AO.IdAutor
INNER JOIN Assunto A
ON L.IdAssunto = A.IdAssunto
WHERE L.PrecoLivro > 80.00;

--EXERCÍCIO 6

SELECT L.PrecoLivro Preco, A.NomeAssunto, L.NomeLivro Livro 
FROM Livro L
INNER JOIN Assunto  A
ON L.IdAssunto = A.IdAssunto
WHERE L.PrecoLivro between 70.00 and 170.00 
order by L.PrecoLivro DESC;