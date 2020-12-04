/*Loop While no SQL Server - Estrutura de Repetição
Obs: se for necessário usar um bloco de comandos, é necessário 
que, também, se usa BEGIN e END. Como IF/ELSE.*/

--Exemplo básico:
/*DECLARE @valor INT
SET @valor = 0


WHILE @valor < 10
	BEGIN	
		PRINT 'Número: ' + CAST(@valor AS VARCHAR(2))
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




