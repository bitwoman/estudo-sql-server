/*Triggers - Aninhamento e Triggers Recursivos - SQL Server:
Uma trigger, ao ser disparada, pode executar uma declara��o DML que
leva ao disparo de outra trigger. Para isso, a op��o de servidor "Permitir
que gatilhos disparem outros gatilhos", em "Propriedades do Servidor > Avan�ado, 
deve estar configurada como True (� o padr�o).
Para desabilitar/habilitar a op��o de aninhamento de triggers, use o comando:

EXEC sp_configure 'Nested Triggers', 0|1; 
RECONFIGURE;
*/

/*TRIGGERS RECURSIVOS:
Um gatilho recursivo � um tipo especial de trigger AFTER aninhado.
O trigger recursivo ocorre quando um trigger executa uma declara��o 
DML que o dispara novamente. Podemos habilitar ou desabilitar os triggers 
recursivos com o comando ALTER DATABASE:

ALTER DATABASE db_biblioteca
SET RECURSIVE_TRIGGERS ON|OFF*/

--TRIGGERS RECURSIVOS:
USE db_biblioteca

ALTER DATABASE db_biblioteca SET RECURSIVE_TRIGGERS ON

CREATE TABLE t_trigger_recursivo(codigo INT PRIMARY KEY)

SELECT codigo FROM t_trigger_recursivo


--=================TRIGGER RECURSIVO:====================
CREATE TRIGGER trigger_rec ON t_trigger_recursivo AFTER INSERT AS
	DECLARE @cod INT 
	SELECT
		@cod = MAX(codigo)
	FROM t_trigger_recursivo
	IF @cod < 10
		BEGIN
			INSERT INTO t_trigger_recursivo 
				SELECT MAX(codigo) + 1 FROM t_trigger_recursivo
		END
	ELSE
		BEGIN
			PRINT 'Trigger recursivo finalizado!'
		END

INSERT INTO t_trigger_recursivo VALUES (1)

SELECT * FROM t_trigger_recursivo