--Stored Procedures - Parâmetros de Saída e RETURN no SQL Server
--Parâmetros com valor padrão:

CREATE PROCEDURE p_teste_valor_padrao(
	@param1 INT, 
	@param2 VARCHAR(20) = 'Valor Padrão!') AS 
	SELECT 'Valor do parâmetro 1: ' + CAST(@param1 AS VARCHAR)
	SELECT 'Valor do parâmetro 2: ' + @param2

EXEC p_teste_valor_padrao 30 

EXEC p_teste_valor_padrao @param1 = 40, @param2 = 'Valor modificado'

/*Os parâmetros de saída habilitam um procedimento armazenado a retornar dados
ao procedimento chamador. Usamos a palavra-chave OUTPUT quando o procedimento
é criado, e também quando é chamado. No procedimento armazenado, o procedimento 
de saída aparece como uma variável local; no procedimento chamador, uma variável deve ser
criada para receber o parâmetro de saída.*/

ALTER PROCEDURE teste (@par1 AS INT OUTPUT) AS 
	SELECT @par1 * 2 
	RETURN

--Executando passando um parâmetro:
DECLARE @valor AS INT = 15 

--Variável teste se comunica com a variável par1 (bidirecional)
EXEC teste @valor OUTPUT
PRINT @valor


/*COMANDO RETURN: O comando RETURN termina incondicionalmente o procedimento
e retorna um valor inteiro ao chamador. Pode ser usado para retornar status de sucesso
ou falha do procedimento.*/
ALTER PROCEDURE p_livroValor(@quantidade SMALLINT, @cod SMALLINT = -10, @ID SMALLINT) as
	--Evita a contagem de linhas e retorna apenas o código: nesse caso 1 ou -10
	SET NOCOUNT ON
	IF @ID >=100
		BEGIN
			SELECT 
				nome_livro AS Livro,
				(preco_livro * @quantidade) AS Preço
			FROM t_livro
			WHERE id_livro = @ID
			RETURN 1
		END 
	ELSE
		RETURN @cod

--Receber o valor de RETURN ("código de saída"):
DECLARE @codigo AS INT 
EXEC @codigo = p_livroValor @ID = 102, @quantidade = 5
PRINT @codigo