--- LIKE

SELECT * from Livro 
WHERE NomeLivro like 'A%';

SELECT * from Livro 
WHERE NomeLivro not like 'S%';

--COMEÇA COM A LETRA F OU D
SELECT * from Livro 
WHERE NomeLivro like '[FD]%';


--NÃO F E NÃO D (TRARÁ TODOS OUTROS REGISTRO COM OUTRAS LETRAS
SELECT * from Livro 
WHERE NomeLivro like '[^F^D]%';


--TODOS OS LIVROS QUE INICIAM COM VOGAIS
SELECT * from Livro 
WHERE NomeLivro like '[AEIOU]%';


--LIVROS QUE TERMINAM COM VOGAIS
SELECT * from Livro 
WHERE NomeLivro like '%[AEIOU]';

--LIVROD QUE CONTENHA NUMEROS NO NOMELIVRO
SELECT * from Livro 
WHERE NomeLivro like '[0-9]%';


--começa com a letra A e termina com a letra O
SELECT * from Livro 
WHERE NomeLivro like 'A%o';



--SELECIONAR NOME QUE COMECA COM R E SOBRENOME QUE COMEÇA COM B
SELECT NomeAutor, SobrenomeAutor FROM Autor
WHERE NomeAutor LIKE 'R%' AND SobrenomeAutor LIKE 'B%';



--PENULTIMA LETRA É UMA VOGAL (_)
SELECT * from Livro 
WHERE NomeLivro like '%[AEIOU]_';


--INTERVALO. VAI CONSULTAR TODOS OS NOMES QUE CONTENHA A LETRA O, P, Q, R, S, T
SELECT NomeEditora FROM Editora
WHERE NomeEditora LIKE '[O-T]%';

--UM NOME QUE COMEÇA COM A LETRA J E QUE TENHA 4 CARACTERES
SELECT NomeAutor, SobrenomeAutor FROM Autor
WHERE NomeAutor LIKE 'J___';

--NOMES QUE COMEÇAM COM CONSOANTES E EXCLUI OS NUMEROS QUE COMEÇAM COM VOGAIS E NUMEROS
SELECT * from Livro 
WHERE NomeLivro NOT like '[AEIOU0-9]%';


