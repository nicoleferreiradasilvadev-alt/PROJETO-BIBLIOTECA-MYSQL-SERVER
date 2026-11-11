--FILTROS COMBINADOS: OPERADORES LOGICOS AND, OR, NOT


--consulta ao mesmo tempo
select * from Livro 
where IdLivro > 102 AND IdEditora < 4;

--OR
select * from Livro 
where IdLivro > 102 OR IdEditora < 4;

select * from Livro 
where IdLivro > 110 OR IdEditora < 4;

--NOT
select * from Livro 
where IdLivro > 110 OR NOT IdEditora < 4;

--BETWEEN: SELECAO DE INTERVALOS

SELECT * from Livro 
where DataPub Between '20040507' AND '20140507';

SELECT NomeLivro as Livro, PrecoLivro as Preco
FROM Livro 
WHERE PrecoLivro BETWEEN 50.00 AND 100.00;
use biblioteca;

SELECT NomeLivro as Livro,
PrecoLivro as Livro
FROM Livro 
WHERE PrecoLivro BETWEEN 50.00 AND 100.00;

SELECT NomeLivro, DataPub, PrecoLivro 
FROM Livro
WHERE PrecoLivro >= 20.00
AND DataPub BETWEEN '20050620' AND '20100620'
OR DataPub BETWEEN '20160101' AND '20200101'
ORDER BY DataPub DESC;