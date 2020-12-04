/*Stored Procedures: lotes (batches) de declarações SQL que podem ser executadas como 
uma subrotina. Permitem centralizar a lógica de acesso aos dados em um único local, 
facilitando a manutenção e otimização de código. Também é possível ajustar permissões 
de acesso aos usuários, definindo quem pode ou não executá-las.*/

/*Exemplo base:
CREATE PROCEDURE nome_proc (@parametro tipo_dado)
AS blocos

OBS: se o procedimento armazenado for o primeiro comando de um batch, 
não é necessário usar EXEC.*/

USE db_biblioteca

CREATE PROCEDURE p_livroValor AS
	SELECT nome_livro, preco_livro
	FROM t_livro

EXEC p_livroValor

/*Use o procedimento armazenado sp_helptext para extrair o conteúdo de texto de 
uma stored procedure:*/

EXEC sp_helptext p_livroValor

--Criptografar Stored Procedure:
CREATE PROCEDURE p_livroISBN WITH ENCRYPTION AS 
	SELECT nome_livro, ISBN 
	FROM t_livro

EXEC sp_helptext p_livroISBN