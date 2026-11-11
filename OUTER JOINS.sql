/*
SINTAXE:
LEFT JOIN

SELECT colunas FROM tabela_esq
LEFT JOIN tabela_dir
ON tabela_esq.coluna = tabela_dir.coluna
*/

SELECT * FROM Editora E 
LEFT JOIN Livro L
ON L.IdEditora = E.IdEditora;

SELECT * FROM Livro L 
LEFT JOIN Editora E 
ON L.IdEditora = E.IdEditora;


--RIGHT JOIN
/*SINTAXE:
SELECT colunas 
FROM tabela_esq
RIGHT JOIN tabela_dir
ON tabela_esq.coluna = tabela_dir.coluna
*/


SELECT * FROM Editora E 
RIGHT JOIN Livro L
ON L.IdEditora = E.IdEditora;

SELECT * FROM Livro L 
RIGHT JOIN Editora E 
ON L.IdEditora = E.IdEditora;


--FULL JOIN
/*SINTAXE:
SELECT colunas 
FROM tabela1
FULL JOIN tabela2
ON tabela1.coluna = tabela2.coluna
*/

SELECT * FROM Livro L 
FULL JOIN Editora E 
ON L.IdEditora = E.IdEditora;

--CROSS JOIN (JUNÇÃO CRUZADA)

/*
SINTAXE: 
SELECT colunas
FROM tabela1 
CROSS JOIN tabela2
*/
-- mais usado para gerar relatorio

SELECT * FROM Livro
CROSS JOIN Assunto;