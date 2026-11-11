--Nomes Alternativos: AS (ALIAS)
--nome diferente para uma coluna temporaria (simplifica o nome da coluna)

select NomeLivro as Livros from Livro;

select NomeAutor as Nome, A.SobrenomeAutor as Sobrenome 
from Autor as A;

select top (3) NomeLivro as 'Livros mais caros',
PrecoLivro as 'Preco do Livro'
from Livro as L order by 'Preco do Livro' desc; 

