--Realizando backup do Banco de Dados SQL Server:
USE Teste
GO

--Pode ser gravado em qualquer tipo de "disk"
BACKUP DATABASE Teste
TO DISK = 'C:\CursoSQLServer\teste.bak'
--WITH FORMAT; Em caso de m�dia externa.
GO