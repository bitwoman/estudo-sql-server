/*Triggers - Habilitar, Desabilitar e verificar Status - SQL Server:
O admnistrador do sistema pode desabilitar temporariamente um trigger 
se houver necessidade. Para isso, use o comando DDL ALTER TABLE:

ALTER TABLE nome_tabela
ENABLE | DISABLE TRIGGER nome_trigger
*/

USE db_biblioteca

--Desabilitar a trigger_after
ALTER TABLE tb_editoras 
ENABLE TRIGGER trigger_after

--Verificar a existência de triggers:
EXEC sp_helptrigger @tabname = tb_editoras

--Verificar a existência de triggers no banco de dados todo:
USE db_biblioteca 
SELECT * FROM sys.triggers 
WHERE is_disabled = 1 OR is_disabled = 0