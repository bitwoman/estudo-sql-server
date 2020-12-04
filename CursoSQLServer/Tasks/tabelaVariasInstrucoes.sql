/*Fun��es Definidas pelo Usu�rio - Valor de Tabela com V�rias Instru��es
Combina a habilidade da fun��o escalar de conter c�digos complexos com a habilidade 
da fun��o com valor de tabela de retornar um resultset(outra tabela).
Este tipo de fun��o cria uma vari�vel do tipo table e a popula a partir do c�digo. Essa tabela 
� ent�o passada de volta � fun��o, de modo que possa ser usada em declara��es SELECT.
*/

USE db_biblioteca

CREATE FUNCTION multi_tabela() RETURNS @valores Table (
	nome_livro VARCHAR(50),
	data_pub DATETIME, 
	nome_editora VARCHAR(50),
	preco_livro MONEY) AS
	
	BEGIN
		INSERT @valores(nome_livro, data_pub, nome_editora, preco_livro)
			SELECT 
				l.nome_livro,
				l.data_pub, 
				e.nome_editora,
				l.preco_livro
			FROM t_livro AS l
			JOIN tb_editoras AS e ON (e.id_editora = l.id_editora)
		RETURN 
	END


--USO:
SELECT * FROM multi_tabela()