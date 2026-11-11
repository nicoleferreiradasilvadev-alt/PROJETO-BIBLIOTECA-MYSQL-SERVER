--EX1: RETORNAR OS NOMES DE LIVROS, PRECOS E DATAS DE PUBLICACAO

select NomeLivro, PrecoLivro, DataPub from livro;

select SobrenomeAutor from Autor;

select * from livro where IdAssunto = 1;

select IdLivro, NomeLivro, ISBN13, DataPub, PrecoLivro,
NumeroPagina, IdEditora, IdAssunto
into LivroFiccao 
from livro where IdAssunto = 1;

select * from LivroFiccao;

select NomeEditora, IdEditora from editora;

select distinct IdAssunto from livro;