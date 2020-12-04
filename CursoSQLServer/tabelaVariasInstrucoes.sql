/*Funções Definidas pelo Usuário - Valor de Tabela com Várias Instruções
Combina a habilidade da função escalar de conter códigos complexos com a habilidade 
da função com valor de tabela de retornar um resultset(outra tabela).
Este tipo de função cria uma variável do tipo table e a popula a partir do código. Essa tabela 
é então passada de volta à função, de modo que possa ser usada em declarações SELECT.
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