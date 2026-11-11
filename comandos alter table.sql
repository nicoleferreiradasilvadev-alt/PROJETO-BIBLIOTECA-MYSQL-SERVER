--GERENCIAMENTO DE TABELAS
-- ALTER TABLE, RENAME 

--ALTER TABLE NomeTabela
-- ADD / ALTER / DROP Objeto

-- ADICIONAR UMA NOVA COLUNA A UMA TABELA EXISTENTE.
alter table Livro add Edicao SMALLINT;

--ALTERAR O TIPO DE DADO DE UMA COLUNA
alter table livro 
alter column Edicao tinyint;

--adicionar chave primaria
alter table NomeTabela
add primary key (Coluna);

--excluir uma constraint de uma coluna
alter table NomeTabela
drop constraint NomeConstraint;

--verificar nomes das constrains
sp_help Livro;

--excluir uma coluna inteira 
alter table Livro 
drop column Edicao;

--excluir uma tabela
drop table NomeTabela;

--renomear nome da tabela: sp_rename
--sp_rename 'nome_atual', 'novo_nome';

sp_rename 'Livro', 'tbl_livros';

sp_rename 'tbl_livros', 'Livro';

