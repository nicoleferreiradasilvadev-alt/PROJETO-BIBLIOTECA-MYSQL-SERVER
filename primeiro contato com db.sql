create database banco ON PRIMARY 
(NAME = BANCO,
FILENAME = 'C:\SQL\banco.mdf',
SIZE = 6MB,
MAXSIZE = 15MB,
FILEGROWTH = 10%)
LOG ON (NAME = banco_log,
FILENAME = 'C:\SQL\banco.ldf',
SIZE = 1MB, 
FILEGROWTH = 1MB)
GO

--CONSULTAR BANCO DE DADOS

select name from 
master.sys.databases
order by name;

exec sp_databases;

use banco;

--obter informações sobre um banco especifico
exec sp_helpdb banco;

--excluir banco de dados (o comando só é excluido quando não está sendo utilizado
drop database if exists banco;

--excluir banco em uso
use master 
go 
alter database banco
set single_user with rollback immediate
drop database banco;