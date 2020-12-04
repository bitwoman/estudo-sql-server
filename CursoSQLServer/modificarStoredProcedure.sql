--Alteração e Parâmetros de Entrada no SQL Server:

/*Exemplo básico:
USE db_biblioteca

CREATE PROCEDURE teste AS 
	SELECT 'Brenda 10' AS nome

EXEC sp_helptext teste

--Base de comando:
ALTER PROCEDURE teste (@par1 AS INT) AS
	SELECT @par1

EXEC teste 22*/

ALTER PROCEDURE p_livroValor (@ID SMALLINT) AS
	SELECT 
		nome_livro AS Livro,
		preco_livro AS Preco
	FROM t_livro
	WHERE id_livro = @ID

EXEC sp_helptext p_livroValor

EXEC p_livroValor 102


/*Testes:
ALTER PROCEDURE teste(@par1 AS INT, @par2 AS VARCHAR(20)) AS
	SELECT @par1
	SELECT @par2

--Primeira forma (por posição):
EXEC teste 26, 'Laranja'

--Segunda forma (por nome de parâmetro):
EXEC teste @par2 = 'Abacate', @par1 = 30*/


--Comentar: Ctrl K C 
--Descomentar: Ctrl K U
