--FILTRAR RESULTADOS DE CONSULTAS COM WHERE

select NomeLivro, DataPub from Livro
where IdEditora = 3;

select IdAutor, NomeAutor from Autor 
where SobrenomeAutor = 'Verne';

select NomeLivro, PrecoLivro from Livro 
where PrecoLivro > 100.00;

select NomeLivro, PrecoLivro from Livro 
where PrecoLivro > 100.00 order by PrecoLivro;


--subconsulta
select NomeLivro, DataPub 
from Livro where IdEditora = (
		select IdEditora 
		from Editora
		where NomeEditora = 'Aleph'
)
order by NomeLivro;