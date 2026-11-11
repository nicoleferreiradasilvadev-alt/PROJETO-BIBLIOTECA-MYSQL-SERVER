use biblioteca;

--truncate table: limpar uma tabela

-- sintaxe: truncate table nome_tabela
--(elimina toda tabela)

--criar tabela teste

create table Teste (
IdTeste smallint primary key identity, 
ValorTeste smallint not null);

select * from teste;

declare @Contador int = 1

while @Contador <= 100
begin 
insert into Teste (ValorTeste) values (@Contador * 3)
set @Contador = @Contador + 1 
end

--limpar tabela
truncate table Teste;
select * from teste;

--verificar o valor do identity
select ident_current ('Teste');
--o identity é zerado