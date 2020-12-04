/*Triggers - Determinar colunas alteradas e fun��o update():
A fun��o UPDATE() retorna True se uma coluna especificada for 
afetada por uma transa��o DML. 
Podemos criar um gatilho que executa um c�digo caso a coluna 
especificada seja alterada por um comando DML usando essa fun��o.*/
USE db_biblioteca

CREATE TRIGGER trigger_after_autores ON t_autores AFTER INSERT, UPDATE AS 
IF UPDATE (nome_autor)
	BEGIN
		PRINT 'O nome do autor foi alterado!'
	END
ELSE
	BEGIN 
		PRINT 'O nome do autor n�o foi modificado!'
	END


--Testando trigger:
UPDATE t_autores SET nome_autor = 'Jo�o' 
WHERE id_autor = 10


