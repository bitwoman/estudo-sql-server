/*Stored Procedures: lotes (batches) de declara��es SQL que podem ser executadas como 
uma subrotina. Permitem centralizar a l�gica de acesso aos dados em um �nico local, 
facilitando a manuten��o e otimiza��o de c�digo. Tamb�m � poss�vel ajustar permiss�es 
de acesso aos usu�rios, definindo quem pode ou n�o execut�-las.*/

/*Exemplo base:
CREATE PROCEDURE nome_proc (@parametro tipo_dado)
AS blocos

OBS: se o procedimento armazenado for o primeiro comando de um batch, 
n�o � necess�rio usar EXEC.*/

USE db_biblioteca

CREATE PROCEDURE p_livroValor AS
	SELECT nome_livro, preco_livro
	FROM t_livro

EXEC p_livroValor

/*Use o procedimento armazenado sp_helptext para extrair o conte�do de texto de 
uma stored procedure:*/

EXEC sp_helptext p_livroValor

--Criptografar Stored Procedure:
CREATE PROCEDURE p_livroISBN WITH ENCRYPTION AS 
	SELECT nome_livro, ISBN 
	FROM t_livro

EXEC sp_helptext p_livroISBN