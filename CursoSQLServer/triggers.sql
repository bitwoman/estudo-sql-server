/*Triggers - Defini��o e Tipos Instead Of e After - SQL Server
Uma trigger (gatilho) � um tipo especial de Stored Procedure que 
� executada automaticamente quando um usu�rio realiza uma opera��o 
de modifica��o de dados em uma tabela especificada. Opera��es que
pode disparar uma trigger: insert, update, delete.*/

/*Triggers DML:
Triggers n�o s�o executadas diretamente, disparam apenas em resposta a
eventos como insert, update ou delete em uma tabela.

No SQL Server, os triggers disparam uma vez para cada opera��o de 
modifica��o - e n�o uma vez por linha afetada (no oracle h� as duas op��es).
*/

/*Modos de disparo de uma trigger:
Uma trigger no SQL Server pode ser disparado de modos diferentes:
- After: o c�digo presente no trigger � executado ap�s todas as a��es
terem sido completadas na tabela especificada;

-Instead Of: o c�digo presente no trigger � executado no
lugar da opera��o que causou seu disparo;

FLUXO DE TRANSA��ES: Para desenvolver triggers, � necess�rio conhecimento do fluxo geral da
transa��o, para evitar conflitos entre os triggers e constraints.

As transa��es se movem atrav�s de verifica��es e c�digos na ordem
*/



--==============AFTER================
USE db_biblioteca

CREATE TRIGGER teste_trigger_after ON tb_editoras AFTER INSERT AS
PRINT 'Ol� mundo!';

INSERT INTO tb_editoras VALUES ('Editora10')

SELECT * FROM tb_editoras

DROP TRIGGER teste_trigger_after

--============================================

USE db_biblioteca 

CREATE TRIGGER trigger_after ON tb_editoras AFTER INSERT AS
	INSERT INTO t_autores VALUES(25, 'Jos�', 'da Silva')
	INSERT INTO t_livro VALUES ('Livro1', '123465600', 5, '20200412', 25.00, 2)

DROP TRIGGER trigger_after

INSERT INTO tb_editoras VALUES ('Editora11')

SELECT * FROM t_livro
SELECT * FROM t_autores

--==================INSTEAD OF=================
USE db_biblioteca

CREATE TRIGGER teste_trigger_instead_of ON t_autores INSTEAD OF INSERT AS
	PRINT 'Ol� de novo! N�o inseri o registro desta vez!'

INSERT INTO t_autores VALUES (26, 'Jo�o', 'Moura')

SELECT * FROM t_autores 
SELECT * FROM t_livro
