--INSERIR REGISTROS
	
--TABELA DE ASSUNTOS

INSERT INTO Assunto (NomeAssunto)
values
('Ficção Científica'), ('Botânica'),
('Eletrônica'), ('Matemática'),
('Aventura'), ('Romance'), 
('Finanças'), ('Gastronomia'),
('Terror'), ('Aministração'),
('Informática'), ('Suspense');

select * from assunto;

--Tabela de Editoras

INSERT INTO Editora (NomeEditora)
values 
('Prentice Hall'), ('O´Reilly');

select * from editora;

--Mais editoras

INSERT INTO Editora (NomeEditora)
values
('Aleph'), ('Microsoft Press'),
('Wiley'), ('HarpesCollins'),
('Érica'), ('Novatec'),
('McGraw-Hill'), ('Apress'),
('Francisco Alves'), ('Sybex'),
('Globo'), ('Companhia das Letras'),
('Morro Branco'), ('Penguin Books'),
('Martin Claret'), ('Record'),
('Springer'), ('Melhoramentos'),
('Oxford'), ('Taschen'), ('Ediouro'),
('Bookman');

select * from assunto;

--TABELA DE AUTORES

insert into Autor (NomeAutor, SobrenomeAutor)
values  ('Umberto', 'Eco');

select * from autor;

insert into Autor (NomeAutor, SobrenomeAutor)
values ('Daniel', 'Barret'), ('Gerald', 'Carter'), ('Mark', 'Sobell'), ('William', 'Stanek'), ('Christine', 'Bresnahan'), ('William', 'Gibson'),
('James', 'Joyce'), ('John', 'Emsley'), ('José', 'Saramago'), ('Richard', 'Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'), ('Robert', 'Eckstein'),
('Paul', 'Horowitz'), ('Winfield', 'Hill'), ('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk'), ('George', 'Orwell'), ('Ítalo', 'Calvino'),
('Machado', 'de Assis'), ('Oliver', 'Sacks'), ('Ray', 'Bradbury'), ('Walter', 'Isaacson'), ('Benjamin', 'Graham'), ('Júlio', 'Verne'), ('Marcelo', 'Gleiser'),
('Harri', 'Lorenzi'), ('Humphrey', 'Carpenter'), ('Isaac', 'Asimov'), ('Aldous', 'Huxley'), ('Arthur', 'Conan Doyle'), ('Blaise', 'Pascal'), ('Jostein', 'Gaarder'),
('Stephen', 'Hawking'), ('Stephen', 'Jay Gould'), ('Neil', 'De Grasse Tyson'), ('Charles', 'Darwin'), ('Alan', 'Turing'), ('Arthur', 'C. Clarke');

select * from autor;

INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PrecoLivro,
NumeroPagina, IdAssunto, IdEditora)
values ('A Arte da Eletrônica', '9788582604342','20170308', 300.74, 1160, 3, 24);

INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPagina, IdAssunto, IdEditora)
values ('Vinte Mil Léguas Submarinas', '9788582850022', '20140916', 24.50, 448, 1, 16),
('O Investidor Inteligente', '978859508085', '20160125', 79.90, 450, 7, 6);

select * from livro;

insert into Livro (NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPagina, IdAssunto, IdEditora)
values
('2001 - Uma Odisseia no Espaço', '9788576571551', '20200930', 55.86, 336, 1, 3),
('Fahrenheit 451', '9788525052247', '20120601', 43.56, 216, 1, 3),
('Admirável Mundo Novo', '9788525055009', '20140101', 50.32, 312, 1, 3),
('1984', '9788535914849', '20090721', 29.67, 416, 1, 14),
('A Volta ao Mundo em 80 Dias', '9788537816134', '18730101', 59.41, 256, 5, 11),
('O Nome da Rosa', '9788501115829', '20191216', 51.99, 592, 5, 18),
('Memórias Póstumas de Brás Cubas', '9788525433131', '18810101', 34.90, 240, 6, 14),
('O Evangelho Segundo Jesus Cristo', '9788535905595', '19910101', 49.90, 512, 6, 14),
('Cidades Invisíveis', '9788535907445', '19720101', 42.80, 176, 6, 14),
('Windows Server 2016: Instalação', '9781535074094', '20160712', 432.00, 436, 11, 4),
('Ensaio Sobre a Cegueira', '9788571645118', '19950101', 39.90, 312, 6, 14),
('Ulisses', '9780141184432', '19220202', 78.90, 450, 6, 16),
('Practical Electronics for Inventors', '9781259587542', '20160711', 212.58, 1056, 3, 9),
('Eu Robô', '9788576571667', '19501202', 35.00, 300, 1, 3),
('Dom Casmurro', '9788525404186', '19000101', 19.90, 256, 6, 14);

use biblioteca;




select * from assunto;

delete from Livro where idLivro = 103; 
delete from Livro where idLivro between 104 and 119; 

delete from livro;

alter table livro AUTO_INCREMENT = 1;


SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE BIBLIOTECA;

--TABELA LIVROAUTOR
INSERT INTO LivroAutor(IdLivro, IdAutor)
VALUES
(100,15),
(100,16),
(101,27),
(102,26),
(103,41),
(104,24),
(105,32),
(106,20),
(107,27),
(108,1),
(109,22),
(110,10),
(111,21),
(112,5),
(113,10),
(114,8),
(115,18),
(115,19),
(116,31),
(117,22);

select * from LivroAutor;

select NomeLivro from Livro;

select SobrenomeAutor from Autor;

select * from Autor;

use biblioteca;

select NomeLivro, PrecoLivro, ISBN13
from Livro;


--distinct (não permite repetições)
SELECT distinct IdEditora from Livro;

--select into (criar uma tabela com dados de outra)

--select COLUNA (AS) INTO nova_tabela from tabela_atual

select NomeLivro, ISBN13 into LivroISBN from Livro;

select * from LivroISBN;

drop table LivroISBN;

