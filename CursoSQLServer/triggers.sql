/*Triggers - Definição e Tipos Instead Of e After - SQL Server
Uma trigger (gatilho) é um tipo especial de Stored Procedure que 
é executada automaticamente quando um usuário realiza uma operação 
de modificação de dados em uma tabela especificada. Operações que
pode disparar uma trigger: insert, update, delete.*/

/*Triggers DML:
Triggers não são executadas diretamente, disparam apenas em resposta a
eventos como insert, update ou delete em uma tabela.

No SQL Server, os triggers disparam uma vez para cada operação de 
modificação - e não uma vez por linha afetada (no oracle há as duas opções).
*/

/*Modos de disparo de uma trigger:
Uma trigger no SQL Server pode ser disparado de modos diferentes:
- After: o código presente no trigger é executado após todas as ações
terem sido completadas na tabela especificada;

-Instead Of: o código presente no trigger é executado no
lugar da operação que causou seu disparo;

FLUXO DE TRANSAÇÕES: Para desenvolver triggers, é necessário conhecimento do fluxo geral da
transação, para evitar conflitos entre os triggers e constraints.

As transações se movem através de verificações e códigos na ordem
*/



--==============AFTER================
USE db_biblioteca

CREATE TRIGGER teste_trigger_after ON tb_editoras AFTER INSERT AS
PRINT 'Olá mundo!';

INSERT INTO tb_editoras VALUES ('Editora10')

SELECT * FROM tb_editoras

DROP TRIGGER teste_trigger_after

--============================================

USE db_biblioteca 

CREATE TRIGGER trigger_after ON tb_editoras AFTER INSERT AS
	INSERT INTO t_autores VALUES(25, 'José', 'da Silva')
	INSERT INTO t_livro VALUES ('Livro1', '123465600', 5, '20200412', 25.00, 2)

DROP TRIGGER trigger_after

INSERT INTO tb_editoras VALUES ('Editora11')

SELECT * FROM t_livro
SELECT * FROM t_autores

--==================INSTEAD OF=================
USE db_biblioteca

CREATE TRIGGER teste_trigger_instead_of ON t_autores INSTEAD OF INSERT AS
	PRINT 'Olá de novo! Não inseri o registro desta vez!'

INSERT INTO t_autores VALUES (26, 'João', 'Moura')

SELECT * FROM t_autores 
SELECT * FROM t_livro
