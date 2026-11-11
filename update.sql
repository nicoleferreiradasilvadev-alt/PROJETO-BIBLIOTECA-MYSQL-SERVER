--atualizar registros de uma tabela

select  IdLivro, nomelivro, precolivro from livro;

update Livro 
set NomeLivro = 'Eu, Robô'
where IdLivro = 116;

update Livro 
set PrecoLivro = 60.00
where IdLivro = 105;

--aumentar 10%
update Livro 
set PrecoLivro = PrecoLivro *1.1
where IdLivro = 105;

select * from livro;

--aumentar 10%
update Livro 
set PrecoLivro = PrecoLivro *1.1
where IdLivro = 105;

update livro
set PrecoLivro = PrecoLivro * 0.8
where IdLivro = 105;


--alterando mais de um dado
update Livro
set PrecoLivro = 60.00, NumeroPagina = 320
where IdLivro = 105;

