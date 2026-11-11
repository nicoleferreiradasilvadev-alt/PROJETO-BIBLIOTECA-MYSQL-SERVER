use biblioteca;

--backup e restauração

/*
BACKUP DATABASE nome_banco TO DISK = 'X:\CAMINHO\nome_banco.bak'
[WITH FORMAT] ---NÃO PRECISA USAR
GO
*/

/*RESTORE DATABASE nome_banco
FROM DISK = 'X:\CAMINHO\nome_banco.bak'
[WITH REPLACE];´-- JÁ É SUBSTITUÍDO.
GO
*/

BACKUP DATABASE Biblioteca
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\db_Biblioteca.bak';
go

use Biblioteca;
use master;

alter database Biblioteca
set single_user WITH rollback immediate;
go

--banco de dados apagado
drop database Biblioteca;
go


RESTORE DATABASE Biblioteca 
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\db_Biblioteca.bak';
go

use biblioteca;

select * from Livro;