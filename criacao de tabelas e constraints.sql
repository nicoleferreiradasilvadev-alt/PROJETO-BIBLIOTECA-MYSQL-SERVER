create database Biblioteca;

use biblioteca;

create table Autor (
IdAutor smallint identity ,
NomeAutor varchar (50) not null,
SobrenomeAutor varchar (60) not null,
constraint pk_id_autor PRIMARY KEY (IdAutor)
);

sp_help Autor;
select * from autor;

create table Editora(
IdEditora smallint primary key identity,
NomeEditora varchar (50) not null);

create table Assunto(
IdAssunto tinyint primary key identity,
NomeAssunto varchar (25) not null);

create table Livro(
IdLivro smallint not null primary key identity (100,1),
NomeLivro varchar (70) not null,
ISBN13 char(13) unique not null,
DataPub date,
PrecoLivro money not null,
NumeroPagina smallint not null,
IdEditora smallint not null,
IdAssunto tinyint not null,
constraint fk_id_editora foreign key (IdEditora)
	references Editora(IdEditora) on delete cascade,
constraint fk_id_assunto foreign key (IdAssunto)
	references Assunto (IdAssunto) on delete cascade,
constraint verifica_preco check (PrecoLivro >= 0)
);

create table LivroAutor(
IdLivro smallint not null,
IdAutor smallint not null,
constraint fk_id_livros foreign key (IdLivro)
	references Livro (IdLivro),
constraint fk_id_autores foreign key (IdAutor) references Autor (IdAutor),
constraint pk_livro_autor primary key (IdLivro, IdAutor)
);

select name from Biblioteca.sys.tables;