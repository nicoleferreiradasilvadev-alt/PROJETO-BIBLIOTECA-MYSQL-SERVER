--RESTRICAO DE RESULTADOS: SELECT TOP

/*
SELECT TOP (numero|percent) colunas FROM tabela ORDER BY
*/
--so vai retornar a quantidade de dados que voce colocar entre ()
select top (2) NomeLivro from Livro 
order by NomeLivro;

select top (2) NomeLivro from Livro;


--so retorna a porcentagem de dados que voce quer
select top (15) percent NomeLivro from Livro Order by NomeLivro;

select top (3) NomeLivro from Livro 
order by NomeLivro DESC;

select top (4) NomeLivro, PrecoLivro from Livro
order by PrecoLivro DESC;

--DESC (DO MAIOR PARA O MENOR)
--ASC (DO MENOR PARA O MAIOR)


--WITH TIES (TRAZ TODOS REGISTROS COM OS MESMOS DADOS)

SELECT TOP (3) WITH TIES NomeLivro, IdAssunto from Livro
order by IdAssunto DESC;
