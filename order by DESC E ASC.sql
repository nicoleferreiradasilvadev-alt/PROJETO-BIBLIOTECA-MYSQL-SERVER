use biblioteca;

--ordenação de resultado em consultas sql:
--clausula order by

/*Sintaxe
SELECT coluna FROM tabela ORDER BY coluna_a_ordenar 
[ASC | DES]
*/

select * from Livro order by NomeLivro;

select NomeLivro, IdEditora from Livro 
order by IdEditora;

select NomeLivro, PrecoLivro from Livro order by PrecoLivro DESC;

select NomeLivro, PrecoLivro, IdEditora from Livro 
order by IdEditora, PrecoLivro asc;

select NomeLivro, PrecoLivro, IdEditora from Livro 
order by IdEditora ASC, PrecoLivro DESC;
