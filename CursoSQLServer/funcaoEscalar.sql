/*Fun��es Definidas pelo Usu�rio - Fun��o Escalar no SQL Server:
Podemos criar fun��es (UDFs) para realizar diversas tarefas nos bancos de dados, tais como:
- Inserir l�gica complexa em uma consulta;
- Criar novas fun��es para express�es complexas;
- Substituir exibi��es com a vantagem de aceitar par�metros.

H� v�rios tipos de UDFs:
- Fun��es escalares, valor de tabela embutida, valor de tabela multi-instru��es.


FUN��O ESCALAR: retorna apenas um �nico valor espec�fico.
exemplo de base:
CREATE FUNCTION nome_funcao(par�metros)
RETURNS tipo_dado_retorno AS
	BEGIN 
		codigos
		RETURN expressao_retorno
	END*/


--EXEMPLO:
CREATE FUNCTION nota_media(@nome VARCHAR(30)) RETURNS REAL AS 
	BEGIN 
		DECLARE @media REAL
		SELECT @media = (nota1 + nota2 + nota3 + nota4 * 2)/5.00
		FROM t_alunos
		WHERE nome_aluno = @nome
		RETURN @media
	END

--USO:
SELECT dbo.nota_media('Brenda')