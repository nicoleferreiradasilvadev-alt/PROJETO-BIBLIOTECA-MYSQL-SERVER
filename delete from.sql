--exclusao de registros (linas): delete from 

use biblioteca;

select * from assunto;

delete from assunto 
where IdAssunto = 8;

insert into assunto (NomeAssunto) 
values ('Policial');

--deletar linhas que sao nulas
delete from assunto where NomeAssunto is null;


delete from assunto where NomeAssunto = 'Policial';
