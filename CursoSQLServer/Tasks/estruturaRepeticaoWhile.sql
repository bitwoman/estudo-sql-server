/*Loop While no SQL Server - Estrutura de Repeti��o
Obs: se for necess�rio usar um bloco de comandos, � necess�rio 
que, tamb�m, se usa BEGIN e END. Como IF/ELSE.*/

--Exemplo b�sico:
/*DECLARE @valor INT
SET @valor = 0


WHILE @valor < 10
	BEGIN	
		PRINT 'N�mero: ' + CAST(@valor AS VARCHAR(2))
		SET @valor = @valor + 1
	END;*/

--Exemplo: db_biblioteca:
USE db_biblioteca

DECLARE @codigo INT
SET @codigo = 100

WHILE @codigo < 106
	BEGIN 
		SELECT 
			id_livro AS ID,
			nome_livro AS Livro,
			preco_livro AS Preco
		FROM t_livro
		WHERE id_livro = @codigo
		SET @codigo = @codigo + 1
	END;




