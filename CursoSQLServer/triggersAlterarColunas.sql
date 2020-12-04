/*Triggers - Determinar colunas alteradas e função update():
A função UPDATE() retorna True se uma coluna especificada for 
afetada por uma transação DML. 
Podemos criar um gatilho que executa um código caso a coluna 
especificada seja alterada por um comando DML usando essa função.*/
USE db_biblioteca

CREATE TRIGGER trigger_after_autores ON t_autores AFTER INSERT, UPDATE AS 
IF UPDATE (nome_autor)
	BEGIN
		PRINT 'O nome do autor foi alterado!'
	END
ELSE
	BEGIN 
		PRINT 'O nome do autor não foi modificado!'
	END


--Testando trigger:
UPDATE t_autores SET nome_autor = 'João' 
WHERE id_autor = 10


