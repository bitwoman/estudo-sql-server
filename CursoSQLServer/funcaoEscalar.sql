/*Funções Definidas pelo Usuário - Função Escalar no SQL Server:
Podemos criar funções (UDFs) para realizar diversas tarefas nos bancos de dados, tais como:
- Inserir lógica complexa em uma consulta;
- Criar novas funções para expressões complexas;
- Substituir exibições com a vantagem de aceitar parâmetros.

Há vários tipos de UDFs:
- Funções escalares, valor de tabela embutida, valor de tabela multi-instruções.


FUNÇÃO ESCALAR: retorna apenas um único valor específico.
exemplo de base:
CREATE FUNCTION nome_funcao(parâmetros)
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