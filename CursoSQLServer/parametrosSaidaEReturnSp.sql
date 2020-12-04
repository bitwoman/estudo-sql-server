--Stored Procedures - Par�metros de Sa�da e RETURN no SQL Server
--Par�metros com valor padr�o:

CREATE PROCEDURE p_teste_valor_padrao(
	@param1 INT, 
	@param2 VARCHAR(20) = 'Valor Padr�o!') AS 
	SELECT 'Valor do par�metro 1: ' + CAST(@param1 AS VARCHAR)
	SELECT 'Valor do par�metro 2: ' + @param2

EXEC p_teste_valor_padrao 30 

EXEC p_teste_valor_padrao @param1 = 40, @param2 = 'Valor modificado'

/*Os par�metros de sa�da habilitam um procedimento armazenado a retornar dados
ao procedimento chamador. Usamos a palavra-chave OUTPUT quando o procedimento
� criado, e tamb�m quando � chamado. No procedimento armazenado, o procedimento 
de sa�da aparece como uma vari�vel local; no procedimento chamador, uma vari�vel deve ser
criada para receber o par�metro de sa�da.*/

ALTER PROCEDURE teste (@par1 AS INT OUTPUT) AS 
	SELECT @par1 * 2 
	RETURN

--Executando passando um par�metro:
DECLARE @valor AS INT = 15 

--Vari�vel teste se comunica com a vari�vel par1 (bidirecional)
EXEC teste @valor OUTPUT
PRINT @valor


/*COMANDO RETURN: O comando RETURN termina incondicionalmente o procedimento
e retorna um valor inteiro ao chamador. Pode ser usado para retornar status de sucesso
ou falha do procedimento.*/
ALTER PROCEDURE p_livroValor(@quantidade SMALLINT, @cod SMALLINT = -10, @ID SMALLINT) as
	--Evita a contagem de linhas e retorna apenas o c�digo: nesse caso 1 ou -10
	SET NOCOUNT ON
	IF @ID >=100
		BEGIN
			SELECT 
				nome_livro AS Livro,
				(preco_livro * @quantidade) AS Pre�o
			FROM t_livro
			WHERE id_livro = @ID
			RETURN 1
		END 
	ELSE
		RETURN @cod

--Receber o valor de RETURN ("c�digo de sa�da"):
DECLARE @codigo AS INT 
EXEC @codigo = p_livroValor @ID = 102, @quantidade = 5
PRINT @codigo